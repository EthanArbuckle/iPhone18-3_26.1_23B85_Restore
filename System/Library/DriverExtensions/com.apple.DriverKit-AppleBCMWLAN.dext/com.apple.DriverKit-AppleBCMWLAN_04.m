uint64_t AppleBCMWLANNANInterface::handleNANEventRangeResponseIndication(uint64_t *a1, uint64_t a2)
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
        AppleBCMWLANNANInterface::handleNANEventRangeResponseIndication(a1);
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
    if (v8 < 8 || v8 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventRangeResponseIndication(a1);
      }
    }

    else
    {
      if (!v7)
      {
        v11 = (a2 + 52);
        if (a2 + 59 >= v5 && (a2 + 52) < 0xFFFFFFFFFFFFFFF9 && a2 + 59 <= v6 && v5 <= v11 && v6 >= v11)
        {
          v12[0] = *(a2 + 59);
          v12[1] = *(a2 + 58);
          v13 = *v11;
          v14 = *(a2 + 56);
          IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x6Du, v12, 8uLL, 1);
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
        AppleBCMWLANNANInterface::handleNANEventRangeResponseIndication(a1);
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
      AppleBCMWLANNANInterface::handleNANEventRangeResponseIndication(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventRangeReportIndication(uint64_t *a1, uint64_t a2)
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
        AppleBCMWLANNANInterface::handleNANEventRangeReportIndication(a1);
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
    if (v8 < 0xC || v8 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventRangeReportIndication(a1);
      }
    }

    else
    {
      if (!v7)
      {
        v11 = a2 + 52;
        if (a2 + 63 >= v5 && (a2 + 52) < 0xFFFFFFFFFFFFFFF5 && a2 + 63 <= v6 && v5 <= v11 && v6 >= v11)
        {
          *&v14[3] = 0;
          v12 = *(a2 + 52);
          *v14 = *(a2 + 56);
          *&v14[4] = *(a2 + 60);
          v13 = *(a2 + 63);
          *&v14[7] = v12;
          v15 = 0;
          LOWORD(v15) = *(a2 + 62);
          IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x6Eu, &v13, 0x10uLL, 1);
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
        AppleBCMWLANNANInterface::handleNANEventRangeReportIndication(a1);
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
      AppleBCMWLANNANInterface::handleNANEventRangeReportIndication(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventRangeTerminateIndication(uint64_t *a1, uint64_t a2)
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
        AppleBCMWLANNANInterface::handleNANEventRangeTerminateIndication(a1);
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
    if (v8 < 8 || v8 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventRangeTerminateIndication(a1);
      }
    }

    else
    {
      if (!v7)
      {
        v11 = (a2 + 52);
        if (a2 + 59 >= v5 && (a2 + 52) < 0xFFFFFFFFFFFFFFF9 && a2 + 59 <= v6 && v5 <= v11 && v6 >= v11)
        {
          *&v14[1] = 0;
          v13 = *v11;
          *v14 = *(a2 + 56);
          v12 = *(a2 + 59);
          v15 = *(a2 + 58);
          IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x6Fu, &v12, 0xAuLL, 1);
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
        AppleBCMWLANNANInterface::handleNANEventRangeTerminateIndication(a1);
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
      AppleBCMWLANNANInterface::handleNANEventRangeTerminateIndication(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventDWStart(uint64_t *a1, uint64_t a2)
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
        AppleBCMWLANNANInterface::handleNANEventDWStart(a1);
      }

      return v4;
    }

    return 1;
  }

  v5 = a2 + 48;
  v6 = v3 - 1 + a2 + 48;
  v7 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) == 261)
  {
    v8 = *(a2 + 50);
    if (v8 < 0x3C || v8 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventDWStart(a1);
      }
    }

    else if (v7 || (v10 = a2 + 52, a2 + 111 < v5) || (a2 + 52) >= 0xFFFFFFFFFFFFFFC5 || a2 + 111 > v6 || v5 > v10 || v6 < v10)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventDWStart(a1);
      }
    }

    else if (*(a2 + 110))
    {
      v11 = 0;
      v12 = (a2 + 112);
      while (1)
      {
        if (v12 + 5 < v5 || v12 >= 0xFFFFFFFFFFFFFFFBLL || v12 + 5 > v6 || v5 > v12 || v6 < v12)
        {
          if (!(*(*a1 + 1088))(a1))
          {
            return 1;
          }

          (*(*a1 + 1088))(a1);
          v4 = 1;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleNANEventDWStart(a1);
          }

          return v4;
        }

        if (*v12 == 3841)
        {
          break;
        }

        v17 = ((v12[1] + 3) & 0x1FFFC) + 4;
        v11 += v17;
        v12 = (v12 + v17);
        if (*(a2 + 110) <= v11)
        {
          goto LABEL_46;
        }
      }

      v18 = v12 + 2;
      v19 = v12 + 27;
      v20 = (v12 + 2) >= 0xFFFFFFFFFFFFFFE9;
      if (v19 >= v5 && !v20 && v19 <= v6 && v5 <= v18 && v6 >= v18)
      {
        goto LABEL_47;
      }

      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventDWStart(a1);
      }
    }

    else
    {
LABEL_46:
      v18 = 0;
LABEL_47:
      v24 = 0;
      v23 = 0u;
      memset(v22, 0, sizeof(v22));
      AppleBCMWLANNANInterface::copyDeviceInfo(a1, v22, v10);
      if (v18)
      {
        WORD1(v24) = *(v18 + 22);
        LOWORD(v24) = v18[10];
        v23 = *v18;
        WORD2(v24) = *(v18 + 23);
      }

      IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x7Au, v22, 0x48uLL, 1);
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
      AppleBCMWLANNANInterface::handleNANEventDWStart(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventDWEnd(uint64_t *a1, uint64_t a2)
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
        AppleBCMWLANNANInterface::handleNANEventDWEnd(a1);
      }

      return v4;
    }

    return 1;
  }

  v5 = a2 + 48;
  v6 = v3 - 1 + a2 + 48;
  v7 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) == 261)
  {
    v8 = *(a2 + 50);
    if (v8 < 0x3C || v8 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventDWEnd(a1);
      }
    }

    else if (v7 || (v10 = a2 + 52, a2 + 111 < v5) || (a2 + 52) >= 0xFFFFFFFFFFFFFFC5 || a2 + 111 > v6 || v5 > v10 || v6 < v10)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventDWEnd(a1);
      }
    }

    else if (*(a2 + 110))
    {
      v11 = 0;
      v12 = (a2 + 112);
      while (1)
      {
        if (v12 + 5 < v5 || v12 >= 0xFFFFFFFFFFFFFFFBLL || v12 + 5 > v6 || v5 > v12 || v6 < v12)
        {
          if (!(*(*a1 + 1088))(a1))
          {
            return 1;
          }

          (*(*a1 + 1088))(a1);
          v4 = 1;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleNANEventDWEnd(a1);
          }

          return v4;
        }

        if (*v12 == 3841)
        {
          break;
        }

        v17 = ((v12[1] + 3) & 0x1FFFC) + 4;
        v11 += v17;
        v12 = (v12 + v17);
        if (*(a2 + 110) <= v11)
        {
          goto LABEL_46;
        }
      }

      v18 = v12 + 2;
      v19 = v12 + 27;
      v20 = (v12 + 2) >= 0xFFFFFFFFFFFFFFE9;
      if (v19 >= v5 && !v20 && v19 <= v6 && v5 <= v18 && v6 >= v18)
      {
        goto LABEL_47;
      }

      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventDWEnd(a1);
      }
    }

    else
    {
LABEL_46:
      v18 = 0;
LABEL_47:
      v24 = 0;
      v23 = 0u;
      memset(v22, 0, sizeof(v22));
      AppleBCMWLANNANInterface::copyDeviceInfo(a1, v22, v10);
      if (v18)
      {
        WORD1(v24) = *(v18 + 22);
        LOWORD(v24) = v18[10];
        v23 = *v18;
        WORD2(v24) = *(v18 + 23);
      }

      IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x7Bu, v22, 0x48uLL, 1);
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
      AppleBCMWLANNANInterface::handleNANEventDWEnd(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventChanBoundary(uint64_t *a1, uint64_t a2)
{
  bzero(v57, 0x300uLL);
  v4 = *(a2 + 20);
  if (v4 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v5 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventChanBoundary(a1);
      }

      return v5;
    }

    return 1;
  }

  v6 = a2 + 48;
  v7 = v4 - 1 + a2 + 48;
  v8 = __CFADD__(v4 - 1, a2 + 48);
  if (*(a2 + 48) != 3845)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v5 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventChanBoundary(a1);
      }

      return v5;
    }

    return 1;
  }

  v9 = *(a2 + 50);
  if (v9 < 0xC || v9 + 4 > v4)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v5 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventChanBoundary(a1);
      }

      return v5;
    }

    return 1;
  }

  if (v8 || (v10 = a2 + 52, a2 + 63 < v6) || (a2 + 52) >= 0xFFFFFFFFFFFFFFF5 || a2 + 63 > v7 || v6 > v10 || v7 < v10)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v5 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventChanBoundary(a1);
      }

      return v5;
    }

    return 1;
  }

  if (!*(a2 + 62))
  {
    v17 = 0;
    v44 = 0;
    v12 = 0;
    v11 = 0;
LABEL_88:
    ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(a1[17] + 64));
    AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, *(a2 + 60));
    ChanSpecConvToApple80211Channel();
    v58 = *(a2 + 52);
    if (v11)
    {
      v46 = AppleBCMWLANCore::getChanSpecHandler(*(a1[17] + 64));
      AppleBCMWLANChanSpec::getAppleChannelSpec(v46, *v11);
      ChanSpecConvToApple80211Channel();
      v59 = *(v11 + 1);
      v61 = *(v11 + 1);
      v62 = *(v11 + 4);
    }

    if (v44)
    {
      v47 = v17 / v44;
    }

    else
    {
      v47 = 0;
    }

    v60 = v47;
    if (v12)
    {
      v63 = *(v12 + 4);
      v64 = *(v12 + 12);
      v65 = *(v12 + 20);
      v66 = *(v12 + 7);
      v67 = *(v12 + 16);
    }

    IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x7Cu, v57, 0x300uLL, 1);
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = (a2 + 64);
  v49 = 0;
  while (1)
  {
    if (v18 + 5 < v6 || v18 >= 0xFFFFFFFFFFFFFFFBLL || v18 + 5 > v7 || v6 > v18 || v7 < v18)
    {
      if (!(*(*a1 + 1088))(a1, 20))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v5 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventChanBoundary(a1);
      }

      return v5;
    }

    v23 = *v18;
    if (v23 <= 0x1400)
    {
      if (v23 == 3843)
      {
        v11 = v18 + 2;
        if (v18 + 23 < v6 || (v18 + 2) >= 0xFFFFFFFFFFFFFFEDLL || v18 + 23 > v7 || v6 > v11 || v7 < v11)
        {
          if (!(*(*a1 + 1088))(a1, 20))
          {
            return 1;
          }

          (*(*a1 + 1088))(a1);
          v5 = 1;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleNANEventChanBoundary(a1);
          }

          return v5;
        }
      }

      else if (v23 == 3844)
      {
        v12 = v18 + 2;
        if (v18 + 71 < v6 || (v18 + 2) >= 0xFFFFFFFFFFFFFFBDLL || v18 + 71 > v7 || v6 > v12 || v7 < v12)
        {
          if (!(*(*a1 + 1088))(a1, 20))
          {
            return 1;
          }

          (*(*a1 + 1088))(a1);
          v5 = 1;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleNANEventChanBoundary(a1);
          }

          return v5;
        }
      }

      goto LABEL_85;
    }

    if (v23 == 5121)
    {
      break;
    }

    if (v23 == 5122)
    {
      v35 = v18 + 2;
      if (v18 + 23 < v6 || (v18 + 2) >= 0xFFFFFFFFFFFFFFEDLL || v18 + 23 > v7 || v6 > v35 || v7 < v35)
      {
        if (!(*(*a1 + 1088))(a1, 20))
        {
          return 1;
        }

        (*(*a1 + 1088))(a1);
        v5 = 1;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::handleNANEventChanBoundary(a1);
        }

        return v5;
      }

      v56 = v11;
      v36 = v18[2];
      if (v36 >= 0x40)
      {
        LOBYTE(v36) = 64;
      }

      v37 = v15;
      v38 = &v70[5 * v15 + 40];
      *v38 = v36;
      v39 = *(v18 + 5);
      v38[3] = v39;
      if (v39)
      {
        v55 = v17;
        v53 = v12;
        v51 = v16;
        v40 = v14;
        v41 = v15;
        v38[1] = AppleBCMWLANNANInterface::getTransmissionMode(a1, *(v18 + 4));
        MCS = AppleBCMWLANNANInterface::getMCS(a1, *(v18 + 4));
        LODWORD(v15) = v41;
        v14 = v40;
        v16 = v51;
        v12 = v53;
        v17 = v55;
        *(v38 + 16) = MCS;
      }

      v33 = *(v18 + 2);
      v70[5 * v37 + 3] = *(v18 + 3);
      v15 = (v15 + 1);
LABEL_79:
      v17 += v33;
      ++v16;
      v11 = v56;
      goto LABEL_85;
    }

    if (v23 == 5123)
    {
      v24 = v18 + 2;
      if (v18 + 27 < v6 || (v18 + 2) >= 0xFFFFFFFFFFFFFFE9 || v18 + 27 > v7 || v6 > v24 || v7 < v24)
      {
        if (!(*(*a1 + 1088))(a1, 20))
        {
          return 1;
        }

        (*(*a1 + 1088))(a1);
        v5 = 1;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::handleNANEventChanBoundary(a1);
        }

        return v5;
      }

      v56 = v11;
      v25 = v18[2];
      if (v25 >= 0x40)
      {
        LOBYTE(v25) = 64;
      }

      v26 = v14;
      LOBYTE(v70[5 * v14 + 40]) = v25;
      v27 = *(v18 + 5);
      v28 = &v70[5 * v14 + 120];
      v28[3] = v27;
      if (v27)
      {
        v54 = v17;
        v52 = v12;
        v50 = v16;
        v29 = v14;
        v30 = v15;
        v28[1] = AppleBCMWLANNANInterface::getTransmissionMode(a1, *(v18 + 4));
        v31 = AppleBCMWLANNANInterface::getMCS(a1, *(v18 + 4));
        v15 = v30;
        LODWORD(v14) = v29;
        v16 = v50;
        v12 = v52;
        v17 = v54;
        *(v28 + 16) = v31;
      }

      *(v28 + 17) = *(v18 + 26);
      v32 = &v70[5 * v26 + 80];
      v33 = *(v18 + 2);
      v32[3] = *(v18 + 3);
      *(v32 + 17) = *(v18 + 24);
      v14 = (v14 + 1);
      goto LABEL_79;
    }

LABEL_85:
    v43 = ((v18[1] + 3) & 0x1FFFC) + 4;
    v13 += v43;
    v18 = (v18 + v43);
    if (*(a2 + 62) <= v13)
    {
      v44 = v16;
      v68 = v49;
      v69 = BYTE4(v49);
      goto LABEL_88;
    }
  }

  v34 = v18 + 2;
  if (v18 + 11 >= v6 && (v18 + 2) < 0xFFFFFFFFFFFFFFF9 && v18 + 11 <= v7 && v6 <= v34 && v7 >= v34)
  {
    LOBYTE(v49) = *(v18 + 10);
    BYTE4(v49) = *(v18 + 8);
    goto LABEL_85;
  }

  if (!(*(*a1 + 1088))(a1, 20))
  {
    return 1;
  }

  (*(*a1 + 1088))(a1);
  v5 = 1;
  if (CCLogStream::shouldLog())
  {
    AppleBCMWLANNANInterface::handleNANEventChanBoundary(a1);
  }

  return v5;
}

uint64_t AppleBCMWLANNANInterface::handleEventNANMasterChanged(uint64_t *a1, uint64_t a2)
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
        AppleBCMWLANNANInterface::handleEventNANMasterChanged(a1);
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
        AppleBCMWLANNANInterface::handleEventNANMasterChanged(a1);
      }
    }

    else if (v8 || (v11 = a2 + 52, a2 + 111 < v6) || (a2 + 52) >= 0xFFFFFFFFFFFFFFC5 || a2 + 111 > v7 || v6 > v11 || v7 < v11)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANMasterChanged(a1);
      }
    }

    else
    {
      v23 = 0;
      memset(v22, 0, sizeof(v22));
      AppleBCMWLANNANInterface::copyDeviceInfo(a1, v22, v11);
      if (*(a2 + 110))
      {
        v12 = 0;
        v13 = 0;
        v14 = (a2 + 112);
        while (1)
        {
          v15 = v14 + 5 >= v6 && v14 < 0xFFFFFFFFFFFFFFFBLL;
          v16 = v15 && v14 + 5 <= v7;
          v17 = v16 && v6 <= v14;
          if (!v17 || v7 < v14)
          {
            break;
          }

          if (*v14 == 1026)
          {
            v12 = (v14 + 2);
          }

          v19 = ((v14[1] + 3) & 0x1FFFC) + 4;
          v13 += v19;
          v14 = (v14 + v19);
          if (*(a2 + 110) <= v13)
          {
            if (v12)
            {
              v20 = *v12;
              if (v20)
              {
                v23 |= 1u;
              }

              if ((v20 & 2) != 0)
              {
                v23 |= 2u;
              }
            }

            goto LABEL_52;
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
          AppleBCMWLANNANInterface::handleEventNANMasterChanged(a1);
        }
      }

      else
      {
LABEL_52:
        IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x60u, v22, 0x34uLL, 1);
        return 0;
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
      AppleBCMWLANNANInterface::handleEventNANMasterChanged(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleEventNANHostAssistRequest(uint64_t *a1, uint64_t a2)
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
        AppleBCMWLANNANInterface::handleEventNANHostAssistRequest(a1);
      }

      return v4;
    }

    return 1;
  }

  v6 = a2 + 48;
  v7 = v3 - 1 + a2 + 48;
  v8 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) == 1538)
  {
    v9 = *(a2 + 50);
    if (v9 < 0x12 || v9 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANHostAssistRequest(a1);
      }
    }

    else
    {
      if (!v8)
      {
        v12 = (a2 + 52);
        if (a2 + 69 >= v6 && (a2 + 52) < 0xFFFFFFFFFFFFFFEFLL && a2 + 69 <= v7 && v6 <= v12 && v7 >= v12)
        {
          v17 = 0;
          v13[0] = *(a2 + 64);
          v13[1] = *(a2 + 67);
          v14 = *(a2 + 58);
          v15 = *(a2 + 62);
          v16 = *v12;
          LOWORD(v17) = *(a2 + 56);
          AppleBCMWLANNANInterface::convertNANFWFrameType(a1, *(a2 + 65), &v17 + 2, &v17 + 3);
          AppleBCMWLANNANInterface::convertNANFWHostAssistReason(a1, *(a2 + 66), &v17 + 1);
          IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x81u, v13, 0x14uLL, 1);
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
        AppleBCMWLANNANInterface::handleEventNANHostAssistRequest(a1);
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
      AppleBCMWLANNANInterface::handleEventNANHostAssistRequest(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleEventNANPeerScheduleUpdate(uint64_t *a1, uint64_t a2)
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
        AppleBCMWLANNANInterface::handleEventNANPeerScheduleUpdate(a1);
      }

      return v4;
    }

    return 1;
  }

  v5 = a2 + 48;
  v6 = v3 - 1 + a2 + 48;
  v7 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) == 2305)
  {
    v8 = *(a2 + 50);
    if (v8 < 0xA || v8 + 4 > v3)
    {
      if (!(*(*a1 + 1088))(a1))
      {
        return 1;
      }

      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleEventNANPeerScheduleUpdate(a1);
      }
    }

    else
    {
      if (!v7)
      {
        v10 = a2 + 52;
        if (a2 + 61 >= v5 && (a2 + 52) < 0xFFFFFFFFFFFFFFF7 && a2 + 61 <= v6 && v5 <= v10 && v6 >= v10)
        {
          if (*(a2 + 60))
          {
            v11 = 0;
            v12 = 0;
            v13 = (a2 + 62);
            while (1)
            {
              v14 = v13 + 5 >= v5 && v13 < 0xFFFFFFFFFFFFFFFBLL;
              v15 = v14 && v13 + 5 <= v6;
              v16 = v15 && v5 <= v13;
              if (!v16 || v6 < v13)
              {
                break;
              }

              if (*v13 == 774)
              {
                v12 = v13;
              }

              v18 = ((v13[1] + 3) & 0x1FFFC) + 4;
              v11 += v18;
              v13 = (v13 + v18);
              if (*(a2 + 60) <= v11)
              {
                if (!v12)
                {
                  goto LABEL_52;
                }

                v19 = 0;
                v20 = v12[1];
                if (v20 > 7)
                {
                  v21 = v20 + 1;
                }

                else
                {
                  v21 = 8;
                }

                goto LABEL_53;
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
              AppleBCMWLANNANInterface::handleEventNANPeerScheduleUpdate(a1);
            }

            return v4;
          }

          v12 = 0;
LABEL_52:
          v19 = 1;
          v21 = 8;
LABEL_53:
          v22 = IOMallocZeroData();
          if (!v22)
          {
            return 12;
          }

          v23 = v22;
          v24 = v21 - 1 + v22;
          v25 = __CFADD__(v21 - 1, v22);
          v26 = *v10;
          *(v22 + 4) = *(v10 + 4);
          *v22 = v26;
          if (v19)
          {
            goto LABEL_58;
          }

          v28 = (v12 + 2);
          if ((v12 + 5) < v5 || (v12 + 2) >= 0xFFFFFFFFFFFFFFFALL || (v12 + 5) > v6 || v5 > v28 || v6 < v28)
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              v4 = 1;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleEventNANPeerScheduleUpdate(a1);
              }

              goto LABEL_103;
            }
          }

          else
          {
            v29 = v12[1];
            if (v29 >= 7)
            {
              v30 = v29 - 7;
            }

            else
            {
              v30 = 0;
            }

            *(v22 + 6) = v30;
            if (v29 < 8)
            {
              v25 = 1;
            }

            if (v25 || ((v31 = (v22 + 8), v32 = v30 - 1, v33 = &v23[v30 + 7], !__CFADD__(v30 - 1, v23 + 8)) ? (v34 = 0) : (v34 = 1), v33 < v23 || v34 || v33 > v24 || v23 > v31 || v24 < v31))
            {
              if ((*(*a1 + 1088))(a1))
              {
                (*(*a1 + 1088))(a1);
                v4 = 1;
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANNANInterface::handleEventNANPeerScheduleUpdate(a1);
                }

                goto LABEL_103;
              }
            }

            else
            {
              v35 = v12 + 11;
              v36 = v12 + v32 + 11;
              v37 = __CFADD__(v32, v12 + 11);
              if (v36 >= v5 && !v37 && v36 <= v6 && v5 <= v35 && v6 >= v35)
              {
                memcpy(v31, v35, v30);
LABEL_58:
                IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x82u, v23, v21, 1);
                v4 = 0;
LABEL_103:
                IOFreeData();
                return v4;
              }

              if ((*(*a1 + 1088))(a1))
              {
                (*(*a1 + 1088))(a1);
                v4 = 1;
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANNANInterface::handleEventNANPeerScheduleUpdate(a1);
                }

                goto LABEL_103;
              }
            }
          }

          v4 = 1;
          goto LABEL_103;
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
        AppleBCMWLANNANInterface::handleEventNANPeerScheduleUpdate(a1);
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
      AppleBCMWLANNANInterface::handleEventNANPeerScheduleUpdate(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleEventNANFWDataPathTerminated(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 > 3)
  {
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
          AppleBCMWLANNANInterface::handleEventNANFWDataPathTerminated(a1);
          return 1;
        }
      }

      else if (v7 || (v11 = a2 + 52, a2 + 87 < v5) || (a2 + 52) >= 0xFFFFFFFFFFFFFFDDLL || a2 + 87 > v6 || v5 > v11 || v6 < v11)
      {
        if (!(*(*a1 + 1088))(a1))
        {
          return 1;
        }

        (*(*a1 + 1088))(a1);
        v4 = 1;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::handleEventNANFWDataPathTerminated(a1);
          return 1;
        }
      }

      else
      {
        v4 = *(a2 + 74);
        switch(*(a2 + 74))
        {
          case 0:
            return v4;
          case 6:
            AppleBCMWLANNANInterface::postEventNANDataPathEnd(a1, a2 + 52, 18);
            goto LABEL_33;
          default:
LABEL_33:
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleEventNANFWDataPathTerminated(a1);
              }
            }

            v4 = 0;
            break;
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
        AppleBCMWLANNANInterface::handleEventNANFWDataPathTerminated(a1);
        return 1;
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
      AppleBCMWLANNANInterface::handleEventNANFWDataPathTerminated(a1);
      return 1;
    }
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventOobActionFrameTxStatus(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventOobActionFrameTxStatus(a1);
      }
    }

    return 22;
  }

  v4 = a2 + 48;
  v5 = v3 - 1 + a2 + 48;
  v6 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) != 2051)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventOobActionFrameTxStatus(a1);
      }
    }

    return 22;
  }

  v7 = *(a2 + 50);
  if (v7 < 4 || v7 + 4 > v3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventOobActionFrameTxStatus(a1);
      }
    }

    return 22;
  }

  if (v6 || (v11 = a2 + 52, a2 + 55 < v4) || (a2 + 52) >= 0xFFFFFFFFFFFFFFFDLL || a2 + 55 > v5 || v4 > v11 || v5 < v11)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v9 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventOobActionFrameTxStatus(a1);
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v12 = *(a2 + 52);
    v14 = *(a2 + 54);
    if (*(a2 + 53) - 1 < 3)
    {
      v13 = (*(a2 + 53) - 1) + 1;
    }

    else
    {
      v13 = 4;
    }

    v15 = v12;
    v16 = v13;
    IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x9Eu, &v14, 0xAuLL, 1);
    return 0;
  }

  return v9;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 20);
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx(a1);
      }
    }

    return 22;
  }

  v6 = a2 + 48;
  v5 = *(a2 + 48);
  v7 = v3 - 1 + a2 + 48;
  v8 = __CFADD__(v3 - 1, a2 + 48);
  if (v5 == 512)
  {
    v11 = 24;
    v12 = 52;
    v13 = 56;
  }

  else
  {
    if (v5 == 2051)
    {
      LOBYTE(v9) = 0;
      v10 = (a2 + 48);
      goto LABEL_15;
    }

    v11 = 16;
    v12 = 50;
    v13 = 52;
  }

  v14 = *(a2 + v13);
  v15 = *(a2 + v12);
  ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(a1[17] + 64));
  AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, bswap32(v15) >> 16);
  ChanSpecConvToApple80211Channel();
  v10 = (v6 + v11);
  if (*v10 != 2051)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx(a1);
      }
    }

    return 22;
  }

  v9 = HIBYTE(v14);
  v3 = *v4;
LABEL_15:
  v17 = *(v10 + 1);
  if (v17 < 0x14 || v17 + 4 > v3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx(a1);
      }
    }

    return 22;
  }

  if (v8 || (v20 = v10 + 1, v10 + 23 < v6) || (v10 + 1) >= 0xFFFFFFFFFFFFFFEDLL || v10 + 23 > v7 || v6 > v20 || v7 < v20)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v18 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx(a1);
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v21 = *(v10 + 11);
    v22 = IOMallocZeroData();
    if (v22)
    {
      v23 = v22;
      v24 = v21 + 32 + v22;
      v25 = __CFADD__(v21 + 32, v22);
      v26 = *(v10 + 11);
      *(v22 + 31) = v26;
      *(v22 + 30) = v9;
      *(v22 + 18) = 0;
      *(v22 + 26) = 0;
      if (v10 + 9 < v6 || v10 + 9 > v7)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          v18 = 1;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx(a1);
          }

          goto LABEL_112;
        }
      }

      else if (v25 || (v27 = (v22 + 6), v22 + 11 < v22) || (v22 + 6) >= 0xFFFFFFFFFFFFFFFBLL || v22 + 11 > v24 || v22 > v27 || v24 < v27)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          v18 = 1;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx(a1);
          }

          goto LABEL_112;
        }
      }

      else
      {
        v28 = *v20;
        *(v22 + 10) = *(v10 + 4);
        *v27 = v28;
        v29 = (v10 + 10);
        if (v10 + 15 < v6 || v10 + 10 >= 0xFFFFFFFFFFFFFFFBLL || v10 + 15 > v7 || v6 > v29 || v7 < v29)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            v18 = 1;
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx(a1);
            }

            goto LABEL_112;
          }
        }

        else if (v22 + 5 < v22 || v22 >= 0xFFFFFFFFFFFFFFFBLL || v22 + 5 > v24)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            v18 = 1;
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx(a1);
            }

            goto LABEL_112;
          }
        }

        else
        {
          v30 = *v29;
          *(v22 + 4) = *(v10 + 7);
          *v22 = v30;
          v31 = v10 + 4;
          if (v10 + 21 < v6 || (v10 + 4) >= 0xFFFFFFFFFFFFFFFBLL || v10 + 21 > v7 || v6 > v31 || v7 < v31)
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              v18 = 1;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx(a1);
              }

              goto LABEL_112;
            }
          }

          else
          {
            v32 = (v22 + 12);
            if (v22 + 17 < v22 || (v22 + 12) >= 0xFFFFFFFFFFFFFFFBLL || v22 + 17 > v24 || v22 > v32 || v24 < v32)
            {
              if ((*(*a1 + 1088))(a1))
              {
                (*(*a1 + 1088))(a1);
                v18 = 1;
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx(a1);
                }

                goto LABEL_112;
              }
            }

            else
            {
              v33 = *v31;
              *(v22 + 16) = *(v10 + 10);
              *v32 = v33;
              if (!v26 || ((v34 = v10 + 6, v35 = v26 - 1, v36 = v10 + v26 + 23, !__CFADD__(v26 - 1, v10 + 6)) ? (v37 = 0) : (v37 = 1), v36 < v6 || v37 || v36 > v7 || v6 > v34 || v7 < v34))
              {
                if ((*(*a1 + 1088))(a1))
                {
                  (*(*a1 + 1088))(a1);
                  v18 = 1;
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx(a1);
                  }

                  goto LABEL_112;
                }
              }

              else
              {
                v38 = (v22 + 33);
                v39 = __CFADD__(v35, v23 + 33);
                v40 = &v23[v35 + 33];
                v41 = v39;
                if (v40 >= v23 && !v41 && v40 <= v24 && v23 <= v38 && v24 >= v38)
                {
                  memcpy(v38, v34, v26);
                  IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x9Fu, v23, v21 + 33, 1);
                  v18 = 0;
LABEL_112:
                  IOFreeData();
                  return v18;
                }

                if ((*(*a1 + 1088))(a1))
                {
                  (*(*a1 + 1088))(a1);
                  v18 = 1;
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx(a1);
                  }

                  goto LABEL_112;
                }
              }
            }
          }
        }
      }

      v18 = 1;
      goto LABEL_112;
    }

    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventOobActionFrameRx(a1);
      }
    }

    return 12;
  }

  return v18;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventAuthFrameRx(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventAuthFrameRx(a1);
      }
    }

    return 22;
  }

  v5 = a2 + 48;
  v6 = v3 - 1 + a2 + 48;
  v7 = __CFADD__(v3 - 1, a2 + 48);
  if (*(a2 + 48) != 2051)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventAuthFrameRx(a1);
      }
    }

    return 22;
  }

  v8 = *(a2 + 50);
  if (v8 < 0x14 || v8 + 4 > v3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventAuthFrameRx(a1);
      }
    }

    return 22;
  }

  if (v7 || (v12 = (a2 + 52), a2 + 71 < v5) || (a2 + 52) >= 0xFFFFFFFFFFFFFFEDLL || a2 + 71 > v6 || v5 > v12 || v6 < v12)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v10 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventAuthFrameRx(a1);
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v13 = *(a2 + 70);
    v14 = IOMallocZeroData();
    if (v14)
    {
      v15 = v14;
      v16 = v13 + 32 + v14;
      v17 = __CFADD__(v13 + 32, v14);
      v18 = *(a2 + 70);
      *(v14 + 31) = v18;
      *(v14 + 18) = 0;
      *(v14 + 23) = 0;
      if (a2 + 57 < v5 || a2 + 57 > v6)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          v10 = 1;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleNANEventAuthFrameRx(a1);
          }

          goto LABEL_109;
        }
      }

      else if (v17 || (v19 = (v14 + 6), v14 + 11 < v14) || (v14 + 6) >= 0xFFFFFFFFFFFFFFFBLL || v14 + 11 > v16 || v14 > v19 || v16 < v19)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          v10 = 1;
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleNANEventAuthFrameRx(a1);
          }

          goto LABEL_109;
        }
      }

      else
      {
        v20 = *v12;
        *(v14 + 10) = *(a2 + 56);
        *v19 = v20;
        v21 = (a2 + 58);
        if (a2 + 63 < v5 || (a2 + 58) >= 0xFFFFFFFFFFFFFFFBLL || a2 + 63 > v6 || v5 > v21 || v6 < v21)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            v10 = 1;
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::handleNANEventAuthFrameRx(a1);
            }

            goto LABEL_109;
          }
        }

        else if (v14 + 5 < v14 || v14 >= 0xFFFFFFFFFFFFFFFBLL || v14 + 5 > v16)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            v10 = 1;
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::handleNANEventAuthFrameRx(a1);
            }

            goto LABEL_109;
          }
        }

        else
        {
          v22 = *v21;
          *(v14 + 4) = *(a2 + 62);
          *v14 = v22;
          v23 = (a2 + 64);
          if (a2 + 69 < v5 || (a2 + 64) >= 0xFFFFFFFFFFFFFFFBLL || a2 + 69 > v6 || v5 > v23 || v6 < v23)
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              v10 = 1;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::handleNANEventAuthFrameRx(a1);
              }

              goto LABEL_109;
            }
          }

          else
          {
            v24 = (v14 + 12);
            if (v14 + 17 < v14 || (v14 + 12) >= 0xFFFFFFFFFFFFFFFBLL || v14 + 17 > v16 || v14 > v24 || v16 < v24)
            {
              if ((*(*a1 + 1088))(a1))
              {
                (*(*a1 + 1088))(a1);
                v10 = 1;
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANNANInterface::handleNANEventAuthFrameRx(a1);
                }

                goto LABEL_109;
              }
            }

            else
            {
              v25 = *v23;
              *(v14 + 16) = *(a2 + 68);
              *v24 = v25;
              if (!v18 || ((v26 = (a2 + 72), v27 = v18 - 1, v28 = v18 - 1 + a2 + 72, !__CFADD__(v18 - 1, a2 + 72)) ? (v29 = 0) : (v29 = 1), v28 < v5 || v29 || v28 > v6 || v5 > v26 || v6 < v26))
              {
                if ((*(*a1 + 1088))(a1))
                {
                  (*(*a1 + 1088))(a1);
                  v10 = 1;
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANNANInterface::handleNANEventAuthFrameRx(a1);
                  }

                  goto LABEL_109;
                }
              }

              else
              {
                v30 = (v14 + 33);
                v31 = __CFADD__(v27, v15 + 33);
                v32 = &v15[v27 + 33];
                v33 = v31;
                if (v32 >= v15 && !v33 && v32 <= v16 && v15 <= v30 && v16 >= v30)
                {
                  memcpy(v30, v26, v18);
                  IO80211Controller::postMessage(*(a1[17] + 64), a1, 0xF1u, v15, v13 + 33, 1);
                  v10 = 0;
LABEL_109:
                  IOFreeData();
                  return v10;
                }

                if ((*(*a1 + 1088))(a1))
                {
                  (*(*a1 + 1088))(a1);
                  v10 = 1;
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANNANInterface::handleNANEventAuthFrameRx(a1);
                  }

                  goto LABEL_109;
                }
              }
            }
          }
        }
      }

      v10 = 1;
      goto LABEL_109;
    }

    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANEventAuthFrameRx(a1);
      }
    }

    return 12;
  }

  return v10;
}

uint64_t AppleBCMWLANNANInterface::handelNANEventInfraAssociatioStart(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 0xB)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v4 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handelNANEventInfraAssociatioStart(a1);
      }

      return v4;
    }

    return 1;
  }

  v6 = a2 + 48;
  v7 = v3 - 1;
  v8 = __CFADD__(v7, a2 + 48);
  v9 = v7 + a2 + 48;
  if (v8 || (v10 = a2 + 59, v10 < v6 || v6 >= 0xFFFFFFFFFFFFFFF5) || (v10 <= v9 ? (v11 = v9 < v6) : (v11 = 1), v11))
  {
    if (!(*(*a1 + 1088))(a1))
    {
      return 1;
    }

    (*(*a1 + 1088))(a1);
    v4 = 1;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handelNANEventInfraAssociatioStart(a1);
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
    ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(a1[17] + 64));
    AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, *(a2 + 56));
    ChanSpecConvToApple80211Channel();
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handelNANEventInfraAssociatioStart(a1);
      }
    }

    IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x7Fu, &v14, 0xCuLL, 1);
    return 0;
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::handleNANEventQuiteIE(uint64_t *a1)
{
  v3 = 0;
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::handleNANEventQuiteIE(a1);
    }
  }

  IO80211Controller::postMessage(*(a1[17] + 64), a1, 0xBCu, &v3, 1uLL, 1);
  return 0;
}

{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  (*(v2 + 1088))(v1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s:%u Quite IE received\n", v5, v6, v7, v8);
}

void AppleBCMWLANNANInterface::copyDeviceInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *(a3 + 6);
  *(a2 + 7) = *(a3 + 44) == 2;
  v3 = *(a3 + 8);
  *(a2 + 17) = *(a3 + 12);
  *(a2 + 13) = v3;
  v4 = *(a3 + 46);
  *(a2 + 31) = *(a3 + 50);
  *(a2 + 27) = v4;
  *(a2 + 33) = *(a3 + 53);
  *(a2 + 34) = *(a3 + 52);
  v5 = *(a3 + 24);
  *(a2 + 23) = *(a3 + 28);
  *(a2 + 19) = v5;
  *(a2 + 25) = *(a3 + 31);
  *(a2 + 26) = *(a3 + 30);
  v6 = *(a3 + 7);
  v7 = 0x10200uLL >> (8 * v6);
  v8 = v6 >= 5;
  if (v6 >= 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0x102030300uLL >> (8 * v6);
  }

  if (v8)
  {
    LOBYTE(v7) = 0;
  }

  *(a2 + 8) = v9;
  *(a2 + 9) = v7;
  *(a2 + 10) = *(a3 + 23);
  *(a2 + 11) = *(a3 + 22);
  *(a2 + 12) = *(a3 + 45);
  *(a2 + 40) = *(a3 + 36);
  *(a2 + 44) = *(a3 + 40);
  *(a2 + 36) = *(a3 + 32);
}

const char *AppleBCMWLANNANInterface::stringForFrameType(AppleBCMWLANNANInterface *this, int a2)
{
  if ((a2 - 1) > 0x10)
  {
    return "Invalid";
  }

  else
  {
    return off_1003C87A8[(a2 - 1)];
  }
}

void AppleBCMWLANNANInterface::convertNANFWFrameType(AppleBCMWLANNANInterface *this, char a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if ((a2 - 1) > 0xFu)
  {
    v6 = 0;
    v5 = 24;
  }

  else
  {
    v4 = (a2 - 1);
    v5 = byte_10033C300[v4];
    v6 = byte_10033C310[v4];
  }

  *a3 = v5;
  *a4 = v6;
}

uint64_t AppleBCMWLANNANInterface::postEventNANDataPathEnd(IO80211SkywalkInterface *a1, uint64_t a2, int a3)
{
  v10 = 0;
  v11 = 0uLL;
  v12 = 0;
  v4 = a2 + 4;
  v5 = *(a2 + 4);
  v6 = *(a2 + 1);
  LOBYTE(v10) = *(a2 + 1);
  HIDWORD(v10) = a3;
  LODWORD(v11) = v5;
  WORD2(v11) = *(a2 + 8);
  v7 = *(a2 + 23);
  if (v7 == 2)
  {
    goto LABEL_4;
  }

  if (v7 == 1)
  {
    v4 = a2 + 10;
LABEL_4:
    *(&v11 + 6) = *v4;
    WORD5(v11) = *(v4 + 4);
  }

  HIDWORD(v11) = *(a2 + 16);
  LOWORD(v12) = *(a2 + 20);
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      v9 = (*(*a1 + 1088))(a1);
      CCLogStream::logAlert(v9, "[dk] %s@%d:DataPath End with peer, DpId %d, NMI %02x:%02x:%02x:%02x:%02x:%02x, NDI %02x:%02x:%02x:%02x:%02x:%02x\n", "postEventNANDataPathEnd", 2796, v6, BYTE12(v11), BYTE13(v11), BYTE14(v11), HIBYTE(v11), v12, BYTE1(v12), BYTE6(v11), BYTE7(v11), BYTE8(v11), BYTE9(v11), BYTE10(v11), BYTE11(v11));
    }
  }

  return IO80211Controller::postMessage(*(*(a1 + 17) + 64), a1, 0x76u, &v10, 0x1CuLL, 1);
}

uint64_t AppleBCMWLANNANInterface::getMCS(AppleBCMWLANNANInterface *this, int a2)
{
  v2 = a2 & 0x7000000;
  if ((a2 & 0x7000000) != 0x1000000)
  {
    if (v2 == 0x2000000 || v2 == 50331648)
    {
      LOBYTE(a2) = a2 & 0xF;
    }

    else
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::getMCS(this);
        }
      }

      LOBYTE(a2) = 0;
    }
  }

  return a2;
}

uint64_t AppleBCMWLANNANInterface::getTransmissionMode(AppleBCMWLANNANInterface *this, unsigned int a2)
{
  v2 = HIBYTE(a2) & 7;
  if (v2 < 5)
  {
    return v2 + 1;
  }

  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANNANInterface::getTransmissionMode(this);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANNANInterface::convertNANFWHostAssistReason(uint64_t result, unsigned int a2, int *a3)
{
  v4 = a2;
  if (a2 >= 0xA)
  {
    v5 = result;
    result = (*(*result + 1088))(result);
    if (result)
    {
      (*(*v5 + 1088))(v5);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANNANInterface::convertNANFWHostAssistReason(v5);
      }
    }

    v4 = 10;
  }

  *a3 = v4;
  return result;
}

const char *AppleBCMWLANNANInterface::getIOVARString(AppleBCMWLANNANInterface *this, int a2)
{
  if (a2 <= 1024)
  {
    if (a2 > 512)
    {
      if (a2 <= 516)
      {
        if (a2 > 514)
        {
          if (a2 == 515)
          {
            return "WL_NAN_CMD_ELECTION_METRICS_STATE";
          }

          else
          {
            return "WL_NAN_CMD_ELECTION_MERGE";
          }
        }

        else if (a2 == 513)
        {
          return "WL_NAN_CMD_ELECTION_HOST_ENABLE";
        }

        else
        {
          return "WL_NAN_CMD_ELECTION_METRICS_CONFIG";
        }
      }

      else
      {
        switch(a2)
        {
          case 769:
            result = "WL_NAN_CMD_SD_PARAMS";
            break;
          case 770:
            result = "WL_NAN_CMD_SD_PUBLISH";
            break;
          case 771:
            result = "WL_NAN_CMD_SD_PUBLISH_LIST";
            break;
          case 772:
            result = "WL_NAN_CMD_SD_CANCEL_PUBLISH";
            break;
          case 773:
            result = "WL_NAN_CMD_SD_SUBSCRIBE";
            break;
          case 774:
            result = "WL_NAN_CMD_SD_SUBSCRIBE_LIST";
            break;
          case 775:
            result = "WL_NAN_CMD_SD_CANCEL_SUBSCRIBE";
            break;
          case 776:
            result = "WL_NAN_CMD_SD_VND_INFO";
            break;
          case 777:
            result = "WL_NAN_CMD_SD_STATS";
            break;
          case 778:
            result = "WL_NAN_CMD_SD_TRANSMIT";
            break;
          case 779:
            result = "WL_NAN_CMD_SD_FUP_TRANSMIT";
            break;
          case 780:
            result = "WL_NAN_CMD_SD_CONNECTION";
            break;
          case 781:
            result = "WL_NAN_CMD_SD_SHOW";
            break;
          default:
            if (a2 == 517)
            {
              result = "WL_NAN_CMD_ELECTION_ADVERTISERS";
            }

            else
            {
              if (a2 != 518)
              {
                return "Unknown";
              }

              result = "WL_NAN_CMD_ELECTION_RSSI_THRESHOLD";
            }

            break;
        }
      }
    }

    else
    {
      switch(a2)
      {
        case 257:
          result = "WL_NAN_CMD_CFG_NAN_INIT";
          break;
        case 258:
          result = "WL_NAN_CMD_CFG_ROLE";
          break;
        case 259:
          result = "WL_NAN_CMD_CFG_HOP_CNT";
          break;
        case 260:
          result = "WL_NAN_CMD_CFG_HOP_LIMIT";
          break;
        case 261:
          result = "WL_NAN_CMD_CFG_WARMUP_TIME";
          break;
        case 262:
          result = "WL_NAN_CMD_CFG_STATUS";
          break;
        case 263:
          result = "WL_NAN_CMD_CFG_OUI";
          break;
        case 264:
          result = "WL_NAN_CMD_CFG_COUNT";
          break;
        case 265:
          result = "WL_NAN_CMD_CFG_CLEARCOUNT";
          break;
        case 266:
          result = "WL_NAN_CMD_CFG_CHANNEL";
          break;
        case 267:
          result = "WL_NAN_CMD_CFG_BAND";
          break;
        case 268:
          result = "WL_NAN_CMD_CFG_CID";
          break;
        case 269:
          result = "WL_NAN_CMD_CFG_IF_ADDR";
          break;
        case 270:
          result = "WL_NAN_CMD_CFG_BCN_INTERVAL";
          break;
        case 271:
          result = "WL_NAN_CMD_CFG_SDF_TXTIME";
          break;
        case 272:
          result = "WL_NAN_CMD_CFG_SID_BEACON";
          break;
        case 273:
          result = "WL_NAN_CMD_CFG_DW_LEN";
          break;
        case 274:
          result = "WL_NAN_CMD_CFG_AVAIL";
          break;
        case 275:
          result = "WL_NAN_CMD_CFG_WFA_TM";
          break;
        case 276:
          result = "WL_NAN_CMD_CFG_EVENT_MASK";
          break;
        case 277:
          result = "WL_NAN_CMD_CFG_NAN_CONFIG";
          break;
        case 278:
          result = "WL_NAN_CMD_CFG_NAN_ENAB";
          break;
        case 279:
          result = "WL_NAN_CMD_CFG_ULW";
          break;
        case 280:
          result = "WL_NAN_CMD_CFG_NAN_CONFIG2";
          break;
        case 281:
          result = "WL_NAN_CMD_CFG_DEV_CAP";
          break;
        case 282:
          result = "WL_NAN_CMD_CFG_SCAN_PARAMS";
          break;
        case 283:
          result = "WL_NAN_CMD_CFG_VNDR_PAYLOAD";
          break;
        case 284:
          result = "WL_NAN_CMD_CFG_FASTDISC";
          break;
        case 285:
          result = "WL_NAN_CMD_CFG_MIN_TX_RATE";
          break;
        default:
          if (a2)
          {
            return "Unknown";
          }

          result = "WL_NAN_CMD_GLB_NAN_VER";
          break;
      }
    }

    return result;
  }

  if (a2 <= 1793)
  {
    if (a2 > 1280)
    {
      switch(a2)
      {
        case 1281:
          result = "WL_NAN_CMD_DATA_CONFIG";
          break;
        case 1282:
          result = "WL_NAN_CMD_DATA_RSVD02";
          break;
        case 1283:
          result = "WL_NAN_CMD_DATA_RSVD03";
          break;
        case 1284:
          result = "WL_NAN_CMD_DATA_DATAREQ";
          break;
        case 1285:
          result = "WL_NAN_CMD_DATA_DATARESP";
          break;
        case 1286:
          result = "WL_NAN_CMD_DATA_DATAEND";
          break;
        case 1287:
          result = "WL_NAN_CMD_DATA_SCHEDUPD";
          break;
        case 1288:
          result = "WL_NAN_CMD_DATA_RSVD08";
          break;
        case 1289:
          result = "WL_NAN_CMD_DATA_CAP";
          break;
        case 1290:
          result = "WL_NAN_CMD_DATA_STATUS";
          break;
        case 1291:
          result = "WL_NAN_CMD_DATA_STATS";
          break;
        case 1292:
          result = "WL_NAN_CMD_DATA_RSVD0C";
          break;
        case 1293:
          result = "WL_NAN_CMD_DATA_NDP_SHOW";
          break;
        case 1294:
          result = "WL_NAN_CMD_DATA_DATACONF";
          break;
        case 1295:
          result = "WL_NAN_CMD_DATA_MIN_TX_RATE";
          break;
        case 1296:
          result = "WL_NAN_CMD_DATA_MAX_PEERS";
          break;
        case 1297:
          result = "WL_NAN_CMD_DATA_DP_IDLE_PERIOD";
          break;
        case 1298:
          result = "WL_NAN_CMD_DATA_DP_OPAQUE_INFO";
          break;
        default:
          if (a2 == 1537)
          {
            result = "WL_NAN_CMD_DAM_CFG";
          }

          else
          {
            if (a2 != 1793)
            {
              return "Unknown";
            }

            result = "WL_NAN_CMD_RANGE_REQUEST";
          }

          break;
      }

      return result;
    }

    switch(a2)
    {
      case 1025:
        return "WL_NAN_CMD_SYNC_SOCIAL_CHAN";
      case 1026:
        return "WL_NAN_CMD_SYNC_AWAKE_DWS";
      case 1027:
        return "WL_NAN_CMD_SYNC_BCN_RSSI_NOTIF_THRESHOLD";
    }

    return "Unknown";
  }

  if (a2 <= 2051)
  {
    if (a2 > 2048)
    {
      if (a2 == 2049)
      {
        return "WL_NAN_CMD_GEN_STATS";
      }

      if (a2 == 2050)
      {
        return "WL_NAN_CMD_GEN_FW_CAP";
      }

      return "WL_NAN_CMD_CFG_OOB_AF";
    }

    switch(a2)
    {
      case 1794:
        return "WL_NAN_CMD_RANGE_AUTO";
      case 1795:
        return "WL_NAN_CMD_RANGE_RESPONSE";
      case 1796:
        return "WL_NAN_CMD_RANGE_CANCEL";
    }

    return "Unknown";
  }

  switch(a2)
  {
    case 3841:
      result = "WL_NAN_CMD_DBG_SCAN_PARAMS";
      break;
    case 3842:
      result = "WL_NAN_CMD_DBG_SCAN";
      break;
    case 3843:
      result = "WL_NAN_CMD_DBG_SCAN_RESULTS";
      break;
    case 3844:
      result = "WL_NAN_CMD_DBG_EVENT_MASK";
      break;
    case 3845:
      result = "WL_NAN_CMD_DBG_EVENT_CHECK";
      break;
    case 3846:
      result = "WL_NAN_CMD_DBG_DUMP";
      break;
    case 3847:
      result = "WL_NAN_CMD_DBG_CLEAR";
      break;
    case 3848:
      result = "WL_NAN_CMD_DBG_RSSI";
      break;
    case 3849:
      result = "WL_NAN_CMD_DBG_DEBUG";
      break;
    case 3850:
      result = "WL_NAN_CMD_DBG_TEST1";
      break;
    case 3851:
      result = "WL_NAN_CMD_DBG_TEST2";
      break;
    case 3852:
      result = "WL_NAN_CMD_DBG_TEST3";
      break;
    case 3853:
      result = "WL_NAN_CMD_DBG_DISC_RESULTS";
      break;
    case 3854:
      result = "WL_NAN_CMD_DBG_STATS";
      break;
    case 3855:
      result = "WL_NAN_CMD_DBG_LEVEL";
      break;
    default:
      if (a2 == 2052)
      {
        result = "WL_NAN_CMD_ADDITIONAL_ATTRIBUTES";
      }

      else
      {
        if (a2 != 2592)
        {
          return "Unknown";
        }

        result = "WL_NAN_CMD_NSR2";
      }

      break;
  }

  return result;
}

void AppleBCMWLANNANInterface::handleNANIovarAsyncCallBack(uint64_t *a1, uint64_t a2, int a3, uint64_t *a4, unsigned __int16 *a5)
{
  if (a3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANIovarAsyncCallBack(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a5, a3);
      }
    }

    v8 = *(a1[17] + 80);
    v9 = *(a5 + 1);
    v10 = a5[1];
LABEL_6:
    IO80211Hexdump();
    goto LABEL_7;
  }

  v13 = *a4;
  if (*a4)
  {
    v14 = (v13 + 8);
    if (*(v13 + 8) == *a5)
    {
      v16 = *(v13 + 12);
      v15 = (v13 + 12);
      if (v16)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::handleNANIovarAsyncCallBack(a1);
          }
        }

        v17 = *(a1[17] + 80);
        v18 = *a4;
        v19 = *(a4 + 4);
        IO80211Hexdump();
        if (*v14 != 274 || *v15 != -2081)
        {
          FaultReporter = AppleBCMWLANCore::getFaultReporter(*(a1[17] + 64));
          IOVARString = AppleBCMWLANNANInterface::getIOVARString(FaultReporter, *v14);
          CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANNANInterface.cpp", 0xE2Eu, "handleNANIovarAsyncCallBack", 0, -469793490, " %s, cmd status %x", IOVARString, *v15);
        }
      }

      goto LABEL_7;
    }

    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::handleNANIovarAsyncCallBack(a1);
      }
    }

    v22 = *(a1[17] + 80);
    v23 = *a4;
    v24 = *(a4 + 4);
    IO80211Hexdump();
    v25 = *(a1[17] + 80);
    v26 = *(a5 + 1);
    v27 = a5[1];
    goto LABEL_6;
  }

  if ((*(*a1 + 1088))(a1) && ((*(*a1 + 1088))(a1), CCLogStream::shouldLog()))
  {
    AppleBCMWLANNANInterface::handleNANIovarAsyncCallBack(a1);
  }

  else if (!a5)
  {
    return;
  }

LABEL_7:
  if (*a5 == 2592)
  {
    v28 = a3 != 0;
    IO80211Controller::postMessage(*(a1[17] + 64), a1, 0x88u, &v28, 4uLL, 1);
  }

  if (*(a5 + 1))
  {
    v11 = a5[1];
    IOFreeData();
    *(a5 + 1) = 0;
  }

  IOFree(a5, 0x10uLL);
}

uint64_t AppleBCMWLANNANInterface::handleProxIovarAsyncCallBack(uint64_t result, const char *a2, int a3)
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
        return AppleBCMWLANNANInterface::handleProxIovarAsyncCallBack(v6, v6 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2, a3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNANInterface::handleSlotBssIovarAsyncCallBack(uint64_t result, const char *a2, int a3)
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
        return AppleBCMWLANNANInterface::handleSlotBssIovarAsyncCallBack(v6, v6 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2, a3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNANInterface::issueSyncSetIOVAR(unint64_t this, int a2, void *a3, unsigned int a4)
{
  v8 = a4 + 8;
  v9 = IOMallocZeroData();
  if (v9)
  {
    v10 = v9;
    v11 = IOMallocZeroData();
    *v10 = a2;
    if (a4 < 0xFFFC)
    {
      v10[1] = a4 + 4;
      *(v10 + 1) = 1;
      memcpy(v10 + 4, a3, a4);
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          v16 = (*(*this + 1088))(this);
          IOVARString = AppleBCMWLANNANInterface::getIOVARString(v16, a2);
          CCLogStream::logAlertIf(v16, 0x4000000000uLL, "[dk] %s@%d:NAN cmd set sync %s (%x), len = %x, buflen = %x\n", "issueSyncSetIOVAR", 3715, IOVARString, a2, a4, v8);
        }
      }

      v13 = *(*(this + 136) + 80);
      IO80211HexdumpIf();
      v12 = AppleBCMWLANNANInterface::runNANSetIOVAR(this, v10, v8, v11, v8, 1);
      if (!v12)
      {
        if (v11[1])
        {
          if ((*(*this + 1088))(this))
          {
            (*(*this + 1088))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::issueSyncSetIOVAR(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2);
            }
          }

          v15 = *(*(this + 136) + 80);
          IO80211Hexdump();
          v12 = 22;
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_13;
      }
    }

    else
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::issueSyncSetIOVAR();
        }
      }

      v12 = 22;
    }

    if (!v11)
    {
LABEL_14:
      IOFreeData();
      return v12;
    }

LABEL_13:
    IOFreeData();
    goto LABEL_14;
  }

  return 12;
}

uint64_t AppleBCMWLANNANInterface::runNANSetIOVAR(AppleBCMWLANNANInterface *this, void *a2, unsigned int a3, void *a4, unsigned int a5, char a6)
{
  if (IO80211SkywalkInterface::getInterfaceId(this) == -1)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::runNANSetIOVAR(this);
      }
    }

    return 22;
  }

  if (a3 >= 0x10000)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::runNANSetIOVAR(this);
      }
    }

    return 22;
  }

  v13 = (a3 + 3) & 0x1FFFC;
  v14 = IOMallocZeroData();
  if (!v14)
  {
    return 12;
  }

  v15 = v14;
  if (v13 < 0xFFF8)
  {
    v16 = IOMallocZeroData();
    if (v16)
    {
      v17 = v16;
      *v15 = 0x8000;
      *(v15 + 2) = a6;
      memcpy((v15 + 4), a2, a3);
      v21[0] = v17;
      v21[1] = 0x100010001 * ((a3 + 11) & 0xFFFC);
      v18 = *(*(this + 17) + 72);
      v20[0] = v15;
      v20[1] = (v13 + 4) & 0xFFFC;
      v12 = AppleBCMWLANCommander::runIOVarSet(v18, "nan", v20, v21, 0);
      if (v12)
      {
        if ((*(*this + 1088))(this))
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::runNANSetIOVAR(this);
          }
        }
      }

      else
      {
        memcpy(a4, (v17 + 8), a5);
      }

      IOFreeData();
    }

    else
    {
      v12 = 12;
    }
  }

  else
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::runNANSetIOVAR(this);
      }
    }

    v12 = 22;
  }

  IOFreeData();
  return v12;
}

uint64_t AppleBCMWLANNANInterface::issueSetIOVAR(AppleBCMWLANNANInterface *this, int a2, void *a3, unsigned int a4)
{
  v8 = a4 + 8;
  v9 = IOMallocZeroData();
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  *v9 = a2;
  if (a4 < 0xFFFC)
  {
    *(v9 + 2) = a4 + 4;
    *(v9 + 4) = 1;
    memcpy((v9 + 8), a3, a4);
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        v14 = (*(*this + 1088))(this);
        IOVARString = AppleBCMWLANNANInterface::getIOVARString(v14, a2);
        CCLogStream::logAlertIf(v14, 0x4000000000uLL, "[dk] %s@%d:NAN cmd set async %s 0x(%x), len = 0x%x, buflen = 0x%x\n", "issueSetIOVAR", 3763, IOVARString, a2, a4, v8);
      }
    }

    v12 = *(*(this + 17) + 80);
    IO80211HexdumpIf();
    v11 = AppleBCMWLANNANInterface::sendNANSetIOVAR(this, v10, v8, 1);
  }

  else
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::issueSetIOVAR();
      }
    }

    v11 = 22;
  }

  IOFreeData();
  return v11;
}

uint64_t AppleBCMWLANNANInterface::sendNANSetIOVAR(AppleBCMWLANNANInterface *this, _WORD *a2, unsigned int a3, char a4)
{
  if (IO80211SkywalkInterface::getInterfaceId(this) == -1)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::sendNANSetIOVAR(this);
      }
    }

    return 22;
  }

  if (a3 < 0x10000)
  {
    v8 = (a3 + 3) & 0x1FFFC;
    v9 = v8 + 4;
    if (v8 >= 0xFFFC)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::sendNANSetIOVAR(this);
        }
      }

      return 22;
    }

    v12 = IOMallocZeroData();
    if (!v12)
    {
      return 12;
    }

    v13 = v12;
    v14 = IOMallocZeroTyped();
    if (v14)
    {
      v15 = v14;
      v16 = IOMallocZeroData();
      v15[1] = v16;
      if (v16)
      {
        *v15 = *a2;
        *(v15 + 1) = a3;
        memcpy(v16, a2, a3);
        *v13 = 0x8000;
        *(v13 + 2) = a4;
        memcpy((v13 + 4), a2, a3);
        v22[0] = this;
        v22[1] = AppleBCMWLANNANInterface::handleNANIovarAsyncCallBack;
        v22[2] = v15;
        v17 = *(*(this + 17) + 72);
        InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
        v21[0] = v13;
        v21[1] = v9 & 0xFFFC;
        v10 = AppleBCMWLANCommander::sendVirtualIOVarSet(v17, InterfaceId, "nan", v21, kNoRxExpected, v22, 0);
        if (v10)
        {
          if ((*(*this + 1088))(this))
          {
            (*(*this + 1088))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::sendNANSetIOVAR(this);
            }
          }

          v19 = v15[1];
          v20 = *(v15 + 1);
          IOFreeData();
          v15[1] = 0;
          IOFree(v15, 0x10uLL);
        }

        goto LABEL_32;
      }

      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::sendNANSetIOVAR(this);
        }
      }

      IOFree(v15, 0x10uLL);
    }

    else if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::sendNANSetIOVAR(this);
      }
    }

    v10 = 12;
LABEL_32:
    IOFreeData();
    return v10;
  }

  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::sendNANSetIOVAR(this);
    }
  }

  return 22;
}

uint64_t AppleBCMWLANNANInterface::issueGetIOVAR(unint64_t this, int a2, void *a3, unsigned int a4)
{
  v8 = a4 + 8;
  if (a2 == 2050)
  {
    v9 = a4 + 12;
  }

  else
  {
    v9 = a4 + 8;
  }

  v10 = IOMallocZeroData();
  if (v10)
  {
    v11 = v10;
    *v10 = a2;
    if (a4 < 0xFFFC)
    {
      *(v10 + 4) = 1;
      *(v10 + 2) = a4 + 4;
      memcpy((v10 + 8), a3, a4);
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          v19 = (*(*this + 1088))(this);
          IOVARString = AppleBCMWLANNANInterface::getIOVARString(v19, a2);
          CCLogStream::logAlertIf(v19, 0x4000000000uLL, "[dk] %s@%d:NAN cmd get sync %s (0x%x), len %d, buflen %d rxBufLen:%d\n", "issueGetIOVAR", 3824, IOVARString, a2, a4, v8, v9);
        }
      }

      v13 = *(*(this + 136) + 80);
      IO80211HexdumpIf();
      v12 = AppleBCMWLANNANInterface::sendNANGetIOVAR(this, v11, v8, v9);
      v14 = v11[1];
      v15 = (*(*this + 1088))(this);
      if (!v14)
      {
        if (v15)
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            v21 = (*(*this + 1088))(this);
            v22 = AppleBCMWLANNANInterface::getIOVARString(v21, a2);
            CCLogStream::logAlertIf(v21, 0x4000000000uLL, "[dk] %s@%d:Return: NAN cmd get async %s (%x), len %d, buflen %d rxBufLen:%d\n", "issueGetIOVAR", 3834, v22, a2, a4, v8, v9);
          }
        }

        v18 = *(*(this + 136) + 80);
        IO80211HexdumpIf();
        memcpy(a3, v11 + 2, v9 - 8);
        goto LABEL_19;
      }

      if (v15)
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::issueGetIOVAR(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2);
        }
      }

      v16 = *(*(this + 136) + 80);
      IO80211Hexdump();
    }

    else if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::issueGetIOVAR();
      }
    }

    v12 = 22;
LABEL_19:
    IOFreeData();
    return v12;
  }

  return 12;
}

uint64_t AppleBCMWLANNANInterface::sendNANGetIOVAR(AppleBCMWLANNANInterface *this, void *a2, unsigned int a3, unsigned int a4)
{
  if (IO80211SkywalkInterface::getInterfaceId(this) == -1)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::sendNANGetIOVAR(this);
      }
    }

    return 22;
  }

  if (a3 >= 0x10000)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::sendNANGetIOVAR(this);
      }
    }

    return 22;
  }

  if (a4 >= 0x10000)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::sendNANGetIOVAR(this);
      }
    }

    return 22;
  }

  v8 = (a3 + 3) & 0x1FFFC;
  v9 = v8 + 4;
  if (v8 >= 0xFFFC)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::sendNANGetIOVAR(this);
      }
    }

    return 22;
  }

  v10 = (a4 + 3) & 0x1FFFC;
  v11 = v10 + 4;
  if (v10 >= 0xFFFC)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::sendNANGetIOVAR(this);
      }
    }

    return 22;
  }

  v14 = IOMallocZeroData();
  if (!v14)
  {
    return 12;
  }

  v15 = v14;
  *v14 = 0x8000;
  *(v14 + 2) = 1;
  memcpy((v14 + 4), a2, a3);
  v16 = v9 & 0xFFFC;
  v20[0] = v15;
  v20[1] = v11 & 0xFFFC | ((((v16 | (v11 << 16)) >> 2) & 0x3FFFFFFF) << 18);
  v17 = *(*(this + 17) + 72);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
  v19[0] = v15;
  v19[1] = v16;
  v12 = AppleBCMWLANCommander::runVirtualIOVarGet(v17, InterfaceId, "nan", v19, v20, 0);
  if (v12)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::sendNANGetIOVAR(this);
      }
    }
  }

  else
  {
    memcpy(a2, (v15 + 4), a4);
  }

  IOFreeData();
  return v12;
}

uint64_t AppleBCMWLANNANInterface::getNAN_ControlBits(AppleBCMWLANNANInterface *this, unsigned int *a2)
{
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(this, 277, a2, 4u);
  if (IOVAR)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_ControlBits(this);
      }
    }
  }

  return IOVAR;
}

uint64_t AppleBCMWLANNANInterface::setNAN_ControlBits(AppleBCMWLANNANInterface *this, unsigned int *a2)
{
  v3 = AppleBCMWLANNANInterface::issueSetIOVAR(this, 277, a2, 4u);
  if (v3)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_ControlBits(this);
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANNANInterface::getNAN_ControlExtBits(AppleBCMWLANNANInterface *this, unsigned int *a2, unsigned int *a3)
{
  IOVAR = 22;
  if (a2 && a3)
  {
    v9 = 0;
    IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(this, 280, &v9, 8u);
    if (IOVAR)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::getNAN_ControlExtBits(this);
        }
      }
    }

    else
    {
      v7 = HIDWORD(v9);
      *a2 = v9;
      *a3 = v7;
    }
  }

  return IOVAR;
}

uint64_t AppleBCMWLANNANInterface::setNAN_ControlExtBits(AppleBCMWLANNANInterface *this, unsigned int *a2, unsigned int *a3)
{
  v3 = 22;
  if (a2)
  {
    if (a3)
    {
      v5 = *a3;
      v7[0] = *a2;
      v7[1] = v5;
      v3 = AppleBCMWLANNANInterface::issueSetIOVAR(this, 280, v7, 8u);
      if (v3)
      {
        if ((*(*this + 1088))(this))
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::setNAN_ControlExtBits(this);
          }
        }
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANNANInterface::setNAN_EventMask(AppleBCMWLANNANInterface *this, unsigned __int8 *a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  *v4 = 1;
  *(v4 + 1) = 16;
  *(v4 + 4) = *a2;
  v5 = AppleBCMWLANNANInterface::issueSetIOVAR(this, 276, v4, 0x14u);
  if (v5)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_EventMask(this);
      }
    }
  }

  IOFreeData();
  return v5;
}

uint64_t AppleBCMWLANNANInterface::getNAN_ENABLED(AppleBCMWLANNANInterface *this, _BYTE *a2)
{
  v6 = 0;
  if (*(*(this + 17) + 88))
  {
    IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(this, 278, &v6, 1u);
    if (IOVAR)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::getNAN_ENABLED(this);
        }
      }
    }

    else
    {
      *a2 = v6;
    }
  }

  else
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_ENABLED(this);
      }
    }

    return 6;
  }

  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_ENABLED(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::getNAN_ENABLED((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_ENABLED((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::enableNAN(AppleBCMWLANNANInterface *this)
{
  v4 = 1;
  v2 = AppleBCMWLANNANInterface::issueSyncSetIOVAR(this, 278, &v4, 1u);
  if (v2)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::enableNAN(this);
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANNANInterface::setNANFwEvents(AppleBCMWLANNANInterface *this)
{
  AppleBCMWLANCore::addEventBit(*(*(this + 17) + 64));
  AppleBCMWLANCore::addEventBit(*(*(this + 17) + 64));
  AppleBCMWLANCore::addEventBit(*(*(this + 17) + 64));
  AppleBCMWLANCore::addEventBit(*(*(this + 17) + 64));
  AppleBCMWLANCore::addEventBit(*(*(this + 17) + 64));
  v2 = AppleBCMWLANCore::writeEventBitField(*(*(this + 17) + 64));
  if (v2)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNANFwEvents(this);
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANNANInterface::clearNANFwEvents(AppleBCMWLANNANInterface *this)
{
  AppleBCMWLANCore::removeEventBit(*(*(this + 17) + 64), 0x64u);
  AppleBCMWLANCore::removeEventBit(*(*(this + 17) + 64), 0x9Eu);
  AppleBCMWLANCore::removeEventBit(*(*(this + 17) + 64), 0x9Fu);
  AppleBCMWLANCore::removeEventBit(*(*(this + 17) + 64), 0x26u);
  AppleBCMWLANCore::removeEventBit(*(*(this + 17) + 64), 0xDu);
  v2 = AppleBCMWLANCore::writeEventBitField(*(*(this + 17) + 64));
  if (v2)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::clearNANFwEvents(this);
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANNANInterface::setNAN_ENABLED(AppleBCMWLANNANInterface *this, uint64_t a2)
{
  if (!*a2)
  {
    v4 = AppleBCMWLANNANInterface::clearNANFwEvents(this);
    if (!v4)
    {
      v4 = AppleBCMWLANNANInterface::disableNAN(this);
      if (!v4)
      {
        *(*(this + 17) + 93) = 0;
        if ((*(*this + 1088))(this))
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::setNAN_ENABLED(this);
          }
        }

        return 0;
      }
    }

    return v4;
  }

  v4 = AppleBCMWLANNANInterface::enableNAN(this);
  if (v4)
  {
    return v4;
  }

  v4 = AppleBCMWLANNANInterface::setNANFwEvents(this);
  if (v4)
  {
    return v4;
  }

  *(*(this + 17) + 93) = 1;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::setNAN_ENABLED(this);
    }
  }

  Bus = AppleBCMWLANCore::getBus(*(*(this + 17) + 64));
  if ((*(*Bus + 368))(Bus) != 4388)
  {
    return 0;
  }

  v6 = AppleBCMWLANNANInterface::setNANStatsSampleDuration(this, *(a2 + 4));
  if (v6)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_ENABLED(this);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANNANInterface::setNANStatsSampleDuration(AppleBCMWLANNANInterface *this, int a2)
{
  v5 = a2;
  v3 = AppleBCMWLANNANInterface::issueSyncSetIOVAR(this, 5121, &v5, 4u);
  if (v3)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNANStatsSampleDuration(this);
      }
    }
  }

  return v3;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_ENABLED(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_ENABLED((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_ENABLED((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_InterfaceAddr(AppleBCMWLANNANInterface *this, ether_addr *a2)
{
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(this, 269, a2, 6u);
  if (IOVAR)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_InterfaceAddr(this);
      }
    }
  }

  return IOVAR;
}

uint64_t AppleBCMWLANNANInterface::getNAN_HOP_COUNT_TO_ANCHOR_MASTER(uint64_t a1, uint64_t a2)
{
  memset(v4, 0, sizeof(v4));
  (*(*a1 + 1752))(a1, v4);
  *(a2 + 1) = BYTE12(v4[0]);
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_HOP_COUNT_TO_ANCHOR_MASTER(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memset(v8, 0, sizeof(v8));
  (*(*(a1 - 112) + 1752))(a1 - 112, v8, a3, a4, a5, a6);
  *(a2 + 1) = BYTE12(v8[0]);
  return 0;
}

{
  memset(v8, 0, sizeof(v8));
  (*(*(a1 - 128) + 1752))(a1 - 128, v8, a3, a4, a5, a6);
  *(a2 + 1) = BYTE12(v8[0]);
  return 0;
}

uint64_t AppleBCMWLANNANInterface::setNAN_HOP_COUNT_TO_ANCHOR_MASTER(AppleBCMWLANNANInterface *a1, void *a2)
{
  v3 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 259, a2, 2u);
  if (v3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_HOP_COUNT_TO_ANCHOR_MASTER(a1);
      }
    }
  }

  return v3;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_HOP_COUNT_TO_ANCHOR_MASTER(uint64_t a1, void *a2)
{
  return AppleBCMWLANNANInterface::setNAN_HOP_COUNT_TO_ANCHOR_MASTER((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_HOP_COUNT_TO_ANCHOR_MASTER((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_HOP_COUNT_LIMIT(uint64_t *a1, _BYTE *a2)
{
  v6 = 0;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 260, &v6, 1u);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_HOP_COUNT_LIMIT(a1);
      }
    }
  }

  else
  {
    *a2 = v6;
  }

  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_HOP_COUNT_LIMIT(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::getNAN_HOP_COUNT_LIMIT((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_HOP_COUNT_LIMIT((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_HOP_COUNT_LIMIT(AppleBCMWLANNANInterface *a1, char *a2)
{
  v5 = *a2;
  v3 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 260, &v5, 1u);
  if (v3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_HOP_COUNT_LIMIT(a1);
      }
    }
  }

  return v3;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_HOP_COUNT_LIMIT(uint64_t a1, char *a2)
{
  return AppleBCMWLANNANInterface::setNAN_HOP_COUNT_LIMIT((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_HOP_COUNT_LIMIT((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_WARMUP_TIME(uint64_t *a1, _WORD *a2)
{
  v6 = 0;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 261, &v6, 4u);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_WARMUP_TIME(a1);
      }
    }
  }

  else
  {
    *a2 = v6;
  }

  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_WARMUP_TIME(uint64_t a1, _WORD *a2)
{
  return AppleBCMWLANNANInterface::getNAN_WARMUP_TIME((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_WARMUP_TIME((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_WARMUP_TIME(AppleBCMWLANNANInterface *a1, unsigned __int16 *a2)
{
  v5 = *a2;
  v3 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 261, &v5, 4u);
  if (v3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_WARMUP_TIME(a1);
      }
    }
  }

  return v3;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_WARMUP_TIME(uint64_t a1, unsigned __int16 *a2)
{
  return AppleBCMWLANNANInterface::setNAN_WARMUP_TIME((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_WARMUP_TIME((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RSSI_CLOSE(uint64_t *a1, _BYTE *a2)
{
  v6 = 0;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 518, &v6, 4u);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_RSSI_CLOSE(a1);
      }
    }
  }

  else
  {
    *a2 = v6;
  }

  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_RSSI_CLOSE(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::getNAN_RSSI_CLOSE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_RSSI_CLOSE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RSSI_CLOSE(AppleBCMWLANNANInterface *a1, _BYTE *a2)
{
  v7[0] = *a2;
  v4 = *(a1 + 17);
  v7[1] = *(v4 + 2);
  v8 = *(v4 + 3);
  v5 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 518, v7, 4u);
  if (v5)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_RSSI_CLOSE(a1);
      }
    }
  }

  else
  {
    *(*(a1 + 17) + 1) = *a2;
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_RSSI_CLOSE(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::setNAN_RSSI_CLOSE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_RSSI_CLOSE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RSSI_MIDDLE(uint64_t *a1, _BYTE *a2)
{
  v6 = 0;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 518, &v6, 4u);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_RSSI_MIDDLE(a1);
      }
    }
  }

  else
  {
    *a2 = BYTE1(v6);
  }

  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_RSSI_MIDDLE(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::getNAN_RSSI_MIDDLE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_RSSI_MIDDLE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RSSI_MIDDLE(AppleBCMWLANNANInterface *a1, _BYTE *a2)
{
  v4 = *(a1 + 17);
  v7[0] = *(v4 + 1);
  v7[1] = *a2;
  v8 = *(v4 + 3);
  v5 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 518, v7, 4u);
  if (v5)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_RSSI_MIDDLE(a1);
      }
    }
  }

  else
  {
    *(*(a1 + 17) + 2) = *a2;
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_RSSI_MIDDLE(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::setNAN_RSSI_MIDDLE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_RSSI_MIDDLE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RSSI_5G_CLOSE(uint64_t *a1, _BYTE *a2)
{
  v6 = 0;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 518, &v6, 4u);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_RSSI_5G_CLOSE(a1);
      }
    }
  }

  else
  {
    *a2 = BYTE2(v6);
  }

  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_RSSI_5G_CLOSE(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::getNAN_RSSI_5G_CLOSE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_RSSI_5G_CLOSE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RSSI_5G_CLOSE(AppleBCMWLANNANInterface *a1, char *a2)
{
  v4 = *(a1 + 17);
  v7 = *(v4 + 1);
  v8 = *a2;
  v9 = *(v4 + 4);
  v5 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 518, &v7, 4u);
  if (v5)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_RSSI_5G_CLOSE(a1);
      }
    }
  }

  else
  {
    *(*(a1 + 17) + 3) = *a2;
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_RSSI_5G_CLOSE(uint64_t a1, char *a2)
{
  return AppleBCMWLANNANInterface::setNAN_RSSI_5G_CLOSE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_RSSI_5G_CLOSE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RSSI_5G_MIDDLE(uint64_t *a1, _BYTE *a2)
{
  v6 = 0;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 518, &v6, 4u);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_RSSI_5G_MIDDLE(a1);
      }
    }
  }

  else
  {
    *a2 = HIBYTE(v6);
  }

  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_RSSI_5G_MIDDLE(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::getNAN_RSSI_5G_MIDDLE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_RSSI_5G_MIDDLE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RSSI_5G_MIDDLE(AppleBCMWLANNANInterface *a1, char *a2)
{
  v4 = *(a1 + 17);
  v7 = *(v4 + 1);
  v8 = *(v4 + 2);
  v9 = *a2;
  v5 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 518, &v7, 4u);
  if (v5)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_RSSI_5G_MIDDLE(a1);
      }
    }
  }

  else
  {
    *(*(a1 + 17) + 4) = *a2;
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_RSSI_5G_MIDDLE(uint64_t a1, char *a2)
{
  return AppleBCMWLANNANInterface::setNAN_RSSI_5G_MIDDLE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_RSSI_5G_MIDDLE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_MAX_PEERS(uint64_t *a1, _BYTE *a2)
{
  v6 = 0;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 1296, &v6, 1u);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_MAX_PEERS(a1);
      }
    }
  }

  else
  {
    *a2 = v6;
  }

  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_MAX_PEERS(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::getNAN_MAX_PEERS((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_MAX_PEERS((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_MAX_PEERS(AppleBCMWLANNANInterface *a1, unsigned __int8 *a2)
{
  v5 = *a2;
  v3 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 1296, &v5, 4u);
  if (v3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_MAX_PEERS(a1);
      }
    }
  }

  return v3;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_MAX_PEERS(uint64_t a1, unsigned __int8 *a2)
{
  return AppleBCMWLANNANInterface::setNAN_MAX_PEERS((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_MAX_PEERS((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_CLUSTER_ID(uint64_t *a1, uint64_t a2)
{
  v9 = 0;
  v8 = 0;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 268, &v8, 6u);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_CLUSTER_ID(a1);
      }
    }
  }

  else
  {
    *(a2 + 6) = v8;
    *(a2 + 10) = v9;
    v5 = a1[17];
    v6 = *(v5 + 46);
    *a2 = *(v5 + 42);
    *(a2 + 4) = v6;
  }

  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_CLUSTER_ID(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::getNAN_CLUSTER_ID((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_CLUSTER_ID((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_CLUSTER_ID(AppleBCMWLANNANInterface *a1, int *a2)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  v4 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 268, &v8, 6u);
  if (v4)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_CLUSTER_ID(a1);
      }
    }
  }

  else
  {
    v5 = *(a1 + 17);
    v6 = *a2;
    *(v5 + 46) = *(a2 + 2);
    *(v5 + 42) = v6;
  }

  return v4;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_CLUSTER_ID(uint64_t a1, int *a2)
{
  return AppleBCMWLANNANInterface::setNAN_CLUSTER_ID((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_CLUSTER_ID((a1 - 128), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_TX_RATE()
{
  return 0;
}

{
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_TX_RATE()
{
  return 0;
}

{
  return 0;
}

uint64_t AppleBCMWLANNANInterface::getNAN_ElectionMetric(uint64_t *a1, uint64_t a2)
{
  v6 = 0;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 515, &v6, 4u);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_ElectionMetric(a1);
      }
    }
  }

  else
  {
    *a2 = *(a1[17] + 8);
    *(a2 + 1) = *(a1[17] + 7);
    *(a2 + 2) = v6;
  }

  return IOVAR;
}

uint64_t AppleBCMWLANNANInterface::setNAN_ElectionMetric(AppleBCMWLANNANInterface *a1, uint64_t a2)
{
  v6 = 0;
  LOWORD(v6) = *a2;
  v4 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 514, &v6, 4u);
  if (v4)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_ElectionMetric(a1);
      }
    }
  }

  else
  {
    *(*(a1 + 17) + 8) = *a2;
    *(*(a1 + 17) + 7) = *(a2 + 1);
  }

  return v4;
}

uint64_t AppleBCMWLANNANInterface::getNAN_MASTER_PREFERENCE(uint64_t *a1, _BYTE *a2)
{
  v8 = 0;
  v7 = 0;
  NAN_ElectionMetric = AppleBCMWLANNANInterface::getNAN_ElectionMetric(a1, &v7);
  if (NAN_ElectionMetric)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_MASTER_PREFERENCE(a1);
      }
    }
  }

  else
  {
    v5 = BYTE1(v7);
    *(a1[17] + 7) = BYTE1(v7);
    *a2 = v5;
    *(a1[17] + 8) = v7;
    a2[1] = HIBYTE(v7);
  }

  return NAN_ElectionMetric;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_MASTER_PREFERENCE(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::getNAN_MASTER_PREFERENCE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_MASTER_PREFERENCE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_MASTER_PREFERENCE(AppleBCMWLANNANInterface *a1, _BYTE *a2)
{
  v8 = 0;
  v7[1] = *a2;
  v4 = *(a1 + 17);
  v7[0] = *(v4 + 8);
  v9 = *(v4 + 9);
  v5 = AppleBCMWLANNANInterface::setNAN_ElectionMetric(a1, v7);
  if (v5)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_MASTER_PREFERENCE(a1);
      }
    }
  }

  else
  {
    *(*(a1 + 17) + 7) = *a2;
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_MASTER_PREFERENCE(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::setNAN_MASTER_PREFERENCE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_MASTER_PREFERENCE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RANDOM_FACTOR(uint64_t *a1, _BYTE *a2)
{
  v8 = 0;
  v7 = 0;
  NAN_ElectionMetric = AppleBCMWLANNANInterface::getNAN_ElectionMetric(a1, &v7);
  if (NAN_ElectionMetric)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_RANDOM_FACTOR(a1);
      }
    }
  }

  else
  {
    *(a1[17] + 7) = BYTE1(v7);
    v5 = v7;
    *(a1[17] + 8) = v7;
    *a2 = v5;
    a2[1] = BYTE2(v7);
  }

  return NAN_ElectionMetric;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_RANDOM_FACTOR(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::getNAN_RANDOM_FACTOR((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_RANDOM_FACTOR((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANDOM_FACTOR(AppleBCMWLANNANInterface *a1, _BYTE *a2)
{
  v8 = 0;
  v4 = *(a1 + 17);
  v7[1] = *(v4 + 7);
  v7[0] = *a2;
  v9 = *(v4 + 9);
  v5 = AppleBCMWLANNANInterface::setNAN_ElectionMetric(a1, v7);
  if (v5)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_RANDOM_FACTOR(a1);
      }
    }
  }

  else
  {
    *(*(a1 + 17) + 8) = *a2;
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_RANDOM_FACTOR(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::setNAN_RANDOM_FACTOR((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_RANDOM_FACTOR((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_RANDOM_FACTOR_ROTATION(uint64_t *a1, _BYTE *a2)
{
  v8 = 0;
  v7 = 0;
  NAN_ElectionMetric = AppleBCMWLANNANInterface::getNAN_ElectionMetric(a1, &v7);
  if (NAN_ElectionMetric)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_RANDOM_FACTOR_ROTATION(a1);
      }
    }
  }

  else
  {
    *(a1[17] + 7) = BYTE1(v7);
    *(a1[17] + 8) = v7;
    v5 = v8;
    *(a1[17] + 9) = v8;
    *a2 = v5;
  }

  return NAN_ElectionMetric;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_RANDOM_FACTOR_ROTATION(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::getNAN_RANDOM_FACTOR_ROTATION((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_RANDOM_FACTOR_ROTATION((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANDOM_FACTOR_ROTATION(AppleBCMWLANNANInterface *a1, char *a2)
{
  v8 = 0;
  v4 = *(a1 + 17);
  v7[1] = *(v4 + 7);
  v7[0] = *(v4 + 8);
  v9 = *a2;
  v5 = AppleBCMWLANNANInterface::setNAN_ElectionMetric(a1, v7);
  if (v5)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_RANDOM_FACTOR_ROTATION(a1);
      }
    }
  }

  else
  {
    *(*(a1 + 17) + 9) = *a2;
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_RANDOM_FACTOR_ROTATION(uint64_t a1, char *a2)
{
  return AppleBCMWLANNANInterface::setNAN_RANDOM_FACTOR_ROTATION((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_RANDOM_FACTOR_ROTATION((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_HOST_ELECTION(uint64_t *a1, _BYTE *a2)
{
  v6 = 0;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 513, &v6, 1u);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_HOST_ELECTION(a1);
      }
    }
  }

  else
  {
    *a2 = v6;
  }

  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_HOST_ELECTION(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::getNAN_HOST_ELECTION((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_HOST_ELECTION((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_HOST_ELECTION(AppleBCMWLANNANInterface *a1, char *a2)
{
  v5 = *a2;
  v3 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 513, &v5, 1u);
  if (v3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_HOST_ELECTION(a1);
      }
    }
  }

  return v3;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_HOST_ELECTION(uint64_t a1, char *a2)
{
  return AppleBCMWLANNANInterface::setNAN_HOST_ELECTION((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_HOST_ELECTION((a1 - 128), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_LAST_ANCHOR_MASTER_RECORD()
{
  return 0;
}

{
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_CURRENT_ANCHOR_MASTER_RECORD()
{
  return 0;
}

{
  return 0;
}

uint64_t AppleBCMWLANNANInterface::getNAN_DEVICE_INFO(AppleBCMWLANNANInterface *this, uint64_t a2)
{
  if (*(*(this + 17) + 88))
  {
    memset(v7, 0, 60);
    IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(this, 262, v7, 0x3Cu);
    v5 = IOVAR;
    if (IOVAR)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::getNAN_DEVICE_INFO(this);
        }
      }
    }

    else
    {
      AppleBCMWLANNANInterface::copyDeviceInfo(IOVAR, a2, v7);
    }
  }

  else
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_DEVICE_INFO(this);
      }
    }

    return 6;
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_DEVICE_INFO(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::getNAN_DEVICE_INFO((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_DEVICE_INFO((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_DISC_BCN_PERIOD(uint64_t *a1, _WORD *a2)
{
  v6 = 0;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 270, &v6, 2u);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_DISC_BCN_PERIOD(a1);
      }
    }
  }

  else
  {
    *a2 = v6;
  }

  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_DISC_BCN_PERIOD(uint64_t a1, _WORD *a2)
{
  return AppleBCMWLANNANInterface::getNAN_DISC_BCN_PERIOD((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_DISC_BCN_PERIOD((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DISC_BCN_PERIOD(AppleBCMWLANNANInterface *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v7 = *a2;
  v4 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 270, &v7, 2u);
  if (v4)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        v6 = (*(*a1 + 1088))(a1);
        CCLogStream::logAlert(v6, "[dk] %s@%d:ERROR: Unable to set NAN discovery beacon period to %d, ret = %d\n", "setNAN_DISC_BCN_PERIOD", 5203, v3, v4);
      }
    }
  }

  return v4;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_DISC_BCN_PERIOD(uint64_t a1, unsigned __int16 *a2)
{
  return AppleBCMWLANNANInterface::setNAN_DISC_BCN_PERIOD((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_DISC_BCN_PERIOD((a1 - 128), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_SYNC_BCN_PERIOD()
{
  return 0;
}

{
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_SYNC_BCN_PERIOD()
{
  return 0;
}

{
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_BCN_TX_CONTROL()
{
  return 0;
}

{
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_BCN_TX_CONTROL()
{
  return 0;
}

{
  return 0;
}

uint64_t AppleBCMWLANNANInterface::getNAN_DW_AWAKE_PERIOD(uint64_t *a1, _WORD *a2)
{
  v6 = 0;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 1026, &v6, 4u);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_DW_AWAKE_PERIOD(a1);
      }
    }
  }

  else
  {
    *a2 = v6;
  }

  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_DW_AWAKE_PERIOD(uint64_t a1, _WORD *a2)
{
  return AppleBCMWLANNANInterface::getNAN_DW_AWAKE_PERIOD((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_DW_AWAKE_PERIOD((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DW_AWAKE_PERIOD(AppleBCMWLANNANInterface *a1, _WORD *a2)
{
  v5 = 0;
  LOWORD(v5) = *a2;
  v3 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 1026, &v5, 4u);
  if (v3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_DW_AWAKE_PERIOD(a1);
      }
    }
  }

  return v3;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_DW_AWAKE_PERIOD(uint64_t a1, _WORD *a2)
{
  return AppleBCMWLANNANInterface::setNAN_DW_AWAKE_PERIOD((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_DW_AWAKE_PERIOD((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_MASTER_CHANNEL(uint64_t *a1, _BYTE *a2)
{
  v6 = 0;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 1025, &v6, 4u);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_MASTER_CHANNEL(a1);
      }
    }
  }

  else
  {
    *a2 = v6;
  }

  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_MASTER_CHANNEL(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::getNAN_MASTER_CHANNEL((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_MASTER_CHANNEL((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_FwCapability(AppleBCMWLANNANInterface *this)
{
  v2 = IOMallocZeroData();
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(this, 2050, v2, 0x28u);
  v5 = (*(*this + 1088))(this);
  if (IOVAR)
  {
    if (v5)
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_FwCapability(this);
      }
    }
  }

  else
  {
    if (v5)
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_FwCapability(this);
      }
    }

    Bus = AppleBCMWLANCore::getBus(*(*(this + 17) + 64));
    if ((*(*Bus + 368))(Bus) == 4378)
    {
      *(*(this + 17) + 248) = 0;
      v7 = v3[1];
    }

    else
    {
      v7 = v3[1];
      *(*(this + 17) + 248) = v7 < 0;
    }

    **(this + 17) = BYTE2(v7) & 1;
    *(*(this + 17) + 56) = *(v3 + 13);
    *(*(this + 17) + 57) = *(v3 + 12);
    *(*(this + 17) + 59) = *(v3 + 18);
    *(*(this + 17) + 60) = *(v3 + 14);
    *(*(this + 17) + 58) = *(v3 + 17);
    *(*(this + 17) + 61) = *(v3 + 16);
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        v9 = (*(*this + 1088))(this);
        CCLogStream::logAlert(v9, "[dk] %s@%d:Nan-FwCapability Flag1=0x%0x max_svc_publishes:%0x max_svc_subscribes:%0x max_lcl_sched_maps:%0x\n               max_lcl_ndc_entries:%0x max_lcl_ndi_interfaces:%0x max_peer_entries:%0x max_ndp_sessions:%0x, hostpairing:%d\n ", "getNAN_FwCapability", 5341, v3[1], *(v3 + 12), *(v3 + 13), *(v3 + 14), *(v3 + 15), *(v3 + 16), *(v3 + 17), *(v3 + 18), *(*(this + 17) + 248));
      }
    }
  }

  IOFreeData();
  return IOVAR;
}

uint64_t AppleBCMWLANNANInterface::getNAN_deviceCapability(uint64_t *a1, BOOL *a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 2050, v4, 0x28u);
  v7 = (*(*a1 + 1088))(a1);
  if (IOVAR)
  {
    if (v7)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_deviceCapability(a1);
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
        AppleBCMWLANNANInterface::getNAN_deviceCapability(a1);
      }
    }

    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_deviceCapability(a1);
      }
    }

    *a2 = v5[1] < 0;
  }

  IOFreeData();
  return IOVAR;
}

uint64_t AppleBCMWLANNANInterface::setNAN_MASTER_CHANNEL(AppleBCMWLANNANInterface *a1, unsigned __int8 *a2)
{
  v8 = 0;
  v4 = *a2;
  *(*(a1 + 17) + 5) = *a2;
  LOBYTE(v8) = v4;
  v5 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 1025, &v8, 4u);
  if (v5)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        v7 = (*(*a1 + 1088))(a1);
        CCLogStream::logAlert(v7, "[dk] %s@%d:ERROR: Unable to set NAN primary master channel to %d, ret = %d\n", "setNAN_MASTER_CHANNEL", 5399, *a2, v5);
      }
    }
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_MASTER_CHANNEL(uint64_t a1, unsigned __int8 *a2)
{
  return AppleBCMWLANNANInterface::setNAN_MASTER_CHANNEL((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_MASTER_CHANNEL((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_SECONDARY_MASTER_CHANNEL(uint64_t *a1, _BYTE *a2)
{
  v6 = 0;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 1025, &v6, 4u);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_SECONDARY_MASTER_CHANNEL(a1);
      }
    }
  }

  else
  {
    *a2 = BYTE1(v6);
  }

  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_SECONDARY_MASTER_CHANNEL(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::getNAN_SECONDARY_MASTER_CHANNEL((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_SECONDARY_MASTER_CHANNEL((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_SECONDARY_MASTER_CHANNEL(AppleBCMWLANNANInterface *a1, unsigned __int8 *a2)
{
  v8 = 0;
  v4 = *a2;
  *(*(a1 + 17) + 6) = *a2;
  LOBYTE(v8) = *(*(a1 + 17) + 5);
  BYTE1(v8) = v4;
  v5 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 1025, &v8, 4u);
  if (v5)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        v7 = (*(*a1 + 1088))(a1);
        CCLogStream::logAlert(v7, "[dk] %s@%d:ERROR: Unable to set NAN secondary master channel to %d, ret = %d\n", "setNAN_SECONDARY_MASTER_CHANNEL", 5437, *a2, v5);
      }
    }
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_SECONDARY_MASTER_CHANNEL(uint64_t a1, unsigned __int8 *a2)
{
  return AppleBCMWLANNANInterface::setNAN_SECONDARY_MASTER_CHANNEL((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_SECONDARY_MASTER_CHANNEL((a1 - 128), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_SYNC_STATS()
{
  return 0;
}

{
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_CHANNEL_SEQUENCE()
{
  return 0;
}

{
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_CHANNEL_SEQUENCE()
{
  return 0;
}

{
  return 0;
}

uint64_t AppleBCMWLANNANInterface::setNAN_PUBLISH(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 3402);
  if (*(a2 + 3402))
  {
    if (v4 <= 0x10)
    {
      LOWORD(v5) = 0;
      v6 = (a2 + 296);
      while (1)
      {
        v7 = *v6;
        v6 += 17;
        v5 = v7 + v5 + 1;
        if (HIWORD(v5))
        {
          break;
        }

        if (!--v4)
        {
          v8 = ((v5 + 3) & 0x1FFFC) + 24;
          goto LABEL_8;
        }
      }
    }

    return 22;
  }

  v8 = 20;
LABEL_8:
  v9 = *(a2 + 3403);
  if (*(a2 + 3403))
  {
    if (v9 <= 0x10)
    {
      LOWORD(v10) = 0;
      v11 = v8 + 4;
      v12 = (a2 + 840);
      while (1)
      {
        v13 = *v12;
        v12 += 17;
        v10 = v13 + v10 + 1;
        if (HIWORD(v10))
        {
          break;
        }

        if (!--v9)
        {
          v8 = v11 + ((v10 + 3) & 0x1FFFC);
          goto LABEL_14;
        }
      }
    }

    return 22;
  }

LABEL_14:
  if (*(a2 + 3400))
  {
    v8 += ((*(a2 + 3400) + 3) & 0x1FFFC) + 4;
  }

  v14 = *(a2 + 3432);
  if (*(a2 + 3432))
  {
    v8 += 8;
  }

  if (*(a2 + 3436) || *(a2 + 3434))
  {
    v8 += 8;
  }

  if ((v14 & 0x40) != 0)
  {
    v15 = *(a2 + 3438) == 3 ? 64 : 44;
    v8 += v15;
    v16 = v8 + ((v14 >> 7) & 8);
    if (*(a1[17] + 92) == 1)
    {
      v8 = v16;
    }
  }

  if (*(a2 + 3492))
  {
    v8 += 8;
  }

  v61 = 0;
  v60[1] = 0;
  v17 = *(a2 + 5552) | *(a2 + 5556);
  v18 = v17 != 0;
  if (v17)
  {
    v8 += 12;
  }

  v62 = 0;
  v19 = *(a2 + 3493);
  v20 = v19 != 0;
  if (v19)
  {
    LODWORD(v21) = v8 + 12;
  }

  else
  {
    LODWORD(v21) = v8;
  }

  v22 = *(a2 + 5550);
  if (*(a2 + 5550))
  {
    if (v22 > 0xFFFC)
    {
      return 22;
    }

    v21 = ((v22 + 6) & 0x1FFFC) + v21 + 4;
    if (HIDWORD(v21))
    {
      return 22;
    }

    v20 = 1;
  }

  if (v21 > 0xC00)
  {
    return 22;
  }

  v25 = IOMallocZeroData();
  if (!v25)
  {
    return 12;
  }

  v26 = v25;
  *v25 = v21 - 2;
  *(v25 + 10) = *(a2 + 3407);
  *(v25 + 2) = *(a2 + 3416);
  *(v25 + 16) = *(a2 + 3420);
  v27 = *(a2 + 4);
  *(v25 + 4) = *a2;
  *(v25 + 8) = v27;
  *(v25 + 11) = *(a2 + 3412);
  v28 = *(a2 + 3405);
  if (v28)
  {
    *(v25 + 12) |= 0x1000u;
  }

  if ((v28 & 2) != 0)
  {
    *(v25 + 12) |= 0x2000u;
  }

  if (*(a2 + 3406) == 1)
  {
    *(v25 + 12) |= 0x4000u;
  }

  if (*(a2 + 3424))
  {
    *(v25 + 12) |= 0x8000u;
  }

  v29 = *(a2 + 3428);
  if (v29)
  {
    *(v25 + 12) |= 0x40u;
  }

  v58 = v20;
  v59 = v18;
  v57 = v19;
  if ((v29 & 0x10) != 0)
  {
    v30 = *(v25 + 12);
    *(v25 + 12) = v30 | 0x400000;
    if ((~v29 & 0x30) == 0)
    {
      *(v25 + 12) = v30 | 0xC00000;
    }
  }

  v31 = v25 + 20;
  if (*(a2 + 3402))
  {
    v32 = 0;
    *(v25 + 20) = 258;
    v33 = (v25 + 24);
    v34 = (a2 + 296);
    do
    {
      v35 = v34 - 16;
      v36 = *v34;
      v34 += 17;
      *v33 = v36;
      v37 = v33 + 1;
      memcpy(v37, v35, v36);
      v33 = &v37[v36];
      v38 = v36 + v26[11] + 1;
      v26[11] = v38;
      ++v32;
    }

    while (v32 < *(a2 + 3402));
    v31 += ((v38 + 3) & 0x1FFFC) + 4;
  }

  if (*(a2 + 3403))
  {
    v39 = 0;
    *v31 = 257;
    v40 = (v31 + 4);
    v41 = (a2 + 840);
    do
    {
      v42 = v41 - 16;
      v43 = *v41;
      v41 += 17;
      *v40 = v43;
      v44 = v40 + 1;
      memcpy(v44, v42, v43);
      v40 = &v44[v43];
      v45 = v43 + *(v31 + 2) + 1;
      *(v31 + 2) = v45;
      ++v39;
    }

    while (v39 < *(a2 + 3403));
    v31 += ((v45 + 3) & 0x1FFFC) + 4;
  }

  v46 = *(a2 + 3400);
  if (*(a2 + 3400))
  {
    *v31 = 780;
    *(v31 + 2) = v46;
    memcpy((v31 + 4), (a2 + 1352), v46);
    v31 += 4 + ((v46 + 3) & 0x1FFFC);
  }

  if (*(a2 + 3432))
  {
    *v31 = 131844;
    *(v31 + 4) = *(a2 + 3432);
    v31 += 8;
  }

  if (*(a2 + 3436) || *(a2 + 3434))
  {
    *v31 = 262917;
    *(v31 + 4) = *(a2 + 3434);
    *(v31 + 6) = *(a2 + 3436);
    v31 += 8;
  }

  if (*(a2 + 3438))
  {
    *v31 = 65800;
    *(v31 + 4) = *(a2 + 3438);
    if (*(a1[17] + 92) == 1 && (*(a2 + 3432) & 0x400) != 0)
    {
      *(v31 + 8) = 65808;
      *(v31 + 12) = 5;
      v47 = v31 + 16;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setNAN_PUBLISH(a1);
        }
      }
    }

    else
    {
      v47 = v31 + 8;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          v48 = (*(*a1 + 1088))(a1);
          CCLogStream::logAlert(v48, "[dk] %s@%d:Publish-legacy: fNANGTKenable:%d control:%x, dpReq->cipher_suite_id is %d, not setting SEC_GTK_CSID \n", "setNAN_PUBLISH", 5746, *(a1[17] + 92), *(a2 + 3432), *(a2 + 3438));
        }
      }
    }

    *v47 = 2097417;
    v49 = *(a2 + 3439);
    *(v47 + 20) = *(a2 + 3455);
    *(v47 + 4) = v49;
    if (*(a2 + 3438) == 3)
    {
      *(v47 + 36) = 1048842;
      *(v47 + 40) = *(a2 + 5558);
      v31 = v47 + 56;
    }

    else
    {
      v31 = v47 + 36;
    }
  }

  if (*(a2 + 3492))
  {
    *v31 = 66317;
    *(v31 + 4) = *(a2 + 3492);
    v31 += 8;
  }

  if (v59)
  {
    *v31 = 393998;
    v50 = *(a2 + 5552);
    *(v31 + 8) = *(a2 + 5556);
    *(v31 + 4) = v50;
    v31 += 12;
  }

  if (v58)
  {
    *v31 = 784;
    v51 = v31 + 4;
    if (v57)
    {
      *(v31 + 4) = 0;
      *(v31 + 5) = 8;
      *(v31 + 7) = *(a2 + 3493);
      v51 = v31 + 15;
      v52 = 11;
    }

    else
    {
      v52 = 0;
    }

    v53 = *(a2 + 5550);
    if (*(a2 + 5550))
    {
      *v51 = 1;
      *(v51 + 1) = v53;
      memcpy((v51 + 3), (a2 + 3502), v53);
      v52 += v53 + 3;
    }

    *(v31 + 2) = v52;
  }

  v60[0] = 0;
  IOParseBootArgNumber("wlan.enableNANDebug", v60, 4);
  if (v60[0] && v21)
  {
    v54 = 0;
    v55 = v26;
    do
    {
      v56 = *(a1[17] + 80);
      IO80211Hexdump();
      v54 += 32;
      v55 += 16;
    }

    while (v54 < v21);
  }

  v23 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 770, v26, v21);
  if (v23)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_PUBLISH(a1);
      }
    }
  }

  IOFreeData();
  return v23;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_PUBLISH(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_PUBLISH((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_PUBLISH((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_CANCEL_PUBLISH(AppleBCMWLANNANInterface *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v7 = v3;
  v4 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 772, &v7, 4u);
  if (v4)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        v6 = (*(*a1 + 1088))(a1);
        CCLogStream::logAlert(v6, "[dk] %s@%d:ERROR: Unable to cancel publish id %d, ret = %d\n", "setNAN_CANCEL_PUBLISH", 5848, v3, v4);
      }
    }
  }

  return v4;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_CANCEL_PUBLISH(uint64_t a1, unsigned __int8 *a2)
{
  return AppleBCMWLANNANInterface::setNAN_CANCEL_PUBLISH((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_CANCEL_PUBLISH((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_PUBLISHED_SERVICE_LIST(uint64_t *a1, uint64_t a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 771, v4, 0x100u);
  if (IOVAR)
  {
    v7 = IOVAR;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_PUBLISHED_SERVICE_LIST(a1);
      }
    }
  }

  else
  {
    if (*v5)
    {
      v8 = 0;
      v9 = 2;
      do
      {
        *(a2 + v8++) = *(v5 + v9);
        v10 = *v5;
        v9 += 7;
      }

      while (v8 < v10);
    }

    else
    {
      LOWORD(v10) = 0;
    }

    v7 = 0;
    *(a2 + 256) = v10;
  }

  IOFreeData();
  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_PUBLISHED_SERVICE_LIST(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::getNAN_PUBLISHED_SERVICE_LIST((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_PUBLISHED_SERVICE_LIST((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_SUBSCRIBE(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 3499);
  if (*(a2 + 3499))
  {
    if (v4 <= 0x10)
    {
      LOWORD(v5) = 0;
      v6 = (a2 + 296);
      while (1)
      {
        v7 = *v6;
        v6 += 17;
        v5 = v7 + v5 + 1;
        if (HIWORD(v5))
        {
          break;
        }

        if (!--v4)
        {
          v8 = ((v5 + 3) & 0x1FFFC) + 24;
          goto LABEL_8;
        }
      }
    }

    return 22;
  }

  v8 = 20;
LABEL_8:
  v9 = *(a2 + 3500);
  if (*(a2 + 3500))
  {
    if (v9 <= 0x10)
    {
      LOWORD(v10) = 0;
      v11 = v8 + 4;
      v12 = (a2 + 840);
      while (1)
      {
        v13 = *v12;
        v12 += 17;
        v10 = v13 + v10 + 1;
        if (HIWORD(v10))
        {
          break;
        }

        if (!--v9)
        {
          v8 = v11 + ((v10 + 3) & 0x1FFFC);
          goto LABEL_14;
        }
      }
    }

    return 22;
  }

LABEL_14:
  if (*(a2 + 3400))
  {
    v8 += ((*(a2 + 3400) + 3) & 0x1FFFC) + 4;
  }

  v14 = *(a2 + 3498);
  if (*(a2 + 3498))
  {
    if (v14 >= 0x11)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setNAN_SUBSCRIBE(a1);
        }
      }

      return 22;
    }

    v8 += ((6 * v14) & 0x7C) + 8;
  }

  else
  {
    v15 = *(a2 + 3508);
    if (v15)
    {
      if (v15 > 0x40)
      {
        return 22;
      }

      v8 += ((v15 + 4) & 0xFC) + 4;
    }
  }

  if (*(a2 + 3596))
  {
    v16 = v8 + 8;
  }

  else
  {
    v16 = v8;
  }

  if (*(a2 + 3600) || *(a2 + 3598))
  {
    v16 += 8;
  }

  if (v16 > 0xC00)
  {
    return 22;
  }

  v19 = IOMallocZeroData();
  if (!v19)
  {
    return 12;
  }

  v20 = v19;
  *v19 = v16 - 2;
  *(v19 + 10) = *(a2 + 3503);
  *(v19 + 2) = *(a2 + 3584);
  *(v19 + 16) = *(a2 + 3588);
  v21 = *(a2 + 4);
  *(v19 + 4) = *a2;
  *(v19 + 8) = v21;
  *(v19 + 11) = *(a2 + 3580);
  if ((*(a2 + 3502) & 2) != 0)
  {
    *(v19 + 12) |= 0x1000u;
  }

  v22 = *(a2 + 3592);
  if (v22)
  {
    *(v19 + 12) |= 0x40u;
  }

  if ((v22 & 0x40) != 0)
  {
    v23 = *(v19 + 12);
    *(v19 + 12) = v23 | 0x400000;
    if ((~v22 & 0xC0) == 0)
    {
      *(v19 + 12) = v23 | 0xC00000;
    }
  }

  v24 = (v19 + 20);
  if (*(a2 + 3499))
  {
    v25 = 0;
    *(v19 + 20) = 258;
    v26 = (v19 + 24);
    v27 = (a2 + 296);
    do
    {
      v28 = v27 - 16;
      v29 = *v27;
      v27 += 17;
      *v26 = v29;
      v30 = v26 + 1;
      memcpy(v30, v28, v29);
      v26 = &v30[v29];
      v31 = v29 + 1;
      v20[11] = v29 + 1;
      ++v25;
    }

    while (v25 < *(a2 + 3499));
    v24 += ((v31 + 3) & 0x1FFFC) + 4;
  }

  if (*(a2 + 3500))
  {
    v32 = 0;
    *v24 = 257;
    v33 = v24 + 4;
    v34 = (a2 + 840);
    do
    {
      v35 = v34 - 16;
      v36 = *v34;
      v34 += 17;
      *v33 = v36;
      v37 = v33 + 1;
      memcpy(v37, v35, v36);
      v33 = &v37[v36];
      v38 = v36 + *(v24 + 1) + 1;
      *(v24 + 1) = v38;
      ++v32;
    }

    while (v32 < *(a2 + 3500));
    v24 += ((v38 + 3) & 0x1FFFC) + 4;
  }

  if (*(a2 + 3498))
  {
    *v24 = 259;
    v24[4] = ((*(a2 + 3592) >> 1) & 2 | v24[4] & 0xFD) ^ 2;
    v39 = 6 * *(a2 + 3498);
    if (*(a2 + 3498))
    {
      v40 = 0;
      v41 = v24 + 5;
      v42 = (a2 + 3402);
      do
      {
        v43 = *v42;
        *(v41 + 2) = *(v42 + 2);
        *v41 = v43;
        v41 += 6;
        ++v40;
        v42 = (v42 + 6);
      }

      while (v40 < *(a2 + 3498));
    }

    *(v24 + 1) = v39 | 1;
    v24 += ((v39 + 4) & 0xFFC) + 4;
  }

  else if (*(a2 + 3508))
  {
    *v24 = 259;
    v45 = v24 + 4;
    v44 = v24[4];
    v46 = v44 | 1;
    v24[4] = v44 | 1;
    v47 = v44 | 3;
    v48 = v46 & 0xFD;
    if ((*(a2 + 3592) & 4) != 0)
    {
      v47 = v48;
    }

    *v45 = v47;
    *v45 = (4 * (*(a2 + 3512) & 3)) | v47;
    memcpy(v24 + 5, (a2 + 3513), *(a2 + 3508));
    v49 = *(a2 + 3508) + 1;
    *(v24 + 1) = v49;
    v24 = &v45[(v49 + 3) & 0x1FFFC];
  }

  v50 = *(a2 + 3400);
  if (*(a2 + 3400))
  {
    *v24 = 780;
    *(v24 + 1) = v50;
    memcpy(v24 + 4, (a2 + 1352), v50);
    v24 += ((v50 + 3) & 0x1FFFC) + 4;
  }

  if (*(a2 + 3596))
  {
    *v24 = 131844;
    *(v24 + 2) = *(a2 + 3596);
    v24 += 8;
  }

  if (*(a2 + 3600) || *(a2 + 3598))
  {
    *v24 = 262917;
    *(v24 + 2) = *(a2 + 3598);
    *(v24 + 3) = *(a2 + 3600);
  }

  v17 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 773, v20, v16);
  if (v17)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_SUBSCRIBE(a1);
      }
    }
  }

  IOFreeData();
  return v17;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_SUBSCRIBE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_SUBSCRIBE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_SUBSCRIBE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_CANCEL_SUBSCRIBE(AppleBCMWLANNANInterface *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v7 = v3;
  v4 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 775, &v7, 4u);
  if (v4)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        v6 = (*(*a1 + 1088))(a1);
        CCLogStream::logAlert(v6, "[dk] %s@%d:ERROR: Unable to cancel subscribe id %d, ret = %d\n", "setNAN_CANCEL_SUBSCRIBE", 6152, v3, v4);
      }
    }
  }

  return v4;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_CANCEL_SUBSCRIBE(uint64_t a1, unsigned __int8 *a2)
{
  return AppleBCMWLANNANInterface::setNAN_CANCEL_SUBSCRIBE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_CANCEL_SUBSCRIBE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_SUBSCRIBED_SERVICE_LIST(uint64_t *a1, uint64_t a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 774, v4, 0x100u);
  if (IOVAR)
  {
    v7 = IOVAR;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_SUBSCRIBED_SERVICE_LIST(a1);
      }
    }
  }

  else if (*v5 <= 0xFEu)
  {
    if (*v5)
    {
      v8 = 0;
      v9 = 2;
      do
      {
        *(a2 + v8++) = *(v5 + v9);
        v10 = *v5;
        v9 += 7;
      }

      while (v8 < v10);
    }

    else
    {
      LOWORD(v10) = 0;
    }

    v7 = 0;
    *(a2 + 256) = v10;
  }

  else
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_SUBSCRIBED_SERVICE_LIST(a1);
      }
    }

    v7 = 14;
  }

  IOFreeData();
  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_SUBSCRIBED_SERVICE_LIST(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::getNAN_SUBSCRIBED_SERVICE_LIST((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_SUBSCRIBED_SERVICE_LIST((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_FOLLOW_UP_TRANSMIT(AppleBCMWLANNANInterface *a1, uint64_t a2)
{
  if (*(a2 + 2058))
  {
    v4 = ((*(a2 + 2058) + 3) & 0x1FFFC) + 20;
  }

  else
  {
    v4 = 16;
  }

  if (*(a2 + 3084) || ((*(a2 + 3088) & 1) != 0 || *(a2 + 3347) == 1) && *(a2 + 3089))
  {
    v4 += 8;
  }

  if (*(a2 + 3084))
  {
    v5 = (*(a2 + 3084) + 3) & 0x1FFFC | 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 + v5;
  if (*(a2 + 3089))
  {
    if (*(a2 + 3347))
    {
      v7 = 21;
    }

    else
    {
      v7 = 7;
    }

    v6 += ((*(a2 + 3089) + v7 + 3) & 0x3FC) + 2;
  }

  v8 = v6;
  v9 = IOMallocZeroData();
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  *v9 = *a2;
  *(v9 + 1) = *(a2 + 1);
  *(v9 + 8) = *(a2 + 2);
  v11 = *(a2 + 4);
  *(v9 + 6) = *(a2 + 8);
  *(v9 + 2) = v11;
  v12 = v9 + 14;
  v13 = *(a2 + 2058);
  if (*(a2 + 2058))
  {
    *(v9 + 14) = 780;
    *(v9 + 16) = v13;
    memcpy((v9 + 18), (a2 + 10), v13);
    v10[6] += ((v13 + 3) & 0xFFFC) + 4;
    v12 += ((v13 + 3) & 0x1FFFC) + 4;
  }

  if (*(a2 + 3084))
  {
    *v12 = 279;
    *(v12 + 4) = 0;
    v14 = *(v12 + 2);
    *(v12 + 2) = v14 + 4;
    *(v12 + 8) = 1;
    v15 = *(a2 + 3084);
    *(v12 + 9) = v15;
    memcpy((v12 + 10), (a2 + 2060), *(a2 + 3084));
    v16 = v14 + v15 + 6;
    *(v12 + 2) = v16;
    if (!*(a2 + 3089))
    {
LABEL_31:
      v10[6] += ((v16 + 3) & 0xFFFC) + 4;
      goto LABEL_32;
    }

    v17 = v12 + 8 + v15 + 2;
    v18 = (v12 + 2);
LABEL_28:
    *v17 = 2;
    v21 = *(a2 + 3089);
    v22 = v21 + 7;
    *(v17 + 2) = -35;
    *(v17 + 1) = v21 + 7;
    v23 = *(a2 + 3089) + 5;
    *(v17 + 3) = v23;
    *(v17 + 4) = 614100816;
    *(v17 + 8) = *(a2 + 3346);
    memcpy((v17 + 9), (a2 + 3090), *(a2 + 3089));
    if (*(a2 + 3347) == 1)
    {
      v24 = v17 + 2 + v23;
      *(v24 + 6) = 1867517149;
      *(v24 + 10) = 9626;
      *(v24 + 12) = *(a2 + 3348);
      v22 = v21 + 21;
      *(v17 + 1) = v21 + 21;
    }

    v16 = *v18 + v22 + 2;
    *v18 = v16;
    goto LABEL_31;
  }

  if (((*(a2 + 3088) & 1) != 0 || *(a2 + 3347) == 1) && *(a2 + 3089))
  {
    *v12 = 279;
    *(v12 + 4) = 0;
    v17 = v12 + 8;
    v20 = *(v12 + 2);
    v18 = (v12 + 2);
    *v18 = v20 + 4;
    goto LABEL_28;
  }

LABEL_32:
  v19 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 779, v10, v8);
  if (v19)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_FOLLOW_UP_TRANSMIT(a1);
      }
    }
  }

  IOFreeData();
  return v19;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_FOLLOW_UP_TRANSMIT(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_FOLLOW_UP_TRANSMIT((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_FOLLOW_UP_TRANSMIT((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_SERVICE_DISCOVERY_STATS(uint64_t *a1, uint64_t a2)
{
  memset(v7, 0, 44);
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 777, v7, 0x2Cu);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_SERVICE_DISCOVERY_STATS(a1);
      }
    }
  }

  else
  {
    v5 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = *&v7[2];
    *(a2 + 40) = DWORD2(v7[2]);
  }

  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_SERVICE_DISCOVERY_STATS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::getNAN_SERVICE_DISCOVERY_STATS((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_SERVICE_DISCOVERY_STATS((a1 - 128), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_AF_TX()
{
  return 0;
}

{
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_SERVICE_DESCRIPTOR_EXTENSION()
{
  return 0;
}

{
  return 0;
}

uint64_t AppleBCMWLANNANInterface::getNAN_ADVERTISERS(uint64_t *a1, _WORD *a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 517, v4, 0x5DCu);
  if (IOVAR)
  {
    v7 = IOVAR;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_ADVERTISERS(a1);
      }
    }
  }

  else
  {
    *a2 = *v5;
    if (*v5)
    {
      v8 = 0;
      v9 = 0;
      v10 = a2 + 63;
      do
      {
        v11 = *&v5[v8 + 6];
        *(v10 - 51) = *&v5[v8 + 10];
        *(v10 - 55) = v11;
        v12 = *&v5[v8 + 12];
        *(v10 - 45) = *&v5[v8 + 16];
        *(v10 - 49) = v12;
        v13 = *&v5[v8 + 36];
        *(v10 - 39) = *&v5[v8 + 40];
        *(v10 - 43) = v13;
        *(v10 - 19) = v5[v8 + 5];
        *(v10 - 18) = v5[v8 + 43];
        *(v10 - 17) = v5[v8 + 42];
        *(v10 - 3) = v5[v8 + 48];
        *(v10 - 2) = v5[v8 + 49];
        *(v10 - 1) = v5[v8 + 50];
        *v10 = v5[v8 + 51];
        *(v10 - 15) = *&v5[v8 + 44];
        *(v10 - 11) = *&v5[v8 + 28];
        ++v9;
        v10 += 64;
        v8 += 48;
      }

      while (v9 < *v5);
    }

    v7 = 0;
  }

  IOFreeData();
  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_ADVERTISERS(uint64_t a1, _WORD *a2)
{
  return AppleBCMWLANNANInterface::getNAN_ADVERTISERS((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_ADVERTISERS((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_INIT(AppleBCMWLANNANInterface *a1)
{
  v15 = 1;
  v14 = 1;
  IOParseBootArgNumber("wlan.enableGTK", &v14, 4);
  *(*(a1 + 17) + 94) = 0;
  v2 = (*(*a1 + 1072))(a1);
  *v16.octet = v2;
  *&v16.octet[4] = WORD2(v2);
  v3 = AppleBCMWLANNANInterface::createNANChipInterface(a1, &v16, 3);
  if (v3)
  {
    v4 = v3;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_INIT(a1);
      }
    }
  }

  else
  {
    v5 = AppleBCMWLANNANInterface::issueSyncSetIOVAR(a1, 257, &v15, 1u);
    if (v5)
    {
      v4 = v5;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setNAN_INIT(a1);
        }
      }
    }

    else
    {
      NAN_ControlBits = AppleBCMWLANNANInterface::getNAN_ControlBits(a1, (*(a1 + 17) + 12));
      if (NAN_ControlBits)
      {
        v4 = NAN_ControlBits;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::setNAN_INIT(a1);
          }
        }
      }

      else
      {
        *(*(a1 + 17) + 12) |= 0xE5006Fu;
        v7 = AppleBCMWLANNANInterface::setNAN_ControlBits(a1, (*(a1 + 17) + 12));
        if (v7)
        {
          v4 = v7;
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::setNAN_INIT(a1);
            }
          }
        }

        else
        {
          NAN_ControlExtBits = AppleBCMWLANNANInterface::getNAN_ControlExtBits(a1, (*(a1 + 17) + 16), (*(a1 + 17) + 20));
          if (NAN_ControlExtBits)
          {
            v4 = NAN_ControlExtBits;
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::setNAN_INIT(a1);
              }
            }
          }

          else
          {
            *(*(a1 + 17) + 16) |= 1u;
            *(*(a1 + 17) + 16) |= 0x40u;
            *(*(a1 + 17) + 16) |= 0x400u;
            AppleBCMWLANNANInterface::getNAN_FwCapability(a1);
            v9 = *(a1 + 17);
            v10 = v14 && (*(v9 + 248) & 1) != 0;
            *(v9 + 92) = v10;
            v11 = *(a1 + 17);
            if (*(v11 + 92) == 1)
            {
              if ((*(*a1 + 1088))(a1))
              {
                (*(*a1 + 1088))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANNANInterface::setNAN_INIT(a1);
                }
              }

              *(*(a1 + 17) + 16) |= 0x4000u;
              *(*(a1 + 17) + 16) |= 0x8000u;
              *(*(a1 + 17) + 16) |= 0x10000u;
              *(*(a1 + 17) + 16) |= 0x20000u;
              *(*(a1 + 17) + 16) |= 0x400000u;
              *(*(a1 + 17) + 16) |= 0x800000u;
              v11 = *(a1 + 17);
            }

            v12 = AppleBCMWLANNANInterface::setNAN_ControlExtBits(a1, (v11 + 16), (v11 + 20));
            if (v12)
            {
              v4 = v12;
              if ((*(*a1 + 1088))(a1))
              {
                (*(*a1 + 1088))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANNANInterface::setNAN_INIT(a1);
                }
              }
            }

            else
            {
              *(*(a1 + 17) + 24) |= 4u;
              *(*(a1 + 17) + 24) |= 0x10u;
              *(*(a1 + 17) + 24) |= 0x20u;
              *(*(a1 + 17) + 24) |= 0x40u;
              *(*(a1 + 17) + 24) |= 0x80u;
              *(*(a1 + 17) + 25) |= 1u;
              *(*(a1 + 17) + 25) |= 2u;
              *(*(a1 + 17) + 26) |= 8u;
              *(*(a1 + 17) + 26) |= 0x10u;
              *(*(a1 + 17) + 26) |= 0x40u;
              *(*(a1 + 17) + 27) |= 1u;
              *(*(a1 + 17) + 27) |= 2u;
              *(*(a1 + 17) + 27) |= 0x20u;
              *(*(a1 + 17) + 27) |= 0x40u;
              *(*(a1 + 17) + 27) |= 0x80u;
              *(*(a1 + 17) + 28) |= 1u;
              *(*(a1 + 17) + 26) |= 0x80u;
              *(*(a1 + 17) + 27) |= 4u;
              *(*(a1 + 17) + 28) |= 8u;
              *(*(a1 + 17) + 27) |= 8u;
              *(*(a1 + 17) + 27) |= 0x10u;
              *(*(a1 + 17) + 28) |= 2u;
              *(*(a1 + 17) + 28) |= 4u;
              *(*(a1 + 17) + 29) |= 8u;
              *(*(a1 + 17) + 28) |= 0x10u;
              *(*(a1 + 17) + 29) |= 0x40u;
              *(*(a1 + 17) + 29) |= 0x80u;
              *(*(a1 + 17) + 31) |= 8u;
              v4 = AppleBCMWLANNANInterface::setNAN_EventMask(a1, (*(a1 + 17) + 24));
              *(*(a1 + 17) + 88) = 1;
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_INIT(uint64_t a1)
{
  return AppleBCMWLANNANInterface::setNAN_INIT((a1 - 112));
}

{
  return AppleBCMWLANNANInterface::setNAN_INIT((a1 - 128));
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_COMMITTED_AVAILABILITY()
{
  return 3758097095;
}

{
  return 3758097095;
}

uint64_t AppleBCMWLANNANInterface::setNAN_COMMITTED_AVAILABILITY(uint64_t *a1, int *a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  v6 = a2 + 6;
  if (*(a2 + 6) >= 3u)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_COMMITTED_AVAILABILITY(a1);
      }
    }

    goto LABEL_30;
  }

  if (!*(a2 + 6))
  {
LABEL_26:
    v7 = 0;
    goto LABEL_31;
  }

  v8 = 0;
  v9 = a2 + 2;
  v27 = v4 + 16;
  v28 = a1;
  v10 = (a2 + 22);
  while (1)
  {
    v11 = &v9[321 * v8];
    bzero(v5, 0x400uLL);
    v12 = *(v11 + 1);
    if (!*(v11 + 1))
    {
      v17 = a1[17] + 94;
      if (*(v17 + v8) == 1)
      {
        *(v17 + v8) = 0;
        AppleBCMWLANNANInterface::setNAN_RemoveCommittedAvailability(a1, v8);
      }

      goto LABEL_25;
    }

    if (v12 >= 0x11)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setNAN_COMMITTED_AVAILABILITY(a1);
        }
      }

      goto LABEL_30;
    }

    if (!*a2 && *(a2 + 2) == 0)
    {
      break;
    }

    v5[1] = 2;
    v14 = *a2;
    v5[6] = *(a2 + 2);
    *(v5 + 2) = v14;
    v15 = *(v11 + 1);
    *(v5 + 14) = v15;
    *(v5 + 4) = *(v11 + 2);
    if (v15)
    {
      goto LABEL_20;
    }

    v16 = 16;
LABEL_23:
    *v5 = v16;
    a1 = v28;
    v25 = AppleBCMWLANNANInterface::issueSetIOVAR(v28, 274, v5, v16);
    if (v25)
    {
      v7 = v25;
      if ((*(*v28 + 1088))(v28))
      {
        (*(*v28 + 1088))(v28);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setNAN_COMMITTED_AVAILABILITY(v28);
        }
      }

      goto LABEL_31;
    }

    *(*(v28 + 17) + v8 + 94) = 1;
    v9 = a2 + 2;
    v6 = a2 + 6;
LABEL_25:
    ++v8;
    v10 += 642;
    if (v8 >= *v6)
    {
      goto LABEL_26;
    }
  }

  v5[1] = 9;
  *(v5 + 14) = v12;
  *(v5 + 4) = *(v11 + 2);
LABEL_20:
  v18 = 0;
  v16 = 16;
  v19 = v10;
  v20 = v27;
  while (1)
  {
    *(v20 + 16) = 1025;
    *(v20 + 2) = *(v19 - 36);
    v21 = *(v19 - 2);
    *(v20 + 4) = v21;
    v22 = v21 | (*v19 << 8);
    *(v20 + 4) = v22;
    *(v20 + 4) = v22 | (*(v19 - 1) << 24);
    *(v20 + 14) = *(v19 - 70);
    v23 = *(v19 - 68);
    *(v20 + 15) = v23;
    *(v20 + 16) = (*(v19 - 69) << 6) | (16 * *(v19 - 76)) | 0x401;
    v24 = v23 + 18;
    if (v23 + 18 + v16 >= 0x401)
    {
      break;
    }

    *v20 = v24;
    memcpy((v20 + 18), v19 - 67, v23);
    v20 += v24;
    v16 += v24;
    ++v18;
    v19 += 40;
    if (v18 >= *(v5 + 14))
    {
      goto LABEL_23;
    }
  }

  if ((*(*v28 + 1088))(v28))
  {
    (*(*v28 + 1088))(v28);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::setNAN_COMMITTED_AVAILABILITY(v28);
    }
  }

LABEL_30:
  v7 = 6;
LABEL_31:
  IOFreeData();
  return v7;
}

uint64_t AppleBCMWLANNANInterface::setNAN_RemoveCommittedAvailability(AppleBCMWLANNANInterface *this, int a2)
{
  v9 = 0;
  v8 = a2;
  v7 = 536936464;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::setNAN_RemoveCommittedAvailability(this);
    }
  }

  v4 = AppleBCMWLANNANInterface::issueSetIOVAR(this, 274, &v7, 0x10u);
  if (v4)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        v6 = (*(*this + 1088))(this);
        CCLogStream::logAlert(v6, "[dk] %s@%d:ERROR: Unable to remove map %d from NAN availability, ret = %d\n", "setNAN_RemoveCommittedAvailability", 6777, a2, v4);
      }
    }
  }

  return v4;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_COMMITTED_AVAILABILITY(uint64_t a1, int *a2)
{
  return AppleBCMWLANNANInterface::setNAN_COMMITTED_AVAILABILITY((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_COMMITTED_AVAILABILITY((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::buildNAN_CommittedAvailability(AppleBCMWLANNANInterface *this, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 < 2)
  {
    v6 = a2 + 1284 * a4;
    v9 = *(v6 + 9);
    v8 = (v6 + 9);
    v7 = v9;
    if (v9 < 0x11)
    {
      v10 = a4;
      if (!v7)
      {
        v12 = *(this + 17) + 94;
        if (*(v12 + a4) == 1)
        {
          *(v12 + a4) = 0;
          AppleBCMWLANNANInterface::setNAN_RemoveCommittedAvailability(this, a4);
        }

        return 0;
      }

      if (*a2 | *(a2 + 4))
      {
        *(a3 + 2) = 2;
        v7 = *a2;
        *(a3 + 12) = *(a2 + 4);
        *(a3 + 8) = v7;
        LOBYTE(v7) = *v8;
      }

      else
      {
        *(a3 + 2) = 9;
      }

      *(a3 + 14) = v7;
      *(a3 + 4) = v8[1];
      if (*v8)
      {
        v13 = 0;
        v14 = a3 + 16;
        v15 = (a2 + 1284 * a4 + 88);
        v16 = 16;
        while (1)
        {
          *(v14 + 16) = 1025;
          *(v14 + 2) = *(v15 - 36);
          v17 = *(v15 - 2);
          *(v14 + 4) = v17;
          v18 = v17 | (*v15 << 8);
          *(v14 + 4) = v18;
          *(v14 + 4) = v18 | (*(v15 - 1) << 24);
          *(v14 + 12) = 0;
          *(v14 + 14) = *(v15 - 70);
          v19 = *(v15 - 68);
          *(v14 + 15) = v19;
          *(v14 + 16) = (*(v15 - 69) << 6) | (16 * *(v15 - 76)) | 0x401;
          v20 = v19 + 18;
          if (v19 + 18 + v16 >= 0x401)
          {
            break;
          }

          *v14 = v20;
          memcpy((v14 + 18), v15 - 67, v19);
          v14 += v20;
          v16 += v20;
          ++v13;
          v15 += 40;
          if (v13 >= *v8)
          {
            goto LABEL_22;
          }
        }

        if ((*(*this + 1088))(this))
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::buildNAN_CommittedAvailability(this);
          }
        }

        return 6;
      }

      else
      {
        v16 = 16;
LABEL_22:
        *a3 = v16;
        *(*(this + 17) + v10 + 94) = 1;
        return v16;
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
          AppleBCMWLANNANInterface::buildNAN_CommittedAvailability(this);
          return 0;
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
        AppleBCMWLANNANInterface::buildNAN_CommittedAvailability(this);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNANInterface::setNAN_POTENTIAL_AVAILABILITYInternal(uint64_t *a1, _BYTE *a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  if (*a2 <= 2u)
  {
    if (*a2)
    {
      v7 = 0;
      v8 = a2 + 2;
      v9 = v4 + 16;
      v10 = (a2 + 88);
      v11 = a2 + 4;
      v30 = a1;
      __src = a2 + 21;
      v25 = v4 + 16;
      v26 = a2 + 2;
      v27 = a2;
      while (1)
      {
        v29 = v7;
        v12 = &v8[1290 * v7];
        bzero(v5, 0x400uLL);
        LODWORD(v13) = v12[8];
        if (v12[8])
        {
          v14 = 8;
        }

        else
        {
          v14 = 8200;
        }

        v5[1] = v14;
        *(v5 + 14) = v13;
        *(v5 + 4) = *v12;
        v28 = v10;
        if (v13)
        {
          v15 = 0;
          v16 = 16;
          while (1)
          {
            *(v9 + 16) = 1026;
            *(v9 + 2) = *(v10 - 36);
            v17 = *(v10 - 2);
            *(v9 + 4) = v17;
            v18 = v17 | (*v10 << 8);
            *(v9 + 4) = v18;
            *(v9 + 4) = v18 | (*(v10 - 1) << 24);
            *(v9 + 14) = *(v10 - 70);
            v19 = *(v10 - 68);
            *(v9 + 15) = v19;
            *(v9 + 16) = (*(v10 - 69) << 6) | (16 * *(v10 - 76)) | 0x402;
            v20 = v19 + 18;
            if (v19 + 18 + v16 >= 0x401)
            {
              break;
            }

            *v9 = v20;
            memcpy((v9 + 18), v10 - 67, v19);
            v9 += v20;
            v16 += v20;
            ++v15;
            v13 = *(v5 + 14);
            v10 += 40;
            if (v15 >= v13)
            {
              goto LABEL_19;
            }
          }

          if ((*(*v30 + 1088))(v30))
          {
            (*(*v30 + 1088))(v30);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::setNAN_POTENTIAL_AVAILABILITYInternal(v30);
            }
          }

          goto LABEL_33;
        }

        v16 = 16;
LABEL_19:
        *(v5 + 14) = v12[1] + v13;
        if (v12[1])
        {
          v21 = 0;
          v22 = __src;
          while (1)
          {
            *(v9 + 4) = v11[v21];
            *(v9 + 16) |= 0x112u;
            v23 = *(v9 + 15) + 18;
            if (v23 + v16 >= 0x401)
            {
              break;
            }

            *v9 = v23;
            memcpy((v9 + 18), v22, *(v22 - 1));
            v9 += v23;
            v16 += v23;
            ++v21;
            v22 += 80;
            if (v21 >= v12[1])
            {
              goto LABEL_23;
            }
          }

          if ((*(*v30 + 1088))(v30))
          {
            (*(*v30 + 1088))(v30);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::setNAN_POTENTIAL_AVAILABILITYInternal(v30);
            }
          }

LABEL_33:
          v6 = 6;
          goto LABEL_34;
        }

LABEL_23:
        *v5 = v16;
        v6 = AppleBCMWLANNANInterface::issueSetIOVAR(v30, 274, v5, v16);
        if (v6)
        {
          break;
        }

        v7 = v29 + 1;
        v10 = v28 + 645;
        v11 += 1290;
        __src += 1290;
        v9 = v25;
        v8 = v26;
        if (v29 + 1 >= *v27)
        {
          goto LABEL_34;
        }
      }

      if ((*(*v30 + 1088))(v30))
      {
        (*(*v30 + 1088))(v30);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setNAN_POTENTIAL_AVAILABILITYInternal(v30);
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_POTENTIAL_AVAILABILITYInternal(a1);
      }
    }

    v6 = 22;
  }

LABEL_34:
  IOFreeData();
  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_POTENTIAL_AVAILABILITY(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::setNAN_POTENTIAL_AVAILABILITYInternal((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_POTENTIAL_AVAILABILITYInternal((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_NDC_AVAILABILITY(uint64_t *a1, _BYTE *a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  if (*a2 > 2u)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_NDC_AVAILABILITY(a1);
      }
    }

    v6 = 22;
    goto LABEL_29;
  }

  if (!*a2)
  {
LABEL_25:
    v6 = 0;
    goto LABEL_29;
  }

  v7 = 0;
  v8 = a2 + 15;
  while (1)
  {
    bzero(v5, 0x400uLL);
    v9 = *(v8 - 6) ? 16387 : 3;
    *(v5 + 2) = v9;
    *(v5 + 14) = 1;
    *(v5 + 4) = v7;
    *(v5 + 5) = v7;
    v10 = *(v8 - 13);
    *(v5 + 12) = *(v8 - 9);
    *(v5 + 8) = v10;
    *(v5 + 32) = 1;
    *(v5 + 18) = *(v8 - 5);
    *(v5 + 30) = *(v8 - 3);
    v11 = *(v8 - 1);
    *(v5 + 31) = v11;
    *(v5 + 32) = (*(v8 - 2) << 6) | 1;
    v12 = v11 + 18;
    *(v5 + 16) = v11 + 18;
    memcpy((v5 + 34), v8, v11);
    if (v11 == 2)
    {
      if (*(v5 + 34) || *(v5 + 35))
      {
        goto LABEL_23;
      }
    }

    else if (v11 != 1 || *(v5 + 34))
    {
      goto LABEL_23;
    }

    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_NDC_AVAILABILITY(a1);
      }
    }

    *(v5 + 2) |= 0x2000u;
    v12 = *(v5 + 16);
LABEL_23:
    *v5 = v12 + 16;
    v13 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 274, v5, (v12 + 16));
    if (v13)
    {
      break;
    }

    ++v7;
    v8 += 78;
    if (v7 >= *a2)
    {
      goto LABEL_25;
    }
  }

  v6 = v13;
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::setNAN_NDC_AVAILABILITY(a1);
    }
  }

LABEL_29:
  IOFreeData();
  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_NDC_AVAILABILITY(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::setNAN_NDC_AVAILABILITY((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_NDC_AVAILABILITY((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_IMMUTABLE_AVAILABILITY(AppleBCMWLANNANInterface *a1, _BYTE *a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  if (*a2 <= 2u)
  {
    if (*a2)
    {
      v7 = 0;
      v8 = a2 + 9;
      while (1)
      {
        bzero(v5, 0x400uLL);
        v5[1] = 4;
        *(v5 + 14) = 1;
        *(v5 + 4) = v7;
        v5[16] = 1;
        v5[9] = *(v8 - 5);
        *(v5 + 30) = *(v8 - 3);
        v9 = *(v8 - 1);
        *(v5 + 31) = v9;
        v5[16] = (*(v8 - 2) << 6) | 1;
        v5[8] = v9 + 18;
        memcpy(v5 + 17, v8, v9);
        *v5 = v9 + 34;
        v10 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 274, v5, v9 + 34);
        if (v10)
        {
          break;
        }

        ++v7;
        v8 += 72;
        if (v7 >= *a2)
        {
          goto LABEL_12;
        }
      }

      v6 = v10;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setNAN_IMMUTABLE_AVAILABILITY(a1);
        }
      }
    }

    else
    {
LABEL_12:
      v6 = 0;
    }
  }

  else
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_IMMUTABLE_AVAILABILITY(a1);
      }
    }

    v6 = 22;
  }

  IOFreeData();
  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_IMMUTABLE_AVAILABILITY(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::setNAN_IMMUTABLE_AVAILABILITY((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_IMMUTABLE_AVAILABILITY((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANGING_AVAILABILITY(AppleBCMWLANNANInterface *a1, _BYTE *a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  if (*a2 <= 2u)
  {
    if (*a2)
    {
      v7 = 0;
      v8 = a2 + 9;
      while (1)
      {
        bzero(v5, 0x400uLL);
        v5[1] = 7;
        *(v5 + 14) = 1;
        *(v5 + 4) = v7;
        v5[16] = 1;
        v5[9] = *(v8 - 5);
        *(v5 + 30) = *(v8 - 3);
        v9 = *(v8 - 1);
        *(v5 + 31) = v9;
        v5[16] = (*(v8 - 2) << 6) | 1;
        v5[8] = v9 + 18;
        memcpy(v5 + 17, v8, v9);
        *v5 = v9 + 34;
        v10 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 274, v5, v9 + 34);
        if (v10)
        {
          break;
        }

        ++v7;
        v8 += 72;
        if (v7 >= *a2)
        {
          goto LABEL_12;
        }
      }

      v6 = v10;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setNAN_RANGING_AVAILABILITY(a1);
        }
      }
    }

    else
    {
LABEL_12:
      v6 = 0;
    }
  }

  else
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_RANGING_AVAILABILITY(a1);
      }
    }

    v6 = 22;
  }

  IOFreeData();
  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_RANGING_AVAILABILITY(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::setNAN_RANGING_AVAILABILITY((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_RANGING_AVAILABILITY((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getNAN_DEVICE_CAPABILITY(uint64_t *a1, uint64_t a2)
{
  v19 = 0;
  v4 = (*(**(a1[17] + 64) + 88))(*(a1[17] + 64));
  if ((*(*v4 + 136))(v4))
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      v5 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::getNAN_DEVICE_CAPABILITY(a1);
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v18[0] = &v19 + 4;
    v18[1] = 0x400040004;
    v6 = AppleBCMWLANCommander::runIOVarGet(*(a1[17] + 72), "txchain", &kNoTxPayload, v18, 0);
    if (v6)
    {
      v5 = v6;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::getNAN_DEVICE_CAPABILITY(a1);
        }
      }
    }

    else
    {
      v17[0] = &v19;
      v17[1] = 0x400040004;
      v5 = AppleBCMWLANCommander::runIOVarGet(*(a1[17] + 72), "rxchain", &kNoTxPayload, v17, 0);
      if (v5)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::getNAN_DEVICE_CAPABILITY(a1);
          }
        }
      }

      else
      {
        v7 = BYTE4(v19);
        *(a2 + 1) = v19;
        *a2 = v7;
        *(a2 + 2) = !AppleBCMWLANCore::isSupportedPhyMode11nOnly(*(a1[17] + 64));
        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v20 = v8;
        *&v20[16] = v8;
        memset(v16, 170, 20);
        (*(**(a1[17] + 64) + 864))(*(a1[17] + 64), v20);
        *(a2 + 22) = *&v20[9];
        if (!(*(**(a1[17] + 64) + 880))(*(a1[17] + 64), v16))
        {
          *(a2 + 14) = vzip2_s16(*(&v16[1] + 2), vzip1_s16(*(&v16[1] + 2), vdup_lane_s16(*(&v16[1] + 2), 0)));
        }

        *(a2 + 40) = AppleBCMWLANCore::getSupportedMaxBW(*(a1[17] + 64));
        if (AppleBCMWLANCore::isDualBand(*(a1[17] + 64)))
        {
          v9 = 20;
        }

        else
        {
          v9 = 4;
        }

        *(a2 + 3) = v9;
        if (!AppleBCMWLANNANInterface::getNAN_FwCapability(a1))
        {
          *(a2 + 6) = *a1[17];
        }

        *(a2 + 8) = *(a1[17] + 56);
        *(a2 + 7) = *(a1[17] + 57);
        *(a2 + 9) = *(a1[17] + 58);
        *(a2 + 10) = *(a1[17] + 59);
        *(a2 + 11) = *(a1[17] + 60);
        *(a2 + 12) = *(a1[17] + 61);
        Bus = AppleBCMWLANCore::getBus(*(a1[17] + 64));
        v12 = (*(*Bus + 368))(Bus, v11);
        v13 = (*(*a1 + 1088))(a1);
        if (v12 == 4378)
        {
          if (v13)
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::getNAN_DEVICE_CAPABILITY(a1);
            }
          }

          v14 = 0;
        }

        else
        {
          if (v13)
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::getNAN_DEVICE_CAPABILITY(a1);
            }
          }

          v14 = *(a1[17] + 248);
        }

        *(a2 + 13) = v14;
      }
    }
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::getNAN_DEVICE_CAPABILITY(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::getNAN_DEVICE_CAPABILITY((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::getNAN_DEVICE_CAPABILITY((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DP_REQ(uint64_t *a1, uint64_t a2)
{
  if (*a2)
  {
    LODWORD(v4) = 42;
  }

  else
  {
    LODWORD(v4) = 34;
  }

  v5 = *(a2 + 2072);
  if (*(a2 + 2072))
  {
    if (v5 > 0xFFFC)
    {
      return 22;
    }

    LODWORD(v4) = ((v5 + 3) & 0x1FFFC) + v4 + ((v5 + 6) & 0x1FFFC) + 4;
  }

  if (*(a2 + 2074))
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_DP_REQ(a1);
      }
    }

    if (*(a2 + 2074) == 3)
    {
      v6 = 76;
    }

    else
    {
      v6 = 56;
    }

    LODWORD(v4) = v6 + v4;
    if (*(a1[17] + 92) == 1 && *(a2 + 2152))
    {
      LODWORD(v4) = v4 + 8;
    }
  }

  v30 = 0;
  v7 = *(a2 + 2128);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5 != 0;
  }

  if (v7)
  {
    v9 = v4 + 8;
  }

  else
  {
    v9 = v4;
  }

  v10 = v9 + 4;
  if (v8)
  {
    v4 = v10;
  }

  else
  {
    v4 = v4;
  }

  if (v4 > 0xC00)
  {
    return 22;
  }

  v12 = IOMallocZeroData();
  if (!v12)
  {
    return 12;
  }

  v13 = v12;
  *v12 = 0;
  *(v12 + 1) = *(a2 + 2);
  v14 = *(v12 + 2) | (2 * (*(a2 + 10) != 0));
  *(v12 + 2) = v14;
  v15 = *(a2 + 11);
  *(v12 + 20) = *(a2 + 15);
  *(v12 + 16) = v15;
  v16 = *(a2 + 17);
  *(v12 + 8) = *(a2 + 21);
  *(v12 + 4) = v16;
  *(v12 + 30) = 0;
  *(v12 + 32) = -1;
  if (*a2)
  {
    *(v12 + 34) = 65805;
    *(v12 + 38) = *a2;
    v17 = (v12 + 42);
  }

  else
  {
    v17 = (v12 + 34);
  }

  if (*(a2 + 2072))
  {
    *(v12 + 2) = v14 | 1;
    *v17 = 769;
    v18 = *(a2 + 2072);
    *(v17 + 1) = v18;
    v19 = v17 + 4;
    memcpy(v19, (a2 + 24), v18);
    v17 = &v19[(v18 + 3) & 0x1FFFC];
  }

  if (*(a2 + 2074))
  {
    v13[1] |= 8u;
    *v17 = 65800;
    v17[4] = *(a2 + 2074);
    *(v17 + 2) = 393479;
    v20 = *(a2 + 4);
    *(v17 + 8) = *(a2 + 8);
    *(v17 + 3) = v20;
    *(v17 + 5) = 2097417;
    v21 = *(a2 + 2075);
    *(v17 + 40) = *(a2 + 2091);
    *(v17 + 24) = v21;
    if (*(a2 + 2074) == 3)
    {
      *(v17 + 14) = 1048842;
      *(v17 + 60) = *(a2 + 2136);
      v17 += 76;
    }

    else
    {
      v17 += 56;
    }

    if (*(a1[17] + 92) == 1 && *(a2 + 2152))
    {
      *v17 = 65808;
      v17[4] = 5;
      v17 += 8;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setNAN_DP_REQ(a1);
          if (!v8)
          {
            goto LABEL_53;
          }

LABEL_48:
          *v17 = 784;
          v22 = v17 + 4;
          if (v7)
          {
            v17[4] = 0;
            *(v17 + 5) = 8;
            *(v17 + 7) = *(a2 + 2128);
            v22 = v17 + 15;
            LOWORD(v7) = 11;
          }

          v23 = *(a2 + 2072);
          if (*(a2 + 2072))
          {
            *v22 = 1;
            *(v22 + 1) = v23;
            memcpy(v22 + 3, (a2 + 24), v23);
            LOWORD(v7) = v7 + v23 + 3;
          }

          *(v17 + 1) = v7;
          goto LABEL_53;
        }
      }
    }

    else if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        v28 = (*(*a1 + 1088))(a1);
        CCLogStream::logAlert(v28, "[dk] %s@%d:DPReq-legacy: fNANGTKenable:%d gtk_required:%d, cipher_suite_id is %d, Not setting SEC_GTK_CSID \n", "setNAN_DP_REQ", 7308, *(a1[17] + 92), *(a2 + 2152), *(a2 + 2074));
        if (!v8)
        {
          goto LABEL_53;
        }

        goto LABEL_48;
      }
    }
  }

  if (v8)
  {
    goto LABEL_48;
  }

LABEL_53:
  v29 = 0;
  IOParseBootArgNumber("wlan.enableNANDebug", &v29, 4);
  if (v29)
  {
    v24 = 0;
    v25 = v13;
    do
    {
      v26 = *(a1[17] + 80);
      IO80211Hexdump();
      v24 += 32;
      v25 += 16;
    }

    while (v24 < v4);
  }

  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 1284, v13, v4);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_DP_REQ(a1);
      }
    }
  }

  IOFreeData();
  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_DP_REQ(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_DP_REQ((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_DP_REQ((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DP_RESP(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 2082))
  {
    v2 = ((*(a2 + 2082) + 3) & 0x1FFFC) + 46;
  }

  else
  {
    v2 = 42;
  }

  if (*(a2 + 2124) == 3)
  {
    v3 = 76;
  }

  else
  {
    v3 = 56;
  }

  if (*(a2 + 2124))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v2 + v4;
  if ((v2 + v4) > 0xC00)
  {
    return 22;
  }

  v9 = IOMallocZeroData();
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  *v9 = 0;
  v11 = *(a2 + 1);
  if (*(a2 + 1))
  {
    if (v11 == 2)
    {
      *(v9 + 1) = 0;
    }

    else if (v11 == 1)
    {
      *(v9 + 1) = 1;
    }
  }

  else
  {
    *(v9 + 1) = 1;
    *(v9 + 24) |= 0x10u;
  }

  *(v9 + 2) = *(a2 + 3);
  *(v9 + 3) = *a2;
  v12 = *(a2 + 10);
  *(v9 + 16) = *(a2 + 14);
  *(v9 + 12) = v12;
  v13 = *(a2 + 22);
  *(v9 + 22) = *(a2 + 26);
  *(v9 + 18) = v13;
  *(v9 + 26) = 0;
  *(v9 + 28) = 17760255;
  *(v9 + 32) = 6;
  v14 = *(a2 + 10);
  *(v9 + 38) = *(a2 + 14);
  *(v9 + 34) = v14;
  v15 = v9 + 42;
  if (*(a2 + 2082))
  {
    *(v9 + 24) |= 1u;
    *(v9 + 42) = 769;
    v16 = *(a2 + 2082);
    *(v9 + 44) = v16;
    memcpy((v9 + 46), (a2 + 34), v16);
    v15 += ((v16 + 3) & 0x1FFFC) + 4;
  }

  if (*(a2 + 2124))
  {
    v10[12] |= 8u;
    *v15 = 264;
    *(v15 + 2) = 1;
    *(v15 + 4) = *(a2 + 2124);
    *(v15 + 8) = 393479;
    v17 = *(a2 + 4);
    *(v15 + 16) = *(a2 + 8);
    *(v15 + 12) = v17;
    *(v15 + 20) = 2097417;
    v18 = *(a2 + 2125);
    *(v15 + 40) = *(a2 + 2141);
    *(v15 + 24) = v18;
    if (*(a2 + 2124) == 3)
    {
      *(v15 + 56) = 1048842;
      *(v15 + 60) = *(a2 + 2157);
    }
  }

  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 1285, v10, v5);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_DP_RESP(a1);
      }
    }
  }

  IOFreeData();
  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_DP_RESP(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_DP_RESP((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_DP_RESP((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DP_END(AppleBCMWLANNANInterface *a1, uint64_t a2)
{
  v6[0] = *a2;
  v3 = *(a2 + 8);
  v6[1] = *(a2 + 4);
  v7 = v3;
  v8 = *(a2 + 12);
  v4 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 1286, v6, 8u);
  if (v4)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_DP_END(a1);
      }
    }
  }

  return v4;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_DP_END(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_DP_END((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_DP_END((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DP_CONF(AppleBCMWLANNANInterface *this, _BYTE *a2)
{
  v6 = 0;
  LOBYTE(v6) = *a2;
  v3 = a2[1];
  if (v3 == 1)
  {
    goto LABEL_4;
  }

  if (v3 == 2)
  {
    LOBYTE(v3) = 0;
LABEL_4:
    BYTE1(v6) = v3;
  }

  v4 = AppleBCMWLANNANInterface::issueSetIOVAR(this, 1294, &v6, 4u);
  if (v4)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_DP_CONF(this);
      }
    }
  }

  return v4;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_DP_CONF(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::setNAN_DP_CONF((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_DP_CONF((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANGING_REQUEST(uint64_t *a1, int *a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  v6 = *a2;
  *(v4 + 2) = *(a2 + 2);
  *v4 = v6;
  v4[6] = *(a2 + 6);
  *(v4 + 8) = *(a2 + 3);
  v4[7] = a2[2];
  IOVAR = AppleBCMWLANNANInterface::issueGetIOVAR(a1, 1793, v4, 0x1Cu);
  if (IOVAR)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_RANGING_REQUEST(a1);
      }
    }
  }

  else
  {
    *(a2 + 28) = *v5;
  }

  IOFreeData();
  return IOVAR;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_RANGING_REQUEST(uint64_t a1, int *a2)
{
  return AppleBCMWLANNANInterface::setNAN_RANGING_REQUEST((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_RANGING_REQUEST((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANGING_RESPONSE(AppleBCMWLANNANInterface *a1, char *a2)
{
  v5 = *a2;
  v3 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 1794, &v5, 1u);
  if (v3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_RANGING_RESPONSE(a1);
      }
    }
  }

  return v3;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_RANGING_RESPONSE(uint64_t a1, char *a2)
{
  return AppleBCMWLANNANInterface::setNAN_RANGING_RESPONSE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_RANGING_RESPONSE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_RANGING_CANCEL(AppleBCMWLANNANInterface *a1, char *a2)
{
  v5 = *a2;
  v3 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 1796, &v5, 1u);
  if (v3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_RANGING_CANCEL();
      }
    }
  }

  return v3;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_RANGING_CANCEL(uint64_t a1, char *a2)
{
  return AppleBCMWLANNANInterface::setNAN_RANGING_CANCEL((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_RANGING_CANCEL((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD(uint64_t *a1, uint64_t a2)
{
  if (*(a1[17] + 248) == 1)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD(a1);
      }
    }

    return 0;
  }

  else if (a2 && *(a2 + 260))
  {
    v5 = *(a2 + 260) + 8;
    v6 = IOMallocZeroData();
    if (v6)
    {
      v7 = v6;
      *v6 = *a2;
      v8 = *(a2 + 260);
      *(v6 + 4) = v8;
      memcpy((v6 + 8), (a2 + 4), v8);
      v3 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 283, v7, v5);
      if (v3)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD(a1);
          }
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
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD(a1);
      }
    }

    return 22;
  }

  return v3;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD_COMPACT(AppleBCMWLANNANInterface *a1, uint64_t a2)
{
  if (*(*(a1 + 17) + 248))
  {
    if (a2 && *(a2 + 260))
    {
      v4 = *(a2 + 260) + 8;
      v5 = IOMallocZeroData();
      if (v5)
      {
        v6 = v5;
        *v5 = *a2;
        v7 = *(a2 + 260);
        *(v5 + 4) = v7;
        memcpy((v5 + 8), (a2 + 4), v7);
        v8 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 283, v6, v4);
        if (v8)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD_COMPACT(a1);
            }
          }
        }

        IOFreeData();
      }

      else
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD_COMPACT(a1);
          }
        }

        return 12;
      }
    }

    else
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD_COMPACT(a1);
        }
      }

      return 22;
    }
  }

  else
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD_COMPACT(a1);
      }
    }

    return 0;
  }

  return v8;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD_COMPACT(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD_COMPACT((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_VENDOR_PAYLOAD_COMPACT((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_ADDITIONAL_ATTR(uint64_t *a1, uint64_t a2)
{
  if ((*(a1[17] + 248) & 1) == 0)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_ADDITIONAL_ATTR(a1);
      }
    }

    return 22;
  }

  if (!a2 || (v4 = *(a2 + 260), !*(a2 + 260)))
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_ADDITIONAL_ATTR(a1);
      }
    }

    return 22;
  }

  if (v4 < 3)
  {
    v5 = 0;
    v6 = 0;
LABEL_6:
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        v7 = (*(*a1 + 1088))(a1);
        CCLogStream::logAlert(v7, "[dk] %s@%d:%s:%d invalid attr_count %u, out_offset:%u \n", "setNAN_ADDITIONAL_ATTR", 7749, "setNAN_ADDITIONAL_ATTR", 7749, v6, v5);
      }
    }

    return 22;
  }

  v5 = 0;
  v6 = 0;
  LOWORD(v10) = 0;
  v11 = a2 + 4;
  v12 = a2 + 4;
  while (1)
  {
    v10 = v10 + (*(v12 + 1) + 3);
    if (v10 > v4)
    {
      break;
    }

    v5 += (*(v12 + 1) + 3) + 4;
    v12 += (*(v12 + 1) + 3);
    ++v6;
    if (v10 + 3 > v4)
    {
      goto LABEL_23;
    }
  }

  if (!(*(*a1 + 1088))(a1) || ((*(*a1 + 1088))(a1), !CCLogStream::shouldLog()))
  {
LABEL_23:
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v22 = (*(*a1 + 1088))(a1);
  CCLogStream::logAlert(v22, "[dk] %s@%d:%s:%d payloadLen + attrLen %u, exceeds body_len:%u \n", "setNAN_ADDITIONAL_ATTR", 7737, "setNAN_ADDITIONAL_ATTR", 7737, v10, *(a2 + 260));
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_24:
  if (!v5)
  {
    goto LABEL_6;
  }

  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      v23 = (*(*a1 + 1088))(a1);
      CCLogStream::logAlert(v23, "[dk] %s@%d:%s:%d estimated_len:%u payload->body_len:%u attr_count:%u\n", "setNAN_ADDITIONAL_ATTR", 7753, "setNAN_ADDITIONAL_ATTR", 7753, v5, *(a2 + 260), v6);
    }
  }

  v13 = IOMallocZeroData();
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    if (*(a2 + 260) >= 3u)
    {
      v16 = 0;
      v15 = v13;
      while (1)
      {
        v17 = *(v11 + 1);
        v18 = v17 + 3;
        if (v17 == 0xFFFD)
        {
          break;
        }

        *v15 = 4;
        v19 = v15 + 4;
        memcpy(v19, v11, (v17 + 3));
        v11 += v18;
        v16 += v18;
        v15 = &v19[v18];
        if (v16 + 3 > *(a2 + 260))
        {
          goto LABEL_41;
        }
      }

      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setNAN_ADDITIONAL_ATTR(a1);
        }
      }
    }

LABEL_41:
    v25 = 0;
    IOParseBootArgNumber("wlan.enableNANDebug", &v25, 4);
    if (v25)
    {
      for (i = 0; i < v5; i += 32)
      {
        v21 = *(a1[17] + 80);
        IO80211Hexdump();
      }
    }

    if (v15 - v14 == v5)
    {
      v8 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 2052, v14, v5);
      if (v8)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::setNAN_ADDITIONAL_ATTR(a1);
          }
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
          v24 = (*(*a1 + 1088))(a1);
          CCLogStream::logAlert(v24, "[dk] %s@%d:%s:%d ERROR: Mismatch: filled length %u, estimated length %u\n", "setNAN_ADDITIONAL_ATTR", 7806, "setNAN_ADDITIONAL_ATTR", 7806, v15 - v14, v5);
        }
      }

      v8 = 22;
    }

    IOFreeData();
  }

  else
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_ADDITIONAL_ATTR(a1);
      }
    }

    return 12;
  }

  return v8;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_ADDITIONAL_ATTR(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_ADDITIONAL_ATTR((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_ADDITIONAL_ATTR((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_SCHEDULE_UPDATE(AppleBCMWLANNANInterface *this, _BYTE *a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (*a2 && (BYTE1(v10) = 1, v4 = AppleBCMWLANNANInterface::issueSetIOVAR(this, 1287, &v10, 0x18u), v4))
  {
    v5 = v4;
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_SCHEDULE_UPDATE(this);
      }
    }
  }

  else if (a2[1])
  {
    v6 = 0;
    for (i = a2 + 2; ; i += 6)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      *(&v10 + 2) = *i;
      HIWORD(v10) = *(i + 2);
      v8 = AppleBCMWLANNANInterface::issueSetIOVAR(this, 1287, &v10, 0x18u);
      if (v8)
      {
        break;
      }

      if (++v6 >= a2[1])
      {
        return 0;
      }
    }

    v5 = v8;
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_SCHEDULE_UPDATE(this);
      }
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_SCHEDULE_UPDATE(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANNANInterface::setNAN_SCHEDULE_UPDATE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_SCHEDULE_UPDATE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_ELECTION_ROLE(AppleBCMWLANNANInterface *a1, uint64_t a2)
{
  v5 = -1431655766;
  v6 = *(a2 + 4);
  *v7 = *(a2 + 20);
  *&v7[12] = *(a2 + 32);
  LOBYTE(v5) = *a2;
  v3 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 258, &v5, 0x30u);
  if (v3)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_ELECTION_ROLE(a1);
      }
    }
  }

  return v3;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_ELECTION_ROLE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_ELECTION_ROLE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_ELECTION_ROLE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_FAST_DISCOVERY(AppleBCMWLANNANInterface *a1, uint64_t a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  *(*(a1 + 17) + 12) = *(*(a1 + 17) + 12) & 0xFFEFFFFF | ((*a2 != 0) << 20);
  v6 = AppleBCMWLANNANInterface::setNAN_ControlBits(a1, (*(a1 + 17) + 12));
  if (v6)
  {
    v7 = v6;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_FAST_DISCOVERY(a1);
      }
    }
  }

  else
  {
    v19 = *(a2 + 4);
    (*(*a1 + 1984))(a1, &v19);
    if (*(a2 + 8))
    {
      v8 = 0;
      v9 = 0;
      v10 = (a2 + 17);
      v11 = v5;
      while (1)
      {
        v12 = *(v10 - 1);
        v13 = v12 + 7;
        v14 = v12 + ((v12 + 7) & 0x1FC) + 8;
        if (v14 + v9 >= 0x400)
        {
          break;
        }

        *v11 = 271;
        v11[1] = v12 + 4;
        *(v11 + 4) = v8;
        v15 = *(v10 - 1);
        *(v11 + 5) = v15;
        memcpy(v11 + 4, v10, v15);
        v16 = (v13 & 0x1FC) + 4;
        v11 = (v11 + v16);
        v9 += v16;
        ++v8;
        v10 += 72;
        if (v8 >= *(a2 + 8))
        {
          v7 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 284, v5, v9);
          if (v7)
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANNANInterface::setNAN_FAST_DISCOVERY(a1);
              }
            }
          }

          goto LABEL_20;
        }
      }

      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          v18 = (*(*a1 + 1088))(a1);
          CCLogStream::logAlert(v18, "[dk] %s@%d:ERROR: No space available in buffer, required %d, used %d, max %d", "setNAN_FAST_DISCOVERY", 7910, v14, v9, 1024);
        }
      }

      v7 = 28;
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_20:
  IOFreeData();
  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_FAST_DISCOVERY(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_FAST_DISCOVERY((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_FAST_DISCOVERY((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNAN_DATA_PATH_RESTORE(uint64_t *a1, uint64_t a2)
{
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::setNAN_DATA_PATH_RESTORE(a1);
    }
  }

  v4 = (*(*a1 + 1088))(a1);
  if (a2)
  {
    if (v4)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_DATA_PATH_RESTORE(a1);
      }
    }

    v5 = *(a1[17] + 80);
    v6 = a2 + 8;
    v7 = *(a2 + 4);
    IO80211HexdumpIf();
    v8 = *(a2 + 4);
    if (v8)
    {
      v9 = 0;
      v10 = (a2 + 8);
      while ((*v10 & 0xFFFE) == 2)
      {
        v11 = v10[1];
        v9 += ((v11 + 3) & 0x1FFFC) + 4;
        v10 = (v10 + v11 + 4);
        if (v8 <= v10 - v6)
        {
          goto LABEL_17;
        }
      }

      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setNAN_DATA_PATH_RESTORE(a1);
        }
      }

      return 22;
    }

    else
    {
LABEL_17:
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setNAN_DATA_PATH_RESTORE(a1);
        }
      }

      v13 = IOMallocZeroData();
      if (v13)
      {
        v14 = v13;
        if (*(a2 + 4))
        {
          v15 = 0;
          v16 = v13;
          v17 = (a2 + 8);
          while (1)
          {
            v18 = *v17;
            if (v18 == 2)
            {
              v19 = 2593;
            }

            else
            {
              if (v18 != 3)
              {
                if ((*(*a1 + 1088))(a1))
                {
                  (*(*a1 + 1088))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANNANInterface::setNAN_DATA_PATH_RESTORE(a1);
                  }
                }

                v12 = 22;
                goto LABEL_46;
              }

              v19 = 2594;
            }

            *v16 = v19;
            v20 = v17[1];
            v16[1] = v20;
            memcpy(v16 + 2, v17 + 2, v20);
            v17 = (v17 + v17[1] + 4);
            v21 = (v20 + 7) & 0x1FFFC;
            v16 = (v16 + v21);
            v15 += v21;
            if (*(a2 + 4) <= (v17 - v6))
            {
              goto LABEL_35;
            }
          }
        }

        v15 = 0;
LABEL_35:
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::setNAN_DATA_PATH_RESTORE(a1);
          }
        }

        v12 = AppleBCMWLANNANInterface::issueSetIOVAR(a1, 2592, v14, v15);
        if (v12)
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANNANInterface::setNAN_DATA_PATH_RESTORE(a1);
            }
          }
        }

LABEL_46:
        IOFreeData();
      }

      else
      {
        return 12;
      }
    }
  }

  else
  {
    if (v4)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANNANInterface::setNAN_DATA_PATH_RESTORE(a1);
      }
    }

    return 0;
  }

  return v12;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_DATA_PATH_RESTORE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_DATA_PATH_RESTORE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_DATA_PATH_RESTORE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    if (v3 == 1)
    {
      v5 = a1 + 17;
      if (*(a1[17] + 96))
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::setCOMPANION_SKYWALK_IF_CREATE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, (a1 + 17));
          }
        }

        v6 = (*(**(*v5 + 96) + 160))(*(*v5 + 96));
        snprintf((a2 + 8), 0x10uLL, "%s", v6);
      }

      else
      {
        v23 = 0;
        *v24 = 0;
        v25 = 0;
        v12 = (*(*a1 + 1072))(a1);
        LOBYTE(v23) = v12;
        v13.i64[0] = 0xFFFFFFFFFFFFLL;
        v13.i64[1] = 0xFFFFFFFFFFFFLL;
        v14 = vandq_s8(vdupq_n_s64(v12), v13);
        v15 = vmovn_s64(vshlq_u64(v14, xmmword_10033C2B0));
        v16 = vshlq_u64(v14, xmmword_10033C2A0);
        *v16.i8 = vmovn_s64(v16);
        v16.i16[1] = v16.i16[2];
        v16.i16[2] = v15.i16[0];
        v16.i16[3] = v15.i16[2];
        *(&v23 + 1) = vmovn_s16(v16).u32[0];
        BYTE5(v23) = BYTE5(v12);
        v22 = "llw";
        LODWORD(v25) = 2;
        *v24 = 0x10000000ALL;
        SkywalkInterface = AppleBCMWLANCore::createSkywalkInterface(*(a1[17] + 64), (a1[17] + 96), &v22, a1);
        if (SkywalkInterface)
        {
          return SkywalkInterface;
        }

        AppleBCMWLANSkywalkInterface::setInterfaceUnitNumber(*(a1[17] + 96), v24[1]);
        v19 = *(a1[17] + 96);
        InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
        IO80211SkywalkInterface::setCompanionInterfaceId(v19, InterfaceId);
        *(a2 + 8) = 7826540;
        v21 = a2 + 8;
        snprintf((v21 + 3), 0xDuLL, "%d", v24[1]);
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANNANInterface::setCOMPANION_SKYWALK_IF_CREATE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v21);
          }
        }
      }
    }

    return 0;
  }

  else
  {
    v8 = a1[17];
    v9 = *(v8 + 96);
    if (v9)
    {
      v10 = *(v8 + 64);
      v11 = IO80211SkywalkInterface::getInterfaceId(v9);
      AppleBCMWLANCore::destroySkywalkInterface(v10, v11);
      v7 = 0;
      *(a1[17] + 96) = 0;
    }

    else
    {
      v7 = 3758097088;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANNANInterface::setCOMPANION_SKYWALK_IF_CREATE(a1);
        }
      }
    }
  }

  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setCOMPANION_SKYWALK_IF_CREATE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setCOMPANION_SKYWALK_IF_CREATE((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setCOMPANION_SKYWALK_IF_CREATE((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::setNANLLW_PARAMSCallback(uint64_t result, uint64_t a2, uint64_t a3)
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
        AppleBCMWLANNANInterface::setNANLLW_PARAMSCallback(v4, v4 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, v5);
      }
    }

    FaultReporter = AppleBCMWLANCore::getFaultReporter(*(*(v4 + 136) + 64));
    return CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANNANInterface.cpp", 0x1FB0u, "setNANLLW_PARAMSCallback", 0, -469793490, " %s iovar retval %x", v5, a3);
  }

  return result;
}

uint64_t AppleBCMWLANNANInterface::setNAN_LLW_PARAMS(uint64_t *a1, uint64_t a2)
{
  v38 = 0x200000000;
  v39 = &_mh_execute_header;
  v36 = xmmword_10033C2E0;
  v37 = xmmword_10033C2D0;
  v35 = 0;
  memset(v33, 170, sizeof(v33));
  v4 = IOMallocZeroData();
  Bus = AppleBCMWLANCore::getBus(*(a1[17] + 64));
  if (((*(*Bus + 800))(Bus, v6, v7, v8, v9) & 1) == 0)
  {
    AppleBCMWLANNANInterface::setNAN_LLW_PARAMS();
    goto LABEL_35;
  }

  if (!a2)
  {
    AppleBCMWLANNANInterface::setNAN_LLW_PARAMS();
LABEL_35:
    v31 = v34;
    if (v4)
    {
      goto LABEL_31;
    }

    return v31;
  }

  if (!v4)
  {
    AppleBCMWLANNANInterface::setNAN_LLW_PARAMS(a1);
    return v34;
  }

  *(v4 + 2) = 1;
  if (*(a2 + 11))
  {
    v10 = *(a1[17] + 64);
    if (v10 && AppleBCMWLANCore::isRllwEnabled(v10))
    {
      v11 = *(a2 + 12);
      *(v4 + 2) = 4;
      v12 = (v11 & 1) == 0;
      v13 = &v37;
      v14 = &v36;
    }

    else
    {
      v15 = *(a2 + 12);
      *(v4 + 2) = 2;
      v12 = (v15 & 1) == 0;
      v13 = &v39;
      v14 = &v38;
    }

    if (v12)
    {
      v13 = v14;
    }
  }

  else
  {
    v13 = &v35;
  }

  v16 = 0;
  *v4 = 0x8000;
  *(v4 + 3) = 1;
  LODWORD(v17) = 4;
  do
  {
    v18 = v17;
    v19 = v4 + v17;
    v20 = *(v13 + v16);
    *v19 = v20;
    v21 = v17 + 8;
    *(v4 + (v17 + 8)) = 1;
    *(v19 + 4) = 1;
    v17 = (v17 + 12);
    v22 = v4 + v17;
    *(v4 + v17) = v20;
    if (v20 <= 1u)
    {
      if (v20)
      {
        *(v22 + 2) = 20;
        v17 = v4 + (v18 + 16);
        v23 = *(a2 + 4);
        *(v17 + 4) = *(a2 + 8);
        *v17 = v23;
        *(v17 + 15) = *(a2 + 10);
        *(v17 + 16) = *(a2 + 21);
        *(v17 + 6) = *(a2 + 14);
        *(v17 + 18) = 14;
        *(v17 + 14) = 5;
        LOWORD(v23) = (2 * (*(a2 + 18) & 1)) | *(v17 + 10);
        *(v17 + 10) = v23;
        LOWORD(v23) = (*(a2 + 18) >> 1) & 1 | v23;
        *(v17 + 10) = v23;
        LOWORD(v23) = v23 | *(a2 + 18) & 4;
        *(v17 + 10) = v23;
        LOWORD(v23) = (*(a2 + 18) >> 6) & 8 | v23;
        *(v17 + 10) = v23;
        *(v17 + 10) = (*(a2 + 18) >> 4) & 0x10 | v23;
        LOBYTE(v23) = (*(a2 + 18) >> 3) & 0x10 | *(v17 + 12);
        *(v17 + 12) = v23;
        *(v17 + 12) = (*(a2 + 18) >> 3) & 0xF | v23;
        LOBYTE(v23) = *(a2 + 20);
        *(v17 + 13) = v23 >> 4;
        *(v17 + 13) = v23 & 0xF0 | *(a2 + 20) & 0xF;
        LODWORD(v17) = v18 + 36;
        goto LABEL_25;
      }

      *(v22 + 2) = 4;
      v25 = v18 + 16;
      v26 = *(a2 + 11);
      goto LABEL_24;
    }

    switch(v20)
    {
      case 2u:
        *(v22 + 2) = 12;
        v17 = v4 + (v18 + 16);
        v24 = *(a2 + 4);
        *(v17 + 4) = *(a2 + 8);
        *v17 = v24;
        *(v17 + 8) = *(a2 + 10);
        *(v17 + 10) = *(a2 + 34);
        LOWORD(v24) = *(v17 + 6) | *(a2 + 24) & 1;
        *(v17 + 6) = v24;
        LOWORD(v24) = v24 | *(a2 + 24) & 2;
        *(v17 + 6) = v24;
        LOWORD(v24) = v24 | *(a2 + 24) & 4;
        *(v17 + 6) = v24;
        *(v17 + 6) = v24 | *(a2 + 24) & 8;
        LODWORD(v17) = v18 + 28;
        break;
      case 8u:
        *(v22 + 2) = 4;
        v25 = v18 + 16;
        v26 = *(a2 + 28);
LABEL_24:
        *(v4 + v25) = v26;
        LODWORD(v17) = v18 + 20;
        break;
      case 9u:
        *(v22 + 2) = 16;
        v17 = v4 + (v18 + 16);
        *v17 = *(a2 + 32);
        *(v17 + 8) = *(a2 + 36);
        *(v17 + 10) = *(a2 + 38);
        *(v17 + 14) = *(a2 + 42);
        LODWORD(v17) = v18 + 32;
        break;
    }

LABEL_25:
    *(v19 + 2) = v17 - v21 + 4;
    ++v16;
  }

  while (v16 < *(v4 + 2));
  v33[0] = a1;
  v33[1] = AppleBCMWLANNANInterface::setNANLLW_PARAMSCallback;
  if (v17)
  {
    v27 = v4;
  }

  else
  {
    v27 = 0;
  }

  v33[2] = 0;
  v33[3] = v27;
  v33[4] = v17;
  v28 = *(a1[17] + 72);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v30 = AppleBCMWLANCommander::sendVirtualIOVarSet(v28, InterfaceId, "hp2p", &v33[3], kNoRxExpected, v33, 0);
  v31 = 0;
  if (v30)
  {
    AppleBCMWLANNANInterface::setNAN_LLW_PARAMS(a1, v30, &v34);
    v31 = v34;
  }

LABEL_31:
  IOFreeData();
  return v31;
}

uint64_t non-virtual thunk toAppleBCMWLANNANInterface::setNAN_LLW_PARAMS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANNANInterface::setNAN_LLW_PARAMS((a1 - 112), a2);
}

{
  return AppleBCMWLANNANInterface::setNAN_LLW_PARAMS((a1 - 128), a2);
}

uint64_t AppleBCMWLANNANInterface::getHP2P_PARAMS(AppleBCMWLANNANInterface *this, char *a2, int a3, int a4)
{
  v6 = a2;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  memset(v40, 170, sizeof(v40));
  if (a3 == 357)
  {
    v10 = 0;
    v8 = 0;
    LODWORD(v42) = 6;
    v9 = 1;
  }

  else
  {
    if (a3 == 356)
    {
      v10 = 0;
      LODWORD(v42) = 7;
      v9 = 1;
      v8 = a2;
    }

    else
    {
      if (a3 != 355)
      {
        return 3758097090;
      }

      v8 = 0;
      v42 = xmmword_10033C2F0;
      LODWORD(v43) = 8;
      v9 = 5;
      v10 = a2;
    }

    v6 = 0;
  }

  v11 = IOMallocZeroData();
  v12 = IOMallocZeroData();
  v13 = *AppleBCMWLANCore::getBus(*(*(this + 17) + 64));
  if (((*(v13 + 800))() & 1) == 0)
  {
    AppleBCMWLANNANInterface::getHP2P_PARAMS();
    goto LABEL_62;
  }

  if (!v11)
  {
    AppleBCMWLANNANInterface::getHP2P_PARAMS(this);
    goto LABEL_62;
  }

  if (!v12)
  {
    AppleBCMWLANNANInterface::getHP2P_PARAMS(this);
    v38 = v41;
    goto LABEL_50;
  }

  v14 = 0;
  *v11 = 0x8000;
  v15 = v11 + 4;
  *(v11 + 2) = v9;
  *(v11 + 3) = 0;
  v16 = 4;
  do
  {
    *v15 = *(&v42 + v14);
    *(v15 + 2) = 4;
    *(v15 + 4) = 1;
    ++v14;
    v16 += 8;
    v15 += 8;
  }

  while (v14 < *(v11 + 2));
  if (a3 == 357)
  {
    *v15 = 1;
    *(v15 + 2) = a4;
    v16 += 4;
    *(v15 - 6) = 8;
  }

  if (v16)
  {
    v17 = v11;
  }

  else
  {
    v17 = 0;
  }

  v40[2] = v17;
  v40[3] = v16;
  v40[0] = v12;
  v40[1] = 0x40000000400;
  v18 = *(*(this + 17) + 72);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
  v20 = AppleBCMWLANCommander::runVirtualIOVarGet(v18, InterfaceId, "hp2p", &v40[2], v40, 0);
  if (v20)
  {
    AppleBCMWLANNANInterface::getHP2P_PARAMS(this, v20, &v41);
LABEL_62:
    v38 = v41;
    if (v12)
    {
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  if (!*(v12 + 2))
  {
LABEL_47:
    v38 = 0;
    goto LABEL_48;
  }

  v21 = 0;
  v22 = &v6[14 * a4];
  v23 = 4;
  while (1)
  {
    v24 = (v12 + v23);
    v25 = *v24;
    if (v25 > 5)
    {
      break;
    }

    if (!*v24)
    {
      if (v10)
      {
        v10[11] = *(v24 + 2) != 0;
      }

      goto LABEL_44;
    }

    if (v25 == 1)
    {
      if (v10)
      {
        v10[10] = *(v24 + 23);
        *(v10 + 14) = *(v24 + 7);
        *(v10 + 21) = v24[12];
        v33 = *(v10 + 9) & 0xFFFE | v24[9] & 1;
        *(v10 + 9) = *(v10 + 9) & 0xFFFE | v24[9] & 1;
        v34 = v33 & 0xFFFFFFFD | (2 * ((v24[9] >> 1) & 1));
        *(v10 + 9) = v34;
        v35 = v34 & 0xFFFFFFFB | (4 * ((v24[9] >> 2) & 1));
        *(v10 + 9) = v35;
        v36 = *(v24 + 21);
        v10[20] = v10[20] & 0xF0 | v36 & 0xF;
        v10[20] = *(v24 + 21) & 0xF0 | v36 & 0xF;
        LOWORD(v35) = v35 & 0xFF87 | (8 * (v24[10] & 0xF));
        *(v10 + 9) = v35;
        *(v10 + 9) = v35 & 0xFF7F | (8 * *(v24 + 20)) & 0x80;
      }

      goto LABEL_41;
    }

    if (v25 != 2)
    {
      goto LABEL_53;
    }

    v26 = *(v24 + 2);
    *(v10 + 4) = v24[6];
    *(v10 + 1) = v26;
    v10[10] = *(v24 + 16);
    *(v10 + 17) = v24[9];
    v27 = v10[24] & 0xFE | v24[7] & 1;
    v10[24] = v27;
    v28 = v27 & 0xFFFFFFFD | (2 * ((*(v24 + 14) >> 1) & 1));
    v10[24] = v28;
    v29 = v28 & 0xFFFFFFFB | (4 * ((*(v24 + 14) >> 2) & 1));
    v10[24] = v29;
    v10[24] = v29 & 0xF7 | v24[7] & 8;
    v30 = 16;
LABEL_45:
    v37 = v24[1];
    if (v30 > v37)
    {
      AppleBCMWLANNANInterface::getHP2P_PARAMS();
      v38 = v41;
      goto LABEL_48;
    }

    v23 += v37 + 4;
    if (++v21 >= *(v12 + 2))
    {
      goto LABEL_47;
    }
  }

  if (*v24 <= 7u)
  {
    if (v25 != 6)
    {
      if (v25 != 7)
      {
        goto LABEL_53;
      }

      if (v8)
      {
        *(v8 + 1) = *(v24 + 2);
      }

      goto LABEL_44;
    }

    v31 = *(v24 + 6);
    v32 = *(v24 + 2);
    v22[4] = a4;
    *(v22 + 6) = v32;
    *(v22 + 14) = v31;
LABEL_41:
    v30 = 24;
    goto LABEL_45;
  }

  if (v25 == 8)
  {
    if (v10)
    {
      *(v10 + 7) = *(v24 + 2);
    }

LABEL_44:
    v30 = 8;
    goto LABEL_45;
  }

  if (v25 == 9)
  {
    if (v10)
    {
      v10[32] = *(v24 + 8);
      *(v10 + 18) = v24[8];
      *(v10 + 38) = *(v24 + 9);
      v10[42] = *(v24 + 22);
    }

    v30 = 20;
    goto LABEL_45;
  }

LABEL_53:
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANNANInterface::getHP2P_PARAMS(this);
    }
  }

  v38 = 3758096385;
LABEL_48:
  IOFreeData();
LABEL_49:
  if (v11)
  {
LABEL_50:
    IOFreeData();
  }

  return v38;
}