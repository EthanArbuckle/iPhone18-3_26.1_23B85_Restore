uint64_t AppleBCMWLANIOReportingPerSlice::reportWlCntPerSlice(AppleBCMWLANIOReporting *a1, OSData *a2, uint64_t (*a3)(void), unsigned __int16 **a4, int a5)
{
  v19 = 0;
  if (a5 <= a3)
  {
    AppleBCMWLANIOReportingPerSlice::reportWlCntPerSlice(a1);
    return v20;
  }

  else if (a3 <= 1)
  {
    v11 = AppleBCMWLANIOReportingPerSlice::reportWlCntSliceCounters(a1, a2, a3);
    if (v11)
    {
      v12 = v11;
      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
      v14 = IOService::StringFromReturn(CurrentBSS, v12, &v19, 0);
      CStringNoCopy = 0;
      if (!v14)
      {
        CStringNoCopy = OSString::getCStringNoCopy(v19);
      }

      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANIOReporting::getLogger(a1);
          CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to report slice counters - reason %s\n", "reportWlCntPerSlice", 1114, CStringNoCopy);
        }
      }

      if (v19)
      {
        (v19->release)(v19);
        v19 = 0;
      }
    }

    else
    {
      CStringNoCopy = 0;
    }

    v7 = AppleBCMWLANIOReportingPerSlice::reportWlCntSliceFrameCounters(a1, a2, a3, a4);
    if (v7)
    {
      v16 = AppleBCMWLANBssManager::getCurrentBSS(a1);
      if (!IOService::StringFromReturn(v16, v7, &v19, 0))
      {
        CStringNoCopy = OSString::getCStringNoCopy(v19);
      }

      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v18 = AppleBCMWLANIOReporting::getLogger(a1);
          CCLogStream::logAlert(v18, "[dk] %s@%d:Failed to report slice frame counters - reason %s\n", "reportWlCntPerSlice", 1129, CStringNoCopy);
        }
      }

      if (v19)
      {
        (v19->release)(v19);
      }
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportWlCntSliceFrameCounters(AppleBCMWLANIOReporting *a1, OSData *a2, uint64_t a3, unsigned __int16 **a4)
{
  v49[0] = 0;
  v8 = a3;
  if ((*(*(a1 + 7) + a3 + 37) & 1) == 0)
  {
    if (AppleBCMWLANIOReportingPerSlice::initWlCntSliceFrameReporter(a1, a3))
    {
      AppleBCMWLANIOReportingPerSlice::reportWlCntSliceFrameCounters(a1);
      return v49[1];
    }

    *(*(a1 + 7) + v8 + 37) = 1;
  }

  for (i = 0; i != 160; i += 16)
  {
    v10 = *(a1 + 7) + 8 * v8;
    v11 = *(v10 + 440);
    v12 = *(v10 + 168) + i;
    v13 = *v12;
    CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, *(v12 + 8));
    v49[0] = IOSimpleReporter::setValue(v11, v13, CounterValueSafe);
  }

  for (j = 0; j != 160; j += 16)
  {
    v16 = *(a1 + 7) + 8 * v8;
    v17 = *(v16 + 456);
    v18 = *(v16 + 184) + j;
    v19 = *v18;
    v20 = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, *(v18 + 8));
    v49[0] = IOSimpleReporter::setValue(v17, v19, v20);
  }

  if (AppleBCMWLANCore::checkFor6GSupportCardCapability(*(*(a1 + 7) + 1504)))
  {
    v21 = *(a1 + 7) + 8 * v8;
    v22 = *(v21 + 456);
    v23 = *(v21 + 184);
    v24 = *(v23 + 176);
    v25 = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, *(v23 + 184));
    IOSimpleReporter::setValue(v22, v24, v25);
  }

  v26 = *(*(a1 + 7) + 8 * v8 + 472);
  v27 = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x258uLL);
  IOSimpleReporter::setValue(v26, (a3 << 56) ^ 0x536C547842415220, v27);
  v28 = *(*(a1 + 7) + 8 * v8 + 472);
  v29 = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x2E0uLL);
  IOSimpleReporter::setValue(v28, (a3 << 56) ^ 0x536C547820424120, v29);
  v30 = *(*(a1 + 7) + 8 * v8 + 472);
  v31 = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x260uLL);
  IOSimpleReporter::setValue(v30, (a3 << 56) ^ 0x536C54785053506FLL, v31);
  v32 = *(*(a1 + 7) + 8 * v8 + 472);
  v33 = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0xD8uLL);
  IOSimpleReporter::setValue(v32, (a3 << 56) ^ 0x536C547852545320, v33);
  v34 = *(*(a1 + 7) + 8 * v8 + 488);
  v35 = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x25CuLL);
  IOSimpleReporter::setValue(v34, (a3 << 56) ^ 0x536C527842415220, v35);
  v36 = *(*(a1 + 7) + 8 * v8 + 488);
  v37 = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x2DCuLL);
  IOSimpleReporter::setValue(v36, (a3 << 56) ^ 0x536C527820424120, v37);
  v38 = *(*(a1 + 7) + 8 * v8 + 488);
  v39 = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x264uLL);
  IOSimpleReporter::setValue(v38, (a3 << 56) ^ 0x536C52785053506FLL, v39);
  v40 = *(*(a1 + 7) + 8 * v8 + 504);
  v41 = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x268uLL);
  IOSimpleReporter::setValue(v40, (a3 << 56) ^ 0x536C5478444E554CLL, v41);
  v42 = *(*(a1 + 7) + 8 * v8 + 504);
  v43 = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x270uLL);
  IOSimpleReporter::setValue(v42, (a3 << 56) ^ 0x536C547844514F53, v43);
  v44 = *(*(a1 + 7) + 8 * v8 + 520);
  v45 = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x26CuLL);
  IOSimpleReporter::setValue(v44, (a3 << 56) ^ 0x536C5278444E554CLL, v45);
  v46 = *(*(a1 + 7) + 8 * v8 + 520);
  v47 = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x274uLL);
  IOSimpleReporter::setValue(v46, (a3 << 56) ^ 0x536C527844514F53, v47);
  if (a4)
  {
    a4[122] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x278uLL);
    a4[123] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x290uLL);
    a4[124] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x280uLL);
    a4[125] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x298uLL);
    a4[126] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x2B0uLL);
    a4[127] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x2B8uLL);
    a4[130] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x288uLL);
    a4[131] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x2A0uLL);
    a4[132] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x2A8uLL);
    a4[133] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x2C0uLL);
    a4[106] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x27CuLL);
    a4[107] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x294uLL);
    a4[108] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x284uLL);
    a4[109] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x29CuLL);
    a4[110] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x2B4uLL);
    a4[111] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x2BCuLL);
    if (AppleBCMWLANCore::checkFor6GSupportCardCapability(*(*(a1 + 7) + 1504)))
    {
      a4[118] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x35CuLL);
    }

    a4[114] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x28CuLL);
    a4[115] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x2A4uLL);
    a4[116] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x2ACuLL);
    a4[117] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x2C4uLL);
    a4[22] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x258uLL);
    a4[23] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x2E0uLL);
    a4[24] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x260uLL);
    a4[25] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0xD8uLL);
    *a4 = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x25CuLL);
    a4[1] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x2DCuLL);
    a4[2] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x264uLL);
    a4[79] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x268uLL);
    a4[86] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x270uLL);
    a4[48] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x26CuLL);
    a4[55] = AppleBCMWLANUtil::getCounterValueSafe(v49, 4uLL, a2, 0x274uLL);
  }

  return v49[0];
}

uint64_t AppleBCMWLANIOReportingPerSlice::initWlCntSliceFrameReporter(AppleBCMWLANIOReporting *a1, uint64_t a2)
{
  v4 = IOMallocZeroData();
  if (v4)
  {
    v5 = v4;
    snprintf(v4, 0x32uLL, "%s %d", "Slice Frames: slice ", a2);
    v6 = *(a1 + 7);
    v7 = a2;
    if ((*(v6 + a2 + 43) & 1) == 0)
    {
      if (AppleBCMWLANIOReportingPerSlice::initTxMngReporter(a1, a2))
      {
        AppleBCMWLANIOReportingPerSlice::initWlCntSliceFrameReporter(a1);
        goto LABEL_33;
      }

      *(*(a1 + 7) + a2 + 43) = 1;
      v6 = *(a1 + 7);
    }

    if (*(v6 + a2 + 45))
    {
      goto LABEL_8;
    }

    if (!AppleBCMWLANIOReportingPerSlice::initRxMngReporter(a1, a2))
    {
      *(*(a1 + 7) + a2 + 45) = 1;
      v6 = *(a1 + 7);
LABEL_8:
      if (*(v6 + 8 * a2 + 472))
      {
        v8 = 0;
      }

      else
      {
        CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
        ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
        *(*(a1 + 7) + 8 * a2 + 472) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v11);
        if (!*(*(a1 + 7) + 8 * a2 + 472))
        {
          goto LABEL_30;
        }

        Reporter = AppleBCMWLANIOReporting::getReporter(a1);
        OSSet::setObject(Reporter, *(*(a1 + 7) + 8 * a2 + 472));
        v13 = *(*(a1 + 7) + 8 * a2 + 472);
        (*(*v13 + 16))(v13);
        v14 = &off_1003C6160;
        v15 = 4;
        do
        {
          IOReporter::addChannel(*(*(a1 + 7) + 8 * a2 + 472), *(v14 - 1) ^ (a2 << 56), *v14);
          v14 += 2;
          --v15;
        }

        while (v15);
        AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
        Target = AppleBCMWLANIOReporting::getTarget(a1);
        v18 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v8 = AddReporterCallback(Target, v18, *(*(a1 + 7) + 8 * a2 + 472), v5, "Tx Control Frame Counters");
        v6 = *(a1 + 7);
      }

      if (*(v6 + 8 * a2 + 488))
      {
LABEL_22:
        if (*(v6 + 8 * a2 + 504))
        {
LABEL_25:
          if (!*(v6 + 8 * a2 + 520))
          {
            v37 = AppleBCMWLANBssManager::getCurrentBSS(a1);
            v38 = IO80211Controller::getReporterProvider(v37);
            *(*(a1 + 7) + 8 * a2 + 520) = IOSimpleReporter::with(v38, 0x8010, 0, v39);
            v8 = 3758097084;
            if (*(*(a1 + 7) + 8 * a2 + 520))
            {
              v40 = AppleBCMWLANIOReporting::getReporter(a1);
              OSSet::setObject(v40, *(*(a1 + 7) + 8 * a2 + 520));
              v41 = *(*(a1 + 7) + 8 * a2 + 520);
              (*(*v41 + 16))(v41);
              IOReporter::addChannel(*(*(a1 + 7) + 8 * a2 + 520), (a2 << 56) ^ 0x536C5278444E554CLL, "Rx NULL");
              IOReporter::addChannel(*(*(a1 + 7) + 8 * a2 + 520), (a2 << 56) ^ 0x536C527844514F53, "Rx QOS NULL");
              v42 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
              v43 = AppleBCMWLANIOReporting::getTarget(a1);
              v44 = AppleBCMWLANBssManager::getCurrentBSS(a1);
              v8 = v42(v43, v44, *(*(a1 + 7) + 8 * v7 + 520), v5, "Rx Data Frame Counters");
            }
          }

          goto LABEL_28;
        }

        v29 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v30 = IO80211Controller::getReporterProvider(v29);
        *(*(a1 + 7) + 8 * a2 + 504) = IOSimpleReporter::with(v30, 0x8010, 0, v31);
        if (*(*(a1 + 7) + 8 * a2 + 504))
        {
          v32 = AppleBCMWLANIOReporting::getReporter(a1);
          OSSet::setObject(v32, *(*(a1 + 7) + 8 * a2 + 504));
          v33 = *(*(a1 + 7) + 8 * a2 + 504);
          (*(*v33 + 16))(v33);
          IOReporter::addChannel(*(*(a1 + 7) + 8 * a2 + 504), (a2 << 56) ^ 0x536C5478444E554CLL, "Tx NULL");
          IOReporter::addChannel(*(*(a1 + 7) + 8 * a2 + 504), (a2 << 56) ^ 0x536C547844514F53, "Tx QOS NULL");
          v34 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
          v35 = AppleBCMWLANIOReporting::getTarget(a1);
          v36 = AppleBCMWLANBssManager::getCurrentBSS(a1);
          v8 = v34(v35, v36, *(*(a1 + 7) + 8 * a2 + 504), v5, "Tx Data Frame Counters");
          v6 = *(a1 + 7);
          goto LABEL_25;
        }

        goto LABEL_30;
      }

      v19 = AppleBCMWLANBssManager::getCurrentBSS(a1);
      v20 = IO80211Controller::getReporterProvider(v19);
      *(*(a1 + 7) + 8 * a2 + 488) = IOSimpleReporter::with(v20, 0x8010, 0, v21);
      if (*(*(a1 + 7) + 8 * a2 + 488))
      {
        v22 = AppleBCMWLANIOReporting::getReporter(a1);
        OSSet::setObject(v22, *(*(a1 + 7) + 8 * a2 + 488));
        v23 = *(*(a1 + 7) + 8 * a2 + 488);
        (*(*v23 + 16))(v23);
        v24 = &off_1003C61A0;
        v25 = 3;
        do
        {
          IOReporter::addChannel(*(*(a1 + 7) + 8 * a2 + 488), *(v24 - 1) ^ (a2 << 56), *v24);
          v24 += 2;
          --v25;
        }

        while (v25);
        v26 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
        v27 = AppleBCMWLANIOReporting::getTarget(a1);
        v28 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v8 = v26(v27, v28, *(*(a1 + 7) + 8 * a2 + 488), v5, "Rx Control Frame Counters");
        v6 = *(a1 + 7);
        goto LABEL_22;
      }

LABEL_30:
      v8 = 3758097084;
LABEL_28:
      IOFreeData();
      return v8;
    }

    AppleBCMWLANIOReportingPerSlice::initWlCntSliceFrameReporter(a1);
LABEL_33:
    v8 = v46;
    goto LABEL_28;
  }

  v8 = 3758097084;
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::initWlCntSliceFrameReporter(a1);
    }
  }

  return v8;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initWlCntReporter(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = 3758097084;
  v5 = IOMallocZeroData();
  if (v5)
  {
    v6 = v5;
    if (a2 <= 1)
    {
      snprintf(v5, 0x32uLL, "%s %d", "Slice", a2);
      v8 = a1 + 7;
      v7 = a1[7];
      if (*(v7 + 8 * a2 + 296))
      {
        v9 = 0;
      }

      else
      {
        CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
        ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
        *(a1[7] + 8 * a2 + 296) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v12);
        if (!*(a1[7] + 8 * a2 + 296))
        {
          goto LABEL_77;
        }

        Reporter = AppleBCMWLANIOReporting::getReporter(a1);
        OSSet::setObject(Reporter, *(a1[7] + 8 * a2 + 296));
        v14 = *(a1[7] + 8 * a2 + 296);
        (*(*v14 + 16))(v14);
        IOReporter::addChannel(*(a1[7] + 8 * a2 + 296), (a2 << 56) ^ 0x536C5478436E4279, "Tx Bytes");
        IOReporter::addChannel(*(a1[7] + 8 * a2 + 296), (a2 << 56) ^ 0x536C5278436E4279, "Rx Bytes");
        AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
        Target = AppleBCMWLANIOReporting::getTarget(a1);
        v17 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v9 = AddReporterCallback(Target, v17, *(a1[7] + 8 * a2 + 296), v6, "Bytes Transferred");
        v7 = a1[7];
      }

      if (!*(v7 + 8 * a2 + 312))
      {
        v18 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v19 = IO80211Controller::getReporterProvider(v18);
        *(a1[7] + 8 * a2 + 312) = IOSimpleReporter::with(v19, 0x8010, 0, v20);
        if (!*(a1[7] + 8 * a2 + 312))
        {
          goto LABEL_77;
        }

        v21 = AppleBCMWLANIOReporting::getReporter(a1);
        OSSet::setObject(v21, *(a1[7] + 8 * a2 + 312));
        v22 = *(a1[7] + 8 * a2 + 312);
        (*(*v22 + 16))(v22);
        v23 = &off_1003C61D0;
        v24 = 11;
        do
        {
          IOReporter::addChannel(*(*v8 + 8 * a2 + 312), *(v23 - 1) ^ (a2 << 56), *v23);
          v23 += 2;
          --v24;
        }

        while (v24);
        v25 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
        v26 = AppleBCMWLANIOReporting::getTarget(a1);
        v27 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v9 = v25(v26, v27, *(a1[7] + 8 * a2 + 312), v6, "Tx Counters");
        v7 = a1[7];
      }

      if (!*(v7 + 8 * a2 + 200))
      {
        *(*v8 + 8 * a2 + 200) = IOMallocZeroData();
        if (!*(*v8 + 8 * a2 + 200))
        {
          AppleBCMWLANIOReportingPerSlice::initWlCntReporter(a1);
          goto LABEL_86;
        }

        for (i = 0; i != 22; i += 2)
        {
          *(*(*v8 + 8 * a2 + 200) + i * 8) = kSliceCountersTxReport[i] ^ (a2 << 56);
        }

        *(*(*v8 + 8 * a2 + 200) + 8) = 0;
        *(*(*v8 + 8 * a2 + 200) + 24) = 8;
        *(*(*v8 + 8 * a2 + 200) + 40) = 12;
        *(*(*v8 + 8 * a2 + 200) + 56) = 36;
        *(*(*v8 + 8 * a2 + 200) + 72) = 16;
        *(*(*v8 + 8 * a2 + 200) + 88) = 24;
        *(*(*v8 + 8 * a2 + 200) + 104) = 28;
        *(*(*v8 + 8 * a2 + 200) + 120) = 20;
        *(*(*v8 + 8 * a2 + 200) + 136) = 32;
        *(*(*v8 + 8 * a2 + 200) + 152) = 40;
        *(*(*v8 + 8 * a2 + 200) + 168) = 44;
        v7 = *v8;
      }

      if (!*(v7 + 8 * a2 + 328))
      {
        v29 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v30 = IO80211Controller::getReporterProvider(v29);
        *(a1[7] + 8 * a2 + 328) = IOSimpleReporter::with(v30, 0x8010, 0, v31);
        if (!*(a1[7] + 8 * a2 + 328))
        {
          goto LABEL_77;
        }

        v32 = AppleBCMWLANIOReporting::getReporter(a1);
        OSSet::setObject(v32, *(a1[7] + 8 * a2 + 328));
        v33 = *(a1[7] + 8 * a2 + 328);
        (*(*v33 + 16))(v33);
        v34 = &off_1003C6280;
        v35 = 16;
        do
        {
          IOReporter::addChannel(*(*v8 + 8 * a2 + 328), *(v34 - 1) ^ (a2 << 56), *v34);
          v34 += 2;
          --v35;
        }

        while (v35);
        v36 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
        v37 = AppleBCMWLANIOReporting::getTarget(a1);
        v38 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v9 = v36(v37, v38, *(a1[7] + 8 * a2 + 328), v6, "Rx Counters");
        v7 = a1[7];
      }

      if (!*(v7 + 8 * a2 + 216))
      {
        *(*v8 + 8 * a2 + 216) = IOMallocZeroData();
        if (!*(*v8 + 8 * a2 + 216))
        {
          AppleBCMWLANIOReportingPerSlice::initWlCntReporter(a1);
          goto LABEL_86;
        }

        for (j = 0; j != 32; j += 2)
        {
          *(*(*v8 + 8 * a2 + 216) + j * 8) = kSliceCountersRxReport[j] ^ (a2 << 56);
        }

        *(*(*v8 + 8 * a2 + 216) + 8) = 60;
        *(*(*v8 + 8 * a2 + 216) + 24) = 68;
        *(*(*v8 + 8 * a2 + 216) + 56) = 76;
        *(*(*v8 + 8 * a2 + 216) + 136) = 92;
        *(*(*v8 + 8 * a2 + 216) + 152) = 96;
        *(*(*v8 + 8 * a2 + 216) + 40) = 72;
        *(*(*v8 + 8 * a2 + 216) + 88) = 80;
        *(*(*v8 + 8 * a2 + 216) + 104) = 84;
        *(*(*v8 + 8 * a2 + 216) + 120) = 88;
        *(*(*v8 + 8 * a2 + 216) + 168) = 100;
        *(*(*v8 + 8 * a2 + 216) + 184) = 104;
        *(*(*v8 + 8 * a2 + 216) + 200) = 108;
        *(*(*v8 + 8 * a2 + 216) + 216) = 112;
        *(*(*v8 + 8 * a2 + 216) + 232) = 116;
        *(*(*v8 + 8 * a2 + 216) + 248) = 120;
        *(*(*v8 + 8 * a2 + 216) + 72) = 592;
        v7 = *v8;
      }

      if (!*(v7 + 8 * a2 + 344))
      {
        v40 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v41 = IO80211Controller::getReporterProvider(v40);
        *(a1[7] + 8 * a2 + 344) = IOSimpleReporter::with(v41, 0x8010, 0, v42);
        if (!*(a1[7] + 8 * a2 + 344))
        {
          goto LABEL_77;
        }

        v43 = AppleBCMWLANIOReporting::getReporter(a1);
        OSSet::setObject(v43, *(a1[7] + 8 * a2 + 344));
        v44 = *(a1[7] + 8 * a2 + 344);
        (*(*v44 + 16))(v44);
        IOReporter::addChannel(*(a1[7] + 8 * a2 + 344), (a2 << 56) ^ 0x536C527850684469, "Rx RF Disabled");
        v45 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
        v46 = AppleBCMWLANIOReporting::getTarget(a1);
        v47 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v9 = v45(v46, v47, *(a1[7] + 8 * a2 + 344), v6, "Rx Phy Error Counters");
        v7 = a1[7];
      }

      if (!*(v7 + 8 * a2 + 360))
      {
        v48 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v49 = IO80211Controller::getReporterProvider(v48);
        *(a1[7] + 8 * a2 + 360) = IOSimpleReporter::with(v49, 0x8010, 0, v50);
        if (!*(a1[7] + 8 * a2 + 360))
        {
          goto LABEL_77;
        }

        v51 = AppleBCMWLANIOReporting::getReporter(a1);
        OSSet::setObject(v51, *(a1[7] + 8 * a2 + 360));
        v52 = *(a1[7] + 8 * a2 + 360);
        (*(*v52 + 16))(v52);
        v53 = &off_1003C6380;
        v54 = 8;
        do
        {
          IOReporter::addChannel(*(*v8 + 8 * a2 + 360), *(v53 - 1) ^ (a2 << 56), *v53);
          v53 += 2;
          --v54;
        }

        while (v54);
        v55 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
        v56 = AppleBCMWLANIOReporting::getTarget(a1);
        v57 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v9 = v55(v56, v57, *(a1[7] + 8 * a2 + 360), v6, "Tx Error Counters");
        v7 = a1[7];
      }

      if (!*(v7 + 8 * a2 + 232))
      {
        *(*v8 + 8 * a2 + 232) = IOMallocZeroData();
        if (!*(*v8 + 8 * a2 + 232))
        {
          AppleBCMWLANIOReportingPerSlice::initWlCntReporter(a1);
          goto LABEL_86;
        }

        for (k = 0; k != 16; k += 2)
        {
          *(*(*v8 + 8 * a2 + 232) + k * 8) = kSliceCountersTxErrorReport[k] ^ (a2 << 56);
        }

        *(*(*v8 + 8 * a2 + 232) + 8) = 48;
        *(*(*v8 + 8 * a2 + 232) + 24) = 52;
        *(*(*v8 + 8 * a2 + 232) + 40) = 56;
        *(*(*v8 + 8 * a2 + 232) + 56) = 296;
        *(*(*v8 + 8 * a2 + 232) + 72) = 424;
        *(*(*v8 + 8 * a2 + 232) + 88) = 300;
        *(*(*v8 + 8 * a2 + 232) + 104) = 728;
        *(*(*v8 + 8 * a2 + 232) + 120) = 304;
        v7 = *v8;
      }

      if ((*(v7 + a2 + 41) & 1) == 0)
      {
        if (AppleBCMWLANIOReportingPerSlice::initRxErrorReporter(a1, a2))
        {
          AppleBCMWLANIOReportingPerSlice::initWlCntReporter(a1);
          goto LABEL_86;
        }

        v9 = 0;
        *(*v8 + a2 + 41) = 1;
        v7 = *v8;
      }

      if (!*(v7 + 8 * a2 + 392))
      {
        v59 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v60 = IO80211Controller::getReporterProvider(v59);
        *(a1[7] + 8 * a2 + 392) = IOSimpleReporter::with(v60, 0x8010, 0, v61);
        if (!*(a1[7] + 8 * a2 + 392))
        {
          goto LABEL_77;
        }

        v62 = AppleBCMWLANIOReporting::getReporter(a1);
        OSSet::setObject(v62, *(a1[7] + 8 * a2 + 392));
        v63 = *(a1[7] + 8 * a2 + 392);
        (*(*v63 + 16))(v63);
        v64 = &off_1003C6400;
        v65 = 11;
        do
        {
          IOReporter::addChannel(*(*v8 + 8 * a2 + 392), *(v64 - 1) ^ (a2 << 56), *v64);
          v64 += 2;
          --v65;
        }

        while (v65);
        v66 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
        v67 = AppleBCMWLANIOReporting::getTarget(a1);
        v68 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v9 = v66(v67, v68, *(a1[7] + 8 * a2 + 392), v6, "WPA2 Counters");
        v7 = a1[7];
      }

      if (!*(v7 + 8 * a2 + 248))
      {
        *(*v8 + 8 * a2 + 248) = IOMallocZeroData();
        if (!*(*v8 + 8 * a2 + 248))
        {
          AppleBCMWLANIOReportingPerSlice::initWlCntReporter(a1);
          goto LABEL_86;
        }

        for (m = 0; m != 22; m += 2)
        {
          *(*(*v8 + 8 * a2 + 248) + m * 8) = kSliceCountersWPA2Report[m] ^ (a2 << 56);
        }

        *(*(*v8 + 8 * a2 + 248) + 8) = 248;
        *(*(*v8 + 8 * a2 + 248) + 24) = 252;
        *(*(*v8 + 8 * a2 + 248) + 40) = 256;
        *(*(*v8 + 8 * a2 + 248) + 56) = 260;
        *(*(*v8 + 8 * a2 + 248) + 72) = 264;
        *(*(*v8 + 8 * a2 + 248) + 88) = 268;
        *(*(*v8 + 8 * a2 + 248) + 104) = 272;
        *(*(*v8 + 8 * a2 + 248) + 120) = 280;
        *(*(*v8 + 8 * a2 + 248) + 136) = 284;
        *(*(*v8 + 8 * a2 + 248) + 152) = 288;
        *(*(*v8 + 8 * a2 + 248) + 168) = 292;
        v7 = *v8;
      }

      if (!*(v7 + 8 * a2 + 408))
      {
        v70 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v71 = IO80211Controller::getReporterProvider(v70);
        *(a1[7] + 8 * a2 + 408) = IOSimpleReporter::with(v71, 0x8010, 0, v72);
        if (!*(a1[7] + 8 * a2 + 408))
        {
          goto LABEL_77;
        }

        v73 = AppleBCMWLANIOReporting::getReporter(a1);
        OSSet::setObject(v73, *(a1[7] + 8 * a2 + 408));
        v74 = *(a1[7] + 8 * a2 + 408);
        (*(*v74 + 16))(v74);
        v75 = &off_1003C64B0;
        v76 = 11;
        do
        {
          IOReporter::addChannel(*(*v8 + 8 * a2 + 408), *(v75 - 1) ^ (a2 << 56), *v75);
          v75 += 2;
          --v76;
        }

        while (v76);
        v77 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
        v78 = AppleBCMWLANIOReporting::getTarget(a1);
        v79 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v9 = v77(v78, v79, *(a1[7] + 8 * a2 + 408), v6, "WPA2 Multicast Counters");
        v7 = a1[7];
      }

      if (!*(v7 + 8 * a2 + 264))
      {
        *(*v8 + 8 * a2 + 264) = IOMallocZeroData();
        if (!*(*v8 + 8 * a2 + 264))
        {
          AppleBCMWLANIOReportingPerSlice::initWlCntReporter(a1);
          goto LABEL_86;
        }

        for (n = 0; n != 22; n += 2)
        {
          *(*(*v8 + 8 * a2 + 264) + n * 8) = kSliceCountersmcastWPA2Report[n] ^ (a2 << 56);
        }

        *(*(*v8 + 8 * a2 + 264) + 8) = 448;
        *(*(*v8 + 8 * a2 + 264) + 24) = 452;
        *(*(*v8 + 8 * a2 + 264) + 40) = 456;
        *(*(*v8 + 8 * a2 + 264) + 56) = 460;
        *(*(*v8 + 8 * a2 + 264) + 72) = 464;
        *(*(*v8 + 8 * a2 + 264) + 88) = 468;
        *(*(*v8 + 8 * a2 + 264) + 104) = 472;
        *(*(*v8 + 8 * a2 + 264) + 120) = 480;
        *(*(*v8 + 8 * a2 + 264) + 136) = 484;
        *(*(*v8 + 8 * a2 + 264) + 152) = 488;
        *(*(*v8 + 8 * a2 + 264) + 168) = 492;
        v7 = *v8;
      }

      if (*(v7 + 8 * a2 + 424))
      {
        goto LABEL_71;
      }

      v81 = AppleBCMWLANBssManager::getCurrentBSS(a1);
      v82 = IO80211Controller::getReporterProvider(v81);
      *(a1[7] + 8 * a2 + 424) = IOSimpleReporter::with(v82, 0x8010, 0, v83);
      if (*(a1[7] + 8 * a2 + 424))
      {
        v84 = AppleBCMWLANIOReporting::getReporter(a1);
        OSSet::setObject(v84, *(a1[7] + 8 * a2 + 424));
        v85 = *(a1[7] + 8 * a2 + 424);
        (*(*v85 + 16))(v85);
        v86 = &off_1003C6560;
        v87 = 14;
        do
        {
          IOReporter::addChannel(*(*v8 + 8 * a2 + 424), *(v86 - 1) ^ (a2 << 56), *v86);
          v86 += 2;
          --v87;
        }

        while (v87);
        v88 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
        v89 = AppleBCMWLANIOReporting::getTarget(a1);
        v90 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v9 = v88(v89, v90, *(a1[7] + 8 * a2 + 424), v6, "dot11 MIB Counters");
        v7 = a1[7];
LABEL_71:
        if (*(v7 + 8 * a2 + 280))
        {
LABEL_76:
          v4 = v9;
          goto LABEL_77;
        }

        *(*v8 + 8 * a2 + 280) = IOMallocZeroData();
        if (*(*v8 + 8 * a2 + 280))
        {
          for (ii = 0; ii != 28; ii += 2)
          {
            *(*(*v8 + 8 * a2 + 280) + ii * 8) = kSliceCountersdot11Report[ii] ^ (a2 << 56);
          }

          *(*(*v8 + 8 * a2 + 280) + 8) = 192;
          *(*(*v8 + 8 * a2 + 280) + 24) = 240;
          *(*(*v8 + 8 * a2 + 280) + 40) = 196;
          *(*(*v8 + 8 * a2 + 280) + 56) = 200;
          *(*(*v8 + 8 * a2 + 280) + 72) = 204;
          *(*(*v8 + 8 * a2 + 280) + 88) = 208;
          *(*(*v8 + 8 * a2 + 280) + 104) = 212;
          *(*(*v8 + 8 * a2 + 280) + 120) = 216;
          *(*(*v8 + 8 * a2 + 280) + 136) = 220;
          *(*(*v8 + 8 * a2 + 280) + 152) = 224;
          *(*(*v8 + 8 * a2 + 280) + 168) = 228;
          *(*(*v8 + 8 * a2 + 280) + 184) = 232;
          *(*(*v8 + 8 * a2 + 280) + 200) = 236;
          *(*(*v8 + 8 * a2 + 280) + 216) = 244;
          goto LABEL_76;
        }

        AppleBCMWLANIOReportingPerSlice::initWlCntReporter(a1);
LABEL_86:
        v4 = v93;
      }
    }

LABEL_77:
    IOFreeData();
    return v4;
  }

  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::initWlCntReporter(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initHeWlCntReporter(AppleBCMWLANBssManager *a1, void (*a2)(const char *, ...))
{
  v4 = IOMallocZeroData();
  if (v4)
  {
    AppleBCMWLANIOReportingPerSlice::initHeWlCntReporter(a2, v4, a1, &v7);
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
        AppleBCMWLANIOReportingPerSlice::initHeWlCntReporter(a1);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initTVPMReporter(AppleBCMWLANBssManager *a1, uint64_t a2)
{
  v4 = IOMallocZeroData();
  if (v4)
  {
    AppleBCMWLANIOReportingPerSlice::initTVPMReporter(a2, a1, v4, &v7);
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
        AppleBCMWLANIOReportingPerSlice::initTVPMReporter(a1);
      }
    }
  }

  return v5;
}

uint64_t findPercentIndex(int a1)
{
  if (a1 > 90)
  {
    return 0;
  }

  if (a1 > 79)
  {
    return 1;
  }

  if (a1 > 9)
  {
    v2 = 8;
  }

  else
  {
    v2 = 9;
  }

  if (a1 <= 19)
  {
    v3 = v2;
  }

  else
  {
    v3 = 7;
  }

  if (a1 <= 29)
  {
    v4 = v3;
  }

  else
  {
    v4 = 6;
  }

  if (a1 <= 39)
  {
    v5 = v4;
  }

  else
  {
    v5 = 5;
  }

  if (a1 <= 49)
  {
    v6 = v5;
  }

  else
  {
    v6 = 4;
  }

  if (a1 <= 59)
  {
    v7 = v6;
  }

  else
  {
    v7 = 3;
  }

  if (a1 <= 69)
  {
    return v7;
  }

  else
  {
    return 2;
  }
}

uint64_t AppleBCMWLANIOReportingPerSlice::initDynSARReporter(AppleBCMWLANBssManager *a1, uint64_t a2)
{
  v4 = IOMallocZeroData();
  if (v4)
  {
    AppleBCMWLANIOReportingPerSlice::initDynSARReporter(a2, a1, v4, &v7);
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
        AppleBCMWLANIOReportingPerSlice::initDynSARReporter(a1);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initPwrScanStatReporter(AppleBCMWLANBssManager *a1, uint64_t a2, int a3)
{
  v6 = 3758097084;
  v7 = IOMallocZeroData();
  if (v7)
  {
    v8 = v7;
    *(*(a1 + 7) + 1404) = a3;
    if (a3 > a2)
    {
      snprintf(v7, 0x32uLL, "%s %d", "Slice", a2);
      v9 = *(a1 + 7);
      v10 = a2;
      if (*(v9 + 8 * a2 + 1048))
      {
        v6 = 0;
        goto LABEL_12;
      }

      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
      ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
      *(*(a1 + 7) + 8 * a2 + 1048) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v13);
      if (*(*(a1 + 7) + 8 * a2 + 1048))
      {
        Reporter = AppleBCMWLANIOReporting::getReporter(a1);
        OSSet::setObject(Reporter, *(*(a1 + 7) + 8 * a2 + 1048));
        v15 = *(*(a1 + 7) + 8 * a2 + 1048);
        (*(*v15 + 16))(v15);
        v16 = &off_1003C69A0;
        v17 = 6;
        do
        {
          IOReporter::addChannel(*(*(a1 + 7) + 8 * a2 + 1048), *(v16 - 1) ^ (a2 << 56), *v16);
          v16 += 2;
          --v17;
        }

        while (v17);
        AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
        Target = AppleBCMWLANIOReporting::getTarget(a1);
        v20 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v6 = AddReporterCallback(Target, v20, *(*(a1 + 7) + 8 * a2 + 1048), v8, "Count Per Scan Type");
        v9 = *(a1 + 7);
LABEL_12:
        if (!*(v9 + 8 * a2 + 1072))
        {
          v21 = AppleBCMWLANBssManager::getCurrentBSS(a1);
          v22 = IO80211Controller::getReporterProvider(v21);
          *(*(a1 + 7) + 8 * a2 + 1072) = IOSimpleReporter::with(v22, 0x8010, 0, v23);
          v6 = 3758097084;
          if (*(*(a1 + 7) + 8 * a2 + 1072))
          {
            v24 = AppleBCMWLANIOReporting::getReporter(a1);
            OSSet::setObject(v24, *(*(a1 + 7) + 8 * a2 + 1072));
            v25 = *(*(a1 + 7) + 8 * a2 + 1072);
            (*(*v25 + 16))(v25);
            v26 = a2 << 56;
            v27 = &off_1003C6A00;
            v28 = 10;
            do
            {
              IOReporter::addChannel(*(*(a1 + 7) + 8 * v10 + 1072), *(v27 - 1) ^ v26, *v27);
              v27 += 2;
              --v28;
            }

            while (v28);
            v29 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
            v30 = AppleBCMWLANIOReporting::getTarget(a1);
            v31 = AppleBCMWLANBssManager::getCurrentBSS(a1);
            v6 = v29(v30, v31, *(*(a1 + 7) + 8 * v10 + 1072), v8, "Dur   Per Scan Type");
          }
        }
      }
    }

    IOFreeData();
    return v6;
  }

  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::initPwrScanStatReporter(a1);
    }
  }

  return v6;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStats(AppleBCMWLANIOReporting *a1, unsigned int a2, OSData *a3, uint64_t a4, int a5)
{
  v70 = 0;
  v10 = IOMallocZeroData();
  if (v10)
  {
    v11 = v10;
    if (a3)
    {
      if (OSData::getLength(a3) >= 0x95)
      {
        AppleBCMWLANIOReportingPerSlice::reportScanPwrStats(a1);
      }

      else if (a5 <= a4)
      {
        AppleBCMWLANIOReportingPerSlice::reportScanPwrStats(a1);
      }

      else
      {
        BytesNoCopy = OSData::getBytesNoCopy(a3);
        Length = OSData::getLength(a3);
        memcpy(v11, BytesNoCopy, Length);
        v14 = a4;
        if (*(*(a1 + 7) + a4 + 22))
        {
          goto LABEL_8;
        }

        if (!AppleBCMWLANIOReportingPerSlice::initPwrScanStatReporter(a1, a4, a5))
        {
          *(*(a1 + 7) + a4 + 22) = 1;
LABEL_8:
          v15 = *v11;
          if (v15 == 18)
          {
            v39 = *(*(a1 + 7) + 8 * a4 + 1048);
            v40 = a4;
            CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 4uLL);
            IOSimpleReporter::setValue(v39, (a4 << 56) ^ 0x536C536355736572, CounterValueSafe);
            v42 = *(*(a1 + 7) + 8 * a4 + 1048);
            v43 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x10uLL);
            IOSimpleReporter::setValue(v42, (v40 << 56) ^ 0x536C536341736F63, v43);
            v44 = *(*(a1 + 7) + 8 * v14 + 1048);
            v45 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x1CuLL);
            IOSimpleReporter::setValue(v44, (v40 << 56) ^ 0x536C5363526F616DLL, v45);
            v46 = *(*(a1 + 7) + 8 * v14 + 1048);
            v47 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x28uLL);
            IOSimpleReporter::setValue(v46, (v40 << 56) ^ 0x536C5363506E6F73, v47);
            v48 = *(*(a1 + 7) + 8 * v14 + 1048);
            v49 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x88uLL);
            IOSimpleReporter::setValue(v48, (v40 << 56) ^ 0x536C53634F746872, v49);
            IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v14 + 1048), (v40 << 56) ^ 0x536C5357526F616DLL, a2);
            v50 = *(*(a1 + 7) + 8 * v14 + 1072);
            v51 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 8uLL);
            IOSimpleReporter::setValue(v50, (v40 << 56) ^ 0x5344757255736572, v51);
            v52 = *(*(a1 + 7) + 8 * v14 + 1072);
            v53 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x14uLL);
            IOSimpleReporter::setValue(v52, (v40 << 56) ^ 0x5344757241736F63, v53);
            v54 = *(*(a1 + 7) + 8 * v14 + 1072);
            v55 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x20uLL);
            IOSimpleReporter::setValue(v54, (v40 << 56) ^ 0x53447572526F616DLL, v55);
            v56 = *(*(a1 + 7) + 8 * v14 + 1072);
            v57 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x2CuLL);
            IOSimpleReporter::setValue(v56, (v40 << 56) ^ 0x53447572506E6F73, v57);
            v58 = *(*(a1 + 7) + 8 * v14 + 1072);
            v59 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x8CuLL);
            IOSimpleReporter::setValue(v58, (v40 << 56) ^ 0x534475724F746872, v59);
            v60 = *(*(a1 + 7) + 8 * v14 + 1072);
            v61 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0xCuLL);
            IOSimpleReporter::setValue(v60, (v40 << 56) ^ 0x53444F4355736572, v61);
            v62 = *(*(a1 + 7) + 8 * v14 + 1072);
            v63 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x18uLL);
            IOSimpleReporter::setValue(v62, (v40 << 56) ^ 0x53444F4341736F63, v63);
            v64 = *(*(a1 + 7) + 8 * v14 + 1072);
            v65 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x24uLL);
            IOSimpleReporter::setValue(v64, (v40 << 56) ^ 0x53444F43526F616DLL, v65);
            v66 = *(*(a1 + 7) + 8 * v14 + 1072);
            v67 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x30uLL);
            IOSimpleReporter::setValue(v66, (v40 << 56) ^ 0x53444F43506E6F73, v67);
            v34 = *(*(a1 + 7) + 8 * v14 + 1072);
            v35 = (v40 << 56) ^ 0x53444F434F746872;
            v36 = a3;
            v37 = 144;
          }

          else
          {
            if (v15 != 1)
            {
LABEL_20:
              v38 = v70;
LABEL_21:
              IOFreeData();
              return v38;
            }

            v16 = *(*(a1 + 7) + 8 * a4 + 1048);
            v17 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 4uLL);
            IOSimpleReporter::setValue(v16, (a4 << 56) ^ 0x536C536355736572, v17);
            v18 = *(*(a1 + 7) + 8 * a4 + 1048);
            v19 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0xCuLL);
            IOSimpleReporter::setValue(v18, (a4 << 56) ^ 0x536C536341736F63, v19);
            v20 = *(*(a1 + 7) + 8 * a4 + 1048);
            v21 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x14uLL);
            IOSimpleReporter::setValue(v20, (a4 << 56) ^ 0x536C5363526F616DLL, v21);
            v22 = *(*(a1 + 7) + 8 * a4 + 1048);
            v23 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x1CuLL);
            IOSimpleReporter::setValue(v22, (a4 << 56) ^ 0x536C5363506E6F73, v23);
            v24 = *(*(a1 + 7) + 8 * a4 + 1048);
            v25 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x5CuLL);
            IOSimpleReporter::setValue(v24, (a4 << 56) ^ 0x536C53634F746872, v25);
            IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * a4 + 1048), (a4 << 56) ^ 0x536C5357526F616DLL, a2);
            v26 = *(*(a1 + 7) + 8 * a4 + 1072);
            v27 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 8uLL);
            IOSimpleReporter::setValue(v26, (a4 << 56) ^ 0x5344757255736572, v27);
            v28 = *(*(a1 + 7) + 8 * a4 + 1072);
            v29 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x10uLL);
            IOSimpleReporter::setValue(v28, (a4 << 56) ^ 0x5344757241736F63, v29);
            v30 = *(*(a1 + 7) + 8 * a4 + 1072);
            v31 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x18uLL);
            IOSimpleReporter::setValue(v30, (a4 << 56) ^ 0x53447572526F616DLL, v31);
            v32 = *(*(a1 + 7) + 8 * a4 + 1072);
            v33 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, a3, 0x20uLL);
            IOSimpleReporter::setValue(v32, (a4 << 56) ^ 0x53447572506E6F73, v33);
            v34 = *(*(a1 + 7) + 8 * a4 + 1072);
            v35 = (a4 << 56) ^ 0x534475724F746872;
            v36 = a3;
            v37 = 96;
          }

          v68 = AppleBCMWLANUtil::getCounterValueSafe(&v70, 4uLL, v36, v37);
          IOSimpleReporter::setValue(v34, v35, v68);
          goto LABEL_20;
        }

        AppleBCMWLANIOReportingPerSlice::reportScanPwrStats(a1, a4);
      }
    }

    else
    {
      AppleBCMWLANIOReportingPerSlice::reportScanPwrStats(a1);
    }

    v38 = 3758097084;
    v70 = -536870212;
    goto LABEL_21;
  }

  if (!AppleBCMWLANIOReporting::getLogger(a1) || (AppleBCMWLANIOReporting::getLogger(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v72 = 65;
      v73 = 2080;
      v74 = "reportScanPwrStats";
      v75 = 1024;
      v76 = 2271;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Failed to allocate scan_stats_data buf", buf, 0x18u);
    }
  }

  v38 = 3758097084;
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::reportScanPwrStats(a1);
    }
  }

  return v38;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initPwrScanStat6EReporter(AppleBCMWLANIOReporting *a1, uint64_t a2, int a3)
{
  v6 = IOMallocZeroData();
  if (v6)
  {
    v7 = v6;
    if (a3 <= a2)
    {
      AppleBCMWLANIOReportingPerSlice::initPwrScanStat6EReporter(a1);
    }

    else
    {
      *(*(a1 + 7) + 1404) = a3;
      if (snprintf(v6, 0x32uLL, "%s %d", "Slice", a2) < 50)
      {
        if (*(*(a1 + 7) + 8 * a2 + 1144))
        {
          v8 = 0;
        }

        else
        {
          v9 = a2;
          CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
          ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
          *(*(a1 + 7) + 8 * a2 + 1144) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v12);
          if (*(*(a1 + 7) + 8 * a2 + 1144))
          {
            Reporter = AppleBCMWLANIOReporting::getReporter(a1);
            OSSet::setObject(Reporter, *(*(a1 + 7) + 8 * a2 + 1144));
            v14 = *(*(a1 + 7) + 8 * a2 + 1144);
            (*(*v14 + 16))(v14);
            v15 = a2 << 56;
            v16 = &off_1003C6AA0;
            v17 = 5;
            do
            {
              IOReporter::addChannel(*(*(a1 + 7) + 8 * v9 + 1144), *(v16 - 1) ^ v15, *v16);
              v16 += 2;
              --v17;
            }

            while (v17);
            AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
            Target = AppleBCMWLANIOReporting::getTarget(a1);
            v20 = AppleBCMWLANBssManager::getCurrentBSS(a1);
            v8 = AddReporterCallback(Target, v20, *(*(a1 + 7) + 8 * v9 + 1144), v7, "6E Scan counts");
          }

          else
          {
            v8 = 3758097084;
          }
        }

        goto LABEL_13;
      }

      AppleBCMWLANIOReportingPerSlice::initPwrScanStat6EReporter(a1);
    }

    v8 = v22;
LABEL_13:
    IOFreeData();
    return v8;
  }

  v8 = 3758097084;
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::initPwrScanStat6EReporter(a1);
    }
  }

  return v8;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStats6E(AppleBCMWLANIOReporting *a1, OSData *this, uint64_t a3, int a4)
{
  v20 = 0;
  if (a4 <= a3)
  {
    AppleBCMWLANIOReportingPerSlice::reportScanPwrStats6E(a1);
    return v21;
  }

  if (OSData::getLength(this) != 24)
  {
    AppleBCMWLANIOReportingPerSlice::reportScanPwrStats6E(a1, this, &v21);
    return v21;
  }

  OSData::getBytesNoCopy(this);
  v8 = *(a1 + 7);
  if ((*(v8 + a3 + 25) & 1) == 0)
  {
    if (!AppleBCMWLANIOReportingPerSlice::initPwrScanStat6EReporter(a1, a3, a4))
    {
      *(*(a1 + 7) + a3 + 25) = 1;
      v8 = *(a1 + 7);
      goto LABEL_6;
    }

    AppleBCMWLANIOReportingPerSlice::reportScanPwrStats6E(a1);
    return v21;
  }

LABEL_6:
  v9 = *(v8 + 8 * a3 + 1144);
  CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(&v20, 4uLL, this, 4uLL);
  IOSimpleReporter::setValue(v9, (a3 << 56) ^ 0x536C527855707250, CounterValueSafe);
  v11 = *(*(a1 + 7) + 8 * a3 + 1144);
  v12 = AppleBCMWLANUtil::getCounterValueSafe(&v20, 4uLL, this, 8uLL);
  IOSimpleReporter::setValue(v11, (a3 << 56) ^ 0x536C527855707249, v12);
  v13 = *(*(a1 + 7) + 8 * a3 + 1144);
  v14 = AppleBCMWLANUtil::getCounterValueSafe(&v20, 4uLL, this, 0xCuLL);
  IOSimpleReporter::setValue(v13, (a3 << 56) ^ 0x536C527846696C50, v14);
  v15 = *(*(a1 + 7) + 8 * a3 + 1144);
  v16 = AppleBCMWLANUtil::getCounterValueSafe(&v20, 4uLL, this, 0x10uLL);
  IOSimpleReporter::setValue(v15, (a3 << 56) ^ 0x536C527846696C49, v16);
  v17 = *(*(a1 + 7) + 8 * a3 + 1144);
  v18 = AppleBCMWLANUtil::getCounterValueSafe(&v20, 4uLL, this, 0x14uLL);
  IOSimpleReporter::setValue(v17, (a3 << 56) ^ 0x536C526E52366553, v18);
  return v20;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initPwrScanStatsAtLinkUpReporter(AppleBCMWLANBssManager *a1, uint64_t a2, int a3)
{
  v6 = 3758097084;
  if (IOMallocZeroData())
  {
    if (a3 > a2)
    {
      v7 = *(a1 + 7);
      v8 = a2;
      if (*(v7 + 8 * a2 + 1096))
      {
        v6 = 0;
        goto LABEL_12;
      }

      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
      ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
      *(*(a1 + 7) + 8 * a2 + 1096) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v11);
      if (*(*(a1 + 7) + 8 * a2 + 1096))
      {
        v12 = &off_1003C6AF0;
        v13 = 6;
        do
        {
          v14 = IOReporter::addChannel(*(*(a1 + 7) + 8 * a2 + 1096), *(v12 - 1) ^ (a2 << 56), *v12);
          v12 += 2;
          --v13;
        }

        while (v13);
        v6 = v14;
        v7 = *(a1 + 7);
LABEL_12:
        if (!*(v7 + 8 * a2 + 1120))
        {
          v15 = AppleBCMWLANBssManager::getCurrentBSS(a1);
          v16 = IO80211Controller::getReporterProvider(v15);
          *(*(a1 + 7) + 8 * a2 + 1120) = IOSimpleReporter::with(v16, 0x8010, 0, v17);
          v6 = 3758097084;
          if (*(*(a1 + 7) + 8 * a2 + 1120))
          {
            v18 = a2 << 56;
            v19 = &off_1003C6B50;
            v20 = 10;
            do
            {
              v21 = IOReporter::addChannel(*(*(a1 + 7) + 8 * v8 + 1120), *(v19 - 1) ^ v18, *v19);
              v19 += 2;
              --v20;
            }

            while (v20);
            v6 = v21;
          }
        }
      }
    }

    IOFreeData();
    return v6;
  }

  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::initPwrScanStatsAtLinkUpReporter(a1);
    }
  }

  return v6;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsAtLinkUp(AppleBCMWLANIOReporting *a1, unsigned int a2, OSData *a3, uint64_t a4, int a5)
{
  v71 = 0;
  v10 = IOMallocZeroData();
  if (v10)
  {
    v11 = v10;
    if (a3)
    {
      if (OSData::getLength(a3) >= 0x95)
      {
        AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsAtLinkUp(a1);
      }

      else if (a5 <= a4)
      {
        AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsAtLinkUp(a1);
      }

      else
      {
        BytesNoCopy = OSData::getBytesNoCopy(a3);
        Length = OSData::getLength(a3);
        memcpy(v11, BytesNoCopy, Length);
        v14 = *(a1 + 7);
        v15 = a4;
        if (*(v14 + a4 + 28))
        {
          goto LABEL_8;
        }

        if (!AppleBCMWLANIOReportingPerSlice::initPwrScanStatsAtLinkUpReporter(a1, a4, a5))
        {
          *(*(a1 + 7) + a4 + 28) = 1;
          v14 = *(a1 + 7);
LABEL_8:
          *(v14 + 1404) = a5;
          v16 = *v11;
          if (v16 == 18)
          {
            v40 = *(*(a1 + 7) + 8 * a4 + 1096);
            v41 = a4;
            CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 4uLL);
            IOSimpleReporter::setValue(v40, (a4 << 56) ^ 0x4155536355736572, CounterValueSafe);
            v43 = *(*(a1 + 7) + 8 * a4 + 1096);
            v44 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x10uLL);
            IOSimpleReporter::setValue(v43, (v41 << 56) ^ 0x4155536341736F63, v44);
            v45 = *(*(a1 + 7) + 8 * v15 + 1096);
            v46 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x1CuLL);
            IOSimpleReporter::setValue(v45, (v41 << 56) ^ 0x41555363526F616DLL, v46);
            v47 = *(*(a1 + 7) + 8 * v15 + 1096);
            v48 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x28uLL);
            IOSimpleReporter::setValue(v47, (v41 << 56) ^ 0x41555363506E6F73, v48);
            v49 = *(*(a1 + 7) + 8 * v15 + 1096);
            v50 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x88uLL);
            IOSimpleReporter::setValue(v49, (v41 << 56) ^ 0x415553634F746872, v50);
            IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v15 + 1096), (v41 << 56) ^ 0x41555357526F616DLL, a2);
            v51 = *(*(a1 + 7) + 8 * v15 + 1120);
            v52 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 8uLL);
            IOSimpleReporter::setValue(v51, (v41 << 56) ^ 0x4155447255736572, v52);
            v53 = *(*(a1 + 7) + 8 * v15 + 1120);
            v54 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x14uLL);
            IOSimpleReporter::setValue(v53, (v41 << 56) ^ 0x4155447241736F63, v54);
            v55 = *(*(a1 + 7) + 8 * v15 + 1120);
            v56 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x20uLL);
            IOSimpleReporter::setValue(v55, (v41 << 56) ^ 0x41554472526F616DLL, v56);
            v57 = *(*(a1 + 7) + 8 * v15 + 1120);
            v58 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x2CuLL);
            IOSimpleReporter::setValue(v57, (v41 << 56) ^ 0x41554472506E6F73, v58);
            v59 = *(*(a1 + 7) + 8 * v15 + 1120);
            v60 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x8CuLL);
            IOSimpleReporter::setValue(v59, (v41 << 56) ^ 0x415544724F746872, v60);
            v61 = *(*(a1 + 7) + 8 * v15 + 1120);
            v62 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0xCuLL);
            IOSimpleReporter::setValue(v61, (v41 << 56) ^ 0x41554F4355736572, v62);
            v63 = *(*(a1 + 7) + 8 * v15 + 1120);
            v64 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x18uLL);
            IOSimpleReporter::setValue(v63, (v41 << 56) ^ 0x41554F4341736F63, v64);
            v65 = *(*(a1 + 7) + 8 * v15 + 1120);
            v66 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x24uLL);
            IOSimpleReporter::setValue(v65, (v41 << 56) ^ 0x41554F43526F616DLL, v66);
            v67 = *(*(a1 + 7) + 8 * v15 + 1120);
            v68 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x30uLL);
            IOSimpleReporter::setValue(v67, (v41 << 56) ^ 0x41554F43506E6F73, v68);
            v35 = *(*(a1 + 7) + 8 * v15 + 1120);
            v36 = (v41 << 56) ^ 0x41554F434F746872;
            v37 = a3;
            v38 = 144;
          }

          else
          {
            if (v16 != 1)
            {
LABEL_20:
              v39 = v71;
LABEL_21:
              IOFreeData();
              return v39;
            }

            v17 = *(*(a1 + 7) + 8 * a4 + 1096);
            v18 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 4uLL);
            IOSimpleReporter::setValue(v17, (a4 << 56) ^ 0x4155536355736572, v18);
            v19 = *(*(a1 + 7) + 8 * a4 + 1096);
            v20 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0xCuLL);
            IOSimpleReporter::setValue(v19, (a4 << 56) ^ 0x4155536341736F63, v20);
            v21 = *(*(a1 + 7) + 8 * a4 + 1096);
            v22 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x14uLL);
            IOSimpleReporter::setValue(v21, (a4 << 56) ^ 0x41555363526F616DLL, v22);
            v23 = *(*(a1 + 7) + 8 * a4 + 1096);
            v24 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x1CuLL);
            IOSimpleReporter::setValue(v23, (a4 << 56) ^ 0x41555363506E6F73, v24);
            v25 = *(*(a1 + 7) + 8 * a4 + 1096);
            v26 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x5CuLL);
            IOSimpleReporter::setValue(v25, (a4 << 56) ^ 0x415553634F746872, v26);
            IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * a4 + 1096), (a4 << 56) ^ 0x41555357526F616DLL, a2);
            v27 = *(*(a1 + 7) + 8 * a4 + 1120);
            v28 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 8uLL);
            IOSimpleReporter::setValue(v27, (a4 << 56) ^ 0x4155447255736572, v28);
            v29 = *(*(a1 + 7) + 8 * a4 + 1120);
            v30 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x10uLL);
            IOSimpleReporter::setValue(v29, (a4 << 56) ^ 0x4155447241736F63, v30);
            v31 = *(*(a1 + 7) + 8 * a4 + 1120);
            v32 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x18uLL);
            IOSimpleReporter::setValue(v31, (a4 << 56) ^ 0x41554472526F616DLL, v32);
            v33 = *(*(a1 + 7) + 8 * a4 + 1120);
            v34 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, a3, 0x20uLL);
            IOSimpleReporter::setValue(v33, (a4 << 56) ^ 0x41554472506E6F73, v34);
            v35 = *(*(a1 + 7) + 8 * a4 + 1120);
            v36 = (a4 << 56) ^ 0x415544724F746872;
            v37 = a3;
            v38 = 96;
          }

          v69 = AppleBCMWLANUtil::getCounterValueSafe(&v71, 4uLL, v37, v38);
          IOSimpleReporter::setValue(v35, v36, v69);
          goto LABEL_20;
        }

        AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsAtLinkUp(a1, a4);
      }
    }

    else
    {
      AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsAtLinkUp(a1);
    }

    v39 = 3758097084;
    v71 = -536870212;
    goto LABEL_21;
  }

  if (!AppleBCMWLANIOReporting::getLogger(a1) || (AppleBCMWLANIOReporting::getLogger(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v73 = 65;
      v74 = 2080;
      v75 = "reportScanPwrStatsAtLinkUp";
      v76 = 1024;
      v77 = 2434;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Failed to allocate scan_stats_data buf", buf, 0x18u);
    }
  }

  v39 = 3758097084;
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsAtLinkUp(a1);
    }
  }

  return v39;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initPwrScanStatsSinceLinkUpReporter(AppleBCMWLANBssManager *a1, uint64_t a2, int a3)
{
  v6 = 3758097084;
  v7 = IOMallocZeroData();
  if (v7)
  {
    v8 = v7;
    if (a3 > a2)
    {
      snprintf(v7, 0x32uLL, "%s %d", "Slice", a2);
      v9 = *(a1 + 7);
      v10 = a2;
      if (*(v9 + 8 * a2 + 1168))
      {
        v6 = 0;
        goto LABEL_12;
      }

      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
      ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
      *(*(a1 + 7) + 8 * a2 + 1168) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v13);
      if (*(*(a1 + 7) + 8 * a2 + 1168))
      {
        Reporter = AppleBCMWLANIOReporting::getReporter(a1);
        OSSet::setObject(Reporter, *(*(a1 + 7) + 8 * a2 + 1168));
        v15 = *(*(a1 + 7) + 8 * a2 + 1168);
        (*(*v15 + 16))(v15);
        v16 = &off_1003C6BF0;
        v17 = 6;
        do
        {
          IOReporter::addChannel(*(*(a1 + 7) + 8 * a2 + 1168), *(v16 - 1) ^ (a2 << 56), *v16);
          v16 += 2;
          --v17;
        }

        while (v17);
        AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
        Target = AppleBCMWLANIOReporting::getTarget(a1);
        v20 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v6 = AddReporterCallback(Target, v20, *(*(a1 + 7) + 8 * a2 + 1168), v8, "Count Per Scan Type - since LinkUp");
        v9 = *(a1 + 7);
LABEL_12:
        if (!*(v9 + 8 * a2 + 1192))
        {
          v21 = AppleBCMWLANBssManager::getCurrentBSS(a1);
          v22 = IO80211Controller::getReporterProvider(v21);
          *(*(a1 + 7) + 8 * a2 + 1192) = IOSimpleReporter::with(v22, 0x8010, 0, v23);
          v6 = 3758097084;
          if (*(*(a1 + 7) + 8 * a2 + 1192))
          {
            v24 = AppleBCMWLANIOReporting::getReporter(a1);
            OSSet::setObject(v24, *(*(a1 + 7) + 8 * a2 + 1192));
            v25 = *(*(a1 + 7) + 8 * a2 + 1192);
            (*(*v25 + 16))(v25);
            v26 = a2 << 56;
            v27 = &off_1003C6C50;
            v28 = 10;
            do
            {
              IOReporter::addChannel(*(*(a1 + 7) + 8 * v10 + 1192), *(v27 - 1) ^ v26, *v27);
              v27 += 2;
              --v28;
            }

            while (v28);
            v29 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
            v30 = AppleBCMWLANIOReporting::getTarget(a1);
            v31 = AppleBCMWLANBssManager::getCurrentBSS(a1);
            v6 = v29(v30, v31, *(*(a1 + 7) + 8 * v10 + 1192), v8, "Dur   Per Scan Type - since LinkUp");
          }
        }
      }
    }

    IOFreeData();
    return v6;
  }

  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::initPwrScanStatsSinceLinkUpReporter(a1);
    }
  }

  return v6;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsSinceLinkUp(AppleBCMWLANIOReporting *a1, uint64_t a2, int a3)
{
  if (a3 <= a2)
  {
    AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsSinceLinkUp(a1);
    return v71;
  }

  v5 = *(a1 + 7);
  if (*(v5 + a2 + 28) == 1)
  {
    if (*(v5 + a2 + 31))
    {
LABEL_6:
      v6 = v5 + 8 * a2;
      v7 = *(v6 + 1168);
      Value = IOSimpleReporter::getValue(*(v6 + 1048), (a2 << 56) ^ 0x536C536355736572);
      v9 = IOSimpleReporter::getValue(*(*(a1 + 7) + 8 * a2 + 1096), (a2 << 56) ^ 0x4155536355736572);
      IOSimpleReporter::setValue(v7, (a2 << 56) ^ 0x5355536355736572, Value - v9);
      v10 = *(a1 + 7) + 8 * a2;
      v11 = *(v10 + 1168);
      v12 = IOSimpleReporter::getValue(*(v10 + 1048), (a2 << 56) ^ 0x536C536341736F63);
      v13 = IOSimpleReporter::getValue(*(*(a1 + 7) + 8 * a2 + 1096), (a2 << 56) ^ 0x4155536341736F63);
      IOSimpleReporter::setValue(v11, (a2 << 56) ^ 0x5355536341736F63, v12 - v13);
      v14 = *(a1 + 7) + 8 * a2;
      v15 = *(v14 + 1168);
      v16 = IOSimpleReporter::getValue(*(v14 + 1048), (a2 << 56) ^ 0x536C5363526F616DLL);
      v17 = IOSimpleReporter::getValue(*(*(a1 + 7) + 8 * a2 + 1096), (a2 << 56) ^ 0x41555363526F616DLL);
      IOSimpleReporter::setValue(v15, (a2 << 56) ^ 0x53555363526F616DLL, v16 - v17);
      v18 = *(a1 + 7) + 8 * a2;
      v19 = *(v18 + 1168);
      v20 = IOSimpleReporter::getValue(*(v18 + 1048), (a2 << 56) ^ 0x536C5363506E6F73);
      v21 = IOSimpleReporter::getValue(*(*(a1 + 7) + 8 * a2 + 1096), (a2 << 56) ^ 0x41555363506E6F73);
      IOSimpleReporter::setValue(v19, (a2 << 56) ^ 0x53555363506E6F73, v20 - v21);
      v22 = *(a1 + 7) + 8 * a2;
      v23 = *(v22 + 1168);
      v24 = IOSimpleReporter::getValue(*(v22 + 1048), (a2 << 56) ^ 0x536C53634F746872);
      v25 = IOSimpleReporter::getValue(*(*(a1 + 7) + 8 * a2 + 1096), (a2 << 56) ^ 0x415553634F746872);
      IOSimpleReporter::setValue(v23, (a2 << 56) ^ 0x535553634F746872, v24 - v25);
      v26 = *(a1 + 7) + 8 * a2;
      v27 = *(v26 + 1168);
      v28 = IOSimpleReporter::getValue(*(v26 + 1048), (a2 << 56) ^ 0x536C5357526F616DLL);
      v29 = IOSimpleReporter::getValue(*(*(a1 + 7) + 8 * a2 + 1096), (a2 << 56) ^ 0x41555357526F616DLL);
      IOSimpleReporter::setValue(v27, (a2 << 56) ^ 0x53555357526F616DLL, v28 - v29);
      v30 = *(a1 + 7) + 8 * a2;
      v31 = *(v30 + 1192);
      v32 = IOSimpleReporter::getValue(*(v30 + 1072), (a2 << 56) ^ 0x5344757255736572);
      v33 = IOSimpleReporter::getValue(*(*(a1 + 7) + 8 * a2 + 1120), (a2 << 56) ^ 0x4155447255736572);
      IOSimpleReporter::setValue(v31, (a2 << 56) ^ 0x5355447255736572, v32 - v33);
      v34 = *(a1 + 7) + 8 * a2;
      v35 = *(v34 + 1192);
      v36 = IOSimpleReporter::getValue(*(v34 + 1072), (a2 << 56) ^ 0x5344757241736F63);
      v37 = IOSimpleReporter::getValue(*(*(a1 + 7) + 8 * a2 + 1120), (a2 << 56) ^ 0x4155447241736F63);
      IOSimpleReporter::setValue(v35, (a2 << 56) ^ 0x5355447241736F63, v36 - v37);
      v38 = *(a1 + 7) + 8 * a2;
      v39 = *(v38 + 1192);
      v40 = IOSimpleReporter::getValue(*(v38 + 1072), (a2 << 56) ^ 0x53447572526F616DLL);
      v41 = IOSimpleReporter::getValue(*(*(a1 + 7) + 8 * a2 + 1120), (a2 << 56) ^ 0x41554472526F616DLL);
      IOSimpleReporter::setValue(v39, (a2 << 56) ^ 0x53554472526F616DLL, v40 - v41);
      v42 = *(a1 + 7) + 8 * a2;
      v43 = *(v42 + 1192);
      v44 = IOSimpleReporter::getValue(*(v42 + 1072), (a2 << 56) ^ 0x53447572506E6F73);
      v45 = IOSimpleReporter::getValue(*(*(a1 + 7) + 8 * a2 + 1120), (a2 << 56) ^ 0x41554472506E6F73);
      IOSimpleReporter::setValue(v43, (a2 << 56) ^ 0x53554472506E6F73, v44 - v45);
      v46 = *(a1 + 7) + 8 * a2;
      v47 = *(v46 + 1192);
      v48 = IOSimpleReporter::getValue(*(v46 + 1072), (a2 << 56) ^ 0x534475724F746872);
      v49 = IOSimpleReporter::getValue(*(*(a1 + 7) + 8 * a2 + 1120), (a2 << 56) ^ 0x415544724F746872);
      IOSimpleReporter::setValue(v47, (a2 << 56) ^ 0x535544724F746872, v48 - v49);
      v50 = *(a1 + 7) + 8 * a2;
      v51 = *(v50 + 1192);
      v52 = IOSimpleReporter::getValue(*(v50 + 1072), (a2 << 56) ^ 0x53444F4355736572);
      v53 = IOSimpleReporter::getValue(*(*(a1 + 7) + 8 * a2 + 1120), (a2 << 56) ^ 0x41554F4355736572);
      IOSimpleReporter::setValue(v51, (a2 << 56) ^ 0x53554F4355736572, v52 - v53);
      v54 = *(a1 + 7) + 8 * a2;
      v55 = *(v54 + 1192);
      v56 = IOSimpleReporter::getValue(*(v54 + 1072), (a2 << 56) ^ 0x53444F4341736F63);
      v57 = IOSimpleReporter::getValue(*(*(a1 + 7) + 8 * a2 + 1120), (a2 << 56) ^ 0x41554F4341736F63);
      IOSimpleReporter::setValue(v55, (a2 << 56) ^ 0x53554F4341736F63, v56 - v57);
      v58 = *(a1 + 7) + 8 * a2;
      v59 = *(v58 + 1192);
      v60 = IOSimpleReporter::getValue(*(v58 + 1072), (a2 << 56) ^ 0x53444F43526F616DLL);
      v61 = IOSimpleReporter::getValue(*(*(a1 + 7) + 8 * a2 + 1120), (a2 << 56) ^ 0x41554F43526F616DLL);
      IOSimpleReporter::setValue(v59, (a2 << 56) ^ 0x53554F43526F616DLL, v60 - v61);
      v62 = *(a1 + 7) + 8 * a2;
      v63 = *(v62 + 1192);
      v64 = IOSimpleReporter::getValue(*(v62 + 1072), (a2 << 56) ^ 0x53444F43506E6F73);
      v65 = IOSimpleReporter::getValue(*(*(a1 + 7) + 8 * a2 + 1120), (a2 << 56) ^ 0x41554F43506E6F73);
      IOSimpleReporter::setValue(v63, (a2 << 56) ^ 0x53554F43506E6F73, v64 - v65);
      v66 = *(a1 + 7) + 8 * a2;
      v67 = *(v66 + 1192);
      v68 = IOSimpleReporter::getValue(*(v66 + 1072), (a2 << 56) ^ 0x53444F434F746872);
      v69 = IOSimpleReporter::getValue(*(*(a1 + 7) + 8 * a2 + 1120), (a2 << 56) ^ 0x41554F434F746872);
      IOSimpleReporter::setValue(v67, (a2 << 56) ^ 0x53554F434F746872, v68 - v69);
      return 0;
    }

    if (!AppleBCMWLANIOReportingPerSlice::initPwrScanStatsSinceLinkUpReporter(a1, a2, a3))
    {
      *(*(a1 + 7) + a2 + 31) = 1;
      v5 = *(a1 + 7);
      goto LABEL_6;
    }

    AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsSinceLinkUp(a1);
    return v71;
  }

  return 0;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initScanModeSinceLinkUpReporter(AppleBCMWLANBssManager *a1, uint64_t a2, int a3)
{
  v6 = 3758097084;
  v7 = IOMallocZeroData();
  if (v7)
  {
    v8 = v7;
    if (a3 > a2)
    {
      snprintf(v7, 0x32uLL, "%s %d", "Slice", a2);
      if (*(*(a1 + 7) + 8 * a2 + 1216))
      {
        v6 = 0;
      }

      else
      {
        v9 = a2;
        CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
        ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
        *(*(a1 + 7) + 8 * a2 + 1216) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v12);
        if (*(*(a1 + 7) + 8 * a2 + 1216))
        {
          Reporter = AppleBCMWLANIOReporting::getReporter(a1);
          OSSet::setObject(Reporter, *(*(a1 + 7) + 8 * a2 + 1216));
          v14 = *(*(a1 + 7) + 8 * a2 + 1216);
          (*(*v14 + 16))(v14);
          v15 = a2 << 56;
          v16 = &off_1003C6CF0;
          v17 = 3;
          do
          {
            IOReporter::addChannel(*(*(a1 + 7) + 8 * v9 + 1216), *(v16 - 1) ^ v15, *v16);
            v16 += 2;
            --v17;
          }

          while (v17);
          AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
          Target = AppleBCMWLANIOReporting::getTarget(a1);
          v20 = AppleBCMWLANBssManager::getCurrentBSS(a1);
          v6 = AddReporterCallback(Target, v20, *(*(a1 + 7) + 8 * v9 + 1216), v8, "Count Per Scan Mode");
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
      AppleBCMWLANIOReportingPerSlice::initScanModeSinceLinkUpReporter(a1);
    }
  }

  return v6;
}

uint64_t AppleBCMWLANIOReportingPerSlice::resetScanModeStats(uint64_t a1, uint64_t a2)
{
  IOSimpleReporter::setValue(*(*(a1 + 56) + 8 * a2 + 1216), (a2 << 56) ^ 0x536C5363616E4841, 0);
  IOSimpleReporter::setValue(*(*(a1 + 56) + 8 * a2 + 1216), (a2 << 56) ^ 0x536C5363616E4C53, 0);
  v4 = *(*(a1 + 56) + 8 * a2 + 1216);

  return IOSimpleReporter::setValue(v4, (a2 << 56) ^ 0x536C5363616E4C50, 0);
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanModeStatsSinceLinkUp(AppleBCMWLANIOReporting *a1, uint64_t a2, int a3, int a4)
{
  if (a4 <= a2)
  {
    AppleBCMWLANIOReportingPerSlice::reportScanModeStatsSinceLinkUp(a1);
    return v14;
  }

  v8 = *(a1 + 7);
  if (v8[34])
  {
    goto LABEL_5;
  }

  if (AppleBCMWLANIOReportingPerSlice::initScanModeSinceLinkUpReporter(a1, 0, a4))
  {
    AppleBCMWLANIOReportingPerSlice::reportScanModeStatsSinceLinkUp(a1);
    return v14;
  }

  *(*(a1 + 7) + 34) = 1;
  AppleBCMWLANIOReportingPerSlice::resetScanModeStats(a1, 0);
  v8 = *(a1 + 7);
LABEL_5:
  if (v8[35])
  {
    goto LABEL_8;
  }

  if (AppleBCMWLANIOReportingPerSlice::initScanModeSinceLinkUpReporter(a1, 1, a4))
  {
    AppleBCMWLANIOReportingPerSlice::reportScanModeStatsSinceLinkUp(a1);
    return v14;
  }

  *(*(a1 + 7) + 35) = 1;
  AppleBCMWLANIOReportingPerSlice::resetScanModeStats(a1, 1);
  v8 = *(a1 + 7);
LABEL_8:
  if (v8[36])
  {
    goto LABEL_11;
  }

  if (AppleBCMWLANIOReportingPerSlice::initScanModeSinceLinkUpReporter(a1, 2, a4))
  {
    AppleBCMWLANIOReportingPerSlice::reportScanModeStatsSinceLinkUp(a1);
    return v14;
  }

  *(*(a1 + 7) + 36) = 1;
  AppleBCMWLANIOReportingPerSlice::resetScanModeStats(a1, 2);
LABEL_11:
  switch(a3)
  {
    case 2:
      v9 = *(*(a1 + 7) + 1232);
      v11 = 0x516C5363616E4C50;
      goto LABEL_18;
    case 1:
      v9 = *(*(a1 + 7) + 8 * a2 + 1216);
      v10 = 0x536C5363616E4C53;
      goto LABEL_16;
    case 0:
      v9 = *(*(a1 + 7) + 8 * a2 + 1216);
      v10 = 0x536C5363616E4841;
LABEL_16:
      v11 = v10 ^ (a2 << 56);
LABEL_18:
      Value = IOSimpleReporter::getValue(v9, v11);
      IOSimpleReporter::setValue(v9, v11, Value + 1);
      break;
  }

  return 0;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportRxMpduWme(AppleBCMWLANBssManager *a1, unsigned int *a2, uint64_t a3)
{
  v6 = a3;
  v7 = *(*(a1 + 7) + 8 * a3 + 1304);
  if (v7)
  {
    v8 = a3 << 56;
LABEL_8:
    IOSimpleReporter::setValue(v7, v8 ^ 0x52584D5469643020, a2[1]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1304), v8 ^ 0x52584D5469643120, a2[2]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1304), v8 ^ 0x52584D5469643220, a2[3]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1304), v8 ^ 0x52584D5469643320, a2[4]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1304), v8 ^ 0x52584D5469643420, a2[5]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1304), v8 ^ 0x52584D5469643520, a2[6]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1304), v8 ^ 0x52584D5469643620, a2[7]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1304), v8 ^ 0x52584D5469643720, a2[8]);
    return 0;
  }

  v9 = IOMallocZeroData();
  if (v9)
  {
    v10 = v9;
    snprintf(v9, 0x32uLL, "%s Slice %d", "Rx MPDU WME", a3);
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
    ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
    *(*(a1 + 7) + 8 * v6 + 1304) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v13);
    if (!*(*(a1 + 7) + 8 * v6 + 1304))
    {
      IOFreeData();
      return 3758097085;
    }

    Reporter = AppleBCMWLANIOReporting::getReporter(a1);
    OSSet::setObject(Reporter, *(*(a1 + 7) + 8 * v6 + 1304));
    v15 = *(*(a1 + 7) + 8 * v6 + 1304);
    (*(*v15 + 16))(v15);
    v8 = a3 << 56;
    v16 = &off_1003C6E90;
    v17 = 8;
    do
    {
      IOReporter::addChannel(*(*(a1 + 7) + 8 * v6 + 1304), *(v16 - 1) ^ v8, *v16);
      v16 += 2;
      --v17;
    }

    while (v17);
    AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
    Target = AppleBCMWLANIOReporting::getTarget(a1);
    v20 = AppleBCMWLANBssManager::getCurrentBSS(a1);
    AddReporterCallback(Target, v20, *(*(a1 + 7) + 8 * v6 + 1304), v10, "Counters");
    IOFreeData();
    v7 = *(*(a1 + 7) + 8 * v6 + 1304);
    goto LABEL_8;
  }

  v21 = 3758097084;
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::reportRxMpduWme(a1);
    }
  }

  return v21;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportBTLECnxStats(AppleBCMWLANBssManager *a1, unsigned int *a2)
{
  v4 = *(*(a1 + 7) + 1296);
  if (v4)
  {
LABEL_7:
    IOSimpleReporter::setValue(v4, 0x4D455349686E2020uLL, *a2);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 1296), 0x4D4543496C732020uLL, a2[1]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 1296), 0x4D4550496C732020uLL, a2[2]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 1296), 0x4D45544964732020uLL, a2[3]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 1296), 0x4D45443064732020uLL, a2[4]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 1296), 0x4D45443164732020uLL, a2[5]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 1296), 0x4D45443264732020uLL, a2[6]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 1296), 0x4D45443364732020uLL, a2[7]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 1296), 0x4D45443464732020uLL, a2[8]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 1296), 0x4D45443564732020uLL, a2[9]);
    return 0;
  }

  v5 = IOMallocZeroData();
  if (v5)
  {
    v6 = v5;
    snprintf(v5, 0x32uLL, "%s Slice %d", "BT LE Connection Stats", 1);
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
    ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
    *(*(a1 + 7) + 1296) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v9);
    if (!*(*(a1 + 7) + 1296))
    {
      IOFreeData();
      return 3758097085;
    }

    Reporter = AppleBCMWLANIOReporting::getReporter(a1);
    OSSet::setObject(Reporter, *(*(a1 + 7) + 1296));
    (*(**(*(a1 + 7) + 1296) + 16))(*(*(a1 + 7) + 1296));
    v11 = &off_1003C6F10;
    v12 = 10;
    do
    {
      IOReporter::addChannel(*(*(a1 + 7) + 1296), *(v11 - 1) ^ 0x100000000000000, *v11);
      v11 += 2;
      --v12;
    }

    while (v12);
    AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
    Target = AppleBCMWLANIOReporting::getTarget(a1);
    v15 = AppleBCMWLANBssManager::getCurrentBSS(a1);
    AddReporterCallback(Target, v15, *(*(a1 + 7) + 1296), v6, "Counters");
    IOFreeData();
    v4 = *(*(a1 + 7) + 1296);
    goto LABEL_7;
  }

  v16 = 3758097084;
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::reportBTLECnxStats(a1);
    }
  }

  return v16;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportTxMpduWme(AppleBCMWLANBssManager *a1, unsigned int *a2, uint64_t a3)
{
  v6 = a3;
  v7 = *(*(a1 + 7) + 8 * a3 + 1320);
  if (v7)
  {
    v8 = a3 << 56;
LABEL_8:
    IOSimpleReporter::setValue(v7, v8 ^ 0x54584D5469643020, a2[1]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1320), v8 ^ 0x54584D5469643120, a2[2]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1320), v8 ^ 0x54584D5469643220, a2[3]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1320), v8 ^ 0x54584D5469643320, a2[4]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1320), v8 ^ 0x54584D5469643420, a2[5]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1320), v8 ^ 0x54584D5469643520, a2[6]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1320), v8 ^ 0x54584D5469643620, a2[7]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1320), v8 ^ 0x54584D5469643720, a2[8]);
    return 0;
  }

  v9 = IOMallocZeroData();
  if (v9)
  {
    v10 = v9;
    snprintf(v9, 0x32uLL, "%s Slice %d", "Tx MPDU WME", a3);
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
    ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
    *(*(a1 + 7) + 8 * v6 + 1320) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v13);
    if (!*(*(a1 + 7) + 8 * v6 + 1320))
    {
      IOFreeData();
      return 3758097085;
    }

    Reporter = AppleBCMWLANIOReporting::getReporter(a1);
    OSSet::setObject(Reporter, *(*(a1 + 7) + 8 * v6 + 1320));
    v15 = *(*(a1 + 7) + 8 * v6 + 1320);
    (*(*v15 + 16))(v15);
    v8 = a3 << 56;
    v16 = &off_1003C6FB0;
    v17 = 8;
    do
    {
      IOReporter::addChannel(*(*(a1 + 7) + 8 * v6 + 1320), *(v16 - 1) ^ v8, *v16);
      v16 += 2;
      --v17;
    }

    while (v17);
    AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
    Target = AppleBCMWLANIOReporting::getTarget(a1);
    v20 = AppleBCMWLANBssManager::getCurrentBSS(a1);
    AddReporterCallback(Target, v20, *(*(a1 + 7) + 8 * v6 + 1320), v10, "Counters");
    IOFreeData();
    v7 = *(*(a1 + 7) + 8 * v6 + 1320);
    goto LABEL_8;
  }

  v21 = 3758097084;
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::reportTxMpduWme(a1);
    }
  }

  return v21;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportRxMpduLost(AppleBCMWLANBssManager *a1, unsigned int *a2, uint64_t a3)
{
  v6 = a3;
  v7 = *(*(a1 + 7) + 8 * a3 + 1336);
  if (v7)
  {
    v8 = a3 << 56;
LABEL_8:
    IOSimpleReporter::setValue(v7, v8 ^ 0x52584C4254696430, a2[1]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1336), v8 ^ 0x52584C4254696431, a2[2]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1336), v8 ^ 0x52584C4254696432, a2[3]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1336), v8 ^ 0x52584C4254696433, a2[4]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1336), v8 ^ 0x52584C4254696434, a2[5]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1336), v8 ^ 0x52584C4254696435, a2[6]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1336), v8 ^ 0x52584C4254696436, a2[7]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1336), v8 ^ 0x52584C4254696437, a2[8]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1336), v8 ^ 0x52584C4E54696430, a2[9]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1336), v8 ^ 0x52584C4E54696431, a2[10]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1336), v8 ^ 0x52584C4E54696432, a2[11]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1336), v8 ^ 0x52584C4E54696433, a2[12]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1336), v8 ^ 0x52584C4E54696434, a2[13]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1336), v8 ^ 0x52584C4E54696435, a2[14]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1336), v8 ^ 0x52584C4E54696436, a2[15]);
    IOSimpleReporter::setValue(*(*(a1 + 7) + 8 * v6 + 1336), v8 ^ 0x52584C4E54696437, a2[16]);
    return 0;
  }

  v9 = IOMallocZeroData();
  if (v9)
  {
    v10 = v9;
    snprintf(v9, 0x32uLL, "%s Slice %d", "Rx MPDU Lost", a3);
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
    ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
    *(*(a1 + 7) + 8 * v6 + 1336) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v13);
    if (!*(*(a1 + 7) + 8 * v6 + 1336))
    {
      IOFreeData();
      return 3758097085;
    }

    Reporter = AppleBCMWLANIOReporting::getReporter(a1);
    OSSet::setObject(Reporter, *(*(a1 + 7) + 8 * v6 + 1336));
    v15 = *(*(a1 + 7) + 8 * v6 + 1336);
    (*(*v15 + 16))(v15);
    v8 = a3 << 56;
    v16 = &off_1003C7030;
    v17 = 16;
    do
    {
      IOReporter::addChannel(*(*(a1 + 7) + 8 * v6 + 1336), *(v16 - 1) ^ v8, *v16);
      v16 += 2;
      --v17;
    }

    while (v17);
    AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
    Target = AppleBCMWLANIOReporting::getTarget(a1);
    v20 = AppleBCMWLANBssManager::getCurrentBSS(a1);
    AddReporterCallback(Target, v20, *(*(a1 + 7) + 8 * v6 + 1336), v10, "Counters");
    IOFreeData();
    v7 = *(*(a1 + 7) + 8 * v6 + 1336);
    goto LABEL_8;
  }

  v21 = 3758097084;
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::reportRxMpduLost(a1);
    }
  }

  return v21;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportHeCntPerSlice(AppleBCMWLANIOReporting *a1, OSData *this, uint64_t a3)
{
  v141 = 0;
  if (a3 >= 2)
  {
    AppleBCMWLANIOReportingPerSlice::reportHeCntPerSlice(a1);
    return v141;
  }

  v6 = *(a1 + 7);
  v7 = a3;
  if ((*(v6 + a3 + 20) & 1) == 0)
  {
    if (AppleBCMWLANIOReportingPerSlice::initWlCntReporter(a1, a3))
    {
      AppleBCMWLANIOReportingPerSlice::reportHeCntPerSlice(a1);
      return -536870212;
    }

    *(*(a1 + 7) + a3 + 20) = 1;
    v6 = *(a1 + 7);
  }

  if (*(v6 + a3 + 37))
  {
    goto LABEL_8;
  }

  if (AppleBCMWLANIOReportingPerSlice::initWlCntSliceFrameReporter(a1, a3))
  {
    AppleBCMWLANIOReportingPerSlice::reportHeCntPerSlice(a1);
    return -536870212;
  }

  *(*(a1 + 7) + a3 + 37) = 1;
  v6 = *(a1 + 7);
LABEL_8:
  if (*(v6 + a3 + 1400))
  {
    goto LABEL_11;
  }

  if (AppleBCMWLANIOReportingPerSlice::initHeWlCntReporter(a1, a3))
  {
    AppleBCMWLANIOReportingPerSlice::reportHeCntPerSlice(a1);
    return -536870212;
  }

  *(*(a1 + 7) + a3 + 1400) = 1;
LABEL_11:
  Length = OSData::getLength(this);
  v9 = OSData::getLength(this);
  v10 = OSData::getLength(this) == 224;
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(a1 + 7) + 1504)) == 21)
  {
    v10 = OSData::getLength(this) == 404;
  }

  if (Length != 200 && v9 != 220 && !v10)
  {
    AppleBCMWLANIOReportingPerSlice::reportHeCntPerSlice(a1);
    return v141;
  }

  v137 = Length == 200;
  v139 = v9;
  v140 = Length;
  v11 = v9 == 220 || v10;
  v12 = *(*(a1 + 7) + 8 * a3 + 312);
  v138 = v11;
  if (Length == 200)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == 1)
  {
    CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x20uLL);
  }

  else
  {
    CounterValueSafe = 0;
  }

  v15 = a3 << 56;
  IOSimpleReporter::setValue(v12, (a3 << 56) ^ 0x536C547846726167, CounterValueSafe);
  v16 = *(*(a1 + 7) + 8 * a3 + 328);
  if (v13)
  {
    v17 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x24uLL);
  }

  else
  {
    v17 = 0;
  }

  IOSimpleReporter::setValue(v16, v15 ^ 0x536C527844467261, v17);
  v18 = *(*(a1 + 7) + 8 * v7 + 344);
  if (v13)
  {
    v19 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0xCuLL);
  }

  else
  {
    v19 = 0;
  }

  IOSimpleReporter::setValue(v18, v15 ^ 0x536C436C724D6973, v19);
  v20 = *(*(a1 + 7) + 8 * v7 + 360);
  if (v13)
  {
    if (v10)
    {
      v21 = 156;
    }

    else
    {
      v21 = 160;
    }

    v22 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v21);
  }

  else
  {
    v22 = 0;
  }

  IOSimpleReporter::setValue(v20, v15 ^ 0x536C547267454443, v22);
  v23 = *(*(a1 + 7) + 8 * v7 + 376);
  if (v13)
  {
    if (v10)
    {
      v24 = 160;
    }

    else
    {
      v24 = 164;
    }

    v25 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v24);
  }

  else
  {
    v25 = 0;
  }

  IOSimpleReporter::setValue(v23, v15 ^ 0x536C5772674E5353, v25);
  v26 = *(*(a1 + 7) + 8 * v7 + 376);
  if (v13)
  {
    if (v10)
    {
      v27 = 164;
    }

    else
    {
      v27 = 168;
    }

    v28 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v27);
  }

  else
  {
    v28 = 0;
  }

  IOSimpleReporter::setValue(v26, v15 ^ 0x536C555354726752, v28);
  v29 = *(*(a1 + 7) + 8 * v7 + 1368);
  if (v13)
  {
    if (v10)
    {
      v30 = 104;
    }

    else
    {
      v30 = 108;
    }

    v31 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v30);
  }

  else
  {
    v31 = 0;
  }

  IOSimpleReporter::setValue(v29, v15 ^ 0x536C527852753236, v31);
  v32 = *(*(a1 + 7) + 8 * v7 + 1368);
  if (v13)
  {
    if (v10)
    {
      v33 = 108;
    }

    else
    {
      v33 = 112;
    }

    v34 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v33);
  }

  else
  {
    v34 = 0;
  }

  IOSimpleReporter::setValue(v32, v15 ^ 0x536C527852753532, v34);
  v35 = *(*(a1 + 7) + 8 * v7 + 1368);
  if (v13)
  {
    if (v10)
    {
      v36 = 112;
    }

    else
    {
      v36 = 116;
    }

    v37 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v36);
  }

  else
  {
    v37 = 0;
  }

  IOSimpleReporter::setValue(v35, v15 ^ 0x536C527852753036, v37);
  v38 = *(*(a1 + 7) + 8 * v7 + 1368);
  if (v13)
  {
    if (v10)
    {
      v39 = 116;
    }

    else
    {
      v39 = 120;
    }

    v40 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v39);
  }

  else
  {
    v40 = 0;
  }

  IOSimpleReporter::setValue(v38, v15 ^ 0x536C527852753432, v40);
  v41 = *(*(a1 + 7) + 8 * v7 + 1368);
  if (v13)
  {
    if (v10)
    {
      v42 = 120;
    }

    else
    {
      v42 = 124;
    }

    v43 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v42);
  }

  else
  {
    v43 = 0;
  }

  IOSimpleReporter::setValue(v41, v15 ^ 0x536C527852753834, v43);
  v44 = *(*(a1 + 7) + 8 * v7 + 1368);
  if (v10)
  {
    v45 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x7CuLL);
    IOSimpleReporter::setValue(v44, v15 ^ 0x536C527852753936, v45);
    v46 = *(*(a1 + 7) + 8 * v7 + 1368);
    v47 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0xC4uLL);
    IOSimpleReporter::setValue(v46, v15 ^ 0x536C527852756136, v47);
    v48 = *(*(a1 + 7) + 8 * v7 + 1352);
    v49 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x80uLL);
    v50 = 1;
    v51 = 132;
  }

  else
  {
    if (v139 == 220)
    {
      v52 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x80uLL);
      IOSimpleReporter::setValue(v44, v15 ^ 0x536C527852753936, v52);
      v48 = *(*(a1 + 7) + 8 * v7 + 1352);
      v49 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x84uLL);
      v50 = 1;
    }

    else if (Length == 200)
    {
      v53 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x80uLL);
      IOSimpleReporter::setValue(v44, v15 ^ 0x536C527852753936, v53);
      v48 = *(*(a1 + 7) + 8 * v7 + 1352);
      v49 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x84uLL);
      v50 = 0;
    }

    else
    {
      IOSimpleReporter::setValue(v44, v15 ^ 0x536C527852753936, 0);
      v50 = 0;
      v49 = 0;
      v48 = *(*(a1 + 7) + 8 * v7 + 1352);
    }

    v51 = 136;
  }

  IOSimpleReporter::setValue(v48, v15 ^ 0x536C547852753236, v49);
  v54 = *(*(a1 + 7) + 8 * v7 + 1352);
  if ((v50 & 1) != 0 || v140 == 200)
  {
    if (v50)
    {
      v56 = v51;
    }

    else
    {
      v56 = 136;
    }

    v55 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v56);
  }

  else
  {
    v55 = 0;
  }

  IOSimpleReporter::setValue(v54, v15 ^ 0x536C547852753532, v55);
  v57 = *(*(a1 + 7) + 8 * v7 + 1352);
  if (v13)
  {
    if (v10)
    {
      v58 = 136;
    }

    else
    {
      v58 = 140;
    }

    v59 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v58);
  }

  else
  {
    v59 = 0;
  }

  IOSimpleReporter::setValue(v57, v15 ^ 0x536C547852753036, v59);
  v60 = *(*(a1 + 7) + 8 * v7 + 1352);
  if (v13)
  {
    if (v10)
    {
      v61 = 140;
    }

    else
    {
      v61 = 144;
    }

    v62 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v61);
  }

  else
  {
    v62 = 0;
  }

  IOSimpleReporter::setValue(v60, v15 ^ 0x536C547852753432, v62);
  v63 = *(*(a1 + 7) + 8 * v7 + 1352);
  if (v10)
  {
    v64 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x90uLL);
    IOSimpleReporter::setValue(v63, v15 ^ 0x536C547852753834, v64);
    v63 = *(*(a1 + 7) + 8 * v7 + 1352);
    v65 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0xDCuLL);
    v66 = v15 ^ 0x536C547852756136;
LABEL_110:
    IOSimpleReporter::setValue(v63, v66, v65);
    v67 = *(*(a1 + 7) + 8 * v7 + 472);
    v68 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x28uLL);
    v69 = 1;
    goto LABEL_115;
  }

  if (v139 == 220)
  {
    v65 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x94uLL);
    v66 = v15 ^ 0x536C547852753834;
    goto LABEL_110;
  }

  if (v140 == 200)
  {
    v70 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x94uLL);
    IOSimpleReporter::setValue(v63, v15 ^ 0x536C547852753834, v70);
    v67 = *(*(a1 + 7) + 8 * v7 + 472);
    v68 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x28uLL);
  }

  else
  {
    IOSimpleReporter::setValue(v63, v15 ^ 0x536C547852753834, 0);
    v68 = 0;
    v67 = *(*(a1 + 7) + 8 * v7 + 472);
  }

  v69 = v137;
LABEL_115:
  IOSimpleReporter::setValue(v67, v15 ^ 0x536C547854726967, v68);
  v71 = *(*(a1 + 7) + 8 * v7 + 472);
  if (v69)
  {
    v72 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x14uLL);
  }

  else
  {
    v72 = 0;
  }

  IOSimpleReporter::setValue(v71, v15 ^ 0x536C54784D42616BLL, v72);
  v73 = *(*(a1 + 7) + 8 * v7 + 488);
  if (v13)
  {
    v74 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x18uLL);
  }

  else
  {
    v74 = 0;
  }

  IOSimpleReporter::setValue(v73, v15 ^ 0x536C52784D42616BLL, v74);
  v75 = *(*(a1 + 7) + 8 * v7 + 488);
  if (v13)
  {
    v76 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x1CuLL);
  }

  else
  {
    v76 = 0;
  }

  IOSimpleReporter::setValue(v75, v15 ^ 0x536C52784D53426BLL, v76);
  v77 = *(*(a1 + 7) + 8 * v7 + 488);
  if (v13)
  {
    v78 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 4uLL);
  }

  else
  {
    v78 = 0;
  }

  IOSimpleReporter::setValue(v77, v15 ^ 0x536C52784D416964, v78);
  v79 = *(*(a1 + 7) + 8 * v7 + 488);
  if (v13)
  {
    v80 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 8uLL);
  }

  else
  {
    v80 = 0;
  }

  IOSimpleReporter::setValue(v79, v15 ^ 0x536C527852616E64, v80);
  v81 = *(*(a1 + 7) + 8 * v7 + 488);
  if (v13)
  {
    v82 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x2CuLL);
  }

  else
  {
    v82 = 0;
  }

  IOSimpleReporter::setValue(v81, v15 ^ 0x536C527842547267, v82);
  v83 = *(*(a1 + 7) + 8 * v7 + 488);
  if (v13)
  {
    v84 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x30uLL);
  }

  else
  {
    v84 = 0;
  }

  IOSimpleReporter::setValue(v83, v15 ^ 0x536C52785472674DLL, v84);
  v85 = *(*(a1 + 7) + 8 * v7 + 488);
  if (v13)
  {
    v86 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x34uLL);
  }

  else
  {
    v86 = 0;
  }

  IOSimpleReporter::setValue(v85, v15 ^ 0x536C527854726742, v86);
  v87 = *(*(a1 + 7) + 8 * v7 + 488);
  if (v13)
  {
    if (v10)
    {
      v88 = 168;
    }

    else
    {
      v88 = 172;
    }

    v89 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v88);
  }

  else
  {
    v89 = 0;
  }

  IOSimpleReporter::setValue(v87, v15 ^ 0x536C5472674E4652, v89);
  v90 = *(*(a1 + 7) + 8 * v7 + 488);
  if (v13)
  {
    if (v10)
    {
      v91 = 172;
    }

    else
    {
      v91 = 176;
    }

    v92 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v91);
  }

  else
  {
    v92 = 0;
  }

  IOSimpleReporter::setValue(v90, v15 ^ 0x536C547267424752, v92);
  v93 = *(*(a1 + 7) + 8 * v7 + 488);
  if (v13)
  {
    if (v10)
    {
      v94 = 100;
    }

    else
    {
      v94 = 104;
    }

    v95 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v94);
  }

  else
  {
    v95 = 0;
  }

  IOSimpleReporter::setValue(v93, v15 ^ 0x536C5478544D7542, v95);
  v96 = *(*(a1 + 7) + 8 * v7 + 488);
  if (v13)
  {
    if (v10)
    {
      v97 = 176;
    }

    else
    {
      v97 = 180;
    }

    v98 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v97);
  }

  else
  {
    v98 = 0;
  }

  IOSimpleReporter::setValue(v96, v15 ^ 0x536C547267474352, v98);
  v99 = *(*(a1 + 7) + 8 * v7 + 488);
  if (v13)
  {
    if (v10)
    {
      v100 = 96;
    }

    else
    {
      v100 = 100;
    }

    v101 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v100);
  }

  else
  {
    v101 = 0;
  }

  IOSimpleReporter::setValue(v99, v15 ^ 0x536C527842464D43, v101);
  v102 = *(*(a1 + 7) + 8 * v7 + 504);
  if (v13)
  {
    v103 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x44uLL);
  }

  else
  {
    v103 = 0;
  }

  IOSimpleReporter::setValue(v102, v15 ^ 0x536C547850504455, v103);
  v104 = *(*(a1 + 7) + 8 * v7 + 504);
  if (v13)
  {
    v105 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x48uLL);
  }

  else
  {
    v105 = 0;
  }

  IOSimpleReporter::setValue(v104, v15 ^ 0x536C54784E504455, v105);
  v106 = *(*(a1 + 7) + 8 * v7 + 504);
  if (v13)
  {
    if (v10)
    {
      v107 = 152;
    }

    else
    {
      v107 = 156;
    }

    v108 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v107);
  }

  else
  {
    v108 = 0;
  }

  IOSimpleReporter::setValue(v106, v15 ^ 0x536C4D676D745050, v108);
  v109 = *(*(a1 + 7) + 8 * v7 + 504);
  if (v13)
  {
    v110 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x10uLL);
  }

  else
  {
    v110 = 0;
  }

  IOSimpleReporter::setValue(v109, v15 ^ 0x536C54784D614D50, v110);
  v111 = *(*(a1 + 7) + 8 * v7 + 504);
  if (v13)
  {
    v112 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x54uLL);
  }

  else
  {
    v112 = 0;
  }

  IOSimpleReporter::setValue(v111, v15 ^ 0x536C54784E414D50, v112);
  v113 = *(*(a1 + 7) + 8 * v7 + 504);
  if (v13)
  {
    v114 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x58uLL);
  }

  else
  {
    v114 = 0;
  }

  IOSimpleReporter::setValue(v113, v15 ^ 0x536C54784E425352, v114);
  v115 = *(*(a1 + 7) + 8 * v7 + 504);
  if ((v138 & 1) == 0)
  {
    if (v140 != 200)
    {
      v134 = v15 ^ 0x536C54784E6E6F46;
      v135 = *(*(a1 + 7) + 8 * v7 + 504);
      v133 = 0;
      goto LABEL_213;
    }

    v122 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x5CuLL);
    IOSimpleReporter::setValue(v115, v15 ^ 0x536C54784E6E6F46, v122);
    goto LABEL_204;
  }

  v116 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x5CuLL);
  IOSimpleReporter::setValue(v115, v15 ^ 0x536C54784E6E6F46, v116);
  v117 = *(*(a1 + 7) + 8 * v7 + 504);
  if (v10)
  {
    v118 = 184;
  }

  else
  {
    v118 = 192;
  }

  v119 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v118);
  IOSimpleReporter::setValue(v117, v15 ^ 0x536C54726753754ELL, v119);
  v121 = v140 == 200 || v139 == 220;
  if (v121 || v10)
  {
LABEL_204:
    v123 = *(*(a1 + 7) + 8 * v7 + 520);
    v124 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x4CuLL);
    IOSimpleReporter::setValue(v123, v15 ^ 0x536C527853504455, v124);
    v125 = *(*(a1 + 7) + 8 * v7 + 520);
    v126 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x50uLL);
    IOSimpleReporter::setValue(v125, v15 ^ 0x536C527852457874, v126);
    v127 = *(*(a1 + 7) + 8 * v7 + 520);
    v128 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0x38uLL);
    IOSimpleReporter::setValue(v127, v15 ^ 0x536C52784D505044, v128);
  }

  if (v139 == 220)
  {
    v129 = *(*(a1 + 7) + 8 * v7 + 488);
    v130 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, 0xBCuLL);
    IOSimpleReporter::setValue(v129, v15 ^ 0x536C527842464D44, v130);
    if (v10)
    {
      v131 = 180;
    }

    else
    {
      v131 = 184;
    }

    goto LABEL_211;
  }

  if (v10)
  {
    v131 = 180;
LABEL_211:
    v132 = *(*(a1 + 7) + 8 * v7 + 488);
    v133 = AppleBCMWLANUtil::getCounterValueSafe(&v141, 4uLL, this, v131);
    v134 = v15 ^ 0x536C547267424854;
    v135 = v132;
LABEL_213:
    IOSimpleReporter::setValue(v135, v134, v133);
  }

  return v141;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initOmiReporter(AppleBCMWLANBssManager *a1, uint64_t a2)
{
  v4 = IOMallocZeroData();
  v5 = v4;
  if (v4)
  {
    if (a2 < 2)
    {
      v6 = 3758097084;
      snprintf(v4, 0x32uLL, "%s %d", "Slice", a2);
      if (*(*(a1 + 7) + 8 * a2 + 1384))
      {
LABEL_9:
        IOFreeData();
        return v6;
      }

      v7 = a2;
      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
      ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
      *(*(a1 + 7) + 8 * a2 + 1384) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v10);
      if (!*(*(a1 + 7) + 8 * a2 + 1384))
      {
        v6 = 3758097085;
        goto LABEL_9;
      }

      Reporter = AppleBCMWLANIOReporting::getReporter(a1);
      OSSet::setObject(Reporter, *(*(a1 + 7) + 8 * a2 + 1384));
      v12 = *(*(a1 + 7) + 8 * a2 + 1384);
      (*(*v12 + 16))(v12);
      v13 = a2 << 56;
      v14 = &off_1003C7310;
      v15 = 16;
      do
      {
        IOReporter::addChannel(*(*(a1 + 7) + 8 * v7 + 1384), *(v14 - 1) ^ v13, *v14);
        v14 += 2;
        --v15;
      }

      while (v15);
      AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
      Target = AppleBCMWLANIOReporting::getTarget(a1);
      v18 = AppleBCMWLANBssManager::getCurrentBSS(a1);
      v6 = AddReporterCallback(Target, v18, *(*(a1 + 7) + 8 * v7 + 1384), v5, "OMI Counters");
      goto LABEL_8;
    }
  }

  else if (a2 <= 1)
  {
    v6 = 3758097084;
    if (AppleBCMWLANIOReporting::getLogger(a1))
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReportingPerSlice::initOmiReporter(a1);
      }
    }

    return v6;
  }

  v6 = 3758097084;
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      CCLogStream::logEmergency(Logger, "[dk] %s@%d:Out of range slice index %d\n", "initOmiReporter", 3297, a2);
    }
  }

LABEL_8:
  if (v5)
  {
    goto LABEL_9;
  }

  return v6;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportOmiCntPerSlice(AppleBCMWLANIOReporting *a1, OSData *this, uint64_t a3)
{
  inited = 0;
  if (a3 >= 2)
  {
    AppleBCMWLANIOReportingPerSlice::reportOmiCntPerSlice(a1);
    return v40;
  }

  if ((*(*(a1 + 7) + a3 + 1402) & 1) == 0)
  {
    inited = AppleBCMWLANIOReportingPerSlice::initOmiReporter(a1, a3);
    if (inited)
    {
      AppleBCMWLANIOReportingPerSlice::reportOmiCntPerSlice(a1);
      return v40;
    }

    *(*(a1 + 7) + a3 + 1402) = 1;
  }

  if (OSData::getLength(this) != 68)
  {
    AppleBCMWLANIOReportingPerSlice::reportOmiCntPerSlice(a1, this, &v40);
    return v40;
  }

  v6 = *(*(a1 + 7) + 8 * a3 + 1384);
  CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 4uLL);
  IOSimpleReporter::setValue(v6, (a3 << 56) ^ 0x53546E4F4D495363, CounterValueSafe);
  v8 = *(*(a1 + 7) + 8 * a3 + 1384);
  v9 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 8uLL);
  IOSimpleReporter::setValue(v8, (a3 << 56) ^ 0x5354785375636373, v9);
  v10 = *(*(a1 + 7) + 8 * a3 + 1384);
  v11 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0xCuLL);
  IOSimpleReporter::setValue(v10, (a3 << 56) ^ 0x5354785265747279, v11);
  v12 = *(*(a1 + 7) + 8 * a3 + 1384);
  v13 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x10uLL);
  IOSimpleReporter::setValue(v12, (a3 << 56) ^ 0x5354784475726174, v13);
  v14 = *(*(a1 + 7) + 8 * a3 + 1384);
  v15 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x14uLL);
  IOSimpleReporter::setValue(v14, (a3 << 56) ^ 0x53554C4D75436667, v15);
  v16 = *(*(a1 + 7) + 8 * a3 + 1384);
  v17 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x18uLL);
  IOSimpleReporter::setValue(v16, (a3 << 56) ^ 0x53554C4D75436641, v17);
  v18 = *(*(a1 + 7) + 8 * a3 + 1384);
  v19 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x1CuLL);
  IOSimpleReporter::setValue(v18, (a3 << 56) ^ 0x5354784E53535320, v19);
  v20 = *(*(a1 + 7) + 8 * a3 + 1384);
  v21 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x20uLL);
  IOSimpleReporter::setValue(v20, (a3 << 56) ^ 0x5354784E53535341, v21);
  v22 = *(*(a1 + 7) + 8 * a3 + 1384);
  v23 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x24uLL);
  IOSimpleReporter::setValue(v22, (a3 << 56) ^ 0x5352784E53535320, v23);
  v24 = *(*(a1 + 7) + 8 * a3 + 1384);
  v25 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x28uLL);
  IOSimpleReporter::setValue(v24, (a3 << 56) ^ 0x5352784E53535341, v25);
  v26 = *(*(a1 + 7) + 8 * a3 + 1384);
  v27 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x2CuLL);
  IOSimpleReporter::setValue(v26, (a3 << 56) ^ 0x5354784257202020, v27);
  v28 = *(*(a1 + 7) + 8 * a3 + 1384);
  v29 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x30uLL);
  IOSimpleReporter::setValue(v28, (a3 << 56) ^ 0x535478425741636BLL, v29);
  v30 = *(*(a1 + 7) + 8 * a3 + 1384);
  v31 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x34uLL);
  IOSimpleReporter::setValue(v30, (a3 << 56) ^ 0x5354784572537520, v31);
  v32 = *(*(a1 + 7) + 8 * a3 + 1384);
  v33 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x38uLL);
  IOSimpleReporter::setValue(v32, (a3 << 56) ^ 0x5354784572537541, v33);
  v34 = *(*(a1 + 7) + 8 * a3 + 1384);
  v35 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x3CuLL);
  IOSimpleReporter::setValue(v34, (a3 << 56) ^ 0x53446C4D75525220, v35);
  v36 = *(*(a1 + 7) + 8 * a3 + 1384);
  v37 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x40uLL);
  IOSimpleReporter::setValue(v36, (a3 << 56) ^ 0x53446C4D75525241, v37);
  return inited;
}

uint64_t AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(AppleBCMWLANIOReporting *a1, uint64_t a2, unsigned int a3)
{
  v6 = IOMallocZeroData();
  if (v6)
  {
    v7 = v6;
    v8 = a3;
    if (*(*(a1 + 7) + 8 * a3 + 968) || (*(*(a1 + 7) + 8 * a3 + 968) = OSDictionary::withCapacity(0xCu), *(*(a1 + 7) + 50) = 1, *(*(a1 + 7) + 8 * a3 + 968)))
    {
      AppleBCMWLANChanSpecHandle = AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
      AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(AppleBCMWLANChanSpecHandle, a2);
      AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
      AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v7, 0x32u);
      if (!*v7)
      {
        strcpy(v7, "UnknownChan");
      }

      if (strnlen(v7, 0x32uLL) >= 0x32)
      {
        AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
      }

      else
      {
        v11 = OSString::withCString(v7);
        if (v11)
        {
          v12 = v11;
          Object = OSDictionary::getObject(*(*(a1 + 7) + 8 * v8 + 968), v11);
          aKey = v12;
          if (Object)
          {
            v14 = OSDictionary::getObject(*(*(a1 + 7) + 8 * v8 + 968), v12);
            v15 = OSMetaClassBase::safeMetaCast(v14, gOSDictionaryMetaClass);
            if (!v15)
            {
              if (AppleBCMWLANIOReporting::getLogger(a1))
              {
                AppleBCMWLANIOReporting::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                }
              }

LABEL_117:
              v59 = 0;
              v60 = 0;
              v48 = 0;
              v15 = 0;
              v49 = 0;
              v23 = 0;
              v50 = 0;
              v66 = 0;
              v33 = 0;
              v51 = 0;
              v65 = 0;
              v67 = 0;
              v40 = 0;
              v64 = 0;
              v45 = 0;
              goto LABEL_163;
            }
          }

          else
          {
            v17 = OSDictionary::withCapacity(1u);
            if (!v17)
            {
              if (AppleBCMWLANIOReporting::getLogger(a1))
              {
                AppleBCMWLANIOReporting::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                }
              }

              goto LABEL_117;
            }

            v15 = v17;
            *(*(a1 + 7) + 50) = 1;
          }

          v18 = OSDictionary::getObject(v15, *(*(a1 + 7) + 1464));
          v63 = v18 == 0;
          if (!v18)
          {
            v19 = OSNumber::withNumber(a2, 0x10uLL);
            if (v19)
            {
              v20 = v19;
              if (OSDictionary::setObject(v15, *(*(a1 + 7) + 1464), v19))
              {
                (v20->release)(v20);
                *(*(a1 + 7) + 50) = 1;
                goto LABEL_22;
              }

              v59 = v20;
              if (AppleBCMWLANIOReporting::getLogger(a1))
              {
                AppleBCMWLANIOReporting::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                }
              }

              v23 = 0;
              v50 = 0;
              v60 = 0;
              v66 = 0;
              v33 = 0;
              v51 = 0;
              v65 = 0;
              v67 = 0;
              v40 = 0;
              v64 = 0;
              v45 = 0;
              v48 = 1;
            }

            else
            {
              if (AppleBCMWLANIOReporting::getLogger(a1))
              {
                AppleBCMWLANIOReporting::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                }
              }

              v59 = 0;
              v60 = 0;
              v48 = 0;
              v23 = 0;
              v50 = 0;
              v66 = 0;
              v33 = 0;
              v51 = 0;
              v65 = 0;
              v67 = 0;
              v40 = 0;
              v64 = 0;
              v45 = 0;
            }

            v49 = Object == 0;
            goto LABEL_163;
          }

LABEL_22:
          v21 = OSDictionary::getObject(v15, *(*(a1 + 7) + 1408));
          v62 = v21 == 0;
          if (v21)
          {
            v22 = OSDictionary::getObject(v15, *(*(a1 + 7) + 1408));
            v23 = OSMetaClassBase::safeMetaCast(v22, gOSDictionaryMetaClass);
            if (!v23)
            {
              if (AppleBCMWLANIOReporting::getLogger(a1))
              {
                AppleBCMWLANIOReporting::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                }
              }

LABEL_125:
              v59 = 0;
              v60 = 0;
              v23 = 0;
              v50 = 0;
              v66 = 0;
              v33 = 0;
              v51 = 0;
              v65 = 0;
              v67 = 0;
              v40 = 0;
              v64 = 0;
              v45 = 0;
              v48 = v63;
              v49 = Object == 0;
              goto LABEL_163;
            }
          }

          else
          {
            v24 = OSDictionary::withCapacity(3u);
            if (!v24)
            {
              if (AppleBCMWLANIOReporting::getLogger(a1))
              {
                AppleBCMWLANIOReporting::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                }
              }

              goto LABEL_125;
            }

            v23 = v24;
            *(*(a1 + 7) + 50) = 1;
          }

          v25 = OSDictionary::getObject(v23, *(*(a1 + 7) + 1416));
          v26 = v25 == 0;
          if (v25)
          {
            v27 = OSDictionary::getObject(v23, *(*(a1 + 7) + 1416));
            if (!OSMetaClassBase::safeMetaCast(v27, gOSNumberMetaClass))
            {
              if (AppleBCMWLANIOReporting::getLogger(a1))
              {
                AppleBCMWLANIOReporting::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                }
              }

LABEL_134:
              v59 = 0;
              v60 = 0;
              v66 = 0;
              v33 = 0;
              v51 = 0;
              v65 = 0;
              v67 = 0;
              v40 = 0;
              v64 = 0;
              v45 = 0;
LABEL_139:
              v48 = v63;
              v49 = Object == 0;
              v50 = v62;
              goto LABEL_163;
            }
          }

          else
          {
            v28 = OSNumber::withNumber(0, 0x40uLL);
            if (!v28)
            {
              if (AppleBCMWLANIOReporting::getLogger(a1))
              {
                AppleBCMWLANIOReporting::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                }
              }

              goto LABEL_134;
            }

            v29 = v28;
            *(*(a1 + 7) + 50) = 1;
            if (!OSDictionary::setObject(v23, *(*(a1 + 7) + 1416), v28))
            {
              v60 = v29;
              if (AppleBCMWLANIOReporting::getLogger(a1))
              {
                AppleBCMWLANIOReporting::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                }
              }

              v59 = 0;
              v33 = 0;
              v51 = 0;
              v65 = 0;
              v67 = 0;
              v40 = 0;
              v64 = 0;
              v45 = 0;
              v66 = 1;
              goto LABEL_139;
            }

            (v29->release)(v29);
          }

          v30 = OSDictionary::getObject(v23, *(*(a1 + 7) + 1424));
          v61 = v30 == 0;
          v66 = v26;
          if (v30)
          {
            v31 = OSDictionary::getObject(v23, *(*(a1 + 7) + 1424));
            if (!OSMetaClassBase::safeMetaCast(v31, gOSNumberMetaClass))
            {
              if (AppleBCMWLANIOReporting::getLogger(a1))
              {
                AppleBCMWLANIOReporting::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                }
              }

LABEL_143:
              v59 = 0;
              v60 = 0;
              v33 = 0;
              v65 = 0;
              v67 = 0;
              v40 = 0;
              v64 = 0;
              v45 = 0;
              v48 = v63;
              v49 = Object == 0;
              v50 = v62;
              v51 = 0;
              goto LABEL_163;
            }
          }

          else
          {
            v32 = OSNumber::withNumber(0, 0x40uLL);
            if (!v32)
            {
              if (AppleBCMWLANIOReporting::getLogger(a1))
              {
                AppleBCMWLANIOReporting::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                }
              }

              goto LABEL_143;
            }

            v33 = v32;
            *(*(a1 + 7) + 50) = 1;
            if (!OSDictionary::setObject(v23, *(*(a1 + 7) + 1424), v32))
            {
              if (AppleBCMWLANIOReporting::getLogger(a1))
              {
                AppleBCMWLANIOReporting::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                }
              }

              v59 = 0;
              v60 = 0;
              v65 = 0;
              v67 = 0;
              v40 = 0;
              v64 = 0;
              v45 = 0;
              v48 = v63;
              v49 = Object == 0;
              v50 = v62;
              v51 = 1;
              goto LABEL_163;
            }

            (v33->release)(v33);
          }

          v34 = OSDictionary::getObject(v23, *(*(a1 + 7) + 1432));
          BYTE4(v67) = v34 == 0;
          if (v34)
          {
            v35 = OSDictionary::getObject(v23, *(*(a1 + 7) + 1432));
            v36 = OSMetaClassBase::safeMetaCast(v35, gOSDictionaryMetaClass);
            if (v36)
            {
              v37 = v36;
              if (OSDictionary::getObject(v23, *(*(a1 + 7) + 1432)))
              {
                goto LABEL_53;
              }

              goto LABEL_50;
            }

            if (AppleBCMWLANIOReporting::getLogger(a1))
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
              }
            }
          }

          else
          {
            v37 = OSDictionary::withCapacity(0x10u);
            if (v37)
            {
LABEL_50:
              *(*(a1 + 7) + 50) = 1;
              if (!OSDictionary::setObject(v23, *(*(a1 + 7) + 1432), v37))
              {
                v65 = v37;
                if (AppleBCMWLANIOReporting::getLogger(a1))
                {
                  AppleBCMWLANIOReporting::getLogger(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                  }
                }

                goto LABEL_155;
              }

              if (!v34)
              {
                (v37->release)(v37);
                v37 = 0;
              }

LABEL_53:
              v65 = v37;
              if (!v21 || !OSDictionary::getObject(v15, *(*(a1 + 7) + 1408)))
              {
                *(*(a1 + 7) + 50) = 1;
                if (!OSDictionary::setObject(v15, *(*(a1 + 7) + 1408), v23))
                {
                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                    }
                  }

                  goto LABEL_155;
                }

                if (!v21)
                {
                  (v23->release)(v23);
                  v23 = 0;
                }
              }

              v38 = OSDictionary::getObject(v15, *(*(a1 + 7) + 1448));
              if (v38)
              {
                v39 = OSDictionary::getObject(v15, *(*(a1 + 7) + 1448));
                v40 = OSMetaClassBase::safeMetaCast(v39, gOSDictionaryMetaClass);
                if (!v40)
                {
                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                    }
                  }

LABEL_155:
                  v59 = 0;
                  v60 = 0;
                  v33 = 0;
                  goto LABEL_156;
                }
              }

              else
              {
                v41 = OSDictionary::withCapacity(3u);
                if (!v41)
                {
                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                    }
                  }

                  goto LABEL_155;
                }

                v40 = v41;
                *(*(a1 + 7) + 50) = 1;
              }

              v64 = v38 == 0;
              v42 = OSDictionary::getObject(v40, *(*(a1 + 7) + 1456));
              LOBYTE(v67) = v42 == 0;
              if (v42)
              {
                v43 = OSDictionary::getObject(v40, *(*(a1 + 7) + 1456));
                v44 = OSMetaClassBase::safeMetaCast(v43, gOSDictionaryMetaClass);
                if (v44)
                {
                  v45 = v44;
                  if (OSDictionary::getObject(v40, *(*(a1 + 7) + 1456)))
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_71;
                }

                if (AppleBCMWLANIOReporting::getLogger(a1))
                {
                  AppleBCMWLANIOReporting::getLogger(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                  }
                }
              }

              else
              {
                v46 = OSDictionary::withCapacity(0x10u);
                if (v46)
                {
                  v45 = v46;
                  *(*(a1 + 7) + 50) = 1;
LABEL_71:
                  *(*(a1 + 7) + 50) = 1;
                  if (!OSDictionary::setObject(v40, *(*(a1 + 7) + 1456), v45))
                  {
                    if (AppleBCMWLANIOReporting::getLogger(a1))
                    {
                      AppleBCMWLANIOReporting::getLogger(a1);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                      }
                    }

                    goto LABEL_111;
                  }

                  if (!v42)
                  {
                    (v45->release)(v45);
                    v45 = 0;
                    if (v38)
                    {
LABEL_74:
                      if (OSDictionary::getObject(v15, *(*(a1 + 7) + 1448)))
                      {
                        goto LABEL_80;
                      }
                    }

LABEL_77:
                    *(*(a1 + 7) + 50) = 1;
                    if (!OSDictionary::setObject(v15, *(*(a1 + 7) + 1448), v40))
                    {
                      if (AppleBCMWLANIOReporting::getLogger(a1))
                      {
                        AppleBCMWLANIOReporting::getLogger(a1);
                        if (CCLogStream::shouldLog())
                        {
                          AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                        }
                      }

                      goto LABEL_111;
                    }

                    if (!v38)
                    {
                      (v40->release)(v40);
                      v40 = 0;
                    }

LABEL_80:
                    if (Object && OSDictionary::getObject(*(*(a1 + 7) + 8 * v8 + 968), aKey))
                    {
LABEL_85:
                      (aKey->release)(aKey);
                      v16 = 0;
LABEL_86:
                      IOFreeData();
                      return v16;
                    }

                    *(*(a1 + 7) + 50) = 1;
                    if (OSDictionary::setObject(*(*(a1 + 7) + 8 * v8 + 968), aKey, v15))
                    {
                      if (!Object)
                      {
                        (v15->release)(v15);
                      }

                      goto LABEL_85;
                    }

                    if (AppleBCMWLANIOReporting::getLogger(a1))
                    {
                      AppleBCMWLANIOReporting::getLogger(a1);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                      }
                    }

LABEL_111:
                    v59 = 0;
                    v60 = 0;
                    v33 = 0;
LABEL_162:
                    v48 = v63;
                    v49 = Object == 0;
                    v51 = v61;
                    v50 = v62;
LABEL_163:
                    (aKey->release)(aKey);
                    if (v66 && v60)
                    {
                      (v60->release)(v60);
                    }

                    v52 = v51 ^ 1;
                    if (!v33)
                    {
                      v52 = 1;
                    }

                    if ((v52 & 1) == 0)
                    {
                      (v33->release)(v33);
                    }

                    v53 = v48 ^ 1;
                    if (!v59)
                    {
                      v53 = 1;
                    }

                    if ((v53 & 1) == 0)
                    {
                      (v59->release)();
                    }

                    v54 = BYTE4(v67) ^ 1;
                    if (!v65)
                    {
                      v54 = 1;
                    }

                    if ((v54 & 1) == 0)
                    {
                      (v65->release)();
                    }

                    v55 = v67 ^ 1;
                    if (!v45)
                    {
                      v55 = 1;
                    }

                    if ((v55 & 1) == 0)
                    {
                      (v45->release)(v45);
                    }

                    v56 = !v50;
                    if (!v23)
                    {
                      v56 = 1;
                    }

                    if ((v56 & 1) == 0)
                    {
                      (v23->release)(v23);
                    }

                    v57 = !v49;
                    if (!v15)
                    {
                      v57 = 1;
                    }

                    if ((v57 & 1) == 0)
                    {
                      (v15->release)(v15);
                    }

                    v16 = 3758097084;
                    v58 = !v64;
                    if (!v40)
                    {
                      v58 = 1;
                    }

                    if ((v58 & 1) == 0)
                    {
                      (v40->release)(v40);
                    }

                    goto LABEL_86;
                  }

LABEL_73:
                  if (v38)
                  {
                    goto LABEL_74;
                  }

                  goto LABEL_77;
                }

                if (AppleBCMWLANIOReporting::getLogger(a1))
                {
                  AppleBCMWLANIOReporting::getLogger(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
                  }
                }
              }

              v59 = 0;
              v60 = 0;
              v33 = 0;
              goto LABEL_161;
            }

            if (AppleBCMWLANIOReporting::getLogger(a1))
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
              }
            }
          }

          v59 = 0;
          v60 = 0;
          v33 = 0;
          v65 = 0;
          BYTE4(v67) = 0;
LABEL_156:
          v40 = 0;
          v64 = 0;
LABEL_161:
          v45 = 0;
          LOBYTE(v67) = 0;
          goto LABEL_162;
        }

        AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
      }
    }

    else
    {
      AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
    }

    v16 = v69;
    goto LABEL_86;
  }

  v16 = 3758097084;
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1);
    }
  }

  return v16;
}

uint64_t AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(AppleBCMWLANIOReporting *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = IOMallocZeroData();
  if (v8)
  {
    v9 = v8;
    AppleBCMWLANChanSpecHandle = AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
    AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(AppleBCMWLANChanSpecHandle, a2);
    AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
    AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v9, 0x32u);
    if (!*v9)
    {
      strcpy(v9, "UnknownChan");
    }

    if (strnlen(v9, 0x32uLL) >= 0x32)
    {
      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
    }

    else
    {
      v12 = OSString::withCString(v9);
      if (v12)
      {
        v13 = v12;
        if (a3 - 31 <= 0xFFFFFFDF)
        {
          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              Logger = AppleBCMWLANIOReporting::getLogger(a1);
              CCLogStream::logAlert(Logger, "[dk] %s@%d:Out of range reasonForJoining %d\n", "addDictionaryChannelReasonForJoining", 3646, a3);
            }
          }

          a3 = 0;
        }

        snprintf(v9, 0x32uLL, "%s", *(&kSliceChannelSwitchReport + 2 * a3 + 3));
        v14 = OSString::withCString(v9);
        if (v14)
        {
          *(*(a1 + 7) + 4 * a4 + 1028) = a3;
          v15 = *(*(a1 + 7) + 8 * a4 + 968);
          if (v15)
          {
            Object = OSDictionary::getObject(v15, v13);
            v17 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
            if (v17)
            {
              v18 = OSDictionary::getObject(v17, *(*(a1 + 7) + 1408));
              v19 = OSMetaClassBase::safeMetaCast(v18, gOSDictionaryMetaClass);
              if (v19)
              {
                v20 = v19;
                v21 = OSDictionary::getObject(v19, *(*(a1 + 7) + 1424));
                v22 = OSMetaClassBase::safeMetaCast(v21, gOSNumberMetaClass);
                if (v22)
                {
                  v23 = AppleBCMWLANIOReportingPerSlice::addNumberValue(a1, v22, v20, *(*(a1 + 7) + 1424), 1);
                  if (v23)
                  {
                    v24 = v23;
                    v25 = OSDictionary::getObject(v20, *(*(a1 + 7) + 1432));
                    v26 = OSMetaClassBase::safeMetaCast(v25, gOSDictionaryMetaClass);
                    if (v26)
                    {
                      v27 = v26;
                      v60 = v13;
                      v28 = OSDictionary::getObject(v26, v14);
                      v59 = v28 == 0;
                      if (v28)
                      {
                        v29 = OSDictionary::getObject(v27, v14);
                        v30 = OSMetaClassBase::safeMetaCast(v29, gOSDictionaryMetaClass);
                        if (!v30)
                        {
                          v58 = v24;
                          if (AppleBCMWLANIOReporting::getLogger(a1))
                          {
                            AppleBCMWLANIOReporting::getLogger(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                            }
                          }

LABEL_100:
                          v57 = 0;
                          v37 = 0;
                          v30 = 0;
                          v50 = 0;
                          v51 = 0;
                          v44 = 0;
                          v34 = 0;
                          v13 = v60;
                          goto LABEL_131;
                        }
                      }

                      else
                      {
                        v32 = OSDictionary::withCapacity(3u);
                        if (!v32)
                        {
                          v58 = v24;
                          if (AppleBCMWLANIOReporting::getLogger(a1))
                          {
                            AppleBCMWLANIOReporting::getLogger(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                            }
                          }

                          goto LABEL_100;
                        }

                        v30 = v32;
                        *(*(a1 + 7) + 50) = 1;
                      }

                      v33 = OSDictionary::getObject(v30, *(*(a1 + 7) + 1440));
                      v34 = v33 == 0;
                      if (v33)
                      {
                        v35 = OSDictionary::getObject(v30, *(*(a1 + 7) + 1440));
                        if (!OSMetaClassBase::safeMetaCast(v35, gOSNumberMetaClass))
                        {
                          v58 = v24;
                          if (AppleBCMWLANIOReporting::getLogger(a1))
                          {
                            AppleBCMWLANIOReporting::getLogger(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                            }
                          }

LABEL_104:
                          v57 = 0;
                          v37 = 0;
                          v51 = 0;
                          v44 = 0;
                          v34 = 0;
LABEL_129:
                          v13 = v60;
LABEL_130:
                          v50 = v59;
                          goto LABEL_131;
                        }
                      }

                      else
                      {
                        v36 = OSNumber::withNumber(a3, 0x20uLL);
                        if (!v36)
                        {
                          v58 = v24;
                          if (AppleBCMWLANIOReporting::getLogger(a1))
                          {
                            AppleBCMWLANIOReporting::getLogger(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                            }
                          }

                          goto LABEL_104;
                        }

                        v37 = v36;
                        *(*(a1 + 7) + 50) = 1;
                        if (!OSDictionary::setObject(v30, *(*(a1 + 7) + 1440), v36))
                        {
                          v58 = v24;
                          if (AppleBCMWLANIOReporting::getLogger(a1))
                          {
                            AppleBCMWLANIOReporting::getLogger(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                            }
                          }

                          v57 = 0;
                          v51 = 0;
                          v44 = 0;
                          v34 = 1;
                          goto LABEL_129;
                        }

                        (v37->release)(v37);
                      }

                      v38 = OSDictionary::getObject(v30, *(*(a1 + 7) + 1416));
                      v39 = v38 == 0;
                      if (v38)
                      {
                        v40 = OSDictionary::getObject(v30, *(*(a1 + 7) + 1416));
                        if (!OSMetaClassBase::safeMetaCast(v40, gOSNumberMetaClass))
                        {
                          v58 = v24;
                          if (AppleBCMWLANIOReporting::getLogger(a1))
                          {
                            AppleBCMWLANIOReporting::getLogger(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                            }
                          }

LABEL_112:
                          v57 = 0;
                          v37 = 0;
                          v51 = 0;
LABEL_121:
                          v44 = 0;
                          goto LABEL_129;
                        }
                      }

                      else
                      {
                        v58 = v24;
                        v41 = OSNumber::withNumber(0, 0x40uLL);
                        if (!v41)
                        {
                          if (AppleBCMWLANIOReporting::getLogger(a1))
                          {
                            AppleBCMWLANIOReporting::getLogger(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                            }
                          }

                          goto LABEL_112;
                        }

                        v42 = v41;
                        *(*(a1 + 7) + 50) = 1;
                        if (!OSDictionary::setObject(v30, *(*(a1 + 7) + 1416), v41))
                        {
                          v57 = v42;
                          if (AppleBCMWLANIOReporting::getLogger(a1))
                          {
                            AppleBCMWLANIOReporting::getLogger(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                            }
                          }

                          v37 = 0;
                          v44 = 0;
                          v51 = 1;
                          goto LABEL_129;
                        }

                        (v42->release)(v42);
                      }

                      v43 = OSDictionary::getObject(v30, *(*(a1 + 7) + 1424));
                      v44 = v43 == 0;
                      if (v43)
                      {
                        v45 = OSDictionary::getObject(v30, *(*(a1 + 7) + 1424));
                        v46 = OSMetaClassBase::safeMetaCast(v45, gOSNumberMetaClass);
                        if (v46)
                        {
                          if (AppleBCMWLANIOReportingPerSlice::addNumberValue(a1, v46, v30, *(*(a1 + 7) + 1424), 1))
                          {
                            if (v28)
                            {
LABEL_48:
                              if (!OSDictionary::getObject(v27, v14))
                              {
                                *(*(a1 + 7) + 50) = 1;
                                if (!OSDictionary::setObject(v27, v14, v30))
                                {
                                  goto LABEL_93;
                                }
                              }

LABEL_57:
                              (v60->release)(v60);
                              (v14->release)(v14);
                              v31 = 0;
LABEL_58:
                              IOFreeData();
                              return v31;
                            }

LABEL_55:
                            *(*(a1 + 7) + 50) = 1;
                            if (!OSDictionary::setObject(v27, v14, v30))
                            {
LABEL_93:
                              v51 = v39;
                              v13 = v60;
                              if (AppleBCMWLANIOReporting::getLogger(a1))
                              {
                                AppleBCMWLANIOReporting::getLogger(a1);
                                if (CCLogStream::shouldLog())
                                {
                                  AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                                }
                              }

                              v57 = 0;
                              v58 = 0;
                              v37 = 0;
                              goto LABEL_130;
                            }

                            (v30->release)(v30);
                            goto LABEL_57;
                          }

                          v51 = v39;
                          if (AppleBCMWLANIOReporting::getLogger(a1))
                          {
                            AppleBCMWLANIOReporting::getLogger(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                            }
                          }
                        }

                        else
                        {
                          v51 = v39;
                          if (AppleBCMWLANIOReporting::getLogger(a1))
                          {
                            AppleBCMWLANIOReporting::getLogger(a1);
                            if (CCLogStream::shouldLog())
                            {
                              AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                            }
                          }
                        }
                      }

                      else
                      {
                        v47 = OSNumber::withNumber(0, 0x40uLL);
                        if (v47)
                        {
                          v48 = v47;
                          *(*(a1 + 7) + 50) = 1;
                          if (OSDictionary::setObject(v30, *(*(a1 + 7) + 1424), v47))
                          {
                            if (AppleBCMWLANIOReportingPerSlice::addNumberValue(a1, v48, v30, *(*(a1 + 7) + 1424), 1))
                            {
                              (v48->release)(v48);
                              if (v28)
                              {
                                goto LABEL_48;
                              }

                              goto LABEL_55;
                            }

                            v58 = v48;
                            v51 = v39;
                            if (AppleBCMWLANIOReporting::getLogger(a1))
                            {
                              AppleBCMWLANIOReporting::getLogger(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                              }
                            }
                          }

                          else
                          {
                            v58 = v48;
                            v51 = v39;
                            if (AppleBCMWLANIOReporting::getLogger(a1))
                            {
                              AppleBCMWLANIOReporting::getLogger(a1);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                              }
                            }
                          }

                          v57 = 0;
                          v37 = 0;
                          v44 = 1;
                          goto LABEL_129;
                        }

                        v51 = v39;
                        if (AppleBCMWLANIOReporting::getLogger(a1))
                        {
                          AppleBCMWLANIOReporting::getLogger(a1);
                          if (CCLogStream::shouldLog())
                          {
                            AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                          }
                        }
                      }

                      v57 = 0;
                      v58 = 0;
                      v37 = 0;
                      goto LABEL_121;
                    }

                    v58 = v24;
                    if (AppleBCMWLANIOReporting::getLogger(a1))
                    {
                      AppleBCMWLANIOReporting::getLogger(a1);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                      }
                    }

                    v57 = 0;
LABEL_82:
                    v37 = 0;
                    v30 = 0;
                    v50 = 0;
                    v51 = 0;
                    v44 = 0;
                    v34 = 0;
LABEL_131:
                    (v13->release)(v13);
                    if (v14)
                    {
                      (v14->release)(v14);
                    }

                    v52 = v51 ^ 1;
                    if (!v57)
                    {
                      v52 = 1;
                    }

                    if ((v52 & 1) == 0)
                    {
                      (v57->release)();
                    }

                    v53 = !v44;
                    if (!v58)
                    {
                      v53 = 1;
                    }

                    if ((v53 & 1) == 0)
                    {
                      (v58->release)();
                    }

                    v54 = !v50;
                    if (!v30)
                    {
                      v54 = 1;
                    }

                    if ((v54 & 1) == 0)
                    {
                      (v30->release)(v30);
                    }

                    v31 = 3758097084;
                    v55 = !v34;
                    if (!v37)
                    {
                      v55 = 1;
                    }

                    if ((v55 & 1) == 0)
                    {
                      (v37->release)(v37);
                    }

                    goto LABEL_58;
                  }

                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                    }
                  }
                }

                else if (AppleBCMWLANIOReporting::getLogger(a1))
                {
                  AppleBCMWLANIOReporting::getLogger(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                  }
                }
              }

              else if (AppleBCMWLANIOReporting::getLogger(a1))
              {
                AppleBCMWLANIOReporting::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
                }
              }
            }

            else if (AppleBCMWLANIOReporting::getLogger(a1))
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
              }
            }
          }

          else if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
            }
          }
        }

        else if (AppleBCMWLANIOReporting::getLogger(a1))
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
          }
        }

        v57 = 0;
        v58 = 0;
        goto LABEL_82;
      }

      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
    }

    v31 = v61;
    goto LABEL_58;
  }

  v31 = 3758097084;
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1);
    }
  }

  return v31;
}

OSNumberPtr AppleBCMWLANIOReportingPerSlice::addNumberValue(AppleBCMWLANIOReportingPerSlice *this, OSNumber *a2, OSDictionary *a3, const OSString *a4, uint64_t a5)
{
  if (a2 && a3 && a4)
  {
    v9 = OSNumber::unsigned64BitValue(a2) + a5;

    return AppleBCMWLANIOReportingPerSlice::replaceNumberValue(this, a2, a3, a4, v9);
  }

  else
  {
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReportingPerSlice::addNumberValue(this);
      }
    }

    return 0;
  }
}

uint64_t AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(AppleBCMWLANIOReporting *a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v10 = IOMallocZeroData();
  if (v10)
  {
    v11 = v10;
    AppleBCMWLANChanSpecHandle = AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
    AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(AppleBCMWLANChanSpecHandle, a2);
    AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
    AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v11, 0x32u);
    if (!*v11)
    {
      strcpy(v11, "UnknownChan");
    }

    v14 = OSString::withCString(v11);
    if (!v14)
    {
      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
      v29 = v96;
      goto LABEL_94;
    }

    v15 = v14;
    if ((a3 - 31) <= 0xFFFFFFDF)
    {
      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANIOReporting::getLogger(a1);
          CCLogStream::logAlert(Logger, "[dk] %s@%d:Out of range reasonForLeaving %d\n", "addDictionaryChannelReasonForLeaving", 3836, a3);
        }
      }

      a3 = 0;
    }

    snprintf(v11, 0x32uLL, "%s", *(&kSliceChannelSwitchReport + 2 * (a3 + 1) + 1));
    v16 = OSString::withCString(v11);
    if (!v16)
    {
      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
        }
      }

      v77 = 0;
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      goto LABEL_117;
    }

    v17 = v16;
    v18 = *(*(a1 + 7) + 8 * a5 + 968);
    aKey = v15;
    if (!v18)
    {
      v91 = v17;
      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
        }
      }

      goto LABEL_153;
    }

    Object = OSDictionary::getObject(v18, v15);
    v20 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
    if (!v20)
    {
      v91 = v17;
      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
        }
      }

      goto LABEL_153;
    }

    v21 = OSDictionary::getObject(v20, *(*(a1 + 7) + 1448));
    v22 = OSMetaClassBase::safeMetaCast(v21, gOSDictionaryMetaClass);
    if (!v22)
    {
      v91 = v17;
      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
        }
      }

      goto LABEL_153;
    }

    v23 = OSDictionary::getObject(v22, *(*(a1 + 7) + 1456));
    v24 = OSMetaClassBase::safeMetaCast(v23, gOSDictionaryMetaClass);
    if (!v24)
    {
      v91 = v17;
      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
        }
      }

      goto LABEL_153;
    }

    v25 = v24;
    v26 = OSDictionary::getObject(v24, v17);
    v90 = v26 == 0;
    if (v26)
    {
      v27 = OSDictionary::getObject(v25, v17);
      v28 = OSMetaClassBase::safeMetaCast(v27, gOSDictionaryMetaClass);
      if (!v28)
      {
        v91 = v17;
        if (AppleBCMWLANIOReporting::getLogger(a1))
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
          }
        }

LABEL_153:
        v53 = 0;
        v87 = 0;
        v35 = 0;
        v95 = 0;
        v90 = 0;
LABEL_154:
        v88 = 0;
        v89 = 0;
LABEL_210:
        (v91->release)(v91);
        v15 = aKey;
        v77 = v89;
        v80 = v90;
        v79 = v88;
        v78 = BYTE4(v88);
        v81 = v95;
LABEL_211:
        (v15->release)(v15);
        if (v79 && v53)
        {
          (v53->release)(v53);
        }

        v83 = v78 ^ 1;
        if (!v87)
        {
          v83 = 1;
        }

        if ((v83 & 1) == 0)
        {
          (v87->release)();
        }

        v84 = !v80;
        if (!v81)
        {
          v84 = 1;
        }

        if ((v84 & 1) == 0)
        {
          (v81->release)(v81);
        }

        v29 = 3758097084;
        v85 = !v77;
        if (!v35)
        {
          v85 = 1;
        }

        if ((v85 & 1) == 0)
        {
          (v35->release)(v35);
        }

        goto LABEL_94;
      }
    }

    else
    {
      v30 = OSDictionary::withCapacity(3u);
      if (!v30)
      {
        v91 = v17;
        if (AppleBCMWLANIOReporting::getLogger(a1))
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
          }
        }

        goto LABEL_153;
      }

      v28 = v30;
      *(*(a1 + 7) + 50) = 1;
    }

    value = a3;
    v31 = a4;
    v32 = OSDictionary::getObject(v28, *(*(a1 + 7) + 1440));
    v89 = v32 == 0;
    v95 = v28;
    if (v32)
    {
      v33 = OSDictionary::getObject(v28, *(*(a1 + 7) + 1440));
      if (!OSMetaClassBase::safeMetaCast(v33, gOSNumberMetaClass))
      {
        v91 = v17;
        if (AppleBCMWLANIOReporting::getLogger(a1))
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
          }
        }

LABEL_158:
        v53 = 0;
        v87 = 0;
        v35 = 0;
        goto LABEL_154;
      }
    }

    else
    {
      v91 = v17;
      v34 = OSNumber::withNumber(value, 0x20uLL);
      if (!v34)
      {
        if (AppleBCMWLANIOReporting::getLogger(a1))
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
          }
        }

        goto LABEL_158;
      }

      v35 = v34;
      *(*(a1 + 7) + 50) = 1;
      if (!OSDictionary::setObject(v28, *(*(a1 + 7) + 1440), v34))
      {
        if (AppleBCMWLANIOReporting::getLogger(a1))
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
          }
        }

        v53 = 0;
        v87 = 0;
        v88 = 0;
        v82 = 1;
        goto LABEL_209;
      }

      (v35->release)(v35);
      a4 = v31;
    }

    v36 = OSDictionary::getObject(v28, *(*(a1 + 7) + 1424));
    BYTE4(v88) = v36 == 0;
    if (v36)
    {
      v37 = OSDictionary::getObject(v28, *(*(a1 + 7) + 1424));
      v38 = OSMetaClassBase::safeMetaCast(v37, gOSNumberMetaClass);
      if (v38)
      {
        if (AppleBCMWLANIOReportingPerSlice::addNumberValue(a1, v38, v28, *(*(a1 + 7) + 1424), 1))
        {
          if (v26)
          {
            goto LABEL_37;
          }

          goto LABEL_42;
        }

        v91 = v17;
        if (AppleBCMWLANIOReporting::getLogger(a1))
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
          }
        }
      }

      else
      {
        v91 = v17;
        if (AppleBCMWLANIOReporting::getLogger(a1))
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
          }
        }
      }
    }

    else
    {
      v91 = v17;
      v39 = a4;
      v40 = OSNumber::withNumber(1uLL, 0x40uLL);
      if (v40)
      {
        v41 = v40;
        *(*(a1 + 7) + 50) = 1;
        if (!OSDictionary::setObject(v28, *(*(a1 + 7) + 1424), v40))
        {
          v87 = v41;
          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
            }
          }

          v53 = 0;
          v35 = 0;
          v88 = 0x100000000;
          goto LABEL_210;
        }

        (v41->release)(v41);
        a4 = v39;
        if (v26)
        {
LABEL_37:
          if (OSDictionary::getObject(v25, v17))
          {
            goto LABEL_45;
          }

          *(*(a1 + 7) + 50) = 1;
          if (OSDictionary::setObject(v25, v17, v28))
          {
            goto LABEL_45;
          }

          goto LABEL_143;
        }

LABEL_42:
        *(*(a1 + 7) + 50) = 1;
        if (OSDictionary::setObject(v25, v17, v28))
        {
          (v28->release)(v28);
          v95 = 0;
LABEL_45:
          (v17->release)(v17);
          snprintf(v11, 0x32uLL, "%s", *(&kSliceChannelSwitchReport + 2 * (*(*(a1 + 7) + 4 * a5 + 1028) + 1) + 1));
          v42 = OSString::withCString(v11);
          if (v42)
          {
            v43 = v42;
            v44 = OSDictionary::getObject(*(*(a1 + 7) + 8 * a5 + 968), aKey);
            v45 = OSMetaClassBase::safeMetaCast(v44, gOSDictionaryMetaClass);
            if (!v45)
            {
              v91 = v43;
              if (AppleBCMWLANIOReporting::getLogger(a1))
              {
                AppleBCMWLANIOReporting::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                }
              }

              goto LABEL_176;
            }

            v46 = OSDictionary::getObject(v45, *(*(a1 + 7) + 1408));
            v47 = OSMetaClassBase::safeMetaCast(v46, gOSDictionaryMetaClass);
            if (!v47)
            {
              v91 = v43;
              if (AppleBCMWLANIOReporting::getLogger(a1))
              {
                AppleBCMWLANIOReporting::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                }
              }

              goto LABEL_176;
            }

            v48 = v47;
            v49 = OSDictionary::getObject(v47, *(*(a1 + 7) + 1416));
            LODWORD(v88) = v49 == 0;
            if (v49)
            {
              v50 = OSDictionary::getObject(v48, *(*(a1 + 7) + 1416));
              v51 = OSMetaClassBase::safeMetaCast(v50, gOSNumberMetaClass);
              if (!v51)
              {
                v91 = v43;
                if (AppleBCMWLANIOReporting::getLogger(a1))
                {
                  AppleBCMWLANIOReporting::getLogger(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                  }
                }

                goto LABEL_176;
              }

              if (!AppleBCMWLANIOReportingPerSlice::addNumberValue(a1, v51, v48, *(*(a1 + 7) + 1416), a4))
              {
                v91 = v43;
                if (AppleBCMWLANIOReporting::getLogger(a1))
                {
                  AppleBCMWLANIOReporting::getLogger(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                  }
                }

LABEL_176:
                v53 = 0;
                v87 = 0;
                v35 = 0;
                LODWORD(v88) = 0;
                goto LABEL_210;
              }
            }

            else
            {
              v52 = OSNumber::withNumber(a4, 0x40uLL);
              if (!v52)
              {
                v91 = v43;
                if (AppleBCMWLANIOReporting::getLogger(a1))
                {
                  AppleBCMWLANIOReporting::getLogger(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                  }
                }

                goto LABEL_176;
              }

              v53 = v52;
              *(*(a1 + 7) + 50) = 1;
              if (!OSDictionary::setObject(v48, *(*(a1 + 7) + 1416), v52))
              {
                v91 = v43;
                if (AppleBCMWLANIOReporting::getLogger(a1))
                {
                  AppleBCMWLANIOReporting::getLogger(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                  }
                }

                v87 = 0;
                v35 = 0;
                LODWORD(v88) = 1;
                goto LABEL_210;
              }

              (v53->release)(v53);
            }

            v54 = OSDictionary::getObject(v48, *(*(a1 + 7) + 1432));
            v55 = OSMetaClassBase::safeMetaCast(v54, gOSDictionaryMetaClass);
            if (v55)
            {
              v56 = v55;
              v57 = OSDictionary::getObject(v55, v43);
              if (v57)
              {
                v58 = OSDictionary::getObject(v56, v43);
                v59 = OSMetaClassBase::safeMetaCast(v58, gOSDictionaryMetaClass);
                if (!v59)
                {
                  v91 = v43;
                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                    }
                  }

LABEL_184:
                  v53 = 0;
                  v87 = 0;
                  v35 = 0;
                  v95 = 0;
                  goto LABEL_210;
                }
              }

              else
              {
                v60 = OSDictionary::withCapacity(3u);
                if (!v60)
                {
                  v91 = v43;
                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                    }
                  }

                  goto LABEL_184;
                }

                v59 = v60;
                *(*(a1 + 7) + 50) = 1;
              }

              v61 = OSDictionary::getObject(v59, *(*(a1 + 7) + 1440));
              v62 = v61 == 0;
              if (v61)
              {
                v63 = OSDictionary::getObject(v59, *(*(a1 + 7) + 1440));
                if (!OSMetaClassBase::safeMetaCast(v63, gOSNumberMetaClass))
                {
                  v95 = v59;
                  v91 = v43;
                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                    }
                  }

LABEL_188:
                  v53 = 0;
                  v87 = 0;
                  v35 = 0;
                  v90 = v57 == 0;
                  goto LABEL_210;
                }
              }

              else
              {
                v64 = OSNumber::withNumber(value, 0x20uLL);
                if (!v64)
                {
                  v95 = v59;
                  v91 = v43;
                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                    }
                  }

                  goto LABEL_188;
                }

                v65 = v64;
                *(*(a1 + 7) + 50) = 1;
                if (!OSDictionary::setObject(v59, *(*(a1 + 7) + 1440), v64))
                {
                  v95 = v59;
                  v91 = v43;
                  v35 = v65;
                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                    }
                  }

                  v53 = 0;
                  v87 = 0;
                  v89 = 1;
                  v90 = v57 == 0;
                  goto LABEL_210;
                }

                (v65->release)(v65);
              }

              valuea = v62;
              v66 = OSDictionary::getObject(v59, *(*(a1 + 7) + 1424));
              v67 = v66 == 0;
              if (v66)
              {
                v68 = OSDictionary::getObject(v59, *(*(a1 + 7) + 1424));
                if (!OSMetaClassBase::safeMetaCast(v68, gOSNumberMetaClass))
                {
                  v95 = v59;
                  v91 = v43;
                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                    }
                  }

LABEL_196:
                  v53 = 0;
                  v87 = 0;
                  v35 = 0;
LABEL_201:
                  v90 = v57 == 0;
LABEL_208:
                  v82 = valuea;
LABEL_209:
                  v89 = v82;
                  goto LABEL_210;
                }
              }

              else
              {
                v69 = OSNumber::withNumber(1uLL, 0x40uLL);
                if (!v69)
                {
                  v95 = v59;
                  v91 = v43;
                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                    }
                  }

                  goto LABEL_196;
                }

                v70 = v69;
                *(*(a1 + 7) + 50) = 1;
                if (!OSDictionary::setObject(v59, *(*(a1 + 7) + 1424), v69))
                {
                  v95 = v59;
                  v91 = v43;
                  v87 = v70;
                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                    }
                  }

                  v53 = 0;
                  v35 = 0;
                  BYTE4(v88) = 1;
                  goto LABEL_201;
                }

                (v70->release)(v70);
              }

              v71 = OSDictionary::getObject(v59, *(*(a1 + 7) + 1416));
              v72 = v71 == 0;
              if (v71)
              {
                v73 = OSDictionary::getObject(v59, *(*(a1 + 7) + 1416));
                v74 = OSMetaClassBase::safeMetaCast(v73, gOSNumberMetaClass);
                if (v74)
                {
                  if (AppleBCMWLANIOReportingPerSlice::addNumberValue(a1, v74, v59, *(*(a1 + 7) + 1416), a4))
                  {
                    if (v57)
                    {
LABEL_85:
                      if (!OSDictionary::getObject(v56, v43))
                      {
                        *(*(a1 + 7) + 50) = 1;
                        if (!OSDictionary::setObject(v56, v43, v59))
                        {
                          goto LABEL_146;
                        }
                      }

LABEL_93:
                      (v43->release)(v43);
                      (aKey->release)(aKey);
                      v29 = 0;
LABEL_94:
                      IOFreeData();
                      return v29;
                    }

LABEL_91:
                    *(*(a1 + 7) + 50) = 1;
                    if (!OSDictionary::setObject(v56, v43, v59))
                    {
LABEL_146:
                      v95 = v59;
                      v91 = v43;
                      if (AppleBCMWLANIOReporting::getLogger(a1))
                      {
                        AppleBCMWLANIOReporting::getLogger(a1);
                        if (CCLogStream::shouldLog())
                        {
                          AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                        }
                      }

                      v53 = 0;
                      v87 = 0;
                      v35 = 0;
                      v90 = v57 == 0;
                      LODWORD(v88) = v72;
                      goto LABEL_207;
                    }

                    (v59->release)(v59);
                    goto LABEL_93;
                  }

                  v95 = v59;
                  v91 = v43;
                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                    }
                  }
                }

                else
                {
                  v95 = v59;
                  v91 = v43;
                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                    }
                  }
                }
              }

              else
              {
                v75 = OSNumber::withNumber(a4, 0x40uLL);
                if (v75)
                {
                  v53 = v75;
                  *(*(a1 + 7) + 50) = 1;
                  if (OSDictionary::setObject(v59, *(*(a1 + 7) + 1416), v75))
                  {
                    (v53->release)(v53);
                    if (v57)
                    {
                      goto LABEL_85;
                    }

                    goto LABEL_91;
                  }

                  v95 = v59;
                  v91 = v43;
                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                    }
                  }

                  v87 = 0;
                  v35 = 0;
                  LODWORD(v88) = 1;
LABEL_206:
                  v90 = v57 == 0;
LABEL_207:
                  BYTE4(v88) = v67;
                  goto LABEL_208;
                }

                v95 = v59;
                v91 = v43;
                if (AppleBCMWLANIOReporting::getLogger(a1))
                {
                  AppleBCMWLANIOReporting::getLogger(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
                  }
                }
              }

              v53 = 0;
              v87 = 0;
              v35 = 0;
              goto LABEL_206;
            }

            v91 = v43;
            if (AppleBCMWLANIOReporting::getLogger(a1))
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
              }
            }

            v53 = 0;
            v87 = 0;
LABEL_167:
            v35 = 0;
            goto LABEL_210;
          }

          v81 = v95;
          if (!AppleBCMWLANIOReporting::getLogger(a1))
          {
            v79 = 0;
            v35 = 0;
            v87 = 0;
            v53 = 0;
            v15 = aKey;
            v77 = v89;
            v80 = v26 == 0;
            v78 = BYTE4(v88);
            goto LABEL_211;
          }

          AppleBCMWLANIOReporting::getLogger(a1);
          v15 = aKey;
          v77 = v89;
          v80 = v26 == 0;
          v78 = BYTE4(v88);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
          }

          v79 = 0;
LABEL_117:
          v35 = 0;
          v87 = 0;
          v53 = 0;
          goto LABEL_211;
        }

LABEL_143:
        v91 = v17;
        if (AppleBCMWLANIOReporting::getLogger(a1))
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
          }
        }

        goto LABEL_176;
      }

      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
        }
      }
    }

    v53 = 0;
    v87 = 0;
    v88 = 0;
    goto LABEL_167;
  }

  v29 = 3758097084;
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1);
    }
  }

  return v29;
}

uint64_t AppleBCMWLANIOReportingPerSlice::storeChannelSwitch(AppleBCMWLANIOReporting *a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v11 = 0;
  v13[0] = a2;
  while (((*(v13 + (v11 >> 3)) >> (v11 & 7)) & 1) == 0)
  {
    if (++v11 == 32)
    {
      v11 = a2;
      break;
    }
  }

  if (AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1, a3, a6))
  {
    AppleBCMWLANIOReportingPerSlice::storeChannelSwitch(a1);
    return v13[1];
  }

  if (AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(a1, a3, v11, a6))
  {
    AppleBCMWLANIOReportingPerSlice::storeChannelSwitch(a1);
    return v13[1];
  }

  if (AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(a1, a4, a6))
  {
    AppleBCMWLANIOReportingPerSlice::storeChannelSwitch(a1);
    return v13[1];
  }

  result = AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(a1, a4, v11, a5, a6);
  if (result)
  {
    AppleBCMWLANIOReportingPerSlice::storeChannelSwitch(a1);
    return v13[1];
  }

  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initUpdateReportData(AppleBCMWLANIOReporting *a1, uint64_t a2, unsigned int a3, OSObject *aKey)
{
  if (!a2 || !aKey)
  {
    AppleBCMWLANIOReportingPerSlice::initUpdateReportData(a1);
    return v15;
  }

  *a2 = a3;
  Object = OSDictionary::getObject(*(*(a1 + 7) + 8 * a3 + 968), aKey);
  v7 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
  *(a2 + 16) = v7;
  if (!v7)
  {
    AppleBCMWLANIOReportingPerSlice::initUpdateReportData(a1);
    return v15;
  }

  v8 = OSDictionary::getObject(v7, *(*(a1 + 7) + 1464));
  v9 = OSMetaClassBase::safeMetaCast(v8, gOSNumberMetaClass);
  *(a2 + 8) = v9;
  if (!v9)
  {
    AppleBCMWLANIOReportingPerSlice::initUpdateReportData(a1);
    return v15;
  }

  v10 = OSDictionary::getObject(*(a2 + 16), *(*(a1 + 7) + 1472));
  *(a2 + 48) = OSMetaClassBase::safeMetaCast(v10, gIOStateReporterMetaClass);
  v11 = OSDictionary::getObject(*(a2 + 16), *(*(a1 + 7) + 1480));
  *(a2 + 56) = OSMetaClassBase::safeMetaCast(v11, gIOSimpleReporterMetaClass);
  v12 = OSDictionary::getObject(*(a2 + 16), *(*(a1 + 7) + 1488));
  v13 = OSMetaClassBase::safeMetaCast(v12, gIOSimpleReporterMetaClass);
  result = 0;
  *(a2 + 64) = v13;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processUpdateLeaveReason(AppleBCMWLANIOReporting *this, unsigned __int8 *a2, OSDictionary *a3, OSObject *aKey)
{
  if (a2 && a3 && aKey)
  {
    Object = OSDictionary::getObject(a3, aKey);
    v7 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
    if (v7)
    {
      v8 = v7;
      v9 = OSDictionary::getObject(v7, *(*(this + 7) + 1424));
      v10 = OSMetaClassBase::safeMetaCast(v9, gOSNumberMetaClass);
      if (v10)
      {
        v11 = v10;
        v12 = OSDictionary::getObject(v8, *(*(this + 7) + 1440));
        v13 = OSMetaClassBase::safeMetaCast(v12, gOSNumberMetaClass);
        if (v13)
        {
          v14 = v13;
          v15 = *a2;
          v16 = OSNumber::unsigned16BitValue(*(a2 + 1));
          v17 = OSNumber::unsigned32BitValue(v14);
          v18 = *(a2 + 8);
          if (v18)
          {
            v19 = v17 << 16;
            v20 = OSNumber::unsigned64BitValue(v11);
            IOSimpleReporter::setValue(v18, v16 | (v15 << 56) | 0x50577452000000 | v19, v20);
            return 0;
          }

          AppleBCMWLANIOReportingPerSlice::processUpdateLeaveReason(this);
        }

        else
        {
          AppleBCMWLANIOReportingPerSlice::processUpdateLeaveReason(this);
        }
      }

      else
      {
        AppleBCMWLANIOReportingPerSlice::processUpdateLeaveReason(this);
      }
    }

    else
    {
      AppleBCMWLANIOReportingPerSlice::processUpdateLeaveReason(this);
    }

    return v23;
  }

  v21 = 3758097084;
  if (AppleBCMWLANIOReporting::getLogger(this))
  {
    AppleBCMWLANIOReporting::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::processUpdateLeaveReason(this);
    }
  }

  return v21;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processUpdateJoinReason(AppleBCMWLANIOReporting *this, unsigned int *a2, OSDictionary *a3, OSObject *aKey)
{
  if (a2 && a3 && aKey)
  {
    Object = OSDictionary::getObject(a3, aKey);
    v7 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
    if (v7)
    {
      v8 = v7;
      v9 = OSDictionary::getObject(v7, *(*(this + 7) + 1440));
      v10 = OSMetaClassBase::safeMetaCast(v9, gOSNumberMetaClass);
      if (v10)
      {
        v11 = v10;
        v12 = OSDictionary::getObject(v8, *(*(this + 7) + 1416));
        v13 = OSMetaClassBase::safeMetaCast(v12, gOSNumberMetaClass);
        if (v13)
        {
          v14 = v13;
          v15 = OSDictionary::getObject(v8, *(*(this + 7) + 1424));
          v16 = OSMetaClassBase::safeMetaCast(v15, gOSNumberMetaClass);
          if (v16)
          {
            v17 = v16;
            v18 = *a2;
            v19 = OSNumber::unsigned16BitValue(*(a2 + 1));
            v20 = OSNumber::unsigned32BitValue(v11);
            v21 = *(a2 + 7);
            if (v21)
            {
              v22 = v19 | (v18 << 56) | 0x50457452000000 | (v20 << 16);
              v23 = OSNumber::unsigned64BitValue(v17);
              if (IOSimpleReporter::setValue(v21, v22, v23))
              {
                if (AppleBCMWLANIOReporting::getLogger(this))
                {
                  AppleBCMWLANIOReporting::getLogger(this);
                  if (CCLogStream::shouldLog())
                  {
                    Logger = AppleBCMWLANIOReporting::getLogger(this);
                    v32 = *a2;
                    v33 = OSNumber::unsigned16BitValue(*(a2 + 1));
                    v34 = OSNumber::unsigned32BitValue(v11);
                    CCLogStream::logNotice(Logger, "[dk] %s@%d:Failed to find switchToReasonReporter->setValue chid %llx slice %d chanspec %u reason %u \n", "processUpdateJoinReason", 4290, v22, v32, v33, v34);
                  }
                }
              }

              if (*(a2 + 6))
              {
                OSNumber::unsigned64BitValue(v14);
                nanoseconds_to_absolutetime();
                v24 = *(a2 + 6);
                v25 = *a2;
                v26 = OSNumber::unsigned16BitValue(*(a2 + 1)) | (v25 << 56);
                v27 = *(&kStateIDChannelSwitch + 2 * OSNumber::unsigned32BitValue(v11));
                v28 = OSNumber::unsigned64BitValue(v17);
                IOStateReporter::overrideChannelState(v24, v26 | 0x50517452000000, v27, 0, v28, 0);
                return 0;
              }

              AppleBCMWLANIOReportingPerSlice::processUpdateJoinReason(this);
            }

            else
            {
              AppleBCMWLANIOReportingPerSlice::processUpdateJoinReason(this);
            }
          }

          else
          {
            AppleBCMWLANIOReportingPerSlice::processUpdateJoinReason(this);
          }
        }

        else
        {
          AppleBCMWLANIOReportingPerSlice::processUpdateJoinReason(this);
        }
      }

      else
      {
        AppleBCMWLANIOReportingPerSlice::processUpdateJoinReason(this);
      }
    }

    else
    {
      AppleBCMWLANIOReportingPerSlice::processUpdateJoinReason(this);
    }

    return v35;
  }

  v29 = 3758097084;
  if (AppleBCMWLANIOReporting::getLogger(this))
  {
    AppleBCMWLANIOReporting::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::processUpdateJoinReason(this);
    }
  }

  return v29;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports(AppleBCMWLANIOReporting *a1, uint64_t a2, OSObject *aKey, _DWORD *a4)
{
  if (aKey && a4)
  {
    v39 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = v8;
    v38 = v8;
    *v35 = v8;
    *v36 = v8;
    if (AppleBCMWLANIOReportingPerSlice::initUpdateReportData(a1, v35, a2, aKey))
    {
      AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports(a1);
      return v40;
    }

    Object = OSDictionary::getObject(v36[0], *(*(a1 + 7) + 1408));
    v10 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
    if (!v10)
    {
LABEL_11:
      v29 = OSDictionary::getObject(v36[0], *(*(a1 + 7) + 1448));
      v30 = OSMetaClassBase::safeMetaCast(v29, gOSDictionaryMetaClass);
      if (!v30)
      {
        return 0;
      }

      v31 = OSDictionary::getObject(v30, *(*(a1 + 7) + 1456));
      v32 = OSMetaClassBase::safeMetaCast(v31, gOSDictionaryMetaClass);
      if (v32)
      {
        if (!AppleBCMWLANIOReportingPerSlice::iterateUpdateLeaveReason(a1, v35, v32))
        {
          return 0;
        }

        AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports(a1);
      }

      else
      {
        AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports();
      }

      return v40;
    }

    v11 = v10;
    v12 = OSDictionary::getObject(v36[1], *(*(a1 + 7) + 1416));
    v13 = OSMetaClassBase::safeMetaCast(v12, gOSNumberMetaClass);
    if (!v13)
    {
      AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports();
      return v40;
    }

    v14 = v13;
    v15 = OSDictionary::getObject(v36[1], *(*(a1 + 7) + 1424));
    v16 = OSMetaClassBase::safeMetaCast(v15, gOSNumberMetaClass);
    if (!v16)
    {
      AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports();
      return v40;
    }

    v17 = v16;
    AppleBCMWLANChanSpecHandle = AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
    v19 = OSNumber::unsigned16BitValue(v35[1]);
    LOWORD(AppleBCMWLANChanSpecHandle) = AppleBCMWLANChanSpec::getAppleChannelSpec(AppleBCMWLANChanSpecHandle, v19);
    AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
    v20 = AppleBCMWLANChanSpec::convToStateID(AppleBCMWLANChanSpecHandle);
    OSNumber::unsigned64BitValue(v14);
    nanoseconds_to_absolutetime();
    v21 = *(*(a1 + 7) + 8 * a2 + 992);
    v22 = OSNumber::unsigned64BitValue(v17);
    v23 = IOStateReporter::overrideChannelState(v21, (a2 << 56) ^ 0x5350537752000000, v20, 0, v22, 0);
    if (!v23)
    {
      ++*a4;
      v24 = OSDictionary::getObject(v36[0], *(*(a1 + 7) + 1496));
      v25 = OSMetaClassBase::safeMetaCast(v24, gOSNumberMetaClass);
      if (!v25)
      {
        AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports();
        return v40;
      }

      v26 = v25;
      v27 = OSDictionary::getObject(v11, *(*(a1 + 7) + 1432));
      v28 = OSMetaClassBase::safeMetaCast(v27, gOSDictionaryMetaClass);
      if (!v28)
      {
        AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports();
        return v40;
      }

      if (AppleBCMWLANIOReportingPerSlice::iterateUpdateJoinReason(a1, v35, v28, v26))
      {
        AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports(a1);
        return v40;
      }

      goto LABEL_11;
    }

    v33 = v23;
    if (AppleBCMWLANIOReporting::getLogger(a1))
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports(a1, aKey, v14, v17);
      }
    }
  }

  else
  {
    v33 = 3758097084;
    if (AppleBCMWLANIOReporting::getLogger(a1))
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports(a1);
      }
    }
  }

  return v33;
}

uint64_t AppleBCMWLANIOReportingPerSlice::iterateUpdateJoinReason(AppleBCMWLANIOReporting *a1, uint64_t a2, uint64_t a3, OSNumber *this)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = -536870212;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v13[3] = 0;
  v8 = OSNumber::unsigned64BitValue(this);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v12[3] = 0;
  if (a2 && a3 && !this)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = ___ZN31AppleBCMWLANIOReportingPerSlice23iterateUpdateJoinReasonEP19ChannelSwitchReportP12OSDictionaryP8OSNumber_block_invoke;
    v11[3] = &__block_descriptor_tmp_1;
    v11[4] = v13;
    v11[7] = a1;
    v11[8] = v8;
    v11[5] = v12;
    v11[6] = &v14;
    v11[9] = a2;
    v11[10] = a3;
    (*(*a3 + 56))(a3, v11);
  }

  else if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::iterateUpdateJoinReason(a1);
    }
  }

  v9 = *(v15 + 6);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);
  return v9;
}

uint64_t AppleBCMWLANIOReportingPerSlice::iterateUpdateLeaveReason(AppleBCMWLANIOReporting *this, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = -536870212;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v7[3] = 0;
  if (a2 && a3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = ___ZN31AppleBCMWLANIOReportingPerSlice24iterateUpdateLeaveReasonEP19ChannelSwitchReportP12OSDictionary_block_invoke;
    v6[3] = &__block_descriptor_tmp_132;
    v6[4] = v7;
    v6[5] = &v8;
    v6[6] = this;
    v6[7] = a2;
    v6[8] = a3;
    (*(*a3 + 56))(a3, v6);
  }

  else if (AppleBCMWLANIOReporting::getLogger(this))
  {
    AppleBCMWLANIOReporting::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::iterateUpdateLeaveReason(this);
    }
  }

  v4 = *(v9 + 6);
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t ___ZN31AppleBCMWLANIOReportingPerSlice23iterateUpdateJoinReasonEP19ChannelSwitchReportP12OSDictionaryP8OSNumber_block_invoke(uint64_t a1, OSMetaClassBase *anObject)
{
  v3 = *(a1 + 56);
  *(*(*(a1 + 32) + 8) + 24) = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (!v4 || *(*(*(a1 + 40) + 8) + 24) >= *(a1 + 64))
  {
    return 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = AppleBCMWLANIOReportingPerSlice::processUpdateJoinReason(v3, *(a1 + 72), *(a1 + 80), v4);
  if (*(*(*(a1 + 48) + 8) + 24) != -536870212)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    return 1;
  }

  result = AppleBCMWLANIOReporting::getLogger(v3);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      ___ZN31AppleBCMWLANIOReportingPerSlice23iterateUpdateJoinReasonEP19ChannelSwitchReportP12OSDictionaryP8OSNumber_block_invoke_cold_1(v3);
      return 0;
    }
  }

  return result;
}

uint64_t ___ZN31AppleBCMWLANIOReportingPerSlice24iterateUpdateLeaveReasonEP19ChannelSwitchReportP12OSDictionary_block_invoke(uint64_t a1, OSMetaClassBase *anObject)
{
  v3 = *(a1 + 48);
  result = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = AppleBCMWLANIOReportingPerSlice::processUpdateLeaveReason(v3, *(a1 + 56), *(a1 + 64), *(*(*(a1 + 32) + 8) + 24));
    if (*(*(*(a1 + 40) + 8) + 24) == -536870212)
    {
      result = AppleBCMWLANIOReporting::getLogger(v3);
      if (result)
      {
        AppleBCMWLANIOReporting::getLogger(v3);
        result = CCLogStream::shouldLog();
        if (result)
        {
          ___ZN31AppleBCMWLANIOReportingPerSlice24iterateUpdateLeaveReasonEP19ChannelSwitchReportP12OSDictionary_block_invoke_cold_1(v3);
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

void __copy_helper_block_8_32r40r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void __destroy_helper_block_8_32r40r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

uint64_t AppleBCMWLANIOReportingPerSlice::iterateUpdateChannelReports(uint64_t a1, unsigned int a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = -536870212;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v11[3] = 0;
  v2 = *(a1 + 56);
  v3 = *(v2 + 8 * a2 + 968);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v10 = 0;
  LODWORD(v2) = *(v2 + 4 * a2 + 1016);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = ___ZN31AppleBCMWLANIOReportingPerSlice27iterateUpdateChannelReportsE19AppleBCMWLANSliceId_block_invoke;
  v6[6] = &v12;
  v6[7] = a1;
  v6[3] = &__block_descriptor_tmp_135;
  v6[4] = v11;
  v6[5] = v9;
  v7 = v2;
  v8 = a2;
  (*(*v3 + 56))(v3, v6);
  v4 = *(v13 + 6);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v12, 8);
  return v4;
}

uint64_t ___ZN31AppleBCMWLANIOReportingPerSlice27iterateUpdateChannelReportsE19AppleBCMWLANSliceId_block_invoke(uint64_t a1, OSMetaClassBase *anObject)
{
  v3 = *(a1 + 56);
  result = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (result)
  {
    v5 = *(*(a1 + 40) + 8);
    v7 = *(v5 + 24);
    v6 = (v5 + 24);
    if (v7 >= *(a1 + 64))
    {
      return 0;
    }

    *(*(*(a1 + 48) + 8) + 24) = AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports(v3, *(a1 + 68), *(*(*(a1 + 32) + 8) + 24), v6);
    if (*(*(*(a1 + 48) + 8) + 24) == -536870212)
    {
      result = AppleBCMWLANIOReporting::getLogger(v3);
      if (result)
      {
        AppleBCMWLANIOReporting::getLogger(v3);
        result = CCLogStream::shouldLog();
        if (result)
        {
          ___ZN31AppleBCMWLANIOReportingPerSlice27iterateUpdateChannelReportsE19AppleBCMWLANSliceId_block_invoke_cold_1(v3);
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

uint64_t AppleBCMWLANIOReportingPerSlice::updateReportersChannelSwitchReport(AppleBCMWLANIOReportingPerSlice *this)
{
  v2 = *(this + 7);
  if (*(v2 + 50) == 1)
  {
    (*v2)(*(v2 + 8));
  }

  v3 = 0;
  for (i = 1; ; i = 0)
  {
    v5 = i;
    if (*(*(this + 7) + 8 * v3 + 968))
    {
      if (AppleBCMWLANIOReportingPerSlice::iterateUpdateChannelReports(this, v3))
      {
        break;
      }
    }

    v3 = 1;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  AppleBCMWLANIOReportingPerSlice::updateReportersChannelSwitchReport(this);
  return v7;
}

const OSDictionary *AppleBCMWLANIOReportingPerSlice::processConfigureChannelReports(AppleBCMWLANIOReporting *a1, uint64_t a2, OSObject *aKey, int a4)
{
  Object = OSDictionary::getObject(*(*(a1 + 7) + 8 * a2 + 968), aKey);
  v8 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
  if (!v8)
  {
    AppleBCMWLANIOReportingPerSlice::processConfigureChannelReports(a1);
    return v21;
  }

  v9 = v8;
  if (AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1, v8, a2))
  {
    AppleBCMWLANIOReportingPerSlice::processConfigureChannelReports(a1);
    return v21;
  }

  v10 = OSDictionary::getObject(v9, *(*(a1 + 7) + 1464));
  v11 = OSMetaClassBase::safeMetaCast(v10, gOSNumberMetaClass);
  if (!v11)
  {
    AppleBCMWLANIOReportingPerSlice::processConfigureChannelReports();
    return v21;
  }

  v12 = v11;
  v13 = OSDictionary::getObject(v9, *(*(a1 + 7) + 1408));
  result = OSMetaClassBase::safeMetaCast(v13, gOSDictionaryMetaClass);
  if (result)
  {
    v15 = result;
    v16 = OSDictionary::getObject(result, *(*(a1 + 7) + 1416));
    if (!OSMetaClassBase::safeMetaCast(v16, gOSNumberMetaClass))
    {
      AppleBCMWLANIOReportingPerSlice::processConfigureChannelReports();
      return v21;
    }

    v17 = OSDictionary::getObject(v15, *(*(a1 + 7) + 1424));
    if (!OSMetaClassBase::safeMetaCast(v17, gOSNumberMetaClass))
    {
      AppleBCMWLANIOReportingPerSlice::processConfigureChannelReports();
      return v21;
    }

    if (a4)
    {
      AppleBCMWLANChanSpecHandle = AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
      v19 = OSNumber::unsigned16BitValue(v12);
      LOWORD(AppleBCMWLANChanSpecHandle) = AppleBCMWLANChanSpec::getAppleChannelSpec(AppleBCMWLANChanSpecHandle, v19);
      AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
      v20 = AppleBCMWLANChanSpec::convToStateID(AppleBCMWLANChanSpecHandle);
      result = IOStateReporter::setStateID(*(*(a1 + 7) + 8 * a2 + 992), (a2 << 56) ^ 0x5350537752000000, 0, v20);
      if (result)
      {
        AppleBCMWLANIOReportingPerSlice::processConfigureChannelReports(a1, v20, result, &v21);
        return v21;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(AppleBCMWLANIOReporting *a1, OSDictionary *a2, int a3)
{
  v6 = IOMallocZeroData();
  v88 = v6;
  v89 = xmmword_10033B200;
  DWORD2(v89) = 4;
  if (!v6)
  {
    *&v89 = 0;
  }

  v86 = IOMallocZeroData();
  v87 = xmmword_10033B210;
  DWORD2(v87) = 4;
  if (!v86)
  {
    *&v87 = 0;
  }

  v84 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v82 = v7;
  v83 = v7;
  *anObject = v7;
  *v81 = v7;
  if (v6)
  {
    *(&v83 + 1) = &v88;
    v84 = &v86;
    LOWORD(v83) = 0;
    BYTE2(v83) = 0;
    LODWORD(anObject[0]) = a3;
    Object = OSDictionary::getObject(a2, *(*(a1 + 7) + 1464));
    v82[0] = OSMetaClassBase::safeMetaCast(Object, gOSNumberMetaClass);
    if (!v82[0])
    {
      AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
      goto LABEL_71;
    }

    AppleBCMWLANChanSpecHandle = AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
    v10 = OSNumber::unsigned16BitValue(v82[0]);
    LOWORD(AppleBCMWLANChanSpecHandle) = AppleBCMWLANChanSpec::getAppleChannelSpec(AppleBCMWLANChanSpecHandle, v10);
    AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
    AppleBCMWLANChanSpec::convToAscii(AppleBCMWLANChanSpecHandle, *v84, 0x14u);
    if (!**v84)
    {
      strcpy(*v84, "UnknownChan");
    }

    v11 = 3758097084;
    v12 = OSDictionary::getObject(a2, *(*(a1 + 7) + 1472));
    anObject[1] = OSMetaClassBase::safeMetaCast(v12, gIOStateReporterMetaClass);
    v13 = OSDictionary::getObject(a2, *(*(a1 + 7) + 1480));
    v81[0] = OSMetaClassBase::safeMetaCast(v13, gIOSimpleReporterMetaClass);
    v14 = OSDictionary::getObject(a2, *(*(a1 + 7) + 1488));
    v81[1] = OSMetaClassBase::safeMetaCast(v14, gIOSimpleReporterMetaClass);
    v15 = OSDictionary::getObject(a2, *(*(a1 + 7) + 1408));
    v16 = OSMetaClassBase::safeMetaCast(v15, gOSDictionaryMetaClass);
    if (!v16)
    {
      v22 = 0;
      v23 = 0;
      v21 = 0;
      v19 = 0;
LABEL_43:
      v58 = OSDictionary::getObject(a2, *(*(a1 + 7) + 1448));
      v59 = OSMetaClassBase::safeMetaCast(v58, gOSDictionaryMetaClass);
      if (!v59)
      {
LABEL_55:
        if (anObject[1])
        {
          v75 = v22;
        }

        else
        {
          v75 = 0;
        }

        if (v75)
        {
          (anObject[1]->release)();
          anObject[1] = 0;
        }

        v76 = !v19;
        if (!v21)
        {
          v76 = 1;
        }

        if ((v76 & 1) == 0)
        {
          (v21->release)(v21);
        }

        v11 = 0;
        goto LABEL_65;
      }

      v60 = OSDictionary::getObject(v59, *(*(a1 + 7) + 1456));
      v61 = OSMetaClassBase::safeMetaCast(v60, gOSDictionaryMetaClass);
      if (v61)
      {
        v62 = v61;
        if (v81[1] || !(v61->__vftable[1].Dispatch)(v61))
        {
          v63 = 0;
LABEL_52:
          v68 = AppleBCMWLANIOReportingPerSlice::iteratePerChannelJoinReporters(a1, v62, anObject);
          if (!v68)
          {
            if (BYTE2(v83) == 1)
            {
              snprintf(**(&v83 + 1), 0x32uLL, "%s %s", "Channel Switch: Channel", *v84);
              v69 = AppleBCMWLANIOReporting::getRemoveReporterCallback(a1);
              Target = AppleBCMWLANIOReporting::getTarget(a1);
              CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
              v69(Target, CurrentBSS, 0, **(&v83 + 1), "Reasons to Leave");
              AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
              v73 = AppleBCMWLANIOReporting::getTarget(a1);
              v74 = AppleBCMWLANBssManager::getCurrentBSS(a1);
              AddReporterCallback(v73, v74, v81[1], **(&v83 + 1), "Reasons to Leave");
            }

            goto LABEL_55;
          }

          v11 = v68;
          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
            }
          }

          goto LABEL_129;
        }

        v64 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        ReporterProvider = IO80211Controller::getReporterProvider(v64);
        v81[1] = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v66);
        if (v81[1])
        {
          Reporter = AppleBCMWLANIOReporting::getReporter(a1);
          if (OSSet::setObject(Reporter, v81[1]))
          {
            BYTE2(v83) = 1;
            if (OSDictionary::setObject(a2, *(*(a1 + 7) + 1488), v81[1]))
            {
              (v81[1]->release)(v81[1]);
              v63 = 1;
              goto LABEL_52;
            }

            if (AppleBCMWLANIOReporting::getLogger(a1))
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
              }
            }
          }

          else if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
            }
          }

          v63 = 1;
LABEL_129:
          if (v19 && v21)
          {
            (v21->release)(v21);
          }

LABEL_132:
          if (v22 && anObject[1])
          {
            (anObject[1]->release)(anObject[1]);
            anObject[1] = 0;
          }

          if (v81[0])
          {
            v78 = v23;
          }

          else
          {
            v78 = 0;
          }

          if (v78 == 1)
          {
            (v81[0]->release)();
            v81[0] = 0;
          }

          if (v81[1])
          {
            v79 = v63;
          }

          else
          {
            v79 = 0;
          }

          if (v79 == 1)
          {
            (v81[1]->release)();
            v81[1] = 0;
          }

          goto LABEL_65;
        }

        if (AppleBCMWLANIOReporting::getLogger(a1))
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
          }
        }
      }

      else if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
        }
      }

LABEL_89:
      v63 = 0;
      goto LABEL_129;
    }

    v17 = v16;
    v18 = OSDictionary::getObject(a2, *(*(a1 + 7) + 1496));
    v19 = v18 == 0;
    if (v18)
    {
      v20 = OSDictionary::getObject(a2, *(*(a1 + 7) + 1496));
      v21 = OSMetaClassBase::safeMetaCast(v20, gOSNumberMetaClass);
      if (!v21)
      {
        AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
LABEL_71:
        v11 = v85;
        goto LABEL_65;
      }
    }

    else
    {
      v24 = OSNumber::withNumber(0, 0x40uLL);
      if (!v24)
      {
        AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
        goto LABEL_71;
      }

      v21 = v24;
      if (!OSDictionary::setObject(a2, *(*(a1 + 7) + 1496), v24))
      {
        if (AppleBCMWLANIOReporting::getLogger(a1))
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
          }
        }

        v22 = 0;
        v23 = 0;
        v63 = 0;
        v19 = 1;
        goto LABEL_129;
      }
    }

    v25 = OSDictionary::getObject(v17, *(*(a1 + 7) + 1432));
    v26 = OSMetaClassBase::safeMetaCast(v25, gOSDictionaryMetaClass);
    if (v26)
    {
      v27 = v26;
      v28 = OSNumber::unsigned64BitValue(v21);
      v29 = (*(*v27 + 72))(v27);
      v22 = v28 != v29;
      if (v28 == v29)
      {
        goto LABEL_27;
      }

      if (anObject[1])
      {
        v30 = AppleBCMWLANIOReporting::getReporter(a1);
        OSSet::removeObject(v30, anObject[1]);
        OSDictionary::removeObject(a2, *(*(a1 + 7) + 1472));
        anObject[1] = 0;
      }

      v31 = AppleBCMWLANBssManager::getCurrentBSS(a1);
      v32 = IO80211Controller::getReporterProvider(v31);
      v33 = (*(*v27 + 72))(v27);
      anObject[1] = IOStateReporter::with(v32, 0x8010, v33, 0, v34);
      if (anObject[1])
      {
        v35 = AppleBCMWLANIOReporting::getReporter(a1);
        if (OSSet::setObject(v35, anObject[1]))
        {
          LOBYTE(v83) = 1;
          if (OSDictionary::setObject(a2, *(*(a1 + 7) + 1472), anObject[1]))
          {
            v36 = OSNumber::unsigned16BitValue(v82[0]);
            v11 = IOReporter::addChannel(anObject[1], v36 | (LODWORD(anObject[0]) << 56) | 0x50517452000000, "Activities");
            if (!v11)
            {
LABEL_27:
              if (v81[0] || !(*(*v27 + 72))(v27))
              {
                v23 = 0;
LABEL_34:
                v41 = AppleBCMWLANIOReportingPerSlice::iteratePerChannelJoinReporters(a1, v27, anObject);
                if (v41)
                {
                  v11 = v41;
                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
                    }
                  }

                  goto LABEL_89;
                }

                if (v83 == 1)
                {
                  v42 = *(*(a1 + 7) + 1496);
                  v43 = (*(*v27 + 72))(v27);
                  v44 = AppleBCMWLANIOReportingPerSlice::replaceNumberValue(a1, v21, a2, v42, v43);
                  if (!v44)
                  {
                    if (AppleBCMWLANIOReporting::getLogger(a1))
                    {
                      AppleBCMWLANIOReporting::getLogger(a1);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
                      }
                    }

                    v11 = 0;
                    v63 = 0;
                    goto LABEL_132;
                  }

                  v45 = v44;
                  if (!v18)
                  {
                    (v21->release)(v21);
                  }

                  snprintf(**(&v83 + 1), 0x32uLL, "%s %s", "Channel Switch: Channel", *v84);
                  v46 = AppleBCMWLANIOReporting::getRemoveReporterCallback(a1);
                  v47 = AppleBCMWLANIOReporting::getTarget(a1);
                  v48 = AppleBCMWLANBssManager::getCurrentBSS(a1);
                  v46(v47, v48, 0, **(&v83 + 1), "Activity Residency");
                  v49 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
                  v50 = AppleBCMWLANIOReporting::getTarget(a1);
                  v51 = AppleBCMWLANBssManager::getCurrentBSS(a1);
                  v49(v50, v51, anObject[1], **(&v83 + 1), "Activity Residency");
                  v19 = 0;
                  v21 = v45;
                }

                if (BYTE1(v83) == 1)
                {
                  snprintf(**(&v83 + 1), 0x32uLL, "%s %s", "Channel Switch: Channel", *v84);
                  v52 = AppleBCMWLANIOReporting::getRemoveReporterCallback(a1);
                  v53 = AppleBCMWLANIOReporting::getTarget(a1);
                  v54 = AppleBCMWLANBssManager::getCurrentBSS(a1);
                  v52(v53, v54, 0, **(&v83 + 1), "Reason to Join");
                  v55 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
                  v56 = AppleBCMWLANIOReporting::getTarget(a1);
                  v57 = AppleBCMWLANBssManager::getCurrentBSS(a1);
                  v55(v56, v57, v81[0], **(&v83 + 1), "Reason to Join");
                }

                v11 = 0;
                goto LABEL_43;
              }

              v37 = AppleBCMWLANBssManager::getCurrentBSS(a1);
              v38 = IO80211Controller::getReporterProvider(v37);
              v81[0] = IOSimpleReporter::with(v38, 0x8010, 0, v39);
              if (v81[0])
              {
                v40 = AppleBCMWLANIOReporting::getReporter(a1);
                if (OSSet::setObject(v40, v81[0]))
                {
                  BYTE1(v83) = 1;
                  if (OSDictionary::setObject(a2, *(*(a1 + 7) + 1480), v81[0]))
                  {
                    (v81[0]->release)(v81[0]);
                    v23 = 1;
                    goto LABEL_34;
                  }

                  if (AppleBCMWLANIOReporting::getLogger(a1))
                  {
                    AppleBCMWLANIOReporting::getLogger(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
                    }
                  }
                }

                else if (AppleBCMWLANIOReporting::getLogger(a1))
                {
                  AppleBCMWLANIOReporting::getLogger(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
                  }
                }

                v63 = 0;
                v23 = 1;
                goto LABEL_129;
              }

              if (AppleBCMWLANIOReporting::getLogger(a1))
              {
                AppleBCMWLANIOReporting::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
                }
              }

LABEL_88:
              v23 = 0;
              goto LABEL_89;
            }

            if (AppleBCMWLANIOReporting::getLogger(a1))
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
              }
            }
          }

          else if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
            }
          }
        }

        else if (AppleBCMWLANIOReporting::getLogger(a1))
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
          }
        }

        v23 = 0;
        v63 = 0;
        v22 = 1;
        goto LABEL_129;
      }

      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
        }
      }
    }

    else if (AppleBCMWLANIOReporting::getLogger(a1))
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
      }
    }

    v22 = 0;
    goto LABEL_88;
  }

  v11 = 3758097084;
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(a1);
    }
  }

LABEL_65:
  if (v86)
  {
    IOFreeData();
  }

  if (v88)
  {
    IOFreeData();
  }

  return v11;
}

uint64_t AppleBCMWLANIOReportingPerSlice::iterateConfigureChannelReports(uint64_t a1, unsigned int a2, char a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = -536870212;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v9[3] = 0;
  v3 = *(*(a1 + 56) + 8 * a2 + 968);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = ___ZN31AppleBCMWLANIOReportingPerSlice30iterateConfigureChannelReportsE19AppleBCMWLANSliceIdb_block_invoke;
  v6[3] = &__block_descriptor_tmp_141;
  v6[4] = v9;
  v6[5] = &v10;
  v6[6] = a1;
  v7 = a2;
  v8 = a3;
  (*(*v3 + 56))(v3, v6);
  v4 = *(v11 + 6);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v10, 8);
  return v4;
}

uint64_t ___ZN31AppleBCMWLANIOReportingPerSlice30iterateConfigureChannelReportsE19AppleBCMWLANSliceIdb_block_invoke(uint64_t a1, OSMetaClassBase *anObject)
{
  v3 = *(a1 + 48);
  result = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = AppleBCMWLANIOReportingPerSlice::processConfigureChannelReports(v3, *(a1 + 56), *(*(*(a1 + 32) + 8) + 24), *(a1 + 60));
    if (*(*(*(a1 + 40) + 8) + 24) == -536870212)
    {
      result = AppleBCMWLANIOReporting::getLogger(v3);
      if (result)
      {
        AppleBCMWLANIOReporting::getLogger(v3);
        result = CCLogStream::shouldLog();
        if (result)
        {
          ___ZN31AppleBCMWLANIOReportingPerSlice30iterateConfigureChannelReportsE19AppleBCMWLANSliceIdb_block_invoke_cold_1(v3);
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

uint64_t AppleBCMWLANIOReportingPerSlice::configureReportersChannelSwitchReport(AppleBCMWLANIOReportingPerSlice *this)
{
  v2 = 3758097084;
  v3 = IOMallocZeroData();
  if (!v3)
  {
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReportingPerSlice::configureReportersChannelSwitchReport(this);
      }
    }

    return v2;
  }

  v4 = v3;
  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    v8 = *(this + 7);
    v9 = *(v8 + 8 * v5 + 968);
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = *(v8 + 4 * v5 + 1016);
    if (v10 != (*(*v9 + 72))(v9))
    {
      break;
    }

    v11 = AppleBCMWLANIOReportingPerSlice::iterateConfigureChannelReports(this, v5, 0);
    if (v11)
    {
      goto LABEL_21;
    }

LABEL_14:
    v6 = 0;
    v5 = 1;
    if ((v7 & 1) == 0)
    {
      v2 = 0;
      goto LABEL_16;
    }
  }

  if (*(*(this + 7) + 8 * v5 + 992))
  {
    Reporter = AppleBCMWLANIOReporting::getReporter(this);
    OSSet::removeObject(Reporter, *(*(this + 7) + 8 * v5 + 992));
  }

  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(this);
  ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
  v15 = *(*(this + 7) + 8 * v5 + 968);
  v16 = (*(*v15 + 72))(v15);
  *(*(this + 7) + 8 * v5 + 992) = IOStateReporter::with(ReporterProvider, 0x8010, v16, 0, v17);
  if (!*(*(this + 7) + 8 * v5 + 992))
  {
    AppleBCMWLANIOReportingPerSlice::configureReportersChannelSwitchReport(this);
LABEL_27:
    v2 = v28;
    goto LABEL_16;
  }

  v18 = AppleBCMWLANIOReporting::getReporter(this);
  if ((OSSet::setObject(v18, *(*(this + 7) + 8 * v5 + 992)) & 1) == 0)
  {
    AppleBCMWLANIOReportingPerSlice::configureReportersChannelSwitchReport(this);
    goto LABEL_27;
  }

  v19 = *(*(this + 7) + 8 * v5 + 992);
  (*(*v19 + 16))(v19);
  if (IOReporter::addChannel(*(*(this + 7) + 8 * v5 + 992), (v5 << 56) ^ 0x5350537752000000, "Residency"))
  {
    AppleBCMWLANIOReportingPerSlice::configureReportersChannelSwitchReport(this);
    goto LABEL_27;
  }

  v20 = *(*(this + 7) + 8 * v5 + 968);
  *(*(this + 7) + 4 * v5 + 1016) = (*(*v20 + 72))(v20);
  v11 = AppleBCMWLANIOReportingPerSlice::iterateConfigureChannelReports(this, v5, 1);
  if (!v11)
  {
    snprintf(v4, 0x32uLL, "%s %d", "Channel Switch: Slice", v5);
    v21 = AppleBCMWLANIOReporting::getRemoveReporterCallback(this);
    Target = AppleBCMWLANIOReporting::getTarget(this);
    v23 = AppleBCMWLANBssManager::getCurrentBSS(this);
    v21(Target, v23, 0, v4, "Residency");
    AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(this);
    v25 = AppleBCMWLANIOReporting::getTarget(this);
    v26 = AppleBCMWLANBssManager::getCurrentBSS(this);
    AddReporterCallback(v25, v26, *(*(this + 7) + 8 * v5 + 992), v4, "Residency");
    goto LABEL_14;
  }

LABEL_21:
  v2 = v11;
  if (AppleBCMWLANIOReporting::getLogger(this))
  {
    AppleBCMWLANIOReporting::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::configureReportersChannelSwitchReport(this);
    }
  }

LABEL_16:
  IOFreeData();
  return v2;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processPerChannelJoinReporters(AppleBCMWLANIOReporting *a1, OSDictionary *this, unsigned int *a3)
{
  if (!this)
  {
    AppleBCMWLANIOReportingPerSlice::processPerChannelJoinReporters(a1);
    return v28;
  }

  Object = OSDictionary::getObject(this, *(*(a1 + 7) + 1440));
  v7 = OSMetaClassBase::safeMetaCast(Object, gOSNumberMetaClass);
  if (!v7)
  {
    AppleBCMWLANIOReportingPerSlice::processPerChannelJoinReporters(a1);
    return v28;
  }

  v8 = v7;
  v9 = OSDictionary::getObject(this, *(*(a1 + 7) + 1416));
  if (!OSMetaClassBase::safeMetaCast(v9, gOSNumberMetaClass))
  {
    AppleBCMWLANIOReportingPerSlice::processPerChannelJoinReporters(a1);
    return v28;
  }

  v10 = OSDictionary::getObject(this, *(*(a1 + 7) + 1424));
  v11 = OSMetaClassBase::safeMetaCast(v10, gOSNumberMetaClass);
  if (!v11)
  {
    AppleBCMWLANIOReportingPerSlice::processPerChannelJoinReporters(a1);
    return v28;
  }

  v12 = v11;
  v13 = *a3;
  v14 = OSNumber::unsigned16BitValue(*(a3 + 4));
  v15 = OSNumber::unsigned32BitValue(v8);
  v16 = v14 | (v13 << 56);
  v17 = v15 << 16;
  v18 = v16 | 0x50457452000000;
  v19 = *(a3 + 2);
  v20 = OSNumber::unsigned64BitValue(v12);
  if (IOSimpleReporter::setValue(v19, v18 | v17, v20))
  {
    v21 = *(a3 + 2);
    v22 = OSNumber::unsigned32BitValue(v8);
    if (IOReporter::addChannel(v21, v18 | v17, *(&kSliceChannelSwitchReport + 2 * v22 + 3)))
    {
      AppleBCMWLANIOReportingPerSlice::processPerChannelJoinReporters(a1);
      return v28;
    }

    *(a3 + 49) = 1;
  }

  if (*(a3 + 48) != 1)
  {
    return 0;
  }

  v23 = *(a3 + 1);
  v24 = *a3;
  v25 = OSNumber::unsigned16BitValue(*(a3 + 4)) | (v24 << 56);
  v26 = OSNumber::unsigned32BitValue(v8);
  result = IOStateReporter::setStateID(v23, v25 | 0x50517452000000, 0, *(&kStateIDChannelSwitch + 2 * v26));
  if (result)
  {
    AppleBCMWLANIOReportingPerSlice::processPerChannelJoinReporters(a1, v8, a3, result, &v28);
    return v28;
  }

  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::iteratePerChannelJoinReporters(AppleBCMWLANIOReporting *this, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = -536870212;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v8[3] = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v7[3] = 0;
  if (a2 && a3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = ___ZN31AppleBCMWLANIOReportingPerSlice30iteratePerChannelJoinReportersEP12OSDictionaryP26perChannelJoinReporterData_block_invoke;
    v6[3] = &__block_descriptor_tmp_151;
    v6[4] = v8;
    v6[7] = this;
    v6[8] = a2;
    v6[9] = a3;
    v6[5] = v7;
    v6[6] = &v9;
    (*(*a2 + 56))(a2, v6);
  }

  else if (AppleBCMWLANIOReporting::getLogger(this))
  {
    AppleBCMWLANIOReporting::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::iteratePerChannelJoinReporters(this);
    }
  }

  v4 = *(v10 + 6);
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t ___ZN31AppleBCMWLANIOReportingPerSlice30iteratePerChannelJoinReportersEP12OSDictionaryP26perChannelJoinReporterData_block_invoke(uint64_t a1, OSMetaClassBase *anObject)
{
  v3 = *(a1 + 56);
  result = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (result)
  {
    Object = OSDictionary::getObject(*(a1 + 64), *(*(*(a1 + 32) + 8) + 24));
    *(*(*(a1 + 40) + 8) + 24) = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      *(*(a1 + 72) + 40) = *(*(*(a1 + 32) + 8) + 24);
      *(*(*(a1 + 48) + 8) + 24) = AppleBCMWLANIOReportingPerSlice::processPerChannelJoinReporters(v3, *(*(*(a1 + 40) + 8) + 24), *(a1 + 72));
      if (*(*(*(a1 + 48) + 8) + 24) == -536870212)
      {
        result = AppleBCMWLANIOReporting::getLogger(v3);
        if (result)
        {
          AppleBCMWLANIOReporting::getLogger(v3);
          result = CCLogStream::shouldLog();
          if (result)
          {
            ___ZN31AppleBCMWLANIOReportingPerSlice30iteratePerChannelJoinReportersEP12OSDictionaryP26perChannelJoinReporterData_block_invoke_cold_1(v3);
            return 0;
          }
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      result = AppleBCMWLANIOReporting::getLogger(v3);
      if (result)
      {
        AppleBCMWLANIOReporting::getLogger(v3);
        result = CCLogStream::shouldLog();
        if (result)
        {
          ___ZN31AppleBCMWLANIOReportingPerSlice30iteratePerChannelJoinReportersEP12OSDictionaryP26perChannelJoinReporterData_block_invoke_cold_2(v3);
          return 0;
        }
      }
    }
  }

  return result;
}

OSNumberPtr AppleBCMWLANIOReportingPerSlice::replaceNumberValue(AppleBCMWLANIOReportingPerSlice *this, OSNumber *a2, OSDictionary *a3, const OSString *a4, uint64_t a5)
{
  v9 = OSNumber::numberOfBits(a2);
  v10 = OSNumber::withNumber(a5, v9);
  atomic_load(&a2->refcount);
  if (v10)
  {
    v11 = v10;
    if (OSDictionary::setObject(a3, a4, v10))
    {
      (v11->release)(v11);
    }

    else
    {
      AppleBCMWLANIOReportingPerSlice::replaceNumberValue();
      return 0;
    }
  }

  else
  {
    AppleBCMWLANIOReportingPerSlice::replaceNumberValue();
    return v13;
  }

  return v11;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initChanSWReporter(AppleBCMWLANBssManager *a1, unsigned int a2)
{
  v27 = 0;
  v4 = IOMallocZeroData();
  v5 = v4;
  if (v4)
  {
    if (a2 < 3)
    {
      snprintf(v4, 0x32uLL, "%s %d", "Channel Switch: Slice", a2);
      v6 = *(a1 + 7);
      if (!*(v6 + 8 * a2 + 896))
      {
        v7 = 3758097084;
        CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
        ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
        *(*(a1 + 7) + 8 * a2 + 896) = IOSimpleReporter::with(ReporterProvider, 0x8010, 0, v10);
        if (!*(*(a1 + 7) + 8 * a2 + 896))
        {
          goto LABEL_29;
        }

        Reporter = AppleBCMWLANIOReporting::getReporter(a1);
        if ((OSSet::setObject(Reporter, *(*(a1 + 7) + 8 * a2 + 896)) & 1) == 0)
        {
          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReportingPerSlice::initChanSWReporter(a1);
            }
          }

          goto LABEL_26;
        }

        v12 = *(*(a1 + 7) + 8 * a2 + 896);
        (*(*v12 + 16))(v12);
        v6 = *(a1 + 7);
      }

      if (!*(v6 + 8 * a2 + 944))
      {
        v13 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        IO80211Controller::getReporterProvider(v13);
        *(*(a1 + 7) + 8 * a2 + 944) = IOHistogramReporter::with();
        if (!*(*(a1 + 7) + 8 * a2 + 944))
        {
          v7 = 3758097084;
          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReportingPerSlice::initChanSWReporter(a1);
            }
          }

          goto LABEL_26;
        }

        v14 = AppleBCMWLANIOReporting::getReporter(a1);
        if ((OSSet::setObject(v14, *(*(a1 + 7) + 8 * a2 + 944)) & 1) == 0)
        {
          v7 = 3758097084;
          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReportingPerSlice::initChanSWReporter(a1);
            }
          }

          goto LABEL_26;
        }

        v15 = *(*(a1 + 7) + 8 * a2 + 944);
        (*(*v15 + 16))(v15);
        AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
        Target = AppleBCMWLANIOReporting::getTarget(a1);
        v18 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        v19 = AddReporterCallback(Target, v18, *(*(a1 + 7) + 8 * a2 + 944), v5, "Dwell Time");
        if (v19)
        {
          v7 = v19;
          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReportingPerSlice::initChanSWReporter(a1);
            }
          }

          goto LABEL_26;
        }

        v6 = *(a1 + 7);
      }

      if (*(v6 + 8 * a2 + 872))
      {
LABEL_16:
        if (IOParseBootArgNumber("wlan.debug.chanswlimit", &v27, 4))
        {
          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReportingPerSlice::initChanSWReporter(a1);
            }
          }

          v7 = 0;
          *(*(a1 + 7) + 51) = 1;
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_26;
      }

      v7 = 3758097084;
      v20 = AppleBCMWLANBssManager::getCurrentBSS(a1);
      v21 = IO80211Controller::getReporterProvider(v20);
      *(*(a1 + 7) + 8 * a2 + 872) = IOSimpleReporter::with(v21, 0x8010, 0, v22);
      if (*(*(a1 + 7) + 8 * a2 + 872))
      {
        v23 = AppleBCMWLANIOReporting::getReporter(a1);
        if ((OSSet::setObject(v23, *(*(a1 + 7) + 8 * a2 + 872)) & 1) == 0)
        {
          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReportingPerSlice::initChanSWReporter(a1);
            }
          }

          goto LABEL_26;
        }

        v24 = *(*(a1 + 7) + 8 * a2 + 872);
        (*(*v24 + 16))(v24);
        goto LABEL_16;
      }

LABEL_29:
      v7 = 3758097085;
LABEL_26:
      IOFreeData();
      return v7;
    }
  }

  else if (a2 <= 2)
  {
    v7 = 3758097084;
    if (AppleBCMWLANIOReporting::getLogger(a1))
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReportingPerSlice::initChanSWReporter(a1);
      }
    }

    return v7;
  }

  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      CCLogStream::logEmergency(Logger, "[dk] %s@%d:Out of range slice index %d\n", "initChanSWReporter", 5835, a2);
    }
  }

  v7 = 3758097084;
  if (v5)
  {
    goto LABEL_26;
  }

  return v7;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV1PerSlice(AppleBCMWLANIOReporting *a1, OSData *inData, uint64_t a3)
{
  v9[0] = 0;
  v5 = OSData::withData(inData);
  if (v5)
  {
    v6 = v5;
    OSData::appendBytes(v5, v9, 4uLL);
    v7 = AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(a1, v6, a3);
    (v6->release)(v6);
  }

  else
  {
    AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV1PerSlice(a1);
    return v9[1];
  }

  return v7;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(AppleBCMWLANIOReporting *a1, OSData *this, uint64_t a3)
{
  inited = -536870212;
  Length = OSData::getLength(this);
  if (a3 >= 3)
  {
    AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(a1);
    return inited;
  }

  v7 = Length;
  if (OSData::getLength(this) != 28 && OSData::getLength(this) != 24)
  {
    AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(a1);
    return inited;
  }

  v95 = -21846;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v94[1] = v8;
  v94[2] = v8;
  v94[0] = v8;
  *v90 = v8;
  v91 = v8;
  v92 = v8;
  v93 = -21846;
  v9 = a3;
  if ((*(*(a1 + 7) + a3 + 47) & 1) == 0)
  {
    inited = AppleBCMWLANIOReportingPerSlice::initChanSWReporter(a1, a3);
    if (inited)
    {
      AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(a1);
      return inited;
    }

    *(*(a1 + 7) + a3 + 47) = 1;
  }

  AppleBCMWLANChanSpecHandle = AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
  CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 4uLL);
  LOWORD(AppleBCMWLANChanSpecHandle) = AppleBCMWLANChanSpec::getAppleChannelSpec(AppleBCMWLANChanSpecHandle, CounterValueSafe);
  AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
  AppleBCMWLANChanSpec::convToAscii(AppleBCMWLANChanSpecHandle, v94, 0x32u);
  if (!LOBYTE(v94[0]))
  {
    strcpy(v94, "UnknownChan");
  }

  v12 = AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
  v13 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 8uLL);
  LOWORD(v12) = AppleBCMWLANChanSpec::getAppleChannelSpec(v12, v13);
  AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
  AppleBCMWLANChanSpec::convToAscii(v12, v90, 0x32u);
  if (!v90[0])
  {
    strcpy(v90, "UnknownChan");
  }

  v14 = *(*(a1 + 7) + 8 * a3 + 944);
  v15 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x10uLL);
  inited = IOHistogramReporter::tallyValue(v14, v15);
  v16 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x10uLL);
  v17 = v16;
  if (v16 >= 0x418571)
  {
    if (v16 != -1)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      if (v7 == 28)
      {
        if (Logger)
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            v86 = AppleBCMWLANIOReporting::getLogger(a1);
            v84 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0);
            v19 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 4uLL);
            AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 8uLL);
            AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0xCuLL);
            AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x10uLL);
            AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x14uLL);
            AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x18uLL);
            CCLogStream::logCrit(v86, "[dk] %s@%d:time %llu old_chanspec %llu %s new_chanspec %llu %s chansw_reason %llu dwell_time %llu core %llu phychanswtime %llu\n", "reportChannelSwitchV2PerSlice", 5987, v84, v19, v94);
          }
        }
      }

      else if (Logger)
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v88 = AppleBCMWLANIOReporting::getLogger(a1);
          v81 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0);
          v82 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 4uLL);
          AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 8uLL);
          AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0xCuLL);
          AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x10uLL);
          AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x14uLL);
          CCLogStream::logCrit(v88, "[dk] %s@%d:time %llu old_chanspec %llu %s new_chanspec %llu %s chansw_reason %llu dwell_time %llu core %llu\n", "reportChannelSwitchV2PerSlice", 5976, v81, v82);
        }
      }
    }

    v17 = 1;
  }

  v20 = *(*(a1 + 7) + 8 * a3 + 872);
  v21 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 8uLL);
  v22 = (a3 << 56) | 0x50537756000000;
  inited = IOSimpleReporter::incrementValue(v20, v22 | v21, 1);
  if (inited)
  {
    v23 = *(*(a1 + 7) + 8 * a3 + 872);
    v24 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 8uLL);
    inited = IOReporter::addChannel(v23, v24 | v22, v90);
    if (inited)
    {
      AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(a1);
      return inited;
    }

    v25 = *(*(a1 + 7) + 8 * a3 + 872);
    v26 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 8uLL);
    inited = IOSimpleReporter::incrementValue(v25, v26 | v22, 1);
    if (inited)
    {
      AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(a1);
      return inited;
    }

    v27 = IOMallocZeroData();
    if (!v27)
    {
      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(a1);
        }
      }

      return inited;
    }

    v28 = v27;
    snprintf(v27, 0x32uLL, "%s %d", "Channel Switch: Slice", a3);
    v29 = AppleBCMWLANIOReporting::getRemoveReporterCallback(a1);
    Target = AppleBCMWLANIOReporting::getTarget(a1);
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
    v29(Target, CurrentBSS, 0, v28, "Channels Visited");
    AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
    v33 = AppleBCMWLANIOReporting::getTarget(a1);
    v34 = AppleBCMWLANBssManager::getCurrentBSS(a1);
    inited = AddReporterCallback(v33, v34, *(*(a1 + 7) + 8 * a3 + 872), v28, "Channels Visited");
    IOFreeData();
  }

  v35 = a3 << 56;
  if (v7 == 28)
  {
    v36 = *(*(a1 + 7) + 8 * a3 + 920);
    if (v36)
    {
      goto LABEL_33;
    }

    v37 = IOMallocZeroData();
    if (!v37)
    {
      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(a1);
        }
      }

      return inited;
    }

    v38 = v37;
    snprintf(v37, 0x32uLL, "%s %d", "Channel Switch: Slice", a3);
    v39 = AppleBCMWLANBssManager::getCurrentBSS(a1);
    IO80211Controller::getReporterProvider(v39);
    *(*(a1 + 7) + 8 * a3 + 920) = IOHistogramReporter::with();
    if (*(*(a1 + 7) + 8 * a3 + 920))
    {
      Reporter = AppleBCMWLANIOReporting::getReporter(a1);
      if (OSSet::setObject(Reporter, *(*(a1 + 7) + 8 * a3 + 920)))
      {
        v41 = *(*(a1 + 7) + 8 * a3 + 920);
        (*(*v41 + 16))(v41);
        v42 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
        v43 = AppleBCMWLANIOReporting::getTarget(a1);
        v44 = AppleBCMWLANBssManager::getCurrentBSS(a1);
        inited = v42(v43, v44, *(*(a1 + 7) + 8 * a3 + 920), v38, "Phy Switch Time");
        if (!inited)
        {
          IOFreeData();
          v36 = *(*(a1 + 7) + 8 * a3 + 920);
LABEL_33:
          v45 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x18uLL);
          IOHistogramReporter::tallyValue(v36, v45);
          if (AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x18uLL) >= 0xFA1)
          {
            if (AppleBCMWLANIOReporting::getLogger(a1))
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              if (CCLogStream::shouldLog())
              {
                v87 = AppleBCMWLANIOReporting::getLogger(a1);
                v85 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0);
                v83 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 4uLL);
                v76 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 8uLL);
                v77 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0xCuLL);
                v78 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x10uLL);
                v79 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x14uLL);
                v80 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0x18uLL);
                CCLogStream::logInfo(v87, "[dk] %s@%d:time %llu old_chanspec %llu %s new_chanspec %llu %s chansw_reason %llu dwell_time %llu core %llu phychanswtime %llu\n", "reportChannelSwitchV2PerSlice", 6062, v85, v83, v94, v76, v90, v77, v78, v79, v80);
              }
            }

            if (*(*(a1 + 7) + 51) == 1)
            {
              CCFaultReporter = AppleBCMWLANIOReporting::getCCFaultReporter(a1);
              CCFaultReporter::reportFault(CCFaultReporter, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANIOReportingPerSlice.cpp", 0x17B0u, "reportChannelSwitchV2PerSlice", 0, -469794296, "phychanswtime too long");
            }
          }

          goto LABEL_39;
        }

        AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(a1);
      }

      else
      {
        AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice();
      }
    }

    else
    {
      AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice();
    }

    IOFreeData();
    return inited;
  }

LABEL_39:
  inited = IOSimpleReporter::incrementValue(*(*(a1 + 7) + 8 * a3 + 896), v35 ^ 0x5343685352777878, 1);
  if (inited)
  {
    inited = IOReporter::addChannel(*(*(a1 + 7) + 8 * a3 + 896), v35 ^ 0x5343685352777878, "Channel Switch Messages");
    if (inited)
    {
      AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(a1);
      return inited;
    }

    inited = IOSimpleReporter::incrementValue(*(*(a1 + 7) + 8 * a3 + 896), v35 ^ 0x5343685352777878, 1);
    if (inited)
    {
      AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(a1);
      return inited;
    }

    v47 = IOMallocZeroData();
    if (!v47)
    {
      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(a1);
        }
      }

      return inited;
    }

    v48 = v47;
    snprintf(v47, 0x32uLL, "%s %d", "Channel Switch: Slice", a3);
    v49 = AppleBCMWLANIOReporting::getRemoveReporterCallback(a1);
    v50 = AppleBCMWLANIOReporting::getTarget(a1);
    v51 = AppleBCMWLANBssManager::getCurrentBSS(a1);
    v49(v50, v51, 0, v48, "Channel Switch Reasons");
    v52 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
    v53 = AppleBCMWLANIOReporting::getTarget(a1);
    v54 = AppleBCMWLANBssManager::getCurrentBSS(a1);
    inited = v52(v53, v54, *(*(a1 + 7) + 8 * a3 + 896), v48, "Channel Switch Reasons");
    IOFreeData();
  }

  v55 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0xCuLL);
  v56 = v55 + 1;
  v57 = *(*(a1 + 7) + 8 * a3 + 896);
  if ((v55 & 0xFFFFFFE0) != 0)
  {
    v56 = 1;
  }

  v58 = (&kSliceChannelSwitchReport + 16 * v56);
  v59 = *v58;
  inited = IOSimpleReporter::incrementValue(*(*(a1 + 7) + 8 * a3 + 896), *v58 ^ v35, 1);
  if (!inited)
  {
    goto LABEL_51;
  }

  inited = IOReporter::addChannel(*(*(a1 + 7) + 8 * a3 + 896), v59 ^ v35, v58[1]);
  if (inited)
  {
    AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(a1);
    return inited;
  }

  inited = IOSimpleReporter::incrementValue(*(*(a1 + 7) + 8 * a3 + 896), v59 ^ v35, 1);
  if (inited)
  {
    AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(a1);
    return inited;
  }

  v60 = IOMallocZeroData();
  if (v60)
  {
    v61 = v60;
    snprintf(v60, 0x32uLL, "%s %d", "Channel Switch: Slice", a3);
    v62 = AppleBCMWLANIOReporting::getRemoveReporterCallback(a1);
    v63 = AppleBCMWLANIOReporting::getTarget(a1);
    v64 = AppleBCMWLANBssManager::getCurrentBSS(a1);
    v62(v63, v64, 0, v61, "Channel Switch Reasons");
    v65 = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
    v66 = AppleBCMWLANIOReporting::getTarget(a1);
    v67 = AppleBCMWLANBssManager::getCurrentBSS(a1);
    inited = v65(v66, v67, *(*(a1 + 7) + 8 * a3 + 896), v61, "Channel Switch Reasons");
    IOFreeData();
LABEL_51:
    v68 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 0xCuLL);
    v69 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 8uLL);
    v70 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 4uLL);
    inited = AppleBCMWLANIOReportingPerSlice::storeChannelSwitch(a1, v68, v69, v70, v17, a3);
    if (inited)
    {
      AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(a1);
    }

    else
    {
      v71 = *(*(a1 + 7) + 2 * a3 + 1040);
      if (v71 != AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 4uLL) && *(*(a1 + 7) + 2 * v9 + 1040))
      {
        v72 = AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
        v73 = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 4uLL);
        LOWORD(v72) = AppleBCMWLANChanSpec::getAppleChannelSpec(v72, v73);
        AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
        AppleBCMWLANChanSpec::convToAscii(v72, v94, 0x32u);
        v74 = AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
        LOWORD(v72) = AppleBCMWLANChanSpec::getAppleChannelSpec(v74, *(*(a1 + 7) + 2 * v9 + 1040));
        AppleBCMWLANIOReporting::getAppleBCMWLANChanSpecHandle(a1);
        AppleBCMWLANChanSpec::convToAscii(v72, v90, 0x32u);
      }

      *(*(a1 + 7) + 2 * v9 + 1040) = AppleBCMWLANUtil::getCounterValueSafe(&inited, 4uLL, this, 8uLL);
    }

    return inited;
  }

  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(a1);
    }
  }

  return inited;
}

uint64_t AppleBCMWLANIOReportingPerSlice::collectImmediateFaultDataCallback(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = v4[121];
  if (v5)
  {
    (*(*v5 + 8))(v5);
    v6 = OSString::withCString("ivars->fChannelSwitchDictionary[0].xml");
    (*(*a2 + 192))(a2, v6, *(*(a1 + 56) + 968));
    v4 = *(a1 + 56);
  }

  v7 = v4[122];
  if (v7)
  {
    (*(*v7 + 8))(v7);
    v8 = OSString::withCString("ivars->fChannelSwitchDictionary[1].xml");
    (*(*a2 + 192))(a2, v8, *(*(a1 + 56) + 976));
    v4 = *(a1 + 56);
  }

  v9 = v4[123];
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = OSString::withCString("ivars->fChannelSwitchDictionary[2].xml");
    (*(*a2 + 192))(a2, v10, *(*(a1 + 56) + 984));
  }

  return 0;
}

uint64_t AppleBCMWLANIOReportingPerSlice::configureReport(AppleBCMWLANIOReportingPerSlice *this, OSCollection *a2, OSData *a3, unsigned int *a4)
{
  v8 = (*(*this + 72))(this);
  if (v8)
  {
    v10 = v8;
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d: Failed configureAllReports 0x%x\n", "configureReport", 6183, v10);
      }
    }
  }

  else if (AppleBCMWLANIOReporting::configureReport(this, a2, a3, a4, v9))
  {
    AppleBCMWLANIOReportingPerSlice::configureReport(this);
    return v13;
  }

  else
  {
    return 0;
  }

  return v10;
}

uint64_t AppleBCMWLANIOReportingPerSlice::updateReport(AppleBCMWLANIOReportingPerSlice *this, OSCollection *a2, OSData *a3, unsigned int *a4, unint64_t *a5, unint64_t *a6, IOMemoryDescriptor *a7)
{
  v14 = (*(*this + 80))(this);
  if (v14)
  {
    v15 = v14;
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logWarn(Logger, "[dk] %s@%d: Failed updateAllReports 0x%x\n", "updateReport", 6207, v15);
      }
    }

    return v15;
  }

  else
  {

    return AppleBCMWLANIOReporting::updateReport(this, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t AppleBCMWLANIOReportingPerSlice::configureAllReports(AppleBCMWLANIOReportingPerSlice *this)
{
  v1 = *(this + 7);
  if (*(v1 + 1046) != 1 || *(v1 + 50) != 1)
  {
    return 0;
  }

  result = AppleBCMWLANIOReportingPerSlice::configureReportersChannelSwitchReport(this);
  *(*(this + 7) + 50) = 0;
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANIOReportingPerSlice::configureAllReports(AppleBCMWLANIOReportingPerSlice *this)
{
  v1 = *(this + 2);
  if (*(v1 + 1046) != 1 || *(v1 + 50) != 1)
  {
    return 0;
  }

  result = AppleBCMWLANIOReportingPerSlice::configureReportersChannelSwitchReport((this - 40));
  *(*(this + 2) + 50) = 0;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::updateAllReports(AppleBCMWLANIOReportingPerSlice *this)
{
  v2 = AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsSinceLinkUp(this, 0, *(*(this + 7) + 1404));
  if (v2)
  {
    updated = v2;
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logWarn(Logger, "[dk] %s@%d: Failed reportScanPwrStatsSinceLinkUp AppleBCMWLANSliceId0 0x%x\n");
      }
    }

    return updated;
  }

  v5 = AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsSinceLinkUp(this, 1, *(*(this + 7) + 1404));
  if (v5)
  {
    updated = v5;
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v6 = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logWarn(v6, "[dk] %s@%d: Failed reportScanPwrStatsSinceLinkUp AppleBCMWLANSliceId1 0x%x\n");
      }
    }

    return updated;
  }

  v7 = *(this + 7);
  v8 = *(v7 + 1404);
  if (v8 >= 3)
  {
    v9 = AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsSinceLinkUp(this, 2, v8);
    if (v9)
    {
      updated = v9;
      if (AppleBCMWLANIOReporting::getLogger(this))
      {
        AppleBCMWLANIOReporting::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v10 = AppleBCMWLANIOReporting::getLogger(this);
          CCLogStream::logWarn(v10, "[dk] %s@%d: Failed reportScanPwrStatsSinceLinkUp AppleBCMWLANSliceId2 0x%x\n");
        }
      }

      return updated;
    }

    v7 = *(this + 7);
  }

  if (*(v7 + 1046) != 1)
  {
    return 0;
  }

  updated = AppleBCMWLANIOReportingPerSlice::updateReportersChannelSwitchReport(this);
  if (updated)
  {
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v11 = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logWarn(v11, "[dk] %s@%d: Failed updateReportersChannelSwitchReport 0x%x\n");
      }
    }
  }

  return updated;
}

uint64_t AppleBCMWLANIOReportingPerSlice::init(AppleBCMWLANIOReporting *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  result = AppleBCMWLANIOReporting::init(a1, v9);
  if (result)
  {
    result = IOMallocZeroTyped();
    *(a1 + 7) = result;
    v7 = (a1 + 56);
    if (result)
    {
      *(result + 1404) = 2;
      v8 = *v7;
      v8[176] = OSString::withCString("joinedStats");
      v8[177] = OSString::withCString("totalDur");
      v8[178] = OSString::withCString("transitions");
      v8[179] = OSString::withCString("reasonForJoin");
      v8[180] = OSString::withCString("reasonNumber");
      v8[181] = OSString::withCString("leftStats");
      v8[182] = OSString::withCString("reasonForLeave");
      v8[183] = OSString::withCString("chanspec");
      v8[184] = OSString::withCString("activitiesStateReporter");
      v8[185] = OSString::withCString("switchToReasonReporter");
      v8[186] = OSString::withCString("switchFromReasonReporter");
      v8[187] = OSString::withCString("lastactivitiesStateReporterSize");
      *(*v7 + 1046) = 0;
      if (IOParseBootArgNumber("wlan.chswitchreport", (*v7 + 1046), 1))
      {
        if (AppleBCMWLANIOReporting::getLogger(a1))
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReportingPerSlice::init(a1, a1 + 56);
          }
        }
      }

      *(*v7 + 1504) = OSMetaClassBase::safeMetaCast(*(a2 + 8), gAppleBCMWLANCoreMetaClass);
      if (*(*v7 + 1504))
      {
        return (*(*a1 + 64))(a1);
      }

      else
      {
        AppleBCMWLANIOReportingPerSlice::init();
        return LOBYTE(v9[0]);
      }
    }
  }

  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:wlan.chswitchreport is %d \n", "init", 6340, *(*a2 + 1046));
}

AppleBCMWLANIOReporting *AppleBCMWLANIOReportingPerSlice::with(__int128 *a1)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANIOReportingPerSliceMetaClass, &v6))
  {
    v2 = 0;
  }

  else
  {
    v2 = v6;
    if (v6)
    {
      v4 = a1[1];
      v6 = *a1;
      v7 = v4;
      v10 = *(a1 + 8);
      v5 = a1[3];
      v8 = a1[2];
      v9 = v5;
      if (((*(*v2 + 56))(v2, &v6) & 1) == 0)
      {
        (*(*v2 + 16))(v2);
        return 0;
      }
    }
  }

  *&v8 = 0;
  *&v6 = 0;
  v7 = 0u;
  *(&v6 + 1) = AppleBCMWLANIOReportingPerSlice::collectImmediateFaultDataCallback;
  AppleBCMWLANIOReporting::getCCFaultReporter(v2);
  getClassNameHelper(v2);
  CCFaultReporter::registerCallbacks();
  return v2;
}

void AppleBCMWLANIOReportingPerSlice::free(OSObject *this)
{
  meta = this[1].meta;
  if (meta)
  {
    v3 = meta[44].__vftable;
    if (v3)
    {
      (*(v3->getMetaClass + 2))(v3);
      meta[44].__vftable = 0;
    }

    v4 = *&meta[44].refcount;
    if (v4)
    {
      (*(*v4 + 16))(v4);
      *&meta[44].refcount = 0;
    }

    v5 = meta[44].meta;
    if (v5)
    {
      (v5->release)(v5);
      meta[44].meta = 0;
    }

    metaClassPrivate = meta[44].metaClassPrivate;
    if (metaClassPrivate)
    {
      (*(*metaClassPrivate + 16))(metaClassPrivate);
      meta[44].metaClassPrivate = 0;
    }

    v7 = meta[45].__vftable;
    if (v7)
    {
      (*(v7->getMetaClass + 2))(v7);
      meta[45].__vftable = 0;
    }

    v8 = *&meta[45].refcount;
    if (v8)
    {
      (*(*v8 + 16))(v8);
      *&meta[45].refcount = 0;
    }

    v9 = meta[45].meta;
    if (v9)
    {
      (v9->release)(v9);
      meta[45].meta = 0;
    }

    v10 = meta[45].metaClassPrivate;
    if (v10)
    {
      (*(*v10 + 16))(v10);
      meta[45].metaClassPrivate = 0;
    }

    v11 = meta[46].__vftable;
    if (v11)
    {
      (*(v11->getMetaClass + 2))(v11);
      meta[46].__vftable = 0;
    }

    v12 = *&meta[46].refcount;
    if (v12)
    {
      (*(*v12 + 16))(v12);
      *&meta[46].refcount = 0;
    }

    v13 = meta[46].meta;
    if (v13)
    {
      (v13->release)(v13);
      meta[46].meta = 0;
    }

    v14 = meta[46].metaClassPrivate;
    if (v14)
    {
      (*(*v14 + 16))(v14);
      meta[46].metaClassPrivate = 0;
    }

    memset_s(this[1].meta, 0x5E8uLL, 0, 0x5E8uLL);
    v15 = this[1].meta;
    if (v15)
    {
      IOFree(v15, 0x5E8uLL);
      this[1].meta = 0;
    }
  }

  AppleBCMWLANIOReporting::free(this);
}

uint64_t AppleBCMWLANIOReportingPerSlice::stop(AppleBCMWLANIOReportingPerSlice *this)
{
  result = AppleBCMWLANIOReporting::getCCFaultReporter(this);
  if (result)
  {
    CCFaultReporter = AppleBCMWLANIOReporting::getCCFaultReporter(this);

    return CCFaultReporter::unregisterCallbacks(CCFaultReporter, this);
  }

  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::setCallbackForStaleConfig(AppleBCMWLANIOReportingPerSlice *this, OSObject *a2, int (*a3)(OSObject *))
{
  *(*(this + 7) + 8) = a2;
  **(this + 7) = a3;
  return 0;
}

void OUTLINED_FUNCTION_0_4()
{
  STACK[0x260] = 43690;
  STACK[0x270] = 43690;
  STACK[0x278] = 43690;
  *(v0 - 256) = 43690;
  *(v0 - 248) = 43690;
  *(v0 - 240) = 43690;
  *(v0 - 232) = 43690;
  *(v0 - 224) = 43690;
  *(v0 - 216) = 43690;
  *(v0 - 208) = 43690;
  *(v0 - 200) = 43690;
  *(v0 - 192) = 43690;
  *(v0 - 184) = 43690;
}

uint64_t OUTLINED_FUNCTION_14_1(AppleBCMWLANIOReporting *a1)
{

  return AppleBCMWLANIOReporting::getLogger(a1);
}

uint64_t OUTLINED_FUNCTION_16_1(uint64_t result)
{
  *(v1 - 104) = 43690;
  *(v1 - 112) = 43690;
  v2 = *(result + 38);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t result)
{
  STACK[0x208] = 43690;
  STACK[0x220] = 43690;
  v1 = *(result + 52);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t result)
{
  STACK[0x268] = 43690;
  STACK[0x238] = 43690;
  v1 = *(result + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t result)
{
  STACK[0x218] = 43690;
  STACK[0x228] = 43690;
  v1 = *(result + 50);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t result)
{
  *(v1 - 144) = 43690;
  *(v1 - 136) = 43690;
  v2 = *(result + 42);
  return result;
}

uint64_t OUTLINED_FUNCTION_21(uint64_t result)
{
  *(v1 - 176) = 43690;
  *(v1 - 168) = 43690;
  v2 = *(result + 46);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_0(uint64_t result)
{
  *(v1 - 160) = 43690;
  *(v1 - 152) = 43690;
  v2 = *(result + 44);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_0(uint64_t result)
{
  *(v1 - 128) = 43690;
  *(v1 - 120) = 43690;
  v2 = *(result + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_0(AppleBCMWLANIOReporting *a1)
{

  return AppleBCMWLANIOReporting::getLogger(a1);
}

unsigned __int16 *OUTLINED_FUNCTION_34_0()
{

  return AppleBCMWLANUtil::getCounterValueSafe(v0, 4uLL, v1, 8uLL);
}

uint64_t OUTLINED_FUNCTION_40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return snprintf(v10, 0x32uLL, v11);
}

uint64_t OUTLINED_FUNCTION_44_0(AppleBCMWLANIOReporting *a1)
{

  return AppleBCMWLANIOReporting::getLogger(a1);
}

uint64_t OUTLINED_FUNCTION_48_0(AppleBCMWLANIOReporting *a1)
{

  return AppleBCMWLANIOReporting::getLogger(a1);
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1)
{

  return IOSimpleReporter::setValue(v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_55()
{

  return AppleBCMWLANIOReporting::getLogger(v0);
}

uint64_t OUTLINED_FUNCTION_60(IOStateReporter *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{

  return IOStateReporter::with(a1, 0x8010, 0xAu, 0, a5);
}

uint64_t OUTLINED_FUNCTION_61(IOStateReporter *a1)
{
  v5 = *(v3 + 8 * v2);

  return IOStateReporter::setStateID(a1, v1, v2, v5);
}

uint64_t OUTLINED_FUNCTION_74(AppleBCMWLANIOReporting *a1)
{

  return AppleBCMWLANIOReporting::getLogger(a1);
}

uint64_t OUTLINED_FUNCTION_78()
{

  return AppleBCMWLANBssManager::getCurrentBSS(v0);
}

uint64_t OUTLINED_FUNCTION_79(IOStateReporter *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  return IOStateReporter::setStateID(a1, v4, v5, a4);
}

size_t OUTLINED_FUNCTION_88()
{

  return OSData::getLength(v0);
}

uint64_t OUTLINED_FUNCTION_89(unsigned int a1)
{
  v6 = *(v4 + 8 * a1);

  return IOStateReporter::setChannelState(v2, v3 ^ v1, v6);
}

uint64_t OUTLINED_FUNCTION_90(IOStateReporter *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{

  return IOStateReporter::with(a1, 0x8010, 7u, 0, a5);
}

size_t OUTLINED_FUNCTION_91()
{

  return OSData::getLength(v0);
}

uint64_t OUTLINED_FUNCTION_92(unsigned int a1)
{
  v5 = *(v2 + 8 * a1);

  return IOStateReporter::setChannelState(v1, v3, v5);
}

size_t OUTLINED_FUNCTION_93()
{

  return OSData::getLength(v0);
}

uint64_t AppleBCMWLANIOReporting::init(uint64_t a1, uint64_t a2)
{
  result = OSObject::init(a1);
  if (result)
  {
    result = IOMallocZeroTyped();
    *(a1 + 48) = result;
    v5 = (a1 + 48);
    if (result)
    {
      *(result + 8) = *(a2 + 16);
      v6 = *(*v5 + 8);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        **v5 = *(a2 + 8);
        v7 = *v5;
        if (**v5)
        {
          *(v7 + 40) = *a2;
          v8 = *v5;
          if (*(*v5 + 40))
          {
            *(v8 + 48) = *(a2 + 48);
            v9 = *v5;
            if (*(*v5 + 48))
            {
              *(v9 + 56) = *(a2 + 40);
              v10 = *v5;
              v11 = *(*v5 + 8);
              if (*(*v5 + 56))
              {
                if (v11)
                {
                  shouldLog = CCLogStream::shouldLog();
                  v10 = *v5;
                  if (shouldLog)
                  {
                    v20 = *v10;
                    v19 = *(v10 + 8);
                    ClassNameHelper = getClassNameHelper(*v10);
                    CCLogStream::logNotice(v19, "[dk] %s@%d:Provider %p, name %s\n", "init", 97, v20, ClassNameHelper);
                    v10 = *v5;
                  }
                }

                *(v10 + 32) = *(a2 + 32);
                v13 = *(*v5 + 32);
                if (v13)
                {
                  (*(*v13 + 8))(v13);
                  *(*v5 + 24) = *(a2 + 24);
                  v14 = *(*v5 + 24);
                  if (v14)
                  {
                    (*(*v14 + 8))(v14);
                    *(*v5 + 64) = *(a2 + 56);
                    v15 = *(*v5 + 64);
                    if (v15)
                    {
                      (*(*v15 + 8))(v15);
                      *(*v5 + 16) = OSSet::withCapacity(0xA, v16);
                      v17 = *v5;
                      if (*(*v5 + 16))
                      {
                        *(v17 + 72) = *(a2 + 64);
                        if (*(*v5 + 72))
                        {
                          return 1;
                        }

                        AppleBCMWLANIOReporting::init(*v5);
                      }

                      else
                      {
                        AppleBCMWLANIOReporting::init(v17);
                      }
                    }

                    else
                    {
                      AppleBCMWLANIOReporting::init(*v5);
                    }
                  }

                  else
                  {
                    AppleBCMWLANIOReporting::init(*v5);
                  }
                }

                else
                {
                  AppleBCMWLANIOReporting::init(*v5);
                }
              }

              else if (v11 && CCLogStream::shouldLog())
              {
                AppleBCMWLANIOReporting::init(a1 + 48);
              }
            }

            else
            {
              AppleBCMWLANIOReporting::init(v9);
            }
          }

          else
          {
            AppleBCMWLANIOReporting::init(v8);
          }
        }

        else
        {
          AppleBCMWLANIOReporting::init(v7);
        }
      }

      else
      {
        v18 = getClassNameHelper(a1);
        IOLog("%s::%s(): Unable to get debug logger\n", v18, "init");
      }

      result = *(*v5 + 8);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANIOReporting::init(a1 + 48, a1);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANIOReporting::configureReport(OSObject *this, OSCollection *a2, OSData *a3, unsigned int *a4, unsigned int *a5)
{
  v6 = a3;
  v13 = 0;
  p_refcount = &this[1].refcount;
  v14 = IOReporter::configureAllReports(*(*&this[1].refcount + 16), a2, a3, &v13, a5);
  v9 = *(*p_refcount + 8);
  v10 = *(*p_refcount + 32);
  ClassNameHelper = getClassNameHelper(this);
  v14 = testPostConfigureAllAndAdjustV3(v9, v10, ClassNameHelper, v6, &v14, a4, v13, -2);
  if (v14)
  {
    AppleBCMWLANIOReporting::configureReport(p_refcount);
  }

  return v14;
}

uint64_t testPostConfigureAllAndAdjustV3(CCLogStream *a1, CCFaultReporter *a2, const char *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, int a7, int a8)
{
  v26 = 0;
  v15 = gDKIORAllowFailure;
  if (gDKIORAllowFailure == -1)
  {
    if (IOParseBootArgNumber("wifi.iorpropfail", &v26, 4))
    {
      v15 = v26;
      gDKIORAllowFailure = v26;
    }

    else
    {
      v15 = gDKIORAllowFailure;
    }

    if (v15 == -1)
    {
      v15 = 0;
      gDKIORAllowFailure = 0;
    }
  }

  if (a8 == -2)
  {
    v16 = v15;
  }

  else
  {
    v16 = a8;
  }

  v17 = *a5;
  if (v16 == 1)
  {
    if (v17)
    {
      v23 = *a6;
      logDebug(a1);
      return *a5;
    }

    goto LABEL_16;
  }

  if (!v17)
  {
LABEL_16:
    if (__CFADD__(*a6, a7))
    {
      v20 = *a6 + a7;
      logDebug(a1);
      v21 = *a6;
      logDebug(a1);
      v18 = 3758097128;
      v25 = *a6;
      logDebug(a1);
      if ((testPostConfigureAllAndAdjustV3(CCLogStream *,CCFaultReporter *,char const*,unsigned int,int *,unsigned int *,unsigned int,int)::sFireCCMaxOnce & 1) == 0)
      {
        CCFaultReporter::reportFault(a2, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANIOReportingHelpers.hpp", 0xFBu, "testPostConfigureAllAndAdjustV3", 0, -528340981, "%s incrementFail", a3);
        testPostConfigureAllAndAdjustV3(CCLogStream *,CCFaultReporter *,char const*,unsigned int,int *,unsigned int *,unsigned int,int)::sFireCCMaxOnce = 1;
      }

      if (!v16)
      {
        logDebug(a1);
        return 0;
      }
    }

    else
    {
      v18 = 0;
      *a6 += a7;
    }

    goto LABEL_18;
  }

  v24 = *a6;
  v22 = *a5;
  logDebug(a1);
  v18 = 0;
  if ((testPostConfigureAllAndAdjustV3(CCLogStream *,CCFaultReporter *,char const*,unsigned int,int *,unsigned int *,unsigned int,int)::sFireCCMaxOnce & 1) == 0)
  {
    CCFaultReporter::reportFault(a2, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANIOReportingHelpers.hpp", 0xF2u, "testPostConfigureAllAndAdjustV3", 0, -528340981, "%s c %d ret %x", a3, a7, *a5);
    v18 = 0;
    testPostConfigureAllAndAdjustV3(CCLogStream *,CCFaultReporter *,char const*,unsigned int,int *,unsigned int *,unsigned int,int)::sFireCCMaxOnce = 1;
  }

LABEL_18:
  if (!a7 && v16 >= 2)
  {
    v18 = 3758097114;
    logDebug(a1);
    if ((testPostConfigureAllAndAdjustV3(CCLogStream *,CCFaultReporter *,char const*,unsigned int,int *,unsigned int *,unsigned int,int)::sFireCCMaxOnce & 1) == 0)
    {
      CCFaultReporter::reportFault(a2, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANIOReportingHelpers.hpp", 0x115u, "testPostConfigureAllAndAdjustV3", 0, -528340981, "%s PropagateFailureIncZeroCount", a3);
      testPostConfigureAllAndAdjustV3(CCLogStream *,CCFaultReporter *,char const*,unsigned int,int *,unsigned int *,unsigned int,int)::sFireCCMaxOnce = 1;
    }
  }

  return v18;
}

uint64_t AppleBCMWLANIOReporting::updateReport(OSObject *this, OSCollection *a2, OSData *a3, unsigned int *a4, unint64_t *a5, unint64_t *a6, IOMemoryDescriptor *a7)
{
  v24 = 0;
  v14 = *(*&this[1].refcount + 8);
  ClassNameHelper = getClassNameHelper(this);
  testPreUpdateAllReportersV3(v14, ClassNameHelper, *(*&this[1].refcount + 16), *a5, *a6, a7);
  updated = IOReporter::updateAllReports(*(*&this[1].refcount + 16), a2, a3, &v24, *a5, *a6, a7, v16);
  v17 = *&this[1].refcount;
  v18 = *(v17 + 8);
  v19 = *(v17 + 32);
  v20 = getClassNameHelper(this);
  updated = testPostUpdateAllAndAdjustV3(v18, v19, v20, &updated, v24, a4, a5, a6, -2);
  if (updated && *(*&this[1].refcount + 8) && CCLogStream::shouldLog())
  {
    v22 = *(*&this[1].refcount + 8);
    v23 = getClassNameHelper(this);
    CCLogStream::logEmergency(v22, "[dk] %s@%d:DKReporter::%s::%s(%d) testAndAdjustOffsetAndCapacity failed count %u outElementCount %u offset %llu capacity %llu", "updateReport", 157, v23, "updateReport", 157, v24, *a4, *a5, *a6);
  }

  return updated;
}

uint64_t testPreUpdateAllReportersV3(CCLogStream *a1, const char *a2, OSSet *a3, uint64_t a4, uint64_t a5, IOMemoryDescriptor *this)
{
  returnLength = 0;
  IOMemoryDescriptor::GetLength(this, &returnLength);
  if ((*(*a3 + 72))(a3))
  {
    result = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  (*(*a3 + 72))(a3);
  logDebug(a1);
  result = 3758097084;
  if (!a5)
  {
LABEL_3:
    (*(*a3 + 72))(a3);
    logDebug(a1);
    result = 3758097084;
  }

LABEL_4:
  if (returnLength == a4)
  {
    (*(*a3 + 72))(a3);
    logDebug(a1);
    return 3758097084;
  }

  return result;
}

uint64_t testPostUpdateAllAndAdjustV3(CCLogStream *a1, CCFaultReporter *a2, const char *a3, unsigned int *a4, unsigned int a5, unsigned int *a6, unint64_t *a7, unint64_t *a8, int a9)
{
  if (a9 == -2)
  {
    v17 = gDKIORAllowFailure;
  }

  else
  {
    v17 = a9;
  }

  if (v17 == 1 && *a4)
  {
    logDebug(a1);
    return *a4;
  }

  v19 = *a4;
  if (!a5)
  {
    if (!v19)
    {
LABEL_20:
      v18 = 0;
      if (!a5 && v17 >= 2)
      {
        v18 = 3758097114;
        v34 = *a7;
        v36 = *a8;
        v32 = *a6;
        v28 = *a4;
        logDebug(a1);
        if ((testPostUpdateAllAndAdjustV3(CCLogStream *,CCFaultReporter *,char const*,int *,unsigned int,unsigned int *,unsigned long long *,unsigned long long *,int)::sFireCCMaxOnce & 1) == 0)
        {
          CCFaultReporter::reportFault(a2, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANIOReportingHelpers.hpp", 0x19Eu, "testPostUpdateAllAndAdjustV3", 0, -528340980, "%s PropagateFailureIncZeroCount", a3);
          testPostUpdateAllAndAdjustV3(CCLogStream *,CCFaultReporter *,char const*,int *,unsigned int,unsigned int *,unsigned long long *,unsigned long long *,int)::sFireCCMaxOnce = 1;
        }
      }

      return v18;
    }

LABEL_18:
    v26 = *a4;
    logDebug(a1);
    if ((testPostUpdateAllAndAdjustV3(CCLogStream *,CCFaultReporter *,char const*,int *,unsigned int,unsigned int *,unsigned long long *,unsigned long long *,int)::sFireCCMaxOnce & 1) == 0)
    {
      CCFaultReporter::reportFault(a2, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANIOReportingHelpers.hpp", 0x17Du, "testPostUpdateAllAndAdjustV3", 0, -528340980, "%s c %d ret %x", a3, a5, *a4);
      testPostUpdateAllAndAdjustV3(CCLogStream *,CCFaultReporter *,char const*,int *,unsigned int,unsigned int *,unsigned long long *,unsigned long long *,int)::sFireCCMaxOnce = 1;
    }

    goto LABEL_20;
  }

  if (v19)
  {
    goto LABEL_18;
  }

  if (__CFADD__(*a6, a5))
  {
    v23 = *a6;
  }

  else if (!(a5 >> 26))
  {
    v20 = a5 << 6;
    if (__CFADD__(*a7, v20))
    {
      v24 = *a7;
    }

    else if (*a8 < v20)
    {
      v25 = *a8;
    }

    else
    {
      *a6 += a5;
      v21 = __CFADD__(*a7, v20);
      *a7 += v20;
      if (!v21)
      {
        v21 = *a8 >= v20;
        *a8 -= v20;
        if (v21)
        {
          return 0;
        }
      }
    }
  }

  logDebug(a1);
  v29 = *a7;
  v31 = *a8;
  v27 = *a6;
  logDebug(a1);
  v18 = 3758097128;
  v35 = *a7;
  v37 = *a8;
  v33 = *a6;
  v30 = *a4;
  logDebug(a1);
  if ((testPostUpdateAllAndAdjustV3(CCLogStream *,CCFaultReporter *,char const*,int *,unsigned int,unsigned int *,unsigned long long *,unsigned long long *,int)::sFireCCMaxOnce & 1) == 0)
  {
    CCFaultReporter::reportFault(a2, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANIOReportingHelpers.hpp", 0x186u, "testPostUpdateAllAndAdjustV3", 0, -528340980, "%s incrementFail", a3);
    testPostUpdateAllAndAdjustV3(CCLogStream *,CCFaultReporter *,char const*,int *,unsigned int,unsigned int *,unsigned long long *,unsigned long long *,int)::sFireCCMaxOnce = 1;
  }

  if (!v17)
  {
    logDebug(a1);
    return 0;
  }

  return v18;
}

void AppleBCMWLANIOReporting::free(OSObject *this)
{
  v2 = *&this[1].refcount;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      (*(*v3 + 16))(v3);
      *(*&this[1].refcount + 16) = 0;
      v2 = *&this[1].refcount;
    }

    v4 = v2[3];
    if (v4)
    {
      (*(*v4 + 16))(v4);
      *(*&this[1].refcount + 24) = 0;
      v2 = *&this[1].refcount;
    }

    v5 = v2[1];
    if (v5)
    {
      (*(*v5 + 16))(v5);
      *(*&this[1].refcount + 8) = 0;
      v2 = *&this[1].refcount;
    }

    v6 = v2[4];
    if (v6)
    {
      (*(*v6 + 16))(v6);
      *(*&this[1].refcount + 32) = 0;
      v2 = *&this[1].refcount;
    }

    v2[7] = 0;
    *(*&this[1].refcount + 48) = 0;
    v7 = *&this[1].refcount;
    v8 = v7[8];
    if (v8)
    {
      (*(*v8 + 16))(v7[8]);
      *(*&this[1].refcount + 64) = 0;
      v7 = *&this[1].refcount;
    }

    memset_s(v7, 0x50uLL, 0, 0x50uLL);
    v9 = *&this[1].refcount;
    if (v9)
    {
      IOFree(v9, 0x50uLL);
      *&this[1].refcount = 0;
    }
  }

  OSObject::free(this);
}

uint64_t logDebug(uint64_t a1)
{
  if (a1)
  {
    return CCLogStream::logv();
  }

  else
  {
    return logDebug();
  }
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return CCLogStream::shouldLog();
}

OSObject *AppleBCMWLANChipManagerPCIe4388::withChip(AppleBCMWLANChipManagerPCIe4388 *this, uint64_t a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipManagerPCIe4388MetaClass, &v6))
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

BOOL AppleBCMWLANChipManagerPCIe4388::initWithChip(OSObject *this, int a2)
{
  result = AppleBCMWLANChipManagerPCIe::init(this);
  if (result)
  {
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 0);
    AppleBCMWLANChipManagerPCIe::setAWDLSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setChipNumber(this, a2);
    AppleBCMWLANChipManagerPCIe::setCoreCount(this, 9);
    AppleBCMWLANChipManagerPCIe::setCoreRegionList(this, &kBCOM4388ChipCores);
    AppleBCMWLANChipManagerPCIe::setWrapperCount(this, 19);
    AppleBCMWLANChipManagerPCIe::setWrapperRegionList(this, &kBCOM4388ChipWrappers);
    AppleBCMWLANChipManagerPCIe::setMemoryCount(this, 7);
    AppleBCMWLANChipManagerPCIe::setMemoryRegionList(this, &kBCOM4388ChipMemories);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindowCount(this, 8);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindows(this, &kBCOM4388ChipBackplaneWindows);
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 8);
    AppleBCMWLANChipManagerPCIe::setUserOTPRange(this, &kBCOM4388ChipUserOTP);
    AppleBCMWLANChipManagerPCIe::setChipOTPRange(this, &kBCOM4388ChipOTP);
    AppleBCMWLANChipManagerPCIe::setCoreIDTable(this, kBCOM4388CoreIDTable);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4388UCodeSCRRegionInfo, 0);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4388UCodeSHMRegionInfo, 1);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveRange(this, &kBCOM4388ChipConfigSpaceStateTable);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveCount(this, 3);
    AppleBCMWLANChipManagerPCIe::setMemoryRAMAddress(this, 0x200000);
    AppleBCMWLANChipManagerPCIe::setPCIeHeaderLength(this, 256);
    AppleBCMWLANChipManagerPCIe::setSROMVersion(this, 16);
    AppleBCMWLANChipManagerPCIe::setSROMWordCount(this, 1024);
    AppleBCMWLANChipManagerPCIe::setSROMSignature(this, 4388);
    AppleBCMWLANChipManagerPCIe::setMultiFunctionChip(this, 1);
    AppleBCMWLANChipManagerPCIe::setSafeToCaptureSoCRAM(this, 1);
    AppleBCMWLANChipManagerPCIe::setHMAPSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setHMAPBaseAddress(this, 1408);
    AppleBCMWLANChipManagerPCIe::sethostWakeToggleNotConfigured(this, 1);
    AppleBCMWLANChipManagerPCIe::setM2MResetOnSSResetDisabled(this, 1);
    AppleBCMWLANChipManagerPCIe::setPowerControlRequired(this, 1);
    AppleBCMWLANChipManagerPCIe::setPTMSupport(this, 1);
    AppleBCMWLANChipManagerPCIe::setsysmemEnabled(this, 1);
    AppleBCMWLANChipManagerPCIe::setCacheCoherency(this, 1);
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

uint64_t AppleBCMWLANChipManagerPCIe4388::getDARSecurityStatusReg(uint64_t this, AppleBCMWLANChipBackplane *a2)
{
  v6 = 0;
  v3 = AppleBCMWLANChipBackplane::readPCIeCoreReg32(a2, 0xA74u, &v6);
  if (v3)
  {
    v4 = v3;
    v6 = 0;
    if ((*(*this + 72))(this))
    {
      (*(*this + 72))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANChipManagerPCIe4388::getDARSecurityStatusReg(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v4);
      }
    }
  }

  return v6;
}

OSObject *AppleBCMWLANChipManagerPCIe4350::withChip(AppleBCMWLANChipManagerPCIe4350 *this, uint64_t a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipManagerPCIe4350MetaClass, &v6))
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

BOOL AppleBCMWLANChipManagerPCIe4350::initWithChip(OSObject *this, int a2)
{
  result = AppleBCMWLANChipManagerPCIe::init(this);
  if (result)
  {
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 0);
    AppleBCMWLANChipManagerPCIe::setAWDLSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setChipNumber(this, a2);
    AppleBCMWLANChipManagerPCIe::setCoreCount(this, 6);
    AppleBCMWLANChipManagerPCIe::setCoreRegionList(this, &kBCOM4350ChipCores);
    AppleBCMWLANChipManagerPCIe::setWrapperCount(this, 11);
    AppleBCMWLANChipManagerPCIe::setWrapperRegionList(this, &kBCOM4350ChipWrappers);
    AppleBCMWLANChipManagerPCIe::setMemoryCount(this, 7);
    AppleBCMWLANChipManagerPCIe::setMemoryRegionList(this, &kBCOM4350ChipMemories);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindowCount(this, 8);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindows(this, &kBCOM4350ChipBackplaneWindows);
    AppleBCMWLANChipManagerPCIe::setUserOTPRange(this, &kBCOM4350ChipUserOTP);
    AppleBCMWLANChipManagerPCIe::setChipOTPRange(this, &kBCOM4350ChipOTP);
    AppleBCMWLANChipManagerPCIe::setCoreIDTable(this, kBCOM4350CoreIDTable);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4350UCodeSCRRegionInfo, 0);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4350UCodeSHMRegionInfo, 1);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveRange(this, &kBCOM4350ChipConfigSpaceStateTable);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveCount(this, 3);
    AppleBCMWLANChipManagerPCIe::setMemoryRAMAddress(this, 1572864);
    AppleBCMWLANChipManagerPCIe::setMultiFunctionChip(this, 0);
    AppleBCMWLANChipManagerPCIe::setSafeToCaptureSoCRAM(this, 1);
    AppleBCMWLANChipManagerPCIe::setTrapBeforeFLRUnSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setBMEDisableUnSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setNotSplitArchitecture(this, 1);
    AppleBCMWLANChipManagerPCIe::setBootMSIUnsupported(this, 1);
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

OSObject *AppleBCMWLANChipManagerPCIe4364::withChip(AppleBCMWLANChipManagerPCIe4364 *this, uint64_t a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipManagerPCIe4364MetaClass, &v6))
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

BOOL AppleBCMWLANChipManagerPCIe4364::initWithChip(OSObject *this, int a2)
{
  result = AppleBCMWLANChipManagerPCIe::init(this);
  if (result)
  {
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 0);
    AppleBCMWLANChipManagerPCIe::setAWDLSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setChipNumber(this, a2);
    AppleBCMWLANChipManagerPCIe::setCoreCount(this, 6);
    AppleBCMWLANChipManagerPCIe::setCoreRegionList(this, &kBCOM4364ChipCores);
    AppleBCMWLANChipManagerPCIe::setWrapperCount(this, 11);
    AppleBCMWLANChipManagerPCIe::setWrapperRegionList(this, &kBCOM4364ChipWrappers);
    AppleBCMWLANChipManagerPCIe::setMemoryCount(this, 7);
    AppleBCMWLANChipManagerPCIe::setMemoryRegionList(this, &kBCOM4364ChipMemories);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindowCount(this, 8);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindows(this, &kBCOM4364ChipBackplaneWindows);
    AppleBCMWLANChipManagerPCIe::setUserOTPRange(this, &kBCOM4364ChipUserOTP);
    AppleBCMWLANChipManagerPCIe::setChipOTPRange(this, &kBCOM4364ChipOTP);
    AppleBCMWLANChipManagerPCIe::setCoreIDTable(this, kBCOM4364CoreIDTable);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4364UCodeSCRRegionInfo, 0);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4364UCodeSHMRegionInfo, 1);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveRange(this, &kBCOM4364ChipConfigSpaceStateTable);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveCount(this, 3);
    AppleBCMWLANChipManagerPCIe::setMemoryRAMAddress(this, 1441792);
    AppleBCMWLANChipManagerPCIe::setPCIeHeaderLength(this, 128);
    AppleBCMWLANChipManagerPCIe::setSROMVersion(this, 15);
    AppleBCMWLANChipManagerPCIe::setSROMWordCount(this, 1024);
    AppleBCMWLANChipManagerPCIe::setSROMSignature(this, 4364);
    SROMWordCount = AppleBCMWLANChipManagerPCIe::getSROMWordCount(this);
    AppleBCMWLANChipManagerPCIe::setSROMoffsetVersion(this, 2 * SROMWordCount - 2);
    AppleBCMWLANChipManagerPCIe::setSROMoffsetSignature(this, 128);
    SROMoffsetSignature = AppleBCMWLANChipManagerPCIe::getSROMoffsetSignature(this);
    AppleBCMWLANChipManagerPCIe::setSROMoffsetMacAddress(this, SROMoffsetSignature + 2);
    AppleBCMWLANChipManagerPCIe::setSROMoffsetSKU(this, 140);
    AppleBCMWLANChipManagerPCIe::setNotSplitArchitecture(this, 1);
    AppleBCMWLANChipManagerPCIe::setBootMSIUnsupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setMultiFunctionChip(this, 0);
    AppleBCMWLANChipManagerPCIe::setSafeToCaptureSoCRAM(this, 1);
    AppleBCMWLANChipManagerPCIe::setTrapBeforeFLRUnSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setBMEDisableUnSupported(this, 1);
    v12 = 0;
    while (1)
    {
      BackplaneWindows = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
      PacketCount = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
      if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(BackplaneWindows, PacketCount, 0, &v12))
      {
        break;
      }

      AppleBCMWLANChipManagerPCIe::incrementCoreRemapperCount(this);
    }

    v12 = 0;
    while (1)
    {
      v9 = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
      v10 = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
      if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(v9, v10, 1, &v12))
      {
        break;
      }

      AppleBCMWLANChipManagerPCIe::incrementWrapperRemapperCount(this);
    }

    v11 = OSDictionary::withCapacity(0x20u);
    return AppleBCMWLANChipManagerPCIe::setChipProvisioningData(this, v11);
  }

  return result;
}

OSObject *AppleBCMWLANChipManagerPCIe43452::withChip(AppleBCMWLANChipManagerPCIe43452 *this, uint64_t a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipManagerPCIe43452MetaClass, &v6))
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

BOOL AppleBCMWLANChipManagerPCIe43452::initWithChip(OSObject *this, int a2)
{
  result = AppleBCMWLANChipManagerPCIe::init(this);
  if (result)
  {
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 0);
    AppleBCMWLANChipManagerPCIe::setAWDLSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setChipNumber(this, a2);
    AppleBCMWLANChipManagerPCIe::setCoreCount(this, 6);
    AppleBCMWLANChipManagerPCIe::setCoreRegionList(this, &kBCOM43452ChipCores);
    AppleBCMWLANChipManagerPCIe::setWrapperCount(this, 11);
    AppleBCMWLANChipManagerPCIe::setWrapperRegionList(this, &kBCOM43452ChipWrappers);
    AppleBCMWLANChipManagerPCIe::setMemoryCount(this, 7);
    AppleBCMWLANChipManagerPCIe::setMemoryRegionList(this, &kBCOM43452ChipMemories);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindows(this, &kBCOM43452ChipBackplaneWindows);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindowCount(this, 8);
    AppleBCMWLANChipManagerPCIe::setUserOTPRange(this, &kBCOM43452ChipUserOTP);
    AppleBCMWLANChipManagerPCIe::setChipOTPRange(this, &kBCOM43452ChipOTP);
    AppleBCMWLANChipManagerPCIe::setCoreIDTable(this, kBCOM43452CoreIDTable);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM43452UCodeSCRRegionInfo, 0);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM43452UCodeSHMRegionInfo, 1);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveRange(this, &kBCOM43452ChipConfigSpaceStateTable);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveCount(this, 3);
    AppleBCMWLANChipManagerPCIe::setNotSplitArchitecture(this, 1);
    AppleBCMWLANChipManagerPCIe::setBootMSIUnsupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setMultiFunctionChip(this, 0);
    AppleBCMWLANChipManagerPCIe::setSafeToCaptureSoCRAM(this, 0);
    AppleBCMWLANChipManagerPCIe::setTrapBeforeFLRUnSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setBMEDisableUnSupported(this, 1);
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

OSObject *AppleBCMWLANChipManagerPCIe4355::withChip(AppleBCMWLANChipManagerPCIe4355 *this, uint64_t a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipManagerPCIe4355MetaClass, &v6))
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

BOOL AppleBCMWLANChipManagerPCIe4355::initWithChip(OSObject *this, int a2, int a3)
{
  result = AppleBCMWLANChipManagerPCIe::init(this);
  if (result)
  {
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 0);
    AppleBCMWLANChipManagerPCIe::setAWDLSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setChipNumber(this, a2);
    AppleBCMWLANChipManagerPCIe::setCoreCount(this, 6);
    AppleBCMWLANChipManagerPCIe::setCoreRegionList(this, &kBCOM4355ChipCores);
    AppleBCMWLANChipManagerPCIe::setWrapperCount(this, 11);
    AppleBCMWLANChipManagerPCIe::setWrapperRegionList(this, &kBCOM4355ChipWrappers);
    v7 = 1441792;
    v8 = &kBCOM4355C0ChipMemories;
    if (a3 != 12 && a3 != 10)
    {
      if (a3 != 8)
      {
        AppleBCMWLANChipManagerPCIe4355::initWithChip(this);
      }

      v7 = 1572864;
      v8 = &kBCOM4355ChipMemories;
    }

    AppleBCMWLANChipManagerPCIe::setMemoryCount(this, 7);
    AppleBCMWLANChipManagerPCIe::setMemoryRegionList(this, v8);
    AppleBCMWLANChipManagerPCIe::setMemoryRAMAddress(this, v7);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindowCount(this, 8);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindows(this, &kBCOM4355ChipBackplaneWindows);
    AppleBCMWLANChipManagerPCIe::setUserOTPRange(this, &kBCOM4355ChipUserOTP);
    AppleBCMWLANChipManagerPCIe::setChipOTPRange(this, &kBCOM4355ChipOTP);
    AppleBCMWLANChipManagerPCIe::setCoreIDTable(this, kBCOM4355CoreIDTable);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4355UCodeSCRRegionInfo, 0);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4355UCodeSHMRegionInfo, 1);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveRange(this, &kBCOM4355ChipConfigSpaceStateTable);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveCount(this, 3);
    AppleBCMWLANChipManagerPCIe::setPCIeHeaderLength(this, 128);
    AppleBCMWLANChipManagerPCIe::setSROMVersion(this, 17);
    AppleBCMWLANChipManagerPCIe::setSROMWordCount(this, 256);
    AppleBCMWLANChipManagerPCIe::setSROMSignature(this, 4355);
    SROMWordCount = AppleBCMWLANChipManagerPCIe::getSROMWordCount(this);
    AppleBCMWLANChipManagerPCIe::setSROMoffsetVersion(this, 2 * SROMWordCount - 2);
    AppleBCMWLANChipManagerPCIe::setSROMoffsetSignature(this, 128);
    SROMoffsetSignature = AppleBCMWLANChipManagerPCIe::getSROMoffsetSignature(this);
    AppleBCMWLANChipManagerPCIe::setSROMoffsetMacAddress(this, SROMoffsetSignature + 4);
    SROMoffsetMacAddress = AppleBCMWLANChipManagerPCIe::getSROMoffsetMacAddress(this);
    AppleBCMWLANChipManagerPCIe::setSROMoffsetSKU(this, SROMoffsetMacAddress + 6);
    AppleBCMWLANChipManagerPCIe::setTrapBeforeFLRUnSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setBMEDisableUnSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setNotSplitArchitecture(this, 1);
    AppleBCMWLANChipManagerPCIe::setBootMSIUnsupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setMultiFunctionChip(this, 0);
    AppleBCMWLANChipManagerPCIe::setSafeToCaptureSoCRAM(this, 1);
    v17 = 0;
    while (1)
    {
      BackplaneWindows = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
      PacketCount = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
      if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(BackplaneWindows, PacketCount, 0, &v17))
      {
        break;
      }

      AppleBCMWLANChipManagerPCIe::incrementCoreRemapperCount(this);
    }

    v17 = 0;
    while (1)
    {
      v14 = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
      v15 = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
      if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(v14, v15, 1, &v17))
      {
        break;
      }

      AppleBCMWLANChipManagerPCIe::incrementWrapperRemapperCount(this);
    }

    v16 = OSDictionary::withCapacity(0x20u);
    return AppleBCMWLANChipManagerPCIe::setChipProvisioningData(this, v16);
  }

  return result;
}

OSObject *AppleBCMWLANChipManagerPCIe4399::withChip(AppleBCMWLANChipManagerPCIe4399 *this, uint64_t a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipManagerPCIe4399MetaClass, &v6))
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

BOOL AppleBCMWLANChipManagerPCIe4399::initWithChip(OSObject *this, int a2)
{
  result = AppleBCMWLANChipManagerPCIe::init(this);
  if (result)
  {
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 0);
    AppleBCMWLANChipManagerPCIe::setAWDLSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setChipNumber(this, a2);
    AppleBCMWLANChipManagerPCIe::setCoreCount(this, 8);
    AppleBCMWLANChipManagerPCIe::setCoreRegionList(this, &kBCOM4399ChipCores);
    AppleBCMWLANChipManagerPCIe::setWrapperCount(this, 21);
    AppleBCMWLANChipManagerPCIe::setWrapperRegionList(this, &kBCOM4399ChipWrappers);
    AppleBCMWLANChipManagerPCIe::setMemoryCount(this, 7);
    AppleBCMWLANChipManagerPCIe::setMemoryRegionList(this, &kBCOM4399ChipMemories);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindowCount(this, 8);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindows(this, &kBCOM4399ChipBackplaneWindows);
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 8);
    AppleBCMWLANChipManagerPCIe::setUserOTPRange(this, &kBCOM4399ChipUserOTP);
    AppleBCMWLANChipManagerPCIe::setChipOTPRange(this, &kBCOM4399ChipOTP);
    AppleBCMWLANChipManagerPCIe::setCoreIDTable(this, kBCOM4399CoreIDTable);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4399UCodeSCRRegionInfo, 0);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4399UCodeSHMRegionInfo, 1);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveRange(this, &kBCOM4399ChipConfigSpaceStateTable);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveCount(this, 3);
    AppleBCMWLANChipManagerPCIe::setMemoryRAMAddress(this, 2752512);
    AppleBCMWLANChipManagerPCIe::setPCIeHeaderLength(this, 256);
    AppleBCMWLANChipManagerPCIe::setSROMVersion(this, 16);
    AppleBCMWLANChipManagerPCIe::setSROMWordCount(this, 1024);
    AppleBCMWLANChipManagerPCIe::setSROMSignature(this, 4399);
    AppleBCMWLANChipManagerPCIe::setMultiFunctionChip(this, 1);
    AppleBCMWLANChipManagerPCIe::setSafeToCaptureSoCRAM(this, 1);
    AppleBCMWLANChipManagerPCIe::setHMAPSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setHMAPBaseAddress(this, 1408);
    AppleBCMWLANChipManagerPCIe::sethostWakeToggleNotConfigured(this, 1);
    AppleBCMWLANChipManagerPCIe::setM2MResetOnSSResetDisabled(this, 1);
    AppleBCMWLANChipManagerPCIe::setPowerControlRequired(this, 1);
    AppleBCMWLANChipManagerPCIe::setPTMSupport(this, 1);
    AppleBCMWLANChipManagerPCIe::setFatalErrorIndicationSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setCoexCPUTrapSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setsysmemEnabled(this, 1);
    AppleBCMWLANChipManagerPCIe::setCacheCoherency(this, 1);
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

uint64_t AppleBCMWLANChipManagerPCIe4399::getDARSecurityStatusReg(uint64_t this, AppleBCMWLANChipBackplane *a2)
{
  v6 = 0;
  v3 = AppleBCMWLANChipBackplane::readPCIeCoreReg32(a2, 0xA74u, &v6);
  if (v3)
  {
    v4 = v3;
    v6 = 0;
    if ((*(*this + 72))(this))
    {
      (*(*this + 72))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANChipManagerPCIe4399::getDARSecurityStatusReg(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v4);
      }
    }
  }

  return v6;
}

OSObject *AppleBCMWLANJoinAdapter::withDriver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANJoinAdapterMetaClass, &v8))
  {
    return 0;
  }

  v6 = v8;
  if (v8 && ((v8->OSMetaClassBase::__vftable[1].getMetaClass)(v8, a1, a2, a3) & 1) == 0)
  {
    (v6->release)(v6);
    return 0;
  }

  return v6;
}

void AppleBCMWLANJoinAdapter::free(void **this)
{
  if (this[6])
  {
    AppleBCMWLANJoinAdapter::freeResources(this);
    memset_s(this[6], 0x738uLL, 0, 0x738uLL);
    v2 = this[6];
    if (v2)
    {
      IOFree(v2, 0x738uLL);
      this[6] = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANJoinAdapter::freeResources(AppleBCMWLANJoinAdapter *this)
{
  v2 = *(this + 6);
  v3 = v2[8];
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 6) + 64) = 0;
    v2 = *(this + 6);
  }

  v4 = v2[9];
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*(this + 6) + 72) = 0;
    v2 = *(this + 6);
  }

  v5 = v2[11];
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 6) + 88) = 0;
    v2 = *(this + 6);
  }

  v6 = v2[6];
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(*(this + 6) + 48) = 0;
    v2 = *(this + 6);
  }

  result = v2[10];
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 6) + 80) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::performJoin(AppleBCMWLANJoinAdapter *a1, uint64_t a2)
{
  v2 = a1 + 48;
  *(*(a1 + 6) + 3) = 0;
  *(*(a1 + 6) + 4) = 0;
  *(*(a1 + 6) + 1840) = 0;
  v3 = *(a1 + 6);
  *(v3 + 625) = 0;
  *(v3 + 593) = 0u;
  *(v3 + 609) = 0u;
  *(v3 + 561) = 0u;
  *(v3 + 577) = 0u;
  *(v3 + 529) = 0u;
  *(v3 + 545) = 0u;
  *(v3 + 497) = 0u;
  *(v3 + 513) = 0u;
  *(v3 + 465) = 0u;
  *(v3 + 481) = 0u;
  *(v3 + 433) = 0u;
  *(v3 + 449) = 0u;
  *(v3 + 401) = 0u;
  *(v3 + 417) = 0u;
  *(v3 + 369) = 0u;
  *(v3 + 385) = 0u;
  v4 = *(a1 + 6);
  if (*v4)
  {
    return 3766625285;
  }

  v8 = *(v4 + 56);
  if (v8)
  {
    AppleBCMWLANCore::setBssBlacklistMode(v8, 0);
    v8 = *(*v2 + 56);
  }

  AppleBCMWLANCore::waitForGasAbortIfNeeded(v8);
  if (AppleBCMWLANCore::isConcurrencyEnabled(*(*v2 + 56)) && AppleBCMWLANCore::isConcurrencyOpModeSet(*(*v2 + 56), 4))
  {
    AppleBCMWLANCore::setSoftAPPowerState(*(*v2 + 56), 1u, 5u);
  }

  if (AppleBCMWLANCore::checkFor4WayHSProtectionSupport(*(*v2 + 56)))
  {
    AppleBCMWLANJoinAdapter::set4WayHandshakeProtection(a1, 1, (*(a2 + 480) >> 5) & 1);
  }

  v9 = *(a2 + 480);
  if ((v9 & 6) != 0)
  {
    v10 = v9 & 2 | (v9 >> 2) & 1;
    AppleBCMWLANJoinAdapter::addInstantHSAppleDeviceIE(a1, 1, v9 & 2 | ((v9 & 4) != 0));
    v11 = *(*(a1 + 6) + 48);
    v12 = v10 != 0;
  }

  else
  {
    AppleBCMWLANJoinAdapter::addInstantHSAppleDeviceIE(a1, 0, 0);
    v11 = *(*(a1 + 6) + 48);
    v12 = 0;
  }

  IO80211BssManager::setAssociateToHotspotInWoWMode(v11, v12);
  v13 = (a2 + 212);
  v14 = isMemZero((a2 + 214), *(a2 + 212));
  if (*(*v2 + 72) && CCLogStream::shouldLog())
  {
    v36 = "nonzero";
    if (v14)
    {
      v36 = "all zeros";
    }

    CCLogStream::logAlertIf(*(*v2 + 72), 0x800uLL, "[dk] %s@%d:RSN IE has len %d, is %s\n", "performJoin", 214, *v13, v36);
  }

  v15 = AppleBCMWLANJoinAdapter::customUnAssocDwell(a1, *(a2 + 4));
  if (v15)
  {
    v5 = v15;
    if (*(*v2 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::performJoin(v2);
    }

    return v5;
  }

  v123 = 0;
  v5 = AppleBCMWLANJoinAdapter::clearWepKeysSync(a1);
  if (v5)
  {
    return v5;
  }

  v17 = mapAppleAPModeToBcomBssType(&v123, *(a2 + 12));
  if (v17)
  {
    v5 = v17;
    if (*(*v2 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::performJoin(v2);
    }

    return v5;
  }

  *(*v2 + 5) = *(a2 + 12) == 1;
  v18 = *(*v2 + 64);
  v121 = &v123;
  v122 = 4;
  v19 = AppleBCMWLANCommander::runIOCtlSet(v18, 20, &v121, 0, 0);
  v20 = *v2;
  if (v19)
  {
    v5 = v19;
    if (*(v20 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::performJoin(v2, &v123);
    }

    return v5;
  }

  if ((*(v20 + 5) & 1) == 0)
  {
    v120[1] = 1;
    v21 = *(v20 + 64);
    v121 = &v120[1];
    v122 = 4;
    v22 = AppleBCMWLANCommander::runIOVarSet(v21, "sup_wpa", &v121, 0, 0);
    if (v22)
    {
      v5 = v22;
      if (*(*v2 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::performJoin(v2, v5);
      }

      return v5;
    }
  }

  v23 = (a2 + 16);
  v24 = mapAppleLowerAuthToBcomAuth(&v123, *(a2 + 16));
  v25 = *v2;
  if (v24)
  {
    v5 = v24;
    if (*(v25 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::performJoin(v2);
    }

    return v5;
  }

  v26 = *(v25 + 64);
  v121 = &v123;
  v122 = 4;
  v27 = AppleBCMWLANCommander::runIOCtlSet(v26, 22, &v121, 0, 0);
  if (v27)
  {
    v5 = v27;
    if (*(*v2 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::performJoin(v2, &v123);
    }

    return v5;
  }

  v28 = (a2 + 20);
  v29 = *(a2 + 20);
  v30 = AppleBCMWLANCore::checkForWPA3SAESupport(*(*v2 + 56));
  v31 = AppleBCMWLANCore::checkForOWESupport(*(*v2 + 56));
  v32 = mapAppleUpperAuthToBcomWpaAuth(&v123, v29, v30, v31, *(a2 + 24));
  v33 = *v2;
  if (v32)
  {
    v5 = v32;
    if (*(v33 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::performJoin(v2);
    }

    return v5;
  }

  if (AppleBCMWLANCore::checkForWPA3SAESupport(*(v33 + 56)) && (v123 & 0x8080) != 0 && (*(a2 + 531) & 0x40) != 0)
  {
    v123 = v123 & 0xFFFB7F7F | 0x40000;
  }

  if (*(a2 + 24) == 1 && AppleBCMWLANCore::checkForOWESupport(*(*v2 + 56)))
  {
    v123 = 0;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(*(*v2 + 56), 116) && (v123 & 0x40000) != 0)
  {
    v123 |= 0x2000000u;
  }

  v34 = *(*v2 + 64);
  v121 = &v123;
  v122 = 4;
  v35 = AppleBCMWLANCommander::runIOCtlSet(v34, 165, &v121, 0, 0);
  if (v35)
  {
    v5 = v35;
    if (*(*v2 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::performJoin(v2, &v123);
    }

    return v5;
  }

  v37 = *(a2 + 72);
  v123 = *(a2 + 20) == 64;
  v38 = mapAppleCipherToBcomWsecFlags(&v123, v37);
  if (v38)
  {
    v5 = v38;
    if (*(*v2 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::performJoin(v2);
    }

    return v5;
  }

  v39 = *v28;
  v40 = AppleBCMWLANConfigManager::setupFirmwareWithDTDefaults(&v123);
  if (v40)
  {
    v5 = v40;
    if (*(*v2 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::performJoin(v2);
    }

    return v5;
  }

  v41 = v123;
  *v120 = 0;
  v118 = 1;
  v119 = 0;
  if (*v28 != 512)
  {
    BcomPropertiesFromWPARSN = getBcomPropertiesFromWPARSN(&v120[1], v120, &v119, &v118, *v13, (a2 + 214));
    if (BcomPropertiesFromWPARSN)
    {
      v5 = BcomPropertiesFromWPARSN;
      if (*(*v2 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::performJoin(v2);
      }

      return v5;
    }
  }

  if (*(a2 + 24) == 1 && AppleBCMWLANCore::checkForOWESupport(*(*v2 + 56)))
  {
    v118 = 0;
    v123 = 0;
  }

  v43 = mapBcomAlgoToBcomWsecFlags(&v123, v120[1], v120[0]);
  v44 = *v2;
  if (v43)
  {
    v5 = v43;
    if (*(v44 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::performJoin(v2);
    }

    return v5;
  }

  v45 = *(v44 + 64);
  v121 = &v123;
  v122 = 4;
  v46 = AppleBCMWLANCommander::runIOCtlSet(v45, 134, &v121, 0, 0);
  v47 = *v2;
  if (v46)
  {
    v5 = v46;
    if (*(v47 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::performJoin(v2, &v123);
    }

    return v5;
  }

  if ((AppleBCMWLANCore::useAppleRSNSupplicant(*(v47 + 56)) & 1) == 0 && *v23 == 1)
  {
    v48 = *v28;
    if (*v28 > 4095)
    {
      if (v48 >= 0x10000)
      {
        if (v48 != 0x20000 && v48 != 0x10000)
        {
          goto LABEL_101;
        }
      }

      else if (v48 != 4096 && v48 != 0x2000)
      {
        goto LABEL_101;
      }
    }

    else if ((v48 > 0x10 || ((1 << v48) & 0x10104) == 0) && v48 != 1024)
    {
      goto LABEL_101;
    }

    *(*v2 + 3) = 1;
  }

LABEL_101:
  v49 = *(a2 + 72);
  if ((v49 - 6) < 3)
  {
    if ((AppleBCMWLANCore::useAppleRSNSupplicant(*(*v2 + 56)) & 1) == 0)
    {
      v51 = AppleBCMWLANJoinAdapter::setKey(a1, (a2 + 64), 0, 0, 0);
      if (v51)
      {
        v5 = v51;
        if (*(*v2 + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANJoinAdapter::performJoin(v2);
        }

        return v5;
      }
    }
  }

  else if ((v49 - 1) >= 2)
  {
    if (v49 == 10 && (AppleBCMWLANCore::useAppleRSNSupplicant(*(*v2 + 56)) & 1) == 0)
    {
      v52 = *(a2 + 492) ? a2 + 496 : 0;
      v53 = AppleBCMWLANJoinAdapter::setKey(a1, (a2 + 64), 0, v52, *(a2 + 492));
      if (v53)
      {
        v5 = v53;
        if (*(*v2 + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANJoinAdapter::performJoin(v2);
        }

        return v5;
      }
    }
  }

  else
  {
    v50 = AppleBCMWLANJoinAdapter::setKey(a1, (a2 + 64), 0, 0, 0);
    if (v50)
    {
      v5 = v50;
      if (*(*v2 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::performJoin(v2);
      }

      return v5;
    }
  }

  if ((v41 & 1) != 0 && *v28 != 64 && *v23 == 1)
  {
    AppleBCMWLANJoinAdapter::enableICVErrorEvents(a1);
  }

  if (AppleBCMWLANCore::useAppleRSNSupplicant(*(*v2 + 56)))
  {
    v54 = *v13;
    if (v54 >= 0x101)
    {
      v54 = 257;
    }

    v55 = *v28;
    if (*v28 <= 1023)
    {
      if ((v55 > 0x10 || ((1 << v55) & 0x10116) == 0) && v55 != 128 && v55 != 512)
      {
        goto LABEL_159;
      }
    }

    else if (v55 >= 0x4000)
    {
      if (v55 >= 0x10000)
      {
        if (v55 != 0x10000 && v55 != 0x20000)
        {
          goto LABEL_159;
        }
      }

      else if (v55 != 0x4000 && v55 != 0x8000)
      {
        goto LABEL_159;
      }
    }

    else if (v55 > 4095)
    {
      if (v55 != 4096 && v55 != 0x2000)
      {
        goto LABEL_159;
      }
    }

    else if (v55 != 1024 && v55 != 2048)
    {
LABEL_159:
      v54 = 0;
    }

    v57 = AppleBCMWLANJoinAdapter::setAssocRSNIE(a1, (a2 + 214), v54);
    if (v57)
    {
      v5 = v57;
      if (*(*v2 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::performJoin(v2);
      }

      return v5;
    }

    goto LABEL_189;
  }

  if (*v23 != 1)
  {
    goto LABEL_189;
  }

  v56 = *v28;
  if (*v28 > 1023)
  {
    if (v56 >= 0x4000)
    {
      if (v56 >= 0x10000)
      {
        if (v56 != 0x10000 && v56 != 0x20000)
        {
          goto LABEL_189;
        }

        goto LABEL_185;
      }

      if (v56 != 0x4000 && v56 != 0x8000)
      {
        goto LABEL_189;
      }

      goto LABEL_176;
    }

    if (v56 > 4095)
    {
      if (v56 != 4096 && v56 != 0x2000)
      {
        goto LABEL_189;
      }

      goto LABEL_185;
    }

    if (v56 != 1024)
    {
      if (v56 != 2048)
      {
        goto LABEL_189;
      }

      goto LABEL_176;
    }

    goto LABEL_185;
  }

  if (v56 > 0x10)
  {
    goto LABEL_170;
  }

  if (((1 << v56) & 0x10104) != 0)
  {
LABEL_185:
    *(*(a1 + 6) + 3) = 1;
    AppleBCMWLANJoinAdapter::enableSupplicantEvents(a1);
    v117 = 6000;
    v62 = *(*(a1 + 6) + 64);
    v121 = &v117;
    v122 = 4;
    v63 = AppleBCMWLANCommander::runIOVarSet(v62, "sup_wpa_tmo", &v121, 0, 0);
    if (v63)
    {
      v5 = v63;
      if (*(*v2 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::performJoin(v2, v5);
      }

      return v5;
    }

    goto LABEL_189;
  }

  if (((1 << v56) & 0x12) != 0)
  {
    goto LABEL_176;
  }

  if (!v56)
  {
    if (*(a2 + 24) != 1)
    {
      goto LABEL_189;
    }

    goto LABEL_185;
  }

LABEL_170:
  if (v56 != 128)
  {
    if (v56 == 512)
    {
      v117 = 0;
      v58 = *(*v2 + 64);
      v121 = &v117;
      v122 = 4;
      v59 = AppleBCMWLANCommander::runIOVarSet(v58, "sup_wpa_tmo", &v121, 0, 0);
      if (v59)
      {
        v5 = v59;
        if (*(*v2 + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANJoinAdapter::performJoin(v2);
        }

        return v5;
      }
    }

    goto LABEL_189;
  }

LABEL_176:
  *(*v2 + 3) = 1;
  v117 = 0;
  v60 = *(*v2 + 64);
  v121 = &v117;
  v122 = 4;
  v61 = AppleBCMWLANCommander::runIOVarSet(v60, "sup_wpa_tmo", &v121, 0, 0);
  if (v61)
  {
    v5 = v61;
    if (*(*v2 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::performJoin(v2);
    }

    return v5;
  }

LABEL_189:
  AppleBCMWLANPowerManager::configureMIMOPowerSaveForJoin(*(*v2 + 88), (*(a2 + 480) >> 9) & 1);
  FirmwareInterfaceVersion = AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*v2 + 56));
  if (FirmwareInterfaceVersion <= 0x14)
  {
    v65 = AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*v2 + 56));
    v114 = v65 > 0x10;
    v66 = 72;
    if (v65 > 0x10)
    {
      v66 = 76;
    }

    v113 = v66;
    if (v65 <= 0x10)
    {
      v64 = 42;
    }

    else
    {
      v64 = 46;
    }
  }

  else
  {
    v114 = 0;
    v113 = 84;
    v64 = 46;
  }

  v116 = IOMallocZeroData();
  if (!v116)
  {
    if (*(*v2 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANJoinAdapter::performJoin(v2);
    }

    return 3766625287;
  }

  bzero(v116, v113);
  if (FirmwareInterfaceVersion >= 0x15)
  {
    *(v116 + 18) = 3;
  }

  v67 = *(a2 + 28);
  if (v67 >= 0x20)
  {
    v68 = 32;
  }

  else
  {
    v68 = v67;
  }

  *v116 = v68;
  memcpy(v116 + 1, (a2 + 32), v68);
  bzero((*v2 + 644), 0x2A8uLL);
  if (*(a2 + 532))
  {
    v69 = 0;
    v70 = (a2 + 552);
    v71 = 646;
    do
    {
      v72 = *v2 + v71;
      v73 = *(v70 - 3);
      *(v72 + 10) = *(v70 - 4);
      *(v72 + 6) = v73;
      v74 = *v2 + v71;
      v75 = *(v70 - 3);
      *(v74 + 16) = *(v70 - 1);
      *(v74 + 12) = v75;
      *(*v2 + v71 + 18) = *v70;
      *(*v2 + v71) = *(v70 - 7);
      ++v69;
      v76 = *(a2 + 532);
      v71 += 68;
      v70 += 9;
    }

    while (v69 < v76);
  }

  else
  {
    LODWORD(v76) = 0;
  }

  if (v114)
  {
    v77 = 52;
  }

  else
  {
    v77 = 48;
  }

  if (FirmwareInterfaceVersion > 0x14)
  {
    v77 = 60;
  }

  *(v116 + v64) = v76;
  v78 = *(a2 + 484);
  if ((v78 & 8) != 0)
  {
    v79 = 2;
  }

  else
  {
    v79 = (v78 >> 2) & 1;
  }

  v112 = v79;
  v80 = v76;
  if ((*(a2 + 480) & 0x80) != 0)
  {
    v81 = *(a2 + 471);
    *(v116 + 26) = *(a2 + 475);
    v116[12] = v81;
    v80 = *(a2 + 532);
  }

  v111 = (v77 + 2 * v76);
  if (!v80)
  {
LABEL_244:
    v92 = AppleBCMWLANCore::checkForWPA3SAESupport(*(*v2 + 56));
    if (v92)
    {
      AppleBCMWLANJoinAdapter::adjustMfp(v92, a2, &v118);
    }

    v93 = AppleBCMWLANCore::configureManagementFrameProtection(*(*v2 + 56), v118);
    if (v93)
    {
      v5 = v93;
      if (*(*v2 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANJoinAdapter::performJoin(v2);
      }

      goto LABEL_317;
    }

    if (v120[0] == 14 || v120[0] == 16 || (v94 = *v28, *v28 == 0x8000) || v94 == 0x4000)
    {
      v95 = AppleBCMWLANJoinAdapter::setAssocWsecInfo(a1, 262, v120[0], 0, 0, 0);
      if (v95)
      {
        v5 = v95;
        if (*(*v2 + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANJoinAdapter::performJoin(v2);
        }

        goto LABEL_317;
      }

      v96 = AppleBCMWLANJoinAdapter::setAssocBip(a1, v119);
      if (v96)
      {
        v5 = v96;
        if (*(*v2 + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANJoinAdapter::performJoin(v2);
        }

        goto LABEL_317;
      }
    }

    else
    {
      if (*(a2 + 24) != 1)
      {
        goto LABEL_275;
      }

      if (AppleBCMWLANCore::checkForOWESupport(*(*v2 + 56)))
      {
        v97 = AppleBCMWLANJoinAdapter::setAssocWsecInfo(a1, 263, *(a2 + 528), (*(a2 + 480) >> 3) & 1, v112, (*(a2 + 488) >> 4) & 1);
        if (v97)
        {
          v5 = v97;
          if (*(*v2 + 72) && CCLogStream::shouldLog())
          {
            AppleBCMWLANJoinAdapter::performJoin(v2);
          }

          goto LABEL_317;
        }
      }
    }

    v94 = *v28;
LABEL_275:
    v98 = 0;
    if (v94 <= 4095)
    {
      if (v94 != 8 && v94 != 16 && v94 != 1024)
      {
        goto LABEL_292;
      }
    }

    else if (v94 >= 0x10000)
    {
      if (v94 != 0x20000 && v94 != 0x10000)
      {
        goto LABEL_292;
      }
    }

    else if (v94 != 4096 && v94 != 0x2000)
    {
      goto LABEL_292;
    }

    if (AppleBCMWLANCore::checkForWPA3SAESupport(*(*v2 + 56)))
    {
      v99 = AppleBCMWLANJoinAdapter::setAssocWsecInfo(a1, 263, *(a2 + 528), (*(a2 + 480) >> 3) & 1, v112, (*(a2 + 488) >> 4) & 1);
      if (v99)
      {
        v5 = v99;
        if (*(*v2 + 72) && CCLogStream::shouldLog())
        {
          AppleBCMWLANJoinAdapter::performJoin(v2);
        }

        goto LABEL_317;
      }
    }

    v98 = *(a2 + 488) & 1;
LABEL_292:
    AppleBCMWLANJoinAdapter::setAssocWsecInfo(a1, 268, v98, 0, 0, 0);
    if (FirmwareInterfaceVersion < 0x15)
    {
      v103 = *v2;
      if (!v114)
      {
        *(v103 + 628) = *(v116 + 21);
        v105 = *v2;
        v106 = v116[12];
        *(v105 + 636) = *(v116 + 26);
        *(v105 + 632) = v106;
        v107 = *(*v2 + 64);
        v108 = (v111 + 6 * v76) & 0xFFFE;
        if (((v111 + 6 * v76) & 0xFFFE) != 0)
        {
          v109 = v116;
        }

        else
        {
          v109 = 0;
        }

LABEL_312:
        v121 = v109;
        v122 = v108;
        v5 = AppleBCMWLANCommander::runIOCtlSet(v107, 26, &v121, 0, 0);
        v110 = *v2;
        if (v5)
        {
          if (*(v110 + 72) && CCLogStream::shouldLog())
          {
            AppleBCMWLANJoinAdapter::performJoin(v2);
          }
        }

        else
        {
          *(v110 + 1) = 1;
        }

        goto LABEL_317;
      }

      *(v103 + 628) = *(v116 + 23);
      v100 = *v2;
      v101 = v116[13];
      v102 = *(v116 + 28);
    }

    else
    {
      *(*v2 + 628) = *(v116 + 23);
      v100 = *v2;
      v101 = v116[15];
      v102 = *(v116 + 32);
    }

    *(v100 + 636) = v102;
    *(v100 + 632) = v101;
    v104 = *v28;
    if (*v28 <= 127)
    {
      if (v104 <= 0x20 && ((1 << v104) & 0x100000012) != 0)
      {
        goto LABEL_309;
      }
    }

    else
    {
      if (v104 < 0x4000)
      {
        if (v104 != 128 && v104 != 2048)
        {
          goto LABEL_310;
        }

LABEL_309:
        *(v116 + 19) |= 2u;
        goto LABEL_310;
      }

      if (v104 == 0x8000 || v104 == 0x4000)
      {
        goto LABEL_309;
      }
    }

LABEL_310:
    v107 = *(*v2 + 64);
    v108 = (v111 + 6 * v76) & 0xFFFE;
    v109 = v116;
    if (((v111 + 6 * v76) & 0xFFFE) == 0)
    {
      v109 = 0;
    }

    goto LABEL_312;
  }

  v82 = 0;
  v83 = v116 + v111;
  v84 = v116 + 15;
  v85 = (a2 + 552);
  while (1)
  {
    ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(*v2 + 56));
    BCMChannelSpec = AppleBCMWLANChanSpec::getBCMChannelSpec(ChanSpecHandler, *v85);
    if (FirmwareInterfaceVersion >= 0x15)
    {
      *v84 = BCMChannelSpec;
LABEL_227:
      *(v116 + 19) |= 4u;
      goto LABEL_229;
    }

    if (v114)
    {
      *(v84 - 4) = BCMChannelSpec;
      goto LABEL_227;
    }

    *(v84 - 6) = BCMChannelSpec;
LABEL_229:
    v88 = *(v85 - 3);
    *(v83 + 2) = *(v85 - 4);
    *v83 = v88;
    v89 = *v28;
    if (*v28 >= 0x10000)
    {
      if (v89 == 0x10000 || v89 == 0x20000)
      {
        goto LABEL_236;
      }
    }

    else if (v89 == 4096 || v89 == 0x2000)
    {
      goto LABEL_236;
    }

    if (!*(v85 - 16))
    {
      goto LABEL_240;
    }

LABEL_236:
    if (AppleBCMWLANCore::checkForSaePKSupport(*(*v2 + 56)))
    {
      if (AppleBCMWLANCore::checkForWPA3SAESupport(*(*v2 + 56)))
      {
        if (*(a2 + 484))
        {
          v90 = AppleBCMWLANJoinAdapter::setAssocWsecInfo(a1, 266, 1, (*(a2 + 480) >> 3) & 1, v112, 0);
          if (v90)
          {
            break;
          }
        }
      }
    }

LABEL_240:
    if (AppleBCMWLANCore::checkForOprChValidationSupport(*(*v2 + 56)))
    {
      if ((*(a2 + 484) & 0x20) != 0)
      {
        v91 = AppleBCMWLANJoinAdapter::setAssocWsecInfo(a1, 270, 1, 0, 0, 0);
        if (v91)
        {
          v5 = v91;
          if (*(*v2 + 72) && CCLogStream::shouldLog())
          {
            AppleBCMWLANJoinAdapter::performJoin(v2);
          }

          goto LABEL_317;
        }
      }
    }

    v83 += 6;
    ++v82;
    v85 += 9;
    ++v84;
    if (v82 >= *(a2 + 532))
    {
      goto LABEL_244;
    }
  }

  v5 = v90;
  if (*(*v2 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANJoinAdapter::performJoin(v2);
  }

LABEL_317:
  IOFreeData();
  return v5;
}