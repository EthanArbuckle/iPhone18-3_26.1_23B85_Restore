uint64_t AppleBCMWLANCore::setPTMMode(IOService *this)
{
  v10 = 0;
  v9[0] = &v10;
  v9[1] = 0x400040004;
  v2 = IOMallocZeroData();
  if (v2)
  {
    v3 = v2;
    v4 = &this[1].OSObjectInterface;
    LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1880].free) = 1;
    if ((LODWORD(this[1].OSObject::OSObjectInterface::__vftable[2244].free) - 1) > 1)
    {
      if ((AppleBCMWLANCore::featureFlagIsBitSet(this, 91) & 1) == 0)
      {
LABEL_25:
        setPropertyHelper(this, "PTM_Mode", LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1880].free), 8u);
        return IOFreeData();
      }
    }

    else
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setPTMMode(this);
        }
      }

      if ((AppleBCMWLANCore::featureFlagIsBitSet(this, 91) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (AppleBCMWLANCommander::runIOVarGet(v4->__vftable[338].init, "ptm_active", &kNoTxPayload, v9, 0))
      {
        v5 = 1;
      }

      else
      {
        v5 = v10 == 0;
      }

      if (!v5)
      {
        *v3 = 262401;
        *(v3 + 4) = 1;
        *(v3 + 6) = 0;
        v8[0] = v3;
        v8[1] = 12;
        if (AppleBCMWLANCommander::runIOVarSet(v4->__vftable[338].init, "bus:ptm", v8, 0, 0))
        {
          if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setPTMMode(this);
            }
          }
        }
      }

      LODWORD(v4->__vftable[1880].free) = 1;
    }

    if (AppleBCMWLANCommander::runIOVarGet(v4->__vftable[338].init, "ptm_active", &kNoTxPayload, v9, 0))
    {
      v7 = 1;
    }

    else
    {
      v7 = v10 == 0;
    }

    if (!v7)
    {
      LODWORD(v4->__vftable[1880].free) = 2;
    }

    goto LABEL_25;
  }

  result = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  if (result)
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::setPTMMode(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handlePowerStateChange(uint64_t a1, unsigned int a2)
{
  v4 = a1 + 72;
  v5 = *(*(a1 + 72) + 19852);
  v6 = a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::handlePowerStateChange(a1, v6, v4, a2);
    }
  }

  v7 = *v4;
  v8 = *(*v4 + 19852);
  if (!a2 && v8 == 1 || !a2 && v8 == 4)
  {
    *(v7 + 19852) = 0;
LABEL_9:
    v9 = AppleBCMWLANCore::powerOff(a1, 1);
    goto LABEL_10;
  }

  if (v8)
  {
    v12 = v8 == 4;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (a2 == 1 && v13)
  {
    v14 = 1;
LABEL_34:
    *(v7 + 19852) = v14;
    v9 = AppleBCMWLANCore::powerOn(a1);
LABEL_10:
    v10 = v9;
    if (v9)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handlePowerStateChange(a1);
        }
      }

      *(*v4 + 19852) = v5;
    }

    return v10;
  }

  if (a2 == 4 && !v8)
  {
    v14 = 4;
    goto LABEL_34;
  }

  if (a2 == 4 && v8 == 1)
  {
    *(v7 + 19852) = 4;
    goto LABEL_9;
  }

  v10 = 3758097095;
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::handlePowerStateChange(a1);
    }
  }

  return v10;
}

uint64_t AppleBCMWLANCore::shouldSupportTethering(AppleBCMWLANCore *this)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 11))
  {
    return 0;
  }

  return AppleBCMWLANCore::featureFlagIsBitSet(this, 16);
}

uint64_t AppleBCMWLANCore::checkForTCPKAOffloadSupport(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 49);
  if (result)
  {
    v3 = *(*(this + 9) + 5464);

    return AppleBCMWLANConfigManager::isTCPKAOffloadEnabled(v3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::bringupBCM(AppleBCMWLANCore *this)
{
  v9 = 0;
  v10 = 0;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::bringupBCM(this);
    }
  }

  v2 = AppleBCMWLANCommander::runIOCtlSet(*(*(this + 9) + 5408), 2, &kNoTxPayload, 0, 0);
  if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
  {
    AppleBCMWLANCore::bringupBCM(this);
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else if (!v2)
  {
    goto LABEL_15;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::bringupBCM(this);
    }
  }

  v3 = AppleBCMWLANCommander::runIOCtlSet(*(*(this + 9) + 5408), 2, &kNoTxPayload, 0, 0);
  if (v3)
  {
    v4 = v3;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::bringupBCM(this);
      }
    }

    return v4;
  }

LABEL_15:
  v5 = *(this + 9) + 6572;
  *v5 = 257;
  *(v5 + 2) = 1;
  *(*(this + 9) + 6575) = 0;
  *(*(this + 9) + 6528) = mach_continuous_time();
  *(*(this + 9) + 6576) = 0;
  v6 = *(this + 9);
  *(v6 + 6572) = 257;
  *(v6 + 6574) = 1;
  *(*(this + 9) + 6575) = 0;
  *(*(this + 9) + 17712) = 0;
  *(*(this + 9) + 17720) = 0;
  *(*(this + 9) + 17728) = 0;
  *(*(this + 9) + 17736) = 0;
  v8 = 0x10000;
  v9 = &v8;
  v10 = 4;
  v4 = AppleBCMWLANCommander::runIOCtlSet(*(*(this + 9) + 5408), 38, &v9, 0, 0);
  if (v4)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::bringupBCM(this);
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::setNeedsScanSnapshotAtLinkUp(uint64_t this, __int16 a2)
{
  v2 = *(this + 72) + 6572;
  *v2 = a2 | (a2 << 8);
  *(v2 + 2) = a2;
  *(*(this + 72) + 6575) = 0;
  return this;
}

uint64_t AppleBCMWLANCore::resetInactivityAndSleepStats(uint64_t this)
{
  *(*(this + 72) + 17712) = 0;
  *(*(this + 72) + 17720) = 0;
  *(*(this + 72) + 17728) = 0;
  *(*(this + 72) + 17736) = 0;
  return this;
}

BOOL AppleBCMWLANCore::getBCMInterfaceState(AppleBCMWLANCore *this)
{
  v4 = 0;
  v3[0] = &v4;
  v3[1] = 0x400040004;
  if (AppleBCMWLANCommander::runIOCtlGet(*(*(this + 9) + 5408), 162, &kNoTxPayload, v3, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getBCMInterfaceState(this);
      }
    }
  }

  return v4 != 0;
}

uint64_t AppleBCMWLANCore::IssueFwCap(IOService *this)
{
  v2 = IOMallocZeroData();
  if (!v2)
  {
    return 3758097085;
  }

  v3 = v2;
  *v2 = 0;
  v64[0] = v2;
  v64[1] = 0x40000000400;
  v4 = AppleBCMWLANCommander::runIOVarGet(this[1].OSObject::OSObjectInterface::__vftable[338].init, "cap", &kNoTxPayload, v64, 0);
  if (!v4)
  {
    *(v3 + 1023) = 0;
    setPropertyHelper(this, "FWCap", v3);
    shouldLog = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (shouldLog)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      shouldLog = CCLogStream::shouldLog();
      if (shouldLog)
      {
        shouldLog = AppleBCMWLANCore::IssueFwCap(this);
      }
    }

    v8 = &qword_1003D0008;
    v9 = 83;
    do
    {
      Word = AppleBCMWLANCore::findWord(shouldLog, v3, *(v8 - 2));
      v11 = *(v8 - 2);
      if (Word)
      {
        AppleBCMWLANCore::featureFlagSetBit(this, *(v8 - 2));
        shouldLog = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (shouldLog)
        {
          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          shouldLog = CCLogStream::shouldLog();
          if (shouldLog)
          {
            v13 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            *v8;
            shouldLog = CCLogStream::logAlert(v13, "[dk] %s@%d:   Supported bit flag[ %3u], cap[ '%s' ] - %s\n");
          }
        }
      }

      else
      {
        AppleBCMWLANCore::featureFlagClearBit(this, *(v8 - 2));
        if (*v8)
        {
          shouldLog = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (shouldLog)
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            shouldLog = CCLogStream::shouldLog();
            if (shouldLog)
            {
              v12 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              shouldLog = CCLogStream::logAlert(v12, "[dk] %s@%d: Unsupported bit flag[ %3u], cap[ '%s' ] - %s\n");
            }
          }
        }
      }

      v8 += 3;
      --v9;
    }

    while (v9);
    if (AppleBCMWLANCore::findWord(shouldLog, v3, "ap"))
    {
      AppleBCMWLANCore::featureFlagClearBit(this, 11);
    }

    else
    {
      AppleBCMWLANCore::featureFlagSetBit(this, 11);
    }

    v15 = AppleBCMWLANCore::findWord(v14, v3, "mpf");
    isMotionAssistanceSupported = AppleBCMWLANConfigManager::isMotionAssistanceSupported(this[1].OSObject::OSObjectInterface::__vftable[341].free);
    if (v15 && isMotionAssistanceSupported)
    {
      AppleBCMWLANCore::featureFlagSetBit(this, 18);
    }

    else
    {
      AppleBCMWLANCore::featureFlagClearBit(this, 18);
    }

    if (AppleBCMWLANCore::isD11SeqReuseSupported(this, v17))
    {
      AppleBCMWLANCore::featureFlagSetBit(this, 41);
    }

    else
    {
      AppleBCMWLANCore::featureFlagClearBit(this, 41);
    }

    if (AppleBCMWLANConfigManager::isFastEnterpriseNwSupported(this[1].OSObject::OSObjectInterface::__vftable[341].free))
    {
      AppleBCMWLANCore::featureFlagSetBit(this, 50);
    }

    else
    {
      AppleBCMWLANCore::featureFlagClearBit(this, 50);
    }

    v19 = AppleBCMWLANCore::findWord(v18, v3, "nap");
    v20 = this[1].OSObject::OSObjectInterface::__vftable;
    if (v19)
    {
      BYTE1(v20[648].init) = 1;
      v21 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (v21)
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        v21 = CCLogStream::shouldLog();
        if (v21)
        {
          v21 = AppleBCMWLANCore::IssueFwCap(this);
        }
      }
    }

    else
    {
      BYTE1(v20[648].init) = 0;
      v21 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (v21)
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        v21 = CCLogStream::shouldLog();
        if (v21)
        {
          v21 = AppleBCMWLANCore::IssueFwCap(this);
        }
      }
    }

    v22 = AppleBCMWLANCore::findWord(v21, v3, "nan");
    if (v22)
    {
      AppleBCMWLANCore::featureFlagSetBit(this, 6);
    }

    if (AppleBCMWLANCore::findWord(v22, v3, "nanho"))
    {
      AppleBCMWLANCore::featureFlagSetBit(this, 64);
    }

    v63 = 0;
    v23 = IOParseBootArgNumber("wlan.debug.disablenanho", &v63, 4);
    if (v23 && v63)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::IssueFwCap(this);
        }
      }

      AppleBCMWLANCore::featureFlagClearBit(this, 6);
      AppleBCMWLANCore::featureFlagClearBit(this, 64);
    }

    v24 = AppleBCMWLANCore::findWord(v23, v3, "dfsp");
    isDFSProxyEnabled = AppleBCMWLANConfigManager::isDFSProxyEnabled(this[1].OSObject::OSObjectInterface::__vftable[341].free);
    if (v24 && isDFSProxyEnabled)
    {
      AppleBCMWLANCore::featureFlagSetBit(this, 54);
    }

    else
    {
      AppleBCMWLANCore::featureFlagClearBit(this, 54);
    }

    AppleBCMWLANCore::featureFlagClearBit(this, 70);
    if (AppleBCMWLANCore::findWord(v26, v3, "rsdb"))
    {
      AppleBCMWLANCore::featureFlagSetBit(this, 46);
      AppleBCMWLANCore::featureFlagSetBit(this, 70);
      v62 = 1;
      v29 = IOParseBootArgNumber("wlan.concurrentmode", &v62, 4);
      if (!v29 || v62)
      {
LABEL_62:
        if (AppleBCMWLANCore::findWord(v29, v3, "psbw"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 3);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 3);
        }

        if (AppleBCMWLANCore::featureFlagIsBitSet(this, 38))
        {
          v62 = 1;
          v30 = IOParseBootArgNumber("wlan.hotspot.support.sae", &v62, 4);
          if (v30 && !v62)
          {
            AppleBCMWLANCore::featureFlagClearBit(this, 75);
          }
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 65);
          AppleBCMWLANCore::featureFlagClearBit(this, 66);
          AppleBCMWLANCore::featureFlagClearBit(this, 75);
          AppleBCMWLANCore::featureFlagClearBit(this, 109);
          v30 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (v30)
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            v30 = CCLogStream::shouldLog();
            if (v30)
            {
              v30 = AppleBCMWLANCore::IssueFwCap(this);
            }
          }
        }

        if (AppleBCMWLANCore::findWord(v30, v3, "he"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 67);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 67);
        }

        if (AppleBCMWLANCore::findWord(v31, v3, "txhist"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 69);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 69);
        }

        if (AppleBCMWLANCore::findWord(v32, v3, "ecounters"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 74);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 74);
        }

        if (AppleBCMWLANCore::findWord(v33, v3, "sc"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 76);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 76);
        }

        if (AppleBCMWLANCore::findWord(v34, v3, "tx-prof"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 78);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 78);
        }

        if (AppleBCMWLANCore::findWord(v35, v3, "obss_hw"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 101);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 101);
        }

        if (AppleBCMWLANCore::findWord(v36, v3, "dynbw"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 102);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 102);
        }

        if (AppleBCMWLANCore::findWord(v37, v3, "hp2p"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 86);
          *(&this[1].OSObject::OSObjectInterface::__vftable[13].init + 4) = 0;
          HP2P_CTRL = AppleBCMWLANCore::getHP2P_CTRL(this, 7, &this[1].OSObject::OSObjectInterface::__vftable[13].free);
          if (HP2P_CTRL)
          {
            HP2P_CTRL = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (HP2P_CTRL)
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              HP2P_CTRL = CCLogStream::shouldLog();
              if (HP2P_CTRL)
              {
                HP2P_CTRL = AppleBCMWLANCore::IssueFwCap(this);
              }
            }
          }

          else
          {
            v40 = this[1].OSObject::OSObjectInterface::__vftable;
            free = v40[13].free;
            if ((free & 8) != 0)
            {
              BYTE4(v40[13].free) = 1;
              v40 = this[1].OSObject::OSObjectInterface::__vftable;
              free = v40[13].free;
            }

            if ((free & 4) != 0)
            {
              BYTE5(v40[13].free) = 1;
            }
          }
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 86);
        }

        if (AppleBCMWLANCore::findWord(HP2P_CTRL, v3, "dsa"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 79);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 79);
        }

        if (AppleBCMWLANCore::findWord(v39, v3, "ltecxlbt"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 80);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 80);
        }

        if (AppleBCMWLANCore::findWord(v42, v3, "rng_reseed"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 81);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 81);
        }

        if (AppleBCMWLANCore::findWord(v43, v3, "dtim_miss"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 110);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 110);
        }

        v44 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (v44)
        {
          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          v44 = CCLogStream::shouldLog();
          if (v44)
          {
            v44 = AppleBCMWLANCore::IssueFwCap(this);
          }
        }

        if (AppleBCMWLANCore::findWord(v44, v3, "iot_bm"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 82);
          v45 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (v45)
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            v45 = CCLogStream::shouldLog();
            if (v45)
            {
              v45 = AppleBCMWLANCore::IssueFwCap(this);
            }
          }
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 82);
        }

        if (AppleBCMWLANCore::findWord(v45, v3, "iot_bd"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 87);
          if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::IssueFwCap(this);
            }
          }
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 87);
        }

        v61 = 0;
        v62 = 0;
        if (IOParseBootArgNumber("wlan.debug.disablebcnmute", &v62, 4) && v62)
        {
          if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::IssueFwCap(this);
            }
          }

          AppleBCMWLANCore::featureFlagClearBit(this, 82);
        }

        v46 = IOParseBootArgNumber("wlan.debug.disablebcndrift", &v61, 4);
        if (v46 && v61)
        {
          if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::IssueFwCap(this);
            }
          }

          AppleBCMWLANCore::featureFlagClearBit(this, 87);
        }

        if (AppleBCMWLANCore::findWord(v46, v3, "avoid-bssid"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 83);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 83);
        }

        if (AppleBCMWLANCore::findWord(v47, v3, "rc2cx"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 84);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 84);
        }

        if (AppleBCMWLANCore::findWord(v48, v3, "lr154cx"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 111);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 111);
        }

        if (AppleBCMWLANCore::isRC1CoexSupported(this, v3))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 85);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 85);
        }

        if (AppleBCMWLANCore::isAdvEcountersSupported(this, v3))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 89);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 89);
        }

        if (AppleBCMWLANCore::isPHYEcounterSupported(this, v3))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 90);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 90);
        }

        if (AppleBCMWLANCore::findWord(v49, v3, "spmi"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 94);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 94);
        }

        if (AppleBCMWLANCore::findWord(v50, v3, "qos_mgmt"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 95);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 95);
        }

        if (AppleBCMWLANCore::findWord(v51, v3, "csi"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 97);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 97);
        }

        if (AppleBCMWLANCore::findWord(v52, v3, "eds"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 119);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 119);
        }

        v60 = 0;
        if (IOParseBootArgNumber("wlan.debug.enableNDD", &v60, 4) && v60)
        {
          if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::IssueFwCap(this);
            }
          }

          AppleBCMWLANCore::featureFlagSetBit(this, 119);
        }

        if (AppleBCMWLANCore::isPHYCALEcounterSupported(this, v3))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 99);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 99);
        }

        if (AppleBCMWLANCore::findWord(v53, v3, "chstats"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 103);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 103);
        }

        if (AppleBCMWLANCore::findWord(v54, v3, "peerstats"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 104);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 104);
        }

        if (AppleBCMWLANCore::findWord(v55, v3, "oct"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 98);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 98);
        }

        if (AppleBCMWLANCore::findWord(v56, v3, "scca"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 112);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 112);
        }

        if (AppleBCMWLANCore::findWord(v57, v3, "spmi_scan_fwd"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 117);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 117);
        }

        if (AppleBCMWLANCore::findWord(v58, v3, "monitor"))
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 118);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 118);
        }

        v59 = (*(*this[1].OSObject::OSObjectInterface::__vftable[337].init + 368))(this[1].OSObject::OSObjectInterface::__vftable[337].init) - 4378;
        if (v59 <= 0x15 && ((1 << v59) & 0x200601) != 0)
        {
          AppleBCMWLANCore::featureFlagSetBit(this, 114);
        }

        else
        {
          AppleBCMWLANCore::featureFlagClearBit(this, 114);
        }

        v5 = 0;
        goto LABEL_6;
      }

      v27 = this;
      v28 = 70;
    }

    else
    {
      v27 = this;
      v28 = 46;
    }

    AppleBCMWLANCore::featureFlagClearBit(v27, v28);
    goto LABEL_62;
  }

  v5 = v4;
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::IssueFwCap(this);
    }
  }

LABEL_6:
  IOFreeData();
  return v5;
}

void AppleBCMWLANCore::featureFlagSetBit(AppleBCMWLANCore *this, int a2)
{
  v2 = a2;
  v3 = a2 + 7;
  if (a2 >= 0)
  {
    v3 = a2;
  }

  if ((v3 >> 3) >= 0x10)
  {
    AppleBCMWLANCore::featureFlagSetBit(this);
  }

  else
  {
    v4 = *(this + 9);
    v5 = *(v4 + 17832);
    if (v5)
    {
      v6 = v4 + 17840;
      v7 = v3 >> 3;
      IOLockLock(*(v4 + 17832));
      *(v6 + v7) |= 1 << (v2 & 7);

      IOLockUnlock(v5);
    }

    else
    {
      AppleBCMWLANCore::featureFlagSetBit(this);
    }
  }
}

void AppleBCMWLANCore::featureFlagClearBit(AppleBCMWLANCore *this, int a2)
{
  v2 = a2;
  v3 = a2 + 7;
  if (a2 >= 0)
  {
    v3 = a2;
  }

  if ((v3 >> 3) >= 0x10)
  {
    AppleBCMWLANCore::featureFlagClearBit(this);
  }

  else
  {
    v4 = *(this + 9);
    v5 = *(v4 + 17832);
    if (v5)
    {
      v6 = v4 + 17840;
      v7 = v3 >> 3;
      IOLockLock(*(v4 + 17832));
      *(v6 + v7) &= ~(1 << (v2 & 7));

      IOLockUnlock(v5);
    }

    else
    {
      AppleBCMWLANCore::featureFlagClearBit(this);
    }
  }
}

uint64_t AppleBCMWLANCore::isD11SeqReuseSupported(AppleBCMWLANCore *this, const char *a2)
{
  v5 = 1;
  IOParseBootArgNumber("bcom.feature.d11seq", &v5, 4);
  if (!v5)
  {
    return 0;
  }

  v4[0] = &v5;
  v4[1] = 0x400040004;
  if (AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "wlfc_mode", &kNoTxPayload, v4, 0) == -469794537)
  {
    return 0;
  }

  else
  {
    return (v5 >> 3) & 1;
  }
}

uint64_t AppleBCMWLANCore::getHP2P_CTRL(AppleBCMWLANCore *this, __int16 a2, unsigned int *a3)
{
  memset(v13, 170, sizeof(v13));
  v6 = IOMallocZeroData();
  v7 = IOMallocZeroData();
  if ((*(**(*(this + 9) + 5392) + 800))(*(*(this + 9) + 5392), v8, v9, v10))
  {
    if (v6)
    {
      if (!v7)
      {
        AppleBCMWLANCore::getHP2P_CTRL();
        v11 = v14;
        goto LABEL_9;
      }

      *v6 = 98304;
      *(v6 + 4) = a2;
      *(v6 + 6) = 4;
      *(v6 + 8) = 1;
      v13[2] = v6;
      v13[3] = 12;
      v13[0] = v7;
      v13[1] = 0x40000000400;
      if (AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "hp2p", &v13[2], v13, 0))
      {
        AppleBCMWLANCore::getHP2P_CTRL(this);
      }

      else
      {
        *a3 = *(v7 + 12);
        if (*(v7 + 6) > 7u)
        {
          v11 = 0;
LABEL_7:
          IOFreeData();
          goto LABEL_8;
        }

        AppleBCMWLANCore::getHP2P_CTRL(this);
      }

      v11 = v14;
      goto LABEL_7;
    }

    AppleBCMWLANCore::getHP2P_CTRL();
  }

  else
  {
    AppleBCMWLANCore::getHP2P_CTRL();
  }

  v11 = v14;
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v6)
  {
LABEL_9:
    IOFreeData();
  }

  return v11;
}

BOOL AppleBCMWLANCore::isRC1CoexSupported(AppleBCMWLANCore *this, const char *a2)
{
  v6 = -86;
  shouldLog = IOParseBootArgNumber("wlan.rc1cx.enable", &v6, 1);
  if (!shouldLog)
  {
    return AppleBCMWLANCore::findWord(shouldLog, a2, "rc1cx") != 0;
  }

  shouldLog = (*(*this + 1952))(this);
  if (shouldLog)
  {
    (*(*this + 1952))(this);
    shouldLog = CCLogStream::shouldLog();
    if (shouldLog)
    {
      shouldLog = AppleBCMWLANCore::isRC1CoexSupported(this);
    }
  }

  return (v6 & 1) != 0 || AppleBCMWLANCore::findWord(shouldLog, a2, "rc1cx") != 0;
}

BOOL AppleBCMWLANCore::isPHYEcounterSupported(AppleBCMWLANCore *this, const char *a2)
{
  v6 = -86;
  shouldLog = IOParseBootArgNumber("wlan.PhyEconter.enable", &v6, 1);
  if (!shouldLog)
  {
    return AppleBCMWLANCore::findWord(shouldLog, a2, "phy_ecounter") != 0;
  }

  shouldLog = (*(*this + 1952))(this);
  if (shouldLog)
  {
    (*(*this + 1952))(this);
    shouldLog = CCLogStream::shouldLog();
    if (shouldLog)
    {
      shouldLog = AppleBCMWLANCore::isPHYEcounterSupported(this);
    }
  }

  return (v6 & 1) != 0 || AppleBCMWLANCore::findWord(shouldLog, a2, "phy_ecounter") != 0;
}

BOOL AppleBCMWLANCore::isPHYCALEcounterSupported(AppleBCMWLANCore *this, const char *a2)
{
  v6 = -86;
  shouldLog = IOParseBootArgNumber("wlan.PhyCalEcounter.enable", &v6, 1);
  if (!shouldLog)
  {
    return AppleBCMWLANCore::findWord(shouldLog, a2, "phy_cal_ecounter") != 0;
  }

  shouldLog = (*(*this + 1952))(this);
  if (shouldLog)
  {
    (*(*this + 1952))(this);
    shouldLog = CCLogStream::shouldLog();
    if (shouldLog)
    {
      shouldLog = AppleBCMWLANCore::isPHYCALEcounterSupported(this);
    }
  }

  return (v6 & 1) != 0 || AppleBCMWLANCore::findWord(shouldLog, a2, "phy_cal_ecounter") != 0;
}

uint64_t AppleBCMWLANCore::IssueFwCapExt(AppleBCMWLANCore *this)
{
  v2 = 3758097084;
  v26 = 0;
  v27 = 0;
  v3 = IOMallocZeroData();
  if (v3)
  {
    v4 = v3;
    v25[0] = v3;
    v25[1] = 0x40000000400;
    v5 = AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "dngl:capext", &kNoTxPayload, v25, 0);
    if (v5)
    {
      v7 = v5;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::IssueFwCapExt(this);
        }
      }
    }

    else
    {
      if (v4 + 4 < v4)
      {
        AppleBCMWLANProximityInterface::handleEvent(v5, v6);
      }

      v8 = *(v4 + 2);
      if (v8 < 0x401)
      {
        v23[0] = v4;
        v23[1] = 1024;
        IO80211BufferCursor::_crop(v23, 4uLL, 0xFFFFFFFFFFFFFFFFLL, v24);
        IO80211BufferCursor::_crop(v24, 0xFFFFFFFFFFFFFFFFLL, v8, &v20);
        v26 = v20;
        v27 = v21;
        if (v20 && v21)
        {
          v9 = IO80211BufferCursor::_crop(&v26, 0, 0xFFFFFFFFFFFFFFFFLL, &v20);
          v11 = v20;
          v12 = v21;
          v21 = v20;
          v22 = v12;
          if (v20 && v12 >= 4)
          {
            while (1)
            {
              v13 = v11[1];
              v14 = v13 + (-v13 & 3) + 4;
              if (v14 > v12)
              {
                goto LABEL_25;
              }

              v24[0] = 0xAAAAAAAAAAAAAAAALL;
              if (v11 + 2 < v11)
              {
                AppleBCMWLANProximityInterface::handleEvent(v9, v10);
              }

              if (!v13)
              {
                break;
              }

              v15 = *v11;
              v24[0] = (v11 + 2);
              v24[1] = v13;
              v16 = AppleBCMWLANCore::processFwFeatures(this, v24, v13, v15);
              if (v16)
              {
                v18 = v16;
                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::IssueFwCapExt(this);
                  }
                }

                goto LABEL_36;
              }

              if (v8 >= v14)
              {
                v17 = v14;
              }

              else
              {
                v17 = 0;
              }

              v8 -= v17;
              v9 = IO80211TLVIterator<IO80211TLVHeader<unsigned short,unsigned short,0ul,2ul,4ul>>::operator++(&v20);
              v11 = v21;
              v12 = v22;
              if (!v21 || v22 < 4)
              {
                goto LABEL_25;
              }
            }

            AppleBCMWLANCore::IssueFwCapExt(this);
            v18 = LODWORD(v23[0]);
LABEL_36:
            v2 = v18;
            goto LABEL_44;
          }

LABEL_25:
          if (v8)
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::IssueFwCapExt(this);
              }
            }
          }

          else
          {
            if (AppleBCMWLANCore::isD11SeqReuseSupported(this, v10))
            {
              AppleBCMWLANCore::featureFlagSetBit(this, 41);
            }

            else
            {
              AppleBCMWLANCore::featureFlagClearBit(this, 41);
            }

            if (AppleBCMWLANConfigManager::isFastEnterpriseNwSupported(*(*(this + 9) + 5464)))
            {
              AppleBCMWLANCore::featureFlagSetBit(this, 50);
            }

            else
            {
              AppleBCMWLANCore::featureFlagClearBit(this, 50);
            }

            v2 = 0;
          }

LABEL_44:
          v7 = v2;
          goto LABEL_45;
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::IssueFwCapExt(this);
          }
        }
      }

      else if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::IssueFwCapExt(this);
        }
      }

      v7 = 3758097084;
    }

LABEL_45:
    IOFreeData();
    return v7;
  }

  return 3758097085;
}

uint64_t AppleBCMWLANCore::processFwFeatures(AppleBCMWLANCore *this, IO80211BufferCursor *a2, uint64_t a3, uint64_t a4)
{
  v4 = this;
  if ((a3 - 1) >= *(a2 + 1) || (v5 = *a2) == 0)
  {
    AppleBCMWLANCore::processFwFeatures(this);
    return HIDWORD(v20);
  }

  v6 = 0;
  if (a4 > 2053)
  {
    if (a4 > 2058)
    {
      switch(a4)
      {
        case 2059:
          if ((a3 & 0x1FFFFFFFFFFFFFFFLL) == 0 || (*v5 & 1) == 0)
          {
            return 0;
          }

          v7 = 31;
          break;
        case 2060:
          if ((a3 & 0x1FFFFFFFFFFFFFFFLL) == 0 || (*v5 & 2) == 0)
          {
            return 0;
          }

          v7 = 115;
          break;
        case 2061:
          if ((a3 & 0x1FFFFFFFFFFFFFFFLL) == 0)
          {
            return 0;
          }

          v9 = *v5;
          if ((*v5 & 4) != 0)
          {
            AppleBCMWLANCore::featureFlagSetBit(this, 75);
            v9 = *v5;
          }

          if ((v9 & 8) == 0)
          {
            return 0;
          }

          this = v4;
          v7 = 106;
          break;
        default:
          goto LABEL_42;
      }

      goto LABEL_303;
    }

    if ((a4 - 2056) < 3)
    {
      return v6;
    }

    if (a4 != 2054)
    {
      if (a4 != 2055)
      {
        goto LABEL_42;
      }

      if ((a3 & 0x1FFFFFFFFFFFFFFFLL) == 0 || (*v5 & 1) == 0)
      {
        return 0;
      }

      v7 = 32;
LABEL_303:
      AppleBCMWLANCore::featureFlagSetBit(this, v7);
      return 0;
    }

    if ((a3 & 0x1FFFFFFFFFFFFFFFLL) == 0)
    {
      return 0;
    }

    v10 = *v5;
    if (*v5)
    {
      AppleBCMWLANCore::featureFlagSetBit(this, 73);
      v10 = *v5;
      if ((*v5 & 4) == 0)
      {
LABEL_54:
        if ((v10 & 2) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_74;
      }
    }

    else if ((*v5 & 4) == 0)
    {
      goto LABEL_54;
    }

    AppleBCMWLANCore::featureFlagSetBit(v4, 15);
    v10 = *v5;
    if ((*v5 & 2) == 0)
    {
LABEL_55:
      if ((v10 & 8) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_75;
    }

LABEL_74:
    AppleBCMWLANCore::featureFlagSetBit(v4, 80);
    v10 = *v5;
    if ((*v5 & 8) == 0)
    {
LABEL_56:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_76;
    }

LABEL_75:
    AppleBCMWLANCore::featureFlagSetBit(v4, 85);
    v10 = *v5;
    if ((*v5 & 0x10) == 0)
    {
LABEL_57:
      if ((v10 & 0x40) == 0)
      {
        return 0;
      }

LABEL_77:
      this = v4;
      v7 = 111;
      goto LABEL_303;
    }

LABEL_76:
    AppleBCMWLANCore::featureFlagSetBit(v4, 84);
    if ((*v5 & 0x40) == 0)
    {
      return 0;
    }

    goto LABEL_77;
  }

  if (a4 > 1025)
  {
    if ((a4 - 2050) < 4)
    {
      return v6;
    }

    if (a4 != 1026)
    {
      if (a4 != 2049)
      {
        goto LABEL_42;
      }

      v8 = 8 * a3;
      if ((8 * a3) < 0xB)
      {
        goto LABEL_187;
      }

      if ((v5[1] & 4) != 0)
      {
        AppleBCMWLANCore::featureFlagSetBit(this, 28);
      }

      if (v8 < 0x39)
      {
        if (v8 < 0x31)
        {
          if (v8 < 0x2D)
          {
            if (v8 < 0x25)
            {
              if (v8 < 0x1A)
              {
                goto LABEL_187;
              }

LABEL_105:
              if ((v5[3] & 2) != 0)
              {
                AppleBCMWLANCore::featureFlagSetBit(v4, 17);
              }

              if (v8 < 0x24)
              {
                if (v8 < 0x1B)
                {
                  goto LABEL_187;
                }

LABEL_153:
                if ((v5[3] & 4) != 0)
                {
                  AppleBCMWLANCore::featureFlagSetBit(v4, 48);
                }

                if (v8 < 0x34)
                {
                  goto LABEL_187;
                }

                if ((v5[6] & 8) != 0)
                {
                  AppleBCMWLANCore::featureFlagSetBit(v4, 51);
                }

                if (v8 < 0x4C)
                {
                  if (v8 < 0x47)
                  {
                    goto LABEL_179;
                  }
                }

                else if ((v5[9] & 8) != 0)
                {
                  AppleBCMWLANCore::featureFlagSetBit(v4, 52);
                }

                if ((v5[8] & 0x40) != 0)
                {
                  AppleBCMWLANCore::featureFlagSetBit(v4, 53);
                }

                if (v8 < 0x50)
                {
                  if (v8 < 0x4D)
                  {
                    if (v8 < 0x4B)
                    {
                      goto LABEL_179;
                    }

                    goto LABEL_171;
                  }
                }

                else if (v5[9] < 0)
                {
                  AppleBCMWLANCore::featureFlagSetBit(v4, 56);
                }

                if ((v5[9] & 0x10) != 0)
                {
                  AppleBCMWLANCore::featureFlagSetBit(v4, 57);
                }

LABEL_171:
                if ((v5[9] & 4) != 0)
                {
                  AppleBCMWLANCore::featureFlagSetBit(v4, 59);
                }

                if (v8 >= 0x4E)
                {
                  if ((v5[9] & 0x20) != 0)
                  {
                    AppleBCMWLANCore::featureFlagSetBit(v4, 60);
                  }

                  if (v8 >= 0x54 && (v5[10] & 8) != 0)
                  {
                    AppleBCMWLANCore::featureFlagSetBit(v4, 4);
                  }
                }

LABEL_179:
                if ((v5[6] & 0x10) != 0)
                {
                  AppleBCMWLANCore::featureFlagSetBit(v4, 45);
                }

                if (v8 >= 0x46)
                {
                  if ((v5[8] & 0x20) != 0)
                  {
                    AppleBCMWLANCore::featureFlagSetBit(v4, 12);
                  }

                  HIDWORD(v20) = 0;
                  if (v8 >= 0x73 && (v5[14] & 4) != 0)
                  {
                    AppleBCMWLANCore::featureFlagSetBit(v4, 6);
                  }

LABEL_188:
                  if (IOParseBootArgNumber("wlan.debug.disablenanho", &v20 + 4, 4) && HIDWORD(v20))
                  {
                    if ((*(*v4 + 1952))(v4))
                    {
                      (*(*v4 + 1952))(v4);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::processFwFeatures(v4);
                      }
                    }

                    AppleBCMWLANCore::featureFlagClearBit(v4, 6);
                    AppleBCMWLANCore::featureFlagClearBit(v4, 64);
                  }

                  if (v8 < 0x6E)
                  {
                    if (v8 < 0x62)
                    {
                      if (v8 < 0x5A)
                      {
                        if (v8 < 0x21)
                        {
                          goto LABEL_224;
                        }

                        goto LABEL_211;
                      }

LABEL_209:
                      if ((v5[11] & 2) != 0)
                      {
                        AppleBCMWLANCore::featureFlagSetBit(v4, 66);
                      }

LABEL_211:
                      if (v5[4])
                      {
                        AppleBCMWLANCore::featureFlagSetBit(v4, 121);
                      }

                      if (v8 >= 0x22)
                      {
                        v16 = v5[4];
                        if ((v16 & 2) != 0)
                        {
                          AppleBCMWLANCore::featureFlagSetBit(v4, 67);
                          v16 = v5[4];
                        }

                        if ((v16 & 4) != 0)
                        {
                          AppleBCMWLANCore::featureFlagSetBit(v4, 116);
                        }

                        if (v8 >= 0x48 && v5[8] < 0)
                        {
                          AppleBCMWLANCore::featureFlagSetBit(v4, 68);
                          *(*(v4 + 9) + 10369) = 1;
                          if ((*(*v4 + 1952))(v4))
                          {
                            (*(*v4 + 1952))(v4);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::processFwFeatures(v4);
                            }
                          }

                          goto LABEL_227;
                        }
                      }

LABEL_224:
                      AppleBCMWLANCore::featureFlagClearBit(v4, 68);
                      *(*(v4 + 9) + 10369) = 0;
                      if ((*(*v4 + 1952))(v4) && ((*(*v4 + 1952))(v4), CCLogStream::shouldLog()))
                      {
                        AppleBCMWLANCore::processFwFeatures(v4);
                        if (!v8)
                        {
                          goto LABEL_228;
                        }
                      }

                      else if (!v8)
                      {
                        goto LABEL_228;
                      }

LABEL_227:
                      if (*v5)
                      {
                        AppleBCMWLANCore::featureFlagSetBit(v4, 16);
                        AppleBCMWLANCore::featureFlagClearBit(v4, 11);
LABEL_230:
                        if (v8 >= 0x53)
                        {
                          if ((v5[10] & 4) != 0)
                          {
                            AppleBCMWLANCore::featureFlagSetBit(v4, 54);
                          }

                          if (v8 >= 0x57 && (v5[10] & 0x40) != 0)
                          {
                            AppleBCMWLANCore::featureFlagSetBit(v4, 3);
                          }
                        }

                        if (AppleBCMWLANCore::featureFlagIsBitSet(v4, 38))
                        {
                          HIDWORD(v20) = 1;
                          if (IOParseBootArgNumber("wlan.hotspot.support.sae", &v20 + 4, 4) && !HIDWORD(v20))
                          {
                            AppleBCMWLANCore::featureFlagClearBit(v4, 75);
                          }
                        }

                        else
                        {
                          AppleBCMWLANCore::featureFlagClearBit(v4, 65);
                          AppleBCMWLANCore::featureFlagClearBit(v4, 66);
                          AppleBCMWLANCore::featureFlagClearBit(v4, 75);
                          AppleBCMWLANCore::featureFlagClearBit(v4, 105);
                          AppleBCMWLANCore::featureFlagClearBit(v4, 106);
                          AppleBCMWLANCore::featureFlagClearBit(v4, 109);
                          AppleBCMWLANCore::featureFlagClearBit(v4, 107);
                          AppleBCMWLANCore::featureFlagClearBit(v4, 108);
                          if ((*(*v4 + 1952))(v4))
                          {
                            (*(*v4 + 1952))(v4);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::processFwFeatures(v4);
                            }
                          }
                        }

                        if (v8 >= 0x33)
                        {
                          if ((v5[6] & 4) != 0)
                          {
                            AppleBCMWLANCore::featureFlagSetBit(v4, 18);
                          }

                          if (v8 < 0x5D)
                          {
                            if (v8 < 0x4A)
                            {
                              goto LABEL_271;
                            }
                          }

                          else if ((v5[11] & 0x10) != 0)
                          {
                            AppleBCMWLANCore::featureFlagSetBit(v4, 76);
                          }

                          if ((v5[9] & 2) != 0)
                          {
                            AppleBCMWLANCore::featureFlagSetBit(v4, 77);
                          }

                          if (v8 >= 0x5F)
                          {
                            v17 = v5[11];
                            if ((v17 & 0x40) != 0)
                            {
                              AppleBCMWLANCore::featureFlagSetBit(v4, 78);
                              v17 = v5[11];
                            }

                            if (v17 < 0)
                            {
                              AppleBCMWLANCore::featureFlagSetBit(v4, 79);
                            }

                            if (v8 >= 0x63)
                            {
                              v18 = v5[12];
                              if ((v18 & 4) != 0)
                              {
                                AppleBCMWLANCore::featureFlagSetBit(v4, 83);
                                v18 = v5[12];
                              }

                              if ((v18 & 8) != 0)
                              {
                                if ((*(*v4 + 1952))(v4))
                                {
                                  (*(*v4 + 1952))(v4);
                                  if (CCLogStream::shouldLog())
                                  {
                                    AppleBCMWLANCore::processFwFeatures(v4);
                                  }
                                }

                                AppleBCMWLANCore::featureFlagSetBit(v4, 82);
                              }

                              if (v8 >= 0x65 && (v5[12] & 0x10) != 0)
                              {
                                if ((*(*v4 + 1952))(v4))
                                {
                                  (*(*v4 + 1952))(v4);
                                  if (CCLogStream::shouldLog())
                                  {
                                    AppleBCMWLANCore::processFwFeatures(v4);
                                  }
                                }

                                AppleBCMWLANCore::featureFlagSetBit(v4, 87);
                              }
                            }
                          }
                        }

LABEL_271:
                        v20 = 0;
                        if (IOParseBootArgNumber("wlan.debug.disablebcnmute", &v20 + 4, 4) && HIDWORD(v20))
                        {
                          if ((*(*v4 + 1952))(v4))
                          {
                            (*(*v4 + 1952))(v4);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::processFwFeatures(v4);
                            }
                          }

                          AppleBCMWLANCore::featureFlagClearBit(v4, 82);
                        }

                        if (IOParseBootArgNumber("wlan.debug.disablebcndrift", &v20, 4) && v20)
                        {
                          if ((*(*v4 + 1952))(v4))
                          {
                            (*(*v4 + 1952))(v4);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::processFwFeatures(v4);
                            }
                          }

                          AppleBCMWLANCore::featureFlagClearBit(v4, 87);
                        }

                        if (v8 >= 0x79 && (v5[15] & 1) != 0)
                        {
                          AppleBCMWLANCore::featureFlagSetBit(v4, 101);
                        }

                        else
                        {
                          AppleBCMWLANCore::featureFlagClearBit(v4, 101);
                        }

                        if (v8 >= 0x7A && (v5[15] & 2) != 0)
                        {
                          AppleBCMWLANCore::featureFlagSetBit(v4, 102);
                        }

                        else
                        {
                          AppleBCMWLANCore::featureFlagClearBit(v4, 102);
                        }

                        if (v8 < 0x83)
                        {
                          AppleBCMWLANCore::featureFlagClearBit(v4, 112);
                          if (v8 < 0x5E)
                          {
                            goto LABEL_298;
                          }
                        }

                        else if ((v5[16] & 4) != 0)
                        {
                          AppleBCMWLANCore::featureFlagSetBit(v4, 112);
                        }

                        else
                        {
                          AppleBCMWLANCore::featureFlagClearBit(v4, 112);
                        }

                        if ((v5[11] & 0x20) != 0)
                        {
                          AppleBCMWLANCore::featureFlagSetBit(v4, 93);
                          AppleBCMWLANCore::featureFlagSetBit(v4, 120);
LABEL_300:
                          if (v8 < 0x85 || (v5[16] & 0x10) == 0)
                          {
                            return 0;
                          }

                          this = v4;
                          v7 = 117;
                          goto LABEL_303;
                        }

LABEL_298:
                        AppleBCMWLANCore::featureFlagClearBit(v4, 93);
                        goto LABEL_300;
                      }

LABEL_228:
                      AppleBCMWLANCore::featureFlagClearBit(v4, 16);
                      AppleBCMWLANCore::featureFlagSetBit(v4, 11);
                      goto LABEL_230;
                    }
                  }

                  else if ((v5[13] & 0x20) != 0)
                  {
                    AppleBCMWLANCore::featureFlagSetBit(v4, 65);
                  }

                  if ((v5[12] & 2) != 0)
                  {
                    AppleBCMWLANCore::featureFlagSetBit(v4, 105);
                  }

                  if (v8 >= 0x78)
                  {
                    if (v5[14] < 0)
                    {
                      AppleBCMWLANCore::featureFlagSetBit(v4, 109);
                    }

                    if (v8 >= 0x7D)
                    {
                      v15 = v5[15];
                      if ((v15 & 0x10) != 0)
                      {
                        AppleBCMWLANCore::featureFlagSetBit(v4, 107);
                        v15 = v5[15];
                      }

                      if ((v15 & 0x20) != 0)
                      {
                        AppleBCMWLANCore::featureFlagSetBit(v4, 108);
                      }
                    }
                  }

                  goto LABEL_209;
                }

LABEL_187:
                HIDWORD(v20) = 0;
                goto LABEL_188;
              }

              if ((v5[4] & 8) != 0)
              {
                AppleBCMWLANCore::featureFlagSetBit(v4, 10);
              }

              if (v8 < 0x52)
              {
                if (v8 < 0x32)
                {
                  if (v8 < 0x30)
                  {
                    if (v8 < 0x2C)
                    {
                      if (v8 < 0x2A)
                      {
                        goto LABEL_153;
                      }

                      goto LABEL_138;
                    }

LABEL_127:
                    if ((v5[5] & 8) != 0)
                    {
                      AppleBCMWLANCore::featureFlagSetBit(v4, 38);
                    }

                    if (v8 < 0x3C)
                    {
                      goto LABEL_138;
                    }

                    if ((v5[7] & 8) != 0)
                    {
                      AppleBCMWLANCore::featureFlagSetBit(v4, 44);
                    }

                    if (v8 < 0x56)
                    {
                      if (v8 < 0x44)
                      {
LABEL_138:
                        if ((v5[5] & 2) != 0)
                        {
                          AppleBCMWLANCore::featureFlagSetBit(v4, 46);
                          AppleBCMWLANCore::featureFlagSetBit(v4, 70);
                          HIDWORD(v20) = 1;
                          if (IOParseBootArgNumber("wlan.concurrentmode", &v20 + 4, 4) && !HIDWORD(v20))
                          {
                            AppleBCMWLANCore::featureFlagClearBit(v4, 70);
                          }
                        }

                        if (v8 >= 0x3E)
                        {
                          if ((v5[7] & 0x20) != 0)
                          {
                            AppleBCMWLANCore::featureFlagSetBit(v4, 47);
                          }

                          if (v8 >= 0x75)
                          {
                            if ((v5[14] & 0x10) != 0)
                            {
                              AppleBCMWLANCore::featureFlagSetBit(v4, 96);
                            }

                            if (v8 >= 0x77 && (v5[14] & 0x40) != 0)
                            {
                              AppleBCMWLANCore::featureFlagSetBit(v4, 100);
                            }
                          }
                        }

                        goto LABEL_153;
                      }
                    }

                    else if ((v5[10] & 0x20) != 0)
                    {
                      AppleBCMWLANCore::featureFlagSetBit(v4, 118);
                    }

                    if ((v5[8] & 8) != 0)
                    {
                      AppleBCMWLANCore::featureFlagSetBit(v4, 49);
                    }

                    goto LABEL_138;
                  }

LABEL_125:
                  if (v5[5] < 0)
                  {
                    AppleBCMWLANCore::featureFlagSetBit(v4, 37);
                  }

                  goto LABEL_127;
                }
              }

              else if ((v5[10] & 2) != 0)
              {
                AppleBCMWLANCore::featureFlagSetBit(v4, 34);
              }

              if ((v5[6] & 2) != 0)
              {
                AppleBCMWLANCore::featureFlagSetBit(v4, 36);
              }

              if (v8 >= 0x4F && (v5[9] & 0x40) != 0)
              {
                AppleBCMWLANCore::featureFlagSetBit(v4, 61);
              }

              goto LABEL_125;
            }

            goto LABEL_103;
          }

LABEL_95:
          if ((v5[5] & 0x10) != 0)
          {
            AppleBCMWLANCore::featureFlagSetBit(v4, 30);
          }

          if (v8 >= 0x37)
          {
            if ((v5[6] & 0x40) != 0)
            {
              AppleBCMWLANCore::featureFlagSetBit(v4, 21);
            }

            goto LABEL_101;
          }

          if (v8 >= 0x2F)
          {
LABEL_101:
            if ((v5[5] & 0x40) != 0)
            {
              AppleBCMWLANCore::featureFlagSetBit(v4, 25);
            }
          }

LABEL_103:
          if ((v5[4] & 0x10) != 0)
          {
            AppleBCMWLANCore::featureFlagSetBit(v4, 26);
          }

          goto LABEL_105;
        }
      }

      else
      {
        if (v5[7])
        {
          AppleBCMWLANCore::featureFlagSetBit(v4, 29);
        }

        if (v8 >= 0x51 && (v5[10] & 1) != 0)
        {
          AppleBCMWLANCore::featureFlagSetBit(v4, 62);
        }
      }

      if (v5[6])
      {
        AppleBCMWLANCore::featureFlagSetBit(v4, 27);
      }

      goto LABEL_95;
    }

    if ((a3 & 0x1FFFFFFFFFFFFFFFLL) == 0)
    {
      return 0;
    }

    v11 = *v5;
    if (*v5)
    {
      AppleBCMWLANCore::featureFlagSetBit(this, 69);
      v11 = *v5;
      if ((*v5 & 2) == 0)
      {
LABEL_62:
        if ((v11 & 4) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_80;
      }
    }

    else if ((*v5 & 2) == 0)
    {
      goto LABEL_62;
    }

    AppleBCMWLANCore::featureFlagSetBit(v4, 89);
    v11 = *v5;
    if ((*v5 & 4) == 0)
    {
LABEL_63:
      if ((v11 & 8) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_81;
    }

LABEL_80:
    AppleBCMWLANCore::featureFlagSetBit(v4, 90);
    v11 = *v5;
    if ((*v5 & 8) == 0)
    {
LABEL_64:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_82;
    }

LABEL_81:
    AppleBCMWLANCore::featureFlagSetBit(v4, 99);
    v11 = *v5;
    if ((*v5 & 0x10) == 0)
    {
LABEL_65:
      if ((v11 & 0x20) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_83;
    }

LABEL_82:
    AppleBCMWLANCore::featureFlagSetBit(v4, 103);
    v11 = *v5;
    if ((*v5 & 0x20) == 0)
    {
LABEL_66:
      if ((v11 & 0x80) == 0)
      {
        return 0;
      }

      goto LABEL_84;
    }

LABEL_83:
    AppleBCMWLANCore::featureFlagSetBit(v4, 104);
    if ((*v5 & 0x80) == 0)
    {
      return 0;
    }

LABEL_84:
    this = v4;
    v7 = 122;
    goto LABEL_303;
  }

  if (a4 == 1)
  {
    if ((a3 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      if ((*v5 & 1) == 0)
      {
        goto LABEL_40;
      }

      AppleBCMWLANCore::featureFlagSetBit(this, 86);
      *(*(v4 + 9) + 212) = 0;
      HP2P_CTRL = AppleBCMWLANCore::getHP2P_CTRL(v4, 7, (*(v4 + 9) + 216));
      if (HP2P_CTRL)
      {
        v6 = HP2P_CTRL;
        if ((*(*v4 + 1952))(v4))
        {
          (*(*v4 + 1952))(v4);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::processFwFeatures(v4);
          }
        }

        goto LABEL_89;
      }

      v13 = *(v4 + 9);
      v14 = *(v13 + 216);
      if ((v14 & 8) != 0)
      {
        *(v13 + 220) = 1;
        v13 = *(v4 + 9);
        v14 = *(v13 + 216);
      }

      if ((v14 & 4) != 0)
      {
        v6 = 0;
        *(v13 + 221) = 1;
      }

      else
      {
LABEL_40:
        v6 = 0;
      }

LABEL_89:
      if ((*v5 & 2) != 0)
      {
        AppleBCMWLANCore::featureFlagSetBit(v4, 91);
      }

      return v6;
    }

    return 0;
  }

  if (a4 != 2)
  {
    if (a4 == 1025)
    {
      if ((a3 & 0x1FFFFFFFFFFFFFFFLL) == 0 || (*v5 & 8) == 0)
      {
        return 0;
      }

      v7 = 74;
      goto LABEL_303;
    }

LABEL_42:
    if ((*(*this + 1952))(this))
    {
      (*(*v4 + 1952))(v4);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::processFwFeatures(v4);
      }
    }

    return 0;
  }

  return v6;
}

uint64_t AppleBCMWLANCore::infraDpEnable(uint64_t this, unint64_t *a2)
{
  v2 = *(this + 72);
  if (*(v2 + 5504) && *(v2 + 35656) != 4)
  {
    v3 = this;
    mach_continuous_nanoseconds = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, a2);
    v5 = *(v3 + 72);
    v6 = ((mach_continuous_nanoseconds - *(v5 + 35664)) * 0x431BDE82D7B634DBuLL) >> 64;
    v7 = *(v5 + 35656);
    this = AppleBCMWLANIOReportingCore::reportWakeToInterfaceEnableTime(*(v5 + 5504));
    v2 = *(v3 + 72);
  }

  *(v2 + 35656) = 4;
  return this;
}

uint64_t AppleBCMWLANCore::processChipCaps(IOService *this)
{
  v10 = 0;
  v2 = IOParseBootArgNumber("wlan.fwcap", &v10, 4);
  v3 = v10;
  this[1].OSObject::OSObjectInterface::__vftable[1115] = 0u;
  AppleBCMWLANCore::adjustFeatureFlags(this);
  if (!v2 || v3 == 0)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::processChipCaps(this);
      }
    }

    if (!AppleBCMWLANCore::IssueFwCapExt(this))
    {
      goto LABEL_20;
    }

    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::processChipCaps(this);
      }
    }
  }

  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::processChipCaps(this);
    }
  }

  v5 = AppleBCMWLANCore::IssueFwCap(this);
  if (v5)
  {
    v6 = v5;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::processChipCaps(this);
      }
    }

    return v6;
  }

LABEL_20:
  v7 = (*(*this[1].OSObject::OSObjectInterface::__vftable[337].init + 368))(this[1].OSObject::OSObjectInterface::__vftable[337].init);
  if ((v7 - 4387) > 0xC || ((1 << (v7 - 35)) & 0x1003) == 0)
  {
    AppleBCMWLANCore::featureFlagClearBit(this, 88);
  }

  else
  {
    AppleBCMWLANCore::featureFlagSetBit(this, 88);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::adjustFeatureFlags(AppleBCMWLANCore *this)
{
  v6 = 0;
  v5 = 0;
  if (IOParseBootArgNumber("bcom.feature.flags", &v6, 8))
  {
    IOLog(" Enabling features 0x%llX\n", v6);
    for (i = 0; i != 64; ++i)
    {
      if ((v6 >> i))
      {
        AppleBCMWLANCore::featureFlagSetBit(this, i);
      }
    }
  }

  if (IOParseBootArgNumber("bcom.feature.wow", &v5, 4))
  {
    if (v5 == 1)
    {
      AppleBCMWLANCore::featureFlagClearBit(this, -2);
    }

    else if (v5)
    {
      IOLog(" bcom.feature.wow=%lX is invalid, it can only be 1 or 0\n", v5);
    }

    else
    {
      AppleBCMWLANCore::featureFlagSetBit(this, 1);
    }
  }

  DTParameter32 = AppleBCMWLANUtil::getDTParameter32(*(*(this + 9) + 5392), "IOService", "wlan.ignore.mcast", 0);
  IOParseBootArgNumber("bcom.feature.pmmcast", &DTParameter32, 4);
  if (DTParameter32)
  {
    if ((*(*this + 1952))(this))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::adjustFeatureFlags(this);
        }
      }
    }

    AppleBCMWLANCore::featureFlagSetBit(this, 43);
  }

  return 1;
}

uint64_t AppleBCMWLANCore::downloadBlob(AppleBCMWLANCore *this, const char *a2, const char *a3, unint64_t a4)
{
  v8 = IOMallocZeroData();
  if (!v8)
  {
    return 3758097085;
  }

  v9 = v8;
  v10 = 0;
  v11 = 2;
  do
  {
    if (a4 >= 0x580)
    {
      v12 = 1408;
    }

    else
    {
      v12 = a4;
    }

    memcpy((v9 + 12), &a3[v10], v12);
    a4 -= v12;
    if (!a4)
    {
      v11 |= 4u;
    }

    *v9 = v11 | 0x1000;
    *(v9 + 2) = 2;
    *(v9 + 4) = v12;
    *(v9 + 8) = 0;
    v13 = *(*(this + 9) + 5408);
    v17[0] = v9;
    v17[1] = v12 + (v12 & 7 ^ 0xFFFFFFFFFFFFFFFBLL) + 21;
    v14 = AppleBCMWLANCommander::runIOVarSet(v13, a2, v17, 0, 0);
    v15 = v14;
    if (a4 < 1)
    {
      break;
    }

    v10 += v12;
    v11 &= 0x7FFDu;
  }

  while (!v14);
  IOFreeData();
  return v15;
}

uint64_t AppleBCMWLANCore::downloadBlobIOVBatch(AppleBCMWLANCore *this, const char *a2, const char *a3, unint64_t a4)
{
  v8 = IOMallocZeroData();
  if (!v8)
  {
    return 3758097085;
  }

  v9 = v8;
  v10 = 0;
  v11 = 2;
  do
  {
    if (a4 >= 0x580)
    {
      v12 = 1408;
    }

    else
    {
      v12 = a4;
    }

    memcpy((v9 + 16), &a3[v10], v12);
    a4 -= v12;
    if (!a4)
    {
      v11 |= 4u;
    }

    *v9 = 0x8000;
    *(v9 + 2) = 1;
    *(v9 + 4) = 1;
    *(v9 + 8) = 1;
    *(v9 + 6) = v12 + 8;
    *(v9 + 12) = v11 | 0x1000;
    *(v9 + 14) = v12;
    v13 = *(*(this + 9) + 5408);
    if (((v12 + 24) & 0xFF8) != 0)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    v18[0] = v14;
    v18[1] = (v12 + 24) & 0xFF8;
    v15 = AppleBCMWLANCommander::runIOVarSet(v13, a2, v18, 0, 0);
    v16 = v15;
    if (a4 < 1)
    {
      break;
    }

    v10 += v12;
    v11 &= 0x7FFDu;
  }

  while (!v15);
  IOFreeData();
  return v16;
}

uint64_t AppleBCMWLANCore::queryPlatcfgCommandVersion(AppleBCMWLANCore *this, unsigned __int16 *a2)
{
  memset(v9, 170, sizeof(v9));
  v4 = IOMallocZeroData();
  v5 = IOMallocZeroData();
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v7 = 3758097085;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::queryPlatcfgCommandVersion(this);
        }
      }

      goto LABEL_18;
    }

    *v4 = 98304;
    *(v4 + 4) = 0x100040000;
    v9[2] = v4;
    v9[3] = 12;
    v9[0] = v5;
    v9[1] = 0x40000000400;
    if (AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "platcfg", &v9[2], v9, 0))
    {
      AppleBCMWLANCore::queryPlatcfgCommandVersion(this);
    }

    else
    {
      if (*(v6 + 6) > 7u)
      {
        *a2 = *(v6 + 12);
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::queryPlatcfgCommandVersion(this);
          }
        }

        v7 = 0;
        goto LABEL_9;
      }

      AppleBCMWLANCore::queryPlatcfgCommandVersion(this);
    }

    v7 = v10;
LABEL_9:
    IOFreeData();
LABEL_18:
    IOFreeData();
    return v7;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::queryPlatcfgCommandVersion(this);
    }
  }

  v7 = 3758097085;
  if (v6)
  {
    goto LABEL_18;
  }

  return v7;
}

uint64_t AppleBCMWLANCore::retrievePlatcfgStatus(AppleBCMWLANCore *this)
{
  memset(v13, 170, sizeof(v13));
  v2 = IOMallocZeroData();
  v3 = IOMallocZeroData();
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v9 = 3758097085;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::retrievePlatcfgStatus(this);
        }
      }

      goto LABEL_37;
    }

    *v2 = 98304;
    *(v2 + 4) = 0x100040002;
    v13[2] = v2;
    v13[3] = 12;
    v13[0] = v3;
    v13[1] = 0x40000000400;
    if (AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "platcfg", &v13[2], v13, 0))
    {
      AppleBCMWLANCore::retrievePlatcfgStatus(this);
    }

    else
    {
      v5 = *(v4 + 6);
      if (v5 <= 0xB)
      {
        AppleBCMWLANCore::retrievePlatcfgStatus(this);
      }

      else
      {
        v6 = *(v4 + 12);
        if ((v6 - 3) <= 0xFDu)
        {
          AppleBCMWLANCore::retrievePlatcfgStatus(this);
        }

        else
        {
          v7 = (8 * v6 + 12) & 0xFC;
          v8 = (*(*this + 1952))(this);
          if (v5 >= v7)
          {
            if (v8)
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::retrievePlatcfgStatus(this);
              }
            }

            if (*(v4 + 16))
            {
              v9 = 3758097084;
            }

            else
            {
              v9 = 0;
            }

            if (*(v4 + 12))
            {
              v10 = 0;
              v11 = v4 + 20;
              do
              {
                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::retrievePlatcfgStatus(this);
                  }
                }

                if (*(v11 + 4))
                {
                  v9 = 3758097084;
                }

                else
                {
                  v9 = v9;
                }

                v11 += 8;
                ++v10;
              }

              while (v10 < *(v4 + 12));
            }

            goto LABEL_36;
          }

          AppleBCMWLANCore::retrievePlatcfgStatus(v8 == 0, this);
        }
      }
    }

    v9 = v14;
LABEL_36:
    IOFreeData();
LABEL_37:
    IOFreeData();
    return v9;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::retrievePlatcfgStatus(this);
    }
  }

  v9 = 3758097085;
  if (v4)
  {
    goto LABEL_37;
  }

  return v9;
}

uint64_t AppleBCMWLANCore::retrievePlatcfgBlobVersion(AppleBCMWLANCore *this)
{
  memset(v25, 170, sizeof(v25));
  v2 = IOMallocZeroData();
  v3 = IOMallocZeroData();
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      *v2 = 98304;
      *(v2 + 4) = 0x100040005;
      v25[2] = v2;
      v25[3] = 12;
      v25[0] = v3;
      v25[1] = 0x40000000400;
      if (AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "platcfg", &v25[2], v25, 0))
      {
        AppleBCMWLANCore::retrievePlatcfgBlobVersion(this);
      }

      else
      {
        v5 = *(v4 + 6);
        if (v5 <= 0xD)
        {
          AppleBCMWLANCore::retrievePlatcfgBlobVersion(this);
        }

        else
        {
          v6 = *(v4 + 14);
          if ((v6 - 3) <= 0xFDu)
          {
            AppleBCMWLANCore::retrievePlatcfgBlobVersion(this);
          }

          else
          {
            if (v5 >= ((4 * v6 + 8) & 0xFCu))
            {
              v24 = v4;
              v7 = 0;
              v8 = v5 - 8;
              v9 = v4 + 16;
              while (1)
              {
                v10 = v8 - 4;
                if (v8 - 4 < *(v9 + 2))
                {
                  break;
                }

                if (*v9 == 3)
                {
                  v11 = (*(*this + 1952))(this);
                  if (v10 <= 4)
                  {
                    AppleBCMWLANCore::retrievePlatcfgBlobVersion(v11 == 0, this);
LABEL_47:
                    v20 = v26;
                    goto LABEL_48;
                  }

                  if (v11)
                  {
                    (*(*this + 1952))(this);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANCore::retrievePlatcfgBlobVersion(this);
                    }
                  }

                  if (*(v9 + 6))
                  {
                    v12 = v8 - 8;
                    if (v8 - 8 >= 5)
                    {
                      v13 = (v9 + 8);
                      v14 = 1;
                      while (1)
                      {
                        v15 = v12 - 4;
                        v16 = v13[1];
                        if (v15 < v16)
                        {
                          break;
                        }

                        v17 = *v13;
                        *(v13 + v16 + 3) = 0;
                        v18 = (*(*this + 1952))(this);
                        if (v17 == 1)
                        {
                          if (v18)
                          {
                            (*(*this + 1952))(this);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::retrievePlatcfgBlobVersion(this);
                            }
                          }
                        }

                        else if (v17)
                        {
                          if (v18)
                          {
                            (*(*this + 1952))(this);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANCore::retrievePlatcfgBlobVersion(this);
                            }
                          }
                        }

                        else if (v18)
                        {
                          (*(*this + 1952))(this);
                          if (CCLogStream::shouldLog())
                          {
                            AppleBCMWLANCore::retrievePlatcfgBlobVersion(this);
                          }
                        }

                        if (v14 < *(v9 + 6))
                        {
                          v19 = v13[1];
                          v12 = v15 - v19;
                          v13 = (v13 + v19 + 4);
                          ++v14;
                          if (v15 - v19 > 4)
                          {
                            continue;
                          }
                        }

                        goto LABEL_35;
                      }

                      AppleBCMWLANCore::retrievePlatcfgBlobVersion(this);
                      goto LABEL_47;
                    }
                  }
                }

                else if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::retrievePlatcfgBlobVersion(this);
                  }
                }

LABEL_35:
                v20 = 0;
                if (++v7 < *(v24 + 14))
                {
                  v21 = *(v9 + 2);
                  v8 = v10 - v21;
                  v9 += v21 + 4;
                  if (v10 - v21 > 4)
                  {
                    continue;
                  }
                }

                goto LABEL_48;
              }

              AppleBCMWLANCore::retrievePlatcfgBlobVersion(this);
              v20 = v26;
LABEL_48:
              IOFreeData();
              goto LABEL_49;
            }

            AppleBCMWLANCore::retrievePlatcfgBlobVersion(this);
          }
        }
      }

      v20 = v26;
      IOFreeData();
    }

    else
    {
      v20 = 3758097085;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::retrievePlatcfgBlobVersion(this);
        }
      }
    }

LABEL_49:
    IOFreeData();
    return v20;
  }

  if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
  {
    v20 = 3758097085;
    v23 = (*(*this + 1952))(this);
    CCLogStream::logAlert(v23, "[dk] %s@%d:platcfg cmd alloc fail\n", "retrievePlatcfgBlobVersion", 7632);
  }

  else
  {
    v20 = 3758097085;
  }

  if (v4)
  {
    goto LABEL_49;
  }

  return v20;
}

uint64_t AppleBCMWLANCore::retrievePlatcfgXTLVDumpData(AppleBCMWLANCore *this)
{
  memset(v18, 170, sizeof(v18));
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *__dst = 0u;
  v23 = 0u;
  *__str = 0u;
  v21 = 0u;
  v2 = IOMallocZeroData();
  v3 = IOMallocZeroData();
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v14 = 3758097085;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::retrievePlatcfgXTLVDumpData(this);
        }
      }

      goto LABEL_34;
    }

    *v2 = 98304;
    *(v2 + 4) = 0x100040006;
    v18[2] = v2;
    v18[3] = 12;
    v18[0] = v3;
    v18[1] = 0x7D0000007D0;
    if (AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "platcfg", &v18[2], v18, 0))
    {
      AppleBCMWLANCore::retrievePlatcfgXTLVDumpData(this);
    }

    else
    {
      v5 = *(v4 + 6);
      if (v5 <= 7)
      {
        AppleBCMWLANCore::retrievePlatcfgXTLVDumpData(this);
      }

      else
      {
        if (*(v4 + 14) - 3 > 0xFFFFFFFD)
        {
          v6 = v5 - 8;
          if (v6 >= 5)
          {
            v7 = 0;
            v8 = (v4 + 16);
            while (1)
            {
              v9 = v6 - 4;
              v10 = v8[1];
              if (v9 < v10)
              {
                AppleBCMWLANCore::retrievePlatcfgXTLVDumpData(this);
                goto LABEL_39;
              }

              v11 = *v8;
              if (v11 >= 0x29)
              {
                AppleBCMWLANCore::retrievePlatcfgXTLVDumpData(this);
                goto LABEL_39;
              }

              if (v11 == 40)
              {
                if (!*(v8 + 4) || 12 * *(v8 + 4) + 4 > v10)
                {
                  AppleBCMWLANCore::retrievePlatcfgXTLVDumpData(this);
                  goto LABEL_39;
                }

                v12 = 0;
                v13 = (v8 + 9);
                do
                {
                  v28 = 0u;
                  v29 = 0u;
                  v26 = 0u;
                  v27 = 0u;
                  v24 = 0u;
                  v25 = 0u;
                  *__dst = 0u;
                  v23 = 0u;
                  snprintf(__str, 0x20uLL, "%d ", *(v13 - 1));
                  strlcat(__dst, __str, 0x80uLL);
                  snprintf(__str, 0x20uLL, "%d ", *v13);
                  strlcat(__dst, __str, 0x80uLL);
                  if ((*(*this + 1952))(this))
                  {
                    (*(*this + 1952))(this);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANCore::retrievePlatcfgXTLVDumpData(this);
                    }
                  }

                  ++v12;
                  v13 += 6;
                }

                while (v12 < *(v8 + 4));
              }

              else if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::retrievePlatcfgXTLVDumpData(this);
                }
              }

              v14 = 0;
              if (++v7 < *(v4 + 14))
              {
                v15 = v8[1];
                v6 = v9 - v15;
                v8 = (v8 + v15 + 4);
                if (v9 - v15 > 4)
                {
                  continue;
                }
              }

              goto LABEL_33;
            }
          }

          v14 = 0;
          goto LABEL_33;
        }

        AppleBCMWLANCore::retrievePlatcfgXTLVDumpData(this);
      }
    }

LABEL_39:
    v14 = v19;
LABEL_33:
    IOFreeData();
    goto LABEL_34;
  }

  v14 = 3758097085;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v17 = (*(*this + 1952))(this);
      CCLogStream::logAlert(v17, "[dk] %s@%d:platcfg cmd alloc fail\n", "retrievePlatcfgXTLVDumpData", 7741);
      if (!v4)
      {
        return v14;
      }

      goto LABEL_34;
    }
  }

  if (v4)
  {
LABEL_34:
    IOFreeData();
  }

  return v14;
}

uint64_t AppleBCMWLANCore::retrieveRegTableStatus(AppleBCMWLANCore *this)
{
  v6 = -1;
  v5[0] = &v6;
  v5[1] = 0x400040004;
  v2 = AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "clmload_status", &kNoTxPayload, v5, 0);
  if (v2)
  {
    v3 = v2;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::retrieveRegTableStatus(this);
      }
    }
  }

  else if (v6)
  {
    return v6 | 0xE3FF8C00;
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANCore::retrieveTxCapTableStatus(AppleBCMWLANCore *this)
{
  v6 = -1;
  v5[0] = &v6;
  v5[1] = 0x400040004;
  v2 = AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "txcapload_status", &kNoTxPayload, v5, 0);
  if (v2)
  {
    v3 = v2;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::retrieveTxCapTableStatus(this);
      }
    }
  }

  else if (v6)
  {
    return v6 | 0xE3FF8C00;
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANCore::retrieveCalMSFStatus(IOService *this, int a2)
{
  v26 = -1;
  v25[0] = &v26;
  v25[1] = 0x400040004;
  v4 = AppleBCMWLANCommander::runIOVarGet(this[1].OSObject::OSObjectInterface::__vftable[338].init, "calload_status", &kNoTxPayload, v25, 0);
  v5 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  if (v4)
  {
    if (v5)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::retrieveCalMSFStatus(this);
      }
    }

    return v4;
  }

  if (v5)
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::retrieveCalMSFStatus(this);
    }
  }

  *__str = 0xAAAAAAAAAAAAAAAALL;
  snprintf(__str, 8uLL, "%d", v26);
  v6 = OSString::withCString(__str);
  setPropertyHelper(this, "calload_status", v6);
  if (v6)
  {
    (v6->release)(v6);
  }

  v7 = v26;
  if (v26)
  {
    v4 = v26 - 469791744;
  }

  else
  {
    v4 = 0;
  }

  v24 = 1;
  IOParseBootArgNumber("wlan.debug.checkmsf", &v24, 4);
  v23 = 0;
  if (!IOParseBootArgNumber("wlan.factory", &v23, 8))
  {
    if (!a2)
    {
      goto LABEL_16;
    }

LABEL_19:
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::retrieveCalMSFStatus(this);
      }
    }

    v24 = 0;
    goto LABEL_23;
  }

  if (v23 & 8) != 0 || (a2)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (!v24)
  {
LABEL_23:
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::retrieveCalMSFStatus(this);
      }
    }
  }

  if (v24 && !v7)
  {
    v22 = 0;
    if (checkAcquireDataPropertyNotEmpty(this[1].OSObject::OSObjectInterface::__vftable[337].init, "wifi-module-sn", &v22, 0, 1uLL, "IOService"))
    {
      BytesNoCopy = OSData::getBytesNoCopy(v22);
      v9 = BytesNoCopy[2];
      v28 = *BytesNoCopy;
      v29 = v9;
      init = this[1].OSObject::OSObjectInterface::__vftable[338].init;
      v20 = &v28;
      v21 = 6;
      v11 = AppleBCMWLANCommander::runIOVarSet(init, "calload_chkver", &v20, 0, 0);
      v4 = v11;
      if (v11 != -469794537 && v11)
      {
        v12 = (v28 >> 4) + 55;
        if (v28 < 0xA0u)
        {
          LOBYTE(v12) = (v28 >> 4) | 0x30;
        }

        v27[0] = v12;
        v13 = (v28 & 0xF) + 55;
        if ((v28 & 0xFu) < 0xA)
        {
          v13 = v28 & 0xF | 0x30;
        }

        v27[1] = v13;
        v14 = (BYTE1(v28) >> 4) + 55;
        if (BYTE1(v28) < 0xA0u)
        {
          LOBYTE(v14) = (BYTE1(v28) >> 4) | 0x30;
        }

        v27[2] = v14;
        v15 = (BYTE1(v28) & 0xF) + 55;
        if ((BYTE1(v28) & 0xFu) < 0xA)
        {
          v15 = BYTE1(v28) & 0xF | 0x30;
        }

        v27[3] = v15;
        v16 = (BYTE2(v28) >> 4) + 55;
        if (BYTE2(v28) < 0xA0u)
        {
          LOBYTE(v16) = (BYTE2(v28) >> 4) | 0x30;
        }

        v27[4] = v16;
        v17 = (BYTE2(v28) & 0xF) + 55;
        if ((BYTE2(v28) & 0xFu) < 0xA)
        {
          v17 = BYTE2(v28) & 0xF | 0x30;
        }

        v27[5] = v17;
        v18 = this[1].OSObject::OSObjectInterface::__vftable[338].init;
        v20 = v27;
        v21 = 6;
        v4 = AppleBCMWLANCommander::runIOVarSet(v18, "calload_chkver", &v20, 0, 0);
        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::retrieveCalMSFStatus(this);
          }
        }

        if (v4 == -469794559)
        {
          AppleBCMWLANCore::setBootUnrecoverable(this, 3825175653);
        }
      }

      if (v22)
      {
        (v22->release)(v22);
      }
    }

    else
    {
      return 3825175654;
    }
  }

  return v4;
}

uint64_t *AppleBCMWLANCore::removeFirmwareLoader(uint64_t *this)
{
  if (*(this[9] + 14272))
  {
    v1 = this;
    if ((*(*this + 1952))(this))
    {
      (*(*v1 + 1952))(v1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::removeFirmwareLoader(v1);
      }
    }

    IOService::Terminate(*(v1[9] + 14272), 0, 0);
    this = *(v1[9] + 14272);
    if (this)
    {
      this = (*(*this + 16))(this);
      *(v1[9] + 14272) = 0;
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::logRegTableVersion(IOService *this)
{
  v2 = IOMallocZeroData();
  if (!v2)
  {
    return 3758097085;
  }

  v3 = v2;
  v8[0] = v2;
  v8[1] = 0x200000A0200;
  v4 = AppleBCMWLANCommander::runIOVarGet(this[1].OSObject::OSObjectInterface::__vftable[338].init, "clmver", &kNoTxPayload, v8, 0);
  v5 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  if (v4)
  {
    if (v5)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::logRegTableVersion(this);
      }
    }
  }

  else
  {
    if (v5)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::logRegTableVersion(this);
      }
    }

    v6 = OSString::withCString(v3);
    setPropertyHelper(this, "CLMVersion", v6);
    if (v6)
    {
      (v6->release)(v6);
    }
  }

  IOFreeData();
  return v4;
}

uint64_t AppleBCMWLANCore::logTxCapTableVersion(IOService *this)
{
  v2 = IOMallocZeroData();
  if (!v2)
  {
    return 3758097085;
  }

  v3 = v2;
  v8[0] = v2;
  v8[1] = 0x200000A0200;
  v4 = AppleBCMWLANCommander::runIOVarGet(this[1].OSObject::OSObjectInterface::__vftable[338].init, "txcapver", &kNoTxPayload, v8, 0);
  v5 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  if (v4)
  {
    if (v5)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::logTxCapTableVersion(this);
      }
    }
  }

  else
  {
    if (v5)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::logTxCapTableVersion(this);
      }
    }

    v6 = OSString::withCString(v3);
    setPropertyHelper(this, "TxCapVersion", v6);
    if (v6)
    {
      (v6->release)(v6);
    }
  }

  IOFreeData();
  return v4;
}

uint64_t AppleBCMWLANCore::outputRegTable(AppleBCMWLANCore *a1, IO80211Buffer *this, uint64_t a3)
{
  v3 = *(a3 + 88);
  if (!v3)
  {
    return 0;
  }

  BytesNoCopy = IO80211Buffer::getBytesNoCopy(this, *(a3 + 80), *(a3 + 88));
  AppleBCMWLANCore::downloadBlob(a1, "clmload", BytesNoCopy, v3);
  result = AppleBCMWLANCore::retrieveRegTableStatus(a1);
  if (!result)
  {

    return AppleBCMWLANCore::logRegTableVersion(a1);
  }

  return result;
}

uint64_t AppleBCMWLANCore::outputTxCapTable(AppleBCMWLANCore *a1, IO80211Buffer *this, uint64_t a3)
{
  v3 = *(a3 + 104);
  if (!v3)
  {
    return 0;
  }

  BytesNoCopy = IO80211Buffer::getBytesNoCopy(this, *(a3 + 96), *(a3 + 104));
  AppleBCMWLANCore::downloadBlob(a1, "txcapload", BytesNoCopy, v3);
  result = AppleBCMWLANCore::retrieveTxCapTableStatus(a1);
  if (!result)
  {

    return AppleBCMWLANCore::logTxCapTableVersion(a1);
  }

  return result;
}

uint64_t AppleBCMWLANCore::outputPlatcfg(AppleBCMWLANCore *a1, IO80211Buffer *this, uint64_t a3)
{
  v4 = *(a3 + 72);
  if (v4)
  {
    BytesNoCopy = IO80211Buffer::getBytesNoCopy(this, *(a3 + 64), *(a3 + 72));
    result = AppleBCMWLANCore::downloadBlobIOVBatch(a1, "platcfg", BytesNoCopy, v4);
    if (!result)
    {
      result = AppleBCMWLANCore::retrievePlatcfgStatus(a1);
      if (!result)
      {
        v7 = 0;
        AppleBCMWLANCore::queryPlatcfgCommandVersion(a1, &v7);
        if (v7 >= 2u)
        {
          AppleBCMWLANCore::retrievePlatcfgBlobVersion(a1);
          AppleBCMWLANCore::retrievePlatcfgXTLVDumpData(a1);
        }

        return 0;
      }
    }
  }

  else
  {
    result = (*(*a1 + 1952))(a1, this);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANCore::outputPlatcfg(a1);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::downloadCal(AppleBCMWLANCore *this, OSData *a2, int a3)
{
  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (OSData::getLength(a2))
  {
    v7 = 0;
    v8 = 1;
    while (!BytesNoCopy[v7])
    {
      v7 = v8;
      if (OSData::getLength(a2) <= v8++)
      {
        goto LABEL_5;
      }
    }

    v11 = OSData::getBytesNoCopy(a2);
    Length = OSData::getLength(a2);
    result = AppleBCMWLANCore::downloadBlob(this, "calload", v11, Length);
    if (!result || result == -469794559)
    {

      return AppleBCMWLANCore::retrieveCalMSFStatus(this, a3);
    }
  }

  else
  {
LABEL_5:
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANCore::downloadCal(this);
        return 0;
      }
    }
  }

  return result;
}

BOOL AppleBCMWLANCore::isFdrCal(AppleBCMWLANCore *this)
{
  v3 = 0;
  if (!acquireProperty<OSBoolean>(*(*(this + 9) + 5392), "wlan.is.fdr.cal", &v3, 1uLL, "IOService"))
  {
    return 0;
  }

  v1 = v3 == kOSBooleanTrue;
  if (v3)
  {
    (v3->release)();
  }

  return v1;
}

uint64_t AppleBCMWLANCore::outputWiFiCal(AppleBCMWLANCore *this)
{
  v14 = -1431655766;
  if (IOParseBootArgNumber("wlan.debug.nomsf", &v14, 4))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::outputWiFiCal(this);
      }
    }

    return 0;
  }

  v13 = 0;
  isFdrCal = AppleBCMWLANCore::isFdrCal(this);
  v4 = *(*(this + 9) + 5392);
  if (isFdrCal)
  {
    if (checkAcquireDataPropertyNotEmpty(v4, "wifi-calibration-fdr", &v13, 0, 1uLL, "IOService"))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::outputWiFiCal(this);
        }
      }

LABEL_15:
      v7 = v13;
      v8 = this;
      v9 = 0;
LABEL_16:
      v2 = AppleBCMWLANCore::downloadCal(v8, v7, v9);
      goto LABEL_29;
    }

    v10 = checkAcquireDataPropertyNotEmpty(*(*(this + 9) + 5392), "wifi-calibration-gen", &v13, 0, 1uLL, "IOService");
    v11 = (*(*this + 1952))(this);
    if (v10)
    {
      if (v11)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::outputWiFiCal(this);
        }
      }

      v7 = v13;
      v8 = this;
      v9 = 1;
      goto LABEL_16;
    }

    if (v11)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::outputWiFiCal(this);
      }
    }
  }

  else
  {
    v5 = checkAcquireDataPropertyNotEmpty(v4, "wifi-calibration-msf", &v13, 0, 1uLL, "IOService");
    v6 = (*(*this + 1952))(this);
    if (v5)
    {
      if (v6)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::outputWiFiCal(this);
        }
      }

      goto LABEL_15;
    }

    if (v6)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::outputWiFiCal(this);
      }
    }
  }

  v2 = 0;
LABEL_29:
  if (v13)
  {
    (v13->release)(v13);
  }

  return v2;
}

uint64_t AppleBCMWLANCore::setupTraceLogCheckers(AppleBCMWLANCore *this)
{
  v2 = *(this + 9);
  if (*(v2 + 1000))
  {
    v3 = *(v2 + 1008);
    IOFreeData();
    *(*(this + 9) + 1000) = 0;
    *(*(this + 9) + 1008) = 0;
    v2 = *(this + 9);
  }

  if (*(v2 + 984))
  {
    v4 = *(v2 + 992);
    IOFreeData();
    *(*(this + 9) + 984) = 0;
    *(*(this + 9) + 992) = 0;
    v2 = *(this + 9);
  }

  *(v2 + 1008) = *(v2 + 972);
  v5 = *(*(this + 9) + 1008);
  *(*(this + 9) + 1000) = IOMallocZeroData();
  v6 = *(this + 9);
  if (!*(v6 + 1000))
  {
    if (AppleBCMWLANCore::setupTraceLogCheckers(this))
    {
      return v13;
    }

    v11 = 8172;
LABEL_17:
    v12 = (*(*this + 1952))(this);
    CCLogStream::logAlert(v12, "[dk] %s@%d:Failed to allocate memory\n", "setupTraceLogCheckers", v11);
    return 3758097084;
  }

  *(v6 + 992) = 2 * *(v6 + 972);
  v7 = *(*(this + 9) + 992);
  *(*(this + 9) + 984) = IOMallocZeroData();
  v8 = *(this + 9);
  if (!*(v8 + 984))
  {
    if (AppleBCMWLANCore::setupTraceLogCheckers(this))
    {
      return v13;
    }

    v11 = 8176;
    goto LABEL_17;
  }

  if (*(v8 + 972))
  {
    v9 = 0;
    do
    {
      *(*(v8 + 1000) + v9++) = 1;
      v8 = *(this + 9);
    }

    while (v9 < *(v8 + 972));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::getMaxSupportedEventLogSets(AppleBCMWLANCore *this)
{
  *(*(this + 9) + 972) = 0;
  v2 = *(this + 9);
  v6[0] = v2 + 972;
  v6[1] = 0x400040004;
  v3 = AppleBCMWLANCommander::runIOVarGet(*(v2 + 5408), "event_log_max_sets", &kNoTxPayload, v6, 0);
  v4 = v3;
  if (v3)
  {
    if (v3 == -469794537)
    {
      v4 = 0;
      *(*(this + 9) + 972) = 8;
    }

    else if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getMaxSupportedEventLogSets(this);
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::set_mpc_state(AppleBCMWLANCore *this, unsigned int a2, unsigned int *a3)
{
  v14 = -1431655766;
  v13[0] = &v14;
  v13[1] = 0x400040004;
  v6 = *(*(this + 9) + 5408);
  v11 = &v14;
  v12 = 4;
  v7 = AppleBCMWLANCommander::runIOVarGet(v6, "mpc", &v11, v13, 0);
  if (v7)
  {
    v8 = v7;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::set_mpc_state(this);
      }
    }
  }

  else
  {
    if (a3)
    {
      *a3 = v14;
    }

    v14 = a2;
    v9 = *(*(this + 9) + 5408);
    v11 = &v14;
    v12 = 4;
    v8 = AppleBCMWLANCommander::runIOVarSet(v9, "mpc", &v11, 0, 0);
    if (v8)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::set_mpc_state(this);
        }
      }
    }
  }

  return v8;
}

uint64_t AppleBCMWLANCore::restore_mpc_state(AppleBCMWLANCore *this, int a2)
{
  v7 = a2;
  v3 = *(*(this + 9) + 5408);
  v6[0] = &v7;
  v6[1] = 4;
  v4 = AppleBCMWLANCommander::runIOVarSet(v3, "mpc", v6, 0, 0);
  if (v4)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::restore_mpc_state(this);
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::updateFWAPIVerFromHW(AppleBCMWLANCore *this)
{
  v7 = 1;
  v6[0] = &v7;
  v6[1] = 0x400040004;
  v2 = AppleBCMWLANCommander::runIOCtlGet(*(*(this + 9) + 5408), 1, &kNoTxPayload, v6, 0);
  v3 = (*(*this + 1952))(this);
  if (v2)
  {
    if (v3)
    {
      (*(*this + 1952))(this);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateFWAPIVerFromHW(this);
      }
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    if (v3)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateFWAPIVerFromHW(this);
      }
    }

    v4 = v7;
  }

  *(*(this + 9) + 1020) = v4;
  return v2;
}

uint64_t AppleBCMWLANCore::configureDefaultEvents(AppleBCMWLANCore *this)
{
  *(*(this + 9) + 6588) = 0;
  *(*(this + 9) + 6584) = 0;
  *(*(this + 9) + 6592) = 0;
  v2 = *(this + 9);
  *(v2 + 1120) = 0;
  *(v2 + 1112) = 0;
  *(v2 + 1096) = 0u;
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 34))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 27))
  {
    AppleBCMWLANCore::addEventBit(this);
    if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
    {
      if ((*(*(this + 9) + 18484) & 1) == 0)
      {
        AppleBCMWLANCore::addEventBit(this);
      }
    }
  }

  AppleBCMWLANCore::addEventBit(this);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 34))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  AppleBCMWLANCore::addEventBit(this);
  v3 = (*(**(*(this + 9) + 5392) + 368))(*(*(this + 9) + 5392));
  if ((v3 - 4377) <= 0x16 && ((1 << (v3 - 25)) & 0x400C03) != 0)
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 34))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 48) && (*(*(this + 9) + 17804) & 2) == 0)
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 48) && (*(*(this + 9) + 17804) & 2) == 0 || AppleBCMWLANCore::featureFlagIsBitSet(this, 12))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 59))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::configureLqmRssiUpdates(this, 2000, kDefaultLqmRssiLevels);
  AppleBCMWLANCore::configureLqmChanQUpdates(this, 5000, 2u, kDefaultLqmCcaBounds);
  AppleBCMWLANCore::configureWeightAvgLQMUpdates(this, &kDefaultWeightAvgLQMParams);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 46))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  v5 = (*(**(*(this + 9) + 5392) + 368))(*(*(this + 9) + 5392)) - 4357;
  if (v5 <= 0x2A && ((1 << v5) & 0x400C0300001) != 0)
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 34))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 34) && AppleBCMWLANCore::featureFlagIsBitSet(this, 82))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 34) && AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 79))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 92))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 95))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 93))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 101))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 97))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 119))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 115))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  v6 = AppleBCMWLANCore::writeEventBitField(this);
  AppleBCMWLANCore::resetExtendedEventBit(this, 0xA5u);
  AppleBCMWLANCore::updateCurrentFWCountryCode(this);
  return v6;
}

uint64_t AppleBCMWLANCore::updateHTAndVHTCapBasedOnHWSupport(AppleBCMWLANCore *this)
{
  v2 = *(this + 9);
  *(v2 + 1036) = default_ht_ie;
  *(v2 + 1048) = *(&default_ht_ie + 12);
  v3 = *(this + 9);
  *(v3 + 1064) = 0xFFFF000000000CBFLL;
  *(v3 + 1070) = 0xFFFF0000FFFFLL;
  SupportedPhyModeFromHW = AppleBCMWLANCore::getSupportedPhyModeFromHW(this);
  if (SupportedPhyModeFromHW <= 0xA || SupportedPhyModeFromHW == 15)
  {
    v6 = 16;
  }

  else
  {
    v6 = 128;
  }

  *(*(this + 9) + 1024) = v6;
  if (*(*(this + 9) + 36080))
  {
    v7 = 1;
LABEL_11:
    v9 = 0;
    v10 = (v2 + 1041);
    v11 = v7;
    do
    {
      *v10 = -1;
      if (*(*(this + 9) + 1024) >= 128)
      {
        v12 = *(v3 + 1070) & ~(3 << v9) | (2 << v9);
        *(v3 + 1070) = *(v3 + 1070) & ~(3 << v9) | (2 << v9);
        *(v3 + 1074) = v12;
      }

      v9 += 2;
      ++v10;
      --v11;
    }

    while (v11);
    goto LABEL_15;
  }

  HWCap = AppleBCMWLANCore::utilGetHWCap(this, "rxstreams", &kNoTxPayload);
  v7 = HWCap;
  if (HWCap > 4)
  {
    return AppleBCMWLANCore::updateHTAndVHTCapBasedOnHWSupport(this);
  }

  if (HWCap)
  {
    goto LABEL_11;
  }

LABEL_15:
  BWCapFromHW = AppleBCMWLANCore::getBWCapFromHW(this);
  *(v2 + 1038) |= BWCapFromHW & 2;
  if ((BWCapFromHW & 2) != 0)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v15 = AppleBCMWLANCore::utilGetHWCap(this, "ampdu_rx_density", &kNoTxPayload);
  *(v2 + 1040) = AppleBCMWLANCore::utilGetHWCap(this, "ampdu_rx_factor", &kNoTxPayload) | (4 * v15);
  v16 = (v3 + 1066);
  if ((BWCapFromHW & 4) != 0)
  {
    v17 = 4;
  }

  else
  {
    v17 = v14;
  }

  *v16 = *(v3 + 1066) & 0xC | ((BWCapFromHW & 8) >> 1) | 0x3800002;
  if ((BWCapFromHW & 8) != 0)
  {
    v18 = 5;
  }

  else
  {
    v18 = v17;
  }

  *(*(this + 9) + 1032) = v18;
  result = AppleBCMWLANCore::utilGetHWCap(this, "sgi_rx", &kNoTxPayload);
  *(v2 + 1038) |= 32 * (result & 3);
  v20 = *v16 | (8 * result) & 0x20;
  *v16 = v20;
  if (*(*(this + 9) + 1020) >= 2)
  {
    result = AppleBCMWLANCore::utilGetHWCap(this, "ldpc_cap", &kNoTxPayload);
    v22 = result != 0;
    v20 = *v16;
    *(v2 + 1038) |= v22;
    v21 = 16 * v22;
  }

  else
  {
    v21 = 0;
  }

  *v16 = v20 | v21;
  return result;
}

uint64_t AppleBCMWLANCore::configureTethering(AppleBCMWLANCore *this)
{
  if (AppleBCMWLANConfigManager::isTetheringSupport(*(*(this + 9) + 5464)))
  {
    AppleBCMWLANCore::featureFlagSetBit(this, 16);
  }

  else
  {
    AppleBCMWLANCore::featureFlagClearBit(this, 16);
  }

  if (AppleBCMWLANCore::shouldSupportTethering(this))
  {
    v8 = 1;
    v2 = *(*(this + 9) + 5408);
    v6 = &v8;
    v7 = 4;
    if (AppleBCMWLANCommander::runIOVarSet(v2, "apsta", &v6, 0, 0))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureTethering(this);
        }
      }
    }

    else
    {
      v9 = 0;
      v6 = &v9;
      v7 = 0x800080008;
      if (AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "apsta", &kNoTxPayload, &v6, 0))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureTethering(this);
          }
        }
      }

      v8 = v9;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureTethering(this);
        }
      }
    }

    IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(this, 11);
    v4 = (*(*this + 1952))(this);
    if (IsBitSet)
    {
      if (v4)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureTethering(this);
        }
      }

      CCFaultReporter::reportFault(*(*(this + 9) + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x9D7Eu, "configureTethering", 0, -469792509, 0);
    }

    else if (v4)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureTethering(this);
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::configureDualPowerMode(AppleBCMWLANCore *this)
{
  v2 = *(*(this + 9) + 5464);
  if (v2 && AppleBCMWLANConfigManager::isDualPowerModeSupported(v2))
  {
    AppleBCMWLANCore::featureFlagSetBit(this, 40);
    AppleBCMWLANCore::configTxPowerCapControl(this);
    *(*(this + 9) + 19772) = -1;
    *(*(this + 9) + 19776) = -1;
    AppleBCMWLANCore::setTxPowerCapState(this);
    if (AppleBCMWLANCore::isFourRowPowerTableSupported(this))
    {
      AppleBCMWLANCore::setTxHighCapTimeout(this, 0);
      *(*(this + 9) + 19780) = 0;
    }

    else
    {
      AppleBCMWLANCore::setTxHighCapTimeout(this, 35);
      *(*(this + 9) + 19780) = 1;
    }
  }

  else
  {
    AppleBCMWLANCore::featureFlagClearBit(this, 40);
  }

  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::configureDualPowerMode(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::populateCountryList(AppleBCMWLANCore *this)
{
  bzero((*(this + 9) + 6760), 0x404uLL);
  v2 = IOMallocZeroData();
  if (!v2)
  {
    return 3758097085;
  }

  v3 = v2;
  *v2 = 1040;
  *(v2 + 12) = 0;
  v17[0] = v2;
  v17[1] = 1040;
  v16[0] = v2;
  v16[1] = 0x41000000410;
  v4 = (*(*this + 88))(this);
  if ((*(*v4 + 136))(v4))
  {
    v15[0] = this;
    v15[1] = AppleBCMWLANCore::handleGetCountryListAsyncCallBack;
    v15[2] = 0;
    v5 = *(*(this + 9) + 5408);
    v14 = 68157440;
    v6 = AppleBCMWLANCommander::sendIOCtlGet(v5, 261, v17, &v14, v15, 0);
  }

  else
  {
    v7 = AppleBCMWLANCommander::runIOCtlGet(*(*(this + 9) + 5408), 261, v17, v16, 0);
    if (v7)
    {
      v6 = v7;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::populateCountryList(this);
        }
      }
    }

    else
    {
      v8 = *(v3 + 12);
      if (v8 >= 0x100)
      {
        v9 = 256;
      }

      else
      {
        v9 = *(v3 + 12);
      }

      *(*(this + 9) + 6760) = v9;
      if (v8)
      {
        v10 = 0;
        v11 = (v3 + 16);
        do
        {
          v12 = *v11++;
          *(*(this + 9) + 4 * v10++ + 6764) = v12;
        }

        while (v8 > v10);
      }

      v6 = 0;
    }
  }

  IOFreeData();
  return v6;
}

uint64_t AppleBCMWLANCore::populate6ESupportedCountryList(AppleBCMWLANCore *this)
{
  bzero((*(this + 9) + 7788), 0x404uLL);
  v2 = IOMallocZeroData();
  if (!v2)
  {
    return 3758097085;
  }

  v3 = v2;
  *v2 = xmmword_1003ADB90;
  v16[0] = v2;
  v16[1] = 1040;
  v15[0] = v2;
  v15[1] = 0x41000000410;
  v4 = (*(*this + 88))(this);
  if ((*(*v4 + 136))(v4))
  {
    v14[0] = this;
    v14[1] = AppleBCMWLANCore::handleGet6ECountryListAsyncCallBack;
    v14[2] = 0;
    v5 = *(*(this + 9) + 5408);
    v13 = 68157440;
    v6 = AppleBCMWLANCommander::sendIOCtlGet(v5, 261, v16, &v13, v14, 0);
  }

  else
  {
    v7 = AppleBCMWLANCommander::runIOCtlGet(*(*(this + 9) + 5408), 261, v16, v15, 0);
    if (v7)
    {
      v6 = v7;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::populate6ESupportedCountryList(this);
        }
      }
    }

    else
    {
      v6 = *(v3 + 3);
      if (v6 >= 0x100)
      {
        v8 = 256;
      }

      else
      {
        v8 = *(v3 + 3);
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::populate6ESupportedCountryList(this);
        }
      }

      *(*(this + 9) + 7788) = v8;
      if (v6)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          *(*(this + 9) + 4 * v10 + 7792) = *(v3 + v9 + 4);
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v11 = (*(*this + 1952))(this);
              CCLogStream::logAlert(v11, "[dk] %s@%d:WiFiCC : Country %3d %s\n", "populate6ESupportedCountryList", 46748, v9, v3 + 4 * v9 + 16);
            }
          }

          v9 = ++v10;
        }

        while (v6 > v10);
        v6 = 0;
      }
    }
  }

  IOFreeData();
  return v6;
}

uint64_t AppleBCMWLANCore::handleCountryCodeChangeToRepopulateChannels(AppleBCMWLANCore *this)
{
  bzero(v7, 0x5FAuLL);
  if (strlcpy(v8, (*(this + 9) + 6744), 4uLL) > 3)
  {
    return 3758097097;
  }

  v9 = 380;
  v6[0] = this;
  v6[1] = AppleBCMWLANCore::handleGetChanSpecs;
  v6[2] = 0;
  v3 = *(*(this + 9) + 5408);
  v5[0] = v7;
  v5[1] = 1530;
  v4 = 99876868;
  return AppleBCMWLANCommander::sendIOVarGet(v3, "chanspecs", v5, &v4, v6, 0);
}

uint64_t AppleBCMWLANCore::configureDefaultCountryCode(unint64_t this)
{
  v2 = (this + 72);
  *(*(this + 72) + 6732) = 85;
  *(*(this + 72) + 6733) = 83;
  *(*(this + 72) + 6734) = 0;
  *(*(this + 72) + 6748) = 88;
  *(*(this + 72) + 6749) = 90;
  *(*(this + 72) + 6750) = 0;
  bzero((*(this + 72) + 19904), 0x2720uLL);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 29) && AppleBCMWLANConfigManager::getRegionInfo(*(*v2 + 5464)))
  {
    v3 = &dword_1003E82C0;
    v4 = 4;
    while (1)
    {
      RegionInfo = AppleBCMWLANConfigManager::getRegionInfo(*(*v2 + 5464));
      if (OSString::isEqualTo(RegionInfo, *(v3 - 1)))
      {
        break;
      }

      v3 += 4;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    *(*(this + 72) + 6740) = *v3;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureDefaultCountryCode();
      }
    }
  }

LABEL_10:
  if (IOParseBootArgString("wlan.restrictedccode", (*v2 + 6740), 3))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureDefaultCountryCode(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v2);
      }
    }
  }

  v6 = *v2;
  v17[0] = *v2 + 6732;
  v17[1] = 0x400040004;
  v7 = AppleBCMWLANCommander::runIOCtlGet(*(v6 + 5408), 83, &kNoTxPayload, v17, 0);
  if (v7)
  {
    v8 = v7;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureDefaultCountryCode(this);
      }
    }
  }

  else
  {
    *(*(this + 72) + 6735) = 0;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureDefaultCountryCode(this);
      }
    }

    if (AppleBCMWLANCore::featureFlagIsBitSet(this, 28))
    {
      v9 = *v2;
      p_isAutoCountryEnabled = (*v2 + 6732);
      v16 = 4;
      v10 = AppleBCMWLANCommander::runIOVarSet(*(v9 + 5408), "autocountry_default", &p_isAutoCountryEnabled, 0, 0);
      if (v10)
      {
        v8 = v10;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureDefaultCountryCode(this);
          }
        }
      }

      else if (AppleBCMWLANCore::isRestrictedCountry(this))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureDefaultCountryCode(this);
          }
        }

        return (*(*this + 544))(this);
      }

      else
      {
        isAutoCountryEnabled = AppleBCMWLANConfigManager::isAutoCountryEnabled(*(*v2 + 5464));
        p_isAutoCountryEnabled = &isAutoCountryEnabled;
        v16 = 4;
        if (AppleBCMWLANCommander::runIOVarSet(*(*v2 + 5408), "autocountry", &p_isAutoCountryEnabled, 0, 0) && (v12 = AppleBCMWLANCommander::runIOCtlSet(*(*v2 + 5408), 47, &p_isAutoCountryEnabled, 0, 0), v12))
        {
          v8 = v12;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configureDefaultCountryCode(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &isAutoCountryEnabled, v8);
            }
          }
        }

        else
        {
          isEnhancedLocaleEnabled = AppleBCMWLANConfigManager::isEnhancedLocaleEnabled(*(*v2 + 5464));
          p_isAutoCountryEnabled = &isEnhancedLocaleEnabled;
          v16 = 4;
          v8 = AppleBCMWLANCommander::runIOVarSet(*(*v2 + 5408), "ccode_pr_2g", &p_isAutoCountryEnabled, 0, 0);
          if (v8)
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configureDefaultCountryCode(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &isEnhancedLocaleEnabled, v8);
              }
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t *AppleBCMWLANCore::setTxProfileEnable(AppleBCMWLANCore *this, unsigned int *a2)
{
  memset(v9, 170, sizeof(v9));
  v7 = 327680;
  v8 = *a2;
  v4 = *(*(this + 9) + 5408);
  v6[0] = &v7;
  v6[1] = 9;
  result = AppleBCMWLANCommander::runIOVarSet(v4, "tx_profile", v6, 0, 0);
  if (!result)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setTxProfileEnable(this);
      }
    }

    return AppleBCMWLANCore::setL3CtrlTxProfile(this, *a2);
  }

  return result;
}

uint64_t AppleBCMWLANCore::enableObssMitigation(unint64_t this, uint64_t a2)
{
  v14 = -21846;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 393218;
  v9 = 1;
  v10 = a2;
  v11 = 1;
  v12 = 30;
  v4 = *(*(this + 72) + 5408);
  v7[0] = &v8;
  v7[1] = 10;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "obss_hw", v7, 0, 0);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::enableObssMitigation(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2, v5);
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::configureScans(AppleBCMWLANCore *this)
{
  v5 = 110;
  v2 = *(*(this + 9) + 5408);
  v4[0] = &v5;
  v4[1] = 4;
  if (AppleBCMWLANCommander::runIOVarSet(v2, "scan_passive_time", v4, 0, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureScans(this);
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::configureLinkLoss(AppleBCMWLANCore *this)
{
  v10 = 8;
  v2 = *(*(this + 9) + 5408);
  v8 = &v10;
  v9 = 4;
  if (AppleBCMWLANCommander::runIOVarSet(v2, "bcn_timeout", &v8, 0, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLinkLoss(this);
      }
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 28))
  {
    v7 = 1;
    v3 = *(*(this + 9) + 5408);
    v8 = &v7;
    v9 = 4;
    if (AppleBCMWLANCommander::runIOVarSet(v3, "bcn_to_dly", &v8, 0, 0))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureLinkLoss(this);
        }
      }
    }

    v4 = *(this + 9);
    if (*(v4 + 780) < 0x11u)
    {
      AppleBCMWLANCore::applyRoamingCandidateBoost(this, 1u, 0x32u);
    }

    else
    {
      if (AppleBCMWLANRoamAdapter::skipPscScansForRoamScans(*(v4 + 5568), 1))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureLinkLoss(this);
          }
        }
      }

      if (AppleBCMWLANRoamAdapter::rxSigSetRssiCompThreshold(*(*(this + 9) + 5568), *(*(this + 9) + 30076)))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureLinkLoss(this);
          }
        }
      }

      if (AppleBCMWLANRoamAdapter::rxSigSetRssiCompSmoothValues(*(*(this + 9) + 5568), kCompSteps, 0x40u))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureLinkLoss(this);
          }
        }
      }
    }
  }

  v7 = 20;
  v5 = *(*(this + 9) + 5408);
  v8 = &v7;
  v9 = 4;
  if (AppleBCMWLANCommander::runIOVarSet(v5, "recreate_bi_timeout", &v8, 0, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLinkLoss(this);
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::checkForRangingEnabled(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 48);
  if (result)
  {
    return (*(*(this + 9) + 17804) & 2) == 0;
  }

  return result;
}

uint64_t AppleBCMWLANCore::configurePowerSave(unint64_t this)
{
  v3 = (this + 72);
  v2 = *(this + 72);
  v30 = 1;
  v4 = *(v2 + 5408);
  v28 = &v30;
  v29 = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "pm2_md_sleep_ext", &v28, 0, 0);
  if (v5)
  {
    if (v5 == -469794537)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configurePowerSave(this);
        }
      }
    }

    else if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configurePowerSave(this);
      }
    }
  }

  v27 = 0;
  v6 = AppleBCMWLANConfigManager::hostWakePowerSaveEnabled(*(*v3 + 5464));
  v7 = 0;
  if (v6)
  {
    v7 = !IOParseBootArgNumber("wlan.feature.ps", &v27, 4);
    if (v27)
    {
      v7 = 1;
    }
  }

  *(*(this + 72) + 6724) = v7;
  v26 = 1;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configurePowerSave(this);
    }
  }

  v8 = *(*v3 + 5408);
  v28 = &v26;
  v29 = 4;
  v9 = AppleBCMWLANCommander::runIOVarSet(v8, "mpc", &v28, 0, 0);
  if (v9)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configurePowerSave(this);
      }
    }
  }

  else
  {
    v10 = *v3;
    if (*(*v3 + 6724))
    {
      if (*(v10 + 19836))
      {
        v25 = *(v10 + 19836);
        v11 = *(v10 + 5408);
        v28 = &v25;
        v29 = 4;
        v12 = AppleBCMWLANCommander::runIOVarSet(v11, "bcn_li_dtim", &v28, 0, 0);
        if (v12)
        {
          v13 = v12;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePowerSave(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v13);
            }
          }
        }
      }

      else
      {
        v25 = 1;
        *(v10 + 19832) = 1;
        v14 = *(*v3 + 5408);
        v28 = &v25;
        v29 = 4;
        v15 = AppleBCMWLANCommander::runIOVarSet(v14, "bcn_li_bcn", &v28, 0, 0);
        if (v15)
        {
          v16 = v15;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePowerSave(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v25, v16);
            }
          }
        }
      }

      v25 = 10;
      v17 = *(*v3 + 5408);
      v28 = &v25;
      v29 = 4;
      if (AppleBCMWLANCommander::runIOVarSet(v17, "pm2_radio_shutoff_dly", &v28, 0, 0))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configurePowerSave(this);
          }
        }
      }

      v25 = 120;
      v18 = *(*v3 + 5408);
      v28 = &v25;
      v29 = 4;
      if (AppleBCMWLANCommander::runIOVarSet(v18, "pm2_bcn_sleep_ret", &v28, 0, 0))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configurePowerSave(this);
          }
        }
      }

      v25 = 1;
      v19 = *(*v3 + 5408);
      v28 = &v25;
      v29 = 4;
      v20 = AppleBCMWLANCommander::runIOVarSet(v19, "sleep_between_ps_resend", &v28, 0, 0);
      if (v20 != -469794537)
      {
        v21 = v20;
        if (v20)
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePowerSave(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v25, v21);
            }
          }
        }
      }

      v10 = *v3;
    }

    *(v10 + 35528) = 0;
    isExternallyPoweredPlatform = AppleBCMWLANConfigManager::isExternallyPoweredPlatform(*(*v3 + 5464));
    v23 = *v3;
    if (isExternallyPoweredPlatform)
    {
      *(v23 + 14168) = 1;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configurePowerSave(this);
        }
      }
    }

    else
    {
      *(v23 + 14168) = 0;
    }

    AppleBCMWLANPowerManager::configureUnAssocFRTS(*(*v3 + 5520));
  }

  return v9;
}

uint64_t AppleBCMWLANCore::configureRoam(AppleBCMWLANCore *this)
{
  if (AppleBCMWLANConfigManager::isEnabledEnhancedRoaming(*(*(this + 9) + 5464)))
  {
    AppleBCMWLANCore::featureFlagSetBit(this, 20);
    AppleBCMWLANConfigManager::configureEnterpriseRoamParams(*(*(this + 9) + 5464));
  }

  else
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureRoam(this);
      }
    }

    AppleBCMWLANCore::featureFlagClearBit(this, 20);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::configureSecurityParams(AppleBCMWLANCore *this)
{
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if (!(*(*this + 128))(this))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureSecurityParams(this);
      }
    }

    return 0;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 0))
  {
LABEL_3:
    AppleBCMWLANCore::enablePTKKeyBuffer(this);
    return 0;
  }

  v13 = 1;
  v5 = *(*(this + 9) + 5408);
  v11 = &v13;
  v12 = 4;
  v6 = AppleBCMWLANCommander::runIOVarSet(v5, "sup_wpa", &v11, 0, 0);
  if (!v6)
  {
    v10 = -1;
    v7 = *(*(this + 9) + 5408);
    v11 = &v10;
    v12 = 4;
    if (AppleBCMWLANCommander::runIOVarSet(v7, "sup_wpa2_eapver", &v11, 0, 0))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureSecurityParams(this);
        }
      }
    }

    v9 = 1;
    v8 = *(*(this + 9) + 5408);
    v11 = &v9;
    v12 = 4;
    if (AppleBCMWLANCommander::runIOVarSet(v8, "sup_m3sec_ok", &v11, 0, 0))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureSecurityParams(this);
        }
      }
    }

    goto LABEL_3;
  }

  v3 = v6;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureSecurityParams(this, v2, &v13, v3);
    }
  }

  return v3;
}

uint64_t AppleBCMWLANCore::configureDefaultAvgRssiParameters(unint64_t this)
{
  v14 = 520;
  v2 = *(*(this + 72) + 5408);
  v12 = &v14;
  v13 = 4;
  v3 = AppleBCMWLANCommander::runIOVarSet(v2, "rssi_win", &v12, 0, 0);
  if (v3 != -469794537 && v3 != 0)
  {
    v5 = v3;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureDefaultAvgRssiParameters(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v14, v5);
      }
    }
  }

  v11 = 8;
  v6 = *(*(this + 72) + 5408);
  v12 = &v11;
  v13 = 4;
  v7 = AppleBCMWLANCommander::runIOVarSet(v6, "snr_win", &v12, 0, 0);
  if (v7 != -469794537 && v7 != 0)
  {
    v9 = v7;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureDefaultAvgRssiParameters(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v11, v9);
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::configureHS20IE(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 17);
  if (result)
  {
    if (AppleBCMWLANGASAdapter::setHotspot20CapsIndicationIE(*(*(this + 9) + 5472)))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureHS20IE(this);
        }
      }
    }

    result = AppleBCMWLANGASAdapter::setHotspot20InterworkingIE(*(*(this + 9) + 5472));
    if (result)
    {
      result = (*(*this + 1952))(this);
      if (result)
      {
        (*(*this + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::configureHS20IE(this);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureEarlyBeaconDetect(AppleBCMWLANCore *this)
{
  if (!AppleBCMWLANCore::featureFlagIsBitSet(this, 26))
  {
    return 0;
  }

  v7 = 4000;
  v2 = *(*(this + 9) + 5408);
  v6[0] = &v7;
  v6[1] = 4;
  v3 = AppleBCMWLANCommander::runIOVarSet(v2, "early_bcn_thresh", v6, 0, 0);
  v4 = (*(*this + 1952))(this);
  if (v3)
  {
    if (v4)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureEarlyBeaconDetect(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v7, v3);
      }
    }
  }

  else if (v4)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureEarlyBeaconDetect(this);
    }
  }

  return v3;
}

void AppleBCMWLANCore::configureTrgDisc(AppleBCMWLANCore *this)
{
  AppleBCMWLANCore::featureFlagSetBit(this, 39);
  v2 = AppleBCMWLANLQM::checkInfraStaPeerStatsSupport(*(*(this + 9) + 5608));
  if (v2 != -469794537)
  {
    *(*(this + 9) + 14312) = 1;
  }

  v3 = *(*(this + 9) + 5464);
  if (v3 && (isEnhancedTrgDiscEnabled = AppleBCMWLANConfigManager::isEnhancedTrgDiscEnabled(v3), v2 != -469794537) && isEnhancedTrgDiscEnabled)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureTrgDisc(this);
      }
    }
  }

  else
  {
    AppleBCMWLANCore::featureFlagClearBit(this, 39);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureTrgDisc(this);
      }
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 39))
  {
    v15 = 0;
    v5 = *(*(this + 9) + 5408);
    v13 = &v15;
    v14 = 4;
    v6 = AppleBCMWLANCommander::runIOVarSet(v5, "lq_rssi_delta", &v13, 0, 0);
    if (v6 != -469794537 && v6 != 0)
    {
      v8 = v6;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureTrgDisc(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v15, v8);
        }
      }
    }

    v12 = 0;
    v9 = *(*(this + 9) + 5408);
    v13 = &v12;
    v14 = 4;
    v10 = AppleBCMWLANCommander::runIOVarSet(v9, "lq_max_bcn_thresh", &v13, 0, 0);
    if (v10 != -469794537)
    {
      v11 = v10;
      if (v10)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureTrgDisc(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v12, v11);
          }
        }
      }
    }
  }

  if (AppleBCMWLANNetAdapter::checkRoamCacheQuerySupport(*(*(this + 9) + 5600)) == -469794537)
  {
    AppleBCMWLANCore::featureFlagClearBit(this, 58);
  }

  else
  {
    AppleBCMWLANCore::featureFlagSetBit(this, 58);
  }

  if (AppleBCMWLANNetAdapter::checkCcaStatsExtSupport(*(*(this + 9) + 5600)) == -469794537)
  {
    AppleBCMWLANCore::featureFlagClearBit(this, 72);
  }

  else
  {
    AppleBCMWLANCore::featureFlagSetBit(this, 72);
  }
}

uint64_t *AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap(uint64_t *this, OSObject *anObject, char a3)
{
  v3 = this;
  if (a3)
  {
LABEL_21:
    v18[0] = v3[9] + 8832;
    v18[1] = 4;
    v18[2] = "mws_coex_bitmap";
    v17 = (*(*v3 + 104))(v3, anObject);
    return (*(*v17 + 56))(v17, AppleBCMWLANCore::handleSetCoexIoVarNotificationGated, v18, 0, 0, 0);
  }

  if (!anObject)
  {
    return this;
  }

  v4 = OSMetaClassBase::safeMetaCast(anObject, gOSArrayMetaClass);
  if (v4)
  {
    v5 = v4;
    v6 = (v4->__vftable[1].Dispatch)(v4);
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      do
      {
        Object = OSArray::getObject(v5, v8);
        v11 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
        if (v11)
        {
          v12 = OSDictionary::getObject(v11, "MWS_Channel_Number");
          v13 = OSMetaClassBase::safeMetaCast(v12, gOSNumberMetaClass);
          if (v13)
          {
            v14 = OSNumber::unsigned32BitValue(v13);
            if (v14)
            {
              v15 = v14;
              if (v14 > 0xE)
              {
                if ((*(*v3 + 1952))(v3))
                {
                  (*(*v3 + 1952))(v3);
                  if (CCLogStream::shouldLog())
                  {
                    v16 = (*(*v3 + 1952))(v3);
                    CCLogStream::logAlert(v16, "[dk] %s@%d:Error: mws_coex_bitmap invalid channel(%d - %d/%d)\n", "setMWSCoexIoVarsAsync_mws_coex_bitmap", 9981, v15, v8 + 1, v7);
                  }
                }
              }

              else
              {
                v9 |= 1 << (v14 - 1);
              }
            }
          }
        }

        ++v8;
      }

      while (v7 != v8);
    }

    else
    {
      v9 = 0;
    }

    *(v3[9] + 8832) = v9;
    *(v3[9] + 8836) = 1;
    goto LABEL_21;
  }

  this = (*(*v3 + 1952))(v3);
  if (this)
  {
    (*(*v3 + 1952))(v3);
    this = CCLogStream::shouldLog();
    if (this)
    {
      return AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap(v3);
    }
  }

  return this;
}

uint64_t *AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_aggCh_params(uint64_t *this, OSObject *anObject, char a3)
{
  v3 = this;
  if (a3)
  {
LABEL_49:
    v25[0] = v3[9] + 8838;
    v25[1] = 30;
    v25[2] = "mws_params";
    v24 = (*(*v3 + 104))(v3, anObject);
    return (*(*v24 + 56))(v24, AppleBCMWLANCore::handleSetCoexIoVarNotificationGated, v25, 0, 0, 0);
  }

  if (!anObject)
  {
    return this;
  }

  v4 = OSMetaClassBase::safeMetaCast(anObject, gOSDictionaryMetaClass);
  if (v4)
  {
    v5 = v4;
    Object = OSDictionary::getObject(v4, "MWS_Aggressor_Channel_Enable");
    if (Object)
    {
      v7 = OSMetaClassBase::safeMetaCast(Object, gOSNumberMetaClass);
      if (v7)
      {
        v8 = OSNumber::unsigned8BitValue(v7);
        goto LABEL_14;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_aggCh_params(v3);
      }
    }

    v8 = 0;
LABEL_14:
    v9 = OSDictionary::getObject(v5, "MWS_Aggressor_Channel_RxCenterFrequency");
    if (v9)
    {
      v10 = OSMetaClassBase::safeMetaCast(v9, gOSNumberMetaClass);
      if (v10)
      {
        v11 = OSNumber::unsigned16BitValue(v10);
        goto LABEL_21;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_aggCh_params(v3);
      }
    }

    v11 = 0;
LABEL_21:
    v12 = OSDictionary::getObject(v5, "MWS_Aggressor_Channel_TxCenterFrequency");
    if (v12)
    {
      v13 = OSMetaClassBase::safeMetaCast(v12, gOSNumberMetaClass);
      if (v13)
      {
        v14 = OSNumber::unsigned16BitValue(v13);
        goto LABEL_28;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_aggCh_params(v3);
      }
    }

    v14 = 0;
LABEL_28:
    v15 = OSDictionary::getObject(v5, "MWS_Aggressor_Channel_RxChannelBandwidth");
    if (v15)
    {
      v16 = OSMetaClassBase::safeMetaCast(v15, gOSNumberMetaClass);
      if (v16)
      {
        v17 = OSNumber::unsigned16BitValue(v16);
        goto LABEL_35;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_aggCh_params(v3);
      }
    }

    v17 = 0;
LABEL_35:
    v18 = OSDictionary::getObject(v5, "MWS_Aggressor_Channel_TxChannelBandwidth");
    if (v18)
    {
      v19 = OSMetaClassBase::safeMetaCast(v18, gOSNumberMetaClass);
      if (v19)
      {
        v20 = OSNumber::unsigned16BitValue(v19);
LABEL_42:
        v21 = OSDictionary::getObject(v5, "MWS_Aggressor_Channel_Type");
        if (v21)
        {
          v22 = OSMetaClassBase::safeMetaCast(v21, gOSNumberMetaClass);
          if (v22)
          {
            LOBYTE(v22) = OSNumber::unsigned8BitValue(v22);
          }
        }

        else
        {
          v22 = (*(*v3 + 1952))(v3);
          if (v22)
          {
            (*(*v3 + 1952))(v3);
            LODWORD(v22) = CCLogStream::shouldLog();
            if (v22)
            {
              AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_aggCh_params(v3);
              LOBYTE(v22) = 0;
            }
          }
        }

        v23 = v3[9] + 0x2000;
        *(v23 + 646) = v11;
        *(v23 + 648) = v14;
        *(v23 + 650) = v17;
        *(v23 + 652) = v20;
        *(v23 + 654) = v8;
        *(v23 + 655) = v22;
        *(v3[9] + 8848) = 1;
        goto LABEL_49;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_aggCh_params(v3);
      }
    }

    v20 = 0;
    goto LABEL_42;
  }

  this = (*(*v3 + 1952))(v3);
  if (this)
  {
    (*(*v3 + 1952))(v3);
    this = CCLogStream::shouldLog();
    if (this)
    {
      return AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_aggCh_params(v3);
    }
  }

  return this;
}

uint64_t *AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(uint64_t *this, OSObject *anObject, char a3)
{
  v3 = this;
  memset(v52, 170, sizeof(v52));
  if (a3)
  {
LABEL_112:
    v52[0] = v3[9] + 8850;
    v52[1] = 30;
    v52[2] = "wci2_config";
    v44 = (*(*v3 + 104))(v3, anObject);
    return (*(*v44 + 56))(v44, AppleBCMWLANCore::handleSetCoexIoVarNotificationGated, v52, 0, 0, 0);
  }

  if (!anObject)
  {
    return this;
  }

  v4 = OSMetaClassBase::safeMetaCast(anObject, gOSDictionaryMetaClass);
  if (v4)
  {
    v5 = v4;
    Object = OSDictionary::getObject(v4, "MWS_WCI_Signaling_RxAssertOffset");
    if (Object)
    {
      v7 = OSMetaClassBase::safeMetaCast(Object, gOSNumberMetaClass);
      if (v7)
      {
        v51 = OSNumber::unsigned16BitValue(v7);
        goto LABEL_14;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(v3);
      }
    }

    v51 = 0;
LABEL_14:
    v8 = OSDictionary::getObject(v5, "MWS_WCI_Signaling_RxAssertJitter");
    if (v8)
    {
      v9 = OSMetaClassBase::safeMetaCast(v8, gOSNumberMetaClass);
      if (v9)
      {
        v50 = OSNumber::unsigned16BitValue(v9);
        goto LABEL_21;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(v3);
      }
    }

    v50 = 0;
LABEL_21:
    v10 = OSDictionary::getObject(v5, "MWS_WCI_Signaling_RxDeAssertOffset");
    if (v10)
    {
      v11 = OSMetaClassBase::safeMetaCast(v10, gOSNumberMetaClass);
      if (v11)
      {
        v49 = OSNumber::unsigned16BitValue(v11);
        goto LABEL_28;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(v3);
      }
    }

    v49 = 0;
LABEL_28:
    v12 = OSDictionary::getObject(v5, "MWS_WCI_Signaling_RxDeAssertJitter");
    if (v12)
    {
      v13 = OSMetaClassBase::safeMetaCast(v12, gOSNumberMetaClass);
      if (v13)
      {
        v48 = OSNumber::unsigned16BitValue(v13);
        goto LABEL_35;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(v3);
      }
    }

    v48 = 0;
LABEL_35:
    v14 = OSDictionary::getObject(v5, "MWS_WCI_Signaling_TxAssertOffset");
    if (v14)
    {
      v15 = OSMetaClassBase::safeMetaCast(v14, gOSNumberMetaClass);
      if (v15)
      {
        v47 = OSNumber::unsigned16BitValue(v15);
        goto LABEL_42;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(v3);
      }
    }

    v47 = 0;
LABEL_42:
    v16 = OSDictionary::getObject(v5, "MWS_WCI_Signaling_TxAssertJitter");
    if (v16)
    {
      v17 = OSMetaClassBase::safeMetaCast(v16, gOSNumberMetaClass);
      if (v17)
      {
        v46 = OSNumber::unsigned16BitValue(v17);
        goto LABEL_49;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(v3);
      }
    }

    v46 = 0;
LABEL_49:
    v18 = OSDictionary::getObject(v5, "MWS_WCI_Signaling_TxDeAssertOffset");
    if (v18)
    {
      v19 = OSMetaClassBase::safeMetaCast(v18, gOSNumberMetaClass);
      if (v19)
      {
        v45 = OSNumber::unsigned16BitValue(v19);
        goto LABEL_56;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(v3);
      }
    }

    v45 = 0;
LABEL_56:
    v20 = OSDictionary::getObject(v5, "MWS_WCI_Signaling_TxDeAssertJitter");
    if (v20)
    {
      v21 = OSMetaClassBase::safeMetaCast(v20, gOSNumberMetaClass);
      if (v21)
      {
        v22 = OSNumber::unsigned16BitValue(v21);
        goto LABEL_63;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(v3);
      }
    }

    v22 = 0;
LABEL_63:
    v23 = OSDictionary::getObject(v5, "MWS_WCI_Signaling_PatternAssertOffset");
    if (v23)
    {
      v24 = OSMetaClassBase::safeMetaCast(v23, gOSNumberMetaClass);
      if (v24)
      {
        v25 = OSNumber::unsigned16BitValue(v24);
        goto LABEL_70;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(v3);
      }
    }

    v25 = 0;
LABEL_70:
    v26 = OSDictionary::getObject(v5, "MWS_WCI_Signaling_PatternAssertJitter");
    if (v26)
    {
      v27 = OSMetaClassBase::safeMetaCast(v26, gOSNumberMetaClass);
      if (v27)
      {
        v28 = OSNumber::unsigned16BitValue(v27);
        goto LABEL_77;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(v3);
      }
    }

    v28 = 0;
LABEL_77:
    v29 = OSDictionary::getObject(v5, "MWS_WCI_Signaling_InactivityAssertOffset");
    if (v29)
    {
      v30 = OSMetaClassBase::safeMetaCast(v29, gOSNumberMetaClass);
      if (v30)
      {
        v31 = OSNumber::unsigned16BitValue(v30);
        goto LABEL_84;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(v3);
      }
    }

    v31 = 0;
LABEL_84:
    v32 = OSDictionary::getObject(v5, "MWS_WCI_Signaling_InactivityAssertJitter");
    if (v32)
    {
      v33 = OSMetaClassBase::safeMetaCast(v32, gOSNumberMetaClass);
      if (v33)
      {
        v34 = OSNumber::unsigned16BitValue(v33);
        goto LABEL_91;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(v3);
      }
    }

    v34 = 0;
LABEL_91:
    v35 = OSDictionary::getObject(v5, "MWS_WCI_Signaling_ScanFrequencyAssertOffset");
    if (v35)
    {
      v36 = OSMetaClassBase::safeMetaCast(v35, gOSNumberMetaClass);
      if (v36)
      {
        v37 = OSNumber::unsigned16BitValue(v36);
        goto LABEL_98;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(v3);
      }
    }

    v37 = 0;
LABEL_98:
    v38 = OSDictionary::getObject(v5, "MWS_WCI_Signaling_ScanFrequencyAssertJitter");
    if (v38)
    {
      v39 = OSMetaClassBase::safeMetaCast(v38, gOSNumberMetaClass);
      if (v39)
      {
        v40 = OSNumber::unsigned16BitValue(v39);
LABEL_105:
        v41 = OSDictionary::getObject(v5, "MWS_WCI_Signaling_PriorityAssertOffsetRequest");
        if (v41)
        {
          v42 = OSMetaClassBase::safeMetaCast(v41, gOSNumberMetaClass);
          if (v42)
          {
            LOWORD(v42) = OSNumber::unsigned16BitValue(v42);
          }
        }

        else
        {
          v42 = (*(*v3 + 1952))(v3);
          if (v42)
          {
            (*(*v3 + 1952))(v3);
            LODWORD(v42) = CCLogStream::shouldLog();
            if (v42)
            {
              AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(v3);
              LOWORD(v42) = 0;
            }
          }
        }

        v43 = (v3[9] + 0x2000);
        v43[329] = v51;
        v43[330] = v50;
        v43[331] = v49;
        v43[332] = v48;
        v43[333] = v47;
        v43[334] = v46;
        v43[335] = v45;
        v43[336] = v22;
        v43[337] = v25;
        v43[338] = v28;
        v43[339] = v31;
        v43[340] = v34;
        v43[341] = v37;
        v43[342] = v40;
        v43[343] = v42;
        *(v3[9] + 8880) = 1;
        goto LABEL_112;
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(v3);
      }
    }

    v40 = 0;
    goto LABEL_105;
  }

  this = (*(*v3 + 1952))(v3);
  if (this)
  {
    (*(*v3 + 1952))(v3);
    this = CCLogStream::shouldLog();
    if (this)
    {
      return AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(v3);
    }
  }

  return this;
}

uint64_t *AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wlanrxpri_threshold(uint64_t *this, OSObject *anObject, char a3)
{
  v3 = this;
  if (a3)
  {
    goto LABEL_5;
  }

  if (!anObject)
  {
    return this;
  }

  v4 = OSMetaClassBase::safeMetaCast(anObject, gOSNumberMetaClass);
  if (v4)
  {
    *(v3[9] + 8884) = OSNumber::unsigned32BitValue(v4);
    *(v3[9] + 8888) = 1;
LABEL_5:
    v6[0] = v3[9] + 8884;
    v6[1] = 4;
    v6[2] = "mws_wlanrxpri_thresh";
    v5 = (*(*v3 + 104))(v3, anObject);
    return (*(*v5 + 56))(v5, AppleBCMWLANCore::handleSetCoexIoVarNotificationGated, v6, 0, 0, 0);
  }

  this = (*(*v3 + 1952))(v3);
  if (this)
  {
    (*(*v3 + 1952))(v3);
    this = CCLogStream::shouldLog();
    if (this)
    {
      return AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wlanrxpri_threshold(v3);
    }
  }

  return this;
}

uint64_t *AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap_V2(uint64_t *this, OSDictionary *a2, char a3)
{
  v3 = this;
  if ((a3 & 1) == 0)
  {
    if (!a2)
    {
      return this;
    }

    Object = OSDictionary::getObject(a2, "IO80211InterfaceMwsCoex2GBitmapV2");
    if (Object)
    {
      v6 = OSMetaClassBase::safeMetaCast(Object, gOSNumberMetaClass);
      *(v3[9] + 8890) = OSNumber::unsigned16BitValue(v6);
      if ((*(*v3 + 1952))(v3))
      {
        (*(*v3 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap_V2(v3);
        }
      }
    }

    v7 = OSDictionary::getObject(a2, "IO80211InterfaceMwsCoex5GBitmapLowV2");
    if (v7)
    {
      v8 = OSMetaClassBase::safeMetaCast(v7, gOSNumberMetaClass);
      *(v3[9] + 8892) = OSNumber::unsigned16BitValue(v8);
      if ((*(*v3 + 1952))(v3))
      {
        (*(*v3 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap_V2(v3);
        }
      }
    }

    v9 = OSDictionary::getObject(a2, "IO80211InterfaceMwsCoex5GBitmapMidV2");
    if (v9)
    {
      v10 = OSMetaClassBase::safeMetaCast(v9, gOSNumberMetaClass);
      *(v3[9] + 8894) = OSNumber::unsigned16BitValue(v10);
      if ((*(*v3 + 1952))(v3))
      {
        (*(*v3 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap_V2(v3);
        }
      }
    }

    v11 = OSDictionary::getObject(a2, "IO80211InterfaceMwsCoex5GBitmapHiV2");
    if (v11)
    {
      v12 = OSMetaClassBase::safeMetaCast(v11, gOSNumberMetaClass);
      *(v3[9] + 8896) = OSNumber::unsigned16BitValue(v12);
      if ((*(*v3 + 1952))(v3))
      {
        (*(*v3 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap_V2(v3);
        }
      }
    }

    *(v3[9] + 8898) = 1;
  }

  v14[0] = v3[9] + 8890;
  v14[1] = 8;
  v14[2] = "mws_coex_bitmap_v2";
  v13 = (*(*v3 + 104))(v3, a2);
  return (*(*v13 + 56))(v13, AppleBCMWLANCore::handleSetCoexIoVarNotificationGated, v14, 0, 0, 0);
}

uint64_t *AppleBCMWLANCore::setMWSCoexIoVarsRxPrioTimer(uint64_t *this, OSObject *anObject, int a3)
{
  v3 = this;
  if (a3)
  {
LABEL_2:
    v6[0] = v3[9] + 8900;
    v6[1] = 4;
    v6[2] = "mws_rx_prio_timer";
    v4 = (*(*v3 + 104))(v3, anObject);
    return (*(*v4 + 56))(v4, AppleBCMWLANCore::handleSetCoexIoVarNotificationGated, v6, 0, 0, 0);
  }

  if (anObject)
  {
    v5 = OSMetaClassBase::safeMetaCast(anObject, gOSNumberMetaClass);
    if (v5)
    {
      *(v3[9] + 8900) = OSNumber::unsigned32BitValue(v5);
      *(v3[9] + 8904) = 1;
      if ((*(*v3 + 1952))(v3))
      {
        (*(*v3 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setMWSCoexIoVarsRxPrioTimer(v3);
        }
      }

      goto LABEL_2;
    }

    this = (*(*v3 + 1952))(v3);
    if (this)
    {
      (*(*v3 + 1952))(v3);
      this = CCLogStream::shouldLog();
      if (this)
      {
        return AppleBCMWLANCore::setMWSCoexIoVarsRxPrioTimer(v3);
      }
    }
  }

  return this;
}

uint64_t *AppleBCMWLANCore::setMWSCoexIoVarsPwrLimitTimer(uint64_t *this, OSObject *anObject, int a3)
{
  v3 = this;
  if (a3)
  {
LABEL_2:
    v6[0] = v3[9] + 8908;
    v6[1] = 4;
    v6[2] = "mws_pwr_limit_timer";
    v4 = (*(*v3 + 104))(v3, anObject);
    return (*(*v4 + 56))(v4, AppleBCMWLANCore::handleSetCoexIoVarNotificationGated, v6, 0, 0, 0);
  }

  if (anObject)
  {
    v5 = OSMetaClassBase::safeMetaCast(anObject, gOSNumberMetaClass);
    if (v5)
    {
      *(v3[9] + 8908) = OSNumber::unsigned32BitValue(v5);
      *(v3[9] + 8912) = 1;
      if ((*(*v3 + 1952))(v3))
      {
        (*(*v3 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setMWSCoexIoVarsPwrLimitTimer(v3);
        }
      }

      goto LABEL_2;
    }

    this = (*(*v3 + 1952))(v3);
    if (this)
    {
      (*(*v3 + 1952))(v3);
      this = CCLogStream::shouldLog();
      if (this)
      {
        return AppleBCMWLANCore::setMWSCoexIoVarsPwrLimitTimer(v3);
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::configureTxFailEventThreshold(AppleBCMWLANCore *this, int a2)
{
  v3 = *(*(this + 9) + 5464);
  if (v3 && AppleBCMWLANConfigManager::isTxFailEventSupported(v3))
  {
    if (a2)
    {
      if (AppleBCMWLANConfigManager::getTxFailMediumThreshold(*(*(this + 9) + 5464)))
      {
        TxFailMediumThreshold = AppleBCMWLANConfigManager::getTxFailMediumThreshold(*(*(this + 9) + 5464));
      }

      else
      {
        TxFailMediumThreshold = 10;
      }
    }

    else
    {
      TxFailMediumThreshold = 0;
    }

    if (AppleBCMWLANConfigManager::getCachedTxFailEventConfigured(*(*(this + 9) + 5464)) == TxFailMediumThreshold)
    {
      return 0;
    }

    v7 = IOMallocZeroData();
    if (v7)
    {
      v8 = v7;
      *v7 = 0x4000A00080002;
      *(v7 + 8) = TxFailMediumThreshold;
      v9 = *(*(this + 9) + 5408);
      v13[0] = v8;
      v13[1] = 14;
      v6 = AppleBCMWLANCommander::runIOVarSet(v9, "hc", v13, 0, 0);
      v10 = (*(*this + 1952))(this);
      if (!v6)
      {
        if (v10)
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureTxFailEventThreshold(this);
          }
        }

        v11 = *(*(this + 9) + 5464);
        if (v11)
        {
          AppleBCMWLANConfigManager::cacheTxFailEventThrehold(v11, TxFailMediumThreshold);
        }

        IOFreeData();
        return 0;
      }

      if (v10)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureTxFailEventThreshold(this);
        }
      }

      IOFreeData();
    }

    else if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      v6 = 3758097085;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureTxFailEventThreshold(this);
      }
    }

    else
    {
      return 3758097085;
    }
  }

  else
  {
    v6 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureTxFailEventThreshold(this);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::configureECounters(OSMetaClassBase *anObject)
{
  if (!anObject[3].__vftable[137].Dispatch)
  {
    v6 = OSMetaClassBase::safeMetaCast(anObject, gIOServiceMetaClass);
    retain = anObject[3].__vftable[356].retain;
    v8 = (anObject->__vftable[2].isEqualTo)(anObject);
    v9 = anObject[3].__vftable;
    release = v9[138].release;
    isEqualTo = v9[443].isEqualTo;
    retain_high = HIDWORD(v9[24].retain);
    *&v32 = anObject;
    *(&v32 + 1) = v6;
    v33 = retain;
    v34 = v8;
    v35 = release;
    v36 = &IO80211Controller::addReporterLegend;
    v37 = &IO80211Controller::removeReporterFromLegend;
    v38 = isEqualTo;
    v39 = retain_high;
    v40 = 0;
    anObject[3].__vftable[137].isEqualTo = AppleBCMWLANIOReportingCore::with(&v32);
    if (!anObject[3].__vftable[137].isEqualTo)
    {
      v4 = 3758097084;
      if ((anObject->__vftable[48].Dispatch)(anObject))
      {
        (anObject->__vftable[48].Dispatch)(anObject);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureECounters(anObject);
        }
      }

      return v4;
    }

    *&v32 = anObject;
    *(&v32 + 1) = v6;
    v33 = retain;
    v34 = v8;
    v35 = release;
    v36 = &IO80211Controller::addReporterLegend;
    v37 = &IO80211Controller::removeReporterFromLegend;
    v38 = isEqualTo;
    v39 = retain_high;
    v40 = 0;
    anObject[3].__vftable[137].Dispatch = AppleBCMWLANIOReportingPerSlice::with(&v32);
    v13 = anObject[3].__vftable;
    Dispatch = v13[137].Dispatch;
    if (!Dispatch)
    {
      v4 = 3758097084;
      if ((anObject->__vftable[48].Dispatch)(anObject))
      {
        (anObject->__vftable[48].Dispatch)(anObject);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureECounters(anObject);
        }
      }

      return v4;
    }

    AppleBCMWLANIOReportingPerSlice::setCallbackForStaleConfig(Dispatch, v13[137].isEqualTo, AppleBCMWLANIOReportingCore::incrementStaleConfigurationDetected);
  }

  v31 = 0;
  v2 = IOParseBootArgNumber("wlan.ecounters", &v31, 4);
  v3 = anObject[3].__vftable;
  if (!v2 || v31)
  {
    LODWORD(v3[24].getMetaClass) = 2;
    v41 = -1431655931;
    v15 = AppleBCMWLANCore::is4399C0Up(anObject);
    v16 = anObject[3].__vftable;
    if (v15)
    {
      v17 = 1832;
    }

    else if (HIDWORD(v16[19].release) <= 4)
    {
      v17 = 1400;
    }

    else
    {
      v17 = 1648;
    }

    v42 = v17;
    v18 = v16[135].retain;
    *&v32 = &v41;
    *(&v32 + 1) = 8;
    v19 = AppleBCMWLANCommander::runIOVarSet(v18, "event_log_set_init", &v32, 0, 0);
    if (v19 != -469794537)
    {
      v4 = v19;
      if (!v19)
      {
        return v4;
      }

      if ((anObject->__vftable[48].Dispatch)(anObject) && ((anObject->__vftable[48].Dispatch)(anObject), CCLogStream::shouldLog()))
      {
        v23 = (anObject->__vftable[48].Dispatch)(anObject);
        v24 = v41;
        v25 = v42;
        v26 = (anObject->__vftable[2].Dispatch)(anObject, v4);
        CCLogStream::logAlert(v23, "[dk] %s@%d: Error: Unable to set event_log_set_init set %d, size %d: %s\n", "configureECounters", 51847, v24, v25, v26);
        if (!v4)
        {
          return v4;
        }
      }

      else if (!v4)
      {
        return v4;
      }
    }

    LOBYTE(v41) = 5;
    v42 = 0;
    v20 = anObject[3].__vftable[135].retain;
    *&v32 = &v41;
    *(&v32 + 1) = 8;
    v21 = AppleBCMWLANCommander::runIOVarSet(v20, "event_log_set_shrink", &v32, 0, 0);
    v4 = v21;
    if (v21 != -469794537 && v21 != 0)
    {
      if ((anObject->__vftable[48].Dispatch)(anObject))
      {
        (anObject->__vftable[48].Dispatch)(anObject);
        if (CCLogStream::shouldLog())
        {
          v27 = (anObject->__vftable[48].Dispatch)(anObject);
          v28 = v41;
          v29 = v42;
          v30 = (anObject->__vftable[2].Dispatch)(anObject, v4);
          CCLogStream::logAlert(v27, "[dk] %s@%d: Error: Unable to deallocate event_log_set_init set %d, size %d: %s\n", "configureECounters", 51859, v28, v29, v30);
        }
      }
    }

    if ((anObject->__vftable[48].Dispatch)(anObject))
    {
      (anObject->__vftable[48].Dispatch)(anObject);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureECounters(anObject);
      }
    }
  }

  else
  {
    LODWORD(v3[24].getMetaClass) = 1;
    if ((anObject->__vftable[48].Dispatch)(anObject))
    {
      (anObject->__vftable[48].Dispatch)(anObject);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureECounters(anObject);
      }
    }

    return 0;
  }

  return v4;
}

uint64_t AppleBCMWLANCore::configureEventLogOneReportedStats(AppleBCMWLANCore *this)
{
  v14 = 0;
  if (IOParseBootArgNumber("wlan.elogs", &v14, 4) && v14 == 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureEventLogOneReportedStats(this);
      }
    }

    return 0;
  }

  else
  {
    if (*(*(this + 9) + 780) <= 4u)
    {
      v3 = 1400;
    }

    else
    {
      v3 = 1648;
    }

    v13 = v3;
    if (IOParseBootArgNumber("wlan.elogs.size1", &v13, 4))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureEventLogOneReportedStats(this);
        }
      }
    }

    if (AppleBCMWLANCore::configureEventLogStats(this, 1, v13))
    {
      return AppleBCMWLANCore::configureEventLogShrinkStats(this, 1);
    }

    else
    {
      v12 = -2147417999;
      v6 = *(*(this + 9) + 5408);
      v11[0] = &v12;
      v11[1] = 4;
      v4 = AppleBCMWLANCommander::runIOVarSet(v6, "event_log_tag_control", v11, 0, 0);
      if (v4)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v7 = (*(*this + 1952))(this);
            v8 = BYTE2(v12);
            v9 = v12;
            v10 = (*(*this + 112))(this, v4);
            CCLogStream::logAlert(v7, "[dk] %s@%d: Error: Unable to set event_log_tag_control set %d, tag %d: %s\n", "configureEventLogOneReportedStats", 52722, v8, v9, v10);
          }
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureEventLogOneReportedStats(this);
        }
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::configureEventLogSixReportedStats(AppleBCMWLANCore *this)
{
  v48 = -1431655766;
  v47 = 0;
  if (IOParseBootArgNumber("wlan.elogs", &v47, 4) && v47 == 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureEventLogSixReportedStats(this);
      }
    }

    return 0;
  }

  else
  {
    v46 = 300;
    if (IOParseBootArgNumber("wlan.elogs.size6", &v46, 4))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureEventLogSixReportedStats(this);
        }
      }
    }

    v49 = -1431655930;
    v50 = v46;
    v3 = *(*(this + 9) + 5408);
    v44 = &v49;
    v45 = 8;
    v4 = AppleBCMWLANCommander::runIOVarSet(v3, "event_log_set_init", &v44, 0, 0);
    if (v4)
    {
      v5 = v4;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v6 = (*(*this + 1952))(this);
          v7 = v49;
          v8 = v50;
          v9 = (*(*this + 112))(this, v5);
          CCLogStream::logInfo(v6, "[dk] %s@%d: Error: Unable to set event_log_set_init set %d, size %d: %s\n", "configureEventLogSixReportedStats", 52759, v7, v8, v9);
        }
      }

LABEL_25:
      LOBYTE(v49) = 6;
      v50 = 0;
      v20 = *(*(this + 9) + 5408);
      v44 = &v49;
      v45 = 8;
      v21 = AppleBCMWLANCommander::runIOVarSet(v20, "event_log_set_shrink", &v44, 0, 0);
      if (!v21)
      {
        goto LABEL_51;
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v31 = (*(*this + 1952))(this);
          v32 = v49;
          v33 = v50;
          v34 = (*(*this + 112))(this, v21);
          CCLogStream::logInfo(v31, "[dk] %s@%d: Error: Unable to deallocate event_log_set_init set %d, size %d: %s\n", "configureEventLogSixReportedStats", 52800, v32, v33, v34);
        }
      }

      v10 = 3825172759;
      if (v21 != -469794537)
      {
LABEL_51:
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureEventLogSixReportedStats(this);
          }
        }

        return v21;
      }

      return v10;
    }

    v11 = *(*(this + 9) + 5408);
    v44 = &v49;
    v45 = 8;
    v12 = AppleBCMWLANCommander::runIOVarSet(v11, "event_log_set_expand", &v44, 0, 0);
    if (v12)
    {
      v13 = v12;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v14 = (*(*this + 1952))(this);
          v15 = v49;
          v16 = v50;
          v42 = (*(*this + 112))(this, v13);
          CCLogStream::logAlert(v14, "[dk] %s@%d: Error: Unable to set event_log_set_init set %d, size %d: %s\n", "configureEventLogSixReportedStats", 52765, v15, v16, v42);
        }
      }

      goto LABEL_25;
    }

    v17 = *(*(this + 9) + 5408);
    v44 = &v49;
    v45 = 8;
    v18 = AppleBCMWLANCommander::runIOVarSet(v17, "event_log_set_expand", &v44, 0, 0);
    if (v18)
    {
      v19 = v18;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v35 = (*(*this + 1952))(this);
          v36 = v49;
          v37 = v50;
          v43 = (*(*this + 112))(this, v19);
          CCLogStream::logAlert(v35, "[dk] %s@%d: Error: Unable to set event_log_set_init set %d, size %d: %s\n", "configureEventLogSixReportedStats", 52770, v36, v37, v43);
        }
      }

      goto LABEL_25;
    }

    v48 = -2147090336;
    v23 = *(*(this + 9) + 5408);
    v44 = &v48;
    v45 = 4;
    v24 = AppleBCMWLANCommander::runIOVarSet(v23, "event_log_tag_control", &v44, 0, 0);
    if (v24)
    {
      v25 = v24;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v26 = (*(*this + 1952))(this);
          v27 = BYTE2(v48);
          v28 = v48;
          v29 = (*(*this + 112))(this, v25);
          CCLogStream::logAlert(v26, "[dk] %s@%d: Error: Unable to set event_log_tag_control set %d, tag %d: %s\n", "configureEventLogSixReportedStats", 52780, v27, v28, v29);
        }
      }
    }

    LOWORD(v48) = 113;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureEventLogSixReportedStats(this);
      }
    }

    v30 = *(*(this + 9) + 5408);
    v44 = &v48;
    v45 = 4;
    v10 = AppleBCMWLANCommander::runIOVarSet(v30, "event_log_tag_control", &v44, 0, 0);
    if (v10)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v38 = (*(*this + 1952))(this);
          v39 = BYTE2(v48);
          v40 = v48;
          v41 = (*(*this + 112))(this, v10);
          CCLogStream::logAlert(v38, "[dk] %s@%d: Error: Unable to set event_log_tag_control set %d, tag %d: %s\n", "configureEventLogSixReportedStats", 52788, v39, v40, v41);
        }
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureEventLogSixReportedStats(this);
      }
    }
  }

  return v10;
}

uint64_t AppleBCMWLANCore::configureEventLogSevenReportedStats(AppleBCMWLANCore *this)
{
  v41 = -1431655766;
  v40 = 0;
  if (IOParseBootArgNumber("wlan.elogs", &v40, 4) && v40 == 0)
  {
    result = (*(*this + 1952))(this);
    if (!result)
    {
      return result;
    }

    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (!result)
    {
      return result;
    }

    AppleBCMWLANCore::configureEventLogSevenReportedStats(this);
    return 0;
  }

  if (*(*(this + 9) + 780) <= 4u)
  {
    v3 = 1400;
  }

  else
  {
    v3 = 1648;
  }

  v39 = v3;
  if (IOParseBootArgNumber("wlan.elogs.size7", &v39, 4))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureEventLogSevenReportedStats(this);
      }
    }
  }

  v42 = -1431655929;
  v43 = v39;
  v4 = *(*(this + 9) + 5408);
  v37 = &v42;
  v38 = 8;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "event_log_set_init", &v37, 0, 0);
  if (v5)
  {
    v6 = v5;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v7 = (*(*this + 1952))(this);
        v8 = v42;
        v9 = v43;
        v10 = (*(*this + 112))(this, v6);
        CCLogStream::logInfo(v7, "[dk] %s@%d: Error: Unable to set event_log_set_init set %d, size %d: %s\n", "configureEventLogSevenReportedStats", 52837, v8, v9, v10);
      }
    }

    goto LABEL_51;
  }

  v12 = *(*(this + 9) + 5408);
  v37 = &v42;
  v38 = 8;
  v13 = AppleBCMWLANCommander::runIOVarSet(v12, "event_log_set_expand", &v37, 0, 0);
  if (v13)
  {
    v14 = v13;
    if (!(*(*this + 1952))(this))
    {
      goto LABEL_51;
    }

    (*(*this + 1952))(this);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_51;
    }

    goto LABEL_27;
  }

  v15 = *(*(this + 9) + 5408);
  v37 = &v42;
  v38 = 8;
  v16 = AppleBCMWLANCommander::runIOVarSet(v15, "event_log_set_expand", &v37, 0, 0);
  if (!v16)
  {
    v41 = -2147024849;
    v18 = *(*(this + 9) + 5408);
    v37 = &v41;
    v38 = 4;
    v19 = AppleBCMWLANCommander::runIOVarSet(v18, "event_log_tag_control", &v37, 0, 0);
    if (v19)
    {
      v20 = v19;
      if (!(*(*this + 1952))(this))
      {
        goto LABEL_51;
      }

      (*(*this + 1952))(this);
      if (!CCLogStream::shouldLog())
      {
        goto LABEL_51;
      }

      goto LABEL_64;
    }

    LOWORD(v41) = 67;
    v21 = *(*(this + 9) + 5408);
    v37 = &v41;
    v38 = 4;
    v22 = AppleBCMWLANCommander::runIOVarSet(v21, "event_log_tag_control", &v37, 0, 0);
    if (v22)
    {
      v20 = v22;
      if (!(*(*this + 1952))(this))
      {
        goto LABEL_51;
      }

      (*(*this + 1952))(this);
      if (!CCLogStream::shouldLog())
      {
        goto LABEL_51;
      }

      goto LABEL_64;
    }

    LOWORD(v41) = 68;
    v23 = *(*(this + 9) + 5408);
    v37 = &v41;
    v38 = 4;
    v24 = AppleBCMWLANCommander::runIOVarSet(v23, "event_log_tag_control", &v37, 0, 0);
    if (v24)
    {
      v20 = v24;
      if (!(*(*this + 1952))(this))
      {
        goto LABEL_51;
      }

      (*(*this + 1952))(this);
      if (!CCLogStream::shouldLog())
      {
        goto LABEL_51;
      }

      goto LABEL_64;
    }

    LOWORD(v41) = 155;
    v25 = *(*(this + 9) + 5408);
    v37 = &v41;
    v38 = 4;
    v26 = AppleBCMWLANCommander::runIOVarSet(v25, "event_log_tag_control", &v37, 0, 0);
    if (v26)
    {
      v20 = v26;
      if (!(*(*this + 1952))(this))
      {
        goto LABEL_51;
      }

      (*(*this + 1952))(this);
      if (!CCLogStream::shouldLog())
      {
        goto LABEL_51;
      }

      goto LABEL_64;
    }

    LOWORD(v41) = 223;
    v27 = *(*(this + 9) + 5408);
    v37 = &v41;
    v38 = 4;
    v28 = AppleBCMWLANCommander::runIOVarSet(v27, "event_log_tag_control", &v37, 0, 0);
    if (v28)
    {
      v20 = v28;
      if (!(*(*this + 1952))(this))
      {
        goto LABEL_51;
      }

      (*(*this + 1952))(this);
      if (!CCLogStream::shouldLog())
      {
        goto LABEL_51;
      }

      goto LABEL_64;
    }

    LOWORD(v41) = 466;
    v29 = *(*(this + 9) + 5408);
    v37 = &v41;
    v38 = 4;
    v20 = AppleBCMWLANCommander::runIOVarSet(v29, "event_log_tag_control", &v37, 0, 0);
    result = (*(*this + 1952))(this);
    if (v20)
    {
      if (!result)
      {
        goto LABEL_51;
      }

      (*(*this + 1952))(this);
      if (!CCLogStream::shouldLog())
      {
        goto LABEL_51;
      }

LABEL_64:
      v36 = (*(*this + 1952))(this);
      (*(*this + 112))(this, v20);
      CCLogStream::logAlert(v36, "[dk] %s@%d: Error: Unable to set event_log_tag_control set %d, tag %d: %s\n");
      goto LABEL_51;
    }

    if (!result)
    {
      return result;
    }

    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (!result)
    {
      return result;
    }

    AppleBCMWLANCore::configureEventLogSevenReportedStats(this);
    return 0;
  }

  v14 = v16;
  if (!(*(*this + 1952))(this))
  {
    goto LABEL_51;
  }

  (*(*this + 1952))(this);
  if (!CCLogStream::shouldLog())
  {
    goto LABEL_51;
  }

LABEL_27:
  v17 = (*(*this + 1952))(this);
  (*(*this + 112))(this, v14);
  CCLogStream::logAlert(v17, "[dk] %s@%d: Error: Unable to set event_log_set_init set %d, size %d: %s\n");
LABEL_51:
  LOBYTE(v42) = 7;
  v43 = 0;
  v30 = *(*(this + 9) + 5408);
  v37 = &v42;
  v38 = 8;
  v31 = AppleBCMWLANCommander::runIOVarSet(v30, "event_log_set_shrink", &v37, 0, 0);
  if (!v31)
  {
    goto LABEL_67;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v32 = (*(*this + 1952))(this);
      v33 = v42;
      v34 = v43;
      v35 = (*(*this + 112))(this, v31);
      CCLogStream::logInfo(v32, "[dk] %s@%d: Error: Unable to deallocate event_log_set_init set %d, size %d: %s\n", "configureEventLogSevenReportedStats", 52907, v33, v34, v35);
    }
  }

  result = 3825172759;
  if (v31 != -469794537)
  {
LABEL_67:
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureEventLogSevenReportedStats(this);
      }
    }

    return v31;
  }

  return result;
}

uint64_t AppleBCMWLANCore::setLteCoexLBTMode(unint64_t this)
{
  v3 = (this + 72);
  v2 = *(this + 72);
  v4 = *(v2 + 5408);
  v7[0] = v2 + 1088;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mws_coex_lbt_mode", v7, 0, 0);
  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::setLteCoexLBTMode(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v5);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateCurrentFWCountryCode(AppleBCMWLANCore *this)
{
  v2 = (*(*this + 88))(this);
  if ((*(*v2 + 136))(v2))
  {
    v11 = this;
    v12 = AppleBCMWLANCore::handleGetCountryCodeAsyncCallBack;
    v13 = 0;
    v3 = *(this + 9);
    v4 = *(v3 + 5408);
    v10[0] = v3 + 6744;
    v10[1] = 4;
    v9 = 262148;
    v5 = AppleBCMWLANCommander::sendIOCtlGet(v4, 83, v10, &v9, &v11, 0);
  }

  else
  {
    v6 = *(this + 9);
    v11 = (v6 + 6744);
    v12 = 0x400040004;
    v5 = AppleBCMWLANCommander::runIOCtlGet(*(v6 + 5408), 83, &kNoTxPayload, &v11, 0);
  }

  v7 = v5;
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateCurrentFWCountryCode(this);
      }
    }
  }

  return v7;
}

uint64_t AppleBCMWLANCore::configureIeFiltering(AppleBCMWLANCore *this)
{
  v2 = IOMallocZeroData();
  v3 = 12;
  if (v2)
  {
    v4 = v2;
    *v2 = 6029313;
    *(v2 + 4) = 12;
    *(v2 + 6) = 4;
    *(v2 + 8) = 64;
    v5 = &kProbeRequestIEs;
    do
    {
      v6 = *v5++;
      v7 = v2 + v3;
      *v7 = v6;
      *(v7 + 2) = 65537;
      *(v7 + 6) = 0;
      v3 += 8;
    }

    while (v3 != 92);
    v8 = *(*(this + 9) + 5408);
    v10[0] = v4;
    v10[1] = 92;
    v3 = AppleBCMWLANCommander::runIOVarSet(v8, "filter_ie", v10, 0, 0);
    if (v3)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureIeFiltering(this);
        }
      }
    }

    IOFreeData();
  }

  return v3;
}

uint64_t AppleBCMWLANCore::initTrafficEngineering(AppleBCMWLANCore *this)
{
  v2 = this + 72;
  *(*(this + 9) + 30092) = 0;
  *(*(this + 9) + 35280) = 0;
  *(*(this + 9) + 35288) = 0;
  *(*(this + 9) + 35289) = 0;
  *(*(this + 9) + 35290) = 0;
  *(*(this + 9) + 30093) = 0;
  *(*(this + 9) + 35292) = 80;
  *(*(this + 9) + 35296) = 160;
  *(*(this + 9) + 35300) = 2;
  IOParseBootArgNumber("wlan.trafficengineering.enabled", (*(this + 9) + 30092), 1);
  IOParseBootArgNumber("wlan.trafficengineering.pktlogenabled", (*v2 + 30093), 1);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::initTrafficEngineering(this);
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::initTrafficEngineering(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setSPMICommonConfig(AppleBCMWLANCore *this, uint64_t a2)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 94);
  if (result)
  {
    memset(v12, 0, sizeof(v12));
    v11 = 0;
    v8 = 262401;
    v9 = 2;
    v10 = a2;
    v5 = *(*(this + 9) + 5408);
    v7[0] = &v8;
    v7[1] = 10;
    result = AppleBCMWLANCommander::runIOVarSet(v5, "spmi:common", v7, 0, 0);
    if (result)
    {
      v6 = result;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setSPMICommonConfig(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v6, a2);
        }
      }

      return CCFaultReporter::reportFault(*(*(this + 9) + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xD113u, "setSPMICommonConfig", 0, v6, "setSPMICommonConfig failed");
    }
  }

  return result;
}

uint64_t *AppleBCMWLANCore::disableC2C(uint64_t *this)
{
  if (*(this[9] + 780) >= 0x11u)
  {
    v1 = this;
    v2 = IOMallocZeroData();
    if (v2)
    {
      v3 = v2;
      v11 = v2;
      *v2 = 0x8000501018000;
      v2[1] = 1;
      if ((*(*v1 + 1952))(v1))
      {
        (*(*v1 + 1952))(v1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::disableC2C(v1);
        }
      }

      v4 = (*(*v1 + 88))(v1);
      if ((*(*v4 + 136))(v4))
      {
        v8 = v1;
        v9 = AppleBCMWLANCore::handleSetC2CCompletion;
        v10 = 0;
        if (AppleBCMWLANCommander::sendIOVarSet(*(v1[9] + 5408), "c2c") && (*(*v1 + 1952))(v1))
        {
          (*(*v1 + 1952))(v1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::disableC2C(v1);
          }
        }
      }

      else
      {
        v5 = *(v1[9] + 5408);
        v8 = v3;
        v9 = 128;
        v6 = AppleBCMWLANCommander::runIOVarSet(v5, "c2c", &v8, 0, 0);
        if (v6)
        {
          v7 = v6;
          if ((*(*v1 + 1952))(v1))
          {
            (*(*v1 + 1952))(v1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::disableC2C(v1, v1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v7, v3 + 6);
            }
          }
        }
      }

      return IOFreeData();
    }

    else
    {
      this = (*(*v1 + 1952))(v1);
      if (this)
      {
        (*(*v1 + 1952))(v1);
        this = CCLogStream::shouldLog();
        if (this)
        {
          return AppleBCMWLANCore::disableC2C(v1);
        }
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::configureScanForwardToAOP(unint64_t this, uint64_t a2)
{
  v10 = 1572865;
  v11 = 8;
  v4 = *(this + 72);
  if (*(v4 + 35673) == a2)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureScanForwardToAOP(this);
      }
    }

    return 0;
  }

  v13 = 6553603;
  v12 = xmmword_1003ADBA0;
  v15 = a2;
  v14 = 2;
  v5 = *(v4 + 5408);
  v9[0] = &v10;
  v9[1] = 30;
  v6 = AppleBCMWLANCommander::runIOVarSet(v5, "spmi_scan_fwd", v9, 0, 0);
  if (!v6)
  {
    *(*(this + 72) + 35673) = a2;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureScanForwardToAOP(this);
      }
    }

    return 0;
  }

  v7 = v6;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureScanForwardToAOP(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v7, a2);
    }
  }

  return v7;
}

uint64_t AppleBCMWLANCore::configureScanParamMods(AppleBCMWLANCore *this)
{
  v2 = IOMallocZeroData();
  if (v2)
  {
    v3 = v2;
    *v2 = 786433;
    *(v2 + 4) = 1;
    *(v2 + 6) = 0xC800C800C80008;
    v4 = *(*(this + 9) + 5408);
    v9 = v3;
    v10 = 16;
    AppleBCMWLANCommander::runIOVarSet(v4, "scanparams_mods", &v9, 0, 0);
    *(v3 + 4) = 2;
    v5 = *(*(this + 9) + 5408);
    v9 = v3;
    v10 = 16;
    AppleBCMWLANCommander::runIOVarSet(v5, "scanparams_mods", &v9, 0, 0);
    *(v3 + 4) = 3;
    v6 = *(*(this + 9) + 5408);
    v9 = v3;
    v10 = 16;
    v7 = AppleBCMWLANCommander::runIOVarSet(v6, "scanparams_mods", &v9, 0, 0);
    IOFreeData();
  }

  else
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureScanParamMods(this);
      }
    }

    return 0;
  }

  return v7;
}

uint64_t AppleBCMWLANCore::configureRxHCRTSCTSEventParams(AppleBCMWLANCore *this, int a2, char a3)
{
  v6 = (*(**(*(this + 9) + 5392) + 368))(*(*(this + 9) + 5392));
  if (v6 == 4399 || v6 == 4388)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureRxHCRTSCTSEventParams(this);
      }
    }

    v8 = IOMallocZeroData();
    if (v8)
    {
      v9 = v8;
      *v8 = 0xC000900100003;
      *(v8 + 8) = 786433;
      *(v8 + 12) = a3;
      *(v8 + 16) = a2;
      v10 = *(*(this + 9) + 5408);
      v15[0] = v9;
      v15[1] = 20;
      v12 = AppleBCMWLANCommander::runIOVarSet(v10, "hc", v15, 0, 0);
      v11 = (*(*this + 1952))(this);
      if (v12)
      {
        if (v11)
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureRxHCRTSCTSEventParams(this);
          }
        }

        IOFreeData();
      }

      else
      {
        if (v11)
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v14 = (*(*this + 1952))(this);
            CCLogStream::logNotice(v14, "[dk] %s@%d: Set RTS CTS hold down params::t %u tot len %d sub_len %d ver %d len %d prog %d hold_down %d!\n", "configureRxHCRTSCTSEventParams", 54713, a2, 16, 12, *(v9 + 4), *(v9 + 6), *(v9 + 12), *(v9 + 16));
          }
        }

        IOFreeData();
        return 0;
      }
    }

    else if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      v12 = 3758097085;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureRxHCRTSCTSEventParams(this);
      }
    }

    else
    {
      return 3758097085;
    }
  }

  else
  {
    v12 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureRxHCRTSCTSEventParams(this);
      }
    }
  }

  return v12;
}

uint64_t AppleBCMWLANCore::setRxLatPrioEnabBitmapAsyncCallback(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setRxLatPrioEnabBitmapAsyncCallback(v3);
      }
    }
  }

  return result;
}

void AppleBCMWLANCore::setMacAddressAsyncCallback(AppleBCMWLANCore *this, int a2, int a3, int a4, ether_addr *a5)
{
  if (a3)
  {
    if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
    {
      AppleBCMWLANCore::setMacAddressAsyncCallback(this);
      if (!a5)
      {
        return;
      }
    }

    else if (!a5)
    {
      return;
    }
  }

  else
  {
    if (!a5)
    {
      return;
    }

    AppleBCMWLANCore::setMacAddressComplete(this, a5);
  }

  IOFree(a5, 6uLL);
}

uint64_t AppleBCMWLANCore::setMacAddressComplete(AppleBCMWLANCore *this, const ether_addr *a2)
{
  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::setMacAddressComplete(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setRxLatPrioEnabBitmap(unint64_t this, int a2)
{
  v13 = a2;
  v3 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  v4 = (*(*this + 88))(this);
  if ((*(*v4 + 136))(v4))
  {
    v10 = this;
    v11 = AppleBCMWLANCore::setRxLatPrioEnabBitmapAsyncCallback;
    v12 = 0;
    v5 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 72) + 5408), "rx_lat_prio_enab");
  }

  else
  {
    v6 = *(*(this + 72) + 5408);
    v10 = &v13;
    v11 = 4;
    v5 = AppleBCMWLANCommander::runIOVarSet(v6, "rx_lat_prio_enab", &v10, 0, 0);
  }

  v7 = v5;
  v8 = (*(*this + 1952))(this);
  if (v7)
  {
    if (v8)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRxLatPrioEnabBitmap(this, v3, &v13, v7);
      }
    }
  }

  else if (v8)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setRxLatPrioEnabBitmap(this);
    }
  }

  return v7;
}

uint64_t AppleBCMWLANCore::utilGetHWCap(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v9[0] = &v10;
  v9[1] = 0x400040004;
  v5 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), a2, a3, v9, 0);
  if (v5 == -469794537 || v5 == 0)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::utilGetHWCap(a1);
      }
    }
  }

  else
  {
    v7 = v5;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::utilGetHWCap(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v7, a2);
      }
    }
  }

  return v10;
}

uint64_t AppleBCMWLANCore::cfgAmpduWinSizeCallback(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::cfgAmpduWinSizeCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::cfgAmpduWindowSize(AppleBCMWLANCore *this)
{
  v21 = 0u;
  v23 = 0;
  v22 = 0u;
  v20 = 2621441;
  v2 = *(*(this + 9) + 30069);
  LOBYTE(v21) = 32;
  if (v2)
  {
    v3 = 528;
  }

  else
  {
    v3 = 576;
  }

  HIWORD(v21) = v3;
  v4 = (*(*this + 88))(this);
  if ((*(*v4 + 136))(v4))
  {
    *v19 = this;
    *&v19[8] = AppleBCMWLANCore::cfgAmpduWinSizeCallback;
    *&v19[16] = 0;
    v5 = *(*(this + 9) + 5408);
    v16 = &v20;
    v17 = 40;
    v6 = AppleBCMWLANCommander::sendIOVarSet(v5, "ampdu_tx_ba_window_cfg");
  }

  else
  {
    v7 = *(*(this + 9) + 5408);
    *v19 = &v20;
    *&v19[8] = 40;
    v6 = AppleBCMWLANCommander::runIOVarSet(v7, "ampdu_tx_ba_window_cfg", v19, 0, 0);
  }

  v8 = v6;
  v9 = (*(*this + 1952))(this);
  if (v8)
  {
    if (v9)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::cfgAmpduWindowSize(this);
      }
    }
  }

  else if (v9)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::cfgAmpduWindowSize(this);
    }
  }

  *&v19[20] = 0;
  *v19 = 1572865;
  *&v19[4] = 0x20uLL;
  if (*(*(this + 9) + 30069))
  {
    v10 = 16;
  }

  else
  {
    v10 = 64;
  }

  *&v19[18] = v10;
  v11 = (*(*this + 88))(this);
  if ((*(*v11 + 136))(v11))
  {
    v16 = this;
    v17 = AppleBCMWLANCore::cfgAmpduWinSizeCallback;
    v18 = 0;
    v12 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "ampdu_rx_ba_window_cfg");
  }

  else
  {
    v13 = *(*(this + 9) + 5408);
    v16 = v19;
    v17 = 24;
    v12 = AppleBCMWLANCommander::runIOVarSet(v13, "ampdu_rx_ba_window_cfg", &v16, 0, 0);
  }

  v14 = v12;
  result = (*(*this + 1952))(this);
  if (v14)
  {
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::cfgAmpduWindowSize(this);
      }
    }
  }

  else if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::cfgAmpduWindowSize(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getBWCapFromHW(AppleBCMWLANCore *this)
{
  if (*(*(this + 9) + 1020) > 1)
  {
    v3 = 1;
    v2[0] = &v3;
    v2[1] = 8;
    return AppleBCMWLANCore::utilGetHWCap(this, "bw_cap", v2);
  }

  else if (AppleBCMWLANCore::utilGetHWCap(this, "mimo_bw_cap", &kNoTxPayload) - 1 >= 2)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t AppleBCMWLANCore::getSupportedPhyModeFromHW(AppleBCMWLANCore *this)
{
  v6 = -1431655766;
  v5[0] = &v6;
  v5[1] = 0x400040004;
  v2 = AppleBCMWLANCommander::runIOCtlGet(*(*(this + 9) + 5408), 39, &kNoTxPayload, v5, 0);
  if (v2 != -469794537 && v2 != 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getSupportedPhyModeFromHW(this);
      }
    }

    return 15;
  }

  return v6;
}

uint64_t AppleBCMWLANCore::updateRSDBCaps(uint64_t result, uint64_t a2)
{
  v2 = result + 72;
  *(*(result + 72) + 1080) = *a2;
  *(*(result + 72) + 1081) = *(a2 + 1);
  *(*(result + 72) + 1082) = *(a2 + 2);
  v3 = *(result + 72);
  if (*(v3 + 1081))
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 4;
    do
    {
      *(v3 + v5 + 1084) = *(v6 + v5);
      if (*(*v2 + 1081) >= 3u)
      {
        result = (*(*v4 + 1952))(v4);
        if (result)
        {
          (*(*v4 + 1952))(v4);
          result = CCLogStream::shouldLog();
          if (result)
          {
            result = AppleBCMWLANCore::updateRSDBCaps(v4);
          }
        }
      }

      ++v5;
      v3 = *v2;
    }

    while (v5 < *(*v2 + 1081));
  }

  return result;
}

BOOL AppleBCMWLANCore::isSdbChip(AppleBCMWLANCore *this, BOOL *a2)
{
  *a2 = 0;
  v2 = *(this + 9);
  v3 = v2[1081];
  if (v3 >= 2 && v2[1084] != v2[1085])
  {
    *a2 = 1;
  }

  return v3 > 1;
}

uint64_t AppleBCMWLANCore::applyRoamingCandidateBoost(AppleBCMWLANCore *this, unsigned __int8 a2, unsigned __int8 a3)
{
  v11 = 516;
  v12 = a3;
  v13 = a2;
  v14 = 513;
  v6 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::applyRoamingCandidateBoost(this, v6, a2, a3);
    }
  }

  v7 = *(*(this + 9) + 5408);
  v10[0] = &v11;
  v10[1] = 8;
  v8 = AppleBCMWLANCommander::runIOVarSet(v7, "join_pref", v10, 0, 0);
  if (v8)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::applyRoamingCandidateBoost(this);
      }
    }
  }

  return v8;
}

uint64_t AppleBCMWLANCore::handleSetC2CCompletion(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleSetC2CCompletion(a1);
      }
    }
  }

  return a3;
}

uint64_t AppleBCMWLANCore::stopARPKeepAlive(AppleBCMWLANCore *this)
{
  v2 = *(*(this + 9) + 5408);
  v5[0] = &v6;
  v5[1] = 8;
  v6 = 0;
  v3 = AppleBCMWLANCommander::runIOVarSet(v2, "keep_alive", v5, 0, 0);
  if (v3)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::stopARPKeepAlive(this);
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANCore::programARPKeepAlive(AppleBCMWLANCore *this, int a2)
{
  *v16 = xmmword_1003AF5BC;
  memset(&v16[2], 170, 56);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::programARPKeepAlive(this);
    }
  }

  if (!IO80211BssManager::isAssociated(*(*(this + 9) + 5432)))
  {
    return 6;
  }

  LODWORD(v16[0]) = a2;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::programARPKeepAlive(this);
    }
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __src[1] = v4;
  *__n = v4;
  __src[0] = v4;
  v5 = *(*(this + 9) + 11288);
  ArpKeepAliveData = IO80211InfraInterface::getArpKeepAliveData();
  if (ArpKeepAliveData)
  {
    v7 = ArpKeepAliveData;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::programARPKeepAlive(this);
      }
    }

    return v7;
  }

  memcpy(v16 + 6, __src, HIDWORD(__n[1]));
  v8 = *(*(this + 9) + 14248);
  IO80211HexdumpIf();
  WORD2(v16[0]) = WORD2(__n[1]);
  v9 = *(*(this + 9) + 5408);
  v13[0] = v16;
  v13[1] = 72;
  v10 = AppleBCMWLANCommander::runIOVarSet(v9, "keep_alive", v13, 0, 0);
  v11 = (*(*this + 1952))(this);
  if (v10)
  {
    if (v11)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::programARPKeepAlive(this);
      }
    }

    return 6;
  }

  if (v11)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::programARPKeepAlive(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::runSetMwsCoexIoVarsAsync_mws_ocl_coex_bitmap(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    v5[0] = a2;
    v5[1] = 10;
    v5[2] = "mws_ocl_override";
    v3 = (*(*a1 + 104))(a1);
    return (*(*v3 + 56))(v3, AppleBCMWLANCore::handleSetCoexIoVarNotificationGated, v5, 0, 0, 0);
  }

  else
  {
    result = (*(*a1 + 1952))(a1);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::runSetMwsCoexIoVarsAsync_mws_ocl_coex_bitmap(a1);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleSetCoexIoVarNotificationGated(unint64_t this, char *a2)
{
  v3 = *(a2 + 2);
  v6 = *a2;
  v7 = *(a2 + 4);
  v8 = *(a2 + 10);
  v9 = *(a2 + 7);
  v4 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 72) + 5408), v3);
  if (v4)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleSetCoexIoVarNotificationGated(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v4, v3);
      }
    }
  }

  return v4;
}

uint64_t ___ZN16AppleBCMWLANCore27setPlatformConfigPropertiesEP12OSDictionary_block_invoke(uint64_t a1, OSMetaClassBase *anObject)
{
  v3 = *(a1 + 32);
  v4 = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
  if (v4)
  {
    v5 = v4;
    if (OSString::getCStringNoCopy(v4))
    {
      CStringNoCopy = OSString::getCStringNoCopy(v5);
      Object = OSDictionary::getObject(*(a1 + 40), v5);
      v15 = gOSDataMetaClass;
      v16[0] = "bcom.roam.enabledenhanced";
      v16[1] = gOSDataMetaClass;
      v16[2] = "bcom.ps.realtime";
      v16[3] = gOSDataMetaClass;
      v16[4] = "wlan.ocl.enabled";
      v16[5] = gOSDataMetaClass;
      v16[6] = "bcom.ps.default";
      v16[7] = gOSDataMetaClass;
      v16[8] = "wlan.enhancedTrgDisc";
      v16[9] = gOSDataMetaClass;
      v16[10] = "bcom.roam.default";
      v16[11] = gOSDataMetaClass;
      v16[12] = "wlan.enhancedlocale.enabled";
      v16[13] = gOSDataMetaClass;
      v16[14] = "wlan.bss.5GHz-preference";
      v16[15] = gOSDataMetaClass;
      v16[16] = "wlan.sdb.profile";
      v16[17] = gOSDataMetaClass;
      v16[18] = "wlan.fast_enterprise_nw.enabled";
      v16[19] = gOSDataMetaClass;
      v16[20] = "wlan.voice_enterprise_nw.enabled";
      v16[21] = gOSDataMetaClass;
      v16[22] = "wlan.wnm.enabled";
      v16[23] = gOSDataMetaClass;
      v16[24] = "wlan.awdl.params";
      v16[25] = gOSDataMetaClass;
      v16[26] = "wlan.dfrts";
      v16[27] = gOSDataMetaClass;
      v16[28] = "bcom.oscar.profilestates";
      v16[29] = gOSDataMetaClass;
      v16[30] = "bcom.btc.params";
      v16[31] = gOSDataMetaClass;
      v16[32] = "bcom.roam.profiles";
      v16[33] = gOSDataMetaClass;
      v16[34] = "wlan.tethering.enabled";
      v16[35] = gOSDataMetaClass;
      v16[36] = "wlan.mimo_ps.enabled";
      v16[37] = gOSDataMetaClass;
      v16[38] = "bcom.roam.enterprise";
      v16[39] = gOSDataMetaClass;
      v16[40] = "bcom.wow.magic-packet";
      v16[41] = gOSBooleanMetaClass;
      v16[42] = "wlan.listen.interval";
      v16[43] = gOSDataMetaClass;
      v16[44] = "wlan.vo.blockack";
      v16[45] = gOSBooleanMetaClass;
      v16[46] = "wlan.llw.tx.ring.size";
      v16[47] = gOSNumberMetaClass;
      v16[48] = "wlan.tx.ring.size";
      v16[49] = gOSNumberMetaClass;
      v16[50] = "wlan.rx.ring.size";
      v16[51] = gOSNumberMetaClass;
      v16[52] = "wlan.tx.submission-queue.size";
      v16[53] = gOSNumberMetaClass;
      v16[54] = "wlan.dfsproxy.enabled";
      v16[55] = gOSDataMetaClass;
      v16[56] = "wlan.tx-power-cap-ctrl";
      v16[57] = gOSDataMetaClass;
      v16[58] = "wlan.psbw.enabled";
      v16[59] = gOSNumberMetaClass;
      v16[60] = "wlan.gpio-tx-envelope-ind";
      v16[61] = gOSBooleanMetaClass;
      v16[62] = "wlan.chip.power.dutycycle";
      v16[63] = gOSDataMetaClass;
      v16[64] = "wlan.lowlatency.enable";
      v16[65] = gOSBooleanMetaClass;
      v16[66] = "wlan.11d.power.constraint.ignored";
      v16[67] = gOSDataMetaClass;
      v16[68] = "wlan.adaptiveroaming.enabled";
      v16[69] = gOSBooleanMetaClass;
      v16[70] = "wlan.dsa.power.boost";
      v16[71] = gOSDataMetaClass;
      v16[72] = "wlan.txsdb.mode";
      v16[73] = gOSNumberMetaClass;
      v16[74] = "wlan.ant-inefficiency-mitigation.enabled";
      v16[75] = gOSBooleanMetaClass;
      v16[76] = "wlan.enterprise.params";
      v16[77] = gOSDataMetaClass;
      v16[78] = "wlan.lpas-allowed";
      v16[79] = gOSDataMetaClass;
      v16[80] = "wlan.aoac-allowed";
      v16[81] = gOSDataMetaClass;
      v16[82] = "wlan.continuous.cpms.power";
      v16[83] = gOSBooleanMetaClass;
      v16[84] = "wlan.setccode.dur.poweroff";
      v16[85] = gOSBooleanMetaClass;
      v16[86] = "wlan.txchain.mode";
      v16[87] = gOSNumberMetaClass;
      v16[88] = "wlan.6GHz.supported";
      v16[89] = gOSBooleanMetaClass;
      v16[90] = "wlan.bss.6GHz-preference";
      v16[91] = gOSDataMetaClass;
      v16[92] = "wlan.is.fdr.cal";
      v16[93] = gOSBooleanMetaClass;
      v16[94] = "wifi-calibration-fdr";
      v16[95] = gOSDataMetaClass;
      v16[96] = "wifi-calibration-gen";
      v16[97] = gOSDataMetaClass;
      v16[98] = "wlan.skywalk.packetpoolsize";
      v16[99] = gOSNumberMetaClass;
      v17 = 0u;
      if (CStringNoCopy && (v8 = Object) != 0 && (v9 = "wlan.autocountry.enabled") != 0)
      {
        v10 = v16;
        while (strncmp(v9, CStringNoCopy, 0x100uLL) || OSMetaClassBase::GetClass(v8) != *(v10 - 1))
        {
          v11 = *v10;
          v10 += 2;
          v9 = v11;
          if (!v11)
          {
            goto LABEL_10;
          }
        }

        if ((*(*v3 + 1952))(v3))
        {
          (*(*v3 + 1952))(v3);
          if (CCLogStream::shouldLog())
          {
            ___ZN16AppleBCMWLANCore27setPlatformConfigPropertiesEP12OSDictionary_block_invoke_cold_1(v3);
          }
        }

        v12 = (*(*(*(v3[9] + 5392) + 48) + 288))();
        v13 = OSDictionary::getObject(*(a1 + 40), v5);
        setPropertyHelper(v12, v5, v13);
      }

      else
      {
LABEL_10:
        if ((*(*v3 + 1952))(v3))
        {
          (*(*v3 + 1952))(v3);
          if (CCLogStream::shouldLog())
          {
            ___ZN16AppleBCMWLANCore27setPlatformConfigPropertiesEP12OSDictionary_block_invoke_cold_2(v3);
          }
        }
      }
    }

    else if ((*(*v3 + 1952))(v3))
    {
      (*(*v3 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        ___ZN16AppleBCMWLANCore27setPlatformConfigPropertiesEP12OSDictionary_block_invoke_cold_3(v3);
      }
    }
  }

  else if ((*(*v3 + 1952))(v3))
  {
    (*(*v3 + 1952))(v3);
    if (CCLogStream::shouldLog())
    {
      ___ZN16AppleBCMWLANCore27setPlatformConfigPropertiesEP12OSDictionary_block_invoke_cold_4(v3);
    }
  }

  return 0;
}

__n128 AppleBCMWLANCore::refreshLQMLogs(uint64_t a1, unsigned int a2, __int128 *a3)
{
  v3 = *(a1 + 72);
  if ((*(v3 + 964) - 1) > 1)
  {
    v5 = v3 + (a2 << 8) + 31181;
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[3];
    *(v5 + 32) = a3[2];
    *(v5 + 48) = v8;
    *v5 = v6;
    *(v5 + 16) = v7;
    v9 = a3[4];
    v10 = a3[5];
    v11 = a3[7];
    *(v5 + 96) = a3[6];
    *(v5 + 112) = v11;
    *(v5 + 64) = v9;
    *(v5 + 80) = v10;
    v12 = a3[8];
    v13 = a3[9];
    v14 = a3[11];
    *(v5 + 160) = a3[10];
    *(v5 + 176) = v14;
    *(v5 + 128) = v12;
    *(v5 + 144) = v13;
    result = a3[12];
    v15 = a3[13];
    v16 = a3[15];
    *(v5 + 224) = a3[14];
    *(v5 + 240) = v16;
    *(v5 + 192) = result;
    *(v5 + 208) = v15;
  }

  else
  {
    io80211_os_log();
  }

  return result;
}

uint64_t AppleBCMWLANCore::setPropertyIoctlGated(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *(a1[9] + 31059) = 1;
  result = (*(*a1 + 1936))(a1, v3);
  *(a1[9] + 31059) = 0;
  return result;
}

uint64_t AppleBCMWLANCore::setSET_PROPERTY(void *a1, uint64_t a2)
{
  if ((*(**(a1[9] + 31064) + 144))(*(a1[9] + 31064)))
  {
    v4 = *(a2 + 8);
    *(a1[9] + 31059) = 1;
    result = (*(*a1 + 1936))(a1, v4);
    *(a1[9] + 31059) = 0;
  }

  else
  {
    v6 = *(*(*(*a1 + 104))(a1) + 56);

    return v6();
  }

  return result;
}

uint64_t AppleBCMWLANCore::setProperties(AppleBCMWLANCore *this, OSObject *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gOSDictionaryMetaClass);
  Pid = 0;
  v296 = xmmword_1003AF8FC;
  v297 = unk_1003AF90C;
  v298 = xmmword_1003AF91C;
  v299 = unk_1003AF92C;
  *v292 = *"<unknown>";
  v293 = unk_1003AF8CC;
  v294 = xmmword_1003AF8DC;
  v295 = unk_1003AF8EC;
  if (IO80211ThreadProcessInfo::getProcessPid(&Pid, v4) || IO80211ThreadProcessInfo::getProcessName(v292, 0x80, v5))
  {
    Pid = IO80211Controller::getPid(this);
    IO80211Controller::getProcessName(this, v292, 0x80uLL);
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v242 = (*(*this + 1952))(this);
      CCLogStream::logInfo(v242, "[dk] %s@%d:setProperties() entitled !!! pid[%d]'%s'\n", "setProperties", 11049, Pid, v292);
    }
  }

  v7 = this + 72;
  v6 = *(this + 9);
  if (*(v6 + 31059))
  {
LABEL_8:
    if (v3)
    {
      goto LABEL_9;
    }

LABEL_61:
    LODWORD(v30) = 0;
    goto LABEL_62;
  }

  if ((*(**(v6 + 31064) + 144))(*(v6 + 31064)))
  {
    CCFaultReporter::reportFault(*(*v7 + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x2B32u, "setProperties", 0, -469793473, 0);
    if (!v3)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (!(*(*this + 1952))(this))
    {
      goto LABEL_8;
    }

    (*(*this + 1952))(this);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_8;
    }

    AppleBCMWLANCore::setProperties(this);
    if (!v3)
    {
      goto LABEL_61;
    }
  }

LABEL_9:
  Object = OSDictionary::getObject(v3, "WiFiMSFCal");
  if (Object)
  {
    v9 = OSMetaClassBase::safeMetaCast(Object, gOSDataMetaClass);
    if (v9)
    {
      v10 = v9;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }

      v11 = (*(*(*(*(this + 9) + 5392) + 48) + 288))();
      setPropertyHelper(v11, "wifi-calibration-msf", v10);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v12 = OSDictionary::getObject(v3, "WiFiFdrCal");
  if (v12)
  {
    v13 = OSMetaClassBase::safeMetaCast(v12, gOSDataMetaClass);
    if (v13)
    {
      v14 = v13;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }

      v15 = (*(*(*(*(this + 9) + 5392) + 48) + 288))();
      setPropertyHelper(v15, "wifi-calibration-fdr", v14);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v16 = OSDictionary::getObject(v3, "WiFiGenericCal");
  if (v16)
  {
    v17 = OSMetaClassBase::safeMetaCast(v16, gOSDataMetaClass);
    if (v17)
    {
      v18 = v17;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }

      v19 = (*(*(*(*(this + 9) + 5392) + 48) + 288))();
      setPropertyHelper(v19, "wifi-calibration-gen", v18);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v20 = OSDictionary::getObject(v3, "WiFiMSFSource");
  if (v20)
  {
    v21 = v20;
    if (OSMetaClassBase::safeMetaCast(v20, gOSStringMetaClass))
    {
      v22 = OSMetaClassBase::safeMetaCast(v21, gOSStringMetaClass);
      v23 = OSString::withString(v22);
      if (v23)
      {
        v24 = v23;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setProperties(this);
          }
        }

        v25 = (*(*(*(*(this + 9) + 5392) + 48) + 288))();
        setPropertyHelper(v25, "wlan.msf.source", v24);
        (v24->release)(v24);
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setProperties(this);
          }
        }
      }
    }
  }

  v26 = OSDictionary::getObject(v3, "PlatformConfig");
  if (v26)
  {
    v27 = OSMetaClassBase::safeMetaCast(v26, gOSDictionaryMetaClass);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setProperties(this);
      }
    }

    AppleBCMWLANCore::setPlatformConfigProperties(this, v27);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setProperties(this);
      }
    }
  }

  v28 = OSDictionary::getObject(v3, "MWS_BT_TRAFFIC_IMPACT_SCAN_OFFLOAD");
  if (v28)
  {
    *(*(this + 9) + 31089) = OSMetaClassBase::safeMetaCast(v28, gOSBooleanMetaClass) == kOSBooleanTrue;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setProperties(this);
      }
    }
  }

  v29 = OSDictionary::getObject(v3, "MWS_BT_TRAFFIC_IMPACT_BCN_OFFLOAD");
  if (v29)
  {
    *(*(this + 9) + 31088) = OSMetaClassBase::safeMetaCast(v29, gOSBooleanMetaClass) == kOSBooleanTrue;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setProperties(this);
      }
    }
  }

  if (AppleBCMWLANCore::isRejectingCommands(this))
  {
    return 3758097112;
  }

  v48 = OSDictionary::getObject(v3, "MWS_Coex_Enabled_Channels");
  if (v48)
  {
    v49 = v48;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setProperties(this);
      }
    }

    AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap(this, v49, 0);
  }

  v50 = OSDictionary::getObject(v3, "MWS_Aggressor_ChannelParameters");
  if (v50)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_aggCh_params(this, v50, 0);
  }

  v51 = OSDictionary::getObject(v3, "MWS_WCI_Signaling_Config");
  if (v51)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config(this, v51, 0);
  }

  v52 = OSDictionary::getObject(v3, "MWS_WLAN_RX_PRI_THRESHOLD");
  if (v52)
  {
    AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wlanrxpri_threshold(this, v52, 0);
  }

  v53 = OSDictionary::getObject(v3, "IO80211InterfaceMwsCoexBitmapV2");
  if (v53)
  {
    v54 = v53;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setProperties(this);
      }
    }

    v55 = OSMetaClassBase::safeMetaCast(v54, gOSDictionaryMetaClass);
    AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap_V2(this, v55, 0);
  }

  v56 = OSDictionary::getObject(v3, "MWS_RX_PRIO_TIMER");
  if (v56)
  {
    v57 = v56;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setProperties(this);
      }
    }

    AppleBCMWLANCore::setMWSCoexIoVarsRxPrioTimer(this, v57, 0);
  }

  v58 = OSDictionary::getObject(v3, "MWS_PWR_LIMIT_TIMER");
  if (v58)
  {
    v59 = v58;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setProperties(this);
      }
    }

    AppleBCMWLANCore::setMWSCoexIoVarsPwrLimitTimer(this, v59, 0);
  }

  v60 = OSDictionary::getObject(v3, "MWS_SWDIV_RX_POLICY");
  if (v60 && (v61 = OSMetaClassBase::safeMetaCast(v60, gOSNumberMetaClass)) != 0)
  {
    *(*(this + 9) + 10392) = OSNumber::unsigned32BitValue(v61);
    v62 = (*(*this + 104))(this);
    v30 = (*(*v62 + 56))(v62, *(*this + 1352), 0, 0, 0, 0);
  }

  else
  {
    v30 = 0;
  }

  v76 = OSDictionary::getObject(v3, "MWS_SWDIV_TX_POLICY");
  if (v76)
  {
    v77 = OSMetaClassBase::safeMetaCast(v76, gOSNumberMetaClass);
    if (v77)
    {
      *(*(this + 9) + 10396) = OSNumber::unsigned32BitValue(v77);
      v78 = (*(*this + 104))(this);
      v30 = (*(*v78 + 56))(v78, *(*this + 1360), 0, 0, 0, 0);
    }
  }

  v79 = OSDictionary::getObject(v3, "MWS_SWDIV_CELL_POLICY");
  if (v79)
  {
    v80 = OSMetaClassBase::safeMetaCast(v79, gOSNumberMetaClass);
    if (v80)
    {
      *(*(this + 9) + 10400) = OSNumber::unsigned32BitValue(v80);
      v81 = (*(*this + 104))(this);
      v30 = (*(*v81 + 56))(v81, *(*this + 1368), 0, 0, 0, 0);
    }
  }

  v82 = OSDictionary::getObject(v3, "MWS_SCAN_FREQ");
  if (v82)
  {
    v83 = OSMetaClassBase::safeMetaCast(v82, gOSDictionaryMetaClass);
    if (v83)
    {
      v84 = v83;
      v85 = OSDictionary::getObject(v83, "MWS_SCAN_FREQ_INDEX");
      v86 = OSMetaClassBase::safeMetaCast(v85, gOSNumberMetaClass);
      v87 = OSDictionary::getObject(v84, "MWS_SCAN_FREQ_CHANNELS");
      v88 = OSMetaClassBase::safeMetaCast(v87, gOSArrayMetaClass);
      if (v86)
      {
        v89 = v88;
        if (v88)
        {
          v90 = *v7 + 10412;
          *(v90 + 8) = 0;
          *v90 = 0;
          *(*v7 + 10412) = OSNumber::unsigned32BitValue(v86);
          v91 = (v89->getCount)(v89);
          if (v91 >= 1)
          {
            v92 = v91;
            for (i = 0; i != v92; ++i)
            {
              v94 = OSArray::getObject(v89, i);
              v95 = OSMetaClassBase::safeMetaCast(v94, gOSNumberMetaClass);
              if (v95)
              {
                v96 = OSNumber::unsigned32BitValue(v95);
                if (v96 > 0xE)
                {
                  if (v96 - 34 > 0x44)
                  {
                    if (v96 - 104 > 0x2F)
                    {
                      if (v96 - 153 > 0xC)
                      {
                        if ((*(*this + 1952))(this))
                        {
                          (*(*this + 1952))(this);
                          if (CCLogStream::shouldLog())
                          {
                            AppleBCMWLANCore::setProperties(this);
                          }
                        }

                        continue;
                      }

                      v105 = 5;
                      v106 = &byte_1003AF645;
                      while (v96 != *(v106 - 1))
                      {
                        v106 += 2;
                        if (!--v105)
                        {
                          goto LABEL_147;
                        }
                      }

                      v108 = *v106;
                      if (v108 > 0xF)
                      {
                        continue;
                      }

                      v102 = 1 << v108;
                      v103 = *v7;
                      v104 = 10420;
                    }

                    else
                    {
                      v99 = 16;
                      v100 = &byte_1003AF625;
                      while (v96 != *(v100 - 1))
                      {
                        v100 += 2;
                        if (!--v99)
                        {
                          goto LABEL_147;
                        }
                      }

                      v107 = *v100;
                      if (v107 > 0xF)
                      {
                        continue;
                      }

                      v102 = 1 << v107;
                      v103 = *v7;
                      v104 = 10418;
                    }
                  }

                  else
                  {
                    v97 = 16;
                    v98 = &byte_1003AF605;
                    while (v96 != *(v98 - 1))
                    {
                      v98 += 2;
                      if (!--v97)
                      {
                        goto LABEL_147;
                      }
                    }

                    v101 = *v98;
                    if (v101 > 0xF)
                    {
                      continue;
                    }

                    v102 = 1 << v101;
                    v103 = *v7;
                    v104 = 10416;
                  }

                  *(v103 + v104) |= v102;
                }

                else
                {
                  *(*v7 + 10414) |= 1 << v96;
                }
              }

LABEL_147:
              ;
            }
          }

          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setProperties(this);
            }
          }

          v119 = (*(*this + 104))(this);
          v30 = (*(*v119 + 56))(v119, *(*this + 1384), *(this + 9) + 10428, 0, 0, 0);
        }
      }
    }

    else if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setProperties(this);
      }
    }
  }

  v120 = OSDictionary::getObject(v3, "MWS_SET_LTE_TDD_MODE");
  if (v120)
  {
    v121 = OSMetaClassBase::safeMetaCast(v120, gOSArrayMetaClass);
    if (v121)
    {
      v122 = v121;
      v123 = (v121->__vftable[1].Dispatch)(v121);
      v124 = v123;
      if (v123 > 0x20)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setProperties(this);
          }
        }
      }

      else
      {
        *(*v7 + 10424) = 0;
        if (v123)
        {
          v125 = 0;
          do
          {
            v126 = OSArray::getObject(v122, v125);
            v127 = OSMetaClassBase::safeMetaCast(v126, gOSNumberMetaClass);
            if (v127)
            {
              v128 = v127;
              if (OSNumber::unsigned32BitValue(v127))
              {
                *(*v7 + 10424) |= 1 << (OSNumber::unsigned32BitValue(v128) - 1);
              }
            }

            ++v125;
          }

          while (v124 != v125);
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setProperties(this);
          }
        }

        v129 = (*(*this + 104))(this);
        v30 = (*(*v129 + 56))(v129, *(*this + 1392), *(this + 9) + 10424, 0, 0, 0);
      }
    }
  }

  v130 = OSDictionary::getObject(v3, "MWS_ANTENNA_SELECTION");
  if (v130)
  {
    v131 = OSMetaClassBase::safeMetaCast(v130, gOSArrayMetaClass);
    if (v131)
    {
      v132 = v131;
      *(*v7 + 10428) = 0;
      if ((v131->__vftable[1].Dispatch)(v131) == 4)
      {
        v133 = 0;
        v134 = 10428;
        do
        {
          v135 = OSArray::getObject(v132, v133);
          v136 = OSMetaClassBase::safeMetaCast(v135, gOSNumberMetaClass);
          if (v136)
          {
            v137 = v136;
            if (OSNumber::unsigned16BitValue(v136))
            {
              *(*v7 + v134) = OSNumber::unsigned16BitValue(v137);
            }
          }

          ++v133;
          v134 += 2;
        }

        while (v133 != 4);
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setProperties(this);
          }
        }

        v138 = (*(*this + 104))(this);
        v30 = (*(*v138 + 56))(v138, *(*this + 1400), *(this + 9) + 10428, 0, 0, 0);
      }

      else if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v139 = OSDictionary::getObject(v3, "MWS_ANTENNA_SELECTION_V2");
  if (v139)
  {
    v140 = OSMetaClassBase::safeMetaCast(v139, gOSArrayMetaClass);
    if (v140)
    {
      v141 = v140;
      v142 = (*v7 + 10436);
      *v142 = 0u;
      v142[1] = 0u;
      if ((v140->__vftable[1].Dispatch)(v140) == 16)
      {
        v143 = 0;
        v144 = 10436;
        do
        {
          v145 = OSArray::getObject(v141, v143);
          v146 = OSMetaClassBase::safeMetaCast(v145, gOSNumberMetaClass);
          if (v146)
          {
            v147 = v146;
            if (OSNumber::unsigned16BitValue(v146))
            {
              *(*v7 + v144) = OSNumber::unsigned16BitValue(v147);
            }
          }

          ++v143;
          v144 += 2;
        }

        while (v143 != 16);
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setProperties(this);
          }
        }

        v148 = (*(*this + 104))(this);
        v30 = (*(*v148 + 56))(v148, *(*this + 1408), *(this + 9) + 10436, 0, 0, 0);
      }

      else if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v149 = OSDictionary::getObject(v3, "MWS_WLANRX_PROT");
  if (v149)
  {
    v150 = OSMetaClassBase::safeMetaCast(v149, gOSNumberMetaClass);
    if (v150)
    {
      *(*(this + 9) + 10488) = OSNumber::unsigned32BitValue(v150);
      v151 = (*(*this + 104))(this);
      v30 = (*(*v151 + 56))(v151, *(*this + 1424), 0, 0, 0, 0);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v152 = OSDictionary::getObject(v3, "MWS_WCI2_TXIND");
  if (v152)
  {
    v153 = OSMetaClassBase::safeMetaCast(v152, gOSNumberMetaClass);
    if (v153)
    {
      *(*(this + 9) + 10492) = OSNumber::unsigned32BitValue(v153);
      v154 = (*(*this + 104))(this);
      v30 = (*(*v154 + 56))(v154, *(*this + 1432), 0, 0, 0, 0);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v155 = OSDictionary::getObject(v3, "MWS_SCANJOIN_PROT");
  if (v155)
  {
    v156 = OSMetaClassBase::safeMetaCast(v155, gOSNumberMetaClass);
    if (v156)
    {
      *(*(this + 9) + 10496) = OSNumber::unsigned32BitValue(v156);
      v157 = (*(*this + 104))(this);
      v30 = (*(*v157 + 56))(v157, *(*this + 1440), 0, 0, 0, 0);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v158 = OSDictionary::getObject(v3, "MWS_AUTOPROT_PARAMS");
  if (v158)
  {
    v159 = OSMetaClassBase::safeMetaCast(v158, gOSDictionaryMetaClass);
    if (v159)
    {
      v160 = v159;
      v161 = OSDictionary::getObject(v159, "MWS_AUTOPROT_PARAMS_WEIGHT");
      v162 = OSMetaClassBase::safeMetaCast(v161, gOSNumberMetaClass);
      v163 = OSDictionary::getObject(v160, "MWS_AUTOPROT_PARAMS_THRESH");
      v164 = OSMetaClassBase::safeMetaCast(v163, gOSNumberMetaClass);
      if (v162)
      {
        v165 = v164;
        if (v164)
        {
          *(*(this + 9) + 10500) = OSNumber::unsigned32BitValue(v162);
          *(*(this + 9) + 10504) = OSNumber::unsigned32BitValue(v165);
          v166 = (*(*this + 104))(this);
          v30 = (*(*v166 + 56))(v166, *(*this + 1448), 0, 0, 0, 0);
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setProperties(this);
            }
          }
        }
      }
    }
  }

  v167 = OSDictionary::getObject(v3, "IO80211InterfaceMwsNGCCoexBitmap");
  if (v167)
  {
    v168 = v167;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setProperties(this);
      }
    }

    v169 = OSMetaClassBase::safeMetaCast(v168, gOSDictionaryMetaClass);
    if (v169)
    {
      v170 = v169;
      v171 = OSDictionary::getObject(v169, "IO80211InterfaceMwsNGCCoex5GHzBitmapLow");
      if (v171)
      {
        v172 = OSMetaClassBase::safeMetaCast(v171, gOSNumberMetaClass);
        *(*v7 + 10528) = OSNumber::unsigned32BitValue(v172);
      }

      v173 = OSDictionary::getObject(v170, "IO80211InterfaceMwsNGCCoex5GHzBitmapMid");
      if (v173)
      {
        v174 = OSMetaClassBase::safeMetaCast(v173, gOSNumberMetaClass);
        *(*v7 + 10532) = OSNumber::unsigned32BitValue(v174);
      }

      v175 = OSDictionary::getObject(v170, "IO80211InterfaceMwsNGCCoex5GHzBitmapHi");
      if (v175)
      {
        v176 = OSMetaClassBase::safeMetaCast(v175, gOSNumberMetaClass);
        *(*v7 + 10536) = OSNumber::unsigned32BitValue(v176);
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }

      v177 = (*(*this + 104))(this);
      v30 = (*(*v177 + 56))(v177, *(*this + 1520), *(this + 9) + 10528, 0, 0, 0);
    }
  }

  v178 = OSDictionary::getObject(v3, "MWS_NGC_TIMER_GRANULARITY");
  if (v178)
  {
    v179 = OSMetaClassBase::safeMetaCast(v178, gOSNumberMetaClass);
    if (v179)
    {
      *(*(this + 9) + 10700) = OSNumber::unsigned32BitValue(v179);
      v180 = (*(*this + 104))(this);
      v30 = (*(*v180 + 56))(v180, *(*this + 1528), 0, 0, 0, 0);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v181 = OSDictionary::getObject(v3, "MWS_NGC_ACTIVITY_LEVEL_THRESHOLDS");
  if (v181)
  {
    v182 = OSMetaClassBase::safeMetaCast(v181, gOSNumberMetaClass);
    if (v182)
    {
      *(*(this + 9) + 10696) = OSNumber::unsigned32BitValue(v182);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }

      v183 = (*(*this + 104))(this);
      v30 = (*(*v183 + 56))(v183, *(*this + 1536), *(this + 9) + 10696, 0, 0, 0);
    }
  }

  v184 = OSDictionary::getObject(v3, "IO80211MWS2GWiFiType7Bitmap");
  if (v184)
  {
    v185 = OSMetaClassBase::safeMetaCast(v184, gOSNumberMetaClass);
    if (v185)
    {
      *(*(this + 9) + 31084) = OSNumber::unsigned32BitValue(v185);
      v186 = (*(*this + 104))(this);
      v30 = (*(*v186 + 56))(v186, *(*this + 1544), *(this + 9) + 31084, 0, 0, 0);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v187 = OSDictionary::getObject(v3, "MWS_Aggressor_FrameConfig");
  if (v187)
  {
    memset(v291, 170, 28);
    v188 = OSMetaClassBase::safeMetaCast(v187, gOSDictionaryMetaClass);
    if (v188)
    {
      v189 = v188;
      v190 = OSDictionary::getObject(v188, "MWS_Aggressor_Frame_Duration");
      v191 = OSMetaClassBase::safeMetaCast(v190, gOSNumberMetaClass);
      if (!v191)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setProperties(this);
          }
        }

        return v30;
      }

      *v291 = OSNumber::unsigned16BitValue(v191);
      v192 = OSDictionary::getObject(v189, "MWS_Aggressor_Frame_SyncAssertOffset");
      v193 = OSMetaClassBase::safeMetaCast(v192, gOSNumberMetaClass);
      if (!v193)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setProperties(this);
          }
        }

        return v30;
      }

      *&v291[2] = OSNumber::unsigned16BitValue(v193);
      v194 = OSDictionary::getObject(v189, "MWS_Aggressor_Frame_SyncAssertJitter");
      v195 = OSMetaClassBase::safeMetaCast(v194, gOSNumberMetaClass);
      if (!v195)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setProperties(this);
          }
        }

        return v30;
      }

      *&v291[4] = OSNumber::unsigned16BitValue(v195);
      v196 = OSDictionary::getObject(v189, "MWS_Aggressor_Frame_NumPeriods");
      v197 = OSMetaClassBase::safeMetaCast(v196, gOSNumberMetaClass);
      if (!v197)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setProperties(this);
          }
        }

        return v30;
      }

      v198 = OSNumber::unsigned8BitValue(v197);
      v291[27] = v198;
      if (v198 >= 8)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setProperties(this);
          }
        }

        return v30;
      }

      v199 = OSDictionary::getObject(v189, "MWS_Aggressor_Frame_PeriodDuration");
      v200 = OSMetaClassBase::safeMetaCast(v199, gOSArrayMetaClass);
      if (!v200)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setProperties(this);
          }
        }

        return v30;
      }

      v201 = v200;
      v202 = (v200->__vftable[1].Dispatch)(v200);
      if (v202 > 7 || v202 != v291[27])
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v213 = (*(*this + 1952))(this);
            CCLogStream::logAlert(v213, "[dk] %s@%d:Error reading APPLE80211KEY_MWS_AGG_FRAME_PERIOD_DURATION is doesn't match %d(expected params->num_periods %d, max %d)\n");
          }
        }

        return v30;
      }

      if (v202)
      {
        v203 = 0;
        v204 = v202;
        do
        {
          v205 = OSArray::getObject(v201, v203);
          v206 = OSMetaClassBase::safeMetaCast(v205, gOSNumberMetaClass);
          if (v206)
          {
            *&v291[2 * v203 + 6] = OSNumber::unsigned16BitValue(v206);
          }

          ++v203;
        }

        while (v204 != v203);
      }

      v207 = OSDictionary::getObject(v189, "MWS_Aggressor_Frame_PeriodType");
      v208 = OSMetaClassBase::safeMetaCast(v207, gOSArrayMetaClass);
      if (!v208)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setProperties(this);
          }
        }

        return v30;
      }

      v209 = v208;
      v210 = (v208->__vftable[1].Dispatch)(v208);
      if (v210 > 7 || v210 != v291[27])
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v212 = (*(*this + 1952))(this);
            CCLogStream::logAlert(v212, "[dk] %s@%d:Error reading APPLE80211KEY_MWS_AGG_FRAME_PERIOD_TYPE is doesn't match %d(expected params->num_periods %d, max %d)\n");
          }
        }

        return v30;
      }

      if (v210)
      {
        v214 = 0;
        v215 = v210;
        do
        {
          v216 = OSArray::getObject(v209, v214);
          v217 = OSMetaClassBase::safeMetaCast(v216, gOSNumberMetaClass);
          if (v217)
          {
            v291[v214 + 20] = OSNumber::unsigned8BitValue(v217);
          }

          ++v214;
        }

        while (v215 != v214);
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }

      v218 = (*(*this + 104))(this);
      LODWORD(v30) = (*(*v218 + 56))(v218, *(*this + 1456), v291, 0, 0, 0);
    }
  }

  if ((AppleBCMWLANCore::isOCLEnabled(this) & 1) != 0 || AppleBCMWLANCore::featureFlagIsBitSet(this, 80))
  {
    v219 = OSDictionary::getObject(v3, "MWS_OCL_PARAMS");
    if (v219)
    {
      v220 = v219;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }

      v221 = *(*v7 + 5520);
      if (v221)
      {
        AppleBCMWLANPowerManager::setMWSCoexIoVarsAsync_mws_ocl_coex_bitmap(v221, v220, 0);
      }
    }
  }

  v222 = OSDictionary::getObject(v3, "MWS_WCI2_TX_ENVELOPE_IND_2G");
  if (v222)
  {
    v223 = OSMetaClassBase::safeMetaCast(v222, gOSNumberMetaClass);
    if (v223)
    {
      *(*(this + 9) + 10508) = OSNumber::unsigned16BitValue(v223) == 1;
      v224 = (*(*this + 104))(this);
      LODWORD(v30) = (*(*v224 + 56))(v224, *(*this + 1464), 0, 0, 0, 0);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v225 = OSDictionary::getObject(v3, "MWS_TX_ENVELOPE_IDLE_TIMER");
  if (v225)
  {
    v226 = OSMetaClassBase::safeMetaCast(v225, gOSNumberMetaClass);
    if (v226)
    {
      *(*(this + 9) + 10510) = OSNumber::unsigned16BitValue(v226);
      v227 = (*(*this + 104))(this);
      LODWORD(v30) = (*(*v227 + 56))(v227, *(*this + 1472), 0, 0, 0, 0);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v228 = OSDictionary::getObject(v3, "MWS_WCI2_TXIND_5G");
  if (v228)
  {
    v229 = OSMetaClassBase::safeMetaCast(v228, gOSNumberMetaClass);
    if (v229)
    {
      *(*(this + 9) + 10512) = OSNumber::unsigned16BitValue(v229) == 1;
      v230 = (*(*this + 104))(this);
      LODWORD(v30) = (*(*v230 + 56))(v230, *(*this + 1480), 0, 0, 0, 0);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v231 = OSDictionary::getObject(v3, "MWS_WCI2_TXDUR_THRESH");
  if (v231)
  {
    v232 = OSMetaClassBase::safeMetaCast(v231, gOSNumberMetaClass);
    if (v232)
    {
      *(*(this + 9) + 10514) = OSNumber::unsigned16BitValue(v232);
      v233 = (*(*this + 104))(this);
      LODWORD(v30) = (*(*v233 + 56))(v233, *(*this + 1488), 0, 0, 0, 0);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v234 = OSDictionary::getObject(v3, "MWS_ACTIVE_SCAN_THROTTLE");
  if (v234)
  {
    v235 = OSMetaClassBase::safeMetaCast(v234, gOSNumberMetaClass);
    if (v235)
    {
      *(*(this + 9) + 10516) = OSNumber::unsigned32BitValue(v235);
      v236 = (*(*this + 104))(this);
      LODWORD(v30) = (*(*v236 + 56))(v236, *(*this + 1496), 0, 0, 0, 0);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v237 = OSDictionary::getObject(v3, "MWS_ACTIVE_DWELL_TIME");
  if (v237)
  {
    v238 = OSMetaClassBase::safeMetaCast(v237, gOSNumberMetaClass);
    if (v238)
    {
      *(*(this + 9) + 10520) = OSNumber::unsigned32BitValue(v238);
      v239 = *(this + 9);
      v240 = *(v239 + 10520);
      if (v240 >= 0x78)
      {
        v240 = 120;
      }

      *(v239 + 10520) = v240;
      v241 = (*(*this + 104))(this);
      LODWORD(v30) = (*(*v241 + 56))(v241, *(*this + 1504), 0, 0, 0, 0);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

LABEL_62:
  v31 = OSDictionary::getObject(v3, "MWS_RC2_COEX_MODE");
  if (v31)
  {
    v32 = OSMetaClassBase::safeMetaCast(v31, gOSNumberMetaClass);
    if (v32)
    {
      *(*(this + 9) + 10712) = OSNumber::unsigned32BitValue(v32);
      v33 = (*(*this + 104))(this);
      LODWORD(v30) = (*(*v33 + 56))(v33, *(*this + 1624), 0, 0, 0, 0);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v34 = OSDictionary::getObject(v3, "MWS_RC2_PM_PROTECTION_MODE");
  if (v34)
  {
    v35 = OSMetaClassBase::safeMetaCast(v34, gOSNumberMetaClass);
    if (v35)
    {
      *(*(this + 9) + 10716) = OSNumber::unsigned32BitValue(v35);
      v36 = (*(*this + 104))(this);
      LODWORD(v30) = (*(*v36 + 56))(v36, *(*this + 1632), 0, 0, 0, 0);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

  v37 = OSDictionary::getObject(v3, "MWS_RC2_WIFI_TIMING_PARAM_INFO");
  if (v37)
  {
    v38 = OSMetaClassBase::safeMetaCast(v37, gOSDictionaryMetaClass);
    if (v38)
    {
      v39 = v38;
      v40 = OSDictionary::getObject(v38, "MWS_RC2_GPIO_PROCESSING_DELAY");
      v41 = OSMetaClassBase::safeMetaCast(v40, gOSNumberMetaClass);
      v42 = OSDictionary::getObject(v39, "MWS_RC2_COEX_GRANT_DURATION");
      v43 = OSMetaClassBase::safeMetaCast(v42, gOSNumberMetaClass);
      v44 = OSDictionary::getObject(v39, "MWS_RC2_COEX_GRANT_INTERVAL");
      v45 = OSMetaClassBase::safeMetaCast(v44, gOSNumberMetaClass);
      if (v41)
      {
        if (v43)
        {
          v46 = v45;
          if (v45)
          {
            *(*(this + 9) + 10722) = OSNumber::unsigned8BitValue(v41);
            *(*(this + 9) + 10723) = OSNumber::unsigned8BitValue(v43);
            *(*(this + 9) + 10724) = OSNumber::unsigned8BitValue(v46);
            v47 = (*(*this + 104))(this);
            LODWORD(v30) = (*(*v47 + 56))(v47, *(*this + 1640), 0, 0, 0, 0);
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::setProperties(this);
              }
            }
          }
        }
      }
    }
  }

  v63 = OSDictionary::getObject(v3, "MWS_RC1_COEX_PARAM_INFO");
  if (v63)
  {
    v64 = OSMetaClassBase::safeMetaCast(v63, gOSDictionaryMetaClass);
    if (v64)
    {
      v65 = v64;
      v66 = OSDictionary::getObject(v64, "MWS_RC1_COEX_MODE_CHANGED");
      if (v66)
      {
        v67 = OSMetaClassBase::safeMetaCast(v66, gOSNumberMetaClass);
        if (v67)
        {
          if (OSNumber::unsigned8BitValue(v67))
          {
            v68 = OSDictionary::getObject(v65, "MWS_RC1_COEX_MODE");
            if (v68)
            {
              v69 = OSMetaClassBase::safeMetaCast(v68, gOSNumberMetaClass);
              if (v69)
              {
                *(*(this + 9) + 10704) = OSNumber::unsigned32BitValue(v69);
                v70 = (*(*this + 104))(this);
                LODWORD(v30) = (*(*v70 + 56))(v70, *(*this + 1616), 0, 0, 0, 0);
                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::setProperties(this);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v71 = OSDictionary::getObject(v3, "MWS_SET_WIFI_BT_AIRTIME_POLICY");
  if (v71)
  {
    v72 = OSMetaClassBase::safeMetaCast(v71, gOSNumberMetaClass);
    *v291 = 0;
    if (v72)
    {
      v73 = OSNumber::unsigned32BitValue(v72);
      v74 = v73;
      if (!v73)
      {
LABEL_124:
        *v291 = v74;
        v75 = (*(*this + 104))(this);
        LODWORD(v30) = (*(*v75 + 56))(v75, AppleBCMWLANCore::setACLParams, v291, 0, 0, 0);
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setProperties(this);
          }
        }

        goto LABEL_177;
      }

      if (v73 == 1)
      {
        v74 = 4705;
        goto LABEL_124;
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setProperties(this);
        }
      }
    }
  }

LABEL_177:
  v109 = OSDictionary::getObject(v3, "MWS_BT_SCO_HID_TRAFFIC_PARAM");
  v110 = v30;
  if (!v109)
  {
    goto LABEL_402;
  }

  v111 = OSMetaClassBase::safeMetaCast(v109, gOSDictionaryMetaClass);
  if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
  {
    AppleBCMWLANCore::setProperties(this);
    if (v111)
    {
      goto LABEL_181;
    }
  }

  else if (v111)
  {
LABEL_181:
    v112 = OSDictionary::getObject(v111, "MWS_BT_SCO_HID_TRAFFIC_INDICATION");
    if (v112 && (v113 = OSMetaClassBase::safeMetaCast(v112, gOSNumberMetaClass)) != 0)
    {
      v114 = OSNumber::unsigned32BitValue(v113);
    }

    else
    {
      v114 = 0;
    }

    v115 = OSDictionary::getObject(v111, "MWS_BT_SCO_HID_TRAFFIC_USE_CASE");
    if (v115 && (v116 = OSMetaClassBase::safeMetaCast(v115, gOSNumberMetaClass)) != 0)
    {
      v117 = OSNumber::unsigned32BitValue(v116);
      LODWORD(v111) = v117;
      if (v114 && v117 == 1)
      {
        v118 = 1;
        LODWORD(v111) = 1;
LABEL_192:
        *(*v7 + 17808) = v118;
        goto LABEL_398;
      }
    }

    else
    {
      LODWORD(v111) = 0;
    }

    v118 = 0;
    goto LABEL_192;
  }

  v114 = 0;
LABEL_398:
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v247 = (*(*this + 1952))(this);
      CCLogStream::logAlert(v247, "[dk] %s@%d:BT traffic indication is %d for LAUseCase %d\n", "setProperties", 11828, v114, v111);
    }
  }

  v110 = 0;
LABEL_402:
  v243 = OSDictionary::getObject(v3, "MWS_BT_A2DP_TRAFFIC_INDICATION");
  if (v243)
  {
    v244 = OSMetaClassBase::safeMetaCast(v243, gOSNumberMetaClass);
    if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
    {
      AppleBCMWLANCore::setProperties(this);
      if (v244)
      {
LABEL_406:
        v245 = OSNumber::unsigned32BitValue(v244);
        v246 = *v7;
        if (v245)
        {
          *(v246 + 17809) = 1;
          goto LABEL_411;
        }

LABEL_410:
        *(v246 + 17809) = 0;
LABEL_411:
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setProperties(this);
          }
        }

        v110 = 0;
        goto LABEL_415;
      }
    }

    else if (v244)
    {
      goto LABEL_406;
    }

    v246 = *v7;
    goto LABEL_410;
  }

LABEL_415:
  v248 = OSDictionary::getObject(v3, "MWS_BT_ESCO_TRAFFIC_INDICATION");
  if (v248)
  {
    v249 = OSMetaClassBase::safeMetaCast(v248, gOSNumberMetaClass);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setProperties(this);
      }
    }

    v30 = 3758097090;
    if (v249)
    {
      v250 = (*(*this + 104))(this);
      v110 = (*(*v250 + 56))(v250, AppleBCMWLANCore::reportEscoTrafficIndication, v249, 0, 0, 0);
      if (v110 == -536870206)
      {
        return v30;
      }
    }

    else
    {
      v110 = -536870206;
    }
  }

  v251 = OSDictionary::getObject(v3, "IO80211InterfaceSimulateJoinStatusSubStateParams");
  if (v251)
  {
    v252 = OSMetaClassBase::safeMetaCast(v251, gOSDictionaryMetaClass);
    if (v252)
    {
      v253 = v252;
      memset(v291, 170, 12);
      v254 = OSDictionary::getObject(v252, "IO80211InterfaceSimulateSubStateIdx");
      if (v254)
      {
        v255 = OSMetaClassBase::safeMetaCast(v254, gOSNumberMetaClass);
        if (v255)
        {
          v291[0] = OSNumber::unsigned8BitValue(v255);
        }
      }

      v256 = OSDictionary::getObject(v253, "IO80211InterfaceSimulateSubStateType");
      if (v256)
      {
        v257 = OSMetaClassBase::safeMetaCast(v256, gOSNumberMetaClass);
        if (v257)
        {
          v291[1] = OSNumber::unsigned8BitValue(v257);
        }
      }

      v258 = OSDictionary::getObject(v253, "IO80211InterfaceSimulateSubStateStatus");
      if (v258)
      {
        v259 = OSMetaClassBase::safeMetaCast(v258, gOSNumberMetaClass);
        if (v259)
        {
          *&v291[4] = OSNumber::unsigned32BitValue(v259);
        }
      }

      v260 = OSDictionary::getObject(v253, "IO80211InterfaceSimulateSubStateReason");
      if (v260)
      {
        v261 = OSMetaClassBase::safeMetaCast(v260, gOSNumberMetaClass);
        if (v261)
        {
          *&v291[8] = OSNumber::unsigned32BitValue(v261);
        }
      }

      if (OSDictionary::getObject(v253, "IO80211InterfaceSimulateSubStateClear"))
      {
        v262 = 0;
      }

      else
      {
        v262 = v291;
      }

      v263 = (*(*this + 104))(this);
      v110 = (*(*v263 + 56))(v263, AppleBCMWLANCore::simulateJoinStatusSubStateGated, v262, 0, 0, 0);
    }
  }

  v264 = OSDictionary::getObject(v3, "IO80211InterfaceSimulateRoamStatusSubStateParams");
  if (v264)
  {
    v265 = OSMetaClassBase::safeMetaCast(v264, gOSDictionaryMetaClass);
    if (v265)
    {
      v266 = v265;
      memset(v291, 170, 12);
      v267 = OSDictionary::getObject(v265, "IO80211InterfaceSimulateSubStateIdx");
      if (v267)
      {
        v268 = OSMetaClassBase::safeMetaCast(v267, gOSNumberMetaClass);
        if (v268)
        {
          v291[0] = OSNumber::unsigned8BitValue(v268);
        }
      }

      v269 = OSDictionary::getObject(v266, "IO80211InterfaceSimulateSubStateType");
      if (v269)
      {
        v270 = OSMetaClassBase::safeMetaCast(v269, gOSNumberMetaClass);
        if (v270)
        {
          v291[1] = OSNumber::unsigned8BitValue(v270);
        }
      }

      v271 = OSDictionary::getObject(v266, "IO80211InterfaceSimulateSubStateStatus");
      if (v271)
      {
        v272 = OSMetaClassBase::safeMetaCast(v271, gOSNumberMetaClass);
        if (v272)
        {
          *&v291[4] = OSNumber::unsigned32BitValue(v272);
        }
      }

      v273 = OSDictionary::getObject(v266, "IO80211InterfaceSimulateSubStateReason");
      if (v273)
      {
        v274 = OSMetaClassBase::safeMetaCast(v273, gOSNumberMetaClass);
        if (v274)
        {
          *&v291[8] = OSNumber::unsigned32BitValue(v274);
        }
      }

      if (OSDictionary::getObject(v266, "IO80211InterfaceSimulateSubStateClear"))
      {
        v275 = 0;
      }

      else
      {
        v275 = v291;
      }

      v276 = (*(*this + 104))(this);
      v110 = (*(*v276 + 56))(v276, AppleBCMWLANCore::simulateRoamStatusSubStateGated, v275, 0, 0, 0);
    }
  }

  if (!v110)
  {
    return 0;
  }

  v288 = v110;
  *v291 = 0;
  *&v291[8] = v291;
  *&v291[16] = 0x2000000000;
  *&v291[24] = OSArray::withCapacity(5u);
  v277 = IOMallocZeroData();
  if (v277)
  {
    v278 = 200;
  }

  else
  {
    v278 = 0;
  }

  v289[0] = _NSConcreteStackBlock;
  v289[1] = 1107296256;
  v289[2] = ___ZN16AppleBCMWLANCore13setPropertiesEP8OSObject_block_invoke;
  v289[3] = &__block_descriptor_tmp_955;
  v289[4] = v291;
  (v3->iterateObjects)(v3, v289);
  if ((*(**(*&v291[8] + 24) + 72))(*(*&v291[8] + 24)))
  {
    v279 = 0;
    v280 = 0;
    do
    {
      v281 = OSArray::getObject(*(*&v291[8] + 24), v279);
      v282 = OSMetaClassBase::safeMetaCast(v281, gOSStringMetaClass);
      if (v282)
      {
        v283 = v282;
        if (OSString::getLength(v282) + v280 <= v278)
        {
          v284 = (v277 + v280);
        }

        else
        {
          v284 = 0;
        }

        CStringNoCopy = OSString::getCStringNoCopy(v283);
        v280 += snprintf(v284, v278 - v280, "%s ", CStringNoCopy);
      }

      ++v279;
    }

    while (v279 < (*(**(*&v291[8] + 24) + 72))(*(*&v291[8] + 24)));
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setProperties(this);
    }
  }

  v286 = *(*&v291[8] + 24);
  v30 = v288;
  if (v286)
  {
    (*(*v286 + 16))(v286);
    *(*&v291[8] + 24) = 0;
  }

  if (v277)
  {
    IOFreeData();
  }

  _Block_object_dispose(v291, 8);
  return v30;
}