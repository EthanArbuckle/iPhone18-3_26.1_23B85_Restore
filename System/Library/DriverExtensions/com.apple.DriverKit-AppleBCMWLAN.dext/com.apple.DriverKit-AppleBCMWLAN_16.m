uint64_t AppleBCMWLANCore::parseV30CntContainer(uint64_t *a1, OSData *this, uint64_t (*a3)(void), unsigned __int16 **a4)
{
  if (OSData::getLength(this))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (OSData::getLength(this) - v7 < 5)
      {
        return 0;
      }

      if ((OSData::getBytesNoCopy(this) & 3) != 0)
      {
        v65 = 3758097084;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseV30CntContainer(a1);
          }
        }

        goto LABEL_137;
      }

      BytesNoCopy = OSData::getBytesNoCopy(this, v7, 4uLL);
      if (!BytesNoCopy)
      {
        v65 = 3758097084;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseV30CntContainer(a1);
          }
        }

        goto LABEL_137;
      }

      v10 = BytesNoCopy;
      v11 = BytesNoCopy[1];
      if (OSData::getLength(this) - (v8 + 4) < v11)
      {
        v65 = 3758097084;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            v70 = (*(*a1 + 1952))(a1);
            v60 = v10[1];
            v61 = *v10;
            OSData::getLength(this);
            OSData::getLength(this);
            CCLogStream::logAlert(v70, "[dk] %s@%d:Insufficient xtlv->len %d index %d xtlv->id 0x%x payload->getLength() %d remainder %d\n", "parseV30CntContainer");
          }
        }

        goto LABEL_137;
      }

      v12 = OSData::getBytesNoCopy(this, v8 + 4, v11);
      if (!v12)
      {
        v65 = 3758097084;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            v62 = (*(*a1 + 1952))(a1);
            v63 = v10[1];
            v64 = *v10;
            OSData::getLength(this);
            CCLogStream::logAlert(v62, "[dk] %s@%d:Bad payloadStart xtlv->len %d index %d xtlv->id 0x%x payload->getLength() %d index + BCM_XTLV_HDR_SIZE %d\n", "parseV30CntContainer");
          }
        }

        goto LABEL_137;
      }

      v13 = OSData::withBytesNoCopy(v12, v11);
      if (!v13)
      {
        v65 = 3758097084;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            v66 = (*(*a1 + 1952))(a1);
            v67 = v10[1];
            v68 = *v10;
            CCLogStream::logAlert(v66, "[dk] %s@%d:Bad xtlvContainerPayload index %d xtlv->len %d xtlv->id 0x%x\n");
          }
        }

LABEL_137:
        v14 = 0;
        goto LABEL_144;
      }

      v14 = v13;
      v15 = *v10;
      if (v15 <= 0xFFF)
      {
        if (*v10 <= 0x1FFu)
        {
          if (*v10 > 0x100u)
          {
            if (v15 == 257)
            {
              goto LABEL_74;
            }

            if (v15 == 258)
            {
              goto LABEL_47;
            }

            if (v15 != 260)
            {
              goto LABEL_119;
            }

            goto LABEL_78;
          }

          if (v15 == 1)
          {
            goto LABEL_74;
          }

          if (v15 != 256)
          {
            goto LABEL_119;
          }

          v30 = a1[9];
          v31 = *(v30 + 5512);
          if (v31)
          {
            if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 76))
            {
              v32 = 3;
            }

            else
            {
              v32 = 2;
            }

            v33 = AppleBCMWLANIOReportingPerSlice::reportWlCntPerSlice(v31, v14, a3, a4, v32);
            if (v33)
            {
              v65 = v33;
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::parseV30CntContainer(a1);
                }
              }

              goto LABEL_144;
            }

            v30 = a1[9];
          }

          if (!a3)
          {
            v34 = *(v30 + 5608);
            if (v34)
            {
              updated = AppleBCMWLANLQM::updateAdditionalRxCounters(v34, v14);
              if (updated)
              {
                v65 = updated;
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::parseV30CntContainer(a1);
                  }
                }

                goto LABEL_144;
              }
            }
          }
        }

        else if (*v10 > 0x7FFu)
        {
          switch(v15)
          {
            case 0x800u:
              goto LABEL_74;
            case 0x900u:
              IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(a1, 76);
              if (a3 != 2 || (IsBitSet & 1) == 0)
              {
                v41 = a1[9];
                v42 = *(v41 + 5512);
                if (v42)
                {
                  v43 = *(v41 + 780);
                  v44 = AppleBCMWLANIOReportingPerSlice::reportUcodeCntPerSlice(v42, v14, a3, 1, a4);
                  if (v44)
                  {
                    v65 = v44;
                    if ((*(*a1 + 1952))(a1))
                    {
                      (*(*a1 + 1952))(a1);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::parseV30CntContainer(a1);
                      }
                    }

                    goto LABEL_144;
                  }

                  v41 = a1[9];
                }

                v45 = *(v41 + 5608);
                if (v45)
                {
                  v46 = AppleBCMWLANLQM::updateSliceUcodeStatistics(v45, v14, a3, 3);
                  if (v46)
                  {
                    v65 = v46;
                    if ((*(*a1 + 1952))(a1))
                    {
                      (*(*a1 + 1952))(a1);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::parseV30CntContainer(a1);
                      }
                    }

                    goto LABEL_144;
                  }
                }
              }

              break;
            case 0x901u:
              if (a3 != 2)
              {
                v27 = *(a1[9] + 5608);
                if (v27)
                {
                  v28 = AppleBCMWLANLQM::updateSliceUcodeRxErr(v27, v14, a3, 2305);
                  if (v28)
                  {
                    v65 = v28;
                    if ((*(*a1 + 1952))(a1))
                    {
                      (*(*a1 + 1952))(a1);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::parseV30CntContainer(a1);
                      }
                    }

                    goto LABEL_144;
                  }
                }
              }

              break;
            default:
              goto LABEL_119;
          }
        }

        else
        {
          if (v15 == 512 || v15 == 768)
          {
            goto LABEL_74;
          }

          if (v15 != 1024)
          {
            goto LABEL_119;
          }

          v16 = AppleBCMWLANCore::featureFlagIsBitSet(a1, 76);
          if (a3 != 2 || (v16 & 1) == 0)
          {
            v17 = a1[9];
            v18 = *(v17 + 5512);
            if (v18)
            {
              v19 = *(v17 + 780);
              v20 = AppleBCMWLANIOReportingPerSlice::reportUcodeCntPerSlice(v18, v14, a3, 0, a4);
              if (v20)
              {
                v65 = v20;
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::parseV30CntContainer(a1);
                  }
                }

                goto LABEL_144;
              }

              v17 = a1[9];
            }

            v21 = *(v17 + 5608);
            if (v21)
            {
              v22 = AppleBCMWLANLQM::updateSliceUcodeStatistics(v21, v14, a3, 1);
              if (v22)
              {
                v65 = v22;
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::parseV30CntContainer(a1);
                  }
                }

                goto LABEL_144;
              }
            }
          }
        }
      }

      else
      {
        if (*v10 > 0x1015u)
        {
          if (*v10 <= 0x1018u)
          {
            if (v15 - 4119 < 2)
            {
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::parseV30CntContainer(a1);
                }
              }

              goto LABEL_111;
            }

            if (v15 != 4118)
            {
LABEL_119:
              v65 = 3758097084;
              if ((*(*a1 + 1952))(a1))
              {
                (*(*a1 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::parseV30CntContainer(a1);
                }
              }

              goto LABEL_144;
            }

LABEL_78:
            if (v11)
            {
              v36 = *(a1[9] + 5512);
              if (v36)
              {
                v37 = AppleBCMWLANIOReportingPerSlice::reportOmiCntPerSlice(v36, v14, a3);
                if (v37)
                {
                  v65 = v37;
                  if ((*(*a1 + 1952))(a1))
                  {
                    (*(*a1 + 1952))(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANCore::parseV30CntContainer(a1);
                    }
                  }

                  goto LABEL_144;
                }
              }

              AppleBCMWLANCore::setOmiStats(a1, v14, a3);
            }

            goto LABEL_111;
          }

          if (v15 != 4121)
          {
            if (v15 == 4122)
            {
              goto LABEL_111;
            }

            if (v15 != 4123)
            {
              goto LABEL_119;
            }

LABEL_47:
            if (a3 != 2 && v11)
            {
              v25 = *(a1[9] + 5512);
              if (v25)
              {
                v26 = AppleBCMWLANIOReportingPerSlice::reportHeCntPerSlice(v25, v14, a3);
                if (v26)
                {
                  v65 = v26;
                  if ((*(*a1 + 1952))(a1))
                  {
                    (*(*a1 + 1952))(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANCore::parseV30CntContainer(a1);
                    }
                  }

                  goto LABEL_144;
                }
              }

              AppleBCMWLANCore::setHeStats(a1, v14, a3);
            }

            goto LABEL_111;
          }
        }

        else
        {
          if (*v10 > 0x1012u)
          {
            if (v15 == 4115)
            {
              v39 = AppleBCMWLANCore::featureFlagIsBitSet(a1, 76);
              if (a3 == 2 && v39)
              {
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::parseV30CntContainer(a1);
                  }
                }
              }

              else
              {
                v53 = a1[9];
                v54 = *(v53 + 5512);
                if (v54)
                {
                  v55 = *(v53 + 780);
                  v56 = AppleBCMWLANIOReportingPerSlice::reportUcodeCntPerSlice(v54, v14, a3, 3, a4);
                  if (v56)
                  {
                    v65 = v56;
                    if ((*(*a1 + 1952))(a1))
                    {
                      (*(*a1 + 1952))(a1);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::parseV30CntContainer(a1);
                      }
                    }

                    goto LABEL_144;
                  }

                  v53 = a1[9];
                }

                v57 = *(v53 + 5608);
                if (v57)
                {
                  v58 = AppleBCMWLANLQM::updateSliceUcodeStatistics(v57, v14, a3, 6);
                  if (v58)
                  {
                    v65 = v58;
                    if ((*(*a1 + 1952))(a1))
                    {
                      (*(*a1 + 1952))(a1);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::parseV30CntContainer(a1);
                      }
                    }

                    goto LABEL_144;
                  }
                }
              }
            }

            else if (v15 == 4116)
            {
              v38 = AppleBCMWLANCore::featureFlagIsBitSet(a1, 76);
              if (a3 == 2 && v38)
              {
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::parseV30CntContainer(a1);
                  }
                }
              }

              else
              {
                v47 = a1[9];
                v48 = *(v47 + 5512);
                if (v48)
                {
                  v49 = *(v47 + 780);
                  v50 = AppleBCMWLANIOReportingPerSlice::reportUcodeCntPerSlice(v48, v14, a3, 2, a4);
                  if (v50)
                  {
                    v65 = v50;
                    if ((*(*a1 + 1952))(a1))
                    {
                      (*(*a1 + 1952))(a1);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::parseV30CntContainer(a1);
                      }
                    }

                    goto LABEL_144;
                  }

                  v47 = a1[9];
                }

                v51 = *(v47 + 5608);
                if (v51)
                {
                  v52 = AppleBCMWLANLQM::updateSliceUcodeStatistics(v51, v14, a3, 4);
                  if (v52)
                  {
                    v65 = v52;
                    if ((*(*a1 + 1952))(a1))
                    {
                      (*(*a1 + 1952))(a1);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::parseV30CntContainer(a1);
                      }
                    }

                    goto LABEL_144;
                  }
                }
              }
            }

            else if (a3 != 2)
            {
              v23 = *(a1[9] + 5608);
              if (v23)
              {
                v24 = AppleBCMWLANLQM::updateSliceUcodeRxErr(v23, v14, a3, 4117);
                if (v24)
                {
                  v65 = v24;
                  if ((*(*a1 + 1952))(a1))
                  {
                    (*(*a1 + 1952))(a1);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANCore::parseV30CntContainer(a1);
                    }
                  }

                  goto LABEL_144;
                }
              }
            }

            goto LABEL_111;
          }

          if (v15 - 4107 >= 2)
          {
            if (v15 != 4096)
            {
              goto LABEL_119;
            }

LABEL_74:
            if ((*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseV30CntContainer(a1);
              }
            }

            goto LABEL_111;
          }
        }

        if (!a3)
        {
          v29 = AppleBCMWLANLQM::updateDynBwStats(*(a1[9] + 5608), *v10, v13);
          if (v29)
          {
            v65 = v29;
            if ((*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseV30CntContainer(a1);
              }
            }

            goto LABEL_144;
          }
        }
      }

LABEL_111:
      v71 = 0;
      if (AppleBCMWLANCore::safe_align_up(a1, v7 + v11 + 4, 4uLL, &v71))
      {
        AppleBCMWLANCore::parseV30CntContainer(a1);
        goto LABEL_143;
      }

      v7 = v71;
      if (v71 >= 0xFFFF)
      {
        AppleBCMWLANCore::parseV30CntContainer(a1);
LABEL_143:
        v65 = 3758097084;
LABEL_144:
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseV30CntContainer(a1);
          }
        }

        AppleBCMWLANCore::is4387C0(a1);
        if (v14)
        {
          (v14->release)(v14);
        }

        return v65;
      }

      (v14->release)(v14);
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseV30CntContainer(a1);
        }
      }

      v8 = v7;
    }

    while (OSData::getLength(this) > v7);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::reportSlicesScanPwrStatsAtLinkup(uint64_t *a1, const OSData *a2, unsigned int a3, signed int a4)
{
  v8 = IOMallocZeroData();
  if (v8)
  {
    v9 = v8;
    if (a2)
    {
      if (OSData::getLength(a2) >= 0x95)
      {
        AppleBCMWLANCore::reportSlicesScanPwrStatsAtLinkup();
      }

      else
      {
        BytesNoCopy = OSData::getBytesNoCopy(a2);
        Length = OSData::getLength(a2);
        memcpy(v9, BytesNoCopy, Length);
        if (a3 <= 2 && a4 > a3)
        {
          v12 = *v9;
          if (v12 == 1)
          {
            v13 = 5 * a3;
            v14 = a3;
            *(a1[9] + 4 * v13 + 19592) = v9[1];
            *(a1[9] + 4 * v13 + 19596) = v9[3];
            *(a1[9] + 4 * v13 + 19600) = v9[5];
            *(a1[9] + 4 * v13 + 19604) = v9[7];
            v15 = v9[23];
          }

          else
          {
            if (v12 != 18)
            {
              v14 = a3;
LABEL_19:
              v17 = 9 * v14;
              *(a1[9] + 16 * v17 + 19200) = 0;
              *(a1[9] + 16 * v17 + 19208) = 0;
              *(a1[9] + 16 * v17 + 19216) = 0;
              *(a1[9] + 16 * v17 + 19224) = 0;
              *(a1[9] + 16 * v17 + 19232) = 0;
              v16 = 0;
              if (*v9 == 18)
              {
                *(a1[9] + 16 * v17 + 19264) = 0;
                *(a1[9] + 16 * v17 + 19272) = 0;
                *(a1[9] + 16 * v17 + 19280) = 0;
                *(a1[9] + 16 * v17 + 19288) = 0;
                *(a1[9] + 16 * v17 + 19296) = 0;
              }

              goto LABEL_21;
            }

            v13 = 5 * a3;
            v14 = a3;
            *(a1[9] + 20 * a3 + 19592) = v9[1];
            *(a1[9] + 20 * a3 + 19596) = v9[4];
            *(a1[9] + 20 * a3 + 19600) = v9[7];
            *(a1[9] + 20 * a3 + 19604) = v9[10];
            v15 = v9[34];
          }

          *(a1[9] + 4 * v13 + 19608) = v15;
          goto LABEL_19;
        }

        AppleBCMWLANCore::reportSlicesScanPwrStatsAtLinkup(a1);
      }
    }

    else
    {
      AppleBCMWLANCore::reportSlicesScanPwrStatsAtLinkup();
    }

    v16 = v19[0];
LABEL_21:
    IOFreeData();
    return v16;
  }

  if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v19[0] = 67109634;
      v19[1] = 65;
      v20 = 2080;
      v21 = "reportSlicesScanPwrStatsAtLinkup";
      v22 = 1024;
      v23 = 42527;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Failed to allocate scan_stats_data buf", v19, 0x18u);
    }
  }

  v16 = 3758097084;
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::reportSlicesScanPwrStatsAtLinkup(a1);
    }
  }

  return v16;
}

uint64_t AppleBCMWLANCore::reportSlicesScanPwrStats(uint64_t *a1, const OSData *a2, unsigned int a3, signed int a4)
{
  v8 = IOMallocZeroData();
  if (v8)
  {
    v9 = v8;
    if (a2)
    {
      if (OSData::getLength(a2) >= 0x95)
      {
        AppleBCMWLANCore::reportSlicesScanPwrStats();
      }

      else
      {
        BytesNoCopy = OSData::getBytesNoCopy(a2);
        Length = OSData::getLength(a2);
        memcpy(v9, BytesNoCopy, Length);
        if (a3 <= 2 && a4 > a3)
        {
          v12 = *v9;
          if (v12 == 18)
          {
            *(a1[9] + 144 * a3 + 19160) = v9[1];
            *(a1[9] + 144 * a3 + 19164) = v9[4];
            *(a1[9] + 144 * a3 + 19168) = v9[7];
            *(a1[9] + 144 * a3 + 19172) = v9[10];
            *(a1[9] + 144 * a3 + 19176) = v9[34];
            v20 = a1[9];
            v21 = 9 * a3;
            if ((*(v20 + a3 + 6572) & 1) == 0)
            {
              *(v20 + 144 * a3 + 19200) += (v9[2] - *(v20 + 144 * a3 + 19180));
              *(a1[9] + 144 * a3 + 19208) += (v9[5] - *(a1[9] + 144 * a3 + 19184));
              *(a1[9] + 144 * a3 + 19216) += (v9[8] - *(a1[9] + 144 * a3 + 19188));
              *(a1[9] + 144 * a3 + 19224) += (v9[11] - *(a1[9] + 144 * a3 + 19192));
              *(a1[9] + 144 * a3 + 19232) += (v9[35] - *(a1[9] + 144 * a3 + 19196));
              *(a1[9] + 144 * a3 + 19264) += (v9[3] - *(a1[9] + 144 * a3 + 19240));
              *(a1[9] + 144 * a3 + 19272) += (v9[6] - *(a1[9] + 144 * a3 + 19244));
              *(a1[9] + 144 * a3 + 19280) += (v9[9] - *(a1[9] + 144 * a3 + 19248));
              *(a1[9] + 144 * a3 + 19288) += (v9[12] - *(a1[9] + 144 * a3 + 19252));
              v22 = a1[9] + 144 * a3;
              *(v22 + 19296) += (v9[36] - *(v22 + 19256));
              v20 = a1[9];
            }

            v16 = 0;
            *(v20 + 16 * v21 + 19180) = v9[2];
            *(a1[9] + 16 * v21 + 19184) = v9[5];
            *(a1[9] + 16 * v21 + 19188) = v9[8];
            *(a1[9] + 16 * v21 + 19192) = v9[11];
            *(a1[9] + 16 * v21 + 19196) = v9[35];
            *(a1[9] + 16 * v21 + 19240) = v9[3];
            *(a1[9] + 16 * v21 + 19244) = v9[6];
            *(a1[9] + 16 * v21 + 19248) = v9[9];
            *(a1[9] + 16 * v21 + 19252) = v9[12];
            v17 = v9[36];
            v18 = a1[9] + 16 * v21;
            v19 = 19256;
          }

          else
          {
            if (v12 != 1)
            {
              v16 = 0;
              goto LABEL_23;
            }

            v13 = 9 * a3;
            *(a1[9] + 16 * v13 + 19160) = v9[1];
            *(a1[9] + 16 * v13 + 19164) = v9[3];
            *(a1[9] + 16 * v13 + 19168) = v9[5];
            *(a1[9] + 16 * v13 + 19172) = v9[7];
            *(a1[9] + 16 * v13 + 19176) = v9[23];
            v14 = a1[9];
            if ((*(v14 + a3 + 6572) & 1) == 0)
            {
              *(v14 + 144 * a3 + 19200) += (v9[2] - *(v14 + 144 * a3 + 19180));
              *(a1[9] + 144 * a3 + 19208) += (v9[4] - *(a1[9] + 144 * a3 + 19184));
              *(a1[9] + 144 * a3 + 19216) += (v9[6] - *(a1[9] + 144 * a3 + 19188));
              *(a1[9] + 144 * a3 + 19224) += (v9[8] - *(a1[9] + 144 * a3 + 19192));
              v15 = a1[9] + 144 * a3;
              *(v15 + 19232) += (v9[24] - *(v15 + 19196));
              v14 = a1[9];
            }

            v16 = 0;
            *(v14 + 16 * v13 + 19180) = v9[2];
            *(a1[9] + 16 * v13 + 19184) = v9[4];
            *(a1[9] + 16 * v13 + 19188) = v9[6];
            *(a1[9] + 16 * v13 + 19192) = v9[8];
            v17 = v9[24];
            v18 = a1[9] + 16 * v13;
            v19 = 19196;
          }

          *(v18 + v19) = v17;
LABEL_23:
          IOFreeData();
          return v16;
        }

        AppleBCMWLANCore::reportSlicesScanPwrStats(a1);
      }
    }

    else
    {
      AppleBCMWLANCore::reportSlicesScanPwrStats();
    }

    v16 = v24[0];
    goto LABEL_23;
  }

  if (!(*(*a1 + 1952))(a1) || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v24[0] = 67109634;
      v24[1] = 65;
      v25 = 2080;
      v26 = "reportSlicesScanPwrStats";
      v27 = 1024;
      v28 = 42610;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Failed to allocate scan_stats_data buf", v24, 0x18u);
    }
  }

  v16 = 3758097084;
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::reportSlicesScanPwrStats(a1);
    }
  }

  return v16;
}

uint64_t AppleBCMWLANCore::reportSlicesScanPwrStats6E(uint64_t *a1, OSData *this, unsigned int a3, signed int a4)
{
  if (a3 > 2 || a4 <= a3)
  {
    AppleBCMWLANCore::reportSlicesScanPwrStats6E(a1);
    return v13;
  }

  if (OSData::getLength(this) != 24)
  {
    AppleBCMWLANCore::reportSlicesScanPwrStats6E(a1);
    return v13;
  }

  BytesNoCopy = OSData::getBytesNoCopy(this);
  result = 0;
  v9 = BytesNoCopy[1];
  v10 = BytesNoCopy[2];
  v11 = BytesNoCopy[3];
  v12 = BytesNoCopy[4];
  LODWORD(BytesNoCopy) = BytesNoCopy[5];
  *(a1[9] + 20 * a3 + 35676) = v9;
  *(a1[9] + 20 * a3 + 35680) = v10;
  *(a1[9] + 20 * a3 + 35684) = v11;
  *(a1[9] + 20 * a3 + 35688) = v12;
  *(a1[9] + 20 * a3 + 35692) = BytesNoCopy;
  return result;
}

uint64_t AppleBCMWLANCore::handlePeerStatsConfigAsyncCallback(AppleBCMWLANCore *a1, int a2, uint64_t a3, int a4, unsigned __int8 *address)
{
  if (address)
  {
    v7 = *address;
    IOFree(address, 1uLL);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 9);
  v9 = v8 + 16 * v7;
  v10 = (v9 + 30980);
  v11 = *(v9 + 30986);
  if (!a3)
  {
    AppleBCMWLANCore::processPeerStatsConfig(a1, v11 == 0, v7);
    v8 = *(a1 + 9);
  }

  *(v8 + 16 * v7 + 30987) = 0;
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v21 = (*(*a1 + 1952))(a1);
      if (v11)
      {
        v13 = "disable";
      }

      else
      {
        v13 = "enable";
      }

      v14 = *v10;
      v15 = v10[1];
      v16 = v10[2];
      v17 = v10[3];
      v18 = v10[4];
      v19 = v10[5];
      v20 = (*(*a1 + 112))(a1, a3);
      CCLogStream::logAlert(v21, "[dk] %s@%d: P2p Peer stats %s iovar for [%02X:%02X:%02X:%02X:%02X:%02X] %s, peers %u, index %u, status %u \n", "handlePeerStatsConfigAsyncCallback", 29530, v13, v14, v15, v16, v17, v18, v19, v20, *(*(a1 + 9) + 30976), v7, *(*(a1 + 9) + 16 * v7 + 30986));
    }
  }

  return a3;
}

uint64_t AppleBCMWLANCore::processPeerStatsConfig(AppleBCMWLANCore *this, int a2, unsigned int a3)
{
  v11 = 0;
  v10 = 0;
  v3 = *(this + 9);
  v4 = *(v3 + 30976);
  if (a2)
  {
    *(v3 + 30976) = v4 + 1;
    *(*(this + 9) + 16 * a3 + 30986) = 1;
    v5 = *(this + 9);
    v6 = *(v5 + 16 * a3 + 30984);
    v7 = a3;
    v10 = *(v5 + 16 * a3 + 30980);
    v11 = v6;
  }

  else
  {
    if (*(v3 + 30976))
    {
      *(v3 + 30976) = v4 - 1;
      v3 = *(this + 9);
    }

    v8 = v3 + 16 * a3;
    v7 = a3;
    *(v8 + 30986) = 0;
    v5 = *(this + 9);
  }

  *(v5 + 16 * v7 + 30988) = 0;
  *(*(this + 9) + 16 * v7 + 30992) = 0;
  return AppleBCMWLANLQM::updatePeerStatsAddrForIndex(*(*(this + 9) + 5608), &v10, a3);
}

uint64_t AppleBCMWLANCore::getPeerStatsIndex(AppleBCMWLANCore *this, ether_addr *a2)
{
  v2 = 0;
  v3 = *(this + 9) + 30980;
  v4 = -1;
  while (*v3 != *a2->octet || *(v3 + 4) != *&a2->octet[4])
  {
    if (!*(v3 + 6) && !*(v3 + 7))
    {
      v4 = v2;
    }

    ++v2;
    v3 += 16;
    if (v2 == 4)
    {
      return v4;
    }
  }

  return v2;
}

AppleBCMWLANCore *AppleBCMWLANCore::reportPerPeerTxPerAndLatency(AppleBCMWLANCore *this, ether_addr *a2, char a3, int a4)
{
  if (a2)
  {
    v7 = this;
    this = AppleBCMWLANCore::featureFlagIsBitSet(this, 104);
    if (this)
    {
      if (*a2->octet || *&a2->octet[4] != 0)
      {
        this = AppleBCMWLANCore::getPeerStatsIndex(v7, a2);
        if (this <= 3)
        {
          v9 = this;
          if (*(*(v7 + 9) + 16 * this + 30986))
          {
            *(*(v7 + 9) + 16 * this + 30988) = a3;
            *(*(v7 + 9) + 16 * this + 30992) = a4;
            v10 = *(v7 + 9);
            v11 = *(v10 + 5608);
            v12 = v10 + 16 * v9 + 30980;
            v13 = *(v12 + 8);
            v14 = *(v12 + 12);

            return AppleBCMWLANLQM::updatePeerTxLatencyAndPer(v11, v9, v13, v14);
          }
        }
      }
    }
  }

  return this;
}

void AppleBCMWLANCore::configPerPeerStats(AppleBCMWLANCore *this, int a2, int a3, unsigned int a4, ether_addr *a5)
{
  v33 = 0;
  v32 = 0;
  if (!a5 || !AppleBCMWLANCore::featureFlagIsBitSet(this, 104) || (*a5->octet == v32 ? (v10 = *&a5->octet[4] == v33) : (v10 = 0), v10))
  {
    v12 = 0;
    goto LABEL_14;
  }

  PeerStatsIndex = AppleBCMWLANCore::getPeerStatsIndex(this, a5);
  if (PeerStatsIndex > 3)
  {
    return;
  }

  v12 = PeerStatsIndex;
  v13 = *(this + 9);
  v14 = v13 + 30980;
  if (*(v13 + 30980 + 16 * PeerStatsIndex + 7))
  {
    goto LABEL_14;
  }

  v38 = 0;
  v37 = 0;
  v39 = 0;
  v34[0] = 524289;
  v34[1] = *a5->octet;
  v35 = *&a5->octet[4];
  v15 = *(v13 + 30976);
  if (a2)
  {
    if (v15 > 3)
    {
      goto LABEL_14;
    }

    v16 = v14 + 16 * PeerStatsIndex;
    if (*(v16 + 6))
    {
      goto LABEL_14;
    }

    v17 = *a5->octet;
    *(v16 + 4) = *&a5->octet[4];
    *v16 = v17;
    v18 = 1;
  }

  else
  {
    if (!v15 || !*(v14 + 16 * PeerStatsIndex + 6))
    {
      goto LABEL_14;
    }

    if (!a3)
    {
      AppleBCMWLANCore::processPeerStatsConfig(this, 0, PeerStatsIndex);
      goto LABEL_14;
    }

    v18 = 2;
  }

  v36 = v18;
  v19 = IOMallocZeroTyped();
  if (v19)
  {
    v20 = v19;
    *v19 = v12;
    v31[0] = this;
    v31[1] = AppleBCMWLANCore::handlePeerStatsConfigAsyncCallback;
    v31[2] = v19;
    v21 = *(*(this + 9) + 5408);
    v30[0] = v34;
    v30[1] = 14;
    if (AppleBCMWLANCommander::sendVirtualIOVarSet(v21, a4, "peer_stats", v30, kNoRxExpected, v31, 0))
    {
      IOFree(v20, 1uLL);
    }

    else
    {
      *(*(this + 9) + 16 * v12 + 30987) = 1;
    }

    return;
  }

LABEL_14:
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v22 = (*(*this + 1952))(this);
      v23 = "disable";
      if (a2)
      {
        v23 = "enable";
      }

      if (a5)
      {
        v24 = a5->octet[0];
        v25 = a5->octet[1];
        v26 = a5->octet[2];
        v27 = a5->octet[3];
        v28 = a5->octet[4];
        v29 = a5->octet[5];
      }

      else
      {
        v28 = 0;
        v26 = 0;
        v24 = 0;
        v25 = 0;
        v27 = 0;
        v29 = 0;
      }

      CCLogStream::logAlert(v22, "[dk] %s@%d: Error: P2p Peer stats %s iovar for [%02X:%02X:%02X:%02X:%02X:%02X], peers %u, index %u, status %u busy %d\n", "configPerPeerStats", 29695, v23, v24, v25, v26, v27, v28, v29, *(*(this + 9) + 30976), v12, *(*(this + 9) + 16 * v12 + 30986), *(*(this + 9) + 16 * v12 + 30987));
    }
  }
}

uint64_t AppleBCMWLANCore::parsePerPeerLeafStats(uint64_t *a1, int a2, OSData *this)
{
  BytesNoCopy = OSData::getBytesNoCopy(this, 0, 0xCuLL);
  if (BytesNoCopy)
  {
    updated = AppleBCMWLANLQM::updatePerPeerCommonStats(*(a1[9] + 5608), a2, BytesNoCopy);
    if (OSData::getLength(this) >= 0xD)
    {
      v8 = 12;
      v9 = 12;
      while (OSData::getLength(this) - v8 >= 5)
      {
        v10 = OSData::getBytesNoCopy(this, v8, 4uLL);
        if (!v10)
        {
          AppleBCMWLANCore::parsePerPeerLeafStats(a1, a1, v9, &v21);
          return v21;
        }

        v11 = v10;
        v12 = v10[1];
        Length = OSData::getLength(this);
        v14 = v9 + 4;
        if (Length - v14 < v12)
        {
          v18 = 3758097084;
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              v20 = (*(*a1 + 1952))(a1);
              CCLogStream::logAlert(v20, "[dk] %s@%d:Insufficient containerLength %d index %d\n", "parsePerPeerLeafStats", 29725, v12, v9);
            }
          }

          return v18;
        }

        v15 = OSData::getBytesNoCopy(this, v14, v12);
        if (!v15)
        {
          AppleBCMWLANCore::parsePerPeerLeafStats(a1);
          return v21;
        }

        v16 = *v11;
        switch(v16)
        {
          case 3:
            AppleBCMWLANLQM::updatePerPeerTxAmpduStats(*(a1[9] + 5608), updated, v15);
            break;
          case 2:
            AppleBCMWLANLQM::updatePerPeerRxAmpduStats(*(a1[9] + 5608), updated, v15);
            break;
          case 1:
            AppleBCMWLANLQM::updatePerPeerChanStats(*(a1[9] + 5608), updated, v15);
            break;
          default:
            if ((*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parsePerPeerLeafStats(a1);
              }
            }

            break;
        }

        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePerPeerLeafStats(a1);
          }
        }

        v17 = v9 + v12;
        v9 = (v9 + v12 + 4);
        v8 = (v17 + 4);
        if (OSData::getLength(this) <= v9)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  else
  {
    AppleBCMWLANCore::parsePerPeerLeafStats(a1);
    return v21;
  }
}

uint64_t AppleBCMWLANCore::parseSoftAPClientLeafStats(uint64_t *a1, int a2, OSData *this)
{
  BytesNoCopy = OSData::getBytesNoCopy(this, 0, 0xCuLL);
  if (BytesNoCopy)
  {
    AppleBCMWLANLQM::printPeerCommonStats(*(a1[9] + 5608), BytesNoCopy, a2, 1);
    if (OSData::getLength(this) >= 0xD)
    {
      v7 = 12;
      v8 = 12;
      while (OSData::getLength(this) - v7 >= 5)
      {
        v9 = OSData::getBytesNoCopy(this, v7, 4uLL);
        if (!v9)
        {
          AppleBCMWLANCore::parseSoftAPClientLeafStats(a1, a1, v8, &v20);
          return v20;
        }

        v10 = v9;
        v11 = v9[1];
        Length = OSData::getLength(this);
        v13 = v8 + 4;
        if (Length - v13 < v11)
        {
          v17 = 3758097084;
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              v19 = (*(*a1 + 1952))(a1);
              CCLogStream::logAlert(v19, "[dk] %s@%d:Insufficient containerLength %d index %d\n", "parseSoftAPClientLeafStats", 29787, v11, v8);
            }
          }

          return v17;
        }

        v14 = OSData::getBytesNoCopy(this, v13, v11);
        if (!v14)
        {
          AppleBCMWLANCore::parseSoftAPClientLeafStats(a1);
          return v20;
        }

        v15 = *v10;
        switch(v15)
        {
          case 3:
            AppleBCMWLANLQM::printPeerTxAmpduStats(*(a1[9] + 5608), v14, 1);
            break;
          case 2:
            AppleBCMWLANLQM::printPeerRxAmpduStats(*(a1[9] + 5608));
            break;
          case 1:
            AppleBCMWLANChanSpec::getAppleChannelSpec(*(a1[9] + 17744), *v14);
            ChanSpecGetPrimaryChannel();
            AppleBCMWLANLQM::printPeerChanStats(*(a1[9] + 5608));
            break;
          default:
            if ((*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseSoftAPClientLeafStats(a1);
              }
            }

            break;
        }

        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseSoftAPClientLeafStats(a1);
          }
        }

        v16 = v8 + v11;
        v8 = (v8 + v11 + 4);
        v7 = (v16 + 4);
        if (OSData::getLength(this) <= v8)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  else
  {
    AppleBCMWLANCore::parseSoftAPClientLeafStats(a1);
    return v20;
  }
}

uint64_t AppleBCMWLANCore::parsePeerStatsGlobalContainer(uint64_t *a1, int a2, const OSData *a3)
{
  v6 = a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::parsePeerStatsGlobalContainer(a1);
    }
  }

  if ((OSData::getBytesNoCopy(a3) & 3) != 0)
  {
    AppleBCMWLANCore::parsePeerStatsGlobalContainer(a1);
    return v22;
  }

  else if (OSData::getLength(a3))
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      if (OSData::getLength(a3) - v7 < 5)
      {
        return 0;
      }

      BytesNoCopy = OSData::getBytesNoCopy(a3, v7, 4uLL);
      if (!BytesNoCopy)
      {
        AppleBCMWLANCore::parsePeerStatsGlobalContainer(a1, v6, v8, &v22);
        return v22;
      }

      v10 = BytesNoCopy;
      v11 = BytesNoCopy[1];
      Length = OSData::getLength(a3);
      v13 = v8 + 4;
      if (Length - v13 < v11)
      {
        break;
      }

      v14 = OSData::getBytesNoCopy(a3, v13, v11);
      if (!v14)
      {
        AppleBCMWLANCore::parsePeerStatsGlobalContainer(a1);
        return v22;
      }

      v15 = OSData::withBytesNoCopy(v14, v11);
      if (!v15)
      {
        AppleBCMWLANCore::parsePeerStatsGlobalContainer(a1);
        return v22;
      }

      if (*v10 != 1)
      {
        v19 = 3758097084;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePeerStatsGlobalContainer(a1);
          }
        }

        return v19;
      }

      v16 = v15;
      if (!AppleBCMWLANCore::featureFlagIsBitSet(a1, 122))
      {
        goto LABEL_16;
      }

      v17 = OSData::getBytesNoCopy(v16, v7, 0xCuLL);
      if (!v17)
      {
        AppleBCMWLANCore::parsePeerStatsGlobalContainer(a1);
        return v22;
      }

      if ((v17[6] & 2) != 0)
      {
        v18 = AppleBCMWLANCore::parseSoftAPClientLeafStats(a1, a2, v16);
      }

      else
      {
LABEL_16:
        v18 = AppleBCMWLANCore::parsePerPeerLeafStats(a1, a2, v16);
      }

      if (v18)
      {
        AppleBCMWLANCore::parsePeerStatsGlobalContainer(a1);
        return v22;
      }

      v22 = 0;
      if (AppleBCMWLANCore::safe_align_up(a1, v7 + v11 + 4, 4uLL, &v22))
      {
        AppleBCMWLANCore::parsePeerStatsGlobalContainer(a1);
        return 3758097084;
      }

      v7 = v22;
      if (v22 >= 0xFFFF)
      {
        AppleBCMWLANCore::parsePeerStatsGlobalContainer(a1);
        return 3758097084;
      }

      (v16->release)(v16);
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parsePeerStatsGlobalContainer(a1);
        }
      }

      v8 = v7;
      if (OSData::getLength(a3) <= v7)
      {
        return 0;
      }
    }

    v19 = 3758097084;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        v21 = (*(*a1 + 1952))(a1);
        CCLogStream::logAlert(v21, "[dk] %s@%d:Insufficient containerLength %d index %d\n", "parsePeerStatsGlobalContainer", 29851, v11, v8);
      }
    }
  }

  else
  {
    return 0;
  }

  return v19;
}

uint64_t AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(uint64_t *a1, OSData *this, int a3)
{
  BytesNoCopy = OSData::getBytesNoCopy(this);
  v6 = IOMallocZeroData();
  v7 = IOMallocZeroData();
  v8 = IOMallocZeroData();
  v9 = IOMallocZeroData();
  v10 = v9;
  if (!v6)
  {
    AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
    goto LABEL_62;
  }

  if (!v7)
  {
    AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
    goto LABEL_62;
  }

  if (!v8)
  {
    AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
LABEL_62:
    v16 = 3758097084;
    if (!v10)
    {
LABEL_52:
      if (!v8)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

LABEL_51:
    IOFreeData();
    goto LABEL_52;
  }

  if (v9)
  {
    if (!BytesNoCopy)
    {
      AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
      goto LABEL_66;
    }

    *v7 = BytesNoCopy[1];
    v7[1] = BytesNoCopy[2];
    v7[3] = BytesNoCopy[3];
    v7[7] = BytesNoCopy[4];
    v7[9] = BytesNoCopy[5];
    v7[2] = BytesNoCopy[22];
    *v6 = BytesNoCopy[12];
    v6[1] = BytesNoCopy[13];
    v6[2] = BytesNoCopy[14];
    v6[4] = BytesNoCopy[15];
    v6[10] = BytesNoCopy[16];
    v6[9] = BytesNoCopy[17];
    v8[2] = BytesNoCopy[6];
    v8[3] = BytesNoCopy[7];
    v8[4] = BytesNoCopy[8];
    v8[12] = BytesNoCopy[9];
    v8[1] = BytesNoCopy[10];
    *v8 = BytesNoCopy[11];
    v8[6] = BytesNoCopy[20];
    v8[7] = BytesNoCopy[21];
    v8[10] = BytesNoCopy[18];
    *(v9 + 32) = BytesNoCopy[19];
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v12 = *(a1[9] + 11304);
          if (v12)
          {
            if (((*(*v12 + 832))(v12, 0, v7, v10, v6) & 1) == 0)
            {
              AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
              goto LABEL_66;
            }

            if (((*(**(a1[9] + 11304) + 840))(*(a1[9] + 11304), 0, v8) & 1) == 0)
            {
              AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
              goto LABEL_66;
            }
          }

          else if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
            }
          }

          goto LABEL_50;
        }

        goto LABEL_32;
      }

      v15 = *(a1[9] + 11288);
      if (v15)
      {
        if (((*(*v15 + 832))(v15, 0, v7, v10, v6) & 1) == 0)
        {
          AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
          goto LABEL_66;
        }

        if (((*(**(a1[9] + 11288) + 840))(*(a1[9] + 11288), 0, v8) & 1) == 0)
        {
          AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
          goto LABEL_66;
        }
      }

      else if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
        }
      }
    }

    else
    {
      switch(a3)
      {
        case 2:
          v13 = *(a1[9] + 11296);
          if (v13)
          {
            if (((*(*v13 + 832))(v13, 0, v7, v10, v6) & 1) == 0)
            {
              AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
              goto LABEL_66;
            }

            if (((*(**(a1[9] + 11296) + 840))(*(a1[9] + 11296), 0, v8) & 1) == 0)
            {
              AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
              goto LABEL_66;
            }
          }

          else if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
            }
          }

          break;
        case 3:
          v14 = *(a1[9] + 29944);
          if (v14)
          {
            if (((*(*v14 + 832))(v14, 0, v7, v10, v6) & 1) == 0)
            {
              AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
              goto LABEL_66;
            }

            if (((*(**(a1[9] + 29944) + 840))(*(a1[9] + 29944), 0, v8) & 1) == 0)
            {
              AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
              goto LABEL_66;
            }
          }

          else if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
            }
          }

          break;
        case 4:
          v11 = *(a1[9] + 29952);
          if (v11)
          {
            if (((*(*v11 + 832))(v11, 0, v7, v10, v6) & 1) == 0)
            {
              AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
              goto LABEL_66;
            }

            if (((*(**(a1[9] + 29952) + 840))(*(a1[9] + 29952), 0, v8) & 1) == 0)
            {
              AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
LABEL_66:
              v16 = v18;
              goto LABEL_51;
            }
          }

          else if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
            }
          }

          break;
        default:
LABEL_32:
          v16 = 3758097084;
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
            }
          }

          goto LABEL_51;
      }
    }

LABEL_50:
    v16 = 0;
    goto LABEL_51;
  }

  AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters(a1);
  v16 = v18;
LABEL_53:
  IOFreeData();
LABEL_54:
  if (v7)
  {
    IOFreeData();
  }

  if (v6)
  {
    IOFreeData();
  }

  return v16;
}

uint64_t AppleBCMWLANCore::convertInfraSpecificStatisticsToApple80211Counters(uint64_t *a1, OSData *this)
{
  if (*(a1[9] + 11288))
  {
    v9 = 0;
    OSData::getBytesNoCopy(this);
    memset(v10, 170, sizeof(v10));
    AppleBCMWLANUtil::AutoreleasedAlignedOSData::AutoreleasedAlignedOSData(v10, this, 4);
    v4 = v10[0];
    if (v10[0])
    {
      if (IOMallocZeroData())
      {
        *(a1[9] + 17168) = AppleBCMWLANUtil::getCounterValueSafe(&v9, 4uLL, v4, 4uLL);
        v5 = a1[9];
        v6 = *(v5 + 11288);
        if (v6)
        {
          if (((*(*v6 + 848))(v6, 0, v5 + 16272) & 1) == 0)
          {
            AppleBCMWLANCore::convertInfraSpecificStatisticsToApple80211Counters(a1);
          }
        }

        else if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::convertInfraSpecificStatisticsToApple80211Counters(a1);
          }
        }

        v7 = v9;
        IOFreeData();
      }

      else
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::convertInfraSpecificStatisticsToApple80211Counters(a1);
          }
        }

        v7 = 3758097084;
        v9 = -536870212;
      }
    }

    else
    {
      v7 = 3758097084;
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::convertInfraSpecificStatisticsToApple80211Counters(a1);
        }
      }
    }

    AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v10);
  }

  else
  {
    if ((*(*a1 + 1952))(a1, this))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::convertInfraSpecificStatisticsToApple80211Counters(a1);
      }
    }

    return 0;
  }

  return v7;
}

uint64_t AppleBCMWLANCore::convertInfraSpecificHeStatisticsToApple80211Counters(uint64_t *a1, OSData *a2)
{
  if (*(a1[9] + 11288))
  {
    v10 = 0;
    v4 = IOMallocZeroData();
    memset(v11, 170, sizeof(v11));
    AppleBCMWLANUtil::AutoreleasedAlignedOSData::AutoreleasedAlignedOSData(v11, a2, 4);
    if (!v4)
    {
      v8 = 3758097084;
      AppleBCMWLANCore::convertInfraSpecificHeStatisticsToApple80211Counters(a1);
      return v8;
    }

    v5 = v11[0];
    if (!v11[0])
    {
      v8 = 3758097084;
      AppleBCMWLANCore::convertInfraSpecificHeStatisticsToApple80211Counters(a1);
      goto LABEL_15;
    }

    *(a1[9] + 16832) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v11[0], 8uLL);
    *(a1[9] + 17376) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x10uLL);
    *(a1[9] + 16840) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x18uLL);
    *(a1[9] + 17384) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x20uLL);
    *(a1[9] + 16848) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x28uLL);
    *(a1[9] + 17392) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x30uLL);
    *(a1[9] + 17080) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x38uLL);
    *(a1[9] + 17400) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x40uLL);
    *(a1[9] + 17096) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x48uLL);
    *(a1[9] + 17416) = AppleBCMWLANUtil::getCounterValueSafe(&v10, 4uLL, v5, 0x50uLL);
    *(a1[9] + 17488) = 1;
    v6 = a1[9];
    v7 = *(v6 + 11288);
    if (v7)
    {
      if (((*(*v7 + 848))(v7, 0, v6 + 16272) & 1) == 0)
      {
        v8 = 3758097084;
        AppleBCMWLANCore::convertInfraSpecificHeStatisticsToApple80211Counters(a1);
LABEL_15:
        AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v11);
        IOFreeData();
        return v8;
      }
    }

    else if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::convertInfraSpecificHeStatisticsToApple80211Counters(a1);
      }
    }

    *(a1[9] + 17488) = 1;
    v8 = v10;
    goto LABEL_15;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::convertInfraSpecificHeStatisticsToApple80211Counters(a1);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::convertInfraControlManagementStatisticsToApple80211Counters(uint64_t *a1, OSData *a2, int a3)
{
  v11 = 0;
  v6 = IOMallocZeroData();
  memset(v12, 170, sizeof(v12));
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::AutoreleasedAlignedOSData(v12, a2, 4);
  v7 = v12[0];
  if (!v12[0])
  {
    v9 = 3758097084;
    if (AppleBCMWLANCore::convertInfraControlManagementStatisticsToApple80211Counters(a1))
    {
      return v9;
    }

    goto LABEL_25;
  }

  if (!v6)
  {
    v9 = 3758097084;
    AppleBCMWLANCore::convertInfraControlManagementStatisticsToApple80211Counters(a1);
    return v9;
  }

  v6[79] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v12[0], 4uLL);
  v6[48] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 8uLL);
  v6[86] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0xCuLL);
  v6[55] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x10uLL);
  v6[122] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x14uLL);
  v6[106] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x18uLL);
  v6[124] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x1CuLL);
  v6[108] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x20uLL);
  v6[130] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x24uLL);
  v6[114] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x28uLL);
  v6[123] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x2CuLL);
  v6[107] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x30uLL);
  v6[125] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x34uLL);
  v6[109] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x38uLL);
  v6[131] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x3CuLL);
  v6[115] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x40uLL);
  v6[132] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x44uLL);
  v6[116] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x48uLL);
  v6[126] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x4CuLL);
  v6[110] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x50uLL);
  v6[127] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x54uLL);
  v6[111] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x58uLL);
  v6[133] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x5CuLL);
  v6[117] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x60uLL);
  v6[24] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x64uLL);
  v6[2] = AppleBCMWLANUtil::getCounterValueSafe(&v11, 4uLL, v7, 0x68uLL);
  if (a3 <= 1)
  {
    if (!a3)
    {
      v6[112] = *(a1[9] + 17168);
      v8 = *(a1[9] + 11288);
      if (v8)
      {
        if ((*(*v8 + 848))(v8, 0, v6))
        {
          memcpy((a1[9] + 16272), v6, 0x4C8uLL);
        }

        else
        {
          AppleBCMWLANCore::convertInfraControlManagementStatisticsToApple80211Counters(a1);
        }
      }

      else if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::convertInfraControlManagementStatisticsToApple80211Counters(a1);
        }
      }

      goto LABEL_24;
    }

    if (a3 == 1)
    {
      if (((*(**(a1[9] + 11304) + 848))(*(a1[9] + 11304), 0, v6) & 1) == 0)
      {
        AppleBCMWLANCore::convertInfraControlManagementStatisticsToApple80211Counters(a1);
      }

      goto LABEL_24;
    }

LABEL_20:
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::convertInfraControlManagementStatisticsToApple80211Counters(a1);
      }
    }

    v11 = -536870212;
    goto LABEL_24;
  }

  if (a3 == 2)
  {
    if (((*(**(a1[9] + 11296) + 848))(*(a1[9] + 11296), 0, v6) & 1) == 0)
    {
      AppleBCMWLANCore::convertInfraControlManagementStatisticsToApple80211Counters(a1);
    }

    goto LABEL_24;
  }

  if (a3 == 3)
  {
    if (((*(**(a1[9] + 29944) + 848))(*(a1[9] + 29944), 0, v6) & 1) == 0)
    {
      AppleBCMWLANCore::convertInfraControlManagementStatisticsToApple80211Counters(a1);
    }

    goto LABEL_24;
  }

  if (a3 != 4)
  {
    goto LABEL_20;
  }

  if (((*(**(a1[9] + 29952) + 848))(*(a1[9] + 29952), 0, v6) & 1) == 0)
  {
    AppleBCMWLANCore::convertInfraControlManagementStatisticsToApple80211Counters(a1);
  }

LABEL_24:
  v9 = v11;
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v12);
LABEL_25:
  IOFreeData();
  return v9;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV1(AppleBCMWLANCore *this, OSData *a2)
{
  v4 = IOMallocZeroData();
  if (!a2 || OSData::getLength(a2) <= 5)
  {
    AppleBCMWLANCore::parsePHYEcounterV1(this);
    goto LABEL_23;
  }

  if ((OSData::getBytesNoCopy(a2) & 3) != 0)
  {
    AppleBCMWLANCore::parsePHYEcounterV1(this);
    goto LABEL_23;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (*BytesNoCopy != 1)
  {
    AppleBCMWLANCore::parsePHYEcounterV1(this);
LABEL_23:
    v14 = v22;
    if (!v4)
    {
      return v14;
    }

    goto LABEL_17;
  }

  v6 = BytesNoCopy;
  v7 = 14 * BytesNoCopy[4] + 6;
  if (*(BytesNoCopy + 1) != v7 || OSData::getLength(a2) != v7)
  {
    AppleBCMWLANCore::parsePHYEcounterV1(this, a2, v7, &v22);
    goto LABEL_23;
  }

  mach_continuous_time();
  v8 = *(*(this + 9) + 35560);
  absolutetime_to_nanoseconds();
  if (v6[4])
  {
    v9 = 0;
    v10 = (v6 + 10);
    do
    {
      AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(this + 9) + 17744), *(v10 - 2));
      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
        v20 = v10[3];
        v21 = v10[4];
        v18 = v10[1];
        v19 = v10[2];
        v16 = *(v10 - 2);
        v17 = *v10;
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        v12 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
        IOLog("LQM-WIFI-PHY: ChanSpec %s, slice=%u phyWdg=%u noiseReq=%u noiseCrsbit=%u noiseApply=%u calCnt=%u\n", v12, *(v10 - 2), *v10, v10[1], v10[2], v10[3], v10[4]);
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        v13 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY: ChanSpec %s, slice=%u phyWdg=%u noiseReq=%u noiseCrsbit=%u noiseApply=%u calCnt=%u\n", v13, *(v10 - 2), *v10, v10[1], v10[2], v10[3], v10[4]);
      }

      ++v9;
      v10 += 7;
    }

    while (v9 < v6[4]);
  }

  v14 = 0;
  *(*(this + 9) + 35560) = mach_continuous_time();
  if (v4)
  {
LABEL_17:
    IOFreeData();
  }

  return v14;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV2(AppleBCMWLANCore *this, OSData *a2)
{
  v4 = IOMallocZeroData();
  if (!a2 || OSData::getLength(a2) <= 7)
  {
    AppleBCMWLANCore::parsePHYEcounterV2(this);
    goto LABEL_40;
  }

  if ((OSData::getBytesNoCopy(a2) & 3) != 0)
  {
    AppleBCMWLANCore::parsePHYEcounterV2(this);
    goto LABEL_40;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (*BytesNoCopy != 2)
  {
    AppleBCMWLANCore::parsePHYEcounterV2(this);
    goto LABEL_40;
  }

  v6 = BytesNoCopy;
  v7 = 92 * BytesNoCopy[4] + 8;
  if (v7 != *(BytesNoCopy + 1))
  {
    AppleBCMWLANCore::parsePHYEcounterV2(this, a2, v7, &v80);
LABEL_40:
    v20 = v80;
    if (!v4)
    {
      return v20;
    }

    goto LABEL_34;
  }

  mach_continuous_time();
  v8 = *(*(this + 9) + 35560);
  absolutetime_to_nanoseconds();
  if (v6[4])
  {
    v9 = 0;
    v10 = (v6 + 50);
    do
    {
      AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(this + 9) + 17744), *(v10 - 21));
      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
        v62 = *(v10 - 20);
        v66 = *(v10 - 19);
        v54 = *(v10 - 22);
        v58 = *(v10 - 21);
        v46 = *(v10 - 14);
        v50 = *(v10 - 13);
        v38 = *(v10 - 16);
        v42 = *(v10 - 15);
        v30 = *(v10 - 18);
        v34 = *(v10 - 17);
        v22 = *(v10 - 40);
        v26 = *(v10 - 19);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        v12 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
        IOLog("LQM-WIFI-PHY: ChanSpec %s, slice=%u phyWdg=%u noiseReq=%u noiseCrsbit=%u noiseApply=%u calCnt=%u featureflag=0x%04x chanSwitchCnt=%u chipTemp=%d femTemp=%d rxChain=%u txChain=%u\n", v12, *(v10 - 40), *(v10 - 19), *(v10 - 18), *(v10 - 17), *(v10 - 16), *(v10 - 15), *(v10 - 14), *(v10 - 13), *(v10 - 22), *(v10 - 21), *(v10 - 20), *(v10 - 19));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        v13 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY: ChanSpec %s, slice=%u phyWdg=%u noiseReq=%u noiseCrsbit=%u noiseApply=%u calCnt=%u featureflag=0x%04x chanSwitchCnt=%u chipTemp=%d femTemp=%d rxChain=%u txChain=%u\n", v13, *(v10 - 40), *(v10 - 19), *(v10 - 18), *(v10 - 17), *(v10 - 16), *(v10 - 15), *(v10 - 14), *(v10 - 13), *(v10 - 22), *(v10 - 21), *(v10 - 20), *(v10 - 19));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
        v59 = *(v10 - 9);
        v63 = *(v10 - 8);
        v51 = *(v10 - 11);
        v55 = *(v10 - 10);
        v43 = *(v10 - 13);
        v47 = *(v10 - 12);
        v35 = *(v10 - 8);
        v39 = *(v10 - 14);
        v27 = *(v10 - 18);
        v31 = *(v10 - 17);
        v23 = *(v10 - 40);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        v14 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
        IOLog("LQM-WIFI-PHY: ChanSpec %s, slice=%u ofdmDesense=%u bphyDesense=%u deafCnt=%u phylogNoiseMode=%u totalDesenseOn=%u initgainDesense=%u crsminInit=%u lteOfdmDesense=%u lteBphyDesense=%u crsminHigh=%d\n", v14, *(v10 - 40), *(v10 - 18), *(v10 - 17), *(v10 - 8), *(v10 - 14), *(v10 - 13), *(v10 - 12), *(v10 - 11), *(v10 - 10), *(v10 - 9), *(v10 - 8));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        v15 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY: ChanSpec %s, slice=%u ofdmDesense=%u bphyDesense=%u deafCnt=%u phylogNoiseMode=%u totalDesenseOn=%u initgainDesense=%u crsminInit=%u lteOfdmDesense=%u lteBphyDesense=%u crsminHigh=%d\n", v15, *(v10 - 40), *(v10 - 18), *(v10 - 17), *(v10 - 8), *(v10 - 14), *(v10 - 13), *(v10 - 12), *(v10 - 11), *(v10 - 10), *(v10 - 9), *(v10 - 8));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
        v64 = *(v10 + 7);
        v67 = *(v10 + 9);
        v56 = *(v10 + 3);
        v60 = *(v10 + 5);
        v48 = v10[1];
        v52 = v10[2];
        v40 = *(v10 - 1);
        v44 = *v10;
        v32 = *(v10 - 6);
        v36 = *(v10 - 2);
        v24 = *(v10 - 40);
        v28 = *(v10 - 7);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        v16 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
        IOLog("LQM-WIFI-PHY: ChanSpec %s, slice=%u weakestRssi=%d edThreshold=%d edCrsStatus=0x%04x preemptStatus1=0x%04x preemptStatus2=0x%04x preemptStatus3=0x%04x preemptStatus4=0x%04x glitch=%u bphyGlitch=%u badplcp=%d bphyBadplcp=%u\n", v16, *(v10 - 40), *(v10 - 7), *(v10 - 6), *(v10 - 2), *(v10 - 1), *v10, v10[1], v10[2], *(v10 + 3), *(v10 + 5), *(v10 + 7), *(v10 + 9));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        v17 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY: ChanSpec %s, slice=%u weakestRssi=%d edThreshold=%d edCrsStatus=0x%04x preemptStatus1=0x%04x preemptStatus2=0x%04x preemptStatus3=0x%04x preemptStatus4=0x%04x glitch=%u bphyGlitch=%u badplcp=%d bphyBadplcp=%u\n", v17, *(v10 - 40), *(v10 - 7), *(v10 - 6), *(v10 - 2), *(v10 - 1), *v10, v10[1], v10[2], *(v10 + 3), *(v10 + 5), *(v10 + 7), *(v10 + 9));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
        v78 = *(v10 + 48);
        v79 = *(v10 + 49);
        v76 = *(v10 + 46);
        v77 = *(v10 + 47);
        v74 = *(v10 + 44);
        v75 = *(v10 + 45);
        v72 = *(v10 + 42);
        v73 = *(v10 + 43);
        v70 = *(v10 + 40);
        v71 = *(v10 + 41);
        v68 = *(v10 + 38);
        v69 = *(v10 + 39);
        v61 = *(v10 + 36);
        v65 = *(v10 + 37);
        v53 = *(v10 + 34);
        v57 = *(v10 + 35);
        v45 = *(v10 + 32);
        v49 = *(v10 + 33);
        v37 = *(v10 + 30);
        v41 = *(v10 + 31);
        v29 = *(v10 + 11);
        v33 = *(v10 + 13);
        v25 = *(v10 - 40);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        v18 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
        IOLog("LQM-WIFI-PHY: ChanSpec %s, slice=%u ccaDurMS=%d ccaEdDuration=%u crsminPwr0=%d rssi0=%d noisePwr0[%d %d %d %d %d %d %d %d] crsminPwr1=%d rssi1=%d noisePwr1[%d %d %d %d %d %d %d %d]", v18, *(v10 - 40), *(v10 + 11), *(v10 + 13), *(v10 + 30), *(v10 + 31), *(v10 + 32), *(v10 + 33), *(v10 + 34), *(v10 + 35), *(v10 + 36), *(v10 + 37), *(v10 + 38), *(v10 + 39), *(v10 + 40), *(v10 + 41), *(v10 + 42), *(v10 + 43), *(v10 + 44), *(v10 + 45), *(v10 + 46), *(v10 + 47), *(v10 + 48), *(v10 + 49));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        v19 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY: ChanSpec %s, slice=%u ccaDurMS=%d ccaEdDuration=%u crsminPwr0=%d rssi0=%d noisePwr0[%d %d %d %d %d %d %d %d] crsminPwr1=%d rssi1=%d noisePwr1[%d %d %d %d %d %d %d %d]", v19, *(v10 - 40), *(v10 + 11), *(v10 + 13), *(v10 + 30), *(v10 + 31), *(v10 + 32), *(v10 + 33), *(v10 + 34), *(v10 + 35), *(v10 + 36), *(v10 + 37), *(v10 + 38), *(v10 + 39), *(v10 + 40), *(v10 + 41), *(v10 + 42), *(v10 + 43), *(v10 + 44), *(v10 + 45), *(v10 + 46), *(v10 + 47), *(v10 + 48), *(v10 + 49));
      }

      ++v9;
      v10 += 46;
    }

    while (v9 < v6[4]);
  }

  v20 = 0;
  *(*(this + 9) + 35560) = mach_continuous_time();
  if (v4)
  {
LABEL_34:
    IOFreeData();
  }

  return v20;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV3(AppleBCMWLANCore *this, OSData *a2)
{
  v4 = *(*(this + 9) + 5432);
  if (!v4)
  {
    IO80211BssManager::isAssociated(0);
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(v4);
  if (IO80211BssManager::isAssociated(*(*(this + 9) + 5432)))
  {
    v6 = CurrentBSS == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_8;
  }

  v7 = AppleBCMWLANBssManager::getCurrentBSS(*(*(this + 9) + 5432));
  v8 = (*(*v7 + 256))(v7);
LABEL_9:
  v9 = IOMallocZeroData();
  if (!a2 || OSData::getLength(a2) <= 7)
  {
    AppleBCMWLANCore::parsePHYEcounterV3(this);
    goto LABEL_35;
  }

  if ((OSData::getBytesNoCopy(a2) & 3) != 0)
  {
    AppleBCMWLANCore::parsePHYEcounterV3(this);
    goto LABEL_35;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (*BytesNoCopy != 3)
  {
    AppleBCMWLANCore::parsePHYEcounterV3(this);
LABEL_35:
    v18 = v22;
    if (!v9)
    {
      return v18;
    }

    goto LABEL_29;
  }

  v11 = BytesNoCopy;
  v12 = 76 * *(BytesNoCopy + 4) + 8;
  if (BytesNoCopy[1] != v12 || OSData::getLength(a2) != v12)
  {
    AppleBCMWLANCore::parsePHYEcounterV3(this, a2, v12, &v22);
    goto LABEL_35;
  }

  mach_continuous_time();
  v13 = *(*(this + 9) + 35560);
  absolutetime_to_nanoseconds();
  if (*(v11 + 4))
  {
    v14 = 0;
    v15 = (v11 + 10);
    do
    {
      AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(this + 9) + 17744), *(v15 - 6));
      if (v8 == ChanSpecGetPrimaryChannel())
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v21 = (*(*this + 1952))(this);
            v20 = *v11;
            v17 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v9, 0x20u);
            CCLogStream::logAlert(v21, "[dk] %s@%d:Version = %u, ChanSpec %s, slice=%u phyWdg=%u noiseReq=%u noiseCrsbit=%u crsminPwrIdx=%u featureflag=0x%04x chanSwitchCnt=%u chipTemp=%d femTemp=%d ofdmDesense=%u bphyDesense=%u\n", "parsePHYEcounterV3", 30719, v20, v17, v15[1], *(v15 - 5), *(v15 - 4), *(v15 - 3), *v15, *(v15 + 9), v15[15], v15[9], v15[10], v15[7], v15[8]);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePHYEcounterV3(this);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePHYEcounterV3(this);
          }
        }
      }

      ++v14;
      v15 += 76;
    }

    while (v14 < *(v11 + 4));
  }

  v18 = 0;
  *(*(this + 9) + 35560) = mach_continuous_time();
  if (v9)
  {
LABEL_29:
    IOFreeData();
  }

  return v18;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV4(AppleBCMWLANCore *this, OSData *a2)
{
  if (!a2 || OSData::getLength(a2) <= 7)
  {
    AppleBCMWLANCore::parsePHYEcounterV4(this);
    return v146;
  }

  if ((OSData::getBytesNoCopy(a2) & 3) != 0)
  {
    AppleBCMWLANCore::parsePHYEcounterV4(this);
    return v146;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (*BytesNoCopy != 4)
  {
    AppleBCMWLANCore::parsePHYEcounterV4(this);
    return v146;
  }

  v5 = BytesNoCopy;
  v6 = 244 * *(BytesNoCopy + 4) + 8;
  if (BytesNoCopy[1] != v6 || OSData::getLength(a2) != v6)
  {
    AppleBCMWLANCore::parsePHYEcounterV4(this, a2, v6, &v146);
    return v146;
  }

  mach_continuous_time();
  v7 = *(*(this + 9) + 35560);
  absolutetime_to_nanoseconds();
  if (*(v5 + 4))
  {
    v8 = 0;
    v9 = v5 + 4;
    do
    {
      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v72 = v9[5];
        v82 = *(v9 + 12);
        v52 = v9[3];
        v62 = v9[4];
        v32 = v9[1];
        v42 = v9[2];
        v12 = *v5;
        v22 = *v9;
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  Version = %u, ChanSpec=0x%04x, phy_wdg=%u, noise_req=%u, noise_crsbit=%u, noise_apply=%u, cal_counter=%u, slice=%u\n", *v5, *v9, v9[1], v9[2], v9[3], v9[4], v9[5], *(v9 + 12));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  Version = %u, ChanSpec=0x%04x, phy_wdg=%u, noise_req=%u, noise_crsbit=%u, noise_apply=%u, cal_counter=%u, slice=%u\n", *v5, *v9, v9[1], v9[2], v9[3], v9[4], v9[5], *(v9 + 12));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v63 = *(v9 + 18);
        v73 = *(v9 + 19);
        v43 = *(v9 + 16);
        v53 = *(v9 + 17);
        v23 = *(v9 + 14);
        v33 = *(v9 + 15);
        v13 = *(v9 + 13);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  rxchain=%u, txchain=%u, gbd_bphy_sleep_counter=%u, gbd_ofdm_sleep_counter=%u, curr_home_channel=%u, gbd_ofdm_desense=%u, gbd_bphy_desense=%u \n", *(v9 + 13), *(v9 + 14), *(v9 + 15), *(v9 + 16), *(v9 + 17), *(v9 + 18), *(v9 + 19));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  rxchain=%u, txchain=%u, gbd_bphy_sleep_counter=%u, gbd_ofdm_sleep_counter=%u, curr_home_channel=%u, gbd_ofdm_desense=%u, gbd_bphy_desense=%u \n", *(v9 + 13), *(v9 + 14), *(v9 + 15), *(v9 + 16), *(v9 + 17), *(v9 + 18), *(v9 + 19));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v91 = *(v9 + 31);
        v98 = v9[16];
        v74 = *(v9 + 29);
        v83 = *(v9 + 30);
        v54 = *(v9 + 22);
        v64 = *(v9 + 28);
        v34 = *(v9 + 6);
        v44 = *(v9 + 23);
        v14 = *(v9 + 20);
        v24 = *(v9 + 21);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  chiptemp=%d, femtemp=%d, btcx_mode=%d, ltecx_mode=%d, weakest_rssi=%d, ed_threshold=%d, chan_switch_cnt=%u, phycal_disable=%u, scca_txstall_precondition=%u, featureflag=%u\n", *(v9 + 20), *(v9 + 21), *(v9 + 6), *(v9 + 23), *(v9 + 22), *(v9 + 28), *(v9 + 29), *(v9 + 30), *(v9 + 31), v9[16]);
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  chiptemp=%d, femtemp=%d, btcx_mode=%d, ltecx_mode=%d, weakest_rssi=%d, ed_threshold=%d, chan_switch_cnt=%u, phycal_disable=%u, scca_txstall_precondition=%u, featureflag=%u\n", *(v9 + 20), *(v9 + 21), *(v9 + 6), *(v9 + 23), *(v9 + 22), *(v9 + 28), *(v9 + 29), *(v9 + 30), *(v9 + 31), v9[16]);
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v123 = *(v9 + 17);
        v129 = *(v9 + 18);
        v111 = *(v9 + 15);
        v117 = *(v9 + 16);
        v99 = *(v9 + 13);
        v105 = *(v9 + 14);
        v84 = v9[24];
        v92 = v9[25];
        v65 = v9[22];
        v75 = v9[23];
        v45 = v9[20];
        v55 = v9[21];
        v25 = v9[18];
        v35 = v9[19];
        v15 = v9[17];
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  deaf_count=%u, noise_mmt_overdue=%u, crsmin_pwr_apply_cnt=%u, ed_crs_status=%u, preempt_status1=%u, preempt_status2=%u, preempt_status3=%u, preempt_status4=%u , counter_noise_iqest_to=%u, cca_stats_total_glitch=%u, cca_stats_bphy_glitch=%u, cca_stats_total_badplcp=%u,  cca_stats_bphy_badplcp=%u, cca_stats_mbsstime= %u, cca_stats_ed_duration=%u\n", v9[17], v9[18], v9[19], v9[20], v9[21], v9[22], v9[23], v9[24], v9[25], *(v9 + 13), *(v9 + 14), *(v9 + 15), *(v9 + 16), *(v9 + 17), *(v9 + 18));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  deaf_count=%u, noise_mmt_overdue=%u, crsmin_pwr_apply_cnt=%u, ed_crs_status=%u, preempt_status1=%u, preempt_status2=%u, preempt_status3=%u, preempt_status4=%u , counter_noise_iqest_to=%u, cca_stats_total_glitch=%u, cca_stats_bphy_glitch=%u, cca_stats_total_badplcp=%u,  cca_stats_bphy_badplcp=%u, cca_stats_mbsstime= %u, cca_stats_ed_duration=%u\n", v9[17], v9[18], v9[19], v9[20], v9[21], v9[22], v9[23], v9[24], v9[25], *(v9 + 13), *(v9 + 14), *(v9 + 15), *(v9 + 16), *(v9 + 17), *(v9 + 18));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v124 = v9[58];
        v130 = v9[59];
        v112 = v9[56];
        v118 = v9[57];
        v100 = v9[54];
        v106 = v9[55];
        v85 = v9[52];
        v93 = v9[53];
        v66 = *(v9 + 24);
        v76 = *(v9 + 25);
        v46 = *(v9 + 22);
        v56 = *(v9 + 23);
        v26 = *(v9 + 20);
        v36 = *(v9 + 21);
        v16 = *(v9 + 19);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  measurehold=%u, rxsense_disable_req_ch=%u, ocl_disable_reqs=%u, interference_mode=%u, power_mode=%u, obss_last_read_time=%u, asym_intf_ed_thresh=%d, obss_mit_bw=%u , obss_stats_cnt=%u, dynbw_init_reducebw_cnt=%u, dynbw_resp_reducebw_cnt=%u, dynbw_rxdata_reducebw_cnt=%u,  obss_mmt_skip_cnt=%u, obss_mmt_no_result_cnt= %u, obss_mmt_intr_err_cnt=%u\n", *(v9 + 19), *(v9 + 20), *(v9 + 21), *(v9 + 22), *(v9 + 23), *(v9 + 24), *(v9 + 25), v9[52], v9[53], v9[54], v9[55], v9[56], v9[57], v9[58], v9[59]);
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  measurehold=%u, rxsense_disable_req_ch=%u, ocl_disable_reqs=%u, interference_mode=%u, power_mode=%u, obss_last_read_time=%u, asym_intf_ed_thresh=%d, obss_mit_bw=%u , obss_stats_cnt=%u, dynbw_init_reducebw_cnt=%u, dynbw_resp_reducebw_cnt=%u, dynbw_rxdata_reducebw_cnt=%u,  obss_mmt_skip_cnt=%u, obss_mmt_no_result_cnt= %u, obss_mmt_intr_err_cnt=%u\n", *(v9 + 19), *(v9 + 20), *(v9 + 21), *(v9 + 22), *(v9 + 23), *(v9 + 24), *(v9 + 25), v9[52], v9[53], v9[54], v9[55], v9[56], v9[57], v9[58], v9[59]);
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v119 = v9[72];
        v125 = v9[73];
        v107 = v9[70];
        v113 = v9[71];
        v94 = v9[68];
        v101 = v9[69];
        v77 = v9[66];
        v86 = v9[67];
        v57 = v9[64];
        v67 = v9[65];
        v37 = v9[62];
        v47 = v9[63];
        v17 = v9[60];
        v27 = v9[61];
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  gci_lst_inv_ctr=%u, gci_lst_rst_ctr=%u, gci_lst_sem_ctr=%u, gci_lst_rb_st=%u, gci_dbg01=%u, gci_dbg02=%u, gci_dbg03=%u , gci_dbg04=%u, gci_dbg05=%u, gci_lst_st_msk=%u, gci_inv_tx=%u,  gci_inv_rx=%u, gci_rst_tx= %u, gci_rst_rx=%u\n", v9[60], v9[61], v9[62], v9[63], v9[64], v9[65], v9[66], v9[67], v9[68], v9[69], v9[70], v9[71], v9[72], v9[73]);
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  gci_lst_inv_ctr=%u, gci_lst_rst_ctr=%u, gci_lst_sem_ctr=%u, gci_lst_rb_st=%u, gci_dbg01=%u, gci_dbg02=%u, gci_dbg03=%u , gci_dbg04=%u, gci_dbg05=%u, gci_lst_st_msk=%u, gci_inv_tx=%u,  gci_inv_rx=%u, gci_rst_tx= %u, gci_rst_rx=%u\n", v9[60], v9[61], v9[62], v9[63], v9[64], v9[65], v9[66], v9[67], v9[68], v9[69], v9[70], v9[71], v9[72], v9[73]);
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v131 = v9[88];
        v134 = *(v9 + 178);
        v120 = v9[86];
        v126 = v9[87];
        v108 = v9[84];
        v114 = v9[85];
        v95 = v9[82];
        v102 = v9[83];
        v78 = v9[80];
        v87 = v9[81];
        v58 = v9[78];
        v68 = v9[79];
        v38 = v9[76];
        v48 = v9[77];
        v18 = v9[74];
        v28 = v9[75];
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  gci_sem_ctr=%u, gci_invstate=%u, gci_ctl2=%u, gci_chan=%u, gci_cm=%u, gci_sc=%u, gci_rst_sc=%u, gci_prdc_rx=%u , gci_wk_rx=%u, gci_rmac_rx=%u, gci_tx_rx=%u, asym_intf_stats=%u,  asym_intf_ncal_crs_stat=%u, ed_crsEn= %d, nvcfg0=%d, cal_suppressed_cntr_ed=%u \n", v9[74], v9[75], v9[76], v9[77], v9[78], v9[79], v9[80], v9[81], v9[82], v9[83], v9[84], v9[85], v9[86], v9[87], v9[88], *(v9 + 178));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  gci_sem_ctr=%u, gci_invstate=%u, gci_ctl2=%u, gci_chan=%u, gci_cm=%u, gci_sc=%u, gci_rst_sc=%u, gci_prdc_rx=%u , gci_wk_rx=%u, gci_rmac_rx=%u, gci_tx_rx=%u, asym_intf_stats=%u,  asym_intf_ncal_crs_stat=%u, ed_crsEn= %d, nvcfg0=%d, cal_suppressed_cntr_ed=%u \n", v9[74], v9[75], v9[76], v9[77], v9[78], v9[79], v9[80], v9[81], v9[82], v9[83], v9[84], v9[85], v9[86], v9[87], v9[88], *(v9 + 178));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v135 = *(v9 + 193);
        v137 = *(v9 + 195);
        v127 = *(v9 + 192);
        v132 = *(v9 + 194);
        v115 = *(v9 + 190);
        v121 = *(v9 + 191);
        v103 = *(v9 + 188);
        v109 = *(v9 + 189);
        v88 = *(v9 + 186);
        v96 = *(v9 + 187);
        v69 = *(v9 + 184);
        v79 = *(v9 + 185);
        v49 = *(v9 + 182);
        v59 = *(v9 + 183);
        v29 = *(v9 + 180);
        v39 = *(v9 + 181);
        v19 = *(v9 + 179);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  sc_dccal_incc_cnt=%u, sc_noisecal_incc_cnt=%u, obss_need_updt=%u, obss_mit_status=%u, obss_final_rec_bw=%u, btc_mode=%u, asym_intf_ant_noise_idx=%u, asym_intf_pending_host_req_type=%u , asym_intf_ncal_crs_stat_idx=%u, rxsense_noise_idx=%d, rxsense_offset=%d, asym_intf_tx_smartcca_cm=%d,  asym_intf_rx_noise_mit_cm=%d, asym_intf_avg_noise[0]= %d, asym_intf_latest_noise[0]=%d, asym_intf_avg_noise[1]=%d, asym_intf_latest_noise[1]=%d\n", *(v9 + 179), *(v9 + 180), *(v9 + 181), *(v9 + 182), *(v9 + 183), *(v9 + 184), *(v9 + 185), *(v9 + 186), *(v9 + 187), *(v9 + 188), *(v9 + 189), *(v9 + 190), *(v9 + 191), *(v9 + 192), *(v9 + 194), *(v9 + 193), *(v9 + 195));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  sc_dccal_incc_cnt=%u, sc_noisecal_incc_cnt=%u, obss_need_updt=%u, obss_mit_status=%u, obss_final_rec_bw=%u, btc_mode=%u, asym_intf_ant_noise_idx=%u, asym_intf_pending_host_req_type=%u , asym_intf_ncal_crs_stat_idx=%u, rxsense_noise_idx=%d, rxsense_offset=%d, asym_intf_tx_smartcca_cm=%d,  asym_intf_rx_noise_mit_cm=%d, asym_intf_avg_noise[0]= %d, asym_intf_latest_noise[0]=%d, asym_intf_avg_noise[1]=%d, asym_intf_latest_noise[1]=%d\n", *(v9 + 179), *(v9 + 180), *(v9 + 181), *(v9 + 182), *(v9 + 183), *(v9 + 184), *(v9 + 185), *(v9 + 186), *(v9 + 187), *(v9 + 188), *(v9 + 189), *(v9 + 190), *(v9 + 191), *(v9 + 192), *(v9 + 194), *(v9 + 193), *(v9 + 195));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v80 = *(v9 + 202);
        v89 = *(v9 + 203);
        v60 = *(v9 + 200);
        v70 = *(v9 + 201);
        v40 = *(v9 + 198);
        v50 = *(v9 + 199);
        v20 = *(v9 + 196);
        v30 = *(v9 + 197);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  obss_curr_det[0] = %u, obss_curr_det[1] = %u, obss_curr_det[2] = %u, obss_curr_det[3] = %u, obss_curr_det[4] = %u, obss_curr_det[5] = %u, obss_curr_det[6] = %u, obss_curr_det[7] = %u \n", *(v9 + 196), *(v9 + 197), *(v9 + 198), *(v9 + 199), *(v9 + 200), *(v9 + 201), *(v9 + 202), *(v9 + 203));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  obss_curr_det[0] = %u, obss_curr_det[1] = %u, obss_curr_det[2] = %u, obss_curr_det[3] = %u, obss_curr_det[4] = %u, obss_curr_det[5] = %u, obss_curr_det[6] = %u, obss_curr_det[7] = %u \n", *(v9 + 196), *(v9 + 197), *(v9 + 198), *(v9 + 199), *(v9 + 200), *(v9 + 201), *(v9 + 202), *(v9 + 203));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v144 = *(v9 + 240);
        v145 = *(v9 + 241);
        v142 = *(v9 + 238);
        v143 = *(v9 + 239);
        v140 = *(v9 + 236);
        v141 = *(v9 + 237);
        v138 = v9[116];
        v139 = v9[117];
        v133 = v9[114];
        v136 = v9[115];
        v122 = v9[112];
        v128 = v9[113];
        v110 = *(v9 + 220);
        v116 = *(v9 + 221);
        v97 = *(v9 + 218);
        v104 = *(v9 + 219);
        v81 = *(v9 + 216);
        v90 = *(v9 + 217);
        v61 = v9[106];
        v71 = v9[107];
        v41 = v9[104];
        v51 = v9[105];
        v21 = v9[102];
        v31 = v9[103];
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  bad_txbaseidx_cnt[0]=%u curr_tssival[0]=%u pwridx_init[0]=%u auxphystats[0]=%d phystatsgaininfo[0]=%u flexgaininfo_A[0]=%u crsmin_pwr_idx[0]=%u, baseindxval[0]=%u, crsmin_pwr[0]=%d, noise_level_inst[0]=%d, tgt_pwr[0]=%d, estpwradj[0]=%d bad_txbaseidx_cnt[1]=%u curr_tssival[1]=%u pwridx_init[1]=%u auxphystats[1]=%d phystatsgaininfo[1]=%u flexgaininfo_A[1]=%u crsmin_pwr_idx[1]=%u, baseindxval[1]=%u, crsmin_pwr[1]=%d, noise_level_inst[1]=%d, tgt_pwr[1]=%d, estpwradj[1]=%d \n", v9[102], v9[103], v9[104], v9[105], v9[106], v9[107], *(v9 + 216), *(v9 + 217), *(v9 + 218), *(v9 + 219), *(v9 + 220), *(v9 + 221), v9[112], v9[113], v9[114], v9[115], v9[116], v9[117], *(v9 + 236), *(v9 + 237), *(v9 + 238), *(v9 + 239), *(v9 + 240), *(v9 + 241));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  bad_txbaseidx_cnt[0]=%u curr_tssival[0]=%u pwridx_init[0]=%u auxphystats[0]=%d phystatsgaininfo[0]=%u flexgaininfo_A[0]=%u crsmin_pwr_idx[0]=%u, baseindxval[0]=%u, crsmin_pwr[0]=%d, noise_level_inst[0]=%d, tgt_pwr[0]=%d, estpwradj[0]=%d bad_txbaseidx_cnt[1]=%u curr_tssival[1]=%u pwridx_init[1]=%u auxphystats[1]=%d phystatsgaininfo[1]=%u flexgaininfo_A[1]=%u crsmin_pwr_idx[1]=%u, baseindxval[1]=%u, crsmin_pwr[1]=%d, noise_level_inst[1]=%d, tgt_pwr[1]=%d, estpwradj[1]=%d \n", v9[102], v9[103], v9[104], v9[105], v9[106], v9[107], *(v9 + 216), *(v9 + 217), *(v9 + 218), *(v9 + 219), *(v9 + 220), *(v9 + 221), v9[112], v9[113], v9[114], v9[115], v9[116], v9[117], *(v9 + 236), *(v9 + 237), *(v9 + 238), *(v9 + 239), *(v9 + 240), *(v9 + 241));
      }

      v9 += 122;
      ++v8;
    }

    while (v8 < *(v5 + 4));
  }

  v10 = mach_continuous_time();
  result = 0;
  *(*(this + 9) + 35560) = v10;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV5(AppleBCMWLANCore *this, OSData *a2)
{
  v4 = *(*(this + 9) + 5432);
  if (!v4)
  {
    IO80211BssManager::isAssociated(0);
LABEL_8:
    v170 = 0;
    goto LABEL_9;
  }

  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(v4);
  if (IO80211BssManager::isAssociated(*(*(this + 9) + 5432)))
  {
    v6 = CurrentBSS == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_8;
  }

  v7 = AppleBCMWLANBssManager::getCurrentBSS(*(*(this + 9) + 5432));
  v170 = (*(*v7 + 256))(v7);
LABEL_9:
  if (!a2 || OSData::getLength(a2) <= 7)
  {
    AppleBCMWLANCore::parsePHYEcounterV5(this);
    return v172;
  }

  if ((OSData::getBytesNoCopy(a2) & 3) != 0)
  {
    AppleBCMWLANCore::parsePHYEcounterV5(this);
    return v172;
  }

  *v173 = -21846;
  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (*BytesNoCopy != 5)
  {
    AppleBCMWLANCore::parsePHYEcounterV5(this);
    return v172;
  }

  v9 = BytesNoCopy;
  v10 = 260 * *(BytesNoCopy + 4) + 8;
  if (BytesNoCopy[1] != v10 || OSData::getLength(a2) != v10)
  {
    AppleBCMWLANCore::parsePHYEcounterV5(this, a2, v10, &v172);
    return v172;
  }

  mach_continuous_time();
  v11 = *(*(this + 9) + 35560);
  absolutetime_to_nanoseconds();
  if (*(v9 + 4))
  {
    v12 = 0;
    v13 = v9 + 4;
    v171 = v9;
    do
    {
      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v96 = v13[5];
        v107 = *(v13 + 12);
        v71 = v13[3];
        v84 = v13[4];
        v45 = v13[1];
        v58 = v13[2];
        v19 = *v9;
        v32 = *v13;
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  Version = %u, ChanSpec=0x%04x, phy_wdg=%u, noise_req=%u, noise_crsbit=%u, noise_apply=%u, cal_counter=%u, slice=%u\n", *v9, *v13, v13[1], v13[2], v13[3], v13[4], v13[5], *(v13 + 12));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  Version = %u, ChanSpec=0x%04x, phy_wdg=%u, noise_req=%u, noise_crsbit=%u, noise_apply=%u, cal_counter=%u, slice=%u\n", *v9, *v13, v13[1], v13[2], v13[3], v13[4], v13[5], *(v13 + 12));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v72 = *(v13 + 13);
        v85 = *(v13 + 14);
        v46 = *(v13 + 15);
        v59 = *(v13 + 16);
        v20 = *(v13 + 18);
        v33 = *(v13 + 19);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  gbd_ofdm_desense=%u, gbd_bphy_desense=%u, gbd_bphy_sleep_counter=%u, gbd_ofdm_sleep_counter=%u, rxchain=%u, txchain=%u \n", *(v13 + 18), *(v13 + 19), *(v13 + 15), *(v13 + 16), *(v13 + 13), *(v13 + 14));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  gbd_ofdm_desense=%u, gbd_bphy_desense=%u, gbd_bphy_sleep_counter=%u, gbd_ofdm_sleep_counter=%u, rxchain=%u, txchain=%u \n", *(v13 + 18), *(v13 + 19), *(v13 + 15), *(v13 + 16), *(v13 + 13), *(v13 + 14));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v97 = *(v13 + 29);
        v108 = v13[16];
        v73 = *(v13 + 22);
        v86 = *(v13 + 28);
        v47 = *(v13 + 6);
        v60 = *(v13 + 23);
        v21 = *(v13 + 20);
        v34 = *(v13 + 21);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  chiptemp=%d, femtemp=%d, btcx_mode=%d, ltecx_mode=%d, weakest_rssi=%d, chan_switch_cnt=%u, phycal_disable=%u, featureflag=%u\n", *(v13 + 20), *(v13 + 21), *(v13 + 6), *(v13 + 23), *(v13 + 22), *(v13 + 28), *(v13 + 29), v13[16]);
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  chiptemp=%d, femtemp=%d, btcx_mode=%d, ltecx_mode=%d, weakest_rssi=%d, chan_switch_cnt=%u, phycal_disable=%u, featureflag=%u\n", *(v13 + 20), *(v13 + 21), *(v13 + 6), *(v13 + 23), *(v13 + 22), *(v13 + 28), *(v13 + 29), v13[16]);
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v148 = *(v13 + 17);
        v154 = *(v13 + 18);
        v136 = *(v13 + 15);
        v142 = *(v13 + 16);
        v124 = *(v13 + 13);
        v130 = *(v13 + 14);
        v109 = v13[24];
        v118 = v13[25];
        v87 = v13[22];
        v98 = v13[23];
        v61 = v13[20];
        v74 = v13[21];
        v35 = v13[18];
        v48 = v13[19];
        v22 = v13[17];
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  deaf_count=%u, noise_mmt_overdue=%u, crsmin_pwr_apply_cnt=%u, ed_crs_status=%u, preempt_status1=%u, preempt_status2=%u, preempt_status3=%u, preempt_status4=%u , counter_noise_iqest_to=%u, cca_stats_total_glitch=%u, cca_stats_bphy_glitch=%u, cca_stats_total_badplcp=%u,  cca_stats_bphy_badplcp=%u, cca_stats_mbsstime= %u, cca_stats_ed_duration=%u\n", v13[17], v13[18], v13[19], v13[20], v13[21], v13[22], v13[23], v13[24], v13[25], *(v13 + 13), *(v13 + 14), *(v13 + 15), *(v13 + 16), *(v13 + 17), *(v13 + 18));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  deaf_count=%u, noise_mmt_overdue=%u, crsmin_pwr_apply_cnt=%u, ed_crs_status=%u, preempt_status1=%u, preempt_status2=%u, preempt_status3=%u, preempt_status4=%u , counter_noise_iqest_to=%u, cca_stats_total_glitch=%u, cca_stats_bphy_glitch=%u, cca_stats_total_badplcp=%u,  cca_stats_bphy_badplcp=%u, cca_stats_mbsstime= %u, cca_stats_ed_duration=%u\n", v13[17], v13[18], v13[19], v13[20], v13[21], v13[22], v13[23], v13[24], v13[25], *(v13 + 13), *(v13 + 14), *(v13 + 15), *(v13 + 16), *(v13 + 17), *(v13 + 18));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v149 = v13[58];
        v155 = v13[59];
        v137 = v13[56];
        v143 = v13[57];
        v125 = v13[54];
        v131 = v13[55];
        v110 = v13[52];
        v119 = v13[53];
        v88 = *(v13 + 24);
        v99 = *(v13 + 25);
        v62 = *(v13 + 22);
        v75 = *(v13 + 23);
        v36 = *(v13 + 20);
        v49 = *(v13 + 21);
        v23 = *(v13 + 19);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  measurehold=%u, rxsense_disable_req_ch=%u, ocl_disable_reqs=%u, interference_mode=%u, power_mode=%u, obss_last_read_time=%u, asym_intf_ed_thresh=%d, obss_mit_bw=%u , obss_stats_cnt=%u, dynbw_init_reducebw_cnt=%u, dynbw_resp_reducebw_cnt=%u, dynbw_rxdata_reducebw_cnt=%u,  obss_mmt_skip_cnt=%u, obss_mmt_no_result_cnt= %u, obss_mmt_intr_err_cnt=%u\n", *(v13 + 19), *(v13 + 20), *(v13 + 21), *(v13 + 22), *(v13 + 23), *(v13 + 24), *(v13 + 25), v13[52], v13[53], v13[54], v13[55], v13[56], v13[57], v13[58], v13[59]);
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  measurehold=%u, rxsense_disable_req_ch=%u, ocl_disable_reqs=%u, interference_mode=%u, power_mode=%u, obss_last_read_time=%u, asym_intf_ed_thresh=%d, obss_mit_bw=%u , obss_stats_cnt=%u, dynbw_init_reducebw_cnt=%u, dynbw_resp_reducebw_cnt=%u, dynbw_rxdata_reducebw_cnt=%u,  obss_mmt_skip_cnt=%u, obss_mmt_no_result_cnt= %u, obss_mmt_intr_err_cnt=%u\n", *(v13 + 19), *(v13 + 20), *(v13 + 21), *(v13 + 22), *(v13 + 23), *(v13 + 24), *(v13 + 25), v13[52], v13[53], v13[54], v13[55], v13[56], v13[57], v13[58], v13[59]);
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v144 = v13[72];
        v150 = v13[73];
        v132 = v13[70];
        v138 = v13[71];
        v120 = v13[68];
        v126 = v13[69];
        v100 = v13[66];
        v111 = v13[67];
        v76 = v13[64];
        v89 = v13[65];
        v50 = v13[62];
        v63 = v13[63];
        v24 = v13[60];
        v37 = v13[61];
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  gci_lst_inv_ctr=%u, gci_lst_rst_ctr=%u, gci_lst_sem_ctr=%u, gci_lst_rb_st=%u, gci_dbg01=%u, gci_dbg02=%u, gci_dbg03=%u , gci_dbg04=%u, gci_dbg05=%u, gci_lst_st_msk=%u, gci_inv_tx=%u,  gci_inv_rx=%u, gci_rst_tx= %u, gci_rst_rx=%u\n", v13[60], v13[61], v13[62], v13[63], v13[64], v13[65], v13[66], v13[67], v13[68], v13[69], v13[70], v13[71], v13[72], v13[73]);
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  gci_lst_inv_ctr=%u, gci_lst_rst_ctr=%u, gci_lst_sem_ctr=%u, gci_lst_rb_st=%u, gci_dbg01=%u, gci_dbg02=%u, gci_dbg03=%u , gci_dbg04=%u, gci_dbg05=%u, gci_lst_st_msk=%u, gci_inv_tx=%u,  gci_inv_rx=%u, gci_rst_tx= %u, gci_rst_rx=%u\n", v13[60], v13[61], v13[62], v13[63], v13[64], v13[65], v13[66], v13[67], v13[68], v13[69], v13[70], v13[71], v13[72], v13[73]);
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v156 = v13[88];
        v158 = *(v13 + 178);
        v145 = v13[86];
        v151 = v13[87];
        v133 = v13[84];
        v139 = v13[85];
        v121 = v13[82];
        v127 = v13[83];
        v101 = v13[80];
        v112 = v13[81];
        v77 = v13[78];
        v90 = v13[79];
        v51 = v13[76];
        v64 = v13[77];
        v25 = v13[74];
        v38 = v13[75];
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  gci_sem_ctr=%u, gci_invstate=%u, gci_ctl2=%u, gci_chan=%u, gci_cm=%u, gci_sc=%u, gci_rst_sc=%u, gci_prdc_rx=%u , gci_wk_rx=%u, gci_rmac_rx=%u, gci_tx_rx=%u, asym_intf_stats=%u,  asym_intf_ncal_crs_stat=%u, ed_crsEn= %d, nvcfg0=%d, cal_suppressed_cntr_ed=%u \n", v13[74], v13[75], v13[76], v13[77], v13[78], v13[79], v13[80], v13[81], v13[82], v13[83], v13[84], v13[85], v13[86], v13[87], v13[88], *(v13 + 178));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  gci_sem_ctr=%u, gci_invstate=%u, gci_ctl2=%u, gci_chan=%u, gci_cm=%u, gci_sc=%u, gci_rst_sc=%u, gci_prdc_rx=%u , gci_wk_rx=%u, gci_rmac_rx=%u, gci_tx_rx=%u, asym_intf_stats=%u,  asym_intf_ncal_crs_stat=%u, ed_crsEn= %d, nvcfg0=%d, cal_suppressed_cntr_ed=%u \n", v13[74], v13[75], v13[76], v13[77], v13[78], v13[79], v13[80], v13[81], v13[82], v13[83], v13[84], v13[85], v13[86], v13[87], v13[88], *(v13 + 178));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v146 = *(v13 + 191);
        v152 = *(v13 + 192);
        v134 = *(v13 + 189);
        v140 = *(v13 + 190);
        v122 = *(v13 + 187);
        v128 = *(v13 + 188);
        v102 = *(v13 + 30);
        v113 = *(v13 + 31);
        v78 = *(v13 + 185);
        v91 = *(v13 + 186);
        v52 = *(v13 + 17);
        v65 = *(v13 + 184);
        v26 = *(v13 + 179);
        v39 = *(v13 + 180);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  sc_dccal_incc_cnt=%u, sc_noisecal_incc_cnt=%u, btc_mode=%u, asym_intf_ant_noise_idx=%u, asym_intf_pending_host_req_type=%u,  asym_intf_ncal_crs_stat_idx=%u, rxsense_noise_idx=%d, rxsense_offset=%d, asym_intf_tx_smartcca_cm=%d, asym_intf_rx_noise_mit_cm=%d,  asym_intf_avg_noise[0/1]= [%d, %d], asym_intf_latest_noise[0/1]=[%d, %d]\n", *(v13 + 179), *(v13 + 180), *(v13 + 17), *(v13 + 184), *(v13 + 185), *(v13 + 186), *(v13 + 30), *(v13 + 31), *(v13 + 187), *(v13 + 188), *(v13 + 189), *(v13 + 190), *(v13 + 191), *(v13 + 192));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  sc_dccal_incc_cnt=%u, sc_noisecal_incc_cnt=%u, btc_mode=%u, asym_intf_ant_noise_idx=%u, asym_intf_pending_host_req_type=%u,  asym_intf_ncal_crs_stat_idx=%u, rxsense_noise_idx=%d, rxsense_offset=%d, asym_intf_tx_smartcca_cm=%d, asym_intf_rx_noise_mit_cm=%d,  asym_intf_avg_noise[0/1]= [%d, %d], asym_intf_latest_noise[0/1]=[%d, %d]\n", *(v13 + 179), *(v13 + 180), *(v13 + 17), *(v13 + 184), *(v13 + 185), *(v13 + 186), *(v13 + 30), *(v13 + 31), *(v13 + 187), *(v13 + 188), *(v13 + 189), *(v13 + 190), *(v13 + 191), *(v13 + 192));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v168 = *(v13 + 221);
        v169 = *(v13 + 249);
        v9 = v171;
        v166 = *(v13 + 220);
        v167 = *(v13 + 248);
        v164 = *(v13 + 219);
        v165 = *(v13 + 247);
        v162 = *(v13 + 218);
        v163 = *(v13 + 246);
        v160 = *(v13 + 217);
        v161 = *(v13 + 245);
        v157 = *(v13 + 216);
        v159 = *(v13 + 244);
        v147 = v13[107];
        v153 = v13[121];
        v135 = v13[106];
        v141 = v13[120];
        v123 = v13[105];
        v129 = v13[119];
        v103 = v13[104];
        v114 = v13[118];
        v79 = v13[103];
        v92 = v13[117];
        v53 = v13[102];
        v66 = v13[116];
        v27 = *(v13 + 222);
        v40 = *(v13 + 250);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        v9 = v171;
        IOLog("LQM-WIFI-PHY:  ed_threshold[0/1]= [%d, %d], bad_txbaseidx_cnt[0/1]=[%u, %u], curr_tssival[0/1]=[%u, %u], pwridx_init[0/1]=[%u, %u], auxphystats[0/1]=[%d,%d],  phystatsgaininfo[0/1]=[%u, %u], flexgaininfo_A[0/1]=[%u, %u], crsmin_pwr_idx[0/1]=[%u, %u], baseindxval[0/1]=[%u, %u], crsmin_pwr[0/1]=[%d, %d],  noise_level_inst[0/1]=[%d, %d], tgt_pwr[0/1]=[%d, %d], estpwradj[0/1]=[%d, %d] \n", *(v13 + 222), *(v13 + 250), v13[102], v13[116], v13[103], v13[117], v13[104], v13[118], v13[105], v13[119], v13[106], v13[120], v13[107], v13[121], *(v13 + 216), *(v13 + 244), *(v13 + 217), *(v13 + 245), *(v13 + 218), *(v13 + 246), *(v13 + 219), *(v13 + 247), *(v13 + 220), *(v13 + 248), *(v13 + 221), *(v13 + 249));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        v9 = v171;
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  ed_threshold[0/1]= [%d, %d], bad_txbaseidx_cnt[0/1]=[%u, %u], curr_tssival[0/1]=[%u, %u], pwridx_init[0/1]=[%u, %u], auxphystats[0/1]=[%d,%d],  phystatsgaininfo[0/1]=[%u, %u], flexgaininfo_A[0/1]=[%u, %u], crsmin_pwr_idx[0/1]=[%u, %u], baseindxval[0/1]=[%u, %u], crsmin_pwr[0/1]=[%d, %d],  noise_level_inst[0/1]=[%d, %d], tgt_pwr[0/1]=[%d, %d], estpwradj[0/1]=[%d, %d] \n", *(v13 + 222), *(v13 + 250), v13[102], v13[116], v13[103], v13[117], v13[104], v13[118], v13[105], v13[119], v13[106], v13[120], v13[107], v13[121], *(v13 + 216), *(v13 + 244), *(v13 + 217), *(v13 + 245), *(v13 + 218), *(v13 + 246), *(v13 + 219), *(v13 + 247), *(v13 + 220), *(v13 + 248), *(v13 + 221), *(v13 + 249));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v67 = *(v13 + 183);
        v80 = *(v13 + 24);
        v41 = *(v13 + 182);
        v54 = v13[52];
        v28 = *(v13 + 181);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  OBSS Info --> need_updt: %u, mit_status: %u, obss_mit_bw=%u, last_rec_bw: %u, obss_last_read_time=%u \n", *(v13 + 181), *(v13 + 182), v13[52], *(v13 + 183), *(v13 + 24));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  OBSS Info --> need_updt: %u, mit_status: %u, obss_mit_bw=%u, last_rec_bw: %u, obss_last_read_time=%u \n", *(v13 + 181), *(v13 + 182), v13[52], *(v13 + 183), *(v13 + 24));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v104 = *(v13 + 230);
        v115 = *(v13 + 231);
        v81 = *(v13 + 228);
        v93 = *(v13 + 229);
        v55 = *(v13 + 226);
        v68 = *(v13 + 227);
        v29 = *(v13 + 224);
        v42 = *(v13 + 225);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  OBSS PWR Estimation Core0 --> LLL: %d  LLU: %d  LUL: %d  LUU: %d  ULL: %d  ULU: %d  UUL: %d  UUU: %d\n", *(v13 + 224), *(v13 + 225), *(v13 + 226), *(v13 + 227), *(v13 + 228), *(v13 + 229), *(v13 + 230), *(v13 + 231));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  OBSS PWR Estimation Core0 --> LLL: %d  LLU: %d  LUL: %d  LUU: %d  ULL: %d  ULU: %d  UUL: %d  UUU: %d\n", *(v13 + 224), *(v13 + 225), *(v13 + 226), *(v13 + 227), *(v13 + 228), *(v13 + 229), *(v13 + 230), *(v13 + 231));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v105 = *(v13 + 258);
        v116 = *(v13 + 259);
        v82 = *(v13 + 256);
        v94 = *(v13 + 257);
        v56 = *(v13 + 254);
        v69 = *(v13 + 255);
        v30 = *(v13 + 252);
        v43 = *(v13 + 253);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  OBSS PWR Estimation Core1 --> LLL: %d  LLU: %d  LUL: %d  LUU: %d  ULL: %d  ULU: %d  UUL: %d  UUU: %d\n", *(v13 + 252), *(v13 + 253), *(v13 + 254), *(v13 + 255), *(v13 + 256), *(v13 + 257), *(v13 + 258), *(v13 + 259));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  OBSS PWR Estimation Core1 --> LLL: %d  LLU: %d  LUL: %d  LUU: %d  ULL: %d  ULU: %d  UUL: %d  UUU: %d\n", *(v13 + 252), *(v13 + 253), *(v13 + 254), *(v13 + 255), *(v13 + 256), *(v13 + 257), *(v13 + 258), *(v13 + 259));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v106 = *(v13 + 199);
        v117 = *(v13 + 200);
        v83 = *(v13 + 197);
        v95 = *(v13 + 198);
        v57 = *(v13 + 195);
        v70 = *(v13 + 196);
        v31 = *(v13 + 193);
        v44 = *(v13 + 194);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  OBSS --> detection stats 0: %u  1: %u  2: %u  3: %u  4: %u  5: %u  6: %u  7: %u \n", *(v13 + 193), *(v13 + 194), *(v13 + 195), *(v13 + 196), *(v13 + 197), *(v13 + 198), *(v13 + 199), *(v13 + 200));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  OBSS --> detection stats 0: %u  1: %u  2: %u  3: %u  4: %u  5: %u  6: %u  7: %u \n", *(v13 + 193), *(v13 + 194), *(v13 + 195), *(v13 + 196), *(v13 + 197), *(v13 + 198), *(v13 + 199), *(v13 + 200));
      }

      AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(this + 9) + 17744), *v13);
      if (v170 == ChanSpecGetPrimaryChannel())
      {
        v14 = *v13;
        if (v14 >= 0x4000 && (v14 & 0x3800) != 0x1000)
        {
          if (AppleBCMWLANCore::featureFlagIsBitSet(this, 101))
          {
            *(*(this + 9) + 35496) = *(v13 + 24);
            *(*(this + 9) + 35476) = *(v13 + 181);
            *(*(this + 9) + 35477) = *(v13 + 182);
            *(*(this + 9) + 35478) = *(v13 + 104);
            *(*(this + 9) + 35479) = *(v13 + 183);
            *(*(this + 9) + 35480) = AppleBCMWLANLQM::getRecentRxPlcpErrCnt(*(*(this + 9) + 5608));
            *(*(this + 9) + 35484) = AppleBCMWLANLQM::getRecentRxBadFcsCnt(*(*(this + 9) + 5608));
            *(*(this + 9) + 35488) = AppleBCMWLANLQM::getRecentRxFramesCnt(*(*(this + 9) + 5608));
            *(*(this + 9) + 35492) = *(*(this + 9) + 30656);
            AppleBCMWLANLQM::getPerCoreRssi(*(*(this + 9) + 5608), v173);
            *(*(this + 9) + 35516) = v173[0];
            *(*(this + 9) + 35517) = v173[1];
            *(*(this + 9) + 35500) = *(v13 + 28);
            *(*(this + 9) + 35508) = *(v13 + 126);
            v15 = *(this + 9);
            v16 = *(v15 + 11288);
            if (v16)
            {
              IO80211Controller::postMessage(this, v16, 0xDAu, (v15 + 35476), 0x2CuLL, 1);
            }
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePHYEcounterV5(this);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePHYEcounterV5(this);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePHYEcounterV5(this);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePHYEcounterV5(this);
          }
        }
      }

      v13 += 130;
      ++v12;
    }

    while (v12 < *(v9 + 4));
  }

  v17 = mach_continuous_time();
  result = 0;
  *(*(this + 9) + 35560) = v17;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV7(AppleBCMWLANCore *this, OSData *a2)
{
  v4 = *(*(this + 9) + 5432);
  if (!v4)
  {
    IO80211BssManager::isAssociated(0);
LABEL_8:
    v171 = 0;
    goto LABEL_9;
  }

  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(v4);
  if (IO80211BssManager::isAssociated(*(*(this + 9) + 5432)))
  {
    v6 = CurrentBSS == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_8;
  }

  v7 = AppleBCMWLANBssManager::getCurrentBSS(*(*(this + 9) + 5432));
  v171 = (*(*v7 + 256))(v7);
LABEL_9:
  if (!a2 || OSData::getLength(a2) <= 7)
  {
    AppleBCMWLANCore::parsePHYEcounterV7(this);
    return v173;
  }

  if ((OSData::getBytesNoCopy(a2) & 3) != 0)
  {
    AppleBCMWLANCore::parsePHYEcounterV7(this);
    return v173;
  }

  *v174 = -21846;
  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (*BytesNoCopy != 7)
  {
    AppleBCMWLANCore::parsePHYEcounterV7(this);
    return v173;
  }

  v9 = BytesNoCopy;
  v10 = 344 * *(BytesNoCopy + 4) + 8;
  if (BytesNoCopy[1] != v10 || OSData::getLength(a2) != v10)
  {
    AppleBCMWLANCore::parsePHYEcounterV7(this, a2, v10, &v173);
    return v173;
  }

  mach_continuous_time();
  v11 = *(*(this + 9) + 35560);
  absolutetime_to_nanoseconds();
  if (*(v9 + 4))
  {
    v12 = 0;
    v13 = v9 + 4;
    v172 = v9;
    do
    {
      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v103 = v13[5];
        v115 = *(v13 + 12);
        v75 = v13[3];
        v89 = v13[4];
        v47 = v13[1];
        v61 = v13[2];
        v19 = *v9;
        v33 = *v13;
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  Version = %u, ChanSpec=0x%04x, phy_wdg=%u, noise_req=%u, noise_crsbit=%u, noise_apply=%u, cal_counter=%u, slice=%u\n", *v9, *v13, v13[1], v13[2], v13[3], v13[4], v13[5], *(v13 + 12));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  Version = %u, ChanSpec=0x%04x, phy_wdg=%u, noise_req=%u, noise_crsbit=%u, noise_apply=%u, cal_counter=%u, slice=%u\n", *v9, *v13, v13[1], v13[2], v13[3], v13[4], v13[5], *(v13 + 12));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v76 = *(v13 + 13);
        v90 = *(v13 + 14);
        v48 = *(v13 + 15);
        v62 = *(v13 + 16);
        v20 = *(v13 + 18);
        v34 = *(v13 + 19);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  gbd_ofdm_desense=%u, gbd_bphy_desense=%u, gbd_bphy_sleep_counter=%u, gbd_ofdm_sleep_counter=%u, rxchain=%u, txchain=%u \n", *(v13 + 18), *(v13 + 19), *(v13 + 15), *(v13 + 16), *(v13 + 13), *(v13 + 14));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  gbd_ofdm_desense=%u, gbd_bphy_desense=%u, gbd_bphy_sleep_counter=%u, gbd_ofdm_sleep_counter=%u, rxchain=%u, txchain=%u \n", *(v13 + 18), *(v13 + 19), *(v13 + 15), *(v13 + 16), *(v13 + 13), *(v13 + 14));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v104 = *(v13 + 29);
        v116 = v13[18];
        v77 = *(v13 + 22);
        v91 = *(v13 + 28);
        v49 = *(v13 + 6);
        v63 = *(v13 + 23);
        v21 = *(v13 + 20);
        v35 = *(v13 + 21);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  chiptemp=%d, femtemp=%d, btcx_mode=%d, ltecx_mode=%d, weakest_rssi=%d, chan_switch_cnt=%u, phycal_disable=%u, featureflag=%u\n", *(v13 + 20), *(v13 + 21), *(v13 + 6), *(v13 + 23), *(v13 + 22), *(v13 + 28), *(v13 + 29), v13[18]);
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  chiptemp=%d, femtemp=%d, btcx_mode=%d, ltecx_mode=%d, weakest_rssi=%d, chan_switch_cnt=%u, phycal_disable=%u, featureflag=%u\n", *(v13 + 20), *(v13 + 21), *(v13 + 6), *(v13 + 23), *(v13 + 22), *(v13 + 28), *(v13 + 29), v13[18]);
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v140 = *(v13 + 17);
        v146 = *(v13 + 18);
        v127 = *(v13 + 15);
        v134 = *(v13 + 16);
        v105 = *(v13 + 13);
        v117 = *(v13 + 14);
        v78 = v13[24];
        v92 = v13[21];
        v50 = v13[22];
        v64 = v13[23];
        v22 = v13[19];
        v36 = v13[20];
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  deaf_count=%u, noise_mmt_overdue=%u, crsmin_pwr_apply_cnt=%u, ed_crs_status=%u, preempt_status2=%u,  counter_noise_iqest_to=%u, cca_stats_total_glitch=%u, cca_stats_bphy_glitch=%u, cca_stats_total_badplcp=%u,  cca_stats_bphy_badplcp=%u, cca_stats_mbsstime= %u, cca_stats_ed_duration=%u\n", v13[19], v13[20], v13[22], v13[23], v13[24], v13[21], *(v13 + 13), *(v13 + 14), *(v13 + 15), *(v13 + 16), *(v13 + 17), *(v13 + 18));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  deaf_count=%u, noise_mmt_overdue=%u, crsmin_pwr_apply_cnt=%u, ed_crs_status=%u, preempt_status2=%u,  counter_noise_iqest_to=%u, cca_stats_total_glitch=%u, cca_stats_bphy_glitch=%u, cca_stats_total_badplcp=%u,  cca_stats_bphy_badplcp=%u, cca_stats_mbsstime= %u, cca_stats_ed_duration=%u\n", v13[19], v13[20], v13[22], v13[23], v13[24], v13[21], *(v13 + 13), *(v13 + 14), *(v13 + 15), *(v13 + 16), *(v13 + 17), *(v13 + 18));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v155 = v13[53];
        v158 = v13[54];
        v147 = v13[59];
        v151 = v13[52];
        v135 = v13[57];
        v141 = v13[58];
        v118 = v13[50];
        v128 = v13[51];
        v93 = *(v13 + 24);
        v106 = *(v13 + 23);
        v65 = *(v13 + 21);
        v79 = *(v13 + 22);
        v37 = *(v13 + 8);
        v51 = *(v13 + 20);
        v23 = *(v13 + 19);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  measurehold=%u, rxsense_disable_req_ch=%u, ocl_disable_reqs=%u, interference_mode=%u, power_mode=%u, obss_last_read_time=%u, asym_intf_ed_thresh=%d, obss_mit_bw=%u , obss_stats_cnt=%u, dynbw_init_reducebw_cnt=%u, dynbw_resp_reducebw_cnt=%u, dynbw_rxdata_reducebw_cnt=%u,  obss_mmt_skip_cnt=%u, obss_mmt_no_result_cnt= %u, obss_mmt_intr_err_cnt=%u\n", *(v13 + 19), *(v13 + 8), *(v13 + 20), *(v13 + 21), *(v13 + 22), *(v13 + 24), *(v13 + 23), v13[50], v13[51], v13[57], v13[58], v13[59], v13[52], v13[53], v13[54]);
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  measurehold=%u, rxsense_disable_req_ch=%u, ocl_disable_reqs=%u, interference_mode=%u, power_mode=%u, obss_last_read_time=%u, asym_intf_ed_thresh=%d, obss_mit_bw=%u , obss_stats_cnt=%u, dynbw_init_reducebw_cnt=%u, dynbw_resp_reducebw_cnt=%u, dynbw_rxdata_reducebw_cnt=%u,  obss_mmt_skip_cnt=%u, obss_mmt_no_result_cnt= %u, obss_mmt_intr_err_cnt=%u\n", *(v13 + 19), *(v13 + 8), *(v13 + 20), *(v13 + 21), *(v13 + 22), *(v13 + 24), *(v13 + 23), v13[50], v13[51], v13[57], v13[58], v13[59], v13[52], v13[53], v13[54]);
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v107 = *(v13 + 141);
        v119 = *(v13 + 48);
        v80 = *(v13 + 137);
        v94 = *(v13 + 140);
        v52 = v13[60];
        v66 = v13[61];
        v24 = v13[62];
        v38 = v13[63];
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  asym_intf_stats=%u, asym_intf_ncal_crs_stat=%u, ed_crsEn= %d, nvcfg0=%d, cal_suppressed_cntr_ed=%u,  dcc_digi_gain=%d, dcc_est_overflow=%d\n, smrcDebug1=0x%x\n", v13[62], v13[63], v13[60], v13[61], *(v13 + 137), *(v13 + 140), *(v13 + 141), *(v13 + 48));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  asym_intf_stats=%u, asym_intf_ncal_crs_stat=%u, ed_crsEn= %d, nvcfg0=%d, cal_suppressed_cntr_ed=%u,  dcc_digi_gain=%d, dcc_est_overflow=%d\n, smrcDebug1=0x%x\n", v13[62], v13[63], v13[60], v13[61], *(v13 + 137), *(v13 + 140), *(v13 + 141), *(v13 + 48));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v148 = v13[93];
        v152 = v13[94];
        v136 = v13[89];
        v142 = v13[92];
        v120 = v13[85];
        v129 = v13[86];
        v95 = *(v13 + 41);
        v108 = v13[84];
        v67 = *(v13 + 39);
        v81 = *(v13 + 40);
        v39 = *(v13 + 37);
        v53 = *(v13 + 38);
        v25 = *(v13 + 36);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  fbcx_info[1 to 6]=[0x%x,0x%x,0x%x,0x%x,0x%x,0x%x], scan[info:%d, starts:%d, detect:%d, good_fcs:%d, bad_fcs:%d, busy:%d, err:%d]\n", *(v13 + 36), *(v13 + 37), *(v13 + 38), *(v13 + 39), *(v13 + 40), *(v13 + 41), v13[84], v13[85], v13[86], v13[89], v13[92], v13[93], v13[94]);
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  fbcx_info[1 to 6]=[0x%x,0x%x,0x%x,0x%x,0x%x,0x%x], scan[info:%d, starts:%d, detect:%d, good_fcs:%d, bad_fcs:%d, busy:%d, err:%d]\n", *(v13 + 36), *(v13 + 37), *(v13 + 38), *(v13 + 39), *(v13 + 40), *(v13 + 41), v13[84], v13[85], v13[86], v13[89], v13[92], v13[93], v13[94]);
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v121 = v13[112];
        v130 = v13[113];
        v96 = v13[110];
        v109 = v13[111];
        v68 = v13[108];
        v82 = v13[109];
        v40 = v13[107];
        v54 = v13[99];
        v26 = v13[98];
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  cal_code[main:0x%x, pll2g:0x%x, 5g:0x%x], phy_cal_debug=[1:0x%x, 2:0x%x], ml_req[tx:%d, tot_retry:%d], ml_resp[rx:%d, match:%d]\n", v13[98], v13[107], v13[99], v13[108], v13[109], v13[110], v13[111], v13[112], v13[113]);
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  cal_code[main:0x%x, pll2g:0x%x, 5g:0x%x], phy_cal_debug=[1:0x%x, 2:0x%x], ml_req[tx:%d, tot_retry:%d], ml_resp[rx:%d, match:%d]\n", v13[98], v13[107], v13[99], v13[108], v13[109], v13[110], v13[111], v13[112], v13[113]);
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v137 = v13[121];
        v143 = v13[122];
        v122 = v13[119];
        v131 = v13[120];
        v97 = v13[117];
        v110 = v13[118];
        v69 = v13[115];
        v83 = v13[116];
        v41 = v13[25];
        v55 = v13[95];
        v27 = *(v13 + 229);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  pa_mode=%u, debug[1 to 10] = [0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x]\n", *(v13 + 229), v13[25], v13[95], v13[115], v13[116], v13[117], v13[118], v13[119], v13[120], v13[121], v13[122]);
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  pa_mode=%u, debug[1 to 10] = [0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x]\n", *(v13 + 229), v13[25], v13[95], v13[115], v13[116], v13[117], v13[118], v13[119], v13[120], v13[121], v13[122]);
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v153 = *(v13 + 135);
        v156 = *(v13 + 136);
        v144 = *(v13 + 133);
        v149 = *(v13 + 134);
        v132 = *(v13 + 131);
        v138 = *(v13 + 132);
        v111 = *(v13 + 30);
        v123 = *(v13 + 31);
        v84 = *(v13 + 129);
        v98 = *(v13 + 130);
        v56 = *(v13 + 17);
        v70 = *(v13 + 128);
        v28 = *(v13 + 138);
        v42 = *(v13 + 139);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  sc_dccal_incc_cnt=%u, sc_noisecal_incc_cnt=%u, btc_mode=%u, asym_intf_ant_noise_idx=%u, asym_intf_pending_host_req_type=%u,  asym_intf_ncal_crs_stat_idx=%u, rxsense_noise_idx=%d, rxsense_offset=%d, asym_intf_tx_smartcca_cm=%d, asym_intf_rx_noise_mit_cm=%d,  asym_intf_avg_noise[0/1]= [%d, %d], asym_intf_latest_noise[0/1]=[%d, %d]\n", *(v13 + 138), *(v13 + 139), *(v13 + 17), *(v13 + 128), *(v13 + 129), *(v13 + 130), *(v13 + 30), *(v13 + 31), *(v13 + 131), *(v13 + 132), *(v13 + 133), *(v13 + 134), *(v13 + 135), *(v13 + 136));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  sc_dccal_incc_cnt=%u, sc_noisecal_incc_cnt=%u, btc_mode=%u, asym_intf_ant_noise_idx=%u, asym_intf_pending_host_req_type=%u,  asym_intf_ncal_crs_stat_idx=%u, rxsense_noise_idx=%d, rxsense_offset=%d, asym_intf_tx_smartcca_cm=%d, asym_intf_rx_noise_mit_cm=%d,  asym_intf_avg_noise[0/1]= [%d, %d], asym_intf_latest_noise[0/1]=[%d, %d]\n", *(v13 + 138), *(v13 + 139), *(v13 + 17), *(v13 + 128), *(v13 + 129), *(v13 + 130), *(v13 + 30), *(v13 + 31), *(v13 + 131), *(v13 + 132), *(v13 + 133), *(v13 + 134), *(v13 + 135), *(v13 + 136));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v169 = *(v13 + 265);
        v170 = *(v13 + 313);
        v9 = v172;
        v167 = *(v13 + 264);
        v168 = *(v13 + 312);
        v165 = *(v13 + 263);
        v166 = *(v13 + 311);
        v163 = *(v13 + 262);
        v164 = *(v13 + 310);
        v161 = *(v13 + 261);
        v162 = *(v13 + 309);
        v159 = *(v13 + 260);
        v160 = *(v13 + 308);
        v154 = v13[129];
        v157 = v13[153];
        v145 = v13[128];
        v150 = v13[152];
        v133 = v13[127];
        v139 = v13[151];
        v112 = v13[126];
        v124 = v13[150];
        v85 = v13[125];
        v99 = v13[149];
        v57 = v13[124];
        v71 = v13[148];
        v29 = *(v13 + 266);
        v43 = *(v13 + 314);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        v9 = v172;
        IOLog("LQM-WIFI-PHY:  ed_threshold[0/1]= [%d, %d], bad_txbaseidx_cnt[0/1]=[%u, %u], curr_tssival[0/1]=[%u, %u], pwridx_init[0/1]=[%u, %u], auxphystats[0/1]=[%d,%d],  phystatsgaininfo[0/1]=[%u, %u], flexgaininfo_A[0/1]=[%u, %u], crsmin_pwr_idx[0/1]=[%u, %u], baseindxval[0/1]=[%u, %u], crsmin_pwr[0/1]=[%d, %d],  noise_level_inst[0/1]=[%d, %d], tgt_pwr[0/1]=[%d, %d], estpwradj[0/1]=[%d, %d] \n", *(v13 + 266), *(v13 + 314), v13[124], v13[148], v13[125], v13[149], v13[126], v13[150], v13[127], v13[151], v13[128], v13[152], v13[129], v13[153], *(v13 + 260), *(v13 + 308), *(v13 + 261), *(v13 + 309), *(v13 + 262), *(v13 + 310), *(v13 + 263), *(v13 + 311), *(v13 + 264), *(v13 + 312), *(v13 + 265), *(v13 + 313));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        v9 = v172;
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  ed_threshold[0/1]= [%d, %d], bad_txbaseidx_cnt[0/1]=[%u, %u], curr_tssival[0/1]=[%u, %u], pwridx_init[0/1]=[%u, %u], auxphystats[0/1]=[%d,%d],  phystatsgaininfo[0/1]=[%u, %u], flexgaininfo_A[0/1]=[%u, %u], crsmin_pwr_idx[0/1]=[%u, %u], baseindxval[0/1]=[%u, %u], crsmin_pwr[0/1]=[%d, %d],  noise_level_inst[0/1]=[%d, %d], tgt_pwr[0/1]=[%d, %d], estpwradj[0/1]=[%d, %d] \n", *(v13 + 266), *(v13 + 314), v13[124], v13[148], v13[125], v13[149], v13[126], v13[150], v13[127], v13[151], v13[128], v13[152], v13[129], v13[153], *(v13 + 260), *(v13 + 308), *(v13 + 261), *(v13 + 309), *(v13 + 262), *(v13 + 310), *(v13 + 263), *(v13 + 311), *(v13 + 264), *(v13 + 312), *(v13 + 265), *(v13 + 313));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v86 = *(v13 + 24);
        v100 = *(v13 + 111);
        v58 = v13[50];
        v72 = *(v13 + 110);
        v30 = *(v13 + 112);
        v44 = *(v13 + 113);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  OBSS Info --> need_updt: %u, mit_status: %u, obss_mit_bw=%u, last_rec_bw: %u, obss_last_read_time=%u obss_cur_det: 0x%x\n", *(v13 + 112), *(v13 + 113), v13[50], *(v13 + 110), *(v13 + 24), *(v13 + 111));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  OBSS Info --> need_updt: %u, mit_status: %u, obss_mit_bw=%u, last_rec_bw: %u, obss_last_read_time=%u obss_cur_det: 0x%x\n", *(v13 + 112), *(v13 + 113), v13[50], *(v13 + 110), *(v13 + 24), *(v13 + 111));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v113 = *(v13 + 294);
        v125 = *(v13 + 295);
        v87 = *(v13 + 292);
        v101 = *(v13 + 293);
        v59 = *(v13 + 290);
        v73 = *(v13 + 291);
        v31 = *(v13 + 288);
        v45 = *(v13 + 289);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  OBSS PWR Estimation Core0 --> LLL: %d  LLU: %d  LUL: %d  LUU: %d  ULL: %d  ULU: %d  UUL: %d  UUU: %d\n", *(v13 + 288), *(v13 + 289), *(v13 + 290), *(v13 + 291), *(v13 + 292), *(v13 + 293), *(v13 + 294), *(v13 + 295));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  OBSS PWR Estimation Core0 --> LLL: %d  LLU: %d  LUL: %d  LUU: %d  ULL: %d  ULU: %d  UUL: %d  UUU: %d\n", *(v13 + 288), *(v13 + 289), *(v13 + 290), *(v13 + 291), *(v13 + 292), *(v13 + 293), *(v13 + 294), *(v13 + 295));
      }

      if (IO80211Controller::isLQMOSLOGEnabled(this))
      {
        v114 = *(v13 + 342);
        v126 = *(v13 + 343);
        v88 = *(v13 + 340);
        v102 = *(v13 + 341);
        v60 = *(v13 + 338);
        v74 = *(v13 + 339);
        v32 = *(v13 + 336);
        v46 = *(v13 + 337);
        io80211_os_log();
      }

      if (IO80211Controller::isLQMIOLOGEnabled(this))
      {
        IOLog("LQM-WIFI-PHY:  OBSS PWR Estimation Core1 --> LLL: %d  LLU: %d  LUL: %d  LUU: %d  ULL: %d  ULU: %d  UUL: %d  UUU: %d\n", *(v13 + 336), *(v13 + 337), *(v13 + 338), *(v13 + 339), *(v13 + 340), *(v13 + 341), *(v13 + 342), *(v13 + 343));
      }

      if (IO80211Controller::isLQMCCLOGEnabled(this))
      {
        IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHY:  OBSS PWR Estimation Core1 --> LLL: %d  LLU: %d  LUL: %d  LUU: %d  ULL: %d  ULU: %d  UUL: %d  UUU: %d\n", *(v13 + 336), *(v13 + 337), *(v13 + 338), *(v13 + 339), *(v13 + 340), *(v13 + 341), *(v13 + 342), *(v13 + 343));
      }

      AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(this + 9) + 17744), *v13);
      if (v171 == ChanSpecGetPrimaryChannel())
      {
        v14 = *v13;
        if (v14 >= 0x4000 && (v14 & 0x3800) != 0x1000)
        {
          if (AppleBCMWLANCore::featureFlagIsBitSet(this, 101))
          {
            *(*(this + 9) + 35496) = *(v13 + 24);
            *(*(this + 9) + 35476) = *(v13 + 112);
            *(*(this + 9) + 35477) = *(v13 + 113);
            *(*(this + 9) + 35478) = *(v13 + 100);
            *(*(this + 9) + 35479) = *(v13 + 110);
            *(*(this + 9) + 35480) = AppleBCMWLANLQM::getRecentRxPlcpErrCnt(*(*(this + 9) + 5608));
            *(*(this + 9) + 35484) = AppleBCMWLANLQM::getRecentRxBadFcsCnt(*(*(this + 9) + 5608));
            *(*(this + 9) + 35488) = AppleBCMWLANLQM::getRecentRxFramesCnt(*(*(this + 9) + 5608));
            *(*(this + 9) + 35492) = *(*(this + 9) + 30656);
            AppleBCMWLANLQM::getPerCoreRssi(*(*(this + 9) + 5608), v174);
            *(*(this + 9) + 35516) = v174[0];
            *(*(this + 9) + 35517) = v174[1];
            *(*(this + 9) + 35500) = *(v13 + 36);
            *(*(this + 9) + 35508) = *(v13 + 42);
            v15 = *(this + 9);
            v16 = *(v15 + 11288);
            if (v16)
            {
              IO80211Controller::postMessage(this, v16, 0xDAu, (v15 + 35476), 0x2CuLL, 1);
            }
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePHYEcounterV7(this);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePHYEcounterV7(this);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePHYEcounterV7(this);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePHYEcounterV7(this);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parsePHYEcounterV7(this);
          }
        }
      }

      v13 += 172;
      ++v12;
    }

    while (v12 < *(v9 + 4));
  }

  v17 = mach_continuous_time();
  result = 0;
  *(*(this + 9) + 35560) = v17;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYCalEcounterV1(AppleBCMWLANCore *this, OSData *a2)
{
  if (!a2 || OSData::getLength(a2) <= 7)
  {
    AppleBCMWLANCore::parsePHYCalEcounterV1(this);
    return v76;
  }

  if ((OSData::getBytesNoCopy(a2) & 3) != 0)
  {
    AppleBCMWLANCore::parsePHYCalEcounterV1(this);
    return v76;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (*BytesNoCopy != 1)
  {
    AppleBCMWLANCore::parsePHYCalEcounterV1(this);
    return v76;
  }

  v5 = BytesNoCopy;
  v6 = 132 * *(BytesNoCopy + 4) + 8;
  if (BytesNoCopy[1] != v6 || OSData::getLength(a2) != v6)
  {
    AppleBCMWLANCore::parsePHYCalEcounterV1(this, a2, v6, &v76);
    return v76;
  }

  if (*(v5 + 4))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (this)
      {
        v9 = &v5[v7];
        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          v60 = HIBYTE(v5[v7 + 8]);
          v67 = LOBYTE(v5[v7 + 9]);
          v46 = v5[v7 + 7];
          v53 = LOBYTE(v5[v7 + 8]);
          v32 = HIBYTE(v5[v7 + 9]);
          v39 = *(v9 + 2);
          v18 = *(v5 + 4);
          v25 = v5[v7 + 6];
          v11 = *v5;
          io80211_os_log();
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI-PHYCAL: V1 Version: %u , NumChan: %u, ChanSpec: 0x%04x, slice: %u, LastCal: %u, LastCalTemp: %d, TXIQLocalRetry: %u, RXE: %u, CalPhaseId: %u\n", *v5, *(v5 + 4), v5[v7 + 6], HIBYTE(v5[v7 + 9]), *(v9 + 2), v5[v7 + 7], LOBYTE(v5[v7 + 8]), HIBYTE(v5[v7 + 8]), LOBYTE(v5[v7 + 9]));
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V1 Version: %u , NumChan: %u, ChanSpec: 0x%04x, slice: %u, LastCal: %u, LastCalTemp: %d, TXIQLocalRetry: %u, RXE: %u, CalPhaseId: %u\n", *v5, *(v5 + 4), v5[v7 + 6], HIBYTE(v5[v7 + 9]), *(v9 + 2), v5[v7 + 7], LOBYTE(v5[v7 + 8]), HIBYTE(v5[v7 + 8]), LOBYTE(v5[v7 + 9]));
        }

        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          v61 = v5[v7 + 20];
          v68 = v5[v7 + 21];
          v47 = v5[v7 + 18];
          v54 = v5[v7 + 19];
          v33 = v5[v7 + 16];
          v40 = v5[v7 + 17];
          v19 = *&v5[v7 + 12];
          v26 = *&v5[v7 + 14];
          v12 = *&v5[v7 + 10];
          io80211_os_log();
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI-PHYCAL: V1 rxs[0]= %d, rxs_vpoff[0]= %d, rxs_ipoff[0]= %d, ofdm_txa[0]= %u,ofdm_txb[0]= %u, ofdm_txd[0]= %u, bphy_txa[0]= %u, bphy_txb[0]= %u, bphy_txd[0]= %u \n", *&v5[v7 + 10], *&v5[v7 + 12], *&v5[v7 + 14], v5[v7 + 16], v5[v7 + 17], v5[v7 + 18], v5[v7 + 19], v5[v7 + 20], v5[v7 + 21]);
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V1 rxs[0]= %d, rxs_vpoff[0]= %d, rxs_ipoff[0]= %d, ofdm_txa[0]= %u,ofdm_txb[0]= %u, ofdm_txd[0]= %u, bphy_txa[0]= %u, bphy_txb[0]= %u, bphy_txd[0]= %u \n", *&v5[v7 + 10], *&v5[v7 + 12], *&v5[v7 + 14], v5[v7 + 16], v5[v7 + 17], v5[v7 + 18], v5[v7 + 19], v5[v7 + 20], v5[v7 + 21]);
        }

        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          v72 = v5[v7 + 34];
          v74 = v5[v7 + 35];
          v62 = v5[v7 + 32];
          v69 = v5[v7 + 33];
          v48 = v5[v7 + 30];
          v55 = v5[v7 + 31];
          v34 = v5[v7 + 26];
          v41 = v5[v7 + 27];
          v20 = v5[v7 + 23];
          v27 = v5[v7 + 24];
          v13 = v5[v7 + 22];
          io80211_os_log();
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI-PHYCAL: V1 txbaseidx_gtthres_cnt[0]= %u, rxa[0]= %u, rxb[0]= %u, rxa_vpoff[0]= %u, rxb_vpoff[0]= %u, txiqlo_2g_a0[0]= %u, txiqlo_2g_b0[0]= %u, txiqlo_2g_a1[0]= %u, txiqlo_2g_b1[0]= %u, txiqlo_2g_a2[0]= %u, txiqlo_2g_b2[0]= %u \n", v5[v7 + 22], v5[v7 + 23], v5[v7 + 24], v5[v7 + 26], v5[v7 + 27], v5[v7 + 30], v5[v7 + 31], v5[v7 + 32], v5[v7 + 33], v5[v7 + 34], v5[v7 + 35]);
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V1 txbaseidx_gtthres_cnt[0]= %u, rxa[0]= %u, rxb[0]= %u, rxa_vpoff[0]= %u, rxb_vpoff[0]= %u, txiqlo_2g_a0[0]= %u, txiqlo_2g_b0[0]= %u, txiqlo_2g_a1[0]= %u, txiqlo_2g_b1[0]= %u, txiqlo_2g_a2[0]= %u, txiqlo_2g_b2[0]= %u \n", v5[v7 + 22], v5[v7 + 23], v5[v7 + 24], v5[v7 + 26], v5[v7 + 27], v5[v7 + 30], v5[v7 + 31], v5[v7 + 32], v5[v7 + 33], v5[v7 + 34], v5[v7 + 35]);
        }

        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          v56 = LOBYTE(v5[v7 + 39]);
          v63 = HIBYTE(v5[v7 + 39]);
          v42 = LOBYTE(v5[v7 + 38]);
          v49 = HIBYTE(v5[v7 + 38]);
          v28 = LOBYTE(v5[v7 + 37]);
          v35 = HIBYTE(v5[v7 + 37]);
          v14 = LOBYTE(v5[v7 + 36]);
          v21 = HIBYTE(v5[v7 + 36]);
          io80211_os_log();
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI-PHYCAL: V1 baseidx[0]= %u, baseidx_cck[0]= %u, adc_coeff_cap0_adcI[0]= %u, adc_coeff_cap1_adcI[0]= %u, adc_coeff_cap2_adcI[0]= %u,adc_coeff_cap0_adcQ[0]= %u, adc_coeff_cap1_adcQ[0]= %u, adc_coeff_cap2_adcQ[0]= %u\n", LOBYTE(v5[v7 + 36]), HIBYTE(v5[v7 + 36]), LOBYTE(v5[v7 + 37]), HIBYTE(v5[v7 + 37]), LOBYTE(v5[v7 + 38]), HIBYTE(v5[v7 + 38]), LOBYTE(v5[v7 + 39]), HIBYTE(v5[v7 + 39]));
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V1 baseidx[0]= %u, baseidx_cck[0]= %u, adc_coeff_cap0_adcI[0]= %u, adc_coeff_cap1_adcI[0]= %u, adc_coeff_cap2_adcI[0]= %u,adc_coeff_cap0_adcQ[0]= %u, adc_coeff_cap1_adcQ[0]= %u, adc_coeff_cap2_adcQ[0]= %u\n", LOBYTE(v5[v7 + 36]), HIBYTE(v5[v7 + 36]), LOBYTE(v5[v7 + 37]), HIBYTE(v5[v7 + 37]), LOBYTE(v5[v7 + 38]), HIBYTE(v5[v7 + 38]), LOBYTE(v5[v7 + 39]), HIBYTE(v5[v7 + 39]));
        }

        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          v64 = v5[v7 + 50];
          v70 = v5[v7 + 51];
          v50 = v5[v7 + 48];
          v57 = v5[v7 + 49];
          v36 = v5[v7 + 46];
          v43 = v5[v7 + 47];
          v22 = *&v5[v7 + 42];
          v29 = *&v5[v7 + 44];
          v15 = *&v5[v7 + 40];
          io80211_os_log();
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI-PHYCAL: V1 rxs[1]= %d, rxs_vpoff[1]= %d, rxs_ipoff[1]= %d, ofdm_txa[1]= %u,ofdm_txb[1]= %u, ofdm_txd[1]= %u, bphy_txa[1]= %u, bphy_txb[1]= %u,bphy_txd[1]= %u\n", *&v5[v7 + 40], *&v5[v7 + 42], *&v5[v7 + 44], v5[v7 + 46], v5[v7 + 47], v5[v7 + 48], v5[v7 + 49], v5[v7 + 50], v5[v7 + 51]);
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V1 rxs[1]= %d, rxs_vpoff[1]= %d, rxs_ipoff[1]= %d, ofdm_txa[1]= %u,ofdm_txb[1]= %u, ofdm_txd[1]= %u, bphy_txa[1]= %u, bphy_txb[1]= %u,bphy_txd[1]= %u\n", *&v5[v7 + 40], *&v5[v7 + 42], *&v5[v7 + 44], v5[v7 + 46], v5[v7 + 47], v5[v7 + 48], v5[v7 + 49], v5[v7 + 50], v5[v7 + 51]);
        }

        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          v73 = v5[v7 + 64];
          v75 = v5[v7 + 65];
          v65 = v5[v7 + 62];
          v71 = v5[v7 + 63];
          v51 = v5[v7 + 60];
          v58 = v5[v7 + 61];
          v37 = v5[v7 + 56];
          v44 = v5[v7 + 57];
          v23 = v5[v7 + 53];
          v30 = v5[v7 + 54];
          v16 = v5[v7 + 52];
          io80211_os_log();
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI-PHYCAL: V1 txbaseidx_gtthres_cnt[1]= %u, rxa[1]= %u, rxb[1]= %u, rxa_vpoff[1]= %u, rxb_vpoff[1]= %u, txiqlo_2g_a0[1]= %u, txiqlo_2g_b0[1]= %u, txiqlo_2g_a1[1]= %u, txiqlo_2g_b1[1]= %u, txiqlo_2g_a2[1]= %u, txiqlo_2g_b2[1]= %u \n", v5[v7 + 52], v5[v7 + 53], v5[v7 + 54], v5[v7 + 56], v5[v7 + 57], v5[v7 + 60], v5[v7 + 61], v5[v7 + 62], v5[v7 + 63], v5[v7 + 64], v5[v7 + 65]);
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V1 txbaseidx_gtthres_cnt[1]= %u, rxa[1]= %u, rxb[1]= %u, rxa_vpoff[1]= %u, rxb_vpoff[1]= %u, txiqlo_2g_a0[1]= %u, txiqlo_2g_b0[1]= %u, txiqlo_2g_a1[1]= %u, txiqlo_2g_b1[1]= %u, txiqlo_2g_a2[1]= %u, txiqlo_2g_b2[1]= %u \n", v5[v7 + 52], v5[v7 + 53], v5[v7 + 54], v5[v7 + 56], v5[v7 + 57], v5[v7 + 60], v5[v7 + 61], v5[v7 + 62], v5[v7 + 63], v5[v7 + 64], v5[v7 + 65]);
        }

        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          v59 = LOBYTE(v5[v7 + 69]);
          v66 = HIBYTE(v5[v7 + 69]);
          v45 = LOBYTE(v5[v7 + 68]);
          v52 = HIBYTE(v5[v7 + 68]);
          v31 = LOBYTE(v5[v7 + 67]);
          v38 = HIBYTE(v5[v7 + 67]);
          v17 = LOBYTE(v5[v7 + 66]);
          v24 = HIBYTE(v5[v7 + 66]);
          io80211_os_log();
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI-PHYCAL: V1 baseidx[1]= %u, baseidx_cck[1]= %u, adc_coeff_cap0_adcI[1]= %u, adc_coeff_cap1_adcI[1]= %u, adc_coeff_cap2_adcI[1]= %u, adc_coeff_cap0_adcQ[1]= %u, adc_coeff_cap1_adcQ[1]= %u, adc_coeff_cap2_adcQ[1]= %u \n", LOBYTE(v5[v7 + 66]), HIBYTE(v5[v7 + 66]), LOBYTE(v5[v7 + 67]), HIBYTE(v5[v7 + 67]), LOBYTE(v5[v7 + 68]), HIBYTE(v5[v7 + 68]), LOBYTE(v5[v7 + 69]), HIBYTE(v5[v7 + 69]));
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V1 baseidx[1]= %u, baseidx_cck[1]= %u, adc_coeff_cap0_adcI[1]= %u, adc_coeff_cap1_adcI[1]= %u, adc_coeff_cap2_adcI[1]= %u, adc_coeff_cap0_adcQ[1]= %u, adc_coeff_cap1_adcQ[1]= %u, adc_coeff_cap2_adcQ[1]= %u \n", LOBYTE(v5[v7 + 66]), HIBYTE(v5[v7 + 66]), LOBYTE(v5[v7 + 67]), HIBYTE(v5[v7 + 67]), LOBYTE(v5[v7 + 68]), HIBYTE(v5[v7 + 68]), LOBYTE(v5[v7 + 69]), HIBYTE(v5[v7 + 69]));
        }
      }

      ++v8;
      v7 += 66;
    }

    while (v8 < *(v5 + 4));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::parsePHYCalEcounterV2(AppleBCMWLANCore *this, OSData *a2)
{
  if (!a2 || OSData::getLength(a2) <= 7)
  {
    AppleBCMWLANCore::parsePHYCalEcounterV2(this);
    return v144;
  }

  if ((OSData::getBytesNoCopy(a2) & 3) != 0)
  {
    AppleBCMWLANCore::parsePHYCalEcounterV2(this);
    return v144;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (*BytesNoCopy != 2)
  {
    AppleBCMWLANCore::parsePHYCalEcounterV2(this);
    return v144;
  }

  v5 = BytesNoCopy;
  v6 = (336 * *(BytesNoCopy + 4)) | 8;
  if (BytesNoCopy[1] != v6 || OSData::getLength(a2) != v6)
  {
    AppleBCMWLANCore::parsePHYCalEcounterV2(this, a2, v6, &v144);
    return v144;
  }

  if (*(v5 + 4))
  {
    v7 = 0;
    v8 = (v5 + 4);
    v141 = v5;
    do
    {
      v142 = v7;
      if (this)
      {
        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          v90 = *(v8 + 20);
          v95 = *(v8 + 21);
          v83 = *(v8 + 18);
          v88 = *(v8 + 19);
          v73 = v8[3];
          v80 = *(v8 + 8);
          v62 = *(v8 + 10);
          v69 = *(v8 + 11);
          v51 = *(v8 + 8);
          v58 = *(v8 + 9);
          v40 = *v8;
          v47 = *(v8 + 3);
          v29 = *(v5 + 4);
          v36 = *(v8 + 2);
          v25 = *v5;
          io80211_os_log();
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI-PHYCAL: V2:  Version: %u , NumChan: %u, Chanspec = 0x%04x, last_cal_time = %d, last_cal_temp = %d, txiqlocal_retry = %u, rxe = %u,cal_phase_id = %u, slice = %u, desense_reason = %u, dur = %u, reason = %u, hc_retry_count_vpoff = %u, hc_retry_count_ipoff = %u,hc_retry_count_rx = %u ", *v5, *(v5 + 4), *(v8 + 2), *v8, *(v8 + 3), *(v8 + 8), *(v8 + 9), *(v8 + 10), *(v8 + 11), v8[3], *(v8 + 8), *(v8 + 18), *(v8 + 19), *(v8 + 20), *(v8 + 21));
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V2:  Version: %u , NumChan: %u, Chanspec = 0x%04x, last_cal_time = %d, last_cal_temp = %d, txiqlocal_retry = %u, rxe = %u,cal_phase_id = %u, slice = %u, desense_reason = %u, dur = %u, reason = %u, hc_retry_count_vpoff = %u, hc_retry_count_ipoff = %u,hc_retry_count_rx = %u ", *v5, *(v5 + 4), *(v8 + 2), *v8, *(v8 + 3), *(v8 + 8), *(v8 + 9), *(v8 + 10), *(v8 + 11), v8[3], *(v8 + 8), *(v8 + 18), *(v8 + 19), *(v8 + 20), *(v8 + 21));
        }

        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          v70 = *(v8 + 16);
          v74 = *(v8 + 76);
          v59 = *(v8 + 14);
          v63 = *(v8 + 15);
          v48 = *(v8 + 26);
          v52 = *(v8 + 27);
          v37 = *(v8 + 24);
          v41 = *(v8 + 25);
          v26 = *(v8 + 22);
          v30 = *(v8 + 23);
          io80211_os_log();
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI-PHYCAL: V2: hc_dev_exceed_log_rx_vpoff = %u, hc_dev_exceed_log_rx_ipoff = %u, hc_dev_exceed_log_rx = %u, sc_rxiqcal_skip_cnt = %u,hc_retry_count_tx = %u, hc_dev_exceed_log_tx = %u, txiqcal_max_retry_cnt = %u, txiqcal_max_slope_cnt = %u, mppc_cal_failed_count = %u,is_mppc_gain_offset_cal_success = %u \n", *(v8 + 22), *(v8 + 23), *(v8 + 24), *(v8 + 25), *(v8 + 26), *(v8 + 27), *(v8 + 14), *(v8 + 15), *(v8 + 16), *(v8 + 76));
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V2: hc_dev_exceed_log_rx_vpoff = %u, hc_dev_exceed_log_rx_ipoff = %u, hc_dev_exceed_log_rx = %u, sc_rxiqcal_skip_cnt = %u,hc_retry_count_tx = %u, hc_dev_exceed_log_tx = %u, txiqcal_max_retry_cnt = %u, txiqcal_max_slope_cnt = %u, mppc_cal_failed_count = %u,is_mppc_gain_offset_cal_success = %u \n", *(v8 + 22), *(v8 + 23), *(v8 + 24), *(v8 + 25), *(v8 + 26), *(v8 + 27), *(v8 + 14), *(v8 + 15), *(v8 + 16), *(v8 + 76));
        }

        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          v106 = *(v8 + 36);
          v107 = *(v8 + 37);
          v101 = *(v8 + 34);
          v102 = *(v8 + 35);
          v96 = *(v8 + 32);
          v97 = *(v8 + 33);
          v89 = *(v8 + 30);
          v91 = *(v8 + 31);
          v81 = *(v8 + 28);
          v84 = *(v8 + 29);
          v71 = *(v8 + 26);
          v75 = *(v8 + 27);
          v60 = *(v8 + 24);
          v64 = *(v8 + 25);
          v49 = *(v8 + 22);
          v53 = *(v8 + 23);
          v38 = *(v8 + 20);
          v42 = *(v8 + 21);
          v27 = *(v8 + 18);
          v31 = *(v8 + 19);
          io80211_os_log();
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI-PHYCAL: V2: txiqlocal_coeffs[0] = %d, txiqlocal_coeffs[1] = %d, txiqlocal_coeffs[2] = %d, txiqlocal_coeffs[3] = %d, txiqlocal_coeffs[4] =%d, txiqlocal_coeffs[5] = %d, txiqlocal_coeffs[6] = %d, txiqlocal_coeffs[7] = %d, txiqlocal_coeffs[8] = %d, txiqlocal_coeffs[9] = %d,txiqlocal_coeffs[10] = %d, txiqlocal_coeffs[11] = %d, txiqlocal_coeffs[12] = %d, txiqlocal_coeffs[13] = %d, txiqlocal_coeffs[14] = %d,txiqlocal_coeffs[15] = %d, txiqlocal_coeffs[16] = %d, txiqlocal_coeffs[17] = %d, txiqlocal_coeffs[18] = %d, txiqlocal_coeffs[19] = %d \n ", *(v8 + 18), *(v8 + 19), *(v8 + 20), *(v8 + 21), *(v8 + 22), *(v8 + 23), *(v8 + 24), *(v8 + 25), *(v8 + 26), *(v8 + 27), *(v8 + 28), *(v8 + 29), *(v8 + 30), *(v8 + 31), *(v8 + 32), *(v8 + 33), *(v8 + 34), *(v8 + 35), *(v8 + 36), *(v8 + 37));
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V2: txiqlocal_coeffs[0] = %d, txiqlocal_coeffs[1] = %d, txiqlocal_coeffs[2] = %d, txiqlocal_coeffs[3] = %d, txiqlocal_coeffs[4] =%d, txiqlocal_coeffs[5] = %d, txiqlocal_coeffs[6] = %d, txiqlocal_coeffs[7] = %d, txiqlocal_coeffs[8] = %d, txiqlocal_coeffs[9] = %d,txiqlocal_coeffs[10] = %d, txiqlocal_coeffs[11] = %d, txiqlocal_coeffs[12] = %d, txiqlocal_coeffs[13] = %d, txiqlocal_coeffs[14] = %d,txiqlocal_coeffs[15] = %d, txiqlocal_coeffs[16] = %d, txiqlocal_coeffs[17] = %d, txiqlocal_coeffs[18] = %d, txiqlocal_coeffs[19] = %d \n ", *(v8 + 18), *(v8 + 19), *(v8 + 20), *(v8 + 21), *(v8 + 22), *(v8 + 23), *(v8 + 24), *(v8 + 25), *(v8 + 26), *(v8 + 27), *(v8 + 28), *(v8 + 29), *(v8 + 30), *(v8 + 31), *(v8 + 32), *(v8 + 33), *(v8 + 34), *(v8 + 35), *(v8 + 36), *(v8 + 37));
        }

        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          v76 = v8[24];
          v82 = v8[25];
          v65 = v8[22];
          v72 = v8[23];
          v54 = *(v8 + 42);
          v61 = *(v8 + 43);
          v43 = *(v8 + 40);
          v50 = *(v8 + 41);
          v32 = *(v8 + 78);
          v39 = *(v8 + 79);
          v28 = *(v8 + 77);
          io80211_os_log();
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI-PHYCAL: V2 debug_01 = %u, debug_02 = %u, debug_03 = %u, debug_04 = %u, debug_05 = %u, debug_06 = %u, debug_07 = %u, debug_08 = %u, debug_09 = %u, debug_10 = %u, debug_11 = %u \n", *(v8 + 77), *(v8 + 78), *(v8 + 79), *(v8 + 40), *(v8 + 41), *(v8 + 42), *(v8 + 43), v8[22], v8[23], v8[24], v8[25]);
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V2 debug_01 = %u, debug_02 = %u, debug_03 = %u, debug_04 = %u, debug_05 = %u, debug_06 = %u, debug_07 = %u, debug_08 = %u, debug_09 = %u, debug_10 = %u, debug_11 = %u \n", *(v8 + 77), *(v8 + 78), *(v8 + 79), *(v8 + 40), *(v8 + 41), *(v8 + 42), *(v8 + 43), v8[22], v8[23], v8[24], v8[25]);
        }
      }

      v9 = 0;
      v10 = 0;
      v11 = v8 + 26;
      v12 = 1;
      do
      {
        v13 = v12;
        if (this)
        {
          v143 = v12;
          if (IO80211Controller::isLQMOSLOGEnabled(this))
          {
            v14 = &v11[29 * v9];
            v132 = *(v14 + 55);
            v129 = *(v14 + 54);
            v126 = *(v14 + 53);
            v123 = *(v14 + 52);
            v120 = *(v14 + 51);
            v117 = *(v14 + 50);
            v114 = *(v14 + 31);
            v111 = *(v14 + 49);
            v108 = *(v14 + 48);
            v103 = *v14;
            v98 = *(v14 + 9);
            v92 = *(v14 + 8);
            v85 = *(v14 + 7);
            v77 = *(v14 + 6);
            v66 = *(v14 + 5);
            v55 = *(v14 + 4);
            v44 = *(v14 + 3);
            v33 = *(v14 + 2);
            io80211_os_log();
          }

          if (IO80211Controller::isLQMIOLOGEnabled(this))
          {
            v15 = &v11[29 * v9];
            IOLog("LQM-WIFI-PHYCAL: V2 ofdm_txa[%u] = %u, ofdm_txb[%u] = %u, ofdm_txd[%u] = %u, bphy_txa[%u] = %u, bphy_txb[%u] = %u, bphy_txd[%u] = %u, rxa[%u] = %u, rxb[%u] = %u, rxs[%u] = %u, baseidx[%u] = %u, baseidx_cck[%u] = %u, txbaseidx_gtthres_cnt[%u] = %u,adc_coeff_cap0_adcI[%u] = %u, adc_coeff_cap1_adcI[%u] = %u, adc_coeff_cap2_adcI[%u] = %u, adc_coeff_cap0_adcQ[%u] = %u,adc_coeff_cap1_adcQ[%u] = %u, adc_coeff_cap2_adcQ[%u] = %u\n", v10, *(v15 + 2), v10, *(v15 + 3), v10, *(v15 + 4), v10, *(v15 + 5), v10, *(v15 + 6), v10, *(v15 + 7), v10, *(v15 + 8), v10, *(v15 + 9), v10, *v15, v10, *(v15 + 48), v10, *(v15 + 49), v10, *(v15 + 31), v10, *(v15 + 50), v10, *(v15 + 51), v10, *(v15 + 52), v10, *(v15 + 53), v10, *(v15 + 54), v10, *(v15 + 55));
          }

          if (IO80211Controller::isLQMCCLOGEnabled(this))
          {
            v16 = &v11[29 * v9];
            IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V2 ofdm_txa[%u] = %u, ofdm_txb[%u] = %u, ofdm_txd[%u] = %u, bphy_txa[%u] = %u, bphy_txb[%u] = %u, bphy_txd[%u] = %u, rxa[%u] = %u, rxb[%u] = %u, rxs[%u] = %u, baseidx[%u] = %u, baseidx_cck[%u] = %u, txbaseidx_gtthres_cnt[%u] = %u,adc_coeff_cap0_adcI[%u] = %u, adc_coeff_cap1_adcI[%u] = %u, adc_coeff_cap2_adcI[%u] = %u, adc_coeff_cap0_adcQ[%u] = %u,adc_coeff_cap1_adcQ[%u] = %u, adc_coeff_cap2_adcQ[%u] = %u\n", v10, *(v16 + 2), v10, *(v16 + 3), v10, *(v16 + 4), v10, *(v16 + 5), v10, *(v16 + 6), v10, *(v16 + 7), v10, *(v16 + 8), v10, *(v16 + 9), v10, *v16, v10, *(v16 + 48), v10, *(v16 + 49), v10, *(v16 + 31), v10, *(v16 + 50), v10, *(v16 + 51), v10, *(v16 + 52), v10, *(v16 + 53), v10, *(v16 + 54), v10, *(v16 + 55));
          }

          if (IO80211Controller::isLQMOSLOGEnabled(this))
          {
            v17 = &v11[29 * v9];
            v140 = *(v17 + 82);
            v139 = *(v17 + 81);
            v138 = *(v17 + 80);
            v137 = *(v17 + 39);
            v136 = *(v17 + 38);
            v135 = *(v17 + 37);
            v134 = *(v17 + 36);
            v133 = *(v17 + 35);
            v130 = *(v17 + 34);
            v127 = *(v17 + 33);
            v124 = *(v17 + 32);
            v121 = *(v17 + 30);
            v118 = v17[14];
            v115 = *(v17 + 23);
            v112 = *(v17 + 22);
            v109 = *(v17 + 21);
            v104 = *(v17 + 20);
            v99 = *(v17 + 19);
            v93 = *(v17 + 18);
            v86 = v17[8];
            v78 = v17[7];
            v67 = *(v17 + 13);
            v56 = *(v17 + 12);
            v45 = *(v17 + 11);
            v34 = *(v17 + 10);
            v11 = v8 + 26;
            io80211_os_log();
          }

          if (IO80211Controller::isLQMIOLOGEnabled(this))
          {
            v18 = &v11[29 * v9];
            v11 = v8 + 26;
            IOLog("LQM-WIFI-PHYCAL: V2 rxa_vpoff[%u] = %u, rxb_vpoff[%u] = %u, rxa_ipoff[%u] = %u, rxb_ipoff[%u] = %u, rxs_vpoff[%u] = %u, rxs_ipoff[%u] = %u,txiqlo_2g_a0[%u] = %u, txiqlo_2g_b0[%u] = %u, txiqlo_2g_a1[%u] = %u, txiqlo_2g_b1[%u] = %u, txiqlo_2g_a2[%u] = %u, txiqlo_2g_b2[%u]= %u, txs[%u] = %u, txs_mean[%u] = %u, txgain_rad_gain[%u] = %u, txgain_rad_gain_mi[%u] = %u, txgain_rad_gain_hi[%u] = %u,txgain_dac_gain[%u] = %u, txgain_bbmult[%u] = %u, rxs_mean_vpoff[%u] = %u, rxs_mean_ipoff[%u] = %u, rxs_mean[%u] = %u rxms[%u] =%u, rxms_vpoff[%u] = %u, rxms_ipoff[%u] = %u \n", v10, *(v18 + 10), v10, *(v18 + 11), v10, *(v18 + 12), v10, *(v18 + 13), v10, v18[7], v10, v18[8], v10, *(v18 + 18), v10, *(v18 + 19), v10, *(v18 + 20), v10, *(v18 + 21), v10, *(v18 + 22), v10, *(v18 + 23), v10, v18[14], v10, *(v18 + 30), v10, *(v18 + 32), v10, *(v18 + 33), v10, *(v18 + 34), v10, *(v18 + 35), v10, *(v18 + 36), v10, *(v18 + 37), v10, *(v18 + 38), v10, *(v18 + 39), v10, *(v18 + 80), v10, *(v18 + 81), v10, *(v18 + 82));
          }

          if (IO80211Controller::isLQMCCLOGEnabled(this))
          {
            v19 = &v11[29 * v9];
            v11 = v8 + 26;
            IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V2 rxa_vpoff[%u] = %u, rxb_vpoff[%u] = %u, rxa_ipoff[%u] = %u, rxb_ipoff[%u] = %u, rxs_vpoff[%u] = %u, rxs_ipoff[%u] = %u,txiqlo_2g_a0[%u] = %u, txiqlo_2g_b0[%u] = %u, txiqlo_2g_a1[%u] = %u, txiqlo_2g_b1[%u] = %u, txiqlo_2g_a2[%u] = %u, txiqlo_2g_b2[%u]= %u, txs[%u] = %u, txs_mean[%u] = %u, txgain_rad_gain[%u] = %u, txgain_rad_gain_mi[%u] = %u, txgain_rad_gain_hi[%u] = %u,txgain_dac_gain[%u] = %u, txgain_bbmult[%u] = %u, rxs_mean_vpoff[%u] = %u, rxs_mean_ipoff[%u] = %u, rxs_mean[%u] = %u rxms[%u] =%u, rxms_vpoff[%u] = %u, rxms_ipoff[%u] = %u \n", v10, *(v19 + 10), v10, *(v19 + 11), v10, *(v19 + 12), v10, *(v19 + 13), v10, v19[7], v10, v19[8], v10, *(v19 + 18), v10, *(v19 + 19), v10, *(v19 + 20), v10, *(v19 + 21), v10, *(v19 + 22), v10, *(v19 + 23), v10, v19[14], v10, *(v19 + 30), v10, *(v19 + 32), v10, *(v19 + 33), v10, *(v19 + 34), v10, *(v19 + 35), v10, *(v19 + 36), v10, *(v19 + 37), v10, *(v19 + 38), v10, *(v19 + 39), v10, *(v19 + 80), v10, *(v19 + 81), v10, *(v19 + 82));
          }

          if (IO80211Controller::isLQMOSLOGEnabled(this))
          {
            v20 = &v11[29 * v9];
            v131 = v20[28];
            v128 = v20[27];
            v125 = v20[26];
            v122 = v20[25];
            v119 = *(v20 + 49);
            v116 = *(v20 + 48);
            v113 = *(v20 + 47);
            v110 = *(v20 + 46);
            v105 = *(v20 + 91);
            v100 = *(v20 + 90);
            v94 = *(v20 + 89);
            v87 = *(v20 + 88);
            v79 = *(v20 + 87);
            v68 = *(v20 + 86);
            v57 = *(v20 + 85);
            v46 = *(v20 + 84);
            v35 = *(v20 + 83);
            io80211_os_log();
          }

          if (IO80211Controller::isLQMIOLOGEnabled(this))
          {
            v21 = &v11[29 * v9];
            IOLog("LQM-WIFI-PHYCAL: V2 ccktxgain_offset[%u] = %u, mppc_gain_offset_qdB0[%u] = %u, mppc_gain_offset_qdB1[%u] = %u, mppc_gain_offset_qdB2[%u] = %u,mppc_gain_offset_qdB3[%u] = %u, debug_01[%u] = %u, debug_02[%u] = %u, debug_03[%u] = %u, debug_04[%u] = %u, debug_05[%u] = %u,debug_06[%u] = %u, debug_07[%u] = %u, debug_08[%u] = %u, debug_09[%u] = %u, debug_10[%u] = %u, debug_11[%u] = %u, debug_12[%u] = %u\n", v10, *(v21 + 83), v10, *(v21 + 84), v10, *(v21 + 85), v10, *(v21 + 86), v10, *(v21 + 87), v10, *(v21 + 88), v10, *(v21 + 89), v10, *(v21 + 90), v10, *(v21 + 91), v10, *(v21 + 46), v10, *(v21 + 47), v10, *(v21 + 48), v10, *(v21 + 49), v10, v21[25], v10, v21[26], v10, v21[27], v10, v21[28]);
          }

          isLQMCCLOGEnabled = IO80211Controller::isLQMCCLOGEnabled(this);
          v13 = v143;
          if (isLQMCCLOGEnabled)
          {
            v23 = &v11[29 * v9];
            IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V2 ccktxgain_offset[%u] = %u, mppc_gain_offset_qdB0[%u] = %u, mppc_gain_offset_qdB1[%u] = %u, mppc_gain_offset_qdB2[%u] = %u,mppc_gain_offset_qdB3[%u] = %u, debug_01[%u] = %u, debug_02[%u] = %u, debug_03[%u] = %u, debug_04[%u] = %u, debug_05[%u] = %u,debug_06[%u] = %u, debug_07[%u] = %u, debug_08[%u] = %u, debug_09[%u] = %u, debug_10[%u] = %u, debug_11[%u] = %u, debug_12[%u] = %u\n", v10, *(v23 + 83), v10, *(v23 + 84), v10, *(v23 + 85), v10, *(v23 + 86), v10, *(v23 + 87), v10, *(v23 + 88), v10, *(v23 + 89), v10, *(v23 + 90), v10, *(v23 + 91), v10, *(v23 + 46), v10, *(v23 + 47), v10, *(v23 + 48), v10, *(v23 + 49), v10, v23[25], v10, v23[26], v10, v23[27], v10, v23[28]);
            v13 = v143;
          }
        }

        v12 = 0;
        v9 = 1;
        v10 = 1;
      }

      while ((v13 & 1) != 0);
      v5 = v141;
      v8 += 84;
      v7 = v142 + 1;
    }

    while (v142 + 1 < *(v141 + 4));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::parsePHYCalEcounterV3(AppleBCMWLANCore *this, OSData *a2)
{
  if (!a2 || OSData::getLength(a2) <= 7)
  {
    AppleBCMWLANCore::parsePHYCalEcounterV3(this);
    return v201;
  }

  if ((OSData::getBytesNoCopy(a2) & 3) != 0)
  {
    AppleBCMWLANCore::parsePHYCalEcounterV3(this);
    return v201;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (*BytesNoCopy != 3)
  {
    AppleBCMWLANCore::parsePHYCalEcounterV3(this);
    return v201;
  }

  v5 = BytesNoCopy;
  v6 = 540 * *(BytesNoCopy + 4) + 8;
  if (BytesNoCopy[1] != v6 || OSData::getLength(a2) != v6)
  {
    AppleBCMWLANCore::parsePHYCalEcounterV3(this, a2, v6, &v201);
    return v201;
  }

  if (*(v5 + 4))
  {
    v7 = 0;
    v8 = (v5 + 4);
    v198 = v5;
    do
    {
      v199 = v7;
      if (this)
      {
        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          v147 = *(v8 + 20);
          v156 = *(v8 + 21);
          v132 = *(v8 + 18);
          v141 = *(v8 + 19);
          v116 = v8[3];
          v126 = *(v8 + 8);
          v98 = *(v8 + 10);
          v109 = *(v8 + 11);
          v79 = *(v8 + 8);
          v90 = *(v8 + 9);
          v60 = *v8;
          v71 = *(v8 + 3);
          v41 = *(v5 + 4);
          v52 = *(v8 + 2);
          v37 = *v5;
          io80211_os_log();
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI-PHYCAL: V3:  Version: %u , NumChan: %u, Chanspec = 0x%04x, last_cal_time = %d, last_cal_temp = %d, txiqlocal_retry = %u, rxe = %u,cal_phase_id = %u, slice = %u, desense_reason = %u, dur = %u, reason = %u, hc_retry_count_vpoff = %u, hc_retry_count_ipoff = %u,hc_retry_count_rx = %u ", *v5, *(v5 + 4), *(v8 + 2), *v8, *(v8 + 3), *(v8 + 8), *(v8 + 9), *(v8 + 10), *(v8 + 11), v8[3], *(v8 + 8), *(v8 + 18), *(v8 + 19), *(v8 + 20), *(v8 + 21));
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V3:  Version: %u , NumChan: %u, Chanspec = 0x%04x, last_cal_time = %d, last_cal_temp = %d, txiqlocal_retry = %u, rxe = %u,cal_phase_id = %u, slice = %u, desense_reason = %u, dur = %u, reason = %u, hc_retry_count_vpoff = %u, hc_retry_count_ipoff = %u,hc_retry_count_rx = %u ", *v5, *(v5 + 4), *(v8 + 2), *v8, *(v8 + 3), *(v8 + 8), *(v8 + 9), *(v8 + 10), *(v8 + 11), v8[3], *(v8 + 8), *(v8 + 18), *(v8 + 19), *(v8 + 20), *(v8 + 21));
        }

        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          v110 = *(v8 + 16);
          v117 = *(v8 + 76);
          v91 = *(v8 + 14);
          v99 = *(v8 + 15);
          v72 = *(v8 + 22);
          v80 = *(v8 + 26);
          v53 = *(v8 + 25);
          v61 = *(v8 + 27);
          v38 = *(v8 + 23);
          v42 = *(v8 + 24);
          io80211_os_log();
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI-PHYCAL: V3: hc_dev_exceed_log_rx_vpoff = %u, hc_dev_exceed_log_rx_ipoff = %u, hc_dev_exceed_log_rx = %u, sc_rxiqcal_skip_cnt = %u,hc_retry_count_tx = %u, hc_dev_exceed_log_tx = %u, txiqcal_max_retry_cnt = %u, txiqcal_max_slope_cnt = %u, mppc_cal_failed_count = %u,is_mppc_gain_offset_cal_success = %u \n", *(v8 + 23), *(v8 + 24), *(v8 + 25), *(v8 + 27), *(v8 + 22), *(v8 + 26), *(v8 + 14), *(v8 + 15), *(v8 + 16), *(v8 + 76));
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V3: hc_dev_exceed_log_rx_vpoff = %u, hc_dev_exceed_log_rx_ipoff = %u, hc_dev_exceed_log_rx = %u, sc_rxiqcal_skip_cnt = %u,hc_retry_count_tx = %u, hc_dev_exceed_log_tx = %u, txiqcal_max_retry_cnt = %u, txiqcal_max_slope_cnt = %u, mppc_cal_failed_count = %u,is_mppc_gain_offset_cal_success = %u \n", *(v8 + 23), *(v8 + 24), *(v8 + 25), *(v8 + 27), *(v8 + 22), *(v8 + 26), *(v8 + 14), *(v8 + 15), *(v8 + 16), *(v8 + 76));
        }

        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          v179 = *(v8 + 36);
          v180 = *(v8 + 37);
          v170 = *(v8 + 34);
          v175 = *(v8 + 35);
          v157 = *(v8 + 32);
          v162 = *(v8 + 33);
          v142 = *(v8 + 30);
          v148 = *(v8 + 31);
          v127 = *(v8 + 28);
          v133 = *(v8 + 29);
          v111 = *(v8 + 26);
          v118 = *(v8 + 27);
          v92 = *(v8 + 24);
          v100 = *(v8 + 25);
          v73 = *(v8 + 22);
          v81 = *(v8 + 23);
          v54 = *(v8 + 20);
          v62 = *(v8 + 21);
          v39 = *(v8 + 18);
          v43 = *(v8 + 19);
          io80211_os_log();
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI-PHYCAL: V3: txiqlocal_coeffs[0] = %d, txiqlocal_coeffs[1] = %d, txiqlocal_coeffs[2] = %d, txiqlocal_coeffs[3] = %d, txiqlocal_coeffs[4] =%d, txiqlocal_coeffs[5] = %d, txiqlocal_coeffs[6] = %d, txiqlocal_coeffs[7] = %d, txiqlocal_coeffs[8] = %d, txiqlocal_coeffs[9] = %d,txiqlocal_coeffs[10] = %d, txiqlocal_coeffs[11] = %d, txiqlocal_coeffs[12] = %d, txiqlocal_coeffs[13] = %d, txiqlocal_coeffs[14] = %d,txiqlocal_coeffs[15] = %d, txiqlocal_coeffs[16] = %d, txiqlocal_coeffs[17] = %d, txiqlocal_coeffs[18] = %d, txiqlocal_coeffs[19] = %d \n ", *(v8 + 18), *(v8 + 19), *(v8 + 20), *(v8 + 21), *(v8 + 22), *(v8 + 23), *(v8 + 24), *(v8 + 25), *(v8 + 26), *(v8 + 27), *(v8 + 28), *(v8 + 29), *(v8 + 30), *(v8 + 31), *(v8 + 32), *(v8 + 33), *(v8 + 34), *(v8 + 35), *(v8 + 36), *(v8 + 37));
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V3: txiqlocal_coeffs[0] = %d, txiqlocal_coeffs[1] = %d, txiqlocal_coeffs[2] = %d, txiqlocal_coeffs[3] = %d, txiqlocal_coeffs[4] =%d, txiqlocal_coeffs[5] = %d, txiqlocal_coeffs[6] = %d, txiqlocal_coeffs[7] = %d, txiqlocal_coeffs[8] = %d, txiqlocal_coeffs[9] = %d,txiqlocal_coeffs[10] = %d, txiqlocal_coeffs[11] = %d, txiqlocal_coeffs[12] = %d, txiqlocal_coeffs[13] = %d, txiqlocal_coeffs[14] = %d,txiqlocal_coeffs[15] = %d, txiqlocal_coeffs[16] = %d, txiqlocal_coeffs[17] = %d, txiqlocal_coeffs[18] = %d, txiqlocal_coeffs[19] = %d \n ", *(v8 + 18), *(v8 + 19), *(v8 + 20), *(v8 + 21), *(v8 + 22), *(v8 + 23), *(v8 + 24), *(v8 + 25), *(v8 + 26), *(v8 + 27), *(v8 + 28), *(v8 + 29), *(v8 + 30), *(v8 + 31), *(v8 + 32), *(v8 + 33), *(v8 + 34), *(v8 + 35), *(v8 + 36), *(v8 + 37));
        }

        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          v93 = v8[21];
          v101 = v8[22];
          v74 = *(v8 + 40);
          v82 = *(v8 + 41);
          v55 = *(v8 + 78);
          v63 = *(v8 + 79);
          v40 = *(v8 + 17);
          v44 = *(v8 + 77);
          io80211_os_log();
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI-PHYCAL: V3 debug_01 = %u, debug_02 = %u, debug_03 = %u, debug_04 = %u, debug_05 = %u, debug_06 = %u, debug_07 = %u, debug_08 = %u\n", *(v8 + 17), *(v8 + 77), *(v8 + 78), *(v8 + 79), *(v8 + 40), *(v8 + 41), v8[21], v8[22]);
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V3 debug_01 = %u, debug_02 = %u, debug_03 = %u, debug_04 = %u, debug_05 = %u, debug_06 = %u, debug_07 = %u, debug_08 = %u\n", *(v8 + 17), *(v8 + 77), *(v8 + 78), *(v8 + 79), *(v8 + 40), *(v8 + 41), v8[21], v8[22]);
        }
      }

      v9 = 0;
      v10 = 0;
      v11 = v8 + 23;
      v12 = 1;
      do
      {
        v13 = v12;
        if (this)
        {
          v200 = v12;
          if (IO80211Controller::isLQMOSLOGEnabled(this))
          {
            v14 = &v11[56 * v9];
            v176 = *(v14 + 23);
            v163 = *(v14 + 11);
            v149 = *(v14 + 10);
            v134 = v14[1];
            v119 = *(v14 + 1);
            v102 = *v14;
            v83 = *(v14 + 4);
            v64 = *(v14 + 36);
            v45 = *(v14 + 35);
            io80211_os_log();
          }

          if (IO80211Controller::isLQMIOLOGEnabled(this))
          {
            v15 = &v11[56 * v9];
            IOLog("LQM-WIFI-PHYCAL: V3 dc_est_i[%u] = %d, dc_est_q[%u] = %d, ofdm_txd[%u] = %u, rxa[%u] = %u, rxb[%u] = %u, rxs[%u] = %u, baseidx[%u] = %u, baseidx_cck[%u] = %u, txbaseidx_gtthres_cnt[%u] = %u\n", v10, v15[35], v10, v15[36], v10, v15[4], v10, *v15, v10, v15[1], v10, *(v15 + 1), v10, *(v15 + 10), v10, *(v15 + 11), v10, v15[23]);
          }

          if (IO80211Controller::isLQMCCLOGEnabled(this))
          {
            v16 = &v11[56 * v9];
            IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V3 dc_est_i[%u] = %d, dc_est_q[%u] = %d, ofdm_txd[%u] = %u, rxa[%u] = %u, rxb[%u] = %u, rxs[%u] = %u, baseidx[%u] = %u, baseidx_cck[%u] = %u, txbaseidx_gtthres_cnt[%u] = %u\n", v10, v16[35], v10, v16[36], v10, v16[4], v10, *v16, v10, v16[1], v10, *(v16 + 1), v10, *(v16 + 10), v10, *(v16 + 11), v10, v16[23]);
          }

          if (IO80211Controller::isLQMOSLOGEnabled(this))
          {
            v17 = &v11[56 * v9];
            v164 = v17[65];
            v171 = v17[67];
            v150 = v17[61];
            v158 = v17[63];
            v135 = v17[57];
            v143 = v17[59];
            v120 = v17[53];
            v128 = v17[55];
            v103 = v17[49];
            v112 = v17[51];
            v84 = v17[45];
            v94 = v17[47];
            v65 = v17[41];
            v75 = v17[43];
            v46 = v17[37];
            v56 = v17[39];
            io80211_os_log();
          }

          if (IO80211Controller::isLQMIOLOGEnabled(this))
          {
            v18 = &v11[56 * v9];
            IOLog("LQM-WIFI-PHYCAL: V3 core %u kappa_theta[0-15][0]: %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d\n", v10, v18[37], v18[39], v18[41], v18[43], v18[45], v18[47], v18[49], v18[51], v18[53], v18[55], v18[57], v18[59], v18[61], v18[63], v18[65], v18[67]);
          }

          if (IO80211Controller::isLQMCCLOGEnabled(this))
          {
            v19 = &v11[56 * v9];
            IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V3 core %u kappa_theta[0-15][0]: %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d\n", v10, v19[37], v19[39], v19[41], v19[43], v19[45], v19[47], v19[49], v19[51], v19[53], v19[55], v19[57], v19[59], v19[61], v19[63], v19[65], v19[67]);
          }

          if (IO80211Controller::isLQMOSLOGEnabled(this))
          {
            v20 = &v11[56 * v9];
            v165 = v20[66];
            v172 = v20[68];
            v151 = v20[62];
            v159 = v20[64];
            v136 = v20[58];
            v144 = v20[60];
            v121 = v20[54];
            v129 = v20[56];
            v104 = v20[50];
            v113 = v20[52];
            v85 = v20[46];
            v95 = v20[48];
            v66 = v20[42];
            v76 = v20[44];
            v47 = v20[38];
            v57 = v20[40];
            io80211_os_log();
          }

          if (IO80211Controller::isLQMIOLOGEnabled(this))
          {
            v21 = &v11[56 * v9];
            IOLog("LQM-WIFI-PHYCAL: V3 core %u kappa_theta[0-15][1]: %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d\n", v10, v21[38], v21[40], v21[42], v21[44], v21[46], v21[48], v21[50], v21[52], v21[54], v21[56], v21[58], v21[60], v21[62], v21[64], v21[66], v21[68]);
          }

          if (IO80211Controller::isLQMCCLOGEnabled(this))
          {
            v22 = &v11[56 * v9];
            IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V3 core %u kappa_theta[0-15][1]: %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d\n", v10, v22[38], v22[40], v22[42], v22[44], v22[46], v22[48], v22[50], v22[52], v22[54], v22[56], v22[58], v22[60], v22[62], v22[64], v22[66], v22[68]);
          }

          if (IO80211Controller::isLQMOSLOGEnabled(this))
          {
            v23 = &v11[56 * v9];
            v166 = v23[97];
            v173 = v23[99];
            v152 = v23[93];
            v160 = v23[95];
            v137 = v23[89];
            v145 = v23[91];
            v122 = v23[85];
            v130 = v23[87];
            v105 = v23[81];
            v114 = v23[83];
            v86 = v23[77];
            v96 = v23[79];
            v67 = v23[73];
            v77 = v23[75];
            v48 = v23[69];
            v58 = v23[71];
            io80211_os_log();
          }

          if (IO80211Controller::isLQMIOLOGEnabled(this))
          {
            v24 = &v11[56 * v9];
            IOLog("LQM-WIFI-PHYCAL: V3 core %u dc_re_im[0-15][0]: %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d\n", v10, v24[69], v24[71], v24[73], v24[75], v24[77], v24[79], v24[81], v24[83], v24[85], v24[87], v24[89], v24[91], v24[93], v24[95], v24[97], v24[99]);
          }

          if (IO80211Controller::isLQMCCLOGEnabled(this))
          {
            v25 = &v11[56 * v9];
            IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V3 core %u dc_re_im[0-15][0]: %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d\n", v10, v25[69], v25[71], v25[73], v25[75], v25[77], v25[79], v25[81], v25[83], v25[85], v25[87], v25[89], v25[91], v25[93], v25[95], v25[97], v25[99]);
          }

          if (IO80211Controller::isLQMOSLOGEnabled(this))
          {
            v26 = &v11[56 * v9];
            v167 = v26[98];
            v174 = v26[100];
            v153 = v26[94];
            v161 = v26[96];
            v138 = v26[90];
            v146 = v26[92];
            v123 = v26[86];
            v131 = v26[88];
            v106 = v26[82];
            v115 = v26[84];
            v87 = v26[78];
            v97 = v26[80];
            v68 = v26[74];
            v78 = v26[76];
            v49 = v26[70];
            v59 = v26[72];
            io80211_os_log();
          }

          if (IO80211Controller::isLQMIOLOGEnabled(this))
          {
            v27 = &v11[56 * v9];
            IOLog("LQM-WIFI-PHYCAL: V3 core %u dc_re_im[0-15][1]: %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d\n", v10, v27[70], v27[72], v27[74], v27[76], v27[78], v27[80], v27[82], v27[84], v27[86], v27[88], v27[90], v27[92], v27[94], v27[96], v27[98], v27[100]);
          }

          if (IO80211Controller::isLQMCCLOGEnabled(this))
          {
            v28 = &v11[56 * v9];
            IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V3 core %u dc_re_im[0-15][1]: %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d\n", v10, v28[70], v28[72], v28[74], v28[76], v28[78], v28[80], v28[82], v28[84], v28[86], v28[88], v28[90], v28[92], v28[94], v28[96], v28[98], v28[100]);
          }

          if (IO80211Controller::isLQMOSLOGEnabled(this))
          {
            v29 = &v11[56 * v9];
            v197 = *(v29 + 64);
            v196 = *(v29 + 63);
            v195 = *(v29 + 62);
            v194 = *(v29 + 30);
            v193 = *(v29 + 29);
            v192 = *(v29 + 28);
            v191 = *(v29 + 27);
            v190 = *(v29 + 26);
            v189 = *(v29 + 25);
            v188 = *(v29 + 24);
            v187 = *(v29 + 22);
            v186 = v29[10];
            v185 = *(v29 + 19);
            v183 = *(v29 + 18);
            v181 = *(v29 + 17);
            v177 = *(v29 + 16);
            v168 = *(v29 + 15);
            v154 = *(v29 + 14);
            v139 = v29[6];
            v124 = v29[5];
            v107 = *(v29 + 9);
            v88 = *(v29 + 8);
            v69 = *(v29 + 7);
            v50 = *(v29 + 6);
            io80211_os_log();
          }

          if (IO80211Controller::isLQMIOLOGEnabled(this))
          {
            v30 = &v11[56 * v9];
            IOLog("LQM-WIFI-PHYCAL: V3 rxa_vpoff[%u] = %u, rxb_vpoff[%u] = %u, rxa_ipoff[%u] = %u, rxb_ipoff[%u] = %u, rxs_vpoff[%u] = %u, rxs_ipoff[%u] = %u,txiqlo_a0[%u] = %u, txiqlo_b0[%u] = %u, txiqlo_a1[%u] = %u, txiqlo_b1[%u] = %u, txiqlo_a2[%u] = %u, txiqlo_b2[%u]= %u, txs[%u] = %u, txs_mean[%u] = %u, txgain_rad_gain[%u] = %u, txgain_rad_gain_mi[%u] = %u, txgain_rad_gain_hi[%u] = %u,txgain_bbmult[%u] = %u, rxs_mean_vpoff[%u] = %u, rxs_mean_ipoff[%u] = %u, rxs_mean[%u] = %u rxms[%u] =%u, rxms_vpoff[%u] = %u, rxms_ipoff[%u] = %u \n", v10, *(v30 + 6), v10, *(v30 + 7), v10, *(v30 + 8), v10, *(v30 + 9), v10, v30[5], v10, v30[6], v10, *(v30 + 14), v10, *(v30 + 15), v10, *(v30 + 16), v10, *(v30 + 17), v10, *(v30 + 18), v10, *(v30 + 19), v10, v30[10], v10, *(v30 + 22), v10, *(v30 + 24), v10, *(v30 + 25), v10, *(v30 + 26), v10, *(v30 + 27), v10, *(v30 + 28), v10, *(v30 + 29), v10, *(v30 + 30), v10, *(v30 + 62), v10, *(v30 + 63), v10, *(v30 + 64));
          }

          if (IO80211Controller::isLQMCCLOGEnabled(this))
          {
            v31 = &v11[56 * v9];
            IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V3 rxa_vpoff[%u] = %u, rxb_vpoff[%u] = %u, rxa_ipoff[%u] = %u, rxb_ipoff[%u] = %u, rxs_vpoff[%u] = %u, rxs_ipoff[%u] = %u,txiqlo_a0[%u] = %u, txiqlo_b0[%u] = %u, txiqlo_a1[%u] = %u, txiqlo_b1[%u] = %u, txiqlo_a2[%u] = %u, txiqlo_b2[%u]= %u, txs[%u] = %u, txs_mean[%u] = %u, txgain_rad_gain[%u] = %u, txgain_rad_gain_mi[%u] = %u, txgain_rad_gain_hi[%u] = %u,txgain_bbmult[%u] = %u, rxs_mean_vpoff[%u] = %u, rxs_mean_ipoff[%u] = %u, rxs_mean[%u] = %u rxms[%u] =%u, rxms_vpoff[%u] = %u, rxms_ipoff[%u] = %u \n", v10, *(v31 + 6), v10, *(v31 + 7), v10, *(v31 + 8), v10, *(v31 + 9), v10, v31[5], v10, v31[6], v10, *(v31 + 14), v10, *(v31 + 15), v10, *(v31 + 16), v10, *(v31 + 17), v10, *(v31 + 18), v10, *(v31 + 19), v10, v31[10], v10, *(v31 + 22), v10, *(v31 + 24), v10, *(v31 + 25), v10, *(v31 + 26), v10, *(v31 + 27), v10, *(v31 + 28), v10, *(v31 + 29), v10, *(v31 + 30), v10, *(v31 + 62), v10, *(v31 + 63), v10, *(v31 + 64));
          }

          if (IO80211Controller::isLQMOSLOGEnabled(this))
          {
            v32 = &v11[56 * v9];
            v184 = v32[55];
            v182 = v32[54];
            v178 = *(v32 + 107);
            v169 = *(v32 + 106);
            v155 = *(v32 + 105);
            v140 = *(v32 + 104);
            v125 = *(v32 + 69);
            v108 = *(v32 + 68);
            v89 = *(v32 + 67);
            v70 = *(v32 + 66);
            v51 = *(v32 + 65);
            io80211_os_log();
          }

          if (IO80211Controller::isLQMIOLOGEnabled(this))
          {
            v33 = &v11[56 * v9];
            IOLog("LQM-WIFI-PHYCAL: V3 ccktxgain_offset[%u] = %u, mppc_gain_offset_qdB0[%u] = %u, mppc_gain_offset_qdB1[%u] = %u, mppc_gain_offset_qdB2[%u] = %u,mppc_gain_offset_qdB3[%u] = %u, debug_01[%u] = %u, debug_02[%u] = %u, debug_03[%u] = %u, debug_04[%u] = %u, debug_05[%u] = %u,debug_06[%u] = %u\n", v10, *(v33 + 65), v10, *(v33 + 66), v10, *(v33 + 67), v10, *(v33 + 68), v10, *(v33 + 69), v10, *(v33 + 104), v10, *(v33 + 105), v10, *(v33 + 106), v10, *(v33 + 107), v10, v33[54], v10, v33[55]);
          }

          isLQMCCLOGEnabled = IO80211Controller::isLQMCCLOGEnabled(this);
          v13 = v200;
          if (isLQMCCLOGEnabled)
          {
            v35 = &v11[56 * v9];
            IO80211Controller::logLQMToCC(this, "LQM-WIFI-PHYCAL: V3 ccktxgain_offset[%u] = %u, mppc_gain_offset_qdB0[%u] = %u, mppc_gain_offset_qdB1[%u] = %u, mppc_gain_offset_qdB2[%u] = %u,mppc_gain_offset_qdB3[%u] = %u, debug_01[%u] = %u, debug_02[%u] = %u, debug_03[%u] = %u, debug_04[%u] = %u, debug_05[%u] = %u,debug_06[%u] = %u\n", v10, *(v35 + 65), v10, *(v35 + 66), v10, *(v35 + 67), v10, *(v35 + 68), v10, *(v35 + 69), v10, *(v35 + 104), v10, *(v35 + 105), v10, *(v35 + 106), v10, *(v35 + 107), v10, v35[54], v10, v35[55]);
            v13 = v200;
          }
        }

        v12 = 0;
        v9 = 1;
        v10 = 1;
      }

      while ((v13 & 1) != 0);
      v5 = v198;
      v8 += 135;
      v7 = v199 + 1;
    }

    while (v199 + 1 < *(v198 + 4));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::issueIfCounterIOVar(AppleBCMWLANCore *a1, unsigned int a2)
{
  v4 = 3758097095;
  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 53))
  {
    v41 = 2;
    v6 = AppleBCMWLANCommandWithXTLV::withLengthAndHeader(0xE4, &v41, 4, *(*(a1 + 9) + 14248), v5);
    v7 = IOMallocZeroData();
    v39 = 0xAAAAAAAAAAAAAAAALL;
    numBytes = 0xAAAAAAAAAAAAAAAALL;
    if (v6)
    {
      if (a2 > 2)
      {
        v4 = 3758097084;
        goto LABEL_44;
      }

      AppleBCMWLANCommandWithXTLV::addXTLV(v6, 1282, 0, 0);
      if (a2 != 2)
      {
        if (a2 != 1)
        {
          AppleBCMWLANCore::issueIfCounterIOVar(v6);
        }

        AppleBCMWLANCore::issueIfCounterIOVar(v6);
      }

      AppleBCMWLANConfigManager::setupFirmwareWithDTDefaults(v6);
      AppleBCMWLANCommandWithXTLV::complete(v6);
      if (v7)
      {
        v8 = 0x51400B80514;
      }

      else
      {
        v8 = 0;
      }

      v39 = v7;
      numBytes = v8;
      v9 = (*(*a1 + 88))(a1);
      if ((*(*v9 + 136))(v9))
      {
        v36 = a1;
        v37 = AppleBCMWLANCore::handleIssueIfCounterIOVarAsyncCallback;
        v38 = 0;
        v10 = *(*(a1 + 9) + 5408);
        if (a2)
        {
          CompletionRingPtr = AppleBCMWLANDynamicRingOperationContext::getCompletionRingPtr(v6);
          CommandLength = AppleBCMWLANCommandWithXTLV::getCommandLength(v6);
          v13 = CommandLength;
          if (!CompletionRingPtr)
          {
            v13 = 0;
          }

          if (CommandLength)
          {
            v14 = CompletionRingPtr;
          }

          else
          {
            v14 = 0;
          }

          v34 = v14;
          v35 = v13;
          v33 = v8 & 0x514 | ((v8 & 0x514) << 16);
          v15 = AppleBCMWLANCommander::sendVirtualIOVarGet(v10, a2, "if_counters", &v34, &v33, &v36, 0);
        }

        else
        {
          v22 = AppleBCMWLANDynamicRingOperationContext::getCompletionRingPtr(v6);
          v23 = AppleBCMWLANCommandWithXTLV::getCommandLength(v6);
          v24 = v23;
          if (!v22)
          {
            v24 = 0;
          }

          if (v23)
          {
            v25 = v22;
          }

          else
          {
            v25 = 0;
          }

          v34 = v25;
          v35 = v24;
          v33 = v8 & 0x514 | ((v8 & 0x514) << 16);
          v15 = AppleBCMWLANCommander::sendIOVarGet(v10, "if_counters", &v34, &v33, &v36, 0);
        }

        v4 = v15;
LABEL_42:
        if (!v4)
        {
LABEL_43:
          (*(*v6 + 16))(v6);
          goto LABEL_44;
        }

        goto LABEL_53;
      }

      v16 = *(*(a1 + 9) + 5408);
      if (a2)
      {
        v17 = AppleBCMWLANDynamicRingOperationContext::getCompletionRingPtr(v6);
        v18 = AppleBCMWLANCommandWithXTLV::getCommandLength(v6);
        v19 = v18;
        if (!v17)
        {
          v19 = 0;
        }

        if (v18)
        {
          v20 = v17;
        }

        else
        {
          v20 = 0;
        }

        v36 = v20;
        v37 = v19;
        v21 = AppleBCMWLANCommander::runVirtualIOVarGet(v16, a2, "if_counters", &v36, &v39, 0);
      }

      else
      {
        v26 = AppleBCMWLANDynamicRingOperationContext::getCompletionRingPtr(v6);
        v27 = AppleBCMWLANCommandWithXTLV::getCommandLength(v6);
        v28 = v27;
        if (!v26)
        {
          v28 = 0;
        }

        if (v27)
        {
          v29 = v26;
        }

        else
        {
          v29 = 0;
        }

        v36 = v29;
        v37 = v28;
        v21 = AppleBCMWLANCommander::runIOVarGet(v16, "if_counters", &v36, &v39, 0);
      }

      v4 = v21;
      if (!v21)
      {
        v30 = OSData::withBytesNoCopy(v7, numBytes);
        if (v30)
        {
          v31 = v30;
          v4 = AppleBCMWLANCore::parseXTLVMessage(a1, v30);
          (v31->release)(v31);
          goto LABEL_42;
        }

        AppleBCMWLANCore::issueIfCounterIOVar(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v36, &v34);
        v4 = v34;
      }
    }

    else
    {
      v4 = 3758097085;
    }

LABEL_53:
    if ((*(*a1 + 1952))(a1) && ((*(*a1 + 1952))(a1), CCLogStream::shouldLog()))
    {
      AppleBCMWLANCore::issueIfCounterIOVar(a1);
      if (v6)
      {
        goto LABEL_43;
      }
    }

    else if (v6)
    {
      goto LABEL_43;
    }

LABEL_44:
    if (v7)
    {
      IOFreeData();
    }

    return v4;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::issueIfCounterIOVar(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::handleIssueIfCounterIOVarAsyncCallback(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleIssueIfCounterIOVarAsyncCallback(a1);
      }
    }

    return v5;
  }

  v7 = OSData::withBytesNoCopy(*a4, *(a4 + 8));
  if (!v7)
  {
    AppleBCMWLANCore::handleIssueIfCounterIOVarAsyncCallback(a1);
    return v10;
  }

  v8 = v7;
  v9 = AppleBCMWLANCore::parseXTLVMessage(a1, v7);
  (v8->release)(v8);
  return v9;
}

uint64_t AppleBCMWLANCore::getPRIVATE_MAC(uint64_t a1, uint64_t a2)
{
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (!a2)
  {
    return 22;
  }

  *(a2 + 4) = AppleBCMWLANBGScanAdapter::isPrivateMacEnabled(*(*(a1 + 72) + 5496));
  *(a2 + 12) = AppleBCMWLANBGScanAdapter::getPrivateMacTimeout(*(*(a1 + 72) + 5496));
  v8 = 1048578;
  v7[0] = &v8;
  v7[1] = 0x1400140014;
  v4 = *(*(a1 + 72) + 5408);
  v6[0] = &v8;
  v6[1] = 20;
  result = AppleBCMWLANCommander::runIOVarGet(v4, "scanmac", v6, v7, 0);
  if (!result)
  {
    *(a2 + 16) = v9;
    *(a2 + 20) = WORD2(v9);
    *(a2 + 22) = *(&v9 + 6);
    *(a2 + 26) = WORD5(v9);
    *(a2 + 8) = WORD6(v9);
  }

  return result;
}

uint64_t AppleBCMWLANCore::getTRAP_INFO(uint64_t *a1, unsigned __int8 *a2)
{
  bzero(a2 + 12, 0x204uLL);
  *a2 = 1;
  v4 = *(a2 + 1);
  if (v4 != 1)
  {
    if (v4)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getTRAP_INFO(a1);
        }
      }
    }

    else if ((*(**(a1[9] + 5392) + 560))(*(a1[9] + 5392)))
    {
      *(a2 + 2) = (*(**(a1[9] + 5392) + 568))(*(a1[9] + 5392));
      v5 = *(**(a1[9] + 5392) + 576);

      return v5();
    }

    return 3758097095;
  }

  if (!AppleBCMWLANCore::featureFlagIsBitSet(a1, 35))
  {
    return 3758097095;
  }

  *(a2 + 2) = AppleBCMWLANJoinAdapter::getJoinTimeoutSequenceNum(*(a1[9] + 5416));
  v7 = *(a1[9] + 5416);

  return AppleBCMWLANJoinAdapter::copyJoinTimeoutBlob(v7, a2 + 12, 0x204uLL);
}

uint64_t AppleBCMWLANCore::getTRAP_CRASHTRACER_MINI_DUMP(uint64_t a1, _DWORD *a2)
{
  bzero(a2 + 1, 0x19000uLL);
  *a2 = 1;
  if (!(*(**(*(a1 + 72) + 5392) + 584))())
  {
    return 3758097095;
  }

  v4 = *(**(*(a1 + 72) + 5392) + 592);

  return v4();
}

uint64_t AppleBCMWLANCore::getWIFI_NOISE_PER_ANT(uint64_t *a1, uint64_t a2)
{
  if (!IO80211BssManager::isAssociated(*(a1[9] + 5432)))
  {
    return 3766625283;
  }

  v11 = 0;
  v9[1] = 0xC000C000CLL;
  v10 = 0;
  v4 = *(a1[9] + 5408);
  v8[0] = &v10;
  v8[1] = 12;
  v9[0] = &v10;
  v5 = AppleBCMWLANCommander::runIOVarGet(v4, "phy_noise_ant", v8, v9, 0);
  if (v5)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getWIFI_NOISE_PER_ANT(a1);
      }
    }
  }

  else if (HIDWORD(v10))
  {
    v7 = v11;
    *(a2 + 4) = HIDWORD(v10);
    *(a2 + 8) = v7;
  }

  else
  {
    *(a2 + 4) = 0;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getWIFI_NOISE_PER_ANT(a1);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::getLQM_CONFIG(uint64_t a1, uint64_t a2)
{
  if (!*(*(a1 + 72) + 5608))
  {
    return 3758097084;
  }

  *a2 = 1;
  StatsTimerIntervalMS = AppleBCMWLANLQM::getStatsTimerIntervalMS(*(*(a1 + 72) + 5608));
  result = 0;
  *(a2 + 4) = StatsTimerIntervalMS;
  *(a2 + 8) = *(*(a1 + 72) + 17764);
  *(a2 + 12) = *(*(a1 + 72) + 17768);
  v6 = *(*(a1 + 72) + 17776);
  *(a2 + 20) = *(*(a1 + 72) + 17779);
  *(a2 + 17) = v6;
  *(a2 + 24) = *(*(a1 + 72) + 17792);
  *(a2 + 25) = *(*(a1 + 72) + 17784);
  return result;
}

uint64_t AppleBCMWLANCore::getMIMO_STATUS(AppleBCMWLANCore *a1, uint64_t a2)
{
  if (!AppleBCMWLANCore::featureFlagIsBitSet(a1, 44))
  {
    return 3758097095;
  }

  v14 = 0;
  v13 = 2;
  v12[0] = &v13;
  v12[1] = 0x1000100010;
  v4 = *(*(a1 + 9) + 5408);
  v11[0] = &v13;
  v11[1] = 16;
  v5 = AppleBCMWLANCommander::runIOVarGet(v4, "mimo_ps_status", v11, v12, 0);
  if (!v5)
  {
    *a2 = 1;
    if ((v13 & 0xC00) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = BYTE1(v13) & 0xF;
    }

    *(a2 + 1) = v6;
    v7 = BYTE2(v13);
    if (BYTE2(v13) >= 4u)
    {
      v7 = 0;
    }

    *(a2 + 6) = v7;
    *(a2 + 5) = BYTE4(v13);
    *(a2 + 2) = *(&v13 + 5);
    if (HIBYTE(v13) >= 4u)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0x50281450u >> (8 * HIBYTE(v13));
    }

    *(a2 + 4) = v8;
    *(a2 + 7) = WORD1(v14);
    if (BYTE4(v14) > 1u)
    {
      if (BYTE4(v14) == 2)
      {
        v9 = 40;
        goto LABEL_24;
      }

      if (BYTE4(v14) != 3)
      {
        goto LABEL_22;
      }
    }

    else if (BYTE4(v14))
    {
      if (BYTE4(v14) == 1)
      {
        v9 = 20;
LABEL_24:
        *(a2 + 9) = v9;
        return v5;
      }

LABEL_22:
      *(a2 + 9) = 0;
      return v5;
    }

    v9 = 80;
    goto LABEL_24;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getMIMO_STATUS(a1);
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::getSLOW_WIFI_FEATURE_ENABLED(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  result = 0;
  *(a2 + 4) = *(*(a1 + 72) + 30065);
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getSLOW_WIFI_FEATURE_ENABLED(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  result = 0;
  *(a2 + 4) = *(*(a1 + 8) + 30065);
  return result;
}

uint64_t AppleBCMWLANCore::getSIB_COEX_STATUS(OSObject *a1, int *a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  *a2 = *(a1[1].ivars + 8902);
  a2[1] = *(a1[1].ivars + 8903);
  if (!(a1->OSMetaClassBase::__vftable[34].free)(a1) || ((a1->OSMetaClassBase::__vftable[34].free)(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      ClassNameHelper = getClassNameHelper(a1);
      v5 = *a2;
      v6 = a2[1];
      v8[0] = 67110658;
      v8[1] = 73;
      v9 = 2080;
      v10 = "getSIB_COEX_STATUS";
      v11 = 1024;
      v12 = 32718;
      v13 = 2080;
      v14 = ClassNameHelper;
      v15 = 2080;
      v16 = "getSIB_COEX_STATUS";
      v17 = 1024;
      v18 = v5;
      v19 = 1024;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: %s::%s getting sib coex mode %d , timeToTST %d\n", v8, 0x38u);
    }
  }

  result = (a1->OSMetaClassBase::__vftable[34].free)(a1);
  if (result)
  {
    (a1->OSMetaClassBase::__vftable[34].free)(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANCore::getSIB_COEX_STATUS();
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getSSID_TRANSITION_SUPPORT(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  result = 0;
  *(a2 + 4) = *(*(a1 + 72) + 30066);
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getSSID_TRANSITION_SUPPORT(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  result = 0;
  *(a2 + 4) = *(*(a1 + 8) + 30066);
  return result;
}

uint64_t AppleBCMWLANCore::dbgSuppressScans(unint64_t this, uint64_t a2)
{
  v9 = a2;
  v4 = *(*(this + 72) + 5408);
  v8[0] = &v9;
  v8[1] = 4;
  v5 = AppleBCMWLANCommander::runIOCtlSet(v4, 116, v8, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::dbgSuppressScans(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v5, a2);
      }
    }
  }

  else
  {
    v6 = (*(this + 72) + 10376);
    if (a2)
    {
      atomic_fetch_or(v6, 0x20000000u);
    }

    else
    {
      atomic_fetch_and(v6, 0xDFFFFFFF);
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::dbgSuppressScans(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setLQM_CONFIG(AppleBCMWLANCore *this, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  if (*(*(this + 9) + 1087))
  {
    return 45;
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 39))
  {
    if (*(a2 + 4) >= 0x3E8u && *(a2 + 8) >= 0x3E8u && *(a2 + 12) >= 0x3E8u)
    {
      for (i = 0; i != 7; ++i)
      {
        if (*(a2 + i + 17) - 11 <= 0x90)
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v8 = (*(*this + 1952))(this);
              v12 = *(a2 + i + 17);
              CCLogStream::logAlert(v8, "[dk] %s@%d:%d is not valid rssi_level for count:%d\n");
            }
          }

          return 22;
        }
      }

      v6 = 0;
      while (*(a2 + v6 + 25) < 0x64u)
      {
        if (++v6 == 8)
        {
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 0x40000000;
          v14[2] = ___ZN16AppleBCMWLANCore13setLQM_CONFIGEP23apple80211_lqm_config_t_block_invoke;
          v14[3] = &__block_descriptor_tmp_1984;
          v14[4] = this;
          v14[5] = a2;
          v7 = AppleBCMWLANCore::setEcountersEnableStateSync(this, v14, 1);
          if (v7)
          {
            v3 = v7;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::setLQM_CONFIG(this);
              }
            }
          }

          else
          {
            v10 = *(*(this + 9) + 5608);
            if (v10)
            {
              v3 = AppleBCMWLANLQM::setStatsTimerIntervalMS(v10, *(a2 + 4));
            }

            else
            {
              v3 = 0;
            }

            AppleBCMWLANCore::configureLqmRssiUpdates(this, *(a2 + 8), (a2 + 17));
            AppleBCMWLANCore::configureLqmChanQUpdates(this, *(a2 + 12), *(a2 + 24), (a2 + 25));
          }

          return v3;
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v11 = (*(*this + 1952))(this);
          v13 = *(a2 + v6 + 25);
          CCLogStream::logAlert(v11, "[dk] %s@%d:%d is not valid CCA Bound for count:%d\n");
        }
      }
    }

    return 22;
  }

  v3 = 3758097084;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setLQM_CONFIG(this);
    }
  }

  return v3;
}

uint64_t ___ZN16AppleBCMWLANCore13setLQM_CONFIGEP23apple80211_lqm_config_t_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1[9] + 17772) = (*(*(a1 + 40) + 4) + 500) / 0x3E8u;
  if ((*(*v1 + 1952))(v1))
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      ___ZN16AppleBCMWLANCore13setLQM_CONFIGEP23apple80211_lqm_config_t_block_invoke_cold_1(v1);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::configureLqmRssiUpdates(AppleBCMWLANCore *this, int a2, const signed __int8 *a3)
{
  v4 = 0;
  *(*(this + 9) + 17764) = a2;
  v5 = (*(this + 9) + 17776);
  v6 = *a3;
  *(v5 + 3) = *(a3 + 3);
  *v5 = v6;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  LODWORD(v5) = *(*(this + 9) + 17764);
  *__str = 0u;
  v19 = 0u;
  memset(&v17[1], 0, 15);
  v17[0] = v5;
  v7 = __str;
  v8 = 100;
  do
  {
    v9 = *(*(this + 9) + v4 + 17776);
    *(&v17[1] + v4 + 1) = *(*(this + 9) + v4 + 17776);
    if (v8 >= 7)
    {
      v10 = v4 == 6 ? "." : ",";
      v11 = snprintf(v7, v8, "%d%s ", v9, v10);
      if (v11 >= 1)
      {
        v7 += v11;
        v8 -= v11;
      }
    }

    v4 = ++LOBYTE(v17[1]);
  }

  while (LOBYTE(v17[1]) < 7u);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v15 = (*(*this + 1952))(this);
      CCLogStream::logAlert(v15, "[dk] %s@%d:Setting rate_limit_msec %d rssi_levels %s\n", "configureLqmRssiUpdates", 41008, v17[0], __str);
    }
  }

  v12 = *(*(this + 9) + 5408);
  v16[0] = v17;
  v16[1] = 19;
  v13 = AppleBCMWLANCommander::runIOVarSet(v12, "rssi_event", v16, 0, 0);
  if (v13)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLqmRssiUpdates(this);
      }
    }
  }

  else
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  return v13;
}

uint64_t AppleBCMWLANCore::configureLqmChanQUpdates(AppleBCMWLANCore *this, int a2, unsigned int a3, const unsigned __int8 *a4)
{
  v5 = this + 72;
  *(*(this + 9) + 17768) = a2;
  *(*(this + 9) + 17792) = a3;
  *(*(this + 9) + 17784) = *a4;
  memset(&v15[1], 0, 80);
  v17 = 0u;
  v16 = 0u;
  v6 = *(this + 9);
  v15[0] = v6[2221].i32[0];
  HIWORD(v15[1]) = 3;
  BYTE1(v15[2]) = 8;
  v7 = v6[2223];
  v8 = vdupq_n_s16(a3);
  *&v15[3] = vsubq_s16(vmovl_u8(v7), v8);
  *&v15[7] = vaddw_u8(v8, v7);
  if ((*(*this + 1952))())
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureLqmChanQUpdates(this);
    }
  }

  LOWORD(v15[11]) = 2049;
  *&v15[16] = xmmword_1003ADBC0;
  *&v15[12] = xmmword_1003ADBD0;
  LOWORD(v15[20]) = 258;
  LOWORD(v17) = -85;
  LOWORD(v16) = -90;
  v9 = *(*v5 + 5408);
  v14[0] = v15;
  v14[1] = 116;
  v10 = AppleBCMWLANCommander::runIOVarSet(v9, "chq_event", v14, 0, 0);
  if (v10 != -469794537)
  {
    v11 = v10;
    if (!v10)
    {
LABEL_9:
      AppleBCMWLANCore::addEventBit(this);
      AppleBCMWLANCore::featureFlagSetBit(this, 33);
      goto LABEL_12;
    }

    if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
    {
      AppleBCMWLANCore::configureLqmChanQUpdates(this);
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    else if (!v11)
    {
      goto LABEL_9;
    }
  }

  AppleBCMWLANCore::featureFlagClearBit(this, 33);
LABEL_12:
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 46))
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  AppleBCMWLANCore::addEventBit(this);
  v12 = AppleBCMWLANCore::writeEventBitField(this);
  AppleBCMWLANCore::resetExtendedEventBit(this, 0xA5u);
  AppleBCMWLANCore::updateCurrentFWCountryCode(this);
  return v12;
}

uint64_t AppleBCMWLANCore::setWCL_SCAN_REQ(AppleBCMWLANCore *this, uint64_t a2)
{
  v4 = *(a2 + 84);
  if (v4)
  {
    v5 = (a2 + 92);
    v6 = v4;
    while (1)
    {
      v7 = *v5;
      v5 += 3;
      if (v7 <= 0xD)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    AppleBCMWLANCore::checkBackToBackHostScans(this, v4);
  }

LABEL_7:
  v8 = *(*(this + 9) + 5424);

  return AppleBCMWLANScanAdapter::startScan(v8, a2);
}

uint64_t AppleBCMWLANCore::checkBackToBackHostScans(AppleBCMWLANCore *this, int a2)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if (a2 == 3)
  {
    v4 = *(*(this + 9) + 35960);
    if (-v4 > 3)
    {
      *(*(this + 9) + 35972) = 1;
      *(*(this + 9) + 35960) = 0;
      v6 = *(this + 9);
      v7 = *(v6 + 35968);
      if (v7)
      {
        v8 = (v6 + 19092);
        if (v7 > 3)
        {
          ++*v8;
        }

        else
        {
          ++v8[1];
        }

        *(*(this + 9) + 35968) = 0;
      }
    }

    else if (v4)
    {
      ++*(*(this + 9) + 35968);
      v5 = *(this + 9);
      if (*(v5 + 35972) == 1)
      {
        *(v5 + 35972) = 0;
        ++*(*(this + 9) + 19088);
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
      return AppleBCMWLANCore::checkBackToBackHostScans(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setNDD_REQ(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 72) + 35992);
  if (v2)
  {
    return AppleBCMWLANNearbyDeviceDiscoveryAdapter::setNDD_REQ(v2, a2);
  }

  else
  {
    return 3758097095;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::setNDD_REQ(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 8) + 35992);
  if (v2)
  {
    return AppleBCMWLANNearbyDeviceDiscoveryAdapter::setNDD_REQ(v2, a2);
  }

  else
  {
    return 3758097095;
  }
}

uint64_t AppleBCMWLANCore::isScanAllowed(AppleBCMWLANCore *this)
{
  v2 = *(this + 9);
  if ((*(v2 + 10379) & 0x20) == 0)
  {
    if (IO80211BssManager::isAssociated(*(v2 + 5432)))
    {
      if (IO80211InfraInterface::getBtCoexState(*(*(this + 9) + 11288)))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::isScanAllowed(this);
          }
        }

        goto LABEL_21;
      }

      if ((AppleBCMWLANCore::featureFlagIsBitSet(this, 60) & 1) == 0)
      {
        v5 = -1431655766;
        if (!IO80211BssManager::getCurrentRSSI(*(*(this + 9) + 5432), &v5))
        {
          v3 = v5;
          if (v3 <= AppleBCMWLANConfigManager::getEnterpriseRoamTrigger(*(*(this + 9) + 5464)) && v5 >= -90)
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::isScanAllowed(this);
              }
            }

LABEL_21:
            result = 0;
            atomic_fetch_or((*(this + 9) + 10376), 8u);
            return result;
          }
        }
      }
    }

    else if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::isScanAllowed(this);
      }
    }

    return 1;
  }

  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANCore::isScanAllowed(this);
      return 0;
    }
  }

  return result;
}

IO80211Controller *AppleBCMWLANCore::isScanResumeAllowed(IO80211Controller *this)
{
  if ((*(*(this + 9) + 10376) & 8) != 0)
  {
    v1 = this;
    this = AppleBCMWLANCore::isScanAllowed(this);
    if (this)
    {
      this = IO80211Controller::postMessage(v1, *(*(v1 + 9) + 11288), 0x24u, 0, 0, 1);
      atomic_fetch_and((*(v1 + 9) + 10376), 0xFFFFFFF7);
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::setSCAN_CONTROL(uint64_t *a1)
{
  memset(v4, 170, sizeof(v4));
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setSCAN_CONTROL(a1);
    }
  }

  mach_continuous_time();
  absolutetime_to_nanoseconds();
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if (0xAAAAAAAAAAAAAAAALL - v4[3] >= 0x6052340)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setSCAN_CONTROL(a1);
      }
    }
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v3 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v3, "[dk] %s@%d:t54: %06llu, t43: %06llu, t32: %06llu, t21: %06llu, \n", "setSCAN_CONTROL", 33254, (0xAAAAAAAAAAAAAAAALL - v4[0]) / 0xF4240, (v4[0] - v4[1]) / 0xF4240uLL, (v4[1] - v4[2]) / 0xF4240uLL, (v4[2] - v4[3]) / 0xF4240uLL);
    }
  }

  return 0;
}

{
  v2 = OUTLINED_FUNCTION_2_7(a1);
  v4 = (*(v3 + 1952))(v2);
  v5 = "OFF";
  if (v1[1])
  {
    v6 = "OFF";
  }

  else
  {
    v6 = "ON";
  }

  if (v1[2])
  {
    v7 = "OFF";
  }

  else
  {
    v7 = "ON";
  }

  if (v1[3])
  {
    v5 = "ON";
  }

  return CCLogStream::logAlert(v4, "[dk] %s@%d:Abort scan %d, ePnoScans %s, roamScans %s, limitedRoam %s\n", "setSCAN_CONTROL", 33215, *v1, v6, v7, v5);
}

{
  v1 = OUTLINED_FUNCTION_2_7(a1);
  (*(v2 + 1952))(v1);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logCrit(v3, "[dk] %s@%d: ERROR: setSCAN_CONTROL is taking more time %06llu\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setOFFLOAD_ARP(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  v4 = a1 + 9;
  v3 = a1[9];
  if (!*(v3 + 11288))
  {
    return 22;
  }

  *(v3 + 9492) = *(a2 + 12);
  v6 = *v4;
  if (*(a2 + 4))
  {
    *(v6 + 9484) = *(a2 + 8);
    *(a1[9] + 9488) = 0;
    v7 = (*(*a1 + 104))(a1);
    (*(*v7 + 56))(v7, AppleBCMWLANCore::handleIPv4AddressNotificationGated, a1[9] + 9484, 0, 0, 0);
    v6 = a1[9];
    v8 = *(v6 + 11296);
    if (v8)
    {
      AppleBCMWLANProximityInterface::setIPv4Addr(v8, *(v6 + 9484));
      v6 = *v4;
    }
  }

  v9 = *(a2 + 16);
  *(v6 + 9500) = *(a2 + 20);
  *(v6 + 9496) = v9;
  v10 = *v4;
  if (*(*v4 + 11288))
  {
    v16 = *(v10 + 9484);
    v17 = *(v10 + 9492);
    v18 = *(a2 + 16);
    v19 = *(a2 + 20);
    IO80211InfraInterface::setIPv4Params();
    v10 = *v4;
  }

  v11 = *(v10 + 9492);
  if (v11 && *(v10 + 9484))
  {
    v12 = (*(*a1 + 104))(a1);
    (*(*v12 + 56))(v12, AppleBCMWLANCore::handleKeepaliveDataNotificationGated, a1[9] + 9496, 0, 0, 0);
    v10 = a1[9];
    v11 = *(v10 + 9492);
  }

  v13 = *(v10 + 9484);
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v15 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v15, "[dk] %s@%d: Address count[%d], WoW IPv4 address[ %u.%u.%u.%u ], Router IPv4 address[ %u.%u.%u.%u ]\n", "setOFFLOAD_ARP", 33327, *(a2 + 4), v13, BYTE1(v13), BYTE2(v13), HIBYTE(v13), v11, BYTE1(v11), BYTE2(v11), HIBYTE(v11));
    }
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANCore::setOFFLOAD_ARP(a1);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setOFFLOAD_NDP(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  v3 = a1[9];
  if (!*(v3 + 11288))
  {
    return 22;
  }

  *(v3 + 10036) = *(a2 + 4);
  v5 = a1[9];
  v6 = *(v5 + 10036);
  if (v6 >= 5)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setOFFLOAD_NDP(a1);
      }
    }

    *(a1[9] + 10036) = 4;
    v5 = a1[9];
    v6 = *(v5 + 10036);
  }

  if (v6)
  {
    v7 = 0;
    v8 = (a2 + 8);
    v9 = 9524;
    do
    {
      v10 = *v8++;
      *(v5 + v9) = v10;
      ++v7;
      v5 = a1[9];
      v9 += 16;
    }

    while (v7 < *(v5 + 10036));
  }

  v11 = 9780;
  v12 = 4;
  do
  {
    v13 = (a1[9] + v11);
    *v13 = 0;
    v13[1] = 0;
    v11 += 16;
    --v12;
  }

  while (v12);
  *(a1[9] + 9508) = -2;
  *(a1[9] + 9509) = 0x80;
  v14 = a1[9] + 9510;
  *(v14 + 4) = 0;
  *v14 = 0;
  *(a1[9] + 9516) = *(a1[9] + 9532);
  v15 = a1[9];
  if (*(v15 + 11288))
  {
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24[9] = v16;
    v24[8] = v16;
    v24[7] = v16;
    v24[6] = v16;
    v24[5] = v16;
    v24[4] = v16;
    v24[3] = v16;
    v24[2] = v16;
    v24[1] = v16;
    v24[0] = v16;
    v17 = *(v15 + 10036);
    if (v17)
    {
      v18 = 0;
      v19 = v24;
      v20 = (a2 + 8);
      do
      {
        v21 = *v20++;
        *v19++ = v21;
        ++v18;
      }

      while (v18 < v17);
    }

    IO80211InfraInterface::setIPv6Params();
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setOFFLOAD_NDP(a1);
      }
    }
  }

  v22 = (*(*a1 + 104))(a1);
  (*(*v22 + 56))(v22, AppleBCMWLANCore::handleIPv6AddressNotificationGated, a1[9] + 9524, 0, 0, 0);
  return 0;
}

uint64_t AppleBCMWLANCore::resetAutoCountry(AppleBCMWLANCore *this)
{
  v19 = 0;
  v20 = 0;
  if (!AppleBCMWLANCore::featureFlagIsBitSet(this, 28))
  {
    return 0;
  }

  v2 = this + 72;
  isBringingUpLink = AppleBCMWLANNetAdapter::isBringingUpLink(*(*(this + 9) + 5600));
  isJoining = AppleBCMWLANJoinAdapter::isJoining(*(*(this + 9) + 5416));
  if ((IO80211BssManager::isAssociated(*(*(this + 9) + 5432)) & 1) != 0 || (isBringingUpLink & 1) != 0 || isJoining)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v14 = (*(*this + 1952))(this);
        isAssociated = IO80211BssManager::isAssociated(*(*(this + 9) + 5432));
        CCLogStream::logAlert(v14, "[dk] %s@%d: isAssociated: %d, isBringingUpLink: %d, isBusy: %d\n", "resetAutoCountry", 33397, isAssociated, isBringingUpLink, isJoining);
      }
    }

    return 0;
  }

  v18 = -1431655766;
  v17 = -1431655766;
  v5 = (*(*this + 88))(this);
  if ((*(*v5 + 136))(v5))
  {
    v16[0] = this;
    v16[1] = AppleBCMWLANCore::handleAutoCountryAsyncCallBack;
    v16[2] = 0;
    if (AppleBCMWLANConfigManager::isAutoCountryEnabled(*(*(this + 9) + 5464)))
    {
      v18 = 0;
      v19 = &v18;
      v20 = 4;
      if (AppleBCMWLANCommander::sendIOVarSet(*(*v2 + 5408), "autocountry"))
      {
        v6 = AppleBCMWLANCommander::sendIOCtlSet(*(*v2 + 5408), 47, &v19, kNoRxExpected, v16, 0);
        if (v6)
        {
          v7 = v6;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::resetAutoCountry(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v18, v7);
            }
          }

          return v7;
        }
      }
    }

    if (AppleBCMWLANConfigManager::isEnhancedLocaleEnabled(*(*v2 + 5464)))
    {
      v17 = !AppleBCMWLANCore::isRestrictedCountry(this);
      v19 = &v17;
      v20 = 4;
      v10 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 9) + 5408), "ccode_pr_2g");
      if (v10)
      {
        v7 = v10;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::resetAutoCountry(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v17, v7);
          }
        }

        return v7;
      }
    }

    if (!AppleBCMWLANCore::isRestrictedCountry(this))
    {
      if (AppleBCMWLANConfigManager::isAutoCountryEnabled(*(*v2 + 5464)))
      {
        v18 = 1;
        v19 = &v18;
        v20 = 4;
        if (AppleBCMWLANCommander::sendIOVarSet(*(*v2 + 5408), "autocountry"))
        {
          v12 = AppleBCMWLANCommander::sendIOCtlSet(*(*v2 + 5408), 47, &v19, kNoRxExpected, v16, 0);
          if (v12)
          {
            v7 = v12;
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::resetAutoCountry(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v18, v7);
              }
            }

            return v7;
          }
        }
      }

      goto LABEL_47;
    }

    return 0;
  }

  if (AppleBCMWLANConfigManager::isAutoCountryEnabled(*(*v2 + 5464)) && (v18 = 0, v19 = &v18, v20 = 4, AppleBCMWLANCommander::runIOVarSet(*(*v2 + 5408), "autocountry", &v19, 0, 0)) && (v9 = AppleBCMWLANCommander::runIOCtlSet(*(*v2 + 5408), 47, &v19, 0, 0), v9))
  {
    v7 = v9;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::resetAutoCountry(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v18, v7);
      }
    }
  }

  else if (AppleBCMWLANConfigManager::isEnhancedLocaleEnabled(*(*v2 + 5464)) && (v17 = !AppleBCMWLANCore::isRestrictedCountry(this), v19 = &v17, v20 = 4, v11 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 9) + 5408), "ccode_pr_2g", &v19, 0, 0), v11))
  {
    v7 = v11;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::resetAutoCountry(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v17, v7);
      }
    }
  }

  else
  {
    if (AppleBCMWLANCore::isRestrictedCountry(this))
    {
      return 0;
    }

    if (!AppleBCMWLANConfigManager::isAutoCountryEnabled(*(*v2 + 5464)) || (v18 = 1, v19 = &v18, v20 = 4, !AppleBCMWLANCommander::runIOVarSet(*(*v2 + 5408), "autocountry", &v19, 0, 0)) || (v13 = AppleBCMWLANCommander::runIOCtlSet(*(*v2 + 5408), 47, &v19, 0, 0), !v13))
    {
LABEL_47:
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::resetAutoCountry(this);
        }
      }

      return 0;
    }

    v7 = v13;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::resetAutoCountry(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v18, v7);
      }
    }
  }

  return v7;
}

uint64_t AppleBCMWLANCore::setupRestrictedCountryCode(AppleBCMWLANCore *this)
{
  v2 = 3758097095;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 1;
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 28) && AppleBCMWLANCore::featureFlagIsBitSet(this, 29))
  {
    v3 = this + 72;
    if (AppleBCMWLANConfigManager::isEnhancedLocaleEnabled(*(*(this + 9) + 5464)) && (v13 = &v12, v14 = 4, v4 = AppleBCMWLANCommander::runIOVarSet(*(*v3 + 5408), "ccode_pr_2g", &v13, 0, 0), v4))
    {
      v2 = v4;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupRestrictedCountryCode(this);
        }
      }
    }

    else if ((IO80211BssManager::isAssociated(*(*v3 + 5432)) & 1) == 0 && AppleBCMWLANConfigManager::isAutoCountryEnabled(*(*v3 + 5464)) && (v13 = &v12 + 1, v14 = 4, v5 = AppleBCMWLANCommander::runIOVarSet(*(*v3 + 5408), "autocountry", &v13, 0, 0), v5))
    {
      v2 = v5;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupRestrictedCountryCode(this);
        }
      }
    }

    else
    {
      v13 = &v11;
      v14 = 4;
      v6 = AppleBCMWLANCommander::runIOVarSet(*(*v3 + 5408), "passive_on_restricted", &v13, 0, 0);
      if (v6)
      {
        v2 = v6;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setupRestrictedCountryCode(this);
          }
        }
      }

      else if (AppleBCMWLANCore::featureFlagIsBitSet(this, 29) && (v13 = &v12 + 1, v14 = 4, v8 = AppleBCMWLANCommander::runIOVarSet(*(*v3 + 5408), "country_default", &v13, 0, 0), v8))
      {
        v2 = v8;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setupRestrictedCountryCode(this);
          }
        }
      }

      else
      {
        v2 = 3825172766;
        v9 = *(this + 9);
        if (AppleBCMWLANCore::checkCountryCodeValidness(this, (v9 + 6740)) == -469794530)
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setupRestrictedCountryCode(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 9);
            }
          }
        }

        else
        {
          v13 = (v9 + 6740);
          v14 = 4;
          v2 = AppleBCMWLANCommander::runIOCtlSet(*(v9 + 5408), 84, &v13, 0, 0);
          v10 = (*(*this + 1952))(this);
          if (v2)
          {
            if (v10)
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::setupRestrictedCountryCode(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 72, v2);
              }
            }
          }

          else
          {
            if (v10)
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::setupRestrictedCountryCode(this);
              }
            }

            return 0;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::checkCountryCodeValidness(AppleBCMWLANCore *this, const char *__s1)
{
  v2 = 3825172766;
  v3 = *(this + 9);
  v4 = *(v3 + 6760);
  if (v4)
  {
    v6 = 0;
    v7 = v3 + 6764;
    while (strcmp(__s1, (v7 + 4 * v6)))
    {
      if (v4 <= ++v6)
      {
        return v2;
      }
    }

    return 0;
  }

  return v2;
}

uint64_t AppleBCMWLANCore::setupCountryCode(AppleBCMWLANCore *this)
{
  v2 = 3758097095;
  if (!AppleBCMWLANCore::featureFlagIsBitSet(this, 28) || !AppleBCMWLANCore::featureFlagIsBitSet(this, 29))
  {
    return v2;
  }

  v14 = 0;
  v16 = &v14;
  v17 = 4;
  v3 = this + 72;
  v4 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 9) + 5408), "passive_on_restricted", &v16, 0, 0);
  if (v4)
  {
    v2 = v4;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupCountryCode(this);
      }
    }

    return v2;
  }

  v15 = 1;
  v16 = &v15;
  v17 = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(*(*v3 + 5408), "country_default", &v16, 0, 0);
  if (v5)
  {
    v2 = v5;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupCountryCode(this);
      }
    }

    return v2;
  }

  v7 = *v3;
  if (*(*v3 + 6756) == 1)
  {
    v2 = 3825172766;
    if (AppleBCMWLANCore::checkCountryCodeValidness(this, (v7 + 6736)) == -469794530)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupCountryCode(this);
        }
      }

      return v2;
    }

    v16 = (v7 + 6736);
    v17 = 4;
    v13 = AppleBCMWLANCommander::runIOCtlSet(*(v7 + 5408), 84, &v16, 0, 0);
    v2 = v13;
    if (v13 != -469794532 && v13)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupCountryCode(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 72, v2);
        }
      }

      return v2;
    }

    goto LABEL_37;
  }

  v16 = (v7 + 6732);
  v17 = 4;
  v8 = AppleBCMWLANCommander::runIOCtlSet(*(v7 + 5408), 84, &v16, 0, 0);
  if (v8 != -469794532 && v8 != 0)
  {
    v10 = v8;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupCountryCode(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 72, v10);
      }
    }
  }

  v15 = 0;
  v16 = &v15;
  v17 = 4;
  v11 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 9) + 5408), "country_default", &v16, 0, 0);
  v12 = *this;
  if (v11)
  {
    v2 = v11;
    if ((*(v12 + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupCountryCode(this);
      }
    }
  }

  else
  {
    v2 = (*(v12 + 560))(this);
    if (!v2)
    {
LABEL_37:
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setupCountryCode(this);
        }
      }

      return v2;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setupCountryCode(this);
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::setWCL_ASSOCIATE(IO80211Controller *a1, uint64_t a2, unint64_t a3)
{
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *v20 = 0u;
  v21 = 0u;
  if (IO80211ThreadProcessInfo::getProcessName(v20, 0x80, a3))
  {
    IO80211Controller::getProcessName(a1, v20, 0x80uLL);
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setWCL_ASSOCIATE(a1);
    }
  }

  v5 = (*(*a1 + 560))(a1);
  v6 = *(a1 + 9);
  if (v5)
  {
    v7 = v5;
    *(v6 + 10384) = 0;
  }

  else
  {
    atomic_fetch_and((v6 + 10376), 0xFFFDFFFF);
    *(*(a1 + 9) + 8816) = 0;
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    v18 = *(a2 + 528);
    v8 = *(*(a1 + 9) + 5432);
    IO80211BssManager::setAuthContext();
    v9 = *(*(a1 + 9) + 5432);
    BandInfoBitmap = IO80211GetBandInfoBitmap(*(a2 + 976));
    IO80211BssManager::setBandInfoBitmap(v9, BandInfoBitmap);
    IO80211BssManager::setAssocSSID(*(*(a1 + 9) + 5432), (a2 + 32), *(a2 + 28));
    AppleBCMWLANRoamAdapter::skipPscScansForRoamScans(*(*(a1 + 9) + 5568), (*(a2 + 480) & 0x10) == 0);
    IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(a1, 115);
    v12 = *(a1 + 9);
    if (IsBitSet && *(v12 + 5592) && (*(a2 + 480) & 0x100) != 0)
    {
      v13 = (*(**(v12 + 11288) + 1072))(*(v12 + 11288));
      *v19.octet = v13;
      *&v19.octet[4] = WORD2(v13);
      AppleBCMWLAN11beAdapter::disableMlo(*(*(a1 + 9) + 5592), &v19);
      v12 = *(a1 + 9);
    }

    v7 = AppleBCMWLANJoinAdapter::performJoin(*(v12 + 5416), a2);
    if (v7)
    {
      AppleBCMWLANPowerManager::configureMIMOPowerSaveForJoinFailure(*(*(a1 + 9) + 5520));
    }

    else if (*(a2 + 12) == 1)
    {
      IO80211BssManager::setAdHocCreated(*(*(a1 + 9) + 5432), 1);
      v14 = *(a1 + 9);
      if (*(v14 + 11296))
      {
        *(v14 + 222) = 1;
        AppleBCMWLANProximityInterface::bringdownLink(*(*(a1 + 9) + 11296));
      }
    }
  }

  return v7;
}

uint64_t AppleBCMWLANCore::createNANInterface(uint64_t *a1, uint64_t a2)
{
  v4 = 3758097095;
  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 6))
  {
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v5 = *(a2 + 12);
    if ((v5 - 8) < 2)
    {
      v14 = 1;
      if (IOParseBootArgNumber("enable_nan", &v14, 1))
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::createNANInterface(a1);
          }
        }
      }

      if (v14 == 1)
      {
        v6 = a1 + 9;
        v7 = *(a1[9] + 29944);
        if (v7)
        {
          goto LABEL_31;
        }

        NANMgmtDataInterface = AppleBCMWLANCore::createNANMgmtDataInterface(a1, a2);
        if (NANMgmtDataInterface)
        {
          v4 = NANMgmtDataInterface;
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::createNANInterface(a1);
            }
          }

          return v4;
        }

        v10 = 29944;
        goto LABEL_30;
      }

      return 3758097122;
    }

    if (v5 != 10)
    {
      return v4;
    }

    v14 = 1;
    if (IOParseBootArgNumber("enable_nan_data_if", &v14, 1))
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::createNANInterface(a1);
        }
      }
    }

    if (v14 != 1)
    {
      return 3758097122;
    }

    v6 = a1 + 9;
    v7 = *(a1[9] + 29952);
    if (v7)
    {
      goto LABEL_31;
    }

    NANDataInterface = AppleBCMWLANCore::createNANDataInterface(a1, a2);
    if (!NANDataInterface)
    {
      v10 = 29952;
LABEL_30:
      v7 = *(*v6 + v10);
LABEL_31:
      v11 = (*(*v7 + 160))(v7);
      strlcpy((a2 + 16), v11, 0x10uLL);
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          v13 = (*(*a1 + 1952))(a1);
          CCLogStream::logAlert(v13, "[dk] %s@%d:Created virtif <%s> role %u\n", "createNANInterface", 34033, (a2 + 16), *(a2 + 12));
        }
      }

      return 0;
    }

    v4 = NANDataInterface;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::createNANInterface(a1);
      }
    }
  }

  else if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::createNANInterface(a1);
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::setVIRTUAL_IF_CREATE(uint64_t *a1, uint64_t a2)
{
  v15 = 1;
  IOParseBootArgNumber("wlan.dk.awdl", &v15, 4);
  v5 = (a2 + 12);
  v4 = *(a2 + 12);
  if (v4 == 6 && v15 == 0)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      ProxInterface = 1;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setVIRTUAL_IF_CREATE(a1);
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if ((v4 - 8) < 3)
    {
      return AppleBCMWLANCore::createNANInterface(a1, a2);
    }

    if (v4 == 6)
    {
      if (!*(a1[9] + 11296))
      {
        ProxInterface = AppleBCMWLANCore::createProxInterface(a1, a2);
        if (ProxInterface)
        {
          return ProxInterface;
        }
      }

      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v8 = (a2 + 16);
      v9 = (*(**(a1[9] + 11296) + 160))(*(a1[9] + 11296));
      strlcpy(v8, v9, 0x10uLL);
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          v13 = (*(*a1 + 1952))(a1);
          CCLogStream::logAlert(v13, "[dk] %s@%d: create virtif <%s> role %u\n", "setVIRTUAL_IF_CREATE", 34090, v8, *v5);
        }
      }

      return 0;
    }

    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setVIRTUAL_IF_CREATE(a1);
      }
    }

    if (*v5 == 7)
    {
      v11 = a1 + 9;
      v10 = a1[9];
      if (*(v10 + 11304))
      {
        ProxInterface = 3758097106;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setVIRTUAL_IF_CREATE(a1);
            return 3758097106;
          }
        }
      }

      else
      {
        IOService::Create(a1, a1, "DriverKit_IO80211SoftAP", (v10 + 11304), 0);
        if (*(a1[9] + 11304))
        {
          if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 13))
          {
            AppleBCMWLANIO80211APSTAInterface::setDisableHostapdAuthentication(*(*v11 + 11304), 1);
          }

          if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 12))
          {
            AppleBCMWLANIO80211APSTAInterface::setInternalAPAuthentication(*(*v11 + 11304), 1);
          }

          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setVIRTUAL_IF_CREATE(a1);
            }
          }

          return 0;
        }

        ProxInterface = 3758097085;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setVIRTUAL_IF_CREATE(a1);
          }
        }
      }
    }

    else
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          v14 = (*(*a1 + 1952))(a1);
          CCLogStream::logAlert(v14, "[dk] %s@%d:ERROR: Invalid virtual interface role 0x%X name %s \n", "setVIRTUAL_IF_CREATE", 34095, *(a2 + 12), (a2 + 16));
        }
      }

      return 3758096385;
    }
  }

  return ProxInterface;
}

uint64_t AppleBCMWLANCore::setIBSS_MODE(IO80211Controller *a1, uint64_t a2, unint64_t a3)
{
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  *v29 = 0u;
  v30 = 0u;
  if (IO80211ThreadProcessInfo::getProcessName(v29, 0x80, a3))
  {
    IO80211Controller::getProcessName(a1, v29, 0x80uLL);
  }

  v5 = *(*(a1 + 9) + 11296);
  if (a2)
  {
    if (v5)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setIBSS_MODE(a1);
        }
      }

      v6 = AppleBCMWLANProximityInterface::bringdownLink(*(*(a1 + 9) + 11296));
      if (v6)
      {
        v7 = v6;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setIBSS_MODE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v7, v29);
          }
        }
      }
    }

    if (*(*(a1 + 9) + 29944))
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setIBSS_MODE(a1);
        }
      }

      v8 = AppleBCMWLANNANInterface::bringdownLink(*(*(a1 + 9) + 29944));
      if (v8)
      {
        v9 = v8;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setIBSS_MODE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v9, v29);
          }
        }
      }
    }

    if (*(*(a1 + 9) + 29952))
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setIBSS_MODE(a1);
        }
      }

      v10 = AppleBCMWLANNANDataInterface::bringdownLink(*(*(a1 + 9) + 29952));
      if (v10)
      {
        v11 = v10;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setIBSS_MODE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v11, v29);
          }
        }
      }
    }

    AdhocNetwork = AppleBCMWLANJoinAdapter::createAdhocNetwork(*(*(a1 + 9) + 5416), a2);
    v13 = *(a1 + 9);
    if (AdhocNetwork)
    {
      if (*(v13 + 11296) && *(v13 + 29944))
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setIBSS_MODE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, AdhocNetwork, v29);
          }
        }

        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setIBSS_MODE(a1);
          }
        }

        v14 = AppleBCMWLANProximityInterface::bringupLink(*(*(a1 + 9) + 11296));
        if (v14)
        {
          v15 = v14;
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setIBSS_MODE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v15, v29);
            }
          }
        }

        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setIBSS_MODE(a1);
          }
        }

        v16 = AppleBCMWLANNANInterface::bringupLink(*(*(a1 + 9) + 29944));
        if (v16)
        {
          v17 = v16;
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setIBSS_MODE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v17, v29);
            }
          }
        }

        if (*(*(a1 + 9) + 29952))
        {
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setIBSS_MODE(a1);
            }
          }

          v18 = AppleBCMWLANNANDataInterface::bringupLink(*(*(a1 + 9) + 29952));
          if (v18)
          {
            v19 = v18;
            if ((*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::setIBSS_MODE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v19, v29);
              }
            }
          }
        }
      }
    }

    else
    {
      IO80211BssManager::setAdHocCreated(*(v13 + 5432), 1);
    }

    v28 = *(a2 + 8);
    v26 = *(*(a1 + 9) + 5432);
    IO80211BssManager::setAuthContext();
  }

  else
  {
    if (v5)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setIBSS_MODE(a1);
        }
      }

      v20 = AppleBCMWLANProximityInterface::bringupLink(*(*(a1 + 9) + 11296));
      if (v20)
      {
        v21 = v20;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setIBSS_MODE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v21, v29);
          }
        }
      }
    }

    if (*(*(a1 + 9) + 29944))
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setIBSS_MODE(a1);
        }
      }

      v22 = AppleBCMWLANNANInterface::bringupLink(*(*(a1 + 9) + 29944));
      if (v22)
      {
        v23 = v22;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setIBSS_MODE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v23, v29);
          }
        }
      }
    }

    if (*(*(a1 + 9) + 29952))
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setIBSS_MODE(a1);
        }
      }

      v24 = AppleBCMWLANNANDataInterface::bringupLink(*(*(a1 + 9) + 29952));
      if (v24)
      {
        v25 = v24;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setIBSS_MODE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v25, v29);
          }
        }
      }
    }

    return 0;
  }

  return AdhocNetwork;
}

uint64_t AppleBCMWLANCore::powerOff(uint64_t this, int a2)
{
  v4 = (this + 72);
  v5 = *(*(this + 72) + 6728);
  v6 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::powerOff(this);
    }
  }

  v73 = 0xAAAAAAAAAAAAAAAALL;
  AppleBCMWLANUtil::AutoreleasedTimeTrace::AutoreleasedTimeTrace(&v73, 0x40, 0, 1);
  mach_continuous_nanoseconds = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v7);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v73, mach_continuous_nanoseconds, 131106, 39461, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOff(BOOL)", 39461);
  v9 = *(*(this + 72) + 11288);
  v10 = (*(*this + 1952))(this);
  if (!v9)
  {
    if (v10)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::powerOff(this);
      }
    }

    goto LABEL_20;
  }

  if (v10)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::powerOff(this, v6, v4);
    }
  }

  v11 = *(*v4 + 10376);
  if ((v11 & 0x10000000) == 0)
  {
    if ((v11 & 4) == 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::powerOff(this);
        }
      }

LABEL_20:
      v13 = 0;
      goto LABEL_21;
    }

    v13 = 3766622210;
    if ((v11 & 0x10) != 0)
    {
      if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
      {
        AppleBCMWLANCore::powerOff(this);
        v13 = 3766622211;
      }

      else
      {
        v13 = 3766622211;
      }

      goto LABEL_21;
    }

    if ((v11 & 0x20) != 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::powerOff(this);
        }
      }

      goto LABEL_21;
    }

    atomic_fetch_or((*v4 + 10376), 0x10000000u);
    IOLockLock(*(*v4 + 1184));
    v15 = *v4;
    v16 = (*v4 + 1096);
    *(*v4 + 1124) = *v16;
    *(v15 + 1136) = *(v16 + 12);
    IOLockUnlock(*(*v4 + 1184));
    v17 = *v4;
    if (!*(*v4 + 19852) || (*(v17 + 10376) & 1) == 0)
    {
      atomic_fetch_and((v17 + 10376), 0xFFFFFFFB);
      v17 = *v4;
    }

    v18 = *(v17 + 11288);
    if (v18)
    {
      IO80211InfraInterface::cancelDebounceTimer(v18);
      v17 = *v4;
    }

    if (*(v17 + 19852) == 1 && (*(v17 + 10377) & 0x20) == 0)
    {
      v72 = 0xAAAAAAAAAAAAAAAALL;
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v71[0] = v19;
      v71[1] = v19;
      BYTE4(v71[0]) = 0;
      LODWORD(v71[0]) = 18;
      if (AppleBCMWLANCore::getPowerStats(this, (v17 + 11344), v71))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::powerOff(this);
          }
        }
      }

      IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(this, 76);
      v17 = *(this + 72);
      if (IsBitSet && (*(v17 + 18484) & 1) == 0)
      {
        memset(__b, 170, sizeof(__b));
        LODWORD(v71[0]) = 32;
        PowerStats = AppleBCMWLANCore::getPowerStats(this, __b, v71);
        v22 = *(this + 72);
        v23 = memcpy(__dst, __b, sizeof(__dst));
        v24 = AppleBCMWLANCore::setLPSCPowerStats(v23, v22 + 12048, __dst);
        if (PowerStats)
        {
          if ((*(*this + 1952))(this, v24))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::powerOff(this);
            }
          }
        }

        v17 = *v4;
      }
    }

    memset(__b, 0, 248);
    LODWORD(__b[0]) = 3;
    LODWORD(__b[1]) = -528345084;
    if (*(v17 + 11288))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::powerOff(this);
        }
      }

      IO80211Controller::postMessage(this, *(*(this + 72) + 11288), 0x37u, __b, 0xF8uLL, 1);
      v17 = *(this + 72);
    }

    v25 = *(v17 + 29944);
    if (v25)
    {
      IO80211Controller::postMessage(this, v25, 0x37u, __b, 0xF8uLL, 1);
      v17 = *(this + 72);
    }

    if ((*(v17 + 10378) & 4) != 0)
    {
      AppleBCMWLANCore::resetRangingState(this);
      v17 = *(this + 72);
    }

    if ((!*(v17 + 19852) || (*(v17 + 10376) & 1) == 0) && (*(v17 + 11296) || *(v17 + 29944)))
    {
      v26 = *(v17 + 1184);
      IOLockLock(v26);
      *(v17 + 1101) &= ~0x80u;
      IOLockUnlock(v26);
      if (AppleBCMWLANCore::writeEventBitField(this))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::powerOff(this);
          }
        }
      }

      v27 = *(*v4 + 11296);
      if (v27)
      {
        AppleBCMWLANProximityInterface::clearTrafficRegistrationState(v27);
        if (AppleBCMWLANProximityInterface::bringdownLink(*(*v4 + 11296)))
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::powerOff(this);
            }
          }
        }
      }

      v28 = *(*v4 + 29944);
      if (v28)
      {
        if (AppleBCMWLANNANInterface::bringdownLink(v28))
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::powerOff(this);
            }
          }
        }

        v29 = *(*v4 + 29952);
        if (v29)
        {
          if (AppleBCMWLANNANDataInterface::bringdownLink(v29))
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::powerOff(this);
              }
            }
          }
        }
      }
    }

    AppleBCMWLANCore::sendTxPowerCapValueToFirmware(this, 1, 1);
    AppleBCMWLANCore::setSPMICommonConfig(this, 0);
    v30 = *(*(this + 72) + 11304);
    if (v30 && AppleBCMWLANIO80211APSTAInterface::enabled(v30))
    {
      v31 = *v4;
      if (!*(*v4 + 19852) && (*(v31 + 10376) & 1) != 0)
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(*(v31 + 11304), 0);
      }

      else
      {
        AppleBCMWLANIO80211APSTAInterface::hostAPPowerOff(*(v31 + 11304));
      }
    }

    v32 = *v4;
    v33 = *(*v4 + 6232);
    if (v33)
    {
      (*(*v33 + 72))(v33);
      v32 = *v4;
    }

    if (!*(v32 + 19852) || (*(v32 + 10376) & 1) == 0)
    {
      AppleBCMWLANCore::disableTxQueues(this);
      v32 = *(this + 72);
      v34 = *(v32 + 11288);
      if (v34)
      {
        (*(*v34 + 1240))(v34);
        v32 = *v4;
      }
    }

    *(v32 + 31088) = 0;
    *(*v4 + 31089) = 0;
    AppleBCMWLANRoamAdapter::restoreReassocParams(*(*v4 + 5568));
    v35 = *(*v4 + 8828);
    v36 = *(*v4 + 5496);
    if (v36)
    {
      if (AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(v36))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::powerOff(this);
          }
        }
      }

      else
      {
        AppleBCMWLANBGScanAdapter::copyCurrentToOnSleepPrivateMac(*(*v4 + 5496));
      }
    }

    v37 = *v4;
    v38 = *(*v4 + 5496);
    if (v38)
    {
      AppleBCMWLANBGScanAdapter::cancelScanPrivacyMacTimer(v38);
      v37 = *v4;
    }

    AppleBCMWLANNetAdapter::quiesce(*(v37 + 5600));
    AppleBCMWLANPowerManager::quiesce(*(*(this + 72) + 5520));
    AppleBCMWLANCore::setEcountersEnableStateSync(this, &__block_literal_global_2340, 0);
    v39 = *(this + 72);
    if (*(v39 + 972))
    {
      v40 = 0;
      do
      {
        *(*(v39 + 1000) + v40++) = 1;
        v39 = *v4;
      }

      while (v40 < *(*v4 + 972));
    }

    if (v35)
    {
      if (!AppleBCMWLANCore::configureAssociatedSleepEntry(this))
      {
        v69 = 1;
        goto LABEL_112;
      }

      AppleBCMWLANCore::configureAssociatedSleepExit(this);
      AppleBCMWLANNetAdapter::quiesce(*(*(this + 72) + 5600));
    }

    v69 = 0;
LABEL_112:
    v41 = *v4;
    if (!*(*v4 + 19852) || (*(v41 + 10376) & 1) == 0)
    {
      *(v41 + 6580) = 1;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::powerOff(this);
        }
      }

      AppleBCMWLANCommander::quiesce(*(*v4 + 5408));
      v42 = *v4;
      if ((*(*v4 + 10377) & 0x80) == 0)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::powerOff(this);
          }
        }

        AppleBCMWLANCommander::wakeup(*(*v4 + 5408));
        v42 = *v4;
      }

      *(v42 + 6580) = 0;
      AppleBCMWLANCore::disableWorkQueueSources(this);
      v41 = *(this + 72);
    }

    if ((IO80211BssManager::isAssociated(*(v41 + 5432)) & 1) == 0)
    {
      AppleBCMWLANCore::configureEventBitMaskForUnAssociatedSleep(this);
    }

    v43 = *(*v4 + 5496);
    v44 = v43 && AppleBCMWLANBGScanAdapter::isPnoScanConfigured(v43) && (IO80211BssManager::isAssociated(*(*v4 + 5432)) & 1) == 0 && *(*v4 + 19852) == 1 && (*(*v4 + 10376) & 1) == 0;
    if (v69)
    {
      v45 = 1;
    }

    else
    {
      v45 = *(*v4 + 9480);
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v50 = (*(*this + 1952))(this);
        CCLogStream::logAlert(v50, "[dk] %s@%d: Wow params %d %d %d %d, wakeForPNO %d\n", "powerOff", 39841, 0, v69, 0, *(*(this + 72) + 9480), v44);
      }
    }

    __dst[0] = 0;
    v46 = *(*v4 + 5392);
    if (v46 && (*(*v46 + 56))(v46, __dst))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::powerOff(this);
        }

        v44 = 0;
        v45 = 0;
      }

      else
      {
        v44 = 0;
        v45 = 0;
      }
    }

    if ((v45 & 1) == 0 && !v44)
    {
      goto LABEL_175;
    }

    LODWORD(v71[0]) = 1;
    v47 = *(*v4 + 5408);
    *&__b[0] = v71;
    *(&__b[0] + 1) = 4;
    v48 = AppleBCMWLANCommander::runIOVarSet(v47, "bus:disconnect", __b, 0, 0);
    if (v48 != -469794537 && v48)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::powerOff(this);
        }
      }
    }

    else if (!(*(*(*(*v4 + 5392) + 48) + 232))())
    {
      goto LABEL_159;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::powerOff(this);
      }
    }

    v44 = 0;
    v45 = 0;
LABEL_159:
    if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
    {
      AppleBCMWLANCore::powerOff(this, v6, v4);
      if (v45)
      {
LABEL_162:
        *(*v4 + 8819) = 1;
        *(*v4 + 8817) = 1;
        *(*v4 + 8820) = 1;
        if (*(*v4 + 777) == 1 && IO80211BssManager::isAssociated(*(*v4 + 5432)))
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            v49 = 1;
            if (!CCLogStream::shouldLog())
            {
              goto LABEL_176;
            }

            AppleBCMWLANCore::powerOff(this);
          }
        }

        else if (v69 && IO80211BssManager::isAssociated(*(*v4 + 5432)) && (*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          v49 = 1;
          if (!CCLogStream::shouldLog())
          {
            goto LABEL_176;
          }

          AppleBCMWLANCore::powerOff(this);
        }

        v49 = 1;
LABEL_176:
        if (a2)
        {
          v51 = *(*v4 + 10376);
          if ((v51 & 0x80) != 0)
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::powerOff(this);
              }
            }

            atomic_fetch_or((*v4 + 10376), 0x400u);
            v51 = *(*v4 + 10376);
          }

          if ((v51 & 0x400) != 0)
          {
            if (AppleBCMWLANCore::waitForDriverEvent(this, 0, 5000))
            {
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::powerOff(this);
                }
              }
            }
          }
        }

        v52 = *v4;
        if (*(*v4 + 19852) || *(*v4 + 18297) == 1 && (AppleBCMWLANCore::configureMonitorModeToFW(this, 0), v52 = *(this + 72), *(v52 + 19852)))
        {
          if (*(v52 + 10376))
          {
            v53 = 0;
            goto LABEL_215;
          }
        }

        *(v52 + 6580) = 1;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::powerOff(this);
          }
        }

        AppleBCMWLANCommander::quiesce(*(*(this + 72) + 5408));
        removePropertyHelper(this, "LastWakeReason");
        removePropertyHelper(this, "LastWakePacket");
        setPropertyHelper(this, "LastWakeReason", 0, 0x20u);
        removePropertyHelper(this, "IO80211InterfaceWoWWakeUpParams");
        v54 = *(this + 72);
        v55 = *(v54 + 5544);
        if (v55)
        {
          AppleBCMWLANKeepAliveOffload::setCachedTCPAliveWakeReason(v55, 0);
          v54 = *v4;
        }

        if (*(v54 + 777) == 1)
        {
          isAssociated = IO80211BssManager::isAssociated(*(v54 + 5432));
          if (isAssociated)
          {
            v57 = 3;
          }

          else
          {
            v57 = 1;
          }

          if (isAssociated)
          {
            v53 = 3;
          }

          else
          {
            v53 = 1;
          }

          if ((isAssociated | v69))
          {
            goto LABEL_214;
          }
        }

        else if (v69)
        {
          v57 = 1;
          v53 = 1;
LABEL_214:
          setPropertyHelper(this, "LastSleepMode", v57, 0x20u);
LABEL_215:
          *(*(this + 72) + 35656) = v53;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::powerOff(this);
            }
          }

          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v63 = (*(*this + 1952))(this);
              v64 = *(this + 72);
              v67 = *(v64 + 6728);
              v68 = v63;
              v65 = *(v64 + 777);
              v66 = IO80211BssManager::isAssociated(*(v64 + 5432));
              CCLogStream::logAlert(v68, "[dk] %s@%d: Power off info: sleepMode[%u], fLPASSleep[%d], fLPASEnabledBeforeSleep[%d], associated[%d], wowEnabled[%u], wakeForPNO[%u], wow_enable_associated[%u], wow_enable_unassociated[%u], savedLPAS[%d]\n", "powerOff", 39960, v53, v67, v65, v66, v49, v44, v69, 0, v5);
            }
          }

          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::powerOff(this, v6, v4);
            }
          }

          atomic_fetch_and((*v4 + 10376), 0xEFFFFFFF);
          v58 = *v4;
          v59 = *(*v4 + 11288);
          if (v59)
          {
            (*(*v59 + 1128))(v59);
            v58 = *v4;
          }

          if ((*(v58 + 10376) & 0x8080) == 0x8000)
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::powerOff(this);
              }
            }

            v60 = *(*v4 + 5388);
            if (v60 > 4)
            {
              if ((*(*this + 1952))(this))
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::powerOff(this);
                }
              }
            }

            else
            {
              *(*v4 + 5388) = v60 + 1;
              AppleBCMWLANCore::watchdog(this, 0);
            }
          }

          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::powerOff(this, v6, v4);
            }
          }

          v62 = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v61);
          AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v73, (v62 - mach_continuous_nanoseconds), 131106, 39996, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOff(BOOL)", 39996);
          AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v73, v62, 131106, 39997, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOff(BOOL)", 39997);
          AppleBCMWLANUtil::AutoreleasedTimeTrace::dumpToLog(&v73, 0, 0);
          v13 = 0;
          *(*v4 + 8828) = 0;
          goto LABEL_21;
        }

        if (v44)
        {
          v57 = 2;
        }

        else
        {
          v57 = 0;
        }

        if (v44)
        {
          v53 = 2;
        }

        else
        {
          v53 = 0;
        }

        goto LABEL_214;
      }
    }

    else if (v45)
    {
      goto LABEL_162;
    }

LABEL_175:
    v49 = 0;
    *(*v4 + 8818) = 1;
    *(*v4 + 8820) = 1;
    *(*v4 + 8819) = 0;
    goto LABEL_176;
  }

  v12 = (*(*this + 1952))(this);
  if ((v11 & 4) == 0)
  {
    if (v12)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::powerOff(this);
      }
    }

    goto LABEL_20;
  }

  v13 = 3758097109;
  if (v12)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::powerOff(this);
    }
  }

LABEL_21:
  if (v73)
  {
    (*(*v73 + 16))(v73);
  }

  return v13;
}

uint64_t AppleBCMWLANCore::setPOWER(IO80211Controller *a1, uint64_t a2, unint64_t a3)
{
  v32 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *v25 = 0u;
  if (IO80211ThreadProcessInfo::getProcessName(v25, 0x80, a3))
  {
    IO80211Controller::getProcessName(a1, v25, 0x80uLL);
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setPOWER();
    }
  }

  v5 = *(a1 + 9);
  v6 = *(v5 + 10376);
  if ((v6 & 1) == 0)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setPOWER(a1);
      }
    }

    return 0;
  }

  if ((v6 & 0xA0) != 0)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setPOWER(a1);
      }
    }

    v7 = 0;
    *(*(a1 + 9) + 10388) = *(a3 + 8);
    atomic_fetch_or((*(a1 + 9) + 10376), 0x1000u);
    return v7;
  }

  if (*(v5 + 19852) == *(a3 + 8))
  {
    return 0;
  }

  v23 = 180;
  v24 = 0;
  v22 = 0;
  IOParseBootArgNumber("wlan.debug.setpower-off.trap", &v22, 1);
  IOParseBootArgNumber("wlan.debug.setpower-off.trap.boot-seconds", &v23, 8);
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if (v23 < v24 / 0x3B9ACA00 && !*(a3 + 8) && v22 == 1)
  {
    v9 = *(a1 + 9);
    if (*(v9 + 5392))
    {
      *(v9 + 19852) = 0;
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setPOWER(a1);
        }
      }

      (*(**(*(a1 + 9) + 5392) + 216))(*(*(a1 + 9) + 5392), 0);
      (*(**(*(a1 + 9) + 5392) + 200))(*(*(a1 + 9) + 5392), 34445);
      return 0;
    }
  }

  atomic_fetch_or((*(a1 + 9) + 10376), 0x1000u);
  v10 = *(a1 + 9);
  if ((*(v10 + 10377) & 0x10) != 0)
  {
    *(v10 + 10388) = *(a3 + 8);
    v11 = AppleBCMWLANCore::handlePowerStateChange(a1, *(*(a1 + 9) + 10388));
    v10 = *(a1 + 9);
    if (v11)
    {
      v7 = v11;
      goto LABEL_32;
    }

    v12 = *(v10 + 11288);
    if (v12)
    {
      IO80211Controller::postMessage(a1, v12, 1u, 0, 0, 1);
      v7 = 0;
      v10 = *(a1 + 9);
      goto LABEL_32;
    }
  }

  v7 = 0;
LABEL_32:
  atomic_fetch_and((v10 + 10376), 0xFFFFEFFF);
  v13 = *(a1 + 9);
  v14 = *(v13 + 11296);
  if (v14)
  {
    if (*(v13 + 10376))
    {
      v15 = *(v13 + 19852);
      if (v15 == 4 || v15 == 1)
      {
        if (AppleBCMWLANProximityInterface::bringupLink(v14))
        {
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setPOWER(a1);
            }
          }
        }
      }
    }
  }

  v16 = *(a1 + 9);
  v17 = *(v16 + 29944);
  if (v17)
  {
    if (*(v16 + 10376))
    {
      v18 = *(v16 + 19852);
      if (v18 == 4 || v18 == 1)
      {
        if (AppleBCMWLANNANInterface::bringupLink(v17))
        {
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setPOWER(a1);
            }
          }
        }
      }
    }
  }

  v19 = *(a1 + 9);
  v20 = *(v19 + 29952);
  if (v20)
  {
    if (*(v19 + 10376))
    {
      v21 = *(v19 + 19852);
      if (v21 == 4 || v21 == 1)
      {
        if (AppleBCMWLANNANDataInterface::bringupLink(v20))
        {
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setPOWER(a1);
            }
          }
        }
      }
    }
  }

  return v7;
}

uint64_t AppleBCMWLANCore::setCIPHER_KEY(IO80211Controller *a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    *v8 = 0u;
    v9 = 0u;
    if (IO80211ThreadProcessInfo::getProcessName(v8, 0x80, a3))
    {
      IO80211Controller::getProcessName(a1, v8, 0x80uLL);
    }

    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        v6 = (*(*a1 + 1952))(a1);
        v7 = ciphertype2str(*(a2 + 8));
        CCLogStream::logNotice(v6, "[dk] %s@%d: [%s]: type = %s, index = %u, flags = 0x%X, key length = %u, key rsc length = %u\n", "setCIPHER_KEY", 34498, v8, v7, *(a2 + 14), *(a2 + 12), *(a2 + 4), *(a2 + 80));
      }
    }
  }

  return AppleBCMWLANJoinAdapter::setKey(*(*(a1 + 9) + 5416), a2, 1, 0, 0);
}

uint64_t AppleBCMWLANCore::setDISASSOCIATE(IO80211Controller *a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    v5 = *(a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  if (IO80211ThreadProcessInfo::getProcessName(v8, 0x80, a3))
  {
    IO80211Controller::getProcessName(a1, v8, 0x80uLL);
  }

  if (a2 && (*(*(a1 + 9) + 10373) & 4) != 0)
  {
    return 102;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v7 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v7, "[dk] %s@%d: procName['%s']: Disassociating, reason[%u]\n", "setDISASSOCIATE", 34525, v8, v5);
    }
  }

  AppleBCMWLANNetAdapter::sendInternalLinkDownInd(*(*(a1 + 9) + 5600));
  return 0;
}

uint64_t AppleBCMWLANCore::setWCL_SET_ROAM_LOCK(uint64_t *a1, _BYTE *a2)
{
  if (a2)
  {
    v2 = *(a1[9] + 5568);
    v3 = *a2 != 0;

    return AppleBCMWLANRoamAdapter::setRoamLock(v2, v3);
  }

  else
  {
    AppleBCMWLANCore::setWCL_SET_ROAM_LOCK(a1);
    return v5;
  }
}

uint64_t AppleBCMWLANCore::setWCL_LEAVE_NETWORK(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = AppleBCMWLANNetAdapter::leaveNetworkRequest(*(*(a1 + 72) + 5600), a2);
  }

  else
  {
    v3 = 22;
  }

  if (AppleBCMWLANCommander::isSleeping(*(*(a1 + 72) + 5408)))
  {
    v4 = *(a1 + 72);
    if (*(v4 + 19852))
    {
      if ((*(v4 + 10376) & 0x80) != 0)
      {
        return v3;
      }

      else
      {
        return 3766622214;
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANCore::setPRIVATE_MAC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  v4 = *(a2 + 12);
  if (v4)
  {
    AppleBCMWLANBGScanAdapter::configureBGScanPrivateMacTimeout(*(*(a1 + 72) + 5496), v4);
  }

  if (*(a2 + 16))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 20) == 0;
  }

  if (!v5)
  {
    AppleBCMWLANBGScanAdapter::configureBGScanPrivateMac(*(*(a1 + 72) + 5496), (a2 + 16));
  }

  v6 = *(*(a1 + 72) + 5496);
  if (*(a2 + 4))
  {
    AppleBCMWLANBGScanAdapter::enablePrivateMACForScans(v6);
  }

  else
  {
    AppleBCMWLANBGScanAdapter::disablePrivateMACForScans(v6);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::resetCumulativePkts(uint64_t this)
{
  v1 = -32;
  do
  {
    *(*(this + 72) + v1 + 18360) = 0;
    *(*(this + 72) + v1 + 18392) = 0;
    v1 += 8;
  }

  while (v1);
  *(*(this + 72) + 18396) = 0;
  return this;
}

void AppleBCMWLANCore::removeEventBit(AppleBCMWLANCore *this, unsigned int a2)
{
  v2 = a2;
  v3 = *(this + 9);
  v4 = *(v3 + 1184);
  v5 = v3 + (a2 >> 3);
  IOLockLock(v4);
  *(v5 + 1096) &= ~(1 << (v2 & 7));

  IOLockUnlock(v4);
}

uint64_t AppleBCMWLANCore::writeEventBitField(AppleBCMWLANCore *this)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 34))
  {
    v2 = *(this + 9);
    *v9 = *(v2 + 1096);
    *&v9[12] = *(v2 + 1108);
    v3 = *(v2 + 5408);
    v4 = "event_msgs_ext";
  }

  else
  {
    v5 = *(this + 9);
    v6 = 1112;
    while (!*(v5 + v6))
    {
      if (++v6 == 1124)
      {
        goto LABEL_8;
      }
    }

    CCFaultReporter::reportFault(*(v5 + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x88FBu, "writeEventBitField", 0, -469793499, 0);
    v5 = *(this + 9);
LABEL_8:
    v3 = *(v5 + 5408);
    v4 = "event_msgs";
  }

  v7 = AppleBCMWLANCommander::sendIOVarSet(v3, v4);
  if (v7)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::writeEventBitField(this);
      }
    }
  }

  return v7;
}

uint64_t AppleBCMWLANCore::clearEventBit(AppleBCMWLANCore *this, unsigned int a2)
{
  AppleBCMWLANCore::removeEventBit(this, a2);

  return AppleBCMWLANCore::writeEventBitField(this);
}

uint64_t AppleBCMWLANCore::dumpEventBitField(AppleBCMWLANCore *this, char *a2)
{
  v3 = *(this + 9) + 1096;
  (*(*this + 1952))(this);
  v4 = IO80211HexdumpIfKernel();
  memset(v18, 0, 28);
  memset(&v17[1], 0, 64);
  v17[0] = 1078198273;
  v16[0] = v17;
  v16[1] = 0x4400440044;
  v15[0] = v17;
  v15[1] = 68;
  v5 = AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "event_msgs_ext", v15, v16, 0);
  if (v5)
  {
    v6 = v5;
    (*(*this + 1952))(this);
    (*(*this + 112))(this, v6);
    v4 += IO80211Print();
  }

  else
  {
    v18[0] = *&v17[1];
    *(v18 + 12) = *&v17[4];
  }

  if (*&v18[0] != *v3 || *(&v18[0] + 1) != *(v3 + 8) || *&v18[1] != *(v3 + 16) || DWORD2(v18[1]) != *(v3 + 24))
  {
    (*(*this + 1952))(this);
    v10 = 0;
    v11 = IO80211HexdumpIfKernel() + v4;
    do
    {
      if ((*(v18 + (v10 >> 3)) >> (v10 & 7)))
      {
        (*(*this + 1952))(this);
        convertEventToString(v10, 0, 0);
        v11 += IO80211Print();
      }

      ++v10;
    }

    while (v10 != 219);
    (*(*this + 1952))(this);
    v12 = *(this + 9);
    v4 = v11 + IO80211HexdumpIfKernel();
  }

  for (i = 0; i != 219; ++i)
  {
    if ((*(v18 + (i >> 3)) >> (i & 7)))
    {
      (*(*this + 1952))(this);
      convertEventToString(i, 0, 0);
      v4 = v4 + IO80211Print();
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::setExtendedEventBit(AppleBCMWLANCore *this, unsigned int a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v7 = 257;
  v8 = (a2 >> 3) + 5;
  *(v9 + (a2 >> 3) + 1) = 1 << (a2 & 7);
  v3 = *(*(this + 9) + 5408);
  v6[0] = &v7;
  v6[1] = 68;
  v4 = AppleBCMWLANCommander::runIOVarSet(v3, "event_msgs_ext", v6, 0, 0);
  if (v4)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setExtendedEventBit(this);
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::resetExtendedEventBit(AppleBCMWLANCore *this, unsigned int a2)
{
  v11 = -1;
  *&v3 = -1;
  *(&v3 + 1) = -1;
  v10[3] = v3;
  v10[2] = v3;
  v10[1] = v3;
  v10[0] = v3;
  v8 = 513;
  v9 = (a2 >> 3) + 5;
  *(v10 + (a2 >> 3) + 1) = ~(1 << (a2 & 7));
  v4 = *(*(this + 9) + 5408);
  v7[0] = &v8;
  v7[1] = 68;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "event_msgs_ext", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::resetExtendedEventBit(this);
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setRESET_CHIP(uint64_t *a1, uint64_t a2)
{
  strcpy(v39, "TrapOnSlowDPS");
  strcpy(v38, "TrapOnQuickDPS");
  strcpy(v37, "TrapOnDNSSymptoms");
  strcpy(v36, "SoftErrorTriggeredChipReset");
  strcpy(v35, "UserWiFiOff");
  v34 = xmmword_1003ADC00;
  qmemcpy(v33, "LinkTestFailure", 15);
  v29 = xmmword_1003AF98C;
  v30 = unk_1003AF99C;
  v31 = xmmword_1003AF9AC;
  v32 = unk_1003AF9BC;
  *__str = *"IOCTL trigger";
  v26 = unk_1003AF95C;
  v27 = xmmword_1003AF96C;
  v28 = unk_1003AF97C;
  v24 = 0;
  if (!a2)
  {
    return 22;
  }

  v3 = a2 + 4;
  if (*(a2 + 4))
  {
    snprintf(__str, 0x80uLL, "%s", (a2 + 4));
  }

  v4 = *v3 == v39[0] && *(v3 + 6) == *(v39 + 6);
  v5 = !v4;
  if (v4)
  {
    v15 = 0;
    v18 = 0;
    v16 = 1;
LABEL_51:
    v17 = 1;
    goto LABEL_52;
  }

  if (*v3 == v38[0] && *(v3 + 7) == *(v38 + 7))
  {
    v18 = 0;
    v16 = 5;
    v15 = 1;
    goto LABEL_51;
  }

  if (*v3 == v37[0] && *(v3 + 8) == v37[1] && *(v3 + 16) == LOWORD(v37[2]))
  {
    v15 = 0;
    v18 = 0;
    v17 = 1;
    v16 = 6;
  }

  else if (*v3 == v36[0] && *(v3 + 8) == v36[1] && *(v3 + 16) == v36[2] && *(v3 + 24) == LODWORD(v36[3]))
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
  }

  else if (*v3 == v35[0] && *(v3 + 8) == LODWORD(v35[1]))
  {
    if (!AppleBCMWLAN_isDevFusedOrCSRInternal())
    {
      return 102;
    }

    if ((AppleBCMWLANCore::setRESET_CHIP(apple80211_reset_command *)::checked & 1) == 0)
    {
      IOParseBootArgNumber("wifioff.wd", &AppleBCMWLANCore::setRESET_CHIP(apple80211_reset_command *)::allowWD, 4);
      AppleBCMWLANCore::setRESET_CHIP(apple80211_reset_command *)::checked = 1;
    }

    if (!AppleBCMWLANCore::setRESET_CHIP(apple80211_reset_command *)::allowWD)
    {
      return 102;
    }

    v15 = 0;
    v18 = 0;
    v17 = 1;
    v16 = 7;
  }

  else if (*v3 == v34 && *(v3 + 8) == *(&v34 + 1))
  {
    v15 = 0;
    v18 = 0;
    v17 = 1;
    v16 = 8;
  }

  else if (*v3 == v33[0] && *(v3 + 7) == *(v33 + 7))
  {
    v15 = 0;
    v18 = 0;
    v17 = 1;
    v16 = 9;
  }

  else
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRESET_CHIP(a1);
      }
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

LABEL_52:
  v20 = *(a1[9] + 11288);
  if (v20)
  {
    v24 = 3;
    if ((v5 & (v15 ^ 1) & 1) == 0)
    {
      IO80211Controller::postMessage(a1, v20, 0xB8u, &v24, 4uLL, 1);
    }
  }

  if ((*(*a1 + 1952))(a1) && ((*(*a1 + 1952))(a1), CCLogStream::shouldLog()))
  {
    v21 = (*(*a1 + 1952))(a1);
    CCLogStream::logAlert(v21, "[dk] %s@%d:isTrap=%u, isUserspaceReset=%u, trap reason %u, message: %s", "setRESET_CHIP", 35275, v17, v18, v16, __str);
    if (v17)
    {
      goto LABEL_58;
    }
  }

  else if (v17)
  {
LABEL_58:
    (*(**(a1[9] + 5392) + 216))(*(a1[9] + 5392), v16);
    (*(**(a1[9] + 5392) + 200))(*(a1[9] + 5392), 35279);
    return 0;
  }

  if (!v18)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRESET_CHIP(a1);
      }
    }

    CCFaultReporter::reportFault(*(a1[9] + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x89DEu, "setRESET_CHIP", 0, -469793533, "msg=%s,call=setRESET_CHIP", __str);
    return 0;
  }

  v22 = *(a1[9] + 14264);
  v23 = (*(*a1 + 1952))(a1);
  if (v22)
  {
    if (v23)
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRESET_CHIP(a1);
      }
    }

    return AppleBCMWLANCoreDbg::dbgTriggerWatchdog(*(a1[9] + 14264), v3);
  }

  else
  {
    if (v23)
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRESET_CHIP(a1);
      }
    }

    return 19;
  }
}

uint64_t AppleBCMWLANCore::setCRASH(uint64_t a1, uint64_t a2)
{
  if (!a2 || (*(a2 + 4) - 9) < 0xFFFFFFF8)
  {
    return 22;
  }

  v5 = *(a1 + 72);
  v6 = *(v5 + 5392);
  if (v6)
  {
    AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(v6, 0, 0);
    v5 = *(a1 + 72);
  }

  v7 = *(v5 + 14264);
  if (!v7)
  {
    return 19;
  }

  v8 = *(a2 + 4);

  return AppleBCMWLANCoreDbg::dbgTriggerCrash(v7, v8);
}

uint64_t AppleBCMWLANCore::getChanSpec(uint64_t *a1, uint64_t a2, unsigned __int16 *a3)
{
  v4 = *(a2 + 4);
  if ((v4 - 256) <= 0xFFFFFF00)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getChanSpec(a1);
      }
    }

    return 22;
  }

  v6 = *(a2 + 8);
  if ((v6 & 2) != 0)
  {
    v7 = 2;
  }

  else if ((v6 & 4) != 0)
  {
    v7 = 3;
  }

  else if ((v6 & 0x400) != 0)
  {
    v7 = 4;
  }

  else if ((v6 & 0x800) != 0)
  {
    v7 = 5;
  }

  else if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    v7 = 1;
    if (CCLogStream::shouldLog())
    {
      v8 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v8, "[dk] %s@%d:WARNING: failed to get parse requested BW, channel %d, flags 0x%x, bw is out of range \n", "getChanSpec", 47305, v4, v6);
    }
  }

  else
  {
    v7 = 1;
  }

  LODWORD(v9) = *(a1[9] + 1032);
  if (v9 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v9;
  }

  v33 = v9;
  if ((v6 & 8) != 0)
  {
    goto LABEL_33;
  }

  if ((v6 & 0x10) == 0)
  {
    if ((v6 & 0x2000) != 0)
    {
      v10 = 1;
      goto LABEL_34;
    }

    if ((v4 - 15) <= 0xB5)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          v27 = (*(*a1 + 1952))(a1);
          CCLogStream::logAlert(v27, "[dk] %s@%d:WARNING: band not specified, inferring 5GHz from channel number (%d), flags 0x%x \n", "getChanSpec", 47327, v4, v6);
        }
      }

      goto LABEL_27;
    }

    v11 = (*(*a1 + 1952))(a1);
    if (v4 > 0xE)
    {
      if (v11)
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          v24 = (*(*a1 + 1952))(a1);
          CCLogStream::logAlert(v24, "[dk] %s@%d:WARNING: band not specified and unable to infer based on channel number (%d), flags 0x%x \n");
        }
      }

      return 22;
    }

    if (v11)
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        v28 = (*(*a1 + 1952))(a1);
        CCLogStream::logAlert(v28, "[dk] %s@%d:WARNING: band not specified, inferring 2GHz from channel number (%d), flags 0x%x \n", "getChanSpec", 47332, v4, v6);
      }
    }

LABEL_33:
    v10 = 0;
    goto LABEL_34;
  }

LABEL_27:
  v10 = 3;
LABEL_34:
  v12 = *(a1[9] + 19916);
  if (!*(a1[9] + 19916))
  {
    goto LABEL_60;
  }

  v30 = a3;
  v31 = v6;
  v32 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v12 + 1;
  v16 = 2 * v12 + 19916;
  v17 = 1;
  do
  {
    AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(a1[9] + 17744), *(a1[9] + v16));
    PrimaryChannel = ChanSpecGetPrimaryChannel();
    if (v4 == ChanSpecGetPrimaryChannel())
    {
      v20 = (AppleChannelSpec >> 11) & 7;
      v21 = v10 == (AppleChannelSpec & 0xC000) >> 14 && v17 <= v20;
      if (v21 && v33 >= v20)
      {
        v13 = *(a1[9] + v16);
        v14 = PrimaryChannel;
        v32 = AppleChannelSpec;
        v17 = (AppleChannelSpec >> 11) & 7;
      }
    }

    --v15;
    v16 -= 2;
  }

  while (v15 > 1);
  if (v17 < 2)
  {
LABEL_60:
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        v25 = (*(*a1 + 1952))(a1);
        v29 = *(a1[9] + 1032);
        CCLogStream::logAlert(v25, "[dk] %s@%d:ERROR: failed to find chanspec, req(ch[%3u] bw[%u] band[%u] flags[0x%08x]) specTarget(ch[%3u], subch[%u], bw[%u], band[%u], primary[%3u]), supported(chanspec[0x%04x] bw[%u]) maxBW[%u]\n", "getChanSpec", 47375, v4, v33);
      }
    }

    return 22;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v26 = (*(*a1 + 1952))(a1);
      CCLogStream::logNotice(v26, "[dk] %s@%d: req(ch[%3u] bw[%u] band[%u] flags[0x%08x]) specTarget(ch[%3u], subch[%u], bw[%u], band[%u], primary[%3u]), supported(chanspec[0x%04x] bw[%u]) maxBW[%u]\n", "getChanSpec", 47383, v4, v33, v10, v31, v32, (v32 >> 8) & 7, (v32 >> 11) & 7, v32 >> 14, v14, v13, v17, *(a1[9] + 1032));
    }
  }

  result = 0;
  *v30 = v13;
  return result;
}

uint64_t AppleBCMWLANCore::setAP_MODE(AppleBCMWLANCore *a1, uint64_t a2)
{
  if (!AppleBCMWLAN_isVerboseDebugLoggingAllowed())
  {
    return 3758097095;
  }

  result = AppleBCMWLANCore::featureFlagIsBitSet(a1, 63);
  if (result)
  {
    result = 0;
    *(*(a1 + 9) + 10372) = *(*(a1 + 9) + 10372) & 0xFFFFFBFF | ((*(a2 + 4) == 2) << 10);
  }

  return result;
}

uint64_t AppleBCMWLANCore::setPOWERSAVE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (v2 > 1)
  {
    return 102;
  }

  result = 0;
  *(*(a1 + 72) + 6724) = v2;
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::setPOWERSAVE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (v2 > 1)
  {
    return 102;
  }

  result = 0;
  *(*(a1 + 8) + 6724) = v2;
  return result;
}

uint64_t AppleBCMWLANCore::setDBG_GUARD_TIME_PARAMS(uint64_t *a1, uint64_t a2)
{
  v7[1] = -21846;
  v7[0] = *(a2 + 4);
  v8 = *(a2 + 8);
  v3 = *(a1[9] + 5408);
  v6[0] = v7;
  v6[1] = 8;
  v4 = AppleBCMWLANCommander::runIOVarSet(v3, "forced_pm", v6, 0, 0);
  if (v4)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setDBG_GUARD_TIME_PARAMS(a1);
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::setLEAKY_AP_STATS_MODE(uint64_t *a1, uint64_t a2)
{
  v9 = *(a2 + 4);
  v3 = *(a1[9] + 5408);
  if (!v3)
  {
    v5 = 3758097084;
LABEL_8:
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setLEAKY_AP_STATS_MODE(a1);
      }
    }

    return v5;
  }

  v8[0] = &v9;
  v8[1] = 4;
  v4 = AppleBCMWLANCommander::runIOVarSet(v3, "leaky_ap_stats", v8, 0, 0);
  v5 = v4;
  if (v4 != -469794537 && v4 != 0)
  {
    goto LABEL_8;
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setTHERMAL_INDEX(uint64_t *a1, uint64_t a2)
{
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setTHERMAL_INDEX(a1);
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 59))
  {
    v5 = *(a2 + 4);
    v4 = (a2 + 4);
    if ((v5 - 101) > 0xFFFFFF9B)
    {
      v6 = 12;
      v7 = IOMallocZeroData();
      if (v7)
      {
        v8 = v7;
        *v7 = 0x40000000C0001;
        *(v7 + 8) = *v4;
        v9 = *(a1[9] + 5408);
        v13[0] = v8;
        v13[1] = 12;
        v10 = AppleBCMWLANCommander::runIOVarSet(v9, "tvpm", v13, 0, 0);
        v6 = v10;
        if (v10 == -469794537 || v10 == 0)
        {
          *a1[9] = *v4;
        }

        else if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setTHERMAL_INDEX(a1);
          }
        }

        IOFreeData();
      }
    }

    else
    {
      v6 = 3758097084;
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setTHERMAL_INDEX(a1);
        }
      }
    }
  }

  else
  {
    v6 = 3758097084;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setTHERMAL_INDEX(a1);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::setPOWER_BUDGET(uint64_t *a1, uint64_t a2)
{
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setPOWER_BUDGET(a1);
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 59))
  {
    v5 = *(a2 + 4);
    v4 = (a2 + 4);
    if ((v5 - 101) > 0xFFFFFF9B)
    {
      v6 = 12;
      v7 = IOMallocZeroData();
      if (v7)
      {
        v8 = v7;
        *v7 = 0x40001000C0001;
        *(v7 + 8) = *v4;
        v9 = *(a1[9] + 5408);
        v13[0] = v8;
        v13[1] = 12;
        v10 = AppleBCMWLANCommander::runIOVarSet(v9, "tvpm", v13, 0, 0);
        v6 = v10;
        if (v10 == -469794537 || v10 == 0)
        {
          *(a1[9] + 4) = *v4;
        }

        else if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setPOWER_BUDGET(a1);
          }
        }

        IOFreeData();
      }
    }

    else
    {
      v6 = 3758097084;
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setPOWER_BUDGET(a1);
        }
      }
    }
  }

  else
  {
    v6 = 3758097084;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setPOWER_BUDGET(a1);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::setTXPOWER(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 4) == 1)
  {
    v3 = *(a2 + 8);
    if (v3 >= 2)
    {
      if (v3 > 0x195C)
      {
        v5 = -103;
      }

      else
      {
        v5 = -103;
        v6 = *(a2 + 8);
        do
        {
          v3 = 10 * v6;
          v5 -= 40;
          v7 = v6 >= 0x28A;
          v6 *= 10;
        }

        while (!v7);
      }

      v8 = -1;
      v9 = &word_1003B052A;
      v10 = 39;
      while (v10)
      {
        v11 = *(v9 - 1);
        v12 = *v9++;
        ++v8;
        --v10;
        if (v3 < v11 + (v12 - v11) / 2)
        {
          goto LABEL_16;
        }
      }

      v8 = 39;
LABEL_16:
      v4 = (v8 + v5);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 4 * *(a2 + 8);
  }

  v17 = v4 | 0x80000000;
  v13 = *(a1[9] + 5408);
  v16[0] = &v17;
  v16[1] = 4;
  v14 = AppleBCMWLANCommander::runIOVarSet(v13, "qtxpower", v16, 0, 0);
  if (v14)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setTXPOWER(a1);
      }
    }
  }

  return v14;
}

uint64_t AppleBCMWLANCore::setUSB_HOST_NOTIFICATION(AppleBCMWLANCore *a1, _DWORD *a2)
{
  v4 = (*(**(*(a1 + 9) + 5392) + 368))(*(*(a1 + 9) + 5392));
  v5 = v4 == 4399 || v4 == 4388;
  if (v5 && !AppleBCMWLANCore::featureFlagIsBitSet(a1, 112))
  {
    return 0;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setUSB_HOST_NOTIFICATION(a1);
    }
  }

  v21 = a2[3];
  v6 = *(*(a1 + 9) + 5408);
  v19 = &v21;
  v20 = 4;
  v7 = AppleBCMWLANCommander::runIOVarSet(v6, "asym_mit_ext_usb", &v19, 0, 0);
  if (v7)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        v15 = (*(*a1 + 1952))(a1);
        v16 = a2[3];
        v17 = a2[1];
        v18 = (*(*a1 + 112))(a1, v7);
        CCLogStream::logCrit(v15, "[dk] %s@%d:%s failed ioVarSet asym_mit_ext_usb %d seqNum %d. Error %s\n", "setUSB_HOST_NOTIFICATION", 35588, "setUSB_HOST_NOTIFICATION", v16, v17, v18);
      }
    }
  }

  if (a2[2] <= 1u)
  {
    v21 = a2[2];
    v8 = *(*(a1 + 9) + 5408);
    v19 = &v21;
    v20 = 4;
    v7 = AppleBCMWLANCommander::runIOVarSet(v8, "asym_mit_ext_usb_chg", &v19, 0, 0);
    if (v7)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          v9 = (*(*a1 + 1952))(a1);
          v12 = a2 + 1;
          v10 = a2[1];
          v11 = v12[1];
          v13 = (*(*a1 + 112))(a1, v7);
          CCLogStream::logCrit(v9, "[dk] %s@%d:%s failed ioVarSet asym_mit_ext_usb_chg %d seqNum %d. Error %s\n", "setUSB_HOST_NOTIFICATION", 35597, "setUSB_HOST_NOTIFICATION", v11, v10, v13);
        }
      }
    }
  }

  return v7;
}