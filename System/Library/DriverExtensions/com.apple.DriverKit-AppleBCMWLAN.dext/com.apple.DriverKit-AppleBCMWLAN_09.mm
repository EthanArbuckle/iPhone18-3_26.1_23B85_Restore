uint64_t AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadConfig(AppleBCMWLANCommander ***a1, int a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = 3758097090;
  v77 = 0;
  v76 = 0;
  memset(v75, 0, 6);
  v11 = a1 + 5;
  PrimaryInterface = AppleBCMWLANCore::getPrimaryInterface(a1[5][2]);
  if (PrimaryInterface)
  {
    if (*(a3 + 129) && *(a3 + 136))
    {
      v13 = PrimaryInterface;
      if (AppleBCMWLANCore::getRouterMacAddress((*v11)[2], v75))
      {
        return 3758097084;
      }

      v15 = (*(*v13 + 1072))(v13);
      v73 = v15;
      v74 = WORD2(v15);
      v16 = *v11;
      v66 = BYTE5(v15);
      if ((*v11)[1])
      {
        shouldLog = CCLogStream::shouldLog();
        v16 = *v11;
        if (shouldLog)
        {
          CCLogStream::logNoticeIf(v16[1], 0x8000000uLL, "[dk] %s@%d:selfMac: %x:%x:%x:%x:%x:%x\n", "setTCPAliveOffloadConfig", 690, v15, BYTE1(v15), BYTE2(v15), BYTE3(v15), BYTE4(v15), BYTE5(v15));
          v16 = *v11;
        }
      }

      v68 = v15;
      if (v16[1] && CCLogStream::shouldLog())
      {
        AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadConfig(v11);
      }

      v18 = 56;
      if (!*(a3 + 132))
      {
        v18 = 32;
      }

      v19 = *(a3 + 129) + *(a3 + 136) + v18 + 28;
      v20 = IOMallocZeroData();
      if (v20)
      {
        v22 = v20;
        *v20 = 2;
        numBytes = v19;
        *(v20 + 2) = v19 - 4;
        *(v20 + 4) = a2;
        *(v20 + 5) = *(a3 + 132) != 0;
        *(v20 + 12) = *(a3 + 304);
        *(v20 + 6) = *(a3 + 300);
        *(v20 + 16) = *(a3 + 308);
        *(v20 + 8) = *(a3 + 302);
        *(v20 + 20) = *(a3 + 129) - 2;
        *(v20 + 22) = *(a3 + 136) - 2;
        if ((*v11)[1] && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert((*v11)[1], "[dk] %s@%d:TCP KA Socket idx[%u]: lSeq %u rSeq %u sport %d dport %d destIP %d:%d:%d:%d \n\n", "setTCPAliveOffloadConfig", 729, a2, *(a3 + 304), *(a3 + 308), *(a3 + 300), *(a3 + 302), *(a3 + 284), *(a3 + 285), *(a3 + 286), *(a3 + 287));
        }

        v23 = *(a3 + 137);
        v24 = v68;
        if (*(a3 + 132))
        {
          if (v23 != 16)
          {
            if ((*v11)[1] && CCLogStream::shouldLog())
            {
              v56 = *(a3 + 137);
              CCLogStream::logAlert((*v11)[1], "[dk] %s@%d:TKO: Invalid IPV6 addr length %d\n");
            }

            goto LABEL_88;
          }

          *(v22 + 24) = *(a3 + 268);
          v21 = *(a3 + 284);
          *(v22 + 40) = v21;
          v25 = 56;
        }

        else
        {
          if (v23 != 4)
          {
            if ((*v11)[1] && CCLogStream::shouldLog())
            {
              v57 = *(a3 + 137);
              CCLogStream::logAlert((*v11)[1], "[dk] %s@%d:TKO: Invalid IPV4 addr length %d\n");
            }

            goto LABEL_88;
          }

          *(v22 + 24) = *(a3 + 268);
          *(v22 + 28) = *(a3 + 284);
          v25 = 32;
        }

        if (a4 && a5)
        {
          v61 = a2;
          LOBYTE(CurrentApAddress) = *a4;
          v21.i32[0] = *(a4 + 1);
          v21.i64[0] = vmovl_u8(*v21.i8).u64[0];
          v64 = *(a4 + 5);
          LOBYTE(v27) = a5[1];
          LOBYTE(v28) = a5[2];
          LOBYTE(v29) = a5[3];
          v30 = a5[4];
          v31 = a5[5];
          v24 = *a5;
        }

        else
        {
          v27 = v68 >> 8;
          v28 = v68 >> 16;
          v29 = (v68 >> 24) & 0xFFFFFF;
          v30 = BYTE4(v68);
          v32 = v75[0] == v73 && LOWORD(v75[1]) == v74;
          if (v32 || (v75[0] == v76 ? (v33 = LOWORD(v75[1]) == v77) : (v33 = 0), v33))
          {
            v59 = v25;
            CurrentApAddress = IO80211InfraInterface::getCurrentApAddress(v13);
            WORD2(v70) = WORD2(CurrentApAddress);
            LODWORD(v70) = CurrentApAddress;
            if (CurrentApAddress == v76 && WORD2(CurrentApAddress) == v77)
            {
              if ((*v11)[1] && CCLogStream::shouldLog())
              {
                AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadConfig(v11);
              }

              v10 = 3758097122;
              goto LABEL_88;
            }

            v61 = a2;
            v64 = BYTE5(CurrentApAddress);
            v37.i64[0] = 0xFFFFFFFFFFFFLL;
            v37.i64[1] = 0xFFFFFFFFFFFFLL;
            v21 = vandq_s8(vdupq_n_s64(CurrentApAddress), v37);
            *v21.i8 = vmovn_s32(vuzp1q_s32(vshlq_u64(v21, xmmword_10033C2A0), vshlq_u64(v21, xmmword_10033C2B0)));
            v31 = v66;
            v24 = v68;
            v27 = v68 >> 8;
            v29 = (v68 >> 24) & 0xFFFFFF;
            v25 = v59;
            v30 = BYTE4(v68);
          }

          else
          {
            v61 = a2;
            if (!a4 || (*a4 == v76 ? (v34 = *(a4 + 4) == v77) : (v34 = 0), v34))
            {
              LOBYTE(CurrentApAddress) = v75[0];
              v21.i32[0] = *(v75 + 1);
              v21.i64[0] = vmovl_u8(*v21.i8).u64[0];
              v35 = BYTE1(v75[1]);
            }

            else
            {
              LOBYTE(CurrentApAddress) = *a4;
              v21.i32[0] = *(a4 + 1);
              v21.i64[0] = vmovl_u8(*v21.i8).u64[0];
              v35 = *(a4 + 5);
            }

            v64 = v35;
            v31 = v66;
          }
        }

        v67 = v31;
        v38 = v22 + v25;
        if (*(a3 + 132))
        {
          v39 = -8826;
        }

        else
        {
          v39 = 8;
        }

        v60 = v39;
        *v38 = CurrentApAddress;
        v58 = *v21.i8;
        v69 = vuzp1_s8(*v21.i8, *v21.i8).u32[0];
        *(v38 + 1) = v69;
        *(v38 + 5) = v64;
        *(v38 + 6) = v24;
        *(v38 + 7) = v27;
        *(v38 + 8) = v28;
        *(v38 + 9) = v29;
        *(v38 + 10) = v30;
        *(v38 + 11) = v31;
        *(v38 + 12) = v39;
        v40 = v38 + 14;
        v41 = CurrentApAddress;
        v42 = v27;
        v43 = v24;
        bytes = v22;
        v44 = v29;
        v45 = v30;
        memcpy((v38 + 14), (a3 + 16), *(a3 + 129) - 16);
        v46 = v40 + *(a3 + 129);
        *(v46 - 16) = v41;
        *(v46 - 15) = v69;
        *(v46 - 11) = v64;
        *(v46 - 10) = v43;
        *(v46 - 9) = v42;
        *(v46 - 8) = v28;
        *(v46 - 7) = v44;
        *(v46 - 6) = v45;
        *(v46 - 5) = v67;
        *(v46 - 4) = v60;
        memcpy((v46 - 2), (a3 + 156), *(a3 + 136) - 16);
        if (!v61)
        {
          if (*(a3 + 129) >= 0x80u)
          {
            v47 = 128;
          }

          else
          {
            v47 = *(a3 + 129);
          }

          memcpy(*v11 + 60, a3, v47);
          v48 = *v11;
          *(v48 + 60) = v41;
          v62 = vuzp1_s8(v58, v58).u32[0];
          *(v48 + 61) = v62;
          *(v48 + 65) = v64;
          *(v48 + 66) = v43;
          *(v48 + 67) = v42;
          *(v48 + 68) = v28;
          *(v48 + 69) = v44;
          *(v48 + 70) = v45;
          *(v48 + 71) = v67;
          *(v48 + 36) = v60;
          if (*(a3 + 136) >= 0x80u)
          {
            v49 = 128;
          }

          else
          {
            v49 = *(a3 + 136);
          }

          memcpy(*v11 + 188, (a3 + 140), v49);
          v50 = *v11;
          *(v50 + 188) = v41;
          *(v50 + 189) = v62;
          *(v50 + 193) = v64;
          *(v50 + 194) = v43;
          *(v50 + 195) = v42;
          *(v50 + 196) = v28;
          *(v50 + 197) = v44;
          *(v50 + 198) = v45;
          *(v50 + 199) = v67;
          *(v50 + 100) = v60;
        }

        removePropertyHelper((*v11)[2], "setTCPAliveOffloadConfig: tko");
        v51 = OSData::withBytes(bytes, numBytes);
        setPropertyHelper((*v11)[2], "setTCPAliveOffloadConfig: tko", v51);
        if (v51)
        {
          (v51->release)(v51);
        }

        v52 = (*(*(*v11)[2] + 88))((*v11)[2]);
        if ((*(*v52 + 136))(v52))
        {
          v70 = a1;
          v71 = AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveConfigAsyncCallBack;
          v72 = 0;
          v53 = AppleBCMWLANCommander::sendIOVarSet(*a1[5], "tko");
        }

        else
        {
          v54 = **v11;
          v70 = bytes;
          v71 = numBytes;
          v53 = AppleBCMWLANCommander::runIOVarSet(v54, "tko", &v70, 0, 0);
        }

        v10 = v53;
        v55 = *v11;
        if (v53)
        {
          if (v55[1] && CCLogStream::shouldLog())
          {
            AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadConfig(v11);
          }
        }

        else
        {
          ++*(v55 + 6);
        }

LABEL_88:
        IOFreeData();
        return v10;
      }

      v10 = 3758097085;
      if ((*v11)[1] && CCLogStream::shouldLog())
      {
        AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadConfig(v11);
      }
    }

    else if ((*v11)[1] && CCLogStream::shouldLog())
    {
      AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadConfig(v11);
    }
  }

  else
  {
    v10 = 3758097084;
    if ((*v11)[1] && CCLogStream::shouldLog())
    {
      AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadConfig(v11);
    }
  }

  return v10;
}

uint64_t AppleBCMWLANKeepAliveOffload::setTCPKeepAliveParam(AppleBCMWLANKeepAliveOffload *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8 = IOMallocZeroData();
  v10 = (this + 40);
  v9 = *(this + 5);
  if (v8)
  {
    v11 = v8;
    v12 = *(v9 + 36);
    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v12 >= *(v9 + 40))
    {
      v13 = *(v9 + 40);
    }

    else
    {
      v13 = v12;
    }

    v14 = *(v9 + 44);
    if (v14 <= a3)
    {
      v14 = a3;
    }

    if (v14 >= *(v9 + 48))
    {
      v15 = *(v9 + 48);
    }

    else
    {
      v15 = v14;
    }

    v16 = *(v9 + 52);
    if (v16 <= a4)
    {
      v16 = a4;
    }

    if (v16 >= *(v9 + 56))
    {
      v17 = *(v9 + 56);
    }

    else
    {
      v17 = v16;
    }

    if (*(v9 + 8) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert((*v10)[1], "[dk] %s@%d:Setting Keepalive interval:%u, keep_retry:%d, keep_cnt:%d \n\n", "setTCPKeepAliveParam", 496, v13, v15, v17);
    }

    *v11 = 524289;
    v11[2] = v13;
    v11[3] = v15;
    v11[4] = v17;
    removePropertyHelper((*v10)[2], "setTCPKeepAliveParam: tko");
    v18 = OSData::withBytes(v11, 0xCuLL);
    setPropertyHelper((*v10)[2], "setTCPKeepAliveParam: tko", v18);
    if (v18)
    {
      (v18->release)(v18);
    }

    v19 = (*(*(*v10)[2] + 88))((*v10)[2]);
    if ((*(*v19 + 136))(v19))
    {
      v24 = this;
      v25 = AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveParamAsyncCallBack;
      v26 = 0;
      v20 = AppleBCMWLANCommander::sendIOVarSet(**(this + 5), "tko");
    }

    else
    {
      v22 = **v10;
      v24 = v11;
      v25 = 12;
      v20 = AppleBCMWLANCommander::runIOVarSet(v22, "tko", &v24, 0, 0);
    }

    v21 = v20;
    if (v20 && (*v10)[1] && CCLogStream::shouldLog())
    {
      AppleBCMWLANKeepAliveOffload::setTCPKeepAliveParam(v10);
    }

    IOFreeData();
  }

  else
  {
    v21 = 3758097085;
    if (*(v9 + 8) && CCLogStream::shouldLog())
    {
      AppleBCMWLANKeepAliveOffload::setTCPKeepAliveParam(v10);
    }
  }

  return v21;
}

uint64_t AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadEnable(AppleBCMWLANKeepAliveOffload *this, int a2)
{
  v4 = IOMallocZeroData();
  v5 = v4;
  if (a2 && (v6 = *(this + 5), (*(v6 + 481) & 1) == 0))
  {
    if (*(v6 + 8) && CCLogStream::shouldLog())
    {
      AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadEnable(this + 40);
    }

    v11 = 3758097122;
    if (v5)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v4)
    {
      *v4 = 262147;
      *(v4 + 4) = a2;
      v7 = (this + 40);
      removePropertyHelper(*(*(this + 5) + 16), "setTCPAliveOffloadEnable: tko");
      v8 = OSData::withBytes(v5, 8uLL);
      setPropertyHelper(*(*(this + 5) + 16), "setTCPAliveOffloadEnable: tko", v8);
      if (v8)
      {
        (v8->release)(v8);
      }

      v9 = (*(*(*v7)[2] + 88))((*v7)[2]);
      if ((*(*v9 + 136))(v9))
      {
        v18 = this;
        v19 = AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveEnableAsyncCallBack;
        v20 = 0;
        v10 = AppleBCMWLANCommander::sendIOVarSet(**(this + 5), "tko");
      }

      else
      {
        v14 = **v7;
        v18 = v5;
        v19 = 8;
        v10 = AppleBCMWLANCommander::runIOVarSet(v14, "tko", &v18, 0, 0);
      }

      v11 = v10;
      v15 = (*v7)[1];
      if (v11)
      {
        if (v15 && CCLogStream::shouldLog())
        {
          AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadEnable(this + 40);
        }
      }

      else
      {
        if (v15 && CCLogStream::shouldLog())
        {
          if (a2)
          {
            v17 = "Enabled";
          }

          else
          {
            v17 = "Disabled";
          }

          CCLogStream::logAlert((*v7)[1], "[dk] %s@%d:TCP Keep Alive Offload: %s\n", "setTCPAliveOffloadEnable", 598, v17);
        }

        v11 = 0;
      }

LABEL_23:
      IOFreeData();
      return v11;
    }

    v11 = 3758097085;
    v13 = *(this + 5);
    v12 = this + 40;
    if (*(v13 + 8) && CCLogStream::shouldLog())
    {
      AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadEnable(v12);
    }
  }

  return v11;
}

uint64_t AppleBCMWLANKeepAliveOffload::handleMkeepAlivesAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result + 40;
    result = *(*(result + 40) + 8);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANKeepAliveOffload::handleMkeepAlivesAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveParamAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result + 40;
    result = *(*(result + 40) + 8);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveParamAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveEnableAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result + 40;
    result = *(*(result + 40) + 8);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveEnableAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::getTCPAliveOffloadWakeReason(AppleBCMWLANKeepAliveOffload *this)
{
  bytes = 4;
  v8[0] = this;
  v8[1] = AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveStatusAsyncCallBack;
  v8[2] = 0;
  v1 = (this + 40);
  removePropertyHelper(*(*(this + 5) + 16), "getTCPAliveOffloadWakeReason: tko");
  v2 = OSData::withBytes(&bytes, 4uLL);
  setPropertyHelper((*v1)[2], "getTCPAliveOffloadWakeReason: tko", v2);
  if (v2)
  {
    (v2->release)(v2);
  }

  v3 = **v1;
  v7[0] = &bytes;
  v7[1] = 4;
  v6 = 2949141;
  v4 = AppleBCMWLANCommander::sendIOVarGet(v3, "tko", v7, &v6, v8, 0);
  if (v4 && (*v1)[1] && CCLogStream::shouldLog())
  {
    AppleBCMWLANKeepAliveOffload::getTCPAliveOffloadWakeReason(v1);
  }

  return v4;
}

uint64_t AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveStatusAsyncCallBack(uint64_t a1, uint64_t a2, int a3, const void **a4)
{
  if (a3)
  {
    v5 = a1 + 40;
    result = *(*(a1 + 40) + 8);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveStatusAsyncCallBack(v5);
      }
    }
  }

  else if (*a4 && *(a4 + 4))
  {
    v8 = *(a1 + 40);
    if (*(v8 + 8))
    {
      shouldLog = CCLogStream::shouldLog();
      v8 = *(a1 + 40);
      if (shouldLog)
      {
        CCLogStream::logAlert(*(v8 + 8), "[dk] %s@%d:TCPKA TKO status, rxPayload( length[%u], min[%u] max[%u])\n", "handleTCPKeepAliveStatusAsyncCallBack", 1036, *(a4 + 4), *(a4 + 5), *(a4 + 6));
        v8 = *(a1 + 40);
      }
    }

    removePropertyHelper(*(v8 + 16), "TKO status data");
    v10 = OSData::withBytes(*a4, *(a4 + 4));
    setPropertyHelper(*(*(a1 + 40) + 16), "TKO status data", v10);
    if (v10)
    {
      (v10->release)(v10);
    }

    v11 = *(a4 + 4);
    if (v11 > 3)
    {
      v12 = *a4;
      if (**a4 == 4)
      {
        v13 = v12[1];
        if (v13 + 4 <= v11)
        {
          v14 = *(v12 + 4);
          v15 = *(a1 + 40);
          if (v13 <= v14)
          {
            result = *(v15 + 8);
            if (result)
            {
              result = CCLogStream::shouldLog();
              if (result)
              {
                v28 = v12[1];
                v32 = *(v12 + 4);
                return CCLogStream::logAlert(*(*(a1 + 40) + 8), "[dk] %s@%d: Error: Incorrect Status length %d, socket count %d\n");
              }
            }
          }

          else
          {
            if (*(v15 + 480) >= 0xAu)
            {
              *(v15 + 480) = 0;
            }

            if (v14)
            {
              v16 = 0;
              v17 = 0;
              do
              {
                v18 = *(v12 + v16 + 5);
                if ((v18 - 1) <= 5)
                {
                  if (*(*(a1 + 40) + 8))
                  {
                    v19 = CCLogStream::shouldLog();
                    if (v19)
                    {
                      v33 = *(*(a1 + 40) + 8);
                      v23 = *(v12 + 4);
                      StringFromWakeReason = AppleBCMWLANKeepAliveOffload::getStringFromWakeReason(v19, v18);
                      CCLogStream::logAlert(v33, "[dk] %s@%d:TKO Socket count[%u], Id %d, Status: %u/'%s'\n", "handleTCPKeepAliveStatusAsyncCallBack", 1164, v23, v16, v18, StringFromWakeReason);
                    }
                  }

                  ++v17;
                  if (!v16)
                  {
                    mach_continuous_time();
                    v20 = *(*(a1 + 40) + 480);
                    absolutetime_to_nanoseconds();
                    *(*(a1 + 40) + 16 * *(*(a1 + 40) + 480) + 328) = v18;
                    v21 = *(a1 + 40);
                    v22 = *(v21 + 484);
                    if (!v22)
                    {
                      v22 = v18;
                    }

                    *(v21 + 484) = v22;
                  }
                }

                ++v16;
              }

              while (v16 < *(v12 + 4));
            }

            result = *(*(a1 + 40) + 8);
            if (result)
            {
              result = CCLogStream::shouldLog();
              if (result)
              {
                v29 = *(v12 + 4);
                return CCLogStream::logAlert(*(*(a1 + 40) + 8), "[dk] %s@%d:TKO Socket count[%u], wakeCounts[%d]\n");
              }
            }
          }
        }

        else
        {
          result = *(*(a1 + 40) + 8);
          if (result)
          {
            result = CCLogStream::shouldLog();
            if (result)
            {
              v26 = *(a4 + 4);
              v31 = v12[1] + 4;
              return CCLogStream::logAlert(*(*(a1 + 40) + 8), "[dk] %s@%d: Error: Incorrect buffer length %hu, expected %lu\n");
            }
          }
        }
      }

      else
      {
        result = *(*(a1 + 40) + 8);
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            v27 = *v12;
            return CCLogStream::logAlert(*(*(a1 + 40) + 8), "[dk] %s@%d: Error: Incorrect SubCmdId in Status %d\n");
          }
        }
      }
    }

    else
    {
      result = *(*(a1 + 40) + 8);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          v25 = *(a4 + 4);
          return CCLogStream::logAlert(*(*(a1 + 40) + 8), "[dk] %s@%d: Error: Insufficient buffer length %hu, expected %lu\n");
        }
      }
    }
  }

  else
  {
    result = *(*(a1 + 40) + 8);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        v30 = *(a4 + 4);
        return CCLogStream::logAlert(*(*(a1 + 40) + 8), "[dk] %s@%d: Error: Cannot retrieve TCP Keep Alive Status buffer, length[%u]\n");
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveConfigAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result + 40;
    result = *(*(result + 40) + 8);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANKeepAliveOffload::handleTCPKeepAliveConfigAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::unConfigureKeepAlives(AppleBCMWLANKeepAliveOffload *this)
{
  v3 = (this + 40);
  v2 = *(this + 5);
  if (*(v2 + 8))
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *v3;
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(*(v2 + 8), 0x8000000uLL, "[dk] %s@%d:Enter %s \n", "unConfigureKeepAlives", 878, "unConfigureKeepAlives");
      v2 = *v3;
    }
  }

  FirmwareInterfaceVersion = AppleBCMWLANCore::getFirmwareInterfaceVersion(*(v2 + 16));
  if (AppleBCMWLANCore::checkForTCPKAOffloadSupport(*(*v3 + 16)))
  {
    if (AppleBCMWLANKeepAliveOffload::getTCPAliveOffloadWakeReason(this) && *(*v3 + 8) && CCLogStream::shouldLog())
    {
      AppleBCMWLANKeepAliveOffload::unConfigureKeepAlives(v3);
    }

    v6 = AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadEnable(this, 0);
    v7 = *(this + 5);
    if (v6)
    {
      if (*(v7 + 8))
      {
        v8 = *(v7 + 8);
        v9 = CCLogStream::shouldLog();
        v7 = *v3;
        if (v9)
        {
          AppleBCMWLANKeepAliveOffload::unConfigureKeepAlives(v7, v6, v3, &v24);
          v7 = v24;
        }
      }
    }

    *(v7 + 24) = 0;
  }

  if (FirmwareInterfaceVersion <= 0x10)
  {
    v10 = 10;
  }

  else
  {
    v10 = 14;
  }

  v11 = 1;
  if (FirmwareInterfaceVersion <= 0x10)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (FirmwareInterfaceVersion <= 0x10)
  {
    v13 = 11;
  }

  else
  {
    v13 = 15;
  }

  if (FirmwareInterfaceVersion <= 0x10)
  {
    v14 = 11;
  }

  else
  {
    v14 = 15;
  }

  while (1)
  {
    v15 = IOMallocZeroData();
    if (!v15)
    {
      break;
    }

    v16 = v15;
    *(v15 + v10) = v11;
    *v15 = v12;
    *(v15 + 2) = v13;
    *(v15 + 4) = 0;
    *(v15 + 8) = 0;
    v17 = (*(**(*v3 + 16) + 88))(*(*v3 + 16));
    if ((*(*v17 + 136))(v17))
    {
      v24 = this;
      v25 = AppleBCMWLANKeepAliveOffload::handleUnconfigureMkeepAlivesAsyncCallBack;
      v26 = 0;
      v18 = AppleBCMWLANCommander::sendIOVarSet(**(this + 5), "mkeep_alive");
    }

    else
    {
      v19 = **v3;
      v24 = v16;
      v25 = v14;
      v18 = AppleBCMWLANCommander::runIOVarSet(v19, "mkeep_alive", &v24, 0, 0);
    }

    v20 = v18;
    v21 = *v3;
    if (v18)
    {
      if (*(v21 + 8) && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*v3 + 8), "[dk] %s@%d:Failed to UnConfigure mkeep-alive for ID %d\n");
      }
    }

    else
    {
      v22 = *(v21 + 28);
      if (v22)
      {
        *(v21 + 28) = v22 - 1;
        v21 = *v3;
      }

      *(v21 + 28) = v22;
      if (*(*v3 + 8) && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*v3 + 8), "[dk] %s@%d:UnConfigured Keep Alive ID = %d\n");
      }
    }

    IOFreeData();
    if (++v11 == 3)
    {
      if (*(*v3 + 8) && CCLogStream::shouldLog())
      {
        AppleBCMWLANKeepAliveOffload::unConfigureKeepAlives(v3);
      }

      return v20;
    }
  }

  if (*(*v3 + 8) && CCLogStream::shouldLog())
  {
    AppleBCMWLANKeepAliveOffload::unConfigureKeepAlives(v3);
  }

  return 12;
}

uint64_t AppleBCMWLANKeepAliveOffload::handleUnconfigureMkeepAlivesAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result + 40;
    result = *(*(result + 40) + 8);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANKeepAliveOffload::handleUnconfigureMkeepAlivesAsyncCallBack(v3);
      }
    }
  }

  return result;
}

const char *AppleBCMWLANKeepAliveOffload::getStringFromWakeReason(AppleBCMWLANKeepAliveOffload *this, int a2)
{
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 255)
      {
        return "Unavailable";
      }

      if (a2 == 6)
      {
        return "Data Wakeup";
      }

      return "Invalid Wake Reason";
    }

    if (a2 == 4)
    {
      return "Ack Number invalid";
    }

    else
    {
      return "Seq Number invalid";
    }
  }

  else
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        return "Normal";
      }

      if (a2 == 1)
      {
        return "No Response to Keep Alive";
      }

      return "Invalid Wake Reason";
    }

    if (a2 == 2)
    {
      return "Ack bit not set";
    }

    else
    {
      return "Unexpected TCP Flag";
    }
  }
}

uint64_t AppleBCMWLANKeepAliveOffload::getTCPAliveOffloadParams(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    a2[1] = *(*(a1 + 40) + 36);
    a2[2] = *(*(a1 + 40) + 40);
    a2[3] = *(*(a1 + 40) + 44);
    a2[4] = *(*(a1 + 40) + 48);
    a2[5] = *(*(a1 + 40) + 52);
    a2[6] = *(*(a1 + 40) + 56);
  }

  return 0;
}

uint64_t AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadParams(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2[2];
    *(*(a1 + 40) + 36) = a2[1];
    *(*(a1 + 40) + 40) = v2;
    v3 = a2[4];
    *(*(a1 + 40) + 44) = a2[3];
    *(*(a1 + 40) + 48) = v3;
    v4 = a2[6];
    *(*(a1 + 40) + 52) = a2[5];
    *(*(a1 + 40) + 56) = v4;
  }

  return 0;
}

uint64_t AppleBCMWLANKeepAliveOffload::getTCPAliveOffloadDump(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 40);
    v3 = *(v2 + 60);
    v4 = *(v2 + 76);
    v5 = *(v2 + 92);
    *(a2 + 52) = *(v2 + 108);
    *(a2 + 36) = v5;
    *(a2 + 20) = v4;
    *(a2 + 4) = v3;
    v6 = *(v2 + 124);
    v7 = *(v2 + 140);
    v8 = *(v2 + 156);
    *(a2 + 116) = *(v2 + 172);
    *(a2 + 100) = v8;
    *(a2 + 84) = v7;
    *(a2 + 68) = v6;
    v9 = *(a1 + 40);
    v10 = *(v9 + 60);
    v11 = *(v9 + 76);
    v12 = *(v9 + 92);
    *(a2 + 180) = *(v9 + 108);
    *(a2 + 164) = v12;
    *(a2 + 148) = v11;
    *(a2 + 132) = v10;
    v13 = *(v9 + 124);
    v14 = *(v9 + 140);
    v15 = *(v9 + 156);
    *(a2 + 244) = *(v9 + 172);
    *(a2 + 228) = v15;
    *(a2 + 212) = v14;
    *(a2 + 196) = v13;
    v16 = (a2 + 272);
    for (i = 320; i != 480; i += 16)
    {
      *(v16 - 1) = *(*(a1 + 40) + i);
      *v16 = *(*(a1 + 40) + i + 8);
      v16 += 6;
    }
  }

  return 0;
}

uint64_t AppleBCMWLANKeepAliveOffload::programGARP(AppleBCMWLANKeepAliveOffload *this, int a2)
{
  v26 = 0;
  v25 = 0;
  v4 = (this + 40);
  FirmwareInterfaceVersion = AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(this + 5) + 16));
  PrimaryInterface = AppleBCMWLANCore::getPrimaryInterface((*v4)[2]);
  v7 = *v4;
  if (PrimaryInterface)
  {
    if (AppleBCMWLANCore::isAssociated(v7[2]))
    {
      v8 = IOMallocZeroData();
      if (v8)
      {
        v9 = v8;
        if (FirmwareInterfaceVersion < 0x11)
        {
          *v8 = 720897;
          *(v8 + 10) = 1;
          v11 = (v8 + 11);
        }

        else
        {
          *v8 = 983042;
          LODWORD(__src[0]) = 5;
          IOParseBootArgNumber("wlan.keepalive.retrycnt", __src, 4);
          v10 = __src[0];
          if (LODWORD(__src[0]) >= 5)
          {
            v10 = 5;
          }

          *(v9 + 10) = v10;
          *(v9 + 14) = 1;
          v11 = (v9 + 15);
        }

        *(v9 + 4) = a2 | 0x80000000;
        *(v9 + 8) = 64;
        if (AppleBCMWLANCore::getRouterMacAddress((*v4)[2], &v25))
        {
          v12 = 3758097084;
        }

        else
        {
          *&v14 = 0xAAAAAAAAAAAAAAAALL;
          *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
          __src[1] = v14;
          *__n = v14;
          __src[0] = v14;
          ArpKeepAliveData = IO80211InfraInterface::getArpKeepAliveData();
          if (ArpKeepAliveData)
          {
            v12 = ArpKeepAliveData;
            if ((*v4)[1] && CCLogStream::shouldLog())
            {
              CCLogStream::logAlert((*v4)[1], "[dk] %s@%d:%s: Failed to get GARP keepalive data (%d)\n", "programGARP", 1629, "programGARP", v12);
            }
          }

          else
          {
            memcpy(v11, __src, HIDWORD(__n[1]));
            v16 = (*v4)[1];
            IO80211HexdumpIf();
            if (FirmwareInterfaceVersion <= 0x10)
            {
              v17 = 75;
            }

            else
            {
              v17 = 79;
            }

            v18 = (*(*(*v4)[2] + 88))((*v4)[2]);
            if ((*(*v18 + 136))(v18))
            {
              v22 = this;
              v23 = AppleBCMWLANKeepAliveOffload::handleConfigureProgramGARPAsyncCallBack;
              v24 = 0;
              v19 = AppleBCMWLANCommander::sendIOVarSet(**(this + 5), "mkeep_alive");
            }

            else
            {
              v20 = **v4;
              v22 = v9;
              v23 = v17;
              v19 = AppleBCMWLANCommander::runIOVarSet(v20, "mkeep_alive", &v22, 0, 0);
            }

            v12 = v19;
            v21 = (*v4)[1];
            if (v12)
            {
              if (v21 && CCLogStream::shouldLog())
              {
                AppleBCMWLANKeepAliveOffload::programGARP(v4);
              }
            }

            else
            {
              if (v21 && CCLogStream::shouldLog())
              {
                AppleBCMWLANKeepAliveOffload::programGARP(v4);
              }

              v12 = 0;
            }
          }
        }

        IOFreeData();
      }

      else
      {
        if ((*v4)[1] && CCLogStream::shouldLog())
        {
          AppleBCMWLANKeepAliveOffload::programGARP(v4);
        }

        return 12;
      }
    }

    else
    {
      return 6;
    }
  }

  else
  {
    v12 = 3758097084;
    if (v7[1] && CCLogStream::shouldLog())
    {
      AppleBCMWLANKeepAliveOffload::programGARP(v4);
    }
  }

  return v12;
}

uint64_t AppleBCMWLANKeepAliveOffload::handleConfigureProgramGARPAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result + 40;
    result = *(*(result + 40) + 8);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANKeepAliveOffload::handleConfigureProgramGARPAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANKeepAliveOffload::stopGARP(AppleBCMWLANKeepAliveOffload *this)
{
  v2 = (this + 40);
  FirmwareInterfaceVersion = AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(this + 5) + 16));
  v4 = IOMallocZeroData();
  if (v4)
  {
    v5 = v4;
    v6 = 10;
    if (FirmwareInterfaceVersion <= 0x10)
    {
      v7 = 1;
    }

    else
    {
      v6 = 14;
      v7 = 2;
    }

    if (FirmwareInterfaceVersion <= 0x10)
    {
      v8 = 11;
    }

    else
    {
      v8 = 15;
    }

    if (FirmwareInterfaceVersion <= 0x10)
    {
      v9 = 11;
    }

    else
    {
      v9 = 15;
    }

    *(v4 + v6) = 1;
    *v4 = v7;
    *(v4 + 2) = v8;
    *(v4 + 4) = 0;
    *(v4 + 8) = 0;
    v10 = (*(*(*v2)[2] + 88))((*v2)[2]);
    if ((*(*v10 + 136))(v10))
    {
      v15 = this;
      v16 = AppleBCMWLANKeepAliveOffload::handleConfigureStopGARPAsyncCallBack;
      v17 = 0;
      v11 = AppleBCMWLANCommander::sendIOVarSet(**(this + 5), "mkeep_alive");
    }

    else
    {
      v13 = **v2;
      v15 = v5;
      v16 = v9;
      v11 = AppleBCMWLANCommander::runIOVarSet(v13, "mkeep_alive", &v15, 0, 0);
    }

    v12 = v11;
    IOFreeData();
  }

  else
  {
    if ((*v2)[1] && CCLogStream::shouldLog())
    {
      AppleBCMWLANKeepAliveOffload::stopGARP(v2);
    }

    return 12;
  }

  return v12;
}

uint64_t AppleBCMWLANKeepAliveOffload::handleConfigureStopGARPAsyncCallBack(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = result + 40;
    result = *(*(result + 40) + 8);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANKeepAliveOffload::handleConfigureStopGARPAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_0_17(uint64_t a1)
{
  v2 = *(*a1 + 8);
  result = *(*a1 + 16);
  v3 = *result;
  return result;
}

char *convertAppleBCMWLANReturnToString(int a1)
{
  v1 = &off_1003CC9C0;
  v2 = 370;
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

uint64_t forEachAppleBCMWLANReturnCodes(uint64_t (*a1)(uint64_t, uint64_t, char *), uint64_t a2)
{
  v4 = 370;
  v5 = &off_1003CC9C0;
  do
  {
    v6 = *(v5 - 2);
    v7 = *v5;
    v5 += 2;
    result = a1(a2, v6, v7);
    --v4;
  }

  while (v4);
  return result;
}

uint64_t convertAppleBCMWLANReturnToErrno(int a1)
{
  v1 = &dword_1003CC9BC;
  v2 = 370;
  while (*(v1 - 1) != a1)
  {
    v1 += 4;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

OSObject *AppleBCMWLANChipManagerPCIe4377::withChip(AppleBCMWLANChipManagerPCIe4377 *this, uint64_t a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipManagerPCIe4377MetaClass, &v6))
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

BOOL AppleBCMWLANChipManagerPCIe4377::initWithChip(OSObject *this, int a2)
{
  result = AppleBCMWLANChipManagerPCIe::init(this);
  if (result)
  {
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 0);
    AppleBCMWLANChipManagerPCIe::setAWDLSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setChipNumber(this, a2);
    AppleBCMWLANChipManagerPCIe::setCoreCount(this, 9);
    AppleBCMWLANChipManagerPCIe::setCoreRegionList(this, &kBCOM4377ChipCores);
    AppleBCMWLANChipManagerPCIe::setWrapperCount(this, 17);
    AppleBCMWLANChipManagerPCIe::setWrapperRegionList(this, &kBCOM4377ChipWrappers);
    AppleBCMWLANChipManagerPCIe::setMemoryCount(this, 7);
    AppleBCMWLANChipManagerPCIe::setMemoryRegionList(this, &kBCOM4377ChipMemories);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindowCount(this, 8);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindows(this, &kBCOM4377ChipBackplaneWindows);
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 8);
    AppleBCMWLANChipManagerPCIe::setUserOTPRange(this, &kBCOM4377ChipUserOTP);
    AppleBCMWLANChipManagerPCIe::setChipOTPRange(this, &kBCOM4377ChipOTP);
    AppleBCMWLANChipManagerPCIe::setCoreIDTable(this, kBCOM4377CoreIDTable);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4377UCodeSCRRegionInfo, 0);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4377UCodeSHMRegionInfo, 1);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveRange(this, &kBCOM4377ChipConfigSpaceStateTable);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveCount(this, 3);
    AppleBCMWLANChipManagerPCIe::setMemoryRAMAddress(this, 1507328);
    AppleBCMWLANChipManagerPCIe::setPCIeHeaderLength(this, 256);
    AppleBCMWLANChipManagerPCIe::setSROMVersion(this, 16);
    AppleBCMWLANChipManagerPCIe::setSROMWordCount(this, 1024);
    AppleBCMWLANChipManagerPCIe::setSROMSignature(this, 17271);
    SROMWordCount = AppleBCMWLANChipManagerPCIe::getSROMWordCount(this);
    AppleBCMWLANChipManagerPCIe::setSROMoffsetVersion(this, 2 * SROMWordCount - 2);
    AppleBCMWLANChipManagerPCIe::setSROMoffsetSignature(this, 224);
    AppleBCMWLANChipManagerPCIe::setSROMoffsetMacAddress(this, 226);
    AppleBCMWLANChipManagerPCIe::setSROMoffsetSKU(this, 236);
    AppleBCMWLANChipManagerPCIe::setNotSplitArchitecture(this, 1);
    AppleBCMWLANChipManagerPCIe::setBootMSIUnsupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setMultiFunctionChip(this, 0);
    AppleBCMWLANChipManagerPCIe::setSafeToCaptureSoCRAM(this, 1);
    AppleBCMWLANChipManagerPCIe::setHMAPSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setHMAPBaseAddress(this, 1344);
    AppleBCMWLANChipManagerPCIe::sethostWakeToggleNotConfigured(this, 1);
    AppleBCMWLANChipManagerPCIe::setTrapBeforeFLRUnSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setASPMWorkaround(this, 1);
    AppleBCMWLANChipManagerPCIe::setPCIeBootMinPollingDelay(this, 200);
    v11 = 0;
    while (1)
    {
      BackplaneWindows = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
      PacketCount = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
      if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(BackplaneWindows, PacketCount, 0, &v11))
      {
        break;
      }

      AppleBCMWLANChipManagerPCIe::incrementCoreRemapperCount(this);
    }

    v11 = 0;
    while (1)
    {
      v8 = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
      v9 = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
      if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(v8, v9, 1, &v11))
      {
        break;
      }

      AppleBCMWLANChipManagerPCIe::incrementWrapperRemapperCount(this);
    }

    v10 = OSDictionary::withCapacity(0x20u);
    return AppleBCMWLANChipManagerPCIe::setChipProvisioningData(this, v10);
  }

  return result;
}

uint64_t AppleBCMWLANBusInterface::init(IOService *this)
{
  IOLog("AppleBCMWLANBusInterface::init start\n");
  result = IOService::init(this);
  if (result)
  {
    result = IOMallocZeroTyped();
    *&this[1].refcount = result;
    if (result)
    {
      IOLog("AppleBCMWLANBusInterface::init complete\n");
      return 1;
    }
  }

  return result;
}

void AppleBCMWLANBusInterface::free(IOService *this)
{
  v2 = *&this[1].refcount;
  if (v2)
  {
    memset_s(v2, 0x2B0uLL, 0, 0x2B0uLL);
    v3 = *&this[1].refcount;
    if (v3)
    {
      IOFree(v3, 0x2B0uLL);
      *&this[1].refcount = 0;
    }
  }

  IOService::free(this);
}

uint64_t AppleBCMWLANBusInterface::captureRequestCallback(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = a1 + 56;
  v3 = *(a1 + 56);
  if (*(v3 + 684) == 1)
  {
    v10 = 3758097109;
    if (*(v3 + 16) && CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterface::captureRequestCallback(v4);
    }
  }

  else
  {
    *(v3 + 684) = 1;
    v5 = *v4;
    v6 = *(*v4 + 16);
    if (**v4)
    {
      if (v6)
      {
        shouldLog = CCLogStream::shouldLog();
        v5 = *v4;
        if (shouldLog)
        {
          CCLogStream::logEmergency(*(v5 + 16), "[dk] %s@%d:Calling captureRequestCallback!", "captureRequestCallback", 178);
          v5 = *v4;
        }
      }

      v10 = AppleBCMWLANCore::captureRequestCallback(*v5, a2, a3);
    }

    else
    {
      v10 = 3758097109;
      if (v6 && CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterface::captureRequestCallback(v4);
      }
    }

    *(*v4 + 684) = 0;
  }

  return v10;
}

uint64_t AppleBCMWLANBusInterface::initDebug(IOService *this)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0;
  Provider = IOService::GetProvider(this);
  if (checkAcquireDataPropertyNotEmpty(Provider, "instance-id", &v7, 4uLL, 1uLL, "IOService"))
  {
    BytesNoCopy = OSData::getBytesNoCopy(v7, 0, 4uLL);
    if (BytesNoCopy)
    {
      *(*&this[1].refcount + 96) = *BytesNoCopy;
    }

    if (v7)
    {
      (v7->release)(v7);
      v7 = 0;
    }
  }

  else
  {
    *(*&this[1].refcount + 96) = 0;
  }

  memset(__str, 170, sizeof(__str));
  snprintf(__str, 0x10uLL, "%x", *(*&this[1].refcount + 96));
  v4 = *&this[1].refcount;
  *&v8 = __str;
  *(&v8 + 1) = v4 + 536;
  *&v9 = _captureCallback;
  *(&v9 + 1) = _setFlagsCallback;
  v10 = v4 + 408;
  queue = 0;
  OSObject::CopyDispatchQueue(this, "Default", &queue, 0);
  *(*&this[1].refcount + 88) = AppleBCMWLANLogger::withDriverAndOptions(this, &v8, queue);
  if (*(*&this[1].refcount + 88))
  {
    return 0;
  }

  else
  {
    return 3758097084;
  }
}

uint64_t _captureCallback(const OSMetaClassBase *a1, uint64_t a2, _OWORD *a3)
{
  v5 = OSMetaClassBase::safeMetaCast(a1, gAppleBCMWLANBusInterfaceMetaClass);
  result = IOLog("%s:%d Problem reported from corecapture\n", "_captureCallback", 157);
  if (v5)
  {

    return AppleBCMWLANBusInterface::captureRequestCallback(v5, a2, a3);
  }

  return result;
}

OSMetaClassBase *_setFlagsCallback(const OSObject *a1, unint64_t a2)
{
  result = OSMetaClassBase::safeMetaCast(a1, gAppleBCMWLANBusInterfaceMetaClass);
  if (result)
  {
    result = **&result[2].refcount;
    if (result)
    {

      return AppleBCMWLANCore::setLogFlagsCallback(result, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANBusInterface::destroyDebug(AppleBCMWLANBusInterface *this)
{
  v2 = *(this + 7);
  v3 = *(v2 + 88);
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 7) + 88) = 0;
    v2 = *(this + 7);
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*(this + 7) + 16) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterface::Start_Impl(IOService *this, IOService *a2)
{
  if ((this->OSObject::OSMetaClassBase::__vftable[12].free)(this))
  {
    ClassNameHelper = getClassNameHelper(this);
    IOLog("%s::%s() unable to create logger\n", ClassNameHelper, "Start_Impl");
    return 3758097084;
  }

  else
  {
    *(*&this[1].refcount + 16) = *(*&this[1].refcount + 552);
    (*(**(*&this[1].refcount + 16) + 8))(*(*&this[1].refcount + 16));
    if (*(*&this[1].refcount + 16) && CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterface::Start_Impl(&this[1].refcount);
    }

    return IOService::Start(this, a2, &IOService::_Dispatch);
  }
}

uint64_t AppleBCMWLANBusInterface::Stop_Impl(IOService *this, IOService *a2)
{
  (this->OSObject::OSMetaClassBase::__vftable[13].getMetaClass)(this);

  return IOService::Stop(this, a2, &IOService::_Dispatch);
}

OSMetaClass_vtbl *AppleBCMWLANBusInterface::freeResources(OSObject *this)
{
  p_meta = &this[1].meta;
  meta = this[1].meta;
  if (meta->refcount)
  {
    AppleBCMWLANBusInterface::freeResources(this, &this[1].meta);
  }

  v3 = meta[2].meta;
  if (v3)
  {
    (v3->release)(v3);
    (*p_meta)[2].meta = 0;
    meta = *p_meta;
  }

  v4 = *&meta[2].refcount;
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *&(*p_meta)[2].refcount = 0;
    meta = *p_meta;
  }

  v5 = meta[2].__vftable;
  if (v5)
  {
    (*(v5->getMetaClass + 2))(v5);
    (*p_meta)[2].__vftable = 0;
    meta = *p_meta;
  }

  metaClassPrivate = meta[1].metaClassPrivate;
  if (metaClassPrivate)
  {
    (*(*metaClassPrivate + 16))(metaClassPrivate);
    (*p_meta)[1].metaClassPrivate = 0;
    meta = *p_meta;
  }

  result = meta->__vftable;
  if (meta->__vftable)
  {
    result = (*(result->getMetaClass + 2))(result);
    (*p_meta)->__vftable = 0;
  }

  return result;
}

uint64_t AppleBCMWLANBusInterface::registerDriver(AppleBCMWLANBusInterface *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 7);
  if (*(v6 + 16))
  {
    shouldLog = CCLogStream::shouldLog();
    v6 = *(this + 7);
    if (shouldLog)
    {
      CCLogStream::logNoticeIf(*(v6 + 16), 0x200000uLL, "[dk] %s@%d: %lu\n", "registerDriver", 356, *(v6 + 8));
      v6 = *(this + 7);
    }
  }

  v8 = *(v6 + 8);
  if (!v8)
  {
    *v6 = a2;
    (*(***(this + 7) + 8))(**(this + 7));
    *(*(this + 7) + 584) = a3;
    *(*(this + 7) + 576) = 1;
    (*(*this + 696))(this);
    v6 = *(this + 7);
    v8 = *(v6 + 8);
  }

  *(v6 + 8) = v8 + 1;
  if (**(this + 7))
  {
    AppleBCMWLANBusInterface::SendBootPendingEvents(this);
  }

  return 0;
}

AppleBCMWLANBusInterface *AppleBCMWLANBusInterface::SendBootPendingEvents(AppleBCMWLANBusInterface *this)
{
  v1 = this;
  v2 = 0;
  v3 = 120;
  do
  {
    for (i = 0; i != 12; ++i)
    {
      if (*(*(v1 + 7) + v3 + 8 * i))
      {
        this = AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(v1, v2, i, 0, 1);
      }
    }

    ++v2;
    v3 += 96;
  }

  while (v2 != 3);
  return this;
}

uint64_t AppleBCMWLANBusInterface::unregisterDriver(void *a1, const void *a2)
{
  v3 = a1[7];
  if (*(v3 + 16))
  {
    shouldLog = CCLogStream::shouldLog();
    v3 = a1[7];
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v3 + 16), "[dk] %s@%d:enter, this[%p] driver[%p] count[%lu]\n", "unregisterDriver", 402, a1, a2, *(v3 + 8));
      v3 = a1[7];
    }
  }

  --*(v3 + 8);
  v6 = a1[7];
  if (!*(v6 + 8))
  {
    *(v6 + 576) = 0;
    *(a1[7] + 584) = 0;
    v7 = *a1[7];
    if (v7)
    {
      (*(*v7 + 16))(v7);
      *a1[7] = 0;
    }

    (*(*a1 + 704))(a1);
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterface::parseOTPData(AppleBCMWLANBusInterface *this, const OSData *a2, OSObject *a3, int (*a4)(OSObject *, unsigned __int8, unsigned __int8, const void *, void *), void *a5)
{
  if (!a2)
  {
    v15 = this + 56;
    v17 = 3758097090;
    if (*(*(this + 7) + 16) && CCLogStream::shouldLog())
    {
      AppleBCMWLANBusInterface::parseOTPData(v15);
    }

    return v17;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  Length = OSData::getLength(a2);
  v11 = Length;
  if (!Length)
  {
    return 0;
  }

  v12 = 0;
  while (1)
  {
    if (!BytesNoCopy[v12])
    {
      ++v12;
      goto LABEL_11;
    }

    if (BytesNoCopy[v12] == 255)
    {
      break;
    }

    if (v12 + 2 > v11)
    {
      v17 = 3758097115;
      if (*(*(this + 7) + 16) && CCLogStream::shouldLog())
      {
        CCLogStream::logCrit(*(*(this + 7) + 16), "[dk] %s@%d: %llu-Error! No space for link of 0x%02X (needed %llu, remaining %llu).\n");
      }

      return v17;
    }

    v13 = BytesNoCopy[v12 + 1] + 2 + v12;
    if (v13 > v11)
    {
      v17 = 3758097115;
      if (*(*(this + 7) + 16) && CCLogStream::shouldLog())
      {
        CCLogStream::logCrit(*(*(this + 7) + 16), "[dk] %s@%d: %llu-Error! No space for body of 0x%02X (needed %llu, remaining %llu).\n");
      }

      return v17;
    }

    v14 = (a4)(a3, BytesNoCopy[v12]);
    v12 = v13;
    if (v14)
    {
      return v14;
    }

LABEL_11:
    if (v12 >= v11)
    {
      return 0;
    }
  }

  if (*(*(this + 7) + 16) && CCLogStream::shouldLog())
  {
    CCLogStream::logNoticeIf(*(*(this + 7) + 16), 0x80uLL, "[dk] %s@%d:%llu - End of OTP 0x%02X.\n", "parseOTPData", 491, v12, 255);
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterface::parseOTPTuple(AppleBCMWLANBusInterface *this, int a2, uint64_t a3, const void *a4, void *a5)
{
  v5 = a3;
  if (a2 == 21)
  {
    if (a3 > 6)
    {
      (*(*this + 712))(this, 21, a3, a4, a5);
      v10 = *(this + 7);
      v9 = (this + 56);
      v8 = v10;
      if (*(v10 + 16))
      {
        shouldLog = CCLogStream::shouldLog();
        v8 = *v9;
        if (shouldLog)
        {
          v15 = *(v8 + 16);
          CStringNoCopy = OSString::getCStringNoCopy(*(v8 + 56));
          CCLogStream::logInfoIf(v15, 0x80uLL, "[dk] %s@%d:Manufacturer: %s\n", "parseOTPTuple", 546, CStringNoCopy);
          v8 = *v9;
        }
      }

      if (*(v8 + 16))
      {
        v12 = CCLogStream::shouldLog();
        v8 = *v9;
        if (v12)
        {
          v17 = *(v8 + 16);
          v18 = OSString::getCStringNoCopy(*(v8 + 64));
          CCLogStream::logInfoIf(v17, 0x80uLL, "[dk] %s@%d:Product:      %s\n", "parseOTPTuple", 547, v18);
          v8 = *v9;
        }
      }

      if (*(v8 + 16))
      {
        v13 = CCLogStream::shouldLog();
        v8 = *v9;
        if (v13)
        {
          v19 = *(v8 + 16);
          v20 = OSString::getCStringNoCopy(*(v8 + 72));
          CCLogStream::logInfoIf(v19, 0x80uLL, "[dk] %s@%d:ProductInfo0: %s\n", "parseOTPTuple", 548, v20);
          v8 = *v9;
        }
      }

      if (*(v8 + 16) && CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterface::parseOTPTuple(v9);
      }
    }

    else if (*(*(this + 7) + 16) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(this + 7) + 16), "[dk] %s@%d: dropping invalid Version tuple 0x%02X (size %u, expected >= %d)\n", "parseOTPTuple", 541, 21, v5, 7);
    }
  }

  else if (*(*(this + 7) + 16) && CCLogStream::shouldLog())
  {
    CCLogStream::logInfoIf(*(*(this + 7) + 16), 0x80uLL, "[dk] %s@%d: Skipping OTP Tuple 0x%02X, size %u\n", "parseOTPTuple", 555, a2, v5);
  }

  return 0;
}

char *AppleBCMWLANBusInterface::stringFromReturn(IOService *this, IOService *a2)
{
  v2 = a2;
  if (a2 >> 14 == 233470)
  {

    return convertAppleBCMWLANReturnToString(a2);
  }

  else if (IOService::GetProvider(this))
  {
    Provider = IOService::GetProvider(this);

    return IOService::StringFromReturn(Provider, v2);
  }

  else
  {
    return "NULL";
  }
}

uint64_t AppleBCMWLANBusInterface::errnoFromReturn(AppleBCMWLANBusInterface *this, uint64_t a2)
{
  result = a2;
  if (a2 >> 14 == 233470)
  {
    return convertAppleBCMWLANReturnToErrno(a2);
  }

  switch(a2)
  {
    case 0xE00002BC:
    case 0xE00002BF:
    case 0xE00002C9:
    case 0xE00002CA:
    case 0xE00002CB:
    case 0xE00002D4:
    case 0xE00002DA:
    case 0xE00002DC:
    case 0xE00002DF:
    case 0xE00002E0:
    case 0xE00002E6:
    case 0xE00002E7:
    case 0xE00002E8:
    case 0xE00002EC:
      goto LABEL_4;
    case 0xE00002BD:
    case 0xE00002BE:
    case 0xE00002DE:
      result = 12;
      break;
    case 0xE00002C0:
    case 0xE00002D1:
    case 0xE00002D9:
    case 0xE00002E4:
    case 0xE00002E5:
      result = 6;
      break;
    case 0xE00002C1:
    case 0xE00002C3:
    case 0xE00002C4:
    case 0xE00002C5:
    case 0xE00002CD:
    case 0xE00002CE:
      result = 13;
      break;
    case 0xE00002C2:
    case 0xE00002C6:
    case 0xE00002D0:
    case 0xE00002EA:
      result = 22;
      break;
    case 0xE00002C7:
      result = 45;
      break;
    case 0xE00002C8:
      result = 14;
      break;
    case 0xE00002CC:
      result = 77;
      break;
    case 0xE00002CF:
      result = 30;
      break;
    case 0xE00002D2:
    case 0xE00002DD:
      result = 17;
      break;
    case 0xE00002D3:
      result = 88;
      break;
    case 0xE00002D5:
    case 0xE00002D7:
    case 0xE00002D8:
    case 0xE00002EB:
    case 0xE00002ED:
      result = 16;
      break;
    case 0xE00002D6:
      result = 60;
      break;
    case 0xE00002DB:
      result = 28;
      break;
    case 0xE00002E1:
      result = 40;
      break;
    case 0xE00002E2:
      result = 1;
      break;
    case 0xE00002E3:
      result = 82;
      break;
    case 0xE00002E9:
      result = 83;
      break;
    default:
      if (a2)
      {
LABEL_4:
        result = 5;
      }

      break;
  }

  return result;
}

BOOL AppleBCMWLANBusInterface::isIOKitEnvironment(OSObject *this)
{
  v8 = 1;
  if ((this->OSMetaClassBase::__vftable[15].getMetaClass)(this))
  {
    ClassNameHelper = getClassNameHelper(this);
    IOLog("%s::%s() WLAN Active Driver mode from Target-type IOKit\n", ClassNameHelper, "isIOKitEnvironment");
    return 1;
  }

  else
  {
    if (IOParseBootArgNumber("wlan.dk", &v8, 4))
    {
      v4 = getClassNameHelper(this);
      if (v8)
      {
        v5 = "DriverKit";
      }

      else
      {
        v5 = "IOKit";
      }

      IOLog("%s::%s() WLAN Active Driver mode from boot-args %s\n", v4, "isIOKitEnvironment", v5);
    }

    v6 = getClassNameHelper(this);
    if (v8)
    {
      v7 = "DriverKit";
    }

    else
    {
      v7 = "IOKit";
    }

    IOLog("%s::%s() WLAN Active Driver mode %s\n", v6, "isIOKitEnvironment", v7);
    return v8 == 0;
  }
}

uint64_t AppleBCMWLANBusInterface::isAbortInit(AppleBCMWLANBusInterface *this)
{
  v2 = 0;
  LODWORD(result) = IOParseBootArgNumber("wlan.debug.abort-init", &v2, 1);
  if (v2 == 2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANBusInterface::reportInitFailure(uint64_t a1, IOService *a2, uint64_t value, int a4)
{
  v5 = value;
  v8 = OSNumber::withNumber(value, 0x20uLL);
  setPropertyHelper(a2, "com.apple.wlan.init_failure", v8);
  if (v8)
  {
    (v8->release)(v8);
  }

  v20 = -1431655766;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18 = v9;
  v19 = v9;
  v16 = v9;
  v17 = v9;
  *__str = v9;
  v15 = v9;
  v10 = (*(*a1 + 104))(a1, v5 | 0xE3FF9000);
  snprintf(__str, 0x64uLL, "%s-line %d", v10, a4);
  IOLog("AppleBCMWLANBusInterface init failed: %s\n", __str);
  v11 = OSString::withCString(__str);
  result = AppleOLYHAL::reportInitFailureDK(v11, v12);
  if (result)
  {
    return IOLog("AppleBCMWLANBusInterface: could not set failure string property into wlan nub!\n");
  }

  return result;
}

uint64_t AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(AppleBCMWLANBusInterface *this, OSString *a2, OSString *a3)
{
  v6 = OSString::withCString("com.apple.CoreCapture.MissingLogFiles");
  v7 = v6;
  if (a2 && a3)
  {
    if (v6)
    {
      values = a3;
      keys = a2;
      v8 = OSDictionary::withObjects(&values, &keys, 1u, 0);
      if (keys)
      {
        (keys->release)(keys);
        keys = 0;
      }

      if (values)
      {
        (values->release)(values);
        values = 0;
      }

      v10 = *(this + 7);
      v9 = this + 56;
      if (IOService::CoreAnalyticsSendEvent(*v10, 0, v7, v8, 0) && *(*v9 + 16) && CCLogStream::shouldLog())
      {
        AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(v9, v7);
      }

      (v7->release)(v7);
      if (v8)
      {
        (v8->release)(v8);
      }
    }

    else
    {
      AppleBCMWLANBusInterface::sendCCMissingFileInfoToCoreAnalytics(a2, a3);
    }
  }

  else
  {
    if (a2)
    {
      (a2->release)(a2);
    }

    if (a3)
    {
      (a3->release)(a3);
    }

    if (v7)
    {
      (v7->release)(v7);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(AppleBCMWLANBusInterface *this, unsigned int a2, unsigned int a3, uint64_t a4, char a5)
{
  v30 = 0;
  if (a4)
  {
    v30 = a4;
  }

  else
  {
    mach_continuous_time();
    absolutetime_to_nanoseconds();
  }

  if (a2 <= 2)
  {
    v9 = OSString::withCString(off_1003CE2F0[a2]);
    if (v9)
    {
      v10 = v9;
      if (a3 >= 0xC)
      {
        if (*(*(this + 7) + 16) && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*(this + 7) + 16), "[dk] %s@%d:INVALID bootCheckPoint = %d\n", "sendBootCheckPointToCoreAnalytics", 897, a3);
        }
      }

      else
      {
        if (a5)
        {
          v11 = *(this + 7);
          v12 = v11[12 * a2 + 15 + a3];
        }

        else
        {
          OSString::getCStringNoCopy(v9);
          stringFromBootCheckPoint(a3);
          io80211_os_log();
          v13 = *(this + 7);
          v12 = (v30 - *(v13 + 104)) / 0x3E8uLL;
          *(v13 + 96 * a2 + 8 * a3 + 120) = v12;
          v11 = *(this + 7);
        }

        if (*v11)
        {
          v11[12 * a2 + 15 + a3] = 0;
          read_random();
          v14 = OSString::withCString("com.apple.wifi.BootCheckPoint");
          if (v14)
          {
            v15 = v14;
            v16 = OSDictionary::withCapacity(2u);
            if (v16)
            {
              v17 = OSString::withCString(off_1003CE308[a3]);
              if (v17)
              {
                v18 = v17;
                v19 = OSNumber::withNumber(v12, 0x40uLL);
                if (v19)
                {
                  v20 = v19;
                  OSDictionary::setObject(v16, v18, v19);
                  (v18->release)(v18);
                  (v20->release)(v20);
                  v21 = OSString::withCString("Reason");
                  v22 = *(this + 7);
                  if (!v21)
                  {
                    if (*(v22 + 16) && CCLogStream::shouldLog())
                    {
                      AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(this + 56);
                    }

                    goto LABEL_46;
                  }

                  v23 = v21;
                  v24 = *(v22 + 112);
                  if (v24 <= 2)
                  {
                    v25 = OSString::withCString(off_1003CE368[v24]);
                    if (v25)
                    {
                      v26 = v25;
                      OSDictionary::setObject(v16, v23, v25);
                      (v23->release)(v23);
                      (v26->release)(v26);
                      v27 = *(this + 7);
                      if (*v27)
                      {
                        if (!IOService::CoreAnalyticsSendEvent(*v27, 0, v15, v16, 0))
                        {
                          v28 = 1;
                          goto LABEL_47;
                        }

                        v27 = *(this + 7);
                      }

                      if (*(v27 + 16) && CCLogStream::shouldLog())
                      {
                        AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(this + 56, v15);
                      }

                      goto LABEL_46;
                    }

                    v22 = *(this + 7);
                  }

                  if (*(v22 + 16) && CCLogStream::shouldLog())
                  {
                    AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(this + 56);
                  }
                }

                else
                {
                  AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(this + 56, v18, &v31);
                  v23 = v31;
                }

                (v23->release)(v23);
LABEL_46:
                v28 = 0;
LABEL_47:
                (v15->release)(v15);
                if (v16)
                {
                  (v16->release)(v16);
                }

                goto LABEL_49;
              }

              AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(this + 56, &v31);
            }

            else
            {
              AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(this + 56, &v31);
            }

            v28 = v31;
            goto LABEL_47;
          }

          AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(this + 56, &v31);
          v28 = v31;
LABEL_49:
          (v10->release)(v10);
          return v28;
        }

        if (v11[2] && CCLogStream::shouldLog())
        {
          AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(this + 56);
        }
      }

      v28 = 0;
      goto LABEL_49;
    }
  }

  AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(this, &v31);
  return v31;
}

uint64_t AppleBCMWLANBusInterface::setBootCheckPointAnchorTime(uint64_t this, uint64_t a2, int a3)
{
  *(*(this + 56) + 104) = a2;
  *(*(this + 56) + 112) = a3;
  return this;
}

uint64_t AppleBCMWLANBusInterface::getLogPipesAndStreams(uint64_t result, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a2)
  {
    *a2 = *(*(result + 56) + 544);
  }

  if (a5)
  {
    *a5 = *(*(result + 56) + 552);
  }

  if (a3)
  {
    *a3 = *(*(result + 56) + 536);
  }

  if (a4)
  {
    *a4 = *(*(result + 56) + 560);
  }

  if (a6)
  {
    *a6 = *(*(result + 56) + 568);
  }

  return result;
}

__n128 AppleBCMWLANBusInterface::getTxDescriptor@<Q0>(AppleBCMWLANBusInterface *this@<X0>, __n128 *a2@<X8>)
{
  v2 = *(this + 7);
  result = v2[37];
  *a2 = result;
  a2[1].n128_u64[0] = v2[38].n128_u64[0];
  return result;
}

__n128 AppleBCMWLANBusInterface::getTxCompletionDescriptor@<Q0>(AppleBCMWLANBusInterface *this@<X0>, __n128 *a2@<X8>)
{
  v2 = *(this + 7);
  a2[1].n128_u64[0] = *(v2 + 632);
  result = *(v2 + 616);
  *a2 = result;
  return result;
}

uint64_t AppleBCMWLANBusInterface::getTxCommittedCommandDescriptor(AppleBCMWLANBusInterface *this)
{
  v1 = *(this + 7);
  result = *(v1 + 640);
  v3 = *(v1 + 648);
  return result;
}

uint64_t AppleBCMWLANBusInterface::getRxDescriptor(AppleBCMWLANBusInterface *this)
{
  v1 = *(this + 7);
  result = *(v1 + 656);
  v3 = *(v1 + 664);
  return result;
}

__n128 AppleBCMWLANBusInterface::getCCLogs@<Q0>(AppleBCMWLANBusInterface *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 7);
  *(a2 + 32) = *(v2 + 568);
  result = *(v2 + 536);
  v4 = *(v2 + 552);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t AppleBCMWLANBusInterface::updateInterruptStats(AppleBCMWLANBusInterface *this, uint64_t a2, uint64_t a3)
{
  result = **(this + 7);
  if (result)
  {
    return AppleBCMWLANCore::updateInterruptStats(result, a2, a3);
  }

  return result;
}

uint64_t AppleBCMWLANUserClient::ExternalMethod(IOUserClient *this, uint64_t a2, IOUserClientMethodArguments *a3, const IOUserClientMethodDispatch *a4, OSObject *a5, void *a6)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v7 = this[1].IOService::OSObject::OSMetaClassBase::__vftable;
  v9[4] = v7->getMetaClass;
  if ((*(*v7->release + 144))(v7->release, a2, a3, a4, a5, a6))
  {
    return AppleBCMWLANUserClient::externalMethodGated(this, v9);
  }

  else
  {
    return (*(*this[1].isEqualTo + 56))(this[1].isEqualTo, AppleBCMWLANUserClient::externalMethodGated, v9, 0, 0, 0);
  }
}

uint64_t AppleBCMWLANUserClient::externalMethodGated(IOUserClient *this, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  kdebug_trace();
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v3 >= 5;
  }

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = this;
  }

  if (v3 >= 5)
  {
    v10 = v5;
  }

  else
  {
    v10 = (&sMethods + 4 * v3);
  }

  v11 = IOUserClient::ExternalMethod(this, v3, v4, v10, v9, v7);
  v13 = 0xAAAAAAAAAAAAAAAALL;
  if (!IOService::StringFromReturn(this, v11, &v13, 0))
  {
    OSString::getCStringNoCopy(v13);
    io80211_os_log();
  }

  kdebug_trace();
  return v11;
}

uint64_t AppleBCMWLANUserClient::init(IOUserClient *this)
{
  if (IOUserClient::init(this))
  {
    result = IOMallocZeroTyped();
    this[1].IOService::OSObject::OSMetaClassBase::__vftable = result;
    if (result)
    {
      *result = 0;
      return 1;
    }
  }

  else
  {
    AppleBCMWLANUserClient::init(this, &v3);
    return v3;
  }

  return result;
}

void AppleBCMWLANUserClient::free(IOUserClient *this)
{
  v2 = this[1].IOService::OSObject::OSMetaClassBase::__vftable;
  if (v2)
  {
    memset_s(v2, 0x30uLL, 0, 0x30uLL);
    v3 = this[1].IOService::OSObject::OSMetaClassBase::__vftable;
    if (v3)
    {
      IOFree(v3, 0x30uLL);
      this[1].IOService::OSObject::OSMetaClassBase::__vftable = 0;
    }
  }

  IOUserClient::free(this);
}

uint64_t AppleBCMWLANUserClient::Start_Impl(IOUserClient *this, IOService *a2)
{
  v22 = 0;
  v4 = IOService::Start(this, a2, &IOUserClient::_Dispatch);
  if (v4)
  {
    v5 = v4;
    ClassNameHelper = getClassNameHelper(this);
    IOLog("%s::%s(): super::start( provider) failed\n", ClassNameHelper, "Start_Impl");
    AppleBCMWLANUserClient::freeResources(this);
    return v5;
  }

  v7 = this + 1;
  this[1].getMetaClass = OSMetaClassBase::safeMetaCast(a2, gAppleBCMWLANCoreMetaClass);
  if (!this[1].getMetaClass)
  {
    v5 = 3758097084;
    AppleBCMWLANUserClient::Start_Impl(this);
    return v5;
  }

  v8 = IOUserClient::CopyClientEntitlements(this, &v22, 0);
  if (v8)
  {
    v21 = 0xAAAAAAAAAAAAAAAALL;
    if (!IOService::StringFromReturn(this, v8, &v21, 0))
    {
      OSString::getCStringNoCopy(v21);
      io80211_os_log();
    }

    v5 = 3758097084;
    getClassNameHelper(this);
    IOLog("%s::%s(): Unable to get entitlements for the current client\n");
  }

  else
  {
    v9 = kOSBooleanTrue;
    Object = OSDictionary::getObject(v22, "com.apple.wlan.userclient");
    IOLog("UserClient entitlement check returned with value %d\n", v9 == Object);
    (v22->release)(v22);
    if (v9 != Object)
    {
      v5 = 3758097084;
      getClassNameHelper(this);
      IOLog("%s::%s(): Client does not have the required entitlements\n");
      return v5;
    }

    v7->Dispatch = (*(*v7->getMetaClass + 1952))(v7->getMetaClass);
    Dispatch = v7->Dispatch;
    if (!Dispatch)
    {
      v5 = 3758097084;
      getClassNameHelper(this);
      IOLog("%s::%s(): Unable to get debug logger\n");
      return v5;
    }

    (*(*Dispatch + 8))(Dispatch);
    v7->release = (*(*v7->getMetaClass + 88))(v7->getMetaClass);
    release = v7->release;
    if (!release)
    {
      AppleBCMWLANUserClient::Start_Impl(this);
      return v21;
    }

    (*(*release + 8))(release);
    v13 = (*(*v7->release + 168))(v7->release);
    if (!v13)
    {
      AppleBCMWLANUserClient::Start_Impl(&this[1], &v21);
      return v21;
    }

    v14 = OSObject::SetDispatchQueue(this, "IOUserClientQueueExternalMethod", v13, 0);
    v15 = this[1].IOService::OSObject::OSMetaClassBase::__vftable;
    if (!v14)
    {
      v16 = v15->release;
      this[1].isEqualTo = IO80211CommandGate::allocWithParams();
      v17 = this[1].IOService::OSObject::OSMetaClassBase::__vftable;
      if (v17->isEqualTo)
      {
        if (v17->Dispatch && CCLogStream::shouldLog())
        {
          AppleBCMWLANUserClient::Start_Impl(&this[1]);
        }

        return 0;
      }

      AppleBCMWLANUserClient::Start_Impl(this);
      return v21;
    }

    if (v15)
    {
      v19 = v14;
      if (v15->Dispatch)
      {
        if (CCLogStream::shouldLog())
        {
          if (v7->IOService::OSObject::OSMetaClassBase::__vftable)
          {
            v20 = v7->Dispatch;
          }

          else
          {
            v20 = 0;
          }

          CCLogStream::logAlert(v20, "[dk] %s@%d:AppleBCMWLANUserClient : Failed to set External Method Dispatch Queue retVal:0x%x\n", "Start_Impl", 326, v19);
        }
      }
    }

    return 3758097084;
  }

  return v5;
}

uint64_t AppleBCMWLANUserClient::freeResources(AppleBCMWLANUserClient *this)
{
  v2 = *(this + 8);
  v3 = v2[1];
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 8) + 8) = 0;
    v2 = *(this + 8);
  }

  v4 = v2[3];
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*(this + 8) + 24) = 0;
    v2 = *(this + 8);
  }

  v5 = v2[2];
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 8) + 16) = 0;
    v2 = *(this + 8);
  }

  result = v2[4];
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 8) + 32) = 0;
    v2 = *(this + 8);
  }

  if (*v2)
  {
    *v2 = 0;
  }

  return result;
}

uint64_t AppleBCMWLANUserClient::Stop_Impl(IOService *this, IOService *a2)
{
  p_meta = &this[1].meta;
  meta = this[1].meta;
  if (meta && meta[1].__vftable && CCLogStream::shouldLog())
  {
    AppleBCMWLANUserClient::Stop_Impl(p_meta);
  }

  AppleBCMWLANUserClient::freeResources(this);
  IOService::Stop(this, a2, &IOUserClient::_Dispatch);
  return 0;
}

uint64_t AppleBCMWLANUserClient::open(AppleBCMWLANUserClient *this)
{
  v2 = *(this + 8);
  if (*(v2 + 32))
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *(this + 8);
    if (shouldLog)
    {
      if (v2)
      {
        v5 = *(v2 + 32);
      }

      else
      {
        v5 = 0;
      }

      CCLogStream::logNoticeIf(v5, 0x80uLL, "[dk] %s@%d:\n", "open", 405);
      v2 = *(this + 8);
    }
  }

  if (*(v2 + 40))
  {
    return 3758097086;
  }

  AppleBCMWLAN_isVerboseDebugLoggingAllowed();
  result = 0;
  *(*(this + 8) + 40) = 1;
  return result;
}

uint64_t AppleBCMWLANUserClient::close(AppleBCMWLANUserClient *this)
{
  v2 = *(this + 8);
  if (*(v2 + 32))
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *(this + 8);
    if (shouldLog)
    {
      if (v2)
      {
        v5 = *(v2 + 32);
      }

      else
      {
        v5 = 0;
      }

      CCLogStream::logNoticeIf(v5, 0x80uLL, "[dk] %s@%d:\n", "close", 432);
      v2 = *(this + 8);
    }
  }

  *(v2 + 40) = 0;
  return 0;
}

uint64_t AppleBCMWLANUserClient::prepareImageMap(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, BOOL (*a6)(const OSObject *))
{
  v8 = (a1 + 64);
  v9 = AppleBCMWLANCore::initAfterIORegUpdated(**(a1 + 64), a2, a3, a4, a5, a6);
  result = 3825173796;
  if (!v9)
  {
    return result;
  }

  v11 = *v8;
  if ((*v8)[4])
  {
    shouldLog = CCLogStream::shouldLog();
    v11 = *v8;
    if (shouldLog)
    {
      if (v11)
      {
        v18 = v11[4];
      }

      else
      {
        v18 = 0;
      }

      CCLogStream::logAlert(v18, "[dk] %s@%d: FW size %d NV size %d Sig size %d Reg size %d txcap size %d platcfg size %d\n", "prepareImageMap", 499, *a2, a2[2], a2[1], a2[3], a2[4], a2[5]);
      v11 = *v8;
    }
  }

  if (v11[1])
  {
    return 3758097122;
  }

  if (*a2 > 0x307000)
  {
    return 3825174273;
  }

  if (*a2 < 0x19000)
  {
    return 3825174272;
  }

  v13 = a2[2];
  if (v13 > 0x8000)
  {
    return 3825174275;
  }

  if (v13 < 0x64)
  {
    return 3825174284;
  }

  v14 = a2[1];
  if (v14 > 0x400)
  {
    return 3825174302;
  }

  if (v14 - 16 > 0xFFFFFFFFFFFFFFF0)
  {
    return 3825174303;
  }

  v15 = a2[5];
  if (v15 > 0x10000)
  {
    return 3825174304;
  }

  if (v15 - 32 > 0xFFFFFFFFFFFFFFE0)
  {
    return 3825174305;
  }

  v16 = a2[3];
  if (v16 > 0x19000)
  {
    return 3825174276;
  }

  if (v16 - 33 > 0xFFFFFFFFFFFFFFDFLL)
  {
    return 3825174277;
  }

  v17 = a2[4];
  if (v17 > 0x8000)
  {
    return 3825174280;
  }

  if (v17 - 33 > 0xFFFFFFFFFFFFFFDFLL)
  {
    return 3825174281;
  }

  v19 = AppleBCMWLANCore::verifyFileSelect(*v11, a2[6], a2[7], a2[8]);
  v20 = *v8;
  if (v19)
  {
    v21 = v19;
    if (v20 && v20[4])
    {
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANUserClient::prepareImageMap(v8);
      }
    }

    return v21;
  }

  Bus = AppleBCMWLANCore::getBus(*v20);
  if (((*(*(Bus + 48) + 520))() & 1) == 0)
  {
    a2[1] = 0;
  }

  if (AppleBCMWLANCore::is4388Up(**v8))
  {
    v23 = a2[5];
  }

  else
  {
    v23 = 0;
    a2[5] = 0;
  }

  (*v8)[1] = AppleBCMWLANCore::allocChipImage(**v8, *a2, a2[2], a2[3], a2[4], a2[1], v23);
  v24 = (*v8)[1];
  if (!v24)
  {
    if ((*v8)[4] && CCLogStream::shouldLog())
    {
      AppleBCMWLANUserClient::prepareImageMap(v8);
    }

    return 3758097085;
  }

  v25 = (*(*v24 + 56))(v24, a3);
  if (!v25)
  {
    if (*a2 <= a3[1] && a2[2] <= a3[4] && a2[3] <= a3[11] && a2[4] <= a3[14] && a2[1] <= a3[6] && a2[5] <= a3[8])
    {
      return 0;
    }

    v29 = *v8;
    if ((*v8)[4])
    {
      v30 = CCLogStream::shouldLog();
      v29 = *v8;
      if (v30)
      {
        if (v29)
        {
          v34 = v29[4];
        }

        else
        {
          v34 = 0;
        }

        CCLogStream::logAlert(v34, "[dk] %s@%d: kernel alloc imageSize is too small! imageSize->firmwareSize %d imageMapDescriptor->firmwareBufferLength %d\n", "prepareImageMap", 616, *a2, a3[1]);
        v29 = *v8;
      }
    }

    if (v29[4])
    {
      v31 = CCLogStream::shouldLog();
      v29 = *v8;
      if (v31)
      {
        if (v29)
        {
          v35 = v29[4];
        }

        else
        {
          v35 = 0;
        }

        v37 = a2[4];
        CCLogStream::logAlert(v35, "[dk] %s@%d: imageSize->nvramSize %d imageMapDescriptor->nvramBufferLength %d imageSize->regSize %d imageMapDescriptor->regBufferLength %d, imageSize->txCapSize %d, imageMapDescriptor->txCapBufferLength %d\n", "prepareImageMap", 617, a2[2], a3[4], a2[3], a3[11], v37, a3[14]);
        v29 = *v8;
      }
    }

    if (v29[4])
    {
      v32 = CCLogStream::shouldLog();
      v29 = *v8;
      if (v32)
      {
        if (v29)
        {
          v36 = v29[4];
        }

        else
        {
          v36 = 0;
        }

        v38 = a2[5];
        CCLogStream::logAlert(v36, "[dk] %s@%d: imageSize->signatureSize %d imageMapDescriptor->signatureBufferLength %d imageSize->platcfgSize %d imageMapDescriptor->platcfgBufferLength %d\n", "prepareImageMap", 619, a2[1], a3[6], v38, a3[8]);
        v29 = *v8;
      }
    }

    (*(*v29[1] + 16))(v29[1]);
    (*v8)[1] = 0;
    return 3758097085;
  }

  v26 = v25;
  v27 = *v8;
  if ((*v8)[4])
  {
    v28 = CCLogStream::shouldLog();
    v27 = *v8;
    if (v28)
    {
      if (v27)
      {
        v33 = v27[4];
      }

      else
      {
        v33 = 0;
      }

      CCLogStream::logAlert(v33, "[dk] %s@%d: ChipImage prepareMapping fail:0x%x\n", "prepareImageMap", 586, v26);
      v27 = *v8;
    }
  }

  (*(*v27[1] + 16))(v27[1]);
  (*v8)[1] = 0;
  return v26;
}

uint64_t AppleBCMWLANUserClient::completeImageMap(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 64);
  v3 = *(a1 + 64);
  if (v3)
  {
    if (v3[4])
    {
      shouldLog = CCLogStream::shouldLog();
      v3 = *v4;
      if (shouldLog)
      {
        if (v3)
        {
          v24 = v3[4];
        }

        else
        {
          v24 = 0;
        }

        CCLogStream::logNoticeIf(v24, 0x80uLL, "[dk] %s@%d:\n", "completeImageMap", 681);
        v3 = *v4;
      }
    }
  }

  ChipImage = 3758097084;
  v7 = v3[1];
  if (!v7)
  {
    goto LABEL_19;
  }

  if (*v3)
  {
    (*(*v7 + 80))(v7, *(a2 + 16));
    (*(*(*v4)[1] + 88))((*v4)[1], *(a2 + 96));
    (*(*(*v4)[1] + 104))((*v4)[1], *(a2 + 120));
    (*(*(*v4)[1] + 120))((*v4)[1], *(a2 + 72));
    ChipImage = (*(*(*v4)[1] + 72))((*v4)[1], a2);
    v12 = *v4;
    if (ChipImage)
    {
      AppleBCMWLANUserClient::completeImageMap(v12, v8, v9, v10, v11);
    }

    else if ((*(*v12[1] + 160))(v12[1], *v12, AppleBCMWLANCore::verifyImages, 0))
    {
      ChipImage = AppleBCMWLANCore::generateChipImage(**v4, (*v4)[1]);
      v15 = **v4;
      if (ChipImage)
      {
        v23 = 707;
      }

      else
      {
        ChipImage = AppleBCMWLANCore::validateChipImage(v15, (*v4)[1]);
        v15 = **v4;
        if (ChipImage)
        {
          v23 = 709;
        }

        else
        {
          ChipImage = AppleBCMWLANCore::completeChipImage(v15, (*v4)[1]);
          v15 = **v4;
          if (!ChipImage)
          {
            v16 = AppleBCMWLANCore::bootChipImage(v15, (*v4)[1]);
            if (!v16)
            {
              AppleBCMWLANCore::removeFirmwareLoader(**v4);
              v17 = OSDictionary::withCapacity(1u);
              if (*v4 && (*v4)[4] && CCLogStream::shouldLog())
              {
                AppleBCMWLANUserClient::completeImageMap(v4);
              }

              OSDictionary::setObject(v17, "FirmwareLoaded", kOSBooleanTrue);
              IOService::SetProperties(**v4, v17, 0);
              (v17->release)(v17);
              ChipImage = 0;
              goto LABEL_22;
            }

            ChipImage = v16;
            goto LABEL_18;
          }

          v23 = 711;
        }
      }

      AppleBCMWLANCore::reportInitFailure(v15, 4uLL, v23, v13, v14);
    }

    else
    {
      ChipImage = 3825174300;
    }
  }

LABEL_18:
  v3 = *v4;
LABEL_19:
  if (v3[4] && CCLogStream::shouldLog())
  {
    AppleBCMWLANUserClient::completeImageMap(v4, ChipImage);
  }

LABEL_22:
  v18 = *v4;
  if ((*v4)[4])
  {
    v19 = CCLogStream::shouldLog();
    v18 = *v4;
    if (v19)
    {
      if (v18)
      {
        v22 = v18[4];
      }

      else
      {
        v22 = 0;
      }

      CCLogStream::logAlert(v22, "[dk] %s@%d: - completed, status[%x]\n", "completeImageMap", 730, ChipImage);
      v18 = *v4;
    }
  }

  v20 = v18[1];
  if (v20)
  {
    (*(*v20 + 16))(v20);
    (*v4)[1] = 0;
  }

  return ChipImage;
}

uint64_t AppleBCMWLANUserClient::reportMissingFirmwareFiles(AppleBCMWLANUserClient *this, AppleBCMWLANUserClient *a2, void *a3, IOUserClientMethodArguments *a4, uint64_t a5)
{
  v5 = **(this + 8);
  if (!v5)
  {
    return 3758097084;
  }

  AppleBCMWLANCore::reportInitFailure(v5, 3uLL, 669, a4, a5);
  return 0;
}

uint64_t AppleBCMWLANUserClient::CopyClientMemoryForType_Impl(AppleBCMWLANUserClient *this, uint64_t a2, unint64_t *a3, IOMemoryDescriptor **a4)
{
  v5 = a2;
  IOLog("ClientMemoryForType[%qd]\n", a2);
  MemoryDescriptorWithMapping = AppleBCMWLANChipImage::getMemoryDescriptorWithMapping(*(*(this + 8) + 8), v5);
  (MemoryDescriptorWithMapping->retain)(MemoryDescriptorWithMapping);
  *a4 = MemoryDescriptorWithMapping;
  return 0;
}

uint64_t OUTLINED_FUNCTION_0_18(AppleBCMWLANUserClient *a1)
{

  return AppleBCMWLANUserClient::freeResources(a1);
}

BOOL isValid5GHzCalibration(const unsigned __int8 *__s1, size_t __n)
{
  result = 0;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  if (__n <= 0x12)
  {
    return memcmp(__s1, v4, __n) != 0;
  }

  return result;
}

BOOL isValid24GHzCalibration(const unsigned __int8 *__s1, size_t __n)
{
  result = 0;
  v5 = 0;
  v4 = 0;
  if (__n <= 6)
  {
    return memcmp(__s1, &v4, __n) != 0;
  }

  return result;
}

BOOL isValid5GHzMIMOCalibration(const unsigned __int8 *__s1, size_t __n)
{
  result = 0;
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  if (__n <= 0x24)
  {
    return memcmp(__s1, v4, __n) != 0;
  }

  return result;
}

BOOL isValid24GHzMIMOCalibration(const unsigned __int8 *__s1, size_t __n)
{
  result = 0;
  v5 = 0;
  __s2 = 0;
  if (__n <= 0xC)
  {
    return memcmp(__s1, &__s2, __n) != 0;
  }

  return result;
}

BOOL isValid24GHzRxCalibration(const unsigned __int8 *__s1, size_t __n)
{
  result = 0;
  memset(__s2, 0, 27);
  if (__n <= 0x1B)
  {
    return memcmp(__s1, __s2, __n) != 0;
  }

  return result;
}

BOOL isValid5GHzRxCalibration(const unsigned __int8 *a1, size_t __n)
{
  __s2[0] = 0;
  __s2[1] = 0;
  return __n <= 0x10 && memcmp(a1, __s2, __n) != 0;
}

OSObject *AppleBCMWLANProvisioningManager::withProvisioningRoot(AppleBCMWLANProvisioningManager *this, IOService *a2, AppleBCMWLANBusInterface *a3)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANProvisioningManagerMetaClass, &v7))
  {
    return 0;
  }

  v5 = v7;
  if (v7 && ((v7->OSMetaClassBase::__vftable[1].getMetaClass)(v7, this, a2) & 1) == 0)
  {
    (v5->release)(v5);
    return 0;
  }

  return v5;
}

uint64_t AppleBCMWLANProvisioningManager::initWithProvisioningRoot(OSObject *this, IOService *a2, AppleBCMWLANBusInterface *a3)
{
  result = IOMallocZeroTyped();
  *&this[1].refcount = result;
  if (result)
  {
    result = OSObject::init(this);
    if (result)
    {
      *(*&this[1].refcount + 16) = a2;
      (*(**(*&this[1].refcount + 16) + 8))(*(*&this[1].refcount + 16));
      *(*&this[1].refcount + 8) = AppleBCMWLANBusInterface::getLogger(a3);
      v7 = *(*&this[1].refcount + 8);
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v21 = 0;
        if (IOParseBootArgNumber("wlan.debug.generate-mac", &v21, 8) && v21 || IOParseBootArgNumber("wlan.factory", &v21, 8) && (v21 & 4) != 0)
        {
          v8 = *&this[1].refcount;
          if (*(v8 + 8))
          {
            shouldLog = CCLogStream::shouldLog();
            v8 = *&this[1].refcount;
            if (shouldLog)
            {
              CCLogStream::logNoticeIf(*(v8 + 8), 0x80uLL, "[dk] %s@%d: Will generate MAC address if none provisioned\n", "initWithProvisioningRoot", 250);
              v8 = *&this[1].refcount;
            }
          }

          *(v8 + 596) |= 1u;
        }

        v20 = 0;
        if (IOParseBootArgNumber("wlan.panic.factory", &v20, 4) && v20)
        {
          v11 = *&this[1].refcount;
          if (*(v11 + 8))
          {
            v12 = CCLogStream::shouldLog();
            v11 = *&this[1].refcount;
            if (v12)
            {
              v15 = *(v11 + 8);
              ClassNameHelper = getClassNameHelper(this);
              CCLogStream::logAlert(v15, "[dk] %s@%d:%s::%s(): Will panic on init failure\n", "initWithProvisioningRoot", 256, ClassNameHelper, "initWithProvisioningRoot");
              v11 = *&this[1].refcount;
            }
          }

          *(v11 + 596) |= 2u;
        }

        v19 = 0;
        if (IOParseBootArgNumber("wlan.debug.skip_old_rx_cal", &v19, 4) && v19)
        {
          v13 = *&this[1].refcount;
          if (*(v13 + 8))
          {
            v14 = CCLogStream::shouldLog();
            v13 = *&this[1].refcount;
            if (v14)
            {
              v17 = *(v13 + 8);
              v18 = getClassNameHelper(this);
              CCLogStream::logAlert(v17, "[dk] %s@%d:%s::%s(): Will skip old RSSI Rx calibration.\n", "initWithProvisioningRoot", 262, v18, "initWithProvisioningRoot");
              v13 = *&this[1].refcount;
            }
          }

          *(v13 + 596) |= 0x100u;
        }

        **&this[1].refcount = a3;
        (*(***&this[1].refcount + 8))(**&this[1].refcount);
        return 1;
      }

      else
      {
        v10 = getClassNameHelper(this);
        IOLog("%s::%s(): Unable to get debug logger\n", v10, "initWithProvisioningRoot");
        return 0;
      }
    }
  }

  return result;
}

void AppleBCMWLANProvisioningManager::free(OSObject *this)
{
  v2 = *&this[1].refcount;
  if (*v2)
  {
    (*(**v2 + 16))(*v2);
    **&this[1].refcount = 0;
    v2 = *&this[1].refcount;
  }

  v3 = v2[2];
  if (v3)
  {
    (*(*v3 + 16))(v2[2]);
    *(*&this[1].refcount + 16) = 0;
    v2 = *&this[1].refcount;
  }

  v4 = v2[1];
  if (!v4 || ((*(*v4 + 16))(v2[1]), *(*&this[1].refcount + 8) = 0, (v2 = *&this[1].refcount) != 0))
  {
    memset_s(v2, 0x300uLL, 0, 0x300uLL);
    v5 = *&this[1].refcount;
    if (v5)
    {
      IOFree(v5, 0x300uLL);
      *&this[1].refcount = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANProvisioningManager::processProvisionedData(AppleBCMWLANProvisioningManager *this)
{
  v2 = (this + 48);
  v3 = (*(*(**(this + 6) + 48) + 128))(**(this + 6) + 48, this, AppleBCMWLANProvisioningManager::parseOTPTuple, *(this + 6) + 24);
  v4 = *v2;
  if (v3)
  {
    v5 = v3;
    if (v4[1] && CCLogStream::shouldLog())
    {
      AppleBCMWLANProvisioningManager::processProvisionedData(v2);
    }
  }

  else
  {
    AppleBCMWLANProvisioningManager::gatherDeviceTreeData(this, v4 + 6);
    AppleBCMWLANProvisioningManager::generateData(this, *(this + 6) + 24);
    v5 = AppleBCMWLANProvisioningManager::validateData(this, *(this + 6) + 24);
    v6 = *(this + 6);
    if (v5)
    {
      if (*(v6 + 8) && CCLogStream::shouldLog())
      {
        AppleBCMWLANProvisioningManager::processProvisionedData(v2);
      }
    }

    else
    {
      AppleBCMWLANProvisioningManager::populateDeviceTree(this, v6 + 24);
    }
  }

  return v5;
}

uint64_t AppleBCMWLANProvisioningManager::getProvisionedData(uint64_t a1, void *__dst)
{
  v4 = *(a1 + 48);
  if (*(v4 + 8))
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *(a1 + 48);
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v4 + 8), "[dk] %s@%d:WiFi HW[ %02x:%02x:%02x:%02x:%02x:%02x ]\n", "getProvisionedData", 309, *(v4 + 28), *(v4 + 29), *(v4 + 30), *(v4 + 31), *(v4 + 32), *(v4 + 33));
      v4 = *(a1 + 48);
    }
  }

  memmove(__dst, (v4 + 24), 0x23CuLL);
  return 0;
}

uint64_t AppleBCMWLANProvisioningManager::parseOTPTuple(AppleBCMWLANProvisioningManager *this, int a2, unsigned int a3, unsigned __int8 *a4, uint64_t a5)
{
  v9 = this + 48;
  v10 = *(*(this + 6) + 8);
  if (a2 == 128)
  {
    if (v10 && CCLogStream::shouldLog())
    {
      AppleBCMWLANProvisioningManager::parseOTPTuple(v9);
    }

    AppleBCMWLANProvisioningManager::parseBCOMPrivateTuple(this, a4, a3, a5);
  }

  else if (a2 == 34)
  {
    if (v10 && CCLogStream::shouldLog())
    {
      AppleBCMWLANProvisioningManager::parseOTPTuple(v9);
    }

    AppleBCMWLANProvisioningManager::parseFunctionExtension(this, a4, a3, a5);
  }

  else if (v10 && CCLogStream::shouldLog())
  {
    CCLogStream::logNoticeIf(*(*v9 + 8), 0x40000uLL, "[dk] %s@%d: Skipping CIS Tuple 0x%02X, size %u\n", "parseOTPTuple", 389, a2, a3);
  }

  return 0;
}

uint64_t AppleBCMWLANProvisioningManager::gatherDeviceTreeData(uint64_t a1, _DWORD *a2)
{
  AppleBCMWLANProvisioningManager::gatherBaudRate(a1, a2);
  AppleBCMWLANProvisioningManager::gatherMacAddress(a1, a2);
  AppleBCMWLANProvisioningManager::gather24GHzTxCal(a1, a2);
  AppleBCMWLANProvisioningManager::gather50GHzTxCal(a1, a2);
  AppleBCMWLANProvisioningManager::gather24GHzRxCal(a1, a2);
  AppleBCMWLANProvisioningManager::gather50GHzRxCal(a1, a2);
  AppleBCMWLANProvisioningManager::gatherRxTempCal(a1, a2);
  AppleBCMWLANProvisioningManager::gatherRxFreqGroup2G(a1, a2);
  return 0;
}

uint64_t AppleBCMWLANProvisioningManager::generateData(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 4;
  if (*(a2 + 4) | *(a2 + 8))
  {
    v5 = (*(a2 + 4) & 1) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v7 = a1 + 48;
    v6 = *(a1 + 48);
    if (*(v6 + 596))
    {
      v16[0] = 0;
      v8 = acquireProperty<OSString>(*(v6 + 16), "IOPlatformSerialNumber", v16, 1uLL, "IOService");
      if (v16[0] && OSString::getLength(v16[0]))
      {
        OSString::getCStringNoCopy(v16[0]);
        OSString::getLength(v16[0]);
        generateMacAddr(v4);
      }

      else
      {
        v16[1] = mach_continuous_time();
        generateMacAddr(v4);
        *(a2 + 4) = -11590;
      }

      if (v16[0])
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9 == 1)
      {
        (v16[0]->release)();
        v16[0] = 0;
      }

      if (*(*v7 + 8) && CCLogStream::shouldLog())
      {
        AppleBCMWLANProvisioningManager::generateData(a1 + 48, v4);
      }
    }
  }

  v10 = (a2 + 10);
  if (*(a2 + 10) | *(a2 + 14))
  {
    v11 = (*(a2 + 10) & 1) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v12 = *v4;
    *v10 = *v4;
    *(a2 + 14) = *(v4 + 4);
    *v10 = v12 + 1;
    v14 = *(a1 + 48);
    v13 = a1 + 48;
    if (*(v14 + 8))
    {
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProvisioningManager::generateData(v13, (a2 + 10));
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANProvisioningManager::validateData(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) | *(a2 + 8))
  {
    v2 = (*(a2 + 4) & 1) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    return 0;
  }

  v4 = a1 + 48;
  v3 = *(a1 + 48);
  if ((*(v3 + 596) & 2) != 0)
  {
    AppleBCMWLANProvisioningManager::validateData(a1);
  }

  v5 = 3758097084;
  if (*(v3 + 8) && CCLogStream::shouldLog())
  {
    AppleBCMWLANProvisioningManager::validateData(v4);
  }

  return v5;
}

uint64_t AppleBCMWLANProvisioningManager::populateDeviceTree(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 1) & 8) == 0)
  {
    AppleBCMWLANProvisioningManager::populateMacAddress(a1, "local-mac-address", (a2 + 4));
  }

  v4 = OSData::withBytesNoCopy((a2 + 16), 6uLL);
  if (*(a2 + 16) | *(a2 + 20))
  {
    v5 = (*(a2 + 16) & 1) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v7 = *(a1 + 48);
    v6 = a1 + 48;
    if ((setPropertyHelper(*v7, "ethernet-mac-address", v4) & 1) == 0 && *(*v6 + 8) && CCLogStream::shouldLog())
    {
      AppleBCMWLANProvisioningManager::populateDeviceTree(v6);
      if (!v4)
      {
        return 0;
      }

      goto LABEL_12;
    }
  }

  if (v4)
  {
LABEL_12:
    (v4->release)(v4);
  }

  return 0;
}

uint64_t AppleBCMWLANProvisioningManager::parseFunctionExtension(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = *a2;
    if (v7 == 4)
    {
      if ((a3 - 9) > 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = a1 + 48;
        result = *(*(a1 + 48) + 8);
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            result = AppleBCMWLANProvisioningManager::parseFunctionExtension(v11, a2 + 1);
          }
        }

        if (*(a2 + 1) | *(a2 + 5))
        {
          v12 = (a2[1] & 1) == 0;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          v13 = *(a2 + 1);
          *(a4 + 8) = *(a2 + 5);
          *(a4 + 4) = v13;
        }

        else
        {
          result = *(*v11 + 8);
          if (result)
          {
            result = CCLogStream::shouldLog();
            if (result)
            {
              return AppleBCMWLANProvisioningManager::parseFunctionExtension(v11);
            }
          }
        }
      }

      else
      {
        result = *(*(a1 + 48) + 8);
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            return CCLogStream::logAlert(*(*(a1 + 48) + 8), "[dk] %s@%d: Error, invalid LAN_NID 0x%02X in FuncE (size %llu, expected %lu)\n", "parseFunctionExtension", 437, 4, a3, 7);
          }
        }
      }
    }

    else
    {
      result = *(*(a1 + 48) + 8);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return CCLogStream::logNoticeIf(*(*(a1 + 48) + 8), 0x40000uLL, "[dk] %s@%d: Skipping FuncE type 0x%02X, size %llu\n", "parseFunctionExtension", 456, v7, a3);
        }
      }
    }
  }

  else
  {
    v9 = a1 + 48;
    result = *(*(a1 + 48) + 8);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProvisioningManager::parseFunctionExtension(v9);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::parseBCOMPrivateTuple(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = *a2;
    v5 = a2 + 1;
    v6 = v7;
    v8 = a3 - 1;
    if (a3 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = v5;
    }

    result = *(*(a1 + 48) + 8);
    if (v6 == 131)
    {
      if (result && CCLogStream::shouldLog())
      {
        CCLogStream::logNoticeIf(*(*(a1 + 48) + 8), 0x40000uLL, "[dk] %s@%d:@%u - Apple Private CIS 0x%02X, size %llu.\n", "parseBCOMPrivateTuple", 488, 0, 131, v8);
      }

      return AppleBCMWLANProvisioningManager::parseApplePrivateCIS(a1, v9, v8, a4);
    }

    else if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return CCLogStream::logNoticeIf(*(*(a1 + 48) + 8), 0x40000uLL, "[dk] %s@%d:@%u - Skipping BCOM private tuple, subtag 0x%02X body size %llu\n", "parseBCOMPrivateTuple", 492, 0, v6, v8);
      }
    }
  }

  else
  {
    v12 = a1 + 48;
    result = *(*(a1 + 48) + 8);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProvisioningManager::parseBCOMPrivateTuple(v12);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::parseApplePrivateCIS(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return result;
  }

  v6 = result;
  v7 = 0;
  v8 = 1;
  while (1)
  {
    v9 = *(a2 + v7) & 0x7F;
    if ((*(a2 + v7) & 0x7F) == 0)
    {
      goto LABEL_126;
    }

    if (v9 == 126)
    {
      break;
    }

    if (*(a2 + v7) < 0)
    {
      if (v7 + 3 > a3)
      {
        result = *(*(v6 + 48) + 8);
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            return CCLogStream::logCrit(*(*(v6 + 48) + 8), "[dk] %s@%d: @%lu - Error! No space for long link of 0x%02X (needed %u, remaining %lu).\n");
          }
        }

        return result;
      }

      v10 = *(v8 + a2);
      v11 = 3;
    }

    else
    {
      if (v7 + 2 > a3)
      {
        result = *(*(v6 + 48) + 8);
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            return CCLogStream::logCrit(*(*(v6 + 48) + 8), "[dk] %s@%d: @%lu - Error! No space for short link of 0x%02X (needed %u, remaining %lu).\n");
          }
        }

        return result;
      }

      v10 = *(a2 + v8);
      v11 = 2;
    }

    v12 = v11 + v10;
    v8 = v7 + v12;
    if (v7 + v12 > a3)
    {
      result = *(*(v6 + 48) + 8);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return CCLogStream::logCrit(*(*(v6 + 48) + 8), "[dk] %s@%d: @%lu - Error! No space for body of 0x%02X (needed %llu, remaining %lu).\n");
        }
      }

      return result;
    }

    v13 = a2 + v7 + v11;
    if ((*(a2 + v7) & 0x7Fu) > 0xA)
    {
      if ((*(a2 + v7) & 0x7Fu) > 0xD)
      {
        if (v9 == 14)
        {
          result = *(*(v6 + 48) + 8);
          if (v10 == 6)
          {
            if (result)
            {
              result = CCLogStream::shouldLog();
              if (result)
              {
                result = AppleBCMWLANProvisioningManager::parseApplePrivateCIS(v6 + 48, v13);
              }
            }

            if (!(*v13 | *(v13 + 4)) || (*v13 & 1) != 0)
            {
              result = *(*(v6 + 48) + 8);
              if (result)
              {
                result = CCLogStream::shouldLog();
                if (result)
                {
                  result = CCLogStream::logAlert(*(*(v6 + 48) + 8), "[dk] %s@%d: @%llu - Warning, invalid Ethernet MAC data in tuple 0x%02X\n");
                }
              }
            }

            else
            {
              v34 = *v13;
              *(a4 + 20) = *(v13 + 4);
              *(a4 + 16) = v34;
            }
          }

          else if (result)
          {
            result = CCLogStream::shouldLog();
            if (result)
            {
              result = CCLogStream::logAlert(*(*(v6 + 48) + 8), "[dk] %s@%d: @%llu - Error, invalid Ethernet MAC tuple 0x%02X (size %u, expected %u)\n");
            }
          }

          goto LABEL_126;
        }

        if (v9 == 15)
        {
          result = *(*(v6 + 48) + 8);
          if (v10 == 6)
          {
            if (result)
            {
              result = CCLogStream::shouldLog();
              if (result)
              {
                result = AppleBCMWLANProvisioningManager::parseApplePrivateCIS(v6 + 48, v13);
              }
            }

            if (!(*v13 | *(v13 + 4)) || (*v13 & 1) != 0)
            {
              result = *(*(v6 + 48) + 8);
              if (result)
              {
                result = CCLogStream::shouldLog();
                if (result)
                {
                  result = CCLogStream::logAlert(*(*(v6 + 48) + 8), "[dk] %s@%d: @%lu - Warning, invalid WiFi MAC data in tuple 0x%02X\n");
                }
              }
            }

            else
            {
              v29 = *v13;
              *(a4 + 8) = *(v13 + 4);
              *(a4 + 4) = v29;
            }
          }

          else if (result)
          {
            result = CCLogStream::shouldLog();
            if (result)
            {
              result = CCLogStream::logAlert(*(*(v6 + 48) + 8), "[dk] %s@%d: @%lu - Error, invalid WiFi MAC tuple 0x%02X (size %u, expected %u)\n");
            }
          }

          goto LABEL_126;
        }

LABEL_57:
        result = *(*(v6 + 48) + 8);
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            result = CCLogStream::logNoticeIf(*(*(v6 + 48) + 8), 0x40000uLL, "[dk] %s@%d: @%llu - Skipping tuple 0x%02X, size %llu\n", "parseApplePrivateCIS", 818, v7, v9, v12);
          }
        }

        goto LABEL_126;
      }

      if (v9 == 11)
      {
        result = *(*(v6 + 48) + 8);
        if (v10 == 6)
        {
          if (result)
          {
            result = CCLogStream::shouldLog();
            if (result)
            {
              result = AppleBCMWLANProvisioningManager::parseApplePrivateCIS(v6 + 48, v13);
            }
          }

          if (!(*v13 | *(v13 + 4)) || (*v13 & 1) != 0)
          {
            result = *(*(v6 + 48) + 8);
            if (result)
            {
              result = CCLogStream::shouldLog();
              if (result)
              {
                result = CCLogStream::logAlert(*(*(v6 + 48) + 8), "[dk] %s@%d: @%llu - Warning, invalid BT MAC data in tuple 0x%02X\n");
              }
            }
          }

          else
          {
            v33 = *v13;
            *(a4 + 14) = *(v13 + 4);
            *(a4 + 10) = v33;
          }
        }

        else if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            result = CCLogStream::logAlert(*(*(v6 + 48) + 8), "[dk] %s@%d: @%llu - Error, invalid BT MAC tuple 0x%02X (size %u, expected %u)\n");
          }
        }

        goto LABEL_126;
      }

      if (v9 != 12)
      {
        goto LABEL_57;
      }

      result = *(*(v6 + 48) + 8);
      if (v10 != 6)
      {
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            return CCLogStream::logAlert(*(*(v6 + 48) + 8), "[dk] %s@%d: %lu - Error! Serial number 0x%02x needed %lu bytes, but got %d byte.\n", "parseApplePrivateCIS", 625, v7, 12, 6, v10);
          }
        }

        return result;
      }

      if (result && CCLogStream::shouldLog(result, 0x40080uLL))
      {
        v14 = *(v6 + 48);
        if (*(v14 + 8))
        {
          shouldLog = CCLogStream::shouldLog();
          v14 = *(v6 + 48);
          if (shouldLog)
          {
            CCLogStream::logNoticeIf(*(v14 + 8), 0x40080uLL, "[dk] %s@%d: @%lu - Module Serial number in tuple 0x%02X:, tupleLink %d\n", "parseApplePrivateCIS", 629, v7, 12, 6);
            v14 = *(v6 + 48);
          }
        }

        v16 = *(v14 + 8);
        IO80211HexdumpIf();
      }

      v17 = OSData::withBytes(v13, 6uLL);
      v18 = *(v6 + 48);
      if (!v17)
      {
        result = *(v18 + 8);
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            result = AppleBCMWLANProvisioningManager::parseApplePrivateCIS(v6 + 48);
          }
        }

        goto LABEL_126;
      }

      v19 = v17;
      if ((setPropertyHelper(*(v18 + 16), "wifi-module-sn", v17) & 1) == 0 && *(*(v6 + 48) + 8) && CCLogStream::shouldLog())
      {
        AppleBCMWLANProvisioningManager::parseApplePrivateCIS(v6 + 48);
      }

      v20 = OSString::withCString("wifi-module-sn");
      v21 = OSMetaClassBase::safeMetaCast(v19, gOSDataMetaClass);
      if (v21)
      {
        v23 = AppleOLYHAL::setDataPropertyHelperDK(v20, v21, v22);
        goto LABEL_120;
      }

      v38 = OSMetaClassBase::safeMetaCast(v19, gOSStringMetaClass);
      if (v38)
      {
        v23 = AppleOLYHAL::setStringPropertyHelperDK(v20, v38, v39);
        goto LABEL_120;
      }

      v40 = OSMetaClassBase::safeMetaCast(v19, gOSDictionaryMetaClass);
      if (v40)
      {
        v23 = AppleOLYHAL::setDictPropertyHelperDK(v20, v40, v41);
LABEL_120:
        v42 = v23;
        if (v20)
        {
LABEL_121:
          (*(*v20 + 16))(v20);
        }
      }

      else
      {
        v42 = 0;
        if (v20)
        {
          goto LABEL_121;
        }
      }

      if (*(*(v6 + 48) + 8))
      {
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*(v6 + 48) + 8), "[dk] %s@%d:Publish %s property under OLYHAL nub, success %d\n", "parseApplePrivateCIS", 643, "wifi-module-sn", v42);
        }
      }

      result = (v19->release)(v19);
      goto LABEL_126;
    }

    switch(v9)
    {
      case 2:
        if (v10 != 6 && v10 != 12)
        {
          result = *(*(v6 + 48) + 8);
          if (result)
          {
            result = CCLogStream::shouldLog();
            if (result)
            {
              result = CCLogStream::logCrit(*(*(v6 + 48) + 8), "[dk] %s@%d: @%llu - Invalid 2.4 GHz WiFi Cal tuple 0x%02X (size %u, expected %lu or %lu)\n", "parseApplePrivateCIS");
            }
          }

          goto LABEL_126;
        }

        v30 = *(v6 + 48);
        if (*(v30 + 8))
        {
          v31 = CCLogStream::shouldLog();
          v30 = *(v6 + 48);
          if (v31)
          {
            CCLogStream::logNoticeIf(*(v30 + 8), 0x40080uLL, "[dk] %s@%d: @%llu - 2.4 GHz WiFi Calibration in tuple 0x%02X:", "parseApplePrivateCIS", 720, v7, 2);
            v30 = *(v6 + 48);
          }
        }

        v32 = *(v30 + 8);
        IO80211HexdumpIf();
        if (v10 == 12)
        {
          result = isValid24GHzMIMOCalibration(v13, 0xCuLL);
          if (!result)
          {
LABEL_109:
            result = *(*(v6 + 48) + 8);
            if (result)
            {
              result = CCLogStream::shouldLog();
              if (result)
              {
                result = CCLogStream::logWarn(*(*(v6 + 48) + 8), "[dk] %s@%d: @%llu - Invalid 2.4 GHz Cal data in tuple 0x%02X\n");
              }
            }

            goto LABEL_126;
          }

          v27 = a4;
          *(a4 + 70) = *v13;
          *(a4 + 72) = *(v13 + 2);
          *(a4 + 74) = *(v13 + 4);
          *(a4 + 76) = *(v13 + 6);
          *(a4 + 78) = *(v13 + 8);
          *(a4 + 80) = *(v13 + 10);
          v28 = *a4 | 8;
        }

        else
        {
          result = isValid24GHzCalibration(v13, 6uLL);
          if (!result)
          {
            goto LABEL_109;
          }

          v27 = a4;
          *(a4 + 22) = *v13;
          *(a4 + 24) = *(v13 + 2);
          *(a4 + 26) = *(v13 + 4);
          v28 = *a4 | 1;
        }

        break;
      case 3:
        v35 = *(v6 + 48);
        if (*(v35 + 8))
        {
          v36 = CCLogStream::shouldLog();
          v35 = *(v6 + 48);
          if (v36)
          {
            CCLogStream::logNoticeIf(*(v35 + 8), 0x40080uLL, "[dk] %s@%d: @%llu - 3.6 GHz WiFi Calibration in tuple 0x%02X:", "parseApplePrivateCIS", 752, v7, 3);
            v35 = *(v6 + 48);
          }
        }

        v37 = *(v35 + 8);
        result = IO80211HexdumpIf();
        goto LABEL_126;
      case 5:
        if (v10 != 18 && v10 != 36)
        {
          result = *(*(v6 + 48) + 8);
          if (result)
          {
            result = CCLogStream::shouldLog();
            if (result)
            {
              result = CCLogStream::logCrit(*(*(v6 + 48) + 8), "[dk] %s@%d: @%llu - Invalid 5.8 GHz WiFi Cal tuple 0x%02X (size %u, expected %lu or %lu)\n", "parseApplePrivateCIS");
            }
          }

          goto LABEL_126;
        }

        v24 = *(v6 + 48);
        if (*(v24 + 8))
        {
          v25 = CCLogStream::shouldLog();
          v24 = *(v6 + 48);
          if (v25)
          {
            CCLogStream::logNoticeIf(*(v24 + 8), 0x40080uLL, "[dk] %s@%d: @%llu - 5.8 GHz WiFi Calibration in tuple 0x%02X:", "parseApplePrivateCIS", 765, v7, 5);
            v24 = *(v6 + 48);
          }
        }

        v26 = *(v24 + 8);
        IO80211HexdumpIf();
        if (v10 == 36)
        {
          result = isValid5GHzMIMOCalibration(v13, 0x24uLL);
          if (!result)
          {
LABEL_115:
            result = *(*(v6 + 48) + 8);
            if (result)
            {
              result = CCLogStream::shouldLog();
              if (result)
              {
                result = CCLogStream::logWarn(*(*(v6 + 48) + 8), "[dk] %s@%d: @%llu - Invalid 5.8 GHz Cal data in tuple 0x%02X\n");
              }
            }

            goto LABEL_126;
          }

          v27 = a4;
          *(a4 + 82) = *v13;
          *(a4 + 84) = *(v13 + 2);
          *(a4 + 86) = *(v13 + 4);
          *(a4 + 88) = *(v13 + 6);
          *(a4 + 90) = *(v13 + 8);
          *(a4 + 92) = *(v13 + 10);
          *(a4 + 94) = *(v13 + 12);
          *(a4 + 96) = *(v13 + 14);
          *(a4 + 98) = *(v13 + 16);
          *(a4 + 100) = *(v13 + 18);
          *(a4 + 102) = *(v13 + 20);
          *(a4 + 104) = *(v13 + 22);
          *(a4 + 106) = *(v13 + 24);
          *(a4 + 108) = *(v13 + 26);
          *(a4 + 110) = *(v13 + 28);
          *(a4 + 112) = *(v13 + 30);
          *(a4 + 114) = *(v13 + 32);
          *(a4 + 116) = *(v13 + 34);
          v28 = *a4 | 0x10;
        }

        else
        {
          result = isValid5GHzCalibration(v13, 0x12uLL);
          if (!result)
          {
            goto LABEL_115;
          }

          v27 = a4;
          *(a4 + 28) = *v13;
          *(a4 + 30) = *(v13 + 2);
          *(a4 + 32) = *(v13 + 4);
          *(a4 + 34) = *(v13 + 6);
          *(a4 + 36) = *(v13 + 8);
          *(a4 + 38) = *(v13 + 10);
          *(a4 + 40) = *(v13 + 12);
          *(a4 + 42) = *(v13 + 14);
          *(a4 + 44) = *(v13 + 16);
          v28 = *a4 | 2;
        }

        break;
      default:
        goto LABEL_57;
    }

    *v27 = v28;
LABEL_126:
    v7 = v8++;
    if (v8 > a3)
    {
      return result;
    }
  }

  result = *(*(v6 + 48) + 8);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logNoticeIf(*(*(v6 + 48) + 8), 0x40000uLL, "[dk] %s@%d: @%llu - End of Apple Private CIS 0x%02X.\n", "parseApplePrivateCIS", 576, v7, 126);
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::gatherBaudRate(uint64_t a1, _DWORD *a2)
{
  v5 = 0;
  v3 = a1 + 48;
  if (acquireProperty<OSNumber>(*(*(a1 + 48) + 16), "serial baud rate", &v5, 1uLL, "IOService"))
  {
    if (v5 && OSNumber::numberOfBits(v5) + 7 >= 8)
    {
      if (OSNumber::unsigned32BitValue(v5) >> 7 < 0x4B || OSNumber::unsigned32BitValue(v5) > 0x6ACFBF)
      {
        if (*(*v3 + 8) && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gatherBaudRate(v3);
        }
      }

      else
      {
        a2[74] = OSNumber::unsigned32BitValue(v5);
        *a2 |= 0x20000u;
      }
    }

    else if (*(*v3 + 8) && CCLogStream::shouldLog())
    {
      AppleBCMWLANProvisioningManager::gatherBaudRate(v3);
    }

    result = v5;
    if (v5)
    {
      return (v5->release)(v5);
    }
  }

  else
  {
    result = *(*v3 + 8);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProvisioningManager::gatherBaudRate(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::gatherMacAddress(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v3 = a1 + 48;
  if (checkAcquireDataPropertyNotEmpty(*(*(a1 + 48) + 16), "local-mac-address", &v8, 0, 1uLL, "IOService"))
  {
    if (OSData::getLength(v8) == 6)
    {
      BytesNoCopy = OSData::getBytesNoCopy(v8);
      if (*(*v3 + 8) && CCLogStream::shouldLog())
      {
        AppleBCMWLANProvisioningManager::gatherMacAddress(v3, BytesNoCopy);
      }

      if (*BytesNoCopy | *(BytesNoCopy + 2))
      {
        v5 = (*BytesNoCopy & 1) == 0;
      }

      else
      {
        v5 = 0;
      }

      if (v5)
      {
        v7 = *BytesNoCopy;
        *(a2 + 8) = *(BytesNoCopy + 2);
        *a2 |= 0x800u;
        *(a2 + 4) = v7;
      }

      else if (*(*v3 + 8) && CCLogStream::shouldLog())
      {
        AppleBCMWLANProvisioningManager::gatherMacAddress(v3);
      }
    }

    else if (*(*v3 + 8) && CCLogStream::shouldLog())
    {
      AppleBCMWLANProvisioningManager::gatherMacAddress(v3);
    }

    result = v8;
    if (v8)
    {
      return (v8->release)(v8);
    }
  }

  else
  {
    result = *(*v3 + 8);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProvisioningManager::gatherMacAddress(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::gather24GHzTxCal(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v3 = a1 + 48;
  if (checkAcquireDataPropertyNotEmpty(*(*(a1 + 48) + 16), "tx-calibration-2.4", &v18, 0, 1uLL, "IOService"))
  {
    if (OSData::getLength(v18) == 6)
    {
      BytesNoCopy = OSData::getBytesNoCopy(v18, 0, 6uLL);
      v5 = isValid24GHzCalibration(BytesNoCopy, 6uLL);
      v6 = *v3;
      v7 = *(*v3 + 8);
      if (!v5)
      {
        if (v7 && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather24GHzTxCal(v3);
        }

        goto LABEL_27;
      }

      if (v7)
      {
        shouldLog = CCLogStream::shouldLog();
        v6 = *v3;
        if (shouldLog)
        {
          CCLogStream::logNoticeIf(*(v6 + 8), 0x80uLL, "[dk] %s@%d: Found 2.4GHz calibration data in device tree: \n", "gather24GHzTxCal", 888);
          v6 = *v3;
        }
      }

      v9 = *(v6 + 8);
      IO80211HexdumpIf();
      *(a2 + 22) = *BytesNoCopy;
      *(a2 + 24) = *(BytesNoCopy + 1);
      *(a2 + 26) = *(BytesNoCopy + 2);
      v10 = *a2 | 1;
    }

    else
    {
      if (OSData::getLength(v18) != 12)
      {
        if (*(*v3 + 8) && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather24GHzTxCal(v3, &v18);
        }

        goto LABEL_27;
      }

      v12 = OSData::getBytesNoCopy(v18, 0, 0xCuLL);
      v13 = isValid24GHzMIMOCalibration(v12, 0xCuLL);
      v14 = *v3;
      v15 = *(*v3 + 8);
      if (!v13)
      {
        if (v15 && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather24GHzTxCal(v3);
        }

        goto LABEL_27;
      }

      if (v15)
      {
        v16 = CCLogStream::shouldLog();
        v14 = *v3;
        if (v16)
        {
          CCLogStream::logNoticeIf(*(v14 + 8), 0x80uLL, "[dk] %s@%d: Found 2.4GHz MIMO calibration data in device tree:", "gather24GHzTxCal", 901);
          v14 = *v3;
        }
      }

      v17 = *(v14 + 8);
      IO80211HexdumpIf();
      *(a2 + 70) = *v12;
      *(a2 + 72) = *(v12 + 1);
      *(a2 + 74) = *(v12 + 2);
      *(a2 + 76) = *(v12 + 3);
      *(a2 + 78) = *(v12 + 4);
      *(a2 + 80) = *(v12 + 5);
      v10 = *a2 | 8;
    }

    *a2 = v10;
LABEL_27:
    result = v18;
    if (v18)
    {
      return (v18->release)(v18);
    }

    return result;
  }

  result = *(*v3 + 8);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANProvisioningManager::gather24GHzTxCal(v3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::gather50GHzTxCal(uint64_t a1, uint64_t a2)
{
  v30 = 0;
  v3 = a1 + 48;
  if (checkAcquireDataPropertyNotEmpty(*(*(a1 + 48) + 16), "tx-calibration-5.0", &v30, 0, 1uLL, "IOService"))
  {
    if (OSData::getLength(v30) == 18)
    {
      BytesNoCopy = OSData::getBytesNoCopy(v30, 0, 0x12uLL);
      v5 = isValid5GHzCalibration(BytesNoCopy, 0x12uLL);
      v6 = *v3;
      v7 = *(*v3 + 8);
      if (!v5)
      {
        if (v7 && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather50GHzTxCal(v3);
        }

        goto LABEL_36;
      }

      if (v7)
      {
        shouldLog = CCLogStream::shouldLog();
        v6 = *v3;
        if (shouldLog)
        {
          CCLogStream::logNoticeIf(*(v6 + 8), 0x80uLL, "[dk] %s@%d: Found 5GHz calibration data in device tree: \n", "gather50GHzTxCal", 938);
          v6 = *v3;
        }
      }

      v9 = *(v6 + 8);
      IO80211HexdumpIf();
      *(a2 + 28) = *BytesNoCopy;
      *(a2 + 30) = *(BytesNoCopy + 1);
      *(a2 + 32) = *(BytesNoCopy + 2);
      *(a2 + 34) = *(BytesNoCopy + 3);
      *(a2 + 36) = *(BytesNoCopy + 4);
      *(a2 + 38) = *(BytesNoCopy + 5);
      *(a2 + 40) = *(BytesNoCopy + 6);
      *(a2 + 42) = *(BytesNoCopy + 7);
      *(a2 + 44) = *(BytesNoCopy + 8);
      v10 = *a2 | 2;
    }

    else if (OSData::getLength(v30) == 36)
    {
      v12 = OSData::getBytesNoCopy(v30, 0, 0x24uLL);
      v13 = isValid5GHzMIMOCalibration(v12, 0x24uLL);
      v14 = *v3;
      v15 = *(*v3 + 8);
      if (!v13)
      {
        if (v15 && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather50GHzTxCal(v3);
        }

        goto LABEL_36;
      }

      if (v15)
      {
        v16 = CCLogStream::shouldLog();
        v14 = *v3;
        if (v16)
        {
          CCLogStream::logNoticeIf(*(v14 + 8), 0x80uLL, "[dk] %s@%d: Found 5GHz MIMO calibration data in device tree:", "gather50GHzTxCal", 957);
          v14 = *v3;
        }
      }

      v17 = *(v14 + 8);
      IO80211HexdumpIf();
      *(a2 + 82) = *v12;
      *(a2 + 84) = *(v12 + 1);
      *(a2 + 86) = *(v12 + 2);
      *(a2 + 88) = *(v12 + 3);
      *(a2 + 90) = *(v12 + 4);
      *(a2 + 92) = *(v12 + 5);
      *(a2 + 94) = *(v12 + 6);
      *(a2 + 96) = *(v12 + 7);
      *(a2 + 98) = *(v12 + 8);
      *(a2 + 100) = *(v12 + 9);
      *(a2 + 102) = *(v12 + 10);
      *(a2 + 104) = *(v12 + 11);
      *(a2 + 106) = *(v12 + 12);
      *(a2 + 108) = *(v12 + 13);
      *(a2 + 110) = *(v12 + 14);
      *(a2 + 112) = *(v12 + 15);
      *(a2 + 114) = *(v12 + 16);
      *(a2 + 116) = *(v12 + 17);
      v10 = *a2 | 0x10;
    }

    else if (OSData::getLength(v30) == 48)
    {
      v18 = OSData::getBytesNoCopy(v30, 0, 0x30uLL);
      v19 = isValid5GHzMIMOWithXBandCalibration(v18, 0x30uLL);
      v20 = *v3;
      v21 = *(*v3 + 8);
      if (!v19)
      {
        if (v21 && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather50GHzTxCal(v3);
        }

        goto LABEL_36;
      }

      if (v21)
      {
        v22 = CCLogStream::shouldLog();
        v20 = *v3;
        if (v22)
        {
          CCLogStream::logNoticeIf(*(v20 + 8), 0x80uLL, "[dk] %s@%d: Found 5GHz MIMO calibration with X Band data in device tree:", "gather50GHzTxCal", 988);
          v20 = *v3;
        }
      }

      v23 = *(v20 + 8);
      IO80211HexdumpIf();
      CalibrationChainTupleWithXBand::read((a2 + 118), v18);
      CalibrationChainTupleWithXBand::read((a2 + 142), v18 + 24);
      v10 = *a2 | 0x20;
    }

    else
    {
      if (OSData::getLength(v30) != 24)
      {
        if (*(*v3 + 8) && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather50GHzTxCal(v3, &v30);
        }

        goto LABEL_36;
      }

      v24 = OSData::getBytesNoCopy(v30, 0, 0x18uLL);
      v25 = isValid5GHzWithXBandCalibration(v24, 0x18uLL);
      v26 = *v3;
      v27 = *(*v3 + 8);
      if (!v25)
      {
        if (v27 && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather50GHzTxCal(v3);
        }

        goto LABEL_36;
      }

      if (v27)
      {
        v28 = CCLogStream::shouldLog();
        v26 = *v3;
        if (v28)
        {
          CCLogStream::logNoticeIf(*(v26 + 8), 0x80uLL, "[dk] %s@%d: Found 5GHz calibration with X Band data in device tree:", "gather50GHzTxCal", 998);
          v26 = *v3;
        }
      }

      v29 = *(v26 + 8);
      IO80211HexdumpIf();
      CalibrationChainTupleWithXBand::read((a2 + 46), v24);
      v10 = *a2 | 4;
    }

    *a2 = v10;
LABEL_36:
    result = v30;
    if (v30)
    {
      return (v30->release)(v30);
    }

    return result;
  }

  result = *(*v3 + 8);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANProvisioningManager::gather50GHzTxCal(v3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::gather24GHzRxCal(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v3 = a1 + 48;
  if (checkAcquireDataPropertyNotEmpty(*(*(a1 + 48) + 16), "rx-calibration-2.4", &v22, 0, 1uLL, "IOService"))
  {
    if (OSData::getLength(v22) == 27)
    {
      BytesNoCopy = OSData::getBytesNoCopy(v22, 0, 0x1BuLL);
      v5 = isValid24GHzRxCalibration(BytesNoCopy, 0x1BuLL);
      v6 = *v3;
      v7 = *(*v3 + 8);
      if (!v5)
      {
        if (v7 && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather24GHzRxCal(v3);
        }

        goto LABEL_34;
      }

      if (v7)
      {
        shouldLog = CCLogStream::shouldLog();
        v6 = *v3;
        if (shouldLog)
        {
          CCLogStream::logNoticeIf(*(v6 + 8), 0x80uLL, "[dk] %s@%d: Found RSSI Rx 2.4GHz calibration data in device tree: \n", "gather24GHzRxCal", 1024);
          v6 = *v3;
        }
      }

      v9 = *(v6 + 8);
      IO80211HexdumpIf();
      *(a2 + 166) = *BytesNoCopy;
      *(a2 + 167) = BytesNoCopy[1];
      *(a2 + 168) = BytesNoCopy[2];
      *(a2 + 169) = BytesNoCopy[3];
      *(a2 + 170) = BytesNoCopy[4];
      *(a2 + 171) = BytesNoCopy[5];
      *(a2 + 172) = BytesNoCopy[6];
      *(a2 + 173) = BytesNoCopy[7];
      *(a2 + 174) = BytesNoCopy[8];
      *(a2 + 175) = BytesNoCopy[9];
      *(a2 + 176) = BytesNoCopy[10];
      *(a2 + 177) = BytesNoCopy[11];
      *(a2 + 178) = BytesNoCopy[12];
      *(a2 + 179) = BytesNoCopy[13];
      *(a2 + 180) = BytesNoCopy[14];
      *(a2 + 181) = BytesNoCopy[15];
      *(a2 + 182) = BytesNoCopy[16];
      *(a2 + 183) = BytesNoCopy[17];
      *(a2 + 184) = BytesNoCopy[18];
      *(a2 + 185) = BytesNoCopy[19];
      *(a2 + 186) = BytesNoCopy[20];
      *(a2 + 187) = BytesNoCopy[21];
      *(a2 + 188) = BytesNoCopy[22];
      *(a2 + 189) = BytesNoCopy[23];
      *(a2 + 190) = BytesNoCopy[24];
      *(a2 + 191) = BytesNoCopy[25];
      *(a2 + 192) = BytesNoCopy[26];
      v10 = *a2 | 0x40;
    }

    else if (OSData::getLength(v22) == 54)
    {
      v12 = OSData::getBytesNoCopy(v22, 0, 0x36uLL);
      v13 = isValid24GHzRxMIMOCalibration(v12, 0x36uLL);
      v14 = *v3;
      v15 = *(*v3 + 8);
      if (!v13)
      {
        if (v15 && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather24GHzRxCal(v3);
        }

        goto LABEL_34;
      }

      if (v15)
      {
        v16 = CCLogStream::shouldLog();
        v14 = *v3;
        if (v16)
        {
          CCLogStream::logNoticeIf(*(v14 + 8), 0x80uLL, "[dk] %s@%d: Found RSSI Rx 2.4GHz MIMO calibration data in device tree: \n", "gather24GHzRxCal", 1069);
          v14 = *v3;
        }
      }

      v17 = *(v14 + 8);
      IO80211HexdumpIf();
      *(a2 + 209) = *v12;
      *(a2 + 210) = v12[1];
      *(a2 + 211) = v12[2];
      *(a2 + 212) = v12[3];
      *(a2 + 213) = v12[4];
      *(a2 + 214) = v12[5];
      *(a2 + 215) = v12[6];
      *(a2 + 216) = v12[7];
      *(a2 + 217) = v12[8];
      *(a2 + 236) = v12[9];
      *(a2 + 237) = v12[10];
      *(a2 + 238) = v12[11];
      *(a2 + 239) = v12[12];
      *(a2 + 240) = v12[13];
      *(a2 + 241) = v12[14];
      *(a2 + 242) = v12[15];
      *(a2 + 243) = v12[16];
      *(a2 + 244) = v12[17];
      *(a2 + 218) = v12[18];
      *(a2 + 219) = v12[19];
      *(a2 + 220) = v12[20];
      *(a2 + 221) = v12[21];
      *(a2 + 222) = v12[22];
      *(a2 + 223) = v12[23];
      *(a2 + 224) = v12[24];
      *(a2 + 225) = v12[25];
      *(a2 + 226) = v12[26];
      *(a2 + 245) = v12[27];
      *(a2 + 246) = v12[28];
      *(a2 + 247) = v12[29];
      *(a2 + 248) = v12[30];
      *(a2 + 249) = v12[31];
      *(a2 + 250) = v12[32];
      *(a2 + 251) = v12[33];
      *(a2 + 252) = v12[34];
      *(a2 + 253) = v12[35];
      *(a2 + 227) = v12[36];
      *(a2 + 228) = v12[37];
      *(a2 + 229) = v12[38];
      *(a2 + 230) = v12[39];
      *(a2 + 231) = v12[40];
      *(a2 + 232) = v12[41];
      *(a2 + 233) = v12[42];
      *(a2 + 234) = v12[43];
      *(a2 + 235) = v12[44];
      *(a2 + 254) = v12[45];
      *(a2 + 255) = v12[46];
      *(a2 + 256) = v12[47];
      *(a2 + 257) = v12[48];
      *(a2 + 258) = v12[49];
      *(a2 + 259) = v12[50];
      *(a2 + 260) = v12[51];
      *(a2 + 261) = v12[52];
      *(a2 + 262) = v12[53];
      v10 = *a2 | 0x100;
    }

    else if (OSData::getLength(v22) == 80)
    {
      v18 = OSData::getBytesNoCopy(v22, 0, 0x50uLL);
      if (!isValid24GHzRx4350Calibration(v18, 0x50uLL))
      {
        if (*(*v3 + 8) && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather24GHzRxCal(v3);
        }

        goto LABEL_34;
      }

      IO80211HexdumpIf();
      for (i = 0; i != 80; ++i)
      {
        *(a2 + i + 308) = v18[i];
      }

      v10 = *a2 | 0x1000;
    }

    else
    {
      if (OSData::getLength(v22) != 40)
      {
        if (*(*v3 + 8) && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather24GHzRxCal(v3, &v22);
        }

        goto LABEL_34;
      }

      v20 = OSData::getBytesNoCopy(v22, 0, 0x28uLL);
      if (!isValid5GHzMIMOWithXBandCalibration(v20, 0x28uLL))
      {
        if (*(*v3 + 8) && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather24GHzRxCal(v3);
        }

        goto LABEL_34;
      }

      IO80211HexdumpIf();
      for (j = 0; j != 40; ++j)
      {
        *(a2 + j + 484) = v20[j];
      }

      v10 = *a2 | 0x4000;
    }

    *a2 = v10;
LABEL_34:
    result = v22;
    if (v22)
    {
      return (v22->release)(v22);
    }

    return result;
  }

  result = *(*v3 + 8);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANProvisioningManager::gather24GHzRxCal(v3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::gather50GHzRxCal(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v3 = a1 + 48;
  if (checkAcquireDataPropertyNotEmpty(*(*(a1 + 48) + 16), "rx-calibration-5.0", &v22, 0, 0, "IOService"))
  {
    if (OSData::getLength(v22) == 16)
    {
      BytesNoCopy = OSData::getBytesNoCopy(v22, 0, 0x10uLL);
      v5 = isValid5GHzRxCalibration(BytesNoCopy, 0x10uLL);
      v6 = *v3;
      v7 = *(*v3 + 8);
      if (!v5)
      {
        if (v7 && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather50GHzRxCal(v3);
        }

        goto LABEL_34;
      }

      if (v7)
      {
        shouldLog = CCLogStream::shouldLog();
        v6 = *v3;
        if (shouldLog)
        {
          CCLogStream::logNoticeIf(*(v6 + 8), 0x80uLL, "[dk] %s@%d: Found RSSI Rx 5GHz calibration data in device tree: \n", "gather50GHzRxCal", 1185);
          v6 = *v3;
        }
      }

      v9 = *(v6 + 8);
      IO80211HexdumpIf();
      *(a2 + 193) = *BytesNoCopy;
      *(a2 + 194) = BytesNoCopy[1];
      *(a2 + 195) = BytesNoCopy[2];
      *(a2 + 196) = BytesNoCopy[3];
      *(a2 + 197) = BytesNoCopy[4];
      *(a2 + 198) = BytesNoCopy[5];
      *(a2 + 199) = BytesNoCopy[6];
      *(a2 + 200) = BytesNoCopy[7];
      *(a2 + 201) = BytesNoCopy[8];
      *(a2 + 202) = BytesNoCopy[9];
      *(a2 + 203) = BytesNoCopy[10];
      *(a2 + 204) = BytesNoCopy[11];
      *(a2 + 205) = BytesNoCopy[12];
      *(a2 + 206) = BytesNoCopy[13];
      *(a2 + 207) = BytesNoCopy[14];
      *(a2 + 208) = BytesNoCopy[15];
      v10 = *a2 | 0x80;
    }

    else if (OSData::getLength(v22) == 32)
    {
      v12 = OSData::getBytesNoCopy(v22, 0, 0x20uLL);
      v13 = isValid5GHzRxMIMOCalibration(v12, 0x20uLL);
      v14 = *v3;
      v15 = *(*v3 + 8);
      if (!v13)
      {
        if (v15 && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather50GHzRxCal(v3);
        }

        goto LABEL_34;
      }

      if (v15)
      {
        v16 = CCLogStream::shouldLog();
        v14 = *v3;
        if (v16)
        {
          CCLogStream::logNoticeIf(*(v14 + 8), 0x80uLL, "[dk] %s@%d: Found RSSI Rx 5GHz MIMO calibration data in device tree: \n", "gather50GHzRxCal", 1216);
          v14 = *v3;
        }
      }

      v17 = *(v14 + 8);
      IO80211HexdumpIf();
      *(a2 + 263) = *v12;
      *(a2 + 264) = v12[1];
      *(a2 + 265) = v12[2];
      *(a2 + 266) = v12[3];
      *(a2 + 279) = v12[4];
      *(a2 + 280) = v12[5];
      *(a2 + 281) = v12[6];
      *(a2 + 282) = v12[7];
      *(a2 + 267) = v12[8];
      *(a2 + 268) = v12[9];
      *(a2 + 269) = v12[10];
      *(a2 + 270) = v12[11];
      *(a2 + 283) = v12[12];
      *(a2 + 284) = v12[13];
      *(a2 + 285) = v12[14];
      *(a2 + 286) = v12[15];
      *(a2 + 271) = v12[16];
      *(a2 + 272) = v12[17];
      *(a2 + 273) = v12[18];
      *(a2 + 274) = v12[19];
      *(a2 + 287) = v12[20];
      *(a2 + 288) = v12[21];
      *(a2 + 289) = v12[22];
      *(a2 + 290) = v12[23];
      *(a2 + 275) = v12[24];
      *(a2 + 276) = v12[25];
      *(a2 + 277) = v12[26];
      *(a2 + 278) = v12[27];
      *(a2 + 291) = v12[28];
      *(a2 + 292) = v12[29];
      *(a2 + 293) = v12[30];
      *(a2 + 294) = v12[31];
      v10 = *a2 | 0x200;
    }

    else if (OSData::getLength(v22) == 96)
    {
      v18 = OSData::getBytesNoCopy(v22, 0, 0x60uLL);
      if (!isValid5GHzRx4350Calibration(v18, 0x60uLL))
      {
        if (*(*v3 + 8) && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather50GHzRxCal(v3);
        }

        goto LABEL_34;
      }

      IO80211HexdumpIf();
      for (i = 0; i != 96; ++i)
      {
        *(a2 + i + 388) = v18[i];
      }

      v10 = *a2 | 0x2000;
    }

    else
    {
      if (OSData::getLength(v22) != 48)
      {
        if (*(*v3 + 8) && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather50GHzRxCal(v3, &v22);
        }

        goto LABEL_34;
      }

      v20 = OSData::getBytesNoCopy(v22, 0, 0x30uLL);
      if (!isValid5GHzMIMOWithXBandCalibration(v20, 0x30uLL))
      {
        if (*(*v3 + 8) && CCLogStream::shouldLog())
        {
          AppleBCMWLANProvisioningManager::gather50GHzRxCal(v3);
        }

        goto LABEL_34;
      }

      IO80211HexdumpIf();
      for (j = 0; j != 48; ++j)
      {
        *(a2 + j + 524) = v20[j];
      }

      v10 = *a2 | 0x8000;
    }

    *a2 = v10;
LABEL_34:
    result = v22;
    if (v22)
    {
      return (v22->release)(v22);
    }

    return result;
  }

  result = *(*v3 + 8);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANProvisioningManager::gather50GHzRxCal(v3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::gatherRxTempCal(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v3 = a1 + 48;
  if (checkAcquireDataPropertyNotEmpty(*(*(a1 + 48) + 16), "rx-calibration-temp", &v11, 1uLL, 1uLL, "IOService"))
  {
    if (OSData::getLength(v11) == 1)
    {
      BytesNoCopy = OSData::getBytesNoCopy(v11, 0, 1uLL);
      valid = isValidRxTempCalibration(BytesNoCopy, 1);
      v6 = *v3;
      v7 = *(*v3 + 8);
      if (valid)
      {
        if (v7)
        {
          shouldLog = CCLogStream::shouldLog();
          v6 = *v3;
          if (shouldLog)
          {
            CCLogStream::logNoticeIf(*(v6 + 8), 0x80uLL, "[dk] %s@%d: Found rx calibration temperature in device tree: \n", "gatherRxTempCal", 1317);
            v6 = *v3;
          }
        }

        v9 = *(v6 + 8);
        IO80211HexdumpIf();
        *(a2 + 295) = *BytesNoCopy;
        *a2 |= 0x400u;
      }

      else if (v7 && CCLogStream::shouldLog())
      {
        AppleBCMWLANProvisioningManager::gatherRxTempCal(v3);
      }
    }

    else if (*(*v3 + 8) && CCLogStream::shouldLog())
    {
      AppleBCMWLANProvisioningManager::gatherRxTempCal(v3, &v11);
    }

    result = v11;
    if (v11)
    {
      return (v11->release)(v11);
    }
  }

  else
  {
    result = *(*v3 + 8);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProvisioningManager::gatherRxTempCal(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::gatherRxFreqGroup2G(uint64_t a1, _DWORD *a2)
{
  v7 = 0;
  v3 = a1 + 48;
  if (checkAcquireDataPropertyNotEmpty(*(*(a1 + 48) + 16), "freq-group-2g-calibration", &v7, 8uLL, 1uLL, "IOService"))
  {
    if (OSData::getLength(v7) == 8)
    {
      BytesNoCopy = OSData::getBytesNoCopy(v7, 0, 8uLL);
      if (isValidFreqGroup2GHzCalibration(BytesNoCopy, 8uLL))
      {
        IO80211HexdumpIf();
        for (i = 0; i != 8; ++i)
        {
          *(a2 + i + 300) = BytesNoCopy[i];
        }

        *a2 |= 0x10000u;
      }

      else if (*(*v3 + 8) && CCLogStream::shouldLog())
      {
        AppleBCMWLANProvisioningManager::gatherRxFreqGroup2G(v3);
      }
    }

    else if (*(*v3 + 8) && CCLogStream::shouldLog())
    {
      AppleBCMWLANProvisioningManager::gatherRxFreqGroup2G(v3, &v7);
    }

    result = v7;
    if (v7)
    {
      return (v7->release)(v7);
    }
  }

  else
  {
    result = *(*v3 + 8);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProvisioningManager::gatherRxFreqGroup2G(v3);
      }
    }
  }

  return result;
}

uint64_t generateMacAddr(uint64_t a1)
{
  memset(v3, 170, 20);
  SHA1Init();
  SHA1Update();
  result = SHA1Final();
  *a1 = v3[0];
  *(a1 + 4) = WORD2(v3[0]);
  *a1 = -11846;
  return result;
}

uint64_t AppleBCMWLANProvisioningManager::addSInt16ValToImage(uint64_t a1, const char *a2, unsigned __int16 a3, uint64_t a4)
{
  v4 = 3758097086;
  if (!a2)
  {
    return 3758097090;
  }

  v8 = *a4 - *(a4 + 16) - 2;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v9;
  v21 = v9;
  *__str = v9;
  v19 = v9;
  v10 = snprintf(__str, 0x40uLL, "%s=0x%04x", a2, a3);
  if (v10 < 0x40)
  {
    v11 = *(*(a1 + 48) + 8);
    if (v8 >= v10)
    {
      if (v11 && CCLogStream::shouldLog())
      {
        CCLogStream::logNoticeIf(*(*(a1 + 48) + 8), 0x80uLL, "[dk] %s@%d:Setting nvram parameter %s\n", "addSInt16ValToImage", 1455, __str);
      }

      v12 = *(a4 + 24);
      v13 = AppleBCMWLANUtil::findpattern(v12, a2, *(a4 + 32));
      if (v13)
      {
        v14 = v13;
        v15 = strlen(v13);
        v16 = v15 + 1;
        memmove(v14, v14 + v15 + 1, v12 - v14 + *(a4 + 32) + ~v15);
        *(a4 + 32) -= v16;
      }

      v4 = 0;
      *(a4 + 16) += strlcpy((*(a4 + 8) + *(a4 + 16)), __str, v8) + 1;
    }

    else if (v11 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(a1 + 48) + 8), "[dk] %s@%d:%s numPrinted %d, varsSpaceRemaining %ld\n", "addSInt16ValToImage", 1451, __str, v10, v8);
    }
  }

  else if (*(*(a1 + 48) + 8) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*(*(a1 + 48) + 8), "[dk] %s@%d:%s numPrinted %d, varsSpaceRemaining %ld\n", "addSInt16ValToImage", 1444, __str, v10, v8);
  }

  return v4;
}

uint64_t AppleBCMWLANProvisioningManager::addStringValToImage(AppleBCMWLANProvisioningManager *this, const char *a2, char *a3)
{
  v3 = 3758097086;
  if (!a2)
  {
    return 3758097090;
  }

  v7 = *(this + 6);
  v8 = *(v7 + 600);
  v9 = *(v7 + 616);
  v10 = IOMallocZeroData();
  if (v10)
  {
    v11 = v10;
    v12 = v8 - v9 - 2;
    v13 = snprintf(v10, 0xC8uLL, "%s=%s", a2, a3);
    v14 = *(this + 6);
    v15 = *(v14 + 8);
    if (v12 >= v13)
    {
      if (v15)
      {
        shouldLog = CCLogStream::shouldLog();
        v14 = *(this + 6);
        if (shouldLog)
        {
          CCLogStream::logNoticeIf(*(v14 + 8), 0x80uLL, "[dk] %s@%d:Setting nvram parameter %s\n", "addStringValToImage", 1517, v11);
          v14 = *(this + 6);
        }
      }

      v17 = *(v14 + 624);
      v18 = AppleBCMWLANUtil::findpattern(v17, a2, *(v14 + 632));
      if (v18)
      {
        v19 = v18;
        v20 = strlen(v18);
        v21 = *(this + 6);
        v22 = v17 - v19 + *(v21 + 632) + ~v20;
        if (v22 < 0)
        {
          if (*(v21 + 8) && CCLogStream::shouldLog())
          {
            CCLogStream::logEmergency(*(*(this + 6) + 8), "[dk] %s@%d:Unable to set nvram parameter %s\n", "addStringValToImage", 1531, v11);
          }

          goto LABEL_18;
        }

        v23 = v20 + 1;
        memmove(v19, v19 + v20 + 1, v22);
        v24 = *(this + 6);
        v25 = *(v24 + 632);
        v26 = v25 >= v23;
        v27 = v25 - v23;
        if (!v26)
        {
          v27 = 0;
        }

        *(v24 + 632) = v27;
      }

      v3 = 0;
      *(*(this + 6) + 616) += strlcpy((*(*(this + 6) + 608) + *(*(this + 6) + 616)), v11, v12) + 1;
    }

    else if (v15 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*(this + 6) + 8), "[dk] %s@%d:%s numPrinted %d, varsSpaceRemaining %ld\n", "addStringValToImage", 1513, v11, v13, v12);
    }

LABEL_18:
    IOFreeData();
    return v3;
  }

  return 3758097085;
}

uint64_t AppleBCMWLANProvisioningManager::populateMacAddress(uint64_t a1, const char *a2, void *a3)
{
  v12 = 0;
  v5 = a1 + 48;
  if (!acquireProperty<OSData>(*(*(a1 + 48) + 16), a2, &v12, 1uLL, "IOService"))
  {
    return 0;
  }

  if (!v12 || ((BytesNoCopy = OSData::getBytesNoCopy(v12), *BytesNoCopy | BytesNoCopy[2]) ? (v7 = (*BytesNoCopy & 1) == 0) : (v7 = 0), !v7))
  {
    v8 = OSData::withBytesNoCopy(a3, 6uLL);
    v9 = setPropertyHelper(*(*v5 + 16), a2, v8);
    v10 = *(*v5 + 8);
    if (v9)
    {
      if (v10 && CCLogStream::shouldLog())
      {
        AppleBCMWLANProvisioningManager::populateMacAddress(v5, a3);
        if (!v8)
        {
          goto LABEL_16;
        }

LABEL_15:
        (v8->release)(v8);
        goto LABEL_16;
      }

LABEL_14:
      if (!v8)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (!v10 || !CCLogStream::shouldLog())
    {
      goto LABEL_14;
    }

    CCLogStream::logAlert(*(*v5 + 8), "[dk] %s@%d: Failed to write %s property\n", "populateMacAddress", 1631, a2);
    if (v8)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  if (v12)
  {
    (v12->release)(v12);
  }

  return 0;
}

uint64_t acquireProperty<OSData>(IOService *a1, const char *a2, OSMetaClassBase **a3, unint64_t a4, const char *a5)
{
  anObject = 0;
  result = acquirePropertyWithString(a1, a2, &anObject, a4, a5);
  if (result)
  {
    v7 = OSMetaClassBase::safeMetaCast(anObject, gOSDataMetaClass);
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

uint64_t AppleBCMWLANProvisioningManager::addBaudRate(AppleBCMWLANProvisioningManager *this)
{
  v2 = 0;
  v15 = 0;
  if ((*(*(this + 6) + 26) & 2) == 0)
  {
    result = IOParseBootArgNumber("wlan.h5baud", &v15, 4);
    if (!result)
    {
      return result;
    }

    v2 = v15;
  }

  memset(__str, 170, 10);
  if (!v2)
  {
    v2 = *(*(this + 6) + 320);
    v15 = v2;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = kSerialBaudNVRAMTable;
  do
  {
    v8 = *v7;
    v7 += 4;
    v9 = v8 - v2;
    v10 = v2 - v8;
    if (v2 <= v8)
    {
      v10 = v9;
    }

    if (!v6)
    {
      v6 = v10;
    }

    v11 = v6 > v10;
    if (v6 >= v10)
    {
      v6 = v10;
    }

    if (v11)
    {
      v5 = v4;
    }

    ++v4;
  }

  while (v4 != 8);
  v12 = kSerialBaudNVRAMTable[4 * v5];
  v13 = &off_1003CE428;
  while (*(v13 - 2) != v12)
  {
    v13 += 2;
    if (!--v4)
    {
      v14 = 0;
      goto LABEL_21;
    }
  }

  v14 = *v13;
LABEL_21:
  snprintf(__str, 0xAuLL, "%s", v14);
  return AppleBCMWLANProvisioningManager::addStringValToImage(this, "bauddiv", __str);
}

uint64_t AppleBCMWLANProvisioningManager::prepareNVRAMString(AppleBCMWLANProvisioningManager *a1, void *a2, unsigned int a3, char *a4, unsigned int a5, const char *a6)
{
  bzero(a2, a3);
  if (a5)
  {
    v12 = 0;
    v13 = a5;
    while (1)
    {
      v14 = *a4++;
      v15 = snprintf(a2 + v12, a3 - v12, "%d,", v14);
      if ((v15 & 0x80000000) != 0 || v15 >= a3 - v12)
      {
        return 3758097086;
      }

      v12 += v15;
      if (!--v13)
      {
        v16 = v12 - 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
LABEL_8:
    *(a2 + v16) = 0;

    return AppleBCMWLANProvisioningManager::addStringValToImage(a1, a6, a2);
  }
}

uint64_t AppleBCMWLANProvisioningManager::logNVRAM(uint64_t a1, IO80211Buffer *this, unint64_t *a3)
{
  v4 = a3[5] + a3[3];
  BytesNoCopy = IO80211Buffer::getBytesNoCopy(this, a3[2], v4);
  v6 = IOMallocZeroData();
  v7 = v6;
  if (v6)
  {
    *v6 = 0;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else if (!v4)
  {
    goto LABEL_15;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = 0;
    if (!v7 || v9 > 0x3FFE || (v11 = 0x4000, v10 = snprintf(&v7[v9], 0x4000 - v9, "%s\n", (BytesNoCopy + v8)), !(v10 >> 14)))
    {
      v11 = v10;
    }

    if (v8 < v4)
    {
      while ((*(BytesNoCopy + v8) | 0x20) != 0x20)
      {
        if (v4 == ++v8)
        {
          v8 = v4;
          break;
        }
      }
    }

    v9 += v11;
    ++v8;
  }

  while (v8 < v4);
LABEL_15:
  if (v7)
  {
    if (*(*(a1 + 48) + 8) && CCLogStream::shouldLog())
    {
      v12 = *(*(a1 + 48) + 8);
      CCLogStream::log();
    }

    *v7 = 0;
    IOFreeData();
  }

  return 0;
}

uint64_t AppleBCMWLANProvisioningManager::checkNormalizedNVRAM(uint64_t a1, IO80211Buffer *this, uint64_t a3)
{
  BytesNoCopy = IO80211Buffer::getBytesNoCopy(this, *(a3 + 32), *(a3 + 40));
  v6 = *(a3 + 40);
  if (v6)
  {
    v7 = *BytesNoCopy;
    if (v7 > 0x20 || ((1 << v7) & 0x100000600) == 0)
    {
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v14 = BytesNoCopy[v13];
        if (v14 > 0x20 || ((1 << v14) & 0x100000600) == 0)
        {
          v12 = 0;
        }

        else
        {
          if (v12)
          {
            result = *(*(a1 + 48) + 8);
            if (result)
            {
              result = CCLogStream::shouldLog();
              if (result)
              {
                CCLogStream::logAlert(*(*(a1 + 48) + 8), "[dk] %s@%d:Repeated whitespace in vars @ %lu!\n");
                return 0;
              }
            }

            return result;
          }

          if (v14 == 10)
          {
            result = *(*(a1 + 48) + 8);
            if (result)
            {
              result = CCLogStream::shouldLog();
              if (result)
              {
                CCLogStream::logAlert(*(*(a1 + 48) + 8), "[dk] %s@%d:Found EOL in vars @ %lu!\n");
                return 0;
              }
            }

            return result;
          }

          v12 = 1;
        }

        if (v6 == ++v13)
        {
          goto LABEL_19;
        }
      }
    }

    v10 = *(a1 + 48);
    v9 = a1 + 48;
    result = *(v10 + 8);
    if (!result)
    {
      return result;
    }

    result = CCLogStream::shouldLog();
    if (!result)
    {
      return result;
    }

    AppleBCMWLANProvisioningManager::checkNormalizedNVRAM(v9);
    return 0;
  }

LABEL_19:
  v16 = &BytesNoCopy[v6];
  if (!BytesNoCopy[v6 - 1] && !*(v16 - 2))
  {
    return 1;
  }

  result = *(*(a1 + 48) + 8);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v17 = *(v16 - 1);
      v18 = *(v16 - 2);
      CCLogStream::logAlert(*(*(a1 + 48) + 8), "[dk] %s@%d:Ending byte %c %c isn't a separator... \n");
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANProvisioningManager::getNormalizedNVRam(AppleBCMWLANProvisioningManager *this, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  result = 0;
  if (a3 < 5 || !a2 || !a4 || a5 < 3)
  {
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a3 - 2;
  v27 = a5;
  v28 = a2;
  do
  {
    v15 = a4[v8];
    if (v15 < 0)
    {
      return 0;
    }

    v16 = a4[v8];
    if (v13 == 2)
    {
      if (v16 > 0xD || ((1 << v15) & 0x2401) == 0)
      {
LABEL_44:
        v13 = 2;
      }

      else
      {
LABEL_23:
        v13 = 0;
      }

      goto LABEL_45;
    }

    if (v13 == 1)
    {
      if (v15 <= 0xCu)
      {
        if (!v16)
        {
LABEL_29:
          v29 = v9;
          v30 = v10;
          v19 = 0;
          v31[0] = "macaddr";
          v31[1] = "nocrc";
          v20 = &a2[v10];
          v21 = v11 - v10;
          v31[2] = "il0macaddr";
          v31[3] = "nvramver";
          v22 = 1;
          v31[4] = "moduleid";
          do
          {
            v23 = strlen(v31[v19]);
            if (v23 <= v21)
            {
              if (!v23)
              {
                break;
              }

              v24 = 0;
              while (*(v31[v19] + v24) == v20[v24])
              {
                if (v23 == ++v24)
                {
                  v24 = (v23 - 1) + 1;
                  break;
                }
              }

              if (v23 == v24)
              {
                break;
              }
            }

            v22 = v19++ < 4;
          }

          while (v19 != 5);
          v13 = 0;
          if (v22)
          {
            v9 = 0;
            v10 = v30;
            v18 = v30;
            a5 = v27;
            a2 = v28;
          }

          else
          {
            v10 = v30;
            v25 = v11 - (v29 & 1);
            v18 = (v25 + 1);
            a5 = v27;
            a2 = v28;
            v28[v25] = 0;
            v9 = 0;
          }

          goto LABEL_46;
        }

        if (v16 != 9)
        {
          if (v16 != 10)
          {
            goto LABEL_41;
          }

          goto LABEL_29;
        }

        v9 = 0;
        v13 = 1;
LABEL_45:
        v18 = v11;
        goto LABEL_46;
      }

      if (v16 == 13)
      {
        goto LABEL_29;
      }

      if (v16 == 35)
      {
        v9 = 0;
        goto LABEL_44;
      }

      if (v16 != 32)
      {
LABEL_41:
        v9 = 0;
        v18 = (v11 + 1);
        a2[v7] = v16;
        v13 = 1;
        goto LABEL_46;
      }

      if (v9)
      {
        v13 = 1;
        v18 = v11;
      }

      else
      {
        v18 = (v11 + 1);
        a2[v7] = 32;
        v13 = 1;
      }

      v9 = 1;
    }

    else
    {
      if (v16 == 35)
      {
        goto LABEL_44;
      }

      if (v16 < 0x21)
      {
        goto LABEL_23;
      }

      a2[v7] = v15;
      v18 = (v11 + 1);
      v13 = 1;
      v10 = v11;
    }

LABEL_46:
    v8 = (v12 + 1);
    v7 = v18;
    if (v8 >= a5)
    {
      break;
    }

    v11 = v18;
    ++v12;
  }

  while (v14 > v18);
  result = 0;
  if (v8 >= 3 && v18 >= 3)
  {
    if (a2[(v18 - 1)])
    {
      a2[(v18 + 1)] = 0;
      v26 = 2;
      goto LABEL_57;
    }

    if (a2[(v18 - 2)])
    {
      v26 = 1;
LABEL_57:
      a2[v18] = 0;
      LODWORD(v18) = v18 + v26;
    }

    return v18;
  }

  return result;
}

_WORD *CalibrationChainTupleWithXBand::read(_WORD *this, const unsigned __int8 *a2)
{
  this[1] = *a2;
  this[2] = *(a2 + 1);
  *this = *(a2 + 2);
  this[4] = *(a2 + 3);
  this[5] = *(a2 + 4);
  this[3] = *(a2 + 5);
  this[7] = *(a2 + 6);
  this[8] = *(a2 + 7);
  this[6] = *(a2 + 8);
  this[10] = *(a2 + 9);
  this[11] = *(a2 + 10);
  this[9] = *(a2 + 11);
  return this;
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t a1, unsigned __int8 *a2)
{
  result = *(*a1 + 8);
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1, unsigned __int8 *a2)
{
  result = *(*a1 + 8);
  v3 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_15@<X0>(const char *a1@<X2>, uint64_t a2@<X8>)
{

  return snprintf((a2 + 640), 0x80uLL, a1);
}

size_t OUTLINED_FUNCTION_8_11(uint64_t a1, const OSData **a2)
{
  v3 = *(*a1 + 8);
  v4 = *a2;

  return OSData::getLength(v4);
}

uint64_t OUTLINED_FUNCTION_12_7@<X0>(const char *a1@<X2>, uint64_t a2@<X8>)
{

  return snprintf((a2 + 640), 0x80uLL, a1);
}

uint64_t OUTLINED_FUNCTION_13_7(CCLogStream *a1, uint64_t a2, const char *a3)
{

  return CCLogStream::logNoticeIf(a1, 0x40080uLL, a3);
}

uint64_t OUTLINED_FUNCTION_18_3@<X0>(const char *a1@<X2>, uint64_t a2@<X8>)
{

  return snprintf((a2 + 640), 0x80uLL, a1);
}

uint64_t OUTLINED_FUNCTION_19_5(OSObject *a1)
{
  v5 = *(*(v1 + 48) + 16);

  return setPropertyHelper(v5, v2, a1);
}

uint64_t *OUTLINED_FUNCTION_20_2(uint64_t ***a1)
{
  v1 = *a1;
  result = **a1;
  v3 = v1[1];
  v4 = *result;
  return result;
}

OSObject *AppleBCMWLANChipImage::withRange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  pObject = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipImageMetaClass, &pObject))
  {
    return 0;
  }

  v8 = pObject;
  if (pObject && ((pObject->OSMetaClassBase::__vftable[3].release)(pObject, a1, *a2, a2[1], a2[2], a2[3], a2[4], a2[5], a2[10], a2[11], a2[12], a2[13], a2[6], a2[7], a2[8], a2[9], a3, a4) & 1) == 0)
  {
    (v8->release)(v8);
    return 0;
  }

  return v8;
}

uint64_t AppleBCMWLANChipImage::initWithRange(uint64_t a1, uint64_t a2, CCLogStream *a3, CCLogStream *a4, CCLogStream *a5, CCLogStream *a6, CCLogStream *a7, CCLogStream *a8, CCLogStream *a9, CCLogStream *a10, CCLogStream *a11, CCLogStream *a12, CCLogStream *a13, CCLogStream *a14, CCLogStream *a15, CCLogStream *a16, uint64_t a17)
{
  result = OSObject::init(a1);
  if (result)
  {
    result = IOMallocZeroTyped();
    *(a1 + 48) = result;
    v26 = (a1 + 48);
    if (result)
    {
      *result = a17;
      v27 = **v26;
      if (!v27)
      {
        ClassNameHelper = getClassNameHelper(a1);
        IOLog("%s::%s(): Unable to get debug logger\n", ClassNameHelper, "initWithRange");
        return 0;
      }

      (*(*v27 + 8))(v27);
      if ((a16 + a15) > a2 || a5 < (a4 + a3) || a7 < (a6 + a5) || a13 < (a8 + a7) || a9 < (a14 + a13) && a10 || a15 < (a12 + a11) && a16 || a11 < (a10 + a9) && a12)
      {
        result = **v26;
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            CCLogStream::logAlert(**v26, "[dk] %s@%d: the ranges are wrong, image size %lld, fw %lld:%lld, provision %lld:%lld, nvram %lld:%lld signature %lld:%lld reg %lld:%lld txcap %lld:%lld platcfg %lld:%lld\n", "initWithRange", 140, a2, a3, a4, a5, a6, a7, a8, a13, a14, a9, a10, a11, a12, a15, a16);
            return 0;
          }
        }
      }

      else
      {
        v29 = *v26;
        v29[3] = a3;
        v29[4] = a4;
        v30 = *v26;
        v30[5] = a5;
        v30[6] = a6;
        v31 = *v26;
        v31[7] = a7;
        v31[8] = a8;
        v32 = *v26;
        v32[9] = a13;
        v32[10] = a14;
        v33 = *v26;
        v33[11] = a15;
        v33[12] = a16;
        v34 = *v26;
        v34[13] = a9;
        v34[14] = a10;
        v35 = *v26;
        v35[15] = a11;
        v35[16] = a12;
        v36 = *v26;
        (*v26)[1] = IO80211Buffer::allocBufferSingle();
        MemoryDescriptor = IO80211Buffer::getMemoryDescriptor((*v26)[1]);
        Mapping = IOMemoryDescriptor::CreateMapping(MemoryDescriptor, 0, 0, 0, a2, 0, *v26 + 24, 0);
        v39 = *v26;
        if (Mapping)
        {
          result = *v39;
          if (*v39)
          {
            result = CCLogStream::shouldLog();
            if (result)
            {
              AppleBCMWLANChipImage::initWithRange(v26);
              return 0;
            }
          }
        }

        else
        {
          if (v39[1])
          {
            *(v39 + 34) = 0;
            return 1;
          }

          result = *v39;
          if (*v39)
          {
            result = CCLogStream::shouldLog();
            if (result)
            {
              AppleBCMWLANChipImage::initWithRange(v26);
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void AppleBCMWLANChipImage::free(OSObject *this)
{
  v2 = *&this[1].refcount;
  if (v2)
  {
    v3 = v2[21];
    if (v3)
    {
      (*(*v3 + 16))(v2[21]);
      *(*&this[1].refcount + 168) = 0;
      v2 = *&this[1].refcount;
    }

    v4 = v2[20];
    if (v4)
    {
      (*(*v4 + 16))(v2[20]);
      *(*&this[1].refcount + 160) = 0;
      v2 = *&this[1].refcount;
    }

    v5 = v2[23];
    if (v5)
    {
      (*(*v5 + 16))(v2[23]);
      *(*&this[1].refcount + 184) = 0;
      v2 = *&this[1].refcount;
    }

    v6 = v2[19];
    if (v6)
    {
      (*(*v6 + 16))(v2[19]);
      *(*&this[1].refcount + 152) = 0;
      v2 = *&this[1].refcount;
    }

    v7 = v2[18];
    if (v7)
    {
      (*(*v7 + 16))(v2[18]);
      *(*&this[1].refcount + 144) = 0;
      v2 = *&this[1].refcount;
    }

    if (v2[1])
    {
      IO80211Buffer::returnBuffer(v2[1]);
      *(*&this[1].refcount + 8) = 0;
      v2 = *&this[1].refcount;
    }

    v8 = v2[2];
    if (v8)
    {
      (*(*v8 + 72))(v2[2]);
      v2 = *&this[1].refcount;
      v9 = v2[2];
      if (v9)
      {
        (*(*v9 + 16))(v2[2]);
        *(*&this[1].refcount + 16) = 0;
        v2 = *&this[1].refcount;
      }
    }

    if (*v2)
    {
      (*(**v2 + 16))(*v2);
      **&this[1].refcount = 0;
      v2 = *&this[1].refcount;
    }

    v10 = v2[24];
    if (v10)
    {
      (*(*v10 + 16))(v2[24]);
      *(*&this[1].refcount + 192) = 0;
      v2 = *&this[1].refcount;
    }

    memset_s(v2, 0x158uLL, 0, 0x158uLL);
    v11 = *&this[1].refcount;
    if (v11)
    {
      IOFree(v11, 0x158uLL);
      *&this[1].refcount = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANChipImage::prepareMapping(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 48);
  v3 = *(a1 + 48);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  MemoryDescriptor = IO80211Buffer::getMemoryDescriptor(*(v3 + 8));
  if (IOMemoryDescriptor::CreateSubMemoryDescriptor(3, v5, v6, MemoryDescriptor, *v4 + 3, v8))
  {
    v9 = 3758097096;
    if ((*v4)->OSObject::OSMetaClassBase::__vftable && CCLogStream::shouldLog())
    {
      AppleBCMWLANChipImage::prepareMapping(v4);
    }

    return v9;
  }

  *a2 = 1;
  IOMemoryDescriptor::GetLength((*v4)[3].OSObject::OSMetaClassBase::__vftable, a2 + 1);
  v10 = *&(*v4)[1].refcount;
  meta = (*v4)[1].meta;
  v12 = IO80211Buffer::getMemoryDescriptor(*&(*v4)->refcount);
  if (IOMemoryDescriptor::CreateSubMemoryDescriptor(3, v10, meta, v12, (*v4 + 152), v13))
  {
    v9 = 3758097096;
    if ((*v4)->OSObject::OSMetaClassBase::__vftable && CCLogStream::shouldLog())
    {
      AppleBCMWLANChipImage::prepareMapping(v4);
    }

    return v9;
  }

  a2[3] = 2;
  IOMemoryDescriptor::GetLength(*&(*v4)[3].refcount, a2 + 4);
  v15 = *v4;
  ivars = (*v4)[1].ivars;
  if (ivars)
  {
    v17 = v15[1].OSObject::OSObjectInterface::__vftable;
    v18 = IO80211Buffer::getMemoryDescriptor(*&v15->refcount);
    if (IOMemoryDescriptor::CreateSubMemoryDescriptor(3, v17, ivars, v18, (*v4 + 160), v19))
    {
      v9 = 3758097096;
      if ((*v4)->OSObject::OSMetaClassBase::__vftable && CCLogStream::shouldLog())
      {
        AppleBCMWLANChipImage::prepareMapping(v4);
      }

      return v9;
    }

    a2[5] = 3;
    IOMemoryDescriptor::GetLength((*v4)[3].meta, a2 + 6);
    v15 = *v4;
  }

  v20 = v15[2].OSObject::OSMetaClassBase::__vftable;
  if (v20)
  {
    v21 = v15[1].ivars;
    v22 = IO80211Buffer::getMemoryDescriptor(*&v15->refcount);
    if (IOMemoryDescriptor::CreateSubMemoryDescriptor(3, v21, v20, v22, (*v4 + 184), v23))
    {
      v9 = 3758097096;
      if ((*v4)->OSObject::OSMetaClassBase::__vftable && CCLogStream::shouldLog())
      {
        AppleBCMWLANChipImage::prepareMapping(v4);
      }

      return v9;
    }

    a2[7] = 6;
    IOMemoryDescriptor::GetLength((*v4)[3].ivars, a2 + 8);
    v15 = *v4;
  }

  v24 = v15[2].meta;
  if (v24)
  {
    v25 = *&v15[2].refcount;
    v26 = IO80211Buffer::getMemoryDescriptor(*&v15->refcount);
    if (IOMemoryDescriptor::CreateSubMemoryDescriptor(3, v25, v24, v26, (*v4 + 168), v27))
    {
      v9 = 3758097096;
      if ((*v4)->OSObject::OSMetaClassBase::__vftable && CCLogStream::shouldLog())
      {
        AppleBCMWLANChipImage::prepareMapping(v4);
      }

      return v9;
    }

    a2[10] = 4;
    IOMemoryDescriptor::GetLength((*v4)[3].OSObject::OSObjectInterface::__vftable, a2 + 11);
    v15 = *v4;
  }

  v28 = v15[2].ivars;
  if (!v28)
  {
    return 0;
  }

  v29 = v15[2].OSObject::OSObjectInterface::__vftable;
  v30 = IO80211Buffer::getMemoryDescriptor(*&v15->refcount);
  if (!IOMemoryDescriptor::CreateSubMemoryDescriptor(3, v29, v28, v30, (*v4 + 176), v31))
  {
    a2[13] = 5;
    IOMemoryDescriptor::GetLength((*v4)[3].ivars, a2 + 14);
    return 0;
  }

  v9 = 3758097096;
  if ((*v4)->OSObject::OSMetaClassBase::__vftable && CCLogStream::shouldLog())
  {
    AppleBCMWLANChipImage::prepareMapping(v4);
  }

  return v9;
}

uint64_t AppleBCMWLANChipImage::completeMapping(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 48);
  v3 = *(a1 + 48);
  v5 = v3[19];
  if (v5)
  {
    (*(*v5 + 16))(v5);
    (*v4)[19] = 0;
    v3 = *v4;
  }

  v6 = v3[18];
  if (v6)
  {
    (*(*v6 + 16))(v6);
    (*v4)[18] = 0;
    v3 = *v4;
  }

  v7 = v3[20];
  if (v7)
  {
    (*(*v7 + 16))(v7);
    (*v4)[20] = 0;
    v3 = *v4;
  }

  v8 = v3[23];
  if (v8)
  {
    (*(*v8 + 16))(v8);
    (*v4)[23] = 0;
    v3 = *v4;
  }

  v9 = v3[21];
  if (v9)
  {
    (*(*v9 + 16))(v9);
    (*v4)[21] = 0;
    v3 = *v4;
  }

  v10 = v3[22];
  if (v10)
  {
    (*(*v10 + 16))(v10);
    (*v4)[22] = 0;
    v3 = *v4;
  }

  v11 = 3758097090;
  v12 = v3[8];
  v13 = a2[4];
  if (v12 > v13)
  {
    v3[8] = v13;
    v3 = *v4;
    goto LABEL_19;
  }

  if (v12 >= v13)
  {
LABEL_19:
    if (v3[4] >= a2[1])
    {
      v14 = v3[10];
      v15 = a2[6];
      if (v14 <= v15)
      {
        if (v14 >= v15)
        {
          v16 = v3[12];
          v17 = a2[8];
          if (v16 <= v17)
          {
            if (v16 >= v17)
            {
              if (v3[14] >= a2[11])
              {
                v19 = a2[14];
                v18 = a2 + 14;
                if (v3[16] >= v19)
                {
                  return 0;
                }

                else if (*v3 && CCLogStream::shouldLog())
                {
                  AppleBCMWLANChipImage::completeMapping(v4, v18);
                }
              }

              else if (*v3 && CCLogStream::shouldLog())
              {
                AppleBCMWLANChipImage::completeMapping(v4, a2 + 11);
              }
            }

            else if (*v3 && CCLogStream::shouldLog())
            {
              AppleBCMWLANChipImage::completeMapping(v4, a2 + 8);
            }
          }
        }

        else if (*v3 && CCLogStream::shouldLog())
        {
          AppleBCMWLANChipImage::completeMapping(v4, a2 + 6);
        }
      }
    }

    else if (*v3 && CCLogStream::shouldLog())
    {
      AppleBCMWLANChipImage::completeMapping(v4, a2 + 1);
    }

    return v11;
  }

  if (*v3 && CCLogStream::shouldLog())
  {
    AppleBCMWLANChipImage::completeMapping(v4, a2 + 4);
  }

  return v11;
}

void AppleBCMWLANChipImage::clear(AppleBCMWLANChipImage *this)
{
  v2 = *(*(this + 6) + 8);
  Length = IO80211Buffer::getLength(v2);
  BytesNoCopy = IO80211Buffer::getBytesNoCopy(v2, 0, Length);
  if (BytesNoCopy)
  {
    v5 = BytesNoCopy;
    v6 = IO80211Buffer::getLength(*(*(this + 6) + 8));

    bzero(v5, v6);
  }
}

void *AppleBCMWLANChipImage::paint(AppleBCMWLANChipImage *this, int a2)
{
  v4 = *(*(this + 6) + 8);
  Length = IO80211Buffer::getLength(v4);
  result = IO80211Buffer::getBytesNoCopy(v4, 0, Length);
  if (result)
  {
    v7 = result;
    v8 = IO80211Buffer::getLength(*(*(this + 6) + 8));

    return memset(v7, a2, v8);
  }

  return result;
}

uint64_t AppleBCMWLANChipImage::getMemoryDescriptorWithMapping(uint64_t a1, int a2)
{
  v3 = a1 + 48;
  v2 = *(a1 + 48);
  if (a2 > 3)
  {
    switch(a2)
    {
      case 4:
        return v2[21];
      case 5:
        return v2[22];
      case 6:
        return v2[23];
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        return v2[18];
      case 2:
        return v2[19];
      case 3:
        return v2[20];
    }
  }

  result = *v2;
  if (*v2)
  {
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANChipImage::getMemoryDescriptorWithMapping(v3);
    }

    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t **a1, uint64_t *a2)
{
  result = **a1;
  v3 = *a2;
  return result;
}

void *OUTLINED_FUNCTION_3_11(size_t __n)
{

  return memcpy(v1, v2, __n);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::initWithPoolAndQueueInfo(IOUserNetworkTxSubmissionQueue *a1, OSObject *a2, IOUserNetworkPacketBufferPool *a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, OSMetaClass_vtbl *a8, uint64_t a9, OSMetaClass_vtbl *a10)
{
  v18 = IOMallocZeroTyped();
  a1[1].meta = v18;
  if (!v18)
  {
    IOLog("tx sub ivar allocation fail\n");
    return 0;
  }

  v18->__vftable = a8;
  *&a1[1].meta->IOUserNetworkPacketQueue::OSObject::OSObjectInterface::refcount = a9;
  LOWORD(a1[1].meta->IOUserNetworkPacketQueue::OSObject::meta) = a4;
  a1[1].meta[1].refcount = a7;
  a1[1].meta[1].__vftable = a10;
  a1[1].meta[1].reserved = a5;
  LOBYTE(a1[1].meta[1].meta) = 0;
  if (IOUserNetworkTxSubmissionQueue::initWithPool(a1, a3, kServiceClass[a6], a7, a5, a2, 0, a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].SetPacketBufferPool, a1, 0))
  {
    return 1;
  }

  result = (a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(a1);
  if (result)
  {
    (a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v20 = (a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(a1);
      CCLogStream::logEmergency(v20, "[dk] %s@%d:Failed to allocate TXSubmissionQueue for ifid:%u queue:%u ac:0x%x\n", "initWithPoolAndQueueInfo", 84, a4, a5, a6);
      return 0;
    }
  }

  return result;
}

void AppleBCMWLANSkywalkTxSubmissionQueue::free(IOUserNetworkTxSubmissionQueue *this)
{
  meta = this[1].meta;
  if (meta)
  {
    IOFree(meta, 0x48uLL);
    this[1].meta = 0;
  }

  IOUserNetworkTxSubmissionQueue::free(this);
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::forwardPacket(AppleBCMWLANSkywalkTxSubmissionQueue *this, IO80211NetworkPacket *a2)
{
  if ((*(*this + 288))(this, a2))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkTxSubmissionQueue::forwardPacket(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::dupAndTransmitMcastPacket(AppleBCMWLANSkywalkTxSubmissionQueue *this, IO80211NetworkPacket *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if ((*(*this + 288))(this, a2, a3, a4))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkTxSubmissionQueue::dupAndTransmitMcastPacket(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::freeMulticastPacket(AppleBCMWLANSkywalkTxSubmissionQueue *this, IO80211NetworkPacket *a2)
{
  if ((*(*this + 288))(this, a2))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkTxSubmissionQueue::freeMulticastPacket(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::triggerAWDLMulticastTx(AppleBCMWLANSkywalkTxSubmissionQueue *this)
{
  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkTxSubmissionQueue::triggerAWDLMulticastTx(this);
    }
  }

  return 0;
}

uint64_t *AppleBCMWLANSkywalkTxSubmissionQueue::setInterface(uint64_t *this, IO80211SkywalkInterface *a2)
{
  v2 = this;
  if (a2)
  {
    *(this[10] + 24) = a2;
  }

  else
  {
    this = (*(*this + 288))(this);
    if (this)
    {
      (*(*v2 + 288))(v2);
      this = CCLogStream::shouldLog();
      if (this)
      {
        return AppleBCMWLANSkywalkTxSubmissionQueue::setInterface(v2);
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::collectQueueStats(AppleBCMWLANSkywalkTxSubmissionQueue *this, char *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = *(*(this + 10) + 56);
  absolutetime_to_nanoseconds();
  v8 = *(*(this + 10) + 64);
  absolutetime_to_nanoseconds();
  (*(*this + 288))(this);
  v9 = *(this + 10);
  v13 = *(v9 + 44);
  v14 = *(v9 + 48);
  v12 = *(v9 + 16);
  v10 = IO80211Print() + a5;
  (*(*this + 288))(this);
  return IO80211Print() + v10;
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::enable(AppleBCMWLANSkywalkTxSubmissionQueue *this)
{
  if (*(*(this + 10) + 48))
  {
    result = (*(*this + 288))(this);
    if (result)
    {
      (*(*this + 288))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANSkywalkTxSubmissionQueue::enable(this);
      }
    }
  }

  else
  {
    *(*(this + 10) + 56) = mach_continuous_time();
    *(*(this + 10) + 48) = 1;
    IOUserNetworkPacketQueue::SetEnable(this, 1, 0);
    result = (*(*this + 288))(this);
    if (result)
    {
      (*(*this + 288))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANSkywalkTxSubmissionQueue::enable(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::disableSync(IOUserNetworkPacketQueue *this)
{
  if (this[1].OSObject::OSObjectInterface::__vftable[3].init)
  {
    this[1].OSObject::OSObjectInterface::__vftable[4].init = mach_continuous_time();
    LOBYTE(this[1].OSObject::OSObjectInterface::__vftable[3].init) = 0;
    IOUserNetworkPacketQueue::SetEnable(this, 0, 0);
    result = (this->OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(this);
    if (result)
    {
      (this->OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANSkywalkTxSubmissionQueue::disableSync(this);
      }
    }
  }

  else
  {
    result = (this->OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(this);
    if (result)
    {
      (this->OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANSkywalkTxSubmissionQueue::disableSync(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::disable(AppleBCMWLANSkywalkTxSubmissionQueue *this)
{
  if ((*(**(*(this + 10) + 32) + 136))(*(*(this + 10) + 32)))
  {
    v2 = *(*this + 264);

    return v2(this);
  }

  else
  {
    result = (*(**(*(this + 10) + 32) + 144))(*(*(this + 10) + 32));
    v4 = *(this + 10);
    if (result)
    {
      v5 = *(v4 + 32);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 0x40000000;
      v6[2] = ___ZN36AppleBCMWLANSkywalkTxSubmissionQueue7disableEv_block_invoke;
      v6[3] = &__block_descriptor_tmp_4;
      v6[4] = this;
      return (*(*v5 + 120))(v5, v6, 1);
    }

    else if (*(v4 + 48) == 1)
    {
      result = (*(*this + 288))(this);
      if (result)
      {
        (*(*this + 288))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANSkywalkTxSubmissionQueue::disable(this);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkTxSubmissionQueue::p2pMulticastTx(AppleBCMWLANSkywalkTxSubmissionQueue *this, IO80211NetworkPacket **a2)
{
  if ((*(*this + 288))(this, a2))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkTxSubmissionQueue::p2pMulticastTx(this);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANSkywalkTxCompletionQueue::initWithPoolAndQueueInfo(IOUserNetworkTxCompletionQueue *a1, OSObject *a2, IOUserNetworkPacketBufferPool *a3, int a4, unsigned int a5, unsigned int a6, const OSMetaClassBase *a7)
{
  v14 = IOMallocZeroTyped();
  a1[1].meta = v14;
  if (!v14)
  {
    IOLog("tx comp ivar allocation fail\n");
    return 0;
  }

  *(v14 + 16) = a6;
  a1[1].meta->metaClassPrivate = OSMetaClassBase::safeMetaCast(a7, gIO80211WorkQueueMetaClass);
  LODWORD(a1[1].meta[1].__vftable) = a5;
  BYTE4(a1[1].meta[1].__vftable) = 0;
  if (IOUserNetworkTxCompletionQueue::initWithPool(a1, a3, a6, a5, a2, a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[1].SetPacketBufferPool, a1, 0))
  {
    return 1;
  }

  result = (a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[1].DequeuePackets)(a1);
  if (result)
  {
    (a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[1].DequeuePackets)(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v16 = (a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[1].DequeuePackets)(a1);
      CCLogStream::logEmergency(v16, "[dk] %s@%d:Failed to allocate TXCompletion for ifid:%u queue:%u\n", "initWithPoolAndQueueInfo", 331, a4, a5);
      return 0;
    }
  }

  return result;
}

void AppleBCMWLANSkywalkTxCompletionQueue::free(IOUserNetworkTxCompletionQueue *this)
{
  meta = this[1].meta;
  if (meta)
  {
    IOFree(meta, 0x38uLL);
    this[1].meta = 0;
  }

  IOUserNetworkTxCompletionQueue::free(this);
}

uint64_t AppleBCMWLANSkywalkTxCompletionQueue::collectQueueStats(AppleBCMWLANSkywalkTxCompletionQueue *this, char *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = *(*(this + 10) + 40);
  absolutetime_to_nanoseconds();
  v8 = *(*(this + 10) + 48);
  absolutetime_to_nanoseconds();
  (*(*this + 216))(this);
  v9 = *(this + 10);
  v12 = *(v9 + 32);
  v13 = *(v9 + 36);
  v10 = IO80211Print() + a5;
  (*(*this + 216))(this);
  return IO80211Print() + v10;
}

uint64_t AppleBCMWLANSkywalkTxCompletionQueue::enable(AppleBCMWLANSkywalkTxCompletionQueue *this)
{
  if (*(*(this + 10) + 36))
  {
    result = (*(*this + 216))(this);
    if (result)
    {
      (*(*this + 216))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANSkywalkTxCompletionQueue::enable(this);
      }
    }
  }

  else
  {
    *(*(this + 10) + 40) = mach_continuous_time();
    *(*(this + 10) + 36) = 1;
    IOUserNetworkPacketQueue::SetEnable(this, 1, 0);
    result = (*(*this + 216))(this);
    if (result)
    {
      (*(*this + 216))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANSkywalkTxCompletionQueue::enable(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkTxCompletionQueue::disable(IOUserNetworkPacketQueue *this)
{
  if (BYTE4(this[1].OSObject::OSObjectInterface::__vftable[2].init) == 1)
  {
    this[1].OSObject::OSObjectInterface::__vftable[3].init = mach_continuous_time();
    BYTE4(this[1].OSObject::OSObjectInterface::__vftable[2].init) = 0;
    IOUserNetworkPacketQueue::SetEnable(this, 0, 0);
    result = (this->OSObject::OSMetaClassBase::__vftable[1].DequeuePackets)(this);
    if (result)
    {
      (this->OSObject::OSMetaClassBase::__vftable[1].DequeuePackets)(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANSkywalkTxCompletionQueue::disable(this);
      }
    }
  }

  else
  {
    result = (this->OSObject::OSMetaClassBase::__vftable[1].DequeuePackets)(this);
    if (result)
    {
      (this->OSObject::OSMetaClassBase::__vftable[1].DequeuePackets)(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANSkywalkTxCompletionQueue::disable(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkRxSubmissionQueue::setLogger(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  if (*v4)
  {
    (*(**v4 + 16))(*v4);
    **(a1 + 80) = 0;
    v4 = *(a1 + 80);
  }

  *v4 = a2;
  result = **(a1 + 80);
  if (result)
  {
    v6 = *(*result + 8);

    return v6();
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkRxSubmissionQueue::initWithPoolAndQueueInfo(IOUserNetworkRxSubmissionQueue *a1, OSObject *a2, IOUserNetworkPacketBufferPool *a3, int a4, unsigned int a5, unsigned int a6, const OSMetaClassBase *a7)
{
  v14 = IOMallocZeroTyped();
  a1[1].meta = v14;
  if (!v14)
  {
    IOLog("rx sub ivar allocation fail\n");
    return 0;
  }

  *(v14 + 16) = a6;
  a1[1].meta->metaClassPrivate = OSMetaClassBase::safeMetaCast(a7, gIO80211WorkQueueMetaClass);
  LODWORD(a1[1].meta[1].__vftable) = a5;
  v15 = 1;
  v16 = IOUserNetworkRxSubmissionQueue::initWithPool(a1, a3, a6, 1u, a5, a2, a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[1].SetPacketBufferPool, a1, 0);
  HIDWORD(a1[1].meta[1].__vftable) = 0;
  if ((v16 & 1) == 0)
  {
    if ((a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[1].DequeuePackets)(a1))
    {
      (a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[1].DequeuePackets)(a1);
      if (CCLogStream::shouldLog())
      {
        v17 = (a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[1].DequeuePackets)(a1);
        CCLogStream::logEmergency(v17, "[dk] %s@%d:Failed to allcoate RXSubmissionQueue for ifId:%u queueId:%u\n", "initWithPoolAndQueueInfo", 487, a4, a5);
      }
    }

    return 0;
  }

  return v15;
}

void AppleBCMWLANSkywalkRxSubmissionQueue::free(IOUserNetworkRxSubmissionQueue *this)
{
  v2 = &this[1].meta->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable;
  if (!*v2 || ((*(**v2 + 16))(*v2), this[1].meta->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable = 0, (v2 = &this[1].meta->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable) != 0))
  {
    IOFree(v2, 0x38uLL);
    this[1].meta = 0;
  }

  IOUserNetworkRxSubmissionQueue::free(this);
}

uint64_t AppleBCMWLANSkywalkRxSubmissionQueue::collectQueueStats(AppleBCMWLANSkywalkRxSubmissionQueue *this, char *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = *(*(this + 10) + 40);
  absolutetime_to_nanoseconds();
  v8 = *(*(this + 10) + 48);
  absolutetime_to_nanoseconds();
  (*(*this + 216))(this);
  v9 = *(this + 10);
  v12 = *(v9 + 32);
  v13 = *(v9 + 36);
  v10 = IO80211Print() + a5;
  (*(*this + 216))(this);
  return IO80211Print() + v10;
}

uint64_t AppleBCMWLANSkywalkRxSubmissionQueue::enable(AppleBCMWLANSkywalkRxSubmissionQueue *this)
{
  result = (*(*this + 216))(this);
  if (result)
  {
    (*(*this + 216))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANSkywalkRxSubmissionQueue::enable(this);
    }
  }

  v3 = *(this + 10);
  v4 = *(v3 + 36);
  if (v4 != 0x7FFFFFFF)
  {
    *(v3 + 36) = v4 + 1;
    if (!v4)
    {
      if ((*(*this + 216))(this))
      {
        (*(*this + 216))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANSkywalkRxSubmissionQueue::enable(this);
        }
      }

      *(*(this + 10) + 40) = mach_continuous_time();
      IOUserNetworkPacketQueue::SetEnable(this, 1, 0);
      v5 = *(*this + 128);

      return v5(this, 0, 0);
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkRxSubmissionQueue::disable(AppleBCMWLANSkywalkRxSubmissionQueue *this)
{
  result = (*(*this + 216))(this);
  if (result)
  {
    (*(*this + 216))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANSkywalkRxSubmissionQueue::disable(this);
    }
  }

  v3 = *(this + 10);
  v4 = *(v3 + 36);
  if (v4)
  {
    *(v3 + 36) = v4 - 1;
    if (!*(*(this + 10) + 36))
    {
      if ((*(*this + 216))(this))
      {
        (*(*this + 216))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANSkywalkRxSubmissionQueue::disable(this);
        }
      }

      *(*(this + 10) + 48) = mach_continuous_time();

      return IOUserNetworkPacketQueue::SetEnable(this, 0, 0);
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::stagePacket(AppleBCMWLANSkywalkRxCompletionQueue *this, IO80211NetworkPacket *a2)
{
  result = (*(*this + 224))(this, a2);
  if (result)
  {
    (*(*this + 224))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANSkywalkRxCompletionQueue::stagePacket(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::initWithPoolAndQueueInfo(IOUserNetworkRxCompletionQueue *a1, OSObject *a2, IOUserNetworkPacketBufferPool *a3, unsigned __int16 a4, unsigned int a5, unsigned int a6, const OSMetaClassBase *a7)
{
  if (!a3)
  {
    return 0;
  }

  v14 = IOMallocZeroTyped();
  a1[1].meta = v14;
  if (!v14)
  {
    IOLog("rx comp ivar allocation fail\n");
    return 0;
  }

  *(v14 + 16) = a6;
  a1[1].meta->metaClassPrivate = OSMetaClassBase::safeMetaCast(a7, gIO80211WorkQueueMetaClass);
  LODWORD(a1[1].meta[1].__vftable) = a5;
  BYTE4(a1[1].meta[1].__vftable) = 0;
  if (IOUserNetworkRxCompletionQueue::initWithPool(a1, a3, a6, a5, a2, a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[1].SetPacketBufferPool, a1, 0))
  {
    return 1;
  }

  result = (a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(a1);
  if (result)
  {
    (a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANSkywalkRxCompletionQueue::initWithPoolAndQueueInfo(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a4, &a1[1].meta);
      return 0;
    }
  }

  return result;
}

void AppleBCMWLANSkywalkRxCompletionQueue::free(IOUserNetworkRxCompletionQueue *this)
{
  meta = this[1].meta;
  if (meta)
  {
    IOFree(meta, 0x38uLL);
    this[1].meta = 0;
  }

  IOUserNetworkRxCompletionQueue::free(this);
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::collectQueueStats(AppleBCMWLANSkywalkRxCompletionQueue *this, char *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = *(*(this + 10) + 40);
  absolutetime_to_nanoseconds();
  v8 = *(*(this + 10) + 48);
  absolutetime_to_nanoseconds();
  (*(*this + 224))(this);
  v9 = *(this + 10);
  v12 = *(v9 + 32);
  v13 = *(v9 + 36);
  v10 = IO80211Print() + a5;
  (*(*this + 224))(this);
  return IO80211Print() + v10;
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::freePendingPackets(AppleBCMWLANSkywalkRxCompletionQueue *this, IO80211NetworkPacket **a2)
{
  result = (*(*this + 224))(this, a2);
  if (result)
  {
    (*(*this + 224))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANSkywalkRxCompletionQueue::freePendingPackets(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::flushPackets(AppleBCMWLANSkywalkRxCompletionQueue *this)
{
  result = (*(*this + 224))(this);
  if (result)
  {
    (*(*this + 224))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANSkywalkRxCompletionQueue::flushPackets(this);
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::enable(AppleBCMWLANSkywalkRxCompletionQueue *this)
{
  if ((*(*this + 224))(this))
  {
    (*(*this + 224))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkRxCompletionQueue::enable(this);
    }
  }

  if (*(*(this + 10) + 36))
  {
    result = (*(*this + 224))(this);
    if (result)
    {
      (*(*this + 224))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANSkywalkRxCompletionQueue::enable(this);
      }
    }
  }

  else
  {
    *(*(this + 10) + 40) = mach_continuous_time();
    *(*(this + 10) + 36) = 1;
    IOUserNetworkPacketQueue::SetEnable(this, 1, 0);
    result = (*(*this + 224))(this);
    if (result)
    {
      (*(*this + 224))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANSkywalkRxCompletionQueue::enable(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkRxCompletionQueue::disable(IOUserNetworkPacketQueue *this)
{
  v2 = this[1].OSObject::OSObjectInterface::__vftable;
  if (BYTE4(v2[2].init) == 1)
  {
    BYTE4(v2[2].init) = 0;
    this[1].OSObject::OSObjectInterface::__vftable[3].init = mach_continuous_time();
    IOUserNetworkPacketQueue::SetEnable(this, 0, 0);
    result = (this->OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this);
    if (result)
    {
      (this->OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANSkywalkRxCompletionQueue::disable(this);
      }
    }
  }

  else
  {
    result = (this->OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this);
    if (result)
    {
      (this->OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANSkywalkRxCompletionQueue::disable(this);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANSkywalkMulticastQueue::initWithInterface(OSObject *this, IO80211SkywalkInterface *a2)
{
  v4 = IOMallocZeroTyped();
  this[1].OSObjectInterface::__vftable = v4;
  if (v4)
  {
    v4->init = a2;
    this[1].free = (*(*a2 + 1088))(a2);

    return IO80211WorkSource::init(this, this, 0);
  }

  else
  {
    IOLog("mc queue ivar allocation fail\n");
    return 0;
  }
}

uint64_t AppleBCMWLANSkywalkMulticastQueue::free(AppleBCMWLANSkywalkMulticastQueue *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    IOFree(v2, 0x10uLL);
    *(this + 8) = 0;
  }

  return IO80211WorkSource::free(this);
}

uint64_t AppleBCMWLANSkywalkMulticastQueue::enable(AppleBCMWLANSkywalkMulticastQueue *this)
{
  if ((*(*this + 136))(this))
  {
    (*(*this + 136))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANSkywalkMulticastQueue::enable(this);
    }
  }

  result = **(this + 8);
  if (result)
  {
    result = (*(*result + 1064))(result);
    if (result)
    {
      if ((*(*this + 136))(this))
      {
        (*(*this + 136))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANSkywalkMulticastQueue::enable(this);
        }
      }

      return IO80211WorkSource::enable(this);
    }
  }

  return result;
}

OSObject *AppleBCMWLANWnmAdapter::withDriver(AppleBCMWLANWnmAdapter *this, AppleBCMWLANCore *a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  MetaClass = AppleBCMWLANWnmAdapter::sGetMetaClass(this);
  if (OSObjectAllocate(MetaClass, &v7))
  {
    v7 = 0;
  }

  v4 = v7;
  if (!v7 || ((v7->OSMetaClassBase::__vftable[1].getMetaClass)(v7, this) & 1) != 0)
  {
    return v4;
  }

  (v4->release)(v4);
  return 0;
}

uint64_t AppleBCMWLANWnmAdapter::initWithDriver(OSObject *this, AppleBCMWLANCore *a2)
{
  if (is_mul_ok(0x20uLL, 1uLL))
  {
    v3 = IOMallocZeroTyped();
  }

  else
  {
    v3 = 0;
  }

  *&this[1].refcount = v3;
  if (*&this[1].refcount)
  {
    **&this[1].refcount = a2;
    *(*&this[1].refcount + 16) = (*(*a2 + 1952))(a2);
    if (*(*&this[1].refcount + 16))
    {
      (*(**(*&this[1].refcount + 16) + 8))(*(*&this[1].refcount + 16));
      *(*&this[1].refcount + 8) = AppleBCMWLANCore::getCommander(a2);
      if (*(*&this[1].refcount + 8))
      {
        (*(**(*&this[1].refcount + 8) + 8))(*(*&this[1].refcount + 8));
        if (OSObject::init(this) && a2)
        {
          v6 = 1;
        }

        else
        {
          IOLog("%s:%d Super Init failed\n", "initWithDriver", 117);
          AppleBCMWLANWnmAdapter::freeResources(this);
          v6 = 0;
        }
      }

      else
      {
        IOLog("%s:%d Failed to get Command Manager\n", "initWithDriver", 110);
        AppleBCMWLANWnmAdapter::freeResources(this);
        v6 = 0;
      }
    }

    else
    {
      IOLog("%s::%d: Unable to get debug logger\n", "initWithDriver", 101);
      AppleBCMWLANWnmAdapter::freeResources(this);
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t AppleBCMWLANWnmAdapter::freeResources(AppleBCMWLANWnmAdapter *this)
{
  if (AppleBCMWLANWnmAdapter::getLogger(this))
  {
    AppleBCMWLANWnmAdapter::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent: Enter %s \n", "freeResources", 137, "freeResources");
    }
  }

  if (*(*(this + 6) + 16))
  {
    (*(**(*(this + 6) + 16) + 16))(*(*(this + 6) + 16));
    *(*(this + 6) + 16) = 0;
  }

  if (*(*(this + 6) + 8))
  {
    (*(**(*(this + 6) + 8) + 16))(*(*(this + 6) + 8));
    *(*(this + 6) + 8) = 0;
  }

  result = AppleBCMWLANWnmAdapter::getLogger(this);
  if (result)
  {
    AppleBCMWLANWnmAdapter::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = AppleBCMWLANWnmAdapter::getLogger(this);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:WnmAgent: Leave %s \n", "freeResources", 143, "freeResources");
    }
  }

  return result;
}

void AppleBCMWLANWnmAdapter::free(void **this)
{
  if (this[6])
  {
    AppleBCMWLANWnmAdapter::freeResources(this);
    memset_s(this[6], 0x20uLL, 0, 0x20uLL);
    if (this[6])
    {
      if (is_mul_ok(1uLL, 0x20uLL))
      {
        IOFree(this[6], 0x20uLL);
      }

      this[6] = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANWnmAdapter::configureWnmFeatures(AppleBCMWLANWnmAdapter *a1, _BYTE *a2)
{
  v8 = 0;
  if (a2)
  {
    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANWnmAdapter::getLogger(a1);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent:%s:%d Got IOUC\n", "configureWnmFeatures", 175, "configureWnmFeatures", 175);
      }
    }

    if (*a2)
    {
      if (a2[8])
      {
        v8 = AppleBCMWLANWnmAdapter::configureEnterpriseFeatures(a1, a2);
      }

      if (v8)
      {
        if (AppleBCMWLANWnmAdapter::getLogger(a1))
        {
          AppleBCMWLANWnmAdapter::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            v3 = AppleBCMWLANWnmAdapter::getLogger(a1);
            CCLogStream::logAlert(v3, "[dk] %s@%d:AppleBCMWLANWnmAdapter error configuring enterprise features\n", "configureWnmFeatures", 184);
          }
        }
      }

      else
      {
        if ((*a2 & 4) != 0)
        {
          v8 = AppleBCMWLANWnmAdapter::configureProductInfoReporting(a1, a2);
        }

        if (v8)
        {
          if (AppleBCMWLANWnmAdapter::getLogger(a1))
          {
            AppleBCMWLANWnmAdapter::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              v4 = AppleBCMWLANWnmAdapter::getLogger(a1);
              CCLogStream::logAlert(v4, "[dk] %s@%d:AppleBCMWLANWnmAdapter error configuring product info\n", "configureWnmFeatures", 190);
            }
          }
        }

        else
        {
          if ((*a2 & 8) != 0)
          {
            v8 = AppleBCMWLANWnmAdapter::configureBeaconReporting(a1, a2);
          }

          if (v8)
          {
            if (AppleBCMWLANWnmAdapter::getLogger(a1))
            {
              AppleBCMWLANWnmAdapter::getLogger(a1);
              if (CCLogStream::shouldLog())
              {
                v5 = AppleBCMWLANWnmAdapter::getLogger(a1);
                CCLogStream::logAlert(v5, "[dk] %s@%d:AppleBCMWLANWnmAdapter error configuring beacon report\n", "configureWnmFeatures", 195);
              }
            }
          }
        }
      }

      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -536870212;
  }
}

uint64_t AppleBCMWLANWnmAdapter::configureEnterpriseFeatures(AppleBCMWLANWnmAdapter *a1, _BYTE *a2)
{
  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent: Enter %s \n", "configureEnterpriseFeatures", 236, "configureEnterpriseFeatures");
    }
  }

  v6 = AppleBCMWLANWnmAdapter::configureVoiceEnterprise(a1, (a2[8] >> 2) & 1);
  if (v6)
  {
    return v6;
  }

  else
  {
    if (a2[12])
    {
      AppleBCMWLANWnmAdapter::configureBcnThrottleParams(a1, a2);
    }

    AppleBCMWLANWnmAdapter::configureFBTOverDS(a1, (a2[8] >> 3) & 1);
    v9 = 0;
    if (!PE_parse_boot_argn("wlan.debug.wnm", &v9, 4))
    {
      AppleBCMWLANWnmAdapter::configureWNM(a1, a2);
    }

    if ((a2[8] & 2) != 0)
    {
      AppleBCMWLANWnmAdapter::configureRssiToRateMappingTable(a1, (a2 + 40));
    }

    if ((a2[8] & 0x20) != 0)
    {
      AppleBCMWLANWnmAdapter::addAppleDeviceIE(a1, a2 + 656);
    }

    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v3 = AppleBCMWLANWnmAdapter::getLogger(a1);
        CCLogStream::logAlert(v3, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureEnterpriseFeatures", 273, "configureEnterpriseFeatures");
      }
    }

    return 0;
  }
}

uint64_t AppleBCMWLANWnmAdapter::configureProductInfoReporting(AppleBCMWLANWnmAdapter *a1, uint64_t a2)
{
  v35 = 0;
  v34 = 0;
  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent: Enter %s \n", "configureProductInfoReporting", 1412, "configureProductInfoReporting");
    }
  }

  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      v3 = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logAlert(v3, "[dk] %s@%d:WCLWnmAgent: AppleBCMWLANWnmAdapter::configureProductInfoReporting(%d) Clear:%d\n", "configureProductInfoReporting", 1415, 1415, (*(a2 + 812) & 0x10) != 0);
    }
  }

  MaxCmdTxPayload = AppleBCMWLANCommander::getMaxCmdTxPayload(*(*(a1 + 6) + 8));
  if (MaxCmdTxPayload >= AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(a1 + 6) + 8)))
  {
    MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(a1 + 6) + 8));
  }

  else
  {
    MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdTxPayload(*(*(a1 + 6) + 8));
  }

  v31 = MaxCmdRxPayload - (strlen("bcn_report") + 1);
  memset(v44, 170, sizeof(v44));
  AppleBCMWLANUtil::AutoreleasedBuffer::AutoreleasedBuffer(v44, v31, 4);
  if (AppleBCMWLANUtil::AutoreleasedBuffer::isAllocationFailure(v44))
  {
    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v4 = AppleBCMWLANWnmAdapter::getLogger(a1);
        CCLogStream::logCrit(v4, "[dk] %s@%d:WCLWnmAgent:  No memory\n", "configureProductInfoReporting", 1421);
      }
    }

    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v5 = AppleBCMWLANWnmAdapter::getLogger(a1);
        CCLogStream::logAlert(v5, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureProductInfoReporting", 1422, "configureProductInfoReporting");
      }
    }

    v41 = 12;
  }

  else if (AppleBCMWLANUtil::AutoreleasedBuffer::getSize(v44) >= 0xA)
  {
    BytesNoCopy = AppleBCMWLANUtil::AutoreleasedBuffer::getBytesNoCopy(v44);
    *BytesNoCopy = 2;
    v36 = BytesNoCopy + 4;
    if ((*(a2 + 812) & 0x10) != 0)
    {
      *v36 = -35;
      BytesNoCopy[5] = 0;
      *(BytesNoCopy + 1) = 6;
      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v10 = AppleBCMWLANWnmAdapter::getLogger(a1);
          CCLogStream::logAlert(v10, "[dk] %s@%d:WCLWnmAgent: Unset Vendor IE: bcm_xtlv_tSz:%u VendorIELen:%u \n", "configureProductInfoReporting", 1512, *(BytesNoCopy + 1), BytesNoCopy[5]);
        }
      }
    }

    else
    {
      *v36 = -35;
      *(BytesNoCopy + 3) = *(a2 + 672);
      BytesNoCopy[8] = *(a2 + 674);
      BytesNoCopy[9] = *(a2 + 675);
      BytesNoCopy[10] = *(a2 + 676);
      BytesNoCopy[11] = *(a2 + 677);
      BytesNoCopy[12] = 0;
      v32 = 4;
      if ((*(a2 + 812) & 8) != 0)
      {
        v35 = BytesNoCopy + 13;
        BytesNoCopy[13] = *(a2 + 678);
        BytesNoCopy[14] = *(a2 + 679);
        memcpy(BytesNoCopy + 15, (a2 + 680), BytesNoCopy[14]);
        v32 = BytesNoCopy[14] + 6;
      }

      if ((*(a2 + 812) & 4) != 0)
      {
        v34 = &BytesNoCopy[v32 + 9];
        *v34 = *(a2 + 744);
        v34[1] = *(a2 + 745);
        memcpy(v34 + 2, (a2 + 746), v34[1]);
        LOBYTE(v32) = v32 + v34[1] + 2;
      }

      BytesNoCopy[12] = v32 - 4;
      BytesNoCopy[5] = BytesNoCopy[12] + 7;
      *(BytesNoCopy + 1) = BytesNoCopy[5] + 2;
      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v26 = AppleBCMWLANWnmAdapter::getLogger(a1);
          if (v35)
          {
            v25 = v35[1];
          }

          else
          {
            v25 = 0;
          }

          if (v34)
          {
            CCLogStream::logAlert(v26, "[dk] %s@%d:WCLWnmAgent: Set Vendor IE: osVersion->infoLen:%u productType->infoLen:%u \n", "configureProductInfoReporting", 1499, v25, v34[1]);
          }

          else
          {
            CCLogStream::logAlert(v26, "[dk] %s@%d:WCLWnmAgent: Set Vendor IE: osVersion->infoLen:%u productType->infoLen:%u \n", "configureProductInfoReporting", 1499, v25, 0);
          }
        }
      }

      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v9 = AppleBCMWLANWnmAdapter::getLogger(a1);
          CCLogStream::logAlert(v9, "[dk] %s@%d:WCLWnmAgent: Set Vendor IE: bcm_xtlv_tSz:%u VendorIELen:%u VendorDataLen:%u\n", "configureProductInfoReporting", 1500, *(BytesNoCopy + 1), BytesNoCopy[5], BytesNoCopy[12]);
        }
      }
    }

    v43 = 0;
    v38 = AppleBCMWLANUtil::safe_align_up((*(BytesNoCopy + 1) + 4), 4, &v43, v8);
    if (v38)
    {
      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v11 = AppleBCMWLANWnmAdapter::getLogger(a1);
          CCLogStream::logAlert(v11, "[dk] %s@%d:WCLWnmAgent: bad safe_align_up\n", "configureProductInfoReporting", 1519);
        }
      }

      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v12 = AppleBCMWLANWnmAdapter::getLogger(a1);
          CCLogStream::logAlert(v12, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureProductInfoReporting", 1520, "configureProductInfoReporting");
        }
      }

      v41 = v38;
    }

    else if (v43 < 0x10000 && (v24 = v43, v24 <= AppleBCMWLANUtil::AutoreleasedBuffer::getSize(v44)))
    {
      v33 = v43;
      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v15 = AppleBCMWLANWnmAdapter::getLogger(a1);
          CCLogStream::logAlert(v15, "[dk] %s@%d:WCLWnmAgent:%s  payLoadBufLen:%u \n", "configureProductInfoReporting", 1529, "configureProductInfoReporting", v33);
        }
      }

      v16 = *(*(a1 + 6) + 16);
      IO80211HexdumpIf();
      v21 = *(*(a1 + 6) + 8);
      v42[0] = txPayload(BytesNoCopy, v33);
      v42[1] = v17;
      v39 = AppleBCMWLANCommander::runIOVarSet(v21, "bcn_report", v42, 0, 0);
      if (v39)
      {
        if (AppleBCMWLANWnmAdapter::getLogger(a1))
        {
          AppleBCMWLANWnmAdapter::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            v18 = AppleBCMWLANWnmAdapter::getLogger(a1);
            CCLogStream::logAlert(v18, "[dk] %s@%d:\nError: Failed to configure VendorIE in Beacon Report\n", "configureProductInfoReporting", 1535);
          }
        }
      }

      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v19 = AppleBCMWLANWnmAdapter::getLogger(a1);
          CCLogStream::logAlert(v19, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureProductInfoReporting", 1538, "configureProductInfoReporting");
        }
      }

      v41 = v39;
    }

    else
    {
      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v23 = AppleBCMWLANWnmAdapter::getLogger(a1);
          v22 = v43;
          Size = AppleBCMWLANUtil::AutoreleasedBuffer::getSize(v44);
          CCLogStream::logAlert(v23, "[dk] %s@%d:WCLWnmAgent: overflow, returnLen[%zu] getSize[%zu]\n", "configureProductInfoReporting", 1524, v22, Size);
        }
      }

      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v14 = AppleBCMWLANWnmAdapter::getLogger(a1);
          CCLogStream::logAlert(v14, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureProductInfoReporting", 1525, "configureProductInfoReporting");
        }
      }

      v41 = 22;
    }
  }

  else
  {
    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v27 = AppleBCMWLANWnmAdapter::getLogger(a1);
        v6 = AppleBCMWLANUtil::AutoreleasedBuffer::getSize(v44);
        CCLogStream::logCrit(v27, "[dk] %s@%d:WCLWnmAgent:  Invalid size[%zu] < %zu\n", "configureProductInfoReporting", 1427, v6, 0xAuLL);
      }
    }

    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v7 = AppleBCMWLANWnmAdapter::getLogger(a1);
        CCLogStream::logAlert(v7, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureProductInfoReporting", 1428, "configureProductInfoReporting");
      }
    }

    v41 = 22;
  }

  AppleBCMWLANUtil::AutoreleasedBuffer::~AutoreleasedBuffer(v44);
  return v41;
}

uint64_t AppleBCMWLANWnmAdapter::configureBeaconReporting(AppleBCMWLANWnmAdapter *a1, uint64_t a2)
{
  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent: Enter %s \n", "configureBeaconReporting", 1321, "configureBeaconReporting");
    }
  }

  MaxCmdTxPayload = AppleBCMWLANCommander::getMaxCmdTxPayload(*(*(a1 + 6) + 8));
  if (MaxCmdTxPayload >= AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(a1 + 6) + 8)))
  {
    MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(a1 + 6) + 8));
  }

  else
  {
    MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdTxPayload(*(*(a1 + 6) + 8));
  }

  v25 = MaxCmdRxPayload - (strlen("bcn_report") + 1);
  memset(v35, 170, sizeof(v35));
  AppleBCMWLANUtil::AutoreleasedBuffer::AutoreleasedBuffer(v35, v25, 4);
  if (AppleBCMWLANUtil::AutoreleasedBuffer::isAllocationFailure(v35))
  {
    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v3 = AppleBCMWLANWnmAdapter::getLogger(a1);
        CCLogStream::logCrit(v3, "[dk] %s@%d: No memory\n", "configureBeaconReporting", 1327);
      }
    }

    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v4 = AppleBCMWLANWnmAdapter::getLogger(a1);
        CCLogStream::logAlert(v4, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureBeaconReporting", 1328, "configureBeaconReporting");
      }
    }

    v32 = 12;
  }

  else if (AppleBCMWLANUtil::AutoreleasedBuffer::getSize(v35) >= 0x14)
  {
    BytesNoCopy = AppleBCMWLANUtil::AutoreleasedBuffer::getBytesNoCopy(v35);
    v27 = BytesNoCopy + 4;
    *BytesNoCopy = 1;
    *(BytesNoCopy + 1) = 16;
    *(BytesNoCopy + 1) = 0;
    if ((*(a2 + 812) & 2) != 0)
    {
      *v27 |= 2u;
      *(BytesNoCopy + 2) = 0;
    }

    if (*(a2 + 812))
    {
      *v27 |= 4u;
      *(BytesNoCopy + 2) = *(a2 + 816);
    }

    BytesNoCopy[16] = *(a2 + 820);
    *(BytesNoCopy + 3) = 0;
    v34 = 0;
    v29 = AppleBCMWLANUtil::safe_align_up(0x14, 4, &v34, v7);
    if (v29)
    {
      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v8 = AppleBCMWLANWnmAdapter::getLogger(a1);
          CCLogStream::logAlert(v8, "[dk] %s@%d:bad safe_align_up\n", "configureBeaconReporting", 1364);
        }
      }

      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v9 = AppleBCMWLANWnmAdapter::getLogger(a1);
          CCLogStream::logAlert(v9, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureBeaconReporting", 1365, "configureBeaconReporting");
        }
      }

      v32 = v29;
    }

    else if (v34 < 0x10000 && (v20 = v34, v20 <= AppleBCMWLANUtil::AutoreleasedBuffer::getSize(v35)))
    {
      v26 = v34;
      v12 = *(*(a1 + 6) + 16);
      IO80211HexdumpIf();
      v17 = *(*(a1 + 6) + 8);
      v33[0] = txPayload(BytesNoCopy, v26);
      v33[1] = v13;
      v30 = AppleBCMWLANCommander::runIOVarSet(v17, "bcn_report", v33, 0, 0);
      if (v30)
      {
        if (AppleBCMWLANWnmAdapter::getLogger(a1))
        {
          AppleBCMWLANWnmAdapter::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            v14 = AppleBCMWLANWnmAdapter::getLogger(a1);
            CCLogStream::logAlert(v14, "[dk] %s@%d:\nError: Failed to configure Beacon Reporting\n", "configureBeaconReporting", 1381);
          }
        }
      }

      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v15 = AppleBCMWLANWnmAdapter::getLogger(a1);
          CCLogStream::logAlert(v15, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureBeaconReporting", 1384, "configureBeaconReporting");
        }
      }

      v32 = v30;
    }

    else
    {
      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v19 = AppleBCMWLANWnmAdapter::getLogger(a1);
          v18 = v34;
          Size = AppleBCMWLANUtil::AutoreleasedBuffer::getSize(v35);
          CCLogStream::logAlert(v19, "[dk] %s@%d:overflow, returnLen[%zu] getSize[%zu]\n", "configureBeaconReporting", 1369, v18, Size);
        }
      }

      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v11 = AppleBCMWLANWnmAdapter::getLogger(a1);
          CCLogStream::logAlert(v11, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureBeaconReporting", 1370, "configureBeaconReporting");
        }
      }

      v32 = 22;
    }
  }

  else
  {
    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v21 = AppleBCMWLANWnmAdapter::getLogger(a1);
        v5 = AppleBCMWLANUtil::AutoreleasedBuffer::getSize(v35);
        CCLogStream::logCrit(v21, "[dk] %s@%d: Invalid size[%zu] < %zu\n", "configureBeaconReporting", 1333, v5, 0x14uLL);
      }
    }

    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v6 = AppleBCMWLANWnmAdapter::getLogger(a1);
        CCLogStream::logAlert(v6, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureBeaconReporting", 1334, "configureBeaconReporting");
      }
    }

    v32 = 22;
  }

  AppleBCMWLANUtil::AutoreleasedBuffer::~AutoreleasedBuffer(v35);
  return v32;
}

uint64_t AppleBCMWLANWnmAdapter::configureWnmOffloadFeatures(AppleBCMWLANWnmAdapter *a1, _BYTE *a2)
{
  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent: Enter %s \n", "configureWnmOffloadFeatures", 205, "configureWnmOffloadFeatures");
    }
  }

  if (*a2)
  {
    if ((*a2 & 2) != 0)
    {
      AppleBCMWLANWnmAdapter::unconfigureOffloads(a1);
    }

    if ((a2[4] & 1) != 0 && (a2[4] & 2) != 0)
    {
      AppleBCMWLANWnmAdapter::configureOffloads(a1, a2);
    }

    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v4 = AppleBCMWLANWnmAdapter::getLogger(a1);
        CCLogStream::logAlert(v4, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureWnmOffloadFeatures", 227, "configureWnmOffloadFeatures");
      }
    }
  }

  else if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      v3 = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logAlert(v3, "[dk] %s@%d:configureWnmOffloadFeatures() no valid configuration\n", "configureWnmOffloadFeatures", 208);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANWnmAdapter::unconfigureOffloads(AppleBCMWLANCore ***this)
{
  if (AppleBCMWLANWnmAdapter::getLogger(this))
  {
    AppleBCMWLANWnmAdapter::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(this);
      CCLogStream::logNoticeIf(Logger, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", "unconfigureOffloads", 716, "unconfigureOffloads");
    }
  }

  v16 = 0;
  if (AppleBCMWLANCore::isWNMSupportedAndEnabled(*this[6]))
  {
    WNMState = AppleBCMWLANWnmAdapter::getWNMState(this, &v16);
    if (WNMState)
    {
      return WNMState;
    }

    else if ((v16 & 0x40) != 0)
    {
      v14 = 257;
      v15 = 0;
      v8 = this[6][1];
      v13[0] = txPayload(&v14, 3);
      v13[1] = v2;
      v11 = AppleBCMWLANCommander::runIOVarSet(v8, "wnm_service_term", v13, 0, 0);
      if (v11)
      {
        if (AppleBCMWLANWnmAdapter::getLogger(this))
        {
          AppleBCMWLANWnmAdapter::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v7 = AppleBCMWLANWnmAdapter::getLogger(this);
            v3 = (*(**this[6] + 112))(*this[6], v11);
            CCLogStream::logAlert(v7, "[dk] %s@%d: Error: Failed to Terminate WNM Service :  Ret %s\n", "unconfigureOffloads", 749, v3);
          }
        }
      }

      if (AppleBCMWLANWnmAdapter::getLogger(this))
      {
        AppleBCMWLANWnmAdapter::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v4 = AppleBCMWLANWnmAdapter::getLogger(this);
          CCLogStream::logAlert(v4, "[dk] %s@%d:Terminated WNM Service\n", "unconfigureOffloads", 752);
        }
      }

      if (AppleBCMWLANWnmAdapter::getLogger(this))
      {
        AppleBCMWLANWnmAdapter::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v5 = AppleBCMWLANWnmAdapter::getLogger(this);
          CCLogStream::logNoticeIf(v5, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", "unconfigureOffloads", 754, "unconfigureOffloads");
        }
      }

      return v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -536870201;
  }
}

uint64_t AppleBCMWLANWnmAdapter::configureOffloads(AppleBCMWLANCore ***a1, uint64_t a2)
{
  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logNoticeIf(Logger, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", "configureOffloads", 567, "configureOffloads");
    }
  }

  v12 = 0;
  if (AppleBCMWLANCore::isWNMSupportedAndEnabled(*a1[6]))
  {
    WNMState = AppleBCMWLANWnmAdapter::getWNMState(a1, &v12);
    if (WNMState)
    {
      return WNMState;
    }

    else
    {
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_25;
      }

      if (AppleBCMWLANWnmAdapter::configureWNMDMSDependency(a1))
      {
        if (AppleBCMWLANWnmAdapter::getLogger(a1))
        {
          AppleBCMWLANWnmAdapter::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            v3 = AppleBCMWLANWnmAdapter::getLogger(a1);
            CCLogStream::logAlert(v3, "[dk] %s@%d:Failed to configure wnm DMS dependency on Proxy ARP\n", "configureOffloads", 588);
          }
        }
      }

      v9 = AppleBCMWLANWnmAdapter::configureDMS(a1, v12, a2);
      if (v9)
      {
        if (AppleBCMWLANWnmAdapter::getLogger(a1))
        {
          AppleBCMWLANWnmAdapter::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            v4 = AppleBCMWLANWnmAdapter::getLogger(a1);
            CCLogStream::logAlert(v4, "[dk] %s@%d:Failed to configure Directed Multicast Service\n", "configureOffloads", 594);
          }
        }

        return v9;
      }

      else
      {
LABEL_25:
        if (AppleBCMWLANWnmAdapter::getLogger(a1))
        {
          AppleBCMWLANWnmAdapter::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            v5 = AppleBCMWLANWnmAdapter::getLogger(a1);
            CCLogStream::logNoticeIf(v5, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", "configureOffloads", 599, "configureOffloads");
          }
        }

        return 0;
      }
    }
  }

  else
  {
    return -536870201;
  }
}

uint64_t AppleBCMWLANWnmAdapter::configureVoiceEnterprise(AppleBCMWLANCore ***this, int a2)
{
  v12 = a2;
  if (AppleBCMWLANWnmAdapter::getLogger(this))
  {
    AppleBCMWLANWnmAdapter::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent: Enter %s \n", "configureVoiceEnterprise", 281, "configureVoiceEnterprise");
    }
  }

  if ((AppleBCMWLANCore::isVESupportedAndEnabled(*this[6]) & 1) != 0 && (v11 = xmmword_1003AD670, *&v11 = txPayload(&v12, 4), *(&v11 + 1) = v3, (v9 = AppleBCMWLANCommander::runIOVarSet(this[6][1], "split_roamscan", &v11, 0, 0)) != 0))
  {
    if (AppleBCMWLANWnmAdapter::getLogger(this))
    {
      AppleBCMWLANWnmAdapter::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v7 = AppleBCMWLANWnmAdapter::getLogger(this);
        v4 = (*(**this[6] + 112))(*this[6], v9);
        CCLogStream::logAlert(v7, "[dk] %s@%d: iovar set split_roamscan command failed: %s\n", "configureVoiceEnterprise", 287, v4);
      }
    }

    return v9;
  }

  else
  {
    if (AppleBCMWLANWnmAdapter::getLogger(this))
    {
      AppleBCMWLANWnmAdapter::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v5 = AppleBCMWLANWnmAdapter::getLogger(this);
        CCLogStream::logAlert(v5, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureVoiceEnterprise", 292, "configureVoiceEnterprise");
      }
    }

    return 0;
  }
}

uint64_t AppleBCMWLANWnmAdapter::configureBcnThrottleParams(AppleBCMWLANWnmAdapter *a1, uint64_t a2)
{
  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent: Enter %s \n", "configureBcnThrottleParams", 324, "configureBcnThrottleParams");
    }
  }

  if ((*(a2 + 12) & 2) != 0)
  {
    v15 = *(a2 + 16);
  }

  else
  {
    v15 = 0;
  }

  v23 = v15;
  v22 = *(a2 + 20);
  v14 = *(*(a1 + 6) + 8);
  v21[0] = txPayload(&v23, 4);
  v21[1] = v3;
  v17 = AppleBCMWLANCommander::runIOVarSet(v14, "rrm_bcn_req_thrtl_win", v21, 0, 0);
  if (v17)
  {
    result = AppleBCMWLANWnmAdapter::getLogger(a1);
    if (result)
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        v13 = AppleBCMWLANWnmAdapter::getLogger(a1);
        v12 = v23;
        v5 = (*(***(a1 + 6) + 112))(**(a1 + 6), v17);
        return CCLogStream::logAlert(v13, "[dk] %s@%d:cannot set Beacon Request Throttle Window to %d : ret %x: %s  -> continue with initialization\n", "configureBcnThrottleParams", 333, v12, v17, v5);
      }
    }
  }

  else
  {
    v11 = *(*(a1 + 6) + 8);
    v20[0] = txPayload(&v22, 4);
    v20[1] = v6;
    v18 = AppleBCMWLANCommander::runIOVarSet(v11, "rrm_bcn_req_max_off_chan_time", v20, 0, 0);
    if (v18)
    {
      result = AppleBCMWLANWnmAdapter::getLogger(a1);
      if (result)
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          v10 = AppleBCMWLANWnmAdapter::getLogger(a1);
          v9 = v22;
          v7 = (*(***(a1 + 6) + 112))(**(a1 + 6), v18);
          return CCLogStream::logAlert(v10, "[dk] %s@%d:cannot set Beacon Request Off-Channel Time to %d : ret %x: %s  -> continue with initialization\n", "configureBcnThrottleParams", 340, v9, v18, v7);
        }
      }
    }

    else
    {
      result = AppleBCMWLANWnmAdapter::getLogger(a1);
      if (result)
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          v8 = AppleBCMWLANWnmAdapter::getLogger(a1);
          return CCLogStream::logAlert(v8, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureBcnThrottleParams", 345, "configureBcnThrottleParams");
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANWnmAdapter::configureFBTOverDS(AppleBCMWLANCore ***this, int a2)
{
  v14 = a2;
  if (AppleBCMWLANWnmAdapter::getLogger(this))
  {
    AppleBCMWLANWnmAdapter::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(this);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent: Enter %s \n", "configureFBTOverDS", 299, "configureFBTOverDS");
    }
  }

  if (AppleBCMWLANCore::isVESupportedAndEnabled(*this[6]) & 1) != 0 && (AppleBCMWLANCore::checkForFBTOverDSSUpport(*this[6]))
  {
    v10 = this[6][1];
    v13[0] = txPayload(&v14, 4);
    v13[1] = v3;
    v12 = AppleBCMWLANCommander::runIOVarSet(v10, "fbtoverds", v13, 0, 0);
    if (v12)
    {
      result = AppleBCMWLANWnmAdapter::getLogger(this);
      if (result)
      {
        AppleBCMWLANWnmAdapter::getLogger(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          v9 = AppleBCMWLANWnmAdapter::getLogger(this);
          v8 = v14;
          v5 = (*(**this[6] + 112))(*this[6], v12);
          return CCLogStream::logAlert(v9, "[dk] %s@%d:cannot set FBT Over DS to %d : ret %x: %s  -> continue with initialization\n", "configureFBTOverDS", 307, v8, v12, v5);
        }
      }

      return result;
    }

    if (AppleBCMWLANWnmAdapter::getLogger(this))
    {
      AppleBCMWLANWnmAdapter::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v6 = AppleBCMWLANWnmAdapter::getLogger(this);
        CCLogStream::logNoticeIf(v6, 0x80uLL, "[dk] %s@%d:Enabled FBT Over DS \n", "configureFBTOverDS", 310);
      }
    }
  }

  result = AppleBCMWLANWnmAdapter::getLogger(this);
  if (result)
  {
    AppleBCMWLANWnmAdapter::getLogger(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = AppleBCMWLANWnmAdapter::getLogger(this);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureFBTOverDS", 313, "configureFBTOverDS");
    }
  }

  return result;
}

uint64_t AppleBCMWLANWnmAdapter::configureWNM(AppleBCMWLANCore ***a1, _BYTE *a2)
{
  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent: Enter %s \n", "configureWNM", 356, "configureWNM");
    }
  }

  if ((*a2 & 2) != 0)
  {
    if (!AppleBCMWLANCore::checkForWNMSupport(*a1[6]))
    {
      return 0;
    }

    v15 = 0;
    v9 = a1[6][1];
    v14[0] = txPayload(&v15, 4);
    v14[1] = v3;
    v11 = AppleBCMWLANCommander::runIOVarSet(v9, "wnm", v14, 0, 0);
    if (v11)
    {
      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v8 = AppleBCMWLANWnmAdapter::getLogger(a1);
          v4 = (*(**a1[6] + 112))(*a1[6], v11);
          CCLogStream::logAlert(v8, "[dk] %s@%d: Error: Unable to set WNM:  Ret %s\n", "configureWNM", 366, v4);
        }
      }

      return v11;
    }
  }

  else
  {
    v11 = AppleBCMWLANWnmAdapter::configureWNMExtCapability(a1, a2);
    if (v11)
    {
      if (v11 != -469794537)
      {
        if (AppleBCMWLANWnmAdapter::getLogger(a1))
        {
          AppleBCMWLANWnmAdapter::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            v5 = AppleBCMWLANWnmAdapter::getLogger(a1);
            CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to configure WNM\n", "configureWNM", 374);
          }
        }
      }
    }
  }

  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      v6 = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logAlert(v6, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureWNM", 378, "configureWNM");
    }
  }

  return v11;
}

uint64_t AppleBCMWLANWnmAdapter::configureRssiToRateMappingTable(AppleBCMWLANCore ***a1, uint64_t a2)
{
  memset(__b, -86, sizeof(__b));
  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent: Enter %s \n", "configureRssiToRateMappingTable", 1000, "configureRssiToRateMappingTable");
    }
  }

  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*a1[6]) < 0x11)
  {
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*a1[6]) < 0xE)
    {
      *__b = 1;
      *&__b[2] = 172;
      *&__b[4] = cck;
      *&__b[12] = ofdm;
      *&__b[28] = phy_n_1_1;
      *&__b[92] = phy_ac_1_1;
      *&__b[108] = dword_1003E81C4;
      *&__b[44] = phy_n_2_2;
      *&__b[112] = phy_ac_2_2;
      *&__b[128] = dword_1003E8218;
      v10 = a1[6][1];
      v15[0] = txPayload(__b, 172);
      v15[1] = v6;
      v12 = AppleBCMWLANCommander::runIOVarSet(v10, "wnm_bsstrans_rssi_rate_map", v15, 0, 0);
      if (v12)
      {
        if (AppleBCMWLANWnmAdapter::getLogger(a1))
        {
          AppleBCMWLANWnmAdapter::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            v7 = AppleBCMWLANWnmAdapter::getLogger(a1);
            CCLogStream::logAlert(v7, "[dk] %s@%d: Error: Failed to configure Rssi to Mapping To Table\n", "configureRssiToRateMappingTable", 1024);
          }
        }
      }

      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v8 = AppleBCMWLANWnmAdapter::getLogger(a1);
          CCLogStream::logAlert(v8, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureRssiToRateMappingTable", 1028, "configureRssiToRateMappingTable");
        }
      }

      return v12;
    }

    else
    {
      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v5 = AppleBCMWLANWnmAdapter::getLogger(a1);
          CCLogStream::logAlert(v5, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureRssiToRateMappingTable", 1007, "configureRssiToRateMappingTable");
        }
      }

      return AppleBCMWLANWnmAdapter::configureRssiToRateMappingTableV2(a1);
    }
  }

  else
  {
    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v3 = AppleBCMWLANWnmAdapter::getLogger(a1);
        CCLogStream::logAlert(v3, "[dk] %s@%d:WnmAgent: Leave %s \n", "configureRssiToRateMappingTable", 1003, "configureRssiToRateMappingTable");
      }
    }

    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v4 = AppleBCMWLANWnmAdapter::getLogger(a1);
        CCLogStream::logNoticeIf(v4, 0x4000uLL, "[dk] %s@%d:%s WiFiRoam : Programming 6G capable rate map table \n", "configureRssiToRateMappingTable", 1004, "configureRssiToRateMappingTable");
      }
    }

    return AppleBCMWLANWnmAdapter::configureRssiToRateMappingTableV4(a1, a2);
  }
}

uint64_t AppleBCMWLANWnmAdapter::addAppleDeviceIE(AppleBCMWLANWnmAdapter *a1, _BYTE *a2)
{
  v76 = 0;
  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logAlert(Logger, "[dk] %s@%d:WnmAgent: Enter %s \n", "addAppleDeviceIE", 1204, "addAppleDeviceIE");
    }
  }

  MaxCmdTxPayload = AppleBCMWLANCommander::getMaxCmdTxPayload(*(*(a1 + 6) + 8));
  if (MaxCmdTxPayload >= AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(a1 + 6) + 8)))
  {
    MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(a1 + 6) + 8));
  }

  else
  {
    MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdTxPayload(*(*(a1 + 6) + 8));
  }

  v74 = ~strlen("vndr_ie") + MaxCmdRxPayload;
  memset(v86, 170, sizeof(v86));
  AppleBCMWLANUtil::AutoreleasedBuffer::AutoreleasedBuffer(v86, v74, 4);
  if (AppleBCMWLANUtil::AutoreleasedBuffer::isAllocationFailure(v86))
  {
    if (AppleBCMWLANWnmAdapter::getLogger(a1))
    {
      AppleBCMWLANWnmAdapter::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v3 = AppleBCMWLANWnmAdapter::getLogger(a1);
        CCLogStream::logCrit(v3, "[dk] %s@%d: No memory\n", "addAppleDeviceIE", 1212);
      }
    }

    v76 = 12;
  }

  else
  {
    *__dst = 0;
    v84 = xmmword_1003AD670;
    BytesNoCopy = AppleBCMWLANUtil::AutoreleasedBuffer::getBytesNoCopy(v86);
    Size = AppleBCMWLANUtil::AutoreleasedBuffer::getSize(v86);
    IO80211BufferCursor::IO80211BufferCursor(&v84, BytesNoCopy, Size);
    if (IO80211BufferCursor::operator BOOL(&v84))
    {
      v6 = IO80211BufferCursor::asType<vndr_ie_setbuf_t>(&v84, 0, 0x12uLL);
      v83 = v7;
      v82 = v6;
      if (__CFADD__(v6, SHIDWORD(v7)))
      {
        v8 = (SHIDWORD(v7) >> 63) + 1;
      }

      else
      {
        v8 = SHIDWORD(v7) >> 63;
      }

      if ((v8 << 63 >> 63) ^ v8 | v8 & 1)
      {
        os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v7);
      }

      if (&v6[SHIDWORD(v7)])
      {
        v81 = xmmword_1003AD670;
        IO80211BufferCursor::trimFront(&v84, 8uLL, v80);
        v10 = IO80211BufferCursor::asType<vndr_ie_info_t>(v80, 0, 0xAuLL);
        *(&v81 + 1) = v11;
        *&v81 = v10;
        IO80211BufferCursor::~IO80211BufferCursor(v80);
        if (__CFADD__(v81, SHIDWORD(v81)))
        {
          v13 = (SHIDWORD(v81) >> 63) + 1;
        }

        else
        {
          v13 = SHIDWORD(v81) >> 63;
        }

        if ((v13 << 63 >> 63) ^ v13 | v13 & 1)
        {
          os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v12);
        }

        if (v81 + SHIDWORD(v81))
        {
          strlcpy(__dst, "add", 4uLL);
          IO80211BufferCursor::IO80211BufferCursor(v79, __dst, 4);
          v67 = IO80211BufferCursor::copyFrom(&v84, v79, 4uLL);
          IO80211BufferCursor::~IO80211BufferCursor(v79);
          if (v67)
          {
            if (AppleBCMWLANWnmAdapter::getLogger(a1))
            {
              AppleBCMWLANWnmAdapter::getLogger(a1);
              if (CCLogStream::shouldLog())
              {
                v16 = AppleBCMWLANWnmAdapter::getLogger(a1);
                CCLogStream::logCrit(v16, "[dk] %s@%d:Failed sbCursor copyFrom 'add' command, size[%zu]\n", "addAppleDeviceIE", 1252, 4uLL);
              }
            }

            v76 = -536870911;
          }

          else
          {
            v66 = 0;
            if ((HIDWORD(v83) & 0x80000000) == 0)
            {
              v66 = HIDWORD(v83) + 18 <= v83;
            }

            if (!v66)
            {
              os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v15);
            }

            if (__CFADD__(v82, SHIDWORD(v83)))
            {
              v17 = (SHIDWORD(v83) >> 63) + 1;
            }

            else
            {
              v17 = SHIDWORD(v83) >> 63;
            }

            if ((v17 << 63 >> 63) ^ v17 | v17 & 1)
            {
              os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v15);
            }

            *&v82[SHIDWORD(v83) + 4] = 1;
            v65 = 0;
            if ((HIDWORD(v81) & 0x80000000) == 0)
            {
              v65 = (HIDWORD(v81) + 10) <= DWORD2(v81);
            }

            if (!v65)
            {
              os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v15);
            }

            if (__CFADD__(v81, SHIDWORD(v81)))
            {
              v18 = (SHIDWORD(v81) >> 63) + 1;
            }

            else
            {
              v18 = SHIDWORD(v81) >> 63;
            }

            if ((v18 << 63 >> 63) ^ v18 | v18 & 1)
            {
              os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v15);
            }

            *(v81 + SHIDWORD(v81) + 4) = -35;
            v64 = 0;
            if ((HIDWORD(v81) & 0x80000000) == 0)
            {
              v64 = (HIDWORD(v81) + 10) <= DWORD2(v81);
            }

            if (!v64)
            {
              os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v15);
            }

            if (__CFADD__(v81, SHIDWORD(v81)))
            {
              v19 = (SHIDWORD(v81) >> 63) + 1;
            }

            else
            {
              v19 = SHIDWORD(v81) >> 63;
            }

            if ((v19 << 63 >> 63) ^ v19 | v19 & 1)
            {
              os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v15);
            }

            *(v81 + SHIDWORD(v81) + 5) = 11;
            v63 = 0;
            if ((HIDWORD(v81) & 0x80000000) == 0)
            {
              v63 = (HIDWORD(v81) + 10) <= DWORD2(v81);
            }

            if (!v63)
            {
              os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v15);
            }

            if (__CFADD__(v81, SHIDWORD(v81)))
            {
              v20 = (SHIDWORD(v81) >> 63) + 1;
            }

            else
            {
              v20 = SHIDWORD(v81) >> 63;
            }

            if ((v20 << 63 >> 63) ^ v20 | v20 & 1)
            {
              os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v15);
            }

            *(v81 + SHIDWORD(v81)) = 0;
            if ((*a2 & 4) != 0)
            {
              v62 = 0;
              if ((HIDWORD(v81) & 0x80000000) == 0)
              {
                v62 = (HIDWORD(v81) + 10) <= DWORD2(v81);
              }

              if (!v62)
              {
                os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v15);
              }

              if (__CFADD__(v81, SHIDWORD(v81)))
              {
                v21 = (SHIDWORD(v81) >> 63) + 1;
              }

              else
              {
                v21 = SHIDWORD(v81) >> 63;
              }

              if ((v21 << 63 >> 63) ^ v21 | v21 & 1)
              {
                os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v15);
              }

              *(v81 + SHIDWORD(v81)) |= 0x10u;
            }

            if ((*a2 & 0x10) != 0)
            {
              v61 = 0;
              if ((HIDWORD(v81) & 0x80000000) == 0)
              {
                v61 = (HIDWORD(v81) + 10) <= DWORD2(v81);
              }

              if (!v61)
              {
                os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v15);
              }

              if (__CFADD__(v81, SHIDWORD(v81)))
              {
                v22 = (SHIDWORD(v81) >> 63) + 1;
              }

              else
              {
                v22 = SHIDWORD(v81) >> 63;
              }

              if ((v22 << 63 >> 63) ^ v22 | v22 & 1)
              {
                os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v15);
              }

              *(v81 + SHIDWORD(v81)) |= 0x20u;
            }

            if ((*a2 & 0x40) != 0)
            {
              v60 = 0;
              if ((HIDWORD(v81) & 0x80000000) == 0)
              {
                v60 = (HIDWORD(v81) + 10) <= DWORD2(v81);
              }

              if (!v60)
              {
                os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v15);
              }

              if (__CFADD__(v81, SHIDWORD(v81)))
              {
                v23 = (SHIDWORD(v81) >> 63) + 1;
              }

              else
              {
                v23 = SHIDWORD(v81) >> 63;
              }

              if ((v23 << 63 >> 63) ^ v23 | v23 & 1)
              {
                os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v15);
              }

              *(v81 + SHIDWORD(v81)) |= 0x80u;
            }

            v59 = 0;
            if ((HIDWORD(v81) & 0x80000000) == 0)
            {
              v59 = (HIDWORD(v81) + 10) <= DWORD2(v81);
            }

            if (!v59)
            {
              os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v15);
            }

            if (__CFADD__(v81, SHIDWORD(v81)))
            {
              v24 = (SHIDWORD(v81) >> 63) + 1;
            }

            else
            {
              v24 = SHIDWORD(v81) >> 63;
            }

            if ((v24 << 63 >> 63) ^ v24 | v24 & 1)
            {
              os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v15);
            }

            v73 = *(v81 + SHIDWORD(v81) + 5) + 17;
            v72 = IO80211BufferCursor::asIndexablePtr<unsigned char>(&v84, 0, v73);
            if (v72)
            {
              v56 = 0;
              if ((HIDWORD(v81) & 0x80000000) == 0)
              {
                v56 = (HIDWORD(v81) + 10) <= DWORD2(v81);
              }

              if (!v56)
              {
                os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v25);
              }

              if (__CFADD__(v81, SHIDWORD(v81)))
              {
                v28 = (SHIDWORD(v81) >> 63) + 1;
              }

              else
              {
                v28 = SHIDWORD(v81) >> 63;
              }

              if ((v28 << 63 >> 63) ^ v28 | v28 & 1)
              {
                os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v25);
              }

              *(v81 + SHIDWORD(v81) + 6) = a2[4];
              v55 = 0;
              if ((HIDWORD(v81) & 0x80000000) == 0)
              {
                v55 = (HIDWORD(v81) + 10) <= DWORD2(v81);
              }

              if (!v55)
              {
                os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v25);
              }

              if (__CFADD__(v81, SHIDWORD(v81)))
              {
                v29 = (SHIDWORD(v81) >> 63) + 1;
              }

              else
              {
                v29 = SHIDWORD(v81) >> 63;
              }

              if ((v29 << 63 >> 63) ^ v29 | v29 & 1)
              {
                os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v25);
              }

              *(v81 + SHIDWORD(v81) + 7) = a2[5];
              v54 = 0;
              if ((HIDWORD(v81) & 0x80000000) == 0)
              {
                v54 = (HIDWORD(v81) + 10) <= DWORD2(v81);
              }

              if (!v54)
              {
                os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v25);
              }

              if (__CFADD__(v81, SHIDWORD(v81)))
              {
                v30 = (SHIDWORD(v81) >> 63) + 1;
              }

              else
              {
                v30 = SHIDWORD(v81) >> 63;
              }

              if ((v30 << 63 >> 63) ^ v30 | v30 & 1)
              {
                os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v25);
              }

              *(v81 + SHIDWORD(v81) + 8) = a2[6];
              v53 = 0;
              if ((HIDWORD(v81) & 0x80000000) == 0)
              {
                v53 = (HIDWORD(v81) + 10) <= DWORD2(v81);
              }

              if (!v53)
              {
                os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v25);
              }

              if (__CFADD__(v81, SHIDWORD(v81)))
              {
                v31 = (SHIDWORD(v81) >> 63) + 1;
              }

              else
              {
                v31 = SHIDWORD(v81) >> 63;
              }

              if ((v31 << 63 >> 63) ^ v31 | v31 & 1)
              {
                os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v25);
              }

              *(v81 + SHIDWORD(v81) + 9) = a2[7];
              v52 = 0;
              if ((HIDWORD(v81) & 0x80000000) == 0)
              {
                v52 = (HIDWORD(v81) + 10) <= DWORD2(v81);
              }

              if (!v52)
              {
                os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v25);
              }

              if (__CFADD__(v81, SHIDWORD(v81)))
              {
                v32 = (SHIDWORD(v81) >> 63) + 1;
              }

              else
              {
                v32 = SHIDWORD(v81) >> 63;
              }

              if ((v32 << 63 >> 63) ^ v32 | v32 & 1)
              {
                os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v25);
              }

              *(v81 + SHIDWORD(v81) + 10) = a2[8];
              v51 = 0;
              if ((HIDWORD(v81) & 0x80000000) == 0)
              {
                v51 = (HIDWORD(v81) + 10) <= DWORD2(v81);
              }

              if (!v51)
              {
                os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v25);
              }

              if (__CFADD__(v81, SHIDWORD(v81)))
              {
                v33 = (SHIDWORD(v81) >> 63) + 1;
              }

              else
              {
                v33 = SHIDWORD(v81) >> 63;
              }

              if ((v33 << 63 >> 63) ^ v33 | v33 & 1)
              {
                os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v25);
              }

              *(v81 + SHIDWORD(v81) + 11) = a2[9];
              v50 = 0;
              if ((HIDWORD(v81) & 0x80000000) == 0)
              {
                v50 = (HIDWORD(v81) + 10) <= DWORD2(v81);
              }

              if (!v50)
              {
                os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v25);
              }

              if (__CFADD__(v81, SHIDWORD(v81)))
              {
                v34 = (SHIDWORD(v81) >> 63) + 1;
              }

              else
              {
                v34 = SHIDWORD(v81) >> 63;
              }

              if ((v34 << 63 >> 63) ^ v34 | v34 & 1)
              {
                os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v25);
              }

              *(v81 + SHIDWORD(v81) + 12) = a2[10];
              v49 = 0;
              if ((HIDWORD(v81) & 0x80000000) == 0)
              {
                v49 = (HIDWORD(v81) + 10) <= DWORD2(v81);
              }

              if (!v49)
              {
                os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v25);
              }

              if (__CFADD__(v81, SHIDWORD(v81)))
              {
                v35 = (SHIDWORD(v81) >> 63) + 1;
              }

              else
              {
                v35 = SHIDWORD(v81) >> 63;
              }

              if ((v35 << 63 >> 63) ^ v35 | v35 & 1)
              {
                os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v25);
              }

              *(v81 + SHIDWORD(v81) + 13) = a2[11];
              v48 = 0;
              if ((HIDWORD(v81) & 0x80000000) == 0)
              {
                v48 = (HIDWORD(v81) + 10) <= DWORD2(v81);
              }

              if (!v48)
              {
                os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v25);
              }

              if (__CFADD__(v81, SHIDWORD(v81)))
              {
                v36 = (SHIDWORD(v81) >> 63) + 1;
              }

              else
              {
                v36 = SHIDWORD(v81) >> 63;
              }

              if ((v36 << 63 >> 63) ^ v36 | v36 & 1)
              {
                os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v25);
              }

              *(v81 + SHIDWORD(v81) + 14) = a2[12];
              v47 = 0;
              if ((HIDWORD(v81) & 0x80000000) == 0)
              {
                v47 = (HIDWORD(v81) + 10) <= DWORD2(v81);
              }

              if (!v47)
              {
                os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v25);
              }

              if (__CFADD__(v81, SHIDWORD(v81)))
              {
                v37 = (SHIDWORD(v81) >> 63) + 1;
              }

              else
              {
                v37 = SHIDWORD(v81) >> 63;
              }

              if ((v37 << 63 >> 63) ^ v37 | v37 & 1)
              {
                os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v25);
              }

              *(v81 + SHIDWORD(v81) + 15) = a2[13];
              v46 = 0;
              if ((HIDWORD(v81) & 0x80000000) == 0)
              {
                v46 = (HIDWORD(v81) + 10) <= DWORD2(v81);
              }

              if (!v46)
              {
                os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v25);
              }

              if (__CFADD__(v81, SHIDWORD(v81)))
              {
                v38 = (SHIDWORD(v81) >> 63) + 1;
              }

              else
              {
                v38 = SHIDWORD(v81) >> 63;
              }

              if ((v38 << 63 >> 63) ^ v38 | v38 & 1)
              {
                os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v25);
              }

              *(v81 + SHIDWORD(v81) + 16) = a2[14];
              v45 = *(*(a1 + 6) + 8);
              v39 = txPayload(v72, v73);
              v78[1] = v40;
              v78[0] = v39;
              v75 = AppleBCMWLANCommander::runIOVarSet(v45, "vndr_ie", v78, 0, 0);
              if (v75)
              {
                if (AppleBCMWLANWnmAdapter::getLogger(a1))
                {
                  AppleBCMWLANWnmAdapter::getLogger(a1);
                  if (CCLogStream::shouldLog())
                  {
                    v44 = AppleBCMWLANWnmAdapter::getLogger(a1);
                    v41 = (*(***(a1 + 6) + 112))(**(a1 + 6), v75);
                    CCLogStream::logCrit(v44, "[dk] %s@%d: vndr_ie error %s - failed to add IE\n", "addAppleDeviceIE", 1303, v41);
                  }
                }

                v76 = v75;
              }
            }

            else
            {
              if (AppleBCMWLANWnmAdapter::getLogger(a1))
              {
                AppleBCMWLANWnmAdapter::getLogger(a1);
                if (CCLogStream::shouldLog())
                {
                  v57 = AppleBCMWLANWnmAdapter::getLogger(a1);
                  v58 = 0;
                  if ((HIDWORD(v81) & 0x80000000) == 0)
                  {
                    v58 = (HIDWORD(v81) + 10) <= DWORD2(v81);
                  }

                  if (!v58)
                  {
                    os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator->: Accessing a member through this pointer would access memory outside of the bounds set originally", v26);
                  }

                  if (__CFADD__(v81, SHIDWORD(v81)))
                  {
                    v27 = (SHIDWORD(v81) >> 63) + 1;
                  }

                  else
                  {
                    v27 = SHIDWORD(v81) >> 63;
                  }

                  if ((v27 << 63 >> 63) ^ v27 | v27 & 1)
                  {
                    os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v26);
                  }

                  CCLogStream::logCrit(v57, "[dk] %s@%d: Insufficient space, payloadSize[%zu], sizeof(vndr_ie_setbuf_t)[%zu], len[%u]\n", "addAppleDeviceIE", 1281, v73, 0x12uLL, *(v81 + SHIDWORD(v81) + 5));
                }
              }

              v76 = -536870911;
            }
          }
        }

        else
        {
          if (AppleBCMWLANWnmAdapter::getLogger(a1))
          {
            AppleBCMWLANWnmAdapter::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              v14 = AppleBCMWLANWnmAdapter::getLogger(a1);
              CCLogStream::logCrit(v14, "[dk] %s@%d: Invalid argument, asType size[%zu], trim size[%zu]\n", "addAppleDeviceIE", 1228, 0xAuLL, 8uLL);
            }
          }

          v76 = -536870911;
        }
      }

      else
      {
        if (AppleBCMWLANWnmAdapter::getLogger(a1))
        {
          AppleBCMWLANWnmAdapter::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            v9 = AppleBCMWLANWnmAdapter::getLogger(a1);
            CCLogStream::logCrit(v9, "[dk] %s@%d: Invalid argument, asType size[%zu]\n", "addAppleDeviceIE", 1222, 0x12uLL);
          }
        }

        v76 = -536870911;
      }
    }

    else
    {
      if (AppleBCMWLANWnmAdapter::getLogger(a1))
      {
        AppleBCMWLANWnmAdapter::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          v5 = AppleBCMWLANWnmAdapter::getLogger(a1);
          CCLogStream::logCrit(v5, "[dk] %s@%d: Invalid cursor\n", "addAppleDeviceIE", 1219);
        }
      }

      v76 = -536870911;
    }

    IO80211BufferCursor::~IO80211BufferCursor(&v84);
  }

  if (AppleBCMWLANWnmAdapter::getLogger(a1))
  {
    AppleBCMWLANWnmAdapter::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      v42 = AppleBCMWLANWnmAdapter::getLogger(a1);
      CCLogStream::logAlert(v42, "[dk] %s@%d:WnmAgent: Leave %s \n", "addAppleDeviceIE", 1308, "addAppleDeviceIE");
    }
  }

  AppleBCMWLANUtil::AutoreleasedBuffer::~AutoreleasedBuffer(v86);
  return v76;
}