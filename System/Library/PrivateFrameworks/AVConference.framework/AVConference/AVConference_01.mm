uint64_t CARingBuffer::Fetch(CARingBuffer *this, AudioBufferList *a2, unsigned int a3, uint64_t a4)
{
  v4 = a2;
  v6 = a4 + a3;
  v7 = *(this + 200);
  v8 = this + 24 * (v7 & 0x1F);
  v9 = 8;
  while (*(v8 + 12) != v7)
  {
    if (!--v9)
    {
      return 4;
    }
  }

  if (a4 <= *(v8 + 4))
  {
    v11 = *(v8 + 4);
  }

  else
  {
    v11 = a4;
  }

  if (*(v8 + 5) >= v6)
  {
    v12 = a4 + a3;
  }

  else
  {
    v12 = *(v8 + 5);
  }

  if (v12 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 - a4;
  if (v11 - a4 > a3)
  {
    return 5;
  }

  v15 = v6 - v13;
  v16 = v13 - v11 + v14;
  if (v16 + v6 - v13 > a3)
  {
    return 5;
  }

  if (v14 >= 1 && a2->mNumberBuffers >= 1)
  {
    v17 = *(this + 3) * v14;
    p_mData = &a2->mBuffers[0].mData;
    v19 = a2->mNumberBuffers + 1;
    do
    {
      v20 = *p_mData;
      p_mData += 2;
      bzero(v20, v17);
      --v19;
    }

    while (v19 > 1);
  }

  if (v15 >= 1 && v4->mNumberBuffers >= 1)
  {
    v21 = *(this + 3);
    v22 = v21 * v15;
    v23 = v21 * v16;
    v24 = v22;
    v25 = &v4->mBuffers[0].mData;
    v26 = v4->mNumberBuffers + 1;
    do
    {
      v27 = *v25;
      v25 += 2;
      bzero(&v27[v23], v24);
      --v26;
    }

    while (v26 > 1);
  }

  v28 = *this;
  v29 = *(this + 5);
  v30 = *(this + 3);
  v31 = (v29 & v11) * v30;
  v32 = (v29 & v13) * v30;
  v33 = v32 - v31;
  if (v32 <= v31)
  {
    v41 = *(this + 6) - v31;
    if (v4->mNumberBuffers >= 1)
    {
      v64 = *(this + 6) - v31;
      v65 = (v29 & v13) * v30;
      v42 = v30 * v14;
      v43 = v31;
      v44 = v41;
      v45 = v4;
      v46 = v4->mNumberBuffers + 1;
      v47 = 16;
      v48 = *this;
      do
      {
        v49 = *v48++;
        memcpy((*(&v45->mNumberBuffers + v47) + v42), (v49 + v43), v44);
        v47 += 16;
        --v46;
      }

      while (v46 > 1);
      mNumberBuffers = v45->mNumberBuffers;
      v4 = v45;
      v41 = v64;
      v32 = v65;
      if (mNumberBuffers >= 1)
      {
        v51 = v64 + *(this + 3) * v14;
        v52 = &v4->mBuffers[0].mData;
        v53 = mNumberBuffers + 1;
        do
        {
          v55 = *v52;
          v52 += 2;
          v54 = v55;
          v56 = *v28++;
          memcpy(&v54[v51], v56, v65);
          --v53;
        }

        while (v53 > 1);
      }
    }

    v33 = v41 + v32;
    goto LABEL_37;
  }

  if (v4->mNumberBuffers >= 1)
  {
    v34 = v30 * v14;
    v35 = v31;
    v36 = &v4->mBuffers[0].mData;
    v37 = v4->mNumberBuffers + 1;
    do
    {
      v39 = *v36;
      v36 += 2;
      v38 = v39;
      v40 = *v28++;
      memcpy(&v38[v34], (v40 + v35), v33);
      --v37;
    }

    while (v37 > 1);
LABEL_37:
    v57 = v4->mNumberBuffers;
    if (v57 >= 1)
    {
      v58 = 0;
      v59 = vdupq_n_s64(v57 - 1);
      v60 = (v57 + 3) & 0xFFFFFFFC;
      v61 = &v4[1].mBuffers[0].mData + 1;
      do
      {
        v62 = vdupq_n_s64(v58);
        v63 = vmovn_s64(vcgeq_u64(v59, vorrq_s8(v62, xmmword_1DBD45330)));
        if (vuzp1_s16(v63, *v59.i8).u8[0])
        {
          *(v61 - 8) = v33;
        }

        if (vuzp1_s16(v63, *&v59).i8[2])
        {
          *(v61 - 4) = v33;
        }

        if (vuzp1_s16(*&v59, vmovn_s64(vcgeq_u64(v59, vorrq_s8(v62, xmmword_1DBD45970)))).i32[1])
        {
          *v61 = v33;
          v61[4] = v33;
        }

        v58 += 4;
        v61 += 16;
      }

      while (v60 != v58);
    }
  }

  return 0;
}

uint64_t _VCDatagramChannelMultilinkList_CompareEntries(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = 2 * (v2 >= v3);
  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

void sub_1DB5B48C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VCDatagramChannelMultiLink_Token(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 188);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v4 = 136315650;
    v5 = v2;
    v6 = 2080;
    v7 = "VCDatagramChannelMultiLink_Token";
    v8 = 1024;
    v9 = 333;
    _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v4, 0x1Cu);
  }

  return 0;
}

void OUTLINED_FUNCTION_11_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

uint64_t _AVCStatisticsCollectorHandlerList_CompareListEntries(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = 2 * (v2 >= v3);
  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t _AVCStatisticsCollector_CleanupChangeHandlers(uint64_t a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E9820];
  for (i = 384; i != 928; i += 32)
  {
    v5[0] = v2;
    v5[1] = 3221225472;
    v5[2] = ___AVCStatisticsCollector_CleanupChangeHandlers_block_invoke;
    v5[3] = &unk_1E85F3FE8;
    v5[4] = a1;
    result = VCSingleLinkedListClear(a1 + i, v5);
  }

  return result;
}

uint64_t _AVCStatisticsCollector_SetProcessCompleteHandler(uint64_t a1, const void *a2)
{
  pthread_rwlock_wrlock((a1 + 1128));
  v4 = *(a1 + 48);
  if (v4)
  {
    _Block_release(v4);
  }

  if (a2)
  {
    v5 = _Block_copy(a2);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 48) = v5;

  return pthread_rwlock_unlock((a1 + 1128));
}

void _AVCStatisticsCollector_ProcessVCStatisticsInternal(uint64_t a1, unsigned int *a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 76);
  if (v4 == 10)
  {
    v5 = *a2;
    if (*a2 != 2)
    {
      v7 = (a1 + 32);
      v6 = *(a1 + 32);
LABEL_8:
      if (v5 == 2)
      {
        _AVCStatisticsCollector_UpdatePacketReceivedCount(a1, a2);
        SendHistoryElement = VCStatisticsHistory_GetSendHistoryElement(v6, a2[17]);
        if (SendHistoryElement)
        {
          v77 = 0u;
          memset(v78, 0, sizeof(v78));
          *(&v77 + 1) = *(a2 + 1);
          LODWORD(v78[0]) = a2[6];
          v24 = *(SendHistoryElement + 16);
          *&v78[1] = *(SendHistoryElement + 24);
          *(v78 + 4) = __PAIR64__(*(a1 + 108), v24);
          DWORD2(v78[2]) = a2[10];
          VCStatisticsHistory_AddStatsHistory(v6, &v77);
          a2[16] = DWORD1(v78[0]);
        }
      }

      else if (v5 == 6 && a2[6])
      {
        v8 = *(a2 + 1);
LABEL_30:
        v25 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004094C8A1BEuLL);
        *v25 = a2[6];
        v25[1] = v8;
        *(v25 + 4) = a2[7];
        *(v25 + 3) = a2[8];
        VCStatisticsHistory_AddAndPruneSendHistory(v6, v25, v8 + -5.0);
        goto LABEL_31;
      }

      goto LABEL_31;
    }

    a2[8] *= 1000;
    v4 = *(a1 + 76);
  }

  v7 = (a1 + 32);
  v6 = *(a1 + 32);
  if (v4 > 0xC)
  {
    goto LABEL_31;
  }

  if (((1 << v4) & 0xB0) == 0)
  {
    if (((1 << v4) & 0x700) != 0)
    {
      v5 = *a2;
      goto LABEL_8;
    }

    if (v4 != 12)
    {
      goto LABEL_31;
    }

    if (*a2 != 15)
    {
      goto LABEL_31;
    }

    CurrentStatsHistoryElement = VCStatisticsHistory_GetCurrentStatsHistoryElement(*(a1 + 32));
    if (!CurrentStatsHistoryElement)
    {
      goto LABEL_31;
    }

    v16 = *(a2 + 19);
    v17 = v16 - *(CurrentStatsHistoryElement + 60);
    if (v17 >= 15)
    {
      v17 = 15;
    }

    *&v77 = 0xAAAAAAAAAAAAAA00;
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(v78 + 8) = v18;
    *(&v78[2] + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(&v78[1] + 8) = v18;
    *(&v77 + 1) = *(a2 + 1);
    LODWORD(v78[0]) = 0;
    v19.i32[1] = 1;
    v19.i32[0] = v17 & ~(v17 >> 31);
    *(v78 + 4) = vadd_s32(*(CurrentStatsHistoryElement + 20), v19);
    v20 = *(a2 + 18);
    v21 = *(CurrentStatsHistoryElement + 32) + (v19.i32[0] * v20);
    v22 = *(CurrentStatsHistoryElement + 40) + v20;
    *&v78[1] = v21;
    *(&v78[1] + 1) = v22;
    *&v78[2] = 0;
    DWORD2(v78[2]) = 0;
    WORD6(v78[2]) = v16;
LABEL_26:
    VCStatisticsHistory_AddStatsHistory(v6, &v77);
    goto LABEL_31;
  }

  v9 = *a2;
  if (*a2 == 5 && a2[8])
  {
    v77 = 0u;
    v78[0] = 0u;
    LOBYTE(v77) = *(a2 + 24);
    *(&v77 + 1) = *(a2 + 1);
    LODWORD(v78[0]) = a2[7];
    *(v78 + 4) = *(a2 + 9);
    v10 = *(a2 + 11);
    *&v11 = v10;
    *(&v11 + 1) = HIDWORD(v10);
    v78[1] = v11;
    v78[2] = 0u;
    *&v78[2] = a2[13];
    goto LABEL_26;
  }

  if (v4 != 7)
  {
    goto LABEL_31;
  }

  if (v9 == 6)
  {
    v8 = *(a2 + 5);
    goto LABEL_30;
  }

  if (v9 == 2)
  {
    _AVCStatisticsCollector_UpdatePacketReceivedCount(a1, a2);
    v12 = VCStatisticsHistory_GetSendHistoryElement(v6, a2[17]);
    if (v12)
    {
      v77 = 0u;
      memset(v78, 0, sizeof(v78));
      *(&v77 + 1) = *(a2 + 1);
      v13 = *(v12 + 16);
      v14 = a2[13];
      LODWORD(v78[0]) = a2[6];
      *(v78 + 4) = __PAIR64__(v14, v13);
      DWORD2(v78[2]) = a2[10];
      goto LABEL_26;
    }
  }

LABEL_31:
  v26 = *(a1 + 76);
  if (v26 <= 4)
  {
    if (v26 != 1 && v26 != 3)
    {
      if (v26 != 4)
      {
        goto LABEL_54;
      }

      if (*a2 != 5)
      {
        goto LABEL_56;
      }

      _AVCStatisticsCollector_ComputeBWEstimation(a1, a2);
      goto LABEL_51;
    }
  }

  else if ((v26 - 7) >= 4)
  {
    if (v26 != 5)
    {
      if (v26 != 12)
      {
        goto LABEL_54;
      }

      if (*a2 != 15)
      {
LABEL_62:
        _AVCStatisticsCollector_ComputeOWRDEstimation(a1, a2);
        goto LABEL_63;
      }

      _AVCStatisticsCollector_ComputeBWEstimation(a1, a2);
      if (!a2[14])
      {
        a2[14] = *(a1 + 84) / 0x3E8u;
      }

      goto LABEL_53;
    }

    if (*a2 != 5)
    {
      if (*a2 != 4)
      {
        goto LABEL_56;
      }

      a2[12] = a2[8];
LABEL_45:
      _AVCStatisticsCollector_ComputeBWEstimation(a1, a2);
      goto LABEL_53;
    }

    v64 = *(a2 + 1);
    VCRateControlBandwidthEstimatorMap_EstimatedBandwidthWithArrivalTime(*(a1 + 8), v64);
    v66 = *(a1 + 112);
    if (v66 >= v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = *(a1 + 112);
    }

    if (v66)
    {
      v68 = v67;
    }

    else
    {
      v68 = v65;
    }

    VCRateControlBandwidthEstimatorMap_EstimatedBandwidthUncappedWithArrivalTime(*(a1 + 8), v64);
    v70 = *(a1 + 84);
    atomic_compare_exchange_strong_explicit((a1 + 84), &v70, v68, memory_order_relaxed, memory_order_relaxed);
    v71 = *(a1 + 88);
    atomic_compare_exchange_strong_explicit((a1 + 88), &v71, v69, memory_order_relaxed, memory_order_relaxed);
    if (a2[15])
    {
LABEL_52:
      a2[27] = *(a1 + 116);
      goto LABEL_53;
    }

LABEL_51:
    a2[15] = *(a1 + 84);
    goto LABEL_52;
  }

  if (*a2 == 2)
  {
    v28 = *(a1 + 92);
    atomic_compare_exchange_strong_explicit((a1 + 92), &v28, 1000 * a2[8], memory_order_relaxed, memory_order_relaxed);
    if (v26 != 10)
    {
      a2[9] = a2[8] & 7;
    }

    goto LABEL_53;
  }

  if (*a2 == 4)
  {
    goto LABEL_45;
  }

LABEL_53:
  v26 = *(a1 + 76);
LABEL_54:
  if (v26 > 0xC)
  {
    goto LABEL_64;
  }

  if (((1 << v26) & 0x7B0) == 0)
  {
    if (v26 != 12)
    {
      goto LABEL_64;
    }

    goto LABEL_62;
  }

LABEL_56:
  _AVCStatisticsCollector_ComputeOWRDEstimation(a1, a2);
  if (*a2 == 2)
  {
    v29 = *v7;
    v30 = *(a2 + 1);
    v31 = 5.0;
    goto LABEL_60;
  }

  if (*a2 == 5)
  {
    *(a2 + 10) = VCStatisticsHistory_PacketLossRate(*v7, *(a2 + 1), 5.0);
    v29 = *v7;
    v30 = *(a2 + 1);
    v31 = 1.0;
LABEL_60:
    *(a2 + 11) = VCStatisticsHistory_PacketLossRate(v29, v30, v31);
  }

LABEL_63:
  _AVCStatisticsCollector_AddActualBitrateInfo(a1, a2);
LABEL_64:
  v32 = *a2;
  if ((*(a1 + 76) - 7) > 3)
  {
    if (v32 == 2)
    {
      _AVCStatisticsCollector_UpdatePacketReceivedCount(a1, a2);
LABEL_73:
      v32 = *a2;
    }
  }

  else if (v32 == 2)
  {
    v33 = VCStatisticsHistory_RoundTripTimeWithPacketId(*v7, a2[17], *(a2 + 1));
    v34 = 0.0;
    if (v33 <= 65.535)
    {
      LODWORD(v34) = a2[7];
      v34 = fmax(v33 + *&v34 / -1000.0, 0.0);
    }

    *(a2 + 13) = v34;
    v32 = *a2;
    if (*a2 == 2)
    {
      BurstyLoss = VCStatisticsHistory_GetBurstyLoss(*v7, *(a2 + 1), 5.0, 0.9);
      if (BurstyLoss != -1)
      {
        a2[12] = BurstyLoss;
      }

      goto LABEL_73;
    }
  }

  if (*(a1 + 76) == 7 && v32 == 14)
  {
    VCStatisticsHistory_BytesInFlight(*v7, a2 + 4, a2 + 3);
    a2[10] = v36;
    v32 = *a2;
  }

  v37 = *(a1 + 16);
  if (v32 <= 6)
  {
    if (v32 <= 3)
    {
      if (v32 != 2)
      {
        if (v32 != 3)
        {
          goto LABEL_129;
        }

        v38 = (a1 + 160);
        pthread_rwlock_wrlock((a1 + 160));
        v39 = *(a2 + 10);
        v40 = *(a2 + 18);
        v41 = *(a2 + 6);
        *(v37 + 208) = *(a2 + 14);
        *(v37 + 224) = v40;
        *(v37 + 176) = v41;
        *(v37 + 192) = v39;
        goto LABEL_128;
      }

      v38 = (a1 + 160);
      pthread_rwlock_wrlock((a1 + 160));
      v48 = *(a2 + 14);
      v49 = *(a2 + 10);
      *v37 = *(a2 + 6);
      *(v37 + 16) = v49;
      *(v37 + 32) = v48;
      v50 = *(a2 + 22);
      v51 = *(a2 + 30);
      v52 = *(a2 + 18);
      *(v37 + 80) = *(a2 + 26);
      *(v37 + 96) = v51;
      *(v37 + 48) = v52;
      *(v37 + 64) = v50;
      v53 = *(a2 + 38);
      v54 = *(a2 + 46);
      v55 = *(a2 + 34);
      *(v37 + 144) = *(a2 + 42);
      *(v37 + 160) = v54;
      *(v37 + 112) = v55;
      *(v37 + 128) = v53;
      if (*(a2 + 116) != 1 || (v56 = a2 + 30, a2[30] != 3))
      {
LABEL_128:
        pthread_rwlock_unlock(v38);
        goto LABEL_129;
      }

LABEL_100:
      v58 = *v56;
      v59 = *(v56 + 1);
      v60 = *(v56 + 2);
      *(v37 + 400) = *(v56 + 6);
      *(v37 + 368) = v59;
      *(v37 + 384) = v60;
      *(v37 + 352) = v58;
      goto LABEL_128;
    }

    if (v32 != 4)
    {
      if (v32 != 5)
      {
        goto LABEL_129;
      }

      v38 = (a1 + 160);
      pthread_rwlock_wrlock((a1 + 160));
      v42 = *(a2 + 10);
      *(v37 + 240) = *(a2 + 6);
      *(v37 + 256) = v42;
      v43 = *(a2 + 18);
      v44 = *(a2 + 22);
      v45 = *(a2 + 14);
      *(v37 + 320) = *(a2 + 13);
      *(v37 + 288) = v43;
      *(v37 + 304) = v44;
      *(v37 + 272) = v45;
      goto LABEL_128;
    }

    v38 = (a1 + 160);
    pthread_rwlock_wrlock((a1 + 160));
    if (*(a2 + 52) != 1)
    {
      goto LABEL_128;
    }

    v56 = a2 + 14;
    if (a2[14] != 4)
    {
      goto LABEL_128;
    }

LABEL_111:
    v61 = *v56;
    v62 = *(v56 + 1);
    v63 = *(v56 + 2);
    *(v37 + 456) = *(v56 + 6);
    *(v37 + 424) = v62;
    *(v37 + 440) = v63;
    *(v37 + 408) = v61;
    goto LABEL_128;
  }

  if (v32 > 12)
  {
    if (v32 == 13)
    {
      v38 = (a1 + 160);
      pthread_rwlock_wrlock((a1 + 160));
      *(v37 + 528) = *(a2 + 3);
    }

    else
    {
      if (v32 != 15)
      {
        goto LABEL_129;
      }

      v38 = (a1 + 160);
      pthread_rwlock_wrlock((a1 + 160));
      v46 = *(a2 + 14);
      v47 = *(a2 + 10);
      *(v37 + 536) = *(a2 + 6);
      *(v37 + 552) = v47;
      *(v37 + 568) = v46;
    }

    goto LABEL_128;
  }

  if (v32 == 7)
  {
    v38 = (a1 + 160);
    pthread_rwlock_wrlock((a1 + 160));
    v56 = a2 + 6;
    v57 = a2[6];
    if (v57 <= 3)
    {
      switch(v57)
      {
        case 1:
          v72 = a2[19];
          v73 = a1;
          v74 = 1;
          break;
        case 2:
          v72 = a2[19];
          v73 = a1;
          v74 = 0;
          break;
        case 3:
          goto LABEL_100;
        default:
          goto LABEL_122;
      }

      _AVCStatisticsCollector_UpdateMaxLocalBurstyLoss(v73, v72, v74);
      goto LABEL_128;
    }

    switch(v57)
    {
      case 6:
        *(a1 + 152) = 1;
        goto LABEL_128;
      case 5:
        *(a1 + 136) = *(a2 + 7);
        goto LABEL_128;
      case 4:
        goto LABEL_111;
    }

LABEL_122:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _AVCStatisticsCollector_ProcessVCStatisticsInternal_cold_1();
      }
    }

    goto LABEL_128;
  }

  if (v32 == 10 && a2[6] == 4)
  {
    v38 = (a1 + 160);
    pthread_rwlock_wrlock((a1 + 160));
    *(v37 + 464) = a2[6];
    *(v37 + 504) = a2[16];
    goto LABEL_128;
  }

LABEL_129:
  if ((*(a2 + 19) & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      _AVCStatisticsCollector_UpdateStatisticChangeHandlerDictionaryCache(a1);
    }

    pthread_rwlock_rdlock((a1 + 928));
    v75 = a1 + 32 * *a2;
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = ___AVCStatisticsCollector_ProcessVCStatisticsInternal_block_invoke;
    v76[3] = &__block_descriptor_40_e66_v24__0___VCSingleLinkedListEntry____VCSingleLinkedListEntry__8_B16l;
    v76[4] = a2;
    VCSingleLinkedListEnumerate(v75 + 384, v76);
    pthread_rwlock_unlock((a1 + 928));
  }
}

uint64_t _AVCStatisticsCollector_UpdateStatisticChangeHandlerDictionaryCache(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  pthread_rwlock_wrlock((a1 + 928));
  os_unfair_lock_lock((a1 + 1368));
  v2 = (a1 + 1336);
  v3 = *(a1 + 1336);
  if (v3 != (a1 + 1336))
  {
    v4 = a1 + 384;
    do
    {
      v5 = *v3;
      v6 = v3[1];
      *v2 = *v3;
      *(v5 + 8) = v6;
      *v3 = v3;
      v3[1] = v3;
      v10[0] = v3;
      v7 = *(v3 + 4);
      if (v7 == 2)
      {
        _AVCStatisticsCollector_CleanupChangeHandlers(a1);
      }

      else if (v7 == 1)
      {
        v9 = VCSingleLinkedListRemove(v4 + 32 * *(v3 + 5), v3[3]);
        _AVCStatisticsCollector_DestroyChangeHandlerEntry(a1, &v9);
      }

      else if (!v7 && VCSingleLinkedListPush(v4 + 32 * *(v3 + 5), v3[3]))
      {
        *(v10[0] + 3) = 0;
      }

      _AVCStatisticsCollector_DestroyChangeHandlerRequest(a1, v10);
      v3 = *(a1 + 1336);
    }

    while (v3 != v2);
  }

  v10[0] = 0;
  os_unfair_lock_unlock((a1 + 1368));
  return pthread_rwlock_unlock((a1 + 928));
}

BOOL _AVCStatisticsCollector_PushChangeHandlerRequest(void *a1, int a2, int a3, int a4, const void *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E1288880](a1[46], 24, 0x10A00408A00E5F2, 0);
  if (v10)
  {
    v11 = v10;
    *v10 = 0;
    if (a5)
    {
      v12 = _Block_copy(a5);
    }

    else
    {
      v12 = 0;
    }

    v11[2] = v12;
    *(v11 + 2) = a4;
    v22 = v11;
    v13 = MEMORY[0x1E1288880](a1[166], 32, 0x10200407DCD39BELL, 0);
    if (v13)
    {
      *v13 = v13;
      *(v13 + 8) = v13;
      *(v13 + 16) = a2;
      *(v13 + 20) = a3;
      *(v13 + 24) = v11;
      v14 = a1[168];
      *(v13 + 8) = v14;
      *v13 = *v14;
      *v14 = v13;
      a1[168] = v13;
      return 1;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v24 = v20;
        v25 = 2080;
        v26 = "_AVCStatisticsCollector_PushChangeHandlerRequest";
        v27 = 1024;
        v28 = 318;
        v29 = 2048;
        v30 = a1;
        v31 = 1024;
        v32 = a2;
        v33 = 1024;
        v34 = a3;
        _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d statisticsCollector[%p] Failed to create the request. requestType=%d handlerType=%d", buf, 0x32u);
      }
    }

    _AVCStatisticsCollector_DestroyChangeHandlerEntry(a1, &v22);
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v24 = v16;
      v25 = 2080;
      v26 = "_AVCStatisticsCollector_NewChangeHandlerEntry";
      v27 = 1024;
      v28 = 276;
      v29 = 2048;
      v30 = a1;
      v31 = 1024;
      v32 = a4;
      _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d statisticsCollector[%p] Failed to create the entry. identifier=%d", buf, 0x2Cu);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 0;
  }

  v18 = VRTraceErrorLogLevelToCSTR();
  v19 = *MEMORY[0x1E6986650];
  result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136316418;
    v24 = v18;
    v25 = 2080;
    v26 = "_AVCStatisticsCollector_PushChangeHandlerRequest";
    v27 = 1024;
    v28 = 315;
    v29 = 2048;
    v30 = a1;
    v31 = 1024;
    v32 = a2;
    v33 = 1024;
    v34 = a3;
    _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d statisticsCollector[%p] Failed to create the entry. requestType=%d handlerType=%d", buf, 0x32u);
    return 0;
  }

  return result;
}

void AVCStatisticsCollector_SetVCStatistics(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (*(a2 + 17) == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315906;
          v10 = v4;
          v11 = 2080;
          v12 = "AVCStatisticsCollector_SetVCStatistics";
          v13 = 1024;
          v14 = 431;
          v15 = 2048;
          v16 = a1;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d statisticsCollector=%p should flush all message", &v9, 0x26u);
        }
      }

      VCStatisticsCollectorQueue_FlushAllStatistics(*(a1 + 40));
    }

    pthread_mutex_lock((a1 + 1376));
    if (*(a1 + 81) == 1)
    {
      if (*(a2 + 16))
      {
LABEL_10:
        _AVCStatisticsCollector_ProcessVCStatisticsInternal(a1, a2);
        pthread_mutex_unlock((a1 + 1376));
        pthread_rwlock_rdlock((a1 + 1128));
        v6 = *(a1 + 48);
        if (v6)
        {
          (*(v6 + 16))(v6, a2);
        }

        pthread_rwlock_unlock((a1 + 1128));
        return;
      }

      if (*(a2 + 18) == 1 && *(a1 + 80) == 1 && [a1 shouldProcessAtTime:*(a2 + 8)])
      {
        VCStatisticsCollectorQueue_DrainAndProcessAllStatistics(*(a1 + 40));
        goto LABEL_10;
      }
    }

    pthread_mutex_unlock((a1 + 1376));
    VCStatisticsCollectorQueue_AddStatisticsMessage(*(a1 + 40), a2);
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = v7;
      v11 = 2080;
      v12 = "AVCStatisticsCollector_SetVCStatistics";
      v13 = 1024;
      v14 = 427;
      v15 = 2048;
      v16 = a1;
      v17 = 2048;
      v18 = a2;
      _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d Invalid parameter. statisticsCollector=%p message=%p", &v9, 0x30u);
    }
  }
}

void _AVCStatisticsCollector_GetVCStatisticsWithType(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v8 = *(a1 + 76);
  if (v8 > 6)
  {
    if ((v8 - 8) >= 3)
    {
      if (v8 != 7)
      {
        goto LABEL_24;
      }

      ++*(a1 + 1448);
      if (a2 != 2)
      {
        return;
      }

      pthread_rwlock_rdlock((a1 + 160));
      *a3 = 2;
      *(a3 + 68) = *(v7 + 244);
      *(a3 + 80) = *(v7 + 288);
      *(a3 + 32) = *(a1 + 84) / 0x3E8u;
      v16 = MicroToNTP(a4);
      *(a3 + 24) = (NTPToMiddle32(v16) >> 6);
      *(a3 + 52) = *(v7 + 256);
      *(a3 + 40) = *(a1 + 96);
    }

    else
    {
      ++*(a1 + 1448);
      if (a2 != 7)
      {
        return;
      }

      pthread_rwlock_wrlock((a1 + 160));
      *a3 = 7;
      *(a3 + 28) = *(v7 + 412);
      *(a3 + 48) = *(v7 + 432);
      *(a3 + 36) = *(v7 + 420);
      *(a3 + 56) = *(v7 + 440);
      if (*(a1 + 76) == 10)
      {
        v11 = 1000000;
      }

      else
      {
        v11 = 1000;
      }

      *(a3 + 72) = *(a1 + 84) / v11;
      *(a3 + 76) = *(a1 + 96);
    }

    *(a1 + 96) = 0;
LABEL_32:

    pthread_rwlock_unlock((a1 + 160));
    return;
  }

  if ((v8 - 1) < 3)
  {
    ++*(a1 + 1448);
    switch(a2)
    {
      case 10:
        pthread_rwlock_rdlock((a1 + 160));
        *a3 = 10;
        *(a3 + 24) = *(v7 + 464);
        *(a3 + 64) = *(v7 + 504);
        break;
      case 3:
        pthread_rwlock_rdlock((a1 + 160));
        *a3 = 3;
        *(a3 + 8) = a4;
        *(a3 + 56) = *(v7 + 208);
        *(a3 + 48) = *(v7 + 200);
        *(a3 + 24) = *(v7 + 176);
        *(a3 + 52) = *(v7 + 204);
        *(a3 + 64) = *(v7 + 216);
        *(a3 + 60) = *(v7 + 212);
        break;
      case 2:
        pthread_rwlock_rdlock((a1 + 160));
        *a3 = 2;
        *(a3 + 8) = *(v7 + 376);
        *(a3 + 68) = *v7;
        v9 = *(a1 + 84) / 0x3E8u;
        if ((*(a1 + 76) & 0xFFFFFFFD) == 1 && a4 - *(a1 + 1440) >= 30.0)
        {
          v9 = 0;
        }

        *(a3 + 32) = v9;
        *(a3 + 52) = *(v7 + 364);
        *(a3 + 56) = *(v7 + 420);
        *(a3 + 60) = *(v7 + 424) + *(v7 + 368);
        *(a3 + 44) = *(a1 + 100);
        *(a3 + 40) = *(a1 + 96);
        *(a3 + 80) = *(a1 + 136);
        if (*(v7 + 4))
        {
          v10 = *(v7 + 44);
        }

        else
        {
          v10 = -1;
        }

        *(a3 + 24) = v10;
        *(a3 + 188) = *(v7 + 164);
        *(a3 + 190) = *(v7 + 166);
        break;
      default:
        return;
    }

    goto LABEL_32;
  }

  if ((v8 - 4) < 2)
  {
    ++*(a1 + 1448);
    if (a2 != 5)
    {
      return;
    }

    pthread_rwlock_rdlock((a1 + 160));
    *a3 = 5;
    v12 = *(v7 + 256);
    *(a3 + 24) = *(v7 + 240);
    *(a3 + 40) = v12;
    v14 = *(v7 + 288);
    v13 = *(v7 + 304);
    v15 = *(v7 + 320);
    *(a3 + 56) = *(v7 + 272);
    *(a3 + 104) = v15;
    *(a3 + 88) = v13;
    *(a3 + 72) = v14;
    goto LABEL_32;
  }

LABEL_24:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 76);
      v20 = 136316162;
      v21 = v17;
      v22 = 2080;
      v23 = "_AVCStatisticsCollector_GetVCStatisticsWithType";
      v24 = 1024;
      v25 = 629;
      v26 = 1024;
      v27 = v19;
      v28 = 2048;
      v29 = a1;
      _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d Mode %d does not support reading the message for statistics collector=%p", &v20, 0x2Cu);
    }
  }
}

void VCStatisticsCollector_EnableBWELogDump(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 8);

    VCRateControlBandwidthEstimatorMap_EnableBWELogDump(v3, a2);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCStatisticsCollector_EnableBWELogDump_cold_1();
    }
  }
}

uint64_t VCStatisticsCollector_Mode(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 76);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCStatisticsCollector_Mode_cold_1();
  }

  return 0;
}

void VCStatisticsCollector_SetMode(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a1 + 76) = a2;
    [*(a1 + 8) setMode:a2];
    v4 = *(a1 + 24);

    [v4 setMode:a2];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCStatisticsCollector_SetMode_cold_1();
    }
  }
}

void VCStatisticsCollector_SetFastSuddenBandwidthDetectionEnabled(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 121) = a2;
    v3 = *(a1 + 8);

    VCRateControlBandwidthEstimatorMap_SetFastSuddenBandwidthDetectionEnabled(v3, a2);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCStatisticsCollector_SetFastSuddenBandwidthDetectionEnabled_cold_1();
    }
  }
}

void VCStatisticsCollector_SetL4SHighDataRateEnabled(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 360) = a2;
    v3 = *(a1 + 8);

    VCRateControlBandwidthEstimatorMap_SetL4SHighDataRateEnabled(v3, a2);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCStatisticsCollector_SetL4SHighDataRateEnabled_cold_1();
    }
  }
}

void VCStatisticsCollector_SetRadioAccessTechnology(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a1 + 72) = a2;
    VCRateControlBandwidthEstimatorMap_SetRadioAccessTechnology(*(a1 + 8), a2);
    v3 = *(a1 + 8);

    VCRateControlBandwidthEstimatorMap_SetEstimatedBandwidth(v3, 0.0);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCStatisticsCollector_SetRadioAccessTechnology_cold_1();
    }
  }
}

uint64_t VCStatisticsCollector_SharedEstimatedBandwidth(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 84);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCStatisticsCollector_SharedEstimatedBandwidth_cold_1();
  }

  return 0;
}

void *VCRateControlGetBWEstimation(void *result, _DWORD *a2)
{
  if (a2)
  {
    result = [result sharedEstimatedBandwidth];
    *a2 = result;
  }

  return result;
}

void VCRateControlGetStatistics(uint64_t a1, int a2, uint64_t a3)
{
  if (a1 && a3)
  {
    v6 = micro();

    _AVCStatisticsCollector_GetVCStatisticsWithType(a1, a2, a3, v6);
  }
}

uint64_t VCRateControlRegisterStatisticsChangeHandler(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a1 && a3)
  {
    return [a1 registerStatisticsChangeHandlerWithType:a2 handler:a3];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t VCRateControlUnregisterStatisticsChangeHandler(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (a3 & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return [a1 unregisterStatisticsChangeHandlerWithType:a2 handlerIndex:a3];
  }
}

BOOL VCStatisticsCollector_SetProcessCompleteHandler(uint64_t a1, const void *a2)
{
  if (a1)
  {
    _AVCStatisticsCollector_SetProcessCompleteHandler(a1, a2);
  }

  return a1 != 0;
}

void _AVCStatisticsCollector_DestroyChangeHandlerEntry(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      v4 = v2[2];
      if (v4)
      {
        _Block_release(v4);
      }

      v5 = *(a1 + 368);

      CFAllocatorDeallocate(v5, v2);
    }
  }
}

void _AVCStatisticsCollector_DestroyChangeHandlerRequest(uint64_t a1, void **a2)
{
  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v5 = *v3;
      v6 = v3[1];
      *v6 = *v3;
      v5[1] = v6;
      *v3 = v3;
      v3[1] = v3;
      _AVCStatisticsCollector_DestroyChangeHandlerEntry(a1, v3 + 3);
      CFAllocatorDeallocate(*(a1 + 1328), v3);
      *a2 = 0;
    }
  }
}

void _AVCStatisticsCollector_UpdateMaxLocalBurstyLoss(uint64_t a1, unsigned int a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (!a2 && !*(a1 + 100))
    {
      v12 = 0;
      v11 = 100;
      goto LABEL_23;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      v7 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315906;
          v14 = v5;
          v15 = 2080;
          v16 = "_AVCStatisticsCollector_UpdateMaxLocalBurstyLoss";
          v17 = 1024;
          v18 = 976;
          v19 = 1024;
          v20 = a2;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d update audio loss: %d", &v13, 0x22u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        _AVCStatisticsCollector_UpdateMaxLocalBurstyLoss_cold_2();
      }
    }

    v11 = 100;
    if (!a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!a2 && !*(a1 + 96))
    {
      v12 = 0;
      v11 = 96;
      goto LABEL_23;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      v10 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315906;
          v14 = v8;
          v15 = 2080;
          v16 = "_AVCStatisticsCollector_UpdateMaxLocalBurstyLoss";
          v17 = 1024;
          v18 = 981;
          v19 = 1024;
          v20 = a2;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d update video loss: %d", &v13, 0x22u);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        _AVCStatisticsCollector_UpdateMaxLocalBurstyLoss_cold_1();
      }
    }

    v11 = 96;
    if (!a2)
    {
LABEL_17:
      v12 = 0;
      goto LABEL_23;
    }
  }

  v12 = *(a1 + v11);
  if (v12 <= a2)
  {
    v12 = a2;
  }

LABEL_23:
  *(a1 + v11) = v12;
}

void _AVCStatisticsCollector_UpdatePacketReceivedCount(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(a1 + 152))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 104);
        v7 = *(a2 + 52);
        v24 = 136316162;
        v25 = v4;
        v26 = 2080;
        v27 = "_AVCStatisticsCollector_UpdatePacketReceivedCount";
        v28 = 1024;
        v29 = 952;
        v30 = 1024;
        v31 = v6;
        v32 = 1024;
        v33 = v7;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Reset remotePAcketReceivedAudio from current=%d to feedback=%d", &v24, 0x28u);
      }
    }

    v8 = *(a2 + 52);
    *(a1 + 104) = v8;
    *(a1 + 152) = 0;
  }

  else
  {
    v8 = *(a1 + 104);
  }

  v9 = *(a2 + 52);
  v10 = v9 - v8;
  if (((v9 - v8) & 0x800) == 0)
  {
    if ((v8 & 0xFFFu) > v9)
    {
      v8 += 4096;
    }

    *(a1 + 104) = v8 & 0xFFFFF000 | *(a2 + 52);
  }

  if (VCMediaControlInfo_IsLossStatsEnabled(*(a1 + 120)))
  {
    v11 = *(a2 + 56);
LABEL_18:
    *(a1 + 108) = v11;
    goto LABEL_19;
  }

  v12 = *(a2 + 56);
  v13 = *(a1 + 108);
  if (((v12 - v13) & 0x800) == 0)
  {
    if ((*(a1 + 108) & 0xFFFu) <= v12)
    {
      v14 = *(a1 + 108);
    }

    else
    {
      v14 = v13 + 4096;
    }

    v11 = v14 & 0xFFFFF000 | *(a2 + 56);
    goto LABEL_18;
  }

LABEL_19:
  if ((v10 & 0x800) != 0)
  {
    v15 = *(a1 + 148);
    *(a1 + 148) = v15 + 1;
    HIDWORD(v16) = -1030792151 * v15;
    LODWORD(v16) = -1030792151 * v15;
    if ((v16 >> 1) <= 0x51EB851 && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 148);
        v21 = *(a1 + 104);
        v20 = *(a1 + 108);
        v23 = *(a2 + 52);
        v22 = *(a2 + 56);
        v24 = 136316930;
        v25 = v17;
        v26 = 2080;
        v27 = "_AVCStatisticsCollector_UpdatePacketReceivedCount";
        v28 = 1024;
        v29 = 966;
        v30 = 1024;
        v31 = v19;
        v32 = 1024;
        v33 = v20;
        v34 = 1024;
        v35 = v22;
        v36 = 1024;
        v37 = v21;
        v38 = 1024;
        v39 = v23;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Feedback out of order count=%d with packet receive count video:[current=%d, feedback=%d], audio:[current=%d, feedback=%d]", &v24, 0x3Au);
      }
    }
  }

  *(a2 + 52) = *(a1 + 104);
  *(a2 + 56) = *(a1 + 108);
}

void _AVCStatisticsCollector_ComputeBWEstimation(uint64_t a1, double *a2)
{
  v4 = a2[1];
  v5 = *a2;
  if (*(a1 + 76) == 4 && v5 == 5)
  {
    v9 = VCRateControlBandwidthEstimatorMap_BandwidthEstimator(*(a1 + 8), 1, 1, 0);
    VCRateControlBandwidthEstimator_CalculateBandwidthEstimationForBandwidthSample(v9, (1000 * *(a2 + 14)), v4);
  }

  else if (v5 == 15)
  {
    v19 = *(a2 + 44);
    if ((v19 & 1) != 0 || *(a1 + 361) == 1)
    {
      v20 = *(a2 + 10);
      v21 = *(a2 + 18);
      v22 = vcvtd_n_f64_u32(*(a2 + 8), 0x10uLL);
      v23 = vcvtd_n_f64_u32(*(a2 + 7), 0x10uLL);
      v24 = *(a2 + 19);
      v25 = VCRateControlBandwidthEstimatorMap_BandwidthEstimator(*(a1 + 8), 1, 1, 0);
      VCRateControlBandwidthEstimator_CalculateBandwidthEstimationWithSendTime(v25, v21, v19, v20, v24, v26, v27, v28, v22, v23);
      *(a1 + 361) = v19;
    }
  }

  else if (v5 == 4)
  {
    v7 = *(a2 + 6);
    if (*(a2 + 28) == 1)
    {
      v8 = *(a1 + 8);

      VCRateControlBandwidthEstimatorMap_DeregisterBandwidthEstimator(v8, v7);
      return;
    }

    v29 = *(a2 + 29);
    v30 = *(a2 + 8);
    v31 = *(a2 + 9);
    v32 = *(a2 + 12);
    v33 = VCRateControlBandwidthEstimatorMap_BandwidthEstimator(*(a1 + 8), v7, v29, *(a2 + 30));
    VCRateControlBandwidthEstimator_CalculateBandwidthEstimation(v33, v32, v31, v29, v30, v4);
    *(a1 + 1440) = a2[1];
  }

  if (*(a1 + 76) != 5)
  {
    [*(a1 + 8) estimatedBandwidth];
    v11 = *(a1 + 112);
    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = *(a1 + 112);
    }

    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    v14 = [*(a1 + 8) bandwidthEstimationState];
    if (v13)
    {
      v15 = (v13 / 0x3E8) & 0x7FFFF8;
      if (v14 == 1)
      {
        ++v15;
      }

      v13 = 1000 * v15;
    }

    [*(a1 + 8) estimatedBandwidthUncapped];
    v17 = *(a1 + 84);
    atomic_compare_exchange_strong_explicit((a1 + 84), &v17, v13, memory_order_relaxed, memory_order_relaxed);
    v18 = *(a1 + 88);
    atomic_compare_exchange_strong_explicit((a1 + 88), &v18, v16, memory_order_relaxed, memory_order_relaxed);
  }
}

uint64_t _AVCStatisticsCollector_ComputeOWRDEstimation(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2 == 15)
  {
    if (!a2[6] || (a2[11] & 1) != 0 || (a2[7] - *(result + 144)) < 0x290)
    {
      *(a2 + 19) = 1;
    }

    else
    {
      [*(result + 24) relativeSendTimeWithTimestamp:? timestampRate:?];
      v18 = v17;
      [*(v3 + 24) relativeReceiveTimeWithTimestamp:a2[8] timestampRate:0x10000];
      [*(v3 + 24) calculateOWRDWithSendTime:v18 receiveTime:v19 roundTripTime:0.0];
      *(v3 + 144) = a2[7];
    }

    v12 = (v3 + 24);
    v13 = 12;
  }

  else if (v4 == 7)
  {
    if (a2[6] != 4)
    {
      return result;
    }

    v12 = (result + 24);
    [*(result + 24) relativeSendTimeWithTimestamp:a2[7] timestampRate:a2[8]];
    v15 = v14;
    [*v12 relativeReceiveTimeWithTimestamp:(*(a2 + 6) * 1000.0) timestampRate:1000];
    [*v12 calculateOWRDWithSendTime:v15 receiveTime:v16 roundTripTime:0.0];
    v13 = 14;
  }

  else
  {
    if (v4 != 5)
    {
      return result;
    }

    if (a2[8])
    {
      v5 = *(result + 76);
      if (v5 == 5)
      {
        v6 = 1024;
      }

      else
      {
        v6 = 1000;
      }

      if (v5 == 5 || v5 == 7)
      {
        v8 = 1000;
      }

      else
      {
        v8 = 1024;
      }

      [*(result + 24) relativeSendTimeWithTimestamp:a2[7] timestampRate:v8];
      v10 = v9;
      [*(v3 + 24) relativeReceiveTimeWithTimestamp:a2[8] timestampRate:v6];
      [*(v3 + 24) calculateOWRDWithSendTime:v10 receiveTime:v11 roundTripTime:*(a2 + 8)];
    }

    v12 = (v3 + 24);
    v13 = 18;
  }

  result = [*v12 owrd];
  *&a2[v13] = v20;
  return result;
}

void _AVCStatisticsCollector_AddActualBitrateInfo(uint64_t a1, double *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (*a2 == 2)
  {
    *(a2 + 24) = VCStatisticsHistory_SendingBitrate(*(a1 + 32), 0, a2[1], 5.0);
    *(a2 + 25) = VCStatisticsHistory_SendingBitrate(*(a1 + 32), 0, a2[1], 0.5);
    return;
  }

  if (v4 == 15)
  {
    v7 = -1;
    *(a2 + 15) = VCStatisticsHistory_SendingBitrate(*(a1 + 32), &v7, a2[1], 0.5);
    *(a2 + 16) = VCStatisticsHistory_ReceivingBitrate(*(a1 + 32), &v7, a2[1], 0.5);
    return;
  }

  if (v4 == 5 && !*(a2 + 24))
  {
    v5 = *(a1 + 76);
    if (v5 == 4)
    {
      *(a2 + 24) = VCStatisticsHistory_SendingBitrate(*(a1 + 32), 0, a2[1], 5.0);
      v6 = VCStatisticsHistory_SendingBitrate(*(a1 + 32), 0, a2[1], 0.5);
    }

    else
    {
      if (v5 != 5)
      {
LABEL_12:
        *(a2 + 26) = VCStatisticsHistory_ServerStatsBitrate(*(a1 + 32), a2[1], 5.0);
        return;
      }

      *(a2 + 24) = VCStatisticsHistory_ReceivingBitrate(*(a1 + 32), 0, a2[1], 5.0);
      v6 = VCStatisticsHistory_ReceivingBitrate(*(a1 + 32), 0, a2[1], 0.5);
    }

    *(a2 + 25) = v6;
    goto LABEL_12;
  }
}

void OUTLINED_FUNCTION_6_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x22u);
}

void OUTLINED_FUNCTION_7_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x26u);
}

ssize_t comm_send(int a1, const sockaddr *a2, __int128 *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = *a3;
  v5 = bswap32(v12);
  v6 = HIWORD(v5);
  LOWORD(v12) = HIWORD(v5);
  WORD1(v12) = bswap32(WORD1(v12)) >> 16;
  DWORD2(v12) = bswap32(~DWORD2(v12));
  WORD6(v12) = bswap32(~WORD6(v12)) >> 16;
  HIWORD(v12) = bswap32(~HIWORD(v12)) >> 16;
  v7 = arc4random();
  if (v7 % 100 < 0)
  {
    v8 = v7 >> 4;
    if ((v7 & 0x10) != 0)
    {
      LOBYTE(v12) = ~v6;
    }

    v9 = &v12 + 1;
    v10 = 15;
    do
    {
      if ((v8 & 2) != 0)
      {
        *v9 ^= *(v9 - 1);
      }

      v8 >>= 1;
      ++v9;
      --v10;
    }

    while (v10);
  }

  return sendto(a1, &v12, 0x10uLL, 0, a2, a2->sa_len);
}

uint64_t CommTest(uint64_t a1, double a2)
{
  v60 = *MEMORY[0x1E69E9840];
  *&v4.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v4.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  *&v59.fds_bits[24] = v4;
  *&v59.fds_bits[28] = v4;
  *&v59.fds_bits[16] = v4;
  *&v59.fds_bits[20] = v4;
  *&v59.fds_bits[8] = v4;
  *&v59.fds_bits[12] = v4;
  *v59.fds_bits = v4;
  *&v59.fds_bits[4] = v4;
  memset(v44, 170, sizeof(v44));
  v57 = v4;
  v58 = v4;
  v55 = v4;
  v56 = v4;
  v53 = v4;
  v54 = v4;
  v51 = v4;
  v52 = v4;
  v41 = 0xAAAAAAAAAAAAAAAALL;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  v5 = micro();
  if (a2 <= 0.0)
  {
    a2 = 6.0;
  }

  v6 = arc4random();
  v43 = 0x10001uLL;
  if (micro() - v5 >= a2)
  {
    return 0;
  }

  v7 = 0;
  v8 = v6 & 0xFFFFF000;
  v9 = v6 & 0xFFFFF000 ^ 0x55555000;
  v40 = v8 ^ 0xAAAAA000;
  v10 = 1;
  v11 = 1;
  v12 = 1;
  while (1)
  {
    if (!*(a1 + 136) || !*(a1 + 436))
    {
      DWORD1(v43) = v8;
      comm_send(*a1, (a1 + 8), &v43);
    }

    if (!*(a1 + 280) || !*(a1 + 448))
    {
      DWORD1(v43) = v9;
      comm_send(*a1, (a1 + 152), &v43);
    }

    if (!*(a1 + 424) || !*(a1 + 460))
    {
      DWORD1(v43) = v8 ^ 0xAAAAA000;
      comm_send(*a1, (a1 + 296), &v43);
    }

    v7 += (v12 & v11 & v10 & 1) == 0;
    v13 = micro() - v5;
    if (v13 < a2)
    {
      break;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_70:
    if (micro() - v5 >= a2)
    {
      return 0;
    }
  }

  v12 = 0;
  v11 = 0;
  v10 = 0;
  while (1)
  {
    v14 = a2 - v13;
    if (v14 >= (2 << v7))
    {
      v14 = (2 << v7);
    }

    *&v44[1] = v14;
    v44[3] = ((v14 - v14) * 1000000.0);
    memset(&v59, 0, sizeof(v59));
    v15 = *a1;
    if (__darwin_check_fd_set_overflow(*a1, &v59, 0))
    {
      *(v59.fds_bits + ((v15 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v15;
    }

    v16 = select(*a1 + 1, &v59, 0, 0, &v44[1]);
    if (v16 < 0)
    {
      if (*__error() == 4)
      {
        if (a2 > micro() - v5)
        {
          goto LABEL_70;
        }

        goto LABEL_67;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      v37 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v38 = *__error();
      *buf = 136315906;
      *&buf[4] = v37;
      *&buf[12] = 2080;
      *&buf[14] = "CommTest";
      *&buf[22] = 1024;
      *&buf[24] = 269;
      *&buf[28] = 1024;
      *&buf[30] = v38;
      v32 = " [%s] %s:%d CommTest: select() failed (%d)";
LABEL_81:
      v35 = v30;
      v36 = 34;
      goto LABEL_82;
    }

    if (!v16)
    {
      goto LABEL_70;
    }

    v44[0] = 128;
    v17 = recvfrom(*a1, &v41, 0x10uLL, 0, &v51, v44);
    if (!v17)
    {
      break;
    }

    if (v17 == -1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v31 = *__error();
      *buf = 136315906;
      *&buf[4] = v29;
      *&buf[12] = 2080;
      *&buf[14] = "CommTest";
      *&buf[22] = 1024;
      *&buf[24] = 280;
      *&buf[28] = 1024;
      *&buf[30] = v31;
      v32 = " [%s] %s:%d CommTest: recvfrom() failed (%d)";
      goto LABEL_81;
    }

    WORD1(v41) = bswap32(WORD1(v41)) >> 16;
    LOWORD(v41) = bswap32(v41) >> 16;
    v18 = HIDWORD(v41);
    LODWORD(v42) = bswap32(~v42);
    WORD2(v42) = bswap32(~WORD2(v42)) >> 16;
    if (!*(a1 + 472) && (HIDWORD(v41) == v40 || HIDWORD(v41) == v8 || HIDWORD(v41) == v9))
    {
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v49 = v19;
      v50 = v19;
      v48 = v19;
      v46 = v19;
      v47 = v19;
      *&buf[16] = v19;
      *&buf[32] = v19;
      *buf = v19;
      DWORD1(v43) = v8 ^ 0xFFFFF000;
      FillSockAddrStorage();
      comm_send(*a1, buf, &v43);
      v18 = HIDWORD(v41);
    }

    v20 = v18 & 0xFFFFF000;
    if (v20 == v8)
    {
      v21 = IsSameAddressAndPort();
      v22 = v42;
      if (v21)
      {
        *(a1 + 144) = WORD2(v42);
        v23 = *(a1 + 136) + 1;
        *(a1 + 136) = v23;
        *(a1 + 140) = v22;
        v12 = 1;
        if (!v23)
        {
          goto LABEL_67;
        }

        goto LABEL_51;
      }

      *(a1 + 440) = v42;
      *(a1 + 444) = WORD2(v42);
      ++*(a1 + 436);
    }

    else if (v20 == v9)
    {
      if (IsSameAddressAndPort())
      {
        *(a1 + 284) = v42;
        *(a1 + 288) = WORD2(v42);
        ++*(a1 + 280);
        v11 = 1;
      }

      else
      {
        *(a1 + 452) = v42;
        *(a1 + 456) = WORD2(v42);
        ++*(a1 + 448);
      }
    }

    else if (v20 == v40)
    {
      if (IsSameAddressAndPort())
      {
        *(a1 + 428) = v42;
        *(a1 + 432) = WORD2(v42);
        ++*(a1 + 424);
        v10 = 1;
      }

      else
      {
        *(a1 + 464) = v42;
        *(a1 + 468) = WORD2(v42);
        ++*(a1 + 460);
      }
    }

    else if (v20 == (v8 ^ 0xFFFFF000))
    {
      ++*(a1 + 472);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v39 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v39;
        *&buf[12] = 2080;
        *&buf[14] = "CommTest";
        *&buf[22] = 1024;
        *&buf[24] = 366;
        *&buf[28] = 1024;
        *&buf[30] = HIDWORD(v41);
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CommTest: bad seq# %08X.", buf, 0x22u);
      }
    }

    v23 = *(a1 + 136);
    if (!v23)
    {
      goto LABEL_67;
    }

LABEL_51:
    v25 = *(a1 + 436);
    if (v25 && *(a1 + 280) && *(a1 + 448) && *(a1 + 424) && *(a1 + 460) && *(a1 + 472))
    {
      return 0;
    }

    if (v23 < 4)
    {
      if (v23 != 3)
      {
        goto LABEL_67;
      }

      v26 = *(a1 + 280);
LABEL_63:
      if (v26 < 3)
      {
        goto LABEL_67;
      }

      v27 = *(a1 + 424);
      goto LABEL_65;
    }

    v26 = *(a1 + 280);
    if (v26 <= 3)
    {
      goto LABEL_63;
    }

    v27 = *(a1 + 424);
    if (v27 > 3)
    {
      return 0;
    }

LABEL_65:
    if (v27 >= 3 && v27 + v23 + v26 + v25 + *(a1 + 448) + *(a1 + 460) > 15)
    {
      return 0;
    }

LABEL_67:
    v13 = micro() - v5;
    if (v13 >= a2)
    {
      goto LABEL_70;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v33 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = "CommTest";
      *&buf[22] = 1024;
      *&buf[24] = 283;
      v32 = " [%s] %s:%d CommTest: recvfrom() returns 0";
      v35 = v34;
      v36 = 28;
LABEL_82:
      _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, v32, buf, v36);
    }
  }

  return 1;
}

uint64_t CommReport(int *a1, unsigned int a2, double a3)
{
  v48 = *MEMORY[0x1E69E9840];
  *&v6.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v6.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  *&v47.fds_bits[24] = v6;
  *&v47.fds_bits[28] = v6;
  *&v47.fds_bits[16] = v6;
  *&v47.fds_bits[20] = v6;
  *&v47.fds_bits[8] = v6;
  *&v47.fds_bits[12] = v6;
  *v47.fds_bits = v6;
  *&v47.fds_bits[4] = v6;
  memset(v30, 170, sizeof(v30));
  v45 = v6;
  v46 = v6;
  v43 = v6;
  v44 = v6;
  v41 = v6;
  v42 = v6;
  v39 = v6;
  v40 = v6;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v7 = micro();
  if (a3 <= 0.0)
  {
    a3 = 1.0;
  }

  LODWORD(v29) = 65538;
  v8 = arc4random();
  DWORD1(v29) = v8;
  *(&v29 + 1) = a2;
  if (micro() - v7 < a3)
  {
    v9 = 0;
    while (2)
    {
      v10 = (a1 + 2);
      if ((v9 + v8) % 3)
      {
        if ((v9 + v8) % 3 == 2)
        {
          v10 = (a1 + 74);
        }

        else
        {
          v10 = (a1 + 38);
        }
      }

      comm_send(*a1, v10, &v29);
      while (1)
      {
        v11 = micro() - v7;
        if (v11 >= a3)
        {
          break;
        }

        v12 = a3 - v11;
        if (v12 > 1.0)
        {
          v12 = 1.0;
        }

        *&v30[1] = v12;
        v30[3] = ((v12 - v12) * 1000000.0);
        memset(&v47, 0, sizeof(v47));
        v13 = *a1;
        if (__darwin_check_fd_set_overflow(*a1, &v47, 0))
        {
          *(v47.fds_bits + ((v13 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v13;
        }

        v14 = select(*a1 + 1, &v47, 0, 0, &v30[1]);
        if (v14 < 0)
        {
          if (*__error() != 4)
          {
            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              return 1;
            }

            v25 = VRTraceErrorLogLevelToCSTR();
            v18 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              return 1;
            }

            v26 = *__error();
            *buf = 136315906;
            v32 = v25;
            v33 = 2080;
            v34 = "CommReport";
            v35 = 1024;
            v36 = 472;
            v37 = 1024;
            v38 = v26;
            v20 = " [%s] %s:%d CommTest: select() failed (%d)";
LABEL_34:
            v23 = v18;
            v24 = 34;
LABEL_35:
            _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v20, buf, v24);
            return 1;
          }

          if (a3 > micro() - v7)
          {
            break;
          }
        }

        else
        {
          if (!v14)
          {
            break;
          }

          v30[0] = 128;
          v15 = recvfrom(*a1, &v27, 0x10uLL, 0, &v39, v30);
          if (!v15)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v21 = VRTraceErrorLogLevelToCSTR();
              v22 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v32 = v21;
                v33 = 2080;
                v34 = "CommReport";
                v35 = 1024;
                v36 = 486;
                v20 = " [%s] %s:%d CommTest: recvfrom() returns 0";
                v23 = v22;
                v24 = 28;
                goto LABEL_35;
              }
            }

            return 1;
          }

          if (v15 == -1)
          {
            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              return 1;
            }

            v17 = VRTraceErrorLogLevelToCSTR();
            v18 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              return 1;
            }

            v19 = *__error();
            *buf = 136315906;
            v32 = v17;
            v33 = 2080;
            v34 = "CommReport";
            v35 = 1024;
            v36 = 483;
            v37 = 1024;
            v38 = v19;
            v20 = " [%s] %s:%d CommTest: recvfrom() failed (%d)";
            goto LABEL_34;
          }

          WORD1(v27) = bswap32(WORD1(v27)) >> 16;
          LOWORD(v27) = bswap32(v27) >> 16;
          LODWORD(v28) = bswap32(~v28);
          WORD2(v28) = bswap32(~WORD2(v28)) >> 16;
          if (HIDWORD(v27) == v8)
          {
            return 0;
          }
        }
      }

      ++v9;
      if (micro() - v7 < a3)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

int *CommNAT_Test(int *a1, unsigned int a2, socklen_t a3, double a4, uint64_t a5, uint64_t a6, socklen_t a7)
{
  v98 = *MEMORY[0x1E69E9840];
  v58[1] = a7;
  v58[2] = a3;
  v10 = micro();
  v11 = *a1;
  v12 = malloc_type_malloc(0x14uLL, 0x1000040C36A4E17uLL);
  v13 = v12;
  if (!v12)
  {
    return v13;
  }

  *&v14.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v14.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  v73 = v14;
  v74 = v14;
  v71 = v14;
  v72 = v14;
  v69 = v14;
  v70 = v14;
  v67 = v14;
  v68 = v14;
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[4] = 0;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  memset(v75, 0, sizeof(v75));
  if (v11)
  {
    v15 = 30;
  }

  else
  {
    v15 = 2;
  }

  FillSockAddrStorage();
  FillSockAddrStorage();
  FillSockAddrStorage();
  v16 = socket(v15, 2, 17);
  LODWORD(v75[0]) = v16;
  if (v16 == -1)
  {
    free(v13);
    v18 = __error();
    printf("socket() failed (%d)\n", *v18);
    return 0;
  }

  *&v59.sa_len = 1;
  setsockopt(v16, 0xFFFF, 4130, &v59, 4u);
  FillSockAddrStorage();
  v17 = bind(v75[0], &v67, v67.sa_len);
  if (a2 && v17)
  {
    FillSockAddrStorage();
    if (!bind(v75[0], &v67, v67.sa_len))
    {
      goto LABEL_14;
    }

LABEL_12:
    free(v13);
    __error();
    printf("socket() failed (%d)\n");
LABEL_16:
    close(v75[0]);
    return 0;
  }

  if (v17)
  {
    goto LABEL_12;
  }

  if (!a2)
  {
LABEL_14:
    *&v19.sa_len = 0xAAAAAAAAAAAAAAAALL;
    *&v19.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
    v65 = v19;
    v66 = v19;
    v63 = v19;
    v64 = v19;
    v61 = v19;
    v62 = v19;
    v59 = v19;
    v60 = v19;
    v58[0] = 128;
    if (getsockname(v75[0], &v59, v58))
    {
      free(v13);
      __error();
      printf("getsockname() failed (%d)\n");
      goto LABEL_16;
    }

    a2 = bswap32(*v59.sa_data) >> 16;
  }

  CommTest(v75, a4);
  v21 = DWORD1(v95);
  v22 = DWORD2(v76);
  v23 = DWORD2(v85);
  v24 = v96;
  v25 = DWORD2(v94);
  v26 = HIDWORD(v96);
  if (!DWORD2(v76) && !DWORD1(v95) && !DWORD2(v85) && !v96 && !DWORD2(v94) && !HIDWORD(v96))
  {
    free(v13);
    goto LABEL_16;
  }

  v13[1] = HIDWORD(v76);
  v27 = v77;
  *(v13 + 4) = v77;
  v28 = v86;
  *(v13 + 5) = v86;
  v29 = v95;
  *(v13 + 6) = v95;
  v30 = *v13;
  if (!v22 || !v23 || !v25)
  {
    v30 |= 1u;
    *v13 = v30;
  }

  if (v27 == v28 && v27 == v29)
  {
    v31 = v30;
  }

  else
  {
    v31 = v30 | 4;
    *v13 = v30 | 4;
    if (v27 != v28)
    {
      v31 = v30 | 0xC;
      *v13 = v30 | 0xC;
    }
  }

  v32 = v31 | 0x100;
  if (!DWORD2(v97))
  {
    v32 = v31;
  }

  if (v22)
  {
    v33 = v21 == 0;
  }

  else
  {
    v33 = 1;
  }

  v38 = !v33 && v23 != 0 && v24 != 0 && v25 != 0 && v26 != 0;
  v39 = v38 & ((v32 & 4) == 0);
  if (v39)
  {
    v40 = v32 | 2;
  }

  else
  {
    v40 = v32;
  }

  v42 = a2 == v27 || a2 == v28 || a2 == v29;
  v43 = v42;
  if (v42)
  {
    v40 |= 0x10u;
  }

  v44 = v39 | v43;
  if (DWORD2(v97) || (v44 & 1) != 0)
  {
    if (v44)
    {
      v45 = v40;
    }

    else
    {
      v45 = v32;
    }

    *v13 = v45;
  }

  if ((v40 & 4) != 0)
  {
    v46 = v28 - v27;
    if (v27 > v28)
    {
      v46 = v27 - v28;
    }

    v47 = v29 - v28;
    v48 = v28 >= v29;
    v49 = v28 - v29;
    if (v49 == 0 || !v48)
    {
      v49 = v47;
    }

    v50 = v27 - v29;
    v48 = v29 >= v27;
    v51 = v29 - v27;
    if (v51 == 0 || !v48)
    {
      v51 = v50;
    }

    if (v46 == 1 || v49 == 1 || v51 == 1)
    {
      v40 |= 0x20u;
      *v13 = v40;
    }
  }

  v52 = (v21 | v24) != 0;
  if (!v26 || !v52)
  {
    if (v52)
    {
      v53 = v40;
    }

    else
    {
      v53 = v40 | 0x40;
    }

    if (v26)
    {
      v54 = v53;
    }

    else
    {
      v54 = v53 | 0x80;
    }

    *v13 = v54;
  }

  v55 = micro() - v10;
  if (v55 <= a4)
  {
    v57 = a4 - v55;
    v56 = *v13;
    if (v57 > 1.0)
    {
      v57 = 1.0;
    }
  }

  else
  {
    v56 = *v13;
    v57 = 0.1;
  }

  CommReport(v75, v56, v57);
  close(v75[0]);
  return v13;
}

uint64_t VCMediaNegotiationBlobMultiwayAudioStreamReadFrom(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v59) = 0;
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

        v7 |= (v59 & 0x7F) << v5;
        if ((v59 & 0x80) == 0)
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
      if ((v11 >> 3) <= 4)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 44) |= 0x20u;
            while (1)
            {
              LOBYTE(v59) = 0;
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

              v41 |= (v59 & 0x7F) << v39;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v10 = v40++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_125;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v41;
            }

LABEL_125:
            v57 = 40;
          }

          else
          {
            if (v12 != 4)
            {
              goto LABEL_104;
            }

            v24 = 0;
            v25 = 0;
            v26 = 0;
            while (1)
            {
              LOBYTE(v59) = 0;
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

              v26 |= (v59 & 0x7F) << v24;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v10 = v25++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_113;
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

LABEL_113:
            v57 = 36;
          }
        }

        else if (v12 == 1)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          while (1)
          {
            LOBYTE(v59) = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v59 & 0x7F) << v34;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_121;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v36;
          }

LABEL_121:
          v57 = 32;
        }

        else
        {
          if (v12 != 2)
          {
            goto LABEL_104;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            LOBYTE(v59) = 0;
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

            v21 |= (v59 & 0x7F) << v19;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_109;
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

LABEL_109:
          v57 = 12;
        }
      }

      else if (v12 <= 6)
      {
        if (v12 == 5)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          while (1)
          {
            LOBYTE(v59) = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v59 & 0x7F) << v46;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v10 = v47++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_129;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v48;
          }

LABEL_129:
          v57 = 20;
        }

        else
        {
          if (v12 != 6)
          {
LABEL_104:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_139;
          }

          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v59) = 0;
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

            v31 |= (v59 & 0x7F) << v29;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_117;
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

LABEL_117:
          v57 = 8;
        }
      }

      else
      {
        switch(v12)
        {
          case 7:
            *(a1 + 44) |= 4u;
            v59 = 0;
            v44 = [a2 position] + 4;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 4, v45 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 16) = v59;
            goto LABEL_139;
          case 8:
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *(a1 + 44) |= 0x10u;
            while (1)
            {
              LOBYTE(v59) = 0;
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

              v53 |= (v59 & 0x7F) << v51;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v10 = v52++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_137;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v53;
            }

LABEL_137:
            v57 = 28;
            break;
          case 9:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 44) |= 8u;
            while (1)
            {
              LOBYTE(v59) = 0;
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

              v15 |= (v59 & 0x7F) << v13;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_133;
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

LABEL_133:
            v57 = 24;
            break;
          default:
            goto LABEL_104;
        }
      }

      *(a1 + v57) = v18;
LABEL_139:
      v58 = [a2 position];
    }

    while (v58 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t GKNATObserverDynamicStoreCallback(int a1, void *a2, id obj)
{
  v20 = *MEMORY[0x1E69E9840];
  objc_sync_enter(obj);
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315906;
      v13 = v6;
      v14 = 2080;
      v15 = "GKNATObserverDynamicStoreCallback";
      v16 = 1024;
      v17 = 179;
      v18 = 2080;
      v19 = [objc_msgSend(a2 "description")];
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver_SCContext: GKNATObserverDynamicStoreCallback(): changedKeys = %s", &v12, 0x26u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [objc_msgSend(obj "description")];
      v12 = 136315906;
      v13 = v8;
      v14 = 2080;
      v15 = "GKNATObserverDynamicStoreCallback";
      v16 = 1024;
      v17 = 180;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver_SCContext: GKNATObserverDynamicStoreCallback(): self.observer = %s", &v12, 0x26u);
    }
  }

  [objc_msgSend(obj "observer")];
  [objc_msgSend(obj "observer")];
  [v5 drain];
  return objc_sync_exit(obj);
}

uint64_t NAT64ResolverCallBack(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "NAT64ResolverCallBack";
      v12 = 1024;
      v13 = 1323;
      v14 = 2080;
      v15 = a2;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NAT64ResolverCallBack: got prefix for %s", &v8, 0x26u);
    }
  }

  [a1 clearRetries];
  [a1 tryNATCheckWithDelay:0.0];
  return [v4 drain];
}

void OUTLINED_FUNCTION_6_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x28u);
}

void OUTLINED_FUNCTION_8_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x26u);
}

uint64_t VCAudioStreamReceiveGroup_PullAudioSamples(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(a1 + 316) == 2)
  {
    VCAudioBufferList_ZeroMemory(a2);
    v4 = 1;
  }

  else
  {
    HostTime = VCAudioBufferList_GetHostTime(a2);
    Timestamp = VCAudioBufferList_GetTimestamp(a2);
    v7 = *(*(a1 + 480) + 184);
    SampleCount = VCAudioBufferList_GetSampleCount(a2);
    VCAudioBufferList_SetSampleCount(v7, SampleCount);
    VCAudioBufferList_SetTime(*(*(a1 + 480) + 184), Timestamp, HostTime);
    v9 = *(*(a1 + 480) + 176);
    if (v9)
    {
      LOBYTE(v4) = 0;
      v10 = a2;
      do
      {
        (v9[3])(v9[2], v10);
        Priority = VCAudioBufferList_GetPriority(v10);
        if (v4 <= Priority)
        {
          v4 = Priority;
        }

        else
        {
          v4 = v4;
        }

        if (v10 != a2)
        {
          VCAudioBufferList_Mix(a2, v10);
        }

        v10 = *(*(a1 + 480) + 184);
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      v4 = 0;
    }

    *(a1 + 540) = VCAudioBufferList_GetAveragePower(a2);
    ++*(a1 + 544);
    memset(v38, 170, sizeof(v38));
    VCAudioBufferList_GetNetworkTimestamp(a2, v38);
    if (v38[12])
    {
      *&buf[16] = *&v38[16];
      *buf = *v38;
      v12 = *(a1 + 480);
      *&v40 = HostTime;
      for (i = *(v12 + 192); i; i = i[2])
      {
        ++*(a1 + 552);
        VCVideoStreamReceiveGroup_UpdateSourcePlayoutTime(*i, buf);
      }
    }

    v14 = *(a1 + 520);
    if (v14)
    {
      v14(a1, *(a1 + 528), a2);
    }

    if (*(a1 + 536) == 1)
    {
      VCMediaRecorder_AddRemoteAudioSampleBuffer(*(a1 + 336), a2, Timestamp);
    }
  }

  v15 = *(a1 + 516);
  HIDWORD(v16) = -1030792151 * v15;
  LODWORD(v16) = -1030792151 * v15;
  if ((v16 >> 3) <= 0x147AE14)
  {
    *(a1 + 500) = [+[VCDefaults sharedInstance](VCDefaults prominenceActiveAccumulationThreshold];
    *(a1 + 492) = [+[VCDefaults sharedInstance](VCDefaults prominenceActiveProbabilityThreshold];
    *(a1 + 504) = [+[VCDefaults sharedInstance](VCDefaults prominenceInactiveAccumulationThreshold];
    *(a1 + 496) = [+[VCDefaults sharedInstance](VCDefaults prominenceInactiveProbabilityThreshold];
    v15 = *(a1 + 516);
  }

  *(a1 + 516) = v15 + 1;
  if (v4 <= 1)
  {
    v4 = 1;
  }

  v17 = (a1 + 488);
  v18 = *(a1 + 508);
  if (*(a1 + 488) == 1)
  {
    if (*(a1 + 496) > v4)
    {
      if (!v18 || (v19 = v18 - 1, (*(a1 + 508) = v19) == 0))
      {
        *v17 = 0;
      }

      goto LABEL_38;
    }

    if (v18 >= *(a1 + 504))
    {
      goto LABEL_38;
    }

    v21 = v18 + 1;
LABEL_37:
    *(a1 + 508) = v21;
    goto LABEL_38;
  }

  if (*(a1 + 492) >= v4)
  {
    if (!v18)
    {
      goto LABEL_38;
    }

    v20 = -1;
  }

  else
  {
    v20 = 1;
  }

  v22 = v20 + v18;
  *(a1 + 508) = v22;
  if (v22 > *(a1 + 500))
  {
    *v17 = 1;
    v21 = *(a1 + 504);
    goto LABEL_37;
  }

LABEL_38:
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    v25 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 508);
        v27 = *v17;
        *buf = 136316674;
        *&buf[4] = v23;
        *&buf[12] = 2080;
        *&buf[14] = "VCAudioStreamReceiveGroup_DebounceAudioPriority";
        *&buf[22] = 1024;
        LODWORD(v40) = 456;
        WORD2(v40) = 1024;
        *(&v40 + 6) = 456;
        WORD5(v40) = 1024;
        HIDWORD(v40) = v26;
        LOWORD(v41) = 1024;
        *(&v41 + 2) = v4;
        HIWORD(v41) = 1024;
        v42 = v27;
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioStreamReceiveGroup.m:%d: ActiveCount:%d audioPriority:%d audioActive:%d", buf, 0x34u);
      }
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v36 = *(a1 + 508);
      v37 = *v17;
      *buf = 136316674;
      *&buf[4] = v23;
      *&buf[12] = 2080;
      *&buf[14] = "VCAudioStreamReceiveGroup_DebounceAudioPriority";
      *&buf[22] = 1024;
      LODWORD(v40) = 456;
      WORD2(v40) = 1024;
      *(&v40 + 6) = 456;
      WORD5(v40) = 1024;
      HIDWORD(v40) = v36;
      LOWORD(v41) = 1024;
      *(&v41 + 2) = v4;
      HIWORD(v41) = 1024;
      v42 = v37;
      _os_log_debug_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEBUG, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioStreamReceiveGroup.m:%d: ActiveCount:%d audioPriority:%d audioActive:%d", buf, 0x34u);
    }
  }

  if (*(a1 + 488))
  {
    v28 = -1;
  }

  else
  {
    v28 = 1;
  }

  if (*(a1 + 488))
  {
    v29 = 255;
  }

  else
  {
    v29 = 1;
  }

  if (*(a1 + 512) != v29)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      v32 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v30;
          *&buf[12] = 2080;
          *&buf[14] = "VCAudioStreamReceiveGroup_UpdateAudioPriority";
          *&buf[22] = 1024;
          LODWORD(v40) = 469;
          WORD2(v40) = 1024;
          *(&v40 + 6) = 469;
          WORD5(v40) = 1024;
          HIDWORD(v40) = v29;
          _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioStreamReceiveGroup.m:%d: Updating audio priority %d", buf, 0x28u);
        }
      }

      else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        VCAudioStreamReceiveGroup_PullAudioSamples_cold_1(v30);
      }
    }

    v33 = MEMORY[0x1E1289F20](a1 + 296);
    if (v33)
    {
      v34 = *(a1 + 304);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __VCAudioStreamReceiveGroup_UpdateAudioPriority_block_invoke;
      *&v40 = &unk_1E85F37C8;
      *(&v40 + 1) = v33;
      v41 = a1;
      LOBYTE(v42) = v28;
      dispatch_async(v34, buf);
    }

    *(a1 + 512) = v29;
  }

  VCAudioBufferList_GetVoiceActivity(a2);
  return kdebug_trace();
}

void sub_1DB5C4AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_8_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;
  *(*(*(result + 48) + 8) + 24) = 0;
  return result;
}

void _VCAudioRelay_UpdateWakeupInterval(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 464);
  if (v2 || *(a1 + 472))
  {
    v3 = *(a1 + 136);
    if (*(a1 + 440))
    {
      *(a1 + 496) = (*(a1 + 496) + v3 * 1000000000.0);
      HostTimeAndGrandmasterIdentityLocalPortForClockTime = TimeSyncClockGetHostTimeAndGrandmasterIdentityLocalPortForClockTime();
      if (*(a1 + 456) != 43690 || (v5 = HostTimeAndGrandmasterIdentityLocalPortForClockTime, *(a1 + 448) != 0xAAAAAAAAAAAAAAAALL))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v8 = *(a1 + 456);
            v9 = *(a1 + 448);
            *buf = 136316674;
            *&buf[4] = v6;
            *&buf[12] = 2080;
            *&buf[14] = "_VCAudioRelay_UpdateWakeupIntervalWithPTPClock";
            v38 = 1024;
            v39 = 949;
            v40 = 1024;
            *v41 = v8;
            *&v41[4] = 1024;
            *&v41[6] = 43690;
            *v42 = 2048;
            *&v42[2] = v9;
            *v43 = 2048;
            *&v43[2] = 0xAAAAAAAAAAAAAAAALL;
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reinitializing PTP time. old local port=%u, new local port=%u, old GM identity=%llu, new GM identity=%llu", buf, 0x3Cu);
          }
        }

        _VCAudioRelay_InitializePTPClockTime(a1, *(a1 + 504));
        *(a1 + 496) = (*(a1 + 496) + *(a1 + 136) * 1000000000.0);
        v5 = TimeSyncClockGetHostTimeAndGrandmasterIdentityLocalPortForClockTime();
      }

      if (v5 == *MEMORY[0x1E69DA100])
      {
        v10 = *(a1 + 504);
        v11 = *(a1 + 136);
        v5 = (v11 / machTimeScale() + v10);
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(a1 + 504);
            *buf = 136316162;
            *&buf[4] = v12;
            *&buf[12] = 2080;
            *&buf[14] = "_VCAudioRelay_UpdateWakeupIntervalWithPTPClock";
            v38 = 1024;
            v39 = 958;
            v40 = 2048;
            *v41 = v5;
            *&v41[8] = 2048;
            *v42 = v14;
            _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Invalid wakeUpHostTime computed from PTP clock, following local clock instead. newWakeUpHostMachTime=%llu, oldWakeUpHostMachTime=%llu", buf, 0x30u);
          }
        }
      }

      *(a1 + 504) = v5;
      v15 = mach_absolute_time();
      if (v5 >= v15)
      {
        v16 = machTimeScale() * (v5 - v15);
      }

      else
      {
        v16 = 0.0;
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 496);
            *buf = 136316418;
            *&buf[4] = v17;
            *&buf[12] = 2080;
            *&buf[14] = "_VCAudioRelay_UpdateWakeupIntervalWithPTPClock";
            v38 = 1024;
            v39 = 966;
            v40 = 2048;
            *v41 = v5;
            *&v41[8] = 2048;
            *v42 = v15;
            *&v42[8] = 2048;
            *v43 = v19;
            _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Realtime miss: wakeUpHostMachTime=%llu, currentMachHostTime=%llu, ptpWakeUpTime=%llu", buf, 0x3Au);
          }
        }
      }

      *(a1 + 480) = v16;
      *(a1 + 488) = ((v16 - v16) * 1000000000.0);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        v28 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(a1 + 480);
            v30 = *(a1 + 488);
            v31 = *(a1 + 496);
            *buf = 136317186;
            *&buf[4] = v26;
            *&buf[12] = 2080;
            *&buf[14] = "_VCAudioRelay_UpdateWakeupIntervalWithPTPClock";
            v38 = 1024;
            v39 = 974;
            v40 = 2048;
            *v41 = v29;
            *&v41[8] = 2048;
            *v42 = v30;
            *&v42[8] = 2048;
            *v43 = v5;
            *&v43[8] = 2048;
            v44 = v15;
            v45 = 2048;
            v46 = v31;
            v47 = 2048;
            v48 = v16;
            _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _nextWakeUpInterval.sec=%ld, _nextWakeUpInterval.nsec=%ld, wakeUpHostMachTime=%llu, currentMachHostTime=%llu, ptpWakeUpTime=%llu, timeInSeconds=%f", buf, 0x58u);
          }
        }

        else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v34 = *(a1 + 480);
          v35 = *(a1 + 488);
          v36 = *(a1 + 496);
          *buf = 136317186;
          *&buf[4] = v26;
          *&buf[12] = 2080;
          *&buf[14] = "_VCAudioRelay_UpdateWakeupIntervalWithPTPClock";
          v38 = 1024;
          v39 = 974;
          v40 = 2048;
          *v41 = v34;
          *&v41[8] = 2048;
          *v42 = v35;
          *&v42[8] = 2048;
          *v43 = v5;
          *&v43[8] = 2048;
          v44 = v15;
          v45 = 2048;
          v46 = v36;
          v47 = 2048;
          v48 = v16;
          _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, " [%s] %s:%d _nextWakeUpInterval.sec=%ld, _nextWakeUpInterval.nsec=%ld, wakeUpHostMachTime=%llu, currentMachHostTime=%llu, ptpWakeUpTime=%llu, timeInSeconds=%f", buf, 0x58u);
        }
      }
    }

    else
    {
      v20 = *(a1 + 472) + 1000000000 * v2 + (v3 * 1000000000.0);
      v21 = v20 / 0x3B9ACA00;
      v22 = v20 % 0x3B9ACA00;
      *(a1 + 464) = v20 / 0x3B9ACA00;
      *(a1 + 472) = v20 % 0x3B9ACA00;
      memset(buf, 170, 16);
      gettimeofday(buf, 0);
      v23 = v22 + 1000000000 * (v21 - *buf) - 1000 * *&buf[8];
      if (v23 < 1)
      {
        v24 = 0;
        v25 = 0;
      }

      else
      {
        v24 = v23 / 0x3B9ACA00uLL;
        v25 = v23 % 0x3B9ACA00uLL;
      }

      *(a1 + 480) = v24;
      *(a1 + 488) = v25;
    }
  }

  else
  {
    memset(buf, 170, 16);
    gettimeofday(buf, 0);
    v32 = 1000 * *&buf[8];
    *(a1 + 464) = *buf;
    *(a1 + 472) = v32;
    v33 = mach_absolute_time();
    _VCAudioRelay_InitializePTPClockTime(a1, v33);
  }
}

void _VCAudioRelay_InitializePTPClockTime(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 440))
  {
    *(a1 + 496) = TimeSyncClockGetClockTimeAndGrandmasterIdentityLocalPortForHostTime();
    *(a1 + 504) = a2;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 496);
        v6 = *(a1 + 504);
        v8 = *(a1 + 456);
        v9 = *(a1 + 448);
        v10 = 136316674;
        v11 = v4;
        v12 = 2080;
        v13 = "_VCAudioRelay_InitializePTPClockTime";
        v14 = 1024;
        v15 = 934;
        v16 = 2048;
        v17 = v6;
        v18 = 2048;
        v19 = v7;
        v20 = 1024;
        v21 = v8;
        v22 = 2048;
        v23 = v9;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d hostMachTime=%llu, ptpTime=%llu, port=%u, GMidentity=%llu", &v10, 0x40u);
      }
    }
  }
}

void VCCaptionsStreamSendGroup_PushAudioSamples(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 312))
  {
    v2 = *(a1 + 752);

    [v2 pushAudioSamples:a2];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    v5 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v3;
        v8 = 2080;
        v9 = "VCCaptionsStreamSendGroup_PushAudioSamples";
        v10 = 1024;
        v11 = 351;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d audio no-op no MKM", &v6, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      VCCaptionsStreamSendGroup_PushAudioSamples_cold_1(v3);
    }
  }
}

void sub_1DB5CA3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VCCaptionsStream_CreateSampleBuffer(void *memoryBlock, size_t blockLength, const CMSampleTimingInfo *a3, CMSampleBufferRef *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  formatDescriptionOut = 0;
  blockBufferOut = 0;
  v6 = *MEMORY[0x1E695E480];
  v7 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], memoryBlock, blockLength, *MEMORY[0x1E695E498], 0, 0, blockLength, 0, &blockBufferOut);
  if (v7)
  {
    VCCaptionsStream_CreateSampleBuffer_cold_1(v7, &v13);
  }

  else
  {
    v8 = CMFormatDescriptionCreate(v6, 0x6D657461u, 0x63617074u, 0, &formatDescriptionOut);
    if (!v8)
    {
      v9 = CMSampleBufferCreate(v6, blockBufferOut, 1u, 0, 0, formatDescriptionOut, 1, 1, a3, 0, 0, a4);
      goto LABEL_4;
    }

    VCCaptionsStream_CreateSampleBuffer_cold_2(v8, &v13);
  }

  v9 = v13;
LABEL_4:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v9;
}

double VCMediaChannelMetrics_Reset(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

uint64_t VCMediaChannelMetrics_Sum(uint64_t result, uint64_t a2)
{
  *result += *a2;
  *(result + 24) += *(a2 + 24);
  *(result + 32) = *(a2 + 32) + *(result + 32);
  for (i = 4; i != 24; i += 4)
  {
    *(result + i) += *(a2 + i);
  }

  *(result + 40) = *(a2 + 40);
  v3 = *(a2 + 56);
  if (v3 == 0.0)
  {
    v3 = *(result + 56);
  }

  *(result + 56) = v3;
  v4 = *(a2 + 72);
  if (v4 == 0.0)
  {
    v4 = *(result + 72);
  }

  *(result + 72) = v4;
  v5 = *(a2 + 64);
  if (!v5)
  {
    v5 = *(result + 64);
  }

  *(result + 64) = v5;
  v6 = *(a2 + 80);
  if (!v6)
  {
    v6 = *(result + 80);
  }

  v7 = *(result + 84) + *(a2 + 84);
  *(result + 80) = v6;
  *(result + 84) = v7;
  return result;
}

uint64_t VCVideoJitterBuffer_GetIsRunning(uint64_t a1, _DWORD *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *a2 = *(a1 + 81924);
      return *(a1 + 81880) == 4;
    }

    else
    {
      VCVideoJitterBuffer_GetIsRunning_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    VCVideoJitterBuffer_GetIsRunning_cold_2(&v4);
    return v4;
  }
}

char *VCVideoJitterBuffer_Create(uint64_t a1)
{
  v90 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCVideoJitterBuffer_Create_cold_7();
      }
    }

    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x14070uLL, 0x10B00405CA75EBCuLL);
  v3 = v2;
  if (!v2)
  {
    VCVideoJitterBuffer_Create_cold_5();
LABEL_56:
    VCVideoJitterBuffer_Finalize(v3);
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCVideoJitterBuffer_Create_cold_6();
      }
    }

    return 0;
  }

  if (!*(a1 + 216))
  {
    VCVideoJitterBuffer_Create_cold_4();
    goto LABEL_56;
  }

  v4 = v2 + 81880;
  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v7;
  *v2 = v5;
  *(v2 + 1) = v6;
  v8 = *(a1 + 64);
  v9 = *(a1 + 80);
  v10 = *(a1 + 112);
  *(v2 + 6) = *(a1 + 96);
  *(v2 + 7) = v10;
  *(v2 + 4) = v8;
  *(v2 + 5) = v9;
  v11 = *(a1 + 128);
  v12 = *(a1 + 144);
  v13 = *(a1 + 176);
  *(v2 + 10) = *(a1 + 160);
  *(v2 + 11) = v13;
  *(v2 + 8) = v11;
  *(v2 + 9) = v12;
  v14 = *(a1 + 192);
  v15 = *(a1 + 208);
  v16 = *(a1 + 224);
  *(v2 + 30) = *(a1 + 240);
  *(v2 + 13) = v15;
  *(v2 + 14) = v16;
  *(v2 + 12) = v14;
  *(v2 + 10241) = LogDump_OpenLog(a1, "JitterBuffer", ".vjbdump", "STime\tTimestamp\tSPF\tBundling\tDTX\tNetworkType\tFirstTimestamp\tWraps\tIsRed\tLag\tAvgLag\tMaxLag\tMinLag\tJumpThresh\tSlopeThresh\tFlat\tClippedLag\tMinLagAdjustment\tMinClipThreshold\tJB\tJBMin\tJBMax\tTargetJ\tRedOverheadInTargetJ\tTargetJQSize\tJQSize\tAvgJQSize\tERASURE\tMODE\tPayload Type\tSeq Number\tDON\tOUTTS\tLeftOverSamples\tProminence\tStreamID\tTargetSizeIndependent\tAVSyncOffset\tEncodedBufferLength\n", 9, "2.7");
  *(v3 + 10246) = 0x7FEFFFFFFFFFFFFFLL;
  *v4 = 0;
  *(v3 + 10251) = 0x3FF0000000000000;
  v18 = *(a1 + 200);
  switch(v18)
  {
    case 0:
      LODWORD(v17) = *(a1 + 216);
      v19 = v17;
      v20 = 3.0;
      goto LABEL_14;
    case 3:
      v21 = *(a1 + 240);
      goto LABEL_16;
    case 1:
      LODWORD(v17) = *(a1 + 216);
      v19 = v17;
      v20 = 0.0;
LABEL_14:
      v21 = v20 / v19;
      goto LABEL_16;
  }

  v21 = 0.1;
LABEL_16:
  *(v3 + 10253) = VCDefaults_GetDoubleValueForKey(@"videoJitterBufferMinQueueSize", v21);
  *(&v61 + 1) = *(v3 + 10241);
  *&v61 = 1;
  if ((JLagProcessor_Initialize((v3 + 248), &v61) & 1) == 0)
  {
    VCVideoJitterBuffer_Create_cold_1();
    goto LABEL_56;
  }

  v60 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v22 = *(v3 + 10253);
  v51 = v22;
  v23 = *(a1 + 200);
  if (v23)
  {
    if (v23 == 3)
    {
      v24 = *(a1 + 240);
      goto LABEL_24;
    }

    v24 = 0.5;
    if (v23 != 1)
    {
      goto LABEL_24;
    }

    LODWORD(v24) = *(a1 + 216);
    v25 = *&v24;
    v26 = 5.0;
  }

  else
  {
    v25 = *(a1 + 216);
    v26 = 6.0;
  }

  v24 = v26 / v25;
LABEL_24:
  DoubleValueForKey = VCDefaults_GetDoubleValueForKey(@"maxVideoJitterBufferSize", v24);
  v28 = DoubleValueForKey;
  *(&v52 + 1) = DoubleValueForKey;
  v29 = 0.25;
  if (*(v3 + 50) != 2)
  {
    LODWORD(DoubleValueForKey) = *(a1 + 216);
    v29 = 3.0 / *&DoubleValueForKey;
  }

  *&v53 = v29;
  v30 = *(a1 + 204);
  DWORD2(v53) = v30;
  IntValueForKey = VCDefaults_GetIntValueForKey(@"numberOfBinsPerFrameJitterBufferCdf", 4);
  if (!IntValueForKey)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCVideoJitterBuffer_Create_cold_2();
      }
    }

    IntValueForKey = 4;
  }

  v32 = 1000.0 / (*(a1 + 216) * IntValueForKey);
  *&v54 = v32;
  BYTE1(v55) = 1;
  *(&v55 + 1) = *(v3 + 10241);
  v33 = *(a1 + 200);
  if (v33 == 3)
  {
    v34 = 0.95;
    if (*(a1 + 240) == 0.0)
    {
      v34 = 0.0;
    }
  }

  else if (v33 == 1)
  {
    v34 = 0.95;
  }

  else
  {
    v34 = 0.98;
  }

  v35 = VCDefaults_GetDoubleValueForKey(@"percentToCoverInJitterBufferCdf", v34);
  *(&v54 + 1) = v35;
  LOBYTE(v55) = 1;
  BYTE8(v57) = 1;
  BYTE9(v57) = *(v3 + 50) == 2;
  BYTE11(v57) = 1;
  LOBYTE(v56) = VCDefaults_GetBoolValueForKey(@"jitterBufferHistoryUseShortTermWindowForTargetExpansion", *(a1 + 224));
  v36 = 2.0;
  if (*(v3 + 50) == 2)
  {
    v36 = 5.0;
  }

  v37 = VCDefaults_GetDoubleValueForKey(@"jitterBufferHistoryShortTermWindowSize", v36);
  *(&v56 + 1) = v37;
  v38 = 10.0;
  if (*(v3 + 50) != 2)
  {
    v38 = 5.0;
  }

  v39 = VCDefaults_GetDoubleValueForKey(@"jitterBufferHistoryLongTermWindowSize", v38);
  *&v57 = v39;
  BYTE10(v57) = 0;
  v40 = *(v3 + 29);
  if (v40)
  {
    v40 = CFRetain(v40);
  }

  *&v58 = v40;
  v41 = *(v3 + 57);
  LODWORD(v59) = v41;
  BYTE8(v60) = 0;
  *(&v59 + 1) = _VCVideoJitterBuffer_GetJBTargetFromEstimatedTarget;
  *&v60 = v3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v42 = VRTraceErrorLogLevelToCSTR();
    v43 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v44 = *(v3 + 29);
      v45 = FourccToCStr(v41);
      *buf = 136318466;
      v63 = v42;
      v64 = 2080;
      v65 = "VCVideoJitterBuffer_Create";
      v66 = 1024;
      v67 = 241;
      v68 = 2048;
      v69 = v3;
      v70 = 2048;
      v71 = v22;
      v72 = 2048;
      v73 = v28;
      v74 = 2048;
      v75 = v29;
      v76 = 1024;
      v77 = v30;
      v78 = 2048;
      v79 = v32;
      v80 = 2048;
      v81 = v35;
      v82 = 2048;
      v83 = v37;
      v84 = 2048;
      v85 = v39;
      v86 = 2048;
      v87 = v44;
      v88 = 2080;
      v89 = v45;
      _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, "VCVideoJitterBuffer [%s] %s:%d VCVideoJitterBuffer[%p] Video jitter buffer configured with minQ size %f maxQ size %f highStartQ size %f highstart %d jitterDistributionBucketSize %f targetPercentileToCover %f shortTermWindowSize %f longTermWindowSize %f jbTargetEstimatorSynchronizer=%p streamGroupID=%s", buf, 0x86u);
    }
  }

  v46 = JTargetJBEstimator_Initialize((v3 + 704), &v51);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!v46)
  {
    VCVideoJitterBuffer_Create_cold_3(ErrorLogLevelForModule);
    goto LABEL_56;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v48 = VRTraceErrorLogLevelToCSTR();
    v49 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v63 = v48;
      v64 = 2080;
      v65 = "VCVideoJitterBuffer_Create";
      v66 = 1024;
      v67 = 246;
      _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, "VCVideoJitterBuffer [%s] %s:%d Video Jitter Buffer Created Successfully", buf, 0x1Cu);
    }
  }

  return v3;
}

uint64_t _VCVideoJitterBuffer_GetJBTargetFromEstimatedTarget(uint64_t a1, float *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v4 = (a1 + 81296);
    if (*(a1 + 200) == 3)
    {
      result = 0;
      v12 = v4[91];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      v5 = *a2;
      JTargetJBEstimator_GetSharedSettings(a1 + 704, &v14);
      v6 = v4[91];
      v7 = fmax(*&v15, v6);
      v8 = (ceil(fmax(v5 + 0.000005, 0.0) * *(a1 + 216)) - v4[89]) / *(a1 + 216);
      if (*(a1 + 204) == 1)
      {
        v6 = fmax(*v4, v8);
      }

      result = 0;
      v10 = fmax(v6, v8);
      v11 = fmax(v10, v7);
      v12 = fmin(v11, *(&v15 + 1));
    }

    v13 = v12;
    *a2 = v13;
  }

  else
  {
    _VCVideoJitterBuffer_GetJBTargetFromEstimatedTarget_cold_1(&v17);
    return v17;
  }

  return result;
}

void VCVideoJitterBuffer_Finalize(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315906;
        v7 = v3;
        v8 = 2080;
        v9 = "VCVideoJitterBuffer_Finalize";
        v10 = 1024;
        v11 = 306;
        v12 = 2048;
        v13 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoJitterBuffer [%s] %s:%d Cleaning up Video JitterBuffer (%p)", &v6, 0x26u);
      }
    }

    JTargetJBEstimator_Finalize((a1 + 88));
    LogDump_CloseLog(a1[10241]);
    v5 = a1[29];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCVideoJitterBuffer_Finalize_cold_1();
    }
  }
}

void VCVideoJitterBuffer_UpdateMode(uint64_t a1, unsigned int a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1 + 81880;
    v40 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *(a1 + 200) = a2;
    v5 = 0.1;
    v6 = 0.1;
    if (a2 <= 3)
    {
      v6 = dbl_1DBD45A28[a2];
    }

    DoubleValueForKey = VCDefaults_GetDoubleValueForKey(@"videoJitterBufferMinQueueSize", v6);
    *(v4 + 144) = DoubleValueForKey;
    v8 = *(a1 + 200);
    if (v8)
    {
      if (v8 == 3)
      {
        v5 = *(a1 + 240);
        goto LABEL_14;
      }

      if (v8 != 1)
      {
        goto LABEL_14;
      }

      LODWORD(DoubleValueForKey) = *(a1 + 216);
      v9 = *&DoubleValueForKey;
      v10 = 0.0;
    }

    else
    {
      LODWORD(DoubleValueForKey) = *(a1 + 216);
      v9 = *&DoubleValueForKey;
      v10 = 3.0;
    }

    v5 = v10 / v9;
LABEL_14:
    *&v11 = VCDefaults_GetDoubleValueForKey(@"videoJitterBufferMinQueueSize", v5);
    v31 = v11;
    v12 = *(a1 + 200);
    if (v12)
    {
      if (v12 == 3)
      {
        v13 = *(a1 + 240);
        goto LABEL_21;
      }

      v13 = 0.5;
      if (v12 != 1)
      {
        goto LABEL_21;
      }

      LODWORD(v13) = *(a1 + 216);
      v14 = *&v13;
      v15 = 5.0;
    }

    else
    {
      LODWORD(v11) = *(a1 + 216);
      v14 = v11;
      v15 = 6.0;
    }

    v13 = v15 / v14;
LABEL_21:
    v16 = VCDefaults_GetDoubleValueForKey(@"maxVideoJitterBufferSize", v13);
    *(&v32 + 1) = v16;
    v17 = *(a1 + 200);
    if (v17 == 2)
    {
      *&v33 = 0x3FD0000000000000;
    }

    else
    {
      LODWORD(v16) = *(a1 + 216);
      *&v33 = 3.0 / *&v16;
      if (v17 == 3)
      {
        v18 = 0.95;
        if (*(a1 + 240) == 0.0)
        {
          v18 = 0.0;
        }

        goto LABEL_27;
      }

      if (v17 == 1)
      {
        v18 = 0.95;
        goto LABEL_27;
      }
    }

    v18 = 0.98;
LABEL_27:
    *(&v34 + 1) = VCDefaults_GetDoubleValueForKey(@"percentToCoverInJitterBufferCdf", v18);
    JTargetJBEstimator_UpdateJitterBufferParams(a1 + 704, &v31);
    *v4 = 1;
    JTargetJBEstimator_NewStream(a1 + 704, *(a1 + 220), *(v4 + 12));
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v26 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *v26;
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v42 = v27;
        v43 = 2080;
        v44 = "VCVideoJitterBuffer_UpdateMode";
        v45 = 1024;
        v46 = 297;
        v47 = 2048;
        *v48 = a1;
        _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "VCVideoJitterBuffer [%s] %s:%d [%p] JBState NEWSTREAM -> SETTLE", buf, 0x26u);
      }
    }

    VRLogfilePrint(*(v4 + 48), "State = STATE_NEWSTREAM, iSampleRate = %d\nState = SETTLE\n", v20, v21, v22, v23, v24, v25, *(a1 + 220));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *v26;
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v42 = v29;
        v43 = 2080;
        v44 = "VCVideoJitterBuffer_UpdateMode";
        v45 = 1024;
        v46 = 300;
        v47 = 1024;
        *v48 = a2;
        *&v48[4] = 2048;
        *&v48[6] = v31;
        v49 = 2048;
        v50 = *(&v32 + 1);
        v51 = 2048;
        v52 = *(&v34 + 1);
        _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VCVideoJitterBuffer [%s] %s:%d Video jitter buffer reconfigured with new mode %d. minQ size %f maxQ size %f targetPercentileToCover %f", buf, 0x40u);
      }
    }

    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCVideoJitterBuffer_UpdateMode_cold_1();
    }
  }
}

double VCVideoJitterBuffer_GetTargetJitterQueueSize(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 81912);
  }

  v1 = 0.0;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCVideoJitterBuffer_GetTargetJitterQueueSize_cold_1();
    }
  }

  return v1;
}

double VCVideoJitterBuffer_GetJitterBufferMaxQueueSize(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 736);
  }

  v1 = 0.0;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCVideoJitterBuffer_GetJitterBufferMaxQueueSize_cold_1();
    }
  }

  return v1;
}

double VCVideoJitterBuffer_GetReferenceFrame@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    v3 = *(a1 + 81936);
    v4 = *(a1 + 81952);
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCVideoJitterBuffer_GetReferenceFrame_cold_1();
      }
    }

    *&v3 = 0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return *&v3;
}

void VCVideoJitterBuffer_EnqueueFrame(uint64_t a1, uint64_t a2, __int128 *a3)
{
  buf[7] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v6 = a1 + 80360;
      if (*(a2 + 75) != 1 || *(a1 + 81880) >= 4u && *(a1 + 81920) == 1)
      {
        v70 = 0;
        v68 = 0u;
        v69 = 0u;
        v7 = *(a2 + 8);
        v8 = *(a2 + 40);
        v9 = *(a1 + 81892);
        v10 = v7 - *(a1 + 81888);
        if (v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = *(a1 + 588) == 0;
        }

        v13 = *(a1 + 216);
        v12 = *(a1 + 220);
        v14 = *(a2 + 38);
        BYTE12(v69) = v14;
        v15 = v8;
        if ((*(a2 + 39) & 1) == 0)
        {
          v15 = *(a1 + 82016);
          *(a1 + 82016) = v15 + 1;
        }

        v16 = v9 + 1;
        v18 = v10 > 0x960 || v16 < v8;
        LOWORD(v68) = v15;
        *&v69 = *(a2 + 48);
        DWORD1(v68) = v7;
        if (v18 || v11)
        {
          v19 = v12 / v13;
        }

        else
        {
          v19 = v10;
        }

        DWORD2(v69) = v19;
        LODWORD(v70) = 1;
        *(a1 + 81888) = v7;
        *(a1 + 81892) = v15;
        if ((v14 & 1) != 0 || !*(a1 + 81880))
        {
          if (JLagProcessor_NewStream(a1 + 248, &v68, v12, v19))
          {
            JTargetJBEstimator_NewStream(a1 + 704, *(a1 + 220), v68);
            *(v6 + 1520) = 1;
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v36 = VRTraceErrorLogLevelToCSTR();
              v37 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf[0]) = 136315906;
                *(buf + 4) = v36;
                WORD2(buf[1]) = 2080;
                *(&buf[1] + 6) = "VCVideoJitterBuffer_EnqueueFrame";
                HIWORD(buf[2]) = 1024;
                LODWORD(buf[3]) = 492;
                WORD2(buf[3]) = 2048;
                *(&buf[3] + 6) = a1;
                _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, "VCVideoJitterBuffer [%s] %s:%d [%p] JBState NEWSTREAM -> SETTLE", buf, 0x26u);
              }
            }

            VRLogfilePrint(*(v6 + 1568), "State = STATE_NEWSTREAM, iSampleRate = %d\nState = SETTLE\n", v30, v31, v32, v33, v34, v35, *(a1 + 220));
          }
        }

        else
        {
          v20 = JLagProcessor_Process(a1 + 248, &v68, v19, 0, *(a1 + 81880));
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v27 = VRTraceErrorLogLevelToCSTR();
            v28 = *MEMORY[0x1E6986650];
            v29 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf[0]) = 136316162;
                *(buf + 4) = v27;
                WORD2(buf[1]) = 2080;
                *(&buf[1] + 6) = "VCVideoJitterBuffer_EnqueueFrame";
                HIWORD(buf[2]) = 1024;
                LODWORD(buf[3]) = 499;
                WORD2(buf[3]) = 2048;
                *(&buf[3] + 6) = v20;
                HIWORD(buf[4]) = 1024;
                LODWORD(buf[5]) = DWORD1(v68);
                _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "VCVideoJitterBuffer [%s] %s:%d video lag is %f for RTPTimestamp=%u", buf, 0x2Cu);
              }
            }

            else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf[0]) = 136316162;
              *(buf + 4) = v27;
              WORD2(buf[1]) = 2080;
              *(&buf[1] + 6) = "VCVideoJitterBuffer_EnqueueFrame";
              HIWORD(buf[2]) = 1024;
              LODWORD(buf[3]) = 499;
              WORD2(buf[3]) = 2048;
              *(&buf[3] + 6) = v20;
              HIWORD(buf[4]) = 1024;
              LODWORD(buf[5]) = DWORD1(v68);
              _os_log_debug_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEBUG, "VCVideoJitterBuffer [%s] %s:%d video lag is %f for RTPTimestamp=%u", buf, 0x2Cu);
            }
          }

          v38 = *a3;
          *(v6 + 1632) = a3[1];
          *(v6 + 1616) = v38;
          if (*(v6 + 1520) == 1)
          {
            LODWORD(v38) = *(a1 + 216);
            if (fabs(v20) >= 1.0 / v38)
            {
              return;
            }

            *(v6 + 1520) = 2;
            VRLogfilePrint(*(v6 + 1568), "State = FILL\n", v21, v22, v23, v24, v25, v26, v67);
          }

          if (*(v6 + 1520) <= 3u)
          {
            *(v6 + 1524) += DWORD2(v69);
          }

          if (*(v6 + 1520) == 2)
          {
            JTargetJBEstimator_GetMinJBSize(a1 + 704);
            if (*(a1 + 204) == 1)
            {
              v45 = *(a1 + 744);
            }

            LODWORD(v46) = *(v6 + 1524);
            if (v46 / *(a1 + 220) > v45)
            {
              *(v6 + 1520) = 4;
              *(v6 + 1564) = DWORD1(v68);
              VRLogfilePrint(*(v6 + 1568), "State = RUN\n", v39, v40, v41, v42, v43, v44, v67);
            }
          }

          memset(&buf[2], 0, 32);
          buf[0] = v68;
          buf[1] = v69;
          buf[2] = DWORD2(v69) | 0x100000000;
          LODWORD(buf[3]) = DWORD1(v68);
          buf[4] = *(a2 + 64);
          JTargetJBEstimator_Process(a1 + 704, buf, v20);
          if ((*v6 & 1) == 0)
          {
            v47 = *(a1 + 66776);
            if (v47 != *(v6 + 1608))
            {
              v48 = *(a1 + 66828);
              v49 = *(a1 + 4 * v48 + 36760);
              *(v6 + 1584) = v49;
              v50 = a1 + 8 * v48;
              *(v6 + 1576) = *(v50 + 42760);
              v51 = *(v50 + 54760);
              *(v6 + 1592) = v51;
              v52 = v51 != 0.0 || v49 == 0;
              v53 = v52;
              *(v6 + 1600) = v53;
              *(v6 + 1608) = v47;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v54 = VRTraceErrorLogLevelToCSTR();
                v55 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v56 = *(v6 + 1608);
                  v57 = *(v6 + 1584);
                  *v71 = 136316162;
                  *&v71[4] = v54;
                  *&v71[12] = 2080;
                  *&v71[14] = "VCVideoJitterBuffer_EnqueueFrame";
                  v72 = 1024;
                  v73 = 548;
                  v74 = 2048;
                  v75 = v56;
                  v76 = 1024;
                  v77 = v57;
                  _os_log_impl(&dword_1DB56E000, v55, OS_LOG_TYPE_DEFAULT, "VCVideoJitterBuffer [%s] %s:%d Found new lowest minLag of %f for RTPTimestamp=%u", v71, 0x2Cu);
                }
              }
            }
          }

          v58 = *(v6 + 928);
          v59 = *(v6 + 1664);
          if (*(a1 + 200) == 3)
          {
            v58 = *(v6 + 1664);
          }

          v60 = *(a1 + 216);
          v61 = ceil(fmax(v58 + 0.000005, 0.0) * v60) - *(v6 + 1648);
          *(v6 + 1536) = v58;
          v62 = v61 / v60;
          if (*(a1 + 204) == 1)
          {
            v59 = fmax(*(v6 + 936), v62);
          }

          v63 = fmax(v59, v62);
          *(v6 + 1552) = v63;
          *(v6 + 1544) = v63;
          memset(v71, 170, 20);
          if (*(v6 + 1568))
          {
            LogDump_GetTimestampString(*&v69);
            JTargetJBEstimator_GetStatistics(a1 + 704);
            JLagProcessor_GetStatistics(a1 + 248);
            v64 = *(v6 + 1552);
            v65 = *(v6 + 1544);
            if (v64 == v65)
            {
              v66 = 0;
            }

            else if (v64 <= v65)
            {
              if (v64 >= v65)
              {
                v66 = 3;
              }

              else
              {
                v66 = 1;
              }
            }

            else
            {
              v66 = 2;
            }

            VRLogfilePrint(*(v6 + 1568), "%s\t%u\t%u\t%d\t%d\t%d\t%u\t%u\t%d\t%02.6f\t%02.6f\t%02.6f\t%02.6f\t%02.4f\t%02.4f\t%d\t%02.6f\t%02.6f\t%02.6f\t%02.4f\t%02.4f\t%02.4f\t%02.4f\t%02.4f\t%6d\t%6d\t%d\t%d\t%s\t%d\t%u\t%u\t%u\t%d\t%d\t%d\t%02.4f\t%02.4f\t%zu\n", jitterBufferPlaybackMode[v66], v68, *(a2 + 16), *(a2 + 14), *(a2 + 12), *(a2 + 80), v71);
          }

          if ((*(v6 + 1560) & 1) == 0 && *(a2 + 15) == 1)
          {
            *(v6 + 1560) = 1;
          }
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCVideoJitterBuffer_EnqueueFrame_cold_1();
    }
  }
}

void VCVideoJitterBuffer_HealthPrint(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Statistics = JTargetJBEstimator_GetStatistics(a1 + 704);
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(Statistics + 16);
        v5 = *(Statistics + 24);
        v7 = *(Statistics + 8);
        v8 = *(Statistics + 48);
        v9 = *(Statistics + 56);
        v10 = *(Statistics + 64);
        v11 = *(a1 + 81912);
        v12 = *(Statistics + 72);
        v13 = *(Statistics + 80);
        v14 = *(Statistics + 88);
        v15 = 136318210;
        v16 = v3;
        v17 = 2080;
        v18 = "VCVideoJitterBuffer_HealthPrint";
        v19 = 1024;
        v20 = 572;
        v21 = 2048;
        v22 = v7;
        v23 = 2048;
        v24 = v5;
        v25 = 2048;
        v26 = v6;
        v27 = 1024;
        v28 = v8;
        v29 = 2048;
        v30 = v9;
        v31 = 2048;
        v32 = v10;
        v33 = 2048;
        v34 = v12;
        v35 = 2048;
        v36 = v13;
        v37 = 2048;
        v38 = v11;
        v39 = 2048;
        v40 = v14;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoJitterBuffer [%s] %s:%d @=@ Health: VideoJitterBuffer avgLag=%f maxLag=%f minLag=%f flat=%d clippedLag=%f minLagAdj=%f minClipThresh=%f targetSize=%f quantizedTargetQueueSizeInSeconds=%f targetSizeIndependent=%f", &v15, 0x7Cu);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCVideoJitterBuffer_HealthPrint_cold_1();
    }
  }
}

uint64_t _VCAudioPowerSpectrumSource_CompareListEntries(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = 2 * (v2 >= v3);
  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

void VCAudioPowerSpectrumSource_FreeClient(id **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {

    free(v1);
  }
}

id *VCAudioPowerSpectrumSource_PushAudioSamples(id *result, uint64_t a2)
{
  if (result)
  {
    return VCAudioPowerSpectrumSource_ProcessAudioSamples((result + 22), a2);
  }

  return result;
}

id *VCAudioPowerSpectrumSource_ProcessAudioSamples(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v24 = *MEMORY[0x1E69E9840];
  result = CMSimpleQueueDequeue(*(a1 + 32));
  v15 = result;
  if (result)
  {
    v5 = result;
    v6 = MEMORY[0x1E6986650];
    while (1)
    {
      v7 = *(v5 + 32);
      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
          {
            v13 = *(v5 + 32);
            *buf = 136315906;
            *&buf[4] = v11;
            v18 = 2080;
            v19 = "_VCAudioPowerSpectrumSource_ProcessEventQueue";
            v20 = 1024;
            v21 = 146;
            v22 = 1024;
            LODWORD(v23) = v13;
            _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid operation: %d", buf, 0x22u);
          }
        }

        VCAudioPowerSpectrumSource_FreeClient(&v15);
        goto LABEL_20;
      }

      v16 = v5;
      if ((VCSingleLinkedListPush(v3, v5) & 1) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
          {
            v14 = *(v5 + 8);
            *buf = 136315906;
            *&buf[4] = v8;
            v18 = 2080;
            v19 = "_VCAudioPowerSpectrumSource_ProcessAddEvent";
            v20 = 1024;
            v21 = 113;
            v22 = 2048;
            v23 = v14;
            _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d error powerSpectrum[%p] already registered", buf, 0x26u);
          }
        }

        VCAudioPowerSpectrumSource_FreeClient(&v16);
      }

      v10 = MEMORY[0x1E1289F20](v3 + 40);
      [v10 audioPowerSpectrumSinkDidRegister];
      if (v10)
      {
        goto LABEL_15;
      }

LABEL_20:
      result = CMSimpleQueueDequeue(*(v3 + 32));
      v5 = result;
      v15 = result;
      if (!result)
      {
        goto LABEL_23;
      }
    }

    *buf = v5;
    v16 = VCSingleLinkedListRemove(v3, v5);
    if (v16)
    {
      VCAudioPowerSpectrumSource_FreeClient(&v16);
    }

    VCAudioPowerSpectrumSource_FreeClient(buf);
    v10 = MEMORY[0x1E1289F20](v3 + 40);
    [v10 audioPowerSpectrumSinkDidUnregister];
    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_15:
    CFRelease(v10);
    goto LABEL_20;
  }

LABEL_23:
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    result = (*(v3 + 16))(*(v3 + 8), a2);
  }

  return result;
}

void VCAudioPowerSpectrumSource_RegisterAudioPowerSpectrumSink(CMSimpleQueueRef *a1, void *a2, void *a3, void *a4, void *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2 && a1 && a3 && a5)
  {
    v10 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A00401D15B2DDuLL);
    v18 = v10;
    v10[1] = a2;
    v10[2] = a5;
    v10[3] = a3;
    *(v10 + 8) = 1;
    v10[5] = a4;
    v11 = CMSimpleQueueEnqueue(a1[4], v10);
    if (v11)
    {
      v12 = v11;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v17 = a1[4];
          *buf = 136316930;
          v20 = v13;
          v21 = 2080;
          v22 = "VCAudioPowerSpectrumSource_RegisterAudioPowerSpectrumSink";
          v23 = 1024;
          v24 = 170;
          v25 = 2048;
          v26 = v10;
          v27 = 2048;
          v28 = a1;
          v29 = 2048;
          v30 = a2;
          v31 = 2048;
          v32 = v17;
          v33 = 1024;
          v34 = v12;
          _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to enqueue cient=%p realtimeContext=%p clientContext=%p queue=%p status=%d", buf, 0x4Au);
        }
      }

      VCAudioPowerSpectrumSource_FreeClient(&v18);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v20 = v15;
      v21 = 2080;
      v22 = "VCAudioPowerSpectrumSource_RegisterAudioPowerSpectrumSink";
      v23 = 1024;
      v24 = 156;
      v25 = 2048;
      v26 = a1;
      v27 = 2048;
      v28 = a2;
      v29 = 2048;
      v30 = a5;
      v31 = 2048;
      v32 = a3;
      _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid client registration. RealtimeContext[%p] clientContext[%p] callback[%p] sinkObject[%p]", buf, 0x44u);
    }
  }
}

void VCAudioPowerSpectrumSource_UnregisterAudioPowerSpectrumSink(CMSimpleQueueRef *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v4 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A00401D15B2DDuLL);
    v12 = v4;
    v4[1] = a2;
    v4[3] = 0;
    *(v4 + 8) = 2;
    v5 = CMSimpleQueueEnqueue(a1[4], v4);
    if (v5)
    {
      v6 = v5;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v11 = a1[4];
          *buf = 136316930;
          v14 = v7;
          v15 = 2080;
          v16 = "VCAudioPowerSpectrumSource_UnregisterAudioPowerSpectrumSink";
          v17 = 1024;
          v18 = 188;
          v19 = 2048;
          v20 = v4;
          v21 = 2048;
          v22 = a1;
          v23 = 2048;
          v24 = a2;
          v25 = 2048;
          v26 = v11;
          v27 = 1024;
          v28 = v6;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to enqueue client=%p realtimeContext=%p clientContext=%p queue=%p status=%d", buf, 0x4Au);
        }
      }

      VCAudioPowerSpectrumSource_FreeClient(&v12);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v14 = v9;
      v15 = 2080;
      v16 = "VCAudioPowerSpectrumSource_UnregisterAudioPowerSpectrumSink";
      v17 = 1024;
      v18 = 178;
      v19 = 2048;
      v20 = a1;
      v21 = 2048;
      v22 = a2;
      _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid client unregistration: RealtimeContext[%p] clientContext[%p]", buf, 0x30u);
    }
  }
}

const __CFDictionary *VCMicrophonePreferencesCMS_GetBuiltInMicPortDictionaryFromSelectableInputsArray(const void *a1)
{
  if (!a1 || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMicrophonePreferencesCMS_GetBuiltInMicPortDictionaryFromSelectableInputsArray_cold_2();
      }
    }

    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_9:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMicrophonePreferencesCMS_GetBuiltInMicPortDictionaryFromSelectableInputsArray_cold_1();
      }
    }

    return 0;
  }

  v4 = Count;
  v5 = 0;
  v6 = *MEMORY[0x1E69B0648];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
    if (ValueAtIndex)
    {
      v8 = ValueAtIndex;
      v9 = CFDictionaryGetTypeID();
      if (v9 == CFGetTypeID(v8))
      {
        CFDictionaryGetValue(v8, v6);
        if (FigCFEqual())
        {
          return v8;
        }
      }
    }

    if (v4 == ++v5)
    {
      goto LABEL_9;
    }
  }
}

BOOL VCMicrophonePreferencesCMS_GetDataSourcesFromPortDictionary(const void *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1 || (TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (result)
    {
      VCMicrophonePreferencesCMS_GetDataSourcesFromPortDictionary_cold_1();
      return 0;
    }

    return result;
  }

  if (!a2 || !a3)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (result)
    {
      valuePtr = 136316162;
      v27 = v21;
      v28 = 2080;
      v29 = "VCMicrophonePreferencesCMS_GetDataSourcesFromPortDictionary";
      v30 = 1024;
      v31 = 48;
      v32 = 2048;
      v33 = a2;
      v34 = 2048;
      v35 = a3;
      _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, " [%s] %s:%d frontDataSource(%p) or backDataSource(%p) == NULL", &valuePtr, 0x30u);
      return 0;
    }

    return result;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E69B05F0]);
  if (!Value)
  {
LABEL_31:
    v11 = 0;
    goto LABEL_32;
  }

  v8 = CFArrayGetTypeID();
  if (v8 != CFGetTypeID(Value) || (Count = CFArrayGetCount(Value), Count < 1))
  {
    Value = 0;
    goto LABEL_31;
  }

  v10 = Count;
  v25 = 0;
  v11 = 0;
  v12 = 0;
  v13 = *MEMORY[0x1E69B0568];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Value, v12);
    if (!ValueAtIndex)
    {
      goto LABEL_20;
    }

    v15 = ValueAtIndex;
    v16 = CFDictionaryGetTypeID();
    if (v16 != CFGetTypeID(v15))
    {
      goto LABEL_20;
    }

    v17 = CFDictionaryGetValue(v15, v13);
    if (!v17)
    {
      goto LABEL_20;
    }

    v18 = v17;
    v19 = CFGetTypeID(v17);
    if (v19 != CFNumberGetTypeID())
    {
      goto LABEL_20;
    }

    valuePtr = 0;
    CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr);
    if (valuePtr == 1718775412)
    {
      v25 = v15;
      if (!v11)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (valuePtr == 1650549611)
      {
        v11 = v15;
      }

      if (!v11)
      {
        goto LABEL_20;
      }
    }

    if (v25)
    {
      break;
    }

LABEL_20:
    ++v12;
  }

  while (v10 != v12);
  Value = v25;
  if (v25 && v11)
  {
    *a2 = v25;
    *a3 = v11;
    return 1;
  }

LABEL_32:
  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    return 0;
  }

  v23 = VRTraceErrorLogLevelToCSTR();
  v24 = *MEMORY[0x1E6986650];
  result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    valuePtr = 136316162;
    v27 = v23;
    v28 = 2080;
    v29 = "VCMicrophonePreferencesCMS_GetDataSourcesFromPortDictionary";
    v30 = 1024;
    v31 = 79;
    v32 = 2048;
    v33 = Value;
    v34 = 2048;
    v35 = v11;
    _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Did not find both orientations: front = %p, back = %p", &valuePtr, 0x30u);
    return 0;
  }

  return result;
}

__CFDictionary *VCMicrophonePreferencesCMS_CreateSelectedInputDictWithPolarPattern(const __CFDictionary *a1, CFTypeRef cf)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1 && cf)
  {
    v19 = 0;
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID() && (Value = CFDictionaryGetValue(cf, *MEMORY[0x1E69B0570])) != 0 && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFArrayGetTypeID()) && (Count = CFArrayGetCount(v6), Count >= 1))
    {
      v9 = Count;
      v10 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &v19);
        if (v19 != 1869442665)
        {
          break;
        }

        if (v9 == ++v10)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCMicrophonePreferencesCMS_CreateSelectedInputDictWithPolarPattern_cold_1();
        }
      }

      ValueAtIndex = 0;
    }

    v12 = CFDictionaryGetValue(a1, *MEMORY[0x1E69B0610]);
    v13 = CFDictionaryGetValue(cf, *MEMORY[0x1E69B0560]);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v15 = Mutable;
    if (v12)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E69B06A8], v12);
    }

    if (v13)
    {
      CFDictionaryAddValue(v15, *MEMORY[0x1E69B0698], v13);
    }

    if (ValueAtIndex)
    {
      CFDictionaryAddValue(v15, *MEMORY[0x1E69B06A0], ValueAtIndex);
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v19 = 136316162;
        v20 = v16;
        v21 = 2080;
        v22 = "VCMicrophonePreferencesCMS_CreateSelectedInputDictWithPolarPattern";
        v23 = 1024;
        v24 = 112;
        v25 = 2048;
        v26 = a1;
        v27 = 2048;
        v28 = cf;
        _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d inPortDictionary(%p) or inSourceDict(%p) == NULL", &v19, 0x30u);
      }
    }

    return 0;
  }

  return v15;
}

void VCMicrophonePreferencesCMS_ApplyMicrophonePreferences(int a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    v2 = *MEMORY[0x1E695E480];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 3, theDict);
    Mutable = CFArrayCreateMutable(v2, 1, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(Mutable, MutableCopy);
    v5 = *MEMORY[0x1E69B06A0];
    if (CFDictionaryContainsKey(MutableCopy, *MEMORY[0x1E69B06A0]))
    {
      if (CMSessionSetProperty())
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VCMicrophonePreferencesCMS_ApplyMicrophonePreferences_cold_1();
          }
        }
      }

      CFDictionaryRemoveValue(MutableCopy, v5);
    }

    if (CMSessionSetProperty() && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMicrophonePreferencesCMS_ApplyMicrophonePreferences_cold_2();
      }
    }

    CFRelease(MutableCopy);
    CFRelease(Mutable);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCMicrophonePreferencesCMS_ApplyMicrophonePreferences_cold_3();
    }
  }
}

double GKSConnectivitySettings_GetICETimeout()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [+[GKSConnectivitySettings getClientOption:](GKSConnectivitySettings getClientOption:{@"gk-p2p-ice-timeout", "doubleValue"}];
  v2 = v1;
  [v0 drain];
  return v2;
}

double GKSConnectivitySettings_GetNoRemotePacketsTimeout()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [+[GKSConnectivitySettings getClientOption:](GKSConnectivitySettings getClientOption:{@"gk-p2p-remote-packets-timeout", "doubleValue"}];
  v2 = v1;
  [v0 drain];
  return v2;
}

double GKSConnectivitySettings_GetNetworkConditionsTimeout()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [+[GKSConnectivitySettings getClientOption:](GKSConnectivitySettings getClientOption:{@"gk-p2p-network-conditions-timeout", "doubleValue"}];
  v2 = v1;
  [v0 drain];
  return v2;
}

double GKSConnectivitySettings_GetMinQueueSizeOverride5G()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [+[GKSConnectivitySettings getClientOption:](GKSConnectivitySettings getClientOption:{@"gk-min-jitter-queue-size-5g", "doubleValue"}];
  v2 = v1;
  [v0 drain];
  return v2;
}

uint64_t GKSConnectivitySettings_GetDynamicNackTuning(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = [GKSConnectivitySettings getClientOption:@"vc-nack-generator-dynamic-nack-tuning-enabled"];
  if (v3)
  {
    a1 = [v3 BOOLValue];
  }

  [v2 drain];
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return [v8 countByEnumeratingWithState:v9 - 144 objects:va count:16];
}

double _VCRedundancyControlAlgorithmVideo_ApplyEnvelope(double *a1, int a2, double a3)
{
  v3 = dbl_1DBD45A70[a2 == 10];
  if (*a1 < a3)
  {
    v3 = 0.666666667;
  }

  result = *a1 * (1.0 - v3) + a3 * v3;
  *a1 = result;
  return result;
}

uint64_t _VCRedundancyControlAlgorithmVideo_GetRedundancyLevelFromPLR(double a1)
{
  if (a1 < 0.05)
  {
    return 0;
  }

  if (a1 < 2.0)
  {
    return 25;
  }

  if (a1 < 5.0)
  {
    return 50;
  }

  if (a1 >= 30.0)
  {
    v2 = 300;
  }

  else
  {
    v2 = 200;
  }

  if (a1 >= 20.0)
  {
    return v2;
  }

  else
  {
    return 100;
  }
}

void VCRateControlProbingSequenceController_SetMode(uint64_t a1, int a2)
{
  if (a1)
  {
    *(a1 + 8) = a2;
  }

  else
  {
    VCRateControlProbingSequenceController_SetMode_cold_1();
  }
}

void VCRateControlProbingSequenceController_SetRateSharingClientID(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2 < 0)
    {
      VCRateControlProbingSequenceController_SetRateSharingClientID_cold_1();
    }

    else
    {
      *(a1 + 12) = a2;
    }
  }

  else
  {
    VCRateControlProbingSequenceController_SetRateSharingClientID_cold_2();
  }
}

uint64_t VCRateControlProbingSequenceController_GetProbingSequenceID(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 20);
  }

  VCRateControlProbingSequenceController_GetProbingSequenceID_cold_1(&v2);
  return v2;
}

uint64_t VCRateControlProbingSequenceController_GetProbingSequenceSize(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 16);
  }

  VCRateControlProbingSequenceController_GetProbingSequenceSize_cold_1(&v2);
  return v2;
}

uint64_t VCRateControlProbingSequenceController_ShouldRequestProbingSequence(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 8) == 12)
      {
        v4 = *(a1 + 32);
        LOWORD(a4) = *(a2 + 12);
        v5 = *&a4;
        if (v4 == 0.0)
        {
          v6 = v5;
        }

        else
        {
          v6 = v5 * 0.1 + v4 * 0.9;
        }

        *(a1 + 32) = v6;
        v7 = ((1000 * *(a2 + 32)) * 0.002 / v6 * 0.125 + 1.0);
        if (v7 <= 0xA)
        {
          v7 = 10;
        }

        *(a1 + 16) = v7;
        v8 = *(a1 + 24) + 1;
        *(a1 + 24) = v8;
        if (v8 >= 0xA && *(a1 + 12) % 0xAu == v8 % 0xA)
        {
          ++*(a1 + 20);
          return 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        VCRateControlProbingSequenceController_ShouldRequestProbingSequence_cold_1(a1 + 8, &v10);
        return v10;
      }
    }

    else
    {
      VCRateControlProbingSequenceController_ShouldRequestProbingSequence_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    VCRateControlProbingSequenceController_ShouldRequestProbingSequence_cold_3(&v12);
    return v12;
  }
}

uint64_t _VCScreenCaptureVirtualDisplay_conduitPushFrame(uint64_t result)
{
  v1 = *(result + 192);
  if (v1)
  {
    return v1(*(result + 184));
  }

  return result;
}

void OUTLINED_FUNCTION_6_6()
{
  *v2 = v3;
  *v1 = 0;
  *v0 = 0;
}

void OUTLINED_FUNCTION_29_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x1Cu);
}

void _VCAudioStreamGroup_ApplyAudioPlayoutDelay(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 176);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 384);
      v7 = FourccToCStr(*(a1 + 312));
      v8 = 136316674;
      v9 = v4;
      v10 = 2080;
      v11 = "_VCAudioStreamGroup_ApplyAudioPlayoutDelay";
      v12 = 1024;
      v13 = 714;
      v14 = 2048;
      v15 = v6;
      v16 = 2048;
      v17 = a1;
      v18 = 2080;
      v19 = v7;
      v20 = 1024;
      v21 = v2 != 0;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Apply audioPlayoutDelay=%f on streamGroup=%p streamGroupID=%s streamsConfigured=%d", &v8, 0x40u);
    }
  }

  for (; v2; v2 = *v2)
  {
    VCAudioStream_SetAudioPlayoutDelay(v2[5], *(a1 + 384), v3);
  }
}

id *VCAudioStreamGroup_ProcessAudioSamples(uint64_t a1, uint64_t a2)
{
  v4 = CMSimpleQueueDequeue(*(a1 + 344));
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = *v5;
      if (*v5 == 1)
      {
        _VCAudioStreamGroup_AddSyncDestination(a1, v5[1]);
        v6 = *v5;
      }

      if (v6 == 2)
      {
        _VCAudioStreamGroup_RemoveSyncDestination(a1, v5[1]);
      }

      VCMemoryPool_Free(*(a1 + 352), v5);
      v5 = CMSimpleQueueDequeue(*(a1 + 344));
    }

    while (v5);
  }

  ++*(a1 + 340);
  result = (*(a1 + 320))(*(a1 + 304), a2);
  if (*(a1 + 336) == 1)
  {
    v8 = *(a1 + 328);

    return VCAudioPowerSpectrumSource_PushAudioSamples(v8, a2);
  }

  return result;
}

uint64_t _VCAudioStreamGroup_AddSyncDestination(uint64_t a1, const void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 192);
  if (v4)
  {
    while (*v4 != a2)
    {
      v4 = v4[2];
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    _VCAudioStreamGroup_AddSyncDestination_cold_1(a2, a1);
    return v13;
  }

LABEL_4:
  v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x10A0040319E9F20uLL);
  if (!v5)
  {
    _VCAudioStreamGroup_AddSyncDestination_cold_2(&v13);
    return v13;
  }

  v6 = v5;
  *(v5 + 1) = VCMediaStreamGroup_ExternalRenderLatency(a2);
  if (a2)
  {
    v7 = CFRetain(a2);
  }

  else
  {
    v7 = 0;
  }

  *v6 = v7;
  v6[2] = *(a1 + 192);
  *(a1 + 192) = v6;
  _VCAudioStreamGroup_ComputeAndApplyAudioPlayoutDelay(a1);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *v6;
      v11 = v6[1];
      v13 = 136316418;
      v14 = v8;
      v15 = 2080;
      v16 = "_VCAudioStreamGroup_AddSyncDestination";
      v17 = 1024;
      v18 = 749;
      v19 = 2048;
      v20 = v10;
      v21 = 2048;
      v22 = a1;
      v23 = 2048;
      v24 = v11;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Added syncDestination[%p] from list, on streamGroup[%p]. externalRenderLatency=%f", &v13, 0x3Au);
    }
  }

  return 1;
}

uint64_t _VCAudioStreamGroup_RemoveSyncDestination(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 192);
  v3 = *(a1 + 192);
  if (!v3)
  {
    return 0;
  }

  v5 = *(a1 + 192);
  while (*v5 != a2)
  {
    v5 = v5[2];
    if (!v5)
    {
      return 0;
    }
  }

  if (v3 != v5)
  {
    do
    {
      v7 = v3;
      v3 = v3[2];
    }

    while (v3 != v5);
    v2 = v7 + 2;
  }

  *v2 = v3[2];
  _VCAudioStreamGroup_ComputeAndApplyAudioPlayoutDelay(a1);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *v5;
      v11 = 136316162;
      v12 = v8;
      v13 = 2080;
      v14 = "_VCAudioStreamGroup_RemoveSyncDestination";
      v15 = 1024;
      v16 = 763;
      v17 = 2048;
      v18 = v10;
      v19 = 2048;
      v20 = a1;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Removed syncDestination[%p] from list, on streamGroup[%p]", &v11, 0x30u);
    }
  }

  if (*v5)
  {
    CFRelease(*v5);
    *v5 = 0;
  }

  free(v5);
  return 1;
}

void _VCAudioStreamGroup_ComputeAndApplyAudioPlayoutDelay(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (v1)
  {
    v2 = 0.0;
    do
    {
      if (v2 < *(v1 + 8))
      {
        v2 = *(v1 + 8);
      }

      v1 = *(v1 + 16);
    }

    while (v1);
  }

  else
  {
    v2 = 0.0;
  }

  if (*(a1 + 384) != v2)
  {
    *(a1 + 384) = v2;
    _VCAudioStreamGroup_ApplyAudioPlayoutDelay(a1);
  }
}

uint64_t VCMediaAnalyzer_PushSampleBuffer(uint64_t a1, int a2, CFTypeRef cf)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (v3 == 1)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    v9[3] = v5;
    v6 = *(a1 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCMediaAnalyzer_PushSampleBuffer_block_invoke;
    block[3] = &unk_1E85F3868;
    block[4] = a1;
    block[5] = v9;
    dispatch_async(v6, block);
    _Block_object_dispose(v9, 8);
  }

  return v3;
}

void DynamicStoreCallbackForWifiChanges(const __SCDynamicStore *a1, CFArrayRef theArray, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a3;
    if (a3)
    {
      if (CFArrayGetCount(theArray) < 1)
      {
        return;
      }

      v6 = 0;
      v29 = 0;
      v28 = v3;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
            *buf = 136316162;
            v31 = v8;
            v32 = 2080;
            v33 = "DynamicStoreCallbackForWifiChanges";
            v34 = 1024;
            v35 = 98;
            v36 = 1024;
            *v37 = v6;
            *&v37[4] = 2080;
            *&v37[6] = CStringPtr;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DynamicStoreCallbackForWifiChanges: key[%d]=%s", buf, 0x2Cu);
          }
        }

        v11 = SCDynamicStoreCopyValue(a1, ValueAtIndex);
        v12 = v11;
        if (!ValueAtIndex)
        {
          break;
        }

        v13 = objc_autoreleasePoolPush();
        v14 = [(__CFString *)ValueAtIndex componentsSeparatedByString:@"/"];
        if ([v14 count] >= 2 && objc_msgSend(objc_msgSend(v14, "lastObject"), "isEqualToString:", @"LinkIssues"))
        {
          v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v14, "count") - 2}];
          v16 = [v12 objectForKeyedSubscript:@"TimeStamp"];
          v27 = [v12 objectForKeyedSubscript:@"ModuleID"];
          v17 = [v12 objectForKeyedSubscript:@"Info"];
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v26 = v17;
            v18 = VRTraceErrorLogLevelToCSTR();
            v19 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v21 = "<nil>";
              if (v15)
              {
                v21 = [objc_msgSend(v15 "description")];
              }

              v25 = v21;
              v22 = "<nil>";
              if (v16)
              {
                v22 = [objc_msgSend(v16 "description")];
              }

              v23 = "<nil>";
              if (v27)
              {
                v23 = [objc_msgSend(v27 "description")];
              }

              v24 = "<nil>";
              if (v26)
              {
                v24 = [objc_msgSend(v26 "description")];
              }

              *buf = 136317442;
              v31 = v18;
              v32 = 2080;
              v33 = "checkForLinkIssues";
              v34 = 1024;
              v35 = 63;
              v36 = 2080;
              *v37 = v25;
              *&v37[8] = 2080;
              *&v37[10] = "TimeStamp";
              v38 = 2080;
              v39 = v22;
              v40 = 2080;
              v41 = "ModuleID";
              v42 = 2080;
              v43 = v23;
              v44 = 2080;
              v45 = "Info";
              v46 = 2080;
              v47 = v24;
              _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d Link issues with interface %s \n %s=%s \n %s=%s \n %s=%s", buf, 0x62u);
            }
          }

          v20 = 1;
          v3 = v28;
        }

        else
        {
          v20 = 0;
        }

        objc_autoreleasePoolPop(v13);
        if (v12)
        {
          goto LABEL_16;
        }

LABEL_17:
        if ((v20 & 1) != 0 || !CFStringHasSuffix(ValueAtIndex, @"/IPv4") && !CFStringHasSuffix(ValueAtIndex, @"/IPv6"))
        {
          goto LABEL_27;
        }

        if (CFStringHasPrefix(ValueAtIndex, @"State:/Network/Interface/pdp_ip"))
        {
          [v3 set_isCellUp:v12 != 0];
LABEL_26:
          v29 = 1;
          goto LABEL_27;
        }

        if (CFStringHasPrefix(ValueAtIndex, @"State:/Network/Interface/"))
        {
          [v3 set_isWifiUp:v12 != 0];
          goto LABEL_26;
        }

LABEL_27:
        if (CFArrayGetCount(theArray) <= ++v6)
        {
          if (v29)
          {
            [objc_msgSend(v3 "interfaceListenerDelegate")];
          }

          return;
        }
      }

      v20 = 0;
      if (!v11)
      {
        goto LABEL_17;
      }

LABEL_16:
      CFRelease(v12);
      goto LABEL_17;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      DynamicStoreCallbackForWifiChanges_cold_1();
    }
  }
}

uint64_t VCMediaNegotiationBlobBandwidthSettingsReadFrom(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
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
        v31 = 0;
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

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) == 1)
      {
        v25 = 0;
        v26 = 0;
        v15 = 0;
        while (1)
        {
          v33 = 0;
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

          v15 |= (v33 & 0x7F) << v25;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v18 = v26++ > 8;
          if (v18)
          {
            v19 = 0;
            v20 = &OBJC_IVAR___VCMediaNegotiationBlobBandwidthSettings__configuration;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___VCMediaNegotiationBlobBandwidthSettings__configuration;
        goto LABEL_52;
      }

      if (v12 == 3)
      {
        break;
      }

      if (v12 == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v34 = 0;
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

          v15 |= (v34 & 0x7F) << v13;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v18 = v14++ > 8;
          if (v18)
          {
            v19 = 0;
            v20 = &OBJC_IVAR___VCMediaNegotiationBlobBandwidthSettings__maxBandwidth;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___VCMediaNegotiationBlobBandwidthSettings__maxBandwidth;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = 0;
    v22 = 0;
    v15 = 0;
    *(a1 + 20) |= 1u;
    while (1)
    {
      v32 = 0;
      v23 = [a2 position] + 1;
      if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v32 & 0x7F) << v21;
      if ((v32 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v18 = v22++ > 8;
      if (v18)
      {
        v19 = 0;
        v20 = &OBJC_IVAR___VCMediaNegotiationBlobBandwidthSettings__configurationExtension;
        goto LABEL_55;
      }
    }

    v20 = &OBJC_IVAR___VCMediaNegotiationBlobBandwidthSettings__configurationExtension;
LABEL_52:
    if ([a2 hasError])
    {
      v19 = 0;
    }

    else
    {
      v19 = v15;
    }

LABEL_55:
    *(a1 + *v20) = v19;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

BOOL VCRateControlUtil_CalculateCongestionMetrics(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v19 = 136316162;
      v20 = v17;
      v21 = 2080;
      v22 = "VCRateControlUtil_CalculateCongestionMetrics";
      v23 = 1024;
      v24 = 19;
      v25 = 2048;
      v26 = a1;
      v27 = 2048;
      v28 = a2;
      _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid parameter. owrdList=%p config=%p", &v19, 0x30u);
    }

    return 0;
  }

  if (a4 >= 8.0)
  {
    return 0;
  }

  v8 = *(a1 + 1604);
  if (a4 > 0.0 && a5 - *(a1 + 8 * v8) < *(a2 + 296))
  {
    return 0;
  }

  v9 = *(a2 + 312);
  v10 = *(a1 + 1608);
  if (v10)
  {
    v8 = (v8 + 1) % v9;
    *(a1 + 1604) = v8;
  }

  v11 = (a1 + 8 * v8);
  v11[100] = a4;
  *v11 = a5;
  if (v10 < v9)
  {
    ++v10;
  }

  *(a1 + 1608) = v10;
  if (v8 == *(a1 + 1600) && v10 != 1)
  {
    *(a1 + 1600) = (v8 + 1) % v9;
  }

  v12 = *(a2 + 316);
  if (v10 < v12)
  {
    return 0;
  }

  _VCRateControlUtil_CalculateNOWRDDetailed(a1, v9, v12, a3, *(a2 + 280), *(a2 + 304));
  *(a1 + 1616) = v13;
  _VCRateControlUtil_CalculateNOWRDDetailed(a1, *(a2 + 312), *(a2 + 316), a3, *(a2 + 288), *(a2 + 304));
  *(a1 + 1624) = v14;
  v15 = *(a1 + 1632) + *(a1 + 1616) * (*(a1 + 8 * *(a1 + 1604)) - *(a1 + 8 * ((*(a1 + 1604) + *(a2 + 312) - 1) % *(a2 + 312)))) / *(a2 + 280);
  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  *(a1 + 1632) = v15;
  return 1;
}

void _VCRateControlUtil_CalculateNOWRDDetailed(uint64_t a1, unsigned int a2, int a3, int a4, double a5, double a6)
{
  v55 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 1604);
  v12 = *(a1 + 1600);
  v13 = (v11 - a3 + a2 + 1) % a2;
  if (v13 == v12)
  {
LABEL_8:
    if (!a4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
    while (1)
    {
      if (*(a1 + 8 * v11) - *(a1 + 8 * v13) > a5)
      {
        v12 = v13;
        goto LABEL_8;
      }

      v15 = ++v14;
      if (v14 > a2)
      {
        break;
      }

      v13 = (v13 + a2 - 1) % a2;
      if (v13 == v12)
      {
        goto LABEL_8;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 1600);
        v19 = *(a1 + 1604);
        v20 = *(a1 + 8 * v13);
        v21 = *(a1 + 8 * v19);
        v35 = 136317442;
        v36 = v16;
        v37 = 2080;
        v38 = "_VCRateControlUtil_CalculateNOWRDDetailed";
        v39 = 1024;
        v40 = 86;
        v41 = 1024;
        v42 = v15;
        v43 = 1024;
        v44 = v13;
        v45 = 1024;
        v46 = v18;
        v47 = 1024;
        v48 = v19;
        v49 = 2048;
        v50 = v20;
        v51 = 2048;
        v52 = v21;
        v53 = 2048;
        v54 = a5;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d calculateNOWRDWithDuration exceeded max possible iterations iterationCount=%d first=%d frontIndex=%d rearIndex=%d time@first=%f time@rearIndex=%f  duration=%f", &v35, 0x52u);
      }
    }

    v12 = *(a1 + 1600);
    v11 = *(a1 + 1604);
    if (!a4)
    {
      goto LABEL_15;
    }
  }

  if (*(a1 + 8 * v11) - *(a1 + 8 * v12) < a6)
  {
    *(a1 + 1640) = 1;
    return;
  }

LABEL_15:
  v22 = __OFSUB__(v11, v12);
  v23 = v11 - v12;
  if ((v23 < 0) ^ v22 | (v23 == 0))
  {
    v24 = a2;
  }

  else
  {
    v24 = 0;
  }

  v25 = v23 + v24;
  if (v23 + v24 <= 0x7FFFFFFD)
  {
    v26 = 0;
    v27 = (v12 + (v25 + 1) / 2) % a2;
    v28 = (v25 + 2) >> 1;
    v29 = a1 + 800;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    do
    {
      v33 = v33 + *(v29 + 8 * (v12 % a2));
      v34 = (v26 + v27) % a2;
      v32 = v32 + *(v29 + 8 * v34);
      v31 = v31 + *(a1 + 8 * (v12 % a2));
      v30 = v30 + *(a1 + 8 * v34);
      ++v26;
      ++v12;
      --v28;
    }

    while (v28);
  }

  *(a1 + 1640) = 0;
}

const void *VCMediaRecorderHistory_GetFigFormat(uint64_t a1, uint64_t a2, int a3)
{
  SampleFormat = VCAudioBufferList_GetSampleFormat(a2);
  v6 = SampleFormat;
  v7 = 224;
  if (a3)
  {
    v7 = 176;
  }

  v8 = a1 + v7;
  v9 = *(a1 + v7);
  if (!v9)
  {
    goto LABEL_6;
  }

  if (memcmp(SampleFormat, (v8 + 8), 0x28uLL))
  {
    CFRelease(v9);
    *v8 = 0;
LABEL_6:
    v10 = *v6;
    v11 = v6[1];
    *(v8 + 40) = *(v6 + 4);
    *(v8 + 24) = v11;
    *(v8 + 8) = v10;
    CMAudioFormatDescriptionCreate(*MEMORY[0x1E695E480], v6, 0, 0, 0, 0, 0, v8);
    return *v8;
  }

  return v9;
}

void VCMediaRecorderHistory_AddAudioSampleBuffer(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v5 = a4;
      FigFormat = VCMediaRecorderHistory_GetFigFormat(a1, a2, a4);
      if (FigFormat)
      {
        SampleBufferWithFormat = VCAudioBufferList_CreateSampleBufferWithFormat(a2, FigFormat, *(a1 + 168));
        if (SampleBufferWithFormat)
        {
          v10 = *(a1 + 8);
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __VCMediaRecorderHistory_AddAudioSampleBuffer_block_invoke;
          v11[3] = &unk_1E85F4C28;
          v13 = v5;
          v11[4] = a1;
          v11[5] = SampleBufferWithFormat;
          v12 = a3;
          dispatch_async(v10, v11);
        }

        else
        {
          VCMediaRecorderHistory_AddAudioSampleBuffer_cold_1();
        }
      }

      else
      {
        VCMediaRecorderHistory_AddAudioSampleBuffer_cold_2();
      }
    }

    else
    {
      VCMediaRecorderHistory_AddAudioSampleBuffer_cold_3();
    }
  }

  else
  {
    VCMediaRecorderHistory_AddAudioSampleBuffer_cold_4();
  }
}

void VCMediaRecorderHistory_AddLocalVideoSampleBuffer(uint64_t a1, CMSampleBufferRef sbuf, char a3, int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1 && sbuf)
  {
    if (*(a1 + 161) == 1)
    {
      ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
      *(a1 + 156) = CVPixelBufferGetWidth(ImageBuffer);
      *(a1 + 152) = CVPixelBufferGetHeight(ImageBuffer);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 152);
          v11 = *(a1 + 156);
          LODWORD(buf.value) = 136316162;
          *(&buf.value + 4) = v9;
          LOWORD(buf.flags) = 2080;
          *(&buf.flags + 2) = "_VCMediaRecorderHistory_UpdateCaptureSizesWithFirstFrame";
          HIWORD(buf.epoch) = 1024;
          v29 = 1276;
          v30 = 1024;
          v31 = v11;
          v32 = 1024;
          v33 = v12;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d captureWidth=%d, captureHeight=%d", &buf, 0x28u);
        }
      }

      VCMediaRecorderHistory_UpdateResizeFlag(a1);
    }

    sampleBufferOut = 0;
    if (*(a1 + 280) == 1)
    {
      v13 = CMSampleBufferCreateCopy(*(a1 + 272), sbuf, &sampleBufferOut);
      if (v13)
      {
        VCMediaRecorderHistory_AddLocalVideoSampleBuffer_cold_2(sbuf, v13);
        return;
      }

      value = *MEMORY[0x1E6960C70];
      v15 = *(MEMORY[0x1E6960C70] + 8);
      epoch = *(MEMORY[0x1E6960C70] + 16);
      v17 = CMSampleBufferGetImageBuffer(sampleBufferOut);
      _VCMediaRecorderHistory_SetVisibleRect(a1, v17);
      _VCMediaRecorderHistory_EmitSetVisibleRectSignpost(sampleBufferOut);
      ResizeFrame = 0;
      v19 = sampleBufferOut;
    }

    else
    {
      v20 = CMSampleBufferGetImageBuffer(sbuf);
      Width = CVPixelBufferGetWidth(v20);
      Height = CVPixelBufferGetHeight(v20);
      if ((VCMediaRecorderUtil_PixelBufferPoolMatchDimensions(*(a1 + 128), Width, Height) & 1) == 0)
      {
        CVPixelBufferPoolRelease(*(a1 + 128));
        VCMediaRecorderUtil_SetupBufferPool(@"AVConference:MediaRecorderCopy", (a1 + 128), Width, Height);
      }

      ResizeFrame = VCMediaRecorderUtil_CreateResizeFrame(v20, *(a1 + 144), *(a1 + 128));
      CMSampleBufferGetPresentationTimeStamp(&buf, sbuf);
      if (!ResizeFrame)
      {
        VCMediaRecorderHistory_AddLocalVideoSampleBuffer_cold_1();
        return;
      }

      v19 = 0;
      value = buf.value;
      epoch = buf.epoch;
      v15 = *&buf.timescale;
    }

    v23 = *(a1 + 8);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __VCMediaRecorderHistory_AddLocalVideoSampleBuffer_block_invoke;
    v24[3] = &unk_1E85F4C50;
    v24[4] = a1;
    v24[5] = ResizeFrame;
    v24[8] = v15;
    v24[9] = epoch;
    v24[6] = v19;
    v24[7] = value;
    v26 = a3;
    v25 = a4;
    dispatch_async(v23, v24);
  }
}

void _VCMediaRecorderHistory_SetVisibleRect(uint64_t a1, __CVBuffer *a2)
{
  os_unfair_lock_lock((a1 + 284));
  [*(a1 + 96) ratio];
  v5 = v4;
  [*(a1 + 96) ratio];
  v7 = v6;
  os_unfair_lock_unlock((a1 + 284));
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {

    VideoUtil_SetVisibleRectAttachment(a2, 2, v5, v7);
  }
}

void _VCMediaRecorderHistory_EmitSetVisibleRectSignpost(opaqueCMSampleBuffer *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  memset(&v1, 170, sizeof(v1));
  CMSampleBufferGetPresentationTimeStamp(&v1, a1);
  if (*MEMORY[0x1E6986658] == 1)
  {
    _VCMediaRecorderHistory_EmitSetVisibleRectSignpost_cold_1(&v1);
  }
}

void VCMediaRecorderHistory_PrepareVideoSampleBuffer(uint64_t a1, CMSampleBufferRef sbuf)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 && sbuf)
  {
    if (*(a1 + 280) == 1)
    {
      ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
      _VCMediaRecorderHistory_SetVisibleRect(a1, ImageBuffer);

      _VCMediaRecorderHistory_EmitSetVisibleRectSignpost(sbuf);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "VCMediaRecorderHistory_PrepareVideoSampleBuffer";
      v11 = 1024;
      v12 = 297;
      v13 = 2048;
      v14 = a1;
      v15 = 2048;
      v16 = sbuf;
      _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid parameter(s): history=%p, sampleBuffer=%p", &v7, 0x30u);
    }
  }
}

void VCMediaRecorderHistory_UpdateTargetScreenAttributes(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 284));
    v4 = *(a1 + 96);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      v5 = CFRetain(a2);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 96) = v5;
    os_unfair_lock_unlock((a1 + 284));
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [a2 ratio];
        v9 = v8;
        [a2 ratio];
        v11 = 136316162;
        v12 = v6;
        v13 = 2080;
        v14 = "VCMediaRecorderHistory_UpdateTargetScreenAttributes";
        v15 = 1024;
        v16 = 318;
        v17 = 2048;
        v18 = v9;
        v19 = 2048;
        v20 = v10;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d targetScreenAttributes ratio=%fx%f", &v11, 0x30u);
      }
    }

    VCMediaRecorderHistory_UpdateResizeFlag(a1);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCMediaRecorderHistory_UpdateTargetScreenAttributes_cold_1();
    }
  }
}

void VCMediaRecorderHistory_UpdateResizeFlag(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 284));
  [*(a1 + 96) ratio];
  v3 = v2;
  [*(a1 + 96) ratio];
  v5 = v4;
  os_unfair_lock_unlock((a1 + 284));
  if (v5 == 0.0)
  {
    VCMediaRecorderHistory_UpdateResizeFlag_cold_3();
  }

  else
  {
    v6 = *(a1 + 156);
    if (v6)
    {
      v7 = *(a1 + 152);
      if (v7)
      {
        v8 = v3;
        v9 = v8 / v5;
        *(a1 + 160) = vabds_f32(v9, v6 / v7) >= 0.0001 && vabds_f32(v9, v7 / v6) >= 0.0001;
      }

      else
      {
        VCMediaRecorderHistory_UpdateResizeFlag_cold_1();
      }
    }

    else
    {
      VCMediaRecorderHistory_UpdateResizeFlag_cold_2();
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 160);
      v13 = 136315906;
      v14 = v10;
      v15 = 2080;
      v16 = "VCMediaRecorderHistory_UpdateResizeFlag";
      v17 = 1024;
      v18 = 349;
      v19 = 1024;
      v20 = v12;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Should resize frames for media recording:%d", &v13, 0x22u);
    }
  }
}

void VCMediaRecorderHistory_StopProcessingAllRequests(uint64_t a1)
{
  v2[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 8);
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __VCMediaRecorderHistory_StopProcessingAllRequests_block_invoke;
    v2[3] = &unk_1E85F3778;
    v2[4] = a1;
    dispatch_async(v1, v2);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCMediaRecorderHistory_StopProcessingAllRequests_cold_1();
    }
  }
}

void VCMediaRecorderHistory_ClearHistoryBuffer(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCMediaRecorderHistory_ClearHistoryBuffer_block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = a1;
    dispatch_async(v1, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v6 = v2;
      v7 = 2080;
      v8 = "VCMediaRecorderHistory_ClearHistoryBuffer";
      v9 = 1024;
      v10 = 691;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", buf, 0x1Cu);
    }
  }
}

void VCEmulatedNetworkAlgorithm_UpdateIndexWithIntervalArray(void *a1, int *a2, double *a3, int a4, double a5)
{
  if (a1 && a2 && a3 && (v10 = *a2, v10 < [a1 count]))
  {
    if (*a3 == 0.0)
    {
      *a2 = 0;
    }

    else
    {
      v13 = a5 - *a3;
      [objc_msgSend(a1 objectAtIndexedSubscript:{*a2), "doubleValue"}];
      if (v13 <= v14)
      {
        return;
      }

      *a2 = (*a2 + 1) % a4;
    }

    *a3 = a5;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCEmulatedNetworkAlgorithm_UpdateIndexWithIntervalArray_cold_1(v11, v12);
    }
  }
}

uint64_t VCMediaNegotiationBlobMomentsSettingsReadFrom(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        v35 = 0;
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

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          v29 = 0;
          v30 = 0;
          v15 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v37 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v37 & 0x7F) << v29;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v18 = v30++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___VCMediaNegotiationBlobMomentsSettings__supportedImageTypes;
              goto LABEL_67;
            }
          }

          v20 = &OBJC_IVAR___VCMediaNegotiationBlobMomentsSettings__supportedImageTypes;
          goto LABEL_64;
        }

        if (v12 == 4)
        {
          v21 = 0;
          v22 = 0;
          v15 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v36 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v36 & 0x7F) << v21;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v18 = v22++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___VCMediaNegotiationBlobMomentsSettings__multiwayCapabilities;
              goto LABEL_67;
            }
          }

          v20 = &OBJC_IVAR___VCMediaNegotiationBlobMomentsSettings__multiwayCapabilities;
LABEL_64:
          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

LABEL_67:
          *(a1 + *v20) = v19;
          goto LABEL_68;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v25 = 0;
          v26 = 0;
          v15 = 0;
          while (1)
          {
            v39 = 0;
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

            v15 |= (v39 & 0x7F) << v25;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v18 = v26++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___VCMediaNegotiationBlobMomentsSettings__capabilities;
              goto LABEL_67;
            }
          }

          v20 = &OBJC_IVAR___VCMediaNegotiationBlobMomentsSettings__capabilities;
          goto LABEL_64;
        }

        if (v12 == 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v38 = 0;
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

            v15 |= (v38 & 0x7F) << v13;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v18 = v14++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___VCMediaNegotiationBlobMomentsSettings__supportedVideoCodecs;
              goto LABEL_67;
            }
          }

          v20 = &OBJC_IVAR___VCMediaNegotiationBlobMomentsSettings__supportedVideoCodecs;
          goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_68:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void _VCRateControlAlgorithmSparseNOWRD_Configure(uint64_t a1, const void *a2, int a3)
{
  v33 = *MEMORY[0x1E69E9840];
  memcpy((a1 + 40), a2, 0x400uLL);
  *(a1 + 1169) = 0;
  *(a1 + 5152) = 0;
  *(a1 + 5008) = 0;
  *(a1 + 5056) = *(a1 + 768);
  VCRateControlAlgorithmBasePriv_ResetLossEventBuffer(a1);
  *(a1 + 6412) = 0;
  *(a1 + 6416) = 0;
  *(a1 + 6420) = 0;
  *(a1 + 6432) = *(a1 + 1144);
  if (a3)
  {
    *(a1 + 1088) = 1;
    *(a1 + 1100) = *(a1 + 56);
  }

  *(a1 + 6540) = *(a1 + 419);
  v5 = *(a1 + 1100);
  if (v5 >= *(a1 + 60))
  {
    v5 = *(a1 + 60);
  }

  if (v5 <= *(a1 + 64))
  {
    v5 = *(a1 + 64);
  }

  *(a1 + 1100) = v5;
  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 1120) = *(v6 + 4 * *(a1 + 1100));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 1120);
        v16 = *(a1 + 48);
        v17 = *(v16 + 4 * *(a1 + 64));
        LODWORD(v16) = *(v16 + 4 * *(a1 + 60));
        v18 = *(a1 + 427);
        *buf = 136316674;
        v20 = v13;
        v21 = 2080;
        v22 = "_VCRateControlAlgorithmSparseNOWRD_Configure";
        v23 = 1024;
        v24 = 163;
        v25 = 1024;
        v26 = v15;
        v27 = 1024;
        v28 = v17;
        v29 = 1024;
        v30 = v16;
        v31 = 1024;
        v32 = v18;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Configuring VCRateControl algorithm with targetBitrate=%d, minBitrate=%d, maxBitrate=%d, burstyTraffic=%d", buf, 0x34u);
      }
    }

    VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Configure with targetBitrate=%d, minBitrate=%d, maxBitrate=%d, burstyTraffic=%d", v7, v8, v9, v10, v11, v12, *(a1 + 1120));
  }

  *(a1 + 1168) = 1;
  VCRateControlAlgorithmBasePriv_ResetOWRDList(a1);
}

BOOL _VCRateControlAlgorithmSparseNOWRD_DoRateControl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v137 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*a2 == 1)
  {
    *(a1 + 6464) = *(a2 + 8);
    *(a1 + 6472) = *(a2 + 36);
    *(a1 + 6476) = *(a2 + 28) + *(a2 + 24);
    *(a1 + 6480) = *(a2 + 64);
    *(a1 + 6488) = *(a2 + 80);
    *(a1 + 6496) = *(a2 + 88);
    if (*(a1 + 6540) == 1 && *(a2 + 160) == 8)
    {
      VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Disable baseband adaptation due to FR2 RATType", a3, a4, a5, a6, a7, a8, v79);
    }

    v18 = *(a1 + 419) == 1 && *(a2 + 160) != 8;
    *(a1 + 6540) = v18;
    VCRateControlAlgorithmBasePriv_CheckPaused(a1);
    if (*(a1 + 6540) == 1)
    {
      if (*(a1 + 6488) <= *(a1 + 552) && *(a1 + 6496) <= *(a1 + 568) || *(a1 + 6480) <= *(a1 + 576))
      {
        v20 = 0;
      }

      else
      {
        *(a1 + 1096) |= 0x40u;
        *(a1 + 2928) = 0;
        v20 = 1;
      }

      if (*(a1 + 6480) > *(a1 + 584))
      {
        *(a1 + 1096) |= 0x80u;
        *(a1 + 2928) = 0;
        if (*(a1 + 6488) > *(a1 + 552))
        {
          *(a1 + 6520) = *(a1 + 6464);
        }

LABEL_62:
        if (*(a1 + 1088) && *(a1 + 1144) > 0.0)
        {
          *(a1 + 6504) = 1;
          VCRateControlAlgorithmBasePriv_UpdateCongestionStatusWhenRampDown(a1, *(a1 + 1144));
          v33 = *(a1 + 1100);
          v34 = v33;
          while (*(*(a1 + 48) + 4 * v34) > *(a1 + 6472))
          {
            if (--v34 <= *(a1 + 64))
            {
              LODWORD(v34) = *(a1 + 64);
              break;
            }
          }

          if (v34 < *(a1 + 80))
          {
            v35 = *(a1 + 1144);
            LODWORD(v34) = *(a1 + 1100);
            if (v35 - *(a1 + 6528) > *(a1 + 592))
            {
              LODWORD(v34) = v33 - 1;
              *(a1 + 6528) = v35;
              v33 = *(a1 + 1100);
            }
          }

          if (v34 <= *(a1 + 64))
          {
            v36 = *(a1 + 64);
          }

          else
          {
            v36 = v34;
          }

          if (v33 > v36)
          {
            VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "[%u] Congestion due to baseband!!! New bitrate down to %u", v27, v28, v29, v30, v31, v32, *(a1 + 1132));
            v33 = *(a1 + 1100);
          }

          *(a1 + 1104) = v33;
          *(a1 + 1100) = v36;
          VCRateControlAlgorithmBasePriv_StateChange(a1, 3);
        }

        goto LABEL_81;
      }

      if (*(a1 + 6488) <= *(a1 + 552))
      {
        if (v20)
        {
          goto LABEL_62;
        }
      }

      else
      {
        *(a1 + 6520) = *(a1 + 6464);
        if (v20)
        {
          goto LABEL_62;
        }
      }
    }

    if (*(a1 + 6488) <= *(a1 + 640) && *(a1 + 6480) <= *(a1 + 648) && *(a1 + 6464) - *(a1 + 6520) >= *(a1 + 656))
    {
      *(a1 + 6536) = *(a1 + 96);
    }

LABEL_81:
    *(a1 + 1120) = *(*(a1 + 48) + 4 * *(a1 + 1100));
    if (*(a1 + 6540) == 1)
    {
      VCRateControlMediaController_UpdateBasebandSuggestion(*(a1 + 1064), a2);
    }

    return 1;
  }

  if (v10 != 11)
  {
    if (v10 == 5)
    {
      v11 = *(a2 + 28);
      *(a1 + 2904) = *(a2 + 72);
      *(a1 + 5148) = *(a2 + 40);
      *(a1 + 6448) = *(a2 + 36);
      *(a1 + 5120) = *(a2 + 64);
      v12 = *(a2 + 80);
      *(a1 + 5040) = v12;
      *(a1 + 5096) = v12;
      *(a1 + 5104) = *(a2 + 88);
      *(a1 + 5376) = *(a2 + 96);
      *(a1 + 5380) = *(a2 + 100);
      *(a1 + 1216) = *(a2 + 60);
      *(a1 + 1220) = *(a1 + 1216);
      *(a1 + 5384) = *(a2 + 108);
      *(a1 + 1128) = *(a1 + 5376);
      *(a1 + 5336) = *(a2 + 8);
      v13 = *(a1 + 6456);
      if (v13 == 0.0)
      {
        v14 = *(a1 + 5120);
      }

      else
      {
        v14 = *(a1 + 5120) * 0.1 + v13 * 0.9;
      }

      *(a1 + 6456) = v14;
      if (*(a1 + 1216) < *(*(a1 + 48) + 4 * *(a1 + 88)))
      {
        *(a1 + 1216) = 0;
      }

      if ((*(a1 + 1171) & 1) == 0)
      {
        result = 0;
        *(a1 + 1171) = 1;
        *(a1 + 5328) = v11;
        return result;
      }

      v15 = *(a1 + 5328);
      if (v11 != v15 && (v11 - v15) < 0x7FFFu)
      {
        if (v15 > v11)
        {
          ++*(a1 + 5332);
        }

        *(a1 + 5328) = v11;
        *(a1 + 1144) = VCRateControlAlgorithmBasePriv_GetDoubleTimeFromTimestamp(v11, 0x400u, *(a1 + 5332));
        v16 = VCRateControlAlgorithmBasePriv_CalculateCongestionMetrics(a1, *(a1 + 2904), *(a1 + 1144));
        LODWORD(v16) = *(a1 + 5376);
        LODWORD(v17) = *(a1 + 1120);
        if (*(a1 + 296) * v17 <= *&v16 || *(a1 + 1100) <= *(a1 + 64))
        {
          if (*(a1 + 1169) == 1)
          {
            *(a1 + 1169) = 0;
          }
        }

        else
        {
          *(a1 + 1169) = 1;
        }

        VCRateControlAlgorithmBasePriv_CheckBandwidthOvershoot(a1, *(a1 + 1216));
        VCRateControlAlgorithmBasePriv_UpdateLossEvent(a1);
        VCRateControlAlgorithmBasePriv_CheckPaused(a1);
        if (*(a1 + 1160) == 1 && *(a1 + 1144) - *(a1 + 5352) > *(a1 + 312))
        {
          *(a1 + 1160) = 0;
          *(a1 + 6504) = 0;
        }

        v24 = *(a1 + 1088);
        if (v24 > 1)
        {
          if (v24 == 2)
          {
            if (!_VCRateControlAlgorithmSparseNOWRD_ShouldRampDown(a1))
            {
              if (!_VCRateControlAlgorithmSparseNOWRD_ShouldRampUp(a1))
              {
                goto LABEL_94;
              }

              v38 = _VCRateControlAlgorithmSparseNOWRD_RrampUpTier(a1);
              goto LABEL_91;
            }

LABEL_90:
            v38 = _VCRateControlAlgorithmSparseNOWRD_RampDownTier(a1);
LABEL_91:
            *(a1 + 1100) = v38;
LABEL_92:
            v25 = a1;
            v26 = 3;
            goto LABEL_93;
          }

          if (v24 != 3)
          {
            goto LABEL_83;
          }

          *(a1 + 1092) |= 1u;
          if (_VCRateControlAlgorithmSparseNOWRD_ShouldRampDown(a1))
          {
            *(a1 + 1100) = _VCRateControlAlgorithmSparseNOWRD_RampDownTier(a1);
          }

          if (*(a1 + 1144) - *(a1 + 1152) > *(a1 + 184))
          {
            v25 = a1;
            v26 = 2;
LABEL_93:
            VCRateControlAlgorithmBasePriv_StateChange(v25, v26);
          }
        }

        else
        {
          if (v24)
          {
            if (v24 == 1)
            {
              if (!_VCRateControlAlgorithmSparseNOWRD_ShouldRampDown(a1))
              {
                if (!_VCRateControlAlgorithmSparseNOWRD_ShouldRampUp(a1))
                {
                  goto LABEL_94;
                }

                *(a1 + 1100) = _VCRateControlAlgorithmSparseNOWRD_RrampUpTier(a1);
                if (*(a1 + 1100) != *(a1 + 60))
                {
                  goto LABEL_94;
                }

                goto LABEL_92;
              }

              goto LABEL_90;
            }

LABEL_83:
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                _VCRateControlAlgorithmSparseNOWRD_DoRateControl_cold_1();
              }
            }

            goto LABEL_94;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            log = VRTraceErrorLogLevelToCSTR();
            v37 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v89 = log;
              v90 = 2080;
              v91 = "_VCRateControlAlgorithmSparseNOWRD_DoRateControlWithVCRCStatistics";
              v92 = 1024;
              v93 = 278;
              _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Rate controller is paused", buf, 0x1Cu);
            }
          }
        }

LABEL_94:
        *(a1 + 1120) = *(*(a1 + 48) + 4 * *(a1 + 1100));
        if (*(a1 + 720) == 1)
        {
          v39 = *(a1 + 6412);
          if (v39 > 0xFF)
          {
            *(a1 + 6420) -= *(a1 + 5388 + 4 * *(a1 + 6416));
          }

          else
          {
            *(a1 + 6412) = v39 + 1;
          }

          *(a1 + 6420) += *(a1 + 1100);
          *(a1 + 5388 + 4 * *(a1 + 6416)) = *(a1 + 1100);
          *(a1 + 6416) = (*(a1 + 6416) + 1);
          if (*(a1 + 6412) == 256)
          {
            v40 = 0;
            v41 = 0;
            v42 = *(a1 + 6420) >> 8;
            *(a1 + 6424) = v42;
            v43 = *(a1 + 736);
            v44 = v43 + v42;
            if ((v43 + v42) >= *(a1 + 60))
            {
              v44 = *(a1 + 60);
            }

            v45 = v42 - v43;
            v46 = *(a1 + 6416);
            if (v45 <= *(a1 + 64))
            {
              v45 = *(a1 + 64);
            }

            v47 = 256;
            do
            {
              v48 = *(a1 + 5388 + 4 * v46);
              if (v41 == 1)
              {
                v49 = v40 + 1;
              }

              else
              {
                v49 = v40;
              }

              if (v48 < v45)
              {
                v50 = -1;
              }

              else
              {
                v50 = v41;
              }

              if (v48 >= v45)
              {
                v49 = v40;
              }

              if (v41 == -1)
              {
                ++v40;
              }

              if (v48 > v44)
              {
                v41 = 1;
              }

              else
              {
                v41 = v50;
              }

              if (v48 <= v44)
              {
                v40 = v49;
              }

              LOBYTE(v46) = v46 + 1;
              --v47;
            }

            while (v47);
            *(a1 + 6444) = v40;
            if (*(a1 + 6444) >= *(a1 + 740))
            {
              *(a1 + 6440) = 1;
            }

            else
            {
              *(a1 + 6440) = 0;
              *(a1 + 6432) = *(a1 + 1144);
            }
          }

          if (*(a1 + 6440) == 1)
          {
            v51 = *(a1 + 6432);
            if (v51 != 0.0 && *(a1 + 1144) - v51 > *(a1 + 728))
            {
              *(a1 + 1100) = *(a1 + 6424);
            }
          }
        }

        v52 = *(a1 + 48);
        v53 = *(a1 + 1100);
        v54 = *(v52 + 4 * v53) - *(a2 + 104);
        v55 = *(a1 + 64);
        if (v53 >= v55)
        {
          v56 = *(a1 + 64);
        }

        else
        {
          v56 = *(a1 + 1100);
        }

        v57 = v53 + 1;
        while (v53 > v55)
        {
          v58 = *(v52 - 4 + 4 * v53--);
          --v57;
          if (v58 <= v54)
          {
            goto LABEL_135;
          }
        }

        v57 = v56;
LABEL_135:
        *(a1 + 1120) = *(v52 + 4 * v57);
        if (*(a1 + 5176) == 1)
        {
          v59 = *(a1 + 1136);
          *(a1 + 1136) = v59 + 1;
          if ((v59 & 0xF) == 0 && VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v85 = VRTraceErrorLogLevelToCSTR();
            loga = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v84 = *(a1 + 1144);
              v83 = *(a1 + 5328);
              v82 = *(a1 + 2904);
              v81 = *(a1 + 2912);
              v80 = *(a1 + 2920);
              v60 = *(a1 + 2928);
              v61 = (*(a1 + 5120) * 1000.0);
              if (*(a1 + 1092))
              {
                v62 = 88;
              }

              else
              {
                v62 = 79;
              }

              v63 = *(a1 + 5104);
              v64 = *(a1 + 5040) * 100.0;
              v65 = *(a1 + 5032);
              v66 = *(a1 + 1216) / 0x3E8u;
              v67 = *(a1 + 5376) / 0x3E8u;
              v68 = *(a1 + 1120) / 0x3E8u;
              v69 = *(a1 + 1092);
              v70 = *(a1 + 1096);
              v71 = *(a1 + 1132);
              v72 = *(a1 + 6476);
              v73 = *(a1 + 6480);
              v74 = *(a1 + 6472) / 0x3E8u;
              v75 = atomic_load((a1 + 1072));
              if (v75)
              {
                v76 = "_";
              }

              else
              {
                v76 = "-";
                if (*(a1 + 1169))
                {
                  v76 = "<";
                }
              }

              v77 = *(a1 + 1088);
              *buf = 136321282;
              v138 = a1;
              v89 = v85;
              v90 = 2080;
              v91 = "_VCRateControlAlgorithmSparseNOWRD_PrintRateControlInfoToLogDump";
              v92 = 1024;
              v93 = 770;
              v94 = 2048;
              *v95 = v84;
              *&v95[8] = 1024;
              v96 = v83;
              v97 = 2048;
              v98 = v82;
              v99 = 2048;
              v100 = v81;
              v101 = 2048;
              v102 = v80;
              v103 = 2048;
              v104 = v60;
              v105 = 1024;
              v106 = v62;
              v107 = 1024;
              v108 = v61;
              v109 = 2048;
              v110 = v64;
              v111 = 2048;
              v112 = v63 * 100.0;
              v113 = 1024;
              v114 = v66;
              v115 = 1024;
              v116 = v65;
              v117 = 1024;
              v118 = v67;
              v119 = 1024;
              v120 = v68;
              v121 = 1024;
              v122 = v69;
              v123 = 1024;
              v124 = v70;
              v125 = 1024;
              v126 = v71;
              v127 = 1024;
              v128 = v74;
              v129 = 1024;
              v130 = v72;
              v131 = 1024;
              v132 = (v73 * 1000.0);
              v133 = 2080;
              v134 = v76;
              v135 = 1024;
              v136 = v77;
              _os_log_impl(&dword_1DB56E000, loga, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d %8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.2f@%.1f\tRRx:%4u\tMBL:%d\t%4u/%4u\t  CS:%04X %04X %u BB: %3u\t%4u\t%3u\t UAT %s _\t%d", buf, 0xC0u);
            }
          }
        }

        v78 = *(a1 + 5160);
        if (v78)
        {
          atomic_load((a1 + 1072));
          VRLogfilePrintWithTimestamp(v78, "%8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.2f@%.1f\tRRx:%u\tMBL:%d %u\t%4u/%4u\t %4u:%4u/%4u  %4u:%4u/%4u  CS: %04X %04X %u BB: %3u\t%4u\t%3u\t%s UAT %s\t%d\t%d\t%d\t%d\t%.3f\t%.3f\t%u\t%u\n", *(a1 + 5380) / 0x3E8uLL, *(a1 + 1092), *(a1 + 5384) / 0x3E8uLL, *(a1 + 1096), *(a1 + 5020) / 0x3E8uLL, *(a1 + 1132), *(a1 + 1144));
        }

        *(a1 + 1092) = 0;
        *(a1 + 1096) = 0;
        return 1;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v23 = *(a1 + 5328);
        *buf = 136316162;
        v89 = v21;
        v90 = 2080;
        v91 = "_VCRateControlAlgorithmSparseNOWRD_DoRateControlWithVCRCStatistics";
        v92 = 1024;
        v93 = 230;
        v94 = 1024;
        *v95 = v11;
        *&v95[4] = 1024;
        *&v95[6] = v23;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Duplicated feedback or out-of-order feedback messages! timestamp:0x%04X, previousTimestamp:0x%04X", buf, 0x28u);
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      _VCRateControlAlgorithmSparseNOWRD_DoRateControl_cold_2();
    }

    return 0;
  }

  return 1;
}

BOOL VCRateControlAlgorithmSparseNOWRD_NoServerStatsActivityDetected(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 5120) == 0.0 && *(a1 + 2904) > 0.0 && *(a1 + 1088) != 1 && *(a1 + 1100) >= *(a1 + 92);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCRateControlAlgorithmSparseNOWRD_NoServerStatsActivityDetected_cold_1(v2, v3);
    }

    return 0;
  }
}

uint64_t _VCRateControlAlgorithmSparseNOWRD_ShouldRampDown(uint64_t a1)
{
  v1 = *(a1 + 5336);
  if (v1 - *(a1 + 5344) < 0.05)
  {
    return 0;
  }

  *(a1 + 5344) = v1;
  if (*(a1 + 2896) != 1 || (*(a1 + 6504) & 1) != 0)
  {
    return 0;
  }

  v3 = VCRateControlAlgorithmBasePriv_KeepOvershootingRampDownBandwidth(a1);
  if (v3)
  {
    *(a1 + 1224) = *(a1 + 1144);
    *(a1 + 1096) |= 0x10u;
    *(a1 + 2928) = 0;
  }

  if (*(a1 + 2912) > *(a1 + 128))
  {
    *(a1 + 1096) |= 4u;
    *(a1 + 2928) = 0;
    v3 = 1;
  }

  if (*(a1 + 2928) > *(a1 + 136) && *(a1 + 1100) > *(a1 + 64))
  {
    *(a1 + 1096) |= 8u;
    *(a1 + 2928) = *(a1 + 2928) - *(a1 + 136);
    if (*(a1 + 2928) < 0.0)
    {
      *(a1 + 2928) = 0;
    }

    v3 = 1;
  }

  if (*(a1 + 1088) != 1 && *(a1 + 1144) - *(a1 + 2936) > *(a1 + 160))
  {
    *(a1 + 1096) |= 1u;
    *(a1 + 2936) = *(a1 + 1144);
    *(a1 + 2928) = 0;
    v3 = 1;
  }

  if (VCRateControlAlgorithmBasePriv_ShouldRampDownDueToLossEvent(a1, v5, v6, v7, v8, v9, v10, v11))
  {
    *(a1 + 1096) |= 0x20u;
    *(a1 + 5000) = *(a1 + 1144);
    VCRateControlAlgorithmBasePriv_ResetLossEventBuffer(a1);
    *(a1 + 2928) = 0;
    v3 = 1;
  }

  if (VCRateControlAlgorithmSparseNOWRD_NoServerStatsActivityDetected(a1))
  {
    *(a1 + 1096) |= 0x100u;
    *(a1 + 2928) = 0;
    return 1;
  }

  return v3;
}

uint64_t _VCRateControlAlgorithmSparseNOWRD_RampDownTier(uint64_t a1)
{
  VCRateControlAlgorithmBasePriv_UpdateCongestionStatusWhenRampDown(a1, *(a1 + 1144));
  v8 = *(a1 + 1100);
  v9 = v8 - *(a1 + 100);
  if ((*(a1 + 1096) & 0x20) != 0 && *(a1 + 5008) > 0.0)
  {
    --v9;
  }

  v10 = *(a1 + 64);
  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (v8 > v11)
  {
    VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "[%u] Congestion!!! New bitrate down to %u", v2, v3, v4, v5, v6, v7, *(a1 + 1132));
  }

  if (*(a1 + 80) > v11)
  {
    *(a1 + 6528) = *(a1 + 1144);
  }

  *(a1 + 1104) = *(a1 + 1100);
  return v11;
}

uint64_t _VCRateControlAlgorithmSparseNOWRD_ShouldRampUp(uint64_t a1)
{
  v2 = *(a1 + 2896);
  if ((v2 & 1) == 0)
  {
    *(a1 + 1092) |= 0x40u;
  }

  v3 = *(a1 + 320);
  if (v3 >= *(a1 + 6456))
  {
    v3 = *(a1 + 6456);
  }

  if (*(a1 + 1088) == 1)
  {
    v4 = *(a1 + 5360);
    if (v4 == 0.0 || *(a1 + 1144) - v4 >= v3 || (v2 = 0, *(a1 + 1092) |= 0x40u, *(a1 + 1088) == 1))
    {
      if (*(a1 + 1100) >= *(a1 + 72) && !*(a1 + 5376))
      {
        v2 = 0;
        *(a1 + 1092) |= 0x1000u;
      }
    }
  }

  if (VCRateControlAlgorithmBasePriv_RecentlyGoAboveRampUpBandwidth(a1))
  {
    v2 = 0;
    *(a1 + 1092) |= 0x80u;
  }

  if (*(a1 + 2897) == 1)
  {
    v2 = 0;
    *(a1 + 1092) |= 0x20u;
  }

  if (*(a1 + 420) == 1 && *(a1 + 1169) == 1)
  {
    v2 = 0;
    *(a1 + 1092) |= 2u;
  }

  if (*(a1 + 2904) > *(a1 + 200))
  {
    v2 = 0;
    *(a1 + 1092) |= 4u;
  }

  if (*(a1 + 2912) > *(a1 + 208))
  {
    v2 = 0;
    *(a1 + 1092) |= 8u;
  }

  if (*(a1 + 2928) > *(a1 + 216))
  {
    v2 = 0;
    *(a1 + 1092) |= 0x10u;
  }

  v12 = *(a1 + 1100);
  if (v12 >= *(a1 + 60))
  {
    v2 = 0;
    *(a1 + 1092) |= 0x100u;
    v12 = *(a1 + 1100);
  }

  if (v12 >= *(a1 + 456) && *(a1 + 1088) == 1 && !*(a1 + 1216))
  {
    v2 = 0;
    *(a1 + 1092) |= 0x1000u;
  }

  v13 = *(a1 + 1144) - *(a1 + 5000) < *(a1 + 184) && *(a1 + 1088) != 1;
  v14 = !*(a1 + 1216) && (v15 = *(a1 + 288), v15 != 0.0) && *(a1 + 5040) > v15;
  if (v13 || v14 || VCRateControlAlgorithmBasePriv_ShouldBlockRampUpDueToLossEventThreshold(a1, v5, v6, v7, v8, v9, v10, v11))
  {
    v2 = 0;
    *(a1 + 1092) |= 0x200u;
  }

  if (*(a1 + 6540) == 1 && *(a1 + 1088) != 1 && !*(a1 + 6536))
  {
    *(a1 + 1092) |= 0x400u;
    if (*(a1 + 5120) != 0.0)
    {
      goto LABEL_50;
    }

    goto LABEL_45;
  }

  if (*(a1 + 5120) == 0.0)
  {
LABEL_45:
    *(a1 + 1092) |= 0x800u;
    goto LABEL_50;
  }

  if (v2)
  {
    *(a1 + 5368) = *(a1 + 1144);
    return 1;
  }

LABEL_50:
  v17 = *(a1 + 232);
  if (v17 != 0.0)
  {
    v18 = *(a1 + 5368);
    if (v18 != 0.0 && *(a1 + 1144) - v18 >= v17)
    {
      v19 = *(a1 + 1092);
      if (v19 == 1024 || v19 == 2)
      {
        *(a1 + 1092) = 0;
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _VCRateControlAlgorithmSparseNOWRD_RrampUpTier(uint64_t a1)
{
  VCRateControlAlgorithmBasePriv_UpdateCongestionStatusWhenRampUp(a1);
  v9 = VCRateControlAlgorithmBasePriv_AllowRampUpWithContinuousTargetBitrate(a1, v2, v3, v4, v5, v6, v7, v8);
  v16 = *(a1 + 1100);
  if (v9)
  {
    v17 = *(a1 + 96) + v16;
    if (*(a1 + 1088) == 1)
    {
      v17 += *(a1 + 104);
    }

    else if (*(a1 + 419) == 1)
    {
      v18 = *(a1 + 364);
      if (v18)
      {
        v19 = *(a1 + 6536);
        v20 = *(a1 + 1120);
        v21 = *(a1 + 48);
        if (*(v21 + 4 * v17) - v20 < v18 && v19 >= 1)
        {
          v23 = (v21 + 4 * v17 + 4);
          do
          {
            v24 = *v23++;
            v25 = v24 - v20 < v18 && v19-- > 1;
            ++v17;
          }

          while (v25);
        }
      }
    }

    v26 = *(a1 + 60);
    if (v17 >= v26)
    {
      v16 = v26;
    }

    else
    {
      v16 = v17;
    }

    *(a1 + 5360) = *(a1 + 1144);
    *(a1 + 6536) = 0;
    *(a1 + 5016) = 0;
    VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "[%u] Ramp up bitrate to %u", v10, v11, v12, v13, v14, v15, *(a1 + 1132));
    if (*(a1 + 80) > v16)
    {
      *(a1 + 6528) = *(a1 + 1144);
    }

    *(a1 + 1104) = *(a1 + 1100);
  }

  return v16;
}

uint64_t LoopbackTunnelReceiveProc(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [a1 serverLoopProc];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v1 = VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v1;
      v6 = 2080;
      v7 = "LoopbackTunnelReceiveProc";
      v8 = 1024;
      v9 = 157;
      _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d LoopbackTunnelReceiveProc stopped", &v4, 0x1Cu);
    }
  }

  return 0;
}

uint64_t VCMediaNegotiationBlobAudioSettingsReadFrom(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
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
        v48 = 0;
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

        v7 |= (v48 & 0x7F) << v5;
        if ((v48 & 0x80) == 0)
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
        switch(v12)
        {
          case 1:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            while (1)
            {
              v53 = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v53 & 0x7F) << v25;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v10 = v26++ >= 9;
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
              v18 = v27;
            }

LABEL_83:
            v46 = 16;
            break;
          case 2:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v52 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v52 & 0x7F) << v36;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v10 = v37++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_97;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v38;
            }

LABEL_97:
            v46 = 8;
            break;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            while (1)
            {
              v51 = 0;
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

              v15 |= (v51 & 0x7F) << v13;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
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
              v18 = v15;
            }

LABEL_91:
            v46 = 24;
            break;
          default:
            goto LABEL_60;
        }

        goto LABEL_102;
      }

      if (v12 == 4)
      {
        break;
      }

      if (v12 == 5)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        while (1)
        {
          v49 = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v49 & 0x7F) << v41;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v10 = v42++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_101;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v43;
        }

LABEL_101:
        v46 = 20;
LABEL_102:
        *(a1 + v46) = v18;
        goto LABEL_103;
      }

      if (v12 != 6)
      {
LABEL_60:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_103;
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
      while (1)
      {
        v54 = 0;
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

        v21 |= (v54 & 0x7F) << v19;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v10 = v20++ >= 9;
        if (v10)
        {
          LOBYTE(v24) = 0;
          goto LABEL_93;
        }
      }

      v24 = (v21 != 0) & ~[a2 hasError];
LABEL_93:
      *(a1 + 28) = v24;
LABEL_103:
      v47 = [a2 position];
      if (v47 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    while (1)
    {
      v50 = 0;
      v33 = [a2 position] + 1;
      if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v32 |= (v50 & 0x7F) << v30;
      if ((v50 & 0x80) == 0)
      {
        break;
      }

      v30 += 7;
      v10 = v31++ >= 9;
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
      v18 = v32;
    }

LABEL_87:
    v46 = 12;
    goto LABEL_102;
  }

  return [a2 hasError] ^ 1;
}

BOOL VCRateSharingGroup_IsProbingSequenceAllowed(uint64_t a1, int a2, double a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 224);
  if (v5 == 0.0 || a3 - v5 >= 0.07)
  {
    *(a1 + 224) = a3;
    return 1;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v10 = *(a1 + 224);
      v11 = 136316418;
      v12 = v7;
      v13 = 2080;
      v14 = "VCRateSharingGroup_IsProbingSequenceAllowed";
      v15 = 1024;
      v16 = 243;
      v17 = 1024;
      v18 = a2;
      v19 = 2048;
      v20 = a3;
      v21 = 2048;
      v22 = v10;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sharing group disallow probing sequence for registrationID=%d at time=%f and lastProbingSequenceAllowTime=%f", &v11, 0x36u);
    }

    return 0;
  }
}

void _VCAudioCaptions_DestroyCopyBufferAllocator(uint64_t a1)
{
  v2 = *(a1 + 464);
  if (v2)
  {
    AudioConverterDispose(v2);
    *(a1 + 464) = 0;
    *(a1 + 472) = 0;
  }

  CFAllocatorDeallocate(*(a1 + 456), *(a1 + 448));
  *(a1 + 448) = 0;
  v3 = *(a1 + 456);
  *(a1 + 456) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 224) = 0;
  }
}

uint64_t captionsAudioConverterCallback(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3 && a5)
  {
    v9 = *a5;
    if (*a5)
    {
      v10 = (*(v9 + 12) / *(a5 + 6));
      if (v10 < *a2 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v17 = *a2;
          v18 = 136316418;
          v19 = v11;
          v20 = 2080;
          v21 = "captionsAudioConverterCallback";
          v22 = 1024;
          v23 = 346;
          v24 = 2048;
          v25 = a1;
          v26 = 1024;
          *v27 = v17;
          *&v27[4] = 2048;
          *&v27[6] = v10;
          _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d converter=%p Insufficent input samples: needed = %d, available = %lu", &v18, 0x36u);
        }
      }

      v13 = 0;
      *a2 = v10;
      *(a3 + 16) = *(v9 + 16);
      *(a3 + 8) = *(v9 + 8);
      *a5 = 0;
    }

    else
    {
      *a2 = 0;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v13 = 2003329396;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v18 = 136316674;
        v19 = v14;
        v20 = 2080;
        v21 = "captionsAudioConverterCallback";
        v22 = 1024;
        v23 = 335;
        v24 = 2048;
        v25 = a1;
        v26 = 2048;
        *v27 = a2;
        *&v27[8] = 2048;
        *&v27[10] = a3;
        v28 = 2048;
        v29 = a5;
        _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d converter=%p One of the pointers passed to AudioResamplerInput callback is NULL, ioNumberDataPackets=%p, ioData=%p, inUserData=%p", &v18, 0x44u);
      }
    }
  }

  return v13;
}

uint64_t VCAudioCaptions_ConvertSamplesToPCM(uint64_t a1, uint64_t a2, int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 464))
  {
    return 0;
  }

  *&ioOutputDataPacketSize[13] = -1;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&ioOutputDataPacketSize[15] = v6;
  *&ioOutputDataPacketSize[19] = v6;
  v7 = *(a1 + 480);
  if (v7)
  {
    [v7 asbd];
  }

  else
  {
    memset(&ioOutputDataPacketSize[13], 0, 40);
  }

  *&ioOutputDataPacketSize[1] = -1;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&ioOutputDataPacketSize[3] = v8;
  *&ioOutputDataPacketSize[7] = v8;
  v9 = *(a1 + 488);
  if (v9)
  {
    [v9 asbd];
    v10 = *&ioOutputDataPacketSize[1];
  }

  else
  {
    memset(&ioOutputDataPacketSize[1], 0, 40);
    v10 = 0.0;
  }

  v11 = *(a1 + 256);
  v12 = *(a1 + 248);
  v13 = *(a1 + 464);
  v14 = (*&ioOutputDataPacketSize[13] * a3 / v10);
  ioOutputDataPacketSize[0] = v14;
  v15 = ioOutputDataPacketSize[17] * v14;
  v16 = MEMORY[0x1E1288880](v11, v15, 2002630309, 0);
  v17 = v16;
  if (!v16)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *inInputDataProcUserData = 136316674;
        *&inInputDataProcUserData[4] = v22;
        *&inInputDataProcUserData[12] = 2080;
        *&inInputDataProcUserData[14] = "VCAudioCaptions_ConvertSamplesToPCM";
        *&inInputDataProcUserData[22] = 1024;
        LODWORD(v40) = 1111;
        WORD2(v40) = 2048;
        *(&v40 + 6) = a1;
        HIWORD(v40) = 1024;
        *v41 = v14;
        *&v41[4] = 1024;
        *&v41[6] = ioOutputDataPacketSize[17];
        v42 = 1024;
        v43 = v15;
        _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, " [%s] %s:%d instance=%p Failed to allocate PCM copy buffer for captions: sampleCount=%d,  bytesPerPacket=%d, totalCapacity=%d", inInputDataProcUserData, 0x38u);
      }
    }

    return 0;
  }

  v35 = 1;
  *(&outOutputData.mNumberBuffers + 1) = 0;
  v36 = 1;
  v37 = ioOutputDataPacketSize[5] * a3;
  outOutputData.mNumberBuffers = 1;
  outOutputData.mBuffers[0].mNumberChannels = 1;
  outOutputData.mBuffers[0].mDataByteSize = v15;
  outOutputData.mBuffers[0].mData = v16;
  *&inInputDataProcUserData[8] = *&ioOutputDataPacketSize[1];
  v40 = *&ioOutputDataPacketSize[5];
  v38 = a2;
  *inInputDataProcUserData = &v35;
  *v41 = *&ioOutputDataPacketSize[9];
  v18 = AudioConverterFillComplexBuffer(v13, captionsAudioConverterCallback, inInputDataProcUserData, ioOutputDataPacketSize, &outOutputData, 0);
  if (v18)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = "VCAudioCaptions_ConvertSamplesToPCM";
        *&buf[22] = 1024;
        *v31 = 1133;
        *&v31[4] = 2048;
        *&v31[6] = a1;
        v32 = 1024;
        v33 = v18;
        _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d instance=%p AudioConverterFillComplexBuffer failed with result=%d", buf, 0x2Cu);
      }
    }

    bzero(v17, v15);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  if (v11)
  {
    v21 = CFRetain(v11);
  }

  else
  {
    v21 = 0;
  }

  *v31 = v21;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __VCAudioCaptions_ConvertSamplesToPCM_block_invoke;
  v28[3] = &unk_1E85F4E48;
  v28[4] = buf;
  v28[5] = v17;
  *(a1 + 272) = *[*(a1 + 248) streamDescription];
  v25 = ioOutputDataPacketSize[0];
  *(a1 + 264) += ioOutputDataPacketSize[0];
  if ((v25 & 0x80000000) != 0)
  {
    ++*(a1 + 280);
  }

  v24 = [objc_alloc(MEMORY[0x1E6958440]) initWithPCMFormat:v12 bufferListNoCopy:&outOutputData deallocator:v28];
  if (!v24)
  {
    CFAllocatorDeallocate(*(*&buf[8] + 24), v17);
    v27 = *(*&buf[8] + 24);
    if (v27)
    {
      CFRelease(v27);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioCaptions_ConvertSamplesToPCM_cold_1();
      }
    }
  }

  _Block_object_dispose(buf, 8);
  return v24;
}

void sub_1DB5FD1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DB5FDA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL OUTLINED_FUNCTION_30_1()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, char a14)
{
  a11 = v15;
  a12 = v14;
  a13 = v16;
  a14 = v17;

  return [v16 applyOnIdleWithBlock:&a9];
}

uint64_t OUTLINED_FUNCTION_38_1()
{

  return [v0 performSelector:v1];
}

uint64_t OUTLINED_FUNCTION_39_1()
{

  return objc_opt_respondsToSelector();
}

uint64_t _VCNetworkConditionMonitorClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t VCNetworkConditionMonitor_Create(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    VCNetworkConditionMonitor_Create_cold_6();
    return v14;
  }

  if (!*a3)
  {
    VCNetworkConditionMonitor_Create_cold_5();
    return v14;
  }

  if (!*(a3 + 8))
  {
    VCNetworkConditionMonitor_Create_cold_4();
    return v14;
  }

  if (_MergedGlobals_0 != -1)
  {
    VCNetworkConditionMonitor_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VCNetworkConditionMonitor_Create_cold_3();
    return v14;
  }

  v6 = Instance;
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v8 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCNetworkConditionMonitor.stateQueue", 0, CustomRootQueue);
  *(v6 + 32) = v8;
  if (v8)
  {
    *(v6 + 104) = xmmword_1DBD455F0;
    *(v6 + 56) = 0x4010000000000000;
    *(v6 + 16) = *a3;
    FigCFWeakReferenceStore();
    *(v6 + 40) = *(a3 + 16);
    *(v6 + 64) = *(a3 + 32);
    *(v6 + 80) = *(a3 + 48);
    *(v6 + 96) = *(a3 + 64);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315906;
        v15 = v9;
        v16 = 2080;
        v17 = "VCNetworkConditionMonitor_Create";
        v18 = 1024;
        v19 = 176;
        v20 = 2048;
        v21 = v6;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NetworkConditionMonitor: New instance created=%p", &v14, 0x26u);
      }
    }

    v11 = *(v6 + 128);
    v12 = *(a3 + 72);
    *(v6 + 128) = v12;
    if (v12)
    {
      CFRetain(v12);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    result = 0;
    *a2 = v6;
  }

  else
  {
    VCNetworkConditionMonitor_Create_cold_2(v6);
    return 2150170627;
  }

  return result;
}

void VCNetworkConditionMonitor_Invalidate(uint64_t a1)
{
  v2[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 32);
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __VCNetworkConditionMonitor_Invalidate_block_invoke;
    v2[3] = &__block_descriptor_tmp_0;
    v2[4] = a1;
    dispatch_sync(v1, v2);
  }
}

uint64_t VCNetworkConditionMonitor_SetBrokenNetworkStatus(uint64_t a1, char a2, char a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VCNetworkConditionMonitor_SetBrokenNetworkStatus_block_invoke;
    block[3] = &__block_descriptor_tmp_3;
    v6 = a2;
    block[4] = a1;
    v7 = a3;
    dispatch_async(v3, block);
    return 0;
  }

  else
  {
    VCNetworkConditionMonitor_SetBrokenNetworkStatus_cold_1();
    return v8;
  }
}

void _VCNetworkConditionMonitor_RunLocalNetworkDetectionAlgorithm(_BYTE *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a1[124];
  if (a1[122] & 1) != 0 || (a1[120])
  {
    v3 = 1;
  }

  else if (a1[121] == 1)
  {
    v3 = a1[126];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 & 1;
  a1[124] = v4;
  if (v2 != v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = "no";
        v8 = a1[122];
        v9 = a1[120];
        if (a1[124])
        {
          v7 = "yes";
        }

        v10 = a1[121];
        v11 = 136316674;
        v12 = v5;
        v13 = 2080;
        v14 = "_VCNetworkConditionMonitor_RunLocalNetworkDetectionAlgorithm";
        v15 = 1024;
        v16 = 136;
        v17 = 2080;
        v18 = v7;
        v19 = 1024;
        v20 = v8;
        v21 = 1024;
        v22 = v9;
        v23 = 1024;
        v24 = v10;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NetworkConditionMonitor: isLocalNetworkQualityBadOrBroken=%s. isLocalNetworkBroken=%d isLocalWiFiQualityBad=%d isLocalCellQualityBad=%d", &v11, 0x38u);
      }
    }

    _VCNetworkConditionMonitor_triggerNetworkConditionCallback(a1, 1);
  }
}

void _VCNetworkConditionMonitor_triggerNetworkConditionCallback(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 32));
  v4 = MEMORY[0x1E1289F20](a1 + 24);
  if (v4)
  {
    v5 = v4;
    if (*(a1 + 125))
    {
      v6 = 1;
    }

    else
    {
      v6 = *(a1 + 123);
    }

    (*(a1 + 16))(v4, *(a1 + 124), v6 & 1, a2);
    CFRelease(v5);
  }

  else
  {
    _VCNetworkConditionMonitor_triggerNetworkConditionCallback_cold_1();
  }

  valuePtr = 0;
  v7 = *(a1 + 122);
  if (v7 != 1)
  {
    if (*(a1 + 123) == 1)
    {
      v7 = 2;
    }

    else if (*(a1 + 121) == 1 && *(a1 + 126) == 1)
    {
      v7 = 4;
    }

    else if (*(a1 + 120) == 1)
    {
      v7 = 3;
    }

    else
    {
      if (*(a1 + 125) != 1)
      {
        goto LABEL_17;
      }

      v7 = 5;
    }
  }

  valuePtr = v7;
LABEL_17:
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"NetworkQualityStatus", v10);
  reportingGenericEvent();
  if (v10)
  {
    CFRelease(v10);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}