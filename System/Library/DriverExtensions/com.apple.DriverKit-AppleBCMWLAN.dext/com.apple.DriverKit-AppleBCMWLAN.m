AppleBCMWLANLQM *AppleBCMWLANLQM::withDriver(AppleBCMWLANLQM *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANLQMMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && (AppleBCMWLANLQM::initWithDriver(v5, this) & 1) == 0)
  {
    (*(*v3 + 16))(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANLQM::initWithDriver(OSObject *this, AppleBCMWLANCore *a2)
{
  v4 = IOMallocZeroTyped();
  this[1].OSMetaClassBase::__vftable = v4;
  v5 = &this[1];
  if (v4)
  {
    v4->getMetaClass = a2;
    v6 = **v5;
    if (v6)
    {
      (*v5)[1] = AppleBCMWLANCore::getCommander(v6);
      if ((*v5)[1])
      {
        (*v5)[2] = AppleBCMWLANCore::getBssManager(**v5);
        if ((*v5)[2])
        {
          (*v5)[3] = (*(*a2 + 1952))(a2);
          v7 = (*v5)[3];
          if (v7)
          {
            (*(*v7 + 8))(v7);
            if (OSObject::init(this))
            {
              LODWORD(this[1].OSMetaClassBase::__vftable[2].Dispatch) = 4;
              LODWORD(this[1].OSMetaClassBase::__vftable[82].retain) = -75;
              (*(*this[1].getMetaClass + 88))(this[1].getMetaClass);
              this[1].OSMetaClassBase::__vftable[152].retain = IO80211TimerSource::allocWithParams();
              v8 = this[1].OSMetaClassBase::__vftable;
              if (v8[152].retain)
              {
                (*(*v8->getMetaClass + 88))();
                this[1].OSMetaClassBase::__vftable[152].release = IO80211TimerSource::allocWithParams();
                v9 = this[1].OSMetaClassBase::__vftable;
                if (v9[152].release)
                {
                  HIDWORD(v9[82].getMetaClass) = 5000;
                  v10 = IOParseBootArgNumber("wlan.netmanager.stats-timer-interval", *v5 + 4596, 4);
                  (*v5)[1060] = AppleBCMWLANStopwatch::withUptime(v10);
                  AppleBCMWLANStopwatch::start((*v5)[1060]);
                  *(*v5 + 8476) = 3;
                  return 1;
                }

                if (v9->isEqualTo)
                {
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANLQM::initWithDriver(&this[1]);
                  }
                }
              }

              else if (v8->isEqualTo && CCLogStream::shouldLog())
              {
                AppleBCMWLANLQM::initWithDriver(&this[1]);
              }

              AppleBCMWLANLQM::freeResources(this);
            }

            else
            {
              IOLog("AppleBCMWLANLQM super init failied\n");
            }
          }

          else
          {
            IOLog("AppleBCMWLANLQM Failed to init fLogger\n");
          }
        }

        else
        {
          IOLog("AppleBCMWLANLQM Bss Maanger is null\n");
        }
      }

      else
      {
        IOLog("AppleBCMWLANLQM commander is null\n");
      }
    }

    else
    {
      IOLog("AppleBCMWLANLQM driver is null\n");
    }
  }

  else
  {
    IOLog("Failed to allocate AppleBCMWLANLQM_IVars\n");
  }

  return 0;
}

IO80211Controller *AppleBCMWLANLQM::handleChanQualUpdatedReminder(uint64_t a1)
{
  (*(**(*(a1 + 40) + 8520) + 72))(*(*(a1 + 40) + 8520));
  result = AppleBCMWLANCore::isAssociated(**(a1 + 40));
  if (result)
  {
    AppleBCMWLANStopwatch::restart(*(*(a1 + 40) + 8480));
    v3 = *(a1 + 40);
    v4 = *v3;

    return AppleBCMWLANCore::postChanQualEvent(v4, v3 + 1061);
  }

  return result;
}

uint64_t AppleBCMWLANLQM::freeResources(AppleBCMWLANLQM *this)
{
  v2 = *(this + 5);
  v3 = v2[1065];
  if (v3)
  {
    (*(*v3 + 80))(v3);
    (*(**(*(this + 5) + 8520) + 16))(*(*(this + 5) + 8520));
    *(*(this + 5) + 8520) = 0;
    v2 = *(this + 5);
  }

  v4 = v2[1066];
  if (v4)
  {
    (*(*v4 + 80))(v4);
    (*(**(*(this + 5) + 8528) + 16))(*(*(this + 5) + 8528));
    *(*(this + 5) + 8528) = 0;
    v2 = *(this + 5);
  }

  v5 = v2[1060];
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 5) + 8480) = 0;
    v2 = *(this + 5);
  }

  result = v2[3];
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 5) + 24) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANLQM::handleStatUpdates(AppleBCMWLANCore ***a1, AppleBCMWLANCore *a2)
{
  *&v16.octet[4] = 0;
  *v16.octet = 0;
  v3 = a1[5];
  if (v3[1066] != a2)
  {
    if (v3[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logEmergency(a1[5][3], "[dk] %s@%d:Mismatched : src:%p ivars->fAssociatedTimer:%p \n", "handleStatUpdates", 3215, a2, a1[5][1066]);
    }

    v5 = *(*a2 + 72);
    v6 = a2;
    goto LABEL_19;
  }

  isAssociated = AppleBCMWLANCore::isAssociated(*v3);
  v8 = a1[5];
  if ((isAssociated & 1) == 0)
  {
    v6 = v8[1066];
    v5 = *(*v6 + 72);
LABEL_19:

    return v5(v6);
  }

  v9 = *(v8 + 4592);
  if (v9 == 5)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 + 1;
  }

  *(v8 + 4592) = v10;
  v11 = a1[5];
  if (*(v11 + 6537) == 1)
  {
    *(v11 + 6537) = 0;
  }

  v15 = 0;
  result = AppleBCMWLANLQM::loadBss(a1, &v15, &v16);
  if (!v15)
  {
    updated = AppleBCMWLANLQM::updateCounters(a1, &v16);
    if ((updated + 536870212) <= 0x2F && ((1 << (updated + 68)) & 0x800008000001) != 0)
    {
      v14 = updated;
      result = a1[5][3];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return CCLogStream::logNoticeIf(a1[5][3], 0x200uLL, "[dk] %s@%d:Not reporting stats as updateCounters failed with %d\n", "handleStatUpdates", 3246, v14);
        }
      }
    }

    else
    {
      AppleBCMWLANLQM::updateBSSInfo(a1);
      if (IO80211BssManager::isAssociated(a1[5][2]))
      {
        AppleBCMWLANLQM::checkForChannelSwitch(a1, a1[5] + 6540);
      }

      result = AppleBCMWLANCore::isAssociated(*a1[5]);
      if (result)
      {
        if (AppleBCMWLANCore::checkForTrafficEngineeringSupport(*a1[5]) && (AppleBCMWLANCore::isCcaStatsExtSupported(*a1[5]) & 1) == 0)
        {
          AppleBCMWLANLQM::getLegacyCCAStats(a1);
        }

        return (*(*a1[5][1066] + 56))(a1[5][1066], *(a1[5] + 1149));
      }
    }
  }

  return result;
}

void AppleBCMWLANLQM::free(AppleBCMWLANLQM *this)
{
  if (*(this + 5))
  {
    AppleBCMWLANLQM::freeResources(this);
    v2 = *(this + 5);
    if (v2)
    {
      IOFree(v2, 0x2260uLL);
      *(this + 5) = 0;
    }
  }

  OSObject::free(this);
}

void AppleBCMWLANLQM::updateLinkQualityMetrics(AppleBCMWLANLQM *this, int a2)
{
  v114 = 0xAAAAAAAAAAAAAAAALL;
  v115 = 0xAAAAAAAAAAAAAAAALL;
  if (a2)
  {
    mach_continuous_time();
    v5 = (this + 40);
    v4 = *(this + 5);
    absolutetime_to_nanoseconds();
    v6 = *(this + 5);
    if (*(*v5 + 148) > (*(*v5 + 144) - 1))
    {
      *(v6 + 148) = 0;
      v6 = *v5;
    }

    if ((IO80211BssManager::isAssociatedToAdhoc(*(v6 + 16)) & 1) == 0)
    {
      v7 = *v5;
      v114 = *v5 + 4816;
      v115 = 0x500050005;
      v8 = AppleBCMWLANCommander::runIOVarGet(*(v7 + 8), "bssload_report", &kNoTxPayload, &v114, 0);
      v9 = v8 == -469794543 || v8 == -469794537;
      v10 = v9 || v8 == 0;
      if (!v10 && *(*v5 + 24) && CCLogStream::shouldLog())
      {
        AppleBCMWLANLQM::updateLinkQualityMetrics(this + 5);
      }
    }

    v11 = *v5;
    v12 = *(*v5 + 148);
    if (!v12)
    {
      v12 = *(v11 + 144);
    }

    v13 = (v12 - 1);
    isAssociatedToAdhoc = IO80211BssManager::isAssociatedToAdhoc(*(v11 + 16));
    v15 = *v5;
    if ((isAssociatedToAdhoc & 1) != 0 || (isStaInfoIoVarSupported = AppleBCMWLANCore::isStaInfoIoVarSupported(*v15), v15 = *v5, !isStaInfoIoVarSupported) || *(v15 + 4272) < 4u)
    {
      v59 = *(v15 + 104 * v13 + 152);
      if (v59)
      {
        v60 = *(v15 + 2760);
        *(v15 + 104 * *(v15 + 148) + 568) = v60 - v59;
        v15 = *v5;
        if (v60 < v59)
        {
          if (*(v15 + 24))
          {
            shouldLog = CCLogStream::shouldLog();
            v15 = *v5;
            if (shouldLog)
            {
              CCLogStream::logAlert(*(v15 + 24), "[dk] %s@%d: Overflow detected\n", "updateLinkQualityMetrics", 626);
              v15 = *v5;
            }
          }
        }
      }

      v61 = *(v15 + 104 * v13 + 168);
      if (v61)
      {
        v62 = *(v15 + 2720);
        *(v15 + 104 * *(v15 + 148) + 584) = v62 - v61;
        v15 = *v5;
        if (v62 < v61)
        {
          if (*(v15 + 24))
          {
            v111 = CCLogStream::shouldLog();
            v15 = *v5;
            if (v111)
            {
              CCLogStream::logAlert(*(v15 + 24), "[dk] %s@%d: Overflow detected\n", "updateLinkQualityMetrics", 632);
              v15 = *v5;
            }
          }
        }
      }

      v63 = *(v15 + 104 * v13 + 160);
      if (v63)
      {
        v64 = *(v15 + 2888);
        *(v15 + 104 * *(v15 + 148) + 576) = v64 - v63;
        v15 = *v5;
        if (v64 < v63)
        {
          if (*(v15 + 24))
          {
            v112 = CCLogStream::shouldLog();
            v15 = *v5;
            if (v112)
            {
              CCLogStream::logAlert(*(v15 + 24), "[dk] %s@%d: Overflow detected\n", "updateLinkQualityMetrics", 638);
              v15 = *v5;
            }
          }
        }
      }

      *(v15 + 104 * *(v15 + 148) + 152) = *(v15 + 2760);
      *(*v5 + 104 * *(*v5 + 148) + 168) = *(*v5 + 2720);
      *(*v5 + 104 * *(*v5 + 148) + 160) = *(*v5 + 2888);
      v65 = *v5;
      v66 = *(*v5 + 216 * v13 + 988);
      if (v66)
      {
        v67 = *(v65 + 2808);
        v25 = v67 >= v66;
        v68 = v67 - v66;
        *(v65 + 216 * *(v65 + 148) + 1852) = v68;
        v65 = *v5;
        if (!v25 || HIDWORD(v68))
        {
          if (*(v65 + 24))
          {
            v113 = CCLogStream::shouldLog();
            v65 = *v5;
            if (v113)
            {
              CCLogStream::logAlert(*(v65 + 24), "[dk] %s@%d: Overflow detected\n", "updateLinkQualityMetrics", 649);
              v65 = *v5;
            }
          }
        }
      }

      *(v65 + 216 * *(v65 + 148) + 988) = *(v65 + 2808);
    }

    else
    {
      v17 = *(v15 + 4436);
      if (v17)
      {
        v18 = *(v15 + 104 * v13 + 152);
        v19 = (v15 + 104 * *(v15 + 148) + 568);
        if (v17 < v18)
        {
          AppleBCMWLANLQM::updateLinkQualityMetrics(v17, v19, this + 40);
        }

        else
        {
          *v19 = v17 - v18;
        }
      }

      v20 = *(*v5 + 4444);
      v21 = *(*v5 + 4436);
      if (v20 | v21)
      {
        *(*v5 + 104 * *(*v5 + 148) + 584) = v21 + v20;
        v22 = *v5 + 104 * *(*v5 + 148);
        v23 = *(v22 + 584);
        v24 = *(*v5 + 104 * v13 + 168);
        v25 = v23 >= v24;
        v26 = v23 - v24;
        if (v25)
        {
          *(v22 + 584) = v26;
        }

        else
        {
          AppleBCMWLANLQM::updateLinkQualityMetrics(*v5);
        }
      }

      v27 = *v5;
      v28 = *(*v5 + 4448);
      if (v28)
      {
        v29 = *(v27 + 104 * v13 + 160);
        v30 = (v27 + 104 * *(v27 + 148) + 576);
        if (v28 < v29)
        {
          AppleBCMWLANLQM::updateLinkQualityMetrics(v28, v30, this + 40);
        }

        else
        {
          *v30 = v28 - v29;
        }
      }

      *(*v5 + 104 * *(*v5 + 148) + 152) = *(*v5 + 4436);
      *(*v5 + 104 * *(*v5 + 148) + 168) = *(*v5 + 4436) + *(*v5 + 4444);
      *(*v5 + 104 * *(*v5 + 148) + 160) = *(*v5 + 4448);
      v31 = *v5;
      v32 = *(*v5 + 4460);
      if (v32)
      {
        v33 = *(v31 + 104 * v13 + 176);
        v34 = (v31 + 104 * *(v31 + 148) + 592);
        if (v32 < v33)
        {
          AppleBCMWLANLQM::updateLinkQualityMetrics(v32, v34, this + 40);
        }

        else
        {
          *v34 = v32 - v33;
        }
      }

      v35 = *(*v5 + 4452);
      v36 = *(*v5 + 4460);
      if (v35 | v36)
      {
        *(*v5 + 104 * *(*v5 + 148) + 608) = v36 + v35;
        v37 = *v5 + 104 * *(*v5 + 148);
        v38 = *(v37 + 608);
        v39 = *(*v5 + 104 * v13 + 192);
        v25 = v38 >= v39;
        v40 = v38 - v39;
        if (v25)
        {
          *(v37 + 608) = v40;
        }

        else
        {
          AppleBCMWLANLQM::updateLinkQualityMetrics(*v5);
        }
      }

      v41 = *v5;
      v42 = *(*v5 + 4456);
      if (v42)
      {
        v43 = *(v41 + 104 * v13 + 184);
        v44 = (v41 + 104 * *(v41 + 148) + 600);
        if (v42 < v43)
        {
          AppleBCMWLANLQM::updateLinkQualityMetrics(v42, v44, this + 40);
        }

        else
        {
          *v44 = v42 - v43;
        }
      }

      *(*v5 + 104 * *(*v5 + 148) + 176) = *(*v5 + 4460);
      *(*v5 + 104 * *(*v5 + 148) + 192) = *(*v5 + 4460) + *(*v5 + 4452);
      *(*v5 + 104 * *(*v5 + 148) + 184) = *(*v5 + 4456);
      v45 = *v5;
      v46 = *(*v5 + 4340);
      if (v46 == -1)
      {
        *(v45 + 4340) = 0;
        v45 = *v5;
        v46 = *(*v5 + 4340);
      }

      *(v45 + 104 * *(v45 + 148) + 200) = v46;
      v47 = *v5;
      v48 = *(*v5 + 4468);
      if (v48 == -1)
      {
        *(v47 + 4468) = 0;
        v47 = *v5;
        v48 = *(*v5 + 4468);
      }

      *(v47 + 104 * *(v47 + 148) + 208) = v48;
      v49 = *v5;
      v50 = *(*v5 + 4360);
      if (v50)
      {
        v51 = *(v49 + 216 * v13 + 988);
        v52 = (v49 + 216 * *(v49 + 148) + 1852);
        if (v50 < v51)
        {
          AppleBCMWLANLQM::updateLinkQualityMetrics(v50, v52, this + 40);
        }

        else
        {
          *v52 = v50 - v51;
        }
      }

      *(*v5 + 216 * *(*v5 + 148) + 988) = *(*v5 + 4360);
      v53 = *v5;
      v54 = *(*v5 + 4464);
      if (v54)
      {
        v55 = *(v53 + 216 * v13 + 984);
        v56 = (v53 + 216 * *(v53 + 148) + 1848);
        if (v54 < v55)
        {
          AppleBCMWLANLQM::updateLinkQualityMetrics(v54, v56, this + 40);
        }

        else
        {
          *v56 = v54 - v55;
        }
      }

      *(*v5 + 216 * *(*v5 + 148) + 984) = *(*v5 + 4464);
      v57 = *v5;
      v58 = *(*v5 + 4344);
      if (v58 == -1)
      {
        *(v57 + 4344) = 0;
        v57 = *v5;
        v58 = *(*v5 + 4344);
      }

      *(v57 + 216 * *(v57 + 148) + 992) = v58;
    }

    v69 = *v5;
    v70 = *(*v5 + 8 * v13 + 4212);
    if (v70)
    {
      v71 = *(v69 + 3040);
      *(v69 + 8 * *(v69 + 148) + 4244) = v71 - v70;
      v69 = *v5;
      if (v71 < v70)
      {
        if (*(v69 + 24))
        {
          v108 = CCLogStream::shouldLog();
          v69 = *v5;
          if (v108)
          {
            CCLogStream::logAlert(*(v69 + 24), "[dk] %s@%d: Overflow detected\n", "updateLinkQualityMetrics", 660);
            v69 = *v5;
          }
        }
      }
    }

    *(v69 + 8 * *(v69 + 148) + 4212) = *(v69 + 3040);
    v72 = *v5;
    v73 = *(*v5 + 8 * v13 + 4208);
    if (v73)
    {
      v74 = *(v72 + 3044);
      *(v72 + 8 * *(v72 + 148) + 4240) = v74 - v73;
      v72 = *v5;
      if (v74 < v73)
      {
        if (*(v72 + 24))
        {
          v109 = CCLogStream::shouldLog();
          v72 = *v5;
          if (v109)
          {
            CCLogStream::logAlert(*(v72 + 24), "[dk] %s@%d: Overflow detected\n", "updateLinkQualityMetrics", 667);
            v72 = *v5;
          }
        }
      }
    }

    *(v72 + 8 * *(v72 + 148) + 4208) = *(v72 + 3044);
    if ((IO80211BssManager::isAssociatedToAdhoc(*(*v5 + 16)) & 1) == 0 && AppleBCMWLANCore::isEnhancedTrgDisconnectEnabled(**v5) && *(*v5 + 4272) <= 3u && *(*v5 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANLQM::updateLinkQualityMetrics(this + 40);
    }

    AppleBCMWLANLQM::logAdditionalTxRxCounters(this);
  }

  if ((*(*(this + 5) + 4593) & 1) != 0 || ((v75 = *(*(this + 5) + 4592), v75 != 5) ? (v76 = v75 == 0) : (v76 = 1), v76))
  {
    AppleBCMWLANLQM::recalculateRSSIAvg(this);
    v77 = *(this + 5);
    v78 = *(v77 + 44);
    v79 = *(v77 + 4600);
    if (v78 >= v79)
    {
      v80 = 100;
    }

    else
    {
      v80 = -2;
    }

    if (v78 >= 1)
    {
      v80 = -2;
    }

    if (v78 >= v79)
    {
      v81 = v80;
    }

    else
    {
      v81 = 50;
    }

    if (IO80211BssManager::isAssociatedOn2G(*(v77 + 16)))
    {
      BtCoexState = AppleBCMWLANCore::getBtCoexState(**(this + 5));
      v83 = v81 == 100 ? 50 : v81;
      if ((BtCoexState & 3) != 0)
      {
        v81 = v83;
      }
    }

    v84 = *(this + 5);
    if (v81 != *(v84 + 4604))
    {
      *(v84 + 4604) = v81;
      v85 = *(this + 5);
      if (*(v85 + 24))
      {
        v86 = CCLogStream::shouldLog();
        v85 = *(this + 5);
        if (v86)
        {
          CCLogStream::logAlert(*(v85 + 24), "[dk] %s@%d:Report LQM to User Land %d, ivars->fAverageRSSI %d\n", "updateLinkQualityMetrics", 709, *(v85 + 4604), *(v85 + 44));
          v85 = *(this + 5);
        }
      }

      v87 = *(v85 + 4604);
      AppleBCMWLANCore::setLQM(*v85);
    }
  }

  if (a2)
  {
    v88 = *(this + 5);
    v89 = *(v88 + 148);
    if (v89 < *(v88 + 144) - 1)
    {
      v90 = v89 + 1;
    }

    else
    {
      v90 = 0;
    }

    *(v88 + 148) = v90;
    v91 = *(this + 5);
    v92 = v91[760];
    v93 = v91[1629];
    v91[1628] = v92 - v93;
    v94 = *(this + 5);
    if (v92 < v93)
    {
      if (*(v94 + 24))
      {
        v95 = CCLogStream::shouldLog();
        v94 = *(this + 5);
        if (v95)
        {
          CCLogStream::logAlert(*(v94 + 24), "[dk] %s@%d: Overflow detected calculating ivars->fRxBeacons ivars->fInfraSpecificStatistics.rxbeaconmbss %d, ivars->fRxBeaconsStartCount %d, ivars->fRxBeacons %d \n", "updateLinkQualityMetrics", 727, *(v94 + 3040), *(v94 + 6516), *(v94 + 6512));
          v94 = *(this + 5);
        }
      }
    }

    v96 = AppleBCMWLANCore::is4387C2Up(*v94);
    v97 = *(this + 5);
    if (v96 && *(v97 + 3032) == 2 && (*(v97 + 3036) & 2) != 0)
    {
      v98 = *(v97 + 3060);
      v99 = *(v97 + 6524);
      *(v97 + 6520) = v98 - v99;
      v100 = *(this + 5);
      if (v98 < v99)
      {
        if (*(v100 + 24))
        {
          v101 = CCLogStream::shouldLog();
          v100 = *(this + 5);
          if (v101)
          {
            CCLogStream::logAlert(*(v100 + 24), "[dk] %s@%d: Overflow detected calculating ivars->fRxDurMulticast (%d), ivars->fInfraSpecificStatistics.rxdur_multicast %d, ivars->fRxDurStartMulticast %d \n", "updateLinkQualityMetrics", 734, *(v100 + 6520), *(v100 + 3060), *(v100 + 6524));
            v100 = *(this + 5);
          }
        }
      }

      v102 = *(v100 + 3056);
      v103 = *(v100 + 6532);
      *(v100 + 6528) = v102 - v103;
      v104 = *(this + 5);
      if (v102 < v103)
      {
        if (*(v104 + 24))
        {
          v105 = CCLogStream::shouldLog();
          v104 = *(this + 5);
          if (v105)
          {
            CCLogStream::logAlert(*(v104 + 24), "[dk] %s@%d: Overflow detected calculating ivars->fRxDurBroadcast (%d), ivars->fInfraSpecificStatistics.rxdur_broadcast %d,\tivars->fRxDurBroadcast %d \n", "updateLinkQualityMetrics", 739, *(v104 + 6528), *(v104 + 3056), *(v104 + 6532));
            v104 = *(this + 5);
          }
        }
      }

      if (*(v104 + 24))
      {
        v106 = CCLogStream::shouldLog();
        v104 = *(this + 5);
        if (v106)
        {
          CCLogStream::logAlert(*(v104 + 24), "[dk] %s@%d:For current session updated fRxDurMulticast %d, fRxDurBroadcast %d \n", "updateLinkQualityMetrics", 741, *(v104 + 6520), *(v104 + 6528));
          v104 = *(this + 5);
        }
      }

      *(v104 + 3064) = *(v104 + 4336);
      *(*(this + 5) + 3072) = *(*(this + 5) + 4408);
      v97 = *(this + 5);
    }

    v114 = v97 + 4832;
    v115 = 0xC400C400C4;
    if (!AppleBCMWLANCommander::runIOVarGet(*(v97 + 8), "wme_counters", &kNoTxPayload, &v114, 0))
    {
      mach_continuous_time();
      v107 = *(this + 5);
      absolutetime_to_nanoseconds();
    }
  }
}

void AppleBCMWLANLQM::logAdditionalTxRxCounters(AppleBCMWLANLQM *this)
{
  v3 = (this + 40);
  v2 = *(this + 5);
  if (*(v2 + 2712))
  {
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (v2 + 984), (v2 + 1848), 0x10u, (v2 + 2832), 0xD8u, 8, 0);
    v2 = *(this + 5);
  }

  isAssociatedOnHighBand = IO80211BssManager::isAssociatedOnHighBand(*(v2 + 16));
  v5 = isAssociatedOnHighBand ^ 1u;
  v6 = *(*v3 + 1142);
  *(*v3 + 1142) = v5;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v57 = v7;
  v58 = v7;
  v55 = v7;
  v56 = v7;
  v53 = v7;
  v54 = v7;
  v51 = v7;
  v52 = v7;
  v49 = v7;
  v50 = v7;
  v47 = v7;
  v48 = v7;
  v45 = v7;
  v46 = v7;
  *__str = v7;
  v44 = v7;
  v8 = *v3;
  if (*(*v3 + 724))
  {
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, v8 + 984, v8 + 1848, 0xB8u, v8 + 725, 0xD8u, 4, 0);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0xBCu, (*(this + 5) + 2904), 0xD8u, 4, 0);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0xC0u, (*(this + 5) + 2908), 0xD8u, 4, 0);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0xC4u, (*(this + 5) + 2912), 0xD8u, 4, 0);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0xC8u, (*(this + 5) + 2916), 0xD8u, 4, 0);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0xCCu, (*(this + 5) + 2920), 0xD8u, 4, 0);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0xD0u, (*(this + 5) + 2924), 0xD8u, 4, 0);
    if (isAssociatedOnHighBand)
    {
      v9 = "HighBand";
    }

    else
    {
      v9 = "2G";
    }

    v10 = (*(this + 5) + 216 * *(*(this + 5) + 148));
    snprintf(__str, 0x100uLL, " (%s) rxToss=%u rxLastTossRsn=%u rxNoFrag=%u rxNoCmplId=%u rxNoHaddr=%u rxMulti=%u rxUndec=%u\n", v9, v10[508], v10[509], v10[510], v10[511], v10[512], v10[513], v10[514]);
    AppleBCMWLANCore::refreshLQMLogs(**(this + 5), 0xAu, __str);
    v8 = *(this + 5);
  }

  v11 = &v8[20 * v5];
  if (*(v11 + 772))
  {
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, v8 + 152, v8 + 568, 0x40u, v11 + 798, 0x68u, 4, v6 != v5);
    v12 = (32 * v5) | (v5 << 7);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 152), (*(this + 5) + 568), 0x44u, (*(this + 5) + v12 + 3196), 0x68u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 152), (*(this + 5) + 568), 0x48u, (*(this + 5) + v12 + 3200), 0x68u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 152), (*(this + 5) + 568), 0x4Cu, (*(this + 5) + v12 + 3204), 0x68u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 152), (*(this + 5) + 568), 0x50u, (*(this + 5) + v12 + 3208), 0x68u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 152), (*(this + 5) + 568), 0x54u, (*(this + 5) + v12 + 3212), 0x68u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 152), (*(this + 5) + 568), 0x58u, (*(this + 5) + v12 + 3216), 0x68u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 152), (*(this + 5) + 568), 0x5Cu, (*(this + 5) + v12 + 3220), 0x68u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 152), (*(this + 5) + 568), 0x60u, (*(this + 5) + v12 + 3224), 0x68u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 152), (*(this + 5) + 568), 0x64u, (*(this + 5) + v12 + 3228), 0x68u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x18u, (*(this + 5) + v12 + 3104), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x1Cu, (*(this + 5) + v12 + 3108), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x20u, (*(this + 5) + v12 + 3112), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x24u, (*(this + 5) + v12 + 3116), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x28u, (*(this + 5) + v12 + 3124), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x2Cu, (*(this + 5) + v12 + 3128), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x30u, (*(this + 5) + v12 + 3120), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x34u, (*(this + 5) + v12 + 3132), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x38u, (*(this + 5) + v12 + 3136), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x3Cu, (*(this + 5) + v12 + 3140), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x40u, (*(this + 5) + v12 + 3144), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x44u, (*(this + 5) + v12 + 3148), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x48u, (*(this + 5) + v12 + 3152), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x4Cu, (*(this + 5) + v12 + 3156), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x50u, (*(this + 5) + v12 + 3160), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x54u, (*(this + 5) + v12 + 3164), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x58u, (*(this + 5) + v12 + 3168), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x5Cu, (*(this + 5) + v12 + 3172), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x60u, (*(this + 5) + v12 + 3176), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x64u, (*(this + 5) + v12 + 3180), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x68u, (*(this + 5) + v12 + 3184), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x6Cu, (*(this + 5) + v12 + 3188), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0xA8u, (*(this + 5) + v12 + 3232), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0xACu, (*(this + 5) + v12 + 3236), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0xB0u, (*(this + 5) + v12 + 3240), 0xD8u, 4, v6 != v5);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0xB4u, (*(this + 5) + v12 + 3244), 0xD8u, 4, v6 != v5);
    if (isAssociatedOnHighBand)
    {
      v13 = "HighBand";
    }

    else
    {
      v13 = "2G";
    }

    v14 = *(this + 5) + 216 * *(*(this + 5) + 148);
    snprintf(__str, 0x100uLL, " (%s) rxCrsGlitch=%u rxBphyCrsGlitch=%u rxStart=%u rxBadPLCP=%u rxBphyBadPLCP=%u rxBadFCS=%u rxFifo0Ovfl=%u rxFifo1Ovfl=%u rx_nobuf=%llu rxAnyErr=%u rxResponseTimeout=%u rxNoDelim=%u rxFrmTooLong=%u rxFrmTooShort=%u\n", v13, *(v14 + 1892), *(v14 + 1952), *(v14 + 1896), *(v14 + 1888), *(v14 + 1956), *(v14 + 1884), *(v14 + 1932), *(v14 + 1936), *(v14 + 1864), *(v14 + 1880), *(v14 + 1924), *(v14 + 1928), *(v14 + 1872), *(v14 + 1876));
    AppleBCMWLANCore::refreshLQMLogs(**(this + 5), 2u, __str);
    v15 = *(this + 5);
    v16 = *(v15 + 148);
    v17 = (v15 + 104 * v16);
    v18 = (v15 + 216 * v16);
    snprintf(__str, 0x100uLL, "(%s) txRTSFrm=%u txRTSFail=%u rxCTSUcast=%u rxRTSUcast=%u txCTSFrm=%u txAMPDU=%u rxBACK=%u txPhyError=%u txAllFrm=%u txMPDU=%u txUcast=%u rxACKUcast=%u OfdmDesense=%d dB\n", v13, v17[159], v17[165], v18[479], v18[478], v17[160], v17[162], v18[485], v17[164], v17[158], v17[163], v17[166], v18[480], *(v15 + 4824));
    AppleBCMWLANCore::refreshLQMLogs(**(this + 5), 3u, __str);
    v19 = *(this + 5);
    v20 = *(v19 + 148);
    v21 = (v19 + 216 * v20);
    snprintf(__str, 0x100uLL, "(%s) rxBeaconMbss=%u rxBeaconObss=%u rxDataUcastMbss=%u rxMgmtUcastMbss=%u rxCNTRLUcast=%u txACKFrm=%u txBACK=%u ctxFifoFull=%u ctxFifo2Full=%u rxDataMcast=%u rxMgmtMcast=%u\n", v13, v21[486], v21[487], v21[475], v21[476], v21[477], *(v19 + 104 * v20 + 644), *(v19 + 104 * v20 + 668), v21[504], v21[505], v21[506], v21[507]);
    AppleBCMWLANCore::refreshLQMLogs(**(this + 5), 4u, __str);
    v8 = *(this + 5);
  }

  v22 = &v8[9 * v5];
  if (*(v22 + 932))
  {
    v23 = v6 != v5;
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, v8 + 984, v8 + 1848, 0x70u, v22 + 936, 0xD8u, 4, v6 != v5);
    v24 = (8 * v5) | (v5 << 6);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x74u, (*(this + 5) + v24 + 3748), 0xD8u, 4, v23);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x78u, (*(this + 5) + v24 + 3752), 0xD8u, 4, v23);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x7Cu, (*(this + 5) + v24 + 3756), 0xD8u, 4, v23);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x80u, (*(this + 5) + v24 + 3760), 0xD8u, 4, v23);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x84u, (*(this + 5) + v24 + 3764), 0xD8u, 4, v23);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x88u, (*(this + 5) + v24 + 3768), 0xD8u, 4, v23);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x8Cu, (*(this + 5) + v24 + 3772), 0xD8u, 4, v23);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x90u, (*(this + 5) + v24 + 3776), 0xD8u, 4, v23);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x94u, (*(this + 5) + v24 + 3780), 0xD8u, 4, v23);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x98u, (*(this + 5) + v24 + 3784), 0xD8u, 4, v23);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0x9Cu, (*(this + 5) + v24 + 3788), 0xD8u, 4, v23);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0xA0u, (*(this + 5) + v24 + 3792), 0xD8u, 4, v23);
    AppleBCMWLANLQM::updateDeltaTxRxStats(this, (*(this + 5) + 984), (*(this + 5) + 1848), 0xA4u, (*(this + 5) + v24 + 3796), 0xD8u, 4, v23);
    v25 = *(this + 5);
    v26 = *(v25 + 148);
    v27 = (v25 + 216 * v26);
    v28 = *(v25 + 104 * v26 + 668);
    v29 = isAssociatedOnHighBand ? "HighBand" : "2G";
    snprintf(__str, 0x100uLL, "RX AMPDU (%s) rxAmpdu=%u txBACK(Ucode)=%u rxMpduInAmpdu=%u rxholes=%u rxdup=%u rxstuck=%u rxoow=%u rxoos=%u rxaddbareq=%u txaddbaresp=%u rxbar=%u txdelba=%u rxdelba=%u rxQueued=%u rxRetryNoBA=%u\n", v29, v27[490], v28, v27[491], v27[492], v27[493], v27[494], v27[495], v27[496], v27[497], v27[498], v27[499], v27[500], v27[501], v27[502], v27[503]);
    AppleBCMWLANCore::refreshLQMLogs(**(this + 5), 5u, __str);
    if (AppleBCMWLANCore::checkForAdvEcountersSupport(**(this + 5)))
    {
      RxMpduLostNonBa = AppleBCMWLANCore::getRxMpduLostNonBa(**v3, v5);
      v31 = *v3;
      if ((*v3)[3])
      {
        shouldLog = CCLogStream::shouldLog();
        v31 = *v3;
        if (shouldLog)
        {
          CCLogStream::logInfo(v31[3], "[dk] %s@%d:Lost MPDUs in nonAMPDU tids 0:%u, 1:%u, 2:%u, 3:%u, 4:%u, 5:%u, 6:%u, 7:%u\n", "logAdditionalTxRxCounters", 1427, *RxMpduLostNonBa, RxMpduLostNonBa[1], RxMpduLostNonBa[2], RxMpduLostNonBa[3], RxMpduLostNonBa[4], RxMpduLostNonBa[5], RxMpduLostNonBa[6], RxMpduLostNonBa[7]);
          v31 = *v3;
        }
      }

      RxMpduLostBa = AppleBCMWLANCore::getRxMpduLostBa(*v31, v5);
      v34 = *v3;
      if ((*v3)[3])
      {
        v35 = CCLogStream::shouldLog();
        v34 = *v3;
        if (v35)
        {
          CCLogStream::logInfo(v34[3], "[dk] %s@%d:Lost MPDUs in AMPDU tids 0:%u, 1:%u, 2:%u, 3:%u, 4:%u, 5:%u, 6:%u, 7:%u\n", "logAdditionalTxRxCounters", 1431, *RxMpduLostBa, RxMpduLostBa[1], RxMpduLostBa[2], RxMpduLostBa[3], RxMpduLostBa[4], RxMpduLostBa[5], RxMpduLostBa[6], RxMpduLostBa[7]);
          v34 = *v3;
        }
      }

      RxWmeStats = AppleBCMWLANCore::getRxWmeStats(*v34, v5);
      v37 = &(*v3)[27 * *(*v3 + 37)];
      v38 = *(v37 + 1968);
      v39 = *(v37 + 1964) + v38;
      if (v39 < 2)
      {
        v40 = 0;
      }

      else
      {
        v40 = 100 * v38 / v39;
      }

      AppleBCMWLANCore::setRxPer(**v3, v40);
      RxPer = AppleBCMWLANCore::getRxPer(**v3);
      snprintf(__str, 0x100uLL, "WME RX MPDUs (rxPER %u %%) in tids 0:%u, 1:%u, 2:%u, 3:%u, 4:%u, 5:%u, 6:%u, 7:%u\n", RxPer, *RxWmeStats, RxWmeStats[1], RxWmeStats[2], RxWmeStats[3], RxWmeStats[4], RxWmeStats[5], RxWmeStats[6], RxWmeStats[7]);
      AppleBCMWLANCore::refreshLQMLogs(**v3, 6u, __str);
      DeltaTxWmeStats = AppleBCMWLANCore::getDeltaTxWmeStats(**v3, v5);
      if ((*v3)[3])
      {
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANLQM::logAdditionalTxRxCounters(v3, DeltaTxWmeStats);
        }
      }
    }
  }
}

float AppleBCMWLANLQM::recalculateRSSIAvg(AppleBCMWLANLQM *this)
{
  v1 = 0;
  v2 = 0;
  v3 = *(this + 5);
  for (i = 36; i != 44; ++i)
  {
    v2 += *(v3 + i);
    if (*(v3 + i))
    {
      ++v1;
    }
  }

  if (v1)
  {
    *(v3 + 44) = v2 / v1;
    v3 = *(this + 5);
  }

  v5 = 0;
  v6 = 0uLL;
  v7.i64[0] = 0x100000001;
  v7.i64[1] = 0x100000001;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  do
  {
    v15 = *(v3 + 76 + v5);
    v16 = vmovl_s8(*v15.i8);
    v17 = vmovl_high_s8(v15);
    v14 = vaddw_high_s16(v14, v17);
    v13 = vaddw_s16(v13, *v17.i8);
    v12 = vaddw_high_s16(v12, v16);
    v11 = vaddw_s16(v11, *v16.i8);
    v18 = vtstq_s8(v15, v15);
    v19 = vmovl_u8(*v18.i8);
    v20 = vmovl_high_u8(v18);
    v10 = vaddq_s32(v10, vandq_s8(vmovl_high_u16(v20), v7));
    v9 = vaddq_s32(v9, vandq_s8(vmovl_u16(*v20.i8), v7));
    v8 = vaddq_s32(v8, vandq_s8(vmovl_high_u16(v19), v7));
    v6 = vaddq_s32(v6, vandq_s8(vmovl_u16(*v19.i8), v7));
    v5 += 16;
  }

  while (v5 != 64);
  result = COERCE_FLOAT(vaddvq_s32(vaddq_s32(vaddq_s32(v6, v9), vaddq_s32(v8, v10))));
  v22 = result;
  if (result != 0.0)
  {
    result = COERCE_FLOAT(vaddvq_s32(vaddq_s32(vaddq_s32(v11, v13), vaddq_s32(v12, v14))));
    *(v3 + 140) = SLODWORD(result) / SLODWORD(v22);
  }

  return result;
}

__n128 AppleBCMWLANLQM::getExtCCAStats(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    result = *(*(a1 + 40) + 8488);
    *(a2 + 12) = *(*(a1 + 40) + 8500);
    *a2 = result;
  }

  return result;
}

uint64_t AppleBCMWLANLQM::resetLinkQualityMetrics(AppleBCMWLANLQM *this, int a2)
{
  for (i = 0; i != 8; ++i)
  {
    *(*(this + 5) + i + 36) = -85;
    *(*(this + 5) + i + 76) = -85;
  }

  v5 = -864;
  v6 = 4240;
  v7 = 568;
  do
  {
    v8 = *(this + 5) + v7 - 416;
    *(v8 + 96) = 0;
    *(v8 + 64) = 0uLL;
    *(v8 + 80) = 0uLL;
    *(v8 + 32) = 0uLL;
    *(v8 + 48) = 0uLL;
    *v8 = 0uLL;
    *(v8 + 16) = 0uLL;
    v9 = *(this + 5) + v7;
    *(v9 + 96) = 0;
    *(v9 + 64) = 0uLL;
    *(v9 + 80) = 0uLL;
    *(v9 + 32) = 0uLL;
    *(v9 + 48) = 0uLL;
    *v9 = 0uLL;
    *(v9 + 16) = 0uLL;
    v10 = *(this + 5) + v5;
    *(v10 + 2056) = 0;
    *(v10 + 2024) = 0uLL;
    *(v10 + 2040) = 0uLL;
    *(v10 + 1992) = 0uLL;
    *(v10 + 2008) = 0uLL;
    *(v10 + 1960) = 0uLL;
    *(v10 + 1976) = 0uLL;
    *(v10 + 1928) = 0uLL;
    *(v10 + 1944) = 0uLL;
    *(v10 + 1896) = 0uLL;
    *(v10 + 1912) = 0uLL;
    *(v10 + 1864) = 0uLL;
    *(v10 + 1880) = 0uLL;
    *(v10 + 1848) = 0uLL;
    v11 = *(this + 5) + v5;
    *(v11 + 2920) = 0;
    *(v11 + 2888) = 0uLL;
    *(v11 + 2904) = 0uLL;
    *(v11 + 2856) = 0uLL;
    *(v11 + 2872) = 0uLL;
    *(v11 + 2824) = 0uLL;
    *(v11 + 2840) = 0uLL;
    *(v11 + 2792) = 0uLL;
    *(v11 + 2808) = 0uLL;
    *(v11 + 2760) = 0uLL;
    *(v11 + 2776) = 0uLL;
    *(v11 + 2728) = 0uLL;
    *(v11 + 2744) = 0uLL;
    *(v11 + 2712) = 0uLL;
    *(*(this + 5) + v6 - 32) = 0;
    *(*(this + 5) + v6) = 0;
    v6 += 8;
    v7 += 104;
    v5 += 216;
  }

  while (v5);
  v12 = *(this + 5) + 4816;
  *v12 = 0;
  *(v12 + 4) = 0;
  *(*(this + 5) + 6512) = 0;
  *(*(this + 5) + 148) = 0;
  v13 = *(this + 5);
  *(v13 + 2888) = 0;
  *(v13 + 2856) = 0u;
  *(v13 + 2872) = 0u;
  *(v13 + 2824) = 0u;
  *(v13 + 2840) = 0u;
  *(v13 + 2792) = 0u;
  *(v13 + 2808) = 0u;
  *(v13 + 2760) = 0u;
  *(v13 + 2776) = 0u;
  *(v13 + 2728) = 0u;
  *(v13 + 2744) = 0u;
  *(v13 + 2712) = 0u;
  v14 = *(this + 5);
  *(v14 + 2912) = 0u;
  *(v14 + 2896) = 0u;
  v15 = *(this + 5);
  *(v15 + 3024) = 0;
  *(v15 + 3008) = 0u;
  *(v15 + 2992) = 0u;
  *(v15 + 2976) = 0u;
  *(v15 + 2960) = 0u;
  *(v15 + 2944) = 0u;
  *(v15 + 2928) = 0u;
  *(*(this + 5) + 6516) = *(*(this + 5) + 3040);
  v16 = AppleBCMWLANCore::is4387C2Up(**(this + 5));
  v17 = *(this + 5);
  if (v16 && *(v17 + 3032) == 2)
  {
    *(v17 + 6520) = 0;
    *(*(this + 5) + 6528) = 0;
    *(*(this + 5) + 6524) = *(*(this + 5) + 3060);
    *(*(this + 5) + 6532) = *(*(this + 5) + 3056);
    v17 = *(this + 5);
    if (*(v17 + 24))
    {
      shouldLog = CCLogStream::shouldLog();
      v17 = *(this + 5);
      if (shouldLog)
      {
        CCLogStream::logAlert(*(v17 + 24), "[dk] %s@%d:Reset fRxDurStartMulticast %d, fRxDurStartBroadcast %d \n", "resetLinkQualityMetrics", 808, *(v17 + 6524), *(v17 + 6532));
        v17 = *(this + 5);
      }
    }
  }

  *(v17 + 3080) = 0;
  *(v17 + 3048) = 0u;
  *(v17 + 3064) = 0u;
  *(v17 + 3032) = 0u;
  v19 = *(this + 5);
  *(v19 + 4560) = 0;
  *(v19 + 4544) = 0u;
  *(v19 + 4528) = 0u;
  *(v19 + 4512) = 0u;
  *(v19 + 4496) = 0u;
  *(v19 + 4480) = 0u;
  *(v19 + 4464) = 0u;
  *(v19 + 4448) = 0u;
  *(v19 + 4432) = 0u;
  *(v19 + 4416) = 0u;
  *(v19 + 4400) = 0u;
  *(v19 + 4384) = 0u;
  *(v19 + 4368) = 0u;
  *(v19 + 4352) = 0u;
  *(v19 + 4336) = 0u;
  *(v19 + 4320) = 0u;
  *(v19 + 4304) = 0u;
  *(v19 + 4288) = 0u;
  *(v19 + 4272) = 0u;
  *(*(this + 5) + 4604) = a2;
  v20 = *(this + 5);
  if (*(v20 + 24))
  {
    v21 = CCLogStream::shouldLog();
    v20 = *(this + 5);
    if (v21)
    {
      CCLogStream::logInfo(*(v20 + 24), "[dk] %s@%d:Report LQM as %d\n", "resetLinkQualityMetrics", 819, *(v20 + 4604));
      v20 = *(this + 5);
    }
  }

  v22 = *(v20 + 4604);
  result = AppleBCMWLANCore::setLQM(*v20);
  *(*(this + 5) + 4592) = 0;
  return result;
}

uint64_t AppleBCMWLANLQM::getPerCoreRssi(uint64_t this, signed __int8 *a2)
{
  if (a2)
  {
    *a2 = *(*(this + 40) + 2 * *(*(this + 40) + 52) + 56);
    a2[1] = *(*(this + 40) + 2 * *(*(this + 40) + 52) + 57);
  }

  return this;
}

IO80211Controller *AppleBCMWLANLQM::updateLQM(uint64_t a1, char *a2, int a3)
{
  v5 = (a1 + 40);
  result = AppleBCMWLANCore::isAssociated(**(a1 + 40));
  if (result)
  {
    result = AppleBCMWLANBssManager::getCurrentBSS((*v5)[2]);
    if (result)
    {
      if (*a2)
      {
        v7 = *v5;
        if ((*(a2 + 1) - 11) <= 0xFFFFFF90)
        {
          if (v7[3])
          {
            shouldLog = CCLogStream::shouldLog();
            v7 = *v5;
            if (shouldLog)
            {
              CCLogStream::logAlert(v7[3], "[dk] %s@%d:rssi %d dbm is out of range?\n", "updateLQM", 881, *(a2 + 1));
              v7 = *v5;
            }
          }
        }

        CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(v7[2]);
        IO80211BSSBeacon::updateRSSI(CurrentBSS, *(a2 + 1));
        v10 = *(a2 + 1);
        *(*v5 + 12) = v10;
        ++*(*v5 + 8);
        *(*v5 + 8) &= 7u;
        *(*v5 + *(*v5 + 8) + 36) = v10;
      }

      if (a2[8])
      {
        v11 = *v5;
        if (a2[9] - 11 <= 0x90)
        {
          if (v11[3])
          {
            v12 = CCLogStream::shouldLog();
            v11 = *v5;
            if (v12)
            {
              CCLogStream::logAlert(v11[3], "[dk] %s@%d:Core0 Rssi %d dbm is out of range?\n", "updateLQM", 894, a2[9]);
              v11 = *v5;
            }
          }
        }

        if (a2[10] - 11 <= 0x90)
        {
          if (v11[3])
          {
            v13 = CCLogStream::shouldLog();
            v11 = *v5;
            if (v13)
            {
              CCLogStream::logAlert(v11[3], "[dk] %s@%d:Core1 Rssi %d dbm is out of range?\n", "updateLQM", 897, a2[10]);
              v11 = *v5;
            }
          }
        }

        ++*(v11 + 13);
        *(*v5 + 13) &= 7u;
        *(*v5 + 2 * *(*v5 + 13) + 56) = a2[9];
        *(*v5 + 2 * *(*v5 + 13) + 57) = a2[10];
      }

      if (a2[14])
      {
        v14 = AppleBCMWLANBssManager::getCurrentBSS((*v5)[2]);
        IO80211BSSBeacon::updateNoise(v14, *(a2 + 8));
      }

      if (a2[328])
      {
        v15 = AppleBCMWLANBssManager::getCurrentBSS((*v5)[2]);
        IO80211BSSBeacon::updateNoiseDeltaOverTwoCores(v15, a2[329]);
      }

      if (a2[11])
      {
        v16 = AppleBCMWLANBssManager::getCurrentBSS((*v5)[2]);
        IO80211BSSBeacon::updateSNR(v16, *(a2 + 6));
      }

      if (a3)
      {
        v17 = AppleBCMWLANBssManager::getCurrentBSS((*v5)[2]);
        (*(*v17 + 560))(v17, "AppleBCMWLAN update LQM:", 0, 0, 0, 0, 0);
      }

      v18 = *v5;
      if ((*v5)[573] == (*v5)[572])
      {
        a2[80] = 0;
        a2[469] = 0;
        *(a2 + 20) = 0;
        *(a2 + 36) = 0;
        *(a2 + 28) = 0;
        *(a2 + 42) = 0;
      }

      else
      {
        v19 = *(v18 + 37);
        if (v19 >= *(v18 + 36))
        {
          v20 = *(v18 + 36);
        }

        else
        {
          v20 = *(v18 + 37);
        }

        if (v19)
        {
          v21 = v20;
        }

        else
        {
          v21 = *(v18 + 36);
        }

        v22 = (v21 - 1);
        *(a2 + 7) = v18[13 * v22 + 73];
        *(a2 + 6) = (*v5)[13 * v22 + 72];
        v23 = (*v5)[13 * v22 + 71];
        *(a2 + 5) = v23;
        *(a2 + 16) = (*v5)[13 * v22 + 25];
        *(a2 + 17) = (*v5)[13 * v22 + 26];
        *(a2 + 19) = (*v5)[27 * v22 + 254];
        AppleBCMWLANCore::setDeltaTxFail(**v5, v23);
        v24 = *(a2 + 7);
        if (v24)
        {
          v25 = 100 * *(a2 + 5) / v24;
        }

        else
        {
          v25 = 0;
        }

        AppleBCMWLANCore::setTxPer(**v5, v25);
        *(a2 + 8) = (*v5)[27 * v22 + 231];
        *(a2 + 9) = HIDWORD((*v5)[27 * v22 + 231]);
        *(a2 + 18) = (*v5)[27 * v22 + 124];
        *(a2 + 10) = HIDWORD((*v5)[v22 + 530]);
        *(a2 + 11) = (*v5)[v22 + 530];
        a2[48] = 1;
        a2[80] = 0;
        v26 = *v5;
        if (*(*v5 + 2408))
        {
          a2[80] = 1;
          *(a2 + 41) = *(*v5 + 2408);
          *(a2 + 21) = (3289700 * *(*v5 + 4820)) >> 23;
          *(a2 + 22) = *(*v5 + 2409);
          v26 = *v5;
        }

        if (*(v26 + 2136) < 4u)
        {
          v27 = 0;
        }

        else
        {
          *(a2 + 15) = v26[13 * v22 + 76];
          *(a2 + 14) = (*v5)[13 * v22 + 75];
          *(a2 + 13) = (*v5)[13 * v22 + 74];
          v27 = 1;
        }

        a2[49] = v27;
        a2[469] = 1;
        (*v5)[573] = (*v5)[572];
      }

      a2[468] = 1;
      a2[18] = 1;
      IO80211BssManager::getCurrentCCA((*v5)[2], a2 + 19);
      isCcaStatsExtSupported = AppleBCMWLANCore::isCcaStatsExtSupported(**v5);
      v29 = (*v5)[2];
      CurrentCCAStats = IO80211BssManager::getCurrentCCAStats();
      v31 = CurrentCCAStats;
      if (isCcaStatsExtSupported)
      {
        v32 = (*v5)[3];
        if (v31)
        {
          if (v32 && CCLogStream::shouldLog())
          {
            AppleBCMWLANLQM::updateLQM(v5);
          }
        }

        else if (v32 && CCLogStream::shouldLog())
        {
          AppleBCMWLANLQM::updateLQM(v5);
        }
      }

      else if (CurrentCCAStats == -536870160 && (*v5)[3] && CCLogStream::shouldLog())
      {
        AppleBCMWLANLQM::updateLQM(v5);
      }

      a2[332] = *(*v5 + 8780);
      if (*(*v5 + 8780))
      {
        v33 = *v5 + 8660;
        v34 = *v33;
        v35 = *(*v5 + 8676);
        v36 = *(*v5 + 8708);
        *(a2 + 380) = *(*v5 + 8692);
        *(a2 + 396) = v36;
        *(a2 + 348) = v34;
        *(a2 + 364) = v35;
        v37 = *(v33 + 64);
        v38 = *(v33 + 80);
        v39 = *(v33 + 96);
        *(a2 + 460) = *(v33 + 112);
        *(a2 + 428) = v38;
        *(a2 + 444) = v39;
        *(a2 + 412) = v37;
        a2[333] = *(*v5 + 8781);
        *(a2 + 84) = *(*v5 + 2196);
        *(a2 + 85) = *(*v5 + 2197);
        *(a2 + 86) = *(*v5 + 2198);
        *(*v5 + 2196) = 0;
        *(*v5 + 2197) = 0;
        *(*v5 + 2198) = 0;
      }

      if (*a2 || a2[14] || a2[11] || a2[8])
      {
        v40 = **v5;

        return AppleBCMWLANCore::postLQMEvent(v40, a2);
      }

      else
      {
        result = (*v5)[3];
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            return CCLogStream::logNoticeIf((*v5)[3], 0x200uLL, "[dk] %s@%d:Not posting LQM event: hasRssi(%d) hasNoise(%d) hasSnr(%d) has_per_ant_rssi(%d)\n", "updateLQM", 1041, *a2, a2[14], a2[11], a2[8]);
          }
        }
      }
    }
  }

  return result;
}

IO80211Controller *AppleBCMWLANLQM::updateRSSI(AppleBCMWLANLQM *this, int a2)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  DWORD1(v3[0]) = a2;
  LOBYTE(v3[0]) = 1;
  BYTE8(v3[0]) = 1;
  return AppleBCMWLANLQM::updateLQM(this, v3, 0);
}

uint64_t AppleBCMWLANLQM::updatePerCoreRssi(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  v9 = 0;
  v10 = 0;
  v8[0] = &v9;
  v8[1] = 0x1000100010;
  v3 = (a1 + 40);
  v4 = *(*(a1 + 40) + 8);
  v7[0] = &v9;
  v7[1] = 16;
  v5 = AppleBCMWLANCommander::runIOVarGet(v4, "phy_rssi_ant", v7, v8, 0);
  if (v5)
  {
    if ((*v3)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANLQM::updatePerCoreRssi(v3);
    }
  }

  else
  {
    *(a2 + 8) = 1;
    *(a2 + 9) = v10;
  }

  return v5;
}

uint64_t AppleBCMWLANLQM::updatePerCoreNoise(uint64_t a1, _BYTE *a2)
{
  v3 = a1 + 40;
  if (!IO80211BssManager::isAssociated(*(*(a1 + 40) + 16)))
  {
    return 3766625283;
  }

  if (!a2)
  {
    return 3758097084;
  }

  v12 = 0;
  v10[1] = 0xC000C000CLL;
  v11 = 0;
  v4 = *(*v3 + 8);
  v9[0] = &v11;
  v9[1] = 12;
  v10[0] = &v11;
  v5 = AppleBCMWLANCommander::runIOVarGet(v4, "phy_noise_ant", v9, v10, 0);
  if (v5)
  {
    if (*(*v3 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANLQM::updatePerCoreNoise(v3);
    }
  }

  else if (HIDWORD(v11) == 2)
  {
    a2[328] = 1;
    v6 = v12;
    a2[330] = v12;
    v7 = BYTE1(v12);
    a2[331] = BYTE1(v12);
    a2[329] = v7 - v6;
  }

  return v5;
}

uint64_t AppleBCMWLANLQM::updatePerCoreRssiAsync(uint64_t a1, const void *a2)
{
  v4 = IOMallocZeroTyped();
  if (v4)
  {
    v5 = v4;
    memcpy(v4, a2, 0x1D8uLL);
    v12[0] = a1;
    v12[1] = AppleBCMWLANLQM::handlePerCoreRssiAsyncCallback;
    v12[2] = v5;
    v6 = *(*(a1 + 40) + 8);
    v11 = 1048592;
    v7 = AppleBCMWLANCommander::sendIOVarGet(v6, "phy_rssi_ant", &kNoTxPayload, &v11, v12, 0);
    if (v7 && *(*(a1 + 40) + 24) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d: Failed GET phy_rssi_ant IOCTL, cret[0x%08x]\n", "updatePerCoreRssiAsync", 1164, v7);
    }
  }

  else
  {
    v7 = 3758097085;
    v9 = *(a1 + 40);
    v8 = a1 + 40;
    if (*(v9 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANLQM::updatePerCoreRssiAsync(v8);
    }
  }

  return v7;
}

void AppleBCMWLANLQM::handlePerCoreRssiAsyncCallback(uint64_t a1, int a2, int a3, uint64_t *a4, char *address)
{
  if (a3)
  {
    v7 = (a1 + 40);
    if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANLQM::handlePerCoreRssiAsyncCallback(v7);
      if (!address)
      {
        return;
      }
    }

    else if (!address)
    {
      return;
    }
  }

  else
  {
    v8 = *a4;
    address[8] = 1;
    address[9] = *(v8 + 8);
    address[10] = *(v8 + 9);
    v9 = *(*(a1 + 40) + 24);
    if (v9)
    {
      shouldLog = CCLogStream::shouldLog(v9, 0x8000uLL);
    }

    else
    {
      shouldLog = 0;
    }

    AppleBCMWLANLQM::updateLQM(a1, address, shouldLog);
  }

  IOFree(address, 0x1D8uLL);
}

uint64_t AppleBCMWLANLQM::updateDeltaTxRxStats(AppleBCMWLANLQM *this, char *a2, char *a3, unsigned int a4, unsigned int *a5, unsigned int a6, int a7, char a8)
{
  v10 = this + 40;
  v9 = *(this + 5);
  v11 = *(v9 + 148);
  v12 = v11;
  if (!v11)
  {
    v12 = *(v9 + 144);
  }

  if (a2)
  {
    if (a3)
    {
      if (a5)
      {
        if (a4 >= a6)
        {
          v19 = 3758097084;
          if (*(v9 + 24) && CCLogStream::shouldLog())
          {
            CCLogStream::logAlert(*(*v10 + 24), "[dk] %s@%d:%s unexpected offset = %u\n");
          }
        }

        else
        {
          if (a7 == 4 || a7 == 8)
          {
            v13 = &a2[(v12 - 1) * a6];
            v14 = v11 * a6;
            v15 = &a3[v14];
            v16 = &a2[v14];
            if (a7 != 8)
            {
              v17 = *a5;
              if (a8)
              {
                v18 = 0;
              }

              else
              {
                v22 = *&v13[a4];
                if (!v22)
                {
LABEL_20:
                  v19 = 0;
                  *&v16[a4] = v17;
                  return v19;
                }

                v18 = v17 - v22;
                if (v17 < v22)
                {
                  v25 = v22;
                  v27 = v16;
                  if (*(v9 + 24) && CCLogStream::shouldLog())
                  {
                    CCLogStream::logEmergency(*(*v10 + 24), "[dk] %s@%d: Overflow detected, valin32[%u] pval32[%u]\n", "updateDeltaTxRxStats", 1485, v17, v25);
                  }

                  v18 = 0;
                  v16 = v27;
                }
              }

              *&v15[a4] = v18;
              goto LABEL_20;
            }

            v20 = *a5;
            if (a8)
            {
              v21 = 0;
            }

            else
            {
              v23 = *&v13[a4];
              if (!v23)
              {
LABEL_24:
                v19 = 0;
                *&v16[a4] = v20;
                return v19;
              }

              v21 = v20 - v23;
              if (v20 < v23)
              {
                v26 = v23;
                v28 = v16;
                if (*(v9 + 24) && CCLogStream::shouldLog())
                {
                  CCLogStream::logEmergency(*(*v10 + 24), "[dk] %s@%d: Overflow detected, valin64[%llu] pval64[%llu]\n", "updateDeltaTxRxStats", 1501, v20, v26);
                }

                v21 = 0;
                v16 = v28;
              }
            }

            *&v15[a4] = v21;
            goto LABEL_24;
          }

          v19 = 3758097084;
          if (*(v9 + 24) && CCLogStream::shouldLog())
          {
            CCLogStream::logAlert(*(*v10 + 24), "[dk] %s@%d:%s unexpected sizeOfData = %u\n");
          }
        }
      }

      else
      {
        v19 = 3758097084;
        if (*(v9 + 24) && CCLogStream::shouldLog())
        {
          AppleBCMWLANLQM::updateDeltaTxRxStats(v10);
        }
      }
    }

    else
    {
      v19 = 3758097084;
      if (*(v9 + 24) && CCLogStream::shouldLog())
      {
        AppleBCMWLANLQM::updateDeltaTxRxStats(v10);
      }
    }
  }

  else
  {
    v19 = 3758097084;
    if (*(v9 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANLQM::updateDeltaTxRxStats(v10);
    }
  }

  return v19;
}

uint64_t AppleBCMWLANLQM::updateInfraStatistics(AppleBCMWLANLQM *this, OSData *a2)
{
  v8 = 0;
  memset(v9, 170, sizeof(v9));
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::AutoreleasedAlignedOSData(v9, a2, 4);
  v3 = v9[0];
  if (v9[0])
  {
    *(*(this + 5) + 2720) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v9[0], 4uLL);
    *(*(this + 5) + 2728) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 8uLL);
    *(*(this + 5) + 2736) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x10uLL);
    *(*(this + 5) + 2744) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x20uLL);
    *(*(this + 5) + 2752) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x28uLL);
    *(*(this + 5) + 2760) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x1B0uLL);
    *(*(this + 5) + 2768) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x1B4uLL);
    *(*(this + 5) + 2776) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x1B8uLL);
    *(*(this + 5) + 2784) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x1D8uLL);
    *(*(this + 5) + 2800) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x1A8uLL);
    *(*(this + 5) + 2888) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0xCuLL);
    *(*(this + 5) + 2808) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x40uLL);
    *(*(this + 5) + 2816) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x44uLL);
    *(*(this + 5) + 2824) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x48uLL);
    *(*(this + 5) + 2832) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x50uLL);
    *(*(this + 5) + 2840) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x64uLL);
    *(*(this + 5) + 2848) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x60uLL);
    *(*(this + 5) + 2856) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x1D0uLL);
    *(*(this + 5) + 2864) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x2A0uLL);
    *(*(this + 5) + 2872) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x1C0uLL);
    *(*(this + 5) + 2880) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x1C4uLL);
    *(*(this + 5) + 2928) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x36CuLL);
    *(*(this + 5) + 2932) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x370uLL);
    *(*(this + 5) + 2936) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x374uLL);
    *(*(this + 5) + 2940) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x378uLL);
    *(*(this + 5) + 2944) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x37CuLL);
    *(*(this + 5) + 2948) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x380uLL);
    *(*(this + 5) + 2960) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x38CuLL);
    *(*(this + 5) + 2964) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x390uLL);
    *(*(this + 5) + 2968) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x394uLL);
    *(*(this + 5) + 2980) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x3A0uLL);
    *(*(this + 5) + 2984) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x3A4uLL);
    *(*(this + 5) + 2988) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x3A8uLL);
    *(*(this + 5) + 2992) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x3ACuLL);
    *(*(this + 5) + 2996) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x3B0uLL);
    *(*(this + 5) + 3000) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x3B4uLL);
    *(*(this + 5) + 3004) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x3B8uLL);
    *(*(this + 5) + 3016) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x3C4uLL);
    *(*(this + 5) + 3020) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x3C8uLL);
    *(*(this + 5) + 3024) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x364uLL);
    *(*(this + 5) + 3028) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x368uLL);
    *(*(this + 5) + 3040) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0x158uLL);
    *(*(this + 5) + 3044) = AppleBCMWLANUtil::getCounterValueSafe(&v8, 4uLL, v3, 0xB8uLL);
    AppleBCMWLANLQM::updateInfraMuticastBroadcastDuration(this);
    v4 = v8;
  }

  else
  {
    v4 = 3758097084;
    v6 = *(this + 5);
    v5 = this + 40;
    if (*(v6 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANLQM::updateInfraStatistics(v5);
    }
  }

  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v9);
  return v4;
}

BOOL AppleBCMWLANLQM::updateInfraMuticastBroadcastDuration(AppleBCMWLANCore ***this)
{
  result = AppleBCMWLANCore::is4387C2Up(*this[5]);
  if (result)
  {
    v3 = this[5];
    if (*(v3 + 1516) == 2 && (*(v3 + 3036) & 2) != 0)
    {
      v3[383] = *(v3 + 1084);
      this[5][384] = this[5][551];
    }
  }

  return result;
}

__n128 AppleBCMWLANLQM::updateInfraMuticastBroadcastDuration(uint64_t a1, __n128 *a2)
{
  if (AppleBCMWLANCore::is4387C2Up(**(a1 + 40)))
  {
    v5 = *(a1 + 40);
    if (*(v5 + 3032) == 2)
    {
      a2[32].n128_u32[1] |= *(v5 + 3036);
      v6 = *(a1 + 40);
      if ((*(v6 + 3036) & 2) != 0)
      {
        v7 = *(v6 + 3080);
        a2[32].n128_u64[1] = *(v6 + 3056);
        result = *(v6 + 3064);
        a2[33] = result;
        a2[34].n128_u64[0] = v7;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANLQM::updateInfraGenericStatistics(AppleBCMWLANLQM *this, OSData *a2)
{
  BytesNoCopy = OSData::getBytesNoCopy(a2);
  *(*(this + 5) + 2720) = BytesNoCopy[1];
  *(*(this + 5) + 2728) = BytesNoCopy[2];
  *(*(this + 5) + 2736) = BytesNoCopy[3];
  *(*(this + 5) + 2744) = BytesNoCopy[4];
  *(*(this + 5) + 2752) = BytesNoCopy[5];
  *(*(this + 5) + 2760) = BytesNoCopy[6];
  *(*(this + 5) + 2768) = BytesNoCopy[7];
  *(*(this + 5) + 2776) = BytesNoCopy[8];
  *(*(this + 5) + 2784) = BytesNoCopy[9];
  *(*(this + 5) + 2800) = BytesNoCopy[11];
  *(*(this + 5) + 2888) = BytesNoCopy[22];
  *(*(this + 5) + 2808) = BytesNoCopy[12];
  *(*(this + 5) + 2816) = BytesNoCopy[13];
  *(*(this + 5) + 2824) = BytesNoCopy[14];
  *(*(this + 5) + 2832) = BytesNoCopy[15];
  *(*(this + 5) + 2840) = BytesNoCopy[16];
  *(*(this + 5) + 2848) = BytesNoCopy[17];
  *(*(this + 5) + 2856) = BytesNoCopy[18];
  *(*(this + 5) + 2864) = BytesNoCopy[19];
  *(*(this + 5) + 2872) = BytesNoCopy[20];
  *(*(this + 5) + 2712) = 1;
  return 0;
}

uint64_t AppleBCMWLANLQM::updateInfraSpecificStatistics(AppleBCMWLANLQM *this, OSData *a2)
{
  v17 = 0;
  BytesNoCopy = OSData::getBytesNoCopy(a2);
  memset(v18, 170, sizeof(v18));
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::AutoreleasedAlignedOSData(v18, a2, 4);
  v5 = v18[0];
  if (v18[0])
  {
    v6 = *BytesNoCopy;
    CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(&v17, 2uLL, v18[0], 0);
    v9 = *(this + 5);
    v8 = (this + 40);
    *(v9 + 3032) = CounterValueSafe;
    *(*v8 + 1517) = AppleBCMWLANUtil::getCounterValueSafe(&v17, 2uLL, v5, 2uLL);
    *(*v8 + 760) = AppleBCMWLANUtil::getCounterValueSafe(&v17, 4uLL, v5, 4uLL);
    *(*v8 + 761) = AppleBCMWLANUtil::getCounterValueSafe(&v17, 4uLL, v5, 8uLL);
    if (v6 != 1)
    {
      *(*v8 + 759) |= 1u;
      *(*v8 + 762) = AppleBCMWLANUtil::getCounterValueSafe(&v17, 4uLL, v5, 0xCuLL);
      *(*v8 + 763) = AppleBCMWLANUtil::getCounterValueSafe(&v17, 4uLL, v5, 0x10uLL);
      if (AppleBCMWLANCore::is4387C2Up(**v8) && BytesNoCopy[1] - 21 <= 7)
      {
        *(*v8 + 759) |= 2u;
        *(*v8 + 765) = AppleBCMWLANUtil::getCounterValueSafe(&v17, 4uLL, v5, 0x18uLL);
        *(*v8 + 764) = AppleBCMWLANUtil::getCounterValueSafe(&v17, 4uLL, v5, 0x14uLL);
        (*v8)[383] = *(*v8 + 1084);
        (*v8)[384] = (*v8)[551];
      }
    }

    PrimaryInterface = AppleBCMWLANCore::getPrimaryInterface(**v8);
    v11 = *v8;
    if (PrimaryInterface)
    {
      v12 = AppleBCMWLANCore::getPrimaryInterface(*v11);
      if (((*(*v12 + 856))(v12, 0, *v8 + 379) & 1) == 0)
      {
        AppleBCMWLANLQM::updateInfraSpecificStatistics();
      }
    }

    else if (v11[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANLQM::updateInfraSpecificStatistics(v8);
    }

    v13 = v17;
  }

  else
  {
    v13 = 3758097084;
    v15 = *(this + 5);
    v14 = this + 40;
    if (*(v15 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANLQM::updateInfraSpecificStatistics(v14);
    }
  }

  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v18);
  return v13;
}

uint64_t AppleBCMWLANLQM::updateInfraControlManagementStatistics(AppleBCMWLANLQM *this, OSData *a2)
{
  v5 = 0;
  *(*(this + 5) + 2928) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 4uLL);
  *(*(this + 5) + 2932) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 8uLL);
  *(*(this + 5) + 2936) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0xCuLL);
  *(*(this + 5) + 2940) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x10uLL);
  *(*(this + 5) + 2944) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x14uLL);
  *(*(this + 5) + 2948) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x18uLL);
  *(*(this + 5) + 2960) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x24uLL);
  *(*(this + 5) + 2964) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x28uLL);
  *(*(this + 5) + 2968) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x2CuLL);
  *(*(this + 5) + 2980) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x38uLL);
  *(*(this + 5) + 2984) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x3CuLL);
  *(*(this + 5) + 2988) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x40uLL);
  *(*(this + 5) + 2992) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x44uLL);
  *(*(this + 5) + 2996) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x48uLL);
  *(*(this + 5) + 3000) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x4CuLL);
  *(*(this + 5) + 3004) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x50uLL);
  *(*(this + 5) + 3016) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x5CuLL);
  *(*(this + 5) + 3020) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x60uLL);
  *(*(this + 5) + 3024) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x64uLL);
  *(*(this + 5) + 3028) = AppleBCMWLANUtil::getCounterValueSafe(&v5, 4uLL, a2, 0x68uLL);
  return 0;
}

__n128 AppleBCMWLANLQM::postDeltaSliceUcodeStatistics(AppleBCMWLANLQM *this, unsigned int a2)
{
  v4 = IO80211BssManager::isAssociatedOnHighBand(*(*(this + 5) + 16)) ^ 1;
  v184 = 0xAAAAAAAAAAAAAAAALL;
  v150 = -1431655766;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v6 = a2;
  *(*(this + 5) + 160 * a2 + 3096) = 0xAAAAAAAAAAAAAAAALL;
  v7 = *(this + 5);
  v8 = &v7[20 * a2 + 426];
  v9 = *(v8 + 8);
  v10 = 0xAAAAAAAAAAAAAAAALL - v9;
  v11 = v9 > 0xAAAAAAAAAAAAAAAALL;
  v12 = *v8;
  if (v4 == a2 && v12 != 0 && v10 > 0x10C388CFFLL)
  {
    v16 = &v7[20 * a2];
    v17 = *(v16 + 776);
    v18 = *(v8 + 16);
    v152 = v17 - v18;
    v19 = v17 < v18 || v11;
    v149 = v19;
    v20 = *(v16 + 777);
    v21 = &v7[20 * a2 + 426];
    v22 = *(v21 + 5);
    v23 = v20 >= v22;
    v24 = v20 - v22;
    v25 = !v23;
    v148 = v25;
    v153 = v24;
    v26 = *(v16 + 778);
    v27 = *(v21 + 6);
    v23 = v26 >= v27;
    v28 = v26 - v27;
    v29 = !v23;
    v147 = v29;
    v154 = v28;
    v30 = *(v16 + 779);
    v31 = *(v21 + 7);
    v23 = v30 >= v31;
    v32 = v30 - v31;
    v33 = !v23;
    v146 = v33;
    v155 = v32;
    v34 = *(v16 + 780);
    v35 = *(v21 + 8);
    v23 = v34 >= v35;
    v36 = v34 - v35;
    v37 = !v23;
    v145 = v37;
    v156 = v36;
    v38 = *(v16 + 781);
    v39 = *(v21 + 9);
    v23 = v38 >= v39;
    v40 = v38 - v39;
    v41 = !v23;
    v144 = v41;
    v157 = v40;
    v42 = *(v16 + 782);
    v43 = *(v21 + 10);
    v23 = v42 >= v43;
    v44 = v42 - v43;
    v45 = !v23;
    v143 = v45;
    v158 = v44;
    v46 = *(v16 + 783);
    v47 = *(v21 + 11);
    v23 = v46 >= v47;
    v48 = v46 - v47;
    v49 = !v23;
    v142 = v49;
    v159 = v48;
    v50 = *(v16 + 784);
    v51 = *(v21 + 12);
    v23 = v50 >= v51;
    v52 = v50 - v51;
    v53 = !v23;
    v160 = v52;
    v54 = *(v16 + 785);
    v55 = *(v21 + 13);
    v23 = v54 >= v55;
    v56 = v54 - v55;
    v57 = !v23;
    v161 = v56;
    v58 = *(v16 + 786);
    v59 = *(v21 + 14);
    v23 = v58 >= v59;
    v60 = v58 - v59;
    v61 = !v23;
    v162 = v60;
    v62 = *(v16 + 787);
    v63 = *(v21 + 15);
    v23 = v62 >= v63;
    v64 = v62 - v63;
    v65 = !v23;
    v163 = v64;
    v66 = *(v16 + 788);
    v67 = *(v21 + 16);
    v23 = v66 >= v67;
    v68 = v66 - v67;
    v69 = !v23;
    v164 = v68;
    v70 = *(v16 + 789);
    v71 = *(v21 + 17);
    v23 = v70 >= v71;
    v72 = v70 - v71;
    v73 = !v23;
    v165 = v72;
    v74 = *(v16 + 790);
    v75 = *(v21 + 18);
    v23 = v74 >= v75;
    v76 = v74 - v75;
    v77 = !v23;
    v166 = v76;
    v78 = *(v16 + 791);
    v79 = *(v21 + 19);
    v23 = v78 >= v79;
    v80 = v78 - v79;
    v81 = !v23;
    v167 = v80;
    v82 = *(v16 + 792);
    v83 = *(v21 + 20);
    v23 = v82 >= v83;
    v84 = v82 - v83;
    v85 = !v23;
    v168 = v84;
    v86 = *(v16 + 793);
    v87 = *(v21 + 21);
    v23 = v86 >= v87;
    v88 = v86 - v87;
    v89 = !v23;
    v169 = v88;
    v90 = *(v16 + 794);
    v91 = *(v21 + 22);
    v23 = v90 >= v91;
    v92 = v90 - v91;
    v93 = !v23;
    v170 = v92;
    v94 = *(v16 + 795);
    v95 = *(v21 + 23);
    v23 = v94 >= v95;
    v96 = v94 - v95;
    v97 = !v23;
    v171 = v96;
    v98 = *(v16 + 796);
    v99 = *(v21 + 24);
    v23 = v98 >= v99;
    v100 = v98 - v99;
    v101 = !v23;
    v172 = v100;
    v102 = *(v16 + 797);
    v103 = *(v21 + 25);
    v23 = v102 >= v103;
    v104 = v102 - v103;
    v105 = !v23;
    v173 = v104;
    v106 = *(v16 + 798);
    v107 = *(v21 + 26);
    v23 = v106 >= v107;
    v108 = v106 - v107;
    v109 = !v23;
    v174 = v108;
    v110 = *(v16 + 799);
    v111 = *(v21 + 27);
    v23 = v110 >= v111;
    v112 = v110 - v111;
    v113 = !v23;
    v175 = v112;
    v114 = *(v16 + 800);
    v115 = *(v21 + 28);
    v23 = v114 >= v115;
    v116 = v114 - v115;
    v117 = !v23;
    v176 = v116;
    v118 = *(v16 + 801);
    v119 = *(v21 + 29);
    v23 = v118 >= v119;
    v120 = v118 - v119;
    v121 = !v23;
    v177 = v120;
    v122 = *(v16 + 802);
    v123 = *(v21 + 30);
    v23 = v122 >= v123;
    v124 = v122 - v123;
    v125 = !v23;
    v178 = v124;
    v126 = *(v16 + 803);
    v127 = *(v21 + 31);
    v23 = v126 >= v127;
    v128 = v126 - v127;
    v129 = !v23;
    v179 = v128;
    v130 = *(v16 + 804);
    v131 = *(v21 + 32);
    v180 = v130 - v131;
    v132 = v130 < v131;
    v133 = *(v16 + 805);
    v134 = *(v21 + 33);
    v181 = v133 - v134;
    v135 = v133 < v134;
    v136 = *(v16 + 806);
    v137 = *(v21 + 34);
    v23 = v136 >= v137;
    v182 = v136 - v137;
    v138 = *(v21 + 35);
    v139 = !v23;
    v140 = *(v16 + 807);
    v183 = v140 - v138;
    v151 = v16[387];
    if ((v149 & 1) == 0 && (v148 & 1) == 0 && (v147 & 1) == 0 && (v146 & 1) == 0 && (v145 & 1) == 0 && (v144 & 1) == 0 && (v143 & 1) == 0 && (v142 & 1) == 0 && (v53 & 1) == 0 && (v57 & 1) == 0 && (v61 & 1) == 0 && (v65 & 1) == 0 && (v69 & 1) == 0 && (v73 & 1) == 0 && (v77 & 1) == 0 && (v81 & 1) == 0 && (v85 & 1) == 0 && (v89 & 1) == 0 && (v93 & 1) == 0 && (v97 & 1) == 0 && (v101 & 1) == 0 && (v105 & 1) == 0 && (v109 & 1) == 0 && (v113 & 1) == 0 && (v117 & 1) == 0 && (v121 & 1) == 0 && (v125 & 1) == 0 && (v129 & 1) == 0 && !v132 && !v135 && (v139 & 1) == 0 && v140 >= v138)
    {
      v150 = 0;
      if (*v7)
      {
        AppleBCMWLANCore::postMessageInfra(*v7, 0xAFu, &v150, 0x8CuLL);
      }
    }

    v7 = *(this + 5);
    goto LABEL_135;
  }

  if (v12)
  {
    v15 = v10 > 0x10C388CFFLL;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
LABEL_135:
    v141 = &v7[20 * v6];
    *(v141 + 219) = *(v141 + 199);
    *(v141 + 220) = *(v141 + 200);
    *(v141 + 221) = *(v141 + 201);
    *(v141 + 222) = *(v141 + 202);
    *(v141 + 215) = *(v141 + 195);
    *(v141 + 216) = *(v141 + 196);
    *(v141 + 217) = *(v141 + 197);
    *(v141 + 218) = *(v141 + 198);
    *(v141 + 213) = *(v141 + 193);
    result = *(v141 + 194);
    *(v141 + 214) = result;
  }

  return result;
}

__n128 AppleBCMWLANLQM::printDeltaSliceUcodeRxErrs(AppleBCMWLANLQM *this, unsigned int a2)
{
  isAssociatedOnHighBand = IO80211BssManager::isAssociatedOnHighBand(*(*(this + 5) + 16));
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v6 = a2;
  *(*(this + 5) + 48 * a2 + 4024) = 0xAAAAAAAAAAAAAAAALL;
  v7 = *(this + 5);
  v8 = v7 + 514;
  v9 = v7[6 * a2 + 515];
  v10 = 0xAAAAAAAAAAAAAAAALL - v9;
  v11 = v9 > 0xAAAAAAAAAAAAAAAALL;
  if ((isAssociatedOnHighBand ^ 1) == a2)
  {
    v12 = &v8[6 * a2];
    if (*v12 && v10 > 0x10C388CFFLL)
    {
      v16 = &v7[6 * a2];
      v17 = *(v16 + 1008);
      v18 = *(v12 + 4);
      v19 = v17 - v18;
      v20 = v17 < v18 || v11;
      v21 = *(v16 + 1009);
      v22 = &v8[6 * v6];
      v23 = *(v22 + 5);
      v24 = *(v22 + 6);
      v25 = v21 - v23;
      v26 = v21 < v23;
      v27 = *(v16 + 1010);
      v28 = v27 - v24;
      v29 = v27 < v24;
      v30 = *(v16 + 1011);
      v31 = *(v22 + 7);
      v32 = *(v22 + 8);
      v33 = v30 - v31;
      v34 = v30 < v31;
      v35 = *(v16 + 1012);
      v36 = v35 - v32;
      v37 = v35 < v32;
      v38 = *(v16 + 1013);
      v40 = *(v22 + 9);
      v39 = *(v22 + 10);
      v41 = v38 - v40;
      v42 = *(v16 + 1014);
      v43 = v42 - v39;
      v44 = v42 < v39;
      if ((v20 & 1) == 0 && !v26 && !v29 && !v34 && !v37 && v38 >= v40 && !v44)
      {
        if (*v7 && IO80211Controller::isLQMOSLOGEnabled(*v7))
        {
          io80211_os_log();
        }

        v45 = **(this + 5);
        if (v45 && IO80211Controller::isLQMIOLOGEnabled(v45))
        {
          v46 = "2G";
          if (isAssociatedOnHighBand)
          {
            v46 = "HighBand";
          }

          IOLog("LQM-WIFI: (%s)  rxNotPrimary20s=%u ucodeLateDrop=%u rxInvalidUcodeLateWrongMACPHY=%u rxLate30us=%u rxLegacyFrmInvalid=%u txSifsErr=%u ooseqMacSusp=%u\n", v46, v19, v25, v28, v33, v36, v41, v43);
        }

        v7 = *(this + 5);
        if (*v7)
        {
          isLQMCCLOGEnabled = IO80211Controller::isLQMCCLOGEnabled(*v7);
          v7 = *(this + 5);
          if (isLQMCCLOGEnabled)
          {
            v48 = *v7;
            v49 = "2G";
            if (isAssociatedOnHighBand)
            {
              v49 = "HighBand";
            }

            IO80211Controller::logLQMToCC(v48, "LQM-WIFI: (%s)  rxNotPrimary20s=%u ucodeLateDrop=%u rxInvalidUcodeLateWrongMACPHY=%u rxLate30us=%u rxLegacyFrmInvalid=%u txSifsErr=%u ooseqMacSusp=%u\n", v49, v19, v25, v28, v33, v36, v41, v43);
            v7 = *(this + 5);
          }
        }
      }

      v14 = &v7[6 * v6 + 514];
      goto LABEL_35;
    }
  }

  v14 = &v8[6 * a2];
  if (*v14)
  {
    v15 = v10 > 0x10C388CFFLL;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
LABEL_35:
    v50 = &v7[6 * v6];
    result = *(v50 + 251);
    v51 = *(v50 + 253);
    *(v14 + 16) = *(v50 + 252);
    *(v14 + 32) = v51;
    *v14 = result;
  }

  return result;
}

__n128 AppleBCMWLANLQM::printDeltaDynBWStats(AppleBCMWLANLQM *this)
{
  v2 = *(this + 5);
  v3 = *(v2 + 4612);
  v4 = *(v2 + 4712);
  v109 = v3 - v4;
  v5 = v3 < v4;
  v6 = *(v2 + 4616);
  v7 = *(v2 + 4716);
  v108 = v6 - v7;
  v8 = v6 < v7;
  v9 = *(v2 + 4620);
  v10 = *(v2 + 4720);
  v107 = v9 - v10;
  v11 = v9 < v10;
  v12 = *(v2 + 4624);
  v13 = *(v2 + 4724);
  v106 = v12 - v13;
  v14 = v12 < v13;
  v15 = *(v2 + 4628);
  v16 = *(v2 + 4728);
  v105 = v15 - v16;
  v17 = v15 < v16;
  v18 = *(v2 + 4632);
  v19 = *(v2 + 4732);
  v104 = v18 - v19;
  v20 = v18 < v19;
  v21 = *(v2 + 4636);
  v22 = *(v2 + 4736);
  v103 = v21 - v22;
  v23 = v21 < v22;
  v24 = *(v2 + 4640);
  v25 = *(v2 + 4740);
  v102 = v24 - v25;
  v26 = v24 < v25;
  v27 = *(v2 + 4644);
  v28 = *(v2 + 4744);
  v101 = v27 - v28;
  v29 = v27 < v28;
  v30 = *(v2 + 4648);
  v31 = *(v2 + 4748);
  v100 = v30 - v31;
  v32 = v30 < v31;
  v33 = *(v2 + 4652);
  v34 = *(v2 + 4752);
  v99 = v33 - v34;
  v35 = v33 < v34;
  v36 = *(v2 + 4656);
  v37 = *(v2 + 4756);
  v98 = v36 - v37;
  v38 = v36 < v37;
  v39 = *(v2 + 4660);
  v40 = *(v2 + 4760);
  v97 = v39 - v40;
  v41 = v39 < v40;
  v42 = *(v2 + 4664);
  v43 = *(v2 + 4764);
  v96 = v42 - v43;
  v44 = v42 < v43;
  v45 = *(v2 + 4668);
  v46 = *(v2 + 4768);
  v47 = v45 - v46;
  v48 = v45 < v46;
  v49 = *(v2 + 4672);
  v50 = *(v2 + 4772);
  v51 = v49 - v50;
  v52 = v49 < v50;
  v53 = *(v2 + 4692);
  v54 = *(v2 + 4792);
  v95 = v53 - v54;
  v55 = v53 < v54;
  v56 = *(v2 + 4696);
  v57 = *(v2 + 4796);
  v94 = v56 - v57;
  v58 = v56 < v57;
  v59 = *(v2 + 4700);
  v60 = *(v2 + 4800);
  v93 = v59 - v60;
  v61 = v59 < v60;
  v62 = *(v2 + 4704);
  v63 = *(v2 + 4804);
  v92 = v62 - v63;
  v64 = v62 < v63;
  v65 = *(v2 + 4676);
  v66 = *(v2 + 4776);
  v91 = v65 - v66;
  v67 = v65 < v66;
  v68 = *(v2 + 4680);
  v69 = *(v2 + 4780);
  v90 = v68 - v69;
  v70 = v68 < v69;
  v71 = *(v2 + 4684);
  v72 = *(v2 + 4784);
  v89 = v71 - v72;
  v73 = v71 < v72;
  v74 = *(v2 + 4688);
  v75 = *(v2 + 4788);
  v76 = v74 >= v75;
  v77 = v74 - v75;
  v78 = !v76;
  if (!v5 && !v8 && !v11 && !v14 && !v17 && !v20 && !v23 && !v26 && !v29 && !v32 && !v35 && !v38 && !v41 && !v44 && !v48 && !v52 && !v55 && !v58 && !v61 && !v64 && !v67 && !v70 && !v73 && (v78 & 1) == 0)
  {
    if (*v2 && IO80211Controller::isLQMOSLOGEnabled(*v2))
    {
      io80211_os_log();
    }

    v79 = **(this + 5);
    if (v79 && IO80211Controller::isLQMIOLOGEnabled(v79))
    {
      IOLog("LQM-WIFI: Dynamic BW Stats: TxRTS [%u,  %u,  %u,  %u]   RxRTS [%u,  %u,  %u,  %u]   TxCTS [%u,  %u,  %u,  %u]   RxCTS [%u,  %u,  %u,  %u]\n", v109, v108, v107, v106, v105, v104, v103, v102, v101, v100, v99, v98, v97, v96, v47, v51);
    }

    v80 = **(this + 5);
    if (v80)
    {
      isLQMCCLOGEnabled = IO80211Controller::isLQMCCLOGEnabled(v80);
      v82 = *(this + 5);
      if (isLQMCCLOGEnabled)
      {
        IO80211Controller::logLQMToCC(*v82, "LQM-WIFI: Dynamic BW Stats: TxRTS [%u,  %u,  %u,  %u]   RxRTS [%u,  %u,  %u,  %u]   TxCTS [%u,  %u,  %u,  %u]   RxCTS [%u,  %u,  %u,  %u]\n", v109, v108, v107, v106, v105, v104, v103, v102, v101, v100, v99, v98, v97, v96, v47, v51);
        v82 = *(this + 5);
      }

      if (*v82 && IO80211Controller::isLQMOSLOGEnabled(*v82))
      {
        io80211_os_log();
      }
    }

    v83 = **(this + 5);
    if (v83 && IO80211Controller::isLQMIOLOGEnabled(v83))
    {
      IOLog("LQM-WIFI: Dynamic BW Stats: TxMPDU [%u,  %u,  %u,  %u]   RxMPDU [%u,  %u,  %u,  %u]\n", v95, v94, v93, v92, v91, v90, v89, v77);
    }

    v84 = **(this + 5);
    if (v84 && IO80211Controller::isLQMCCLOGEnabled(v84))
    {
      IO80211Controller::logLQMToCC(**(this + 5), "LQM-WIFI: Dynamic BW Stats: TxMPDU [%u,  %u,  %u,  %u]   RxMPDU [%u,  %u,  %u,  %u]\n", v95, v94, v93, v92, v91, v90, v89, v77);
    }
  }

  v85 = *(this + 5);
  result = *(v85 + 4656);
  v87 = *(v85 + 4688);
  *(v85 + 4772) = *(v85 + 4672);
  *(v85 + 4788) = v87;
  *(v85 + 4804) = *(v85 + 4704);
  v88 = *(v85 + 4624);
  *(v85 + 4708) = *(v85 + 4608);
  *(v85 + 4724) = v88;
  *(v85 + 4740) = *(v85 + 4640);
  *(v85 + 4756) = result;
  return result;
}

uint64_t AppleBCMWLANLQM::updateSliceUcodeStatistics(AppleBCMWLANLQM *this, OSData *a2, unsigned int a3, int a4)
{
  v22[0] = 0;
  if (a3 >= 2)
  {
    v20 = 3758097084;
    if (*(*(this + 5) + 24) && CCLogStream::shouldLog())
    {
      CCLogStream::logEmergency(*(*(this + 5) + 24), "[dk] %s@%d:Out of range slice index %d\n", "updateSliceUcodeStatistics", 1978, a3);
    }

    return v20;
  }

  if (a4 > 3)
  {
    if (a4 != 4)
    {
      if (a4 == 6)
      {
        if ((OSData::getBytesNoCopy(a2, 4uLL, 4uLL) & 3) != 0)
        {
          AppleBCMWLANLQM::updateSliceUcodeStatistics(this);
          return v22[1];
        }

        v11 = a3;
        *(*(this + 5) + 160 * a3 + 3192) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 4uLL);
        *(*(this + 5) + 160 * a3 + 3196) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 8uLL);
        *(*(this + 5) + 160 * a3 + 3200) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xCuLL);
        *(*(this + 5) + 160 * a3 + 3204) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x10uLL);
        *(*(this + 5) + 160 * a3 + 3208) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x40uLL);
        *(*(this + 5) + 160 * a3 + 3216) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x8CuLL);
        *(*(this + 5) + 160 * a3 + 3220) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x7CuLL);
        *(*(this + 5) + 160 * a3 + 3224) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x48uLL);
        *(*(this + 5) + 160 * a3 + 3228) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x14uLL);
        *(*(this + 5) + 160 * a3 + 3212) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x14CuLL);
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    BytesNoCopy = OSData::getBytesNoCopy(a2, 4uLL, 4uLL);
    v9 = this + 40;
    v18 = *(this + 5);
    if ((BytesNoCopy & 3) != 0)
    {
      v20 = 3758097084;
      if (*(v18 + 24) && CCLogStream::shouldLog())
      {
        AppleBCMWLANLQM::updateSliceUcodeStatistics(this + 40);
      }

      return v20;
    }

    v10 = 5 * a3;
    v11 = a3;
    v12 = *(v18 + 160 * a3 + 3240);
    *(*v9 + 160 * a3 + 3104) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x10CuLL);
    *(*v9 + 160 * a3 + 3108) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x110uLL);
    *(*v9 + 160 * a3 + 3112) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x20CuLL);
    *(*v9 + 160 * a3 + 3116) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x210uLL);
    *(*v9 + 160 * a3 + 3124) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x104uLL);
    *(*v9 + 160 * a3 + 3128) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x108uLL);
    *(*v9 + 160 * a3 + 3132) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x1F0uLL);
    *(*v9 + 160 * a3 + 3140) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x50uLL);
    *(*v9 + 160 * a3 + 3144) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x48uLL);
    *(*v9 + 160 * a3 + 3148) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x4CuLL);
    *(*v9 + 160 * a3 + 3152) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x58uLL);
    *(*v9 + 160 * a3 + 3156) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x160uLL);
    *(*v9 + 160 * a3 + 3160) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x114uLL);
    *(*v9 + 160 * a3 + 3164) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x138uLL);
    *(*v9 + 160 * a3 + 3168) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x13CuLL);
    *(*v9 + 160 * a3 + 3172) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x94uLL);
    *(*v9 + 160 * a3 + 3120) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 4uLL);
    *(*v9 + 160 * a3 + 3136) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x54uLL);
    *(*v9 + 160 * a3 + 3176) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x40uLL);
    *(*v9 + 160 * a3 + 3180) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x80uLL);
    *(*v9 + 160 * a3 + 3184) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x120uLL);
    *(*v9 + 160 * a3 + 3188) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x130uLL);
    *(*v9 + 160 * a3 + 3232) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x154uLL);
    *(*v9 + 160 * a3 + 3236) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x158uLL);
    *(*v9 + 160 * a3 + 3240) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x208uLL);
    v13 = a2;
    v14 = 60;
LABEL_16:
    *(*v9 + 32 * v10 + 3244) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, v13, v14);
    v19 = *(*v9 + 32 * v10 + 3240);
    if (v19 > v12)
    {
      *(*v9 + 3080) += v19 - v12;
    }

    goto LABEL_18;
  }

  if (a4 == 1)
  {
    v15 = OSData::getBytesNoCopy(a2, 0, 4uLL);
    v9 = this + 40;
    v16 = *(this + 5);
    if ((v15 & 3) != 0)
    {
      v20 = 3758097084;
      if (*(v16 + 24) && CCLogStream::shouldLog())
      {
        AppleBCMWLANLQM::updateSliceUcodeStatistics(this + 40);
      }

      return v20;
    }

    v10 = 5 * a3;
    v11 = a3;
    v12 = *(v16 + 160 * a3 + 3240);
    *(*v9 + 32 * v10 + 3104) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x48uLL);
    *(*v9 + 32 * v10 + 3108) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x4CuLL);
    *(*v9 + 32 * v10 + 3112) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x50uLL);
    *(*v9 + 32 * v10 + 3116) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x54uLL);
    *(*v9 + 32 * v10 + 3124) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x58uLL);
    *(*v9 + 32 * v10 + 3128) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x5CuLL);
    *(*v9 + 32 * v10 + 3132) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x64uLL);
    *(*v9 + 32 * v10 + 3140) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x6CuLL);
    *(*v9 + 32 * v10 + 3144) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x70uLL);
    *(*v9 + 32 * v10 + 3148) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x74uLL);
    *(*v9 + 32 * v10 + 3152) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x78uLL);
    *(*v9 + 32 * v10 + 3156) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xA8uLL);
    *(*v9 + 32 * v10 + 3160) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xB0uLL);
    *(*v9 + 32 * v10 + 3164) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xB4uLL);
    *(*v9 + 32 * v10 + 3168) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xB8uLL);
    *(*v9 + 32 * v10 + 3172) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xE8uLL);
    *(*v9 + 32 * v10 + 3192) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0);
    *(*v9 + 32 * v10 + 3196) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 4uLL);
    *(*v9 + 32 * v10 + 3200) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 8uLL);
    *(*v9 + 32 * v10 + 3204) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xCuLL);
    *(*v9 + 32 * v10 + 3208) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x30uLL);
    *(*v9 + 32 * v10 + 3216) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x3CuLL);
    *(*v9 + 32 * v10 + 3220) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xDCuLL);
    *(*v9 + 32 * v10 + 3224) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xE0uLL);
    *(*v9 + 32 * v10 + 3228) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xECuLL);
    *(*v9 + 32 * v10 + 3212) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x34uLL);
    *(*v9 + 32 * v10 + 3120) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x60uLL);
    *(*v9 + 32 * v10 + 3136) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x68uLL);
    *(*v9 + 32 * v10 + 3176) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x9CuLL);
    *(*v9 + 32 * v10 + 3180) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xA4uLL);
    *(*v9 + 32 * v10 + 3184) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xF0uLL);
    *(*v9 + 32 * v10 + 3188) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xFCuLL);
    *(*v9 + 32 * v10 + 3240) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x90uLL);
    v13 = a2;
    v14 = 148;
    goto LABEL_16;
  }

  if (a4 != 3)
  {
LABEL_11:
    v11 = a3;
LABEL_18:
    *(*(this + 5) + 160 * v11 + 3088) = 1;
    AppleBCMWLANLQM::postDeltaSliceUcodeStatistics(this, a3);
    return v22[0];
  }

  v7 = OSData::getBytesNoCopy(a2, 0, 4uLL);
  v9 = this + 40;
  v8 = *(this + 5);
  if ((v7 & 3) == 0)
  {
    v10 = 5 * a3;
    v11 = a3;
    v12 = *(v8 + 160 * a3 + 3240);
    *(*v9 + 160 * a3 + 3104) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x30uLL);
    *(*v9 + 160 * a3 + 3108) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x34uLL);
    *(*v9 + 160 * a3 + 3112) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x38uLL);
    *(*v9 + 160 * a3 + 3116) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x3CuLL);
    *(*v9 + 160 * a3 + 3124) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x40uLL);
    *(*v9 + 160 * a3 + 3128) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x44uLL);
    *(*v9 + 160 * a3 + 3132) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x4CuLL);
    *(*v9 + 160 * a3 + 3140) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x54uLL);
    *(*v9 + 160 * a3 + 3144) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x58uLL);
    *(*v9 + 160 * a3 + 3148) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x5CuLL);
    *(*v9 + 160 * a3 + 3152) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x60uLL);
    *(*v9 + 160 * a3 + 3156) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x90uLL);
    *(*v9 + 160 * a3 + 3160) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x98uLL);
    *(*v9 + 160 * a3 + 3164) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x100uLL);
    *(*v9 + 160 * a3 + 3168) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x104uLL);
    *(*v9 + 160 * a3 + 3172) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xC4uLL);
    *(*v9 + 160 * a3 + 3192) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0);
    *(*v9 + 160 * a3 + 3196) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 4uLL);
    *(*v9 + 160 * a3 + 3200) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 8uLL);
    *(*v9 + 160 * a3 + 3204) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xCuLL);
    *(*v9 + 160 * a3 + 3208) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x18uLL);
    *(*v9 + 160 * a3 + 3216) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x24uLL);
    *(*v9 + 160 * a3 + 3220) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xB8uLL);
    *(*v9 + 160 * a3 + 3224) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xBCuLL);
    *(*v9 + 160 * a3 + 3228) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xC8uLL);
    *(*v9 + 160 * a3 + 3212) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x34uLL);
    *(*v9 + 160 * a3 + 3120) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x48uLL);
    *(*v9 + 160 * a3 + 3136) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x50uLL);
    *(*v9 + 160 * a3 + 3176) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x84uLL);
    *(*v9 + 160 * a3 + 3180) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x8CuLL);
    *(*v9 + 160 * a3 + 3184) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xCCuLL);
    *(*v9 + 160 * a3 + 3188) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0xD8uLL);
    *(*v9 + 160 * a3 + 3232) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x128uLL);
    *(*v9 + 160 * a3 + 3236) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x1B0uLL);
    *(*v9 + 160 * a3 + 3240) = AppleBCMWLANUtil::getCounterValueSafe(v22, 4uLL, a2, 0x78uLL);
    v13 = a2;
    v14 = 124;
    goto LABEL_16;
  }

  v20 = 3758097084;
  if (*(v8 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANLQM::updateSliceUcodeStatistics(this + 40);
  }

  return v20;
}

uint64_t AppleBCMWLANLQM::updateAdditionalRxCounters(AppleBCMWLANLQM *this, OSData *a2)
{
  v6 = 0;
  memset(v7, 170, sizeof(v7));
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::AutoreleasedAlignedOSData(v7, a2, 2);
  v3 = v7[0];
  if (v7[0])
  {
    *(*(this + 5) + 2900) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, v7[0], 0x30CuLL);
    *(*(this + 5) + 2904) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, v3, 0x314uLL);
    *(*(this + 5) + 2908) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, v3, 0x334uLL);
    *(*(this + 5) + 2912) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, v3, 0x338uLL);
    *(*(this + 5) + 2916) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, v3, 0x33CuLL);
    *(*(this + 5) + 2920) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, v3, 0xE8uLL);
    *(*(this + 5) + 2924) = AppleBCMWLANUtil::getCounterValueSafe(&v6, 4uLL, v3, 0xF4uLL);
    *(*(this + 5) + 2896) = 1;
    v4 = v6;
  }

  else
  {
    AppleBCMWLANLQM::updateAdditionalRxCounters();
    v4 = 3758097084;
  }

  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v7);
  return v4;
}

uint64_t AppleBCMWLANLQM::updateSliceUcodeRxErr(AppleBCMWLANLQM *this, OSData *a2, unsigned int a3, int a4)
{
  v15[0] = 0;
  if (a3 < 2)
  {
    if (a4 == 2305)
    {
      if ((OSData::getBytesNoCopy(a2, 0, 4uLL) & 3) == 0)
      {
        v9 = 3 * a3;
        v10 = a3;
        *(*(this + 5) + 48 * a3 + 4032) = AppleBCMWLANUtil::getCounterValueSafe(v15, 4uLL, a2, 0);
        *(*(this + 5) + 48 * a3 + 4036) = AppleBCMWLANUtil::getCounterValueSafe(v15, 4uLL, a2, 4uLL);
        *(*(this + 5) + 48 * a3 + 4040) = AppleBCMWLANUtil::getCounterValueSafe(v15, 4uLL, a2, 8uLL);
        *(*(this + 5) + 48 * a3 + 4044) = AppleBCMWLANUtil::getCounterValueSafe(v15, 4uLL, a2, 0xCuLL);
        *(*(this + 5) + 48 * a3 + 4048) = AppleBCMWLANUtil::getCounterValueSafe(v15, 4uLL, a2, 0x10uLL);
        *(*(this + 5) + 48 * a3 + 4052) = AppleBCMWLANUtil::getCounterValueSafe(v15, 4uLL, a2, 0x14uLL);
        v11 = a2;
        v12 = 24;
        goto LABEL_10;
      }

      AppleBCMWLANLQM::updateSliceUcodeRxErr(this);
    }

    else
    {
      if (a4 != 4117)
      {
        v10 = a3;
        goto LABEL_12;
      }

      if ((OSData::getBytesNoCopy(a2, 0, 4uLL) & 3) != 0)
      {
        AppleBCMWLANLQM::updateSliceUcodeRxErr(this);
      }

      else
      {
        CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(v15, 2uLL, a2, 0);
        v8 = AppleBCMWLANUtil::getCounterValueSafe(v15, 2uLL, a2, 2uLL);
        if (CounterValueSafe == 1)
        {
          if ((v8 & 0xFFE0) != 0)
          {
            v9 = 3 * a3;
            v10 = a3;
            *(*(this + 5) + 48 * a3 + 4032) = AppleBCMWLANUtil::getCounterValueSafe(v15, 4uLL, a2, 4uLL);
            *(*(this + 5) + 48 * a3 + 4036) = AppleBCMWLANUtil::getCounterValueSafe(v15, 4uLL, a2, 8uLL);
            *(*(this + 5) + 48 * a3 + 4040) = AppleBCMWLANUtil::getCounterValueSafe(v15, 4uLL, a2, 0xCuLL);
            *(*(this + 5) + 48 * a3 + 4044) = AppleBCMWLANUtil::getCounterValueSafe(v15, 4uLL, a2, 0x10uLL);
            *(*(this + 5) + 48 * a3 + 4048) = AppleBCMWLANUtil::getCounterValueSafe(v15, 4uLL, a2, 0x14uLL);
            *(*(this + 5) + 48 * a3 + 4052) = AppleBCMWLANUtil::getCounterValueSafe(v15, 4uLL, a2, 0x18uLL);
            v11 = a2;
            v12 = 28;
LABEL_10:
            *(*(this + 5) + 16 * v9 + 4056) = AppleBCMWLANUtil::getCounterValueSafe(v15, 4uLL, v11, v12);
LABEL_12:
            *(*(this + 5) + 48 * v10 + 4016) = 1;
            AppleBCMWLANLQM::printDeltaSliceUcodeRxErrs(this, a3);
            return v15[0];
          }

          AppleBCMWLANLQM::updateSliceUcodeRxErr(this);
        }

        else
        {
          AppleBCMWLANLQM::updateSliceUcodeRxErr(this);
        }
      }
    }

    return v15[1];
  }

  v13 = 3758097084;
  if (*(*(this + 5) + 24) && CCLogStream::shouldLog())
  {
    CCLogStream::logEmergency(*(*(this + 5) + 24), "[dk] %s@%d:Out of range slice index %d\n", "updateSliceUcodeRxErr", 2154, a3);
  }

  return v13;
}

uint64_t AppleBCMWLANLQM::updateDynBwStats(AppleBCMWLANLQM *this, int a2, OSData *a3)
{
  result = 0;
  v10 = 0;
  if (a2 != 4107)
  {
    v11 = 0;
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    if ((OSData::getBytesNoCopy(a3, 0, 4uLL) & 3) == 0)
    {
      v7 = this + 40;
      *(*(this + 5) + 4608) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 2uLL, a3, 0);
      *(*(this + 5) + 4610) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 2uLL, a3, 2uLL);
      if (a2 == 4121)
      {
        v9 = *v7;
        if (*(*v7 + 4608) != 1)
        {
          AppleBCMWLANLQM::updateDynBwStats(v9);
          return v10;
        }

        if (*(v9 + 4610) <= 0x43u)
        {
          AppleBCMWLANLQM::updateDynBwStats(v9);
          return v10;
        }
      }

      else if (a2 == 4108)
      {
        v8 = *v7;
        if (*(*v7 + 4608) != 2)
        {
          AppleBCMWLANLQM::updateDynBwStats(v8);
          return v10;
        }

        if (*(v8 + 4610) <= 0x63u)
        {
          AppleBCMWLANLQM::updateDynBwStats(v8);
          return v10;
        }
      }

      *(*v7 + 4612) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, a3, 4uLL);
      *(*v7 + 4616) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, a3, 8uLL);
      *(*v7 + 4620) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, a3, 0xCuLL);
      *(*v7 + 4624) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, a3, 0x10uLL);
      *(*v7 + 4628) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, a3, 0x14uLL);
      *(*v7 + 4632) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, a3, 0x18uLL);
      *(*v7 + 4636) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, a3, 0x1CuLL);
      *(*v7 + 4640) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, a3, 0x20uLL);
      *(*v7 + 4644) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, a3, 0x24uLL);
      *(*v7 + 4648) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, a3, 0x28uLL);
      *(*v7 + 4652) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, a3, 0x2CuLL);
      *(*v7 + 4656) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, a3, 0x30uLL);
      *(*v7 + 4660) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, a3, 0x34uLL);
      *(*v7 + 4664) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, a3, 0x38uLL);
      *(*v7 + 4668) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, a3, 0x3CuLL);
      *(*v7 + 4612) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, a3, 4uLL);
      if (-*(*v7 + 4808) >> 2 >= 0x465uLL)
      {
        *(*v7 + 4808) = 0;
        AppleBCMWLANLQM::printDeltaDynBWStats(this);
      }

      return v10;
    }

    AppleBCMWLANLQM::updateDynBwStats();
    return v10;
  }

  return result;
}

uint64_t AppleBCMWLANLQM::updateSliceRxAmpduStats(AppleBCMWLANLQM *this, OSData *a2, unsigned int a3)
{
  v72 = 0;
  v5 = (this + 40);
  isAssociatedOnHighBand = IO80211BssManager::isAssociatedOnHighBand(*(*(this + 5) + 16));
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69 = v7;
  v70 = v7;
  v67 = v7;
  v68 = v7;
  if (a3 >= 2)
  {
    AppleBCMWLANLQM::updateSliceRxAmpduStats(v5);
    return v72;
  }

  v8 = isAssociatedOnHighBand;
  if ((OSData::getBytesNoCopy(a2, 4uLL, 4uLL) & 3) != 0)
  {
    AppleBCMWLANLQM::updateSliceRxAmpduStats();
    return v72;
  }

  v71 = 0xAAAAAAAAAAAAAAAALL;
  v9 = 9 * a3;
  LODWORD((*v5)[v9 + 468]) = AppleBCMWLANUtil::getCounterValueSafe(&v72, 4uLL, a2, 4uLL);
  HIDWORD((*v5)[v9 + 468]) = AppleBCMWLANUtil::getCounterValueSafe(&v72, 4uLL, a2, 8uLL);
  LODWORD((*v5)[v9 + 469]) = AppleBCMWLANUtil::getCounterValueSafe(&v72, 4uLL, a2, 0x20uLL);
  HIDWORD((*v5)[v9 + 469]) = AppleBCMWLANUtil::getCounterValueSafe(&v72, 4uLL, a2, 0x28uLL);
  LODWORD((*v5)[v9 + 470]) = AppleBCMWLANUtil::getCounterValueSafe(&v72, 4uLL, a2, 0x2CuLL);
  HIDWORD((*v5)[v9 + 470]) = AppleBCMWLANUtil::getCounterValueSafe(&v72, 4uLL, a2, 0x30uLL);
  LODWORD((*v5)[v9 + 471]) = AppleBCMWLANUtil::getCounterValueSafe(&v72, 4uLL, a2, 0x34uLL);
  HIDWORD((*v5)[v9 + 471]) = AppleBCMWLANUtil::getCounterValueSafe(&v72, 4uLL, a2, 0x38uLL);
  LODWORD((*v5)[v9 + 472]) = AppleBCMWLANUtil::getCounterValueSafe(&v72, 4uLL, a2, 0x3CuLL);
  HIDWORD((*v5)[v9 + 472]) = AppleBCMWLANUtil::getCounterValueSafe(&v72, 4uLL, a2, 0x40uLL);
  LODWORD((*v5)[v9 + 473]) = AppleBCMWLANUtil::getCounterValueSafe(&v72, 4uLL, a2, 0x4CuLL);
  HIDWORD((*v5)[v9 + 473]) = AppleBCMWLANUtil::getCounterValueSafe(&v72, 4uLL, a2, 0x50uLL);
  LODWORD((*v5)[v9 + 474]) = AppleBCMWLANUtil::getCounterValueSafe(&v72, 4uLL, a2, 0x24uLL);
  if (OSData::getLength(a2) >= 0x55)
  {
    HIDWORD((*v5)[9 * a3 + 474]) = AppleBCMWLANUtil::getCounterValueSafe(&v72, 4uLL, a2, 0x54uLL);
  }

  LODWORD((*v5)[9 * a3 + 466]) = 1;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v10 = v71;
  (*v5)[9 * a3 + 467] = v71;
  v11 = *v5;
  v12 = &(*v5)[9 * a3 + 484];
  v13 = *(v12 + 8);
  v14 = v10 >= v13;
  v15 = v10 - v13;
  v16 = !v14;
  v17 = *v12;
  if ((v8 ^ 1) == a3 && v17 && v15 > 0x10C388CFFLL)
  {
    v18 = &v11[9 * a3];
    v19 = *(v18 + 936);
    v20 = *(v12 + 16);
    HIDWORD(v67) = v19 - v20;
    if (v19 < v20)
    {
      v16 = 1;
    }

    v21 = *(v18 + 937);
    v22 = *(v12 + 20);
    v14 = v21 >= v22;
    v23 = v21 - v22;
    v24 = !v14;
    LODWORD(v68) = v23;
    v25 = *(v18 + 938);
    v26 = *(v12 + 24);
    v14 = v25 >= v26;
    v27 = v25 - v26;
    v28 = !v14;
    DWORD1(v68) = v27;
    v29 = *(v18 + 939);
    v30 = *(v12 + 28);
    v14 = v29 >= v30;
    v31 = v29 - v30;
    v32 = !v14;
    DWORD2(v68) = v31;
    v33 = *(v18 + 940);
    v34 = *(v12 + 32);
    v14 = v33 >= v34;
    v35 = v33 - v34;
    v36 = !v14;
    HIDWORD(v68) = v35;
    v37 = *(v18 + 941);
    v38 = *(v12 + 36);
    v14 = v37 >= v38;
    v39 = v37 - v38;
    v40 = !v14;
    LODWORD(v69) = v39;
    v41 = *(v18 + 942);
    v42 = *(v12 + 40);
    v14 = v41 >= v42;
    v43 = v41 - v42;
    v44 = !v14;
    DWORD1(v69) = v43;
    v45 = *(v18 + 943);
    v46 = *(v12 + 44);
    v14 = v45 >= v46;
    v47 = v45 - v46;
    v48 = !v14;
    DWORD2(v69) = v47;
    v49 = *(v18 + 944);
    v50 = *(v12 + 48);
    v14 = v49 >= v50;
    v51 = v49 - v50;
    v52 = !v14;
    HIDWORD(v69) = v51;
    v53 = *(v18 + 945);
    v54 = *(v12 + 52);
    v14 = v53 >= v54;
    v55 = v53 - v54;
    v56 = !v14;
    LODWORD(v70) = v55;
    v57 = *(v18 + 946);
    v58 = *(v12 + 56);
    v14 = v57 >= v58;
    v59 = v57 - v58;
    v60 = !v14;
    DWORD1(v70) = v59;
    v61 = *(v18 + 947);
    v62 = *(v12 + 60);
    v14 = v61 >= v62;
    v63 = v61 - v62;
    v64 = !v14;
    DWORD2(v70) = v63;
    HIDWORD(v70) = *(v18 + 948);
    *(&v67 + 4) = v18[467];
    if ((v16 & 1) == 0 && (v24 & 1) == 0 && (v28 & 1) == 0 && (v32 & 1) == 0 && (v36 & 1) == 0 && (v40 & 1) == 0 && (v44 & 1) == 0 && (v48 & 1) == 0 && (v52 & 1) == 0 && (v56 & 1) == 0 && (v60 & 1) == 0 && (v64 & 1) == 0)
    {
      LODWORD(v67) = 0;
      if (*v11)
      {
        AppleBCMWLANCore::postMessageInfra(*v11, 0xAEu, &v67, 0x40uLL);
      }
    }

    v11 = *v5;
    goto LABEL_63;
  }

  if (!v17 || v15 > 0x10C388CFFLL)
  {
LABEL_63:
    v65 = &v11[9 * a3];
    *(v65 + 243) = *(v65 + 234);
    *(v65 + 244) = *(v65 + 235);
    *(v65 + 245) = *(v65 + 236);
    v65[492] = v65[474];
    *(v65 + 242) = *(v65 + 233);
  }

  return v72;
}

uint64_t AppleBCMWLANLQM::dumpStats(AppleBCMWLANCore ***this, char *a2, unsigned int a3, int a4)
{
  AppleBCMWLANLQM::recalculateRSSIAvg(this);
  NetAdapter = AppleBCMWLANCore::getNetAdapter(*this[5]);
  v9 = AppleBCMWLANNetAdapter::getLastRealTimeChange(NetAdapter);
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v10 = this[5];
  v11 = v10[3];
  v12 = AppleBCMWLANCore::getNetAdapter(*v10);
  v62 = v9 / 0x3B9ACA00;
  v63 = v9 % 0x3B9ACA00;
  isRealTimeTrafficSettingEnabled = AppleBCMWLANNetAdapter::isRealTimeTrafficSettingEnabled(v12);
  v61 = 0x2DD01FC06;
  v64 = a3;
  v13 = IO80211Print();
  v14 = this[5][2];
  if (v14)
  {
    v13 += IO80211BssManager::dumpBSS(v14, a2);
  }

  v65 = a4;
  v15 = IOMallocZeroData();
  v16 = v15;
  if (!v15 || (*v15 = 0, LODWORD(v15) = snprintf(v15, 0x400uLL, "RSSI         Avg %d [", *(this[5] + 11)), v17 = 1024, v15 <= 0x3FF))
  {
    v17 = v15;
  }

  for (i = 36; i != 44; ++i)
  {
    v19 = 0;
    if (!v16 || v17 > 0x3FE || ((v20 = 1024, v21 = *(this[5] + i), i != 43) ? (v22 = " ") : (v22 = "]"), v19 = snprintf(&v16[v17], 1024 - v17, "%d%s", *(this[5] + i), v22), v19 <= 0x3FF))
    {
      v20 = v19;
    }

    v17 += v20;
  }

  v23 = 0;
  if (!v16 || v17 > 0x3FE || (v24 = 1024, v23 = snprintf(&v16[v17], 1024 - v17, "\n", isRealTimeTrafficSettingEnabled, v61, 473034410, v62, v63), v23 <= 0x3FF))
  {
    v24 = v23;
  }

  v66 = a2;
  if (a2)
  {
    if (v16)
    {
      v25 = &a2[v64 + v13];
      if (v65 - v13 >= v24 + v17)
      {
        v26 = v24 + v17;
      }

      else
      {
        v26 = v65 - v13;
      }

      if (v25 > 0x7FFFFDFFFFFFLL)
      {
        IOLog("%s:%06u: BUF_PRINT_EMIT: Invalid address detected: buf[%p] addr[%p] len[%6d] remain[%6d] printed[%6d] e[%d]\n", "dumpStats", 2350, v16, &a2[v64 + v13], v26, v65 - v13, v24 + v17, 0);
      }

      else
      {
        memmove(v25, v16, v26);
      }

      *v16 = 0;
      v13 += v26;
      goto LABEL_34;
    }

LABEL_31:
    v28 = 0;
LABEL_35:
    v29 = v28;
    goto LABEL_36;
  }

  if (!v16)
  {
    goto LABEL_31;
  }

  if (this[5][3] && CCLogStream::shouldLog())
  {
    v27 = this[5][3];
    CCLogStream::log();
  }

  *v16 = 0;
LABEL_34:
  v29 = 1024;
  v28 = snprintf(v16, 0x400uLL, "RSSI Rx Data Avg %d [", *(this[5] + 35));
  if (v28 <= 0x3FF)
  {
    goto LABEL_35;
  }

LABEL_36:
  for (j = 0; j != 64; ++j)
  {
    v31 = 0;
    if (!v16 || v29 > 0x3FE)
    {
      goto LABEL_45;
    }

    v32 = 1024;
    v33 = *(this[5] + j + 76);
    if ((j & 7) != 0)
    {
      v34 = " ";
    }

    else
    {
      v34 = "  ";
    }

    if (j == 63)
    {
      v34 = "]";
    }

    v31 = snprintf(&v16[v29], 1024 - v29, "%d%s", *(this[5] + j + 76), v34);
    if (v31 <= 0x3FF)
    {
LABEL_45:
      v32 = v31;
    }

    v29 += v32;
  }

  v35 = 0;
  if (!v16 || v29 > 0x3FE || (v36 = 1024, v35 = snprintf(&v16[v29], 1024 - v29, "\n"), v35 <= 0x3FF))
  {
    v36 = v35;
  }

  if (!a2)
  {
    if (v16)
    {
      if (this[5][3] && CCLogStream::shouldLog())
      {
        v39 = this[5][3];
        CCLogStream::log();
      }

      goto LABEL_65;
    }

LABEL_62:
    v40 = 0;
    goto LABEL_66;
  }

  if (!v16)
  {
    goto LABEL_62;
  }

  v37 = &a2[v64 + v13];
  if (v65 - v13 >= v36 + v29)
  {
    v38 = v36 + v29;
  }

  else
  {
    v38 = v65 - v13;
  }

  if (v37 > 0x7FFFFDFFFFFFLL)
  {
    IOLog("%s:%06u: BUF_PRINT_EMIT: Invalid address detected: buf[%p] addr[%p] len[%6d] remain[%6d] printed[%6d] e[%d]\n", "dumpStats", 2360, v16, &a2[v64 + v13], v38, v65 - v13, v36 + v29, 0);
  }

  else
  {
    memmove(v37, v16, v38);
  }

  v13 += v38;
LABEL_65:
  strcpy(v16, "TxStats [");
  v40 = 9;
LABEL_66:
  v41 = this[5];
  LODWORD(v42) = *(v41 + 36);
  if (v42)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      v45 = 0;
      if (!v16 || v40 > 0x3FE || ((v46 = 1024, v47 = &v41[v43], v48 = *(v47 + 19), v49 = v47[21], v44 != v42 - 1) ? (v50 = " ") : (v50 = "]"), v45 = snprintf(&v16[v40], 1024 - v40, "(Fl=%u Rt=%u Tx=%u)%s", v48, DWORD2(v48), v49, v50), v45 <= 0x3FF))
      {
        v46 = v45;
      }

      v40 += v46;
      ++v44;
      v41 = this[5];
      v42 = *(v41 + 36);
      v43 += 13;
    }

    while (v44 < v42);
  }

  v51 = 0;
  if (v16)
  {
    v52 = v66;
    if (v40 <= 0x3FE)
    {
      v53 = 1024;
      v51 = snprintf(&v16[v40], 1024 - v40, "\n");
      if (v51 > 0x3FF)
      {
        if (v66)
        {
          goto LABEL_80;
        }

        goto LABEL_88;
      }
    }
  }

  else
  {
    v52 = v66;
  }

  v53 = v51;
  if (v52)
  {
LABEL_80:
    if (v16)
    {
      v54 = v53 + v40;
      v55 = &v52[v64 + v13];
      if (v65 - v13 >= v53 + v40)
      {
        v56 = v54;
      }

      else
      {
        v56 = v65 - v13;
      }

      if (v55 > 0x7FFFFDFFFFFFLL)
      {
        IOLog("%s:%06u: BUF_PRINT_EMIT: Invalid address detected: buf[%p] addr[%p] len[%6d] remain[%6d] printed[%6d] e[%d]\n", "dumpStats", 2371, v16, &v52[v64 + v13], v56, v65 - v13, v54, 0);
      }

      else
      {
        memmove(v55, v16, v56);
      }

      *v16 = 0;
      v13 += v56;
      v52 = v66;
    }

    goto LABEL_96;
  }

LABEL_88:
  if (v16)
  {
    if (this[5][3] && CCLogStream::shouldLog())
    {
      v57 = this[5][3];
      CCLogStream::log();
    }

    *v16 = 0;
  }

LABEL_96:
  v58 = AppleBCMWLANLQM::dumpWmeCounters(this, v52);
  if (v16)
  {
    IOFreeData();
  }

  return v58 + v13;
}

uint64_t AppleBCMWLANLQM::dumpWmeCounters(AppleBCMWLANLQM *this, char *a2)
{
  v2 = *(this + 5);
  v3 = *(v2 + 24);
  v4 = *(v2 + 6504);
  v24 = *(v2 + 4948);
  v25 = *(v2 + 4956);
  v22 = *(v2 + 4932);
  v23 = *(v2 + 4940);
  v20 = *(v2 + 4916);
  v21 = *(v2 + 4924);
  v18 = *(v2 + 4900);
  v19 = *(v2 + 4908);
  v16 = *(v2 + 5012);
  v17 = *(v2 + 5020);
  v14 = *(v2 + 4996);
  v15 = *(v2 + 5004);
  v12 = *(v2 + 4884);
  v13 = *(v2 + 4892);
  v10 = *(v2 + 4868);
  v11 = *(v2 + 4876);
  v8 = *(v2 + 4852);
  v9 = *(v2 + 4860);
  v6 = *(v2 + 4836);
  v7 = *(v2 + 4844);
  return IO80211Print();
}

uint64_t AppleBCMWLANLQM::setStatsTimerIntervalMS(AppleBCMWLANLQM *this, uint64_t a2)
{
  *(*(this + 5) + 4593) = a2 == 5000;
  *(*(this + 5) + 4596) = a2;
  v2 = *(this + 5);
  if (*(v2 + 8528))
  {
    if (a2 == 1000)
    {
      v6 = 15;
    }

    else
    {
      if (a2 != 5000)
      {
        if (*(v2 + 24))
        {
          shouldLog = CCLogStream::shouldLog();
          v2 = *(this + 5);
          if (shouldLog)
          {
            CCLogStream::logAlert(*(v2 + 24), "[dk] %s@%d: Error: Unknown timer interval %d\n", "setStatsTimerIntervalMS", 2414, a2);
            v2 = *(this + 5);
          }
        }
      }

      v6 = 3;
    }

    *(v2 + 8476) = v6;
    (*(**(*(this + 5) + 8528) + 56))(*(*(this + 5) + 8528), a2);
  }

  return 0;
}

uint64_t AppleBCMWLANLQM::loadBss(AppleBCMWLANCore ***this, BOOL *a2, ether_addr *a3)
{
  v5 = 3766625283;
  *a2 = 1;
  v6 = (this + 5);
  if (AppleBCMWLANCore::isAssociated(*this[5]))
  {
    *(*v6 + 1635) = 1936;
    v7 = *v6;
    v17[0] = *v6 + 6540;
    v17[1] = 0x79000880790;
    v8 = v7[1];
    v16[0] = v17[0];
    v16[1] = 4;
    v9 = AppleBCMWLANCommander::runIOCtlGet(v8, 136, v16, v17, 0);
    v10 = *v6;
    if (v9)
    {
      v11 = v9;
      if (v10[3] && CCLogStream::shouldLog())
      {
        AppleBCMWLANLQM::loadBss(v6);
      }

      if (v11 == -536870185)
      {
        v12 = -536870185;
      }

      else
      {
        v12 = 0;
      }

      if (v11 == -536870165)
      {
        return 3758097131;
      }

      else
      {
        return v12;
      }
    }

    else if (AppleBCMWLANCore::isAssociated(*v10))
    {
      if (*(*v6 + 1638) | *(*v6 + 3278))
      {
        *a2 = 0;
        v13 = *(*v6 + 1638);
        *&a3->octet[4] = *(*v6 + 3278);
        *a3->octet = v13;
        *(*v6 + 6538) = 0;
      }

      else
      {
        ++*(*v6 + 6538);
        IO80211BssManager::getCurrentBSSID((*v6)[2], a3);
        if ((*v6)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANLQM::loadBss(v6);
        }
      }

      if (*(*v6 + 6538) >= *(*v6 + 8476))
      {
        if ((*v6)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANLQM::loadBss(v6);
        }

        if (AppleBCMWLAN_isVerboseDebugLoggingAllowed() && AppleBCMWLANCore::getFaultReporter(**v6))
        {
          FaultReporter = AppleBCMWLANCore::getFaultReporter(**v6);
          CCFaultReporter::reportFault(FaultReporter, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANLQM.cpp", 0x9CFu, "loadBss", 0, -469792766, 0);
        }

        v5 = 0;
        *(*v6 + 6538) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANLQM::checkForChannelSwitch(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(**(a1 + 40));
  AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, *(a2 + 76));
  v5 = AppleBCMWLANCore::getChanSpecHandler(**v3);
  v6 = *AppleBCMWLANBssManager::getCurrentBSS((*v3)[2]);
  v7 = (*(v6 + 264))();
  result = AppleBCMWLANChanSpec::getBCMChannelSpec(v5, v7);
  if (*(a2 + 76) != result)
  {
    v9 = result;
    v10 = *v3;
    if ((*v3)[3])
    {
      shouldLog = CCLogStream::shouldLog();
      v10 = *v3;
      if (shouldLog)
      {
        v21 = v10[3];
        CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(v10[2]);
        v23 = *AppleBCMWLANBssManager::getCurrentBSS((*v3)[2]);
        v24 = (*(v23 + 256))();
        CCLogStream::logAlertIf(v21, 0x200uLL, "[dk] %s@%d:updating channel %p spec %x %u -> %x ctl %u\n", "checkForChannelSwitch", 2534, CurrentBSS, v9, v24, *(a2 + 76), *(a2 + 92));
        v10 = *v3;
      }
    }

    AppleBCMWLANBssManager::getCurrentBSS(v10[2]);
    if (*(a2 + 85))
    {
      v12 = *(a2 + 92);
    }

    else
    {
      ChanSpecGetPrimaryChannel();
    }

    IO80211BSSBeacon::updateChannelInfo();
    v13 = AppleBCMWLANCore::getChanSpecHandler(**v3);
    v14 = *AppleBCMWLANBssManager::getCurrentBSS((*v3)[2]);
    v15 = (*(v14 + 264))();
    BCMChannelSpec = AppleBCMWLANChanSpec::getBCMChannelSpec(v13, v15);
    v17 = *v3;
    if ((*v3)[3])
    {
      v18 = (*v3)[3];
      v19 = CCLogStream::shouldLog();
      v17 = *v3;
      if (v19)
      {
        AppleBCMWLANLQM::checkForChannelSwitch(v17, BCMChannelSpec, v3, &v25);
        v17 = v25;
      }
    }

    v25 = 0xAAAAAAAAAAAAAAAALL;
    v26 = -1431655766;
    v20 = v17[2];
    result = IO80211BssManager::getCurrentChannel();
    if (!result)
    {
      return AppleBCMWLANCore::postMessageInfra(**v3, 0x52u, &v25, 0xCuLL);
    }
  }

  return result;
}

uint64_t AppleBCMWLANLQM::updateBSSInfo(AppleBCMWLANLQM *this)
{
  v36 = 0;
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
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v3 = (this + 40);
  v2 = *(this + 5);
  DWORD1(v7) = *(v2 + 6622);
  LOBYTE(v7) = 1;
  if (*(v2 + 6660) >= 0x7Eu)
  {
    WORD6(v7) = *(v2 + 6668);
    BYTE11(v7) = 1;
    LOWORD(v8) = *(v2 + 6624);
    BYTE14(v7) = 1;
  }

  if (AppleBCMWLANLQM::updatePerCoreRssi(this, &v7) && (*v3)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANLQM::updateBSSInfo(v3);
  }

  BYTE8(v27) = 1;
  if (AppleBCMWLANLQM::updatePerCoreNoise(this, &v7) && (*v3)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANLQM::updateBSSInfo(v3);
  }

  AppleBCMWLANLQM::updateLQM(this, &v7, 0);
  v4 = **(this + 5);
  if (v4)
  {
    if (AppleBCMWLANCore::getConfigManager(v4))
    {
      ConfigManager = AppleBCMWLANCore::getConfigManager(**v3);
      if (AppleBCMWLANConfigManager::isTxFailEventSupported(ConfigManager))
      {
        if (AppleBCMWLANBssManager::getCurrentBSS((*v3)[2]) && v7 && (DWORD1(v7) + 70) >= 6)
        {
          AppleBCMWLANCore::configureTxFailEventThreshold(**v3, SDWORD1(v7) > -71);
        }
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANLQM::updateCounters(AppleBCMWLANCore ***this, ether_addr *a2)
{
  if (!AppleBCMWLANCore::isAssociated(*this[5]))
  {
    return 3766625283;
  }

  if (!AppleBCMWLANCore::isStaInfoIoVarSupported(*this[5]) || (IO80211BssManager::isAssociatedToAdhoc(this[5][2]) & 1) != 0)
  {
    v4 = 0;
LABEL_5:
    AppleBCMWLANLQM::updateLinkQualityMetrics(this, 1);
    return v4;
  }

  StaInfo = AppleBCMWLANLQM::getStaInfo(this, a2, (this[5] + 534));
  v4 = StaInfo;
  if (!StaInfo || StaInfo == -469794537)
  {
    if (AppleBCMWLANCore::featureFlagIsBitSet(*this[5], 115) && AppleBCMWLANCore::get11beAdapter(*this[5]))
    {
      AppleBCMWLANLQM::getMloPerfStats(this, a2);
    }

    goto LABEL_5;
  }

  return v4;
}

uint64_t AppleBCMWLANLQM::getStaInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 40);
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**(a1 + 40)) >= 7)
  {
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**v5) >= 0xF)
    {
      v6 = 296;
    }

    else
    {
      v6 = 280;
    }
  }

  else
  {
    v6 = 264;
  }

  v7 = v6;
  v8 = IOMallocZeroData();
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  v30[0] = v8;
  v30[1] = v7 | ((v7 | (v7 << 16)) << 16);
  v10 = (*v5)[1];
  v29[0] = a2;
  v29[1] = 6;
  v11 = AppleBCMWLANCommander::runIOVarGet(v10, "sta_info", v29, v30, 0);
  if (v11)
  {
    if ((*v5)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANLQM::getStaInfo(v5);
    }
  }

  else
  {
    *a3 = *v9;
    v12 = *(v9 + 16);
    v13 = *(v9 + 32);
    v14 = *(v9 + 64);
    *(a3 + 48) = *(v9 + 48);
    *(a3 + 64) = v14;
    *(a3 + 16) = v12;
    *(a3 + 32) = v13;
    v15 = *(v9 + 80);
    v16 = *(v9 + 96);
    v17 = *(v9 + 128);
    *(a3 + 112) = *(v9 + 112);
    *(a3 + 128) = v17;
    *(a3 + 80) = v15;
    *(a3 + 96) = v16;
    v18 = *(v9 + 144);
    v19 = *(v9 + 160);
    v20 = *(v9 + 192);
    *(a3 + 176) = *(v9 + 176);
    *(a3 + 192) = v20;
    *(a3 + 144) = v18;
    *(a3 + 160) = v19;
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**v5) > 6)
    {
      if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**v5) > 0xE)
      {
        v24 = *(v9 + 224);
        *(a3 + 208) = *(v9 + 208);
        *(a3 + 224) = v24;
        v25 = *(v9 + 240);
        v26 = *(v9 + 256);
        v27 = *(v9 + 272);
        *(a3 + 288) = *(v9 + 288);
        *(a3 + 256) = v26;
        *(a3 + 272) = v27;
        *(a3 + 240) = v25;
      }

      else
      {
        *(a3 + 208) = *(v9 + 208);
        v21 = *(v9 + 224);
        v22 = *(v9 + 240);
        v23 = *(v9 + 256);
        *(a3 + 272) = *(v9 + 272);
        *(a3 + 240) = v22;
        *(a3 + 256) = v23;
        *(a3 + 224) = v21;
      }
    }

    else
    {
      *(a3 + 208) = 3407873;
      *(a3 + 212) = *v9;
      *(a3 + 216) = *(v9 + 4);
      *(a3 + 232) = *(v9 + 20);
      *(a3 + 248) = *(v9 + 36);
    }
  }

  IOFreeData();
  return v11;
}

AppleBCMWLANLQM *AppleBCMWLANLQM::getMloPerfStats(AppleBCMWLANLQM *this, ether_addr *a2)
{
  v3 = this;
  v4 = *(this + 5);
  if (*(v4 + 8536))
  {
    v5 = AppleBCMWLANCore::get11beAdapter(*v4);
    this = AppleBCMWLAN11beAdapter::getMloStatus(v5);
    *(*(v3 + 5) + 8536) = 0;
    v4 = *(v3 + 5);
  }

  if (*(v4 + 8780))
  {
    v6 = 0;
    do
    {
      this = AppleBCMWLANLQM::getMloPerLinkStats(v3, v6++, a2);
    }

    while (*(*(v3 + 5) + 8780) > v6);
  }

  return this;
}

uint64_t AppleBCMWLANLQM::updateMloLinkChangeInfo(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 40;
  *(*(a1 + 40) + 8536) = 1;
  v4 = (a2 + 4);
  v5 = *(a2 + 4) - 4;
  if (v5 <= 2)
  {
    ++*(*v3 - 4 * (v5 & 0x3F) + 8792);
  }

  result = *(*v3 + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANLQM::updateMloLinkChangeInfo(v3, a2, v4);
    }
  }

  if (*(a2 + 12))
  {
    v7 = 0;
    do
    {
      result = *(*v3 + 24);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          result = AppleBCMWLANLQM::updateMloLinkChangeInfo(v3, a2 + 16, v7);
        }
      }

      ++v7;
    }

    while (v7 < *(a2 + 12));
  }

  return result;
}

uint64_t AppleBCMWLANLQM::storeMloLinkInfo(uint64_t this, unsigned int a2, uint64_t a3, const ether_addr *a4)
{
  if (a2 <= 2)
  {
    v7 = this;
    ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(**(this + 40));
    this = AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, a3);
    *(*(v7 + 40) + 40 * a2 + 8541) = this;
    *(*(v7 + 40) + 40 * a2 + 8661) = this;
    v9 = *(v7 + 40) + 40 * a2 + 8540;
    v10 = *&a4->octet[4];
    *(v9 + 3) = *a4->octet;
    *(v9 + 7) = v10;
    v11 = *(v7 + 40) + 40 * a2 + 8660;
    v12 = *&a4->octet[4];
    *(v11 + 3) = *a4->octet;
    *(v11 + 7) = v12;
  }

  return this;
}

uint64_t AppleBCMWLANLQM::getMloPerLinkStats(AppleBCMWLANLQM *this, unsigned int a2, ether_addr *a3)
{
  v53 = -21846;
  v54 = -86;
  v52 = -86;
  v51 = -1431655766;
  v6 = IOMallocZeroData();
  if (!v6)
  {
    AppleBCMWLANLQM::getMloPerLinkStats();
  }

  v7 = v6;
  *(v6 + 288) = 0;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 208) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  v8 = this + 40;
  v10 = *(*(this + 5) + 40 * a2 + 8543) == *a3->octet && *(*(this + 5) + 40 * a2 + 8547) == *&a3->octet[4];
  *(*(this + 5) + 40 * a2 + 8540) = v10;
  *(*v8 + 40 * a2 + 8660) = *(*v8 + 40 * a2 + 8540);
  v11 = *v8;
  if (*(*v8 + 40 * a2 + 8660))
  {
    v12 = v11 + 4272;
    goto LABEL_10;
  }

  StaInfo = AppleBCMWLANLQM::getStaInfo(this, v11 + 40 * a2 + 8543, v6);
  v11 = *(this + 5);
  if (!StaInfo)
  {
    v12 = v7;
LABEL_10:
    v13 = *(v12 + 12);
    v14 = v11 + 40 * a2;
    v15 = *(v14 + 8552);
    v16 = v13 >= v15;
    v17 = v13 - v15;
    v18 = !v16;
    *(v14 + 8672) = v17;
    v19 = *(v12 + 172);
    v20 = *v8 + 40 * a2;
    v21 = *(v20 + 8556);
    *(v20 + 8676) = v19 - v21;
    if (v19 < v21)
    {
      v22 = 1;
    }

    else
    {
      v22 = v18;
    }

    v23 = *(v12 + 60);
    v24 = *v8 + 40 * a2;
    v25 = *(v24 + 8564);
    *(v24 + 8684) = v23 - v25;
    if (v23 < v25)
    {
      v22 = 1;
    }

    v26 = *(v12 + 56);
    v27 = *v8 + 40 * a2;
    v28 = *(v27 + 8560);
    *(v27 + 8680) = v26 - v28;
    if (v26 < v28)
    {
      v22 = 1;
    }

    v29 = *(v12 + 164);
    v30 = *v8 + 40 * a2;
    v31 = *(v30 + 8568);
    *(v30 + 8688) = v29 - v31;
    if (v29 < v31)
    {
      v32 = 1;
    }

    else
    {
      v32 = v22;
    }

    v33 = *(*v8 + 40 * a2 + 8661);
    v34 = v33 >> 14;
    if (v33 >> 14)
    {
      if (v34 == 1)
      {
        v35 = 18230;
      }

      else
      {
        if (v34 != 3)
        {
          goto LABEL_35;
        }

        v35 = 18229;
      }
    }

    else
    {
      v35 = 18226;
    }

    v53 = v35;
LABEL_35:
    v54 = 0;
    v38 = (v33 >> 11) & 7;
    if (v38 > 3)
    {
      if (v38 == 4)
      {
        v39 = 541929528;
      }

      else
      {
        if (v38 != 5)
        {
          goto LABEL_45;
        }

        v39 = 1295005233;
      }
    }

    else if (v38 == 2)
    {
      v39 = 541929522;
    }

    else
    {
      if (v38 != 3)
      {
        goto LABEL_45;
      }

      v39 = 541929524;
    }

    v51 = v39;
LABEL_45:
    v52 = 0;
    PrimaryChannel = ChanSpecGetPrimaryChannel();
    v41 = *v8;
    if (*(*v8 + 24))
    {
      shouldLog = CCLogStream::shouldLog();
      v41 = *v8;
      if (shouldLog)
      {
        v48 = *(v41 + 24);
        v49 = v41 + 40 * a2;
        v50 = "NO";
        if (v32)
        {
          v50 = "YES";
        }

        CCLogStream::logAlert(v48, "[dk] %s@%d:MLO Stats [%s Preferred:%u] chan: %u / %s rssi: [%d, %d] tx_pkts: %d rx_pkts: %d tx_rate: %d rx_rate: %d tx_fail: %d ex_retry: %d idle: %d ovflo: %s\n", "getMloPerLinkStats", 2774, &v53, *(v49 + 8660), PrimaryChannel, &v51, *(v12 + 144), *(v12 + 145), *(v49 + 8676), *(v49 + 8684), *(v12 + 68), *(v12 + 72), *(v49 + 8680), *(v49 + 8688), *(v49 + 8672), v50);
        v41 = *v8;
      }
    }

    v37 = 0;
    v43 = *(v12 + 144);
    *(v41 + 40 * a2 + 8549) = v43;
    *(*v8 + 40 * a2 + 8669) = v43;
    v44 = *(v12 + 145);
    *(*v8 + 40 * a2 + 8550) = v44;
    *(*v8 + 40 * a2 + 8670) = v44;
    v45 = *(v12 + 68);
    v46 = *(v12 + 72);
    *(*v8 + 40 * a2 + 8572) = v45;
    *(*v8 + 40 * a2 + 8692) = v45;
    *(*v8 + 40 * a2 + 8576) = v46;
    *(*v8 + 40 * a2 + 8696) = v46;
    *(*v8 + 40 * a2 + 8552) = *(v12 + 12);
    *(*v8 + 40 * a2 + 8556) = *(v12 + 172);
    *(*v8 + 40 * a2 + 8560) = *(v12 + 56);
    *(*v8 + 40 * a2 + 8568) = *(v12 + 164);
    goto LABEL_48;
  }

  v37 = StaInfo;
  if (*(v11 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANLQM::getMloPerLinkStats(this + 5);
  }

LABEL_48:
  IOFreeData();
  return v37;
}

uint64_t AppleBCMWLANLQM::getCurrentTxRate(AppleBCMWLANCore ***this, unsigned int *a2)
{
  if (!AppleBCMWLANCore::isAssociated(*this[5]))
  {
    return 3766625283;
  }

  result = 0;
  *a2 = *(this[5] + 1085) / 0x3E8u;
  return result;
}

uint64_t AppleBCMWLANLQM::checkInfraStaPeerStatsSupport(AppleBCMWLANLQM *this)
{
  v3 = 0;
  v2 = 0;
  return AppleBCMWLANLQM::getStaInfo(this, &v2, *(this + 5) + 4272);
}

uint64_t AppleBCMWLANLQM::updateOFDMDesense(uint64_t this, int a2)
{
  *(*(this + 40) + 4828) = 1;
  *(*(this + 40) + 4824) = a2;
  return this;
}

IO80211Controller *AppleBCMWLANLQM::handleLQMEvent(IO80211Controller *result, _DWORD *a2)
{
  v2 = result;
  v3 = a2[5];
  if (v3 == 4)
  {
    v11 = a2[12];
    if (v11)
    {
      result = AppleBCMWLANCore::isAssociated(**(result + 5));
      if (result)
      {
        v42 = 0;
        v40 = 0u;
        v41 = 0u;
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
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = 0u;
        DWORD1(v13) = bswap32(v11);
        LOBYTE(v13) = 1;
        BYTE8(v13) = 1;
        v12 = v2;
        v10 = 0;
        return AppleBCMWLANLQM::updateLQM(v12, &v13, v10);
      }
    }
  }

  else if (v3 == 12)
  {
    v4 = a2[12];
    v5 = a2[13];
    v6 = a2[14];
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
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
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    DWORD1(v13) = bswap32(v4);
    if (v4)
    {
      result = AppleBCMWLANCore::isAssociated(**(result + 5));
      if (result)
      {
        LOBYTE(v13) = 1;
        WORD6(v13) = bswap32(v5);
        BYTE11(v13) = 1;
        LOWORD(v14) = bswap32(v6);
        BYTE14(v13) = 1;
        BYTE8(v13) = 1;
        result = AppleBCMWLANLQM::updatePerCoreRssiAsync(v2, &v13);
        if (result)
        {
          v7 = *(v2 + 40);
          if (*(v7 + 24))
          {
            shouldLog = CCLogStream::shouldLog();
            v7 = *(v2 + 40);
            if (shouldLog)
            {
              CCLogStream::logAlert(*(v7 + 24), "[dk] %s@%d:Failed to get per core RSSI\n", "handleLQMEvent", 2927);
              v7 = *(v2 + 40);
            }
          }

          v9 = *(v7 + 24);
          if (v9)
          {
            v10 = CCLogStream::shouldLog(v9, 0x8000uLL);
          }

          else
          {
            v10 = 0;
          }

          v12 = v2;
          return AppleBCMWLANLQM::updateLQM(v12, &v13, v10);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANLQM::getLegacyCCAStats(AppleBCMWLANCore ***this)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = -1431655766;
  v1 = (this + 5);
  result = AppleBCMWLANCore::isAssociated(*this[5]);
  if (result)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    result = IOMallocZeroData();
    if (result)
    {
      v3 = result;
      v4 = (*v1)[2];
      if (!IO80211BssManager::getCurrentChannel())
      {
        *v3 = WORD2(v19) | 0xD000;
        *(v3 + 2) = 5;
        *(v3 + 12) = 0;
        *(v3 + 4) = 0;
        *(v3 + 20) = 0;
        v15[0] = v3;
        v15[1] = 0x1800180018;
        v5 = (*v1)[1];
        v14[0] = v3;
        v14[1] = 24;
        if (AppleBCMWLANCommander::runIOVarGet(v5, "cca_get_stats", v14, v15, 0))
        {
          if ((*v1)[3])
          {
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANLQM::getLegacyCCAStats(v1);
            }
          }
        }

        else
        {
          v18 = *(v3 + 20);
          v6 = *(v3 + 2);
          if (*(v3 + 2))
          {
            v7 = 0;
            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = (v3 + 12);
            do
            {
              v12 = v11[-1].i32[0];
              if (v12)
              {
                v8 += v12;
                v9 += v11[-1].i32[1];
                v10 = vadd_s32(*v11, v10);
                ++v7;
              }

              v11 = (v11 + 20);
              --v6;
            }

            while (v6);
            LODWORD(v6) = 100 * v9;
            v13 = vmul_s32(v10, 0x6400000064);
          }

          else
          {
            v8 = 0;
            v7 = 0;
            v13 = 0;
          }

          LODWORD(v16) = v8 / v7;
          HIDWORD(v16) = v6 / v8;
          LODWORD(v17) = v13.i32[0] / v8;
          HIDWORD(v17) = v13.i32[1] / v8;
          if (AppleBCMWLANBssManager::getCurrentBSS((*v1)[2]))
          {
            AppleBCMWLANBssManager::getCurrentBSS((*v1)[2]);
            IO80211BSSBeacon::updateLegacyCCAStats();
          }

          if ((*v1)[3] && CCLogStream::shouldLog())
          {
            CCLogStream::logNoticeIf((*v1)[3], 0x200uLL, "[dk] %s@%d:Legacy CCA Stats: duration:%d congest_ibss:%d congest_obss:%d interference:%d timestamp:%d \n", "getLegacyCCAStats", 3030, v16, HIDWORD(v16), v17, HIDWORD(v17), *(v3 + 20));
          }
        }
      }

      return IOFreeData();
    }
  }

  return result;
}

uint64_t AppleBCMWLANLQM::updateCCA(uint64_t a1, _DWORD *a2)
{
  if (!AppleBCMWLANCore::isAssociated(**(a1 + 40)))
  {
    return 3766625283;
  }

  v4 = (100 * a2[1]) / *a2;
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(*(a1 + 40) + 16));
  IO80211BSSBeacon::updateCCA(CurrentBSS, v4);
  v6 = *(*(a1 + 40) + 16);
  IO80211BssManager::getCurrentChannel();
  v7 = *(a1 + 40);
  *(v7 + 8488) = 0u;
  *(v7 + 8504) = 0;
  *(v7 + 8512) = 0;
  *(*(a1 + 40) + 8494) = v4;
  *(*(a1 + 40) + 8492) = -21846;
  *(*(a1 + 40) + 8488) = a2[2];
  Split_us = AppleBCMWLANStopwatch::getSplit_us(*(*(a1 + 40) + 8480));
  if (Split_us < 0x4C4B40)
  {
    (*(**(*(a1 + 40) + 8520) + 56))(*(*(a1 + 40) + 8520), (8589935 * (5000000 - Split_us)) >> 33);
  }

  else
  {
    (*(**(*(a1 + 40) + 8520) + 72))(*(*(a1 + 40) + 8520));
    AppleBCMWLANStopwatch::restart(*(*(a1 + 40) + 8480));
    AppleBCMWLANCore::postChanQualEvent(**(a1 + 40), (*(a1 + 40) + 8488));
  }

  return 0;
}

uint64_t AppleBCMWLANLQM::updateCCAStats(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v7 = (a1 + 40);
  if (!AppleBCMWLANCore::isAssociated(**(a1 + 40)))
  {
    return 3766625283;
  }

  if (a3 && a2 && a4)
  {
    if (*a2)
    {
      v8 = 100 * (a2[2] + a2[1] + a2[3]) / *a2;
      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS((*v7)[2]);
      IO80211BSSBeacon::updateCCA(CurrentBSS, v8);
      v10 = (*v7)[2];
      IO80211BssManager::getCurrentChannel();
      v11 = *v7;
      *(v11 + 1061) = 0u;
      v11[1063] = 0;
      *(v11 + 2128) = 0;
      *(*v7 + 8494) = v8;
      *(*v7 + 4246) = -21846;
      v12 = a2[4];
      *(*v7 + 2122) = v12;
      v13 = *v7;
      if ((*v7)[3])
      {
        shouldLog = CCLogStream::shouldLog();
        v13 = *v7;
        v12 = a2[4];
        if (shouldLog)
        {
          CCLogStream::logNoticeIf(v13[3], 0x200uLL, "[dk] %s@%d:RawStats: Total[self:%d other:%d intf:%d dur:%d ts:%d] Wake[self:%d other:%d intf:%d dur:%d ts:%d] Sleep[self:%d other:%d intf:%d dur:%d ts:%d]\n", "updateCCAStats", 3101, a2[1], a2[2], a2[3], *a2, v12, a4[1], a4[2], a4[3], *a4, a4[4], a3[1], a3[2], a3[3], *a3, a3[4]);
          v13 = *v7;
          v12 = a2[4];
        }
      }

      *(v13 + 8496) = 0;
      *(*v7 + 4249) = v12;
      v15 = *a2;
      v16 = a2[1];
      if (v16 <= *a2 && a2[2] <= v15 && v15 >= 0x64)
      {
        v17 = a2[3];
        if (v17 <= v15)
        {
          *(*v7 + 8500) = 100 * v16 / v15;
          *(*v7 + 8501) = 100 * a2[2] / v15;
          *(*v7 + 8502) = 100 * v17 / v15;
          *(*v7 + 8496) = 1;
        }
      }

      *(*v7 + 4252) = a3[4];
      v18 = *a3;
      v19 = a3[1];
      if (v19 <= *a3 && a3[2] <= v18 && v18 >= 0x64)
      {
        v20 = a3[3];
        if (v20 <= v18)
        {
          *(*v7 + 8506) = 100 * v19 / v18;
          *(*v7 + 8507) = 100 * a3[2] / v18;
          *(*v7 + 8508) = 100 * v20 / v18;
          *(*v7 + 8496) = 1;
        }
      }

      *(*v7 + 4255) = a4[4];
      v21 = *a4;
      v22 = a4[1];
      if (v22 <= *a4 && a4[2] <= v21 && v21 >= 0x64)
      {
        v23 = a4[3];
        if (v23 <= v21)
        {
          *(*v7 + 8512) = 100 * v22 / v21;
          *(*v7 + 8513) = 100 * a4[2] / v21;
          *(*v7 + 8514) = 100 * v23 / v21;
          *(*v7 + 8496) = 1;
        }
      }

      v24 = *v7;
      if ((*v7)[3])
      {
        v25 = CCLogStream::shouldLog();
        v26 = *v7;
        if (v25)
        {
          CCLogStream::logNoticeIf(v26[3], 0x200uLL, "[dk] %s@%d:CCA:%d CCAStats(pc) Total[self:%d other:%d intf:%d ts:%d] Wake[self:%d other:%d intf:%d ts:%d] Sleep[self:%d other:%d intf:%d ts:%d]\n", "updateCCAStats", 3139, v8, *(v24 + 8500), *(v24 + 8501), *(v24 + 8502), *(v24 + 4249), *(v24 + 8512), *(v24 + 8513), *(v24 + 8514), *(v24 + 4255), *(v24 + 8506), *(v24 + 8507), *(v24 + 8508), *(v24 + 4252));
          v26 = *v7;
        }
      }

      else
      {
        v26 = *v7;
      }

      AppleBCMWLANBssManager::getCurrentBSS(v26[2]);
      v28 = *v7;
      IO80211BSSBeacon::updateCCAStats();
      v33 = *(*v7 + 8501);
      v34 = *(*v7 + 8502);
      v32 = *(*v7 + 8500);
      v29 = **v7;
      IO80211Controller::setChanExtendedCCA();
      Split_us = AppleBCMWLANStopwatch::getSplit_us((*v7)[1060]);
      if (Split_us < 0x4C4B40)
      {
        (*(*(*v7)[1065] + 56))((*v7)[1065], (8589935 * (5000000 - Split_us)) >> 33);
      }

      else
      {
        (*(*(*v7)[1065] + 72))((*v7)[1065]);
        AppleBCMWLANStopwatch::restart((*v7)[1060]);
        AppleBCMWLANCore::postChanQualEvent(**v7, *v7 + 1061);
      }

      return 0;
    }

    else
    {
      v27 = 3758097084;
      if ((*v7)[3] && CCLogStream::shouldLog())
      {
        AppleBCMWLANLQM::updateCCAStats(v7);
      }
    }
  }

  else
  {
    v27 = 3758097084;
    if ((*v7)[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert((*v7)[3], "[dk] %s@%d:Null args ccaTotal(%p) ccaNoPM(%p) ccaPM(%p)\n", "updateCCAStats", 3075, a2, a4, a3);
    }
  }

  return v27;
}

uint64_t AppleBCMWLANLQM::retriggerAssocTimer(AppleBCMWLANLQM *this)
{
  v2 = *(this + 5);
  result = *(v2 + 8528);
  if (result)
  {
    *(v2 + 6537);
    (*(*result + 72))(result);
    v4 = *(**(*(this + 5) + 8528) + 56);

    return v4();
  }

  return result;
}

uint64_t AppleBCMWLANLQM::stopAssocTimer(AppleBCMWLANLQM *this)
{
  v2 = *(this + 5);
  result = *(v2 + 8528);
  if (result)
  {
    result = (*(*result + 72))(result);
    v2 = *(this + 5);
  }

  *(v2 + 6538) = 0;
  return result;
}

uint64_t AppleBCMWLANLQM::startAssocTimer(AppleBCMWLANLQM *this)
{
  v2 = *(this + 5);
  result = *(v2 + 8528);
  if (result)
  {
    (*(*result + 72))(result);
    result = (*(**(*(this + 5) + 8528) + 56))(*(*(this + 5) + 8528), *(*(this + 5) + 4596));
    v2 = *(this + 5);
  }

  *(v2 + 6538) = 0;
  return result;
}

uint64_t AppleBCMWLANLQM::updatePeerStatsAddrForIndex(uint64_t this, unsigned __int8 *a2, unsigned int a3)
{
  if (a2)
  {
    if (a3 <= 3)
    {
      v3 = *(this + 40) + 311 * a3;
      v4 = *a2;
      *(v3 + 5264) = *(a2 + 2);
      *(v3 + 5260) = v4;
    }
  }

  return this;
}

uint64_t AppleBCMWLANLQM::updatePeerTxLatencyAndPer(uint64_t this, unsigned int a2, char a3, int a4)
{
  *(*(this + 40) + 311 * a2 + 5566) = a3;
  *(*(this + 40) + 311 * a2 + 5567) = a4;
  return this;
}

uint64_t AppleBCMWLANLQM::findPeerStatsIndex(AppleBCMWLANLQM *this, const ether_addr *a2)
{
  v2 = 0;
  v3 = (*(this + 5) + 5260);
  for (i = v3; *a2->octet != *i || *&a2->octet[4] != *(i + 2); i = (i + 311))
  {
    if (++v2 == 4)
    {
      v2 = 0;
      for (j = v3; *j || j[2] != 0; j = (j + 311))
      {
        if (++v2 == 4)
        {
          bzero(v3, 0x4DCuLL);
          LOBYTE(v2) = 0;
          return v2;
        }
      }

      return v2;
    }
  }

  return v2;
}

uint64_t AppleBCMWLANLQM::printPeerCommonStats(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4)
{
  v4 = a1 + 40;
  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANLQM::printPeerCommonStats(v4, a4, a2, a3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANLQM::printPeerChanStats(uint64_t a1)
{
  v1 = a1 + 40;
  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANLQM::printPeerChanStats(v1);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  v4 = "P2P Peer";
  if (v5)
  {
    v4 = "SoftAP Client";
  }

  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s chan %u, rssi %d dBm, txrate %u, rxrate %u, txdur %u ms, rxdur %u ms, txrts %u rxcts %u, txctrl %u, txucast %u, txphyerr %u\n", "printPeerChanStats", 3459, v4, v2, v3[4], v3[6], v3[7], v3[2], v3[3], v3[8], v3[9], v3[12], v3[11], v3[10]);
}

uint64_t AppleBCMWLANLQM::printPeerRxAmpduStats(uint64_t a1)
{
  v1 = a1 + 40;
  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANLQM::printPeerRxAmpduStats(v1);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  v3 = "P2P Peer";
  if (v4)
  {
    v3 = "SoftAP Client";
  }

  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s RXAMPDU: ampdu %u, mpdu %u, holes %u, dup %u, stuck %u, oow %u, oos %u, bar %u, txback %u, addbareq %u, txaddbaresp %u \n", "printPeerRxAmpduStats", 3468, v3, *v2, v2[1], v2[2], v2[3], v2[4], v2[5], v2[6], v2[12], v2[7], v2[10], v2[11]);
}

uint64_t AppleBCMWLANLQM::printPeerTxAmpduStats(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a1 + 40;
  result = *(*(a1 + 40) + 24);
  if (a3)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANLQM::printPeerTxAmpduStats(v3);
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANLQM::printPeerTxAmpduStats(v3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANLQM::updatePerPeerCommonStats(AppleBCMWLANLQM *a1, int a2, ether_addr *a3)
{
  PeerStatsIndex = AppleBCMWLANLQM::findPeerStatsIndex(a1, a3);
  v7 = *(a1 + 5) + 311 * PeerStatsIndex;
  v8 = *&a3->octet[4];
  *(v7 + 5260) = *a3->octet;
  *(v7 + 5264) = v8;
  *(*(a1 + 5) + 311 * PeerStatsIndex + 5266) = a2;
  *(*(a1 + 5) + 311 * PeerStatsIndex + 5270) = *&a3[1].octet[2];
  AppleBCMWLANLQM::printPeerCommonStats(a1, a3->octet, a2, 0);
  return PeerStatsIndex;
}

uint64_t AppleBCMWLANLQM::updatePerPeerChanStats(AppleBCMWLANLQM *this, unsigned int a2, _DWORD *a3)
{
  v5 = 0;
  v6 = *(this + 5);
  v8 = 311 * a2 + 5274;
  while (*(v6 + v8) != *a3)
  {
    ++v5;
    v8 += 50;
    if (v5 == 4)
    {
      v5 = 0;
      v9 = 311 * a2 + 5274;
      while (*(v6 + v9))
      {
        ++v5;
        v9 += 50;
        if (v5 == 4)
        {
          LOBYTE(v5) = 0;
          v10 = v6 + 311 * a2 + 5260;
          *(v10 + 206) = 0;
          *(v10 + 190) = 0u;
          *(v10 + 174) = 0u;
          *(v10 + 158) = 0u;
          *(v10 + 142) = 0u;
          *(v10 + 126) = 0u;
          *(v10 + 110) = 0u;
          *(v10 + 94) = 0u;
          *(v10 + 78) = 0u;
          *(v10 + 62) = 0u;
          *(v10 + 46) = 0u;
          *(v10 + 30) = 0u;
          *(v10 + 14) = 0u;
          v6 = *(this + 5);
          goto LABEL_8;
        }
      }

      break;
    }
  }

LABEL_8:
  ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*v6);
  AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, *a3);
  ChanSpecGetPrimaryChannel();
  *(*(this + 5) + 311 * a2 + 50 * v5 + 5274) = *a3;
  *(*(this + 5) + 311 * a2 + 50 * v5 + 5276) = a3[1];
  *(*(this + 5) + 311 * a2 + 50 * v5 + 5280) = *(a3 + 1);
  *(*(this + 5) + 311 * a2 + 50 * v5 + 5288) = *(a3 + 1);
  v12 = *(this + 5) + 311 * a2 + 50 * v5;
  v13 = a3[12];
  *(v12 + 5304) = *(a3 + 2);
  *(v12 + 5320) = v13;

  return AppleBCMWLANLQM::printPeerChanStats(this);
}

uint64_t AppleBCMWLANLQM::updatePerPeerRxAmpduStats(uint64_t this, unsigned int a2, __int128 *a3)
{
  v3 = *(this + 40) + 311 * a2 + 5260;
  v4 = *(this + 40) + 311 * a2 + 5474;
  v5 = *(a3 + 44);
  v6 = *a3;
  v7 = a3[1];
  *(v3 + 246) = a3[2];
  *(v3 + 230) = v7;
  *(v3 + 214) = v6;
  *(v4 + 44) = v5;
  return AppleBCMWLANLQM::printPeerRxAmpduStats(this);
}

uint64_t AppleBCMWLANLQM::updatePerPeerTxAmpduStats(AppleBCMWLANLQM *this, unsigned int a2, _OWORD *a3)
{
  v3 = (*(this + 5) + 311 * a2 + 5534);
  v4 = a3[1];
  *v3 = *a3;
  v3[1] = v4;
  v5 = *(this + 5) + 311 * a2;
  v6 = *(v5 + 5566);
  v7 = *(v5 + 5567);
  return AppleBCMWLANLQM::printPeerTxAmpduStats(this, a3, 0);
}

uint64_t AppleBCMWLANLQM::updateChanSeqCommonStats(uint64_t result, uint64_t a2, __int128 *a3)
{
  if (a2 && a3)
  {
    v5 = result;
    v6 = 0;
    v7 = *(result + 40);
    v8 = 5028;
    while (*(a2 + 4) != *(v7 + v8))
    {
      ++v6;
      v8 += 58;
      if (v6 == 4)
      {
        v6 = 0;
        v9 = 5028;
        while (*(v7 + v9))
        {
          ++v6;
          v9 += 58;
          if (v6 == 4)
          {
            LOBYTE(v6) = 0;
            *(v7 + 5252) = 0;
            *(v7 + 5220) = 0u;
            *(v7 + 5236) = 0u;
            *(v7 + 5188) = 0u;
            *(v7 + 5204) = 0u;
            *(v7 + 5156) = 0u;
            *(v7 + 5172) = 0u;
            *(v7 + 5124) = 0u;
            *(v7 + 5140) = 0u;
            *(v7 + 5092) = 0u;
            *(v7 + 5108) = 0u;
            *(v7 + 5060) = 0u;
            *(v7 + 5076) = 0u;
            *(v7 + 5028) = 0u;
            *(v7 + 5044) = 0u;
            v7 = *(result + 40);
            goto LABEL_10;
          }
        }

        break;
      }
    }

LABEL_10:
    ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*v7);
    AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, *(a2 + 4));
    PrimaryChannel = ChanSpecGetPrimaryChannel();
    *(*(v5 + 40) + 58 * v6 + 5028) = *(a2 + 4);
    *(*(v5 + 40) + 58 * v6 + 5030) = *(a2 + 8);
    *(*(v5 + 40) + 58 * v6 + 5034) = *(a2 + 12);
    v12 = *(v5 + 40) + 58 * v6 + 5028;
    v13 = *a3;
    v14 = a3[1];
    *(v12 + 42) = a3[2];
    *(v12 + 26) = v14;
    *(v12 + 10) = v13;
    result = *(*(v5 + 40) + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return CCLogStream::logAlert(*(*(v5 + 40) + 24), "[dk] %s@%d:P2P chan %u: dur %u, entry %u, crsglitch %u, start %u, badplcp %u, badfcs %u, f0ov %u, f1ov %u, anyerr %u, resptout %u, frmtooln %u, frmtoosh %u\n", "updateChanSeqCommonStats", 3593, PrimaryChannel, *(a2 + 8), *(a2 + 12), *(a3 + 5), *(a3 + 6), *(a3 + 4), *(a3 + 3), *(a3 + 9), *(a3 + 10), *(a3 + 2), *(a3 + 7), *a3, *(a3 + 1));
      }
    }
  }

  return result;
}

AppleBCMWLANUtil::AutoreleasedAlignedOSData *AppleBCMWLANUtil::AutoreleasedAlignedOSData::AutoreleasedAlignedOSData(AppleBCMWLANUtil::AutoreleasedAlignedOSData *this, OSData *a2, uint64_t a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  if (((a3 - 1) & OSData::getBytesNoCopy(a2)) == 0)
  {
    BytesNoCopy = OSData::getBytesNoCopy(a2);
    Length = OSData::getLength(a2);
    v8 = BytesNoCopy;
    goto LABEL_5;
  }

  OSData::getLength(a2);
  v5 = IOMallocZeroData();
  *(this + 1) = v5;
  if (v5)
  {
    *(this + 4) = OSData::getLength(a2);
    v6 = *(this + 1);
    v7 = OSData::getBytesNoCopy(a2);
    memcpy(v6, v7, *(this + 4));
    v8 = *(this + 1);
    Length = *(this + 4);
LABEL_5:
    *this = OSData::withBytesNoCopy(v8, Length);
  }

  return this;
}

void AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(AppleBCMWLANUtil::AutoreleasedAlignedOSData *this)
{
  v2 = *this;
  if (v2)
  {
    (*(*v2 + 16))(v2);
    *this = 0;
  }

  if (*(this + 1))
  {
    v3 = *(this + 4);
    IOFreeData();
    *(this + 1) = 0;
    *(this + 4) = 0;
  }
}

uint64_t *OUTLINED_FUNCTION_0(uint64_t ***a1)
{
  v1 = (*a1)[3];
  result = **a1;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_11(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 312);
  v5 = *(a3 + 313);
  v6 = *(a3 + 314);
  v7 = *(a3 + 310);
}

uint64_t OUTLINED_FUNCTION_12()
{

  return CCLogStream::shouldLog();
}

void OUTLINED_FUNCTION_15(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
}

uint64_t OUTLINED_FUNCTION_16()
{

  return CCLogStream::shouldLog();
}

AppleBCMWLANBGScanAdapter *AppleBCMWLANBGScanAdapter::withDriver(AppleBCMWLANBGScanAdapter *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANBGScanAdapterMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && (AppleBCMWLANBGScanAdapter::initWithDriver(v5, this) & 1) == 0)
  {
    (*(*v3 + 16))(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANBGScanAdapter::initWithDriver(AppleBCMWLANBGScanAdapter *this, AppleBCMWLANCore *a2)
{
  v4 = IOMallocZeroTyped();
  *(this + 5) = v4;
  if (!v4)
  {
    IOLog("Failed to allocate AppleBCMWLANBGScanAdapter_IVars\n");
    return 0;
  }

  *v4 = a2;
  v5 = **(this + 5);
  if (!v5)
  {
    IOLog("AppleBCMWLANBGScanAdapter driver is null\n");
    return 0;
  }

  *(*(this + 5) + 8) = AppleBCMWLANCore::getCommander(v5);
  v6 = *(this + 5);
  if (!*(v6 + 8))
  {
    IOLog("AppleBCMWLANBGScanAdapter commander is null\n");
    return 0;
  }

  *(*(this + 5) + 16) = AppleBCMWLANCore::getConfigManager(*v6);
  if (!*(*(this + 5) + 16))
  {
    IOLog("AppleBCMWLANBGScanAdapter configManager is null\n");
    return 0;
  }

  *(*(this + 5) + 24) = (*(*a2 + 1952))(a2);
  if (!*(*(this + 5) + 24))
  {
    IOLog("AppleBCMWLANBGScanAdapter Failed to init fLogger\n");
    return 0;
  }

  *(*(this + 5) + 4848) = (*(*a2 + 88))(a2);
  if (!*(*(this + 5) + 4848))
  {
    IOLog("AppleBCMWLANBGScanAdapter Failed to init fWorkqueue\n");
    return 0;
  }

  if (!OSObject::init(this))
  {
    IOLog("AppleBCMWLANBGScanAdapter super init failied\n");
    return 0;
  }

  if (!AppleBCMWLANBGScanAdapter::initScanMac(this))
  {
    IOLog("AppleBCMWLANBGScanAdapter failed to init ScanMac\n");
    return 0;
  }

  *(*(this + 5) + 40) = 0;
  bzero((*(this + 5) + 44), 0x12C0uLL);
  v7 = *AppleBCMWLANCore::getBus(**(this + 5));
  v8 = (*(v7 + 368))();
  v9 = 20;
  *(*(this + 5) + 32) = 20;
  if ((v8 - 4377) > 1)
  {
    if (v8 == 4399 || v8 == 4388)
    {
      v10 = *(this + 5);
      v9 = 40;
    }

    else
    {
      if (v8 == 4387)
      {
        v15 = 0;
        *v14 = 0;
        AppleBCMWLANCore::getChipRevString(**(this + 5), v14, 3uLL);
        if (*v14 ^ 0x3042 | v15)
        {
          v12 = 40;
        }

        else
        {
          v12 = 30;
        }

        *(*(this + 5) + 32) = v12;
        if (*(*(this + 5) + 24))
        {
          if (CCLogStream::shouldLog())
          {
            CCLogStream::logAlert(*(*(this + 5) + 24), "[dk] %s@%d:Detected 4387-%s and overiding scan record value %d\n", "initWithDriver", 148, v14, *(*(this + 5) + 32));
          }
        }

        return 1;
      }

      v10 = *(this + 5);
    }
  }

  else
  {
    v10 = *(this + 5);
    v9 = 30;
  }

  *(v10 + 32) = v9;
  return 1;
}

BOOL AppleBCMWLANBGScanAdapter::initScanMac(AppleBCMWLANBGScanAdapter *this)
{
  v19 = 0;
  v18 = 0;
  *v20 = 0;
  v21 = 0;
  v22 = 0;
  v2 = this + 40;
  *(*(this + 5) + 4858) = 0;
  *(*(this + 5) + 4860) = 3600000;
  *(*(this + 5) + 4864) = 0;
  v3 = *(this + 5);
  *(v3 + 4870) = 0;
  *(v3 + 4874) = 0;
  v4 = *(this + 5);
  *(v4 + 4876) = 0;
  *(v4 + 4880) = 0;
  v5 = *(this + 5);
  *(v5 + 4882) = 0;
  *(v5 + 4886) = 0;
  if (IOParseBootArgNumber("wlan.privmac.scanbitmap", &v19, 2))
  {
    *(*v2 + 4858) = v19;
    if (*(*v2 + 24))
    {
      if (CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*v2 + 24), "[dk] %s@%d:boot-args set scanmac bitmap 0x%x\n", "initScanMac", 1733, v19);
      }
    }
  }

  IOParseBootArgNumber("wlan.debug.disableScanRandomMac", &v18, 4);
  if (v18)
  {
    *(*v2 + 4858) = 64;
    if (*(*v2 + 24))
    {
      if (CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*v2 + 24), "[dk] %s@%d:boot-args disableScanRandomMac %d\n", "initScanMac", 1740, v18);
      }
    }
  }

  if (IOParseBootArgString("wlan.privmac.address", v20, 18))
  {
    v6 = _parseMacAddress((*v2 + 4864), v20);
    v7 = *v2;
    v8 = *(*v2 + 24);
    if (v6)
    {
      if (v8)
      {
        shouldLog = CCLogStream::shouldLog();
        v7 = *v2;
        if (shouldLog)
        {
          CCLogStream::logAlert(*(v7 + 24), "[dk] %s@%d:fail to parse Private MAC address <%s> ret %d \n", "initScanMac", 1755, v20, v6);
          v7 = *v2;
        }
      }

      *(v7 + 4870) = 0;
      *(v7 + 4874) = 0;
    }

    else if (v8 && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::initScanMac(v2);
    }
  }

  if (IOParseBootArgString("wlan.scanmac.randommask", v20, 18))
  {
    v10 = _parseMacAddress((*v2 + 4876), v20);
    v11 = *v2;
    v12 = *(*v2 + 24);
    if (v10)
    {
      if (v12)
      {
        v13 = CCLogStream::shouldLog();
        v11 = *v2;
        if (v13)
        {
          CCLogStream::logAlert(*(v11 + 24), "[dk] %s@%d:fail to parse Scan MAC Random Mask <%s> ret %d \n", "initScanMac", 1770, v20, v10);
          v11 = *v2;
        }
      }

      *(v11 + 4880) = 0;
      *(v11 + 4876) = 0;
    }

    else if (v12 && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::initScanMac(v2);
    }
  }

  v14 = *(*(this + 5) + 4848);
  *(*(this + 5) + 4912) = IO80211TimerSource::allocWithParams();
  v15 = *(this + 5);
  v16 = *(v15 + 4912);
  if (!v16 && *(v15 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANBGScanAdapter::initScanMac(v2);
  }

  return v16 != 0;
}

void AppleBCMWLANBGScanAdapter::free(OSObject *this)
{
  v2 = this[1].OSMetaClassBase::__vftable;
  if (v2)
  {
    init = v2[87].init;
    if (!init || ((*(*init + 80))(v2[87].init), (*(*this[1].OSMetaClassBase::__vftable[87].init + 16))(this[1].OSMetaClassBase::__vftable[87].init), this[1].OSMetaClassBase::__vftable[87].init = 0, (v2 = this[1].OSMetaClassBase::__vftable) != 0))
    {
      IOFree(v2, 0x1338uLL);
      this[1].OSMetaClassBase::__vftable = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BG_MOTIONPROFILE(AppleBCMWLANBGScanAdapter *a1, _BYTE *a2)
{
  v4 = a1 + 40;
  if (*(*(a1 + 5) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BG_MOTIONPROFILE(v4);
  }

  if (AppleBCMWLANBGScanAdapter::configureMotionProfileMapping(a1))
  {
    v5 = 3758097084;
    if (*(*v4 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BG_MOTIONPROFILE(v4);
    }
  }

  else
  {
    if (AppleBCMWLANBGScanAdapter::configureMotionProfilePNO(a1, a2) && *(*v4 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BG_MOTIONPROFILE(v4);
    }

    v5 = AppleBCMWLANBGScanAdapter::configureMotionProfileEPNO(a1, a2);
    v6 = *(*(a1 + 5) + 24);
    if (v5)
    {
      if (v6 && CCLogStream::shouldLog())
      {
        AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BG_MOTIONPROFILE(v4);
      }
    }

    else
    {
      if (v6 && CCLogStream::shouldLog())
      {
        AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BG_MOTIONPROFILE(v4);
      }

      return 0;
    }
  }

  return v5;
}

uint64_t AppleBCMWLANBGScanAdapter::configureMotionProfileMapping(AppleBCMWLANBGScanAdapter *this)
{
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  v12 = 0u;
  memset(&v11[1], 0, 80);
  v1 = (this + 40);
  MotionProfileGPIOConfig = AppleBCMWLANConfigManager::getMotionProfileGPIOConfig(*(*(this + 5) + 16));
  v3 = *v1;
  if (MotionProfileGPIOConfig)
  {
    v4 = MotionProfileGPIOConfig;
    MotionProfiles = AppleBCMWLANConfigManager::getMotionProfiles(v3[2]);
    v11[0] = 1;
    v11[2] = v4;
    v6.i32[0] = v4;
    LOBYTE(v11[3]) = 1 << vaddlv_u8(vcnt_s8(v6));
    *&v11[4] = MotionProfiles;
    strcpy(&v11[6], "frozen");
    v11[12] = WORD1(MotionProfiles);
    v11[13] = 1;
    strcpy(&v11[14], "Moving");
    v11[20] = WORD2(MotionProfiles);
    v11[21] = 2;
    strcpy(&v11[22], "Pedestrian");
    v11[28] = HIWORD(MotionProfiles);
    v11[29] = 3;
    strcpy(&v11[30], "Driving");
    v7 = (*v1)[1];
    v10[0] = v11;
    v10[1] = 136;
    v8 = AppleBCMWLANCommander::runIOVarSet(v7, "mpf_map", v10, 0, 0);
    if (v8 && (*v1)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::configureMotionProfileMapping(v1);
    }
  }

  else
  {
    v8 = 3758097095;
    if (v3[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::configureMotionProfileMapping(v1);
    }
  }

  return v8;
}

uint64_t AppleBCMWLANBGScanAdapter::configureMotionProfilePNO(uint64_t a1, _BYTE *a2)
{
  if (!a2[1])
  {
    return 3758096385;
  }

  v4 = 0;
  v5 = 0;
  memset(&v14[1], 0, 64);
  v14[0] = 1;
  v6 = a2 + 6;
  while (1)
  {
    v7 = *(v6 - 2);
    v8 = &v14[v5];
    v9 = *v6 * v7;
    v8[1] = v7;
    v8[2] = v9;
    *(v8 + 7) = *(v6 - 1);
    if (AppleBCMWLANCore::checkForScanCoreSupport(**(a1 + 40)))
    {
      AppleBCMWLANCore::checkForLPSCDisable(**(a1 + 40));
    }

    if (*a2)
    {
      break;
    }

    if (v4 == 3 || !v4)
    {
      LOWORD(v14[v5 + 3]) = 3;
    }

    v6 += 6;
    v5 += 4;
    ++v4;
    if (v5 == 16)
    {
      goto LABEL_13;
    }
  }

  LOWORD(v14[v5 + 3]) = 3;
LABEL_13:
  v11 = *(*(a1 + 40) + 8);
  v13[0] = v14;
  v13[1] = 68;
  v10 = AppleBCMWLANCommander::runIOVarSet(v11, "pfn_mpfset", v13, 0, 0);
  if (v10 && *(*(a1 + 40) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANBGScanAdapter::configureMotionProfilePNO((a1 + 40));
  }

  return v10;
}

uint64_t AppleBCMWLANBGScanAdapter::configureMotionProfileEPNO(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 26))
  {
    return 0;
  }

  v4 = 0;
  memset(&v16[1], 0, 64);
  v16[0] = 65537;
  v5 = (a2 + 32);
  while (1)
  {
    v6 = *(v5 - 2);
    v7 = &v16[v4];
    v8 = *v5 * v6;
    v7[1] = v6;
    v7[2] = v8;
    *(v7 + 7) = *(v5 - 1);
    if (AppleBCMWLANCore::checkForScanCoreSupport(**(a1 + 40)) && (AppleBCMWLANCore::checkForLPSCDisable(**(a1 + 40)) & 1) == 0)
    {
      if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
      {
        AppleBCMWLANBGScanAdapter::configureMotionProfileEPNO(a1 + 40);
      }

      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    if (*a2)
    {
      break;
    }

    if (!(v4 * 4))
    {
      v9 |= 3u;
    }

    LOWORD(v16[v4 + 3]) = v9;
    if ((AppleBCMWLANCore::is4377Up(**(a1 + 40)) & 1) == 0)
    {
      v10 = *(a2 + 2);
      v11 = *v5 * v10;
      v7[1] = v10;
      v7[2] = v11;
    }

    v4 += 4;
    v5 += 6;
    if (v4 == 16)
    {
      goto LABEL_19;
    }
  }

  LOWORD(v16[v4 + 3]) = v9 | 3;
LABEL_19:
  v13 = *(*(a1 + 40) + 8);
  v15[0] = v16;
  v15[1] = 68;
  v12 = AppleBCMWLANCommander::runIOVarSet(v13, "pfn_mpfset", v15, 0, 0);
  if (v12 && *(*(a1 + 40) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANBGScanAdapter::configureMotionProfileEPNO((a1 + 40));
  }

  return v12;
}

uint64_t AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BG_NETWORK(AppleBCMWLANCore ***a1, unsigned __int8 *a2)
{
  v4 = a1 + 5;
  *(a1[5] + 36) = 0;
  *(a1[5] + 4844) = 0;
  if (a1[5][3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BG_NETWORK(v4);
  }

  v5 = AppleBCMWLANBGScanAdapter::configurePFN(a1, 0);
  v6 = a1[5];
  if (v5)
  {
    v7 = v5;
    if (v6[3])
    {
      shouldLog = CCLogStream::shouldLog();
      v6 = *v4;
      if (shouldLog)
      {
        CCLogStream::logAlert(v6[3], "[dk] %s@%d: Failed to Disable PFN : %d\n", "setWCL_CONFIG_BG_NETWORK", 225, v7);
        v6 = *v4;
      }
    }
  }

  v9 = AppleBCMWLANCommander::runIOVarSet(v6[1], "pfnclear", &kNoTxPayload, 0, 0);
  if (v9)
  {
    return v9;
  }

  v11 = AppleBCMWLANBGScanAdapter::configurePFNSuspend(a1, 0);
  if (v11)
  {
    v9 = v11;
    if ((*v4)[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert((*v4)[3], "[dk] %s@%d: Failure to Suspend BG Scan: %d\n");
    }

    return v9;
  }

  if (!*(a2 + 6) && !*(a2 + 231) && !*a2)
  {
    if ((*v4)[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert((*v4)[3], "[dk] %s@%d: Not enabled, num_ssid_networks[%u], num_bssid_networks[%u], fBGScanCacheState[%u]\n", "setWCL_CONFIG_BG_NETWORK", 244, *(a2 + 6), *(a2 + 231), *a2);
    }

    return 0;
  }

  *(*v4 + 10) = *(a2 + 862);
  bzero(*v4 + 44, 0x12C0uLL);
  memcpy(*v4 + 44, a2 + 3452, 0x12C0uLL);
  v12 = *a2;
  *(*v4 + 4845) = v12;
  *(*v4 + 4846) = a2[2];
  v55 = 0uLL;
  v56 = 0;
  v54 = 2;
  v13 = (a2[1] != 0) << 6;
  *(&v55 + 4) = v13;
  if (v12)
  {
    WORD2(v55) = v13 | 0x1020;
    v14 = *AppleBCMWLANCore::getBus(**v4);
    if ((*(v14 + 368))() >> 1 >= 0x88D)
    {
      WORD2(v55) = v13 | 0x3020;
    }
  }

  v15 = *(a2 + 4);
  WORD3(v55) = 30;
  v16 = a2[12] * v15;
  HIDWORD(v54) = v15;
  LODWORD(v55) = v16;
  BYTE10(v55) = a2[11];
  BYTE11(v55) = a2[10];
  HIDWORD(v55) = 0;
  if (!*a2)
  {
    LOBYTE(v20) = 3;
    goto LABEL_27;
  }

  if (!*(a2 + 5))
  {
    v20 = *(*v4 + 8);
    goto LABEL_27;
  }

  v17 = *(a2 + 5);
  BYTE9(v55) = *(a2 + 5);
  Bus = AppleBCMWLANCore::getBus(**v4);
  v19 = (*(*Bus + 368))(Bus);
  if ((v19 - 4377) <= 1 && v17 >= 0x1F)
  {
    LOBYTE(v20) = 30;
    goto LABEL_27;
  }

  if (v19 == 4387)
  {
    v57[2] = 0;
    *v57 = 0;
    AppleBCMWLANCore::getChipRevString(**v4, v57, 3uLL);
    v36 = *v57 ^ 0x3042 | v57[2];
    if (v36 || BYTE9(v55) <= 0x1Eu)
    {
      if (!v36 || BYTE9(v55) < 0x29u)
      {
LABEL_87:
        if ((*v4)[3] && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:Detected 4387-%s and overiding scan record limit value %d\n", "setWCL_CONFIG_BG_NETWORK", 308, v57, BYTE9(v55));
        }

        goto LABEL_28;
      }

      v37 = 40;
    }

    else
    {
      v37 = 30;
    }

    BYTE9(v55) = v37;
    goto LABEL_87;
  }

  v53 = v19 == 4399 || v19 == 4388;
  if (v53 && v17 >= 0x29)
  {
    LOBYTE(v20) = 40;
  }

  else
  {
    if (v17 < 0x15)
    {
      goto LABEL_28;
    }

    LOBYTE(v20) = 20;
  }

LABEL_27:
  BYTE9(v55) = v20;
LABEL_28:
  BYTE8(v55) = *(a2 + 4);
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**v4) <= 0xB)
  {
    v21 = 2;
  }

  else
  {
    v21 = 3;
  }

  LOWORD(v54) = v21;
  LOWORD(v56) = 5140;
  v22 = (*v4)[1];
  *v57 = &v54;
  v58 = 28;
  v23 = AppleBCMWLANCommander::runIOVarSet(v22, "pfn_set", v57, 0, 0);
  if (v23)
  {
    v9 = v23;
    if ((*v4)[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert((*v4)[3], "[dk] %s@%d: Failure to configure PNO: %d\n");
    }

    return v9;
  }

  v24 = 56 * *(a2 + 6);
  v25 = IOMallocZeroData();
  if (!v25)
  {
    return 12;
  }

  v26 = v25;
  if (*(a2 + 6))
  {
    v27 = 0;
    v28 = (a2 + 28);
    v29 = v25;
    do
    {
      AppleBCMWLANBGScanAdapter::populatePreferredSSIDNetworks(a1, v29, v28);
      *(a1[5] + 36) |= 1u;
      v29 += 56;
      ++v27;
      v30 = *(a2 + 6);
      v28 += 56;
    }

    while (v27 < v30);
    if (v30)
    {
      v31 = (*v4)[1];
      v32 = 56 * v30;
      v33 = v32 & 0xFFF8;
      v34 = (v32 & 0xFFF8) != 0 ? v26 : 0;
      *v57 = v34;
      v58 = v33;
      v35 = AppleBCMWLANCommander::runIOVarSet(v31, "pfn_add", v57, 0, 0);
      if (v35)
      {
        v9 = v35;
        if ((*v4)[3] && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert((*v4)[3], "[dk] %s@%d: Failure to add network to PNO list: %d\n", "setWCL_CONFIG_BG_NETWORK", 356, v9);
        }

        goto LABEL_97;
      }
    }
  }

  v38 = *(a2 + 231);
  if (v38 <= 0xB4)
  {
    v39 = 8 * v38;
  }

  else
  {
    v39 = 1440;
  }

  v40 = IOMallocZeroData();
  if (!v40)
  {
    v9 = 12;
    goto LABEL_97;
  }

  v41 = v40;
  if (!*(a2 + 231))
  {
    v9 = 0;
    goto LABEL_96;
  }

  v42 = 0;
  v43 = 0;
  v44 = (a2 + 928);
  v45 = v40;
  while (1)
  {
    AppleBCMWLANBGScanAdapter::populatePreferredBSSIDNetworks(a1, v45, v44);
    *(a1[5] + 36) |= 2u;
    v46 = (v42 + 1);
    HIDWORD(v47) = -1527099483 * v46;
    LODWORD(v47) = -1527099483 * v46;
    if ((v47 >> 2) < 0x16C16C2)
    {
      break;
    }

    v48 = *(a2 + 231);
    if (v48 == v46)
    {
      break;
    }

    v45 += 8;
LABEL_68:
    ++v42;
    v44 += 7;
    if (v42 >= v48)
    {
      v9 = 0;
      goto LABEL_96;
    }
  }

  v49 = (*v4)[1];
  v50 = v46 - v43;
  if (((8 * v50) & 0xFFF8) != 0)
  {
    v51 = v41;
  }

  else
  {
    v51 = 0;
  }

  *v57 = v51;
  v58 = 8 * (v50 & 0x1FFF);
  v9 = AppleBCMWLANCommander::runIOVarSet(v49, "pfn_add_bssid", v57, 0, 0);
  v52 = (*v4)[3];
  if (!v9)
  {
    if (v52 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert((*v4)[3], "[dk] %s@%d: Enhanced PNO: Added %d new set of preferred Networks Total %d \n", "setWCL_CONFIG_BG_NETWORK", 401, v50, (v42 + 1));
    }

    bzero(v41, v39);
    v48 = *(a2 + 231);
    v43 = (v42 + 1);
    v45 = v41;
    goto LABEL_68;
  }

  if (v52 && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert((*v4)[3], "[dk] %s@%d: Failure to add network to PNO list: %d\n", "setWCL_CONFIG_BG_NETWORK", 398, v9);
  }

LABEL_96:
  IOFreeData();
LABEL_97:
  IOFreeData();
  return v9;
}

uint64_t AppleBCMWLANBGScanAdapter::configurePFN(AppleBCMWLANBGScanAdapter *this, int a2)
{
  v7 = a2;
  v3 = *(*(this + 5) + 8);
  v6[0] = &v7;
  v6[1] = 4;
  v4 = AppleBCMWLANCommander::runIOVarSet(v3, "pfn", v6, 0, 0);
  if (v4 && *(*(this + 5) + 24) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(this + 5) + 24), "[dk] %s@%d: Failure to start PFN: %d\n", "configurePFN", 446, v4);
  }

  return v4;
}

uint64_t AppleBCMWLANBGScanAdapter::configurePFNSuspend(AppleBCMWLANBGScanAdapter *this, int a2)
{
  v4 = (this + 40);
  v3 = *(this + 5);
  v12 = a2;
  v5 = (*(**v3 + 88))();
  if ((*(*v5 + 136))(v5))
  {
    v9 = this;
    v10 = AppleBCMWLANBGScanAdapter::handlePFNSuspendAsyncCallBack;
    v11 = 0;
    v6 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 5) + 8), "pfn_suspend");
    if (v6 && (*v4)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::configurePFNSuspend(v4);
    }
  }

  else
  {
    v7 = (*v4)[1];
    v9 = &v12;
    v10 = 4;
    v6 = AppleBCMWLANCommander::runIOVarSet(v7, "pfn_suspend", &v9, 0, 0);
    if (v6 && (*v4)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::configurePFNSuspend(v4);
    }
  }

  return v6;
}

uint64_t AppleBCMWLANBGScanAdapter::populatePreferredSSIDNetworks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 + 4);
  memcpy((a2 + 4), (a3 + 8), *(a3 + 4));
  *a2 = *(a3 + 4);
  if (*(a3 + 49))
  {
    v7 = *(a2 + 36) | 4;
  }

  else
  {
    v7 = *(a2 + 36);
  }

  v8 = v7 | 0xB510;
  *(a2 + 36) = v8;
  v9 = *(a3 + 52);
  if (v9 >= 0xFFFFFF7B)
  {
    *(a2 + 36) = v8 & 0xFFFF00FF | ((((v9 << 8) + 1280) >> 8) << 8);
  }

  *(a2 + 40) = xmmword_10033B110;
  if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:Add SSID: %s\n", "populatePreferredSSIDNetworks", 912, v6);
  }

  return 1;
}

uint64_t AppleBCMWLANBGScanAdapter::populatePreferredBSSIDNetworks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 6) = 0;
  v3 = 16 * (*(a3 + 6) & 1);
  *(a2 + 6) = v3;
  if ((*(a3 + 6) & 2) != 0)
  {
    *(a2 + 6) = v3 | 8;
  }

  v4 = *(a3 + 4);
  *a2 = *a3;
  *(a2 + 4) = v4;
  v5 = a1 + 40;
  if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANBGScanAdapter::populatePreferredBSSIDNetworks(v5);
  }

  return 1;
}

uint64_t AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BGSCAN(AppleBCMWLANBGScanAdapter *this, _BYTE *a2)
{
  if (*a2)
  {
    if (*(*(this + 5) + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BGSCAN(this + 40);
    }

    return AppleBCMWLANBGScanAdapter::configurePFN(this, 0);
  }

  else
  {
    if (a2[1])
    {
      v5 = this + 40;
      if (*(*(this + 5) + 24) && CCLogStream::shouldLog())
      {
        AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BGSCAN(this + 40);
      }

      v6 = AppleBCMWLANBGScanAdapter::configPNO(this, a2[2]);
      if (v6 && *(*v5 + 24) && CCLogStream::shouldLog())
      {
        if (a2[2])
        {
          v7 = "Suspend";
        }

        else
        {
          v7 = "Resume";
        }

        CCLogStream::logAlert(*(*v5 + 24), "[dk] %s@%d:Failed to %s PNO %d\n", "setWCL_CONFIG_BGSCAN", 424, v7, v6);
      }
    }

    else
    {
      v6 = 0;
    }

    if (a2[3])
    {
      v8 = this + 40;
      if (*(*(this + 5) + 24) && CCLogStream::shouldLog())
      {
        AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BGSCAN(this + 40);
      }

      v6 = AppleBCMWLANBGScanAdapter::configEPNO(this, a2[4]);
      if (v6 && *(*v8 + 24) && CCLogStream::shouldLog())
      {
        v9 = "Suspend";
        if (!a2[4])
        {
          v9 = "Resume";
        }

        CCLogStream::logAlert(*(*v8 + 24), "[dk] %s@%d:Failed to %s EPNO %d\n", "setWCL_CONFIG_BGSCAN", 432, v9, v6);
      }
    }

    return v6;
  }
}

uint64_t AppleBCMWLANBGScanAdapter::configPNO(AppleBCMWLANBGScanAdapter *this, int a2)
{
  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v6 = (this + 40);
  v5 = *(this + 5);
  v23 = v4;
  v7 = *(v5 + 8);
  v22[0] = &v23;
  v22[1] = 4;
  v8 = AppleBCMWLANCommander::runIOVarSet(v7, "scan_nprobes", v22, 0, 0);
  v9 = *v6;
  if (v8)
  {
    if (v9[3])
    {
      v10 = v9[3];
      shouldLog = CCLogStream::shouldLog();
      v9 = *v6;
      if (shouldLog)
      {
        AppleBCMWLANBGScanAdapter::configPNO(v9, v8, v6, v22);
        v9 = v22[0];
      }
    }
  }

  if ((AppleBCMWLANCore::isEnhancedPNOEnabled(*v9) & 1) == 0)
  {
    if (!a2)
    {
LABEL_17:
      v13 = this;
      v14 = 1;
      goto LABEL_18;
    }

LABEL_14:
    v13 = this;
    v14 = 0;
LABEL_18:
    v16 = AppleBCMWLANBGScanAdapter::configurePFN(v13, v14);
    goto LABEL_21;
  }

  if ((*(*v6 + 36) & 2) == 0)
  {
    if (!a2)
    {
      v12 = AppleBCMWLANBGScanAdapter::configureBGScanParams(this, 2);
      if (v12)
      {
LABEL_22:
        if ((*v6)[3] && CCLogStream::shouldLog())
        {
          if (a2)
          {
            v17 = "Suspend";
          }

          else
          {
            v17 = "Resume";
          }

          CCLogStream::logAlert((*v6)[3], "[dk] %s@%d:Failed to %s PNO\n", "configPNO", 517, v17);
        }

        return v12;
      }

      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (a2)
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  v16 = AppleBCMWLANBGScanAdapter::configureBGScanParams(this, v15);
LABEL_21:
  v12 = v16;
  if (v16)
  {
    goto LABEL_22;
  }

  v18 = *v6;
  if ((*v6)[3])
  {
    v19 = CCLogStream::shouldLog();
    v18 = *v6;
    if (v19)
    {
      if (a2)
      {
        v21 = "Suspend";
      }

      else
      {
        v21 = "Resume";
      }

      CCLogStream::logAlert(v18[3], "[dk] %s@%d:Succesfully %s PNO\n", "configPNO", 519, v21);
      v18 = *v6;
    }
  }

  v12 = 0;
  *(v18 + 4844) = a2 == 0;
  return v12;
}

uint64_t AppleBCMWLANBGScanAdapter::configEPNO(AppleBCMWLANBGScanAdapter *this, int a2)
{
  if (*(*(this + 5) + 4844))
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = AppleBCMWLANBGScanAdapter::configureBGScanParams(this, v4);
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      v7 = AppleBCMWLANBGScanAdapter::configurePFN(this, 1);
      if (!v7)
      {
        v7 = AppleBCMWLANBGScanAdapter::configurePFNSuspend(this, 1);
        if (!v7)
        {
          v8 = *(this + 5);
          if (v8[3])
          {
            shouldLog = CCLogStream::shouldLog();
            v8 = *(this + 5);
            if (shouldLog)
            {
              CCLogStream::logAlert(v8[3], "[dk] %s@%d:Succesfully Suspend EPNO\n", "configEPNO", 560);
              v8 = *(this + 5);
            }
          }

          v10 = *v8;
          v11 = 37;
LABEL_23:
          AppleBCMWLANCore::postMessageInfra(v10, v11, 0, 0);
          return 0;
        }
      }

LABEL_15:
      v6 = v7;
    }
  }

  else if (!v5)
  {
    v7 = AppleBCMWLANBGScanAdapter::configurePFN(this, 1);
    if (!v7)
    {
      v7 = AppleBCMWLANBGScanAdapter::configurePFNSuspend(this, 0);
      if (!v7)
      {
        v13 = *(this + 5);
        if (v13[3])
        {
          v14 = CCLogStream::shouldLog();
          v13 = *(this + 5);
          if (v14)
          {
            CCLogStream::logAlert(v13[3], "[dk] %s@%d:Succesfully Resume EPNO\n", "configEPNO", 563);
            v13 = *(this + 5);
          }
        }

        v10 = *v13;
        v11 = 38;
        goto LABEL_23;
      }
    }

    goto LABEL_15;
  }

  if (*(*(this + 5) + 24) && CCLogStream::shouldLog())
  {
    if (a2)
    {
      v15 = "Disable";
    }

    else
    {
      v15 = "Enable";
    }

    CCLogStream::logAlert(*(*(this + 5) + 24), "[dk] %s@%d:Failed to %s EPNO\n", "configEPNO", 557, v15);
  }

  return v6;
}

uint64_t AppleBCMWLANBGScanAdapter::handlePFNSuspendAsyncCallBack(uint64_t result, uint64_t a2, int a3)
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
        return AppleBCMWLANBGScanAdapter::handlePFNSuspendAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBGScanAdapter::configureBGScanParams(AppleBCMWLANBGScanAdapter *this, int a2)
{
  memset(v28, 0, 140);
  v4 = (this + 40);
  v3 = *(this + 5);
  if (v3[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v3 = *v4;
    if (shouldLog)
    {
      v24 = v3[3];
      v25 = "BSSID_BASED_SCAN";
      if ((a2 & 1) == 0)
      {
        v25 = 0;
      }

      v26 = "SSID_BASED_SCAN";
      if ((a2 & 2) == 0)
      {
        v26 = 0;
      }

      CCLogStream::logAlert(v24, "[dk] %s@%d:%s: ScanType [%s %s]\n", "configureBGScanParams", 961, "configureBGScanParams", v25, v26);
      v3 = *v4;
    }
  }

  isRestrictedCountry = AppleBCMWLANCore::isRestrictedCountry(*v3);
  if ((a2 & 2) != 0 && isRestrictedCountry)
  {
    if ((*v4)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::configureBGScanParams(v4);
    }

    v7 = 2;
  }

  else
  {
    DWORD2(v28[8]) = 1;
    v7 = 3;
  }

  v8 = *v4;
  v9 = *(*v4 + 4845);
  if (!*(*v4 + 4845))
  {
    DWORD2(v28[8]) = v7;
  }

  if ((~a2 & 3) == 0)
  {
    LODWORD(v28[0]) = 0;
    if (v8[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::configureBGScanParams(v4);
    }

    goto LABEL_16;
  }

  if (a2)
  {
    LODWORD(v28[0]) = 2;
    if (v8[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::configureBGScanParams(v4);
    }

    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**v4) < 0x11)
    {
      v12 = *v4;
      DWORD1(v28[0]) = *(*v4 + 10);
      if (DWORD1(v28[0]))
      {
        v21 = 0;
        do
        {
          if (v12[3])
          {
            v22 = CCLogStream::shouldLog();
            v12 = *v4;
            if (v22)
            {
              CCLogStream::logAlert(v12[3], "[dk] %s@%d:Channel Number %d ", "configureBGScanParams", 1031, *(v12 + 3 * v21 + 12));
              v12 = *v4;
            }
          }

          *(v28 + v21 + 4) = *(v12 + 3 * v21 + 12);
          ++v21;
        }

        while (*(v12 + 10) > v21);
        goto LABEL_16;
      }
    }

    else
    {
      LOWORD(v27[0]) = 0;
      v12 = *v4;
      if (*(*v4 + 10))
      {
        v13 = 0;
        do
        {
          v14 = v13;
          v15 = v12 + 12 * v13;
          v18 = *(v15 + 13);
          v16 = (v15 + 52);
          v17 = v18;
          if ((v18 & 2) == 0)
          {
            *v16 = v17 | 2;
            v12 = *v4;
          }

          if (AppleBCMWLANCore::getChanSpec(*v12, v12 + 12 * v14 + 44, v27))
          {
            v19 = 1;
          }

          else
          {
            v19 = LOWORD(v27[0]) == 0;
          }

          if (v19)
          {
            if ((*v4)[3] && CCLogStream::shouldLog())
            {
              AppleBCMWLANBGScanAdapter::configureBGScanParams(v4);
            }
          }

          else
          {
            v20 = DWORD1(v28[0]);
            *(v28 + SDWORD1(v28[0]) + 4) = v27[0];
            DWORD1(v28[0]) = v20 + 1;
            LOWORD(v27[0]) = 0;
          }

          v13 = v14 + 1;
          v12 = *v4;
        }

        while (*(*v4 + 10) > (v14 + 1));
        if (DWORD1(v28[0]))
        {
          goto LABEL_16;
        }
      }
    }

    if (!*(v12 + 10))
    {
LABEL_16:
      v10 = (*v4)[1];
      v27[0] = v28;
      v27[1] = 140;
      v11 = AppleBCMWLANCommander::runIOVarSet(v10, "pfn_cfg", v27, 0, 0);
      if (v11 && (*v4)[3] && CCLogStream::shouldLog())
      {
        AppleBCMWLANBGScanAdapter::configureBGScanParams(v4);
      }

      return v11;
    }

    v11 = 3758097095;
    if (v12[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::configureBGScanParams(v4);
    }
  }

  else
  {
    if ((a2 & 2) != 0)
    {
      if (v9)
      {
        LODWORD(v28[0]) = 0;
        if (v8[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANBGScanAdapter::configureBGScanParams(v4);
        }
      }

      else
      {
        LODWORD(v28[0]) = 1;
        if (v8[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANBGScanAdapter::configureBGScanParams(v4);
        }
      }

      goto LABEL_16;
    }

    v11 = 3758097095;
    if (v8[3] && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:UnSupported: ScanType %d\n", "configureBGScanParams", 993, a2);
    }
  }

  return v11;
}

uint64_t AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BG_PARAMS(AppleBCMWLANBGScanAdapter *a1, uint64_t a2)
{
  v4 = a1 + 40;
  if (*(*(a1 + 5) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANBGScanAdapter::setWCL_CONFIG_BG_PARAMS(v4);
  }

  if (*a2)
  {
    v5 = AppleBCMWLANBGScanAdapter::configureDynamicScanFreq(a1, *(a2 + 1), a2 + 4);
    if (v5 && *(*v4 + 24) && CCLogStream::shouldLog())
    {
      if (*(a2 + 1))
      {
        v6 = "Enable";
      }

      else
      {
        v6 = "Disable";
      }

      CCLogStream::logAlert(*(*v4 + 24), "[dk] %s@%d:Failed to %s Dynamic Scan Freq %d\n", "setWCL_CONFIG_BG_PARAMS", 579, v6, v5);
    }
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 24))
  {
    v5 = AppleBCMWLANBGScanAdapter::configureUnAssociatedScanTime(a1, *(a2 + 25), *(a2 + 28));
    if (v5)
    {
      if (*(*v4 + 24) && CCLogStream::shouldLog())
      {
        v8 = "Enable";
        if (!*(a2 + 25))
        {
          v8 = "Disable";
        }

        CCLogStream::logAlert(*(*v4 + 24), "[dk] %s@%d:Failed to %s UnAssociate Scan Time %d\n", "setWCL_CONFIG_BG_PARAMS", 586, v8, v5);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANBGScanAdapter::configureDynamicScanFreq(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v8 = *(a3 + 4);
    v7 = *(a3 + 8);
    v10 = *(a3 + 14);
    v9 = *(a3 + 16) * *(a3 + 12);
    *a3;
  }

  v4 = (a1 + 40);
  v5 = AppleBCMWLANCommander::sendIOVarSet(*(*(a1 + 40) + 8), "pfn_override");
  if (v5 && (*v4)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANBGScanAdapter::configureDynamicScanFreq(v4, a2 == 0);
  }

  return v5;
}

uint64_t AppleBCMWLANBGScanAdapter::configureUnAssociatedScanTime(AppleBCMWLANBGScanAdapter *this, char a2, int a3)
{
  v11 = a3;
  v4 = (this + 40);
  v5 = *(*(this + 5) + 8);
  v10[0] = &v11;
  v10[1] = 4;
  v6 = AppleBCMWLANCommander::runIOVarSet(v5, "scan_unassoc_time", v10, 0, 0);
  v7 = v6;
  v8 = v6 == -469794537 || v6 == 0;
  if (!v8 && (*v4)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANBGScanAdapter::configureUnAssociatedScanTime(v4, a2);
  }

  return v7;
}

uint64_t AppleBCMWLANBGScanAdapter::getWCL_BGSCAN_CACHE_RESULT(uint64_t a1, unsigned int *a2)
{
  v3 = AppleBCMWLANBGScanAdapter::collectBGScanCachedResults(a1, a2);
  if (v3 && *(*(a1 + 40) + 24) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:Failed to collect BGScan Cache Result %d\n", "getWCL_BGSCAN_CACHE_RESULT", 599, v3);
  }

  return v3;
}

uint64_t AppleBCMWLANBGScanAdapter::collectBGScanCachedResults(uint64_t a1, unsigned int *a2)
{
  v6 = 0;
  v4 = a1 + 40;
  if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANBGScanAdapter::collectBGScanCachedResults(v4);
  }

  result = AppleBCMWLANBGScanAdapter::retrieveBGScanCachedInfo(a1, &v6, a2);
  if (!result)
  {
    if (v6)
    {
      return 0;
    }

    result = AppleBCMWLANBGScanAdapter::retrieveBGScanCachedInfo(a1, &v6, a2);
    if (!result)
    {
      result = *(*v4 + 24);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANBGScanAdapter::collectBGScanCachedResults(v4);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t *AppleBCMWLANBGScanAdapter::getMotionProfileState(AppleBCMWLANBGScanAdapter *this)
{
  v3 = (this + 40);
  v2 = *(this + 5);
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  result = AppleBCMWLANConfigManager::getMotionProfileGPIOConfig(*(v2 + 16));
  if (result)
  {
    v17[0] = &v18;
    v17[1] = 0x1400140014;
    v18 = 1;
    v5 = (*(***v3 + 88))(**v3);
    if ((*(*v5 + 136))(v5))
    {
      v14 = this;
      v15 = AppleBCMWLANBGScanAdapter::handleGetMotionStateAsyncCallBack;
      v16 = 0;
      v6 = *(*(this + 5) + 8);
      v13[0] = &v18;
      v13[1] = 20;
      v12 = 1310740;
      v7 = AppleBCMWLANCommander::sendIOVarGet(v6, "mpf_state", v13, &v12, &v14, 0);
      if (v7)
      {
        v8 = v7;
        if ((*v3)[3])
        {
          if (CCLogStream::shouldLog())
          {
            CCLogStream::logAlert((*v3)[3], "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "getMotionProfileState", 842, v8);
          }
        }
      }

      return 0;
    }

    v9 = (*v3)[1];
    v14 = &v18;
    v15 = 20;
    v10 = AppleBCMWLANCommander::runIOVarGet(v9, "mpf_state", &v14, v17, 0);
    if (v10 == -469794537)
    {
      return 0;
    }

    v11 = v10;
    if (!v10)
    {
      return v19;
    }

    result = (*v3)[3];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANBGScanAdapter::getMotionProfileState(v3, v11);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBGScanAdapter::handleGetMotionStateAsyncCallBack(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  if (a3)
  {
    v4 = (a1 + 40);
    result = *(*(a1 + 40) + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANBGScanAdapter::handleGetMotionStateAsyncCallBack(v4);
      }
    }
  }

  else
  {
    v6 = a1 + 40;
    result = *(*(a1 + 40) + 24);
    if (*a4)
    {
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANBGScanAdapter::handleGetMotionStateAsyncCallBack(v6);
        }
      }
    }

    else if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANBGScanAdapter::handleGetMotionStateAsyncCallBack(v6);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBGScanAdapter::handleSetDynamicScanFreqAsyncCallBack(uint64_t result, uint64_t a2, int a3)
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
        return AppleBCMWLANBGScanAdapter::handleSetDynamicScanFreqAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t getCurrentContinuousTimeMilliSeconds(void)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  return 0;
}

uint64_t AppleBCMWLANBGScanAdapter::retrieveBGScanCachedInfo(uint64_t a1, _BYTE *a2, unsigned int *a3)
{
  v6 = (a1 + 40);
  v7 = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(a1 + 40) + 8)) - 14;
  v8 = IOMallocZeroData();
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  FirmwareInterfaceVersion = AppleBCMWLANCore::getFirmwareInterfaceVersion(**v6);
  v11 = 12582912;
  if (FirmwareInterfaceVersion > 0x10)
  {
    v11 = 14680064;
  }

  if (v7)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = v11 & 0xFFFF0000FFFFFFFFLL | (v7 << 32) | v7;
  if (!v7)
  {
    v13 = 0;
  }

  v16[0] = v12;
  v16[1] = v13;
  v14 = AppleBCMWLANCommander::runIOVarGet((*v6)[1], "pfnbest_bssid", &kNoTxPayload, v16, 0);
  if (v14)
  {
    if ((*v6)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::retrieveBGScanCachedInfo(v6);
    }
  }

  else
  {
    *a2 = AppleBCMWLANBGScanAdapter::assembleBGScanCachedResults(a1, v9, v9, a3);
  }

  IOFreeData();
  return v14;
}

uint64_t AppleBCMWLANBGScanAdapter::assembleBGScanCachedResults(uint64_t a1, _DWORD *a2, int *a3, unsigned int *a4)
{
  v5 = a2 + 2;
  v4 = a2[2];
  if (!v4)
  {
    return 1;
  }

  if (v4 >= 0x141)
  {
    AppleBCMWLANBGScanAdapter::assembleBGScanCachedResults(a1, a2 + 2, &v26);
    return v26;
  }

  v8 = *a4;
  v9 = v4 + *a4;
  if (v9 < 0x141)
  {
    v12 = a3 + 3;
    v11 = *a3;
    *a4 = v9;
    if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlertIf(*(*(a1 + 40) + 24), 0x80000000uLL, "[dk] %s@%d:PFN Version %d Status %d Count %d\n", "assembleBGScanCachedResults", 1219, v11, a2[1], a2[2]);
    }

    v13 = a2[1];
    if (!v13)
    {
      v24 = a4;
      v25 = 0;
      goto LABEL_12;
    }

    if (v13 == 1)
    {
      v24 = a4;
      v25 = 1;
LABEL_12:
      if (*v5)
      {
        v15 = 0;
        do
        {
          v27 = *v12;
          v28 = *(v12 + 2);
          if (*a2 == 3)
          {
            v16 = *(v12 + 6);
            v17 = *AppleBCMWLANCore::getBus(**(a1 + 40));
            if ((*(v17 + 368))() >> 1 < 0x88D)
            {
              LOBYTE(v18) = 0;
            }

            else
            {
              v18 = (*(v12 + 8) >> 1) & 1;
            }

            v19 = *(v12 + 12);
            v21 = 16;
          }

          else
          {
            v16 = *(v12 + 6);
            v19 = *(v12 + 7);
            v20 = *AppleBCMWLANCore::getBus(**(a1 + 40));
            if ((*(v20 + 368))() >> 1 < 0x88D)
            {
              LOBYTE(v18) = 0;
            }

            else
            {
              v18 = (*(v12 + 8) >> 1) & 1;
            }

            v21 = 12;
          }

          v22 = *(v12 + 5);
          v12 = (v12 + v21);
          v23 = &v24[5 * v8 + 1];
          *v23 = v27;
          *(v23 + 4) = v28;
          *(v23 + 6) = v18;
          *(v23 + 7) = 0;
          *(v23 + 8) = v22;
          *(v23 + 12) = v16;
          *(v23 + 16) = v19;
          ++v15;
          ++v8;
        }

        while (v15 < *v5);
      }

      if (*(*(a1 + 40) + 24))
      {
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:%u BGScan cached network collected\n", "assembleBGScanCachedResults", 1300, *v24);
        }
      }

      return v25;
    }

    return 1;
  }

  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      CCLogStream::logEmergency(*(*(a1 + 40) + 24), "[dk] %s@%d:Adding to ScanCache will exceed maxinum networks: previous pData->num_networks %u pRetrievedCachedScanInfo->count %u\n", "assembleBGScanCachedResults", 1203, v8, *v5);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANBGScanAdapter::scanBackoffEvent(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  if (a2)
  {
    v4 = *(a2 + 4);
    if (v4 == 167)
    {
      v5 = 1;
      goto LABEL_9;
    }

    if (v4 == 168)
    {
      v5 = 2;
LABEL_9:
      LODWORD(v12) = v5;
      if (*(a2 + 12) == 1)
      {
        v8 = 1;
        HIDWORD(v12) = 1;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(a1 + 40);
      if (v9[3])
      {
        shouldLog = CCLogStream::shouldLog();
        v9 = *(a1 + 40);
        if (shouldLog)
        {
          CCLogStream::logNoticeIf(v9[3], 0x80000000uLL, "[dk] %s@%d: Posting received scan backoff event: wle->event_type %u mapped to scangroup %u, wle->reason %u mapped to reason %u\n", "scanBackoffEvent", 1357, *(a2 + 4), v5, *(a2 + 12), v8);
          v9 = *(a1 + 40);
        }
      }

      return AppleBCMWLANCore::postMessageInfra(*v9, 0x5Au, &v11, 0x10uLL);
    }

    result = *(*(a1 + 40) + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:Unexpected event %u received with reason %u, ignoring\n", "scanBackoffEvent", 1343, *(a2 + 4), *(a2 + 12));
      }
    }
  }

  else
  {
    v6 = a1 + 40;
    result = *(*(a1 + 40) + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANBGScanAdapter::scanBackoffEvent(v6);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBGScanAdapter::parsePFNAllGoneExtEvent(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) <= 5u && *(*(a1 + 40) + 24) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:Event msg length is too short %u", "parsePFNAllGoneExtEvent", 1381, *(a2 + 20));
  }

  v4 = *(a1 + 40);
  if (v4[3])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *(a1 + 40);
    if (shouldLog)
    {
      CCLogStream::logAlert(v4[3], "[dk] %s@%d:Got WLC_E_PFN_SCAN_ALLGONE_EXT event with flag = %d (0/1 - legacy scan/low power scan)\n", "parsePFNAllGoneExtEvent", 1384, *(a2 + 52) & 1);
      v4 = *(a1 + 40);
    }
  }

  result = AppleBCMWLANCore::isEnhancedPNOEnabled(*v4);
  if (result)
  {
    v7 = **(a1 + 40);
    if (*(a2 + 52))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    return AppleBCMWLANCore::sendePNOEventsCoreAnalytics(v7, v8);
  }

  return result;
}

uint64_t AppleBCMWLANBGScanAdapter::parseBGScanEvent(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 40);
  if (AppleBCMWLANCore::isEnhancedPNOEnabled(**(a1 + 40)))
  {

    return AppleBCMWLANBGScanAdapter::retrievePfnScanInfo(a1, a2);
  }

  if (*(a2 + 20) <= 3u)
  {
    result = (*v4)[3];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        v19 = *(a2 + 20);
        return CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:Event msg length is too short %u");
      }
    }

    return result;
  }

  v6 = *(a2 + 48);
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v7 = 12;
      v8 = 56;
      goto LABEL_33;
    }

    if (v6 != 2)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  if (v6 == 4)
  {
    if (AppleBCMWLANCore::checkForScanCoreSupport(**v4) && (AppleBCMWLANCore::checkForLPSCDisable(**v4) & 1) == 0 && *(a2 + 20) >= 0x3Cu && (*v4)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::parseBGScanEvent(v4, a2);
    }

LABEL_32:
    v7 = 16;
    v8 = 60;
    goto LABEL_33;
  }

  if (v6 != 5)
  {
LABEL_22:
    result = (*v4)[3];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:Invalid PFN Scan Result Version %u\n");
      }
    }

    return result;
  }

  if (AppleBCMWLANCore::checkForScanCoreSupport(**v4) && (AppleBCMWLANCore::checkForLPSCDisable(**v4) & 1) == 0 && *(a2 + 20) >= 0x40u && (*v4)[3] && CCLogStream::shouldLog())
  {
    AppleBCMWLANBGScanAdapter::parseBGScanEvent(v4, a2);
  }

  v7 = 16;
  v8 = 64;
LABEL_33:
  if (v8 <= *(a2 + 20))
  {
    memset(&v25[1], 0, 112);
    v22 = 0u;
    v23 = 0u;
    v9 = a2 + 48 + v7;
    v24 = 0;
    if (v6 > 4)
    {
      v14 = *v9;
      v15 = *(v9 + 8);
      v16 = *(v9 + 9);
      *v21 = v16;
      *&v21[16] = *(v9 + 25);
      *&v21[31] = *(v9 + 40);
      WORD2(v25[6]) = WORD2(*v9);
      LODWORD(v25[6]) = v14;
      HIDWORD(v25[1]) = v15;
      if (v15 >= 0x21)
      {
        if ((*v4)[3] && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:Invalid SSID length %u, truncated it to maximum legal length\n", "parseBGScanEvent", 1476, v15);
        }

        HIDWORD(v25[1]) = 32;
      }

      v12 = *&v21[3];
      v13 = *&v21[19];
    }

    else
    {
      v10 = *v9;
      WORD2(v25[6]) = *(v9 + 4);
      v11 = *(v9 + 7);
      LODWORD(v25[6]) = v10;
      HIDWORD(v25[1]) = v11;
      if (v11 >= 0x21)
      {
        if ((*v4)[3] && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:Invalid SSID length %u, truncated it to maximum legal length\n", "parseBGScanEvent", 1460, v11);
        }

        HIDWORD(v25[1]) = 32;
      }

      v12 = *(v9 + 8);
      v13 = *(v9 + 24);
    }

    *&v25[2] = v12;
    *&v25[4] = v13;
    v22 = v12;
    v23 = v13;
    v17 = *v4;
    if ((*v4)[3])
    {
      shouldLog = CCLogStream::shouldLog();
      v17 = *v4;
      if (shouldLog)
      {
        CCLogStream::logAlert(v17[3], "[dk] %s@%d: FOUND PNO network with SSID: %s \n", "parseBGScanEvent", 1484, &v22);
        v17 = *v4;
      }
    }

    BYTE6(v25[6]) = 1;
    v25[0] = 0x100000002;
    return AppleBCMWLANCore::postMessageInfra(*v17, 0x1Fu, v25, 0x40uLL);
  }

  else
  {
    result = (*v4)[3];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        v20 = *(a2 + 20);
        return CCLogStream::logAlert((*v4)[3], "[dk] %s@%d:Invalid BG scan event msg length %u");
      }
    }
  }

  return result;
}

{
  v2 = OUTLINED_FUNCTION_2_0(a1, a2);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Got WLC_E_PFN_NET_FOUND event with flag = %d (0/1 - legacy scan/low power scan)\n", "parseBGScanEvent", 1432, v4);
}

{
  v2 = OUTLINED_FUNCTION_2_0(a1, a2);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Got WLC_E_PFN_NET_FOUND event with flag = %d (0/1 - legacy scan/low power scan)\n", "parseBGScanEvent", 1423, v4);
}

uint64_t AppleBCMWLANBGScanAdapter::retrievePfnScanInfo(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v42 = -86;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __dst[0] = v4;
  __dst[1] = v4;
  if (*(a2 + 20) <= 3u)
  {
    if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
    {
      v35 = *(v2 + 20);
      CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:Check1:Event msg length is too short %u");
    }

    return 0;
  }

  v5 = *(a2 + 48);
  if (v5 != 1)
  {
    if (v5 != 2)
    {
      if (v5 == 5)
      {
        v7 = (a1 + 40);
        if (!AppleBCMWLANCore::checkForScanCoreSupport(**(a1 + 40)) || (AppleBCMWLANCore::checkForLPSCDisable(**v7) & 1) != 0 || *(v2 + 20) < 0x40u)
        {
          goto LABEL_26;
        }

        if ((*v7)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANBGScanAdapter::retrievePfnScanInfo(a1 + 40, v2);
        }
      }

      else
      {
        if (v5 != 4)
        {
          if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
          {
            CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:Invalid PFN Scan Result Version %u\n");
          }

          return 0;
        }

        v7 = (a1 + 40);
        if (!AppleBCMWLANCore::checkForScanCoreSupport(**(a1 + 40)) || (AppleBCMWLANCore::checkForLPSCDisable(**v7) & 1) != 0 || *(v2 + 20) < 0x3Cu)
        {
          goto LABEL_26;
        }

        if ((*v7)[3] && CCLogStream::shouldLog())
        {
          AppleBCMWLANBGScanAdapter::retrievePfnScanInfo(a1 + 40, v2);
        }
      }

      AppleBCMWLANCore::sendePNOEventsCoreAnalytics(**v7, (*(v2 + 54) & 1) != 0);
    }

LABEL_26:
    v6 = 16;
    goto LABEL_27;
  }

  v6 = 12;
LABEL_27:
  v8 = *(v2 + 20);
  if (v8 < v6)
  {
    if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
    {
      v36 = *(v2 + 20);
      CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:check2:Invalid event msg length %u");
    }

    return 0;
  }

  v9 = *(v2 + 56);
  if (v9)
  {
    v10 = 48 * v9;
    if ((v5 - 1) <= 3)
    {
      v10 = 44 * v9;
    }

    v11 = 44 * v9;
    if (v5 != 1)
    {
      v11 = v10;
    }

    if (v11 + v6 > v8)
    {
      if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
      {
        v38 = *(v2 + 56);
        v37 = *(v2 + 20);
        CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:check3:Invalid event msg length %u, version %u, number of records %u\n");
      }

      return 0;
    }

    v15 = 0;
    v16 = v2 + 48 + v6;
    v17 = &v43[2];
    memset(&v43[1], 0, 116);
    v43[0] = v5;
    v39 = v2;
    while (1)
    {
      while (1)
      {
        if (v5 > 4)
        {
          v23 = v5;
          v24 = *v16;
          v21 = *(v16 + 8);
          *&v40[31] = *(v16 + 40);
          *v40 = *(v16 + 9);
          *&v40[16] = *(v16 + 25);
          v25 = *(v16 + 44);
          v26 = *(v16 + 46);
          v18 = v15;
          v27 = v17;
          v28 = &v17[14 * v15];
          *(v28 + 22) = WORD2(*v16);
          v28[10] = v24;
          v28[1] = v21;
          if (v21 >= 0x21)
          {
            if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
            {
              CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:Invalid SSID length %u, truncated it to maximum legal length\n", "retrievePfnScanInfo", 1652, v28[1]);
            }

            v21 = 32;
            v28[1] = 32;
          }

          *(v28 + 2) = *&v40[3];
          *(v28 + 6) = *&v40[19];
          *(v28 + 24) = v25;
          v28[13] = v26;
          v16 += 48;
          v5 = v23;
          v17 = v27;
          v2 = v39;
        }

        else
        {
          v18 = v15;
          v19 = &v17[14 * v15];
          v20 = *v16;
          *(v19 + 22) = *(v16 + 4);
          v19[10] = v20;
          v21 = *(v16 + 7);
          v19[1] = v21;
          if (v21 >= 0x21)
          {
            if (*(*(a1 + 40) + 24) && CCLogStream::shouldLog())
            {
              CCLogStream::logAlert(*(*(a1 + 40) + 24), "[dk] %s@%d:Invalid SSID length %u, truncated it to maximum legal length\n", "retrievePfnScanInfo", 1626, v19[1]);
            }

            v21 = 32;
            v19[1] = 32;
          }

          *(v19 + 6) = 0u;
          *(v19 + 2) = 0u;
          v22 = *(v16 + 8);
          *(v19 + 6) = *(v16 + 24);
          *(v19 + 2) = v22;
          *(v19 + 24) = *(v16 + 40);
          v19[13] = *(v16 + 42);
          v16 += 44;
        }

        --*(v2 + 56);
        v29 = &v17[14 * v18];
        *(v29 + 46) |= 1u;
        if (v21 >= 0x20)
        {
          v30 = 32;
        }

        else
        {
          v30 = v21;
        }

        memcpy(__dst, v29 + 2, v30);
        *(__dst + v21) = 0;
        v31 = *(a1 + 40);
        if (*(v31 + 24))
        {
          shouldLog = CCLogStream::shouldLog();
          v31 = *(a1 + 40);
          if (shouldLog)
          {
            CCLogStream::logAlert(*(v31 + 24), "[dk] %s@%d: FOUND PNO network SSID:", "retrievePfnScanInfo", 1675);
            v31 = *(a1 + 40);
          }
        }

        if (*(v31 + 24) && CCLogStream::shouldLog())
        {
          AppleBCMWLANBGScanAdapter::retrievePfnScanInfo(a1 + 40);
        }

        v43[1] = ++v15;
        if (v15 < 2u)
        {
          break;
        }

        v33 = **(a1 + 40);
        v34 = 56 * v15 + 8;
LABEL_71:
        AppleBCMWLANCore::postMessageInfra(v33, 0x1Fu, v43, v34);
        v15 = 0;
        if (!*(v2 + 56))
        {
          return 0;
        }
      }

      if (!*(v2 + 56))
      {
        v33 = **(a1 + 40);
        v34 = 64;
        goto LABEL_71;
      }
    }
  }

  v13 = *(a1 + 40);
  v12 = a1 + 40;
  if (*(v13 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANBGScanAdapter::retrievePfnScanInfo(v12);
  }

  return 0;
}

{
  v2 = OUTLINED_FUNCTION_2_0(a1, a2);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Got WLC_E_PFN_NET_FOUND event with flag = %d (0/1 - legacy scan/low power scan)\n", "retrievePfnScanInfo", 1552, v4);
}

{
  v2 = OUTLINED_FUNCTION_2_0(a1, a2);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Got WLC_E_PFN_NET_FOUND event with flag = %d (0/1 - legacy scan/low power scan)\n", "retrievePfnScanInfo", 1539, v4);
}

uint64_t _parseMacAddress(ether_addr *a1, char *a2)
{
  if (a1)
  {
    v2 = 0;
    while (1)
    {
      v3 = *a2;
      if (!*a2)
      {
        return 0xFFFFFFFFLL;
      }

      v4 = a2[1];
      if (!a2[1])
      {
        return 4294967294;
      }

      if (v3 <= 64)
      {
        v5 = 64;
      }

      else
      {
        v5 = 9;
      }

      v6 = v3 + v5;
      if (v4 <= 64)
      {
        v7 = -48;
      }

      else
      {
        v7 = -55;
      }

      if (v4 > 96)
      {
        v7 = -87;
      }

      a1->octet[v2] = v4 + v7 + 16 * v6;
      if (v2 == 5)
      {
        return 0;
      }

      if (a2[2] != 58 && a2[2])
      {
        break;
      }

      a2 += 3;
      if (++v2 == 6)
      {
        return 0;
      }
    }

    return 4294967293;
  }

  else
  {
    IOLog("%s::%s[%u] Error: Assert failure\n", "/AppleInternal/Library/BuildRoots/4~CAoHugCNRLZ38M6QC0gAwfKfDtdxLLiLxRq_W0E/Applications/Xcode.app/Contents/Developer/Platforms/DriverKit.platform/Developer/SDKs/DriverKit.iPhoneOS25.1.Internal.sdk/System/DriverKit/System/Library/PrivateFrameworks/IO80211DriverKit.framework/PrivateHeaders/IO80211Util.h", "_parseMacAddress", 926);
    return 0;
  }
}

uint64_t AppleBCMWLANBGScanAdapter::scanPrivacyMACTimer(uint64_t result, uint64_t a2)
{
  v3 = result + 40;
  v2 = *(result + 40);
  if (*(v2 + 4912) == a2)
  {
    v4 = result;
    if (*(v2 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::scanPrivacyMACTimer(v3);
    }

    result = AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(v4);
    if (result)
    {
      result = *(*v3 + 24);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANBGScanAdapter::scanPrivacyMACTimer(v3);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(AppleBCMWLANCore ***this)
{
  memset(v16, 0, sizeof(v16));
  v2 = (this + 5);
  if (!AppleBCMWLANCore::isPrivateMacEnabled(*this[5]))
  {
    return 0;
  }

  v15 = 0;
  v14 = 0x80000;
  if ((*(*(*v2)[606] + 136))((*v2)[606]))
  {
    v11 = this;
    v12 = AppleBCMWLANBGScanAdapter::handleGetScanMacStateAsyncCallBack;
    v13 = 0;
    v3 = this[5][1];
    v9 = &v14;
    v10 = 12;
    v8 = 786436;
    if (AppleBCMWLANCommander::sendIOVarGet(v3, "scanmac", &v9, &v8, &v11, 0) && (*v2)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(v2);
    }

    return 0;
  }

  v11 = &v14;
  v12 = 0xC0004000CLL;
  v6 = (*v2)[1];
  v9 = &v14;
  v10 = 12;
  v7 = AppleBCMWLANCommander::runIOVarGet(v6, "scanmac", &v9, &v11, 0);
  if (v7)
  {
    v4 = v7;
    if ((*v2)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(v2);
    }
  }

  else
  {
    if (!v15)
    {
      if ((*v2)[3] && CCLogStream::shouldLog())
      {
        AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(v2);
      }

      return 0;
    }

    v4 = AppleBCMWLANBGScanAdapter::configurePrivateMACForScans(this, 2);
    if (v4 && (*v2)[3] && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(v2);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANBGScanAdapter::enablePrivateMACForScans(AppleBCMWLANBGScanAdapter *this)
{
  v1 = this + 40;
  *(*(this + 5) + 4856) = 1;
  if (AppleBCMWLANBGScanAdapter::configurePrivateMACForScans(this, 0) && *(*v1 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANBGScanAdapter::enablePrivateMACForScans(v1);
  }

  return 0;
}

uint64_t AppleBCMWLANBGScanAdapter::configurePrivateMACForScans(AppleBCMWLANCore ***this, int a2)
{
  *v13 = 0;
  v4 = (this + 5);
  result = AppleBCMWLANCore::isPrivateMacEnabled(*this[5]);
  if (!result)
  {
    return result;
  }

  result = 0;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v6 = *v4;
      if (*(*v4 + 4876) | *(*v4 + 4880))
      {
        *&v13[6] = *(v6 + 4876);
        v14 = *(v6 + 4880);
        v7 = v13[6] & 0xFC;
      }

      else
      {
        v14 = -1;
        *&v13[6] = -1;
        v7 = -4;
      }

      v13[6] = v7;
      if (*(v6 + 4864) | *(v6 + 4868))
      {
        *v13 = *(v6 + 4864);
        *&v13[4] = *(v6 + 4868);
      }

      else
      {
        read_random();
        v6 = *v4;
      }

      v13[0] = v13[0] & 0xFC | 2;
      *(v6 + 4858);
      if (*(v6 + 24))
      {
        shouldLog = CCLogStream::shouldLog();
        v6 = *v4;
        if (shouldLog)
        {
          CCLogStream::logAlertIf(*(v6 + 24), 0x40000000000uLL, "[dk] %s@%d:PRIVATE MAC %02x:%02x:%02x:%02x:%02x:%02x\n", "configurePrivateMACForScans", 1998, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5]);
          v6 = *v4;
        }
      }

      if (*(v6 + 24))
      {
        v9 = CCLogStream::shouldLog();
        v6 = *v4;
        if (v9)
        {
          CCLogStream::logAlertIf(*(v6 + 24), 0x40000000000uLL, "[dk] %s@%d:scan mac random mask %02x:%02x:%02x:%02x:%02x:%02x\n", "configurePrivateMACForScans", 2001, v13[6], v13[7], v13[8], v13[9], v14, HIBYTE(v14));
          v6 = *v4;
        }
      }

      *(v6 + 4870) = *v13;
      *(v6 + 4874) = *&v13[4];
      v10 = *v4;
      *(v10 + 4888) = *(*v4 + 4894);
      *(v10 + 4892) = *(v10 + 4898);
      v11 = *v4;
      *(v11 + 4894) = *v13;
      *(v11 + 4898) = *&v13[4];
      v12 = *v4;
      *(v12 + 4882) = *&v13[6];
      *(v12 + 4886) = v14;
    }

    else if (a2 != 4)
    {
      return result;
    }

    return AppleBCMWLANCommander::sendIOVarSet(this[5][1], "scanmac");
  }

  if (!a2)
  {
    return AppleBCMWLANCommander::sendIOVarSet(this[5][1], "scanmac");
  }

  if (a2 == 1)
  {
    result = *(*v4 + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANBGScanAdapter::configurePrivateMACForScans(v4);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBGScanAdapter::disablePrivateMACForScans(AppleBCMWLANBGScanAdapter *this)
{
  v1 = this + 40;
  *(*(this + 5) + 4856) = 0;
  if (AppleBCMWLANBGScanAdapter::configurePrivateMACForScans(this, 4) && *(*v1 + 24) && CCLogStream::shouldLog())
  {
    AppleBCMWLANBGScanAdapter::disablePrivateMACForScans(v1);
  }

  return 0;
}

uint64_t AppleBCMWLANBGScanAdapter::handleGetScanMacStateAsyncCallBack(AppleBCMWLANBGScanAdapter *this, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v5 = (this + 40);
    result = *(*(this + 5) + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANBGScanAdapter::handleGetScanMacStateAsyncCallBack(v5);
      }
    }
  }

  else if (*a4)
  {
    if (*(*a4 + 4))
    {
      result = AppleBCMWLANBGScanAdapter::configurePrivateMACForScans(this, 2);
      if (result)
      {
        v8 = *(this + 5);
        v7 = this + 40;
        result = *(v8 + 24);
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANBGScanAdapter::handleGetScanMacStateAsyncCallBack(v7);
          }
        }
      }
    }

    else
    {
      v10 = this + 40;
      result = *(*(this + 5) + 24);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANBGScanAdapter::handleGetScanMacStateAsyncCallBack(v10);
        }
      }
    }
  }

  else
  {
    v9 = this + 40;
    result = *(*(this + 5) + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANBGScanAdapter::handleGetScanMacStateAsyncCallBack(v9);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANBGScanAdapter::handleSetPrivateMACForScansAsyncCallBack(AppleBCMWLANBGScanAdapter *this, uint64_t a2, int a3)
{
  v5 = (this + 40);
  v4 = *(this + 5);
  if (a3)
  {
    if (*(v4 + 24) && CCLogStream::shouldLog())
    {
      AppleBCMWLANBGScanAdapter::handleSetPrivateMACForScansAsyncCallBack(v5);
    }
  }

  else
  {
    result = AppleBCMWLANCore::isAssociated(*v4);
    if (result)
    {
      return result;
    }
  }

  return AppleBCMWLANBGScanAdapter::resetScanPrivacyMacTimer(this);
}

uint64_t AppleBCMWLANBGScanAdapter::isPrivateMacEnabled(AppleBCMWLANBGScanAdapter *this)
{
  if (AppleBCMWLANCore::isPrivateMacEnabled(**(this + 5)))
  {
    v2 = *(*(this + 5) + 4856);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t AppleBCMWLANBGScanAdapter::resetScanPrivacyMacTimer(AppleBCMWLANBGScanAdapter *this)
{
  result = *(*(this + 5) + 4912);
  if (result)
  {
    (*(*result + 72))(result);
    v3 = *(**(*(this + 5) + 4912) + 56);

    return v3();
  }

  return result;
}

uint64_t AppleBCMWLANBGScanAdapter::cancelScanPrivacyMacTimer(AppleBCMWLANBGScanAdapter *this)
{
  result = *(*(this + 5) + 4912);
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

uint64_t AppleBCMWLANBGScanAdapter::copyCurrentToOnSleepPrivateMac(uint64_t this)
{
  v1 = *(this + 40);
  *(v1 + 4900) = *(v1 + 4894);
  *(v1 + 4904) = *(v1 + 4898);
  return this;
}

uint64_t AppleBCMWLANBGScanAdapter::configureBGScanPrivateMac(uint64_t this, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = 4864;
  do
  {
    *(*(this + 40) + v3++) = a2[v2++];
  }

  while (v2 != 6);
  *(*(this + 40) + 4864) |= 2u;
  *(*(this + 40) + 4864) &= ~1u;
  return this;
}

uint64_t AppleBCMWLANBGScanAdapter::configureBGScanMacRandomMask(uint64_t this, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = 4876;
  do
  {
    *(*(this + 40) + v3++) = a2[v2++];
  }

  while (v2 != 6);
  *(*(this + 40) + 4876) &= 0xFCu;
  return this;
}

uint64_t AppleBCMWLANBGScanAdapter::getBGScanMacRandomMask(uint64_t this, unsigned __int8 *a2)
{
  v2 = *(this + 40);
  v3 = *(v2 + 4882);
  *(a2 + 2) = *(v2 + 4886);
  *a2 = v3;
  return this;
}

uint64_t AppleBCMWLANBGScanAdapter::getBGScanPrivateMac(uint64_t this, unsigned __int8 *a2)
{
  v2 = *(this + 40);
  v3 = *(v2 + 4870);
  *(a2 + 2) = *(v2 + 4874);
  *a2 = v3;
  return this;
}

uint64_t AppleBCMWLANBGScanAdapter::getPrevAndCurrentBGScanPrivateMac(uint64_t this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = *(this + 40);
  v4 = *(v3 + 4894);
  *(a2 + 2) = *(v3 + 4898);
  *a2 = v4;
  v5 = *(this + 40);
  v6 = *(v5 + 4900);
  *(a3 + 2) = *(v5 + 4904);
  *a3 = v6;
  return this;
}

uint64_t *OUTLINED_FUNCTION_1_0@<X0>(uint64_t **a1@<X8>)
{
  result = *a1;
  v2 = **a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1, uint64_t a2)
{
  result = *(*a1 + 24);
  v3 = *(a2 + 54) & 1;
  return result;
}

AppleBCMWLANNetAdapter *AppleBCMWLANNetAdapter::withDriver(AppleBCMWLANNetAdapter *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANNetAdapterMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && (AppleBCMWLANNetAdapter::initWithDriver(v5, this) & 1) == 0)
  {
    (*(*v3 + 16))(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANNetAdapter::initWithDriver(AppleBCMWLANNetAdapter *this, AppleBCMWLANCore *a2)
{
  v4 = IOMallocZeroTyped();
  *(this + 5) = v4;
  if (!v4)
  {
    IOLog("Failed to allocate AppleBCMWLANNetAdapter_IVars\n", 0, AppleBCMWLANNetAdapter::collectImmediateFaultDataCallback, 0, 0, AppleBCMWLANNetAdapter::induceFaultCallback);
    return 0;
  }

  *v4 = a2;
  v5 = **(this + 5);
  if (!v5)
  {
    IOLog("AppleBCMWLANNetAdapter driver is null\n", 0, AppleBCMWLANNetAdapter::collectImmediateFaultDataCallback, 0, 0, AppleBCMWLANNetAdapter::induceFaultCallback);
    return 0;
  }

  *(*(this + 5) + 8) = AppleBCMWLANCore::getCommander(v5);
  v6 = *(this + 5);
  if (!*(v6 + 8))
  {
    IOLog("AppleBCMWLANNetAdapter commander is null\n", 0, AppleBCMWLANNetAdapter::collectImmediateFaultDataCallback, 0, 0, AppleBCMWLANNetAdapter::induceFaultCallback);
    return 0;
  }

  *(*(this + 5) + 16) = AppleBCMWLANCore::getConfigManager(*v6);
  v7 = *(this + 5);
  if (!*(v7 + 16))
  {
    IOLog("AppleBCMWLANNetAdapter configManager is null\n", 0, AppleBCMWLANNetAdapter::collectImmediateFaultDataCallback, 0, 0, AppleBCMWLANNetAdapter::induceFaultCallback);
    return 0;
  }

  *(*(this + 5) + 24) = AppleBCMWLANCore::getBssManager(*v7);
  if (!*(*(this + 5) + 24))
  {
    IOLog("AppleBCMWLANNetAdapter fBssManager is null\n", 0, AppleBCMWLANNetAdapter::collectImmediateFaultDataCallback, 0, 0, AppleBCMWLANNetAdapter::induceFaultCallback);
    return 0;
  }

  *(*(this + 5) + 32) = (*(*a2 + 1952))(a2);
  v8 = *(*(this + 5) + 32);
  if (!v8)
  {
    IOLog("AppleBCMWLANNetAdapter Failed to init fLogger\n", 0, AppleBCMWLANNetAdapter::collectImmediateFaultDataCallback, 0, 0, AppleBCMWLANNetAdapter::induceFaultCallback);
    return 0;
  }

  (*(*v8 + 8))(v8);
  if (!OSObject::init(this))
  {
    IOLog("AppleBCMWLANNetAdapter super init failied\n", 0, AppleBCMWLANNetAdapter::collectImmediateFaultDataCallback, 0, 0, AppleBCMWLANNetAdapter::induceFaultCallback);
    return 0;
  }

  *(*(this + 5) + 40) = AppleBCMWLANCore::getFaultReporter(**(this + 5));
  (*(**(*(this + 5) + 40) + 8))(*(*(this + 5) + 40));
  v9 = *(*(this + 5) + 40);
  getClassNameHelper(this);
  CCFaultReporter::registerCallbacks();
  *(*(this + 5) + 48) = 10;
  result = 1;
  *(*(this + 5) + 66) = 1;
  return result;
}

uint64_t AppleBCMWLANNetAdapter::collectImmediateFaultDataCallback(AppleBCMWLANCore ***this, CCFaultReport *a2)
{
  v4 = IOMallocZeroData();
  if (v4)
  {
    v5 = v4;
    AppleBCMWLANNetAdapter::dumpStats(this, v4, 0, 4095);
    v6 = OSString::withCString("NetManagerState.txt");
    v7 = OSString::withCString(v5);
    (*(*a2 + 192))(a2, v6, v7);
    IOFreeData();
  }

  return 0;
}

uint64_t AppleBCMWLANNetAdapter::induceFaultCallback(AppleBCMWLANNetAdapter *this, int a2, const char *a3)
{
  if (a2 == -528348669)
  {
    result = AppleBCMWLANCommander::runIOCtlSet(*(*(this + 5) + 8), 3, &kNoTxPayload, 0, 0);
    if (!result)
    {
      v6 = *(*(this + 5) + 8);

      return AppleBCMWLANCommander::runIOCtlSet(v6, 2, &kNoTxPayload, 0, 0);
    }
  }

  else if (a2 == -528348670)
  {
    v8 = 0;
    v4 = *(*(this + 5) + 8);
    v7[0] = &v8;
    v7[1] = 4;
    return AppleBCMWLANCommander::runIOVarSet(v4, "phy_forcecal", v7, 0, 0);
  }

  else
  {
    return 0;
  }

  return result;
}

void AppleBCMWLANNetAdapter::free(AppleBCMWLANNetAdapter *this)
{
  if (*(this + 5))
  {
    AppleBCMWLANNetAdapter::freeResources(this);
    v2 = *(this + 5);
    if (v2)
    {
      IOFree(v2, 0x48uLL);
      *(this + 5) = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANNetAdapter::freeResources(AppleBCMWLANNetAdapter *this)
{
  v2 = *(this + 5);
  v3 = *(v2 + 32);
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 5) + 32) = 0;
    v2 = *(this + 5);
  }

  result = *(v2 + 40);
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 5) + 40) = 0;
  }

  return result;
}

BOOL (__cdecl *AppleBCMWLANNetAdapter::stop(OSObject *this))(OSObject *__hidden this)
{
  result = this[1].init;
  if (result)
  {
    return CCFaultReporter::unregisterCallbacks(result, this);
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::configureShortRetryLimit(AppleBCMWLANNetAdapter *this, int a2)
{
  v9 = a2;
  v3 = (this + 40);
  v2 = *(this + 5);
  v8[0] = this;
  v8[1] = AppleBCMWLANNetAdapter::setShortRetryLimitAsyncCallback;
  v8[2] = 0;
  v4 = *(v2 + 8);
  v7[0] = &v9;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::sendIOCtlSet(v4, 32, v7, kNoRxExpected, v8, 0);
  if (v5 && (*v3)[4] && CCLogStream::shouldLog())
  {
    AppleBCMWLANNetAdapter::configureShortRetryLimit(v3);
  }

  return v5;
}

uint64_t AppleBCMWLANNetAdapter::setShortRetryLimitAsyncCallback(uint64_t result, uint64_t a2, int a3)
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
        return AppleBCMWLANNetAdapter::setShortRetryLimitAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::configureLongRetryLimit(AppleBCMWLANNetAdapter *this, int a2)
{
  v9 = a2;
  v3 = (this + 40);
  v2 = *(this + 5);
  v8[0] = this;
  v8[1] = AppleBCMWLANNetAdapter::setLongRetryLimitAsyncCallback;
  v8[2] = 0;
  v4 = *(v2 + 8);
  v7[0] = &v9;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::sendIOCtlSet(v4, 34, v7, kNoRxExpected, v8, 0);
  if (v5 && (*v3)[4] && CCLogStream::shouldLog())
  {
    AppleBCMWLANNetAdapter::configureLongRetryLimit(v3);
  }

  return v5;
}

uint64_t AppleBCMWLANNetAdapter::setLongRetryLimitAsyncCallback(uint64_t result, uint64_t a2, int a3)
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
        return AppleBCMWLANNetAdapter::setLongRetryLimitAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::configureRTSThreshold(AppleBCMWLANNetAdapter *this)
{
  v1 = (this + 40);
  v2 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 5) + 8), "rtsthresh");
  if (v2 && (*v1)[4] && CCLogStream::shouldLog())
  {
    AppleBCMWLANNetAdapter::configureRTSThreshold(v1);
  }

  return v2;
}

uint64_t AppleBCMWLANNetAdapter::setRTSThresholdAsyncCallback(uint64_t result, uint64_t a2, int a3)
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
        return AppleBCMWLANNetAdapter::setRTSThresholdAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::getFWHotChannels(uint64_t a1, uint64_t a2)
{
  bzero(v13, 0x5FAuLL);
  *(&v13[1] + 2) = 380;
  v12[0] = v13;
  v12[1] = 0x5F4000405FALL;
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = AppleBCMWLANCommander::runIOVarGet(*(v5 + 8), "roam_channels_in_hotlist", &kNoTxPayload, v12, 0);
  if (v6)
  {
    if ((*v4)[4] && CCLogStream::shouldLog())
    {
      AppleBCMWLANNetAdapter::getFWHotChannels(v4);
    }
  }

  else
  {
    v7 = v13[0];
    if (v13[0] >= 7u)
    {
      v7 = 7;
    }

    *(a2 + 16) = v7;
    if ((*v4)[4] && (shouldLog = CCLogStream::shouldLog(), v7 = *(a2 + 16), shouldLog))
    {
      CCLogStream::logAlert((*v4)[4], "[dk] %s@%d:getFWHotChannels %d\n", "getFWHotChannels", 256, *(a2 + 16));
      if (!*(a2 + 16))
      {
        return v6;
      }
    }

    else if (!v7)
    {
      return v6;
    }

    v9 = 0;
    do
    {
      ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(**v4);
      *(a2 + 2 * v9) = AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, LOWORD(v13[v9 + 1]));
      ++v9;
    }

    while (v9 < *(a2 + 16));
  }

  return v6;
}

uint64_t AppleBCMWLANNetAdapter::sendReassocCommand(AppleBCMWLANNetAdapter *this, void *a2, unsigned __int16 a3)
{
  v5 = (this + 40);
  v6 = *(*(this + 5) + 32);
  IO80211Hexdump();
  v7 = *v5;
  v16[0] = **v5;
  v16[1] = AppleBCMWLANCore::startRoamScanAsyncCallback;
  v16[2] = 0;
  v8 = v7[1];
  v9 = a3;
  if (a3)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0;
  }

  if (!a2)
  {
    v9 = 0;
  }

  v15[0] = v10;
  v15[1] = v9;
  v11 = a3;
  if (a3 <= 6u)
  {
    v11 = 6;
  }

  v14 = (v11 << 16) | 6;
  v12 = AppleBCMWLANCommander::sendIOCtlSet(v8, 53, v15, &v14, v16, 0);
  if (v12 && (*v5)[4] && CCLogStream::shouldLog())
  {
    AppleBCMWLANNetAdapter::sendReassocCommand(v5);
  }

  return v12;
}

uint64_t AppleBCMWLANNetAdapter::sendIOVReassocCommand(AppleBCMWLANNetAdapter *this, void *a2)
{
  v2 = (this + 40);
  v3 = *(*(this + 5) + 32);
  IO80211Hexdump();
  v6 = **v2;
  v4 = AppleBCMWLANCommander::sendIOVarSet((*v2)[1], "reassoc");
  if (v4 && (*v2)[4] && CCLogStream::shouldLog())
  {
    AppleBCMWLANNetAdapter::sendIOVReassocCommand(v2);
  }

  return v4;
}

uint64_t AppleBCMWLANNetAdapter::sendReassocCommandLegacy(AppleBCMWLANCore ***a1, unsigned __int16 *a2)
{
  v5 = *(a2 + 36);
  v4 = *(a2 + 37);
  if (v5 >= 7)
  {
    v6 = 7;
  }

  else
  {
    v6 = *(a2 + 36);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (v4 >= 7)
  {
    v7 = 7;
  }

  else
  {
    v7 = v4;
  }

  if (AppleBCMWLANCore::isAssociated(*a1[5]))
  {
    if (v5 < 2)
    {
      LODWORD(v10[0]) = *(a2 + 25);
      WORD2(v10[0]) = a2[52];
    }

    else
    {
      WORD3(v10[0]) = v6;
      memcpy(&v10[1] + 10, a2 + 50, 6 * (v6 - 1) + 6);
    }

    DWORD2(v10[0]) = v7;
    AppleBCMWLANNetAdapter::getChanspecArray(a1, a2, (v10 | 0xC), v7);
    return AppleBCMWLANNetAdapter::sendReassocCommand(a1, v10, 0x44u);
  }

  else
  {
    AppleBCMWLANNetAdapter::sendReassocCommandLegacy();
    return v9;
  }
}

uint64_t AppleBCMWLANNetAdapter::getChanspecArray(uint64_t a1, unsigned __int16 *a2, _WORD *a3, uint64_t a4)
{
  if (*(*(a1 + 40) + 32) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(a1 + 40) + 32), "[dk] %s@%d:number of channels = %d ", "getChanspecArray", 647, a4);
  }

  for (i = 0; a4; --a4)
  {
    ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(**(a1 + 40));
    *a3++ = AppleBCMWLANChanSpec::getBCMChannelSpec(ChanSpecHandler, *a2);
    v10 = *a2++;
    i = (1 << (v10 >> 14)) | i;
  }

  return i;
}

uint64_t AppleBCMWLANNetAdapter::sendReassocCommandV3(AppleBCMWLANCore ***a1, uint64_t a2)
{
  v5 = *(a2 + 144);
  v4 = *(a2 + 148);
  if (v5 >= 7)
  {
    v6 = 7;
  }

  else
  {
    v6 = v5;
  }

  if (v4 >= 0x32)
  {
    v7 = 50;
  }

  else
  {
    v7 = v4;
  }

  v8 = IOMallocZeroData();
  if (!v8)
  {
    return 3758097084;
  }

  v9 = v8;
  *v8 = 3;
  *(v8 + 8) = 3;
  *(v8 + 28) = v7;
  if (AppleBCMWLANCore::isAssociated(*a1[5]))
  {
    AppleBCMWLANNetAdapter::getChanspecArray(a1, a2, (v9 + 32), v7);
    if (v5 < 2)
    {
      *(v9 + 18) = 0;
      v14 = *(a2 + 100);
      *(v9 + 16) = *(a2 + 104);
      *(v9 + 12) = v14;
    }

    else
    {
      v10 = v9 + 32 + 2 * v7;
      *(v9 + 18) = v6;
      v11 = (a2 + 100);
      do
      {
        v12 = *v11;
        *(v10 + 4) = *(v11 + 2);
        *v10 = v12;
        v10 += 6;
        v11 = (v11 + 6);
        --v6;
      }

      while (v6);
    }

    if (*(a2 + 152))
    {
      *(v9 + 10) |= 4u;
    }

    else
    {
      *(v9 + 4) |= 4u;
    }

    *(v9 + 2) = 2 * *(v9 + 28) + 6 * *(v9 + 18) + 32;
    v13 = AppleBCMWLANNetAdapter::sendIOVReassocCommand(a1, v9);
  }

  else
  {
    AppleBCMWLANNetAdapter::sendReassocCommandV3();
    v13 = v16;
  }

  IOFreeData();
  return v13;
}

uint64_t AppleBCMWLANNetAdapter::sendReassocCommandV1(AppleBCMWLANCore ***a1, uint64_t a2)
{
  v5 = *(a2 + 144);
  v4 = *(a2 + 148);
  if (v5 >= 7)
  {
    v6 = 7;
  }

  else
  {
    v6 = v5;
  }

  if (v4 >= 0x32)
  {
    v7 = 50;
  }

  else
  {
    v7 = v4;
  }

  v8 = IOMallocZeroData();
  if (!v8)
  {
    return 3758097084;
  }

  v9 = v8;
  *v8 = 2;
  *(v8 + 8) = 1;
  *(v8 + 20) = v7;
  if (AppleBCMWLANCore::isAssociated(*a1[5]))
  {
    AppleBCMWLANNetAdapter::getChanspecArray(a1, a2, (v9 + 24), v7);
    if (v5 < 2)
    {
      *(v9 + 18) = 0;
      v14 = *(a2 + 100);
      *(v9 + 16) = *(a2 + 104);
      *(v9 + 12) = v14;
    }

    else
    {
      v10 = v9 + 24 + 2 * v7;
      *(v9 + 18) = v6;
      v11 = (a2 + 100);
      do
      {
        v12 = *v11;
        *(v10 + 4) = *(v11 + 2);
        *v10 = v12;
        v10 += 6;
        v11 = (v11 + 6);
        --v6;
      }

      while (v6);
    }

    if (*(a2 + 152))
    {
      *(v9 + 10) |= 4u;
    }

    else
    {
      *(v9 + 4) |= 4u;
    }

    *(v9 + 2) = 2 * *(v9 + 20) + 6 * *(v9 + 18) + 24;
    v13 = AppleBCMWLANNetAdapter::sendIOVReassocCommand(a1, v9);
  }

  else
  {
    AppleBCMWLANNetAdapter::sendReassocCommandV1();
    v13 = v16;
  }

  IOFreeData();
  return v13;
}

uint64_t AppleBCMWLANNetAdapter::configureWmeParams(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 40);
  if (*(v2 + 70) == 1)
  {
    *a2 |= 0x80u;
    v2 = *(a1 + 40);
  }

  v3 = *(v2 + 8);
  v5[0] = a2;
  v5[1] = 4;
  return AppleBCMWLANCommander::runIOVarSet(v3, "wme_ac_sta", v5, 0, 0);
}

uint64_t AppleBCMWLANNetAdapter::configureWmeParamsAsync(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 40);
  if (*(v2 + 70) == 1)
  {
    *a2 |= 0x80u;
    v2 = *(a1 + 40);
  }

  return AppleBCMWLANCommander::sendIOVarSet(*(v2 + 8), "wme_ac_sta");
}

uint64_t AppleBCMWLANNetAdapter::sendReassocCommand(AppleBCMWLANCore ***a1, unsigned __int16 *a2)
{
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*a1[5]) < 0x15)
  {
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*a1[5]) < 0x11)
    {

      return AppleBCMWLANNetAdapter::sendReassocCommandLegacy(a1, a2);
    }

    else
    {

      return AppleBCMWLANNetAdapter::sendReassocCommandV1(a1, a2);
    }
  }

  else
  {

    return AppleBCMWLANNetAdapter::sendReassocCommandV3(a1, a2);
  }
}

uint64_t AppleBCMWLANNetAdapter::setDefaultMode(AppleBCMWLANNetAdapter *this)
{
  v2 = (this + 40);
  *(*(this + 5) + 52) = 0;
  mach_continuous_time();
  v3 = *v2;
  absolutetime_to_nanoseconds();
  if (!AppleBCMWLANCore::isAssociated(**v2))
  {
    return 3766625283;
  }

  if ((*(*v2 + 70) & 1) == 0)
  {
    v4 = AppleBCMWLANNetAdapter::configureShortRetryLimit(this, 7);
    v5 = v4;
    if (v4 == -536870185 || v4 == -536870165)
    {
      return v5;
    }
  }

  v6 = AppleBCMWLANNetAdapter::configureLongRetryLimit(this, 6);
  v5 = v6;
  if (v6 == -536870185 || v6 == -536870165)
  {
    return v5;
  }

  if (!AppleBCMWLANCore::isAssociated(**v2))
  {
    return 3766625283;
  }

  v7 = AppleBCMWLANNetAdapter::configureRTSThreshold(this);
  v5 = v7;
  if (v7 == -536870185 || v7 == -536870165)
  {
    return v5;
  }

  if (!AppleBCMWLANCore::isAssociated(**v2))
  {
    return 3766625283;
  }

  v14 = *AppleBCMWLANCore::getWmeParams(**(this + 5), 3u);
  v8 = AppleBCMWLANNetAdapter::configureWmeParams(this, &v14);
  v9 = *(this + 5);
  if (!v8)
  {
    goto LABEL_18;
  }

  v5 = v8;
  if (v9[4] && CCLogStream::shouldLog())
  {
    AppleBCMWLANNetAdapter::setDefaultMode(v2);
  }

  if (v5 != -536870185 && v5 != -536870165)
  {
    v9 = *v2;
LABEL_18:
    v5 = 3766625283;
    if (AppleBCMWLANCore::isAssociated(*v9))
    {
      v14 = *AppleBCMWLANCore::getWmeParams(**(this + 5), 2u);
      v10 = AppleBCMWLANNetAdapter::configureWmeParams(this, &v14);
      if (v10)
      {
        v11 = v10;
        if ((*v2)[4] && CCLogStream::shouldLog())
        {
          AppleBCMWLANNetAdapter::setDefaultMode(v2);
        }

        if (v11 == -536870185 || v11 == -536870165)
        {
          return 3758097084;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANNetAdapter::setRealTimeMode(AppleBCMWLANNetAdapter *this)
{
  v14 = 0;
  mach_continuous_time();
  v3 = (this + 40);
  v2 = *(this + 5);
  absolutetime_to_nanoseconds();
  *(*(this + 5) + 52) = 1;
  if (!AppleBCMWLANCore::isAssociated(**(this + 5)))
  {
    return 3766625283;
  }

  v4 = AppleBCMWLANNetAdapter::configureLongRetryLimit(this, 12);
  v5 = v4;
  if (v4 == -536870185 || v4 == -536870165)
  {
    return v5;
  }

  if (!AppleBCMWLANCore::isAssociated(**v3))
  {
    return 3766625283;
  }

  v6 = *(AppleBCMWLANCore::getWmeParams(**v3, 2u) + 1);
  WmeParams = AppleBCMWLANCore::getWmeParams(**v3, 3u);
  v8 = *v3;
  if (*(*v3 + 12) <= *(WmeParams + 1) >> 4)
  {
    goto LABEL_14;
  }

  v14 = *AppleBCMWLANCore::getWmeParams(*v8, 3u);
  if (!AppleBCMWLANCore::isAssociated(**v3))
  {
    return 3766625283;
  }

  BYTE1(v14) = *(AppleBCMWLANCore::getWmeParams(**(this + 5), 3u) + 1) & 0xF | (16 * *(*(this + 5) + 48));
  v9 = AppleBCMWLANNetAdapter::configureWmeParams(this, &v14);
  v8 = *(this + 5);
  if (v9)
  {
    v5 = v9;
    if (v8[4] && CCLogStream::shouldLog())
    {
      AppleBCMWLANNetAdapter::setRealTimeMode(this + 5);
    }

    if (v5 == -536870185 || v5 == -536870165)
    {
      return v5;
    }

    v8 = *v3;
  }

LABEL_14:
  if (*(v8 + 12) <= v6 >> 4)
  {
    return 0;
  }

  v14 = *AppleBCMWLANCore::getWmeParams(*v8, 2u);
  v5 = 3766625283;
  if (!AppleBCMWLANCore::isAssociated(**v3))
  {
    return v5;
  }

  BYTE1(v14) = *(AppleBCMWLANCore::getWmeParams(**(this + 5), 2u) + 1) & 0xF | (16 * *(*(this + 5) + 48));
  v10 = AppleBCMWLANNetAdapter::configureWmeParams(this, &v14);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if ((*v3)[4] && CCLogStream::shouldLog())
  {
    AppleBCMWLANNetAdapter::setRealTimeMode(v3);
  }

  if (v11 == -536870185)
  {
    v12 = -536870185;
  }

  else
  {
    v12 = 0;
  }

  if (v11 == -536870165)
  {
    return 3758097131;
  }

  else
  {
    return v12;
  }
}

uint64_t *AppleBCMWLANNetAdapter::setDefaultWMEParamsSync(AppleBCMWLANNetAdapter *this)
{
  v4 = 0;
  v2 = (this + 40);
  *(*(this + 5) + 52) = 0;
  AppleBCMWLANNetAdapter::configureLongRetryLimit(this, 6);
  AppleBCMWLANNetAdapter::configureRTSThreshold(this);
  if ((*(*v2 + 70) & 1) == 0)
  {
    AppleBCMWLANNetAdapter::configureShortRetryLimit(this, 7);
    v4 = 41987;
    if (AppleBCMWLANNetAdapter::configureWmeParams(this, &v4))
    {
      if ((*v2)[4] && CCLogStream::shouldLog())
      {
        AppleBCMWLANNetAdapter::setDefaultWMEParamsSync(v2);
      }
    }
  }

  v4 = 3093090;
  if (AppleBCMWLANNetAdapter::configureWmeParams(this, &v4) && (*v2)[4] && CCLogStream::shouldLog())
  {
    AppleBCMWLANNetAdapter::setDefaultWMEParamsSync(v2);
  }

  v4 = 6177602;
  result = AppleBCMWLANNetAdapter::configureWmeParams(this, &v4);
  if (result)
  {
    result = (*v2)[4];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANNetAdapter::setDefaultWMEParamsSync(v2);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::setEnhancedDisassocParams(uint64_t a1, int a2, int a3, int a4)
{
  v8 = (a1 + 40);
  MaxCmdTxPayload = AppleBCMWLANCommander::getMaxCmdTxPayload(*(*(a1 + 40) + 8));
  MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload((*v8)[1]);
  v11 = (*v8)[1];
  if (MaxCmdTxPayload >= MaxCmdRxPayload)
  {
    AppleBCMWLANCommander::getMaxCmdRxPayload(v11);
  }

  else
  {
    AppleBCMWLANCommander::getMaxCmdTxPayload(v11);
  }

  result = IOMallocZeroData();
  if (result)
  {
    v13 = result;
    if (a2)
    {
      v14 = 6579297;
    }

    else
    {
      v14 = 7103844;
    }

    *result = v14;
    *(result + 4) = 0x20000000001;
    *(result + 12) = 385879005;
    *(result + 16) = -14;
    *(result + 17) = 67174922;
    *(result + 21) = a3;
    if (a4 == 10)
    {
      v16 = a1;
      v17 = AppleBCMWLANNetAdapter::setDisassocReasonAppleIEAsyncCallback;
      v18 = 0;
      if (AppleBCMWLANCommander::sendIOVarSet(*(*(a1 + 40) + 8), "vndr_ie") && (*v8)[4] && CCLogStream::shouldLog())
      {
        AppleBCMWLANNetAdapter::setEnhancedDisassocParams(v8);
      }
    }

    else if (a4 == 6)
    {
      v15 = (*v8)[1];
      v16 = v13;
      v17 = 28;
      if (AppleBCMWLANCommander::runIOVarSet(v15, "vndr_ie", &v16, 0, 0))
      {
        if ((*v8)[4])
        {
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNetAdapter::setEnhancedDisassocParams(v8);
          }
        }
      }
    }

    return IOFreeData();
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::setDisassocReasonAppleIEAsyncCallback(uint64_t result, uint64_t a2, int a3)
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
        return AppleBCMWLANNetAdapter::setDisassocReasonAppleIEAsyncCallback(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::getRSSIPerAntenna(AppleBCMWLANCore ***this, int32x4_t *a2)
{
  v3 = (this + 5);
  if (!AppleBCMWLANCore::isAssociated(*this[5]))
  {
    return 3766625283;
  }

  v10 = 0;
  v11 = 0;
  v9[0] = &v10;
  v9[1] = 0x1000100010;
  v4 = (*v3)[1];
  v8[0] = &v10;
  v8[1] = 16;
  v5 = AppleBCMWLANCommander::runIOVarGet(v4, "phy_rssi_ant", v8, v9, 0);
  if (v5)
  {
    if ((*v3)[4] && CCLogStream::shouldLog())
    {
      AppleBCMWLANNetAdapter::getRSSIPerAntenna(v3);
    }
  }

  else
  {
    v6.i32[0] = v11;
    *a2 = vmovl_s16(*&vmovl_s8(v6));
  }

  return v5;
}

uint64_t AppleBCMWLANNetAdapter::checkCcaStatsExtSupport(AppleBCMWLANCore ***this)
{
  v1 = (this + 5);
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*this[5]) >= 0x15)
  {
    v2 = 88;
  }

  else
  {
    v2 = 72;
  }

  v3 = IOMallocZeroData();
  v4 = *v1;
  if (v3)
  {
    v5 = v3;
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*v4) > 0x14)
    {
      memset(&__src[4], 0, 80);
      v11 = 0;
      *__src = 5767172;
      __src[4] = 1;
      *&__src[6] = 1;
      *&__src[12] = 69633;
    }

    else
    {
      memset(__src, 0, 72);
      *&__src[2] = 268501064;
      *&__src[6] = 1;
    }

    memcpy(v5, __src, v2);
    v9[0] = v5;
    v9[1] = v2 | (v2 << 32);
    v8[0] = v5;
    v8[1] = v2;
    v6 = AppleBCMWLANCommander::runIOVarGet(*(*v1 + 8), "cca_get_stats_ext", v8, v9, 0);
    if (v6 == -469794537 && *(*v1 + 32) && CCLogStream::shouldLog())
    {
      AppleBCMWLANNetAdapter::checkCcaStatsExtSupport(v1);
    }

    IOFreeData();
  }

  else
  {
    v6 = 3758097084;
    if (*(v4 + 32) && CCLogStream::shouldLog())
    {
      AppleBCMWLANNetAdapter::checkCcaStatsExtSupport(v1);
    }
  }

  return v6;
}

uint64_t AppleBCMWLANNetAdapter::checkRoamCacheQuerySupport(AppleBCMWLANNetAdapter *this)
{
  v12 = -21846;
  v2 = IOMallocZeroData();
  if (v2)
  {
    v10[0] = v2;
    v10[1] = 0x10000000100;
    v9[0] = &v11;
    v9[1] = 6;
    v11 = 1;
    v4 = *(this + 5);
    v3 = this + 40;
    v5 = AppleBCMWLANCommander::runIOVarGet(*(v4 + 8), "roam_cache", v9, v10, 0);
    if (v5 == -469794537 && *(*v3 + 32) && CCLogStream::shouldLog())
    {
      AppleBCMWLANNetAdapter::checkRoamCacheQuerySupport(v3);
    }

    IOFreeData();
  }

  else
  {
    v5 = 3758097084;
    v7 = *(this + 5);
    v6 = this + 40;
    if (*(v7 + 32) && CCLogStream::shouldLog())
    {
      AppleBCMWLANNetAdapter::checkRoamCacheQuerySupport(v6);
    }
  }

  return v5;
}

uint64_t AppleBCMWLANNetAdapter::handleRoam(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  if ((!*(*(a1 + 40) + 32) || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LQM = AppleBCMWLANCore::getLQM(**v3);
    isBssidUpdatePendingPostRoam = AppleBCMWLANLQM::isBssidUpdatePendingPostRoam(LQM);
    if (a2)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 1;
    }

    v15 = 67110402;
    v16 = 78;
    v17 = 2080;
    v18 = "handleRoam";
    v19 = 1024;
    v20 = 947;
    v21 = 2080;
    v22 = "handleRoam";
    v23 = 1024;
    v24 = isBssidUpdatePendingPostRoam;
    v25 = 1024;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: %s: BssidUpdatePostRoam=%u status:%u\n", &v15, 0x2Eu);
  }

  if (!(*v3)[4] || !CCLogStream::shouldLog())
  {
    if (a2)
    {
      goto LABEL_11;
    }

LABEL_30:
    v14 = AppleBCMWLANCore::getLQM(**v3);
    return AppleBCMWLANLQM::setPendingBssidUpdatePostRoam(v14, 0);
  }

  AppleBCMWLANNetAdapter::handleRoam(v3, a2);
  if (!a2)
  {
    goto LABEL_30;
  }

LABEL_11:
  v7 = *v3;
  if (*(a2 + 8))
  {
    v8 = AppleBCMWLANCore::getLQM(*v7);
    AppleBCMWLANLQM::setPendingBssidUpdatePostRoam(v8, 0);
    goto LABEL_13;
  }

  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(v7[3]);
  if ((!(*v3)[4] || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (CurrentBSS)
    {
      isFtEnabled = IO80211BSSBeacon::isFtEnabled(CurrentBSS);
    }

    else
    {
      isFtEnabled = 0;
    }

    v15 = 67110146;
    v16 = 78;
    v17 = 2080;
    v18 = "handleRoam";
    v19 = 1024;
    v20 = 952;
    v21 = 2080;
    v22 = "handleRoam";
    v23 = 1024;
    v24 = isFtEnabled;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: %s: isFBT:%u \n", &v15, 0x28u);
  }

  if ((*v3)[4] && CCLogStream::shouldLog())
  {
    AppleBCMWLANNetAdapter::handleRoam(v3);
    if (CurrentBSS)
    {
      goto LABEL_26;
    }
  }

  else if (CurrentBSS)
  {
LABEL_26:
    if (IO80211BSSBeacon::isFtEnabled(CurrentBSS))
    {
      v12 = AppleBCMWLANCore::getLQM(**v3);
      if (AppleBCMWLANLQM::isBssidUpdatePendingPostRoam(v12))
      {
        AppleBCMWLANCore::setBeaconListenInterval(**v3);
        v13 = AppleBCMWLANCore::getLQM(**v3);
        AppleBCMWLANLQM::retriggerAssocTimer(v13);
      }
    }
  }

LABEL_13:
  result = (*v3)[4];
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANNetAdapter::handleRoam(v3, (a2 + 8), a2);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_6_0(a1);
  LQM = AppleBCMWLANCore::getLQM(*v4);
  isBssidUpdatePendingPostRoam = AppleBCMWLANLQM::isBssidUpdatePendingPostRoam(LQM);
  if (a2)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 1;
  }

  return CCLogStream::logNotice(v2, "[dk] %s@%d:%s: BssidUpdatePostRoam=%u status:%u\n", "handleRoam", 947, "handleRoam", isBssidUpdatePendingPostRoam, v7);
}

uint64_t AppleBCMWLANNetAdapter::handleLink(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v4 = (a1 + 40);
  v3 = *(a1 + 40);
  if (*(v3 + 32))
  {
    v5 = *(v3 + 32);
    shouldLog = CCLogStream::shouldLog();
    v3 = *v4;
    if (shouldLog)
    {
      AppleBCMWLANNetAdapter::handleLink(v3, a2, v4, buf);
      v3 = *buf;
    }
  }

  JoinAdapter = AppleBCMWLANCore::getJoinAdapter(*v3);
  v8 = AppleBCMWLANJoinAdapter::configureDefaultUnAssocDwell(JoinAdapter);
  if (*(a2 + 8))
  {
    if ((!*(*v4 + 32) || (CCLogStream::shouldLogConsole() & 1) == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *&buf[4] = 87;
      v18 = 2080;
      v19 = "handleLink";
      v20 = 1024;
      v21 = 982;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d:      Link change event indicates failure\n", buf, 0x18u);
    }

    result = *(*v4 + 32);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANNetAdapter::handleLink(v4);
      }
    }
  }

  else
  {
    v13 = *(a2 + 2) & 1;
    v11 = *(a2 + 24);
    v12 = *(a2 + 28);
    Apple80211LinkReason = AppleBCMWLANNetAdapter::getApple80211LinkReason(v8, *(a2 + 12));
    v10 = (*(***v4 + 128))(**v4);
    v14 = (*(*v10 + 672))(v10);
    return AppleBCMWLANCore::postMessageInfra(**v4, 0xD8u, &v11, 0x10uLL);
  }

  return result;
}

uint64_t AppleBCMWLANNetAdapter::getApple80211LinkReason(AppleBCMWLANNetAdapter *this, int a2)
{
  if ((a2 - 1) >= 9)
  {
    return 255;
  }

  else
  {
    return (a2 - 1);
  }
}

uint64_t AppleBCMWLANNetAdapter::setLinkDown(uint64_t ***this)
{
  v1 = (this + 5);
  AppleBCMWLANCore::updateInactivityAndSleepCounters(*this[5], 2);
  isAssociated = AppleBCMWLANCore::isAssociated(**v1);
  v3 = *v1;
  if (isAssociated)
  {
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(v3[3]);
    (*(*CurrentBSS + 568))(CurrentBSS, "AppleBCMWLAN Left BSS(down):  ", "setLinkDown", 0, 0, 0);
    if (AppleBCMWLANCore::checkForScanCoreSupport(**v1) && (AppleBCMWLANCore::checkForLPSCDisable(**v1) & 1) == 0 && (IO80211BssManager::isAssociatedToAdhoc((*v1)[3]) & 1) == 0)
    {
      memset(v11, 0, 44);
      AppleBCMWLANCore::collectBeaconRxCounters(**v1, v11, 1);
      AppleBCMWLANCore::collectSCTxBlankingSummary(**v1);
      AppleBCMWLANCore::dumpCurTxDCSummary(**v1);
      AppleBCMWLANCore::collectTxDCSlice0Ant0Summary(**v1);
      AppleBCMWLANCore::collectTxDCSlice1Ant0Summary(**v1);
      AppleBCMWLANCore::collectDynSARPerSliceSummary(**v1, 0);
      AppleBCMWLANCore::collectDynSARPerSliceSummary(**v1, 1u);
    }

    AppleBCMWLANBssManager::setCurrentBSS((*v1)[3], 0);
    TxPowerManager = AppleBCMWLANCore::getTxPowerManager(**v1);
    AppleBCMWLANTxPowerManager::dynTxSDBStopUpdate(TxPowerManager, 1);
    LQM = AppleBCMWLANCore::getLQM(**v1);
    AppleBCMWLANLQM::resetLinkQualityMetrics(LQM, -2);
    AppleBCMWLANCore::clearPmk(**v1);
    AppleBCMWLANCore::linkChangeEvent(**v1, 0, 0);
    AppleBCMWLANCore::isScanResumeAllowed(**v1);
    AppleBCMWLANCore::sendHostScanStatsCoreAnalytics(**v1);
    AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(**v1);
    if (AppleBCMWLANCore::checkForTrafficEngineeringSupport(**v1))
    {
      AppleBCMWLANCore::setupTrafficMonitoring(**v1, 0);
    }

    AppleBCMWLANCore::handleLinkDown(**v1);
    v7 = AppleBCMWLANCore::getLQM(**v1);
    AppleBCMWLANLQM::stopAssocTimer(v7);
    v8 = AppleBCMWLANCore::getLQM(**v1);
    AppleBCMWLANLQM::updateNumOfMloLinks(v8, 0);
    AppleBCMWLANCore::resetWoWConfig(**v1);
    return 0;
  }

  else
  {
    v9 = 3766625283;
    if (v3[4] && CCLogStream::shouldLog())
    {
      AppleBCMWLANNetAdapter::setLinkDown(v1);
    }
  }

  return v9;
}

uint64_t AppleBCMWLANNetAdapter::getBssInfo(uint64_t a1, uint64_t a2)
{
  v2 = 3758097084;
  if (a2)
  {
    v5 = IOMallocZeroData();
    if (v5)
    {
      v6 = v5;
      *v5 = 1936;
      v14[0] = v5;
      v14[1] = 0x79000880790;
      v8 = *(a1 + 40);
      v7 = (a1 + 40);
      v9 = *(v8 + 8);
      v13[0] = v6;
      v13[1] = 4;
      v10 = AppleBCMWLANCommander::runIOCtlGet(v9, 136, v13, v14, 0);
      if (v10)
      {
        v2 = v10;
        if ((*v7)[4] && CCLogStream::shouldLog())
        {
          AppleBCMWLANNetAdapter::getBssInfo(v7);
        }
      }

      else
      {
        ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(**v7);
        LOWORD(v13[0]) = AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, *(v6 + 38));
        v2 = (*(a2 + 16))(a2, v6 + 1, v13);
      }

      IOFreeData();
    }

    else
    {
      return 3758097085;
    }
  }

  return v2;
}

uint64_t ___ZN22AppleBCMWLANNetAdapter9setLinkUpER10ether_addrbb_block_invoke(uint64_t a1, unsigned int *a2, __int16 *a3)
{
  v5 = *a3;
  v6 = a2[1];
  v7 = *(*(a1 + 40) + 40);
  v8 = v7[4];
  v9 = (*(**v7 + 1944))(*v7);
  *(*(*(a1 + 32) + 8) + 24) = AppleBCMWLANBSSBeacon::fromWLBSSInfo(a2, v5, v6, v8, v9);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return 0;
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANNetAdapter::updateMCSSetAsync(AppleBCMWLANNetAdapter *this)
{
  v2 = (this + 40);
  v1 = *(this + 5);
  if (*(v1 + 66) != 1)
  {
    return 3825172759;
  }

  v8[0] = this;
  v8[1] = AppleBCMWLANNetAdapter::updateMCSSetAsyncCallback;
  v8[2] = 0;
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*v1) >= 7)
  {
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(**v2) >= 0xF)
    {
      v3 = 5767256;
    }

    else
    {
      v3 = 4718664;
    }
  }

  else
  {
    v3 = 3407924;
  }

  v5 = (*v2)[1];
  v7 = v3;
  v4 = AppleBCMWLANCommander::sendIOVarGet(v5, "cur_rateset", &kNoTxPayload, &v7, v8, 0);
  if (v4 && (*v2)[4] && CCLogStream::shouldLog())
  {
    AppleBCMWLANNetAdapter::updateMCSSetAsync(v2);
  }

  return v4;
}

uint64_t AppleBCMWLANNetAdapter::updateRateSetAsync(AppleBCMWLANNetAdapter *this)
{
  v6[0] = this;
  v6[1] = AppleBCMWLANNetAdapter::updateRateSetAsyncCallback;
  v6[2] = 0;
  v1 = (this + 40);
  v2 = *(*(this + 5) + 8);
  v5 = 1310740;
  v3 = AppleBCMWLANCommander::sendIOCtlGet(v2, 114, &kNoTxPayload, &v5, v6, 0);
  if (v3 && (*v1)[4] && CCLogStream::shouldLog())
  {
    AppleBCMWLANNetAdapter::updateRateSetAsync(v1);
  }

  return v3;
}

uint64_t AppleBCMWLANNetAdapter::configureAggressiveEDCA(AppleBCMWLANCore ***this, int a2)
{
  v20 = 0;
  v19 = 41987;
  v4 = (this + 5);
  v5 = AppleBCMWLANCore::is4388Up(*this[5]);
  v6 = *v4;
  if (!v5)
  {
    goto LABEL_28;
  }

  (*(**v6 + 1008))(*v6, 0, &v20);
  v6 = *v4;
  if (*(*v4 + 32))
  {
    shouldLog = CCLogStream::shouldLog();
    v6 = *v4;
    if (shouldLog)
    {
      CCLogStream::logAlert(v6[4], "[dk] %s@%d: Aggressive EDCA eligible: %u. Country code: %.2s\n", "configureAggressiveEDCA", 1707, a2, &v20 + 4);
      v6 = *v4;
    }
  }

  v9 = BYTE4(v20) != 67 || BYTE5(v20) != 78;
  if (*(v6 + 70) == 1 && v9)
  {
    if (v6[4])
    {
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNetAdapter::configureAggressiveEDCA(v4);
      }
    }

    LOBYTE(a2) = 0;
    v12 = 7;
LABEL_26:
    AppleBCMWLANNetAdapter::configureShortRetryLimit(this, v12);
    v6 = this[5];
LABEL_27:
    result = 0;
    *(v6 + 70) = a2;
    return result;
  }

  if (v9)
  {
LABEL_28:
    LOBYTE(a2) = 0;
    goto LABEL_27;
  }

  if (a2)
  {
    if (AppleBCMWLANCore::getCurrentSlice(*v6))
    {
      v11 = -127;
    }

    else
    {
      v11 = -126;
    }

    LOBYTE(v19) = v11;
    BYTE1(v19) = 50;
    HIWORD(v19) = 0;
    v6 = *v4;
    v12 = 15;
  }

  else
  {
    v12 = 7;
  }

  if (v6[4])
  {
    v13 = CCLogStream::shouldLog();
    v6 = *v4;
    if (v13)
    {
      if (a2)
      {
        v17 = "Boosting";
      }

      else
      {
        v17 = "Restoring";
      }

      CCLogStream::logAlert(v6[4], "[dk] %s@%d: %s BE traffic\n", "configureAggressiveEDCA", 1724, v17);
      v6 = *v4;
    }
  }

  v14 = v6[1];
  v18[0] = &v19;
  v18[1] = 4;
  v15 = AppleBCMWLANCommander::runIOVarSet(v14, "wme_ac_sta", v18, 0, 0);
  if (!v15)
  {
    goto LABEL_26;
  }

  AppleBCMWLANNetAdapter::configureAggressiveEDCA(v4, v15, v18);
  return LODWORD(v18[0]);
}