uint64_t AppleBCMWLANScanAdapter::induceFaultCallback(AppleBCMWLANScanAdapter *this, int a2, const char *a3)
{
  if (a2 == -469793274)
  {
    v3 = this + 48;
    if (*(*(this + 6) + 72))
    {
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::induceFaultCallback(v3);
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANScanAdapter::fillScanParams4(AppleBCMWLANScanAdapter *a1, char *a2, uint64_t a3)
{
  bzero(a2, 0x4D4uLL);
  v6 = a1 + 48;
  AppleBCMWLANCore::setTxBlankingHappened(*(*(a1 + 6) + 56), 0);
  *a2 = 4980740;
  v7 = *(a3 + 28);
  if (v7 && !*(a3 + 4888))
  {
    if (*(a3 + 5452))
    {
      a2[47] |= 1u;
      *(a2 + 1) = 4;
      *(a2 + 2) = *(a3 + 5452);
      v13 = *(*v6 + 72);
      if (v13 && CCLogStream::shouldLog(v13, 0x40uLL) && *(*v6 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::fillScanParams4(a1 + 48);
      }
    }

    else
    {
      if (v7 >= 0x20)
      {
        v45 = 32;
      }

      else
      {
        v45 = v7;
      }

      *(a2 + 1) = v45;
      memcpy(a2 + 8, (a3 + 32), v45);
      v46 = *(*v6 + 72);
      if (v46 && CCLogStream::shouldLog(v46, 0x40uLL) && *(*v6 + 72) && CCLogStream::shouldLog())
      {
        CCLogStream::logNoticeIf(*(*v6 + 72), 0x40uLL, "[dk] %s@%d: This is a directed scan for SSID: %s\n", "fillScanParams4", 1285, a2 + 8);
      }
    }
  }

  v8 = *(a2 + 12) & 0xFFFF8FFF;
  *(a2 + 6) = v8;
  if (*(a3 + 20) | *(a3 + 24))
  {
    v9 = *(a3 + 20);
    *(a2 + 22) = *(a3 + 24);
    *(a2 + 10) = v9;
  }

  else
  {
    *(a2 + 22) = -1;
    *(a2 + 10) = -1;
  }

  v10 = *(a3 + 16);
  if (v10 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2 * (v10 != 2);
  }

  a2[46] = v11;
  v12 = *(a3 + 64);
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      if (*(*v6 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::fillScanParams4(a1 + 48);
      }

      v8 = *(a2 + 12) | 0x2000;
    }

    else
    {
      if (v12 != 4)
      {
        goto LABEL_37;
      }

      if (*(*v6 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::fillScanParams4(a1 + 48);
      }

      v8 = *(a2 + 12) | 0x4000;
    }
  }

  else if (v12 == 1)
  {
    if (*(*v6 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams4(a1 + 48);
    }

    v8 = 0;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_37;
    }

    if (*(*v6 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams4(a1 + 48);
    }

    v8 = 1;
  }

  *(a2 + 12) = v8;
LABEL_37:
  v14 = *(a3 + 68);
  if ((v14 & 2) != 0)
  {
    v8 |= 2u;
    *(a2 + 12) = v8;
    v14 = *(a3 + 68);
  }

  if (v14)
  {
    *(a2 + 12) = v8 | 0x1000;
    if ((*(a3 + 68) & 0x10) != 0)
    {
      a2[47] |= 0x40u;
      if (*(*v6 + 72))
      {
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANScanAdapter::fillScanParams4(a1 + 48);
        }
      }
    }

    v15 = AppleBCMWLANScanAdapter::setLpScanRetryCfg(a1, *(a3 + 12) != 0);
    if (v15)
    {
      v16 = v15;
      if (*(*v6 + 72))
      {
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*v6 + 72), "[dk] %s@%d: Error %d in setting LP scan retry config\n", "fillScanParams4", 1332, v16);
        }
      }
    }
  }

  v17 = *(a3 + 68);
  if ((v17 & 8) != 0)
  {
    *(a2 + 12) |= 4u;
    v17 = *(a3 + 68);
    if ((v17 & 4) == 0)
    {
LABEL_50:
      if ((v17 & 0x40) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_75;
    }
  }

  else if ((v17 & 4) == 0)
  {
    goto LABEL_50;
  }

  if (*(*v6 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::fillScanParams4(v6);
  }

  *(a2 + 12) |= 8u;
  v17 = *(a3 + 68);
  if ((v17 & 0x40) == 0)
  {
LABEL_51:
    if ((v17 & 0x20) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_79;
  }

LABEL_75:
  if (*(*v6 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::fillScanParams4(v6);
  }

  *(a2 + 12) |= 0x200u;
  v17 = *(a3 + 68);
  if ((v17 & 0x20) != 0)
  {
LABEL_52:
    if ((v17 & 0x100) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_83;
  }

LABEL_79:
  if (*(*v6 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::fillScanParams4(v6);
  }

  *(a2 + 12) |= 0x100u;
  v17 = *(a3 + 68);
  if ((v17 & 0x100) == 0)
  {
LABEL_53:
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_87;
  }

LABEL_83:
  if (*(*v6 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::fillScanParams4(v6);
  }

  *(a2 + 12) |= 0x800u;
  v17 = *(a3 + 68);
  if ((v17 & 0x80) == 0)
  {
LABEL_54:
    if ((v17 & 0x200) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_87:
  if (*(*v6 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::fillScanParams4(v6);
  }

  a2[47] |= 4u;
  if ((*(a3 + 68) & 0x200) != 0)
  {
LABEL_55:
    a2[47] |= 8u;
  }

LABEL_56:
  *(a2 + 14) = -1;
  *(a2 + 60) = *(a3 + 72);
  v18 = *(a3 + 80);
  if (!v18)
  {
    v18 = -1;
  }

  *(a2 + 17) = v18;
  v19 = *(a3 + 84);
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v56 = 0;
    *(a2 + 18) = v19;
    v22 = (a3 + 96);
    do
    {
      v24 = *(v22 - 1);
      v23 = *v22;
      LODWORD(__src[0]) = 0;
      DWORD1(__src[0]) = v24;
      if ((v23 & 0xC06) == 0)
      {
        v23 |= 2u;
      }

      DWORD2(__src[0]) = v23;
      if (AppleBCMWLANCore::getChanSpec(*(*v6 + 56), __src, &v56))
      {
        v25 = 1;
      }

      else
      {
        v25 = v56 == 0;
      }

      if (!v25)
      {
        *&a2[2 * v21++ + 76] = v56;
      }

      v22 += 3;
      ++v20;
    }

    while (v20 < *(a3 + 84));
    *(a2 + 18) = v21;
    if (!v21)
    {
      return 3766617101;
    }
  }

  else if (AppleBCMWLANCore::getSupportedBands(*(*v6 + 56)) == 1)
  {
    *(a2 + 18) = 13;
    *(a2 + 76) = kDefaultScanList;
    *(a2 + 86) = *(&kDefaultScanList + 10);
  }

  v27 = *(a3 + 4888);
  if (v27)
  {
    v28 = 0;
    v29 = 0;
    v58 = 0;
    v30 = *(a2 + 18);
    LODWORD(v31) = 2 * v30 + 76;
    memset(&__src[6], 0, 256);
    v31 = (v30 & 1) != 0 ? (v31 & 0xFFFFFFFC) + 4 : v31;
    v55 = v31;
    memset(&__src[4], 0, 32);
    v32 = v27 >= 0xA ? 10 : v27;
    v33 = __src + 4;
    v34 = (a3 + 4900);
    v35 = v32;
    memset(__src, 0, 64);
    do
    {
      v36 = *(v34 - 1);
      if (v36 >= 0x20)
      {
        v37 = 32;
      }

      else
      {
        v37 = v36;
      }

      *(v33 - 1) = v37;
      v25 = v36 == 0;
      v38 = v36 != 0;
      v39 = v25;
      v29 |= v39;
      v28 |= v38;
      memcpy(v33, v34, v37);
      v33 += 36;
      v34 += 14;
      --v35;
    }

    while (v35);
    *(a2 + 18) = v30 | (v32 << 16);
    memcpy(&a2[v55], __src, (36 * v32));
    v40 = *(*v6 + 72);
    if (v40)
    {
      if (CCLogStream::shouldLog(v40, 0x40uLL))
      {
        v41 = IOMallocZeroData();
        v42 = v41;
        if (v41)
        {
          strcpy(v41, " Performing ");
          if (v29)
          {
            v43 = "";
            if (v28)
            {
              v43 = "and ";
            }

            LODWORD(v41) = snprintf(v41 + 12, 0x3F4uLL, "Broadcast Scan %s", v43);
            if (v41 > 0x3FF)
            {
              v47 = 1036;
              if ((v28 & 1) == 0)
              {
LABEL_142:
                if (v42)
                {
                  if (*(*v6 + 72))
                  {
                    if (CCLogStream::shouldLog())
                    {
                      v54 = *(*v6 + 72);
                      CCLogStream::logIf();
                    }
                  }

                  *v42 = 0;
                  IOFreeData();
                }

                return 0;
              }

LABEL_130:
              v48 = 0;
              if (!v42 || v47 > 0x3FE || (v49 = 1024, v48 = snprintf(&v42[v47], 1024 - v47, "Directed Scan for "), v48 <= 0x3FF))
              {
                v49 = v48;
              }

              v50 = v49 + v47;
              v51 = __src + 4;
              do
              {
                if (*(v51 - 1))
                {
                  v52 = 0;
                  if (!v42 || v50 > 0x3FE || (v53 = 1024, v52 = snprintf(&v42[v50], 1024 - v50, "%s ", v51), v52 <= 0x3FF))
                  {
                    v53 = v52;
                  }

                  v50 += v53;
                }

                v51 += 36;
                --v32;
              }

              while (v32);
              goto LABEL_142;
            }

            v44 = 12;
LABEL_126:
            v47 = v44 + v41;
            if ((v28 & 1) == 0)
            {
              goto LABEL_142;
            }

            goto LABEL_130;
          }

          v47 = 12;
        }

        else
        {
          v44 = 0;
          v47 = 0;
          if (v29)
          {
            goto LABEL_126;
          }
        }

        if ((v28 & 1) == 0)
        {
          goto LABEL_142;
        }

        goto LABEL_130;
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANScanAdapter::resetSCChanimStats(AppleBCMWLANScanAdapter *this)
{
  v7 = -1;
  v6[0] = &v7;
  v6[1] = 0x400040004;
  v1 = this + 48;
  v2 = *(*(this + 6) + 56);
  if (!v2 || !AppleBCMWLANCore::checkForScanCoreSupport(v2) || (AppleBCMWLANCore::checkForLPSCDisable(*(*v1 + 56)) & 1) != 0)
  {
LABEL_4:
    if (v7)
    {
      return 3758097084;
    }

    else
    {
      return 0;
    }
  }

  v5 = AppleBCMWLANCommander::runIOVarGet(*(*v1 + 64), "sc:reset_chanim_stats", &kNoTxPayload, v6, 0);
  if (!v5)
  {
    if (v7 && *(*v1 + 72) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*v1 + 72), "[dk] %s@%d:LPSC: reset_chanim_stats status invalid, status %d\n", "resetSCChanimStats", 2100, v7);
    }

    goto LABEL_4;
  }

  v3 = v5;
  if (*(*v1 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::resetSCChanimStats(v1);
  }

  return v3;
}

uint64_t AppleBCMWLANScanAdapter::fillScanParams3(AppleBCMWLANScanAdapter *a1, char *a2, uint64_t a3)
{
  bzero(a2, 0x4D0uLL);
  v6 = a1 + 48;
  AppleBCMWLANCore::setTxBlankingHappened(*(*(a1 + 6) + 56), 0);
  *a2 = 4718595;
  v7 = *(a3 + 28);
  if (v7 && !*(a3 + 4888))
  {
    if (*(a3 + 5452))
    {
      a2[47] |= 1u;
      *(a2 + 1) = 4;
      *(a2 + 2) = *(a3 + 5452);
      v13 = *(*v6 + 72);
      if (v13 && CCLogStream::shouldLog(v13, 0x40uLL) && *(*v6 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::fillScanParams3(a1 + 48);
      }
    }

    else
    {
      if (v7 >= 0x20)
      {
        v48 = 32;
      }

      else
      {
        v48 = v7;
      }

      *(a2 + 1) = v48;
      memcpy(a2 + 8, (a3 + 32), v48);
      v49 = *(*v6 + 72);
      if (v49 && CCLogStream::shouldLog(v49, 0x40uLL) && *(*v6 + 72) && CCLogStream::shouldLog())
      {
        CCLogStream::logNoticeIf(*(*v6 + 72), 0x40uLL, "[dk] %s@%d: This is a directed scan for SSID: %s\n", "fillScanParams3", 1499, a2 + 8);
      }
    }
  }

  v8 = *(a2 + 12) & 0xFFFF8FFF;
  *(a2 + 12) = v8;
  if (*(a3 + 20) | *(a3 + 24))
  {
    v9 = *(a3 + 20);
    *(a2 + 22) = *(a3 + 24);
    *(a2 + 10) = v9;
  }

  else
  {
    *(a2 + 22) = -1;
    *(a2 + 10) = -1;
  }

  v10 = *(a3 + 16);
  if (v10 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2 * (v10 != 2);
  }

  a2[46] = v11;
  v12 = *(a3 + 64);
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      if (*(*v6 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::fillScanParams3(a1 + 48);
      }

      v8 = *(a2 + 12) | 0x2000;
    }

    else
    {
      if (v12 != 4)
      {
        goto LABEL_37;
      }

      if (*(*v6 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::fillScanParams3(a1 + 48);
      }

      v8 = *(a2 + 12) | 0x4000;
    }
  }

  else if (v12 == 1)
  {
    if (*(*v6 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams3(a1 + 48);
    }

    v8 = 0;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_37;
    }

    if (*(*v6 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams3(a1 + 48);
    }

    v8 = 1;
  }

  *(a2 + 12) = v8;
LABEL_37:
  v14 = *(a3 + 68);
  if ((v14 & 2) != 0)
  {
    v8 |= 2u;
    *(a2 + 12) = v8;
    v14 = *(a3 + 68);
  }

  if (v14)
  {
    *(a2 + 12) = v8 | 0x1000;
    if ((*(a3 + 68) & 0x10) != 0)
    {
      a2[47] |= 0x40u;
      if (*(*v6 + 72))
      {
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANScanAdapter::fillScanParams3(a1 + 48);
        }
      }
    }

    v15 = AppleBCMWLANScanAdapter::setLpScanRetryCfg(a1, *(a3 + 12) != 0);
    if (v15)
    {
      v16 = v15;
      if (*(*v6 + 72))
      {
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*v6 + 72), "[dk] %s@%d: Error %d in setting LP scan retry config\n", "fillScanParams3", 1545, v16);
        }
      }
    }
  }

  v17 = *(a3 + 68);
  if ((v17 & 8) != 0)
  {
    *(a2 + 12) |= 4u;
    v17 = *(a3 + 68);
  }

  v18 = *v6;
  if ((v17 & 4) != 0)
  {
    if (*(v18 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams3(v6);
    }

    *(a2 + 12) |= 8u;
    v17 = *(a3 + 68);
    v18 = *v6;
  }

  if ((v17 & 0x40) != 0)
  {
    if (*(v18 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams3(v6);
    }

    *(a2 + 12) |= 0x200u;
    v18 = *v6;
  }

  v19 = *(v18 + 56);
  if (!v19 || !AppleBCMWLANCore::checkFor6GSupportCardCapability(v19))
  {
    goto LABEL_67;
  }

  v20 = *(a3 + 68);
  if ((v20 & 0x20) != 0)
  {
    if ((*(a3 + 68) & 0x100) == 0)
    {
      goto LABEL_64;
    }

LABEL_110:
    if (*(*v6 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams3(v6);
    }

    *(a2 + 12) |= 0x800u;
    v20 = *(a3 + 68);
    if ((v20 & 0x80) == 0)
    {
LABEL_65:
      if ((v20 & 0x200) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    goto LABEL_114;
  }

  if (*(*v6 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::fillScanParams3(v6);
  }

  *(a2 + 12) |= 0x100u;
  v20 = *(a3 + 68);
  if ((v20 & 0x100) != 0)
  {
    goto LABEL_110;
  }

LABEL_64:
  if ((v20 & 0x80) == 0)
  {
    goto LABEL_65;
  }

LABEL_114:
  if (*(*v6 + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::fillScanParams3(v6);
  }

  a2[47] |= 4u;
  if ((*(a3 + 68) & 0x200) != 0)
  {
LABEL_66:
    a2[47] |= 8u;
  }

LABEL_67:
  *(a2 + 13) = -1;
  *(a2 + 7) = *(a3 + 72);
  v21 = *(a3 + 80);
  if (!v21)
  {
    v21 = -1;
  }

  *(a2 + 16) = v21;
  v22 = *(a3 + 84);
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    v59 = 0;
    *(a2 + 17) = v22;
    v25 = (a3 + 96);
    do
    {
      v27 = *(v25 - 1);
      v26 = *v25;
      LODWORD(__src[0]) = 0;
      DWORD1(__src[0]) = v27;
      if ((v26 & 0xC06) == 0)
      {
        v26 |= 2u;
      }

      DWORD2(__src[0]) = v26;
      if (AppleBCMWLANCore::getChanSpec(*(*v6 + 56), __src, &v59))
      {
        v28 = 1;
      }

      else
      {
        v28 = v59 == 0;
      }

      if (!v28)
      {
        *&a2[2 * v24++ + 72] = v59;
      }

      v25 += 3;
      ++v23;
    }

    while (v23 < *(a3 + 84));
    *(a2 + 17) = v24;
    if (!v24)
    {
      return 3766617101;
    }
  }

  else if (AppleBCMWLANCore::getSupportedBands(*(*v6 + 56)) == 1)
  {
    *(a2 + 17) = 13;
    *(a2 + 72) = kDefaultScanList;
    *(a2 + 82) = *(&kDefaultScanList + 10);
  }

  v30 = *(a3 + 4888);
  if (v30)
  {
    v31 = 0;
    v32 = 0;
    v61 = 0;
    v33 = *(a2 + 17);
    LODWORD(v34) = 2 * v33 + 72;
    memset(&__src[6], 0, 256);
    v34 = (v33 & 1) != 0 ? (v34 & 0xFFFFFFFC) + 4 : v34;
    v58 = v34;
    memset(&__src[4], 0, 32);
    v35 = v30 >= 0xA ? 10 : v30;
    v36 = __src + 4;
    v37 = (a3 + 4900);
    v38 = v35;
    memset(__src, 0, 64);
    do
    {
      v39 = *(v37 - 1);
      if (v39 >= 0x20)
      {
        v40 = 32;
      }

      else
      {
        v40 = v39;
      }

      *(v36 - 1) = v40;
      v28 = v39 == 0;
      v41 = v39 != 0;
      v42 = v28;
      v32 |= v42;
      v31 |= v41;
      memcpy(v36, v37, v40);
      v36 += 36;
      v37 += 14;
      --v38;
    }

    while (v38);
    *(a2 + 17) = v33 | (v35 << 16);
    memcpy(&a2[v58], __src, (36 * v35));
    v43 = *(*v6 + 72);
    if (v43)
    {
      if (CCLogStream::shouldLog(v43, 0x40uLL))
      {
        v44 = IOMallocZeroData();
        v45 = v44;
        if (v44)
        {
          strcpy(v44, " Performing ");
          if (v32)
          {
            v46 = "";
            if (v31)
            {
              v46 = "and ";
            }

            LODWORD(v44) = snprintf(v44 + 12, 0x3F4uLL, "Broadcast Scan %s", v46);
            if (v44 > 0x3FF)
            {
              v50 = 1036;
              if ((v31 & 1) == 0)
              {
LABEL_144:
                if (v45)
                {
                  if (*(*v6 + 72))
                  {
                    if (CCLogStream::shouldLog())
                    {
                      v57 = *(*v6 + 72);
                      CCLogStream::logIf();
                    }
                  }

                  *v45 = 0;
                  IOFreeData();
                }

                return 0;
              }

LABEL_132:
              v51 = 0;
              if (!v45 || v50 > 0x3FE || (v52 = 1024, v51 = snprintf(&v45[v50], 1024 - v50, "Directed Scan for "), v51 <= 0x3FF))
              {
                v52 = v51;
              }

              v53 = v52 + v50;
              v54 = __src + 4;
              do
              {
                if (*(v54 - 1))
                {
                  v55 = 0;
                  if (!v45 || v53 > 0x3FE || (v56 = 1024, v55 = snprintf(&v45[v53], 1024 - v53, "%s ", v54), v55 <= 0x3FF))
                  {
                    v56 = v55;
                  }

                  v53 += v56;
                }

                v54 += 36;
                --v35;
              }

              while (v35);
              goto LABEL_144;
            }

            v47 = 12;
LABEL_128:
            v50 = v47 + v44;
            if ((v31 & 1) == 0)
            {
              goto LABEL_144;
            }

            goto LABEL_132;
          }

          v50 = 12;
        }

        else
        {
          v47 = 0;
          v50 = 0;
          if (v32)
          {
            goto LABEL_128;
          }
        }

        if ((v31 & 1) == 0)
        {
          goto LABEL_144;
        }

        goto LABEL_132;
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANScanAdapter::fillScanParams2(AppleBCMWLANScanAdapter *a1, char *a2, uint64_t a3)
{
  bzero(a2, 0x4D0uLL);
  v6 = a1 + 48;
  AppleBCMWLANCore::setTxBlankingHappened(*(*(a1 + 6) + 56), 0);
  *a2 = 4980738;
  v7 = *(a3 + 28);
  if (v7 && !*(a3 + 4888))
  {
    v13 = v7 >= 0x20 ? 32 : v7;
    *(a2 + 1) = v13;
    memcpy(a2 + 8, (a3 + 32), v13);
    v14 = *(*v6 + 72);
    if (v14)
    {
      if (CCLogStream::shouldLog(v14, 0x40uLL) && *(*v6 + 72) && CCLogStream::shouldLog())
      {
        CCLogStream::logNoticeIf(*(*v6 + 72), 0x40uLL, "[dk] %s@%d: This is a directed scan for SSID: %s\n", "fillScanParams2", 1706, a2 + 8);
      }
    }
  }

  v8 = *(a2 + 12) & 0xFFFF8FFF;
  *(a2 + 12) = v8;
  if (*(a3 + 20) | *(a3 + 24))
  {
    v9 = *(a3 + 20);
    *(a2 + 22) = *(a3 + 24);
    *(a2 + 10) = v9;
  }

  else
  {
    *(a2 + 22) = -1;
    *(a2 + 10) = -1;
  }

  v10 = *(a3 + 16);
  if (v10 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2 * (v10 != 2);
  }

  a2[46] = v11;
  v12 = *(a3 + 64);
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      if (*(*v6 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::fillScanParams2(a1 + 48);
      }

      v8 = *(a2 + 12) | 0x2000;
    }

    else
    {
      if (v12 != 4)
      {
        goto LABEL_39;
      }

      if (*(*v6 + 72) && CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::fillScanParams2(a1 + 48);
      }

      v8 = *(a2 + 12) | 0x4000;
    }
  }

  else if (v12 == 1)
  {
    if (*(*v6 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams2(a1 + 48);
    }

    v8 = 0;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_39;
    }

    if (*(*v6 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams2(a1 + 48);
    }

    v8 = 1;
  }

  *(a2 + 12) = v8;
LABEL_39:
  v15 = *(a3 + 68);
  if ((v15 & 2) != 0)
  {
    v8 |= 2u;
    *(a2 + 12) = v8;
    v15 = *(a3 + 68);
  }

  if (v15)
  {
    *(a2 + 12) = v8 | 0x1000;
    v16 = AppleBCMWLANScanAdapter::setLpScanRetryCfg(a1, *(a3 + 12) != 0);
    if (v16)
    {
      v17 = v16;
      if (*(*v6 + 72))
      {
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*v6 + 72), "[dk] %s@%d: Error %d in setting LP scan retry config\n", "fillScanParams2", 1746, v17);
        }
      }
    }
  }

  v18 = *(a3 + 68);
  if ((v18 & 8) != 0)
  {
    *(a2 + 12) |= 4u;
    v18 = *(a3 + 68);
  }

  if ((v18 & 4) != 0)
  {
    if (*(*v6 + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams2(v6);
    }

    *(a2 + 12) |= 8u;
  }

  *(a2 + 13) = -1;
  *(a2 + 7) = *(a3 + 72);
  v19 = *(a3 + 80);
  if (!v19)
  {
    v19 = -1;
  }

  *(a2 + 16) = v19;
  v20 = *(a3 + 84);
  if (v20)
  {
    v21 = 0;
    v22 = 0;
    *(a2 + 17) = v20;
    v23 = (a3 + 96);
    do
    {
      LODWORD(__src[0]) = 2;
      if ((*v23 & 4) != 0)
      {
        LODWORD(__src[0]) = 3;
      }

      else if ((*v23 & 0x400) != 0)
      {
        LODWORD(__src[0]) = 4;
      }

      ChanSpec = AppleBCMWLANCore::getChanSpec(*(*v6 + 56), *(v23 - 4), __src);
      if (ChanSpec)
      {
        *&a2[2 * v22++ + 72] = ChanSpec;
      }

      ++v21;
      v23 += 3;
    }

    while (v21 < *(a3 + 84));
    *(a2 + 17) = v22;
    if (!v22)
    {
      return 3766617101;
    }
  }

  else if (AppleBCMWLANCore::getSupportedBands(*(*v6 + 56)) == 1)
  {
    *(a2 + 17) = 13;
    *(a2 + 72) = kDefaultScanList;
    *(a2 + 82) = *(&kDefaultScanList + 10);
  }

  v26 = *(a3 + 4888);
  if (v26)
  {
    v27 = 0;
    v28 = 0;
    v55 = 0;
    v29 = *(a2 + 17);
    LODWORD(v30) = 2 * v29 + 72;
    memset(&__src[6], 0, 256);
    v30 = (v29 & 1) != 0 ? (v30 & 0xFFFFFFFC) + 4 : v30;
    v53 = v30;
    memset(&__src[4], 0, 32);
    v31 = v26 >= 0xA ? 10 : v26;
    v32 = __src + 4;
    v33 = (a3 + 4900);
    v34 = v31;
    memset(__src, 0, 64);
    do
    {
      v35 = *(v33 - 1);
      if (v35 >= 0x20)
      {
        v36 = 32;
      }

      else
      {
        v36 = v35;
      }

      *(v32 - 1) = v36;
      v37 = v35 == 0;
      v38 = v35 != 0;
      v39 = v37;
      v28 |= v39;
      v27 |= v38;
      memcpy(v32, v33, v36);
      v32 += 36;
      v33 += 14;
      --v34;
    }

    while (v34);
    *(a2 + 17) = v29 | (v31 << 16);
    memcpy(&a2[v53], __src, (36 * v31));
    v40 = *(*v6 + 72);
    if (v40)
    {
      if (CCLogStream::shouldLog(v40, 0x40uLL))
      {
        v41 = IOMallocZeroData();
        v42 = v41;
        if (v41)
        {
          strcpy(v41, " Performing ");
          if (v28)
          {
            v43 = "";
            if (v27)
            {
              v43 = "and ";
            }

            LODWORD(v41) = snprintf(v41 + 12, 0x3F4uLL, "Broadcast Scan %s", v43);
            if (v41 > 0x3FF)
            {
              v45 = 1036;
              if ((v27 & 1) == 0)
              {
LABEL_108:
                if (v42)
                {
                  if (*(*v6 + 72))
                  {
                    if (CCLogStream::shouldLog())
                    {
                      v52 = *(*v6 + 72);
                      CCLogStream::logIf();
                    }
                  }

                  *v42 = 0;
                  IOFreeData();
                }

                return 0;
              }

LABEL_96:
              v46 = 0;
              if (!v42 || v45 > 0x3FE || (v47 = 1024, v46 = snprintf(&v42[v45], 1024 - v45, "Directed Scan for "), v46 <= 0x3FF))
              {
                v47 = v46;
              }

              v48 = v47 + v45;
              v49 = __src + 4;
              do
              {
                if (*(v49 - 1))
                {
                  v50 = 0;
                  if (!v42 || v48 > 0x3FE || (v51 = 1024, v50 = snprintf(&v42[v48], 1024 - v48, "%s ", v49), v50 <= 0x3FF))
                  {
                    v51 = v50;
                  }

                  v48 += v51;
                }

                v49 += 36;
                --v31;
              }

              while (v31);
              goto LABEL_108;
            }

            v44 = 12;
LABEL_92:
            v45 = v44 + v41;
            if ((v27 & 1) == 0)
            {
              goto LABEL_108;
            }

            goto LABEL_96;
          }

          v45 = 12;
        }

        else
        {
          v44 = 0;
          v45 = 0;
          if (v28)
          {
            goto LABEL_92;
          }
        }

        if ((v27 & 1) == 0)
        {
          goto LABEL_108;
        }

        goto LABEL_96;
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANScanAdapter::fillScanParams(uint64_t a1, char *a2, uint64_t a3)
{
  bzero(a2, 0x4C8uLL);
  v6 = *(a3 + 28);
  if (v6 && !*(a3 + 4888))
  {
    v37 = v6 >= 0x20 ? 32 : v6;
    *a2 = v37;
    memcpy(a2 + 4, (a3 + 32), v37);
    v38 = *(*(a1 + 48) + 72);
    if (v38)
    {
      if (CCLogStream::shouldLog(v38, 0x40uLL) && *(*(a1 + 48) + 72) && CCLogStream::shouldLog())
      {
        CCLogStream::logNoticeIf(*(*(a1 + 48) + 72), 0x40uLL, "[dk] %s@%d: This is a directed scan for SSID: %s\n", "fillScanParams", 1875, a2 + 4);
      }
    }
  }

  if (*(a3 + 20) | *(a3 + 24))
  {
    v7 = *(a3 + 20);
    *(a2 + 20) = *(a3 + 24);
    *(a2 + 9) = v7;
  }

  else
  {
    *(a2 + 20) = -1;
    *(a2 + 9) = -1;
  }

  v8 = *(a3 + 16);
  if (v8 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (v8 != 2);
  }

  a2[42] = v9;
  v10 = *(a3 + 64);
  if (v10 == 2)
  {
    if (*(*(a1 + 48) + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams(a1 + 48);
    }

    v11 = 1;
  }

  else
  {
    if (v10 != 1)
    {
      goto LABEL_20;
    }

    if (*(*(a1 + 48) + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::fillScanParams(a1 + 48);
    }

    v11 = 0;
  }

  a2[43] = v11;
LABEL_20:
  v12 = *(a3 + 68);
  if ((v12 & 8) != 0)
  {
    a2[43] |= 4u;
    v12 = *(a3 + 68);
    if ((v12 & 2) == 0)
    {
LABEL_22:
      if ((v12 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_22;
  }

  a2[43] |= 2u;
  if ((*(a3 + 68) & 4) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  if (*(*(a1 + 48) + 72) && CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::fillScanParams(a1 + 48);
  }

  a2[43] |= 8u;
LABEL_30:
  *(a2 + 11) = -1;
  *(a2 + 6) = *(a3 + 72);
  v14 = *(a3 + 80);
  v13 = *(a3 + 84);
  if (!v14)
  {
    v14 = -1;
  }

  *(a2 + 14) = v14;
  if (v13)
  {
    *(a2 + 15) = v13;
    v15 = a2 + 64;
    v16 = (a3 + 92);
    do
    {
      v17 = *v16;
      v16 += 3;
      *v15++ = v17;
      --v13;
    }

    while (v13);
  }

  else if (AppleBCMWLANCore::getSupportedBands(*(*(a1 + 48) + 56)) == 1)
  {
    *(a2 + 15) = 13;
    *(a2 + 4) = kDefaultScanList;
    *(a2 + 74) = *(&kDefaultScanList + 10);
  }

  v18 = *(a3 + 4888);
  if (v18)
  {
    v48 = a1;
    v19 = 0;
    v20 = 0;
    v50 = 0;
    v21 = *(a2 + 15);
    v22 = 2 * v21 + 64;
    memset(&__src[6], 0, 256);
    v23 = (v21 & 1) != 0 ? (v22 & 0xFFFFFFFC) + 4 : v22;
    memset(&__src[4], 0, 32);
    v24 = v18 >= 0xA ? 10 : v18;
    v25 = __src + 4;
    v26 = (a3 + 4900);
    v27 = v24;
    memset(__src, 0, 64);
    do
    {
      v28 = *(v26 - 1);
      if (v28 >= 0x20)
      {
        v29 = 32;
      }

      else
      {
        v29 = v28;
      }

      *(v25 - 1) = v29;
      v30 = v28 == 0;
      v31 = !v30;
      v20 |= v31;
      v19 |= v30;
      memcpy(v25, v26, v29);
      v25 += 36;
      v26 += 14;
      --v27;
    }

    while (v27);
    *(a2 + 15) = v21 | (v24 << 16);
    memcpy(&a2[v23], __src, (36 * v24));
    v32 = *(*(v48 + 48) + 72);
    if (v32)
    {
      if (CCLogStream::shouldLog(v32, 0x40uLL))
      {
        v33 = IOMallocZeroData();
        v34 = v33;
        if (v33)
        {
          strcpy(v33, " Performing ");
          if (v19)
          {
            v35 = "";
            if (v20)
            {
              v35 = "and ";
            }

            LODWORD(v33) = snprintf(v33 + 12, 0x3F4uLL, "Broadcast Scan %s", v35);
            if (v33 > 0x3FF)
            {
              v39 = 1036;
              if ((v20 & 1) == 0)
              {
LABEL_86:
                if (v34)
                {
                  if (*(*(v48 + 48) + 72) && CCLogStream::shouldLog())
                  {
                    v46 = *(*(v48 + 48) + 72);
                    CCLogStream::logIf();
                  }

                  *v34 = 0;
                  IOFreeData();
                }

                return 0;
              }

LABEL_74:
              v40 = 0;
              if (!v34 || v39 > 0x3FE || (v41 = 1024, v40 = snprintf(&v34[v39], 1024 - v39, "Directed Scan for "), v40 <= 0x3FF))
              {
                v41 = v40;
              }

              v42 = v41 + v39;
              v43 = __src + 4;
              do
              {
                if (*(v43 - 1))
                {
                  v44 = 0;
                  if (!v34 || v42 > 0x3FE || (v45 = 1024, v44 = snprintf(&v34[v42], 1024 - v42, "%s ", v43), v44 <= 0x3FF))
                  {
                    v45 = v44;
                  }

                  v42 += v45;
                }

                v43 += 36;
                --v24;
              }

              while (v24);
              goto LABEL_86;
            }

            v36 = 12;
LABEL_70:
            v39 = v36 + v33;
            if ((v20 & 1) == 0)
            {
              goto LABEL_86;
            }

            goto LABEL_74;
          }

          v39 = 12;
        }

        else
        {
          v36 = 0;
          v39 = 0;
          if (v19)
          {
            goto LABEL_70;
          }
        }

        if ((v20 & 1) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_74;
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANScanAdapter::setLpScanRetryCfg(AppleBCMWLANScanAdapter *this, int a2)
{
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(this + 6) + 56)) > 0xE)
  {
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(this + 6) + 56)) > 0x10)
    {
      AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(this + 6) + 56));

      return AppleBCMWLANScanAdapter::setLpScanRetryCfgV4(this, a2);
    }

    else
    {

      return AppleBCMWLANScanAdapter::setLpScanRetryCfgV3(this, a2);
    }
  }

  else
  {

    return AppleBCMWLANScanAdapter::setLpScanRetryCfgV2(this, a2);
  }
}

uint64_t AppleBCMWLANScanAdapter::setLpScanRetryCfgV2(AppleBCMWLANScanAdapter *this, int a2)
{
  v9 = 786433;
  v10 = 0xAAAAAAAA00000002;
  if (a2)
  {
    BYTE4(v10) = 25;
    BYTE6(v10) = 50;
    LODWORD(v10) = 7;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  BYTE5(v10) = v4;
  v5 = *(*(this + 6) + 64);
  v8[0] = &v9;
  v8[1] = 12;
  v6 = AppleBCMWLANCommander::runIOVarSet(v5, "scan_retry_cfg", v8, 0, 0);
  if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
  {
    CCLogStream::logInfo(*(*(this + 6) + 72), "[dk] %s@%d:Setting LP scan retry config to %d [0: None, 1: High Accuracy]\n", "setLpScanRetryCfgV2", 2020, a2);
  }

  return v6;
}

uint64_t AppleBCMWLANScanAdapter::setLpScanRetryCfgV3(AppleBCMWLANScanAdapter *this, int a2)
{
  v9 = 0x200100003;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (a2)
  {
    LOBYTE(v10) = 25;
    BYTE2(v10) = 50;
    HIDWORD(v9) = 7;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  BYTE1(v10) = v4;
  v5 = *(*(this + 6) + 64);
  v8[0] = &v9;
  v8[1] = 16;
  v6 = AppleBCMWLANCommander::runIOVarSet(v5, "scan_retry_cfg", v8, 0, 0);
  if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
  {
    CCLogStream::logInfo(*(*(this + 6) + 72), "[dk] %s@%d:Setting LP scan retry config v3 to %d [0: None, 1: High Accuracy]\n", "setLpScanRetryCfgV3", 2041, a2);
  }

  return v6;
}

uint64_t AppleBCMWLANScanAdapter::setLpScanRetryCfgV4(AppleBCMWLANScanAdapter *this, int a2)
{
  v9 = 0x200100004;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (a2)
  {
    LOBYTE(v10) = 25;
    HIWORD(v10) = 12825;
    BYTE2(v10) = 50;
    HIDWORD(v9) = 199;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  BYTE1(v10) = v4;
  v5 = *(*(this + 6) + 64);
  v8[0] = &v9;
  v8[1] = 16;
  v6 = AppleBCMWLANCommander::runIOVarSet(v5, "scan_retry_cfg", v8, 0, 0);
  if (*(*(this + 6) + 72) && CCLogStream::shouldLog())
  {
    CCLogStream::logInfo(*(*(this + 6) + 72), "[dk] %s@%d:Setting LP scan retry config v4 to %d [0: None, 1: High Accuracy]\n", "setLpScanRetryCfgV4", 2066, a2);
  }

  return v6;
}

uint64_t AppleBCMWLANScanAdapter::logState(AppleBCMWLANScanAdapter *this, char *a2)
{
  v2 = *(this + 6);
  v3 = *(v2 + 72);
  v4 = *(v2 + 32);
  v6 = *(v2 + 20);
  v7 = *(v2 + 8);
  return IO80211Print();
}

uint64_t AppleBCMWLANScanAdapter::triggerCC(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v3 = *a2;
  *(v2 + 24) = a2[1];
  *(v2 + 8) = v3;
  return CCFaultReporter::reportFault(*(*(a1 + 48) + 80), *(a2 + 4), "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANScanAdapter.cpp", 0x84Au, "triggerCC", 0, *(a2 + 1), 0);
}

uint64_t AppleBCMWLANScanAdapter::handleScanEvent(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  switch(v2)
  {
    case 3:
      return AppleBCMWLANScanAdapter::handleEventScanAdd(a1, a2);
    case 2:
      return AppleBCMWLANScanAdapter::handleEventScanComplete(a1, a2);
    case 1:
      return AppleBCMWLANScanAdapter::handleEventScanStart(a1, a2);
  }

  return a1;
}

uint64_t AppleBCMWLANScanAdapter::handleEventScanStart(uint64_t a1, uint64_t a2)
{
  bzero(v57, 0x323uLL);
  v6 = a2 + 48;
  v5 = *(a2 + 48);
  if (v5 <= 1)
  {
    v7 = *(a2 + 20);
    if (v7 <= 0xB)
    {
      if (*(*(a1 + 48) + 72))
      {
        v8 = 1;
        if (!CCLogStream::shouldLog())
        {
          return v8;
        }

        v9 = *(*(a1 + 48) + 72);
        v49 = *(a2 + 20);
LABEL_11:
        CCLogStream::logAlert(v9, "[dk] %s@%d:ERROR: Invalid event data length %d \n");
        return v8;
      }

      return 1;
    }

    v11 = v7 - 1 + v6;
    if (__CFADD__(v7 - 1, v6) || (v18 = a2 + 59, v18 < v6 || v6 >= 0xFFFFFFFFFFFFFFF5 || v18 > v11 || v11 < v6))
    {
      v13 = *(a1 + 48);
      v12 = a1 + 48;
      if (*(v13 + 72))
      {
        v8 = 1;
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANScanAdapter::handleEventScanStart(v12);
        }

        return v8;
      }

      return 1;
    }

    v19 = *(a2 + 56);
    v20 = *(a2 + 58);
    if (2 * (v20 + v19) + 12 > v7)
    {
      if (*(*(a1 + 48) + 72))
      {
        v8 = 1;
        if (CCLogStream::shouldLog())
        {
          v52 = *(a2 + 56);
          v53 = *(a2 + 58);
          v51 = *(a2 + 20);
          CCLogStream::logAlert(*(*(a1 + 48) + 72), "[dk] %s@%d:ERROR: Invalid event data length %d, num channels slice0 %d, slice1 %d \n");
        }

        return v8;
      }

      return 1;
    }

    v44 = *(a2 + 58);
    v58 = *(a2 + 58);
    v45 = v19;
    v59[0] = v19;
    if ((v20 + v19) <= 0x190)
    {
      if (v19 | v44)
      {
        v46 = 0;
        do
        {
          ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(*(*(a1 + 48) + 56));
          AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, *(a2 + 60 + 2 * v46));
          v57[v46] = ChanSpecGetPrimarySpec();
          v44 = v58;
          v45 = v59[0];
          if (v46 > 0x18E)
          {
            break;
          }

          ++v46;
        }

        while (v46 < v59[0] + v58);
      }
    }

    else if (*(*(a1 + 48) + 72) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(a1 + 48) + 72), "[dk] %s@%d:ERROR: Channels in scan list %d > max %d\n", "handleEventScanStart", 2208, *(a2 + 58) + *(a2 + 56), 400);
    }

    if (*(*(a1 + 48) + 72) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(a1 + 48) + 72), "[dk] %s@%d:Infra Scan started, flags %x, 2.4G channels %d, 5G channels %d\n", "handleEventScanStart", 2215, *(a2 + 52), v44, v45);
    }

    goto LABEL_99;
  }

  if (v5 != 2)
  {
    if (*(*(a1 + 48) + 72) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(a1 + 48) + 72), "[dk] %s@%d:Unsupproted scan start version %d\n", "handleEventScanStart", 2270, v5);
    }

    return 0;
  }

  v10 = *(a2 + 20);
  if (v10 <= 0xB)
  {
    if (*(*(a1 + 48) + 72))
    {
      v8 = 1;
      if (!CCLogStream::shouldLog())
      {
        return v8;
      }

      v9 = *(*(a1 + 48) + 72);
      v50 = *(a2 + 20);
      goto LABEL_11;
    }

    return 1;
  }

  v14 = v10 - 1;
  v15 = v14 + v6;
  if (__CFADD__(v14, v6) || (v21 = a2 + 63, v21 < v6 || v6 >= 0xFFFFFFFFFFFFFFF1 || v21 > v15 || v15 < v6))
  {
    v17 = *(a1 + 48);
    v16 = a1 + 48;
    if (*(v17 + 72))
    {
      v8 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::handleEventScanStart(v16);
      }

      return v8;
    }

    return 1;
  }

  v22 = *(a2 + 56);
  if (!v22)
  {
LABEL_85:
    if (*(*(a1 + 48) + 72) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(a1 + 48) + 72), "[dk] %s@%d:Infra Scan started, flags %x, 2.4G channels %d, 5G channels %d\n", "handleEventScanStart", 2268, *(a2 + 52), v58, v59[0]);
    }

LABEL_99:
    v59[1] = 1;
    AppleBCMWLANCore::postMessageInfra(*(*(a1 + 48) + 56), 0x7Du, v57, 0x323uLL);
    return 0;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v54 = v15;
  v55 = a2 + 60;
  while (1)
  {
    v26 = (v55 + v24);
    v27 = v55 + v24 + 5;
    if (v27 < v6 || (v55 + v24) >= 0xFFFFFFFFFFFFFFFBLL || v27 > v15 || v6 > v26 || v15 < v26)
    {
      if (!*(*(a1 + 48) + 72))
      {
        return 1;
      }

      v8 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::handleEventScanStart(a1 + 48);
      }

      return v8;
    }

    v32 = v26[1];
    if (!v26[1])
    {
      goto LABEL_81;
    }

    if (v25 + (v32 >> 1) >= 0x191)
    {
      if (*(*(a1 + 48) + 72) && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*(a1 + 48) + 72), "[dk] %s@%d:ERROR: Channels in scan list %d > max %d\n", "handleEventScanStart", 2240, v25 + (v32 >> 1), 400);
      }

      goto LABEL_81;
    }

    v33 = v59;
    if (!*v26)
    {
      goto LABEL_60;
    }

    if (*v26 == 1)
    {
      break;
    }

LABEL_84:
    if (v22 <= ++v23)
    {
      goto LABEL_85;
    }
  }

  v33 = &v58;
LABEL_60:
  *v33 += v32 >> 1;
  v34 = v26 + 2;
  v35 = v26 + v32 + 3;
  v36 = __CFADD__(v32 - 1, v26 + 2);
  if (v35 >= v6 && !v36 && v35 <= v15 && v6 <= v34 && v15 >= v34)
  {
    if (v32 != 1)
    {
      if (v32 >> 1 <= 1)
      {
        v41 = 1;
      }

      else
      {
        v41 = v32 >> 1;
      }

      do
      {
        v42 = AppleBCMWLANCore::getChanSpecHandler(*(*(a1 + 48) + 56));
        v43 = *v34++;
        AppleBCMWLANChanSpec::getAppleChannelSpec(v42, v43);
        v57[v25++] = ChanSpecGetPrimarySpec();
        --v41;
      }

      while (v41);
    }

LABEL_81:
    v56 = 0;
    if (AppleBCMWLANUtil::safe_align_up((v24 + v32 + 4), 4, &v56, v4))
    {
      AppleBCMWLANScanAdapter::handleEventScanStart(a1 + 48);
    }

    else
    {
      if (v56 < 0xFFFF)
      {
        v24 = v56;
        v22 = *(a2 + 56);
        v15 = v54;
        goto LABEL_84;
      }

      AppleBCMWLANScanAdapter::handleEventScanStart(a1 + 48);
    }

    if (*(*(a1 + 48) + 72) && CCLogStream::shouldLog())
    {
      AppleBCMWLANScanAdapter::handleEventScanStart(a1 + 48);
    }

    return 0;
  }

  if (!*(*(a1 + 48) + 72))
  {
    return 1;
  }

  v8 = 1;
  if (CCLogStream::shouldLog())
  {
    AppleBCMWLANScanAdapter::handleEventScanStart(a1 + 48);
  }

  return v8;
}

uint64_t AppleBCMWLANScanAdapter::handleEventScanComplete(uint64_t a1, uint64_t a2)
{
  v7 = 256;
  v3 = *(a1 + 48);
  if (*(v3 + 72))
  {
    shouldLog = CCLogStream::shouldLog();
    v3 = *(a1 + 48);
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v3 + 72), "[dk] %s@%d:Infra Scan complete status %d\n", "handleEventScanComplete", 2293, *(a2 + 8));
      v3 = *(a1 + 48);
    }
  }

  AppleBCMWLANCore::postMessageInfra(*(v3 + 56), 0x7Eu, &v7, 2uLL);
  return 0;
}

uint64_t AppleBCMWLANScanAdapter::handleEventScanAdd(uint64_t a1, uint64_t a2)
{
  v56 = 0;
  v3 = a1 + 48;
  CurrentSlice = AppleBCMWLANCore::getCurrentSlice(*(*(a1 + 48) + 56));
  v7 = a2 + 48;
  v6 = *(a2 + 48);
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (*(*v3 + 72) && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*v3 + 72), "[dk] %s@%d:Unsupproted scan add version %d\n");
      }

      return 22;
    }

    v10 = *(a2 + 20);
    if (v10 <= 0xB)
    {
      if (!*(*v3 + 72) || !CCLogStream::shouldLog())
      {
        return 22;
      }

      v9 = *(*v3 + 72);
      v48 = *(a2 + 20);
      goto LABEL_11;
    }

    v14 = v10 - 1;
    v15 = v14 + v7;
    if (!__CFADD__(v14, v7))
    {
      v19 = a2 + 63;
      if (v19 >= v7 && v7 < 0xFFFFFFFFFFFFFFF1 && v19 <= v15 && v15 >= v7)
      {
        if (*(a2 + 56))
        {
          LOBYTE(v20) = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v53 = v15;
          v54 = a2 + 60;
          while (1)
          {
            v24 = v54 + v22;
            v25 = v54 + v22 + 5;
            if (v25 < v7 || v54 + v22 >= 0xFFFFFFFFFFFFFFFBLL || v25 > v15 || v7 > v24 || v15 < v24)
            {
              if (!*(*v3 + 72))
              {
                return 1;
              }

              v12 = 1;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANScanAdapter::handleEventScanAdd(v3);
              }

              return v12;
            }

            v30 = *(v24 + 2);
            if (*(v24 + 2))
            {
              if (v23 + (v30 >> 1) < 0x191)
              {
                v31 = (v24 + 4);
                v32 = v30 - 1 + v24 + 4;
                v33 = __CFADD__(v30 - 1, v31);
                if (v32 < v7 || v33 || v32 > v15 || v7 > v31 || v15 < v31)
                {
                  if (!*(*v3 + 72))
                  {
                    return 1;
                  }

                  v12 = 1;
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANScanAdapter::handleEventScanAdd(v3);
                  }

                  return v12;
                }

                if (v30 != 1)
                {
                  v38 = v30 >> 1;
                  if (v30 >> 1 <= 1)
                  {
                    LOWORD(v38) = 1;
                  }

                  v39 = (v38 + v23);
                  do
                  {
                    if (AppleBCMWLANCore::is6GChanSpec(*(*v3 + 56), *v31))
                    {
                      LOBYTE(v20) = v20 + 1;
                      v56 = v20;
                    }

                    ++v31;
                    ++v23;
                  }

                  while (v39 != v23);
                }
              }

              else if (*(*v3 + 72) && CCLogStream::shouldLog())
              {
                CCLogStream::logAlert(*(*v3 + 72), "[dk] %s@%d:ERROR: Channels in scan list %d > max %d\n", "handleEventScanAdd", 2372, v23 + (v30 >> 1), 400);
              }
            }

            v55 = 0;
            if (AppleBCMWLANUtil::safe_align_up((v22 + v30 + 4), 4, &v55, v5))
            {
              break;
            }

            v22 = v55;
            if (v55 >= 0xFFFF)
            {
              AppleBCMWLANScanAdapter::handleEventScanAdd(v3);
              goto LABEL_116;
            }

            ++v21;
            v15 = v53;
            if (*(a2 + 56) <= v21)
            {
              goto LABEL_102;
            }
          }

          AppleBCMWLANScanAdapter::handleEventScanAdd(v3);
LABEL_116:
          if (*(*v3 + 72) && CCLogStream::shouldLog())
          {
            AppleBCMWLANScanAdapter::handleEventScanAdd(v3);
          }

          return 0;
        }

        LOBYTE(v20) = 0;
        goto LABEL_102;
      }
    }

    if (*(*v3 + 72))
    {
      v12 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::handleEventScanAdd(v3);
      }

      return v12;
    }

    return 1;
  }

  v8 = *(a2 + 20);
  if (v8 <= 0xB)
  {
    if (!*(*v3 + 72) || !CCLogStream::shouldLog())
    {
      return 22;
    }

    v9 = *(*v3 + 72);
    v47 = *(a2 + 20);
LABEL_11:
    CCLogStream::logAlert(v9, "[dk] %s@%d:ERROR: Invalid event data length %d \n");
    return 22;
  }

  v11 = v8 - 1 + v7;
  if (__CFADD__(v8 - 1, v7) || (v16 = a2 + 59, v16 < v7 || v7 >= 0xFFFFFFFFFFFFFFF5 || v16 > v11 || v11 < v7))
  {
    if (*(*v3 + 72))
    {
      v12 = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANScanAdapter::handleEventScanAdd(v3);
      }

      return v12;
    }

    return 1;
  }

  v17 = *(a2 + 56);
  v18 = *(a2 + 58);
  if (2 * (v18 + v17) + 12 > v8)
  {
    if (*(*v3 + 72) && CCLogStream::shouldLog())
    {
      v51 = *(a2 + 56);
      v52 = *(a2 + 58);
      v49 = *(a2 + 20);
      CCLogStream::logAlert(*(*v3 + 72), "[dk] %s@%d:ERROR: Invalid event data length %d, num channels slice0 %d, slice1 %d \n");
    }

    return 22;
  }

  if ((v18 + v17) >= 0x191)
  {
    if (*(*v3 + 72) && CCLogStream::shouldLog())
    {
      v50 = *(a2 + 58) + *(a2 + 56);
      CCLogStream::logAlert(*(*v3 + 72), "[dk] %s@%d:ERROR: Channels in scan list %d > max %d\n");
    }

    return 22;
  }

  LOBYTE(v20) = 0;
  if (CurrentSlice)
  {
    v40 = *(a2 + 56);
  }

  else
  {
    v40 = 0;
  }

  if (!CurrentSlice)
  {
    LOWORD(v18) = 0;
  }

  v41 = v18 + v17;
  if (v40 < v41)
  {
    v20 = 0;
    v42 = (a2 + 2 * v40 + 60);
    v43 = v41 - v40;
    do
    {
      v44 = *v42++;
      v20 += AppleBCMWLANCore::is6GChanSpec(*(*v3 + 56), v44);
      --v43;
    }

    while (v43);
  }

  v56 = v20;
  if (*(*v3 + 72) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*v3 + 72), "[dk] %s@%d:6G follow up scan started total %d channels, after %d 2.4G channels or %d 5G channels\n", "handleEventScanAdd", 2347, v20, *(a2 + 58), *(a2 + 56));
  }

LABEL_102:
  v45 = *v3;
  if (*(*v3 + 72))
  {
    shouldLog = CCLogStream::shouldLog();
    v45 = *v3;
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v45 + 72), "[dk] %s@%d:6G follow up scan started total %d channels after 2.4G or 5G scans \n", "handleEventScanAdd", 2399, v20);
      v45 = *v3;
    }
  }

  AppleBCMWLANCore::postMessageInfra(*(v45 + 56), 0xC6u, &v56, 1uLL);
  return 0;
}

uint64_t OUTLINED_FUNCTION_9_12@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 72);
  v3 = *v1;
  return result;
}

AppleBCMWLANHistogram *AppleBCMWLANHistogram::withBinCountAndQuantizer(AppleBCMWLANHistogram *this, unsigned int (*a2)(unsigned int), int a3)
{
  v4 = a2;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANHistogramMetaClass, &v8))
  {
    return 0;
  }

  v6 = v8;
  if (v8 && (AppleBCMWLANHistogram::initWithBins(v8, v4, a3, this) & 1) == 0)
  {
    (*(*v6 + 16))(v6);
    return 0;
  }

  return v6;
}

uint64_t AppleBCMWLANHistogram::initWithBins(OSObject *this, int a2, int a3, BOOL (__cdecl *a4)(const OSMetaClassBase *__hidden this, const OSMetaClassBase *anObject))
{
  result = OSObject::init(this);
  if (result)
  {
    result = IOMallocZeroTyped();
    this[1].OSMetaClassBase::__vftable = result;
    if (result)
    {
      *result = a2;
      HIDWORD(this[1].getMetaClass) = a3;
      this[1].isEqualTo = a4;
      v9 = this[1].getMetaClass + 1;
      this[1].retain = IOMallocZeroData();
      v10 = this[1].OSMetaClassBase::__vftable;
      retain = v10->retain;
      if (retain)
      {
        bzero(retain, 4 * LODWORD(v10->getMetaClass));
        v10 = this[1].OSMetaClassBase::__vftable;
      }

      HIDWORD(v10->release) = 0;
      LODWORD(this[1].release) = -1;
      return this[1].retain != 0;
    }
  }

  return result;
}

void AppleBCMWLANHistogram::free(OSObject *this)
{
  v2 = this[1].OSMetaClassBase::__vftable;
  if (v2)
  {
    if (!v2->retain || (getMetaClass_low = LODWORD(v2->getMetaClass), IOFreeData(), v2->retain = 0, (v2 = this[1].OSMetaClassBase::__vftable) != 0))
    {
      IOFree(v2, 0x20uLL);
      this[1].OSMetaClassBase::__vftable = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANHistogram::dump(AppleBCMWLANHistogram *this, const char *a2, char *__str, int64_t __size, char a5)
{
  if (!__str)
  {
    return 0;
  }

  if (__size < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = snprintf(__str, __size, "%s=[", a2);
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = *(this + 5);
  do
  {
    if (__size > v9)
    {
      v9 = (snprintf(&__str[v9], __size - v9, "%u,", *(*(v13 + 8) + 4 * v11)) + v9);
      v13 = *(this + 5);
    }

    v14 = *(*(v13 + 8) + 4 * v11);
    v10 += v14;
    v12 += v14 * v11++;
  }

  while (v11 <= *v13);
  if (__size > v9)
  {
    v9 = (snprintf(&__str[v9], __size - v9, "]; sum=%u,cnt=%u; min=%u; max=%u", v12, v10, *(v13 + 16), *(v13 + 20)) + v9);
  }

  if (a5)
  {
    if (__size > v9)
    {
      v9 = (snprintf(&__str[v9], __size - v9, "\n\n") + v9);
    }

    v15 = 0;
    v27 = v10;
    v16 = *(this + 5);
    v17 = v9;
    while (1)
    {
      v18 = *(v16 + 24);
      v19 = *(v16 + 16);
      if (v18)
      {
        v20 = v18(v19);
        v16 = *(this + 5);
        if (v15 >= v20)
        {
          v21 = (*(v16 + 24))(*(v16 + 20));
          v16 = *(this + 5);
          if (v15 <= v21)
          {
            goto LABEL_22;
          }
        }
      }

      else if (v15 >= v19 && v15 <= *(v16 + 20))
      {
LABEL_22:
        v22 = *(*(v16 + 8) + 4 * v15);
        if (__size > v17)
        {
          v17 = (snprintf(&__str[v17], __size - v17, "%3u |", v15) + v17);
        }

        v23 = 0;
        v24 = 80 * v22 / v27;
        do
        {
          if (__size > v17)
          {
            if (v23 <= v24)
            {
              v25 = 37;
            }

            else
            {
              v25 = 32;
            }

            v17 = (snprintf(&__str[v17], __size - v17, "%c", v25) + v17);
          }

          ++v23;
        }

        while (v23 != 80);
        v16 = *(this + 5);
        if (__size > v17)
        {
          v17 = (snprintf(&__str[v17], __size - v17, "| %-6u\n", *(*(v16 + 8) + 4 * v15)) + v17);
          v16 = *(this + 5);
        }
      }

      if (++v15 > *v16)
      {
        if (__size <= v17)
        {
          return v17;
        }

        else
        {
          return (snprintf(&__str[v17], __size - v17, "\n") + v17);
        }
      }
    }
  }

  return v9;
}

uint64_t AppleBCMWLANTxBuffer::free(AppleBCMWLANTxBuffer *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    v4 = v2[4];
    if (v4)
    {
      IO80211Buffer::returnBuffer(v4);
      v2 = *(this + 7);
    }

    *v2 = 0;
    memset_s(*(this + 7), 0x30uLL, 0, 0x30uLL);
    v5 = *(this + 7);
    if (v5)
    {
      IOFree(v5, 0x30uLL);
      *(this + 7) = 0;
    }

    return IOCommand::free(this);
  }

  else
  {

    return IOLog("Failed to allocate AppleBCMWLANTxBuffer_IVars\n");
  }
}

OSObject *AppleBCMWLANTxBuffer::withOptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANTxBufferMetaClass, &v8))
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

OSObject *AppleBCMWLANChipBackplane::withConfigAndMap(AppleBCMWLANChipBackplane *this, AppleBCMWLANChipConfigSpace *a2, IOMemoryMap *a3, AppleBCMWLANChipManagerPCIe *a4, AppleBCMWLANPCIeMMIOHistory *a5)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipBackplaneMetaClass, &v11))
  {
    return 0;
  }

  v9 = v11;
  if (v11 && ((v11->OSMetaClassBase::__vftable[1].getMetaClass)(v11, this, a2, a3, a4) & 1) == 0)
  {
    (v9->release)(v9);
    return 0;
  }

  return v9;
}

uint64_t AppleBCMWLANChipBackplane::initWithConfigAndMap(OSObject *this, AppleBCMWLANChipConfigSpace *a2, IOMemoryMap *a3, AppleBCMWLANChipManagerPCIe *a4, AppleBCMWLANPCIeMMIOHistory *a5)
{
  result = OSObject::init(this);
  if (result)
  {
    result = IOMallocZeroTyped();
    *&this[1].refcount = result;
    if (result)
    {
      *(result + 3120) = a4;
      v10 = *&this[1].refcount;
      if (*(v10 + 3120))
      {
        *(v10 + 1624) = a2;
        result = *(*&this[1].refcount + 1624);
        if (!result)
        {
          return result;
        }

        (*(*result + 8))(result);
        if (a5)
        {
          *(*&this[1].refcount + 3112) = a5;
          (*(**(*&this[1].refcount + 3112) + 8))(*(*&this[1].refcount + 3112));
        }

        *(*&this[1].refcount + 1632) = 0;
        if (AppleBCMWLANChipManagerPCIe::getCoreCount(a4) <= 0xB)
        {
          v11 = 0;
          v12 = 1640;
          do
          {
            v13 = *&this[1].refcount;
            v14 = *(v13 + 1632);
            AppleBCMWLANChipManagerPCIe::copyCore(a4, v13 + v12, v11++);
            v12 += 32;
          }

          while (v11 != 11);
          if (AppleBCMWLANChipManagerPCIe::getWrapperCount(a4) <= 0x22)
          {
            v15 = 0;
            v16 = 2008;
            do
            {
              v17 = *&this[1].refcount;
              v18 = *(v17 + 1632);
              AppleBCMWLANChipManagerPCIe::copyWrapper(a4, v17 + v16, v15++);
              v16 += 32;
            }

            while (v15 != 34);
            *(*&this[1].refcount + 2000) = AppleBCMWLANChipManagerPCIe::getCoreRemappableWindowCount(a4);
            v19 = *(*&this[1].refcount + 2000);
            *(*&this[1].refcount + 1992) = IOMallocZeroTyped();
            v20 = *&this[1].refcount;
            v21 = *(v20 + 1632);
            AppleBCMWLANChipManagerPCIe::copyRemappableCoreWindows(a4, *(v20 + 1992), *(v20 + 2000));
            *(*&this[1].refcount + 3104) = AppleBCMWLANChipManagerPCIe::getWrapperRemappableWindowCount(a4);
            v22 = *(*&this[1].refcount + 3104);
            *(*&this[1].refcount + 3096) = IOMallocZeroTyped();
            v23 = *&this[1].refcount;
            v24 = *(v23 + 1632);
            AppleBCMWLANChipManagerPCIe::copyRemappableWrapperWindows(a4, *(v23 + 3096), *(v23 + 3104));
            *(*&this[1].refcount + 3128) = AppleBCMWLANChipManagerPCIe::getConfigSpaceSaveRange(*(*&this[1].refcount + 3120));
            *(*&this[1].refcount + 3136) = AppleBCMWLANChipManagerPCIe::getConfigSpaceSaveCount(*(*&this[1].refcount + 3120));
            *(*&this[1].refcount + 3152) = 0;
            v25 = *&this[1].refcount;
            if (*(v25 + 3136))
            {
              v26 = 0;
              v27 = 4;
              do
              {
                *(v25 + 3152) += *(*(v25 + 3128) + v27);
                ++v26;
                v25 = *&this[1].refcount;
                v27 += 8;
              }

              while (v26 < *(v25 + 3136));
            }

            v28 = *(v25 + 3152);
            *(*&this[1].refcount + 3144) = IOMallocZeroData();
            if (*(*&this[1].refcount + 3144))
            {
              read_random();
              *(*&this[1].refcount + 2004) %= *(*&this[1].refcount + 2000);
              v29 = *&this[1].refcount;
              read_random();
              *(*&this[1].refcount + 3108) %= *(*&this[1].refcount + 3104);
              *(*&this[1].refcount + 3160) = 0;
              return 1;
            }

            IOLog("AppleBCMWLANChipManagerPCIe::initWithConfigAndMap() Failed to allocate config space buffer\n");
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipBackplane::getPowerControlRegReadStatus(AppleBCMWLANChipBackplane *this)
{
  v6 = 0;
  v2 = *(*(this + 6) + 3120);
  if (!v2)
  {
    return 1;
  }

  if (!AppleBCMWLANChipManagerPCIe::isPowerControlRequired(v2))
  {
    return 1;
  }

  ++*(*(this + 6) + 444);
  v3 = AppleBCMWLANChipBackplane::mapCore(this, 3u);
  v4 = AppleBCMWLANChipBackplane::readRegister32(this, v3, 0x1E8u, &v6, 0);
  result = 0;
  if (!v4)
  {
    return 1;
  }

  return result;
}

uint64_t AppleBCMWLANChipBackplane::readPCIeCoreReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 444);
  v6 = AppleBCMWLANChipBackplane::mapCore(this, 3u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

void AppleBCMWLANChipBackplane::free(OSObject *this)
{
  v2 = *&this[1].refcount;
  if (v2)
  {
    if (*(v2 + 3144))
    {
      v3 = *(v2 + 3152);
      v4 = *(v2 + 3144);
      IOFreeData();
      *(*&this[1].refcount + 3144) = 0;
      v2 = *&this[1].refcount;
    }

    if (*(v2 + 3096))
    {
      IOFree(*(v2 + 3096), 32 * *(v2 + 3104));
      *(*&this[1].refcount + 3096) = 0;
      *(*&this[1].refcount + 3096) = 0;
      v2 = *&this[1].refcount;
    }

    if (*(v2 + 1992))
    {
      IOFree(*(v2 + 1992), 32 * *(v2 + 2000));
      *(*&this[1].refcount + 1992) = 0;
      *(*&this[1].refcount + 1992) = 0;
      v2 = *&this[1].refcount;
    }

    v5 = *(v2 + 3112);
    if (v5)
    {
      (*(*v5 + 16))(*(v2 + 3112));
      *(*&this[1].refcount + 3112) = 0;
      v2 = *&this[1].refcount;
    }

    v6 = *(v2 + 1624);
    if (v6)
    {
      (*(*v6 + 16))(*(v2 + 1624));
      *(*&this[1].refcount + 1624) = 0;
      v2 = *&this[1].refcount;
    }

    memset_s(v2, 0xC60uLL, 0, 0xC60uLL);
    v7 = *&this[1].refcount;
    if (v7)
    {
      IOFree(v7, 0xC60uLL);
      *&this[1].refcount = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANChipBackplane::validateCores(AppleBCMWLANChipBackplane *this)
{
  v1 = *(this + 6);
  if (!*(v1 + 2000))
  {
    return 1;
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = *(v1 + 1992);
    v7 = *(v6 + v3);
    result = (v7 == 0xFFFFFFFFLL) & v5;
    if (v7 != -1 && (v5 & 1) != 0)
    {
      result = AppleBCMWLANChipBackplane::validateWindow(this, (v6 + v3), *(v1 + 32 * *(v6 + v3) + 1644));
      v1 = *(this + 6);
    }

    ++v4;
    v3 += 32;
    v5 = result;
  }

  while (v4 < *(v1 + 2000));
  return result;
}

uint64_t AppleBCMWLANChipBackplane::mapCore(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  result = v3 + 1640 + 32 * a2;
  if ((*(result + 24) & 1) == 0)
  {
    v6 = a2;
    v7 = *(v3 + 1992) + 32 * *(v3 + 2004);
    v8 = *v7;
    if (*v7 != -1)
    {
      *(v3 + 1640 + 32 * *v7 + 24) = 0;
      *(*(a1 + 48) + 32 * v8 + 1656) = 0;
      v3 = *(a1 + 48);
    }

    AppleBCMWLANChipConfigSpace::writeReg32(*(v3 + 1624), *(v7 + 4), *(v3 + 32 * a2 + 1644));
    *(*(a1 + 48) + 32 * v4 + 1664) = 1;
    *(*(a1 + 48) + 32 * v4 + 1656) = *(v7 + 16);
    *v7 = v6;
    *(*(a1 + 48) + 2004) = (*(*(a1 + 48) + 2004) + 1) % *(*(a1 + 48) + 2000);
    return *(a1 + 48) + 32 * v4 + 1640;
  }

  return result;
}

uint64_t AppleBCMWLANChipBackplane::validateWrappers(AppleBCMWLANChipBackplane *this)
{
  v1 = *(this + 6);
  if (!*(v1 + 3104))
  {
    return 1;
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = *(v1 + 3096);
    v7 = *(v6 + v3);
    result = (v7 == 0xFFFFFFFFLL) & v5;
    if (v7 != -1 && (v5 & 1) != 0)
    {
      result = AppleBCMWLANChipBackplane::validateWindow(this, (v6 + v3), *(v1 + 32 * *(v6 + v3) + 2012));
      v1 = *(this + 6);
    }

    ++v4;
    v3 += 32;
    v5 = result;
  }

  while (v4 < *(v1 + 3104));
  return result;
}

uint64_t AppleBCMWLANChipBackplane::isWrapperMapped(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 48);
  v3 = v2 + 32 * a2;
  if (*(v3 + 2032) == 1)
  {
    v4 = (v3 + 2008);
    if (v4[2])
    {
      if ((a2 | 0x10000) == *v4)
      {
        return 1;
      }
    }
  }

  v6 = *(v2 + 3104);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v2 + 3096);
  v8 = v6 - 1;
  do
  {
    v9 = v8;
    v10 = *v7;
    v7 += 8;
    v11 = v10;
    v12 = v10 != -1 && a2 == v11;
    result = v12;
    if (v12)
    {
      break;
    }

    v8 = v9 - 1;
  }

  while (v9);
  return result;
}

uint64_t AppleBCMWLANChipBackplane::mapWrapper(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  result = v3 + 2008 + 32 * a2;
  if ((*(result + 24) & 1) == 0)
  {
    v6 = a2;
    v7 = *(v3 + 3096) + 32 * *(v3 + 3108);
    v8 = *v7;
    if (*v7 != -1)
    {
      *(v3 + 2008 + 32 * *v7 + 24) = 0;
      *(*(a1 + 48) + 32 * v8 + 2024) = 0;
      v3 = *(a1 + 48);
    }

    AppleBCMWLANChipConfigSpace::writeReg32(*(v3 + 1624), *(v7 + 4), *(v3 + 32 * a2 + 2012));
    *(*(a1 + 48) + 32 * v4 + 2032) = 1;
    *(*(a1 + 48) + 32 * v4 + 2024) = *(v7 + 16);
    *v7 = v6 | 0x10000;
    *(*(a1 + 48) + 3108) = (*(*(a1 + 48) + 3108) + 1) % *(*(a1 + 48) + 3104);
    return *(a1 + 48) + 32 * v4 + 2008;
  }

  return result;
}

uint64_t AppleBCMWLANChipBackplane::writeRegister32(uint64_t a1, uint64_t a2, unsigned int a3, uint32_t a4)
{
  v7 = a3;
  v8 = *(a2 + 16) + a3;
  v9 = a4;
  kdebug_trace();
  v10 = *(*(a1 + 48) + 3112);
  if (v10)
  {
    v10 = AppleBCMWLANPCIeMMIOHistory::recordMMIOBackPlane(v10, v8, v9, 4, 0, 1);
  }

  Device = AppleBCMWLANBusInterfacePCIe::getDevice(v10);
  IOPCIDevice::MemoryWrite32(Device, *(a2 + 12), *(a2 + 16) + v7, a4);
  v12 = *(*(a1 + 48) + 3112);
  if (v12)
  {
    AppleBCMWLANPCIeMMIOHistory::recordMMIOBackPlane(v12, v8, v9, 4, 0, 0);
  }

  return kdebug_trace();
}

uint64_t AppleBCMWLANChipBackplane::readRegister32(AppleBCMWLANChipBackplane *a1, uint64_t a2, unsigned int a3, uint32_t *a4, int a5)
{
  if (a5)
  {
    v9 = AppleBCMWLANChipBackplane::forcePowerLite(a1, 1, 0);
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = *(a2 + 16) + a3;
  kdebug_trace();
  v12 = *(*(a1 + 6) + 3112);
  if (v12)
  {
    v12 = AppleBCMWLANPCIeMMIOHistory::recordMMIOBackPlane(v12, v11, 0, 4, 1, 1);
  }

  Device = AppleBCMWLANBusInterfacePCIe::getDevice(v12);
  IOPCIDevice::MemoryRead32(Device, *(a2 + 12), *(a2 + 16) + v10, a4);
  v14 = *(*(a1 + 6) + 3112);
  if (v14)
  {
    AppleBCMWLANPCIeMMIOHistory::recordMMIOBackPlane(v14, v11, *a4, 4, 1, 0);
  }

  v15 = *a4;
  kdebug_trace();
  if (v9)
  {
    AppleBCMWLANChipBackplane::forcePowerLite(a1, 0, 0);
  }

  if (*a4 == -1)
  {
    return 3825173258;
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANChipBackplane::forcePowerLite(AppleBCMWLANChipBackplane *this, int a2, int a3)
{
  v6 = (this + 48);
  if (!AppleBCMWLANChipManagerPCIe::isPowerControlRequired(*(*(this + 6) + 3120)))
  {
    return 1;
  }

  if (a3)
  {
    AppleBCMWLANChipBackplane::forcePowerLite(BOOL,BOOL)::currentPowerStatus = a2;
    return 1;
  }

  v14 = 0;
  if (AppleBCMWLANChipManagerPCIe::isDARUpdateAllowed(*(*v6 + 3120)))
  {
    ++*(*(this + 6) + 444);
    v8 = AppleBCMWLANChipBackplane::mapCore(this, 3u);
    if (AppleBCMWLANChipBackplane::readRegister32(this, v8, 2572, &v14, 0))
    {
      AppleBCMWLANChipBackplane::forcePowerLite();
    }

    if (!a2)
    {
      v9 = v14 & 0xFFFFFCFF;
LABEL_15:
      v14 = v9;
      ++*(*(this + 6) + 448);
      v11 = AppleBCMWLANChipBackplane::mapCore(this, 3u);
      AppleBCMWLANChipBackplane::writeRegister32(this, v11, 0xA0Cu, v9);
      if (a2)
      {
        IOSleep(0xFuLL);
        ++*(*(this + 6) + 444);
        v12 = AppleBCMWLANChipBackplane::mapCore(this, 3u);
        if (AppleBCMWLANChipBackplane::readRegister32(this, v12, 2572, &v14, 0))
        {
          AppleBCMWLANChipBackplane::forcePowerLite();
        }

        if ((~v14 & 0x30000) != 0)
        {
          AppleBCMWLANChipBackplane::forcePowerLite();
        }
      }

      return 1;
    }

    if ((~v14 & 0x300) != 0)
    {
      v9 = v14 | 0x300;
      goto LABEL_15;
    }
  }

  else
  {
    if (!a2)
    {
      ++*(*(this + 6) + 448);
      v10 = AppleBCMWLANChipBackplane::mapCore(this, 3u);
      AppleBCMWLANChipBackplane::writeRegister32(this, v10, 0x1E8u, 0);
      AppleBCMWLANChipBackplane::forcePowerLite(BOOL,BOOL)::currentPowerStatus = 0;
      IOSleep(0xFuLL);
      return 1;
    }

    if ((AppleBCMWLANChipBackplane::forcePowerLite(BOOL,BOOL)::currentPowerStatus & 1) == 0)
    {
      v14 = 768;
      ++*(*(this + 6) + 448);
      v13 = AppleBCMWLANChipBackplane::mapCore(this, 3u);
      AppleBCMWLANChipBackplane::writeRegister32(this, v13, 0x1E8u, 0x300u);
      AppleBCMWLANChipBackplane::forcePowerLite(BOOL,BOOL)::currentPowerStatus = a2;
      IOSleep(0xFuLL);
      if (AppleBCMWLANChipBackplane::readPCIeCoreReg32(this, 0x1E8u, &v14))
      {
        if ((*(**(*v6 + 3120) + 72))(*(*v6 + 3120)))
        {
          (*(**(*v6 + 3120) + 72))(*(*v6 + 3120));
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANChipBackplane::forcePowerLite(v6);
          }
        }

        panic("read failed for power control reg");
      }

      return 1;
    }
  }

  return 0;
}

uint64_t AppleBCMWLANChipBackplane::waitForValue32(AppleBCMWLANChipBackplane *a1, uint64_t a2, unsigned int a3, uint32_t a4, int a5, uint64_t a6, int a7)
{
  nanoseconds_to_absolutetime();
  v18 = mach_continuous_time();
  v17 = 0;
  while (1)
  {
    AppleBCMWLANChipBackplane::readRegister32(a1, a2, a3, &v17, a7);
    if ((a4 & ~v17) == 0 && (v17 & a5) == 0)
    {
      break;
    }

    if (mach_continuous_time() >= v18)
    {
      v14 = v17 & a4;
      v15 = (v17 & a5) == 0;
      goto LABEL_9;
    }
  }

  v15 = 1;
  v14 = a4;
LABEL_9:
  if (v14 == a4 && v15)
  {
    return 0;
  }

  else
  {
    return 3758097110;
  }
}

uint64_t AppleBCMWLANChipBackplane::writePCIeDoorbell(AppleBCMWLANChipBackplane *this, unsigned int a2, uint32_t a3)
{
  v6 = a2 & 0xFFFFFFFB;
  v8 = (this + 48);
  v7 = *(this + 6);
  if (v6 != 320)
  {
    return AppleBCMWLANChipBackplane::writePCIeDoorbell(v7, v8, a2, a3);
  }

  ++*(v7 + 448);
  v9 = AppleBCMWLANChipBackplane::mapCore(this, 3u);

  return AppleBCMWLANChipBackplane::writeRegister32(this, v9, a2, a3);
}

uint64_t AppleBCMWLANChipBackplane::writePCIeCoreReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, uint32_t a3)
{
  ++*(*(this + 6) + 448);
  v6 = AppleBCMWLANChipBackplane::mapCore(this, 3u);

  return AppleBCMWLANChipBackplane::writeRegister32(this, v6, a2, a3);
}

uint64_t AppleBCMWLANChipBackplane::dumpPCIeCoreEnumerationRegistersSF(AppleBCMWLANChipBackplane *this, char *a2, size_t a3)
{
  v3 = 3825172738;
  if (a3 >= 0x3C0)
  {
    v4 = a3;
    v22 = -1431655766;
    bzero(a2, a3);
    v7 = 0;
    v8 = &off_1003D3210;
    v9 = 12;
    do
    {
      v10 = *(v8 - 2);
      ++*(*(this + 6) + 444);
      v11 = AppleBCMWLANChipBackplane::mapCore(this, 3u);
      if (AppleBCMWLANChipBackplane::readRegister32(this, v11, v10, &v22, 0))
      {
        return 3825173258;
      }

      v12 = snprintf(&a2[v7], v4, "[%03x]%s: 0x%08x \n", v10, *v8, v22);
      if (v12 < 1 || v4 <= v12)
      {
        return v3;
      }

      v7 += v12;
      v4 -= v12;
      v8 += 2;
      --v9;
    }

    while (v9);
    v13 = 0;
    v23[0] = xmmword_1003B0AC0;
    v23[1] = xmmword_1003B0AD0;
    while (1)
    {
      v14 = v23 + 2 * v13;
      v15 = *v14;
      v16 = v14[1];
      if (*v14 < v16)
      {
        break;
      }

LABEL_16:
      if (++v13 == 4)
      {
        return 0;
      }
    }

    if (v13 >= 2)
    {
      v17 = "PCIeCoreRegDmaDevToHost";
    }

    else
    {
      v17 = "PCIeCoreRegDmaHostToDev";
    }

    while (1)
    {
      ++*(*(this + 6) + 444);
      v18 = AppleBCMWLANChipBackplane::mapCore(this, 3u);
      v19 = AppleBCMWLANChipBackplane::readRegister32(this, v18, v15, &v22, 0);
      if (v19)
      {
        return v19;
      }

      v20 = snprintf(&a2[v7], v4, "[%03x]%s: 0x%08x \n", v15, v17, v22);
      if (v20 < 1 || v4 <= v20)
      {
        return v3;
      }

      v7 += v20;
      v4 -= v20;
      v15 += 4;
      if (v15 >= v16)
      {
        goto LABEL_16;
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANChipBackplane::dumpPCIeCoreEnumerationRegistersMF(AppleBCMWLANChipBackplane *this, char *a2, size_t a3)
{
  v3 = 3825172738;
  if (a3 >= 0x3C0)
  {
    v4 = a3;
    v22 = -1431655766;
    bzero(a2, a3);
    v7 = 0;
    v8 = &off_1003D32D0;
    v9 = 12;
    do
    {
      v10 = *(v8 - 2);
      ++*(*(this + 6) + 444);
      v11 = AppleBCMWLANChipBackplane::mapCore(this, 3u);
      if (AppleBCMWLANChipBackplane::readRegister32(this, v11, v10, &v22, 0))
      {
        return 3825173258;
      }

      v12 = snprintf(&a2[v7], v4, "[%03x]%s: 0x%08x \n", v10, *v8, v22);
      if (v12 < 1 || v4 <= v12)
      {
        return v3;
      }

      v7 += v12;
      v4 -= v12;
      v8 += 2;
      --v9;
    }

    while (v9);
    v13 = 0;
    v23[0] = xmmword_1003B0AC0;
    v23[1] = xmmword_1003B0AD0;
    while (1)
    {
      v14 = v23 + 2 * v13;
      v15 = *v14;
      v16 = v14[1];
      if (*v14 < v16)
      {
        break;
      }

LABEL_16:
      if (++v13 == 4)
      {
        return 0;
      }
    }

    if (v13 >= 2)
    {
      v17 = "PCIeCoreRegDmaDevToHost";
    }

    else
    {
      v17 = "PCIeCoreRegDmaHostToDev";
    }

    while (1)
    {
      ++*(*(this + 6) + 444);
      v18 = AppleBCMWLANChipBackplane::mapCore(this, 3u);
      v19 = AppleBCMWLANChipBackplane::readRegister32(this, v18, v15, &v22, 0);
      if (v19)
      {
        return v19;
      }

      v20 = snprintf(&a2[v7], v4, "[%03x]%s: 0x%08x \n", v15, v17, v22);
      if (v20 < 1 || v4 <= v20)
      {
        return v3;
      }

      v7 += v20;
      v4 -= v20;
      v15 += 4;
      if (v15 >= v16)
      {
        goto LABEL_16;
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANChipBackplane::dumpPCIeCoreEnumerationRegisters(AppleBCMWLANChipBackplane *this, char *a2, size_t a3)
{
  if (AppleBCMWLANChipManagerPCIe::isMultiFunctionChip(*(*(this + 6) + 3120)))
  {

    return AppleBCMWLANChipBackplane::dumpPCIeCoreEnumerationRegistersMF(this, a2, a3);
  }

  else
  {

    return AppleBCMWLANChipBackplane::dumpPCIeCoreEnumerationRegistersSF(this, a2, a3);
  }
}

uint64_t AppleBCMWLANChipBackplane::dumpWrapperRegisters(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *), const char *a3, uint64_t a4, uint64_t a5, size_t *a6, uint64_t a7, unint64_t a8)
{
  v23 = -1431655766;
  if (a8)
  {
    v13 = 0;
    v14 = 0;
    v15 = a5 - *a6;
    v21 = a7;
    while (2)
    {
      v16 = (a7 + 8 * v13);
      v17 = *v16;
      for (i = v16[1] + v17; v17 < i; i = v16[1] + *v16)
      {
        result = a2(a1, v17, &v23);
        if (result)
        {
          return result;
        }

        v20 = snprintf((a4 + v15), *a6, "%s[%03x]: 0x%08x \n", a3, v17, v23);
        if (v20 < 1 || *a6 <= v20)
        {
          return 3825172738;
        }

        v17 = (v17 + 4);
        v15 += v20;
        *a6 -= v20;
      }

      v13 = ++v14;
      a7 = v21;
      if (v14 < a8)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t AppleBCMWLANChipBackplane::dumpCoreRegisters(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unsigned int *), const char *a3, uint64_t a4, uint64_t a5, size_t *a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v26 = -1431655766;
  if (!a8)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = a5 - *a6;
  v23 = a7;
  while (1)
  {
    v25 = v15;
    v17 = (a7 + 8 * v14);
    v18 = *v17;
    if (v18 < v17[1] + v18)
    {
      break;
    }

LABEL_15:
    v14 = (v25 + 1);
    v15 = v25 + 1;
    a7 = v23;
    if (v14 >= a8)
    {
      return 0;
    }
  }

  v19 = *v17;
  while (1)
  {
    result = a2(a1, v18, &v26);
    if (result)
    {
      return result;
    }

    if (a9 == 4)
    {
      v21 = snprintf((a4 + v16), *a6, "%s[%03x]: 0x%08x \n", a3, v19, v26);
      v19 = v18 + 4;
      v18 = (v18 + 4);
    }

    else
    {
      v22 = HIWORD(v26);
      if ((v19 & 3) != 0)
      {
        v22 = v26;
        v18 = v18;
      }

      else
      {
        v18 = (v18 + 4);
      }

      v21 = snprintf((a4 + v16), *a6, "%s[%03x]: 0x%04x \n", a3, v19, v22);
      v19 += 2;
    }

    if (v21 < 1 || *a6 <= v21)
    {
      return 3825172738;
    }

    v16 += v21;
    *a6 -= v21;
    if (v18 >= v17[1] + *v17)
    {
      goto LABEL_15;
    }
  }
}

uint64_t AppleBCMWLANChipBackplane::dumpD11CoreEnumerationRegisters(AppleBCMWLANChipBackplane *this, char *a2, size_t a3)
{
  v7 = a3;
  bzero(a2, a3);
  return AppleBCMWLANChipBackplane::dumpCoreRegisters(this, AppleBCMWLANChipBackplane::readMACCoreReg32, "MAC", a2, a3, &v7, &unk_1003B0BA0, 0x11uLL, 4);
}

uint64_t AppleBCMWLANChipBackplane::readMACCoreReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 420);
  v6 = AppleBCMWLANChipBackplane::mapCore(this, 1u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::dumpCommonCoreEnumerationRegisters(AppleBCMWLANChipBackplane *this, char *a2, size_t a3)
{
  v8 = 0x2000000600;
  v7 = a3;
  bzero(a2, a3);
  return AppleBCMWLANChipBackplane::dumpCoreRegisters(this, AppleBCMWLANChipBackplane::readCommonCoreReg32, "COMMON", a2, a3, &v7, &v8, 1uLL, 4);
}

uint64_t AppleBCMWLANChipBackplane::readCommonCoreReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 408);
  v6 = AppleBCMWLANChipBackplane::mapCore(this, 0);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

uint64_t AppleBCMWLANChipBackplane::dumpPMUCoreEnumerationRegisters(AppleBCMWLANChipBackplane *this, char *a2, size_t a3)
{
  v12[0] = xmmword_1003B0AE0;
  v12[1] = xmmword_1003B0AF0;
  v12[2] = xmmword_1003B0B00;
  v13 = 0x4000007ECLL;
  v11 = 0x2000000600;
  v6 = (*(**(*(this + 6) + 3120) + 240))(*(*(this + 6) + 3120));
  if (v6)
  {
    v7 = v12;
  }

  else
  {
    v7 = &v11;
  }

  if (v6)
  {
    v8 = 7;
  }

  else
  {
    v8 = 1;
  }

  v10 = a3;
  bzero(a2, a3);
  return AppleBCMWLANChipBackplane::dumpCoreRegisters(this, AppleBCMWLANChipBackplane::readPMUCoreReg32, "PMU", a2, a3, &v10, v7, v8, 4);
}

uint64_t AppleBCMWLANChipBackplane::readPMUCoreReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 492);
  v6 = AppleBCMWLANChipBackplane::mapCore(this, 7u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

uint64_t AppleBCMWLANChipBackplane::dumpARMCoreEnumerationRegisters(uint64_t a1, void *a2, size_t a3, uint64_t a4, unint64_t a5)
{
  v11 = a3;
  bzero(a2, a3);
  return AppleBCMWLANChipBackplane::dumpCoreRegisters(a1, AppleBCMWLANChipBackplane::readARMCoreReg32, "ARM", a2, a3, &v11, a4, a5, 4);
}

uint64_t AppleBCMWLANChipBackplane::readARMCoreReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 432);
  v6 = AppleBCMWLANChipBackplane::mapCore(this, 2u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::dumpWrapperRegisters(uint64_t a1, uint64_t (*a2)(uint64_t, void, int *), const char *a3, uint64_t a4, uint64_t a5, size_t *a6, const char **a7, uint64_t a8)
{
  v8 = 3825172738;
  v9 = *a6;
  if (*a6 >= 80 * a8)
  {
    v10 = a8;
    if (a8)
    {
      v21 = -1431655766;
      v17 = a5 - v9;
      while (1)
      {
        v18 = a2(a1, *a7, &v21);
        if (v18)
        {
          break;
        }

        v19 = snprintf((a4 + v17), *a6, "%s[%03x]%s: 0x%08x \n", a3, *a7, a7[1], v21);
        if (v19 < 1 || *a6 <= v19)
        {
          return v8;
        }

        v17 += v19;
        *a6 -= v19;
        a7 += 2;
        if (!--v10)
        {
          return 0;
        }
      }

      return v18;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t AppleBCMWLANChipBackplane::dumpMNIIDMRegisters(AppleBCMWLANChipBackplane *this, char *a2, size_t a3)
{
  v7 = a3;
  bzero(a2, a3);
  result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readAMNIChipCommonWrapperReg32, "AMNI_CHIPCOMMON", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpMNIIDMRegisters(char *,unsigned long)::dmpMNIRegs, 34);
  if (!result)
  {
    result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readPCIeSlaveWrapperReg32, "AMNI_PCIeF0", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpMNIIDMRegisters(char *,unsigned long)::dmpMNIRegs, 34);
    if (!result)
    {
      result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readPMNIWLAPBWrapperReg32, "PMNI_APB-CB", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpMNIIDMRegisters(char *,unsigned long)::dmpMNIRegs, 34);
      if (!result)
      {
        result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readPMNIAONPBWrapperReg32, "PMNI_APB-AAON", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpMNIIDMRegisters(char *,unsigned long)::dmpMNIRegs, 34);
        if (!result)
        {
          result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readHMNIBTWrapperReg32, "HMNI_BT", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpMNIIDMRegisters(char *,unsigned long)::dmpMNIRegs, 34);
          if (!result)
          {
            result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readHMNIGCIWrapperReg32, "HMNI_GCI", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpMNIIDMRegisters(char *,unsigned long)::dmpMNIRegs, 34);
            if (!result)
            {
              result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readSysmemSlaveWrapperReg32, "AMNI_CCI", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpMNIIDMRegisters(char *,unsigned long)::dmpMNIRegs, 34);
              if (!result)
              {
                result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readD11AUXSlaveWrapperReg32, "AMNI_AuxMAC", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpMNIIDMRegisters(char *,unsigned long)::dmpMNIRegs, 34);
                if (!result)
                {
                  result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readD11SlaveWrapperReg32, "AMNI_MainMAC", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpMNIIDMRegisters(char *,unsigned long)::dmpMNIRegs, 34);
                  if (!result)
                  {
                    result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readAMNIScanMacWrapperReg32, "AMNI_ScanMAC", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpMNIIDMRegisters(char *,unsigned long)::dmpMNIRegs, 34);
                    if (!result)
                    {
                      result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readAMNIAuxPhyWrapperReg32, "AMNI_AuxPHY", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpMNIIDMRegisters(char *,unsigned long)::dmpMNIRegs, 34);
                      if (!result)
                      {
                        result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readAMNIMainPhyWrapperReg32, "AMNI_MainPHY", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpMNIIDMRegisters(char *,unsigned long)::dmpMNIRegs, 34);
                        if (!result)
                        {
                          result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readAMNIScanPhyWrapperReg32, "AMNI_ScanPHY", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpMNIIDMRegisters(char *,unsigned long)::dmpMNIRegs, 34);
                          if (!result)
                          {
                            return AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readPMNIWLAPBWrapperReg32, "PMNI_WLANCB", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpMNIIDMRegisters(char *,unsigned long)::dmpMNIRegs, 34);
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
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipBackplane::readAMNIChipCommonWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 864);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x1Bu);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

uint64_t AppleBCMWLANChipBackplane::readPCIeSlaveWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 636);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 8u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

uint64_t AppleBCMWLANChipBackplane::readPMNIWLAPBWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 828);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x18u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::readPMNIAONPBWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 852);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x1Au);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

uint64_t AppleBCMWLANChipBackplane::readHMNIBTWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 876);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x1Cu);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

uint64_t AppleBCMWLANChipBackplane::readHMNIGCIWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 888);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x1Du);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

uint64_t AppleBCMWLANChipBackplane::readSysmemSlaveWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 804);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x16u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::readD11AUXSlaveWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 732);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x10u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::readD11SlaveWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 720);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0xFu);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::readAMNIScanMacWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 900);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x1Eu);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::readAMNIAuxPhyWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 912);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x1Fu);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::readAMNIMainPhyWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 924);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x20u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::readAMNIScanPhyWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 936);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x21u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::dumpOOBConfigStatusRegisters(AppleBCMWLANChipBackplane *this, char *a2, size_t a3)
{
  v3 = a3;
  v16 = 0;
  bzero(a2, a3);
  v6 = 0;
  v7 = 0;
  v8 = &off_1003D3660;
LABEL_2:
  v15 = v6;
  v9 = &(&off_1003D35A8)[2 * v6];
  v10 = *(v9 + 2);
  v11 = 4;
  while (1)
  {
    v12 = *(v8 - 2);
    result = AppleBCMWLANChipBackplane::readOOBRouterWrapperReg32(this, v12 + v10, &v16);
    if (result)
    {
      return result;
    }

    v14 = snprintf(&a2[v7], v3, "%s[%03x]%s: 0x%08x\n", *v9, v12, *v8, v16);
    if (v14 < 1 || v3 <= v14)
    {
      return 3825172738;
    }

    v7 += v14;
    v3 -= v14;
    v8 += 2;
    if (!--v11)
    {
      v6 = v15 + 1;
      v8 = &off_1003D3660;
      if (v15 != 10)
      {
        goto LABEL_2;
      }

      return 0;
    }
  }
}

uint64_t AppleBCMWLANChipBackplane::readOOBRouterWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 756);
  v6 = *(*(this + 6) + 3160) != 1;
  v7 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x12u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v7, a2, a3, v6);
}

uint64_t AppleBCMWLANChipBackplane::dumpCoreRegisterRegionswithMNIInterface(AppleBCMWLANChipBackplane *this, char *a2, size_t a3)
{
  v11[0] = xmmword_1003B0B10;
  v11[1] = xmmword_1003B0B20;
  v9 = xmmword_1003B0B40;
  v10 = xmmword_1003B0B30;
  v8 = xmmword_1003B0B50;
  v7 = a3;
  bzero(a2, a3);
  result = AppleBCMWLANChipBackplane::dumpCoreRegisters(this, AppleBCMWLANChipBackplane::readGCICoreReg32, "LHL", a2, a3, &v7, v11, 4uLL, 4);
  if (!result)
  {
    result = AppleBCMWLANChipBackplane::dumpCoreRegisters(this, AppleBCMWLANChipBackplane::readCommonCoreReg32, "COMMON", a2, a3, &v7, &v10, 2uLL, 4);
    if (!result)
    {
      result = AppleBCMWLANChipBackplane::dumpCoreRegisters(this, AppleBCMWLANChipBackplane::readGCICoreReg32, "GCI", a2, a3, &v7, &v9, 2uLL, 4);
      if (!result)
      {
        result = AppleBCMWLANChipBackplane::dumpCoreRegisters(this, AppleBCMWLANChipBackplane::readSRCBCoreReg32, "SRCB", a2, a3, &v7, &v8, 2uLL, 4);
        if (!result)
        {
          return AppleBCMWLANChipBackplane::dumpCoreRegisters(this, AppleBCMWLANChipBackplane::readPCIeCoreReg32, "PCIE", a2, a3, &v7, &unk_1003B0C28, 0xDuLL, 4);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipBackplane::readGCICoreReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 480);
  v6 = AppleBCMWLANChipBackplane::mapCore(this, 6u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

uint64_t AppleBCMWLANChipBackplane::readSRCBCoreReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 528);
  v6 = AppleBCMWLANChipBackplane::mapCore(this, 0xAu);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

uint64_t AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(AppleBCMWLANChipBackplane *this, char *a2, size_t a3)
{
  v6 = *(*(this + 6) + 3160);
  v16 = a3;
  bzero(a2, a3);
  if (v6 == 1)
  {
    v7 = *(this + 6);
    if (*(v7 + 2014) == 385)
    {
      result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readCommonMasterWrapperReg32, "COMMON_M", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
      if (result)
      {
        return result;
      }

      v7 = *(this + 6);
    }

    if (*(v7 + 2046) != 385 || (result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readMACMasterWrapperReg32, "MAC_M", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15), !result))
    {
      v9 = *(this + 6);
      if (*(v9 + 2078) == 385)
      {
        result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readARMMasterWrapperReg32, "ARM_M", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
        if (result)
        {
          return result;
        }

        v9 = *(this + 6);
      }

      if (*(v9 + 2110) != 385 || (result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readPCIeMasterWrapperReg32, "PCIE_M", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15), !result))
      {
        v10 = *(this + 6);
        if (*(v10 + 2398) == 385)
        {
          result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readD11AUXMasterWrapperReg32, "D11_AUX_M0", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
          if (result)
          {
            return result;
          }

          v10 = *(this + 6);
        }

        if (*(v10 + 2430) != 385 || (result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readD11AUXMaster1WrapperReg32, "D11_AUX_M1", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15), !result))
        {
          v11 = *(this + 6);
          if (*(v11 + 2462) == 385)
          {
            result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readD11Master1WrapperReg32, "D11_M1", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
            if (result)
            {
              return result;
            }

            v11 = *(this + 6);
          }

          if (*(v11 + 2494) != 385 || (result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readD11SlaveWrapperReg32, "D11_S", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15), !result))
          {
            v12 = *(this + 6);
            if (*(v12 + 2238) == 385)
            {
              result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readARMSlaveWrapperReg32, "ARM_S", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
              if (result)
              {
                return result;
              }

              v12 = *(this + 6);
            }

            if (*(v12 + 2270) != 385 || (result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readPCIeSlaveWrapperReg32, "PCIE_S", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15), !result))
            {
              v13 = *(this + 6);
              if (*(v13 + 2526) == 385)
              {
                result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readD11AUXSlaveWrapperReg32, "D11_AUX_S", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
                if (result)
                {
                  return result;
                }

                v13 = *(this + 6);
              }

              if (*(v13 + 2558) != 385 || (result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readBTAXI2AAHBWrapperReg32, "BT_AXI2AHB", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15), !result))
              {
                v14 = *(this + 6);
                if (*(v14 + 2366) == 385)
                {
                  result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readDefaultSlaveWrapperReg32, "DEFAULT_S", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
                  if (result)
                  {
                    return result;
                  }

                  v14 = *(this + 6);
                }

                if (*(v14 + 2590) != 385 || (result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readOOBRouterWrapperReg32, "OOB_ROUTER", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15), !result))
                {
                  v15 = *(this + 6);
                  if (*(v15 + 2622) == 385)
                  {
                    result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readEROMWrapperReg32, "EROM", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
                    if (result)
                    {
                      return result;
                    }

                    v15 = *(this + 6);
                  }

                  if (*(v15 + 2302) != 385 || (result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readAPBBridge0SlaveWrapperReg32, "APB0_S", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15), !result))
                  {
                    if (*(*(this + 6) + 2334) == 385)
                    {
                      return AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readAPBBridge1SlaveWrapperReg32, "APB1_S", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
                    }

                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readCommonMasterWrapperReg32, "COMMON_M", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
    if (!result)
    {
      result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readMACMasterWrapperReg32, "MAC_M", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
      if (!result)
      {
        result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readARMMasterWrapperReg32, "ARM_M", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
        if (!result)
        {
          result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readPCIeMasterWrapperReg32, "PCIE_M", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
          if (!result)
          {
            result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readD11AUXMasterWrapperReg32, "D11_AUX_M0", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
            if (!result)
            {
              result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readD11AUXMaster1WrapperReg32, "D11_AUX_M1", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
              if (!result)
              {
                result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readD11Master1WrapperReg32, "D11_M1", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
                if (!result)
                {
                  result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readD11SlaveWrapperReg32, "D11_S", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
                  if (!result)
                  {
                    result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readARMSlaveWrapperReg32, "ARM_S", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
                    if (!result)
                    {
                      result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readPCIeSlaveWrapperReg32, "PCIE_S", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
                      if (!result)
                      {
                        result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readD11AUXSlaveWrapperReg32, "D11_AUX_S", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
                        if (!result)
                        {
                          result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readBTAXI2AAHBWrapperReg32, "BT_AXI2AHB", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
                          if (!result)
                          {
                            result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readDefaultSlaveWrapperReg32, "DEFAULT_S", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
                            if (!result)
                            {
                              result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readOOBRouterWrapperReg32, "OOB_ROUTER", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
                              if (!result)
                              {
                                result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readEROMWrapperReg32, "EROM", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
                                if (!result)
                                {
                                  result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readAPBBridge0SlaveWrapperReg32, "APB0_S", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
                                  if (!result)
                                  {
                                    return AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readAPBBridge1SlaveWrapperReg32, "APB1_S", a2, a3, &v16, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters43x7(char *,unsigned long)::dmpRegs, 15);
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
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipBackplane::readCommonMasterWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 540);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

uint64_t AppleBCMWLANChipBackplane::readMACMasterWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 552);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 1u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::readARMMasterWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 564);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 2u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::readPCIeMasterWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 576);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 3u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

uint64_t AppleBCMWLANChipBackplane::readD11AUXMasterWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 684);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0xCu);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::readD11AUXMaster1WrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 696);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0xDu);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::readD11Master1WrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 708);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0xEu);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::readARMSlaveWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 624);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 7u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::readBTAXI2AAHBWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 744);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x11u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

uint64_t AppleBCMWLANChipBackplane::readDefaultSlaveWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 672);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0xBu);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

uint64_t AppleBCMWLANChipBackplane::readEROMWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 768);
  v6 = *(*(this + 6) + 3160) != 1;
  v7 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x13u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v7, a2, a3, v6);
}

uint64_t AppleBCMWLANChipBackplane::readAPBBridge0SlaveWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3, int a4)
{
  ++*(*(this + 6) + 648);
  if (a4)
  {
    v7 = *(*(this + 6) + 3160) != 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = AppleBCMWLANChipBackplane::mapWrapper(this, 9u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v8, a2, a3, v7);
}

uint64_t AppleBCMWLANChipBackplane::readAPBBridge1SlaveWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3, int a4)
{
  ++*(*(this + 6) + 660);
  if (a4)
  {
    v7 = *(*(this + 6) + 3160) != 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = AppleBCMWLANChipBackplane::mapWrapper(this, 0xAu);

  return AppleBCMWLANChipBackplane::readRegister32(this, v8, a2, a3, v7);
}

uint64_t AppleBCMWLANChipBackplane::dumpAPBBridge0SlaveWrapperRegisters(AppleBCMWLANChipBackplane *this, char *a2, size_t a3)
{
  v8[0] = xmmword_1003B0B60;
  v8[1] = xmmword_1003B0B70;
  v9 = 0x400000E00;
  v7 = a3;
  bzero(a2, a3);
  return AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readAPBBridgeWLB0SlaveWrapperReg32, "APB_BRIDGE0_S", a2, a3, &v7, v8, 5uLL);
}

uint64_t AppleBCMWLANChipBackplane::readAPBBridgeWLB0SlaveWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 816);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x17u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 1);
}

uint64_t AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters(AppleBCMWLANChipBackplane *this, char *a2, size_t a3)
{
  v7 = a3;
  bzero(a2, a3);
  result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readCommonMasterWrapperReg32, "COMMON_M", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters(char *,unsigned long)::dmpRegs, 14);
  if (!result)
  {
    result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readMACMasterWrapperReg32, "MAC_M", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters(char *,unsigned long)::dmpRegs, 14);
    if (!result)
    {
      result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readARMMasterWrapperReg32, "ARM_M", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters(char *,unsigned long)::dmpRegs, 14);
      if (!result)
      {
        result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readPCIeMasterWrapperReg32, "PCIE_M", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters(char *,unsigned long)::dmpRegs, 14);
        if (!result)
        {
          result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readCommonSlaveWrapperReg32, "COMMON_S", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters(char *,unsigned long)::dmpRegs, 14);
          if (!result)
          {
            result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readARMSlaveWrapperReg32, "ARM_S", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters(char *,unsigned long)::dmpRegs, 14);
            if (!result)
            {
              result = AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readPCIeSlaveWrapperReg32, "PCIE_S", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters(char *,unsigned long)::dmpRegs, 14);
              if (!result)
              {
                return AppleBCMWLANChipBackplane::dumpWrapperRegisters(this, AppleBCMWLANChipBackplane::readAPBBridge0SlaveWrapperReg32, "APB0_S", a2, a3, &v7, &AppleBCMWLANChipBackplane::dumpDMPWrapperRegisters(char *,unsigned long)::dmpRegs, 14);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipBackplane::readCommonSlaveWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 612);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 6u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

uint64_t AppleBCMWLANChipBackplane::dumpUCodeRegisters(AppleBCMWLANChipBackplane *this, char *a2, size_t a3)
{
  v8 = 0x2800000A40;
  v7 = a3;
  bzero(a2, a3);
  result = AppleBCMWLANChipBackplane::dumpCoreRegisters(this, AppleBCMWLANChipBackplane::readMACCoreReg32, "IHR32", a2, a3, &v7, &unk_1003B0C90, 0xCuLL, 4);
  if (!result)
  {
    return AppleBCMWLANChipBackplane::dumpCoreRegisters(this, AppleBCMWLANChipBackplane::readMACCoreReg32, "IHR16", a2, a3, &v7, &v8, 1uLL, 2);
  }

  return result;
}

uint64_t AppleBCMWLANChipBackplane::readUCodeSCRRAM(AppleBCMWLANChipBackplane *this, char *a2, uint64_t a3)
{
  UCodeRegionInfo = AppleBCMWLANChipManagerPCIe::getUCodeRegionInfo(*(*(this + 6) + 3120), 0);
  v7 = *(UCodeRegionInfo + 4);
  if (v7 >= *(UCodeRegionInfo + 8))
  {
    return 0;
  }

  v8 = UCodeRegionInfo;
  v15 = -1431655766;
  v9 = 16 * v7;
  while (a3)
  {
    v10 = *(v8 + 12);
    ++*(*(this + 6) + 424);
    v11 = AppleBCMWLANChipBackplane::mapCore(this, 1u);
    AppleBCMWLANChipBackplane::writeRegister32(this, v11, 0x160u, v7 + v10);
    ++*(*(this + 6) + 420);
    v12 = AppleBCMWLANChipBackplane::mapCore(this, 1u);
    result = AppleBCMWLANChipBackplane::readRegister32(this, v12, 0x160u, &v15, 1);
    if (result)
    {
      return result;
    }

    ++*(*(this + 6) + 420);
    v14 = AppleBCMWLANChipBackplane::mapCore(this, 1u);
    result = AppleBCMWLANChipBackplane::readRegister32(this, v14, 0x164u, &v15, 1);
    if (result)
    {
      return result;
    }

    *a2 = v15 >> (~v9 & 0x10);
    a2 += 2;
    a3 -= 2;
    ++v7;
    v9 += 16;
    if (v7 >= *(v8 + 8))
    {
      return 0;
    }
  }

  return 3825172738;
}

uint64_t AppleBCMWLANChipBackplane::readUCodeSHMRAM(AppleBCMWLANChipBackplane *this, char *a2, uint64_t a3)
{
  UCodeRegionInfo = AppleBCMWLANChipManagerPCIe::getUCodeRegionInfo(*(*(this + 6) + 3120), 1);
  v7 = *(UCodeRegionInfo + 4);
  if (v7 >= *(UCodeRegionInfo + 8))
  {
    return 0;
  }

  v8 = UCodeRegionInfo;
  v15 = -1431655766;
  while (a3)
  {
    v9 = *(v8 + 12) + (v7 >> 2);
    ++*(*(this + 6) + 424);
    v10 = AppleBCMWLANChipBackplane::mapCore(this, 1u);
    AppleBCMWLANChipBackplane::writeRegister32(this, v10, 0x160u, v9);
    ++*(*(this + 6) + 420);
    v11 = AppleBCMWLANChipBackplane::mapCore(this, 1u);
    result = AppleBCMWLANChipBackplane::readRegister32(this, v11, 0x160u, &v15, 1);
    if (result)
    {
      return result;
    }

    ++*(*(this + 6) + 420);
    v13 = AppleBCMWLANChipBackplane::mapCore(this, 1u);
    result = AppleBCMWLANChipBackplane::readRegister32(this, v13, 0x164u, &v15, 1);
    if (result)
    {
      return result;
    }

    v14 = v15;
    if ((v7 & 3) == 0)
    {
      v14 = HIWORD(v15);
    }

    *a2 = v14;
    a2 += 2;
    a3 -= 2;
    v7 += 2;
    if (v7 >= *(v8 + 8))
    {
      return 0;
    }
  }

  return 3825172738;
}

uint64_t AppleBCMWLANChipBackplane::saveDeviceState(AppleBCMWLANChipBackplane *this)
{
  v1 = *(this + 6);
  if (*(v1 + 3136))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (*(v1 + 3128) + 8 * v3);
      v6 = *v5;
      v7 = v5[1] + *v5;
      if (*v5 < v7)
      {
        v8 = 4 * v4;
        do
        {
          AppleBCMWLANChipConfigSpace::readReg32(*(*(this + 6) + 1624), v6, (*(*(this + 6) + 3144) + v8));
          v6 += 4;
          v8 += 4;
          ++v4;
        }

        while (v6 < v7);
        v1 = *(this + 6);
      }

      ++v3;
    }

    while (v3 < *(v1 + 3136));
  }

  return 0;
}

uint64_t AppleBCMWLANChipBackplane::restoreDeviceState(AppleBCMWLANChipBackplane *this)
{
  v1 = *(this + 6);
  if (*(v1 + 3136))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (*(v1 + 3128) + 8 * v3);
      v6 = *v5;
      v7 = v5[1] + *v5;
      if (*v5 < v7)
      {
        v8 = 4 * v4;
        do
        {
          AppleBCMWLANChipConfigSpace::writeReg32(*(*(this + 6) + 1624), v6, *(*(*(this + 6) + 3144) + v8));
          v6 += 4;
          v8 += 4;
          ++v4;
        }

        while (v6 < v7);
        v1 = *(this + 6);
      }

      ++v3;
    }

    while (v3 < *(v1 + 3136));
  }

  return 0;
}

uint64_t AppleBCMWLANChipBackplane::forcePower(AppleBCMWLANChipBackplane *this, int a2, int a3)
{
  v4 = (this + 48);
  v3 = *(this + 6);
  if (*(v3 + 3164) == 1)
  {
    result = (*(**(v3 + 3120) + 72))(*(v3 + 3120));
    if (result)
    {
      (*(**(*v4 + 3120) + 72))(*(*v4 + 3120));
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANChipBackplane::forcePower(v4);
      }
    }
  }

  else
  {
    result = AppleBCMWLANChipBackplane::forcePowerLite(this, a2, a3);
    if ((result & 1) == 0)
    {
      AppleBCMWLANChipBackplane::forcePower();
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipBackplane::readPMNICBAPBWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 840);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x19u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

uint64_t AppleBCMWLANChipBackplane::readCommonSFLASHWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, unsigned int *a3)
{
  ++*(*(this + 6) + 792);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x15u);

  return AppleBCMWLANChipBackplane::readRegister32(this, v6, a2, a3, 0);
}

uint64_t AppleBCMWLANChipBackplane::writeCommonCoreReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, uint32_t a3)
{
  ++*(*(this + 6) + 412);
  v6 = AppleBCMWLANChipBackplane::mapCore(this, 0);

  return AppleBCMWLANChipBackplane::writeRegister32(this, v6, a2, a3);
}

uint64_t AppleBCMWLANChipBackplane::writePMUCoreReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, uint32_t a3)
{
  ++*(*(this + 6) + 496);
  v6 = AppleBCMWLANChipBackplane::mapCore(this, 7u);

  return AppleBCMWLANChipBackplane::writeRegister32(this, v6, a2, a3);
}

uint64_t AppleBCMWLANChipBackplane::writeGCICoreReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, uint32_t a3)
{
  ++*(*(this + 6) + 484);
  v6 = AppleBCMWLANChipBackplane::mapCore(this, 6u);

  return AppleBCMWLANChipBackplane::writeRegister32(this, v6, a2, a3);
}

uint64_t AppleBCMWLANChipBackplane::writeARMMasterWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, uint32_t a3)
{
  ++*(*(this + 6) + 568);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 2u);

  return AppleBCMWLANChipBackplane::writeRegister32(this, v6, a2, a3);
}

uint64_t AppleBCMWLANChipBackplane::writeOOBRouterWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, uint32_t a3)
{
  ++*(*(this + 6) + 760);
  v6 = AppleBCMWLANChipBackplane::mapWrapper(this, 0x12u);

  return AppleBCMWLANChipBackplane::writeRegister32(this, v6, a2, a3);
}

uint64_t AppleBCMWLANChipBackplane::waitARMMasterWrapperReg32(AppleBCMWLANChipBackplane *this, unsigned int a2, uint32_t a3, int a4, uint64_t a5)
{
  ++*(*(this + 6) + 572);
  v10 = AppleBCMWLANChipBackplane::mapWrapper(this, 2u);

  return AppleBCMWLANChipBackplane::waitForValue32(this, v10, a2, a3, a4, a5, 1);
}

uint64_t AppleBCMWLANChipBackplane::dumpARMCoreEnumerationRegistersFWDebug(uint64_t a1, void *a2, size_t a3, uint64_t a4, unint64_t a5)
{
  v12 = a3;
  if (AppleBCMWLANChipManagerPCIe::getChipNumber(*(*(a1 + 48) + 3120)) == 4399)
  {
    v10 = "ARM Core 0x18080";
  }

  else
  {
    v10 = "ARM Core 0x18020";
  }

  bzero(a2, a3);
  return AppleBCMWLANChipBackplane::dumpCoreRegisters(a1, AppleBCMWLANChipBackplane::readARMCoreReg32, v10, a2, a3, &v12, a4, a5, 4);
}

uint64_t AppleBCMWLANChipBackplane::dumpCommonCoreEnumerationRegistersFWDebug(uint64_t a1, void *a2, size_t a3, uint64_t a4, unint64_t a5)
{
  v11 = a3;
  bzero(a2, a3);
  return AppleBCMWLANChipBackplane::dumpCoreRegisters(a1, AppleBCMWLANChipBackplane::readCommonCoreReg32, "Common Core 0x18000", a2, a3, &v11, a4, a5, 4);
}

uint64_t AppleBCMWLANChipBackplane::dumpPMUCoreEnumerationRegistersFWDebug(uint64_t a1, void *a2, size_t a3, uint64_t a4, unint64_t a5)
{
  v12 = a3;
  if (AppleBCMWLANChipManagerPCIe::getChipNumber(*(*(a1 + 48) + 3120)) == 4399)
  {
    v10 = "PMU Core 0x18018";
  }

  else
  {
    v10 = "PMU Core 0x18012";
  }

  bzero(a2, a3);
  return AppleBCMWLANChipBackplane::dumpCoreRegisters(a1, AppleBCMWLANChipBackplane::readPMUCoreReg32, v10, a2, a3, &v12, a4, a5, 4);
}

uint64_t AppleBCMWLANChipBackplane::dumpPCIEFunc0CoreEnumerationRegistersFWDebug(uint64_t a1, void *a2, size_t a3, uint64_t a4, unint64_t a5)
{
  v11 = a3;
  bzero(a2, a3);
  return AppleBCMWLANChipBackplane::dumpCoreRegisters(a1, AppleBCMWLANChipBackplane::readPCIeCoreReg32, "PCIe Func0 Core 0x18001", a2, a3, &v11, a4, a5, 4);
}

uint64_t *OUTLINED_FUNCTION_0_30@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 3120);
  v2 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_25()
{
  ++*(*(v0 + 48) + 808);

  return AppleBCMWLANChipBackplane::mapWrapper(v0, 0x16u);
}

OSObject *AppleBCMWLANCommandWithXTLV::withLengthAndHeader(AppleBCMWLANCommandWithXTLV *this, void *a2, void *a3, CCLogStream *a4, CCLogStream *a5)
{
  v6 = a3;
  v8 = this;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANCommandWithXTLVMetaClass, &v11))
  {
    return 0;
  }

  v9 = v11;
  if (v11 && (AppleBCMWLANCommandWithXTLV::initWithLengthAndHeader(v11, v8, a2, v6, a4) & 1) == 0)
  {
    (v9->release)(v9);
    return 0;
  }

  return v9;
}

uint64_t AppleBCMWLANCommandWithXTLV::initWithLengthAndHeader(OSObject *this, unsigned int a2, void *a3, unsigned int a4, CCLogStream *a5)
{
  if (a2 <= 3)
  {
    AppleBCMWLANCommandWithXTLV::initWithLengthAndHeader(this, a2);
  }

  else if (a4 > a2)
  {
    AppleBCMWLANCommandWithXTLV::initWithLengthAndHeader(this, a4);
  }

  else if (a3)
  {
    result = OSObject::init(this);
    if (!result)
    {
      return result;
    }

    v11 = IOMallocZeroTyped();
    this[1].OSMetaClassBase::__vftable = v11;
    v12 = this + 1;
    if (v11)
    {
      *(v11 + 4) = a2;
      v12->isEqualTo = a5;
      isEqualTo = v12->isEqualTo;
      if (isEqualTo)
      {
        (*(*isEqualTo + 8))(isEqualTo);
        getMetaClass_high = HIDWORD(v12->getMetaClass);
        v12->retain = IOMallocZeroData();
        v15 = v12->OSMetaClassBase::__vftable;
        retain = v12->retain;
        if (retain)
        {
          *(v15 + 16) = retain;
          if (!a4)
          {
            v18 = 0;
            goto LABEL_12;
          }

          v17 = v12->OSMetaClassBase::__vftable;
          if (HIDWORD(v12->getMetaClass) >= a4)
          {
            v18 = a4;
            memcpy(*(v17 + 16), a3, a4);
LABEL_12:
            v12->release = (v12->release + v18);
            return 1;
          }

          AppleBCMWLANCommandWithXTLV::initWithLengthAndHeader(v17, &this[1], a4);
        }

        else
        {
          AppleBCMWLANCommandWithXTLV::initWithLengthAndHeader(v15, &this[1]);
        }
      }

      else
      {
        IOLog("Bad logger\n");
      }
    }

    else
    {
      IOLog("Failed to allocate AppleBCMWLANCommandWithXTLV_IVars\n");
    }
  }

  else
  {
    AppleBCMWLANCommandWithXTLV::initWithLengthAndHeader(this);
  }

  v19 = this[1].OSMetaClassBase::__vftable;
  if (v19->retain)
  {
    v20 = HIDWORD(v19->getMetaClass);
    IOFreeData();
    this[1].retain = 0;
    v19 = this[1].OSMetaClassBase::__vftable;
  }

  HIDWORD(v19->getMetaClass) = 0;
  this[1].release = 0;
  result = this[1].isEqualTo;
  if (result)
  {
    (*(*result + 16))(result);
    result = 0;
    this[1].isEqualTo = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCommandWithXTLV::complete(AppleBCMWLANCommandWithXTLV *this)
{
  v1 = *(this + 5);
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = v2 - v3;
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 2) = v4;
  return 0;
}

uint64_t AppleBCMWLANCommandWithXTLV::getCommandLength(AppleBCMWLANCommandWithXTLV *this)
{
  v1 = *(this + 5);
  v2 = *(v1 + 16);
  if (v2)
  {
    LODWORD(v2) = v2 - *(v1 + 8);
  }

  return v2;
}

uint64_t AppleBCMWLANCommandWithXTLV::freeResources(AppleBCMWLANCommandWithXTLV *this)
{
  v2 = *(this + 5);
  if (*(v2 + 8))
  {
    v3 = *(v2 + 4);
    IOFreeData();
    *(*(this + 5) + 8) = 0;
    *(*(this + 5) + 16) = 0;
    v2 = *(this + 5);
  }

  result = *(v2 + 24);
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 5) + 24) = 0;
  }

  return result;
}

void AppleBCMWLANCommandWithXTLV::free(void **this)
{
  if (this[5])
  {
    AppleBCMWLANCommandWithXTLV::freeResources(this);
    memset_s(this[5], 0x20uLL, 0, 0x20uLL);
    v2 = this[5];
    if (v2)
    {
      IOFree(v2, 0x20uLL);
      this[5] = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANUtil::isPTPPacket(AppleBCMWLANUtil *this, AppleBCMWLANPCIeSkywalkPacket *a2, char *a3, unsigned __int8 *a4, unsigned __int8 **a5, unsigned __int8 **a6, unsigned __int8 *a7, unsigned __int16 *a8)
{
  v13 = a2;
  v15 = (*(*this + 240))(this, a2, a3, a4, a5, a6, a7, a8);
  v16 = (*(*this + 480))(this);
  v17 = (*(*this + 224))(this);
  if (v17 < 0x11)
  {
    return 0;
  }

  v18 = v16 + v15;
  v19 = bswap32(*(v18 + 12)) >> 16;
  if (*(v18 + 14) != 170 || *(v18 + 15) != 170 || *(v18 + 16) != 3)
  {
    v20 = 14;
    goto LABEL_9;
  }

  if (v17 < 0x16)
  {
    return 0;
  }

  if (*(v18 + 17))
  {
    goto LABEL_7;
  }

  if (*(v18 + 18) != 23)
  {
    if (!*(v18 + 18) && !*(v18 + 19))
    {
      v19 = bswap32(*(v18 + 20)) >> 16;
    }

    goto LABEL_7;
  }

  if (*(v18 + 19) != 242)
  {
LABEL_7:
    v20 = 22;
    goto LABEL_9;
  }

  v35 = *(v18 + 26);
  if (*(v18 + 26))
  {
    v36 = 6;
    while (v36 + 25 <= v17)
    {
      v36 += 2 + *(v18 + 23 + v36 + 2);
      if (!--v35)
      {
        goto LABEL_43;
      }
    }

    return 0;
  }

  v36 = 6;
LABEL_43:
  v19 = bswap32(*(v18 + v36 + 22)) >> 16;
  v20 = v36 + 24;
LABEL_9:
  if (v19 != 34525 && v19 != 2048)
  {
    return 0;
  }

  v21 = v18 + v20;
  if (v19 != 34525)
  {
    v22 = v20 + 28;
    if (v20 + 28 <= v17 && *(v21 + 9) == 17)
    {
      v23 = 0;
      v24 = 20;
      goto LABEL_18;
    }

    return 0;
  }

  v22 = v20 + 48;
  if (v20 + 48 > v17 || *(v21 + 6) != 17)
  {
    return 0;
  }

  v23 = 1;
  v24 = 40;
LABEL_18:
  *a3 = v23;
  if (v17 - v22 < 0x22)
  {
    return 0;
  }

  v25 = v21 + v24;
  v26 = __rev16(*(v21 + v24));
  if (v26 - 321 < 0xFFFFFFFE)
  {
    return 0;
  }

  v27 = *(v25 + 2);
  v28 = bswap32(v27);
  v29 = __rev16(v27) - 319;
  if (v26 != HIWORD(v28) || v29 > 1)
  {
    return 0;
  }

  if (v13)
  {
    *a4 = v18;
    v32 = *a3 == 0;
    v33 = 24;
    v34 = 16;
  }

  else
  {
    *a4 = v18 + 6;
    v32 = *a3 == 0;
    v33 = 8;
    v34 = 12;
  }

  if (v32)
  {
    v33 = v34;
  }

  *a5 = (v21 + v33);
  *a6 = *(v25 + 8) & 0xF;
  *a7 = bswap32(*(v25 + 38)) >> 16;
  return 1;
}

uint64_t AppleBCMWLANUtil::removeReporterFromLegend(IOService *this, IOService *a2, IOReporter *a3, char *a4, const char *a5)
{
  v6 = a3;
  v7 = a2;
  v9 = 3758097136;
  if (a3)
  {
    v10 = a4 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10 || a2 != 0;
  v12 = v10 && a2 == 0;
  property = 0;
  if (IOService::SearchProperty(this, "IOReportLegend", "IOService", 1uLL, &property, 0))
  {
    return v9;
  }

  v59 = v11;
  v13 = OSMetaClassBase::safeMetaCast(property, gOSObjectMetaClass);
  if (!v13)
  {
    return v9;
  }

  v14 = v13;
  v15 = OSMetaClassBase::safeMetaCast(v13, gOSArrayMetaClass);
  if (!v15 || (v58 = v15, v16 = (v15->__vftable[2].getMetaClass)(), v9 = 3758097085, (v56 = OSArray::withCapacity(v16)) == 0))
  {
    v22 = v14;
    goto LABEL_51;
  }

  if (v7)
  {
    Legend = IOReporter::createLegend(v7);
    if (Legend)
    {
      v18 = Legend;
      v49 = v14;
      v50 = this;
      v57 = v12;
      cString = a4;
      Object = OSDictionary::getObject(Legend, "IOReportChannels");
      v20 = OSMetaClassBase::safeMetaCast(Object, gOSArrayMetaClass);
      v48 = v18;
      v21 = OSDictionary::getObject(v18, "IOReportChannelInfo");
      anObject = OSMetaClassBase::safeMetaCast(v21, gOSDictionaryMetaClass);
      goto LABEL_19;
    }

    (v14->release)(v14);
    v22 = v56;
LABEL_51:
    (v22->release)(v22);
    return v9;
  }

  v49 = v14;
  v50 = this;
  v57 = v12;
  cString = a4;
  anObject = 0;
  v20 = 0;
  v48 = 0;
LABEL_19:
  v23 = v58;
  if ((v58->getCount)(v58))
  {
    v24 = 0;
    v52 = v7;
    v53 = v6;
    do
    {
      v25 = OSArray::getObject(v23, v24);
      v26 = OSMetaClassBase::safeMetaCast(v25, gOSDictionaryMetaClass);
      v27 = OSDictionary::getObject(v26, "IOReportGroupName");
      v28 = OSMetaClassBase::safeMetaCast(v27, gOSStringMetaClass);
      v29 = OSDictionary::getObject(v26, "IOReportSubGroupName");
      v30 = OSMetaClassBase::safeMetaCast(v29, gOSStringMetaClass);
      v60 = &v26->OSCollection;
      v31 = OSDictionary::getObject(v26, "IOReportChannels");
      v32 = OSMetaClassBase::safeMetaCast(v31, gOSArrayMetaClass);
      v33 = 1;
      v61 = OSDictionary::withCapacity(1u);
      if (v57)
      {
        v33 = !OSString::isEqualTo(v28, v6);
      }

      if (v59)
      {
        if (v7)
        {
          v55 = v33;
          OSDictionary::setObject(v61, "IOReportGroupName", v28);
          OSDictionary::setObject(v61, "IOReportSubGroupName", v30);
          OSDictionary::setObject(v61, "IOReportChannelInfo", anObject);
          v34 = OSArray::withCapacity(1u);
          if ((v32->getCount)(v32))
          {
            v35 = 0;
            do
            {
              v36 = OSArray::getObject(v32, v35);
              v37 = OSMetaClassBase::safeMetaCast(v36, gOSArrayMetaClass);
              v38 = OSArray::getObject(v37, 0);
              v39 = OSMetaClassBase::safeMetaCast(v38, gOSNumberMetaClass);
              if ((v20->getCount)(v20))
              {
                v40 = 0;
                while (1)
                {
                  v41 = OSArray::getObject(v20, v40);
                  v42 = OSMetaClassBase::safeMetaCast(v41, gOSArrayMetaClass);
                  v43 = OSArray::getObject(v42, 0);
                  v44 = OSMetaClassBase::safeMetaCast(v43, gOSNumberMetaClass);
                  if (OSNumber::isEqualTo(v39, v44))
                  {
                    break;
                  }

                  if (++v40 >= (v20->getCount)(v20))
                  {
                    goto LABEL_31;
                  }
                }
              }

              else
              {
LABEL_31:
                OSArray::setObject(v34, v37);
              }

              ++v35;
            }

            while (v35 < (v32->getCount)(v32));
          }

          if ((v34->getCount)(v34))
          {
            v45 = v61;
            OSDictionary::setObject(v61, "IOReportChannels", v34);
            v60 = v61;
            v7 = v52;
            v6 = v53;
            v23 = v58;
            v46 = v55;
          }

          else
          {
            v46 = 0;
            v7 = v52;
            v6 = v53;
            v23 = v58;
            v45 = v61;
          }

          (v34->release)(v34);
          if (!v46)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v23 = v58;
          v45 = v61;
          if (!v33)
          {
            goto LABEL_45;
          }
        }
      }

      else if (OSString::isEqualTo(v28, v6))
      {
        v23 = v58;
        v45 = v61;
        if (OSString::isEqualTo(v30, cString) || !v33)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v23 = v58;
        v45 = v61;
        if (!v33)
        {
          goto LABEL_45;
        }
      }

      OSArray::setObject(v56, v60);
LABEL_45:
      if (v45)
      {
        (v45->release)(v45);
      }

      ++v24;
    }

    while (v24 < (v23->getCount)(v23));
  }

  IOService::SetLegend(v50, v56, 1, 0);
  (v49->release)(v49);
  (v56->release)(v56);
  v9 = 0;
  v22 = v48;
  if (v48)
  {
    goto LABEL_51;
  }

  return v9;
}

uint64_t AppleBCMWLANUtil::getDTParameter32(IOService *this, IOService *a2, const char *arg_string, const char *a4)
{
  v4 = a4;
  v12 = a4;
  if (!IOParseBootArgNumber(arg_string, &v12, 4))
  {
    v12 = v4;
    property = 0;
    IOService::SearchProperty(this, arg_string, a2, 1uLL, &property, 0);
    v8 = OSMetaClassBase::safeMetaCast(property, gOSDataMetaClass);
    if (v8)
    {
      BytesNoCopy = OSData::getBytesNoCopy(v8, 0, 4uLL);
      if (BytesNoCopy)
      {
        v12 = *BytesNoCopy;
      }
    }

    if (property)
    {
      (property->release)(property);
    }
  }

  return v12;
}

const char *AppleBCMWLANUtil::copyDTParameterString(IOService *this, IOService *plane, const char *name, const char *a4, OSString *a5)
{
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *v11 = 0u;
  v12 = 0u;
  property = 0;
  IOService::SearchProperty(this, name, plane, 1uLL, &property, 0);
  v7 = OSMetaClassBase::safeMetaCast(property, gOSDataMetaClass);
  if (IOParseBootArgString(name, v11, 255))
  {
    BytesNoCopy = v11;
LABEL_5:
    a4 = OSString::withCString(BytesNoCopy);
    goto LABEL_8;
  }

  if (v7)
  {
    BytesNoCopy = OSData::getBytesNoCopy(v7);
    if (BytesNoCopy)
    {
      goto LABEL_5;
    }
  }

  if (a4)
  {
    (*(*a4 + 8))(a4);
  }

LABEL_8:
  if (property)
  {
    (property->release)(property);
  }

  return a4;
}

AppleBCMWLANUtil *AppleBCMWLANUtil::findpattern(AppleBCMWLANUtil *this, const char *__s, const char *a3)
{
  v4 = __s + 1;
  v5 = *__s;
  if (*__s)
  {
    v7 = strlen(__s + 1);
    for (i = a3 - 1; i != -1; --i)
    {
      if (*this == v5)
      {
        if (v7 > i)
        {
          return 0;
        }

        if (!strncmp(this + 1, v4, v7))
        {
          return this;
        }
      }

      this = (this + 1);
    }

    return 0;
  }

  return this;
}

BOOL AppleBCMWLANUtil::matchIESignature(unsigned __int8 *a1, int a2, unsigned __int8 *a3)
{
  if (*a3 != *a1)
  {
    return 0;
  }

  if (a2 == 1)
  {
    return 1;
  }

  return bcmp(a1 + 1, a3 + 2, (a2 - 1)) == 0;
}

void *AppleBCMWLANUtil::releaseOSObjectArray(void *this, const OSString **a2, const OSObject **a3)
{
  if (a3)
  {
    v4 = this;
    v5 = a3;
    do
    {
      if (*v4)
      {
        (*(**v4 + 16))(*v4);
        *v4 = 0;
      }

      this = *a2;
      if (*a2)
      {
        this = (*(*this + 16))(this);
        *a2 = 0;
      }

      ++v4;
      ++a2;
      --v5;
    }

    while (v5);
  }

  return this;
}

unsigned __int16 *AppleBCMWLANUtil::getCounterValueSafe(AppleBCMWLANUtil *this, size_t numBytes, OSData *a3, size_t start)
{
  v4 = start;
  v8 = start;
  v9 = numBytes;
  if (((numBytes - 1) & OSData::getBytesNoCopy(a3, start, numBytes)) != 0)
  {
    IOLog("cnt->getBytesNoCopy not aligned offset %d sizeOfRead %zd ", v4, numBytes);
  }

  if (numBytes == 2)
  {
    result = OSData::getBytesNoCopy(a3, v8, v9);
    if (result)
    {
      return *result;
    }
  }

  else
  {
    if (numBytes != 4)
    {
      IOLog("APPLE80211_DRIVERKIT getCounterValueSafe is not supported for uint64_t\n");
      return 0;
    }

    result = OSData::getBytesNoCopy(a3, v8, v9);
    if (result)
    {
      return *result;
    }
  }

  *this = -536870169;
  return result;
}

uint64_t AppleBCMWLANUtil::get_mach_continuous_nanoseconds(AppleBCMWLANUtil *this, unint64_t *a2)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  result = 0xAAAAAAAAAAAAAAAALL;
  if (this)
  {
    *this = 0xAAAAAAAAAAAAAAAALL;
  }

  return result;
}

uint64_t AppleBCMWLANUtil::appendParsedKeyValuePairsToDictionary(OSDictionary *this, const OSString *a2, const OSString *a3)
{
  LODWORD(Length) = a3;
  if (OSString::getLength(a2) >= a3)
  {
    Length = Length;
  }

  else
  {
    Length = OSString::getLength(a2);
  }

  v5 = IOMallocZeroData();
  if (v5)
  {
    v6 = Length + 1;
  }

  else
  {
    v6 = 0;
  }

  v32 = v6;
  v7 = IOMallocZeroData();
  if (v7)
  {
    v8 = Length + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    if (!v7)
    {
      v24 = 3758097085;
      goto LABEL_51;
    }

    if (!Length)
    {
      v24 = 0;
      goto LABEL_50;
    }

    __dst = v7;
    v9 = 0;
    v10 = 0;
    v30 = v5;
    do
    {
      if (OSString::getCStringNoCopy(a2)[v9] == 32)
      {
        ++v10;
      }

      else
      {
        v11 = Length >= v10;
        if (Length > v10)
        {
          v12 = 0;
          v13 = v10;
          while (OSString::getCStringNoCopy(a2)[v13] != 61)
          {
            v13 = ++v12 + v10;
            v11 = Length >= v13;
            if (Length < v13 || Length == v13)
            {
              v10 += v12;
              goto LABEL_26;
            }
          }

          v10 += v12;
          v11 = 1;
LABEL_26:
          v15 = v12;
          v5 = v30;
        }

        else
        {
          v15 = 0;
        }

        v16 = v10 + 1;
        v17 = Length >= v16;
        if (Length > v16)
        {
          v18 = 0;
          v19 = v10 + 1;
          while (OSString::getCStringNoCopy(a2)[v19] != 32)
          {
            v20 = v18 + 1;
            v19 = v10 + v18 + 2;
            v17 = Length >= v19;
            v21 = Length >= v19 && Length != v19;
            ++v18;
            if (!v21)
            {
              v10 += v20 + 1;
              goto LABEL_37;
            }
          }

          v10 += v18 + 1;
          v17 = 1;
          v20 = v18;
LABEL_37:
          v22 = v20;
          v5 = v30;
        }

        else
        {
          v22 = 0;
          ++v10;
        }

        v23 = v17 && v11;
        v24 = 3758097105;
        if (v23 != 1 || Length <= v16)
        {
          goto LABEL_46;
        }

        bzero(v5, v32);
        bzero(__dst, v8);
        CStringNoCopy = OSString::getCStringNoCopy(a2);
        if (v32 < v15)
        {
          AppleBCMWLANUtil::appendParsedKeyValuePairsToDictionary();
        }

        memcpy(v5, &CStringNoCopy[v9], v15);
        v26 = OSString::getCStringNoCopy(a2);
        if (v8 < v22)
        {
          AppleBCMWLANUtil::appendParsedKeyValuePairsToDictionary();
        }

        memcpy(__dst, &v26[v16], v22);
        v27 = OSString::withCString(__dst);
        if (!v27)
        {
          goto LABEL_54;
        }

        v28 = v27;
        OSDictionary::setObject(this, v5, v27);
        (v28->release)(v28);
      }

      v9 = v10;
    }

    while (Length > v10);
    v24 = 0;
  }

  else
  {
    __dst = v7;
LABEL_54:
    v24 = 3758097085;
  }

LABEL_46:
  if (!__dst)
  {
    if (!v5)
    {
      return v24;
    }

    goto LABEL_51;
  }

LABEL_50:
  IOFreeData();
  if (v5)
  {
LABEL_51:
    IOFreeData();
  }

  return v24;
}

const char *getLogLevelName(int a1)
{
  v1 = "";
  v2 = "LogLevelDebug";
  v3 = "LogLevelSpam";
  v4 = "LogLevelAll";
  if (a1 != 127)
  {
    v4 = "";
  }

  if (a1 != 7)
  {
    v3 = v4;
  }

  if (a1 != 6)
  {
    v2 = v3;
  }

  v5 = "LogLevelNotice";
  v6 = "LogLevelInfo";
  if (a1 != 5)
  {
    v6 = "";
  }

  if (a1 != 4)
  {
    v5 = v6;
  }

  if (a1 <= 5)
  {
    v2 = v5;
  }

  v7 = "LogLevelCritical";
  v8 = "LogLevelWarning";
  if (a1 != 3)
  {
    v8 = "";
  }

  if (a1 != 2)
  {
    v7 = v8;
  }

  if (a1 == 1)
  {
    v7 = "LogLevelAlert";
  }

  if (!a1)
  {
    v1 = "LogLevelEmergency";
  }

  if (a1 == -1)
  {
    v1 = "LogLevelNone";
  }

  if (a1 > 0)
  {
    v1 = v7;
  }

  if (a1 <= 3)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

const char *cmdID2Name(int a1)
{
  v2 = &off_1003D3960;
  v3 = 58;
  result = "<unknown ioctl>";
  while (*(v2 - 2) != a1)
  {
    v2 += 2;
    if (!--v3)
    {
      return result;
    }
  }

  return *v2;
}

const char *convertEventToString(int a1, char *__dst, size_t __size)
{
  v4 = 0;
  v5 = 208;
  v6 = &off_1003D3D00;
  do
  {
    if (*(v6 - 2) == a1)
    {
      v4 = *v6;
    }

    v6 += 2;
    --v5;
  }

  while (v5);
  if (__size && __dst && !v4)
  {
    snprintf(__dst, __size, "unknown event (%u)", a1);
  }

  else if (__size && __dst && v4)
  {
    strlcpy(__dst, v4, __size);
  }

  else if (v4)
  {
    return v4;
  }

  else
  {
    return "unknown event";
  }

  return __dst;
}

uint64_t convertStringToEvent(const char *a1)
{
  v2 = &off_1003D3D00;
  v3 = 208;
  while (1)
  {
    v4 = strlen(*v2);
    if (!strncmp(*v2, a1, v4))
    {
      break;
    }

    v2 += 2;
    if (!--v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *(v2 - 2);
}

uint64_t convertAdditionalEventToString(int a1)
{
  v1 = 0;
  for (i = 1; ; i = 0)
  {
    v3 = i;
    v4 = &kAdditionalEventBitMapping[4 * v1];
    if (*v4 == a1)
    {
      break;
    }

    v1 = 1;
    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  return *(v4 + 1);
}

uint64_t stringFromReason(int a1, int a2)
{
  result = 0;
  if (a1 > 22)
  {
    if (a1 == 23)
    {
      v4 = &kPruneMapping;
      v5 = 32;
      goto LABEL_13;
    }

    if (a1 != 188)
    {
      if (a1 != 46)
      {
        return result;
      }

      v4 = &kSupplicantMapping;
      v5 = 16;
      goto LABEL_13;
    }

    v4 = &kBcnMuteReasonMapping;
    goto LABEL_12;
  }

  if (a1 == 16)
  {
    v4 = &kLinkMapping;
LABEL_12:
    v5 = 5;
    goto LABEL_13;
  }

  if (a1 != 19)
  {
    return result;
  }

  v4 = &kRoamMapping;
  v5 = 20;
LABEL_13:
  for (i = v4 + 8; *(i - 2) != a2; i += 16)
  {
    if (!--v5)
    {
      return 0;
    }
  }

  return *i;
}

const char *stringFromStatusInEvent(int a1, int a2)
{
  if (a2 == 46)
  {
    v2 = &KSupplicantStatus;
    v3 = 15;
  }

  else
  {
    if (a2 != 188)
    {
LABEL_8:
      switch(a1)
      {
        case -3098:
          result = "SAE auth PK validation failed";
          break;
        case -3097:
          result = "SAE auth PWE mismatch";
          break;
        case -3096:
          result = "SAE auth anto-clog mismatch";
          break;
        case -3095:
          result = "SAE auth PWID not configured";
          break;
        case -3094:
          result = "SAE auth password not configured";
          break;
        case -3093:
          result = "SAE auth peer PWID mismatch";
          break;
        case -3092:
          result = "SAE auth retry limit reached";
          break;
        case -3091:
          result = "SAE auth crypto priv magic mismatch";
          break;
        case -3090:
          result = "SAE auth crypto key at inifinity";
          break;
        case -3089:
          result = "SAE auth crypto confirm mismatch";
          break;
        case -3088:
          result = "SAE auth PMK unavailable";
          break;
        case -3087:
          result = "SAE auth BN set error";
          break;
        case -3086:
          result = "SAE auth BN get error";
          break;
        case -3085:
          result = "SAE auth crypto not inited";
          break;
        case -3084:
          result = "SAE auth crypto PWE counter exceeded";
          break;
        case -3083:
          result = "SAE auth unsupported group";
          break;
        case -3082:
          result = "SAE auth crypto scalar iteration exceeded";
          break;
        case -3081:
          result = "SAE auth crypto equal MAC address error";
          break;
        case -3080:
          result = "SAE auth crypto EC error";
          break;
        case -3079:
          result = "SAE auth crypto ele not on curve";
          break;
        case -3078:
          result = "SAE auth crypto ele prime validation fail";
          break;
        case -3077:
          result = "SAE auth crypto scalar validation fail";
          break;
        case -3076:
          result = "SAE auth confirm invalid";
          break;
        case -3075:
          result = "SAE auth commit invalid";
          break;
        case -3074:
          result = "SAE auth continue";
          break;
        case -3073:
          result = "SAE auth discard";
          break;
        case -3072:
          result = "SAE auth failure";
          break;
        default:
          switch(a1)
          {
            case 0:
              result = "";
              break;
            case 1:
              result = "operation failed";
              break;
            case 2:
              result = "operation timed out";
              break;
            case 3:
              result = "failed due to no matching network found";
              break;
            case 4:
              result = "operation was aborted";
              break;
            case 5:
              result = "protocol failure: packet not ack'd";
              break;
            case 6:
              result = "AUTH or ASSOC packet was unsolicited";
              break;
            case 7:
              result = "attempt to assoc to an auto auth configuration";
              break;
            case 8:
              result = "scan results are incomplete";
              break;
            case 9:
              result = "scan aborted by another scan";
              break;
            case 10:
              result = "scan aborted due to assoc in progress";
              break;
            case 11:
              result = "802.11h quiet period started";
              break;
            case 12:
              result = "Scan is disabled (WLC_SET_SCANSUPPRESS) or Unable to scan RPM, or Failed to transfer (WLC_E_AUTH, WLC_E_ASSOC)";
              break;
            case 13:
              result = "no allowable channels to scan";
              break;
            case 14:
              result = "scan aborted due to CCX fast roam";
              break;
            case 15:
              result = "abort channel select";
              break;
            case 16:
              result = "request failed due to error";
              break;
            default:
              result = "UNKNOWN!!";
              break;
          }

          break;
      }

      return result;
    }

    v2 = &kBcnMuteStatusMapping;
    v3 = 19;
  }

  v4 = v2 + 8;
  while (*(v4 - 2) != a1)
  {
    v4 += 16;
    if (!--v3)
    {
      goto LABEL_8;
    }
  }

  return *v4;
}

OSObject *AppleBCMWLANLogger::withDriverAndOptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANLoggerMetaClass, &v8))
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

BOOL AppleBCMWLANLogger::initWithDriverAndOptions(uint64_t a1, IOService *a2, const char **a3)
{
  if (!OSObject::init(a1))
  {
    return 0;
  }

  v6 = IOMallocZeroTyped();
  *(a1 + 48) = v6;
  if (!v6)
  {
    return 0;
  }

  *v6 = a2;
  (*(***(a1 + 48) + 8))(**(a1 + 48));
  v7 = IOMallocZeroData();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = IOMallocZeroData();
  if (v9)
  {
    v10 = v9;
    v11 = IOMallocZeroData();
    v12 = v11 != 0;
    if (v11)
    {
      v13 = v11;
      strlcpy((*(a1 + 48) + 8), *a3, 3uLL);
      *v8 = xmmword_1003B0D00;
      *(v8 + 16) = 0x20000;
      *(v8 + 548) = 0x200000;
      *(v8 + 24) = 52428;
      *(v8 + 32) = 1000;
      strcpy((v8 + 36), "AppleBCMWLAN_Logs");
      snprintf((v8 + 292), 0xF0uLL, "wlan%s", *a3);
      v14 = (v8 + 580);
      strcpy((v8 + 580), "WiFi");
      *(v8 + 552) = 2;
      *(v8 + 560) = 0u;
      snprintf(a3[4], 0x80uLL, "%s.%s", "com.apple.driver.AppleBCMWLANCoreV3", *a3);
      v15 = a3[4];
      v16 = CCPipe::withOwnerNameCapacity();
      v17 = OSMetaClassBase::safeMetaCast(v16, gCCLogPipeMetaClass);
      *(a3[1] + 1) = v17;
      *(*(a1 + 48) + 24) = v17;
      (v17->__vftable[1].Dispatch)(v17);
      if (*(a3[1] + 1))
      {
        isVerboseDebugLoggingAllowed = AppleBCMWLAN_isVerboseDebugLoggingAllowed();
        v28 = 289664;
        if (!isVerboseDebugLoggingAllowed)
        {
          v28 = 0;
        }

        v41 = v28;
        if (isVerboseDebugLoggingAllowed)
        {
          v29 = 5;
        }

        else
        {
          v29 = -1;
        }

        if (isVerboseDebugLoggingAllowed)
        {
          v30 = 1;
        }

        else
        {
          v30 = -1;
        }

        v40 = v30;
        v43 = -1431655766;
        snprintf(v13, 0x80uLL, "%s%s%s.", "wlan", *a3, "log.level");
        if (IOParseBootArgNumber("wlan.log.level", &v43, 4) || IOParseBootArgNumber(v13, &v43, 4))
        {
          v32 = v43 == 127 || (v43 + 1) < 9;
          v33 = !v32;
          if (v32)
          {
            v29 = v43;
          }

          v34 = v40;
          if (!v33)
          {
            v34 = v43;
          }

          v40 = v34;
        }

        snprintf(v13, 0x80uLL, "%s%s%s.", "wlan", *a3, "log.cclevel");
        if ((IOParseBootArgNumber("wlan.log.cclevel", &v43, 4) || IOParseBootArgNumber(v13, &v43, 4)) && ((v43 + 1) < 9 || v43 == 127))
        {
          v29 = v43;
        }

        v42 = 0;
        snprintf(v13, 0x80uLL, "%s%s%s.", "wlan", *a3, "log.flags");
        if (IOParseBootArgNumber("wlan.log.flags", &v42, 8) || IOParseBootArgNumber(v13, &v42, 8))
        {
          v36 = v42;
          v41 = v42;
        }

        else
        {
          v36 = 0;
        }

        snprintf(v13, 0x80uLL, "%s%s%s.", "wlan", *a3, "log.ccflags");
        if (IOParseBootArgNumber("wlan.log.cflags", &v42, 8) || IOParseBootArgNumber(v13, &v42, 8))
        {
          v41 = v42;
        }

        *v10 = 0;
        *(v10 + 2) = v29;
        *(v10 + 3) = v40;
        v10[3] = v41;
        v10[4] = v36;
        v10[6] = a2;
        v10[7] = 0;
        v10[8] = a3[3];
        snprintf(v10 + 88, 0xF0uLL, "wlan%s", *a3);
        v37 = *(a3[1] + 1);
        v38 = CCStream::withPipeAndName();
        v39 = OSMetaClassBase::safeMetaCast(v38, gCCLogStreamMetaClass);
        *(a3[1] + 2) = v39;
        *(*(a1 + 48) + 32) = v39;
        v14 = (v8 + 580);
      }

      bzero(v8, 0x350uLL);
      *(v8 + 16) = xmmword_1003B0660;
      *(v8 + 32) = 1000;
      strcpy((v8 + 36), "AppleBCMWLAN_Datapath");
      strcpy(v14, "WiFi");
      DTParameter32 = AppleBCMWLANUtil::getDTParameter32(a2, "IOService", "wlan.data.log.ring.size", 0);
      if (DTParameter32)
      {
        *(v8 + 16) = DTParameter32;
      }

      *(v8 + 548) = 0x202800000;
      *(v8 + 560) = 0;
      *(v8 + 568) = 0;
      v19 = a3[4];
      v20 = CCPipe::withOwnerNameCapacity();
      v21 = OSMetaClassBase::safeMetaCast(v20, gCCLogPipeMetaClass);
      *a3[1] = v21;
      *(*(a1 + 48) + 16) = v21;
      bzero((v8 + 16), 0x340uLL);
      *v8 = xmmword_1003B0D10;
      strcpy((v8 + 36), "StateSnapshots");
      strlcpy((v8 + 292), *a3, 0x100uLL);
      strcpy((v8 + 580), "WiFi");
      *(v8 + 16) = 128;
      *(v8 + 560) = a2;
      *(v8 + 568) = a3[2];
      v22 = a3[4];
      v23 = CCPipe::withOwnerNameCapacity();
      *(a3[1] + 3) = v23;
      *(*(a1 + 48) + 40) = v23;
      bzero(v10, 0x358uLL);
      *v10 = 1;
      v10[1] = -1;
      v10[3] = 0;
      v10[4] = 0;
      v10[7] = 0;
      v10[8] = 0;
      v10[6] = 0;
      if (*(a3[1] + 3))
      {
        v24 = CCStream::withPipeAndName();
        v25 = OSMetaClassBase::safeMetaCast(v24, gCCDataStreamMetaClass);
        *(a3[1] + 4) = v25;
        *(*(a1 + 48) + 48) = v25;
      }

      IOFreeData();
    }

    IOFreeData();
  }

  else
  {
    v12 = 0;
  }

  IOFreeData();
  return v12;
}

void AppleBCMWLANLogger::free(OSObject *this)
{
  v2 = *&this[1].refcount;
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 16))(*v2);
      **&this[1].refcount = 0;
      v2 = *&this[1].refcount;
    }

    v3 = v2[5];
    if (v3)
    {
      (*(*v3 + 16))(v2[5]);
      *(*&this[1].refcount + 40) = 0;
      v2 = *&this[1].refcount;
    }

    v4 = v2[6];
    if (v4)
    {
      (*(*v4 + 16))(v2[6]);
      *(*&this[1].refcount + 48) = 0;
      v2 = *&this[1].refcount;
    }

    v5 = v2[2];
    if (v5)
    {
      (*(*v5 + 16))(v2[2]);
      *(*&this[1].refcount + 16) = 0;
      v2 = *&this[1].refcount;
    }

    v6 = v2[3];
    if (v6)
    {
      (*(*v6 + 16))(v2[3]);
      *(*&this[1].refcount + 24) = 0;
      v2 = *&this[1].refcount;
    }

    v7 = v2[4];
    if (v7)
    {
      (*(*v7 + 16))(v2[4]);
      *(*&this[1].refcount + 32) = 0;
      v2 = *&this[1].refcount;
    }

    memset_s(v2, 0x38uLL, 0, 0x38uLL);
    v8 = *&this[1].refcount;
    if (v8)
    {
      IOFree(v8, 0x38uLL);
      *&this[1].refcount = 0;
    }
  }

  OSObject::free(this);
}

const char *getForcedFwTrapReasonString(int a1)
{
  if ((a1 - 1) > 8)
  {
    return "Unknown";
  }

  else
  {
    return off_1003D51A0[a1 - 1];
  }
}

const char *stringFromBootCheckPoint(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "Unknown";
  }

  else
  {
    return off_1003D51E8[a1];
  }
}

uint64_t getWakeReasonFromEvent(int a1)
{
  if (a1 > 56)
  {
    if (a1 > 82)
    {
      if (a1 == 83 || a1 == 109 || a1 == 193)
      {
        return 9;
      }
    }

    else
    {
      switch(a1)
      {
        case '9':
          return 7;
        case 'L':
          return 24;
        case 'Q':
          return 16;
      }
    }

    return 0;
  }

  if (a1 > 15)
  {
    switch(a1)
    {
      case 16:
        return 5;
      case 33:
        return 8;
      case 41:
        return 25;
    }

    return 0;
  }

  v1 = 4;
  if (a1 != 6 && a1 != 12)
  {
    return 0;
  }

  return v1;
}

OSObject *AppleBCMWLANPCIeDoorbell::withCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeDoorbellMetaClass, &v8))
  {
    return 0;
  }

  v6 = v8;
  if (v8 && (AppleBCMWLANPCIeDoorbell::initWithCallbacks(v8, a1, a2, a3) & 1) == 0)
  {
    (v6->release)(v6);
    return 0;
  }

  return v6;
}

uint64_t AppleBCMWLANPCIeDoorbell::initWithCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OSObject::init(a1);
  if (result)
  {
    result = 0;
    if (a2)
    {
      if (a3)
      {
        result = IOMallocZeroTyped();
        *(a1 + 48) = result;
        if (result)
        {
          *(result + 8) = a2;
          (*(**(*(a1 + 48) + 8) + 8))(*(*(a1 + 48) + 8));
          *(*(a1 + 48) + 16) = a3;
          *(*(a1 + 48) + 24) = a4;
          (*(*a1 + 56))(a1);
          **(a1 + 48) = IO80211TimerSource::allocWithParams();
          return **(a1 + 48) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeDoorbell::handleCoalescingTimer(AppleBCMWLANPCIeDoorbell *a1)
{
  mach_continuous_time();
  v2 = *(a1 + 6);
  result = absolutetime_to_nanoseconds();
  if (*(*(a1 + 6) + 32) == 1)
  {
    v4 = AppleBCMWLANPCIeDoorbell::ringNow(a1) == 0;

    return AppleBCMWLANPCIeDoorbell::updateDBRecord(a1, 0, v4);
  }

  return result;
}

void AppleBCMWLANPCIeDoorbell::free(OSObject *this)
{
  v2 = *&this[1].refcount;
  if (v2)
  {
    if (v2[67])
    {
      IOLockFree(v2[67]);
      *(*&this[1].refcount + 536) = 0;
      v2 = *&this[1].refcount;
    }

    if (*v2)
    {
      (*(**v2 + 80))(*v2);
      v2 = *&this[1].refcount;
      if (*v2)
      {
        (*(**v2 + 16))(*v2);
        **&this[1].refcount = 0;
        v2 = *&this[1].refcount;
      }
    }

    v3 = v2[1];
    if (v3)
    {
      (*(*v3 + 16))(v2[1]);
      *(*&this[1].refcount + 8) = 0;
      v2 = *&this[1].refcount;
    }

    memset_s(v2, 0x238uLL, 0, 0x238uLL);
    v4 = *&this[1].refcount;
    if (v4)
    {
      IOFree(v4, 0x238uLL);
      *&this[1].refcount = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANPCIeDoorbell::ringNow(AppleBCMWLANPCIeDoorbell *this)
{
  v2 = (*(*(this + 6) + 16))(*(*(this + 6) + 8));
  if (!v2)
  {
    mach_continuous_time();
    v3 = *(this + 6);
    absolutetime_to_nanoseconds();
    *(*(this + 6) + 32) = 0;
    *(*(this + 6) + 544) = 0;
  }

  return v2;
}

uint64_t AppleBCMWLANPCIeDoorbell::updateDBRecord(AppleBCMWLANPCIeDoorbell *this, int a2, int a3)
{
  mach_continuous_time();
  result = absolutetime_to_nanoseconds();
  *(*(this + 6) + 24 * (*(*(this + 6) + 528) & 0xFLL) + 144) = a2;
  *(*(this + 6) + 24 * (*(*(this + 6) + 528) & 0xFLL) + 152) = *(*(this + 6) + 528);
  *(*(this + 6) + 24 * (*(*(this + 6) + 528) & 0xFLL) + 148) = a3;
  *(*(this + 6) + 24 * (*(*(this + 6) + 528) & 0xF) + 160) = 0xAAAAAAAAAAAAAAAALL;
  ++*(*(this + 6) + 528);
  return result;
}

uint64_t AppleBCMWLANPCIeDoorbell::cancelRing(uint64_t this)
{
  *(*(this + 48) + 32) = 0;
  *(*(this + 48) + 544) = *(*(this + 48) + 552);
  return this;
}

uint64_t *AppleBCMWLANPCIeDoorbell::ring(uint64_t *this, int a2, int a3, uint64_t a4)
{
  v5 = this + 6;
  v4 = this[6];
  if ((v4[4] & 1) == 0)
  {
    v6 = this;
    *(v4 + 12) = 0;
    if (a3)
    {
      *(*v5 + 544) += a4;
      if (*(*v5 + 544) < *(*v5 + 552))
      {
        return this;
      }

      v7 = 1;
    }

    else if (a2)
    {
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      v13 = *v5;
      if (0xAAAAAAAAAAAAAAAALL - *(*v5 + 56) <= 0xF423F)
      {
        v14 = *(v13 + 560);
        *(*v5 + 560) = AppleBCMWLANBusInterfacePCIe::getTotalTxPacketCount(*(v13 + 8));
        v15 = *v5;
        if ((*(*v5 + 560) - v14) <= 0x63)
        {
          v16 = *(v15 + 64) + *(v15 + 56);
          if (v16 >= 0xAAAAAAAAAAAAAAAALL)
          {
            v17 = (v16 + 0x5555555555555556) / 0x3E8;
          }

          else
          {
            v17 = 0;
          }

          *(v15 + 48) = v17;
          if (0xAAAAAAAAAAAAAAAALL - *(*v5 + 72) < 0x4C4B40)
          {
            v7 = 0;
          }

          else
          {
            *(*v5 + 64) += 50000;
            v18 = *v5;
            if (*(*v5 + 64) > 0xF423FuLL)
            {
              *(v18 + 64) = 1000000;
              v18 = *v5;
            }

            v7 = 0;
            *(v18 + 72) = 0xAAAAAAAAAAAAAAAALL;
          }
        }

        else
        {
          v7 = 1;
        }
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }

    v8 = *v5;
    if (!*(*v5 + 48))
    {
      isCTS = AppleBCMWLANBusInterfacePCIe::isCTS(*(v8 + 8));
      v8 = *v5;
      if (isCTS)
      {
        if (AppleBCMWLANBusInterfacePCIe::isBusLeadEnabled(*(v8 + 8)))
        {
          v10 = AppleBCMWLANPCIeDoorbell::ringNow(v6);
          if (v10)
          {
            *(*v5 + 32) = 1;
            (*(***v5 + 64))(**v5, *(*v5 + 48));
          }

          AppleBCMWLANPCIeDoorbell::updateDBRecord(v6, 1, v10 == 0);
          if (!v7)
          {
            goto LABEL_12;
          }

LABEL_11:
          *(*v5 + 64) = 850000;
          *(*v5 + 560) = AppleBCMWLANBusInterfacePCIe::getTotalTxPacketCount(*(*v5 + 8));
LABEL_12:
          v11 = *(*v5 + 48);
          v12 = *(*v5 + 64);
          return kdebug_trace();
        }

        v8 = *v5;
      }
    }

    AppleBCMWLANPCIeDoorbell::ring(v8, v5);
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return this;
}

void *AppleBCMWLANPCIeDoorbell::getDebugInfo(void *result, void *__dst)
{
  if (__dst)
  {
    return memcpy(__dst, (result[6] + 80), 0x1C0uLL);
  }

  return result;
}

OSObject *AppleBCMWLANLeakyApParser::withLogger(AppleBCMWLANLeakyApParser *this, CCLogStream *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANLeakyApParserMetaClass, &v5))
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

uint64_t AppleBCMWLANLeakyApParser::init(OSObject *this, CCLogStream *a2)
{
  if (OSObject::init(this))
  {
    result = IOMallocZeroTyped();
    *&this[1].refcount = result;
    if (!result)
    {
      return result;
    }

    *result = a2;
    v5 = **&this[1].refcount;
    if (v5)
    {
      (*(*v5 + 8))(v5);
      v6 = *&this[1].refcount;
      *(v6 + 40) = 0;
      *(v6 + 24) = 0u;
      *(v6 + 8) = 0u;
      v7 = *&this[1].refcount;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      v8 = *&this[1].refcount;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      return 1;
    }

    getClassNameHelper(this);
    IOLog("%s:%s(): Unable to get debug logger\n");
  }

  else
  {
    getClassNameHelper(this);
    IOLog("%s:%s(): Super failed to init!\n");
  }

  return 0;
}

double AppleBCMWLANLeakyApParser::releaseLeakyApParserResources(AppleBCMWLANLeakyApParser *this)
{
  for (i = *(this + 6); ; i = *(this + 6))
  {
    v3 = *(i + 40);
    if (!v3)
    {
      break;
    }

    *(i + 40) = v3[2];
    IOFree(v3, 0x18uLL);
  }

  *(i + 40) = 0;
  result = 0.0;
  *(i + 24) = 0u;
  *(i + 8) = 0u;
  return result;
}

void AppleBCMWLANLeakyApParser::free(AppleBCMWLANLeakyApParser *this)
{
  if (*(this + 6))
  {
    v2 = AppleBCMWLANLeakyApParser::releaseLeakyApParserResources(this);
    v3 = *(this + 6);
    if (*v3)
    {
      (*(**v3 + 16))(*v3, v2);
      **(this + 6) = 0;
      v3 = *(this + 6);
    }

    memset_s(v3, 0x58uLL, 0, 0x58uLL);
    v4 = *(this + 6);
    if (v4)
    {
      IOFree(v4, 0x58uLL);
      *(this + 6) = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANLeakyApParser::printLeakyAPLog(AppleBCMWLANLeakyApParser *this)
{
  v1 = this + 48;
  result = **(this + 6);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANLeakyApParser::printLeakyAPLog(v1);
    }
  }

  return result;
}

uint64_t AppleBCMWLANLeakyApParser::parseRxRate(CCLogStream ***this, unsigned int a2, unsigned int *a3)
{
  if (a3)
  {
    if ((a2 & 0x7000000) == 0)
    {
      *a3 = a2 >> 1;
      if (*this[6] && CCLogStream::shouldLog())
      {
        v8 = *a3;
        CCLogStream::logInfo(*this[6], "[dk] %s@%d: INFO: BASIC RATE: the Mbps is %d \n ");
      }

      return 1;
    }

    v6 = ratespec2rate(*this[6], a2);
    *a3 = v6;
    if (v6)
    {
      if (*this[6])
      {
        if (CCLogStream::shouldLog())
        {
          v9 = *a3;
          CCLogStream::logInfo(*this[6], "[dk] %s@%d: INFO: %s RATE: BW is %s Short GI is %d the Mbps is %d \n ");
        }
      }

      return 1;
    }
  }

  else
  {
    AppleBCMWLANLeakyApParser::parseRxRate(this);
  }

  result = *this[6];
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      CCLogStream::logAlert(*this[6], "[dk] %s@%d: ERROR: Failed to parse wl rx rate. The rateSpec value is 0x%X \n ", "parseRxRate", 200, a2);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANLeakyApParser::addLeakyAPStatsClient(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(result + 48) + 72) = a2;
  *(*(result + 48) + 80) = a3;
  return result;
}

uint64_t AppleBCMWLANLeakyApParser::parseLeakyApGuardTimeMrk(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    AppleBCMWLANLeakyApParser::parseLeakyApGuardTimeMrk();
    return v9;
  }

  v4 = *(a2 + 8);
  *(*(a1 + 48) + 12) = *(a2 + 4);
  *(*(a1 + 48) + 16) = v4;
  *(*(a1 + 48) + 20) = *(a2 + 12);
  *(*(a1 + 48) + 24) = *(a2 + 16);
  *(*(a1 + 48) + 26) = *(a2 + 18);
  if ((*(a2 + 20) & 8) != 0)
  {
    result = 0;
    v5 = *(a1 + 48);
    v8 = 3;
LABEL_19:
    *(v5 + 28) = v8;
    return result;
  }

  if ((*(a2 + 20) & 4) != 0)
  {
    result = 0;
    v5 = *(a1 + 48);
    v8 = 2;
    goto LABEL_19;
  }

  if ((*(a2 + 20) & 2) != 0)
  {
    result = 0;
    v5 = *(a1 + 48);
    v8 = 1;
    goto LABEL_19;
  }

  if (*(a2 + 20))
  {
    result = 0;
    *(*(a1 + 48) + 28) = 0;
    return result;
  }

  if ((*(a2 + 20) & 0x10) != 0)
  {
    result = 0;
    v5 = *(a1 + 48);
LABEL_18:
    v8 = 4;
    goto LABEL_19;
  }

  v5 = *(a1 + 48);
  if ((*(a2 + 20) & 0x80) != 0)
  {
    result = 0;
    goto LABEL_18;
  }

  if (*v5)
  {
    shouldLog = CCLogStream::shouldLog();
    v5 = *(a1 + 48);
    if (shouldLog)
    {
      CCLogStream::logAlert(*v5, "[dk] %s@%d: ERROR: Got Invalid Failed reason 0x%X \n", "parseLeakyApGuardTimeMrk", 242, *(a2 + 20));
      v5 = *(a1 + 48);
    }
  }

  *(v5 + 28) = 4;
  return 3758097084;
}

uint64_t AppleBCMWLANLeakyApParser::parseLeakyApPacket(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 48;
  v2 = *(a1 + 48);
  if (a2)
  {
    if ((*(v2 + 40) == 0) == (*(v2 + 8) == 0))
    {
      if (*(v2 + 8) < 0x100u)
      {
        v6 = IOMallocZeroTyped();
        if (v6)
        {
          *v6 = 0;
          v6[1] = 0;
          v6[2] = 0;
          v6[2] = *(*(a1 + 48) + 40);
          *(*(a1 + 48) + 40) = v6;
          ++*(*(a1 + 48) + 8);
          if (AppleBCMWLANLeakyApParser::parseRxRate(a1, *(a2 + 12), (*(*(a1 + 48) + 40) + 8)))
          {
            v7 = 0;
            **(*v3 + 40) = *(a2 + 4);
            *(*(*v3 + 40) + 2) = *(a2 + 6);
            *(*(*v3 + 40) + 4) = *(a2 + 8);
            *(*(*v3 + 40) + 12) = *(a2 + 16);
            *(*(*v3 + 40) + 14) = *(a2 + 18);
            *(*(*v3 + 40) + 15) = *(a2 + 19);
            return v7;
          }

          AppleBCMWLANLeakyApParser::parseLeakyApPacket();
        }

        else
        {
          AppleBCMWLANLeakyApParser::parseLeakyApPacket();
        }

        return v9;
      }

      if (*v2 && CCLogStream::shouldLog())
      {
        AppleBCMWLANLeakyApParser::parseLeakyApPacket(v3);
      }

      return 0;
    }

    else
    {
      v7 = 3758097084;
      if (*v2 && CCLogStream::shouldLog())
      {
        AppleBCMWLANLeakyApParser::parseLeakyApPacket(v3);
      }
    }
  }

  else
  {
    v7 = 3758097090;
    if (*v2 && CCLogStream::shouldLog())
    {
      AppleBCMWLANLeakyApParser::parseLeakyApPacket(v3);
      return 3758097090;
    }
  }

  return v7;
}

uint64_t AppleBCMWLANLeakyApParser::parseEventLogRecordLeakyAP(AppleBCMWLANLeakyApParser *this, OSData *a2)
{
  v4 = IOMallocZeroData();
  if (v4)
  {
    v5 = v4;
    if (OSData::getLength(a2) >= 0x19)
    {
      AppleBCMWLANLeakyApParser::parseEventLogRecordLeakyAP();
    }

    else
    {
      BytesNoCopy = OSData::getBytesNoCopy(a2);
      Length = OSData::getLength(a2);
      memcpy(v5, BytesNoCopy, Length);
      if (a2 && OSData::getBytesNoCopy(a2, 0, 0x14uLL))
      {
        if (*v5)
        {
          if (*v5 == 1 && v5[1] == 16)
          {
            if (**(this + 6) && CCLogStream::shouldLog())
            {
              AppleBCMWLANLeakyApParser::parseEventLogRecordLeakyAP(this + 48);
            }

            v8 = AppleBCMWLANLeakyApParser::parseLeakyApPacket(this, v5);
            goto LABEL_24;
          }
        }

        else if (v5[1] == 20)
        {
          v11 = this + 48;
          if (**(this + 6) && CCLogStream::shouldLog())
          {
            AppleBCMWLANLeakyApParser::parseEventLogRecordLeakyAP(this + 48);
          }

          v8 = AppleBCMWLANLeakyApParser::parseLeakyApGuardTimeMrk(this, v5);
          if (!v8 && AppleBCMWLANLeakyApParser::sendLeakyApInfo(this) && **v11 && CCLogStream::shouldLog())
          {
            AppleBCMWLANLeakyApParser::parseEventLogRecordLeakyAP(this + 48);
          }

          v12 = *(*v11 + 28);
          if (v12 <= 4)
          {
            ++*(*v11 + 4 * v12 + 48);
          }

          AppleBCMWLANLeakyApParser::releaseLeakyApParserResources(this);
LABEL_24:
          if (!v8)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v8 = 3758097090;
        if (**(this + 6) && CCLogStream::shouldLog())
        {
          AppleBCMWLANLeakyApParser::parseEventLogRecordLeakyAP(this + 48);
        }

LABEL_29:
        AppleBCMWLANLeakyApParser::releaseLeakyApParserResources(this);
LABEL_30:
        IOFreeData();
        return v8;
      }

      AppleBCMWLANLeakyApParser::parseEventLogRecordLeakyAP();
    }

    v8 = v14;
    goto LABEL_30;
  }

  v10 = *(this + 6);
  v9 = this + 48;
  if (*v10 && CCLogStream::shouldLog())
  {
    AppleBCMWLANLeakyApParser::parseEventLogRecordLeakyAP(v9);
  }

  return 0;
}

uint64_t AppleBCMWLANLeakyApParser::sendLeakyApInfo(AppleBCMWLANLeakyApParser *this)
{
  v2 = this + 48;
  v1 = *(this + 6);
  if (*(v1 + 72) && *(v1 + 80))
  {
    if (CCLogStream::shouldLog(*v1, 0x200000000uLL))
    {
      AppleBCMWLANLeakyApParser::printLeakyAPLog(this);
    }

    if ((*(*v2 + 80))(*(*v2 + 72), *v2 + 8))
    {
      return 0;
    }

    else
    {
      v4 = 3758097097;
      if (**v2 && CCLogStream::shouldLog())
      {
        AppleBCMWLANLeakyApParser::sendLeakyApInfo(v2);
      }
    }
  }

  else
  {
    v4 = 3758097097;
    if (*v1 && CCLogStream::shouldLog())
    {
      AppleBCMWLANLeakyApParser::sendLeakyApInfo(v2);
    }
  }

  return v4;
}

uint64_t DriverKit_AppleBCMWLAN::Start_Impl(IOService *this, IOService *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "V3 Driver Hello World", v5, 2u);
  }

  return IOService::Start(this, a2, &IOService::_Dispatch);
}

OSObject *AppleBCMWLANChanSpec::withFWAPIVer(int a1)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChanSpecMetaClass, &v4))
  {
    return 0;
  }

  v2 = v4;
  if (v4 && (AppleBCMWLANChanSpec::initWithFWAPIVer(v4, a1) & 1) == 0)
  {
    (v2->release)(v2);
    return 0;
  }

  return v2;
}

uint64_t AppleBCMWLANChanSpec::initWithFWAPIVer(OSObject *a1, int a2)
{
  result = OSObject::init(a1);
  if (result)
  {
    result = IOMallocZeroTyped();
    a1[1].OSMetaClassBase::__vftable = result;
    if (result)
    {
      *result = a2;
      return 1;
    }
  }

  return result;
}

void AppleBCMWLANChanSpec::free(OSObject *this)
{
  v2 = this[1].OSMetaClassBase::__vftable;
  if (v2)
  {
    memset_s(v2, 4uLL, 0, 4uLL);
    v3 = this[1].OSMetaClassBase::__vftable;
    if (v3)
    {
      IOFree(v3, 4uLL);
      this[1].OSMetaClassBase::__vftable = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANChanSpec::convToStateID(unint64_t a1)
{
  memset(__str, 170, 10);
  PrimaryChannel = ChanSpecGetPrimaryChannel();
  snprintf(__str, 0xAuLL, "%03d", PrimaryChannel);
  v3 = __str[0];
  v4 = __str[1];
  v5 = __str[2];
  snprintf(__str, 0xAuLL, "%1s", CTL_SB_STRING[(a1 >> 8) & 7]);
  v6 = __str[0];
  snprintf(__str, 0xAuLL, "%2s", BW_STRING[(a1 >> 11) & 7]);
  return (v3 << 56) | (v4 << 48) | (v5 << 40) | (v6 << 32) | __str[1] | (__str[0] << 8) | 0x20200000;
}

char *AppleBCMWLANChanSpec::convToAscii(unint64_t a1, char *a2, unsigned int a3)
{
  result = 0;
  if (a2 && a3 >= 0x10)
  {
    if (!a1 || (a1 & 0x3800) == 0x3800)
    {
      *a2 = 0;
    }

    else
    {
      PrimaryChannel = ChanSpecGetPrimaryChannel();
      v7 = "";
      v8 = "6g";
      if (a1 >> 14 != 1)
      {
        v8 = "";
      }

      if (a1 >> 14 == 3)
      {
        v9 = "5g";
      }

      else
      {
        v9 = v8;
      }

      if (a1 < 0x4000u)
      {
        v9 = "2g";
      }

      v10 = (a1 >> 11) & 7;
      if (v10 < 3)
      {
        if (v10 == 2)
        {
          v7 = "n";
        }
      }

      else
      {
        v7 = CTL_SB_STRING[(a1 >> 8) & 7];
      }

      snprintf(a2, 0x10uLL, "%3u %1s %5s %1s", PrimaryChannel, v9, BW_STRING[v10], v7);
    }

    return a2;
  }

  return result;
}

int **AppleBCMWLANChanSpec::getApple80211ChannelSpec(int **result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    AppleBCMWLANChanSpec::getAppleChannelSpec(result, a2);

    return ChanSpecConvToApple80211Channel();
  }

  return result;
}

uint64_t AppleBCMWLANChanSpec::getAppleChannelSpec(int **this, uint64_t a2)
{
  if (*this[5] > 1)
  {
    if ((a2 & 0xF800) == 0x4000)
    {
      v3 = a2 & 7;
      v4 = (a2 >> 7) & 0xF;
      if ((a2 & 7) != 7)
      {
        LOBYTE(v3) = AppleBCMWLANChanSpec::getAppleChannelSpec(unsigned short)::chanIdToCenterlMap320[v3];
      }

      if (v4 < 8)
      {
        v5 = -16;
      }

      else
      {
        v5 = 16;
      }

      v6 = v3 + v5;
      if (v4 >= 8)
      {
        v4 -= 8;
      }

      return (v6 | (v4 << 8)) + 26624;
    }
  }

  else
  {
    if ((a2 & 0xF000) == 0x1000)
    {
      v2 = a2 | (((a2 >> 10) & 3) << 11) | 0xFFFFC000;
    }

    else
    {
      v2 = a2 | (((a2 >> 10) & 3) << 11);
    }

    if ((a2 & 0x300) == 0x200)
    {
      return v2 | 0x100;
    }

    else
    {
      return v2;
    }
  }

  return a2;
}

uint64_t AppleBCMWLANChanSpec::getBCMChannelSpec(uint64_t a1, unsigned __int16 a2)
{
  result = a2;
  if (**(a1 + 40) <= 1)
  {
    if (a2 >> 14 <= 2u)
    {
      v4 = 0x2000;
    }

    else
    {
      v4 = 4096;
    }

    v5 = a2 | (((a2 >> 11) & 7) << 10) | v4;
    v6 = v5 | 0x300;
    v7 = v5 | 0x100;
    v8 = v5 | 0x200;
    if ((a2 & 0x700) != 0x100)
    {
      v8 = v7;
    }

    if (((a2 >> 11) & 7) == 3)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

uint64_t AppleBCMWLANChanSpec::isValid5GChanSpec(int **this, __int16 a2)
{
  if (*this[5] >= 2)
  {
    v2 = &word_1003B0D32;
    v3 = 55;
    v4 = &word_1003B0D32;
    while (1)
    {
      v5 = *v4;
      v4 += 2;
      if (a2 == v5 && (a2 & 0x3800) == *(v2 - 1))
      {
        break;
      }

      v2 = v4;
      if (!--v3)
      {
        return 0;
      }
    }
  }

  return 1;
}

AppleBCMWLAN11axAdapter *AppleBCMWLAN11axAdapter::withDriver(AppleBCMWLAN11axAdapter *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLAN11axAdapterMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && (AppleBCMWLAN11axAdapter::initWithDriver(v5, this) & 1) == 0)
  {
    (*(*v3 + 16))(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLAN11axAdapter::initWithDriver(OSObject *this, AppleBCMWLANCore *a2)
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

            IOLog("AppleBCMWLAN11axAdapter super init failied\n");
          }

          else
          {
            IOLog("AppleBCMWLAN11axAdapter Failed to init fLogger\n");
          }
        }

        else
        {
          IOLog("AppleBCMWLAN11axAdapter configManager is null\n");
        }
      }

      else
      {
        IOLog("AppleBCMWLAN11axAdapter commander is null\n");
      }
    }

    else
    {
      IOLog("AppleBCMWLAN11axAdapter driver is null\n");
    }
  }

  else
  {
    IOLog("Failed to allocate AppleBCMWLAN11axAdapter_IVars\n");
  }

  return 0;
}

void AppleBCMWLAN11axAdapter::free(OSObject *this)
{
  v2 = this[1].OSMetaClassBase::__vftable;
  if (v2)
  {
    isEqualTo = v2->isEqualTo;
    if (!isEqualTo || ((*(*isEqualTo + 16))(v2->isEqualTo), this[1].isEqualTo = 0, (v2 = this[1].OSMetaClassBase::__vftable) != 0))
    {
      IOFree(v2, 0x20uLL);
      this[1].OSMetaClassBase::__vftable = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLAN11axAdapter::configureUpLinkOFDMA(AppleBCMWLANCore ***this, int a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*this[5]) > 0x14)
  {
    v4 = &v14;
    v5 = &v16;
    v6 = (&v15 + 4);
    v14 = 0x400020014000DLL;
    LOBYTE(v15) = 7;
    v7 = 24;
  }

  else
  {
    v4 = &v10;
    v5 = &v11 + 4;
    v6 = &v11;
    v10 = 0x400010010000DLL;
    v7 = 20;
  }

  *v6 = 4;
  *v5 = a2 != 0;
  v13[0] = v4;
  v13[1] = v7;
  v8 = (*(**this[5] + 88))(*this[5]);
  if ((*(*v8 + 136))(v8))
  {
    return AppleBCMWLANCommander::sendIOVarSet(this[5][1], "he");
  }

  else
  {
    return AppleBCMWLANCommander::runIOVarSet(this[5][1], "he", v13, 0, 0);
  }
}

uint64_t AppleBCMWLAN11axAdapter::handleUlOfdmaConfigurationAsyncCallback(uint64_t result, uint64_t a2, int a3, void *a4)
{
  if (a3)
  {
    v4 = (result + 40);
    result = *(*(result + 40) + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLAN11axAdapter::handleUlOfdmaConfigurationAsyncCallback(v4);
      }
    }
  }

  else if (!*a4)
  {
    v5 = result + 40;
    result = *(*(result + 40) + 24);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLAN11axAdapter::handleUlOfdmaConfigurationAsyncCallback(v5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapterMetaClass::New(AppleBCMWLANNearbyDeviceDiscoveryAdapterMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C55C0;
  a2->OSObjectInterface::__vftable = &off_1003C5608;
  return 0;
}

uint64_t AppleBCMWLANSensingAdapterMetaClass::New(AppleBCMWLANSensingAdapterMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D20A0;
  a2->OSObjectInterface::__vftable = &off_1003D20E8;
  return 0;
}

uint64_t AppleBCMWLANWnmAdapterMetaClass::New(AppleBCMWLANWnmAdapterMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CF098;
  a2->OSObjectInterface::__vftable = &off_1003CF0E8;
  a2[1].OSMetaClassBase::__vftable = &off_1003CF108;
  return 0;
}

uint64_t AppleBCMWLANLQMMetaClass::New(AppleBCMWLANLQMMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C53C8;
  a2->OSObjectInterface::__vftable = &off_1003C5410;
  return 0;
}

uint64_t AppleBCMWLANNetAdapterMetaClass::New(AppleBCMWLANNetAdapterMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C54E0;
  a2->OSObjectInterface::__vftable = &off_1003C5528;
  return 0;
}

uint64_t AppleBCMWLANInfraProtocol::_Dispatch(AppleBCMWLANInfraProtocol *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v5 = *a2;
  v6 = a2[2];
  return IO80211InfraProtocol::_Dispatch();
}

uint64_t AppleBCMWLANInfraProtocolMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleBCMWLANRoamAdapterMetaClass::New(AppleBCMWLANRoamAdapterMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C5558;
  a2->OSObjectInterface::__vftable = &off_1003C55A0;
  return 0;
}

uint64_t AppleBCMWLANScanAdapterMetaClass::New(AppleBCMWLANScanAdapterMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D30A0;
  a2->OSObjectInterface::__vftable = &off_1003D30F0;
  a2[1].OSMetaClassBase::__vftable = &off_1003D3110;
  return 0;
}

uint64_t AppleBCMWLANApFeatureConfigMetaClass::New(AppleBCMWLANApFeatureConfigMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C5628;
  a2->OSObjectInterface::__vftable = &off_1003C5680;
  a2[1].OSMetaClassBase::__vftable = &off_1003C56A0;
  return 0;
}

uint64_t AppleBCMWLANGASAdapterMetaClass::New(AppleBCMWLANGASAdapterMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C56C0;
  a2->OSObjectInterface::__vftable = &off_1003C5708;
  return 0;
}

uint64_t AppleBCMWLANBssManagerMetaClass::New(AppleBCMWLANBssManagerMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C5728;
  a2->OSObjectInterface::__vftable = &off_1003C5770;
  return 0;
}

uint64_t AppleBCMWLANIOReportingCoreMetaClass::New(AppleBCMWLANIOReportingCoreMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C5D30;
  a2->OSObjectInterface::__vftable = &off_1003C5DA0;
  a2[1].OSMetaClassBase::__vftable = &off_1003C5DC0;
  return 0;
}

uint64_t AppleBCMWLANIOReportingPerSliceMetaClass::New(AppleBCMWLANIOReportingPerSliceMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C7908;
  a2->OSObjectInterface::__vftable = &off_1003C7978;
  a2[1].OSMetaClassBase::__vftable = &off_1003C7998;
  return 0;
}

uint64_t AppleBCMWLANChipManagerPCIe4388MetaClass::New(AppleBCMWLANChipManagerPCIe4388MetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C79D0;
  a2->OSObjectInterface::__vftable = off_1003C7AE0;
  a2[1].OSMetaClassBase::__vftable = off_1003C7B00;
  a2[1].meta = off_1003C7B30;
  return 0;
}

uint64_t AppleBCMWLANChipManagerPCIe4350MetaClass::New(AppleBCMWLANChipManagerPCIe4350MetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C7BE8;
  a2->OSObjectInterface::__vftable = off_1003C7CF8;
  a2[1].OSMetaClassBase::__vftable = off_1003C7D18;
  a2[1].meta = off_1003C7D48;
  return 0;
}

uint64_t AppleBCMWLANChipManagerPCIe4364MetaClass::New(AppleBCMWLANChipManagerPCIe4364MetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C7E00;
  a2->OSObjectInterface::__vftable = off_1003C7F10;
  a2[1].OSMetaClassBase::__vftable = off_1003C7F30;
  a2[1].meta = off_1003C7F60;
  return 0;
}

uint64_t AppleBCMWLANChipManagerPCIe43452MetaClass::New(AppleBCMWLANChipManagerPCIe43452MetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C8018;
  a2->OSObjectInterface::__vftable = off_1003C8128;
  a2[1].OSMetaClassBase::__vftable = off_1003C8148;
  a2[1].meta = off_1003C8178;
  return 0;
}

uint64_t AppleBCMWLANChipManagerPCIe4355MetaClass::New(AppleBCMWLANChipManagerPCIe4355MetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C8230;
  a2->OSObjectInterface::__vftable = off_1003C8340;
  a2[1].OSMetaClassBase::__vftable = off_1003C8360;
  a2[1].meta = off_1003C8390;
  return 0;
}

uint64_t AppleBCMWLANJoinAdapterMetaClass::New(AppleBCMWLANJoinAdapterMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C8660;
  a2->OSObjectInterface::__vftable = &off_1003C86B0;
  a2[1].OSMetaClassBase::__vftable = &off_1003C86D0;
  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterfaceMetaClass::New(AppleBCMWLANIO80211APSTAInterfaceMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D6698;
  a2->OSObjectInterface::__vftable = off_1003D6DF8;
  *&a2[1].refcount = &off_1003D6E18;
  a2[1].OSObjectInterface::__vftable = &off_1003D6F70;
  a2[2].OSMetaClassBase::__vftable = &off_1003D7018;
  a2[2].meta = &off_1003D73C8;
  a2[2].ivars = off_1003D7490;
  *&a2[3].refcount = off_1003D7578;
  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::Dispatch(AppleBCMWLANIO80211APSTAInterface *this, IORPC *a2)
{
  v3 = *&a2->reply;
  IORPCMessageFromMach(a2->message, 0);
  return IO80211SapProtocol::_Dispatch();
}

uint64_t AppleBCMWLANIO80211APSTAInterfaceMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleBCMWLANLowLatencyInterfaceMetaClass::New(AppleBCMWLANLowLatencyInterfaceMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D7748;
  a2->OSObjectInterface::__vftable = off_1003D8360;
  *&a2[1].refcount = &off_1003D8380;
  a2[1].OSObjectInterface::__vftable = &off_1003D84D8;
  a2[2].OSMetaClassBase::__vftable = &off_1003D8580;
  a2[2].meta = &off_1003D8930;
  a2[2].ivars = off_1003D8980;
  *&a2[3].refcount = off_1003D8F98;
  a2[3].OSObjectInterface::__vftable = &off_1003D95B0;
  return 0;
}

uint64_t AppleBCMWLANLowLatencyInterface::Dispatch(AppleBCMWLANLowLatencyInterface *this, IORPC *a2)
{
  message = a2->message;
  v7 = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  v6 = message;
  return AppleBCMWLANSkywalkInterface::_Dispatch(this, &v6, v4);
}

uint64_t AppleBCMWLANLowLatencyInterfaceMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleBCMWLANNANDataInterfaceMetaClass::New(AppleBCMWLANNANDataInterfaceMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D96A8;
  a2->OSObjectInterface::__vftable = off_1003D9D50;
  *&a2[1].refcount = &off_1003D9D70;
  a2[1].OSObjectInterface::__vftable = &off_1003D9EC8;
  a2[2].OSMetaClassBase::__vftable = &off_1003D9F70;
  a2[2].meta = &off_1003DA320;
  a2[2].ivars = off_1003DA3E8;
  *&a2[3].refcount = &off_1003DA410;
  return 0;
}

uint64_t AppleBCMWLANNANDataInterface::Dispatch(AppleBCMWLANNANDataInterface *this, IORPC *a2)
{
  v3 = *&a2->reply;
  IORPCMessageFromMach(a2->message, 0);
  return IO80211NANDataProtocol::_Dispatch();
}

uint64_t AppleBCMWLANNANDataInterfaceMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleBCMWLANNANInterfaceMetaClass::New(AppleBCMWLANNANInterfaceMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003DA528;
  a2->OSObjectInterface::__vftable = off_1003DAEB8;
  *&a2[1].refcount = &off_1003DAED8;
  a2[1].OSObjectInterface::__vftable = &off_1003DB030;
  a2[2].OSMetaClassBase::__vftable = &off_1003DB0D8;
  a2[2].meta = &off_1003DB488;
  a2[2].ivars = off_1003DB550;
  *&a2[3].refcount = &off_1003DB860;
  return 0;
}

uint64_t AppleBCMWLANNANInterface::Dispatch(AppleBCMWLANNANInterface *this, IORPC *a2)
{
  v3 = *&a2->reply;
  IORPCMessageFromMach(a2->message, 0);
  return IO80211NANProtocol::_Dispatch();
}

uint64_t AppleBCMWLANNANInterfaceMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleBCMWLANProximityInterfaceMetaClass::New(AppleBCMWLANProximityInterfaceMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003DBC60;
  a2->OSObjectInterface::__vftable = off_1003DC4F0;
  *&a2[1].refcount = &off_1003DC510;
  a2[1].OSObjectInterface::__vftable = &off_1003DC668;
  a2[2].OSMetaClassBase::__vftable = &off_1003DC710;
  a2[2].meta = &off_1003DCAC0;
  a2[2].ivars = off_1003DCB88;
  *&a2[3].refcount = off_1003DCD90;
  return 0;
}

uint64_t AppleBCMWLANProximityInterface::Dispatch(AppleBCMWLANProximityInterface *this, IORPC *a2)
{
  v3 = *&a2->reply;
  IORPCMessageFromMach(a2->message, 0);
  return IO80211AWDLProtocol::_Dispatch();
}

uint64_t AppleBCMWLANProximityInterfaceMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleBCMWLANChipManagerPCIe4357MetaClass::New(AppleBCMWLANChipManagerPCIe4357MetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C89C8;
  a2->OSObjectInterface::__vftable = off_1003C8AD8;
  a2[1].OSMetaClassBase::__vftable = off_1003C8AF8;
  a2[1].meta = off_1003C8B28;
  return 0;
}

uint64_t AppleBCMWLANChipManagerPCIe4387MetaClass::New(AppleBCMWLANChipManagerPCIe4387MetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C8BE0;
  a2->OSObjectInterface::__vftable = off_1003C8CF0;
  a2[1].OSMetaClassBase::__vftable = off_1003C8D10;
  a2[1].meta = off_1003C8D40;
  return 0;
}

uint64_t AppleBCMWLANAudioProtectorMetaClass::New(AppleBCMWLANAudioProtectorMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C8E68;
  a2->OSObjectInterface::__vftable = &off_1003C8EF0;
  a2[1].OSMetaClassBase::__vftable = &off_1003C8F10;
  a2[1].meta = &off_1003C8F58;
  return 0;
}

uint64_t AppleBCMWLANCoreDbgMetaClass::New(AppleBCMWLANCoreDbgMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CAF38;
  a2->OSObjectInterface::__vftable = &off_1003CAF80;
  return 0;
}

uint64_t AppleBCMWLANBusSkywalkMetaClass::New(AppleBCMWLANBusSkywalkMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CB118;
  a2->OSObjectInterface::__vftable = &off_1003CB1B8;
  a2[1].OSMetaClassBase::__vftable = &off_1003CB1D8;
  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalkMetaClass::New(AppleBCMWLANPCIeSkywalkMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CB2C0;
  a2->OSObjectInterface::__vftable = off_1003CB360;
  a2[1].OSMetaClassBase::__vftable = &off_1003CB380;
  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueueMetaClass::New(AppleBCMWLANPCIeSkywalkFlowQueueMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CB4E0;
  a2->OSObjectInterface::__vftable = &off_1003CB528;
  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalkMulticastQueueMetaClass::New(AppleBCMWLANPCIeSkywalkMulticastQueueMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CB5D8;
  a2->OSObjectInterface::__vftable = &off_1003CB678;
  a2[1].OSMetaClassBase::__vftable = off_1003CB698;
  a2[1].meta = &off_1003CB6E0;
  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalkRxCompletionQueueMetaClass::New(AppleBCMWLANPCIeSkywalkRxCompletionQueueMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CB710;
  a2->OSObjectInterface::__vftable = &off_1003CB818;
  a2[1].OSMetaClassBase::__vftable = &off_1003CB838;
  a2[1].meta = &off_1003CB8A8;
  a2[1].ivars = &off_1003CB8C0;
  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueueMetaClass::New(AppleBCMWLANPCIeSkywalkRxSubmissionQueueMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CB928;
  a2->OSObjectInterface::__vftable = &off_1003CBA20;
  a2[1].OSMetaClassBase::__vftable = &off_1003CBA40;
  a2[1].meta = &off_1003CBAB0;
  a2[1].ivars = &off_1003CBAC8;
  return 0;
}

uint64_t AppleBCMWLANBGScanAdapterMetaClass::New(AppleBCMWLANBGScanAdapterMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C5430;
  a2->OSObjectInterface::__vftable = &off_1003C5478;
  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalkTxCompletionQueueMetaClass::New(AppleBCMWLANPCIeSkywalkTxCompletionQueueMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CBB20;
  a2->OSObjectInterface::__vftable = &off_1003CBC10;
  a2[1].OSMetaClassBase::__vftable = &off_1003CBC30;
  a2[1].meta = &off_1003CBCA0;
  a2[1].ivars = &off_1003CBCB8;
  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass::New(AppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CBD08;
  a2->OSObjectInterface::__vftable = &off_1003CBE48;
  a2[1].OSMetaClassBase::__vftable = &off_1003CBE68;
  a2[1].meta = &off_1003CBED8;
  a2[1].ivars = &off_1003CBEF8;
  return 0;
}

uint64_t AppleBCMWLANConfigManagerMetaClass::New(AppleBCMWLANConfigManagerMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CBFD0;
  a2->OSObjectInterface::__vftable = &off_1003CC020;
  a2[1].OSMetaClassBase::__vftable = &off_1003CC040;
  return 0;
}

uint64_t IOImageLoaderImageDictionaryMetaClass::New(IOImageLoaderImageDictionaryMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003DDCD0;
  a2->OSObjectInterface::__vftable = &off_1003DDD48;
  *&a2[1].refcount = off_1003DDD68;
  return 0;
}

uint64_t AppleBCMWLAN11axAdapterMetaClass::New(AppleBCMWLAN11axAdapterMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D53D0;
  a2->OSObjectInterface::__vftable = &off_1003D5418;
  return 0;
}

uint64_t AppleBCMWLANChipMemoryMetaClass::New(AppleBCMWLANChipMemoryMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CC058;
  a2->OSObjectInterface::__vftable = &off_1003CC0A8;
  a2[1].OSMetaClassBase::__vftable = &off_1003CC0C8;
  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalkPacketMetaClass::New(AppleBCMWLANPCIeSkywalkPacketMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CC218;
  a2->OSObjectInterface::__vftable = &off_1003CC498;
  a2[1].OSMetaClassBase::__vftable = &off_1003CC4B8;
  a2[1].meta = off_1003CC670;
  a2[1].ivars = &off_1003CC708;
  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalkPacketPoolMetaClass::New(AppleBCMWLANPCIeSkywalkPacketPoolMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CC0E0;
  a2->OSObjectInterface::__vftable = &off_1003CC180;
  a2[1].OSMetaClassBase::__vftable = &off_1003CC1A0;
  a2[1].meta = off_1003CC1F8;
  return 0;
}

uint64_t AppleBCMWLANSacAgentMetaClass::New(AppleBCMWLANSacAgentMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CC8C8;
  a2->OSObjectInterface::__vftable = &off_1003CC920;
  a2[1].OSMetaClassBase::__vftable = off_1003CC940;
  return 0;
}

uint64_t AppleBCMWLANDynamicRingOperationContextMetaClass::New(AppleBCMWLANDynamicRingOperationContextMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CC7B8;
  a2->OSObjectInterface::__vftable = &off_1003CC800;
  return 0;
}

uint64_t AppleBCMWLANKeepAliveOffloadMetaClass::New(AppleBCMWLANKeepAliveOffloadMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CC960;
  a2->OSObjectInterface::__vftable = &off_1003CC9A8;
  return 0;
}

uint64_t AppleBCMWLANBusInterface::_Dispatch(IOService *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid == 0x98E715041C459FA5)
  {
    v7 = *a2;
    return IOService::Stop_Invoke(&v7, this, AppleBCMWLANBusInterface::Stop_Impl);
  }

  else
  {
    v7 = *a2;
    if (msgid == 0xAB6F76DDE6D693F2)
    {
      return IOService::Start_Invoke(&v7, this, AppleBCMWLANBusInterface::Start_Impl);
    }

    else
    {
      return IOService::_Dispatch(this, &v7);
    }
  }
}

uint64_t AppleBCMWLANBusInterfaceMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleBCMWLANUserClientMetaClass::New(AppleBCMWLANUserClientMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003DE588;
  a2->OSObjectInterface::__vftable = off_1003DE5D8;
  *&a2[1].refcount = &off_1003DE5F8;
  return 0;
}

uint64_t AppleBCMWLANUserClient::_Dispatch(IOUserClient *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid == 0x8399BDB3D0B4F474)
  {
    if (OSMetaClassBase::IsRemote(this))
    {
      v7 = *a2;
      return OSMetaClassBase::Dispatch(this, &v7);
    }

    else
    {
      v7 = *a2;
      return IOUserClient::CopyClientMemoryForType_Invoke(&v7, this, AppleBCMWLANUserClient::CopyClientMemoryForType_Impl);
    }
  }

  else if (msgid == 0x98E715041C459FA5)
  {
    v7 = *a2;
    return IOService::Stop_Invoke(&v7, this, AppleBCMWLANUserClient::Stop_Impl);
  }

  else
  {
    v7 = *a2;
    if (msgid == 0xAB6F76DDE6D693F2)
    {
      return IOService::Start_Invoke(&v7, this, AppleBCMWLANUserClient::Start_Impl);
    }

    else
    {
      return IOUserClient::_Dispatch(this, &v7);
    }
  }
}

uint64_t AppleBCMWLANUserClientMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleBCMWLANProvisioningManagerMetaClass::New(AppleBCMWLANProvisioningManagerMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CE4B0;
  a2->OSObjectInterface::__vftable = &off_1003CE500;
  a2[1].OSMetaClassBase::__vftable = &off_1003CE520;
  return 0;
}

uint64_t AppleBCMWLANCoreFirmwareLoaderMetaClass::New(AppleBCMWLANCoreFirmwareLoaderMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003DE7D0;
  a2->OSObjectInterface::__vftable = off_1003DE818;
  return 0;
}

uint64_t AppleBCMWLANCoreFirmwareLoader::_Dispatch(IOService *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid == 0x98E715041C459FA5)
  {
    v7 = *a2;
    return IOService::Stop_Invoke(&v7, this, AppleBCMWLANCoreFirmwareLoader::Stop_Impl);
  }

  else
  {
    v7 = *a2;
    if (msgid == 0xAB6F76DDE6D693F2)
    {
      return IOService::Start_Invoke(&v7, this, AppleBCMWLANCoreFirmwareLoader::Start_Impl);
    }

    else
    {
      return IOService::_Dispatch(this, &v7);
    }
  }
}

uint64_t AppleBCMWLANCoreFirmwareLoaderMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleBCMWLANLoggerMetaClass::New(AppleBCMWLANLoggerMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D5128;
  a2->OSObjectInterface::__vftable = &off_1003D5178;
  a2[1].OSMetaClassBase::__vftable = &off_1003D5198;
  return 0;
}

uint64_t AppleBCMWLANChipImageMetaClass::New(AppleBCMWLANChipImageMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CE538;
  a2->OSObjectInterface::__vftable = &off_1003CE608;
  a2[1].OSMetaClassBase::__vftable = off_1003CE628;
  return 0;
}

uint64_t AppleBCMWLANChipManagerPCIe4378MetaClass::New(AppleBCMWLANChipManagerPCIe4378MetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D2108;
  a2->OSObjectInterface::__vftable = off_1003D2218;
  a2[1].OSMetaClassBase::__vftable = off_1003D2238;
  a2[1].meta = off_1003D2268;
  return 0;
}

uint64_t AppleBCMWLANPCIeIOMetaClass::New(AppleBCMWLANPCIeIOMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CF120;
  a2->OSObjectInterface::__vftable = &off_1003CF170;
  *&a2[1].refcount = &off_1003CF190;
  return 0;
}

uint64_t AppleBCMWLANDMASlabMetaClass::New(AppleBCMWLANDMASlabMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CF1A8;
  a2->OSObjectInterface::__vftable = &off_1003CF1F8;
  a2[1].OSMetaClassBase::__vftable = &off_1003CF218;
  return 0;
}

uint64_t AppleBCMWLANPCIeLinkChangeEventSourceMetaClass::New(AppleBCMWLANPCIeLinkChangeEventSourceMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CF230;
  a2->OSObjectInterface::__vftable = &off_1003CF2B0;
  a2[1].OSMetaClassBase::__vftable = &off_1003CF2D0;
  return 0;
}

uint64_t AppleBCMWLANLeakyApParserMetaClass::New(AppleBCMWLANLeakyApParserMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D52E0;
  a2->OSObjectInterface::__vftable = &off_1003D5330;
  a2[1].OSMetaClassBase::__vftable = &off_1003D5350;
  return 0;
}

uint64_t AppleBCMWLANSkywalkInterfaceMetaClass::New(AppleBCMWLANSkywalkInterfaceMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003DEF38;
  a2->OSObjectInterface::__vftable = off_1003DFB50;
  *&a2[1].refcount = &off_1003DFB70;
  a2[1].OSObjectInterface::__vftable = &off_1003DFCC8;
  a2[2].OSMetaClassBase::__vftable = &off_1003DFD70;
  a2[2].meta = &off_1003E0120;
  a2[2].ivars = off_1003E0170;
  *&a2[3].refcount = off_1003E0788;
  a2[3].OSObjectInterface::__vftable = &off_1003E0DA0;
  return 0;
}

uint64_t AppleBCMWLANSkywalkInterface::Dispatch(AppleBCMWLANSkywalkInterface *this, IORPC *a2)
{
  message = a2->message;
  v7 = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  v6 = message;
  return AppleBCMWLANInfraProtocol::_Dispatch(this, &v6, v4);
}

uint64_t AppleBCMWLANSkywalkInterface::_Dispatch(AppleBCMWLANSkywalkInterface *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v7 = *a2;
  v8 = a2[2];
  return AppleBCMWLANInfraProtocol::_Dispatch(this, &v7, v5);
}

uint64_t AppleBCMWLANSkywalkInterfaceMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleBCMWLANSkywalkRxSubmissionQueueMetaClass::New(AppleBCMWLANSkywalkRxSubmissionQueueMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CEB50;
  a2->OSObjectInterface::__vftable = &off_1003CEC48;
  a2[1].OSMetaClassBase::__vftable = &off_1003CEC68;
  a2[1].meta = &off_1003CECD8;
  a2[1].ivars = &off_1003CECF0;
  return 0;
}

uint64_t AppleBCMWLANPCIeCompletionRingMetaClass::New(AppleBCMWLANPCIeCompletionRingMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CF6C0;
  a2->OSObjectInterface::__vftable = &off_1003CF800;
  a2[1].OSMetaClassBase::__vftable = &off_1003CF820;
  a2[1].meta = &off_1003CF868;
  a2[1].ivars = off_1003CF8C0;
  *&a2[2].refcount = &off_1003CF8F0;
  a2[2].OSObjectInterface::__vftable = off_1003CF918;
  return 0;
}

uint64_t AppleBCMWLANPCIeTransmitFlowRingMetaClass::New(AppleBCMWLANPCIeTransmitFlowRingMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CF968;
  a2->OSObjectInterface::__vftable = &off_1003CFB30;
  a2[1].OSMetaClassBase::__vftable = off_1003CFB50;
  a2[1].meta = &off_1003CFB98;
  a2[1].ivars = off_1003CFBF0;
  *&a2[2].refcount = &off_1003CFC20;
  a2[2].OSObjectInterface::__vftable = off_1003CFC48;
  a2[3].OSMetaClassBase::__vftable = &off_1003CFCA0;
  return 0;
}

uint64_t AppleBCMWLANPCIeSubmissionRingMetaClass::New(AppleBCMWLANPCIeSubmissionRingMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CFD30;
  a2->OSObjectInterface::__vftable = &off_1003CFE78;
  a2[1].OSMetaClassBase::__vftable = &off_1003CFE98;
  a2[1].meta = &off_1003CFEE0;
  a2[1].ivars = off_1003CFF38;
  *&a2[2].refcount = &off_1003CFF68;
  a2[2].OSObjectInterface::__vftable = off_1003CFF90;
  return 0;
}

uint64_t AppleBCMWLANChipManagerPCIe0x4377bMetaClass::New(AppleBCMWLANChipManagerPCIe0x4377bMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CF318;
  a2->OSObjectInterface::__vftable = off_1003CF428;
  a2[1].OSMetaClassBase::__vftable = off_1003CF448;
  a2[1].meta = off_1003CF478;
  return 0;
}

uint64_t AppleBCMWLANObjectQueueMetaClass::New(AppleBCMWLANObjectQueueMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CC820;
  a2->OSObjectInterface::__vftable = &off_1003CC880;
  a2[1].OSMetaClassBase::__vftable = off_1003CC8A0;
  return 0;
}

uint64_t AppleBCMWLANCoreMetaClass::New(AppleBCMWLANCoreMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003E1478;
  a2->OSObjectInterface::__vftable = off_1003E1C60;
  *&a2[1].refcount = &off_1003E1C80;
  a2[1].OSObjectInterface::__vftable = off_1003E1ED0;
  return 0;
}

uint64_t AppleBCMWLANCore::_Dispatch(IORPC *this, AppleBCMWLANCore *a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid > 0xD200FDE7D57ECCA5)
  {
    switch(msgid)
    {
      case 0x60115E833B5C88C7:
        if (!OSMetaClassBase::IsRemote(this))
        {
          *&v10.OSObject::OSMetaClassBase::__vftable = *a2;
          v10.meta = *(a2 + 2);
          return IOServiceStateNotificationDispatchSource::StateNotificationReady_Invoke(&v10, this, AppleBCMWLANCore::SystemStateNotificationReady_Impl, gOSAction_AppleBCMWLANCore_SystemStateNotificationReadyMetaClass, v9);
        }

        break;
      case 0xF669EFFFCB89ED9CLL:
        if (!OSMetaClassBase::IsRemote(this))
        {
          *&v10.OSObject::OSMetaClassBase::__vftable = *a2;
          v10.meta = *(a2 + 2);
          return IOService::NewUserClient_Invoke(&v10, this, AppleBCMWLANCore::NewUserClient_Impl);
        }

        break;
      case 0xD200FDE7D57ECCA6:
        *&v10.OSObject::OSMetaClassBase::__vftable = *a2;
        v10.meta = *(a2 + 2);
        return IOService::SetPowerState_Invoke(&v10, this, AppleBCMWLANCore::SetPowerState_Impl);
      default:
        goto LABEL_13;
    }

    *&v10.OSObject::OSMetaClassBase::__vftable = *a2;
    v10.meta = *(a2 + 2);
    return OSMetaClassBase::Dispatch(this, &v10);
  }

  if (msgid == 0x98E715041C459FA5)
  {
    *&v10.OSObject::OSMetaClassBase::__vftable = *a2;
    v10.meta = *(a2 + 2);
    return IOService::Stop_Invoke(&v10, this, AppleBCMWLANCore::Stop_Impl);
  }

  if (msgid != 0xAB6F76DDE6D693F2)
  {
    if (msgid == 0xAD8461D6BB5E656DLL)
    {
      *&v10.OSObject::OSMetaClassBase::__vftable = *a2;
      v10.meta = *(a2 + 2);
      return IOService::UserSetProperties_Invoke(&v10, this, AppleBCMWLANCore::UserSetProperties_Impl, v6);
    }

LABEL_13:
    *&v10.OSObject::OSMetaClassBase::__vftable = *a2;
    v10.meta = *(a2 + 2);
    return IO80211Controller::_Dispatch(this, &v10, v5);
  }

  *&v10.OSObject::OSMetaClassBase::__vftable = *a2;
  v10.meta = *(a2 + 2);
  return IOService::Start_Invoke(&v10, this, AppleBCMWLANCore::Start_Impl);
}

uint64_t AppleBCMWLANCoreMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleBCMWLANCore::CreateActionSystemStateNotificationReady(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_AppleBCMWLANCore_SystemStateNotificationReady");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x60115E833B5C88C7uLL, 0xDA6F23BBB0B49076, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t OSAction_AppleBCMWLANCore_SystemStateNotificationReadyMetaClass::New(OSAction_AppleBCMWLANCore_SystemStateNotificationReadyMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003E2480;
  a2->OSObjectInterface::__vftable = &off_1003E24C8;
  return 0;
}

uint64_t OSAction_AppleBCMWLANCore_SystemStateNotificationReady::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&v5.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  v5.message = message;
  return OSAction::_Dispatch(this, &v5);
}

uint64_t OSAction_AppleBCMWLANCore_SystemStateNotificationReadyMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleBCMWLANPowerManagerMetaClass::New(AppleBCMWLANPowerManagerMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D1C70;
  a2->OSObjectInterface::__vftable = &off_1003D1CC0;
  a2[1].OSMetaClassBase::__vftable = &off_1003D1CE0;
  return 0;
}

uint64_t AppleBCMWLANBusInterfacePCIeMetaClass::New(AppleBCMWLANBusInterfacePCIeMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003E2928;
  a2->OSObjectInterface::__vftable = off_1003E2E00;
  *&a2[1].refcount = &off_1003E2E20;
  a2[1].OSObjectInterface::__vftable = &off_1003E3200;
  return 0;
}

double AppleBCMWLANBusInterfacePCIe::_Dispatch(IORPC *this, AppleBCMWLANBusInterfacePCIe *a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid <= 0xEAC9639AD90BD5FLL)
  {
    if (msgid <= 0x98E715041C459FA4)
    {
      if (msgid == 0x8509EED786C7FF1ALL)
      {
        if (!OSMetaClassBase::IsRemote(this))
        {
          *&v12.OSObject::OSMetaClassBase::__vftable = *a2;
          v12.meta = *(a2 + 2);
          IOService::UpdateReport_Invoke(&v12, this, AppleBCMWLANBusInterfacePCIe::UpdateReport_Impl, v10);
          return result;
        }

        goto LABEL_33;
      }

      if (msgid == 0x85D9DEF59E3F02BELL)
      {
        if (!OSMetaClassBase::IsRemote(this))
        {
          *&v12.OSObject::OSMetaClassBase::__vftable = *a2;
          v12.meta = *(a2 + 2);
          IOService::ConfigureReport_Invoke(&v12, this, AppleBCMWLANBusInterfacePCIe::ConfigureReport_Impl, v9);
          return result;
        }

        goto LABEL_33;
      }
    }

    else
    {
      switch(msgid)
      {
        case 0x98E715041C459FA5:
          *&v12.OSObject::OSMetaClassBase::__vftable = *a2;
          v12.meta = *(a2 + 2);
          IOService::Stop_Invoke(&v12, this, AppleBCMWLANBusInterfacePCIe::Stop_Impl);
          return result;
        case 0xAB6F76DDE6D693F2:
          *&v12.OSObject::OSMetaClassBase::__vftable = *a2;
          v12.meta = *(a2 + 2);
          IOService::Start_Invoke(&v12, this, AppleBCMWLANBusInterfacePCIe::Start_Impl);
          return result;
        case 0xD200FDE7D57ECCA6:
          *&v12.OSObject::OSMetaClassBase::__vftable = *a2;
          v12.meta = *(a2 + 2);
          IOService::SetPowerState_Invoke(&v12, this, AppleBCMWLANBusInterfacePCIe::SetPowerState_Impl);
          return result;
      }
    }

    goto LABEL_35;
  }

  if (msgid <= 0x26A3EF2B8FBB0C52)
  {
    switch(msgid)
    {
      case 0xEAC9639AD90BD60:
        if (!OSMetaClassBase::IsRemote(this))
        {
          *&v12.OSObject::OSMetaClassBase::__vftable = *a2;
          v12.meta = *(a2 + 2);
          IODataQueueDispatchSource::DataAvailable_Invoke(&v12, this, AppleBCMWLANBusInterfacePCIe::RxSubmissionQueueDataAvailable_Impl, gOSAction_AppleBCMWLANBusInterfacePCIe_RxSubmissionQueueDataAvailableMetaClass);
          return result;
        }

        goto LABEL_33;
      case 0x14C7DCE3B379EA66:
        if (!OSMetaClassBase::IsRemote(this))
        {
          *&v12.OSObject::OSMetaClassBase::__vftable = *a2;
          v12.meta = *(a2 + 2);
          AppleOLYHALPortInterfacePCIe::portErrorMsgHandler_Invoke(&v12, this, AppleBCMWLANBusInterfacePCIe::PortErrorMsgHandler_Impl, gOSAction_AppleBCMWLANBusInterfacePCIe_PortErrorMsgHandlerMetaClass, v11);
          return result;
        }

        goto LABEL_33;
      case 0x1A36D1895F2C94E9:
        if (!OSMetaClassBase::IsRemote(this))
        {
          *&v12.OSObject::OSMetaClassBase::__vftable = *a2;
          v12.meta = *(a2 + 2);
          AppleOLYHALPortInterfacePCIe::portEventMsgHandler_Invoke(&v12, this, AppleBCMWLANBusInterfacePCIe::PortEventMsgHandler_Impl, gOSAction_AppleBCMWLANBusInterfacePCIe_PortEventMsgHandlerMetaClass, v7);
          return result;
        }

        goto LABEL_33;
    }

LABEL_35:
    *&v12.OSObject::OSMetaClassBase::__vftable = *a2;
    v12.meta = *(a2 + 2);
    AppleBCMWLANBusInterface::_Dispatch(this, &v12, v5);
    return result;
  }

  if (msgid != 0x26A3EF2B8FBB0C53)
  {
    if (msgid == 0x32D377BD98125256)
    {
      if (!OSMetaClassBase::IsRemote(this))
      {
        *&v12.OSObject::OSMetaClassBase::__vftable = *a2;
        v12.meta = *(a2 + 2);
        IOInterruptDispatchSource::InterruptOccurred_Invoke(&v12, this, AppleBCMWLANBusInterfacePCIe::InterruptOccurred_Impl, gOSAction_AppleBCMWLANBusInterfacePCIe_InterruptOccurredMetaClass);
        return result;
      }

      goto LABEL_33;
    }

    if (msgid == 0x445E2EBCE9BB479DLL)
    {
      if (!OSMetaClassBase::IsRemote(this))
      {
        *&v12.OSObject::OSMetaClassBase::__vftable = *a2;
        v12.meta = *(a2 + 2);
        return AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Invoke(&v12, this, AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Impl);
      }

      goto LABEL_33;
    }

    goto LABEL_35;
  }

  if (!OSMetaClassBase::IsRemote(this))
  {
    *&v12.OSObject::OSMetaClassBase::__vftable = *a2;
    v12.meta = *(a2 + 2);
    return AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Invoke(&v12, this, AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Impl);
  }

LABEL_33:
  *&v12.OSObject::OSMetaClassBase::__vftable = *a2;
  v12.meta = *(a2 + 2);
  OSMetaClassBase::Dispatch(this, &v12);
  return result;
}

double AppleBCMWLANBusInterfacePCIe::SetPowerStateGated_Invoke(uint64_t *a1, uint64_t a2, unsigned int (*a3)(uint64_t, void))
{
  v3 = *a1;
  if (*(*a1 + 24) == 1 && *(v3 + 56) == 1 && *(a1 + 4) >= 0x50u && *(a1 + 5) >= 0x34u)
  {
    v4 = a1[1];
    if (!a3(a2, *(v3 + 72)))
    {
      *(v4 + 28) = xmmword_1003B6670;
      *(v4 + 4) = 52;
      *&result = 1302509197;
      *(v4 + 20) = 1302509197;
      *(v4 + 44) = 0;
    }
  }

  return result;
}

double AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM_Invoke(uint64_t *a1, uint64_t a2, unsigned int (*a3)(uint64_t, void))
{
  v3 = *a1;
  if (*(*a1 + 24) == 1 && *(v3 + 56) == 1 && *(a1 + 4) >= 0x50u && *(a1 + 5) >= 0x34u)
  {
    v4 = a1[1];
    if (!a3(a2, *(v3 + 72)))
    {
      *(v4 + 28) = xmmword_1003B6680;
      *(v4 + 4) = 52;
      *&result = 1302509197;
      *(v4 + 20) = 1302509197;
      *(v4 + 44) = 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIeMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleBCMWLANBusInterfacePCIe::CreateActionInterruptOccurred(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_AppleBCMWLANBusInterfacePCIe_InterruptOccurred");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x32D377BD98125256uLL, 0xCE0513291CFA1EE1, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t AppleBCMWLANBusInterfacePCIe::SetPowerStateGated(OSMetaClassBase *a1, unsigned int a2, uint64_t (*a3)(OSMetaClassBase *, IORPC *))
{
  v14 = -1431655766;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v3;
  v13 = v3;
  v11 = v3;
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 80;
  v7 = xmmword_1003B6690;
  v8 = 1;
  v9 = a1;
  *&v6[20] = 0x14DA2B68CLL;
  v10 = a2;
  if (a3)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x8400000050;
    result = a3(a1, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x8400000050;
    result = OSMetaClassBase::Invoke(a1, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = 3758097087;
  if (*&v6[4] == 52 && *&v6[28] == 0x445E2EBCE9BB479DLL && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      return 3758097087;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::SetPowerStateGatedAMFM(OSMetaClassBase *a1, unsigned int a2, uint64_t (*a3)(OSMetaClassBase *, IORPC *))
{
  v14 = -1431655766;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v3;
  v13 = v3;
  v11 = v3;
  memset(v6, 0, sizeof(v6));
  *&v6[4] = 80;
  v7 = xmmword_1003B66A0;
  v8 = 1;
  v9 = a1;
  *&v6[20] = 0x14DA2B68CLL;
  v10 = a2;
  if (a3)
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x8400000050;
    result = a3(a1, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v6;
    invoke.reply = v6;
    *&invoke.sendSize = 0x8400000050;
    result = OSMetaClassBase::Invoke(a1, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = 3758097087;
  if (*&v6[4] == 52 && *&v6[28] == 0x26A3EF2B8FBB0C53 && !*&v6[24])
  {
    if (*(&v7 + 4))
    {
      return 3758097087;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterfacePCIe::CreateActionPortEventMsgHandler(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_AppleBCMWLANBusInterfacePCIe_PortEventMsgHandler");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x1A36D1895F2C94E9uLL, 0xB7772DAADC3FD545, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t AppleBCMWLANBusInterfacePCIe::CreateActionPortErrorMsgHandler(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_AppleBCMWLANBusInterfacePCIe_PortErrorMsgHandler");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x14C7DCE3B379EA66uLL, 0xE9662CCDFD1D7708, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t AppleBCMWLANBusInterfacePCIe::CreateActionRxSubmissionQueueDataAvailable(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_AppleBCMWLANBusInterfacePCIe_RxSubmissionQueueDataAvailable");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0xEAC9639AD90BD60uLL, 0xF799C876BAF566F3, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t OSAction_AppleBCMWLANBusInterfacePCIe_InterruptOccurredMetaClass::New(OSAction_AppleBCMWLANBusInterfacePCIe_InterruptOccurredMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003E3310;
  a2->OSObjectInterface::__vftable = &off_1003E3358;
  return 0;
}

uint64_t OSAction_AppleBCMWLANBusInterfacePCIe_InterruptOccurred::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&v5.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  v5.message = message;
  return OSAction::_Dispatch(this, &v5);
}

uint64_t OSAction_AppleBCMWLANBusInterfacePCIe_InterruptOccurredMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_AppleBCMWLANBusInterfacePCIe_PortEventMsgHandlerMetaClass::New(OSAction_AppleBCMWLANBusInterfacePCIe_PortEventMsgHandlerMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003E33B8;
  a2->OSObjectInterface::__vftable = &off_1003E3400;
  return 0;
}

uint64_t OSAction_AppleBCMWLANBusInterfacePCIe_PortEventMsgHandler::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&v5.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  v5.message = message;
  return OSAction::_Dispatch(this, &v5);
}

uint64_t OSAction_AppleBCMWLANBusInterfacePCIe_PortEventMsgHandlerMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_AppleBCMWLANBusInterfacePCIe_PortErrorMsgHandlerMetaClass::New(OSAction_AppleBCMWLANBusInterfacePCIe_PortErrorMsgHandlerMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003E3460;
  a2->OSObjectInterface::__vftable = &off_1003E34A8;
  return 0;
}

uint64_t OSAction_AppleBCMWLANBusInterfacePCIe_PortErrorMsgHandler::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&v5.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  v5.message = message;
  return OSAction::_Dispatch(this, &v5);
}

uint64_t OSAction_AppleBCMWLANBusInterfacePCIe_PortErrorMsgHandlerMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_AppleBCMWLANBusInterfacePCIe_RxSubmissionQueueDataAvailableMetaClass::New(OSAction_AppleBCMWLANBusInterfacePCIe_RxSubmissionQueueDataAvailableMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003E3508;
  a2->OSObjectInterface::__vftable = &off_1003E3550;
  return 0;
}

uint64_t OSAction_AppleBCMWLANBusInterfacePCIe_RxSubmissionQueueDataAvailable::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&v5.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  v5.message = message;
  return OSAction::_Dispatch(this, &v5);
}

uint64_t OSAction_AppleBCMWLANBusInterfacePCIe_RxSubmissionQueueDataAvailableMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleBCMWLANCommandMonitorMetaClass::New(AppleBCMWLANCommandMonitorMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CF638;
  a2->OSObjectInterface::__vftable = &off_1003CF688;
  a2[1].OSMetaClassBase::__vftable = &off_1003CF6A8;
  return 0;
}

uint64_t AppleBCMWLANHashtableMetaClass::New(AppleBCMWLANHashtableMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D1B78;
  a2->OSObjectInterface::__vftable = &off_1003D1BF8;
  *&a2[1].refcount = off_1003D1C18;
  a2[1].OSObjectInterface::__vftable = &off_1003D1C58;
  return 0;
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueueMetaClass::New(AppleBCMWLANSkywalkTxSubmissionQueueMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CE6E0;
  a2->OSObjectInterface::__vftable = &off_1003CE820;
  a2[1].OSMetaClassBase::__vftable = &off_1003CE840;
  a2[1].meta = &off_1003CE8B0;
  a2[1].ivars = &off_1003CE8D0;
  return 0;
}

uint64_t AppleBCMWLANChipConfigSpaceMetaClass::New(AppleBCMWLANChipConfigSpaceMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D2880;
  a2->OSObjectInterface::__vftable = &off_1003D28D0;
  a2[1].OSMetaClassBase::__vftable = &off_1003D28F0;
  return 0;
}

uint64_t AppleBCMWLANTxBufferMetaClass::New(AppleBCMWLANTxBufferMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D3190;
  a2->OSObjectInterface::__vftable = &off_1003D31E0;
  *&a2[1].refcount = &off_1003D3200;
  return 0;
}

uint64_t AppleBCMWLANPCIeMMIOHistoryMetaClass::New(AppleBCMWLANPCIeMMIOHistoryMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D1D68;
  a2->OSObjectInterface::__vftable = &off_1003D1DB0;
  return 0;
}

uint64_t AppleBCMWLANChipManagerPCIe4377MetaClass::New(AppleBCMWLANChipManagerPCIe4377MetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CE0E8;
  a2->OSObjectInterface::__vftable = off_1003CE1F8;
  a2[1].OSMetaClassBase::__vftable = off_1003CE218;
  a2[1].meta = off_1003CE248;
  return 0;
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueueMetaClass::New(AppleBCMWLANSkywalkRxCompletionQueueMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CED48;
  a2->OSObjectInterface::__vftable = &off_1003CEE50;
  a2[1].OSMetaClassBase::__vftable = &off_1003CEE70;
  a2[1].meta = &off_1003CEEE0;
  a2[1].ivars = &off_1003CEEF8;
  return 0;
}

uint64_t AppleBCMWLANChipBackplaneMetaClass::New(AppleBCMWLANChipBackplaneMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D3878;
  a2->OSObjectInterface::__vftable = &off_1003D38C8;
  a2[1].OSMetaClassBase::__vftable = &off_1003D38E8;
  return 0;
}

uint64_t AppleBCMWLANCommandMetaClass::New(AppleBCMWLANCommandMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D2D30;
  a2->OSObjectInterface::__vftable = &off_1003D2D80;
  *&a2[1].refcount = &off_1003D2DA0;
  return 0;
}

uint64_t AppleBCMWLANSkywalkTxCompletionQueueMetaClass::New(AppleBCMWLANSkywalkTxCompletionQueueMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CE968;
  a2->OSObjectInterface::__vftable = &off_1003CEA58;
  a2[1].OSMetaClassBase::__vftable = &off_1003CEA78;
  a2[1].meta = &off_1003CEAE8;
  a2[1].ivars = &off_1003CEB00;
  return 0;
}

uint64_t AppleBCMWLANCallbackEventSourceMetaClass::New(AppleBCMWLANCallbackEventSourceMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D1FB8;
  a2->OSObjectInterface::__vftable = &off_1003D2038;
  a2[1].OSMetaClassBase::__vftable = &off_1003D2058;
  return 0;
}

uint64_t AppleBCMWLAN11beAdapterMetaClass::New(AppleBCMWLAN11beAdapterMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C8750;
  a2->OSObjectInterface::__vftable = &off_1003C8798;
  return 0;
}

uint64_t AppleBCMWLANWorkOrderMetaClass::New(AppleBCMWLANWorkOrderMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D2908;
  a2->OSObjectInterface::__vftable = &off_1003D2958;
  *&a2[1].refcount = &off_1003D2978;
  return 0;
}

uint64_t AppleBCMWLANChipManagerPCIe4399MetaClass::New(AppleBCMWLANChipManagerPCIe4399MetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C8448;
  a2->OSObjectInterface::__vftable = off_1003C8558;
  a2[1].OSMetaClassBase::__vftable = off_1003C8578;
  a2[1].meta = off_1003C85A8;
  return 0;
}

uint64_t AppleBCMWLANTaskmasterMetaClass::New(AppleBCMWLANTaskmasterMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D2990;
  a2->OSObjectInterface::__vftable = &off_1003D29E0;
  a2[1].OSMetaClassBase::__vftable = &off_1003D2A00;
  return 0;
}

uint64_t AppleBCMWLANCommandQueueMetaClass::New(AppleBCMWLANCommandQueueMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D2A18;
  a2->OSObjectInterface::__vftable = &off_1003D2A68;
  a2[1].OSMetaClassBase::__vftable = &off_1003D2A88;
  return 0;
}

uint64_t AppleBCMWLANTimeTraceMetaClass::New(AppleBCMWLANTimeTraceMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D2DB8;
  a2->OSObjectInterface::__vftable = off_1003D2E00;
  return 0;
}

uint64_t AppleBCMWLANChipManagerPCIeMetaClass::New(AppleBCMWLANChipManagerPCIeMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D2E20;
  a2->OSObjectInterface::__vftable = off_1003D2F30;
  a2[1].OSMetaClassBase::__vftable = off_1003D2F50;
  a2[1].meta = off_1003D2F80;
  return 0;
}

uint64_t AppleBCMWLANPCIeFlowQueueMetaClass::New(AppleBCMWLANPCIeFlowQueueMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D2B58;
  a2->OSObjectInterface::__vftable = &off_1003D2C00;
  a2[1].OSMetaClassBase::__vftable = &off_1003D2C20;
  a2[1].meta = off_1003D2C80;
  return 0;
}

uint64_t AppleBCMWLANChipManagerMetaClass::New(AppleBCMWLANChipManagerMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D2AA0;
  a2->OSObjectInterface::__vftable = off_1003D2B08;
  a2[1].OSMetaClassBase::__vftable = off_1003D2B28;
  return 0;
}

uint64_t AppleBCMWLANStopwatchMetaClass::New(AppleBCMWLANStopwatchMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D3038;
  a2->OSObjectInterface::__vftable = off_1003D3080;
  return 0;
}

uint64_t AppleBCMWLANHistogramMetaClass::New(AppleBCMWLANHistogramMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D3128;
  a2->OSObjectInterface::__vftable = &off_1003D3170;
  return 0;
}

uint64_t AppleBCMWLANTimeKeeperMetaClass::New(AppleBCMWLANTimeKeeperMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D1AF0;
  a2->OSObjectInterface::__vftable = &off_1003D1B40;
  a2[1].OSMetaClassBase::__vftable = &off_1003D1B60;
  return 0;
}

uint64_t AppleBCMWLANGCRAdapterMetaClass::New(AppleBCMWLANGCRAdapterMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CB478;
  a2->OSObjectInterface::__vftable = &off_1003CB4C0;
  return 0;
}

uint64_t AppleBCMWLANCommandWithXTLVMetaClass::New(AppleBCMWLANCommandWithXTLVMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D3900;
  a2->OSObjectInterface::__vftable = &off_1003D3948;
  return 0;
}

uint64_t AppleBCMWLANSkywalkPacketPoolMetaClass::New(AppleBCMWLANSkywalkPacketPoolMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C8890;
  a2->OSObjectInterface::__vftable = off_1003C8930;
  a2[1].OSMetaClassBase::__vftable = &off_1003C8950;
  a2[1].meta = off_1003C89A8;
  return 0;
}

uint64_t AppleBCMWLANPowerStateAdapterMetaClass::New(AppleBCMWLANPowerStateAdapterMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003C86E8;
  a2->OSObjectInterface::__vftable = &off_1003C8730;
  return 0;
}

uint64_t AppleBCMWLANSkywalkMulticastQueueMetaClass::New(AppleBCMWLANSkywalkMulticastQueueMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CEF60;
  a2->OSObjectInterface::__vftable = &off_1003CF000;
  a2[1].OSMetaClassBase::__vftable = &off_1003CF020;
  a2[1].meta = &off_1003CF068;
  return 0;
}

uint64_t AppleBCMWLANTxPowerManagerMetaClass::New(AppleBCMWLANTxPowerManagerMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003CF530;
  a2->OSObjectInterface::__vftable = &off_1003CF580;
  a2[1].OSMetaClassBase::__vftable = &off_1003CF5A0;
  return 0;
}

uint64_t AppleBCMWLANChanSpecMetaClass::New(AppleBCMWLANChanSpecMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D5368;
  a2->OSObjectInterface::__vftable = &off_1003D53B0;
  return 0;
}

uint64_t AppleBCMWLANBSSBeaconMetaClass::New(AppleBCMWLANBSSBeaconMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003E55D0;
  a2->OSObjectInterface::__vftable = &off_1003E5900;
  a2[1].OSMetaClassBase::__vftable = &off_1003E5920;
  return 0;
}

uint64_t AppleBCMWLANPCIeDoorbellMetaClass::New(AppleBCMWLANPCIeDoorbellMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D5258;
  a2->OSObjectInterface::__vftable = &off_1003D52A8;
  a2[1].OSMetaClassBase::__vftable = &off_1003D52C8;
  return 0;
}

uint64_t AppleBCMWLANCommanderMetaClass::New(AppleBCMWLANCommanderMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003D1EB0;
  a2->OSObjectInterface::__vftable = &off_1003D1F38;
  a2[1].OSMetaClassBase::__vftable = &off_1003D1F58;
  a2[1].meta = &off_1003D1FA0;
  return 0;
}

uint64_t DriverKit_AppleBCMWLANMetaClass::New(DriverKit_AppleBCMWLANMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1003E5EB8;
  a2->OSObjectInterface::__vftable = off_1003E5F00;
  return 0;
}

uint64_t DriverKit_AppleBCMWLAN::_Dispatch(IOService *this, IORPCMessageMach **a2, IORPC *a3)
{
  if (IORPCMessageFromMach(*a2, 0)->msgid == 0xAB6F76DDE6D693F2)
  {
    v6 = *a2;
    return IOService::Start_Invoke(&v6, this, DriverKit_AppleBCMWLAN::Start_Impl);
  }

  else
  {
    v6 = *a2;
    return IOService::_Dispatch(this, &v6);
  }
}

uint64_t DriverKit_AppleBCMWLANMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t AppleBCMWLANLQM::initWithDriver(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get Associated timer\n", "initWithDriver", 411);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get ivars->fChanQualUpdatedReminderTimer timer\n", "initWithDriver", 403);
}

uint64_t AppleBCMWLANLQM::updateLinkQualityMetrics(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: Failed to get bss load, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANLQM::updateLinkQualityMetrics(uint64_t a1, void *a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_5(a1, a2, a3);
  if (result)
  {
    result = OUTLINED_FUNCTION_12();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_7();
      return CCLogStream::logAlert(v4, "[dk] %s@%d: Overflow detected\n", "updateLinkQualityMetrics", 514);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_5(a1, a2, a3);
  if (result)
  {
    result = OUTLINED_FUNCTION_12();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_7();
      return CCLogStream::logAlert(v4, "[dk] %s@%d: Overflow detected\n", "updateLinkQualityMetrics", 534);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_5(a1, a2, a3);
  if (result)
  {
    result = OUTLINED_FUNCTION_12();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_7();
      return CCLogStream::logAlert(v4, "[dk] %s@%d: Overflow detected\n", "updateLinkQualityMetrics", 548);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_5(a1, a2, a3);
  if (result)
  {
    result = OUTLINED_FUNCTION_12();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_7();
      return CCLogStream::logAlert(v4, "[dk] %s@%d: Overflow detected\n", "updateLinkQualityMetrics", 567);
    }
  }

  return result;
}

uint64_t AppleBCMWLANLQM::updateLinkQualityMetrics(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7();
      return CCLogStream::logAlert(v2, "[dk] %s@%d: Overflow detected\n", "updateLinkQualityMetrics", 526);
    }
  }

  return result;
}

{
  result = *(a1 + 24);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_7();
      return CCLogStream::logAlert(v2, "[dk] %s@%d: Overflow detected\n", "updateLinkQualityMetrics", 559);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid Sta_Info Version: %d \n", "updateLinkQualityMetrics", 673, *(v2 + 4272));
}

uint64_t AppleBCMWLANLQM::updateLinkQualityMetrics(int a1, _DWORD *a2, uint64_t a3)
{
  *a2 = a1;
  result = *(*a3 + 24);
  if (result)
  {
    result = OUTLINED_FUNCTION_12();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_7();
      return CCLogStream::logAlert(v4, "[dk] %s@%d: Overflow detected\n", "updateLinkQualityMetrics", 592);
    }
  }

  return result;
}

{
  *a2 = a1;
  result = *(*a3 + 24);
  if (result)
  {
    result = OUTLINED_FUNCTION_12();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_7();
      return CCLogStream::logAlert(v4, "[dk] %s@%d: Overflow detected\n", "updateLinkQualityMetrics", 603);
    }
  }

  return result;
}

uint64_t AppleBCMWLANLQM::logAdditionalTxRxCounters(AppleBCMWLANCore ***a1, unsigned int *a2)
{
  v3 = (*a1)[3];
  AppleBCMWLANCore::getTxPer(**a1);
  v12 = a2[6];
  v13 = a2[7];
  v10 = a2[4];
  v11 = a2[5];
  v8 = a2[2];
  v9 = a2[3];
  v6 = *a2;
  v7 = a2[1];
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v3, v4);
}

uint64_t AppleBCMWLANLQM::updateLQM(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_11(v1, v2, v3);
  OUTLINED_FUNCTION_10();
  return CCLogStream::logNoticeIf(v4, 0x200uLL, "[dk] %s@%d:CCA:%d CCAStats Total[self:%d other:%d intf:%d ts:%d] \n", "updateLQM", 1010, v6, v7, v8, v9, v10);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x200uLL, "[dk] %s@%d:Failed to getCCAStats\n", "updateLQM", 998);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_11(v1, v2, v3);
  v18 = *(v4 + 320);
  v19 = *(v4 + 316);
  v16 = *(v4 + 318);
  v17 = *(v4 + 319);
  v14 = *(v4 + 326);
  v15 = *(v4 + 322);
  v12 = *(v4 + 324);
  v13 = *(v4 + 325);
  OUTLINED_FUNCTION_10();
  return CCLogStream::logNoticeIf(v5, 0x200uLL, "[dk] %s@%d:CCA:%d CCAStats Total[self:%d other:%d intf:%d ts:%d] Wake[self:%d other:%d intf:%d ts:%d] Sleep[self:%d other:%d intf:%d ts:%d]\n", "updateLQM", 1005, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t AppleBCMWLANLQM::updatePerCoreRssi(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: phy_rssi_ant Failed %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANLQM::handlePerCoreRssiAsyncCallback(uint64_t ***a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: Failed to get per core RSSI: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANLQM::updateDeltaTxRxStats(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s ptrValIn == NULL\n", "updateDeltaTxRxStats", 1464, "updateDeltaTxRxStats");
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s ptrDeltaStruct == NULL\n", "updateDeltaTxRxStats", 1463, "updateDeltaTxRxStats");
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s ptrHistStruct == NULL\n", "updateDeltaTxRxStats", 1462, "updateDeltaTxRxStats");
}

void AppleBCMWLANLQM::updateInfraSpecificStatistics()
{
  OUTLINED_FUNCTION_4();
  if (OUTLINED_FUNCTION_3(v0) && CCLogStream::shouldLog())
  {
    v1 = OUTLINED_FUNCTION_9();
    CCLogStream::logEmergency(v1, "[dk] %s@%d:ivars->getPrimaryInterfaceId->setInfraSpecificFrameStats failed\n", "updateInfraSpecificStatistics", 1726);
  }

  OUTLINED_FUNCTION_2();
}

uint64_t AppleBCMWLANLQM::updateInfraSpecificStatistics(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Infra interface is not existing %d\n", "updateInfraSpecificStatistics", 1728, 1728);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create aligned infraSpecificStats data\n", "updateInfraSpecificStatistics", 1688);
}

uint64_t AppleBCMWLANLQM::updateSliceUcodeStatistics(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_8();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:GE88_UCODE_TX_V1 alignment fails\n", "updateSliceUcodeStatistics", 2108);
    }
  }

  *v1 = v2;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:GE88_UCODE_RX_V1 alignment fails\n", "updateSliceUcodeStatistics", 2072);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:GE80_UCODE_V1 alignment fails\n", "updateSliceUcodeStatistics", 2025);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:GE40_UCODE_V1 alignment fails\n", "updateSliceUcodeStatistics", 1981);
}

void AppleBCMWLANLQM::updateAdditionalRxCounters()
{
  OUTLINED_FUNCTION_4();
  if (*(*(v0 + 40) + 24) && CCLogStream::shouldLog())
  {
    v1 = OUTLINED_FUNCTION_8();
    CCLogStream::logEmergency(v1, "[dk] %s@%d:Failed to allocate alignedCounters\n", "updateAdditionalRxCounters", 2135);
  }

  OUTLINED_FUNCTION_2();
}

uint64_t AppleBCMWLANLQM::updateSliceUcodeRxErr(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_8();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:alignment fails\n", "updateSliceUcodeRxErr", 2169);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_8();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Unexpected Version\n", "updateSliceUcodeRxErr", 2174);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_8();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Unexpected length\n", "updateSliceUcodeRxErr", 2175);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_8();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:alignment fails\n", "updateSliceUcodeRxErr", 2157);
    }
  }

  *v1 = v2;
  return result;
}

void AppleBCMWLANLQM::updateDynBwStats()
{
  OUTLINED_FUNCTION_4();
  if (*(*(v0 + 40) + 24) && CCLogStream::shouldLog())
  {
    v1 = OUTLINED_FUNCTION_8();
    CCLogStream::logAlert(v1, "[dk] %s@%d:Dynamic BW stats alignment fails\n", "updateDynBwStats", 2207);
  }

  OUTLINED_FUNCTION_2();
}

void AppleBCMWLANLQM::updateDynBwStats(uint64_t a1)
{
  if (OUTLINED_FUNCTION_14(a1) && OUTLINED_FUNCTION_16())
  {
    v1 = OUTLINED_FUNCTION_9();
    CCLogStream::logAlert(v1, "[dk] %s@%d:Unexpected Version\n", "updateDynBwStats", 2219);
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_14(a1) && OUTLINED_FUNCTION_16())
  {
    v1 = OUTLINED_FUNCTION_9();
    CCLogStream::logAlert(v1, "[dk] %s@%d:Unexpected length\n", "updateDynBwStats", 2220);
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_14(a1) && OUTLINED_FUNCTION_16())
  {
    v1 = OUTLINED_FUNCTION_9();
    CCLogStream::logAlert(v1, "[dk] %s@%d:Unexpected Version\n", "updateDynBwStats", 2214);
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_14(a1) && OUTLINED_FUNCTION_16())
  {
    v1 = OUTLINED_FUNCTION_9();
    CCLogStream::logAlert(v1, "[dk] %s@%d:Unexpected length\n", "updateDynBwStats", 2215);
  }

  OUTLINED_FUNCTION_2();
}