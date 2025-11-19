uint64_t RTCPGetSummaryReportBlock(uint64_t a1, uint64_t a2, int a3)
{
  v98 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    if (v5[23].i32[1])
    {
      if (v5[875].i32[1])
      {
        v7 = v5[607].i32[0];
        v8 = (v7 - a3) & ~((v7 - a3) >> 31);
        v5[607].i32[1] = v8;
        v9 = v5[606].i32[0];
        *(a2 + 12) = v9;
        v10 = v9 + v8 + 1;
        *(a2 + 14) = v10;
        v11 = v9;
        v12 = ~v9 + v10;
        if (v9)
        {
          v13 = 0;
        }

        else if (v5[89].i32[1] == 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = -1;
        }

        v15 = v10;
        v16 = 0;
        if ((v12 & 0x80000000) == 0)
        {
          if (v12 >= 320)
          {
            v12 = 320;
          }

          v17 = v12 + 1;
          do
          {
            v9 &= 0x3FFu;
            v18 = v5[89].u32[v9 + 1];
            if (v18)
            {
              v19 = v18 >= v11;
            }

            else
            {
              v19 = 0;
            }

            if (!v19)
            {
              ++v16;
            }

            LOWORD(v9) = v9 + 1;
            --v17;
          }

          while (v17);
        }

        v20 = v5 + 849;
        v21 = v5[874].u32[1];
        v22 = v5[849].u32[v21];
        if (v22)
        {
          v23 = v22 >= v15;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = 0;
          do
          {
            v20->i32[v21] = 0;
            ++v24;
            LODWORD(v21) = (v5[874].i32[1] + 1) % 0x32u;
            v5[874].i32[1] = v21;
            v25 = v20->u32[v21];
            if (v25)
            {
              v26 = v25 >= v15;
            }

            else
            {
              v26 = 1;
            }
          }

          while (!v26);
        }

        *a2 = 257;
        *(a2 + 16) = v16 + v13;
        *(a2 + 20) = v24;
        *(a2 + 8) = v5[604].i32[0];
        *(a2 + 2) = 1;
        if (v5[1].i32[1])
        {
          v27 = 2;
        }

        else
        {
          v27 = 1;
        }

        *(a2 + 4) = v27;
        v28 = v5[606].u32[1];
        if ((v7 + 1) % 0x140u == v28)
        {
          _RTCPGetMeanAndStandardDeviationOfJitter(v5, a2, 0);
          v29 = 0;
        }

        else
        {
          _RTCPGetMeanAndStandardDeviationOfJitter(v5, a2, v28);
          v29 = v6[606].u32[1];
        }

        v30 = v6[607].u32[1];
        if (v30 > 0x13F || (LOBYTE(v31) = -2, v30 - v29 > 0x7FFFFFFE))
        {
          v34 = 0;
          *(a2 + 42) = 0;
          v35 = 43;
        }

        else
        {
          v19 = v30 >= v29;
          v32 = v30 - v29;
          if (v19)
          {
            v36 = 0;
            v37 = 0;
            v38 = v29;
            v39 = v32 + 1;
            v40 = &v6[769] + v29;
            do
            {
              v41 = *v40;
              if (*v40)
              {
                ++v36;
                v37 += v41;
                if (v6[810].u8[0] < v41)
                {
                  LOBYTE(v41) = v6[810].i8[0];
                }

                v6[810].i8[0] = v41;
                v42 = v6[810].u8[1];
                if (v42 <= *v40)
                {
                  LOBYTE(v42) = *v40;
                }

                v6[810].i8[1] = v42;
              }

              ++v40;
              --v39;
            }

            while (v39);
            v43 = v36;
            v31 = (v37 / v36);
            v44 = v32 + 1;
            v45 = &v6[769] + v38;
            v46 = 0.0;
            do
            {
              if (*v45)
              {
                v46 = v46 + (*v45 - v31) * (*v45 - v31);
                *v45 = 0;
              }

              ++v45;
              --v44;
            }

            while (v44);
            v33 = v46 / v43;
          }

          else
          {
            v33 = NAN;
          }

          *(a2 + 43) = llround(sqrt(v33));
          *(a2 + 42) = v31;
          *(a2 + 40) = v6[810].i8[0];
          v34 = v6[810].i8[1];
          v35 = 41;
        }

        *(a2 + v35) = v34;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v47 = VRTraceErrorLogLevelToCSTR();
          v48 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v49 = *(a2 + 12);
            v50 = *(a2 + 14);
            v51 = *(a2 + 24);
            v52 = *(a2 + 28);
            v53 = *(a2 + 32);
            v54 = *(a2 + 36);
            v55 = *(a2 + 42);
            v56 = *(a2 + 43);
            v57 = *(a2 + 40);
            v58 = *(a2 + 41);
            v59 = *(a2 + 16);
            v60 = *(a2 + 20);
            v61 = v6[88].i32[0];
            v66 = 136318978;
            v67 = v47;
            v68 = 2080;
            v69 = "_RTCPGetSummaryReportBlock";
            v70 = 1024;
            v71 = 143;
            v72 = 1024;
            v73 = v49;
            v74 = 1024;
            v75 = v50;
            v76 = 1024;
            v77 = v51;
            v78 = 1024;
            v79 = v52;
            v80 = 1024;
            v81 = v53;
            v82 = 1024;
            v83 = v54;
            v84 = 1024;
            v85 = v55;
            v86 = 1024;
            v87 = v56;
            v88 = 1024;
            v89 = v57;
            v90 = 1024;
            v91 = v58;
            v92 = 1024;
            v93 = v59;
            v94 = 1024;
            v95 = v60;
            v96 = 1024;
            v97 = v61;
            _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTCP XR Summary report Start sequence=%d End sequence=%d minJitter=%d maxJitter=%d meanJitter=%d stdevJitter=%d meanHopLimt=%d devHopLimit=%d minHopLimt=%d maxHopLimit=%d lostPackets=%d duplicatePackets=%d dwPacketsRecv=%d", &v66, 0x6Au);
          }
        }

        v62 = v6[607].i32[1];
        v6[606].i32[0] += v62 + 1;
        v6[605].i32[1] = v6[605].i32[0];
        v63 = (v6[607].i32[0] - v62) & ~((v6[607].i32[0] - v62) >> 31);
        memmove(&v6[609], &v6[609] + 4 * (v62 + 1), 4 * v63);
        v64 = (v6[607].i32[1] + 1);
        memcpy(&v6[769], &v6[769] + v64, v63);
        bzero(&v6[769] + v64, v63);
        v14 = 0;
        *(&v6[606] + 4) = 0;
        v6[809] = vneg_f32(0xFFFFFFFFLL);
        v6[810].i16[0] = 255;
        goto LABEL_60;
      }

      RTCPGetSummaryReportBlock_cold_1(&v66);
    }

    else
    {
      RTCPGetSummaryReportBlock_cold_2(&v66);
    }

    v14 = v66;
LABEL_60:
    CheckOutHandleDebug();
    return v14;
  }

  return 2147549186;
}

uint64_t _RTCPGetMeanAndStandardDeviationOfJitter(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *(result + 4860);
  v4 = v3 - a3;
  if (v3 > 0x13F || v4 > 0x7FFFFFFE)
  {
    v6 = 0;
    *(a2 + 32) = 0;
    v7 = 36;
  }

  else
  {
    v8 = v4 + 1;
    v9.f64[0] = 0.0;
    v10 = 0.0;
    v11 = v3 >= a3;
    v12 = v3 - a3;
    if (v11)
    {
      v13 = 0;
      v14 = *(result + 6472);
      v15 = *(result + 6476);
      v16 = (result + 4 * a3 + 4872);
      v17 = v12 + 1;
      do
      {
        v18 = *v16;
        v13 += v18;
        if (v14 >= v18)
        {
          v14 = *v16;
        }

        *(result + 6472) = v14;
        v20 = *v16++;
        v19 = v20;
        if (v15 <= v20)
        {
          v15 = v19;
        }

        *(result + 6476) = v15;
        --v17;
      }

      while (v17);
      v21 = (result + 4 * a3 + 4872);
      v22 = v12 + 1;
      v10 = 0.0;
      v23 = v13 / v8;
      do
      {
        v24 = *v21++;
        v10 = v10 + (v24 - v23) * (v24 - v23);
        --v22;
      }

      while (v22);
      v9.f64[0] = v23;
    }

    v25 = *(result + 27792);
    v9.f64[1] = sqrt(v10 / v8);
    *(a2 + 32) = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_n_f64(v9, v25))));
    *(a2 + 24) = llround(v25 * *(result + 6472));
    v6 = llround(v25 * *(result + 6476));
    v7 = 28;
  }

  *(a2 + v7) = v6;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x1Cu);
}

double machTimeScale()
{
  if ((_MergedGlobals & 1) == 0)
  {
    machTimeScale_cold_1();
  }

  return *&qword_1EDBDA838;
}

uint64_t VCUniqueIDGenerator_GenerateID()
{
  result = _VCUniqueIDGenerator_GenerateIDInternal();
  if (!result)
  {

    return _VCUniqueIDGenerator_GenerateIDInternal();
  }

  return result;
}

uint64_t _VCUniqueIDGenerator_GenerateIDInternal()
{
  if (_VCUniqueIDGenerator_GenerateIDInternal_onceToken != -1)
  {
    _VCUniqueIDGenerator_GenerateIDInternal_cold_1();
  }

  pthread_mutex_lock(&generateIDLock);
  currentID += 1 + (((currentID + 1) / 0x7FFFFFFFu) | (((currentID + 1) / 0x7FFFFFFFu) << 31));
  v0 = currentID;
  pthread_mutex_unlock(&generateIDLock);
  return v0;
}

uint64_t WRMInitialize(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0u;
  v3 = (a1 + 128);
  *(a1 + 16) = 50;
  *(a1 + 8) = a2;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v6.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v6, 0);
  tv_sec = v6.tv_sec;
  srand(v6.tv_sec);
  *(a1 + 64) = arc4random() | (tv_sec << 32);
  result = pthread_mutex_init(v3, 0);
  *a1 = 1;
  return result;
}

uint64_t WRMUninitialize(uint64_t result)
{
  if (*result == 1)
  {
    v1 = result;
    result = pthread_mutex_destroy((result + 128));
    *v1 = 0;
  }

  return result;
}

uint64_t WRMSetReportingCallback(uint64_t result, uint64_t a2, __int128 *a3)
{
  if (result)
  {
    v3 = result;
    if (*result == 1)
    {
      pthread_mutex_lock((result + 128));
      *(v3 + 96) = a2;
      if (a3)
      {
        v6 = *a3;
        *(v3 + 120) = *(a3 + 2);
        *(v3 + 104) = v6;
      }

      return pthread_mutex_unlock((v3 + 128));
    }
  }

  return result;
}

uint64_t WRMSetCallId(uint64_t result, uint64_t a2)
{
  if (result && a2 && (*result & 1) != 0)
  {
    *(result + 64) = a2;
  }

  return result;
}

uint64_t WRMIncrementTime(uint64_t result)
{
  if (result)
  {
    ++*(result + 20);
  }

  return result;
}

uint64_t WRMGenerateReport(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != 1)
  {
    return 0;
  }

  v2 = *(a1 + 20);
  if (v2 % *(a1 + 16))
  {
    return 0;
  }

  *(a2 + 168) = *(a1 + 64);
  *a2 = v2;
  v5 = *(a1 + 256);
  *&v6 = v5;
  *(&v6 + 1) = HIDWORD(v5);
  *(a2 + 264) = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 60);
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  v9 = v7 - v8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 36);
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  *(a2 + 64) = v10 - v11;
  v12 = *(a1 + 48);
  LODWORD(v9) = *(a1 + 52);
  LODWORD(v11) = *(a1 + 192);
  v13 = *(a1 + 196);
  v14 = *(a1 + 44);
  *(a2 + 72) = *(a1 + 40);
  *(a2 + 80) = (v9 * 1000.0 / v11);
  v15 = v2 - v14;
  v16 = 100 * *(a1 + 88);
  v17 = *(a1 + 24);
  *&v6 = v17;
  *(&v6 + 1) = HIDWORD(v17);
  *(a2 + 8) = v6;
  v18 = *(a1 + 240);
  v19 = *(a1 + 248);
  *&v6 = v18;
  *(&v6 + 1) = HIDWORD(v18);
  *(a2 + 232) = v6;
  *&v6 = v19;
  *(&v6 + 1) = HIDWORD(v19);
  *(a2 + 248) = v6;
  *(a2 + 96) = v16 >> 8;
  *(a2 + 104) = v15;
  *(a2 + 128) = v15;
  *(a2 + 136) = v12;
  *(a2 + 144) = v15;
  *(a2 + 112) = v13;
  *(a2 + 120) = ((1000 * v9) >> 4) / v11;
  *(a2 + 152) = *(a1 + 72);
  v3 = 1;
  if (*(a1 + 200))
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  *(a2 + 176) = v20;
  v21 = *(a1 + 204);
  *&v22 = v21;
  *(&v22 + 1) = HIDWORD(v21);
  *(a2 + 184) = v22;
  v23 = *(a1 + 212);
  *&v22 = v23;
  *(&v22 + 1) = HIDWORD(v23);
  *(a2 + 200) = v22;
  v24 = *(a1 + 224);
  *(a2 + 216) = *(a1 + 220) == 0;
  *(a2 + 224) = v24;
  return v3;
}

uint64_t WRMSubmitReport(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*result == 1)
    {
      pthread_mutex_lock((result + 128));
      v4 = *(v2 + 96);
      if (v4)
      {
        v6 = *(v2 + 104);
        v5 = *(v2 + 112);
        v7 = *(v2 + 120);
        if (v5 && v6)
        {
          v5(v6);
        }

        pthread_mutex_unlock((v2 + 128));
        result = v4(v6, a2);
        if (v7 && v6)
        {

          return v7(v6);
        }
      }

      else
      {

        return pthread_mutex_unlock((v2 + 128));
      }
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4()
{
  *v2 = 0;
  *v1 = 0;
  *v0 = 0;
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void OUTLINED_FUNCTION_17(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void OUTLINED_FUNCTION_26(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x1Cu);
}

BOOL OUTLINED_FUNCTION_28()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_31()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_34()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_35()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_39()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_40()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void PowerMeter::PowerMeter(PowerMeter *this)
{
  *this = 0;
  *(this + 2) = 0x3F789374BC6A7EFALL;
  *(this + 4) = 0x3F90624DD2F1A9FCLL;
  *(this + 7) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0xFFFFFFFFLL;
  *(this + 12) = 0;
}

void PowerMeter::SetSampleRate(PowerMeter *this, double a2)
{
  *this = a2;
  *(this + 1) = CalcDecayConstant(2.5, a2);
  *(this + 3) = CalcDecayConstant(1.24, a2);
}

uint64_t _VCFECGeneratorFrameBased_PerformTryEncode()
{
  v51 = *MEMORY[0x1E69E9840];
  v0 = micro();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v3 = (DerivedStorage + 12328960);
  if (!DerivedStorage)
  {
    _VCFECGeneratorFrameBased_PerformTryEncode_cold_10();
    goto LABEL_58;
  }

  if (*(DerivedStorage + 12331752) == -1)
  {
    _VCFECGeneratorFrameBased_PerformTryEncode_cold_9();
    goto LABEL_58;
  }

  v4 = VCSingleLinkedListPop((DerivedStorage + 8));
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v7 = v5[2];
      *(v2 + 8320 + 8 * v6) = v7;
      *(v2 + 12331760 + 2 * v6) = CMBlockBufferGetDataLength(v7);
      VCMemoryPool_Free(*v2, v5);
      ++v6;
      v5 = VCSingleLinkedListPop((v2 + 8));
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v8 = v2 + 12333808;
  bzero((v2 + 12333808), 0x800uLL);
  v9 = xmmword_1DBD45330;
  v10 = -8192;
  v11 = vdupq_n_s64(v2 + 41088);
  v12 = vdupq_n_s64(2uLL);
  do
  {
    v13.i64[0] = 12000 * v9.i64[0];
    v13.i64[1] = 12000 * v9.i64[1];
    *(v2 + v10 + 41088) = vaddq_s64(v11, v13);
    v9 = vaddq_s64(v9, v12);
    v10 += 16;
  }

  while (v10);
  if (v6 == 1)
  {
    v14 = VCFECGeneratorCommon_Encode_PrepareOutputSinglePacketFrame(v2);
    if ((v14 & 0x80000000) != 0)
    {
      _VCFECGeneratorFrameBased_PerformTryEncode_cold_8();
LABEL_58:
      v14 = *buf;
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  *&v43 = 1.0;
  v42 = 0;
  ParityPacketsCount = VCFECGeneratorCommon_GetParityPacketsCount(v2, v6, &v43, 223);
  if (v6 > 0x400u || (v16 = ParityPacketsCount, ParityPacketsCount < 1))
  {
    if (v6 >= 0x401u && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCFECGeneratorFrameBased_PerformTryEncode_cold_1(v18);
      }
    }

    v17 = v42;
  }

  else
  {
    *&buf[8] = 0xAAAAAAAAAAAAAAAALL;
    *buf = v3[349];
    *&buf[8] = v6;
    *&buf[10] = ParityPacketsCount;
    *&buf[16] = v2 + 8320;
    v45 = (v2 + 12331760);
    v46 = 0;
    *v47 = 0;
    if ((VCWRSFrame_Create(*MEMORY[0x1E695E480], v3 + 348, buf) & 0x80000000) != 0)
    {
      _VCFECGeneratorFrameBased_PerformTryEncode_cold_7();
      goto LABEL_61;
    }

    if ((VCWRSFECEncoder_Enqueue(v3[347], v3[348]) & 0x80000000) != 0)
    {
      _VCFECGeneratorFrameBased_PerformTryEncode_cold_6();
      goto LABEL_61;
    }

    VCWRS_Encode(v3[347], v2 + 32896, v2 + 12333808, &v42, v2 + 12329088);
    v17 = v42;
    if (v16 != v42)
    {
      _VCFECGeneratorFrameBased_PerformTryEncode_cold_2();
LABEL_61:
      v14 = *v48;
      goto LABEL_43;
    }
  }

  v19 = *&v43;
  *v48 = -22013;
  *&v48[2] = 0;
  v50 = 0;
  v49 = 0;
  if (v17)
  {
    v48[0] = *(v2 + 88) & 3;
    VCFECHeader_SetNumberOfParityPackets(v48, v17);
  }

  if (v6)
  {
    v20 = 1040;
    while (1)
    {
      _VCFECGeneratorFrameBased_FillHeaderVersionSpecific(v2, v48, (v20 - 1040), 0);
      v21 = *v2;
      v22 = *(v2 + 8 * v20);
      v23 = *(v2 + 76);
      *(v2 + 76) = v23 + 1;
      if (VCFECPacketList_AllocateAndPush(v21, v22, v23, v2 + 40, v48))
      {
        break;
      }

      _VCFECGeneratorCommon_UpdateOutputMediaPackets(v2, v2 + 40, 1, 1);
      if (++v20 - v6 == 1040)
      {
        goto LABEL_30;
      }
    }

    _VCFECGeneratorFrameBased_PerformTryEncode_cold_3();
  }

  else
  {
LABEL_30:
    v40 = v6;
    v41 = v3;
    if (!v17)
    {
LABEL_39:
      v3 = v41;
      v32 = v41[348];
      if (v32)
      {
        CFRelease(v32);
        v41[348] = 0;
      }

      v14 = 0;
LABEL_42:
      v3[349] = -1;
      VCFECGeneratorCommon_UpdateProcessingAverageTime(v2, v0);
      goto LABEL_43;
    }

    v24 = 0;
    v25 = v19;
    while (1)
    {
      if (*(v8 + 2 * v24))
      {
        _VCFECGeneratorFrameBased_FillHeaderVersionSpecific(v2, v48, v24, 1);
        blockBufferOut = (v2 + 16512 + 8 * v24);
        v27 = CMBlockBufferCreateWithMemoryBlock(*(v2 + 104), 0, 0x5DCuLL, *(v2 + 96), 0, 0, *(v8 + 2 * v24), 1u, blockBufferOut);
        if (v27)
        {
          v36 = v27;
          v3 = v41;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v37 = VRTraceErrorLogLevelToCSTR();
            v38 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v39 = *(v8 + 2 * v24);
              *buf = 136316930;
              *&buf[4] = v37;
              *&buf[12] = 2080;
              *&buf[14] = "_VCFECGeneratorFrameBased_Encode_PrepareOutput";
              *&buf[22] = 1024;
              LODWORD(v45) = 158;
              WORD2(v45) = 1024;
              *(&v45 + 6) = v36;
              WORD5(v45) = 1024;
              HIDWORD(v45) = v24;
              LOWORD(v46) = 1024;
              *(&v46 + 2) = v39;
              HIWORD(v46) = 1024;
              *v47 = v40;
              *&v47[4] = 1024;
              *&v47[6] = v17;
              _os_log_error_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failure allocating output buffer status=%d parityPacketSizeArray[%d]=%d inputPacketCount=%d parityPacketsCount=%d", buf, 0x3Au);
            }
          }

          goto LABEL_49;
        }

        CMBlockBufferReplaceDataBytes(*(v2 + 32896 + 8 * v24), *blockBufferOut, 0, *(v8 + 2 * v24));
        if (v25 >= 1)
        {
          break;
        }
      }

LABEL_38:
      if (++v24 == v17)
      {
        goto LABEL_39;
      }
    }

    v28 = 0;
    while (1)
    {
      v29 = *v2;
      v30 = *blockBufferOut;
      v31 = *(v2 + 76);
      *(v2 + 76) = v31 + 1;
      if (VCFECPacketList_AllocateAndPush(v29, v30, v31, v2 + 40, v48))
      {
        break;
      }

      _VCFECGeneratorCommon_UpdateOutputMediaPackets(v2, v2 + 40, 0, 1);
      if (v25 <= ++v28)
      {
        goto LABEL_38;
      }
    }

    _VCFECGeneratorFrameBased_PerformTryEncode_cold_4();
    v3 = v41;
  }

LABEL_49:
  v14 = 2150825985;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v35 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCFECGeneratorFrameBased_PerformTryEncode_cold_5(v35);
    }
  }

LABEL_43:
  VCFECGeneratorCommon_Encode_CleanBlockBuffers(v2);
  if (v2)
  {
    if ((v14 & 0x80000000) != 0)
    {
      v33 = v3[348];
      if (v33)
      {
        CFRelease(v33);
        v3[348] = 0;
      }
    }
  }

  return v14;
}

uint64_t _VCFECGeneratorFrameBased_FlushPackets()
{
  v0 = micro();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    VCFECGeneratorCommon_FlushPackets(DerivedStorage);
    VCFECGeneratorCommon_UpdateProcessingAverageTime(v2, v0);
    return 0;
  }

  else
  {
    _VCFECGeneratorFrameBased_FlushPackets_cold_1();
    return v4;
  }
}

uint64_t _VCFECGeneratorFrameBased_PassThrough()
{
  v0 = micro();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    VCFECGeneratorCommon_PassThrough(DerivedStorage);
    VCFECGeneratorCommon_UpdateProcessingAverageTime(v2, v0);
    return 0;
  }

  else
  {
    _VCFECGeneratorFrameBased_PassThrough_cold_1();
    return v4;
  }
}

uint64_t VCFECGeneratorFrameBased_Create(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, const void *a5, const void *a6, const void *a7)
{
  v20 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (a2)
  {
    if (a3 <= 1)
    {
      VCFECGeneratorFrameBased_Create_cold_4();
    }

    else
    {
      ClassID = VCFECGeneratorGetClassID();
      if ((VCFBOUtils_ObjectCreate(a1, &cf, &kVCFECGeneratorFrameBasedVTable, ClassID, 51) & 0x80000000) != 0)
      {
        VCFECGeneratorFrameBased_Create_cold_3();
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *(DerivedStorage + 12331752) = -1;
        if ((VCFECGeneratorCommon_Init(cf, DerivedStorage, a3, a4, a5, a6, a7) & 0x80000000) != 0)
        {
          VCFECGeneratorFrameBased_Create_cold_2();
        }

        else
        {
          v16 = VCWRSFECEncoder_Create(a1, (DerivedStorage + 12331736), 1);
          if ((v16 & 0x80000000) == 0)
          {
            *a2 = cf;
            return v16;
          }

          VCFECGeneratorFrameBased_Create_cold_1();
        }
      }
    }
  }

  else if (VCFECGeneratorFrameBased_Create_cold_5(&v19))
  {
    return 2150825985;
  }

  v16 = v19;
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

void _VCFECGeneratorFrameBased_FillHeaderVersionSpecific(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v5 = (a1 + 88);
  v4 = *(a1 + 88);
  if (v4 < 2 || v4 == 3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCFECGeneratorFrameBased_FillHeaderVersionSpecific_cold_1(v7, v5, v8);
      }
    }
  }

  else if (v4 == 2)
  {
    VCFECHeader_SetIsParityPacket(a2, a4);
    VCFECHeader_SetPosition(a2, a3);
    if (a4)
    {
      VCFECHeader_SetRedundantBitsForPayloadSize(a2, *(a1 + 2 * a3 + 12329088));
      v13 = *(a1 + 80);
      *(a1 + 80) = v13 + 1;

      VCFECHeader_SetParitySequenceNum(a2, v13);
    }
  }
}

void _VCFECGeneratorFrameBased_Finalize(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "_VCFECGeneratorFrameBased_Finalize";
      v10 = 1024;
      v11 = 89;
      v12 = 2048;
      v13 = a1;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", &v6, 0x26u);
    }
  }

  v5 = *(DerivedStorage + 12331736);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 12331736) = 0;
  }

  VCFECGeneratorCommon_Finalize(DerivedStorage);
}

uint64_t _VCFECGeneratorFrameBased_SetFrameSequenceNumber(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v4 = DerivedStorage;
    result = 0;
    *(v4 + 12331752) = a2;
  }

  else
  {
    _VCFECGeneratorFrameBased_SetFrameSequenceNumber_cold_1();
    return v6;
  }

  return result;
}

void OUTLINED_FUNCTION_6_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

uint64_t VCMediaNegotiationBlobMultiwayVideoStreamReadFrom(uint64_t a1, void *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v70 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v70 & 0x7F) << v5;
        if ((v70 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          while (1)
          {
            v70 = 0;
            v15 = [a2 position] + 1;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v70 & 0x7F) << v12;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v17 = v13++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__ssrc;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__ssrc;
          goto LABEL_150;
        case 2u:
          v48 = 0;
          v49 = 0;
          v14 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            v70 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v70 & 0x7F) << v48;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v17 = v49++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__maxNetworkBitrate;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__maxNetworkBitrate;
          goto LABEL_150;
        case 3u:
          v36 = 0;
          v37 = 0;
          v14 = 0;
          while (1)
          {
            v70 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v70 & 0x7F) << v36;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v17 = v37++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__payload;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__payload;
          goto LABEL_150;
        case 4u:
          v40 = 0;
          v41 = 0;
          v14 = 0;
          while (1)
          {
            v70 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v70 & 0x7F) << v40;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v17 = v41++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__streamID;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__streamID;
          goto LABEL_150;
        case 5u:
          v24 = 0;
          v25 = 0;
          v14 = 0;
          *(a1 + 60) |= 8u;
          while (1)
          {
            v70 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v70 & 0x7F) << v24;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v17 = v25++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__metadata;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__metadata;
          goto LABEL_150;
        case 6u:
          v52 = 0;
          v53 = 0;
          v14 = 0;
          while (1)
          {
            v70 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v70 & 0x7F) << v52;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v17 = v53++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__qualityIndex;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__qualityIndex;
          goto LABEL_150;
        case 7u:
          v56 = 0;
          v57 = 0;
          v14 = 0;
          while (1)
          {
            v70 = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v70 & 0x7F) << v56;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v17 = v57++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__supportedVideoFormats;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__supportedVideoFormats;
          goto LABEL_150;
        case 8u:
          v44 = 0;
          v45 = 0;
          v14 = 0;
          while (1)
          {
            v70 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v70 & 0x7F) << v44;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v17 = v45++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__frameRate;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__frameRate;
          goto LABEL_150;
        case 9u:
          v64 = 0;
          v65 = 0;
          v14 = 0;
          while (1)
          {
            v70 = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v70 & 0x7F) << v64;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v17 = v65++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__keyFrameInterval;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__keyFrameInterval;
          goto LABEL_150;
        case 0xAu:
          v32 = 0;
          v33 = 0;
          v14 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            v70 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v70 & 0x7F) << v32;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v17 = v33++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__maxMediaBitrate;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__maxMediaBitrate;
          goto LABEL_150;
        case 0xBu:
          v60 = 0;
          v61 = 0;
          v14 = 0;
          *(a1 + 60) |= 4u;
          while (1)
          {
            v70 = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v70 & 0x7F) << v60;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v17 = v61++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__maxPacketsPerSecond;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__maxPacketsPerSecond;
          goto LABEL_150;
        case 0xCu:
          v20 = 0;
          v21 = 0;
          v14 = 0;
          *(a1 + 60) |= 0x20u;
          while (1)
          {
            v70 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v70 & 0x7F) << v20;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v17 = v21++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__repairedStreamID;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__repairedStreamID;
          goto LABEL_150;
        case 0xDu:
          v28 = 0;
          v29 = 0;
          v14 = 0;
          *(a1 + 60) |= 0x10u;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_154;
          }

          return 0;
      }

      while (1)
      {
        v70 = 0;
        v30 = [a2 position] + 1;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v14 |= (v70 & 0x7F) << v28;
        if ((v70 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v17 = v29++ > 8;
        if (v17)
        {
          v18 = 0;
          v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__repairedMaxNetworkBitrate;
          goto LABEL_153;
        }
      }

      v19 = &OBJC_IVAR___VCMediaNegotiationBlobMultiwayVideoStream__repairedMaxNetworkBitrate;
LABEL_150:
      v18 = [a2 hasError] ? 0 : v14;
LABEL_153:
      *(a1 + *v19) = v18;
LABEL_154:
      v68 = [a2 position];
    }

    while (v68 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void _VCAudioManager_ProcessEventQueue(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = 0.0;
  if (VRTraceIsInternalOSInstalled())
  {
    v2 = micro();
  }

  v3 = CMSimpleQueueDequeue(*(a1 + 80));
  v22 = v3;
  v11 = 0;
  if (!v3)
  {
    goto LABEL_27;
  }

  v12 = 0;
  do
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = v22[1];
        v16 = *(v22 + 4);
        *buf = 136316674;
        v24 = v13;
        v25 = 2080;
        v26 = "_VCAudioManager_ProcessEventQueue";
        v27 = 1024;
        v28 = 97;
        v29 = 2080;
        v30 = a1 + 136;
        v31 = 2048;
        v32 = a1;
        v33 = 2048;
        v34 = v15;
        v35 = 1024;
        v36 = v16;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %sProcess event: controllerIO=%p clientIO=%p type=%d", buf, 0x40u);
      }
    }

    v17 = *(v22 + 4);
    if (v17 != 2)
    {
      if (v17 == 1)
      {
        VCAudioIOControllerIOState_UnregisterClientIO(a1, &v22);
      }

      else
      {
        if (v17)
        {
          goto LABEL_14;
        }

        VCAudioIOControllerIOState_RegisterClientIO(a1, &v22);
      }
    }

    v12 = 1;
LABEL_14:
    v3 = CMSimpleQueueDequeue(*(a1 + 80));
    v22 = v3;
    ++v11;
  }

  while (v3);
  if (v12)
  {
    v18 = *(a1 + 40);
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v21 = v18[1];
        if (v20)
        {
          v20 = 1;
          if (v19)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v20 = *(v21 + 48);
          if (v19)
          {
LABEL_22:
            v19 = 1;
            goto LABEL_23;
          }
        }

        v19 = *(v21 + 49);
LABEL_23:
        v18 = *v18;
        if (!v18)
        {
          goto LABEL_26;
        }
      }
    }

    v20 = 0;
    v19 = 0;
LABEL_26:
    *(a1 + 177) = v20 & 1;
    *(a1 + 178) = v19 & 1;
  }

LABEL_27:
  LogProfileTimeOverLimit(v2, v3, v4, v5, v6, v7, v8, v9, v10, "_VCAudioManager_ProcessEventQueue");
}

void LogProfileTimeOverLimit(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v41 = *MEMORY[0x1E69E9840];
  if (VRTraceIsInternalOSInstalled())
  {
    v11 = micro() - a1;
    if (v11 > 0.00300000003)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v39 = v12;
      v40 = v12;
      v37 = v12;
      v38 = v12;
      v35 = v12;
      v36 = v12;
      v33 = v12;
      v34 = v12;
      v31 = v12;
      v32 = v12;
      v30 = v12;
      v28 = v12;
      v29 = v12;
      v26 = v12;
      v27 = v12;
      *__str = v12;
      vsnprintf(__str, 0x100uLL, "%s: Iterations=%d", &a10);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v16 = v13;
          v17 = 2080;
          v18 = "_LogProfileTimeLimitHelper";
          v19 = 1024;
          v20 = 36;
          v21 = 2080;
          v22 = __str;
          v23 = 2048;
          v24 = v11;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: Took a long time %fs", buf, 0x30u);
        }
      }
    }
  }
}

void VCAudioManager_PullAudioSamples(uint64_t a1, uint64_t a2)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v45 = *(a1 + 112);
  *(a1 + 120) = 0;
  _VCAudioManager_ProcessEventQueue(a1);
  VCAudioBufferList_InvalidateStats(a2);
  v46[0] = 0xAAAAAAAAAAAAAAAALL;
  v46[1] = 0xAAAAAAAAAAAAAAAALL;
  AudioBufferList = VCAudioBufferList_GetAudioBufferList(a2);
  VCAudioIOControllerIOState_GetControllerTimestamp(a2, a1, v46);
  ChannelCount = VCAudioBufferList_GetChannelCount(a2);
  HostTime = VCAudioBufferList_GetHostTime(a2);
  SampleCount = VCAudioBufferList_GetSampleCount(a2);
  Timestamp = VCAudioBufferList_GetTimestamp(a2);
  v7 = VCAudioBufferList_GetChannelCount(*(a1 + 96));
  v8 = *(a1 + 40);
  v42 = a1;
  v38 = a2;
  v36 = AudioBufferList;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v37 = 0;
    v11 = AudioBufferList + 8;
    v12 = (a1 + 104);
    if (v7 == ChannelCount)
    {
      v12 = (a1 + 96);
    }

    v39 = a2;
    v40 = v12;
    v13 = 0.0;
    v41 = a2;
    do
    {
      v14 = v8[1];
      v15 = VCAudioBufferList_GetChannelCount(*(v14 + 40));
      v16 = v15;
      v18 = *(v14 + 24) == v45 || ChannelCount == v15;
      VCAudioBufferList_Reset(*(v14 + 40));
      v19 = *(v14 + 40);
      if (v18)
      {
        v20 = v9;
        v21 = *(v14 + 28);
        v22 = 1 << v21;
        if (ChannelCount == v16)
        {
          v19 = v41;
          v10 = v41 != v38;
          v37 = v41 != v38;
          v41 = *v40;
        }

        else if (v21 + v16)
        {
          v23 = VCAudioBufferList_GetAudioBufferList(*(v14 + 40));
          if (v16)
          {
            v24 = *(v14 + 28);
            v25 = v16;
            v26 = (v23 + 16);
            do
            {
              *v26 = *(v11 + 16 * v24 + 8);
              v26 += 2;
              ++v24;
              --v25;
            }

            while (v25);
          }

          if ((v42[15] & v22) != 0)
          {
            v19 = *v40;
            v39 = *(v14 + 40);
            v10 = 1;
          }

          else
          {
            v10 = 0;
          }
        }

        v42[15] |= v22;
        v9 = v20 + 1;
      }

      VCAudioBufferList_SetTime(v19, Timestamp, HostTime);
      VCAudioBufferList_SetSampleCount(v19, SampleCount);
      VCAudioBufferList_InvalidateNetworkTimestamp(v19);
      (*(v14 + 8))(*v14, v46, v19);
      if (v18)
      {
        v13 = v13 + VCAudioBufferList_GetAveragePower(v19);
        if (v10)
        {
          VCAudioBufferList_Mix(v39, v19);
        }
      }

      v8 = *v8;
    }

    while (v8);
  }

  else
  {
    v37 = 0;
    v9 = 0;
    v13 = 0.0;
  }

  v27 = v42[15];
  v28 = v42[16];
  v29 = v28 & ~v27;
  if (v29)
  {
    v30 = (v36 + 4);
    v31 = -1;
    v32 = v38;
    v33 = v37;
    do
    {
      if (++v31 >= *v36)
      {
        break;
      }

      if (v29)
      {
        bzero(*v30, *(v30 - 1));
      }

      v30 += 2;
      v34 = v29 >= 2;
      v29 >>= 1;
    }

    while (v34);
    v27 = v42[15];
    v28 = v42[16];
  }

  else
  {
    v32 = v38;
    v33 = v37;
  }

  v42[16] = v27 | v28;
  if (v33)
  {
    VCAudioLimiter_Process(v42[11], v32);
  }

  if (v9)
  {
    v35 = v13 / v9;
  }

  else
  {
    v35 = -120.0;
  }

  VCAudioBufferList_SetAveragePower(v32, v35);
}

void VCAudioManager_PushAudioSamples(uint64_t a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  _VCAudioManager_ProcessEventQueue(a1);
  v11[0] = 0xAAAAAAAAAAAAAAAALL;
  v11[1] = 0xAAAAAAAAAAAAAAAALL;
  VCAudioIOControllerIOState_GetControllerTimestamp(a2, a1, v11);
  if (!*(a1 + 200))
  {
    goto LABEL_14;
  }

  HostTime = VCAudioBufferList_GetHostTime(a2);
  if (*(a1 + 192) == 1)
  {
    v5 = HostTime;
    if (HostTime - *(a1 + 184) <= 1.0)
    {
      v6 = *(a1 + 193);
    }

    else
    {
      v6 = [+[VCDefaults sharedInstance](VCDefaults forceAudioPriorityValue];
      *(a1 + 193) = v6;
      *(a1 + 184) = v5;
      if ((*(a1 + 192) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v7 = v6 > 1;
    VCAudioBufferList_SetPriority(a2, v6);
    VCAudioBufferList_SetVoiceActivity(a2, v7);
    LOBYTE(v8) = *(a1 + 193);
    VCAudioBufferList_SetVoiceProbability(a2, v8 / 255.0);
    goto LABEL_14;
  }

LABEL_5:
  if (!VCAudioBufferList_GetPriority(a2))
  {
    if (*(a1 + 178) == 1)
    {
      VCVoiceDetector_ProcessSampleBuffer(*(a1 + 200), a2, *(a1 + 176));
    }

    else
    {
      if (VCAudioBufferList_GetVoiceActivity(a2))
      {
        v9 = 0x80;
      }

      else
      {
        v9 = 1;
      }

      VCAudioBufferList_SetPriority(a2, v9);
    }
  }

LABEL_14:
  for (i = *(a1 + 40); i; i = *i)
  {
    (*(i[1] + 8))(*i[1], v11, a2);
  }
}

void VCAudioManager_InputDeviceSelectionCallback(void *a1, uint64_t a2)
{
  v4 = [AVAudioDeviceList deviceForDeviceID:a2];
  v3 = v4;
  [a1 updateCurrentInputDevice:v4];
}

void VCAudioManager_OutputDeviceSelectionCallback(void *a1, uint64_t a2)
{
  v4 = [AVAudioDeviceList deviceForDeviceID:a2];
  v3 = v4;
  [a1 updateCurrentOutputDevice:v4];
}

uint64_t OUTLINED_FUNCTION_28_0()
{

  return objc_opt_respondsToSelector();
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return [v0 performSelector:v1];
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return objc_opt_respondsToSelector();
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return [v0 performSelector:v1];
}

uint64_t _AVCRateController_ConfigureInternal(uint64_t a1, int *a2)
{
  v490 = *MEMORY[0x1E69E9840];
  v5 = (a1 + 72);
  v4 = *(a1 + 72);
  v6 = *(a1 + 32);
  v7 = *a2;
  if (v4 == *a2)
  {
    goto LABEL_31;
  }

  *(a1 + 72) = v7;
  v8 = *(a1 + 56);
  if (v8 && (v7 - 1) <= 2)
  {
    VCRateControlMediaController_SetAudioOnly(v8, (v7 - 1) & 1);
  }

  if (*(a1 + 1320) && *(a1 + 1328) || *(a1 + 1360) != 1)
  {
    goto LABEL_16;
  }

  v9 = *(a1 + 72);
  v10 = "VCRateControl";
  if (v9 == 5)
  {
    v10 = "VCRC-DL";
  }

  if (v9 == 4)
  {
    v11 = "VCRC-UL";
  }

  else
  {
    v11 = v10;
  }

  v12 = VRLogfileAlloc(0, [*(a1 + 1368) UTF8String], v11, ".afrcdump", "com.apple.VideoConference.VCRClog", 9);
  *(a1 + 1320) = v12;
  VRLogfilePrintSync(v12, "STime\t\tdTime/ETxTS\tOWRD\tNOWRD\tNOWRDS\tNOWRDA\tUp\tRTT\tPLR/FEC\tRRx\tMBL\tLRx\tBR/TR\tMQIn: A/V\tMQOut: A/V\tABRL\tQD\tBDL\tTxAT\tMODE\tTxSTATE\tLBAWall\tWallConf\tBadTrend\tECNRate\tSBProb\tSBBW\tSBBWE\tLCTSpeedFactor\tLCTwall\tLCTConfidence\tMLTargetBitrate\tMLActionLogit\tMLEntropy\tMLValue\n", v13, v14, v15, v16, v17, v18, v356);
  v19 = VRLogfileAlloc(0, [*(a1 + 1368) UTF8String], v11, ".fbdump", "com.apple.VideoConference.VCRClogFB", 9);
  *(a1 + 1328) = v19;
  v26 = *(a1 + 72);
  v27 = v26 - 1;
  if (v26 - 1) <= 0xB && ((0xBDFu >> v27))
  {
    VRLogfilePrintSync(v19, off_1E85F3A50[v27], v20, v21, v22, v23, v24, v25, v357);
LABEL_16:
    v26 = *v5;
  }

  if (!*(a1 + 1352))
  {
    if (*(a1 + 1361))
    {
      v28 = 0;
      if (v26 > 0xC || ((1 << v26) & 0x100A) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v26 != 12)
    {
      v28 = 0;
LABEL_25:
      if (v26 <= 7 && ((1 << v26) & 0x8E) != 0)
      {
        VCRateControlMediaController_EnableBWELogDump(*(a1 + 56), v28);
        v28 = *(a1 + 1352);
      }

      VCStatisticsCollector_EnableBWELogDump(*(a1 + 32), v28);
      v26 = *(a1 + 72);
      goto LABEL_29;
    }

    v28 = VRLogfileAlloc(0, [*(a1 + 1368) UTF8String], "VCRateControl", ".bwedump", "com.apple.VideoConference.VCRClog", 9);
    *(a1 + 1352) = v28;
    LODWORD(v26) = *(a1 + 72);
    goto LABEL_25;
  }

LABEL_29:
  VCStatisticsCollector_SetMode(v6, v26);
  VCRateControlFeedbackController_SetMode(*(a1 + 1936), *(a1 + 72));
  VCRateControlProbingSequenceController_SetMode(*(a1 + 1592), *(a1 + 72));
  v29 = *(a1 + 1944);
  if (v29)
  {
    VCBasebandCongestionDetector_SetMode(v29, *v5);
  }

LABEL_31:
  v359 = v5;
  v30 = a2[1];
  v31 = a2[2];
  v32 = (v30 < 7) & (0x1Eu >> v30);
  v33 = (v31 < 7) & (0x1Eu >> v31);
  v34 = v4 != v7;
  if (*(a1 + 76) != v30)
  {
    *(a1 + 76) = v30;
    v35 = (v30 < 7) & (0x7Cu >> v30);
    if (*(a1 + 1377) != v35)
    {
      *(a1 + 1377) = v35;
      VCRateControlMediaController_SetAudioFractionTier(*(a1 + 56), 0);
      if (*(a1 + 72) != 2)
      {
        VCRateControlMediaController_ResumeVideo(*(a1 + 56));
      }
    }

    [*(a1 + 1944) setRadioAccessTechnology:*(a1 + 76)];
    if (v32 | v33)
    {
      v36 = 1;
    }

    else
    {
      v36 = 5;
    }

    VCStatisticsCollector_SetRadioAccessTechnology(*(a1 + 32), v36);
    if (v32)
    {
      v37 = a2[1] != 3;
    }

    else
    {
      v37 = 0;
    }

    VCRateControlMediaController_SetSenderProbingEnabled(*(a1 + 56), v37);
    v31 = a2[2];
    v34 = 1;
  }

  if (*(a1 + 80) != v31)
  {
    *(a1 + 80) = v31;
    if (v32 | v33)
    {
      v38 = 1;
    }

    else
    {
      v38 = 5;
    }

    VCStatisticsCollector_SetRadioAccessTechnology(*(a1 + 32), v38);
    v34 = 1;
  }

  v39 = *(a1 + 1404);
  if (a2[3] >= v39)
  {
    v40 = *(a1 + 1404);
  }

  else
  {
    v40 = a2[3];
  }

  if (v39 <= 0)
  {
    v41 = a2[3];
  }

  else
  {
    v41 = v40;
  }

  if (*(a1 + 84) != v41)
  {
    *(a1 + 84) = v41;
    v34 = 1;
  }

  v42 = *(a1 + 88);
  v43 = a2[4];
  if (v42 != v43)
  {
    *(a1 + 88) = v43;
    v34 = 1;
    v42 = v43;
  }

  v44 = a2[5];
  if (*(a1 + 92) != v44)
  {
    *(a1 + 92) = v44;
    v34 = 1;
  }

  v45 = *(a1 + 112);
  v46 = a2[10];
  if (v45 != v46)
  {
    *(a1 + 112) = v46;
    v34 = 1;
    v45 = v46;
  }

  v47 = *(a2 + 24);
  if (*(a1 + 96) != v47)
  {
    v50 = *(a1 + 97);
    v48 = (a1 + 97);
    *(a1 + 96) = v47;
    v49 = *(a2 + 25);
    if (v50 == v49)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  v48 = (a1 + 97);
  v49 = *(a2 + 25);
  v47 = *(a1 + 96);
  if (*(a1 + 97) != v49)
  {
LABEL_66:
    *v48 = v49;
    goto LABEL_67;
  }

  if (!v34)
  {
    goto LABEL_456;
  }

LABEL_67:
  bzero(&v360, 0x400uLL);
  v361 = vcRateControlTierBitrates;
  v51 = 31;
  if (v47)
  {
    v51 = 34;
  }

  v52 = 42;
  if ((v45 & 0x10000) == 0)
  {
    v52 = v51;
  }

  v53 = v52 + 1;
  v54 = &vcRateControlTierBitrates[v52];
  do
  {
    v55 = *v54--;
    --v53;
  }

  while (v55 > v41);
  HIDWORD(v362) = v53 & ~(v53 >> 31);
  v56 = -1;
  v57 = vcRateControlTierBitrates;
  do
  {
    v58 = *v57++;
    ++v56;
  }

  while (v58 < v42);
  if (v56 >= 31)
  {
    v56 = 31;
  }

  v363 = v56;
  v60 = *(a1 + 76);
  v59 = *(a1 + 80);
  if (v53 <= 17)
  {
    v61 = 10;
  }

  else
  {
    v61 = 13;
  }

  if (v53 <= 25)
  {
    v62 = v61;
  }

  else
  {
    v62 = 17;
  }

  v63 = vcRateControlTierBitrates[v62];
  v64 = *(a1 + 72);
  if (v64 == 7 || v64 == 1) && (objc_opt_respondsToSelector())
  {
    v65 = objc_alloc(MEMORY[0x1E696AEC0]);
    if ((v60 - 1) > 3)
    {
      v66 = @"S";
    }

    else
    {
      v66 = off_1E85F3AB0[v60 - 1];
    }

    if ((v59 - 1) > 3)
    {
      v70 = @"S";
    }

    else
    {
      v70 = off_1E85F3AB0[v59 - 1];
    }

    v71 = [v65 initWithFormat:@"%@:%@", v66, v70];
    v72 = [*(a1 + 16) learntBitrateForSegment:v71 defaultValue:v63];

    v73 = 27;
    v74 = &dword_1DBD456E8;
    do
    {
      v75 = *v74--;
      --v73;
    }

    while (v75 > v72);
    v62 = v73 & ~(v73 >> 31);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v358 = v6;
      v76 = VRTraceErrorLogLevelToCSTR();
      v77 = *MEMORY[0x1E6986650];
      v78 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0]) = 136316674;
          *(buf + 4) = v76;
          WORD6(buf[0]) = 2080;
          *(buf + 14) = "_AVCRateController_InitialBitrateTierFromLearntBitrate";
          WORD3(buf[1]) = 1024;
          DWORD2(buf[1]) = 1469;
          WORD6(buf[1]) = 2112;
          *(&buf[1] + 14) = v71;
          WORD3(buf[2]) = 1024;
          DWORD2(buf[2]) = v72;
          WORD6(buf[2]) = 1024;
          *(&buf[2] + 14) = v62;
          WORD1(buf[3]) = 1024;
          DWORD1(buf[3]) = v63;
          _os_log_impl(&dword_1DB56E000, v77, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d AdaptiveLearning(AVCRateController): Setting up initial bitrate for segment %@ - learnt target bitrate %d, selected tier %d, default bitrate %d", buf, 0x38u);
        }
      }

      else if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 136316674;
        *(buf + 4) = v76;
        WORD6(buf[0]) = 2080;
        *(buf + 14) = "_AVCRateController_InitialBitrateTierFromLearntBitrate";
        WORD3(buf[1]) = 1024;
        DWORD2(buf[1]) = 1469;
        WORD6(buf[1]) = 2112;
        *(&buf[1] + 14) = v71;
        WORD3(buf[2]) = 1024;
        DWORD2(buf[2]) = v72;
        WORD6(buf[2]) = 1024;
        *(&buf[2] + 14) = v62;
        WORD1(buf[3]) = 1024;
        DWORD1(buf[3]) = v63;
        _os_log_debug_impl(&dword_1DB56E000, v77, OS_LOG_TYPE_DEBUG, "AVCRC [%s] %s:%d AdaptiveLearning(AVCRateController): Setting up initial bitrate for segment %@ - learnt target bitrate %d, selected tier %d, default bitrate %d", buf, 0x38u);
      }

      v6 = v358;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v67 = VRTraceErrorLogLevelToCSTR();
    v68 = *MEMORY[0x1E6986650];
    v69 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315906;
        *(buf + 4) = v67;
        WORD6(buf[0]) = 2080;
        *(buf + 14) = "_AVCRateController_InitialBitrateTierFromLearntBitrate";
        WORD3(buf[1]) = 1024;
        DWORD2(buf[1]) = 1471;
        WORD6(buf[1]) = 1024;
        *(&buf[1] + 14) = v63;
        _os_log_impl(&dword_1DB56E000, v68, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d AdaptiveLearning(AVCRateController): Initial bitrate defaulted to %d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      _AVCRateController_ConfigureInternal_cold_1();
    }
  }

  v79 = v363;
  if (v62 > v363)
  {
    v79 = v62;
  }

  if (v79 >= SHIDWORD(v362))
  {
    v79 = HIDWORD(v362);
  }

  LODWORD(v362) = v79;
  IntValueForKey = VCDefaults_GetIntValueForKey(@"forcedSoftMaxTierVeryLowIndex", 7);
  v365 = VCDefaults_GetIntValueForKey(@"forcedSoftMaxTierLowIndex", 18);
  v80 = VCDefaults_GetIntValueForKey(@"forcedSoftMaxTierMediumIndex", 26);
  *&v81 = 0x100000001;
  *(&v81 + 1) = 0x100000001;
  v370 = v81;
  v375 = xmmword_1DBD45510;
  v376 = xmmword_1DBD45520;
  v377 = 0x4000000000000000;
  v82 = *(a1 + 96);
  v83 = 2.0;
  if (v82)
  {
    v83 = 6.0;
  }

  v378 = v83;
  v380 = xmmword_1DBD45530;
  *v379 = xmmword_1DBD45540;
  __asm { FMOV            V0.2D, #2.0 }

  *&v379[16] = _Q0;
  v383 = 1;
  v381 = xmmword_1DBD45550;
  v388 = xmmword_1DBD45560;
  *v389 = xmmword_1DBD45570;
  *&v389[16] = xmmword_1DBD45580;
  v390 = 0x3FC999999999999ALL;
  v391 = xmmword_1DBD45590;
  if (_ZF)
  {
    v88 = 4;
  }

  else
  {
    v88 = 7;
  }

  v392 = v88;
  v89 = *(a1 + 112);
  v396 = (v89 & 2) == 0;
  v403 = BYTE1(v89) & 1;
  v366 = v80;
  v368 = 3;
  v425 = 0x4008000000000000;
  v404 = v82;
  v405 = *(a1 + 97);
  v421 = 1;
  BoolValueForKey = 1;
  v397 = 256;
  v439 = 0;
  v398 = (v89 & 0x40) != 0;
  v399 = (v89 & 0x80) != 0;
  v419 = 0x300000004;
  v420 = xmmword_1DBD455B0;
  v400 = (v89 & 8) != 0;
  v412 = 26;
  v414 = 3;
  v413 = 0x4034000000000000;
  v434 = xmmword_1DBD455C0;
  v435 = xmmword_1DBD455A0;
  v441 = xmmword_1DBD455D0;
  v410 = (v89 & 0x400) != 0;
  v411 = xmmword_1DBD455E0;
  v408 = (v89 & 0x1000) != 0;
  v409 = 17;
  v401 = (v89 & 0x20) != 0;
  v402 = (v89 & 0x800) != 0;
  v415 = xmmword_1DBD455F0;
  v416 = 0x4008000000000000;
  v417 = 5;
  v418 = 0x3F60624DD2F1A9FCLL;
  v90 = [+[VCDefaults sharedInstance](VCDefaults rateControlAllowBurstyLossRampDown];
  v91 = *(a1 + 112);
  if (v90)
  {
    if (*(a1 + 96))
    {
      v92 = 18;
    }

    else
    {
      v92 = 13;
    }

    v371 = 0;
    v372 = v92;
    v93 = 0.9;
    if ((v91 & 0x2000) == 0)
    {
      v93 = 0.0;
    }

    v385 = v93;
    v384 = 0x300000004;
    v386 = xmmword_1DBD45600;
  }

  v94 = 0;
  v442 = 0x3FC3333333333333;
  v443 = xmmword_1DBD45610;
  v444 = 0x3F9EB851EB851EB8;
  v373 = (v91 >> 15) & 0x11;
  BoolValueForKey = (v91 & 0x4000) != 0;
  v395 = BoolValueForKey;
  do
  {
    *&v393[v94] = VCRateControlCongestionLevel_RampUpTimeFactor(v94);
    ++v94;
  }

  while (v94 != 5);
  v428 = 0x3FF0000000000000;
  v429 = 0x3FF0000000000000;
  v447 = xmmword_1DBD45620;
  v448 = 0x3FB999999999999ALL;
  v450 = 228000;
  v449 = 2576980378800000;
  v452 = xmmword_1DBD45630;
  v451 = 3.0;
  v95 = *(a1 + 112);
  v464 = (v95 >> 17) & 2;
  v96 = *(a1 + 72);
  if (v96 <= 7)
  {
    if (v96 > 3)
    {
      if ((v96 - 4) < 2)
      {
        v122 = *(a1 + 84);
        v123 = _AVCRateController_MultiwayMaxTierFromServerBag(a1);
        v124 = v123 + 1;
        v125 = &vcRateControlTierBitrates[v123];
        do
        {
          v126 = *v125--;
          --v124;
        }

        while (v126 > v122);
        if (v124 <= 7)
        {
          v124 = 7;
        }

        HIDWORD(v362) = v124;
        v127 = *(a1 + 88);
        v128 = _AVCRateController_MultiwayMaxTierFromServerBag(a1);
        v129 = 6;
        v130 = &dword_1DBD4569C;
        do
        {
          v131 = *v130++;
          ++v129;
        }

        while (v131 < v127);
        if (v129 >= v128)
        {
          v129 = v128;
        }

        v363 = v129;
        v365 = VCDefaults_GetIntValueForKey(@"forcedSoftMaxTierLowIndex", 22);
        IsAudioOnly = VCRateControlMediaController_IsAudioOnly(*(a1 + 56));
        v133 = *(a1 + 92);
        if (!v133)
        {
          v134 = 12;
          if (IsAudioOnly)
          {
            v134 = 6;
          }

          v133 = vcRateControlTierBitrates[v134];
        }

        v135 = v363 - 1;
        v136 = &vcRateControlTierBitrates[v363];
        do
        {
          v137 = *v136++;
          ++v135;
        }

        while (v137 < v133);
        if (v135 >= SHIDWORD(v362))
        {
          v138 = HIDWORD(v362);
        }

        else
        {
          v138 = v135;
        }

        LODWORD(v362) = v138;
        *&v379[24] = 0x4000000000000000;
        LODWORD(v384) = 4;
        v387 = 0x3FE0000000000000;
        HIDWORD(v391) = 64000;
        HIBYTE(v397) = 0;
        *(&v434 + 1) = 0x4000000000000000;
        v369 = 0xE00000009;
        v436 = 1;
        v437 = 0x4024000000000000;
        v438 = 0x200000002;
        if (*v359 == 4 && (*(a1 + 76) - 2) <= 4)
        {
          LOBYTE(v397) = (*(a1 + 112) & 0x200) == 0;
          *&v422 = 0x3FC999999999999ALL;
          v430 = 0x3FB999999999999ALL;
          __asm { FMOV            V1.2D, #0.5 }

          v431 = _Q1;
          v367 = 7;
          v423 = xmmword_1DBD45650;
          v424 = xmmword_1DBD45660;
        }

        goto LABEL_246;
      }

      if (v96 != 7)
      {
        goto LABEL_246;
      }

      v421 = 2;
      v403 = 1;
    }

    else if (v96 != 1)
    {
      if (v96 == 2)
      {
        *&v391 = vadd_s32(*&v391, *&v391);
        *&v389[8] = vaddq_f64(*&v389[8], *&v389[8]);
        v375 = vaddq_f64(v375, v375);
        v376 = vaddq_f64(v376, v376);
        v396 = 0;
        LODWORD(v362) = 3;
        v156 = 13;
        v157 = &dword_1DBD456B0;
        do
        {
          v158 = *v157--;
          --v156;
        }

        while (v158 > *(a1 + 84));
        HIDWORD(v362) = v156 & ~(v156 >> 31);
        v159 = *(a1 + 88);
        if ((*(a1 + 76) - 2) >= 5)
        {
          v165 = -1;
          v166 = vcRateControlTierBitrates;
          do
          {
            v167 = *v166++;
            ++v165;
          }

          while (v167 < v159);
          if (v165 >= 12)
          {
            v165 = 12;
          }

          v363 = v165;
        }

        else
        {
          v160 = -1;
          v161 = vcRateControlTierBitrates;
          do
          {
            v162 = *v161++;
            ++v160;
          }

          while (v162 < v159);
          if (v160 >= 12)
          {
            v163 = 12;
          }

          else
          {
            v163 = v160;
          }

          LOBYTE(v397) = (v95 & 0x200) == 0;
          v422 = xmmword_1DBD45670;
          v423 = xmmword_1DBD45650;
          v430 = 0x3FB999999999999ALL;
          __asm { FMOV            V0.2D, #0.5 }

          v431 = _Q0;
          v363 = v163;
          v367 = 2;
          v424 = xmmword_1DBD45660;
        }

        *(&v370 + 1) = 0;
        *(&v391 + 1) = 0;
        v374 = 7;
        BoolValueForKey = 0;
        goto LABEL_246;
      }

      if (v96 != 3)
      {
        goto LABEL_246;
      }
    }

    v153 = *(a1 + 76);
    if ((v153 - 2) > 4)
    {
      if ((*(a1 + 80) - 2) > 4)
      {
        goto LABEL_221;
      }
    }

    else
    {
      LOBYTE(v397) = (v95 & 0x200) == 0;
      v422 = xmmword_1DBD45670;
      v423 = xmmword_1DBD45650;
      *&v424 = 0x4000000000000000;
      v430 = 0x3FB999999999999ALL;
      __asm { FMOV            V1.2D, #0.5 }

      v431 = _Q1;
      v432 = xmmword_1DBD45570;
      v433 = 0x4000000000000000;
    }

    v372 = 9;
    HIDWORD(v384) = 8;
LABEL_221:
    if ((v153 & 0xFFFFFFFE) == 2)
    {
LABEL_222:
      v439 = 1;
      v371 = 0;
      v440 = [+[VCDefaults sharedInstance](VCDefaults rateControlBasebandSlowDownFactor];
      goto LABEL_246;
    }

    if (v153 != 6)
    {
      if (v153 == 5)
      {
        __asm { FMOV            V1.2D, #0.5 }

        *&v379[8] = vmulq_f64(*&v379[8], _Q1);
        v396 = 0;
        HIDWORD(v391) = 64000;
        LODWORD(v362) = 5;
        DWORD2(v370) = 0;
        goto LABEL_245;
      }

      if (v153 == 4)
      {
        goto LABEL_222;
      }

      if (*(a1 + 80) != 6)
      {
        goto LABEL_246;
      }
    }

    __asm { FMOV            V1.2D, #0.5 }

    *&v379[8] = vmulq_f64(*&v379[8], _Q1);
    *&v391 = vadd_s32(*&v391, *&v391);
    *&v389[8] = vaddq_f64(*&v389[8], *&v389[8]);
    v375 = vaddq_f64(v375, v375);
    v376 = vaddq_f64(v376, v376);
    v396 = 0;
    HIDWORD(v391) = 0;
    LODWORD(v362) = 3;
    DWORD2(v370) = 0;
    *(&v380 + 1) = 0x3FB999999999999ALL;
LABEL_245:
    v371 = 0;
    goto LABEL_246;
  }

  if ((v96 - 8) < 3)
  {
    if (v96 == 10)
    {
      v97 = 65;
    }

    else
    {
      v97 = 49;
    }

    if (v96 == 10)
    {
      v98 = 15;
    }

    else
    {
      v98 = 3;
    }

    v99 = *(a1 + 92);
    if (!v99)
    {
      v100 = 38;
      if (v96 == 10)
      {
        v100 = 33;
      }

      v99 = vcRateControlTierBitrates[v100];
    }

    v101 = v97 + 1;
    v102 = &vcRateControlTierBitrates[v97];
    do
    {
      v103 = *v102--;
      --v101;
    }

    while (v103 > *(a1 + 84));
    if (v101 <= v98)
    {
      v101 = v98;
    }

    HIDWORD(v362) = v101;
    v104 = v98 - 1;
    v105 = &vcRateControlTierBitrates[v98];
    do
    {
      v106 = *v105++;
      ++v104;
    }

    while (v106 < *(a1 + 88));
    if (v104 >= v97)
    {
      v107 = v97;
    }

    else
    {
      v107 = v104;
    }

    v363 = v107;
    if (v104 >= v97)
    {
      v108 = v97;
    }

    else
    {
      v108 = v104;
    }

    v109 = v108 - 1;
    v110 = &vcRateControlTierBitrates[v108];
    do
    {
      v111 = *v110++;
      ++v109;
    }

    while (v111 < v99);
    if (v109 >= v101)
    {
      v112 = v101;
    }

    else
    {
      v112 = v109;
    }

    LODWORD(v362) = v112;
    DoubleValueForKey = VCDefaults_GetDoubleValueForKey(@"rampDownNWConnectionDelayThresholdMin", 0.02);
    v427 = 0x4000000000000000;
    v371 = 4;
    DWORD2(v370) = 0;
    *&v388 = 0x3FE8000000000000;
    v113 = *v359;
    if (*v359 != 8)
    {
      v406 = 1;
      HIBYTE(v397) = v113 == 9;
      v151 = v97 - 23;
      do
      {
        --v151;
      }

      while (v151 < 0x2A);
      v152 = v151 + 24;
      if (v152 <= v98)
      {
        v152 = v98;
      }

      v373 = v152;
      goto LABEL_246;
    }

    v115 = *(a1 + 84);
    v114 = *(a1 + 88);
    if (v114)
    {
      v116 = v115 / v114 > 4;
    }

    else
    {
      v116 = 1;
    }

    HIBYTE(v397) = v116;
    v117 = v115 >> 1;
    v118 = v97 + 1;
    v119 = &vcRateControlTierBitrates[v97];
    do
    {
      v120 = *v119--;
      --v118;
    }

    while (v120 > v117);
    if (v118 <= v98)
    {
      v118 = v98;
    }

    v373 = v118;
    v121 = (*(a1 + 112) >> 17) & 1;
    goto LABEL_209;
  }

  if (v96 == 11)
  {
    v361 = &vcTelephonyTierBitrates;
    v363 = 0;
    v362 = 0x100000001;
    v445 = 0xA00000000;
    v446 = xmmword_1DBD45640;
    goto LABEL_246;
  }

  if (v96 == 12)
  {
    v121 = 43;
    v140 = &dword_1DBD45728;
    do
    {
      v141 = *v140--;
      --v121;
    }

    while (v141 > *(a1 + 84));
    if (v121 <= 3)
    {
      v121 = 3;
    }

    HIDWORD(v362) = v121;
    v142 = 2;
    v143 = &dword_1DBD4568C;
    do
    {
      v144 = *v143++;
      ++v142;
    }

    while (v144 < *(a1 + 88));
    v145 = 42;
    if (v142 >= 42)
    {
      v146 = 42;
    }

    else
    {
      v146 = v142;
    }

    v363 = v146;
    v147 = *(a1 + 92);
    if (!v147)
    {
      v147 = 3038000;
    }

    if (v142 < 42)
    {
      v145 = v142;
    }

    v148 = v145 - 1;
    v149 = &vcRateControlTierBitrates[v145];
    do
    {
      v150 = *v149++;
      ++v148;
    }

    while (v150 < v147);
    if (v148 < v121)
    {
      v121 = v148;
    }

    LODWORD(v362) = v121;
    v382 = 0.3;
    HIBYTE(v397) = 0;
    LOBYTE(v121) = 1;
LABEL_209:
    v395 = v121;
  }

LABEL_246:
  v169 = *(a1 + 1544);
  v170 = [v169 containsAllSecondaryKeysWithPrimaryKey:@"profile"];
  if (v170)
  {
    LODWORD(v360) = [objc_msgSend(v169 valueForSecondaryKeyWithPrimaryKey:@"profile" secondaryKey:@"profileNumber" type:{0), "unsignedIntValue"}];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v171 = VRTraceErrorLogLevelToCSTR();
    v172 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v173 = [@"profile" UTF8String];
      LODWORD(buf[0]) = 136316674;
      *(buf + 4) = v171;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateController_ApplyServerBagProfileConfig";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 1865;
      WORD6(buf[1]) = 2048;
      *(&buf[1] + 14) = a1;
      WORD3(buf[2]) = 2080;
      *(&buf[2] + 1) = v173;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v170;
      WORD3(buf[3]) = 1024;
      DWORD2(buf[3]) = v360;
      _os_log_impl(&dword_1DB56E000, v172, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d serverBagProfileNumber=%d", buf, 0x3Cu);
    }
  }

  v174 = *(a1 + 1544);
  v175 = [v174 containsAllSecondaryKeysWithPrimaryKey:@"fastRampUp"];
  if (v175)
  {
    v400 = [objc_msgSend(v174 valueForSecondaryKeyWithPrimaryKey:@"fastRampUp" secondaryKey:@"enabled" type:{0), "BOOLValue"}];
    [objc_msgSend(*(a1 + 1544) valueForSecondaryKeyWithPrimaryKey:@"fastRampUp" secondaryKey:@"networkStableDuration" type:{1), "doubleValue"}];
    *&v415 = v176;
    v414 = [objc_msgSend(v174 valueForSecondaryKeyWithPrimaryKey:@"fastRampUp" secondaryKey:@"minTierGap" type:{0), "integerValue"}];
    [objc_msgSend(v174 valueForSecondaryKeyWithPrimaryKey:@"fastRampUp" secondaryKey:@"RTTRatio" type:{0), "doubleValue"}];
    v413 = v177;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v178 = VRTraceErrorLogLevelToCSTR();
    v179 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v180 = [@"fastRampUp" UTF8String];
      LODWORD(buf[0]) = 136317442;
      *(buf + 4) = v178;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateController_ApplyServerBagFastRampUpConfig";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 1877;
      WORD6(buf[1]) = 2048;
      *(&buf[1] + 14) = a1;
      WORD3(buf[2]) = 2080;
      *(&buf[2] + 1) = v180;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v175;
      WORD3(buf[3]) = 1024;
      DWORD2(buf[3]) = v400;
      WORD6(buf[3]) = 2048;
      *(&buf[3] + 14) = v415;
      WORD3(buf[4]) = 1024;
      DWORD2(buf[4]) = v414;
      WORD6(buf[4]) = 2048;
      *(&buf[4] + 14) = v413;
      _os_log_impl(&dword_1DB56E000, v179, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d fastRampUpEnabled=%d fastRampUpNetworkStableDuration=%f fastRampUpTierGap=%d fastRampUpRTTRatio=%F", buf, 0x56u);
    }
  }

  v181 = *(a1 + 1544);
  v182 = [v181 containsAllSecondaryKeysWithPrimaryKey:@"oscillationAvoidance"];
  if (v182)
  {
    v399 = [objc_msgSend(v181 valueForSecondaryKeyWithPrimaryKey:@"oscillationAvoidance" secondaryKey:@"enabled" type:{0), "BOOLValue"}];
    HIDWORD(v419) = [objc_msgSend(v181 valueForSecondaryKeyWithPrimaryKey:@"oscillationAvoidance" secondaryKey:@"tiersHit" type:{0), "intValue"}];
    LODWORD(v419) = [objc_msgSend(v181 valueForSecondaryKeyWithPrimaryKey:@"oscillationAvoidance" secondaryKey:@"tierChange" type:{0), "intValue"}];
    [objc_msgSend(v181 valueForSecondaryKeyWithPrimaryKey:@"oscillationAvoidance" secondaryKey:@"durationRatio" type:{0), "doubleValue"}];
    *&v420 = v183;
    [objc_msgSend(v181 valueForSecondaryKeyWithPrimaryKey:@"oscillationAvoidance" secondaryKey:@"aggDurationRatio" type:{0), "doubleValue"}];
    *(&v420 + 1) = v184;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v185 = VRTraceErrorLogLevelToCSTR();
    v186 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v187 = [@"oscillationAvoidance" UTF8String];
      LODWORD(buf[0]) = 136317698;
      *(buf + 4) = v185;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateController_ApplyServerBagOscillationAvoidanceConfig";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 1890;
      WORD6(buf[1]) = 2048;
      *(&buf[1] + 14) = a1;
      WORD3(buf[2]) = 2080;
      *(&buf[2] + 1) = v187;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v182;
      WORD3(buf[3]) = 1024;
      DWORD2(buf[3]) = v399;
      WORD6(buf[3]) = 1024;
      *(&buf[3] + 14) = HIDWORD(v419);
      WORD1(buf[4]) = 1024;
      DWORD1(buf[4]) = v419;
      WORD4(buf[4]) = 2048;
      *(&buf[4] + 10) = v420;
      WORD1(buf[5]) = 2048;
      *(&buf[5] + 4) = *(&v420 + 1);
      _os_log_impl(&dword_1DB56E000, v186, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d oscillationAvoidanceEnabled=%d oscillationAvoidanceTiersHitThreshold=%d oscillationAvoidanceTierChangeThreshold=%d oscillationAvoidanceDurationRatio=%f oscillationAvoidanceDurationRatioAggressive=%f", buf, 0x5Cu);
    }
  }

  v188 = *(a1 + 1544);
  v189 = [v188 containsAllSecondaryKeysWithPrimaryKey:@"emergencyTier"];
  if (v189)
  {
    v403 = [objc_msgSend(v188 valueForSecondaryKeyWithPrimaryKey:@"emergencyTier" secondaryKey:@"enabled" type:{0), "BOOLValue"}];
    [objc_msgSend(v188 valueForSecondaryKeyWithPrimaryKey:@"emergencyTier" secondaryKey:@"coolDownTimeWiFi" type:{1), "doubleValue"}];
    v425 = v190;
    v368 = [objc_msgSend(v188 valueForSecondaryKeyWithPrimaryKey:@"emergencyTier" secondaryKey:@"minNonEmergTierWiFi" type:{0), "integerValue"}];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v191 = VRTraceErrorLogLevelToCSTR();
    v192 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v193 = [@"emergencyTier" UTF8String];
      LODWORD(buf[0]) = 136317186;
      *(buf + 4) = v191;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateController_ApplyServerBagEmergencyTierConfig";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 1901;
      WORD6(buf[1]) = 2048;
      *(&buf[1] + 14) = a1;
      WORD3(buf[2]) = 2080;
      *(&buf[2] + 1) = v193;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v189;
      WORD3(buf[3]) = 1024;
      DWORD2(buf[3]) = v403;
      WORD6(buf[3]) = 2048;
      *(&buf[3] + 14) = v425;
      WORD3(buf[4]) = 1024;
      DWORD2(buf[4]) = v368;
      _os_log_impl(&dword_1DB56E000, v192, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d wifiEmergencyTierEnabled=%d rampDownWiFiEmergencyTierCoolDownTime=%f lowestNonEmergencyTierIndexWiFi=%d", buf, 0x4Cu);
    }
  }

  v194 = *(a1 + 1544);
  v195 = [v194 containsAllSecondaryKeysWithPrimaryKey:@"pauseResume"];
  if (v195)
  {
    [objc_msgSend(v194 valueForSecondaryKeyWithPrimaryKey:@"pauseResume" secondaryKey:@"offChannelHighRatio" type:{2), "doubleValue"}];
    *&v435 = v196;
    [objc_msgSend(v194 valueForSecondaryKeyWithPrimaryKey:@"pauseResume" secondaryKey:@"offChannelLowRatio" type:{2), "doubleValue"}];
    *(&v435 + 1) = v197;
    [objc_msgSend(v194 valueForSecondaryKeyWithPrimaryKey:@"pauseResume" secondaryKey:@"autoResumeTime" type:{1), "doubleValue"}];
    *(&v434 + 1) = v198;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v199 = VRTraceErrorLogLevelToCSTR();
    v200 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v201 = [@"pauseResume" UTF8String];
      LODWORD(buf[0]) = 136317186;
      *(buf + 4) = v199;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateController_ApplyServerBagPauseResumeConfig";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 1912;
      WORD6(buf[1]) = 2048;
      *(&buf[1] + 14) = a1;
      WORD3(buf[2]) = 2080;
      *(&buf[2] + 1) = v201;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v195;
      WORD3(buf[3]) = 2048;
      *(&buf[3] + 1) = v435;
      LOWORD(buf[4]) = 2048;
      *(&buf[4] + 2) = *(&v435 + 1);
      WORD5(buf[4]) = 2048;
      *(&buf[4] + 12) = *(&v434 + 1);
      _os_log_impl(&dword_1DB56E000, v200, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d offChannelHighRatio=%f offChannelLowRatio=%f autoResumeTime=%f", buf, 0x54u);
    }
  }

  v202 = *(a1 + 1544);
  v203 = [v202 containsAllSecondaryKeysWithPrimaryKey:@"noRampUp-networkSaturation"];
  if (v203)
  {
    v401 = [objc_msgSend(v202 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-networkSaturation" secondaryKey:@"enabled" type:{0), "BOOLValue"}];
    [objc_msgSend(v202 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-networkSaturation" secondaryKey:@"RTTtoMinRTTRatio" type:{0), "doubleValue"}];
    *(&v415 + 1) = v204;
    [objc_msgSend(v202 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-networkSaturation" secondaryKey:@"OWRDtoMinRTTRatio" type:{0), "doubleValue"}];
    v416 = v205;
    v417 = [objc_msgSend(v202 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-networkSaturation" secondaryKey:@"saturationPersistFeedbackNum" type:{0), "integerValue"}];
    [objc_msgSend(v202 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-networkSaturation" secondaryKey:@"RTTDecreasingThreshold" type:{1), "doubleValue"}];
    v418 = v206;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v207 = VRTraceErrorLogLevelToCSTR();
    v208 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v209 = [@"noRampUp-networkSaturation" UTF8String];
      LODWORD(buf[0]) = 136317698;
      *(buf + 4) = v207;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateController_ApplyServerBagNoRampUpGroupConfig";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 1774;
      WORD6(buf[1]) = 2048;
      *(&buf[1] + 14) = a1;
      WORD3(buf[2]) = 2080;
      *(&buf[2] + 1) = v209;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v203;
      WORD3(buf[3]) = 1024;
      DWORD2(buf[3]) = v401;
      WORD6(buf[3]) = 2048;
      *(&buf[3] + 14) = *(&v415 + 1);
      WORD3(buf[4]) = 2048;
      *(&buf[4] + 1) = v416;
      LOWORD(buf[5]) = 1024;
      *(&buf[5] + 2) = v417;
      WORD3(buf[5]) = 2048;
      *(&buf[5] + 1) = v418;
      _os_log_impl(&dword_1DB56E000, v208, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s config serverBagContainsGroup=%d blockRampUpInSaturatedNetworkEnabled=%d networkSaturatedRTTToMinRTTRatio=%f networkSaturatedOWRDToMinRTTRatio=%f networkSaturatedPersistFeedbackNumber=%d networkSaturatedRTTDecreasingThreshold=%f", buf, 0x60u);
    }
  }

  v210 = [v202 containsAllSecondaryKeysWithPrimaryKey:@"noRampUp-source"];
  if (v210)
  {
    [objc_msgSend(v202 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-source" secondaryKey:@"rateLimitedPercentage" type:{2), "doubleValue"}];
    *&v388 = v211;
    [objc_msgSend(v202 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-source" secondaryKey:@"blockedTimeout" type:{1), "doubleValue"}];
    *(&v381 + 1) = v212;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v213 = VRTraceErrorLogLevelToCSTR();
    v214 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v215 = [@"noRampUp-source" UTF8String];
      LODWORD(buf[0]) = 136316930;
      *(buf + 4) = v213;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateController_ApplyServerBagNoRampUpGroupConfig";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 1781;
      WORD6(buf[1]) = 2048;
      *(&buf[1] + 14) = a1;
      WORD3(buf[2]) = 2080;
      *(&buf[2] + 1) = v215;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v210;
      WORD3(buf[3]) = 2048;
      *(&buf[3] + 1) = v388;
      LOWORD(buf[4]) = 2048;
      *(&buf[4] + 2) = *(&v381 + 1);
      _os_log_impl(&dword_1DB56E000, v214, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s config serverBagContainsGroup=%d rateLimitedPercentage=%f blockedTimeout=%f", buf, 0x4Au);
    }
  }

  v216 = [v202 containsAllSecondaryKeysWithPrimaryKey:@"noRampUp-network"];
  if (v216)
  {
    [objc_msgSend(v202 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-network" secondaryKey:@"networkUnstableCoolDownTime" type:{1), "doubleValue"}];
    *&v434 = v217;
    [objc_msgSend(v202 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-network" secondaryKey:@"RTTThreshold" type:{1), "doubleValue"}];
    *&v441 = v218;
    [objc_msgSend(v202 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-network" secondaryKey:@"PLRThreshold" type:{2), "doubleValue"}];
    *(&v441 + 1) = v219;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v220 = VRTraceErrorLogLevelToCSTR();
    v221 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v222 = [@"noRampUp-source" UTF8String];
      LODWORD(buf[0]) = 136317186;
      *(buf + 4) = v220;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateController_ApplyServerBagNoRampUpGroupConfig";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 1789;
      WORD6(buf[1]) = 2048;
      *(&buf[1] + 14) = a1;
      WORD3(buf[2]) = 2080;
      *(&buf[2] + 1) = v222;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v216;
      WORD3(buf[3]) = 2048;
      *(&buf[3] + 1) = v434;
      LOWORD(buf[4]) = 2048;
      *(&buf[4] + 2) = v441;
      WORD5(buf[4]) = 2048;
      *(&buf[4] + 12) = *(&v441 + 1);
      _os_log_impl(&dword_1DB56E000, v221, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s config serverBagContainsGroup=%d networkUnstableCoolDownTime=%f RTTThreshold=%f PLRThreshold=%f", buf, 0x54u);
    }
  }

  v223 = [v202 containsAllSecondaryKeysWithPrimaryKey:@"noRampUp-delay"];
  if (v223)
  {
    [objc_msgSend(v202 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-delay" secondaryKey:@"OWRD" type:{1), "doubleValue"}];
    *&v379[24] = v224;
    [objc_msgSend(v202 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-delay" secondaryKey:@"NOWRD" type:{1), "doubleValue"}];
    *&v380 = v225;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v226 = VRTraceErrorLogLevelToCSTR();
    v227 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v228 = [@"noRampUp-delay" UTF8String];
      LODWORD(buf[0]) = 136316930;
      *(buf + 4) = v226;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateController_ApplyServerBagNoRampUpGroupConfig";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 1796;
      WORD6(buf[1]) = 2048;
      *(&buf[1] + 14) = a1;
      WORD3(buf[2]) = 2080;
      *(&buf[2] + 1) = v228;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v223;
      WORD3(buf[3]) = 2048;
      *(&buf[3] + 1) = *&v379[24];
      LOWORD(buf[4]) = 2048;
      *(&buf[4] + 2) = v380;
      _os_log_impl(&dword_1DB56E000, v227, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d rampUpOWRDThreshold=%f rampUpNOWRDThreshold=%f", buf, 0x4Au);
    }
  }

  v229 = [v202 containsAllSecondaryKeysWithPrimaryKey:@"noRampUp-bw"];
  if (v229)
  {
    [objc_msgSend(v202 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-bw" secondaryKey:@"overGuardTierCalmDuration" type:{1), "doubleValue"}];
    *&v381 = v230;
    v383 = [objc_msgSend(v202 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-bw" secondaryKey:@"guardTierDiff" type:{0), "integerValue"}];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v231 = VRTraceErrorLogLevelToCSTR();
    v232 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v233 = [@"noRampUp-bw" UTF8String];
      LODWORD(buf[0]) = 136316930;
      *(buf + 4) = v231;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateController_ApplyServerBagNoRampUpGroupConfig";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 1803;
      WORD6(buf[1]) = 2048;
      *(&buf[1] + 14) = a1;
      WORD3(buf[2]) = 2080;
      *(&buf[2] + 1) = v233;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v229;
      WORD3(buf[3]) = 2048;
      *(&buf[3] + 1) = v381;
      LOWORD(buf[4]) = 1024;
      *(&buf[4] + 2) = v383;
      _os_log_impl(&dword_1DB56E000, v232, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d rampUpOverBandwidthCalmDuration=%f rampUpOverBandwidthTierNumber=%d", buf, 0x46u);
    }
  }

  v234 = *(a1 + 1544);
  v235 = [v234 containsAllSecondaryKeysWithPrimaryKey:@"rampDown-delay"];
  if (v235)
  {
    [objc_msgSend(v234 valueForSecondaryKeyWithPrimaryKey:@"rampDown-delay" secondaryKey:@"NOWRD" type:{1), "doubleValue"}];
    v375.f64[0] = v236;
    [objc_msgSend(v234 valueForSecondaryKeyWithPrimaryKey:@"rampDown-delay" secondaryKey:@"NOWRDAcc" type:{1), "doubleValue"}];
    v375.f64[1] = v237;
    [objc_msgSend(v234 valueForSecondaryKeyWithPrimaryKey:@"rampDown-delay" secondaryKey:@"aggNOWRD" type:{1), "doubleValue"}];
    v376.f64[0] = v238;
    [objc_msgSend(v234 valueForSecondaryKeyWithPrimaryKey:@"rampDown-delay" secondaryKey:@"aggNOWRDAcc" type:{1), "doubleValue"}];
    v376.f64[1] = v239;
    [objc_msgSend(v234 valueForSecondaryKeyWithPrimaryKey:@"rampDown-delay" secondaryKey:@"constantOWRDDuration" type:{1), "doubleValue"}];
    v377 = v240;
    v410 = [objc_msgSend(v234 valueForSecondaryKeyWithPrimaryKey:@"rampDown-delay" secondaryKey:@"suppressionEnabled" type:{0), "BOOLValue"}];
    [objc_msgSend(v234 valueForSecondaryKeyWithPrimaryKey:@"rampDown-delay" secondaryKey:@"suppressionMinRTT" type:{1), "doubleValue"}];
    *&v411 = v241;
    [objc_msgSend(v234 valueForSecondaryKeyWithPrimaryKey:@"rampDown-delay" secondaryKey:@"suppressionFactor" type:{2), "doubleValue"}];
    *(&v411 + 1) = v242;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v243 = VRTraceErrorLogLevelToCSTR();
    v244 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v245 = [@"rampDown-delay" UTF8String];
      LODWORD(buf[0]) = 136317698;
      *(buf + 4) = v243;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateController_ApplyServerBagRampDownGroupConfig";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 1819;
      WORD6(buf[1]) = 2048;
      *(&buf[1] + 14) = a1;
      WORD3(buf[2]) = 2080;
      *(&buf[2] + 1) = v245;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v235;
      WORD3(buf[3]) = 2048;
      *(&buf[3] + 1) = *&v375.f64[0];
      LOWORD(buf[4]) = 2048;
      *(&buf[4] + 2) = v375.f64[1];
      WORD5(buf[4]) = 2048;
      *(&buf[4] + 12) = v376.f64[0];
      WORD2(buf[5]) = 2048;
      *(&buf[5] + 6) = v376.f64[1];
      HIWORD(buf[5]) = 2048;
      *&buf[6] = v377;
      _os_log_impl(&dword_1DB56E000, v244, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d rampDownNOWRDThreshold=%f rampDownNOWRDAccThreshold=%f rampDownAggressiveNOWRDThreshold=%f rampDownAggressiveNOWRDAccThreshold=%f rampDownConstantOWRDDuration=%f", buf, 0x68u);
    }
  }

  v246 = [v234 containsAllSecondaryKeysWithPrimaryKey:@"rampDown-loss"];
  if (v246)
  {
    v371 = [objc_msgSend(v234 valueForSecondaryKeyWithPrimaryKey:@"rampDown-loss" secondaryKey:@"MBL" type:{0), "integerValue"}];
    v372 = [objc_msgSend(v234 valueForSecondaryKeyWithPrimaryKey:@"rampDown-loss" secondaryKey:@"lowestTier" type:{0), "integerValue"}];
    LODWORD(v384) = [objc_msgSend(v234 valueForSecondaryKeyWithPrimaryKey:@"rampDown-loss" secondaryKey:@"lossEvent" type:{0), "integerValue"}];
    [objc_msgSend(v234 valueForSecondaryKeyWithPrimaryKey:@"rampDown-loss" secondaryKey:@"lossEventNOWRD" type:{1), "doubleValue"}];
    *(&v386 + 1) = v247;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v248 = VRTraceErrorLogLevelToCSTR();
    v249 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v250 = [@"rampDown-loss" UTF8String];
      LODWORD(buf[0]) = 136317442;
      *(buf + 4) = v248;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateController_ApplyServerBagRampDownGroupConfig";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 1828;
      WORD6(buf[1]) = 2048;
      *(&buf[1] + 14) = a1;
      WORD3(buf[2]) = 2080;
      *(&buf[2] + 1) = v250;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v246;
      WORD3(buf[3]) = 1024;
      DWORD2(buf[3]) = v371;
      WORD6(buf[3]) = 1024;
      *(&buf[3] + 14) = v372;
      WORD1(buf[4]) = 1024;
      DWORD1(buf[4]) = v384;
      WORD4(buf[4]) = 2048;
      *(&buf[4] + 10) = *(&v386 + 1);
      _os_log_impl(&dword_1DB56E000, v249, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d rampDownBurstyLossThreshold=%d lowestTierForBurstyLossRampDown=%d rampDownLossEventThreshold=%d rampDownLossEventNOWRDThreshold=%f", buf, 0x52u);
    }
  }

  v251 = [v234 containsAllSecondaryKeysWithPrimaryKey:@"rampDown-bw"];
  if (v251)
  {
    [objc_msgSend(v234 valueForSecondaryKeyWithPrimaryKey:@"rampDown-bw" secondaryKey:@"keepOvershootDuration" type:{1), "doubleValue"}];
    v378 = v252;
    [objc_msgSend(v234 valueForSecondaryKeyWithPrimaryKey:@"rampDown-bw" secondaryKey:@"nextTierPercentage" type:{2), "doubleValue"}];
    *v379 = v253;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v254 = VRTraceErrorLogLevelToCSTR();
    v255 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v256 = [@"rampDown-bw" UTF8String];
      LODWORD(buf[0]) = 136316930;
      *(buf + 4) = v254;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateController_ApplyServerBagRampDownGroupConfig";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 1835;
      WORD6(buf[1]) = 2048;
      *(&buf[1] + 14) = a1;
      WORD3(buf[2]) = 2080;
      *(&buf[2] + 1) = v256;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v251;
      WORD3(buf[3]) = 2048;
      *(&buf[3] + 1) = v378;
      LOWORD(buf[4]) = 2048;
      *(&buf[4] + 2) = *v379;
      _os_log_impl(&dword_1DB56E000, v255, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d rampDownOvershootDuration=%f rampDownOvershootNextTierRatio=%f", buf, 0x4Au);
    }
  }

  AVCRateController_ApplyServerBagLossBasedAdaptationConfig(a1, &v360);
  _AVCRateController_ApplyServerBagBasebandConfig(a1, &v360);
  v257 = *(a1 + 1544);
  v258 = [v257 containsAllSecondaryKeysWithPrimaryKey:@"mainControl"];
  if (v258)
  {
    [objc_msgSend(v257 valueForSecondaryKeyWithPrimaryKey:@"mainControl" secondaryKey:@"rampDown-loss-ratio" type:{0), "doubleValue"}];
    v385 = v259;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v260 = VRTraceErrorLogLevelToCSTR();
    v261 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v262 = [@"mainControl" UTF8String];
      LODWORD(buf[0]) = 136316674;
      *(buf + 4) = v260;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateController_ApplyServerBagMainControlConfig";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 1945;
      WORD6(buf[1]) = 2048;
      *(&buf[1] + 14) = a1;
      WORD3(buf[2]) = 2080;
      *(&buf[2] + 1) = v262;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v258;
      WORD3(buf[3]) = 2048;
      *(&buf[3] + 1) = v385;
      _os_log_impl(&dword_1DB56E000, v261, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d rampDownLossEventThresholdRatio=%f", buf, 0x40u);
    }
  }

  _AVCRateController_ApplyServerBagECNConfig(a1, &v360);
  _AVCRateController_ApplyServerBagBIFConfig(a1, &v360);
  _AVCRateController_ApplyServerBagContinuousAdaptationConfig(a1, &v360);
  if ((*(a1 + 72) | 2) == 3)
  {
    if (![+[VCHardwareSettingsEmbedded isSmartBrakeSupported] sharedInstance]
    {
      v453 = 0;
      goto LABEL_326;
    }

    v263 = _os_feature_enabled_impl() ? 2 : 0;
    v453 = v263;
    _AVCRateController_ApplyServerBagSmartBrakeConfig(a1, &v360);
    v453 = VCDefaults_GetIntValueForKey(@"smartBrakeRateControlStrategy", v453);
    if (*(a1 + 96) == 1)
    {
      v453 = 0;
      if (objc_opt_class() == a1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v324 = VRTraceErrorLogLevelToCSTR();
          v325 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 136315906;
            *(buf + 4) = v324;
            WORD6(buf[0]) = 2080;
            *(buf + 14) = "_AVCRateController_ApplySmartBrakeConfig";
            WORD3(buf[1]) = 1024;
            DWORD2(buf[1]) = 2221;
            WORD6(buf[1]) = 1024;
            *(&buf[1] + 14) = v453;
            v326 = "AVCRC [%s] %s:%d Forced smart brake off with smartBrakeStrategy=%u when bursty traffic is sent";
            v327 = v325;
            v328 = 34;
LABEL_415:
            _os_log_impl(&dword_1DB56E000, v327, OS_LOG_TYPE_DEFAULT, v326, buf, v328);
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v264 = [a1 performSelector:sel_logPrefix];
        }

        else
        {
          v264 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v329 = VRTraceErrorLogLevelToCSTR();
          v330 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 136316418;
            *(buf + 4) = v329;
            WORD6(buf[0]) = 2080;
            *(buf + 14) = "_AVCRateController_ApplySmartBrakeConfig";
            WORD3(buf[1]) = 1024;
            DWORD2(buf[1]) = 2221;
            WORD6(buf[1]) = 2112;
            *(&buf[1] + 14) = v264;
            WORD3(buf[2]) = 2048;
            *(&buf[2] + 1) = a1;
            LOWORD(buf[3]) = 1024;
            *(&buf[3] + 2) = v453;
            v326 = "AVCRC [%s] %s:%d %@(%p) Forced smart brake off with smartBrakeStrategy=%u when bursty traffic is sent";
            v327 = v330;
            v328 = 54;
            goto LABEL_415;
          }
        }
      }
    }
  }

LABEL_326:
  if ((*(a1 + 76) - 2) <= 4)
  {
    v265 = *(a1 + 1544);
    v266 = [v265 containsAllSecondaryKeysWithPrimaryKey:@"noRampUp-notification"];
    if (v266)
    {
      [objc_msgSend(v265 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-notification" secondaryKey:@"BBDelay" type:{1), "doubleValue"}];
      *&v431 = v267;
      [objc_msgSend(v265 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-notification" secondaryKey:@"NBDCD" type:{1), "doubleValue"}];
      v430 = v268;
      [objc_msgSend(v265 valueForSecondaryKeyWithPrimaryKey:@"noRampUp-notification" secondaryKey:@"highNBDCDCoolDuration" type:{1), "doubleValue"}];
      *(&v431 + 1) = v269;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v270 = VRTraceErrorLogLevelToCSTR();
      v271 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v272 = [@"noRampUp-notification" UTF8String];
        LODWORD(buf[0]) = 136317186;
        *(buf + 4) = v270;
        WORD6(buf[0]) = 2080;
        *(buf + 14) = "_AVCRateController_ApplyServerBagNotificationGroupConfig";
        WORD3(buf[1]) = 1024;
        DWORD2(buf[1]) = 1846;
        WORD6(buf[1]) = 2048;
        *(&buf[1] + 14) = a1;
        WORD3(buf[2]) = 2080;
        *(&buf[2] + 1) = v272;
        LOWORD(buf[3]) = 1024;
        *(&buf[3] + 2) = v266;
        WORD3(buf[3]) = 2048;
        *(&buf[3] + 1) = v431;
        LOWORD(buf[4]) = 2048;
        *(&buf[4] + 2) = v430;
        WORD5(buf[4]) = 2048;
        *(&buf[4] + 12) = *(&v431 + 1);
        _os_log_impl(&dword_1DB56E000, v271, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d rampUpQueuingDelayThreshold=%f rampUpNBDCDThreshold=%f rampUpNBDCDCoolDownTime=%f", buf, 0x54u);
      }
    }

    v273 = [v265 containsAllSecondaryKeysWithPrimaryKey:@"rampDown-notification"];
    if (v273)
    {
      [objc_msgSend(v265 valueForSecondaryKeyWithPrimaryKey:@"rampDown-notification" secondaryKey:@"highBBDelay" type:{1), "doubleValue"}];
      *&v424 = v274;
      [objc_msgSend(v265 valueForSecondaryKeyWithPrimaryKey:@"rampDown-notification" secondaryKey:@"mediumBBDelay" type:{1), "doubleValue"}];
      *(&v423 + 1) = v275;
      [objc_msgSend(v265 valueForSecondaryKeyWithPrimaryKey:@"rampDown-notification" secondaryKey:@"normalizedBBDelay" type:{1), "doubleValue"}];
      *&v423 = v276;
      [objc_msgSend(v265 valueForSecondaryKeyWithPrimaryKey:@"rampDown-notification" secondaryKey:@"NBDCD" type:{1), "doubleValue"}];
      *&v422 = v277;
      [objc_msgSend(v265 valueForSecondaryKeyWithPrimaryKey:@"rampDown-notification" secondaryKey:@"aggNBDCD" type:{1), "doubleValue"}];
      *(&v422 + 1) = v278;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v279 = VRTraceErrorLogLevelToCSTR();
      v280 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v281 = [@"rampDown-notification" UTF8String];
        LODWORD(buf[0]) = 136317698;
        *(buf + 4) = v279;
        WORD6(buf[0]) = 2080;
        *(buf + 14) = "_AVCRateController_ApplyServerBagNotificationGroupConfig";
        WORD3(buf[1]) = 1024;
        DWORD2(buf[1]) = 1856;
        WORD6(buf[1]) = 2048;
        *(&buf[1] + 14) = a1;
        WORD3(buf[2]) = 2080;
        *(&buf[2] + 1) = v281;
        LOWORD(buf[3]) = 1024;
        *(&buf[3] + 2) = v273;
        WORD3(buf[3]) = 2048;
        *(&buf[3] + 1) = v424;
        LOWORD(buf[4]) = 2048;
        *(&buf[4] + 2) = *(&v423 + 1);
        WORD5(buf[4]) = 2048;
        *(&buf[4] + 12) = v423;
        WORD2(buf[5]) = 2048;
        *(&buf[5] + 6) = v422;
        HIWORD(buf[5]) = 2048;
        *&buf[6] = *(&v422 + 1);
        _os_log_impl(&dword_1DB56E000, v280, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d rampDownHighQueuingDelayThreshold=%f rampDownMediumQueuingDelayThreshold=%f rampDownNormalizedQueuingDelayThreshold=%f rampDownNBDCDThreshold=%f rampDownAggressiveNBDCDThreshold=%f", buf, 0x68u);
      }
    }
  }

  if ((*v359 | 2) == 0xA)
  {
    _AVCRateController_ApplyServerBagLowLatencyContinuousAdaptationConfig(a1, &v360);
  }

  if (*(a1 + 1144) == 1)
  {
    if (*v359 == 11)
    {
      v445 = *(a1 + 880);
      v446 = *(a1 + 888);
      if (objc_opt_class() == a1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v284 = VRTraceErrorLogLevelToCSTR();
          v285 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 136316674;
            *(buf + 4) = v284;
            WORD6(buf[0]) = 2080;
            *(buf + 14) = "_AVCRateController_ApplyCachedAlgorithmConfig";
            WORD3(buf[1]) = 1024;
            DWORD2(buf[1]) = 2137;
            WORD6(buf[1]) = 1024;
            *(&buf[1] + 14) = v445;
            WORD1(buf[2]) = 1024;
            DWORD1(buf[2]) = HIDWORD(v445);
            WORD4(buf[2]) = 2048;
            *(&buf[2] + 10) = v446;
            WORD1(buf[3]) = 2048;
            *(&buf[3] + 4) = *(&v446 + 1);
            v286 = "AVCRC [%s] %s:%d Apply algorithm config rampUpUplinkBLERThreshold=%u, rampDownUplinkBLERThreshold=%u, rampUpUplinkBLERDuration=%f, rampDownUplinkBLERDuration=%f";
            v287 = v285;
            v288 = 60;
LABEL_357:
            _os_log_impl(&dword_1DB56E000, v287, OS_LOG_TYPE_DEFAULT, v286, buf, v288);
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v282 = [a1 performSelector:sel_logPrefix];
        }

        else
        {
          v282 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v289 = VRTraceErrorLogLevelToCSTR();
          v290 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 136317186;
            *(buf + 4) = v289;
            WORD6(buf[0]) = 2080;
            *(buf + 14) = "_AVCRateController_ApplyCachedAlgorithmConfig";
            WORD3(buf[1]) = 1024;
            DWORD2(buf[1]) = 2137;
            WORD6(buf[1]) = 2112;
            *(&buf[1] + 14) = v282;
            WORD3(buf[2]) = 2048;
            *(&buf[2] + 1) = a1;
            LOWORD(buf[3]) = 1024;
            *(&buf[3] + 2) = v445;
            WORD3(buf[3]) = 1024;
            DWORD2(buf[3]) = HIDWORD(v445);
            WORD6(buf[3]) = 2048;
            *(&buf[3] + 14) = v446;
            WORD3(buf[4]) = 2048;
            *(&buf[4] + 1) = *(&v446 + 1);
            v286 = "AVCRC [%s] %s:%d %@(%p) Apply algorithm config rampUpUplinkBLERThreshold=%u, rampDownUplinkBLERThreshold=%u, rampUpUplinkBLERDuration=%f, rampDownUplinkBLERDuration=%f";
            v287 = v290;
            v288 = 80;
            goto LABEL_357;
          }
        }
      }
    }

    else if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _AVCRateController_ConfigureInternal_cold_2();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v283 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v283 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v291 = VRTraceErrorLogLevelToCSTR();
        v292 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v355 = *(a1 + 72);
          LODWORD(buf[0]) = 136316418;
          *(buf + 4) = v291;
          WORD6(buf[0]) = 2080;
          *(buf + 14) = "_AVCRateController_ApplyCachedAlgorithmConfig";
          WORD3(buf[1]) = 1024;
          DWORD2(buf[1]) = 2141;
          WORD6(buf[1]) = 2112;
          *(&buf[1] + 14) = v283;
          WORD3(buf[2]) = 2048;
          *(&buf[2] + 1) = a1;
          LOWORD(buf[3]) = 1024;
          *(&buf[3] + 2) = v355;
          _os_log_error_impl(&dword_1DB56E000, v292, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d %@(%p) Not allowed to force algorithm config for mode=%d yet!", buf, 0x36u);
        }
      }
    }
  }

  *(a1 + 1172) = v361[v362];
  *(a1 + 1184) = micro();
  v293 = VCDefaults_GetIntValueForKey(@"forcedInitialBitrate", *(a1 + 1172));
  if (v293 == *(a1 + 1172))
  {
    goto LABEL_376;
  }

  v294 = v363;
  v295 = HIDWORD(v362) + 1;
  v296 = &vcRateControlTierBitrates[SHIDWORD(v362)];
  do
  {
    v297 = *v296--;
    --v295;
  }

  while (v297 > v293);
  if (v295 > v363)
  {
    v294 = v295;
  }

  LODWORD(v362) = v294;
  *(a1 + 1172) = v361[v294];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_376;
    }

    v299 = VRTraceErrorLogLevelToCSTR();
    v300 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_376;
    }

    v301 = *(a1 + 1172);
    LODWORD(buf[0]) = 136316162;
    *(buf + 4) = v299;
    WORD6(buf[0]) = 2080;
    *(buf + 14) = "_AVCRateController_UpdateInitialBitrateFromDefault";
    WORD3(buf[1]) = 1024;
    DWORD2(buf[1]) = 2191;
    WORD6(buf[1]) = 1024;
    *(&buf[1] + 14) = v301;
    WORD1(buf[2]) = 1024;
    DWORD1(buf[2]) = v362;
    v302 = "AVCRC [%s] %s:%d Forced the initialBitrate=%u, initialTierIndex=%d";
    v303 = v300;
    v304 = 40;
LABEL_458:
    _os_log_error_impl(&dword_1DB56E000, v303, OS_LOG_TYPE_ERROR, v302, buf, v304);
    goto LABEL_376;
  }

  if (objc_opt_respondsToSelector())
  {
    v298 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v298 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v305 = VRTraceErrorLogLevelToCSTR();
    v306 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v354 = *(a1 + 1172);
      LODWORD(buf[0]) = 136316674;
      *(buf + 4) = v305;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateController_UpdateInitialBitrateFromDefault";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 2191;
      WORD6(buf[1]) = 2112;
      *(&buf[1] + 14) = v298;
      WORD3(buf[2]) = 2048;
      *(&buf[2] + 1) = a1;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v354;
      WORD3(buf[3]) = 1024;
      DWORD2(buf[3]) = v362;
      v302 = "AVCRC [%s] %s:%d %@(%p) Forced the initialBitrate=%u, initialTierIndex=%d";
      v303 = v306;
      v304 = 60;
      goto LABEL_458;
    }
  }

LABEL_376:
  if (v451 >= 0.01)
  {
    goto LABEL_386;
  }

  _AVCRateController_ChangeECNSupport(a1, 0, 0);
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_386;
    }

    v308 = VRTraceErrorLogLevelToCSTR();
    v309 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_386;
    }

    v310 = *(a1 + 1700);
    LODWORD(buf[0]) = 136316930;
    *(buf + 4) = v308;
    WORD6(buf[0]) = 2080;
    *(buf + 14) = "_AVCRateController_ForceECNSupportToAlgorithmConfig";
    WORD3(buf[1]) = 1024;
    DWORD2(buf[1]) = 2152;
    WORD6(buf[1]) = 1024;
    *(&buf[1] + 14) = v310;
    WORD1(buf[2]) = 2048;
    *(&buf[2] + 4) = v451;
    WORD6(buf[2]) = 1024;
    *(&buf[2] + 14) = v450;
    WORD1(buf[3]) = 1024;
    DWORD1(buf[3]) = HIDWORD(v449);
    WORD4(buf[3]) = 1024;
    *(&buf[3] + 10) = v449;
    v311 = "AVCRC [%s] %s:%d Forced the default ECN settings to=%d with ceRatioDurationToRTTFactor=%f, rampDownECNBitrateLow=%u, rampDownECNBitrateMedium=%u, rampDownECNBitrateHigh=%u";
    v312 = v309;
    v313 = 62;
LABEL_425:
    _os_log_error_impl(&dword_1DB56E000, v312, OS_LOG_TYPE_ERROR, v311, buf, v313);
    goto LABEL_386;
  }

  if (objc_opt_respondsToSelector())
  {
    v307 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v307 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v314 = VRTraceErrorLogLevelToCSTR();
    v315 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v333 = *(a1 + 1700);
      LODWORD(buf[0]) = 136317442;
      *(buf + 4) = v314;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateController_ForceECNSupportToAlgorithmConfig";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 2152;
      WORD6(buf[1]) = 2112;
      *(&buf[1] + 14) = v307;
      WORD3(buf[2]) = 2048;
      *(&buf[2] + 1) = a1;
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = v333;
      WORD3(buf[3]) = 2048;
      *(&buf[3] + 1) = v451;
      LOWORD(buf[4]) = 1024;
      *(&buf[4] + 2) = v450;
      WORD3(buf[4]) = 1024;
      DWORD2(buf[4]) = HIDWORD(v449);
      WORD6(buf[4]) = 1024;
      *(&buf[4] + 14) = v449;
      v311 = "AVCRC [%s] %s:%d %@(%p) Forced the default ECN settings to=%d with ceRatioDurationToRTTFactor=%f, rampDownECNBitrateLow=%u, rampDownECNBitrateMedium=%u, rampDownECNBitrateHigh=%u";
      v312 = v315;
      v313 = 82;
      goto LABEL_425;
    }
  }

LABEL_386:
  v316 = v395;
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"enableBytesInFlightAdaptation", BoolValueForKey);
  v395 = VCDefaults_GetBoolValueForKey(@"rateControlContinuousTierAlgorithm", v316);
  v407 = VCDefaults_GetBoolValueForKey(@"rateControlLowBandwidthOptimization", *(a1 + 1952));
  v382 = VCDefaults_GetDoubleValueForKey(@"rateControlRampUpRTTThreshold", v382);
  v464 = VCDefaults_GetIntValueForKey(@"rateControlMLAlgorithmMode", v464);
  v465 = VCDefaults_GetBoolValueForKey(@"rateControlMLAlgorithmInitialRampUpOnly", 1);
  VCRateControlCongestionLevel_PopulateCongestionLevelThresholds(buf);
  v460 = buf[6];
  v461 = buf[7];
  v462 = buf[8];
  v463 = buf[9];
  v456 = buf[2];
  v457 = buf[3];
  v458 = buf[4];
  v459 = buf[5];
  v454 = buf[0];
  v455 = buf[1];
  v317 = *(a1 + 1920);
  if (v317)
  {
    VCRateControlAlgorithm_Configure(v317, &v360);
    v318 = *(a1 + 1920);
    if (v318)
    {
      v319 = *(a1 + 1336);
      if (v319)
      {
        VCRateControlAlgorithm_EnableBasebandDump(v318, v319);
      }
    }

    goto LABEL_433;
  }

  v320 = *v359;
  if (*v359 <= 6)
  {
    if (v320 > 3)
    {
      if ((v320 - 4) >= 2)
      {
        goto LABEL_433;
      }

      v323 = VCRateControlAlgorithmSparseNOWRD;
    }

    else
    {
      if (v320 == 1)
      {
        goto LABEL_399;
      }

      if (v320 != 2)
      {
        if (v320 != 3)
        {
          goto LABEL_433;
        }

        goto LABEL_399;
      }

      v323 = VCRateControlAlgorithmStabilizedNOWRD;
    }

LABEL_422:
    v321 = objc_alloc_init(v323);
    *(a1 + 1920) = v321;
    if (!v321)
    {
      goto LABEL_433;
    }

    goto LABEL_430;
  }

  if (v320 > 9)
  {
    if (v320 == 10)
    {
      v323 = VCRateControlAlgorithmLowLatencyContinuousTierMultiLink;
      goto LABEL_422;
    }

    if (v320 == 11)
    {
      v323 = VCRateControlAlgorithmTelephony;
      goto LABEL_422;
    }

    if (v320 != 12)
    {
      goto LABEL_433;
    }

    goto LABEL_404;
  }

  if ((v320 - 8) < 2)
  {
LABEL_404:
    if (v395)
    {
      v323 = VCRateControlAlgorithmLowLatencyContinuousTier;
    }

    else
    {
      v323 = VCRateControlAlgorithmLowLatencyNOWRD;
    }

    goto LABEL_422;
  }

  if (v320 != 7)
  {
    goto LABEL_433;
  }

LABEL_399:
  if (v464)
  {
    v321 = [[VCRateControlAlgorithmLayeredContinuousTierML alloc] initWithModelPath:*(a1 + 1912)];
    *(a1 + 1920) = v321;
    v322 = 5;
  }

  else
  {
    v331 = BoolValueForKey;
    if (v395)
    {
      v321 = objc_alloc_init(VCRateControlAlgorithmLayeredContinuousTier);
      *(a1 + 1920) = v321;
      _ZF = !v331;
      v322 = 3;
    }

    else
    {
      v321 = objc_alloc_init(VCRateControlAlgorithmStabilizedNOWRD);
      *(a1 + 1920) = v321;
      _ZF = !v331;
      v322 = 1;
    }

    if (_ZF)
    {
      ++v322;
    }
  }

  *(a1 + 1904) = v322;
  if (v321)
  {
LABEL_430:
    VCRateControlAlgorithm_Configure(v321, &v360);
    VCRateControlAlgorithm_EnableLogDump(*(a1 + 1920), *(a1 + 1320), *(a1 + 1376));
    if (*(a1 + 56))
    {
      [*(a1 + 1920) setMediaController:?];
    }

    _AVCRateController_RegisterStatisticsChangeHandlers(a1);
  }

LABEL_433:
  _AVCRateController_NotifyTargetBitrateChange(a1);
  if (*(a1 + 72) == 10)
  {
    v334 = *(a1 + 1920);
    if (([v334 isTargetBitrateStuckAtMinTierInMultiLinkMode] & 1) == 0)
    {
      if (v334)
      {
        [v334 poorestLinkStatistics];
        v335 = HIDWORD(v489);
      }

      else
      {
        v335 = 0;
        v489 = 0;
        v488 = 0u;
        v487 = 0u;
        v486 = 0u;
        v485 = 0u;
        v484 = 0u;
        v483 = 0u;
        v482 = 0u;
        v481 = 0u;
        v480 = 0u;
        v479 = 0u;
        v478 = 0u;
        v477 = 0u;
      }

      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 16) rateController:a1 targetBitrateUnchangedForRemoteSSRC:v335 targetBitrate:*(a1 + 1196)];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v336 = VRTraceErrorLogLevelToCSTR();
          v337 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v338 = *(a1 + 1920);
            if (v338)
            {
              [v338 config];
              v339 = DWORD2(buf[1]);
            }

            else
            {
              bzero(buf, 0x400uLL);
              v339 = 0;
            }

            *v470 = 136316674;
            *&v470[4] = v336;
            *&v470[12] = 2080;
            *&v470[14] = "_AVCRateController_NotifyDelegateAboutUnchangedTargetBitrate";
            *&v470[22] = 1024;
            *&v470[24] = 2817;
            *&v470[28] = 2048;
            *&v470[30] = a1;
            v471 = 2048;
            v472 = v334;
            v473 = 1024;
            v474 = v339;
            v475 = 1024;
            v476 = v335;
            _os_log_impl(&dword_1DB56E000, v337, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d Notified Delegate about rate controller=%p multilink mode algorithm=%p stuck at minTier=%d, for remoteSSRC=%d", v470, 0x3Cu);
          }
        }
      }
    }
  }

  v340 = *(a1 + 1920);
  if (!v340)
  {
    goto LABEL_455;
  }

  [v340 config];
  v341 = *(a1 + 1920);
  v342 = v469;
  if (v341)
  {
    [v341 reportStatistics];
    if (!v342 || DWORD1(v477))
    {
      goto LABEL_455;
    }

    v343 = *(a1 + 1920);
    v466 = @"SBVERS";
    v344 = MEMORY[0x1E696AD98];
    if (v343)
    {
      [v343 reportStatistics];
      v345 = v470[28];
LABEL_454:
      v467 = [v344 numberWithUnsignedChar:v345];
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v467 forKeys:&v466 count:1];
      reportingGenericEvent();
      goto LABEL_455;
    }

LABEL_453:
    v345 = 0;
    memset(v470, 0, 32);
    goto LABEL_454;
  }

  v478 = 0u;
  v477 = 0u;
  if (v469)
  {
    v466 = @"SBVERS";
    v344 = MEMORY[0x1E696AD98];
    goto LABEL_453;
  }

LABEL_455:
  v346 = v363;
  *(a1 + 1176) = vcRateControlTierBitrates[SHIDWORD(v362)];
  *(a1 + 1180) = vcRateControlTierBitrates[v346];
  *v470 = @"maxTargetBitrate";
  *&v477 = [MEMORY[0x1E696AD98] numberWithDouble:(*(a1 + 84) / 0x3E8u)];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v477 forKeys:v470 count:1];
  reportingGenericEvent();
  [*(a1 + 1920) setMachineLearningEnvironment:{*(a1 + 76), *(a1 + 72)}];
  v347 = *(a1 + 1904);
  v348 = *(a1 + 80);
  v349 = *(a1 + 72);
  v350 = *(a1 + 1176);
  v351 = micro();
  v352 = *(a1 + 1172);
  *(&buf[2] + 4) = 0;
  memset(&buf[4] + 8, 0, 96);
  buf[0] = 0xAAAAAAAA00000004;
  buf[1] = *&v351;
  HIDWORD(buf[2]) = 0;
  LODWORD(buf[2]) = v352;
  *(&buf[3] + 4) = v349;
  LODWORD(buf[3]) = v347;
  HIDWORD(buf[3]) = v348;
  *&buf[4] = vrev64_s32(v350);
  VCReporting_DumpIntoDataStore();
  v45 = *(a1 + 112);
LABEL_456:
  VCStatisticsCollector_SetFastSuddenBandwidthDetectionEnabled(v6, (v45 & 0x10) != 0);
  VCStatisticsCollector_SetL4SHighDataRateEnabled(v6, HIWORD(*(a1 + 112)) & 1);
  return [v6 setServerBag:*(a1 + 1544)];
}

uint64_t _AVCRateController_RegisterStatisticsChangeHandlers(uint64_t result)
{
  v1 = result;
  v26[5] = *MEMORY[0x1E69E9840];
  v2 = *(result + 72);
  if (v2 > 7)
  {
    if (v2 > 10)
    {
      if (v2 == 11)
      {
        v4 = *(result + 32);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_14;
        v13[3] = &unk_1E85F3998;
        v13[4] = v1;
        v5 = v13;
        v6 = 12;
      }

      else
      {
        if (v2 != 12)
        {
          return result;
        }

        v4 = *(result + 32);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_5;
        v22[3] = &unk_1E85F3998;
        v22[4] = v1;
        v5 = v22;
        v6 = 15;
      }
    }

    else if ((v2 - 8) >= 2)
    {
      if (v2 != 10)
      {
        return result;
      }

      v10 = *(result + 32);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_8;
      v19[3] = &unk_1E85F3998;
      v19[4] = v1;
      [v10 registerStatisticsChangeHandlerWithType:2 handler:v19];
      v11 = *(v1 + 32);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_9;
      v18[3] = &unk_1E85F3998;
      v18[4] = v1;
      [v11 registerStatisticsChangeHandlerWithType:11 handler:v18];
      v4 = *(v1 + 32);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_10;
      v17[3] = &unk_1E85F3998;
      v17[4] = v1;
      v5 = v17;
      v6 = 16;
    }

    else
    {
      v3 = *(result + 32);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_6;
      v21[3] = &unk_1E85F3998;
      v21[4] = v1;
      [v3 registerStatisticsChangeHandlerWithType:2 handler:v21];
      v4 = *(v1 + 32);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_7;
      v20[3] = &unk_1E85F3998;
      v20[4] = v1;
      v5 = v20;
      v6 = 11;
    }

    return [v4 registerStatisticsChangeHandlerWithType:v6 handler:v5];
  }

  if (v2 > 3)
  {
    if (v2 == 4)
    {
      v12 = *(result + 32);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_11;
      v16[3] = &unk_1E85F3998;
      v16[4] = v1;
      [v12 registerStatisticsChangeHandlerWithType:5 handler:v16];
      v4 = *(v1 + 32);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_12;
      v15[3] = &unk_1E85F3998;
      v15[4] = v1;
      v5 = v15;
      v6 = 1;
      return [v4 registerStatisticsChangeHandlerWithType:v6 handler:v5];
    }

    if (v2 == 5)
    {
      v4 = *(result + 32);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_13;
      v14[3] = &unk_1E85F3998;
      v14[4] = v1;
      v5 = v14;
      v6 = 5;
      return [v4 registerStatisticsChangeHandlerWithType:v6 handler:v5];
    }

    if (v2 != 7)
    {
      return result;
    }

LABEL_11:
    v7 = *(result + 32);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke;
    v26[3] = &unk_1E85F3998;
    v26[4] = v1;
    [v7 registerStatisticsChangeHandlerWithType:2 handler:v26];
    v8 = *(v1 + 32);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_2;
    v25[3] = &unk_1E85F3998;
    v25[4] = v1;
    [v8 registerStatisticsChangeHandlerWithType:1 handler:v25];
    v9 = *(v1 + 32);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_3;
    v24[3] = &unk_1E85F3998;
    v24[4] = v1;
    [v9 registerStatisticsChangeHandlerWithType:11 handler:v24];
    v4 = *(v1 + 32);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___AVCRateController_RegisterStatisticsChangeHandlers_block_invoke_4;
    v23[3] = &unk_1E85F3998;
    v23[4] = v1;
    v5 = v23;
    v6 = 14;
    return [v4 registerStatisticsChangeHandlerWithType:v6 handler:v5];
  }

  if ((v2 - 1) < 3)
  {
    goto LABEL_11;
  }

  return result;
}

void AVCRateController_ApplyServerBagLossBasedAdaptationConfig(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1544);
  v5 = [v4 containsAllSecondaryKeysWithPrimaryKey:@"lossBasedAdaptation"];
  if (v5)
  {
    [objc_msgSend(v4 valueForSecondaryKeyWithPrimaryKey:@"lossBasedAdaptation" secondaryKey:@"packetLossRateThresholdInitial" type:{0), "doubleValue"}];
    a2[91] = v6;
    [objc_msgSend(v4 valueForSecondaryKeyWithPrimaryKey:@"lossBasedAdaptation" secondaryKey:@"packetLossRateThresholdMin" type:{0), "doubleValue"}];
    a2[92] = v7;
    [objc_msgSend(v4 valueForSecondaryKeyWithPrimaryKey:@"lossBasedAdaptation" secondaryKey:@"packetLossRateThresholdMax" type:{0), "doubleValue"}];
    a2[93] = v8;
    [objc_msgSend(v4 valueForSecondaryKeyWithPrimaryKey:@"lossBasedAdaptation" secondaryKey:@"packetLossRateThresholdTarget" type:{0), "doubleValue"}];
    a2[94] = v9;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = [@"lossBasedAdaptation" UTF8String];
      v13 = a2[91];
      v14 = a2[92];
      v15 = a2[93];
      v16 = a2[94];
      v17 = 136317442;
      v18 = v10;
      v19 = 2080;
      v20 = "AVCRateController_ApplyServerBagLossBasedAdaptationConfig";
      v21 = 1024;
      v22 = 1925;
      v23 = 2048;
      v24 = a1;
      v25 = 2080;
      v26 = v12;
      v27 = 1024;
      v28 = v5;
      v29 = 2048;
      v30 = v13;
      v31 = 2048;
      v32 = v14;
      v33 = 2048;
      v34 = v15;
      v35 = 2048;
      v36 = v16;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d packetLossRateThresholdInitial=%f packetLossRateThresholdMin=%f packetLossRateThresholdMax=%f packetLossRateThresholdTarget=%f", &v17, 0x5Eu);
    }
  }
}

void _AVCRateController_ApplyServerBagBasebandConfig(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1544);
  v5 = [v4 containsAllSecondaryKeysWithPrimaryKey:@"baseband"];
  if (v5)
  {
    *(a2 + 379) &= [objc_msgSend(v4 valueForSecondaryKeyWithPrimaryKey:@"baseband" secondaryKey:@"disableBBAdaptation" type:{0), "BOOLValue"}] ^ 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = [@"baseband" UTF8String];
      v9 = *(a2 + 379);
      v10 = 136316674;
      v11 = v6;
      v12 = 2080;
      v13 = "_AVCRateController_ApplyServerBagBasebandConfig";
      v14 = 1024;
      v15 = 1935;
      v16 = 2048;
      v17 = a1;
      v18 = 2080;
      v19 = v8;
      v20 = 1024;
      v21 = v5;
      v22 = 1024;
      v23 = v9;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d basebandAdaptationEnabled=%d", &v10, 0x3Cu);
    }
  }
}

void _AVCRateController_ApplyServerBagSmartBrakeConfig(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a1[193];
  v5 = [v4 containsAllSecondaryKeysWithPrimaryKey:@"smartBrake"];
  if (v5)
  {
    *(a2 + 848) = [objc_msgSend(v4 valueForSecondaryKeyWithPrimaryKey:@"smartBrake" secondaryKey:@"strategyNum" type:{0), "intValue"}];
  }

  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = [@"smartBrake" UTF8String];
        v10 = *(a2 + 848);
        v18 = 136316418;
        v19 = v7;
        v20 = 2080;
        v21 = "_AVCRateController_ApplyServerBagSmartBrakeConfig";
        v22 = 1024;
        v23 = 1955;
        v24 = 2080;
        v25 = v9;
        v26 = 1024;
        *v27 = v5;
        *&v27[4] = 1024;
        *&v27[6] = v10;
        v11 = "AVCRC [%s] %s:%d Config for key=%s serverBagContainsGroup=%d smartBrakeStrategy=%u";
        v12 = v8;
        v13 = 50;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v18, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = [@"smartBrake" UTF8String];
        v17 = *(a2 + 848);
        v18 = 136316930;
        v19 = v14;
        v20 = 2080;
        v21 = "_AVCRateController_ApplyServerBagSmartBrakeConfig";
        v22 = 1024;
        v23 = 1955;
        v24 = 2112;
        v25 = v6;
        v26 = 2048;
        *v27 = a1;
        *&v27[8] = 2080;
        v28 = v16;
        v29 = 1024;
        v30 = v5;
        v31 = 1024;
        v32 = v17;
        v11 = "AVCRC [%s] %s:%d %@(%p) Config for key=%s serverBagContainsGroup=%d smartBrakeStrategy=%u";
        v12 = v15;
        v13 = 70;
        goto LABEL_13;
      }
    }
  }
}

void _AVCRateController_ApplyServerBagECNConfig(void *a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a1[193];
  v5 = [v4 containsAllSecondaryKeysWithPrimaryKey:@"l4secn"];
  if (v5)
  {
    *(a2 + 816) = 1000 * [objc_msgSend(v4 valueForSecondaryKeyWithPrimaryKey:@"l4secn" secondaryKey:@"ecnBitrateLow" type:{0), "intValue"}];
    *(a2 + 812) = 1000 * [objc_msgSend(v4 valueForSecondaryKeyWithPrimaryKey:@"l4secn" secondaryKey:@"ecnBitrateMedium" type:{0), "intValue"}];
    *(a2 + 808) = 1000 * [objc_msgSend(v4 valueForSecondaryKeyWithPrimaryKey:@"l4secn" secondaryKey:@"ecnBitrateHigh" type:{0), "intValue"}];
    *(a2 + 824) = [objc_msgSend(v4 valueForSecondaryKeyWithPrimaryKey:@"l4secn" secondaryKey:@"ecnCEDurationToRTT" type:{0), "intValue"}];
  }

  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = [@"l4secn" UTF8String];
        v10 = *(a2 + 824);
        v11 = *(a2 + 816);
        v12 = *(a2 + 812);
        v13 = *(a2 + 808);
        v24 = 136317186;
        v25 = v7;
        v26 = 2080;
        v27 = "_AVCRateController_ApplyServerBagECNConfig";
        v28 = 1024;
        v29 = 1967;
        v30 = 2080;
        v31 = v9;
        v32 = 1024;
        *v33 = v5;
        *&v33[4] = 2048;
        *&v33[6] = v10;
        *&v33[14] = 1024;
        *&v33[16] = v11;
        *v34 = 1024;
        *&v34[2] = v12;
        LOWORD(v35) = 1024;
        *(&v35 + 2) = v13;
        v14 = "AVCRC [%s] %s:%d Config for key=%s serverBagContainsGroup=%d ceRatioDurationToRTTFactor=%f, rampDownECNBitrateLow=%u, rampDownECNBitrateMedium=%u, rampDownECNBitrateHigh=%u";
        v15 = v8;
        v16 = 72;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v24, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = [@"l4secn" UTF8String];
        v20 = *(a2 + 824);
        v21 = *(a2 + 816);
        v22 = *(a2 + 812);
        v23 = *(a2 + 808);
        v24 = 136317698;
        v25 = v17;
        v26 = 2080;
        v27 = "_AVCRateController_ApplyServerBagECNConfig";
        v28 = 1024;
        v29 = 1967;
        v30 = 2112;
        v31 = v6;
        v32 = 2048;
        *v33 = a1;
        *&v33[8] = 2080;
        *&v33[10] = v19;
        *&v33[18] = 1024;
        *v34 = v5;
        *&v34[4] = 2048;
        v35 = v20;
        v36 = 1024;
        v37 = v21;
        v38 = 1024;
        v39 = v22;
        v40 = 1024;
        v41 = v23;
        v14 = "AVCRC [%s] %s:%d %@(%p) Config for key=%s serverBagContainsGroup=%d ceRatioDurationToRTTFactor=%f, rampDownECNBitrateLow=%u, rampDownECNBitrateMedium=%u, rampDownECNBitrateHigh=%u";
        v15 = v18;
        v16 = 92;
        goto LABEL_13;
      }
    }
  }
}

void _AVCRateController_ApplyServerBagBIFConfig(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a1[193];
  v5 = [v4 containsAllSecondaryKeysWithPrimaryKey:@"bif"];
  if (v5)
  {
    *(a2 + 376) &= [objc_msgSend(v4 valueForSecondaryKeyWithPrimaryKey:@"bif" secondaryKey:@"enabled" type:{0), "intValue"}];
  }

  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = [@"bif" UTF8String];
        v10 = *(a2 + 376);
        v18 = 136316418;
        v19 = v7;
        v20 = 2080;
        v21 = "_AVCRateController_ApplyServerBagBIFConfig";
        v22 = 1024;
        v23 = 1976;
        v24 = 2080;
        v25 = v9;
        v26 = 1024;
        *v27 = v5;
        *&v27[4] = 1024;
        *&v27[6] = v10;
        v11 = "AVCRC [%s] %s:%d Config for key=%s serverBagContainsGroup=%d bytesInFlightAdaptationEnabled=%d";
        v12 = v8;
        v13 = 50;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v18, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = [@"bif" UTF8String];
        v17 = *(a2 + 376);
        v18 = 136316930;
        v19 = v14;
        v20 = 2080;
        v21 = "_AVCRateController_ApplyServerBagBIFConfig";
        v22 = 1024;
        v23 = 1976;
        v24 = 2112;
        v25 = v6;
        v26 = 2048;
        *v27 = a1;
        *&v27[8] = 2080;
        v28 = v16;
        v29 = 1024;
        v30 = v5;
        v31 = 1024;
        v32 = v17;
        v11 = "AVCRC [%s] %s:%d %@(%p) Config for key=%s serverBagContainsGroup=%d bytesInFlightAdaptationEnabled=%d";
        v12 = v15;
        v13 = 70;
        goto LABEL_13;
      }
    }
  }
}

void _AVCRateController_ApplyServerBagContinuousAdaptationConfig(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1544);
  v5 = [v4 containsAllSecondaryKeysWithPrimaryKey:@"continuous"];
  if (v5)
  {
    [objc_msgSend(v4 valueForSecondaryKeyWithPrimaryKey:@"continuous" secondaryKey:@"timeFactorMedium" type:{0), "doubleValue"}];
    *(a2 + 352) = v6;
    [objc_msgSend(v4 valueForSecondaryKeyWithPrimaryKey:@"continuous" secondaryKey:@"timeFactorHigh" type:{0), "doubleValue"}];
    *(a2 + 360) = v7;
    [objc_msgSend(v4 valueForSecondaryKeyWithPrimaryKey:@"continuous" secondaryKey:@"timeFactorExcellent" type:{0), "doubleValue"}];
    *(a2 + 368) = v8;
    *(a2 + 377) = *(a2 + 352) > 0.5;
  }

  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = [@"continuous" UTF8String];
        v13 = *(a2 + 377);
        v14 = *(a1 + 72);
        v23 = 136316674;
        v24 = v10;
        v25 = 2080;
        v26 = "_AVCRateController_ApplyServerBagContinuousAdaptationConfig";
        v27 = 1024;
        v28 = 1989;
        v29 = 2080;
        v30 = v12;
        v31 = 1024;
        *v32 = v5;
        *&v32[4] = 1024;
        *&v32[6] = v13;
        LOWORD(v33) = 1024;
        *(&v33 + 2) = v14;
        v15 = "AVCRC [%s] %s:%d Config for key=%s serverBagContainsGroup=%d useContinuousAdaptationAlgorithm=%d mode=%u";
        v16 = v11;
        v17 = 56;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, &v23, v17);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = [@"continuous" UTF8String];
        v21 = *(a2 + 377);
        v22 = *(a1 + 72);
        v23 = 136317186;
        v24 = v18;
        v25 = 2080;
        v26 = "_AVCRateController_ApplyServerBagContinuousAdaptationConfig";
        v27 = 1024;
        v28 = 1989;
        v29 = 2112;
        v30 = v9;
        v31 = 2048;
        *v32 = a1;
        *&v32[8] = 2080;
        v33 = v20;
        v34 = 1024;
        v35 = v5;
        v36 = 1024;
        v37 = v21;
        v38 = 1024;
        v39 = v22;
        v15 = "AVCRC [%s] %s:%d %@(%p) Config for key=%s serverBagContainsGroup=%d useContinuousAdaptationAlgorithm=%d mode=%u";
        v16 = v19;
        v17 = 76;
        goto LABEL_13;
      }
    }
  }
}

void _AVCRateController_ApplyServerBagLowLatencyContinuousAdaptationConfig(void *a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a1[193];
  v5 = [v4 containsAllSecondaryKeysWithPrimaryKey:@"continuousLL"];
  if (v5)
  {
    [objc_msgSend(v4 valueForSecondaryKeyWithPrimaryKey:@"continuousLL" secondaryKey:@"speedFactorRampUp" type:{0), "doubleValue"}];
    *(a2 + 592) = v6;
    [objc_msgSend(v4 valueForSecondaryKeyWithPrimaryKey:@"continuousLL" secondaryKey:@"speedFactorRampDown" type:{0), "doubleValue"}];
    *(a2 + 584) = v7;
    *(a2 + 377) = *(a2 + 592) > 0.0;
  }

  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = [@"continuousLL" UTF8String];
        v12 = *(a2 + 377);
        v13 = *(a2 + 592);
        v14 = *(a2 + 584);
        v24 = 136316930;
        v25 = v9;
        v26 = 2080;
        v27 = "_AVCRateController_ApplyServerBagLowLatencyContinuousAdaptationConfig";
        v28 = 1024;
        v29 = 2001;
        v30 = 2080;
        v31 = v11;
        v32 = 1024;
        *v33 = v5;
        *&v33[4] = 1024;
        *&v33[6] = v12;
        *v34 = 2048;
        *&v34[2] = v13;
        *v35 = 2048;
        *&v35[2] = v14;
        v15 = "AVCRC [%s] %s:%d Config for key=%s serverBagContainsGroup=%d useContinuousAdaptationAlgorithm=%d, rampUpContinuousTierSpeedFactor=%f, rampDownContinuousTierSpeedFactor=%f";
        v16 = v10;
        v17 = 70;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, &v24, v17);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = [@"continuousLL" UTF8String];
        v21 = *(a2 + 377);
        v22 = *(a2 + 592);
        v23 = *(a2 + 584);
        v24 = 136317442;
        v25 = v18;
        v26 = 2080;
        v27 = "_AVCRateController_ApplyServerBagLowLatencyContinuousAdaptationConfig";
        v28 = 1024;
        v29 = 2001;
        v30 = 2112;
        v31 = v8;
        v32 = 2048;
        *v33 = a1;
        *&v33[8] = 2080;
        *v34 = v20;
        *&v34[8] = 1024;
        *v35 = v5;
        *&v35[4] = 1024;
        *&v35[6] = v21;
        v36 = 2048;
        v37 = v22;
        v38 = 2048;
        v39 = v23;
        v15 = "AVCRC [%s] %s:%d %@(%p) Config for key=%s serverBagContainsGroup=%d useContinuousAdaptationAlgorithm=%d, rampUpContinuousTierSpeedFactor=%f, rampDownContinuousTierSpeedFactor=%f";
        v16 = v19;
        v17 = 90;
        goto LABEL_13;
      }
    }
  }
}

void _AVCRateController_NotifyTargetBitrateChange(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = micro();
  if (v2 - *(a1 + 1384) > 3.0)
  {
    *(a1 + 1384) = v2;
    BoolValueForKey = VCDefaults_GetBoolValueForKey(@"forceBBFlush", 0);
    if (*(a1 + 1392) != BoolValueForKey)
    {
      *(a1 + 1392) = BoolValueForKey;
      VCRateControlMediaController_SetForceBBFlush(*(a1 + 56), BoolValueForKey, v2);
    }

    v5 = (a1 + 72);
    v4 = *(a1 + 72);
    v6 = +[VCDefaults sharedInstance];
    if (v4 == 5)
    {
      *(a1 + 1404) = [(VCDefaults *)v6 rateControlForceRxCap];
      v7 = [+[VCDefaults sharedInstance](VCDefaults rateControlForceRxRate];
    }

    else
    {
      *(a1 + 1404) = [(VCDefaults *)v6 rateControlForceTxCap];
      v7 = [+[VCDefaults sharedInstance](VCDefaults rateControlForceTxRate];
    }

    *(a1 + 1400) = v7;
    if (*(a1 + 1404) >= 10000)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 1404);
          *v38 = 136316162;
          *&v38[4] = v8;
          *&v38[12] = 2080;
          *&v38[14] = "AVCRateController_LoadDefaultSettings";
          *&v38[22] = 1024;
          *&v38[24] = 3247;
          *&v38[28] = 2048;
          *&v38[30] = a1;
          *&v38[38] = 1024;
          *&v38[40] = v10;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d (%p) Forcing VCRateControl TxCap to %u from defaults", v38, 0x2Cu);
        }
      }

      v11 = *(a1 + 88);
      *v38 = *v5;
      *&v38[16] = v11;
      *&v38[32] = *(a1 + 104);
      *&v38[12] = *(a1 + 1404);
      _AVCRateController_ConfigureInternal(a1, v38);
      v7 = *(a1 + 1400);
    }

    if ((v7 & 0x80000000) == 0 && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 1400);
        *v38 = 136316162;
        *&v38[4] = v12;
        *&v38[12] = 2080;
        *&v38[14] = "AVCRateController_LoadDefaultSettings";
        *&v38[22] = 1024;
        *&v38[24] = 3253;
        *&v38[28] = 2048;
        *&v38[30] = a1;
        *&v38[38] = 1024;
        *&v38[40] = v14;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d (%p) Forcing VCRateControl TxRate to %u from defaults", v38, 0x2Cu);
      }
    }

    if (*v5 <= 7u && ((1 << *v5) & 0x8E) != 0)
    {
      if (*(a1 + 76) == 6)
      {
        v15 = 1;
      }

      else
      {
        v15 = [+[VCDefaults sharedInstance](VCDefaults rateControlAllowVideoStop];
      }

      VCRateControlMediaController_SetAllowVideoStop(*(a1 + 56), v15);
    }
  }

  if (*(a1 + 16))
  {
    LODWORD(v16) = [*(a1 + 1920) targetBitrate];
    v17 = [*(a1 + 1920) rateChangeCounter];
    v18 = [*(a1 + 1920) targetBitrateTier];
    v19 = v18;
    v20 = *(a1 + 1400);
    if (v20 >= 0)
    {
      v16 = v20;
    }

    else
    {
      v16 = v16;
    }

    if (((*(a1 + 72) - 10) & 0xFFFFFFFD) != 0)
    {
      v21 = 10;
    }

    else
    {
      v21 = 1;
    }

    v22 = !v18 || ([*(a1 + 1920) isRampingDown] & 1) != 0 || *(a1 + 1204) != v19 || v17 - *(a1 + 1208) >= v21;
    if (*(a1 + 1196) == v16)
    {
      if (*(a1 + 1208) == v17 || !v22)
      {
        return;
      }
    }

    else if (!v22)
    {
      return;
    }

    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_52;
      }

      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      v26 = *(a1 + 72);
      v27 = *(a1 + 1196);
      v28 = *(a1 + 1208);
      *v38 = 136317186;
      *&v38[4] = v24;
      *&v38[12] = 2080;
      *&v38[14] = "_AVCRateController_NotifyTargetBitrateChange";
      *&v38[22] = 1024;
      *&v38[24] = 3200;
      *&v38[28] = 1024;
      *&v38[30] = v26;
      *&v38[34] = 1024;
      *&v38[36] = v27;
      *&v38[40] = 1024;
      *&v38[42] = v16;
      *&v38[46] = 1024;
      *v39 = v28;
      *&v39[4] = 1024;
      *&v39[6] = v17;
      *&v39[10] = 1024;
      *&v39[12] = v19;
      v29 = "AVCRC [%s] %s:%d Notify target bitrate change for mode=%d oldTargetBitrate=%u to newTargetBitrate=%u, oldRateChangeCounter=%u to newRateChangeCounter=%u, targetBitrateTier=%u";
      v30 = v25;
      v31 = 64;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v23 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v23 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_52;
      }

      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      v34 = *(a1 + 72);
      v35 = *(a1 + 1196);
      v36 = *(a1 + 1208);
      *v38 = 136317698;
      *&v38[4] = v32;
      *&v38[12] = 2080;
      *&v38[14] = "_AVCRateController_NotifyTargetBitrateChange";
      *&v38[22] = 1024;
      *&v38[24] = 3200;
      *&v38[28] = 2112;
      *&v38[30] = v23;
      *&v38[38] = 2048;
      *&v38[40] = a1;
      *v39 = 1024;
      *&v39[2] = v34;
      *&v39[6] = 1024;
      *&v39[8] = v35;
      *&v39[12] = 1024;
      *&v39[14] = v16;
      *&v39[18] = 1024;
      *&v39[20] = v36;
      LOWORD(v40) = 1024;
      *(&v40 + 2) = v17;
      HIWORD(v40) = 1024;
      LODWORD(v41) = v19;
      v29 = "AVCRC [%s] %s:%d %@(%p) Notify target bitrate change for mode=%d oldTargetBitrate=%u to newTargetBitrate=%u, oldRateChangeCounter=%u to newRateChangeCounter=%u, targetBitrateTier=%u";
      v30 = v33;
      v31 = 84;
    }

    _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, v29, v38, v31);
LABEL_52:
    *(a1 + 1196) = v16;
    *(a1 + 1200) = v19;
    [*(a1 + 1944) setTargetBitrate:{v16, *v38, *&v38[16], *&v38[24], *&v38[40], *v39, *&v39[16], v40, v41, v42}];
    v37 = *(a1 + 72);
    if (v37 <= 7 && ((1 << v37) & 0x8E) != 0)
    {
      VCRateControlMediaController_SetTargetBitrate(*(a1 + 56), *(a1 + 1196));
    }

    *(a1 + 1208) = v17;
    if (*(a1 + 24) == 1)
    {
      *(a1 + 25) = 1;
    }

    else
    {
      [*(a1 + 16) rateController:a1 targetBitrateDidChange:v16 rateChangeCounter:v17];
    }

    *(a1 + 1204) = *(a1 + 1200);
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _AVCRateController_NotifyTargetBitrateChange_cold_1();
    }
  }
}

uint64_t _AVCRateController_MultiwayMaxTierFromServerBag(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) != 1)
  {
    return 31;
  }

  v2 = [*(a1 + 1544) containsAllSecondaryKeysWithPrimaryKey:@"maxBitrate"];
  if (v2)
  {
    v3 = [objc_msgSend(*(a1 + 1544) valueForSecondaryKeyWithPrimaryKey:@"maxBitrate" secondaryKey:@"burstyTrafficUplink" type:{0), "integerValue"}];
    v4 = [objc_msgSend(*(a1 + 1544) valueForSecondaryKeyWithPrimaryKey:@"maxBitrate" secondaryKey:@"burstyTrafficDownlink" type:{0), "integerValue"}];
  }

  else
  {
    v3 = 34;
    v4 = 37;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316930;
      v9 = v6;
      v10 = 2080;
      v11 = "_AVCRateController_MultiwayMaxTierFromServerBag";
      v12 = 1024;
      v13 = 2124;
      v14 = 2048;
      v15 = a1;
      v16 = 2080;
      v17 = [@"maxBitrate" UTF8String];
      v18 = 1024;
      v19 = v2;
      v20 = 1024;
      v21 = v3;
      v22 = 1024;
      v23 = v4;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d burstyTrafficUplink=%d burstyTrafficDownlink=%d", &v8, 0x42u);
    }
  }

  if (*(a1 + 72) == 4)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t _AVCRateController_ChangeECNSupport(uint64_t a1, char a2, uint64_t a3)
{
  *(a1 + 1700) = a2;
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 1700);

    return [v6 rateController:a1 isECNEnabled:v7 isECNCapable:a3];
  }

  return result;
}

void _AVCRateController_DoRateControlWithStatistics(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v148 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 1328);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = *(a1 + 72);
  if (v11 > 6)
  {
    if ((v11 - 8) < 3)
    {
      v12 = *(a2 + 68);
      RTPPackDouble(*(a2 + 80));
      VRLogfilePrint(v10, "%04X\t%u\t%u\t%u\t%u\t%u\t%04X\t%u\n", v13, v14, v15, v16, v17, v18, v12);
      goto LABEL_11;
    }

    if (v11 == 12)
    {
      VRLogfilePrint(v10, "%u\t%u\t%u\t%u\t%u\t%u\t%u\t%u\t%f\n", a3, a4, a5, a6, a7, a8, *(a2 + 24));
      goto LABEL_11;
    }

    if (v11 != 7)
    {
      goto LABEL_84;
    }

LABEL_10:
    v114 = *(a2 + 68);
    RTPPackDouble(*(a2 + 80));
    VRLogfilePrint(v10, "%04X\t%u\t%u\t%u\t%u\t%u\t%u\t%u\t%04X\t%u\n", v19, v20, v21, v22, v23, v24, v114);
    goto LABEL_11;
  }

  if ((v11 - 1) < 3)
  {
    goto LABEL_10;
  }

  if ((v11 - 4) < 2)
  {
    VRLogfilePrint(v10, "%04X\t%04X\t%u\t%u\t%u\t%u\t%u\t%.2f\t%u\t%u\t%.3f\t%u\t%f\n", a3, a4, a5, a6, a7, a8, *(a2 + 28));
    goto LABEL_11;
  }

LABEL_84:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v74 = VRTraceErrorLogLevelToCSTR();
    v75 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v76 = *(a1 + 72);
      *buf = 136316162;
      *&buf[4] = v74;
      *&buf[12] = 2080;
      *&buf[14] = "_AVCRateController_PrintFeedbackMessage";
      *&buf[22] = 1024;
      LODWORD(v136) = 3436;
      WORD2(v136) = 2048;
      *(&v136 + 6) = a1;
      HIWORD(v136) = 1024;
      LODWORD(v137) = v76;
      _os_log_error_impl(&dword_1DB56E000, v75, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d (%p) Configuration mode %d not supported", buf, 0x2Cu);
    }
  }

LABEL_11:
  if (_AVCRateController_DoRateControl(a1, a2))
  {
    _AVCRateController_DoRateControlWithStatistics_cold_1(a1, a2);
  }

  v25 = *(a1 + 1920);
  if (v25)
  {
    [v25 reportStatistics];
    v26 = v122;
  }

  else
  {
    v26 = 0;
  }

  if (v26 != *(a1 + 1704))
  {
    *(a1 + 1704) = v26;
    v27 = *(a1 + 1920);
    if (!v27 || ([v27 reportStatistics], !v121))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v29 = MEMORY[0x1E696AD98];
        v30 = *(a1 + 1920);
        if (v30)
        {
          [v30 reportStatistics];
          v31 = v120;
        }

        else
        {
          v31 = 0;
        }

        CFDictionaryAddValue(Mutable, @"CongestionIndex", [v29 numberWithUnsignedInt:v31]);
        v32 = MEMORY[0x1E696AD98];
        v33 = *(a1 + 1920);
        if (v33)
        {
          [v33 reportStatistics];
          v34 = v119 * 1000.0;
        }

        else
        {
          v34 = 0.0;
        }

        CFDictionaryAddValue(Mutable, @"CongestionDuration", [v32 numberWithDouble:ceil(v34)]);
        v35 = MEMORY[0x1E696AD98];
        v36 = *(a1 + 1920);
        if (v36)
        {
          [v36 reportStatistics];
          v37 = (v118 / 1000);
        }

        else
        {
          v37 = 0.0;
        }

        CFDictionaryAddValue(Mutable, @"StartTargetTxR", [v35 numberWithDouble:v37]);
        v38 = MEMORY[0x1E696AD98];
        v39 = *(a1 + 1920);
        if (v39)
        {
          [v39 reportStatistics];
          v40 = (v117 / 1000);
        }

        else
        {
          v40 = 0.0;
        }

        CFDictionaryAddValue(Mutable, @"StartBWE", [v38 numberWithDouble:v40]);
        v41 = MEMORY[0x1E696AD98];
        v42 = *(a1 + 1920);
        if (v42)
        {
          [v42 reportStatistics];
          v43 = (v116 / 1000);
        }

        else
        {
          v43 = 0.0;
        }

        CFDictionaryAddValue(Mutable, @"EndBWE", [v41 numberWithDouble:v43]);
        reportingGenericEvent();
        CFRelease(Mutable);
        v44 = *(a1 + 1920);
        if (v44)
        {
          [v44 reportStatistics];
          v45 = v115;
          v44 = *(a1 + 1920);
        }

        else
        {
          v45 = 0;
        }

        v133[0] = 0;
        v133[1] = v133;
        v133[2] = 0x2020000000;
        v134 = 0;
        v131[0] = 0;
        v131[1] = v131;
        v131[2] = 0x2020000000;
        v132 = 0;
        v129[0] = 0;
        v129[1] = v129;
        v129[2] = 0x2020000000;
        v130 = 0;
        if (v44)
        {
          [v44 reportStatistics];
          v46 = v127;
        }

        else
        {
          v46 = 0;
          v127 = 0u;
          v128 = 0u;
        }

        v47 = *(a1 + 1720);
        v48 = dispatch_time(0, 5000000000);
        v49 = *(a1 + 1712);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___AVCRateController_SetupDelayedReportingSmartBrake_block_invoke;
        block[3] = &unk_1E85F3A08;
        block[4] = v47;
        block[5] = v133;
        v126 = v45;
        dispatch_after(v48, v49, block);
        v50 = dispatch_time(0, 15000000000);
        v51 = *(a1 + 1712);
        v123[0] = MEMORY[0x1E69E9820];
        v123[1] = 3221225472;
        v123[2] = ___AVCRateController_SetupDelayedReportingSmartBrake_block_invoke_2;
        v123[3] = &unk_1E85F3A08;
        v123[4] = v47;
        v123[5] = v131;
        v124 = v45;
        dispatch_after(v50, v51, v123);
        v52 = dispatch_time(0, 30000000000);
        v53 = *(a1 + 1712);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___AVCRateController_SetupDelayedReportingSmartBrake_block_invoke_3;
        *&v136 = &unk_1E85F3A30;
        *(&v136 + 1) = v47;
        v137 = COERCE_DOUBLE(v129);
        *&v139 = __PAIR64__(v46, v45);
        *&v138 = v133;
        *(&v138 + 1) = v131;
        dispatch_after(v52, v53, buf);
        _Block_object_dispose(v129, 8);
        _Block_object_dispose(v131, 8);
        _Block_object_dispose(v133, 8);
      }
    }
  }

  _AVCRateController_ReportInitialRampUpDeltas(a1);
  if (*(a1 + 1404) > 0 || *(a1 + 1400) > 0)
  {
    goto LABEL_122;
  }

  v54 = micro();
  v55 = *(a1 + 1920);
  v56 = *(a1 + 1728) > [v55 targetBitrate];
  *(a1 + 1728) = [*(a1 + 1920) targetBitrate];
  if (v56 || [v55 targetBitrate] < 0x8CA1 || (v57 = objc_msgSend(v55, "actualBitrate"), objc_msgSend(*(a1 + 1920), "targetBitrate") * 1.05 >= v57))
  {
    *(a1 + 1456) = 0;
    goto LABEL_52;
  }

  v58 = *(a1 + 1456);
  if (v58 == 0.0)
  {
    goto LABEL_50;
  }

  if (v54 - v58 >= 2.0)
  {
    reportingSymptom();
LABEL_50:
    *(a1 + 1456) = v54;
  }

LABEL_52:
  [v55 roundTripTime];
  if (v59 <= 0.001 || ([v55 roundTripTime], v60 >= 0.02) || (objc_msgSend(v55, "packetLossRate"), v61 >= 0.01) || (objc_msgSend(v55, "isSendBitrateLimited") & 1) != 0 || objc_msgSend(v55, "targetBitrate") >= 0x2BF20 || *(a1 + 84) < 0x37AA1u)
  {
    *(a1 + 1464) = 0;
    goto LABEL_63;
  }

  v62 = *(a1 + 1464);
  if (v62 == 0.0)
  {
    goto LABEL_61;
  }

  if (v54 - v62 >= 10.0)
  {
    reportingSymptom();
LABEL_61:
    *(a1 + 1464) = v54;
  }

LABEL_63:
  [v55 roundTripTime];
  if (v63 >= 0.02 || ([v55 packetLossRate], v64 >= 0.01) || (objc_msgSend(v55, "isSendBitrateLimited") & 1) != 0 || objc_msgSend(v55, "targetBitrate") != *(a1 + 1480) || (v65 = objc_msgSend(v55, "targetBitrate"), v66 = *(a1 + 84), v66 <= 0x2BF20) || v66 * 0.7 <= v65)
  {
    *(a1 + 1472) = 0;
  }

  else
  {
    v67 = *(a1 + 1472);
    if (v67 == 0.0)
    {
      *(a1 + 1472) = v54;
      *(a1 + 1480) = [v55 targetBitrate];
      v67 = *(a1 + 1472);
    }

    if (v54 - v67 > 30.0)
    {
      reportingSymptom();
    }
  }

  [*(a1 + 1920) roundTripTime];
  if (v68 > 30.0)
  {
    v69 = *(a1 + 1908);
    if (!v69 || v54 - v69 > 30.0)
    {
      reportingSymptom();
      *(a1 + 1908) = v54;
    }
  }

  v70 = *(a1 + 1920);
  v71 = *(a1 + 72);
  if (v71 == 4)
  {
    [*(a1 + 1920) packetLossRate];
    if (v72 <= 0.5)
    {
      *(a1 + 1496) = 0;
    }

    else
    {
      v73 = *(a1 + 1496);
      if (v73 == 0.0)
      {
        *(a1 + 1496) = v54;
        v73 = v54;
      }

      if (v54 - v73 > 5.0)
      {
        reportingSymptom();
      }
    }

    v71 = *(a1 + 72);
  }

  if (v71 == 5)
  {
    [v70 packetLossRate];
    if (v77 <= 0.5)
    {
      *(a1 + 1504) = 0;
    }

    else
    {
      v78 = *(a1 + 1504);
      if (v78 == 0.0)
      {
        *(a1 + 1504) = v54;
        v78 = v54;
      }

      if (v54 - v78 > 5.0)
      {
        reportingSymptom();
      }
    }
  }

  if ((*(a1 + 72) & 0xFFFFFFFE) != 4)
  {
    goto LABEL_122;
  }

  if (!VCRateControlAlgorithmSparseNOWRD_NoServerStatsActivityDetected(*(a1 + 1920)))
  {
    *(a1 + 1512) = 0;
    v84 = *(a1 + 1520);
    goto LABEL_110;
  }

  v79 = *(a1 + 1512);
  if (v79 == 0.0)
  {
    *(a1 + 1512) = v54;
    v79 = v54;
  }

  if (v54 - v79 > 5.0)
  {
    reportingSymptom();
  }

  if (*(a1 + 1520))
  {
    goto LABEL_106;
  }

  if (v54 - *(a1 + 1512) <= 30.0)
  {
    v84 = 0;
LABEL_110:
    v85 = 1576;
    if (*(a1 + 1379))
    {
      v85 = 1568;
    }

    v82 = (a1 + v85);
    v86 = *(a1 + v85);
    v83 = v86 != 0;
    if ((v84 & 1) == 0 && !v86)
    {
      goto LABEL_122;
    }

    goto LABEL_114;
  }

  v80 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(v80, @"VCSErrorDetected", &unk_1F5798040);
  reportingGenericEvent();
  *(a1 + 1520) = 1;
LABEL_106:
  v81 = 1576;
  if (*(a1 + 1379))
  {
    v81 = 1568;
  }

  v82 = (a1 + v81);
  v83 = *(a1 + v81) != 0;
  v84 = 1;
LABEL_114:
  if (v83 || (v84 & 1) == 0)
  {
LABEL_120:
    if ((v84 & 1) == 0)
    {
      nw_activity_complete_with_reason();
      nw_release(*v82);
      *v82 = 0;
    }

    goto LABEL_122;
  }

  v87 = nw_activity_create();
  *v82 = v87;
  if (v87)
  {
    if (*(a1 + 1560))
    {
      nw_activity_set_parent_activity();
    }

    nw_activity_activate();
    goto LABEL_120;
  }

  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _AVCRateController_DoRateControlWithStatistics_cold_2();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v111 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v111 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v112 = VRTraceErrorLogLevelToCSTR();
      v113 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = v112;
        *&buf[12] = 2080;
        *&buf[14] = "_AVCRateController_PushNoServerStatsToNwActivity";
        *&buf[22] = 1024;
        LODWORD(v136) = 2953;
        WORD2(v136) = 2112;
        *(&v136 + 6) = v111;
        HIWORD(v136) = 2048;
        v137 = *&a1;
        _os_log_error_impl(&dword_1DB56E000, v113, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d %@(%p) Failed to create nwActivity", buf, 0x30u);
      }
    }
  }

LABEL_122:
  _AVCRateController_NotifyTargetBitrateChange(a1);
  [*(a1 + 1944) setIsTargetBitrateStabilized:{objc_msgSend(*(a1 + 1920), "isNewRateSentOut")}];
  [*(a1 + 1920) setLocalBandwidthEstimation:VCStatisticsCollector_SharedEstimatedBandwidth(*(a1 + 32))];
  if (*(a1 + 1378))
  {
    return;
  }

  v88 = *(a2 + 8);
  v89 = *(a1 + 1920);
  [v89 packetLossRate];
  v91 = v90;
  [v89 packetLossRateAudio];
  v93 = v92;
  [v89 packetLossRateVideo];
  v95 = v94;
  v96 = [v89 mostBurstLoss];
  [v89 roundTripTime];
  v98 = v97;
  [v89 owrd];
  v100 = v99;
  v101 = [v89 isCongested];
  *(a1 + 1701) |= v101;
  *(a1 + 1212) = (v98 * 1000.0);
  v102 = *(a1 + 1953);
  [v89 roundTripTime];
  v104 = v91 * 100.0;
  v105 = v93 * 100.0;
  v106 = v95 * 100.0;
  v107 = (v100 * 1000.0);
  if (v103 <= 0.0)
  {
    v108 = 1;
  }

  else
  {
    v108 = v102;
  }

  if (v108)
  {
    if (!v102 || v103 <= 0.0)
    {
      return;
    }

LABEL_136:
    *(a1 + 1216) = v104;
    *(a1 + 1232) = v105;
    *(a1 + 1224) = v106;
    *(a1 + 1304) = v96;
    *(a1 + 1312) = v101;
    *(a1 + 1308) = v107;
    *&buf[4] = 0;
    *&buf[16] = 1;
    v138 = 0u;
    v147 = 0;
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    *buf = 3;
    *&buf[8] = v88;
    *&v136 = v91 * 100.0;
    *(&v136 + 1) = v93 * 100.0;
    v137 = v95 * 100.0;
    *&v138 = __PAIR64__(*(a1 + 1212), v96);
    v109 = *(a1 + 1196);
    DWORD2(v138) = v101;
    HIDWORD(v138) = (v100 * 1000.0);
    v110 = *(a1 + 1528);
    LODWORD(v139) = v109;
    LODWORD(v140) = v110;
    AVCStatisticsCollector_SetVCStatistics(*(a1 + 32), buf);
    return;
  }

  if (*(a1 + 1216) != v104 || *(a1 + 1232) != v105 || *(a1 + 1224) != v106 || *(a1 + 1304) != v96 || *(a1 + 1312) != v101 || *(a1 + 1308) != v107)
  {
    goto LABEL_136;
  }
}

void sub_1DB598A64(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

void _AVCRateController_DoRateControlWithBasebandStatistics(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 1377))
  {
    if (*(a1 + 1944))
    {
      v3 = a2;
      if (*a2 == 1)
      {
        v4 = *(a1 + 1920);
        _AVCRateController_DoRateControl(a1, a2);
        _AVCRateController_ReportInitialRampUpDeltas(a1);
        _AVCRateController_NotifyTargetBitrateChange(a1);
        [*(a1 + 1944) setIsTargetBitrateStabilized:{objc_msgSend(v4, "isNewRateSentOut")}];
        v5 = *(a1 + 1336);
        if (v5)
        {
          v6 = *(a1 + 72);
          if (v6 <= 7 && ((1 << v6) & 0x8E) != 0)
          {
            VCRateControlMediaController_AudioFractionTier(*(a1 + 56));
          }

          VCRateControlMediaController_IsAudioOnly(*(a1 + 56));
          VCRateControlMediaController_IsVideoStopped(*(a1 + 56));
          VCRateControlMediaController_IsVideoStoppedByVCRateControl(*(a1 + 56));
          VCRateControlMediaController_BasebandFlushCount(*(a1 + 56));
          VRLogfilePrintWithTimestamp(v5, "%s %4u\t%4u\t%4u\t%4u\t%4u\t%4d\t%.4f\t%.4f\t%4u %d %c(%1d,%1d) FC:%d\t%.1f\n", v7, v8, v9, v10, v11, v12, v3 + 96);
        }
      }
    }
  }
}

void _AVCRateController_DoRateControlWithNWConnectionStatistics(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1584))
  {
    if ((*a2 - 11) < 2)
    {
      if (*a2 != 11)
      {
LABEL_43:
        _AVCRateController_DoRateControl(a1, a2);
        _AVCRateController_NotifyTargetBitrateChange(a1);
        v26 = *(a1 + 1344);
        if (v26)
        {
          VRLogfilePrintWithTimestamp(v26, "%f\t%llu\t%u\t%u\t%llu\t%llu\t%u\t%u\t%u\t%llu\t%u\t%d\t%u\t%u\t%u\t%u\t%u\t%u\t%u\t%u\t%u\t%u\t%2.4f\t%d\n", *(a2 + 100), *(a2 + 102), *(a2 + 105), *(a2 + 104), *(a2 + 107), *(a2 + 106), *(a2 + 8));
        }

        ++*(a1 + 1928);
        return;
      }

      v4 = *(a2 + 128) + *(a2 + 132);
      *(a1 + 1164) = v4;
      v5 = *(a1 + 1160);
      v6 = v4 >= v5;
      v7 = v4 - v5;
      if (v7 == 0 || !v6 || v5 == 0)
      {
        v7 = 0;
      }

      *(a1 + 1168) = v7;
      if ((*(a1 + 1380) & 1) == 0)
      {
        v22 = *(a2 + 112);
        v23 = *(a1 + 1920);
        if (v23)
        {
          [v23 config];
          v24 = v40;
        }

        else
        {
          bzero(buf, 0x400uLL);
          v24 = 0.0;
        }

        if (v24 < v22)
        {
          v25 = 1;
LABEL_42:
          *(a1 + 1380) = v25;
          goto LABEL_43;
        }

        if ((*(a1 + 1380) & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v9 = *(a2 + 112);
      v10 = *(a1 + 1920);
      if (v10)
      {
        [v10 config];
        v11 = v27;
      }

      else
      {
        v11 = 0.0;
      }

      if (v11 <= v9)
      {
        goto LABEL_43;
      }

      v25 = 0;
      goto LABEL_42;
    }

    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _AVCRateController_DoRateControlWithNWConnectionStatistics_cold_2();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v21 = *a2;
          *buf = 136316418;
          v29 = v19;
          v30 = 2080;
          v31 = "_AVCRateController_DoRateControlWithNWConnectionStatistics";
          v32 = 1024;
          v33 = 3037;
          v34 = 2112;
          v35 = v13;
          v36 = 2048;
          v37 = a1;
          v38 = 1024;
          v39 = v21;
          v16 = "AVCRC [%s] %s:%d %@(%p) Wrong statistics type=%d";
          v17 = v20;
          v18 = 54;
          goto LABEL_33;
        }
      }
    }
  }

  else if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _AVCRateController_DoRateControlWithNWConnectionStatistics_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v29 = v14;
        v30 = 2080;
        v31 = "_AVCRateController_DoRateControlWithNWConnectionStatistics";
        v32 = 1024;
        v33 = 3033;
        v34 = 2112;
        v35 = v12;
        v36 = 2048;
        v37 = a1;
        v16 = "AVCRC [%s] %s:%d %@(%p) Not using nwConnectionNotification";
        v17 = v15;
        v18 = 48;
LABEL_33:
        _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
      }
    }
  }
}

BOOL _AVCRateController_DoRateControl(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *(a1 + 1752) = micro();
    *(a1 + 1760) = *(a2 + 8);
    *(a1 + 1744) = [*(a1 + 1920) isFirstInitialRampUpDone];
    v4 = *a2;
    if (*a2 > 10)
    {
      if (v4 == 11)
      {
        *(a1 + 1784) = *(a2 + 32);
        *(a1 + 1792) = *(a2 + 96);
        *(a1 + 1793) = *(a2 + 97);
        *(a1 + 1794) = *(a2 + 98);
        *(a1 + 1796) = *(a2 + 100);
        *(a1 + 1798) = *(a2 + 102);
        *(a1 + 1799) = *(a2 + 103);
        *(a1 + 1800) = *(a2 + 104);
        *(a1 + 1801) = *(a2 + 105);
        *(a1 + 1802) = *(a2 + 106);
        *(a1 + 1803) = *(a2 + 107);
        *(a1 + 1804) = *(a2 + 108);
        *(a1 + 1808) = *(a2 + 112);
        *(a1 + 1812) = *(a2 + 118);
        v7 = *(a2 + 120);
        *(a1 + 1832) = *(a2 + 136);
        *(a1 + 1816) = v7;
      }

      else if (v4 == 14)
      {
        *(a1 + 1784) = *(a2 + 40);
      }
    }

    else if (v4 == 1)
    {
      *(a1 + 1784) = *(a2 + 160);
      *(a1 + 1788) = *(a2 + 24);
      *(a1 + 1792) = *(a2 + 28);
      *(a1 + 1796) = *(a2 + 36);
      *(a1 + 1800) = *(a2 + 40);
      *(a1 + 1804) = *(a2 + 44);
      *(a1 + 1808) = *(a2 + 32);
      *(a1 + 1816) = *(a2 + 56);
      *(a1 + 1824) = *(a2 + 64);
      *(a1 + 1832) = *(a2 + 72);
      *(a1 + 1840) = *(a2 + 80);
      *(a1 + 1848) = *(a2 + 88);
    }

    else if (v4 == 2)
    {
      *(a1 + 1792) = *(a2 + 80);
      *(a1 + 1872) = *(a2 + 32);
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = VCRateControlMediaController_BasebandFlushCount(v8);
    }

    else
    {
      v9 = 0;
    }

    v10 = VCRateControlAlgorithm_DoRateControl(*(a1 + 1920), a2);
    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = VCRateControlMediaController_BasebandFlushCount(v11) > v9;
    }

    else
    {
      v12 = 0;
    }

    v13 = (a1 + 1744);
    *(a1 + 1736) = v12;
    if (!v10)
    {
      result = 0;
      *(a1 + 1872) = 0u;
      *(a1 + 1888) = 0u;
      *(a1 + 1840) = 0u;
      *(a1 + 1856) = 0u;
      *(a1 + 1808) = 0u;
      *(a1 + 1824) = 0u;
      *(a1 + 1776) = 0u;
      *(a1 + 1792) = 0u;
      *v13 = 0u;
      *(a1 + 1760) = 0u;
      return result;
    }

    v14 = *(a1 + 56);
    if (v14)
    {
      VCRateControlMediaController_MediaQueueSettings(v14);
      *(a1 + 1772) = (NAN + NAN);
      *(a1 + 1776) = *(a1 + 1736);
    }

    *(a1 + 1768) = [*(a1 + 1920) targetBitrate];
    v15 = *a2;
    if (*a2 > 10)
    {
      if (v15 == 11)
      {
        v15 = 2;
      }

      else
      {
        if (v15 != 14)
        {
          goto LABEL_40;
        }

        *(a1 + 1788) = [*(a1 + 1920) bytesInFlight];
        v15 = 3;
      }
    }

    else if (v15 != 1)
    {
      if (v15 == 2)
      {
        v16 = *(a1 + 1920);
        [v16 rateControlTime];
        *(a1 + 1784) = v17;
        [v16 nowrd];
        *(a1 + 1800) = v18;
        [v16 nowrdAcc];
        *(a1 + 1808) = v19;
        [v16 mostRecentRoundTripTime];
        *(a1 + 1816) = v20;
        [v16 roundTripTimeMinEnvelope];
        *(a1 + 1832) = v21;
        [v16 packetLossRate];
        *(a1 + 1840) = v22;
        [v16 packetLossRateAudio];
        *(a1 + 1848) = v23;
        [v16 packetLossRateVideo];
        *(a1 + 1856) = v24;
        [v16 roundTripTime];
        *(a1 + 1824) = v25;
        [v16 ecnCERatio];
        *(a1 + 1864) = v26;
        if (v16)
        {
          [v16 trainingVariables];
          *(a1 + 1880) = *buf;
          [v16 trainingVariables];
          *(a1 + 1888) = v36;
          [v16 trainingVariables];
          v27 = v35;
        }

        else
        {
          *(a1 + 1880) = 0;
          *(a1 + 1888) = 0;
          v27 = 0;
        }

        v15 = 0;
        *(a1 + 1896) = v27;
        goto LABEL_44;
      }

LABEL_40:
      *(a1 + 1872) = 0u;
      *(a1 + 1888) = 0u;
      *(a1 + 1840) = 0u;
      *(a1 + 1856) = 0u;
      *(a1 + 1808) = 0u;
      *(a1 + 1824) = 0u;
      *(a1 + 1776) = 0u;
      *(a1 + 1792) = 0u;
      *v13 = 0u;
      *(a1 + 1760) = 0u;
      return 1;
    }

LABEL_44:
    v30 = *(a1 + 1856);
    v39[4] = *(a1 + 1840);
    v39[5] = v30;
    v31 = *(a1 + 1888);
    v39[6] = *(a1 + 1872);
    v39[7] = v31;
    v32 = *(a1 + 1792);
    v39[0] = *(a1 + 1776);
    v39[1] = v32;
    v33 = *(a1 + 1824);
    v39[2] = *(a1 + 1808);
    v39[3] = v33;
    v34 = *(a1 + 1760);
    *&buf[8] = *v13;
    v38 = v34;
    *buf = v15;
    *&buf[4] = -1431655766;
    VCReporting_DumpIntoDataStore();
    return 1;
  }

  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      _AVCRateController_DoRateControl_cold_1();
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136316418;
      *&buf[4] = v28;
      *&buf[12] = 2080;
      *&buf[14] = "_AVCRateController_DoRateControl";
      *&buf[22] = 1024;
      LODWORD(v38) = 3063;
      WORD2(v38) = 2112;
      *(&v38 + 6) = v5;
      HIWORD(v38) = 2048;
      *&v39[0] = a1;
      WORD4(v39[0]) = 2048;
      *(v39 + 10) = 0;
      _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d %@(%p) Invalid statistics=%p", buf, 0x3Au);
    }
  }

  return 0;
}

void _AVCRateController_ReportInitialRampUpDeltas(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 72) - 1) <= 2 && (*(a1 + 1192) & 1) == 0)
  {
    if ([*(a1 + 1920) isFirstInitialRampUpDone])
    {
      v2 = micro() - *(a1 + 1184);
      v3 = [*(a1 + 1920) targetBitrate] - *(a1 + 1172);
      reportingAdaptiveLearningStats();
      *(a1 + 1192) = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 1172);
          v7 = 136316674;
          v8 = v4;
          v9 = 2080;
          v10 = "_AVCRateController_ReportInitialRampUpDeltas";
          v11 = 1024;
          v12 = 3108;
          v13 = 2048;
          v14 = a1;
          v15 = 1024;
          v16 = v3;
          v17 = 2048;
          v18 = v2;
          v19 = 1024;
          v20 = v6;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVCRC [%s] %s:%d (%p) Report initial ramp up done with bitrateDelta:%d, timeDelta:%f, initialBitrate:%d", &v7, 0x3Cu);
        }
      }
    }
  }
}

uint64_t _VCFECConsumerFrameBased_RestorePacketsAndDataSizes(uint64_t a1)
{
  if (*(a1 + 24692) < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 32888;
  v4 = a1 + 8208;
  v5 = a1 + 24696;
  while (1)
  {
    v6 = *(v3 + 2 * v2);
    DataLocation = VCWRSFrame_GetDataLocation(*(a1 + 12368), *(v3 + 2 * v2));
    if (!DataLocation)
    {
      _VCFECConsumerFrameBased_RestorePacketsAndDataSizes_cold_2();
      return v11;
    }

    v8 = DataLocation;
    PacketDataSize = VCWRSFrame_GetPacketDataSize(*(a1 + 12368), v6);
    *(v4 + 2 * v6) = PacketDataSize;
    if (!PacketDataSize)
    {
      break;
    }

    CMBlockBufferReplaceDataBytes(v8, *(v5 + 8 * v6), 0, PacketDataSize);
    if (++v2 >= *(a1 + 24692))
    {
      return 0;
    }
  }

  _VCFECConsumerFrameBased_RestorePacketsAndDataSizes_cold_1();
  return v11;
}

void VCFECConsumerFrameBased_FlushPacketLists()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 24688);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = DerivedStorage + 24696;
    do
    {
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        CFRelease(v5);
        *(v4 + 8 * v3) = 0;
        v2 = *(v1 + 24688);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  v6 = *(v1 + 12392);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v1 + 14448;
    do
    {
      v9 = *(v8 + 8 * v7);
      if (v9)
      {
        CFRelease(v9);
        *(v8 + 8 * v7) = 0;
        v6 = *(v1 + 12392);
      }

      ++v7;
    }

    while (v7 < v6);
  }

  *(v1 + 12384) = 0;
  *(v1 + 24688) = 0;
  bzero((v1 + 8208), 0x800uLL);
  bzero((v1 + 32888), 0x800uLL);
  *(v1 + 12376) = 0;
  *(v1 + 12392) = 0;
  bzero((v1 + 22640), 0x800uLL);
  bzero((v1 + 12400), 0x800uLL);

  bzero((v1 + 10256), 0x800uLL);
}

uint64_t VCFECConsumerFrameBased_PushPacket(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, int a4, int a5)
{
  v22 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    VCFECConsumerFrameBased_PushPacket_cold_5();
    return v21;
  }

  if (!a2)
  {
    VCFECConsumerFrameBased_PushPacket_cold_4();
    return v21;
  }

  if (a5 >= 1024)
  {
    VCFECConsumerFrameBased_PushPacket_cold_3();
    return v21;
  }

  v10 = DerivedStorage;
  if (!*a3)
  {
    goto LABEL_17;
  }

  v11 = *(a3 + 8);
  if (!(v11 >> 30))
  {
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  if (v11 >> 30 != 1)
  {
    if ((v11 & 0x4000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_17:
    ++*(DerivedStorage + 24688);
    DataLength = CMBlockBufferGetDataLength(a2);
    *(v10 + a5 + 4104) = DataLength;
    if (DataLength < 0x5DDuLL)
    {
      v17 = &v10[2 * a5];
      v18 = *(v17 + 3087);
      *(v17 + 3087) = a2;
      CFRetain(a2);
      if (v18)
      {
        CFRelease(v18);
      }

      if (a4)
      {
        v19 = v10[6173];
        v10[6173] = v19 + 1;
        *(v10 + v19 + 16444) = a5;
      }

      goto LABEL_22;
    }

    VCFECConsumerFrameBased_PushPacket_cold_2(v10, a5, &v21);
    return v21;
  }

  if ((v11 & 0x400000) != 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  ++*(DerivedStorage + 12392);
  v12 = CMBlockBufferGetDataLength(a2);
  *(v10 + a5 + 6200) = v12;
  if (v12 >= 0x5DDuLL)
  {
    VCFECConsumerFrameBased_PushPacket_cold_1();
    return v21;
  }

  v13 = &v10[2 * a5];
  v14 = *(v13 + 1806);
  *(v13 + 1806) = a2;
  CFRetain(a2);
  if (v14)
  {
    CFRelease(v14);
  }

  if ((a4 & 1) == 0)
  {
    v15 = v10[3099];
    v10[3099] = v15 + 1;
    *(v10 + v15 + 11320) = a5;
  }

  *(v10 + a5 + 5128) = *(a3 + 52);
LABEL_22:
  result = 0;
  ++v10[3094];
  return result;
}

uint64_t VCFECConsumerFrameBased_PerformTryDecode(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    VCFECConsumerFrameBased_PerformTryDecode_cold_6();
    return v18;
  }

  v4 = DerivedStorage;
  if (*(DerivedStorage + 12376))
  {
    v5 = (DerivedStorage + 24688);
    v11 = *(DerivedStorage + 12384);
    v12 = 0xAAAAAAAAAAAAAAAALL;
    LOWORD(v12) = *(DerivedStorage + 24688);
    WORD1(v12) = *(DerivedStorage + 12392);
    v13 = DerivedStorage + 24696;
    v14 = DerivedStorage + 8208;
    v15 = DerivedStorage + 14448;
    v16 = DerivedStorage + 12400;
    v17 = DerivedStorage + 10256;
    if ((VCWRSFrame_Create(*(DerivedStorage + 34936), (DerivedStorage + 12368), &v11) & 0x80000000) != 0)
    {
      VCFECConsumerFrameBased_PerformTryDecode_cold_4();
    }

    else if ((VCWRSFrame_AddErasures(*(v4 + 12368), v4 + 32888, *(v4 + 24692), (v4 + 22640), *(v4 + 12396)) & 0x80000000) != 0)
    {
      VCFECConsumerFrameBased_PerformTryDecode_cold_3();
    }

    else if ((VCWRSFECDecoder_Enqueue(*(v4 + 12360), *(v4 + 12368)) & 0x80000000) != 0)
    {
      VCFECConsumerFrameBased_PerformTryDecode_cold_2();
    }

    else
    {
      memset(v10, 0, sizeof(v10));
      v6 = VCWRS_Decode(*(v4 + 12360), v10);
      if ((v6 & 0x80000000) == 0)
      {
        _VCFECConsumerFrameBased_RestorePacketsAndDataSizes(v4);
        if (*v5 >= 1)
        {
          v7 = 0;
          do
          {
            *(a2 + 4 * v7) = *(v4 + 8208 + 2 * v7);
            ++v7;
          }

          while (v7 < *v5);
        }

        goto LABEL_10;
      }

      VCFECConsumerFrameBased_PerformTryDecode_cold_1();
    }
  }

  else
  {
    VCFECConsumerFrameBased_PerformTryDecode_cold_5();
  }

  v6 = v18;
LABEL_10:
  v8 = *(v4 + 12368);
  if (v8)
  {
    CFRelease(v8);
    *(v4 + 12368) = 0;
  }

  return v6;
}

uint64_t _VCFECConsumerFrameBased_SetFrameSequenceNumber(uint64_t a1, unsigned int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v4 = DerivedStorage;
    result = 0;
    *(v4 + 12384) = a2;
  }

  else
  {
    _VCFECConsumerFrameBased_SetFrameSequenceNumber_cold_1();
    return v6;
  }

  return result;
}

uint64_t VCFECConsumerFrameBased_Create(const __CFAllocator *a1, CFTypeRef *a2, const void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (a2)
  {
    *a2 = 0;
    ClassID = VCFECConsumerGetClassID();
    if ((VCFBOUtils_ObjectCreate(a1, &cf, &kVCFECConsumerFrameBasedVTable, ClassID, 51) & 0x80000000) != 0)
    {
      VCFECConsumerFrameBased_Create_cold_4();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if ((VCWRSFECDecoder_Create(a1, (DerivedStorage + 12360), 1) & 0x80000000) != 0)
      {
        VCFECConsumerFrameBased_Create_cold_3();
      }

      else if (VCAllocatorFirstCome_Create(a1, "VCFECConsumerReedSolomonFrameAllocator", (DerivedStorage + 34936)))
      {
        VCFECConsumerFrameBased_Create_cold_1();
      }

      else
      {
        if ((VCFECConsumerCommon_Init(DerivedStorage, a3) & 0x80000000) == 0)
        {
          v8 = 0;
          *a2 = cf;
          return v8;
        }

        VCFECConsumerFrameBased_Create_cold_2();
      }
    }
  }

  else if (VCFECConsumerFrameBased_Create_cold_5(&v11))
  {
    return 2150825985;
  }

  v8 = v11;
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

void _VCFECConsumerFrameBased_Finalize(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 12360);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 12360) = 0;
  }

  v4 = *(DerivedStorage + 34936);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 34936) = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "_VCFECConsumerFrameBased_Finalize";
      v11 = 1024;
      v12 = 102;
      v13 = 2048;
      v14 = a1;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", &v7, 0x26u);
    }
  }

  VCFECConsumerCommon_Finalize(DerivedStorage);
}

uint64_t _AVCRateControlFeedbackController_ProcessRateControlFeedbackMessage(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v42 = *MEMORY[0x1E69E9840];
  *(a1 + 72) = a4;
  memset(v23, 0, 200);
  v5 = *(a1 + 24) + 1;
  *(a1 + 24) = v5;
  if (a3 != 3)
  {
    if (a3 != 1)
    {
      return 0;
    }

    v6 = *(a2 + 96);
    *(&v23[8] + 8) = *(a2 + 112);
    v7 = *(a2 + 144);
    *(&v23[9] + 8) = *(a2 + 128);
    *(&v23[10] + 8) = v7;
    *(&v23[11] + 8) = *(a2 + 160);
    v8 = *(a2 + 32);
    *(&v23[4] + 8) = *(a2 + 48);
    v9 = *(a2 + 80);
    *(&v23[5] + 8) = *(a2 + 64);
    *(&v23[6] + 8) = v9;
    *(&v23[7] + 8) = v6;
    v10 = *(a2 + 16);
    *(&v23[1] + 8) = *a2;
    *(&v23[2] + 8) = v10;
    LODWORD(v23[0]) = 2;
    BYTE2(v23[1]) = 1;
    *(v23 + 1) = a4;
    *(&v23[3] + 8) = v8;
    v11 = *(a1 + 56);
    v12 = *(a1 + 44);
    if (BYTE1(v23[12]))
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v14 = *(a1 + 89);
    if (v14 == 4 || v14 == v13)
    {
      if (v11 > *(a1 + 60) && *(a1 + 8) == 1)
      {
        if (*(a1 + 48) == v12)
        {
          if (a4 - *(a1 + 80) >= 1800.0)
          {
            *(a1 + 68) = 0;
          }

          else
          {
            v15 = ++*(a1 + 68);
            if (v15 >= 0x64)
            {
              *(a1 + 8) = 0;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v16 = VRTraceErrorLogLevelToCSTR();
                v17 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v18 = *(a1 + 8);
                  v19 = *(a1 + 68);
                  *buf = 136317186;
                  v25 = v16;
                  v26 = 2080;
                  v27 = "_AVCRateControlFeedbackController_VerifyECNStatus";
                  v28 = 1024;
                  v29 = 460;
                  v30 = 1024;
                  v31 = v18;
                  v32 = 2048;
                  v33 = v12;
                  v34 = 2048;
                  v35 = v11;
                  v36 = 1024;
                  v37 = v19;
                  v38 = 2080;
                  v39 = "YES";
                  v40 = 2048;
                  v41 = a1;
                  _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Set isECNEnabled=%d with totalECT1Count=%ld, totalReceivedPackets=%ld, numBadECNEvents=%d, isECNBleached=%s for controller [%p]", buf, 0x50u);
                }
              }
            }
          }

          *(a1 + 80) = *(a1 + 72);
          LODWORD(v11) = *(a1 + 56);
        }

        else
        {
          *(a1 + 48) = v12;
        }
      }

      *(a1 + 60) = v11;
      LOBYTE(v23[12]) = *(a1 + 8);
    }

    goto LABEL_23;
  }

  HIDWORD(v20) = -858993459 * v5;
  LODWORD(v20) = -858993459 * v5;
  if ((v20 >> 1) <= 0x19999999)
  {
    LODWORD(v23[0]) = 5;
    *(v23 + 1) = a4;
    v21 = *(a2 + 28);
    HIDWORD(v23[1]) = *a2;
    DWORD1(v23[2]) = v21;
LABEL_23:
    AVCStatisticsCollector_SetVCStatistics(*(a1 + 16), v23);
  }

  return 1;
}

void VCRateControlFeedbackController_SetMode(uint64_t a1, int a2)
{
  if (a1)
  {
    *(a1 + 12) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlFeedbackController_SetMode_cold_1();
    }
  }
}

void _AVCRateControlFeedbackController_SetTxLink(uint64_t a1, char a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  *(a1 + 68) = 0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0;
  *(a1 + 44) = 0;
  v5 = 88;
  if (a3)
  {
    v5 = 89;
  }

  *(a1 + v5) = a2;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 88);
      v9 = *(a1 + 89);
      v10 = *(a1 + 8);
      v11 = 136316930;
      v12 = v6;
      v13 = 2080;
      v14 = "_AVCRateControlFeedbackController_SetTxLink";
      v15 = 1024;
      v16 = 431;
      v17 = 2048;
      v18 = a1;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      v23 = 1024;
      v24 = v10;
      v25 = 1024;
      v26 = a3;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d [%p] _txLinkType changed to=%d ecnLinkType=%d with isECNEnabled=%d, isECNLinkType=%d", &v11, 0x3Eu);
    }
  }
}

void VCRateControlFeedbackController_SetLinkTypeToSupportECN(uint64_t a1, char a2)
{
  if (a1)
  {
    if (VCDefaults_GetBoolValueForKey(@"ecnEnabled", 0))
    {
      v4 = 4;
    }

    else
    {
      v4 = a2;
    }

    _AVCRateControlFeedbackController_SetTxLink(a1, v4, 1);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlFeedbackController_SetLinkTypeToSupportECN_cold_1();
    }
  }
}

BOOL VCRateControlProcessFeedbackControlInfo(_BOOL8 result, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (!a2)
  {
    return 0;
  }

  v3 = result;
  if (VCMediaControlInfoHasInfo(a2, 0))
  {
    memset(buf, 0, 40);
    VCMediaControlInfoGetInfoUnserialized(a2, buf, 0);
    DWORD2(v15) = WORD1(buf[0]);
    HIDWORD(v17) = LOWORD(buf[0]);
    HIDWORD(v16) = WORD5(buf[0]);
    LODWORD(v17) = WORD3(buf[0]);
    LODWORD(v16) = WORD2(buf[0]);
    DWORD1(v16) = WORD4(buf[0]);
    DWORD2(v20) = buf[1];
    LODWORD(v25) = DWORD1(buf[2]);
  }

  if (VCMediaControlInfoHasInfo(a2, 1))
  {
    memset(buf, 0, 40);
    VCMediaControlInfoGetInfoUnserialized(a2, buf, 1);
    LODWORD(v15) = WORD4(buf[1]);
    DWORD1(v15) = DWORD1(buf[1]);
    *(&v18 + 1) = RTPUnpackDouble(HIDWORD(buf[1]));
  }

  VCMediaControlInfoGetInfo(a2, 0x11, &v18, 4, 0);
  if (*(v3 + 40))
  {
    if ((v18 - *(v3 + 32)) <= 0x7FFFFFFE)
    {
      v4 = 0;
      *(v3 + 32) = v18;
      v5 = 36;
      goto LABEL_11;
    }

    v6 = *(v3 + 36);
    *(v3 + 36) = v6 + 1;
    HIDWORD(v7) = -858993459 * v6;
    LODWORD(v7) = -858993459 * v6;
    if ((v7 >> 2) <= 0xCCCCCCC && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v10 = *(v3 + 32);
      LODWORD(buf[0]) = 136316162;
      *(buf + 4) = v8;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = "_AVCRateControlFeedbackController_DetectOutOfOrderFeedbackMessage";
      WORD3(buf[1]) = 1024;
      DWORD2(buf[1]) = 676;
      WORD6(buf[1]) = 1024;
      *(&buf[1] + 14) = v18;
      WORD1(buf[2]) = 1024;
      DWORD1(buf[2]) = v10;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Out of order feedback message detected with timestamp=%u, controller mediaTimestamp=%u", buf, 0x28u);
    }

    return 0;
  }

  *(v3 + 40) = 1;
  v4 = v18;
  v5 = 32;
LABEL_11:
  *(v3 + v5) = v4;
  LOBYTE(buf[0]) = 0;
  if (!VCMediaControlInfoGetInfo(a2, 0x12, buf, 1, 0))
  {
    if (LOBYTE(buf[0]) == 3)
    {
      ++*(v3 + 52);
LABEL_20:
      ++*(v3 + 44);
      goto LABEL_21;
    }

    if (buf[0])
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  WORD2(v25) = *(v3 + 44);
  WORD3(v25) = *(v3 + 52);
  v11 = *(v3 + 12);
  if ((v11 - 1) <= 2)
  {
    *&v27 = 0;
    memset(buf, 0, sizeof(buf));
    DWORD1(buf[0]) = v18;
    VCMediaControlInfoGetInfo(a2, 0xA, &buf[1] + 8, 8, 0);
    VCMediaControlInfoGetInfo(a2, 0xC, &buf[1], 4, 0);
    VCMediaControlInfoGetInfo(a2, 0xB, buf | 0xC, 4, 0);
    VCMediaControlInfoGetInfo(a2, 0xD, &v24 + 8, 2, 0);
    VCMediaControlInfoGetInfo(a2, 0xE, &v24 + 10, 1, 0);
    VCMediaControlInfoGetInfo(a2, 0xF, &v24 + 11, 1, 0);
    if (VCMediaControlInfoHasInfo(a2, 2))
    {
      VCMediaControlInfoGetInfo(a2, 2, &v24 + 12, 4, 0);
    }

    if (VCMediaControlInfoHasInfo(a2, 0x15))
    {
      v14 = 0;
      VCMediaControlInfoGetInfo(a2, 0x15, &v14, 1, 0);
      BYTE9(v25) = v14;
    }

    LODWORD(buf[0]) = 3;
    BYTE12(v20) = 1;
    v23 = buf[2];
    *&v24 = v27;
    v21 = buf[0];
    v22 = buf[1];
    *(v3 + 56) = HIDWORD(buf[0]);
  }

  if ((v11 & 0xFFFFFFFE) == 4)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v13 = micro();
  v32 = v23;
  v33 = v24;
  v34 = v25;
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  buf[0] = v15;
  buf[1] = v16;
  buf[2] = v17;
  v27 = v18;
  _AVCRateControlFeedbackController_ProcessRateControlFeedbackMessage(v3, buf, v12, v13);
  return 1;
}

uint64_t VCRateControlProcessProbingControlInfo(_DWORD *a1, void *a2, char a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (!v3)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    VCMediaControlInfoGetInfo(a2, 0x10, &v16 | 0xC, 4, 0);
    VCMediaControlInfoGetInfo(a2, 0xA, &v17, 8, 0);
    VCMediaControlInfoGetInfo(a2, 0x11, &v17 + 8, 4, 0);
    if ((a3 & 1) == 0)
    {
      VCMediaControlInfoGetInfo(a2, 8, &v16 + 8, 4, 0);
      v8 = DWORD2(v16);
      DWORD2(v16) = bswap32(DWORD2(v16));
      BYTE5(v16) = v8 != 0;
      if ([a1 mode] == 1 || objc_msgSend(a1, "mode") == 2 || objc_msgSend(a1, "mode") == 3)
      {
        *&v13 = 0;
        v11 = 0u;
        v12 = 0u;
        v10 = 0u;
        VCMediaControlInfoGetInfo(a2, 0xB, &v10 | 0xC, 4, 0);
        VCMediaControlInfoGetInfo(a2, 0xC, &v11, 4, 0);
        LODWORD(v10) = 4;
        BYTE12(v17) = 1;
        v19 = v11;
        v20 = v12;
        v21 = v13;
        v18 = v10;
        a1[16] = HIDWORD(v10);
      }
    }

    v12 = v18;
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v10 = v16;
    v11 = v17;
    [a1 processRateControlProbingMessage:&v10 type:2 error:0];
  }

  return v4;
}

uint64_t VCRateControlSetFeedbackControlInfo(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    v25 = 0;
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
    memset(v14, 0, sizeof(v14));
    [a1 getVCStatisticsFeedbackMessage:v14 time:micro()];
    v8[0] = WORD2(v17);
    v8[1] = v15;
    v8[2] = WORD4(v15);
    v8[4] = WORD6(v15);
    v8[5] = WORD2(v16);
    v8[3] = WORD4(v16);
    v12 = 0;
    v11 = 0;
    v9 = HIDWORD(v16);
    v10 = v20;
    v13 = HIDWORD(v24);
    v7 = [a1 getConnectionStatsBlob];
    if (v7)
    {
      VCMediaControlInfoSetInfo(a2, 2, &v7, 4);
    }

    [a1 resetBurstyLossStatistics];
    VCMediaControlInfoSetInfoUnserialized(a2, v8, 0);
  }

  return v3;
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

uint64_t VCMediaNegotiationBlobV2VideoPayloadReadFrom(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 3)
      {
        break;
      }

      if (v12 == 4)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          v45 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v45 & 0x7F) << v29;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v10 = v30++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_79;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v31;
        }

LABEL_79:
        v41 = 8;
LABEL_92:
        *(a1 + v41) = v18;
        goto LABEL_93;
      }

      if (v12 != 5)
      {
        if (v12 != 6)
        {
LABEL_60:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_93;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 40) |= 8u;
        while (1)
        {
          v44 = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v44 & 0x7F) << v19;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_87;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v21;
        }

LABEL_87:
        v41 = 32;
        goto LABEL_92;
      }

      Data = PBReaderReadData();

      *(a1 + 16) = Data;
LABEL_93:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v12)
    {
      case 1:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 40) |= 0x10u;
        while (1)
        {
          v48 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v48 & 0x7F) << v24;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v10 = v25++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_75;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v26;
        }

LABEL_75:
        v41 = 36;
        break;
      case 2:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          v47 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v47 & 0x7F) << v35;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v10 = v36++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_91;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v37;
        }

LABEL_91:
        v41 = 28;
        break;
      case 3:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          v46 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v46 & 0x7F) << v13;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_83;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

LABEL_83:
        v41 = 24;
        break;
      default:
        goto LABEL_60;
    }

    goto LABEL_92;
  }

  return [a2 hasError] ^ 1;
}

BOOL VCVideoHardwareDumpWriter_OpenDumpFile(uint64_t a1)
{
  v2 = VRLogfileAlloc(0, 0, "VCVideoHardwareTests_DumpFile", 0, "com.apple.AVConference.VCVideoHardwareDumpWriter", 44);
  *(a1 + 8) = v2;
  if (!v2 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCVideoHardwareDumpWriter_OpenDumpFile_cold_1(v3);
    }
  }

  return v2 != 0;
}

void VCVideoHardwareDumpWriter_CloseDumpFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a1 + 8);
  v8 = *(a1 + 8);
  if (v8)
  {
    VRLogfilePrint(v8, "-- EOF --", a3, a4, a5, a6, a7, a8, v10);

    VRLogfileFree(v9);
  }
}

uint64_t VCVideoHardwareDumpWriter_RegisterSource(uint64_t a1, const void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      os_unfair_lock_lock((a1 + 24));
      v4 = *(a1 + 16);
      if (CFSetGetCount(v4) || *(a1 + 8) || VCVideoHardwareDumpWriter_OpenDumpFile(a1))
      {
        CFSetAddValue(v4, a2);
        os_unfair_lock_unlock((a1 + 24));
        return 1;
      }

      else
      {
        VCVideoHardwareDumpWriter_RegisterSource_cold_1((a1 + 24), &v6);
        return v6;
      }
    }

    else
    {
      VCVideoHardwareDumpWriter_RegisterSource_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    VCVideoHardwareDumpWriter_RegisterSource_cold_3(&v8);
    return v8;
  }
}

void VCVideoHardwareDumpWriter_UnregisterSource(uint64_t a1, const void *a2)
{
  if (a2)
  {
    os_unfair_lock_lock((a1 + 24));
    v4 = *(a1 + 16);
    if (CFSetGetCountOfValue(v4, a2) >= 1)
    {
      CFSetRemoveValue(v4, a2);
    }

    if (!CFSetGetCount(v4) && *(a1 + 8))
    {
      VCVideoHardwareDumpWriter_CloseDumpFile(a1, v5, v6, v7, v8, v9, v10, v11);
    }

    os_unfair_lock_unlock((a1 + 24));
  }
}

void VCVideoHardwareDumpWriter_Write(uint64_t a1, CFStringRef theString)
{
  v13[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(theString);
  v5 = Length + 1;
  MEMORY[0x1EEE9AC00](Length);
  if ((v6 & 1) == 0)
  {
    memset(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v5);
  }

  if (a1)
  {
    if (CFStringGetCString(theString, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5, 0x8000100u))
    {
      VRLogfilePrint(*(a1 + 8), "%s\n", v7, v8, v9, v10, v11, v12, v13 - ((v5 + 15) & 0xF0));
    }

    else
    {
      VCVideoHardwareDumpWriter_Write_cold_1();
    }
  }

  else
  {
    VCVideoHardwareDumpWriter_Write_cold_2();
  }
}

void OUTLINED_FUNCTION_3_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void OUTLINED_FUNCTION_6_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x22u);
}

uint64_t AVConferenceServerStartInternal(char a1)
{
  v15 = *MEMORY[0x1E69E9840];
  processIsAvconferenced = a1;
  processIsAVConferenceServer = 1;
  if (!VCFeatureFlagManager_UseAvconferenced())
  {
    goto LABEL_9;
  }

  if ((_set_user_dir_suffix() & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    AVConferenceServerStartInternal_cold_1();
  }

  memset(__b, 170, 0x400uLL);
  if (!confstr(65537, __b, 0x400uLL))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      AVConferenceServerStartInternal_cold_4();
    }

LABEL_30:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      AVConferenceServerStartInternal_cold_5();
    }

    exit(78);
  }

  memset(v13, 170, sizeof(v13));
  if (!realpath_DARWIN_EXTSN(__b, v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      AVConferenceServerStartInternal_cold_3();
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    AVConferenceServerStartInternal_cold_2();
  }

LABEL_9:
  VRTraceReset();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v1 = VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      __b[0] = 136316162;
      *&__b[1] = v1;
      LOWORD(__b[3]) = 2080;
      *(&__b[3] + 2) = "AVConferenceServerStartInternal";
      HIWORD(__b[5]) = 1024;
      __b[6] = 231;
      LOWORD(__b[7]) = 1024;
      *(&__b[7] + 2) = processIsAvconferenced;
      HIWORD(__b[8]) = 1024;
      __b[9] = 1;
      _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Started: processIsAvconferenced=%d, processIsAVConferenceServer=%d", __b, 0x28u);
    }
  }

  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      __b[0] = 136315906;
      *&__b[1] = v4;
      LOWORD(__b[3]) = 2080;
      *(&__b[3] + 2) = "AVConferenceServerStartInternal";
      HIWORD(__b[5]) = 1024;
      __b[6] = 233;
      LOWORD(__b[7]) = 2112;
      *(&__b[7] + 2) = v3;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CFBundleIdentifier=%@", __b, 0x26u);
    }
  }

  VCFeatureFlagManager_DaemonCrashRecovery();
  VCSignalHandler_Initialize();
  VCRegisterSignalHandler("daemoninfo", &__block_literal_global_4);
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_async(global_queue, &__block_literal_global_15);
  +[VCVideoCaptureServer VCVideoCaptureServerSingleton];
  [+[VideoConferenceManager defaultVideoConferenceManager](VideoConferenceManager "defaultVideoConferenceManager")];
  [+[VCSessionManager sharedInstance](VCSessionManager registerBlocksForService];
  [+[VCMediaStreamManager defaultManager](VCMediaStreamManager "defaultManager")];
  [VCRemoteVideoManager_DefaultManager() registerBlocksForService];
  [+[VCStreamOutputManager sharedInstance](VCStreamOutputManager registerBlocksForService];
  [+[VCCaptionsManager defaultManager](VCCaptionsManager "defaultManager")];
  [+[VCMediaAnalyzerManager sharedInstance](VCMediaAnalyzerManager registerBlocksForService];
  [+[VCAudioClientManager sharedInstance](VCAudioClientManager registerBlocksForService];
  [+[VCScreenCaptureManager sharedManager](VCScreenCaptureManager "sharedManager")];
  [+[VCMediaRecorderManager sharedInstance](VCMediaRecorderManager registerBlocksForService];
  [+[VCAudioPowerSpectrumManager sharedInstance](VCAudioPowerSpectrumManager registerBlocksForService];
  [+[VCEffectsManager sharedManager](VCEffectsManager "sharedManager")];
  [+[VCTestMonitorManager sharedManager](VCTestMonitorManager "sharedManager")];
  [+[VCDaemonProcessInfoManager sharedManager](VCDaemonProcessInfoManager "sharedManager")];
  [+[VCStreamInputManager sharedInstance](VCStreamInputManager registerBlocksForService];
  +[VCQoSMonitorManager sharedInstance];
  +[VCAnsweringMachineManager registerBlocksForService];
  [+[VCAudioHALPluginDevice sharedAudioHALPluginNullDevice](VCAudioHALPluginDevice "sharedAudioHALPluginNullDevice")];
  +[VCAirPlayAudioHALPlugin sharedAirPlayAudioHALPluginNullDevice];
  v7 = objc_autoreleasePoolPush();
  if (processIsAvconferenced)
  {
    if (VCFeatureFlagManager_HostSpeechTranslationServer())
    {
      VCSpeechTranslation_StartServer();
      goto LABEL_25;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        __b[0] = 136315650;
        *&__b[1] = v11;
        LOWORD(__b[3]) = 2080;
        *(&__b[3] + 2) = "_AVConferenceServerStartSubServers";
        HIWORD(__b[5]) = 1024;
        __b[6] = 204;
        v10 = " [%s] %s:%d NOT hosting speech translation server.";
        goto LABEL_24;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      __b[0] = 136315650;
      *&__b[1] = v8;
      LOWORD(__b[3]) = 2080;
      *(&__b[3] + 2) = "_AVConferenceServerStartSubServers";
      HIWORD(__b[5]) = 1024;
      __b[6] = 198;
      v10 = " [%s] %s:%d Subserver loading skipped outside avconferenced.";
LABEL_24:
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v10, __b, 0x1Cu);
    }
  }

LABEL_25:
  objc_autoreleasePoolPop(v7);
  [objc_msgSend(MEMORY[0x1E69DB518] "client")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  SoundDec_PrepareAudioConverter();
  return 0;
}

void __AVConferenceServerStartInternal_block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = +[AVCDaemonProcessInfo getDaemonProcessInfo];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str = 0;
    v1 = v0 ? [objc_msgSend(v0 "description")] : "<nil>";
    asprintf(&__str, "mediaserverdProcessInfo=%s", v1);
    if (__str)
    {
      __lasts = 0;
      v2 = strtok_r(__str, "\n", &__lasts);
      v3 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v4 = VRTraceErrorLogLevelToCSTR();
          v5 = *v3;
          if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v15 = v4;
            v16 = 2080;
            v17 = "AVConferenceServerStartInternal_block_invoke";
            v18 = 1024;
            v19 = 240;
            v20 = 2080;
            v21 = "daemoninfo";
            v22 = 2080;
            v23 = v2;
            _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v2 = strtok_r(0, "\n", &__lasts);
      }

      while (v2);
      free(__str);
    }
  }

  v6 = +[VCDaemonProcessInfoManager copyProcessInfo];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str = 0;
    v7 = v6 ? [objc_msgSend(v6 "description")] : "<nil>";
    asprintf(&__str, "avconferencedProcessInfo=%s", v7);
    if (__str)
    {
      __lasts = 0;
      v8 = strtok_r(__str, "\n", &__lasts);
      v9 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v15 = v10;
            v16 = 2080;
            v17 = "AVConferenceServerStartInternal_block_invoke";
            v18 = 1024;
            v19 = 242;
            v20 = 2080;
            v21 = "daemoninfo";
            v22 = 2080;
            v23 = v8;
            _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v8 = strtok_r(0, "\n", &__lasts);
      }

      while (v8);
      free(__str);
    }
  }
}

uint64_t __AVConferenceServerStartInternal_block_invoke_13()
{
  v11 = *MEMORY[0x1E69E9840];
  +[VCServerBag pullStoreBagKeys];
  result = VCFeatureFlagManager_UseAvconferenced();
  if (result)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v1 = VRTraceErrorLogLevelToCSTR();
      v2 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v3 = 136315906;
        v4 = v1;
        v5 = 2080;
        v6 = "AVConferenceServer_RegisterWithControlCenter";
        v7 = 1024;
        v8 = 185;
        v9 = 2112;
        v10 = @"com.apple.facetime";
        _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d STDynamicActivityAttributionPublisher app=%@", &v3, 0x26u);
      }
    }

    return [MEMORY[0x1E69D5478] setCurrentAttributionKey:0 andApp:@"com.apple.facetime"];
  }

  return result;
}

uint64_t AVConferenceServerStart()
{
  v2 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_UseAvconferenced())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AVConferenceServerStart called within mediaserverd.  UseAvconferenced is ON.", v1, 2u);
    }

    VRTraceReset();
    [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
    [+[VCDaemonProcessInfoManager sharedManager](VCDaemonProcessInfoManager "sharedManager")];
  }

  else
  {
    AVConferenceServerStartInternal(0);
  }

  return 0;
}

uint64_t VCHardwareSettingsMac_CompareCPUFamilies(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v28 = *MEMORY[0x1E69E9840];
  v4 = [&unk_1F579C960 indexOfObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a1)}];
  v5 = [&unk_1F579C960 indexOfObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
  v6 = v5;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 1;
  }

  else if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = -1;
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    v7 = [v8 compare:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v6)}];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136316930;
      v13 = v9;
      v14 = 2080;
      v15 = "VCHardwareSettingsMac_CompareCPUFamilies";
      v16 = 1024;
      v17 = 441;
      v18 = 1024;
      v19 = v4;
      v20 = 1024;
      v21 = v3;
      v22 = 1024;
      v23 = v6;
      v24 = 1024;
      v25 = a2;
      v26 = 1024;
      v27 = v7;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Comparing %d (0x%x) and %d (0x%x), result=%d", &v12, 0x3Au);
    }
  }

  return v7;
}

void _VCAudioPowerSpectrum_CleanUp(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    free(v2);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    free(v3);
    *(a1 + 88) = 0;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    free(v4);
    *(a1 + 72) = 0;
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    if (*(a1 + 36))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        _VCAudioPowerSpectrum_CleanupChannel((*(a1 + 128) + v6));
        ++v7;
        v6 += 112;
      }

      while (v7 < *(a1 + 36));
      v5 = *(a1 + 128);
    }

    free(v5);
  }

  VCAudioBufferList_Destroy((a1 + 120));
}

uint64_t VCAudioPowerSpectrum_ChannelCount(uint64_t result)
{
  if (result)
  {
    return *(result + 36);
  }

  return result;
}

uint64_t VCAudioPowerSpectrum_GetFrequencyBins(uint64_t result, void *a2, _DWORD *a3, unsigned int a4)
{
  if (a2 && a3)
  {
    if (result && *result == 1 && *(result + 36) > a4)
    {
      v4 = *(result + 128) + 112 * a4;
      *a2 = *(v4 + 104);
      v5 = *(v4 + 96);
    }

    else
    {
      v5 = 0;
      *a2 = 0;
    }

    *a3 = v5;
  }

  return result;
}

double VCAudioPowerSpectrum_LogHealth(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 104);
      v6 = *(a1 + 112);
      v7 = 136316162;
      v8 = v3;
      v9 = 2080;
      v10 = "VCAudioPowerSpectrum_LogHealth";
      v11 = 1024;
      v12 = 479;
      v13 = 1024;
      v14 = v5;
      v15 = 2048;
      v16 = v6;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VCAudioPowerSpectrum Power spectrum for streamToken=%u averageLevel=%.02f", &v7, 0x2Cu);
    }
  }

  return result;
}

void VCAudioPowerSpectrum_PushAudioSamples(uint64_t a1, uint64_t a2)
{
  v134 = *MEMORY[0x1E69E9840];
  if (!a1 || !*(a1 + 144) || !*(a1 + 136))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      v22 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          if (a1)
          {
            v24 = *(a1 + 136);
            v23 = *(a1 + 144);
          }

          else
          {
            v23 = 0;
            v24 = 0;
          }

          *buf = 136316418;
          *&buf[4] = v20;
          *&buf[12] = 2080;
          *&buf[14] = "VCAudioPowerSpectrum_PushAudioSamples";
          *&buf[22] = 1024;
          *&buf[24] = 485;
          *&buf[28] = 2048;
          *&buf[30] = a1;
          *&buf[38] = 2048;
          *&buf[40] = v23;
          v132 = 2048;
          v133 = v24;
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Power spectrum is not correctly configured: context[%p] sincCallback[%p] sinkContext[%p]", buf, 0x3Au);
        }
      }

      else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        if (a1)
        {
          v26 = *(a1 + 136);
          v25 = *(a1 + 144);
        }

        else
        {
          v25 = 0;
          v26 = 0;
        }

        *buf = 136316418;
        *&buf[4] = v20;
        *&buf[12] = 2080;
        *&buf[14] = "VCAudioPowerSpectrum_PushAudioSamples";
        *&buf[22] = 1024;
        *&buf[24] = 485;
        *&buf[28] = 2048;
        *&buf[30] = a1;
        *&buf[38] = 2048;
        *&buf[40] = v25;
        v132 = 2048;
        v133 = v26;
        _os_log_debug_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Power spectrum is not correctly configured: context[%p] sincCallback[%p] sinkContext[%p]", buf, 0x3Au);
      }
    }

    return;
  }

  v3 = a2;
  if (*a1)
  {
LABEL_82:
    SampleCount = VCAudioBufferList_GetSampleCount(v3);
    VCAudioBufferList_Shift(*(a1 + 120), SampleCount);
    VCAudioBufferList_Append(*(a1 + 120), v3, 0);
    if (VCAudioBufferList_GetChannelCount(*(a1 + 120)))
    {
      v99 = 0;
      do
      {
        if (v99 < *(a1 + 36))
        {
          *buf = -1431655766;
          v100 = *(a1 + 60);
          v101 = (*(a1 + 128) + 112 * v99);
          BufferAtIndex = VCAudioBufferList_GetBufferAtIndex(*(a1 + 120), v99, buf);
          MEMORY[0x1E128D6F0](BufferAtIndex, 1, *(a1 + 64), 1, *(v101 + 11), 1, (2 * v100));
          vDSP_ctoz(*(v101 + 11), 2, v101 + 3, 1, v100);
          vDSP_DFT_Execute(*(v101 + 5), *(v101 + 6), *(v101 + 7), *(v101 + 6), *(v101 + 7));
          MEMORY[0x1E128D710](*(v101 + 6), 1, a1 + 96, *(v101 + 6), 1, v100);
          MEMORY[0x1E128D710](*(v101 + 7), 1, a1 + 96, *(v101 + 7), 1, v100);
          vDSP_zvmags(v101 + 3, 1, *(v101 + 10), 1, v100);
          v103 = *(v101 + 10);
          *v103 = 0;
          v104 = (*(a1 + 80) - 1);
          if (*(a1 + 80) == 1)
          {
            v107 = *(v101 + 1);
          }

          else
          {
            v105 = 0;
            v106 = *(a1 + 72);
            v107 = *(v101 + 1);
            v108 = *v106;
            do
            {
              v109 = v105 + 1;
              v110 = v106[v105 + 1];
              v111 = 1.0e-12;
              if (v110 > v108)
              {
                v112 = v110 - v108;
                v111 = 1.0e-12;
                v113 = &v103[v108];
                do
                {
                  v114 = *v113++;
                  v111 = v111 + v114;
                  --v112;
                }

                while (v112);
              }

              v107[v105] = v111 / (v110 - v108);
              v108 = v110;
              ++v105;
            }

            while (v109 != v104);
          }

          __B = 1.0;
          vDSP_vdbcon(v107, 1, &__B, v107, 1, *v101, 0);
          v128 = 1060765361;
          __C = 0.13673;
          vDSP_vasm(*(v101 + 1), 1, *(v101 + 2), 1, &__C, *(v101 + 2), 1, *v101);
          MEMORY[0x1E128D700](*(v101 + 3), 1, &v128, *(v101 + 2), 1, *(v101 + 3), 1, *v101);
          memcpy(*(v101 + 2), *(v101 + 1), 4 * *v101);
          v115 = *(v101 + 3);
          v116 = *v101;
          v115[v116] = v115[(v116 - 1)];
          v117 = *(a1 + 88);
          if (v117)
          {
            vDSP_vlint(v115, v117, 1, *(v101 + 4), 1, *(a1 + 84), v116);
            v115 = *(v101 + 4);
          }

          v118 = v101[24];
          if (v118)
          {
            v119 = (*(v101 + 13) + 8);
            v120 = v115;
            v121 = v101[24];
            do
            {
              v122 = *v120++;
              *v119 = v122;
              v119 += 3;
              --v121;
            }

            while (v121);
          }

          VCUtil_ExponentialMovingAverage((a1 + 112), v115[v118 >> 1], 1.0);
          *(a1 + 112) = v123;
        }

        ++v99;
      }

      while (v99 < VCAudioBufferList_GetChannelCount(*(a1 + 120)));
    }

    (*(a1 + 144))(*(a1 + 136), a2);
    return;
  }

  SampleFormat = VCAudioBufferList_GetSampleFormat(a2);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 84);
      *buf = 136315906;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = "_VCAudioPowerSpectrum_SetupAudioPowerSpectrumWithBinCount";
      *&buf[22] = 1024;
      *&buf[24] = 348;
      *&buf[28] = 1024;
      *&buf[30] = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d binCount:%d", buf, 0x22u);
    }
  }

  v8 = *SampleFormat;
  v9 = *(SampleFormat + 16);
  *(a1 + 40) = *(SampleFormat + 32);
  *(a1 + 24) = v9;
  *(a1 + 8) = v8;
  if (*(SampleFormat + 8) != 1819304813)
  {
    VCAudioPowerSpectrum_PushAudioSamples_cold_1();
    goto LABEL_120;
  }

  v10 = *(SampleFormat + 12);
  if ((v10 & 9) == 0 || (v10 & 0x20) == 0)
  {
    VCAudioPowerSpectrum_PushAudioSamples_cold_21();
    goto LABEL_120;
  }

  *(a1 + 48) = 0;
  v11 = *SampleFormat;
  v12 = *SampleFormat * 0.5;
  v13 = (v12 / 6.25);
  *(a1 + 52) = v12;
  v14 = 1.0 / (2 * v13);
  *(a1 + 96) = v14;
  *(a1 + 56) = v11;
  *(a1 + 60) = v13;
  v15 = *(a1 + 24);
  *buf = *(a1 + 8);
  *&buf[16] = v15;
  *&buf[32] = *(a1 + 40);
  if (!VCAudioBufferList_Allocate(buf, 2 * v13, (a1 + 120)))
  {
    VCAudioPowerSpectrum_PushAudioSamples_cold_2();
    goto LABEL_120;
  }

  VCAudioBufferList_SetSampleCount(*(a1 + 120), 2 * *(a1 + 60));
  v16 = *(a1 + 60);
  if (v16 < 7)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v18 = *(a1 + 60);
    do
    {
      v17 += 6;
      v19 = v18 > 0xD;
      v18 >>= 1;
    }

    while (v19);
  }

  v28 = (a1 + 84);
  v27 = *(a1 + 84);
  v29 = expf(v17 * 0.11552);
  if (v17 >= v27)
  {
    v30 = v27;
  }

  else
  {
    v30 = v17;
  }

  if (v27)
  {
    v31 = v30 + 1;
  }

  else
  {
    v31 = v17 | 1;
  }

  *(a1 + 80) = v31;
  v32 = (a1 + 80);
  v33 = malloc_type_calloc(v31, 4uLL, 0x100004052888210uLL);
  *(a1 + 72) = v33;
  v127 = (a1 + 72);
  if (!v33)
  {
    VCAudioPowerSpectrum_PushAudioSamples_cold_20(a1 + 80, v127);
    goto LABEL_120;
  }

  LODWORD(v34) = *v32;
  if (*v32 >= 2u)
  {
    v35 = v33;
    v36 = v16 / v29;
    v37 = *v33;
    v38 = 1;
    v39 = v17;
    do
    {
      v40 = (v36 * expf((v39 * 0.11552) / (v34 - 1)));
      if (v37 >= v40)
      {
        ++v37;
      }

      else
      {
        v37 = v40;
      }

      v35[v38++] = v37;
      v34 = *v32;
      v39 += v17;
    }

    while (v38 < v34);
  }

  v41 = *v28;
  v42 = v34 - 1;
  if (!v41)
  {
    *v28 = v42;
    if (v42)
    {
      goto LABEL_49;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioPowerSpectrum_PushAudioSamples_cold_18();
      }
    }

    goto LABEL_119;
  }

  if (v42 == v41)
  {
    goto LABEL_49;
  }

  v43 = malloc_type_calloc(v41, 4uLL, 0x100004052888210uLL);
  *(a1 + 88) = v43;
  if (!v43)
  {
LABEL_119:
    VCAudioPowerSpectrum_PushAudioSamples_cold_19();
    goto LABEL_120;
  }

  LODWORD(v44) = *v28;
  if (*v28)
  {
    v45 = 0;
    v46 = MEMORY[0x1E6986650];
    do
    {
      *(*(a1 + 88) + 4 * v45) = (v45 * (*(a1 + 80) - 2)) / (v44 - 1);
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v47 = VRTraceErrorLogLevelToCSTR();
        v48 = *v46;
        if (os_log_type_enabled(*v46, OS_LOG_TYPE_ERROR))
        {
          v49 = *(*(a1 + 88) + 4 * v45);
          *buf = 136316162;
          *&buf[4] = v47;
          *&buf[12] = 2080;
          *&buf[14] = "_VCAudioPowerSpectrum_SetupBinInterpolationWithBinCount";
          *&buf[22] = 1024;
          *&buf[24] = 145;
          *&buf[28] = 1024;
          *&buf[30] = v45;
          *&buf[34] = 2048;
          *&buf[36] = v49;
          _os_log_error_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_ERROR, " [%s] %s:%d lerp[%d] : %f", buf, 0x2Cu);
        }
      }

      ++v45;
      v44 = *v28;
    }

    while (v45 < v44);
  }

LABEL_49:
  v50 = malloc_type_calloc((2 * *(a1 + 60)), 4uLL, 0x100004052888210uLL);
  *(a1 + 64) = v50;
  if (!v50 || (vDSP_hann_window(v50, (2 * *(a1 + 60)), 0), !*(a1 + 64)))
  {
    VCAudioPowerSpectrum_PushAudioSamples_cold_17();
    goto LABEL_120;
  }

  v52 = *(SampleFormat + 28);
  v51 = (SampleFormat + 28);
  v53 = malloc_type_calloc(v52, 0x70uLL, 0x10A0040938ACEBEuLL);
  *(a1 + 128) = v53;
  if (!v53)
  {
    VCAudioPowerSpectrum_PushAudioSamples_cold_16();
    goto LABEL_120;
  }

  if (!*v51)
  {
LABEL_81:
    *a1 = 1;
    v3 = a2;
    goto LABEL_82;
  }

  v54 = 0;
  LODWORD(v55) = *(a1 + 80);
  __asm { FMOV            V1.2D, #6.25 }

  v125 = _Q1;
  while (1)
  {
    v61 = (*(a1 + 128) + 112 * v54);
    v62 = (v55 - 1);
    *v61 = v62;
    v63 = malloc_type_calloc(v62, 4uLL, 0x100004052888210uLL);
    *(v61 + 2) = v63;
    if (!v63)
    {
      VCAudioPowerSpectrum_PushAudioSamples_cold_13();
LABEL_127:
      _VCAudioPowerSpectrum_CleanupOctave2IndexTableForChannel(v61);
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCAudioPowerSpectrum_PushAudioSamples_cold_14();
        }
      }

      goto LABEL_113;
    }

    v64 = malloc_type_calloc(*v61, 4uLL, 0x100004052888210uLL);
    *(v61 + 1) = v64;
    if (!v64)
    {
      VCAudioPowerSpectrum_PushAudioSamples_cold_12();
      goto LABEL_127;
    }

    v65 = malloc_type_calloc(*v61 + 1, 4uLL, 0x100004052888210uLL);
    *(v61 + 3) = v65;
    if (!v65)
    {
      VCAudioPowerSpectrum_PushAudioSamples_cold_11();
      goto LABEL_127;
    }

    v66 = malloc_type_calloc(*v28, 4uLL, 0x100004052888210uLL);
    *(v61 + 4) = v66;
    if (!v66)
    {
      VCAudioPowerSpectrum_PushAudioSamples_cold_10();
      goto LABEL_127;
    }

    v67 = *v61;
    if (v67)
    {
      v69 = *(v61 + 1);
      v68 = *(v61 + 2);
      v70 = *v61;
      v71 = *(v61 + 3);
      do
      {
        *v68++ = -1024458752;
        *v69++ = -1024458752;
        *v71++ = -1024458752;
        --v70;
      }

      while (v70);
    }

    v72 = *v28;
    if (v72)
    {
      memset_pattern16(v66, &unk_1DBD45960, 4 * v72);
    }

    v61[18] = 730643660;
    memset_pattern4(*(v61 + 2), v61 + 18, 4 * v67);
    v73 = malloc_type_calloc((2 * *(a1 + 60)), 4uLL, 0x100004052888210uLL);
    *(v61 + 11) = v73;
    if (!v73)
    {
      VCAudioPowerSpectrum_PushAudioSamples_cold_8();
      goto LABEL_133;
    }

    v74 = malloc_type_calloc((2 * *(a1 + 60)), 4uLL, 0x100004052888210uLL);
    *(v61 + 8) = v74;
    if (!v74)
    {
      VCAudioPowerSpectrum_PushAudioSamples_cold_7();
      goto LABEL_133;
    }

    v75 = malloc_type_calloc(*(a1 + 60), 4uLL, 0x100004052888210uLL);
    *(v61 + 10) = v75;
    if (!v75)
    {
      break;
    }

    v76 = *(v61 + 8);
    *(v61 + 6) = v76;
    v77 = *(a1 + 60);
    *(v61 + 7) = v76 + 4 * v77;
    *(v61 + 5) = vDSP_DFT_zrop_CreateSetup(0, (2 * v77), vDSP_DFT_FORWARD);
    v78 = *(a1 + 84);
    if (!v78)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCAudioPowerSpectrum_PushAudioSamples_cold_4();
        }
      }

      goto LABEL_112;
    }

    v79 = (v61 + 24);
    if (v61[24])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v124 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCAudioPowerSpectrum_PushAudioSamples_cold_3(v124);
        }
      }

LABEL_112:
      VCAudioPowerSpectrum_PushAudioSamples_cold_5();
      goto LABEL_113;
    }

    v80 = malloc_type_calloc(v78, 0xCuLL, 0x10000403E1C8BA9uLL);
    *(v61 + 13) = v80;
    if (!v80)
    {
      goto LABEL_112;
    }

    v83 = *(a1 + 88);
    if (v83)
    {
      v84 = *v127;
      v85 = *v79;
      v86 = (*v28 - 1);
      if (*v28 == 1)
      {
        v88 = 0;
      }

      else
      {
        v87 = (v83 + 4);
        v88 = 0;
        do
        {
          v89 = *v87++;
          v90 = vcvtms_u32_f32(v89);
          v91 = v89 - floorf(v89);
          LODWORD(v81) = v84[v90];
          v81 = *&v81 * 6.25;
          *&v81 = v81;
          LODWORD(v82) = v84[v90 + 1];
          v82 = *&v82 * 6.25;
          *&v82 = v82;
          *v80 = v88;
          *&v88 = (v91 * *&v82) + ((1.0 - v91) * *&v81);
          *(v80 + 1) = v88;
          v80 += 3;
          *v79 = ++v85;
          --v86;
        }

        while (v86);
      }

      *v80 = v88;
      LODWORD(v55) = *v32;
      LODWORD(v88) = v84[*v32 - 1];
      v97 = v88 * 6.25;
      v80[1] = v97;
      *v79 = v85 + 1;
    }

    else
    {
      v55 = *v32;
      if (v55 >= 2)
      {
        v92 = *v127;
        v93 = v55 - 1;
        v94 = *v79 + 1;
        do
        {
          v95 = *v92;
          v92 = (v92 + 4);
          v96.i64[0] = v95;
          v96.i64[1] = HIDWORD(v95);
          *v80 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_u64(v96), v125));
          v80 += 3;
          *v79 = v94++;
          --v93;
        }

        while (v93);
      }
    }

    if (++v54 >= *v51)
    {
      goto LABEL_81;
    }
  }

  VCAudioPowerSpectrum_PushAudioSamples_cold_6();
LABEL_133:
  _VCAudioPowerSpectrum_CleanupFFTForChannel(v61);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioPowerSpectrum_PushAudioSamples_cold_9();
    }
  }

LABEL_113:
  _VCAudioPowerSpectrum_CleanupChannel(v61);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioPowerSpectrum_PushAudioSamples_cold_15();
    }
  }

LABEL_120:
  _VCAudioPowerSpectrum_CleanUp(a1);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioPowerSpectrum_PushAudioSamples_cold_22();
    }
  }
}

void _VCAudioPowerSpectrum_CleanupChannel(void *a1)
{
  if (a1)
  {
    v2 = a1[13];
    if (v2)
    {
      free(v2);
      a1[13] = 0;
    }
  }

  _VCAudioPowerSpectrum_CleanupFFTForChannel(a1);

  _VCAudioPowerSpectrum_CleanupOctave2IndexTableForChannel(a1);
}

void _VCAudioPowerSpectrum_CleanupFFTForChannel(void *a1)
{
  if (a1)
  {
    v2 = a1[11];
    if (v2)
    {
      free(v2);
      a1[11] = 0;
    }

    v3 = a1[8];
    if (v3)
    {
      free(v3);
      a1[8] = 0;
    }

    v4 = a1[10];
    if (v4)
    {
      free(v4);
      a1[10] = 0;
    }

    v5 = a1[5];
    if (v5)
    {
      vDSP_DFT_DestroySetup(v5);
      a1[5] = 0;
    }
  }
}

void _VCAudioPowerSpectrum_CleanupOctave2IndexTableForChannel(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      free(v2);
      a1[1] = 0;
    }

    v3 = a1[2];
    if (v3)
    {
      free(v3);
      a1[2] = 0;
    }

    v4 = a1[3];
    if (v4)
    {
      free(v4);
      a1[3] = 0;
    }

    v5 = a1[4];
    if (v5)
    {
      free(v5);
      a1[4] = 0;
    }
  }
}

void CARingBuffer::CARingBuffer(CARingBuffer *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 6) = 0;
}

void CARingBuffer::Deallocate(CARingBuffer *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *this = 0;
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
}

void CARingBuffer::~CARingBuffer(CARingBuffer *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *this = 0;
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
}

void CARingBuffer::Allocate(CARingBuffer *this, int a2, int a3, int a4)
{
  v8 = *this;
  if (v8)
  {
    free(v8);
    *this = 0;
  }

  v9 = 1 << (32 - __clz(a4 - 1));
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 4) = v9;
  *(this + 5) = v9 - 1;
  LODWORD(v9) = v9 * a3;
  *(this + 6) = v9;
  v10 = ((v9 + 8) * a2);
  v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
  bzero(v11, v10);
  *this = v11;
  if (a2 >= 1)
  {
    v12 = 0;
    v13 = *(this + 6);
    v14 = &v11[8 * a2];
    do
    {
      *(*this + 8 * v12) = v14;
      v14 += v13;
      ++v12;
    }

    while (a2 != v12);
  }

  v15 = (this + 48);
  v16 = 32;
  do
  {
    *(v15 - 2) = 0;
    *(v15 - 1) = 0;
    *v15 = 0;
    v15 += 6;
    --v16;
  }

  while (v16);
  *(this + 200) = 0;
}

uint64_t CARingBuffer::Store(CARingBuffer *this, const AudioBufferList *a2, unsigned int a3, uint64_t a4)
{
  v4 = *(this + 4);
  if (v4 < a3)
  {
    return 3;
  }

  v8 = a4 + a3;
  v9 = this + 32;
  v10 = *(this + 200);
  v11 = this + 24 * (v10 & 0x1F) + 32;
  v13 = *(v11 + 1);
  v12 = (v11 + 8);
  v14 = a4;
  v15 = a4;
  if (v13 > a4)
  {
    goto LABEL_8;
  }

  if (v8 - *&v9[24 * (v10 & 0x1F)] > v4)
  {
    v14 = v8 - v4;
    if (v8 - v4 <= *v12)
    {
      v15 = *v12;
    }

    else
    {
      v15 = v8 - v4;
    }

LABEL_8:
    v16 = &v9[24 * ((v10 + 1) & 0x1F)];
    *v16 = v14;
    *(v16 + 1) = v15;
    *(v16 + 4) = v10 + 1;
    atomic_compare_exchange_strong(this + 200, &v17, v10 + 1);
  }

  v18 = *this;
  v19 = *&v9[24 * (*(this + 200) & 0x1F) + 8];
  v20 = *(this + 5);
  v22 = *(this + 2);
  v21 = *(this + 3);
  if (v19 >= a4)
  {
    v24 = (v20 & a4) * v21;
  }

  else
  {
    v23 = (v20 & v19) * v21;
    v24 = (v20 & a4) * v21;
    if (v24 <= v23)
    {
      if (v22 >= 1)
      {
        v60 = a4 + a3;
        v30 = v23;
        v31 = *(this + 6) - v23;
        v32 = v22 + 1;
        v33 = *this;
        do
        {
          v34 = *v33++;
          bzero((v34 + v30), v31);
          --v32;
        }

        while (v32 > 1);
        v35 = v22 + 1;
        v36 = v18;
        v8 = v60;
        do
        {
          v37 = *v36++;
          bzero(v37, v24);
          --v35;
        }

        while (v35 > 1);
      }
    }

    else if (v22 >= 1)
    {
      v25 = v23;
      v26 = v24 - v23;
      v27 = v22 + 1;
      v28 = *this;
      do
      {
        v29 = *v28++;
        bzero((v29 + v25), v26);
        --v27;
      }

      while (v27 > 1);
    }
  }

  v38 = (*(this + 5) & v8) * *(this + 3);
  mNumberBuffers = a2->mNumberBuffers;
  if (v38 <= v24)
  {
    if (mNumberBuffers >= 1)
    {
      v61 = v8;
      v46 = *(this + 6) - v24;
      v47 = mNumberBuffers + 1;
      v48 = 16;
      v49 = v18;
      do
      {
        v50 = *v49++;
        memcpy((v50 + v24), *(&a2->mNumberBuffers + v48), v46);
        v48 += 16;
        --v47;
      }

      while (v47 > 1);
      v51 = a2->mNumberBuffers;
      v8 = v61;
      if (a2->mNumberBuffers >= 1)
      {
        v52 = v38;
        p_mData = &a2->mBuffers[0].mData;
        v54 = v51 + 1;
        do
        {
          v56 = *v18++;
          v55 = v56;
          v57 = *p_mData;
          p_mData += 2;
          memcpy(v55, &v57[v46], v52);
          --v54;
        }

        while (v54 > 1);
      }
    }
  }

  else if (mNumberBuffers >= 1)
  {
    v40 = v38 - v24;
    v41 = &a2->mBuffers[0].mData;
    v42 = mNumberBuffers + 1;
    do
    {
      v44 = *v18++;
      v43 = v44;
      v45 = *v41;
      v41 += 2;
      memcpy((v43 + v24), v45, v40);
      --v42;
    }

    while (v42 > 1);
  }

  result = 0;
  v58 = *(this + 200);
  v59 = &v9[24 * ((v58 + 1) & 0x1F)];
  *v59 = *&v9[24 * (v58 & 0x1F)];
  *(v59 + 1) = v8;
  *(v59 + 4) = v58 + 1;
  atomic_compare_exchange_strong(this + 200, &v58, v58 + 1);
  return result;
}