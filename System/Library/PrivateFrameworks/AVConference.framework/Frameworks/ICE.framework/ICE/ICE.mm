char *ICEUNToString(char *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v17, 170, 12);
  memset(v16, 170, 12);
  memset(v15, 170, 12);
  memset(v14, 170, 12);
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  v5 = *(a2 + 10);
  v6 = *(a2 + 14);
  v7 = bswap32(*a2);
  v8 = *(a2 + 18);
  __sprintf_chk(v15, 0, 0xCuLL, "%02X%02X%02X%02X", HIBYTE(v7), BYTE2(v7), BYTE1(v7), v7);
  v9 = bswap32(v3);
  __sprintf_chk(v14, 0, 0xCuLL, "%02X%02X%02X%02X", HIBYTE(v9), BYTE2(v9), BYTE1(v9), v9);
  v10 = bswap32(v5);
  __sprintf_chk(v17, 0, 0xCuLL, "%02X%02X%02X%02X", HIBYTE(v10), BYTE2(v10), BYTE1(v10), v10);
  v11 = bswap32(v6);
  __sprintf_chk(v16, 0, 0xCuLL, "%02X%02X%02X%02X", HIBYTE(v11), BYTE2(v11), BYTE1(v11), v11);
  sprintf(a1, "%s.%s.%d-%s.%s.%d", v15, v14, bswap32(v4) >> 16, v17, v16, bswap32(v8) >> 16);
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

char *CANIDToString(char *a1, unsigned int *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2[1];
  v4 = bswap32(*a2);
  memset(v9, 170, 12);
  memset(v8, 170, 12);
  __sprintf_chk(v9, 0, 0xCuLL, "%02X%02X%02X%02X", HIBYTE(v4), BYTE2(v4), BYTE1(v4), v4);
  v5 = bswap32(v3);
  __sprintf_chk(v8, 0, 0xCuLL, "%02X%02X%02X%02X", HIBYTE(v5), BYTE2(v5), BYTE1(v5), v5);
  sprintf(a1, "%s%s", v9, v8);
  v6 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t CandidateByteOrderNToH(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = 148 * a2;
    do
    {
      v5 = (a1 + v3);
      *v5 = vrev32_s8(*(a1 + v3));
      v5[1].i32[0] = bswap32(*(a1 + v3 + 8));
      v5[2].i16[2] = bswap32(*(a1 + v3 + 20)) >> 16;
      v5[2].i16[3] = bswap32(*(a1 + v3 + 22)) >> 16;
      v5[18].i32[0] = bswap32(*(a1 + v3 + 144));
      ntohIPPORT(a1 + v3 + 24);
      ntohIPPORT(a1 + v3 + 64);
      ntohIPPORT(a1 + v3 + 104);
      v3 += 148;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t CandidateByteOrderHToN(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = 148 * a2;
    do
    {
      v5 = (a1 + v3);
      *v5 = vrev32_s8(*(a1 + v3));
      v5[1].i32[0] = bswap32(*(a1 + v3 + 8));
      v5[2].i16[2] = bswap32(*(a1 + v3 + 20)) >> 16;
      v5[2].i16[3] = bswap32(*(a1 + v3 + 22)) >> 16;
      v5[18].i32[0] = bswap32(*(a1 + v3 + 144));
      htonIPPORT(a1 + v3 + 24);
      htonIPPORT(a1 + v3 + 64);
      htonIPPORT(a1 + v3 + 104);
      v3 += 148;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t RemoveOneCandidateFromList(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x277D85DE8];
  result = 2148859926;
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = (a1 + 20);
    LOWORD(v6) = -1;
    v7 = a2;
    do
    {
      v9 = *v5;
      v5 += 74;
      v8 = v9;
      if (v9 >= v6)
      {
        v6 = v6;
      }

      else
      {
        v6 = v8;
      }

      --v7;
    }

    while (v7);
    result = v6 == 0xFFFF ? 2148859926 : 0;
    if (v6 != 0xFFFF)
    {
      v10 = a1 + 24;
      while (*(v10 - 4) != v6)
      {
        v10 += 148;
        if (!--v4)
        {
          result = 0;
          goto LABEL_19;
        }
      }

      *&v30[14] = 0xAAAAAAAAAAAAAAAALL;
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v29[1] = v11;
      *v30 = v11;
      v29[0] = v11;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(v10 - 20);
          v15 = *(v10 - 4);
          v17 = 136316418;
          v18 = v12;
          v19 = 2080;
          v20 = "RemoveOneCandidateFromList";
          v21 = 1024;
          v22 = 168;
          v23 = 1024;
          v24 = v14;
          v25 = 1024;
          v26 = v15;
          v27 = 2080;
          v28 = IPPORTToStringWithSize(v29, v10, 0x36uLL);
          _os_log_impl(&dword_23D497000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RemoveOneCandidateFromList: removing %d, %d, %s", &v17, 0x32u);
        }
      }

      result = 0;
      *(v10 - 4) = -1;
    }
  }

LABEL_19:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t breakByte(uint64_t result, unsigned int *a2, _DWORD *a3)
{
  *a2 = result >> 4;
  *a3 = result & 0xF;
  return result;
}

uint64_t CompressCandidateList(void *a1, int *a2, uint64_t a3, int a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = 2148859907;
  if (a4 < 1)
  {
    goto LABEL_45;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __src[2] = v12;
  __src[3] = v12;
  __src[0] = v12;
  __src[1] = v12;
  v48[0] = v12;
  v48[1] = v12;
  v48[2] = v12;
  v48[3] = v12;
  v48[4] = v12;
  v48[5] = v12;
  v48[6] = v12;
  v48[7] = v12;
  v48[8] = v12;
  v48[9] = v12;
  v48[10] = v12;
  v48[11] = v12;
  v48[12] = v12;
  v48[13] = v12;
  v48[14] = v12;
  v48[15] = v12;
  v47[30] = v12;
  v47[31] = v12;
  v47[28] = v12;
  v47[29] = v12;
  v47[26] = v12;
  v47[27] = v12;
  v47[24] = v12;
  v47[25] = v12;
  v47[22] = v12;
  v47[23] = v12;
  v47[20] = v12;
  v47[21] = v12;
  v47[18] = v12;
  v47[19] = v12;
  v47[16] = v12;
  v47[17] = v12;
  v47[14] = v12;
  v47[15] = v12;
  v47[12] = v12;
  v47[13] = v12;
  v47[10] = v12;
  v47[11] = v12;
  v47[8] = v12;
  v47[9] = v12;
  v47[6] = v12;
  v47[7] = v12;
  v47[4] = v12;
  v47[5] = v12;
  v47[2] = v12;
  v47[3] = v12;
  v13 = a4 >= 0x20 ? 32 : a4;
  v47[0] = v12;
  v47[1] = v12;
  do
  {
    v14 = a3 + 148 * v7;
    if (*(v14 + 20) != -1)
    {
      v15 = *(v14 + 24);
      if (v15)
      {
        if (v10 <= 14)
        {
          if (v10 < 1)
          {
            LODWORD(v16) = 0;
          }

          else
          {
            v16 = 0;
            v20 = v48;
            while (*v20 != *(v14 + 44) || v20[1] != *(v14 + 52))
            {
              ++v16;
              v20 += 2;
              if (v10 == v16)
              {
                goto LABEL_28;
              }
            }
          }

          if (v16 == v10)
          {
LABEL_28:
            *(v48 + (16 * v10)) = *(v14 + 44);
            LODWORD(v16) = v10;
          }
        }

        else
        {
          LODWORD(v16) = -1;
        }

        if (v16 == v10)
        {
          ++v10;
        }
      }

      else
      {
        if (v9 <= 14)
        {
          if (v9 < 1)
          {
            LODWORD(v16) = 0;
          }

          else
          {
            v17 = 0;
            v18 = *(v14 + 44);
            v19 = v9;
            while (*(__src + v17) != v18)
            {
              if (v9 == ++v17)
              {
                goto LABEL_35;
              }
            }

            LODWORD(v16) = v17;
          }

          if (v16 == v9)
          {
            v18 = *(v14 + 44);
            v19 = v9;
LABEL_35:
            *(__src + v19) = v18;
            LODWORD(v16) = v9;
          }
        }

        else
        {
          LODWORD(v16) = -1;
        }

        if (v16 == v9)
        {
          ++v9;
        }
      }

      if (v16 != -1)
      {
        v22 = &v47[v8];
        *v22 = *(v14 + 4) & 0xF | (16 * *v14);
        ++v11;
        *(&v47[v8] + 1) = *(v14 + 8);
        *(&v47[v8] + 9) = *(v14 + 20);
        v22[11] = *(v14 + 22);
        v22[12] = *(v14 + 144);
        HIWORD(v47[v8++]) = *(v14 + 60);
        v22[13] = v16 & 0xF | (16 * v15);
      }
    }

    ++v7;
  }

  while (v7 != v13);
  if (v11)
  {
    v23 = 16 * v10;
    v24 = (4 * v9) | 1;
    v25 = malloc_type_malloc(16 * v10 + 16 * v11 + v24, 0x100004077774924uLL);
    if (v25)
    {
      v26 = v25;
      *v25 = v10 & 0xF | (16 * v9);
      if (v9)
      {
        memcpy(v25 + 1, __src, 4 * v9);
      }

      else
      {
        v24 = 1;
      }

      v27 = 16 * v11;
      if (v10)
      {
        memcpy(&v26[v24], v48, v23);
        v24 += v23;
      }

      memcpy(&v26[v24], v47, v27);
      v28 = v24 + v27;
      *a1 = v26;
      *a2 = v28;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v33 = 136316674;
          v34 = v29;
          v35 = 2080;
          v36 = "CompressCandidateList";
          v37 = 1024;
          v38 = 315;
          v39 = 1024;
          v40 = v9;
          v41 = 1024;
          v42 = v10;
          v43 = 1024;
          v44 = v11;
          v45 = 1024;
          v46 = v28;
          _os_log_impl(&dword_23D497000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CompressCandidateList: IPs: %d, %d, count: %d, size: %d", &v33, 0x34u);
        }
      }

      v4 = 0;
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        CompressCandidateList_cold_1();
      }
    }
  }

  else
  {
LABEL_45:
    v4 = 2148859926;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t UncompressCandidateList(unsigned __int8 *a1, int a2, char **a3, unsigned int *a4)
{
  *&v43[5] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a2 - (((4 * (v5 >> 4)) | 1) + 16 * (v5 & 0xF));
  if ((v6 & 0xF) != 0)
  {
    v7 = 2148859905;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v35 = v8;
        v36 = 2080;
        v37 = "UncompressCandidateList";
        v38 = 1024;
        v39 = 331;
        v40 = 1024;
        v41 = a2;
        v42 = 1024;
        v43[0] = v5 >> 4;
        LOWORD(v43[1]) = 1024;
        *(&v43[1] + 2) = v5 & 0xF;
        _os_log_error_impl(&dword_23D497000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Remote candidate data is invalid(len:%d,ipv4:%d,ipv6:%d).", buf, 0x2Eu);
      }
    }

    goto LABEL_30;
  }

  v33 = malloc_type_calloc(v6 >> 4, 0x94uLL, 0x1000040C185D105uLL);
  if (v33)
  {
    v30 = a4;
    v28 = v6 >> 4;
    v29 = a2;
    v32 = v6 >> 4;
    if (v6 >> 4 >= 1)
    {
      v12 = 0;
      v13 = &a1[16 * (v5 & 0xF) + ((v5 >> 2) & 0x3C)];
      v14 = v33;
      do
      {
        v15 = *(v13 + v12 + 1);
        *v14 = v15 >> 4;
        *(v14 + 1) = v15 & 0xF;
        *(v14 + 2) = *(v13 + v12 + 2);
        *(v14 + 3) = *(v13 + v12 + 6);
        *(v14 + 10) = *(v13 + v12 + 10);
        *(v14 + 11) = *(v13 + v12 + 12);
        *(v14 + 36) = *(v13 + v12 + 13);
        v16 = *(v13 + v12 + 14);
        *(v14 + 6) = v16 >> 4;
        v17 = v16 & 0xF;
        if ((v16 & 0x10) != 0)
        {
          if (v17 >= (v5 & 0xF))
          {
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_18;
            }

            v22 = VRTraceErrorLogLevelToCSTR();
            v23 = *MEMORY[0x277CE5818];
            if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_18;
            }

            *buf = 136316162;
            v35 = v22;
            v36 = 2080;
            v37 = "UncompressCandidateList";
            v38 = 1024;
            v39 = 366;
            v40 = 1024;
            v41 = v17;
            v42 = 1024;
            v43[0] = v5 & 0xF;
            v20 = v23;
            v21 = " [%s] %s:%d Remote IPV6 index %d is invalid. Total size: %d.";
LABEL_21:
            _os_log_error_impl(&dword_23D497000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x28u);
            goto LABEL_18;
          }

          *(v14 + 44) = *&a1[16 * v17 + ((4 * (v5 >> 4)) | 1)];
        }

        else
        {
          if (v17 >= v5 >> 4)
          {
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_18;
            }

            v18 = VRTraceErrorLogLevelToCSTR();
            v19 = *MEMORY[0x277CE5818];
            if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_18;
            }

            *buf = 136316162;
            v35 = v18;
            v36 = 2080;
            v37 = "UncompressCandidateList";
            v38 = 1024;
            v39 = 373;
            v40 = 1024;
            v41 = v17;
            v42 = 1024;
            v43[0] = v5 >> 4;
            v20 = v19;
            v21 = " [%s] %s:%d Remote IPV4 index %d is invalid. Total size: %d.";
            goto LABEL_21;
          }

          *(v14 + 11) = *&a1[4 * v17 + 1];
        }

LABEL_18:
        *(v14 + 30) = *(v13 + v12 + 15);
        v14 += 148;
        v12 += 16;
      }

      while (16 * v32 != v12);
    }

    *a3 = v33;
    *v30 = v32;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v35 = v24;
        v36 = 2080;
        v37 = "UncompressCandidateList";
        v38 = 1024;
        v39 = 383;
        v40 = 1024;
        v41 = v29;
        v42 = 2048;
        *v43 = 148 * v28;
        _os_log_impl(&dword_23D497000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d UncompressCandidateList: from %d to %ld.", buf, 0x2Cu);
      }
    }

    v7 = 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    v7 = 2148859907;
  }

  else
  {
    VRTraceErrorLogLevelToCSTR();
    v7 = 2148859907;
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      UncompressCandidateList_cold_1();
    }
  }

LABEL_30:
  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t CompressedCandidateByteOrderHToN(unsigned __int8 *a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (__ROR8__(0x14C1BACF914C1BADLL * a2, 2) <= 0x1BACF914C1BACF9uLL)
  {
    v6 = 2148859945;
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_14;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v13 = 136315650;
    v14 = v7;
    v15 = 2080;
    v16 = "CompressedCandidateByteOrderHToN";
    v17 = 1024;
    v18 = 395;
    v9 = " [%s] %s:%d Uncompressed data by test1.";
LABEL_13:
    _os_log_impl(&dword_23D497000, v8, OS_LOG_TYPE_DEFAULT, v9, &v13, 0x1Cu);
    goto LABEL_14;
  }

  v2 = ~(((*a1 >> 2) & 0xC) - a2) & 0xF;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2)
  {
    v6 = 2148859945;
    if (ErrorLogLevelForModule < 7)
    {
      goto LABEL_14;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v13 = 136315650;
    v14 = v10;
    v15 = 2080;
    v16 = "CompressedCandidateByteOrderHToN";
    v17 = 1024;
    v18 = 403;
    v9 = " [%s] %s:%d Uncompressed data by test2.";
    goto LABEL_13;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = v4;
      v15 = 2080;
      v16 = "CompressedCandidateByteOrderHToN";
      v17 = 1024;
      v18 = 406;
      _os_log_impl(&dword_23D497000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Compressed data by test2.", &v13, 0x1Cu);
    }
  }

  v6 = 0;
LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t CompressedCandidateByteOrderNToH(unsigned __int8 *a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (__ROR8__(0x14C1BACF914C1BADLL * a2, 2) <= 0x1BACF914C1BACF9uLL)
  {
    v6 = 2148859945;
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_14;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v13 = 136315650;
    v14 = v7;
    v15 = 2080;
    v16 = "CompressedCandidateByteOrderNToH";
    v17 = 1024;
    v18 = 418;
    v9 = " [%s] %s:%d Uncompressed data by test1.";
LABEL_13:
    _os_log_impl(&dword_23D497000, v8, OS_LOG_TYPE_DEFAULT, v9, &v13, 0x1Cu);
    goto LABEL_14;
  }

  v2 = ~(((*a1 >> 2) & 0xC) - a2) & 0xF;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2)
  {
    v6 = 2148859945;
    if (ErrorLogLevelForModule < 7)
    {
      goto LABEL_14;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v13 = 136315650;
    v14 = v10;
    v15 = 2080;
    v16 = "CompressedCandidateByteOrderNToH";
    v17 = 1024;
    v18 = 426;
    v9 = " [%s] %s:%d Uncompressed data by test2.";
    goto LABEL_13;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = v4;
      v15 = 2080;
      v16 = "CompressedCandidateByteOrderNToH";
      v17 = 1024;
      v18 = 429;
      _os_log_impl(&dword_23D497000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Compressed data by test2.", &v13, 0x1Cu);
    }
  }

  v6 = 0;
LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t FixFlippedCandidate(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2 >= 1)
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21 = v2;
    v22 = v2;
    *__dst = v2;
    v3 = a2;
    v4 = MEMORY[0x277CE5818];
    v5 = (a1 + 104);
    do
    {
      if (CompareWithFlippedIP((v5 - 10), v5))
      {
        if (*(v5 - 5) == *(v5 - 15) && *(v5 - 3) == *(v5 - 13))
        {
          FlipIP(v5 - 20, v5);
        }

        FlipIP(v5 - 10, v5);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            v9 = IPToString(__dst, (v5 - 10));
            *buf = 136315906;
            v13 = v7;
            v14 = 2080;
            v15 = "FixFlippedCandidate";
            v16 = 1024;
            v17 = 446;
            v18 = 2080;
            v19 = v9;
            _os_log_impl(&dword_23D497000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Recovered true IP %s", buf, 0x26u);
          }
        }
      }

      v5 += 37;
      --v3;
    }

    while (v3);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t AddOneCandidate(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, __int16 a7, __int128 *a8, unsigned __int8 a9)
{
  v57 = *MEMORY[0x277D85DE8];
  v14 = a1 + 148 * a2;
  *v14 = a5;
  *(v14 + 4) = a3;
  *(v14 + 8) = a4;
  if (a3 != 6)
  {
    v15 = arc4random();
    *(v14 + 12) = 0;
    *(v14 + 12) = bswap32(v15 & 0x7FFFFFFF);
  }

  v16 = *a6;
  v17 = *(a6 + 16);
  *(v14 + 56) = *(a6 + 32);
  *(v14 + 40) = v17;
  *(v14 + 24) = v16;
  v18 = *a8;
  v19 = a8[1];
  *(v14 + 96) = *(a8 + 4);
  *(v14 + 64) = v18;
  *(v14 + 80) = v19;
  v20 = *a8;
  v21 = a8[1];
  *(v14 + 136) = *(a8 + 4);
  *(v14 + 120) = v21;
  *(v14 + 104) = v20;
  *(v14 + 22) = 0;
  *(v14 + 20) = a7;
  *(v14 + 144) = a9;
  if (*(v14 + 24))
  {
    *(v14 + 20) = 10;
  }

  *&v56[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v55[1] = v22;
  *v56 = v22;
  v55[0] = v22;
  v53[0] = v22;
  v53[1] = v22;
  v54[0] = v22;
  *(v54 + 14) = 0xAAAAAAAAAAAAAAAALL;
  FlipIP((v14 + 104), a8);
  __strlcat_chk();
  if (a2 < 1)
  {
LABEL_18:
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v29 = (&g_aCanType)[2 * *(v14 + 4)];
        v30 = IPPORTToStringWithSize(v55, v14 + 24, 0x36uLL);
        v31 = IPPORTToStringWithSize(v53, v14 + 64, 0x36uLL);
        v32 = *(v14 + 20);
        v39 = 136316674;
        v40 = v27;
        v41 = 2080;
        v42 = "AddOneCandidate";
        v43 = 1024;
        v44 = 507;
        v45 = 2080;
        v46 = v29;
        v47 = 2080;
        v48 = v30;
        v49 = 2080;
        v50 = v31;
        v51 = 1024;
        v52 = v32;
        _os_log_impl(&dword_23D497000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d add %s candidate [%s], IF Local [%s], priority [%u]", &v39, 0x40u);
      }
    }

    v33 = 0;
    goto LABEL_22;
  }

  v23 = *a6 & 1;
  v24 = a2;
  v25 = a1 + 44;
  while (1)
  {
    if ((*(v25 - 20) & 1) == v23)
    {
      if (v23)
      {
        if (*v25 != *(a6 + 20) || *(v25 + 8) != *(a6 + 28))
        {
          goto LABEL_17;
        }
      }

      else if (*v25 != *(a6 + 20))
      {
        goto LABEL_17;
      }

      if (*(v25 + 16) == *(a6 + 36))
      {
        break;
      }
    }

LABEL_17:
    v25 += 148;
    if (!--v24)
    {
      goto LABEL_18;
    }
  }

  v33 = 2148859945;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v36 = VRTraceErrorLogLevelToCSTR();
    v37 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v38 = (&g_aCanType)[2 * *(v14 + 4)];
      v39 = 136316162;
      v40 = v36;
      v41 = 2080;
      v42 = "AddOneCandidate";
      v43 = 1024;
      v44 = 499;
      v45 = 2080;
      v46 = v38;
      v47 = 2080;
      v48 = IPPORTToStringWithSize(v55, a6, 0x36uLL);
      _os_log_impl(&dword_23D497000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s candidate [%s] already exists", &v39, 0x30u);
    }
  }

LABEL_22:
  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t GetICECandidate(uint64_t a1, int a2, int a3, int a4, __int128 *a5, __int16 a6, __int128 *a7, int a8)
{
  *a1 = a4;
  *(a1 + 4) = a2;
  *(a1 + 8) = a3;
  if (a2 != 6)
  {
    *(a1 + 12) = bswap32(arc4random() & 0x7FFFFFFF);
  }

  v13 = *a5;
  v14 = a5[1];
  *(a1 + 56) = *(a5 + 4);
  *(a1 + 40) = v14;
  *(a1 + 24) = v13;
  v15 = *a7;
  v16 = a7[1];
  *(a1 + 96) = *(a7 + 4);
  *(a1 + 64) = v15;
  *(a1 + 80) = v16;
  v17 = *a7;
  v18 = a7[1];
  *(a1 + 136) = *(a7 + 4);
  *(a1 + 120) = v18;
  *(a1 + 104) = v17;
  *(a1 + 24) = a8;
  *(a1 + 22) = 0;
  if (a8)
  {
    v19 = 10;
  }

  else
  {
    v19 = a6;
  }

  *(a1 + 20) = v19;
  FlipIP((a1 + 104), a7);
  return 0;
}

uint64_t SortCandidate(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a2 - 1;
  if (a2 > 1)
  {
    v5 = 0;
    v6 = a2 - 1;
    do
    {
      v7 = v6;
      v8 = v6;
      v9 = a1 + 148;
      if (v4 > v5)
      {
        do
        {
          v10 = *(v9 + 20);
          v11 = *(v9 - 128);
          if (v10 > v11 || v10 == v11 && ((v17 = *(v9 - 148), *v9 < v17) || *v9 == v17 && strncmp((v9 - 136), (v9 + 12), 8uLL) < 0))
          {
            v12 = v9 - 148;
            v29 = *(v9 - 52);
            v30 = *(v9 - 36);
            v31 = *(v9 - 20);
            v32 = *(v9 - 4);
            v25 = *(v9 - 116);
            v26 = *(v9 - 100);
            v27 = *(v9 - 84);
            v28 = *(v9 - 68);
            v23 = *(v9 - 148);
            v24 = *(v9 - 132);
            v13 = *(v9 + 112);
            *(v12 + 96) = *(v9 + 96);
            *(v12 + 112) = v13;
            *(v12 + 128) = *(v9 + 128);
            *(v12 + 144) = *(v9 + 144);
            v14 = *(v9 + 48);
            *(v12 + 32) = *(v9 + 32);
            *(v12 + 48) = v14;
            v15 = *(v9 + 80);
            *(v12 + 64) = *(v9 + 64);
            *(v12 + 80) = v15;
            v16 = *(v9 + 16);
            *v12 = *v9;
            *(v12 + 16) = v16;
            *(v9 + 96) = v29;
            *(v9 + 112) = v30;
            *(v9 + 128) = v31;
            *(v9 + 144) = v32;
            *(v9 + 32) = v25;
            *(v9 + 48) = v26;
            *(v9 + 64) = v27;
            *(v9 + 80) = v28;
            *v9 = v23;
            *(v9 + 16) = v24;
          }

          v9 += 148;
          --v8;
        }

        while (v8);
      }

      ++v5;
      v6 = v7 - 1;
    }

    while (v5 != v4);
  }

  if (a2 < 1)
  {
    result = 0;
  }

  else
  {
    v18 = a2;
    v19 = (a1 + 22);
    v20 = 1;
    do
    {
      if (*(v19 - 9))
      {
        *v19 = v20++;
      }

      v19 += 74;
      --v18;
    }

    while (v18);
    result = v20 - 1;
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SortCandidatePair(unint64_t *__src, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 >= 2)
  {
    v3 = 0;
    v4 = a2 - 1;
    v5 = a2 - 1;
    do
    {
      v6 = v5;
      if (v4 > v3)
      {
        v7 = v5;
        v8 = __src;
        do
        {
          v9 = *(v8 + 351);
          v10 = *(v8 + 151);
          if ((v9 < v10 || v9 == v10 && ((v11 = *(v8 + 350), v12 = *(v8 + 150), v11 < v12) || v11 == v12 && bswap64(v8[38]) < bswap64(v8[88]))) && (*(v8 + 10) != 100 || *(v8 + 84) != 100) || *(v8 + 210) == 100 && *(v8 + 284) == 100)
          {
            memcpy(__dst, v8, sizeof(__dst));
            memcpy(v8, v8 + 50, 0x190uLL);
            memcpy(v8 + 50, __dst, 0x190uLL);
          }

          v8 += 50;
          --v7;
        }

        while (v7);
      }

      ++v3;
      v5 = v6 - 1;
    }

    while (v3 != v4);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

BOOL IsValidCandidatePair(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3)
  {
    v4 = *(a1 + 24);
    v5 = *(a2 + 24);
    if (((v5 ^ v4) & 1) == 0 && *a1 == *a2 && (*(a1 + 4) == 5) == (*(a2 + 4) == 5))
    {
      if (v4)
      {
        v8 = 0;
        if (v5)
        {
LABEL_9:
          v9 = 0;
          return v8 == v9;
        }
      }

      else
      {
        v6 = *(a1 + 44);
        v7 = v6 & 0xFF000000;
        v8 = (v6 & 0xFF0000) == 16646144;
        if (v7 != -1459617792)
        {
          v8 = 0;
        }

        if (v5)
        {
          goto LABEL_9;
        }
      }

      v19 = *(a2 + 44);
      v20 = v19 & 0xFF000000;
      v9 = (v19 & 0xFF0000) == 16646144;
      if (v20 != -1459617792)
      {
        v9 = 0;
      }

      return v8 == v9;
    }

    return 0;
  }

  v10 = *(a1 + 24);
  if (a4)
  {
    v11 = *(a2 + 24);
    if (((v11 ^ v10) & 1) != 0 || *a1 != *a2 || (*(a1 + 4) == 5) != (*(a2 + 4) == 5))
    {
      return 0;
    }

    if (v10)
    {
      v14 = 0;
    }

    else
    {
      v12 = *(a1 + 44);
      v13 = v12 & 0xFF000000;
      v14 = (v12 & 0xFF0000) == 16646144;
      if (v13 != -1459617792)
      {
        v14 = 0;
      }
    }

    if ((v11 & 1) == 0)
    {
      v26 = *(a2 + 44);
      v27 = v26 & 0xFF000000;
      v28 = (v26 & 0xFF0000) == 16646144;
      v29 = v27 == -1459617792;
      goto LABEL_58;
    }

    goto LABEL_61;
  }

  v15 = *(a2 + 24);
  if ((v15 ^ v10))
  {
    return 0;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v16 = *(a1 + 4);
  v17 = *(a2 + 4);
  if ((v16 == 5) != (v17 == 5))
  {
    return 0;
  }

  if (v16 == 1 && v17 == 1 && ((v15 | v10) & 4) != 0)
  {
    v30 = *(a1 + 24) & 1;
    goto LABEL_52;
  }

  if (v10)
  {
    v25 = 0;
  }

  else
  {
    v22 = *(a1 + 44);
    v23 = v22 & 0xFFF00000;
    v24 = HIBYTE(v22);
    v25 = HIWORD(v22) == 49320;
    if (v23 == -1408237568)
    {
      v25 = 1;
    }

    if (v24 == 10)
    {
      v25 = 1;
    }
  }

  v30 = *(a1 + 24) & 1;
  if (v15)
  {
    v35 = 0;
  }

  else
  {
    v31 = *(a2 + 44);
    v32 = v31 & 0xFFF00000;
    v33 = HIBYTE(v31);
    v34 = HIWORD(v31) == 49320;
    v35 = v32 == -1408237568 || v34;
    if (v33 == 10)
    {
      v35 = 1;
    }
  }

  if (v25 == v35)
  {
LABEL_52:
    if (!v30)
    {
      goto LABEL_54;
    }

LABEL_53:
    v14 = 0;
    goto LABEL_56;
  }

  if (v30)
  {
    if (*(a1 + 44) == *MEMORY[0x277D85EE8] && *(a1 + 52) == *(MEMORY[0x277D85EE8] + 8))
    {
      goto LABEL_53;
    }

    goto LABEL_70;
  }

  if (*(a1 + 44))
  {
LABEL_70:
    if (v15)
    {
      if (*(a2 + 44) != *MEMORY[0x277D85EE8] || *(a2 + 52) != *(MEMORY[0x277D85EE8] + 8))
      {
        return 0;
      }
    }

    else if (*(a2 + 44))
    {
      return 0;
    }

    goto LABEL_52;
  }

LABEL_54:
  v36 = *(a1 + 44);
  v37 = HIBYTE(v36);
  v14 = (v36 & 0xFF0000) == 16646144;
  if (v37 != 169)
  {
    v14 = 0;
  }

LABEL_56:
  if ((v15 & 1) == 0)
  {
    v38 = *(a2 + 44);
    v39 = HIBYTE(v38);
    v28 = (v38 & 0xFF0000) == 16646144;
    v29 = v39 == 169;
LABEL_58:
    if (!v29)
    {
      v28 = 0;
    }

    return v14 == v28;
  }

LABEL_61:
  v28 = 0;
  return v14 == v28;
}

uint64_t PairUpCandidate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v90 = a6;
  v91 = a8;
  v88 = a4;
  v89 = a5;
  v83 = a1;
  v84 = a3;
  v99 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x28223BE20](a1);
  v87 = v11;
  v86 = &v80 - 2 * v11;
  if (v12)
  {
    v13 = v86;
    v14 = 16 * v87;
    do
    {
      *v13 = 0xAAAAAAAAAAAAAAAALL;
      v13[1] = 0xAAAAAAAAAAAAAAAALL;
      v13 += 2;
      v14 -= 16;
    }

    while (v14);
  }

  v81 = v10;
  MEMORY[0x28223BE20](v9);
  v82 = v15;
  v85 = &v80 - 2 * v15;
  if (v16)
  {
    v17 = 16 * v82;
    v18 = v85;
    do
    {
      *v18 = 0xAAAAAAAAAAAAAAAALL;
      v18[1] = 0xAAAAAAAAAAAAAAAALL;
      v18 += 2;
      v17 -= 16;
    }

    while (v17);
  }

  v92 = 0;
  SetUpCandidateList(v83, a2, v86, &v92 + 1);
  SetUpCandidateList(v84, v88, v85, &v92);
  if (a2 < 1)
  {
    goto LABEL_48;
  }

  v80 = a2;
  v19 = 0;
  v20 = 0;
  v22 = v92;
  v21 = HIDWORD(v92);
  do
  {
    if (v88 >= 1)
    {
      v23 = v82;
      v24 = v83 + 148 * v19;
      v25 = v84;
      v26 = v85;
      v27 = &v86[2 * v19];
      do
      {
        if (IsCompatibleCandiatePair(v27, v26, v21, v22, 0))
        {
          v28 = v89 + 400 * v20;
          *(v28 + 368) = 0u;
          *(v28 + 384) = 0u;
          *(v28 + 336) = 0u;
          *(v28 + 352) = 0u;
          *(v28 + 304) = 0u;
          *(v28 + 320) = 0u;
          *(v28 + 272) = 0u;
          *(v28 + 288) = 0u;
          *(v28 + 240) = 0u;
          *(v28 + 256) = 0u;
          *(v28 + 208) = 0u;
          *(v28 + 224) = 0u;
          *(v28 + 176) = 0u;
          *(v28 + 192) = 0u;
          *(v28 + 144) = 0u;
          *(v28 + 160) = 0u;
          *(v28 + 112) = 0u;
          *(v28 + 128) = 0u;
          *(v28 + 80) = 0u;
          *(v28 + 96) = 0u;
          *(v28 + 48) = 0u;
          *(v28 + 64) = 0u;
          *(v28 + 16) = 0u;
          *(v28 + 32) = 0u;
          *v28 = 0u;
          v29 = *(v24 + 16);
          *v28 = *v24;
          *(v28 + 16) = v29;
          v30 = *(v24 + 32);
          v31 = *(v24 + 48);
          v32 = *(v24 + 80);
          *(v28 + 64) = *(v24 + 64);
          *(v28 + 80) = v32;
          *(v28 + 32) = v30;
          *(v28 + 48) = v31;
          v33 = *(v24 + 96);
          v34 = *(v24 + 112);
          v35 = *(v24 + 128);
          *(v28 + 144) = *(v24 + 144);
          *(v28 + 112) = v34;
          *(v28 + 128) = v35;
          *(v28 + 96) = v33;
          v36 = *v25;
          *(v28 + 164) = *(v25 + 16);
          *(v28 + 148) = v36;
          v37 = *(v25 + 32);
          v38 = *(v25 + 48);
          v39 = *(v25 + 64);
          *(v28 + 228) = *(v25 + 80);
          *(v28 + 212) = v39;
          *(v28 + 196) = v38;
          *(v28 + 180) = v37;
          v40 = *(v25 + 96);
          v41 = *(v25 + 112);
          v42 = *(v25 + 128);
          *(v28 + 292) = *(v25 + 144);
          *(v28 + 260) = v41;
          *(v28 + 276) = v42;
          *(v28 + 244) = v40;
          *(v27 + 2) = 1;
          *(v26 + 2) = 1;
          v43 = *(v24 + 22);
          v44 = *(v25 + 22);
          if (v43 >= v44)
          {
            v45 = *(v25 + 22);
          }

          else
          {
            v45 = *(v24 + 22);
          }

          *(v28 + 302) = v45;
          if (v43 <= v44)
          {
            LOWORD(v43) = v44;
          }

          *(v28 + 300) = v43;
          v46 = 12;
          if (bswap64(*(v28 + 12)) < bswap64(*(v28 + 160)))
          {
            v46 = 160;
          }

          *(v28 + 304) = *(v28 + v46);
          v47 = v91;
          *(v28 + 296) = v90;
          *(v28 + 368) = v47;
          ++v20;
        }

        v25 += 148;
        v26 += 2;
        --v23;
      }

      while (v23);
    }

    ++v19;
  }

  while (v19 != v87);
  LODWORD(a2) = v80;
  if (!v20)
  {
LABEL_48:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v48 = VRTraceErrorLogLevelToCSTR();
      v49 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v94 = v48;
        v95 = 2080;
        v96 = "PairUpCandidate";
        v97 = 1024;
        v98 = 843;
        _os_log_impl(&dword_23D497000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Try this again allowing the private-mix type of candidates", buf, 0x1Cu);
      }
    }

    if (a2 < 1)
    {
      v20 = 0;
    }

    else
    {
      v50 = 0;
      v20 = 0;
      v51 = v92;
      v52 = HIDWORD(v92);
      do
      {
        if (v88 >= 1)
        {
          v53 = v82;
          v54 = v83 + 148 * v50;
          v55 = v84;
          v56 = v85;
          v57 = &v86[2 * v50];
          do
          {
            if (IsCompatibleCandiatePair(v57, v56, v52, v51, 1))
            {
              v58 = v89 + 400 * v20;
              *(v58 + 368) = 0u;
              *(v58 + 384) = 0u;
              *(v58 + 336) = 0u;
              *(v58 + 352) = 0u;
              *(v58 + 304) = 0u;
              *(v58 + 320) = 0u;
              *(v58 + 272) = 0u;
              *(v58 + 288) = 0u;
              *(v58 + 240) = 0u;
              *(v58 + 256) = 0u;
              *(v58 + 208) = 0u;
              *(v58 + 224) = 0u;
              *(v58 + 176) = 0u;
              *(v58 + 192) = 0u;
              *(v58 + 144) = 0u;
              *(v58 + 160) = 0u;
              *(v58 + 112) = 0u;
              *(v58 + 128) = 0u;
              *(v58 + 80) = 0u;
              *(v58 + 96) = 0u;
              *(v58 + 48) = 0u;
              *(v58 + 64) = 0u;
              *(v58 + 16) = 0u;
              *(v58 + 32) = 0u;
              *v58 = 0u;
              v59 = *(v54 + 16);
              *v58 = *v54;
              *(v58 + 16) = v59;
              v60 = *(v54 + 32);
              v61 = *(v54 + 48);
              v62 = *(v54 + 80);
              *(v58 + 64) = *(v54 + 64);
              *(v58 + 80) = v62;
              *(v58 + 32) = v60;
              *(v58 + 48) = v61;
              v63 = *(v54 + 96);
              v64 = *(v54 + 112);
              v65 = *(v54 + 128);
              *(v58 + 144) = *(v54 + 144);
              *(v58 + 112) = v64;
              *(v58 + 128) = v65;
              *(v58 + 96) = v63;
              v66 = *v55;
              *(v58 + 164) = *(v55 + 16);
              *(v58 + 148) = v66;
              v67 = *(v55 + 32);
              v68 = *(v55 + 48);
              v69 = *(v55 + 64);
              *(v58 + 228) = *(v55 + 80);
              *(v58 + 212) = v69;
              *(v58 + 196) = v68;
              *(v58 + 180) = v67;
              v70 = *(v55 + 96);
              v71 = *(v55 + 112);
              v72 = *(v55 + 128);
              *(v58 + 292) = *(v55 + 144);
              *(v58 + 260) = v71;
              *(v58 + 276) = v72;
              *(v58 + 244) = v70;
              *(v57 + 2) = 1;
              *(v56 + 2) = 1;
              v73 = *(v54 + 22);
              v74 = *(v55 + 22);
              if (v73 >= v74)
              {
                v75 = *(v55 + 22);
              }

              else
              {
                v75 = *(v54 + 22);
              }

              *(v58 + 302) = v75;
              if (v73 <= v74)
              {
                LOWORD(v73) = v74;
              }

              *(v58 + 300) = v73;
              v76 = 12;
              if (bswap64(*(v58 + 12)) < bswap64(*(v58 + 160)))
              {
                v76 = 160;
              }

              *(v58 + 304) = *(v58 + v76);
              v77 = v91;
              *(v58 + 296) = v90;
              *(v58 + 368) = v77;
              ++v20;
            }

            v55 += 148;
            v56 += 2;
            --v53;
          }

          while (v53);
        }

        ++v50;
      }

      while (v50 != v87);
    }
  }

  if (v81)
  {
    *v81 = v20;
  }

  v78 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t SetUpCandidateList(uint64_t result, int a2, uint64_t a3, _DWORD *a4)
{
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = (a3 + 8);
    do
    {
      if ((*(result + 24) & 1) != 0 || (v6 = *(result + 44), HIBYTE(v6) != 10) && (v6 >> 20 != 2753 ? (v7 = (v6 & 0xFFFF0000) == -1062731776) : (v7 = 1), !v7))
      {
        *a4 |= 0x20u;
      }

      v8 = *(result + 4) - 1;
      if (v8 <= 8 && ((0x187u >> v8) & 1) != 0)
      {
        *a4 |= dword_23D4C9BA8[v8];
      }

      *(v5 - 1) = result;
      *v5 = 0;
      v5 += 4;
      result += 148;
      --v4;
    }

    while (v4);
  }

  return result;
}

BOOL IsCompatibleCandiatePair(_DWORD *a1, _DWORD *a2, int a3, int a4, int a5)
{
  v77 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *a2;
  v11 = a3 & 4;
  v12 = a4 & 4;
  v13 = *(*a2 + 4);
  v14 = *(*a1 + 4);
  v16 = v13 == 8 || v14 == 8;
  v18 = v13 == 9 || v14 == 9;
  if (a1[2])
  {
    v19 = 1;
  }

  else
  {
    v19 = a2[2] != 0;
  }

  result = 0;
  v22 = (a3 & 4) != 0 && v14 == 9;
  v23 = v13 != 9 || v12 == 0;
  if (v23 && !v22)
  {
    v58 = v19;
    v59 = v16;
    v60 = v18;
    if (!IsValidCandidatePair(v9, v10, a5, (a4 ^ a3) & 0x20))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x277CE5818];
        result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          goto LABEL_74;
        }

        v31 = *(v9 + 24);
        v32 = *(v10 + 24);
        v33 = *v9 == *v10;
        if (v31)
        {
          v35 = 0;
        }

        else
        {
          v34 = *(v9 + 44);
          v35 = 1;
          if (HIBYTE(v34) != 10 && (v34 & 0xFFF00000) != 0xAC100000)
          {
            v35 = HIWORD(v34) == 49320;
          }
        }

        if (v32)
        {
          v37 = 0;
        }

        else
        {
          v36 = *(v10 + 44);
          v37 = 1;
          if (HIBYTE(v36) != 10 && (v36 & 0xFFF00000) != 0xAC100000)
          {
            v37 = HIWORD(v36) == 49320;
          }
        }

        v38 = v32 ^ v31;
        v39 = v35 == v37;
        v41 = (v31 & 1) == 0 && (v40 = *(v9 + 44), (v40 & 0xFF000000) == 0xA9000000) && (v40 & 0xFF0000) == 16646144;
        v42 = (*(v9 + 4) == 5) ^ (*(v10 + 4) != 5);
        v44 = (v32 & 1) == 0 && (v43 = *(v10 + 44), (v43 & 0xFF000000) == 0xA9000000) && (v43 & 0xFF0000) == 16646144;
        *buf = 136316930;
        v62 = v29;
        v63 = 2080;
        v64 = "IsCompatibleCandiatePair";
        v65 = 1024;
        v66 = 773;
        v67 = 1024;
        v68 = (v38 & 1) == 0;
        v69 = 1024;
        v70 = v33;
        v71 = 1024;
        v72 = v42;
        v73 = 1024;
        v74 = v39;
        v75 = 1024;
        v76 = v41 == v44;
        _os_log_impl(&dword_23D497000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ISSAMEIPVERSIONCANDIDATE(pLC, pRC) = %d\n , ISSAMEPROTOCANDIDATE(pLC, pRC) = %d, !ISTURNMIXEDCANDIDATEPAIR(pLC, pRC) = %d, !ISPRIVATEMIXEDCANDIDATEPAIR(pLC, pRC) = %d, !ISSELFASSIGNEDMIXEDCANDIDATEPAIR(pLC, pRC) = %d", buf, 0x3Au);
      }

      goto LABEL_73;
    }

    if (v14 == 10)
    {
      v25 = v59;
      v24 = v60;
      if (v13 != 10)
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (v13 == 10)
      {
        goto LABEL_73;
      }

      v25 = v59;
      v24 = v60;
      if (v14 == 11)
      {
        if (v13 != 11)
        {
          goto LABEL_73;
        }
      }

      else if (v13 == 11)
      {
        goto LABEL_73;
      }
    }

    if (!v25 && !v24)
    {
      goto LABEL_45;
    }

    v57 = a4 & a3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      log = VRTraceErrorLogLevelToCSTR();
      v56 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(v10 + 60);
        v27 = *(v9 + 60);
        *buf = 136316162;
        v62 = log;
        v63 = 2080;
        v64 = "IsCompatibleCandiatePair";
        v65 = 1024;
        v66 = 738;
        v67 = 1024;
        v68 = v26;
        v69 = 1024;
        v70 = v27;
        _os_log_impl(&dword_23D497000, v56, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d pRC->mbIPPort.wPort = %d and (pLC->mbIPPort.wPort) = %d\n", buf, 0x28u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v53 = VRTraceErrorLogLevelToCSTR();
      loga = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v62 = v53;
        v63 = 2080;
        v64 = "IsCompatibleCandiatePair";
        v65 = 1024;
        v66 = 742;
        v67 = 1024;
        v68 = (v57 >> 2) & 1;
        v69 = 1024;
        v70 = (v57 >> 3) & 1;
        v71 = 1024;
        v72 = v58;
        v73 = 1024;
        v74 = v13 == v14;
        _os_log_impl(&dword_23D497000, loga, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d canMatchPreserved = %d, canMatchInOder = %d, eitherCandidateUsed = %d, typesMatch = %d\n", buf, 0x34u);
      }
    }

    result = v13 == v14;
    if ((v57 & 4) == 0 || !v59)
    {
      v28 = v13 == v14 && v60;
      if ((v57 & 8) != 0 && v28 && !v58)
      {
        goto LABEL_45;
      }

      if ((v57 & 4) == 0 && v59)
      {
        v46 = *(v9 + 4);
        if (v46 != 8)
        {
          goto LABEL_91;
        }

        if ((a4 & 8) != 0)
        {
          v47 = 9;
        }

        else
        {
          if ((a4 & 2) == 0)
          {
            goto LABEL_91;
          }

          v47 = 3;
        }

        v50 = *(v10 + 4);
        if (v50 != v47)
        {
LABEL_92:
          if (v50 == 8)
          {
            if ((a3 & 8) != 0)
            {
              v51 = 9;
              goto LABEL_106;
            }

            if ((a3 & 2) != 0)
            {
              goto LABEL_105;
            }
          }

          goto LABEL_73;
        }

        if (a1[2])
        {
LABEL_91:
          v50 = *(v10 + 4);
          goto LABEL_92;
        }

LABEL_45:
        result = 1;
        goto LABEL_74;
      }

      v48 = !v60;
      if (v12 | v11 | v57 & 8)
      {
        v48 = 1;
      }

      if (v48)
      {
        goto LABEL_73;
      }

      v46 = *(v9 + 4);
      if (v46 != 9)
      {
        goto LABEL_100;
      }

      if ((a4 & 2) != 0)
      {
        v49 = 3;
      }

      else
      {
        if ((a4 & 1) == 0)
        {
          goto LABEL_100;
        }

        v49 = 1;
      }

      v52 = *(v10 + 4);
      if (v52 != v49)
      {
        goto LABEL_101;
      }

      if (!a1[2])
      {
        goto LABEL_45;
      }

LABEL_100:
      v52 = *(v10 + 4);
LABEL_101:
      if (v52 == 9)
      {
        if ((a3 & 2) != 0)
        {
LABEL_105:
          v51 = 3;
LABEL_106:
          if (v46 == v51)
          {
            result = a2[2] == 0;
            goto LABEL_74;
          }

          goto LABEL_73;
        }

        if (a3)
        {
          v51 = 1;
          goto LABEL_106;
        }
      }

LABEL_73:
      result = 0;
    }
  }

LABEL_74:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DemoteCandidatePair(uint64_t result, int a2, int a3, int a4)
{
  if (result)
  {
    *(result + 296) = a2;
    *(result + 356) = a3;
    *(result + 376) = 0;
    *(result + 364) = a4;
  }

  return result;
}

uint64_t ICERemoveOneRelayBeat(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 568));
  v4 = *(a1 + 632);
  if (v4)
  {
    v5 = *(a2 + 264);
    if (*(v4 + 264) == v5)
    {
      v6 = (a1 + 632);
LABEL_7:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(v4 + 264);
          v14 = 136315906;
          v15 = v8;
          v16 = 2080;
          v17 = "ICERemoveOneRelayBeat";
          v18 = 1024;
          v19 = 157;
          v20 = 1024;
          v21 = v10;
          _os_log_impl(&dword_23D497000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Relay channel [%04X] torn down", &v14, 0x22u);
        }
      }

      v11 = *(v4 + 256);
      if (v11)
      {
        CFRelease(v11);
      }

      *v6 = *(v4 + 328);
      free(v4);
    }

    else
    {
      while (1)
      {
        v7 = v4;
        v4 = *(v4 + 328);
        if (!v4)
        {
          break;
        }

        if (*(v4 + 264) == v5)
        {
          v6 = (v7 + 328);
          goto LABEL_7;
        }
      }
    }
  }

  result = pthread_mutex_unlock((a1 + 568));
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ICERemoveOneRelayBeatForLocal(uint64_t a1, int a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 568));
  v6 = *(a1 + 632);
  if (v6)
  {
    v7 = (a1 + 632);
    do
    {
      if (*(v6 + 36) != a2 || (*(v6 + 124) & 1) != (*a3 & 1))
      {
        goto LABEL_17;
      }

      if (*(v6 + 124))
      {
        if (*(v6 + 144) != *(a3 + 20) || *(v6 + 152) != *(a3 + 28))
        {
          goto LABEL_17;
        }
      }

      else if (*(v6 + 144) != *(a3 + 20))
      {
        goto LABEL_17;
      }

      if (*(v6 + 160) == *(a3 + 36))
      {
        v9 = *(v6 + 256);
        if (v9)
        {
          CFRelease(v9);
        }

        *v7 = *(v6 + 328);
        free(v6);
        goto LABEL_18;
      }

LABEL_17:
      v7 = (v6 + 328);
LABEL_18:
      v6 = *v7;
    }

    while (*v7);
  }

  pthread_mutex_unlock((a1 + 568));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315906;
      v15 = v10;
      v16 = 2080;
      v17 = "ICERemoveOneRelayBeatForLocal";
      v18 = 1024;
      v19 = 190;
      v20 = 1024;
      v21 = a2;
      _os_log_impl(&dword_23D497000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove relay binding for call(%d).", &v14, 0x22u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ICECompressCandidates(void **a1, int *a2, int a3, uint64_t a4, int a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v19 = 0;
  v10 = CompressCandidateList(&v20, &v19, a4, a5);
  if ((v10 & 0x80000000) != 0)
  {
    v13 = v10;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICECompressCandidates_cold_4();
      }
    }

LABEL_13:
    if (v20)
    {
      free(v20);
    }
  }

  else
  {
    while (v19 > a3)
    {
      if (v20)
      {
        free(v20);
      }

      v20 = 0;
      v11 = RemoveOneCandidateFromList(a4, a5);
      if ((v11 & 0x80000000) != 0)
      {
        v13 = v11;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICECompressCandidates_cold_3();
          }
        }

        goto LABEL_25;
      }

      v12 = CompressCandidateList(&v20, &v19, a4, a5);
      if ((v12 & 0x80000000) != 0)
      {
        v13 = v12;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICECompressCandidates_cold_2();
          }
        }

        goto LABEL_13;
      }
    }

    v13 = CompressedCandidateByteOrderHToN(v20, v19);
    if ((v13 & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICECompressCandidates_cold_1();
        }
      }
    }

    else
    {
      *a1 = v20;
      *a2 = v19;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v16 = *a2;
          *buf = 136316162;
          v22 = v14;
          v23 = 2080;
          v24 = "ICECompressCandidates";
          v25 = 1024;
          v26 = 420;
          v27 = 1024;
          v28 = a3;
          v29 = 1024;
          v30 = v16;
          _os_log_impl(&dword_23D497000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICECompressCandidates succeeded(%dB->%dB).", buf, 0x28u);
        }
      }
    }
  }

LABEL_25:
  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t ICEGetCandidatesForPeer(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = malloc_type_malloc(148 * *(a1 + 192), 0x1000040C185D105uLL);
  if (v8)
  {
    v9 = *(a1 + 192);
    if (v9 < 1)
    {
      v12 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = *(a1 + 168);
        if (!a2 || *(v13 + v10 + 4) != 5)
        {
          v14 = &v8[148 * v12];
          v15 = v13 + v10;
          v16 = *(v15 + 16);
          *v14 = *v15;
          *(v14 + 1) = v16;
          v17 = *(v15 + 32);
          v18 = *(v15 + 48);
          v19 = *(v15 + 80);
          *(v14 + 4) = *(v15 + 64);
          *(v14 + 5) = v19;
          *(v14 + 2) = v17;
          *(v14 + 3) = v18;
          v20 = *(v15 + 96);
          v21 = *(v15 + 112);
          v22 = *(v15 + 128);
          *(v14 + 36) = *(v15 + 144);
          *(v14 + 7) = v21;
          *(v14 + 8) = v22;
          *(v14 + 6) = v20;
          ++v12;
          v9 = *(a1 + 192);
        }

        ++v11;
        v10 += 148;
      }

      while (v11 < v9);
    }

    *a3 = v8;
    *a4 = v12;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v28 = 136315906;
        v29 = v24;
        v30 = 2080;
        v31 = "ICEGetCandidatesForPeer";
        v32 = 1024;
        v33 = 449;
        v34 = 1024;
        v35 = v12;
        _os_log_impl(&dword_23D497000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Piggyback %d local candidates.", &v28, 0x22u);
      }
    }

    v23 = 0;
  }

  else
  {
    v23 = 2148859907;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEGetCandidatesForPeer_cold_1();
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t ICEGetCandidates(uint64_t a1, unsigned __int8 a2, uint64_t a3, int a4, void *a5, int *a6, int a7, int a8, double a9, uint64_t a10, const char *a11, void *a12, int a13, int a14)
{
  v169 = *MEMORY[0x277D85DE8];
  v147 = 0;
  v144 = 0;
  v145 = -1431655766;
  v143 = -1;
  v23 = CheckInHandleDebug();
  if (!v23)
  {
    v30 = 2148859906;
    goto LABEL_260;
  }

  v24 = v23;
  v140 = a7;
  v141 = a4;
  *&v165[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v165 = v25;
  v164 = v25;
  v161 = v25;
  v162 = v25;
  v163 = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  v146 = -21846;
  v142 = *(v24 + 16);
  memset(v168, 0, sizeof(v168));
  v167 = 0;
  memset(v166, 0, sizeof(v166));
  if (a12)
  {
    v159 = 0xAAAAAAAAAAAAAAAALL;
    *&v26 = 0xAAAAAAAAAAAAAAAALL;
    *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v157 = v26;
    v158 = v26;
    *&v156[46] = 0xAAAAAAAAAAAAAAAALL;
    *&v156[16] = v26;
    *&v156[32] = v26;
    *v156 = v26;
    IPPortFromDict = GetIPPortFromDict(a12, @"GKSRelaySelfRelayIP", @"GKSRelaySelfRelayPort", &v157);
    if ((IPPortFromDict & 0x80000000) != 0)
    {
      v30 = IPPortFromDict;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEGetCandidates_cold_1();
        }
      }

      goto LABEL_259;
    }

    v138 = a5;
    DWORD1(v158) = bswap32(DWORD1(v158));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v149 = v28;
        v150 = 2080;
        v151 = "ICEGetCandidates";
        v152 = 1024;
        v153 = 496;
        v154 = 2080;
        v155 = IPPORTToStringWithSize(v156, &v157, 0x36uLL);
        _os_log_impl(&dword_23D497000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d relay server [%s]", buf, 0x26u);
      }
    }

    v139 = a6;
    v137 = 1;
  }

  else
  {
    v138 = a5;
    v139 = a6;
    v137 = 0;
  }

  v31 = micro();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v32 = VRTraceErrorLogLevelToCSTR();
    v33 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v34 = "using relay";
      *v156 = 136316418;
      if (!a12)
      {
        v34 = &unk_23D4C9CFB;
      }

      *&v156[4] = v32;
      *&v156[12] = 2080;
      *&v156[14] = "ICEGetCandidates";
      *&v156[22] = 1024;
      *&v156[24] = 503;
      *&v156[28] = 2080;
      *&v156[30] = v34;
      *&v156[38] = 2048;
      *&v156[40] = v31;
      *&v156[48] = 1024;
      *&v156[50] = a3;
      _os_log_impl(&dword_23D497000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d candidate collection start %s: %f (call %d)", v156, 0x36u);
    }
  }

  v35 = a11;
  if (!a8)
  {
    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v53 = VRTraceErrorLogLevelToCSTR();
      v54 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *v156 = 136315650;
        *&v156[4] = v53;
        *&v156[12] = 2080;
        *&v156[14] = "ICEGetCandidates";
        *&v156[22] = 1024;
        *&v156[24] = 678;
        _os_log_impl(&dword_23D497000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d external candidate collection skipped ...", v156, 0x1Cu);
      }
    }

    v36 = 0;
    goto LABEL_60;
  }

  pthread_mutex_lock((v24 + 168));
  v36 = *(v24 + 232);
  if (!v36)
  {
LABEL_20:
    v37 = 1;
    goto LABEL_21;
  }

  while (*(v36 + 148) != a3 || !ICERetainICEList(v36))
  {
    v36 = *(v36 + 912);
    if (!v36)
    {
      goto LABEL_20;
    }
  }

  pthread_mutex_lock((v36 + 16));
  if (a12)
  {
    v82 = *(v36 + 128) == 0;
  }

  else
  {
    v82 = 1;
  }

  v83 = v82;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v84 = VRTraceErrorLogLevelToCSTR();
    v85 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *v156 = 136315906;
      *&v156[4] = v84;
      *&v156[12] = 2080;
      *&v156[14] = "ICEGetCandidates";
      *&v156[22] = 1024;
      *&v156[24] = 519;
      *&v156[28] = 1024;
      *&v156[30] = a3;
      _os_log_impl(&dword_23D497000, v85, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Found running ICE for call (%d)", v156, 0x22u);
    }
  }

  if (!v83)
  {
    *v156 = 0xAAAAAAAAAAAAAAAALL;
    RemotePrimaryCID = GetRemotePrimaryCID(a12, v156);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v91 = VRTraceErrorLogLevelToCSTR();
      v92 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v93 = *(v36 + 420);
        *v156 = 136316418;
        *&v156[4] = v91;
        *&v156[12] = 2080;
        *&v156[14] = "ICEGetCandidates";
        *&v156[22] = 1024;
        *&v156[24] = 609;
        *&v156[28] = 1024;
        *&v156[30] = v93;
        *&v156[34] = 1024;
        *&v156[36] = RemotePrimaryCID >= 0;
        *&v156[40] = 2048;
        *&v156[42] = a12;
        _os_log_impl(&dword_23D497000, v92, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Relay collection start (PE State: %d), secondary %d, %p", v156, 0x32u);
      }
    }

    *(v36 + 232) = 1;
    *(v36 + 440) = 0;
    *(v36 + 756) = 1;
    if (a11)
    {
      strncpy((v36 + 316), a11, 0x41uLL);
    }

    v94 = *(v36 + 744);
    if (v94)
    {
      CFRelease(v94);
    }

    *(v36 + 744) = CFRetain(a12);
    *(v36 + 752) = 0;
    v95 = GetIPPortFromDict(a12, @"GKSRelaySelfRelayIP", @"GKSRelaySelfRelayPort", v36 + 236);
    if ((v95 & 0x80000000) != 0)
    {
      pthread_mutex_unlock((v24 + 168));
    }

    else
    {
      *(v36 + 256) = bswap32(*(v36 + 256));
      pthread_mutex_unlock((v24 + 168));
      if (IsIPPORTValid(v36 + 236))
      {
        if (*(v36 + 420) == 6)
        {
          v30 = 2148859927;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              ICEGetCandidates_cold_5();
            }
          }

          goto LABEL_193;
        }

        *(v36 + 420) = 1;
        (*(v24 + 40))(*(v24 + 8), 0);
        while (1)
        {
          v97 = *(v36 + 420);
          if (v97 != 1)
          {
            break;
          }

          pthread_cond_wait((v36 + 80), (v36 + 16));
        }

        switch(v97)
        {
          case 3:
            *(v36 + 424) = 15;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v30 = 2148859927;
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                ICEGetCandidates_cold_3();
              }

              goto LABEL_193;
            }

            break;
          case 4:
            if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
            {
              ICEGetCandidates_cold_4();
              v30 = 2148859955;
            }

            else
            {
              v30 = 2148859955;
            }

            goto LABEL_193;
          case 6:
            *(v36 + 424) = 15;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v30 = 2148859927;
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                ICEGetCandidates_cold_2();
              }

              goto LABEL_193;
            }

            break;
          default:
            *(v36 + 420) = 0;
            pthread_mutex_unlock((v36 + 16));
            v41 = 0;
            goto LABEL_61;
        }

        v30 = 2148859927;
LABEL_193:
        pthread_mutex_unlock((v36 + 16));
        goto LABEL_258;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEGetCandidates_cold_6();
      }
    }

    if (v95)
    {
      v30 = v95;
    }

    else
    {
      v30 = 2148859905;
    }

    goto LABEL_193;
  }

  v37 = 0;
LABEL_21:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v38 = VRTraceErrorLogLevelToCSTR();
    v39 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *v156 = 136315650;
      *&v156[4] = v38;
      *&v156[12] = 2080;
      *&v156[14] = "ICEGetCandidates";
      *&v156[22] = 1024;
      *&v156[24] = 525;
      _os_log_impl(&dword_23D497000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Regular collection start.", v156, 0x1Cu);
    }
  }

  v30 = SendCollectionRequest(v24, &v147, a3, a11, a12);
  if ((v37 & 1) == 0)
  {
    pthread_mutex_unlock((v36 + 16));
  }

  pthread_mutex_unlock((v24 + 168));
  if ((v30 & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEGetCandidates_cold_8();
      }
    }

    goto LABEL_257;
  }

  v40 = v147;
  v41 = 1;
  if (!v147)
  {
    goto LABEL_61;
  }

  LODWORD(v157) = 1;
  while (1)
  {
    v42 = ICERecvUDPPacketWithTimeout(v24, v40, a3, __b, &v145, v168, v166, &v143, 500);
    if ((v42 & 0x80000000) == 0)
    {
      v43 = ProcessCollectionResponse(v24, v147, a3, __b, v145, v168, v166, &v146, a12, &v157, &v144);
      if (v43 < 0)
      {
        v45 = v35;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v50 = VRTraceErrorLogLevelToCSTR();
          v51 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            *v156 = 136316162;
            *&v156[4] = v50;
            *&v156[12] = 2080;
            *&v156[14] = "ICEGetCandidates";
            *&v156[22] = 1024;
            *&v156[24] = 580;
            *&v156[28] = 1024;
            *&v156[30] = 580;
            *&v156[34] = 1024;
            *&v156[36] = v43;
            _os_log_error_impl(&dword_23D497000, v51, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ProcessCollectionResponse failed (%08X)\n", v156, 0x28u);
          }
        }
      }

      else
      {
        v44 = v147;
        if (!v147)
        {
          goto LABEL_60;
        }

        v45 = v35;
        while (*(v44 + 6))
        {
          v44 = v44[198];
          if (!v44)
          {
            goto LABEL_164;
          }
        }
      }

      goto LABEL_52;
    }

    v43 = v42;
    v45 = v35;
    v46 = v42;
    if ((v42 > 0x1Eu || ((1 << v42) & 0x40801000) == 0) && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v134 = VRTraceErrorLogLevelToCSTR();
      v52 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *v156 = 136316162;
        *&v156[4] = v134;
        *&v156[12] = 2080;
        *&v156[14] = "ICEGetCandidates";
        *&v156[22] = 1024;
        *&v156[24] = 552;
        *&v156[28] = 1024;
        *&v156[30] = 552;
        *&v156[34] = 1024;
        *&v156[36] = v43;
        _os_log_error_impl(&dword_23D497000, v52, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICERecvUDPPacketWithTimeout failed (%08X)\n", v156, 0x28u);
      }
    }

    v47 = micro() - v31;
    if (a9 != 0.0 && v47 > a9 && v147 != 0)
    {
      break;
    }

LABEL_46:
    if (v47 > 5.0)
    {
      goto LABEL_164;
    }

    if (v46 != 12)
    {
      ReXmitCollectionRequest(*(v24 + 8), *(v24 + 720), v147, v142);
    }

LABEL_52:
    v40 = v147;
    v35 = v45;
  }

  v49 = v147;
  while (*(v49 + 6) != 1)
  {
    v49 = v49[198];
    if (!v49)
    {
      goto LABEL_46;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v86 = VRTraceErrorLogLevelToCSTR();
    v87 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *v156 = 136316162;
      *&v156[4] = v86;
      *&v156[12] = 2080;
      *&v156[14] = "ICEGetCandidates";
      *&v156[22] = 1024;
      *&v156[24] = 558;
      *&v156[28] = 2048;
      *&v156[30] = v47;
      *&v156[38] = 2048;
      *&v156[40] = a9;
      _os_log_impl(&dword_23D497000, v87, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEGetCandidates: Timed out after %f seconds, nonCellularCandidateTimeout = %f", v156, 0x30u);
    }
  }

LABEL_164:
  v88 = v147;
  v35 = v45;
  if (v147)
  {
    do
    {
      v89 = v88[198];
      free(v88);
      v147 = v89;
      v88 = v89;
    }

    while (v89);
  }

  v147 = 0;
  if (a12 && v43 < 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEGetCandidates_cold_7();
      }
    }

    v30 = 2148859955;
    goto LABEL_257;
  }

LABEL_60:
  v41 = 1;
LABEL_61:
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v55 = VRTraceErrorLogLevelToCSTR();
    v56 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v57 = micro();
      *v156 = 136315906;
      *&v156[4] = v55;
      *&v156[12] = 2080;
      *&v156[14] = "ICEGetCandidates";
      *&v156[22] = 1024;
      *&v156[24] = 681;
      *&v156[28] = 2048;
      *&v156[30] = v57;
      _os_log_impl(&dword_23D497000, v56, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d candidate collection done : %f", v156, 0x26u);
    }
  }

  pthread_mutex_lock((v24 + 96));
  v58 = *(v24 + 160);
  if (!v58)
  {
    goto LABEL_255;
  }

  v59 = 0;
  v60 = a14;
  do
  {
    if (*v58)
    {
      v61 = *v58 == 5;
    }

    else
    {
      v61 = 1;
    }

    if (v61 || *(v58 + 4) == a3)
    {
      ++v59;
    }

    v58 = *(v58 + 240);
  }

  while (v58);
  if (!v59)
  {
    goto LABEL_255;
  }

  v62 = malloc_type_calloc(1uLL, 592 * v59, 0x1000040C185D105uLL);
  if (v62)
  {
    v63 = v62;
    __src = v35;
    v64 = *(v24 + 160);
    if (!v64)
    {
      pthread_mutex_unlock((v24 + 96));
      goto LABEL_217;
    }

    v135 = v41;
    v65 = 0;
    while (2)
    {
      if (*v64)
      {
        v66 = *v64 == 5;
      }

      else
      {
        v66 = 1;
      }

      if (!v66 && *(v64 + 4) != a3 || (v67 = *(v64 + 8), v68 = *(v64 + 24), *&v168[32] = *(v64 + 40), *v168 = v67, *&v168[16] = v68, !IsIPPORTValid(v168)))
      {
LABEL_91:
        v70 = v65;
        goto LABEL_92;
      }

      if (a12)
      {
        v69 = *(v64 + 196);
        v161 = *(v64 + 180);
        v162 = v69;
        v163 = *(v64 + 212);
        if (IsIPPORTValid(&v161) && *(v64 + 220) == 1)
        {
          v96 = AddOneCandidate(v63, v65, 5, a3, *v64, &v161, 40, v168, a2);
          if (v96 < 0)
          {
            LODWORD(v70) = v65;
          }

          else
          {
            *(v64 + 220) = 0;
            LODWORD(v70) = v65 + 1;
          }

          if (v135)
          {
LABEL_207:
            pthread_mutex_unlock((v24 + 96));
            if (v70 >= 1)
            {
              v98 = v70;
              v99 = 24;
              do
              {
                if ((v63[v99] & 1) == 0)
                {
                  v100 = v70;
                  v102 = v63;
                  goto LABEL_222;
                }

                v99 += 148;
                --v98;
              }

              while (v98);
              v100 = v70 + 1;
              v101 = malloc_type_realloc(v63, 148 * (v70 + 1), 0x1000040C185D105uLL);
              if (v101)
              {
                v102 = v101;
                MakeIPPORT(v168, "0.0.0.0", 16402);
                if ((AddOneCandidate(v102, v70, 1, a3, **(v24 + 160), v168, 90, v168, a2) & 0x80000000) != 0)
                {
                  goto LABEL_216;
                }

                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  LODWORD(v70) = v70 + 1;
                  v103 = VRTraceErrorLogLevelToCSTR();
                  v104 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    *v156 = 136315650;
                    *&v156[4] = v103;
                    *&v156[12] = 2080;
                    *&v156[14] = "ICEGetCandidates";
                    *&v156[22] = 1024;
                    *&v156[24] = 898;
                    _os_log_impl(&dword_23D497000, v104, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEGetCandidates: added a dummy IPv4 candidate.", v156, 0x1Cu);
                  }

LABEL_216:
                  v100 = v70;
                }

LABEL_222:
                v105 = 148 * v100;
                v106 = malloc_type_malloc(148 * v100, 0x1000040C185D105uLL);
                if (v106)
                {
                  v107 = v100;
                  v108 = v106;
                  v109 = 0;
                  v110 = v107;
                  if (v107 <= 1)
                  {
                    v107 = 1;
                  }

                  v111 = 148 * v107;
                  do
                  {
                    v112 = &v106[v109 / 4];
                    v113 = *&v102[v109 + 16];
                    *v112 = *&v102[v109];
                    *(v112 + 1) = v113;
                    v114 = *&v102[v109 + 32];
                    v115 = *&v102[v109 + 48];
                    v116 = *&v102[v109 + 80];
                    *(v112 + 4) = *&v102[v109 + 64];
                    *(v112 + 5) = v116;
                    *(v112 + 2) = v114;
                    *(v112 + 3) = v115;
                    v117 = *&v102[v109 + 96];
                    v118 = *&v102[v109 + 112];
                    v119 = *&v102[v109 + 128];
                    *(v112 + 36) = *&v102[v109 + 144];
                    *(v112 + 7) = v118;
                    *(v112 + 8) = v119;
                    *(v112 + 6) = v117;
                    v109 += 148;
                  }

                  while (v111 != v109);
                  free(v102);
                  if (a14)
                  {
                    v120 = ICEGetNewCandidates(v24, a3, v108, v110, 1);
                    if ((v120 & 0x80000000) != 0)
                    {
                      v30 = v120;
                      if (VRTraceGetErrorLogLevelForModule() >= 3)
                      {
                        VRTraceErrorLogLevelToCSTR();
                        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                        {
                          ICEGetCandidates_cold_11();
                        }
                      }

                      goto LABEL_280;
                    }

LABEL_238:
                    if (v141)
                    {
                      *v156 = 0;
                      LODWORD(v157) = 0;
                      v30 = ICECompressCandidates(v156, &v157, *v139, v108, v110);
                      free(v108);
                      if ((v30 & 0x80000000) != 0)
                      {
                        if (VRTraceGetErrorLogLevelForModule() >= 3)
                        {
                          VRTraceErrorLogLevelToCSTR();
                          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                          {
                            ICEGetCandidates_cold_12();
                          }
                        }
                      }

                      else
                      {
                        *v139 = v157;
                        *v138 = *v156;
                      }

                      goto LABEL_257;
                    }

                    v30 = CandidateByteOrderHToN(v108, v110);
                    if ((v30 & 0x80000000) == 0)
                    {
                      *v139 = v105;
                      *v138 = v108;
                      goto LABEL_257;
                    }

                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                      {
                        ICEGetCandidates_cold_13();
                      }
                    }
                  }

                  else
                  {
                    if (!v135)
                    {
                      goto LABEL_238;
                    }

                    v122 = AddOneICEList(v24, a1, a3, v108, v110, v140, v137, &v161, __src, a12);
                    if ((v122 & 0x80000000) == 0)
                    {
                      goto LABEL_238;
                    }

                    v30 = v122;
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                      {
                        ICEGetCandidates_cold_14();
                      }
                    }
                  }

LABEL_280:
                  free(v108);
                  goto LABEL_257;
                }

                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                  {
                    ICEGetCandidates_cold_15();
                  }
                }

                v121 = v102;
              }

              else
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                  {
                    ICEGetCandidates_cold_10();
                  }
                }

                v121 = v63;
              }

              free(v121);
              goto LABEL_246;
            }

LABEL_217:
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                ICEGetCandidates_cold_16();
              }
            }

            free(v63);
LABEL_256:
            v30 = 2148859926;
            goto LABEL_257;
          }

          pthread_mutex_lock((v24 + 168));
          for (i = *(v24 + 232); i; i = *(i + 912))
          {
            if (*(i + 148) == a3)
            {
              pthread_mutex_lock((i + 16));
              if (*(i + 128))
              {
                v126 = *(v63 + 1);
                *(i + 444) = *v63;
                *(i + 460) = v126;
                v127 = *(v63 + 2);
                v128 = *(v63 + 3);
                v129 = *(v63 + 5);
                *(i + 508) = *(v63 + 4);
                *(i + 524) = v129;
                *(i + 476) = v127;
                *(i + 492) = v128;
                v130 = *(v63 + 6);
                v131 = *(v63 + 7);
                v132 = *(v63 + 8);
                *(i + 588) = *(v63 + 36);
                *(i + 556) = v131;
                *(i + 572) = v132;
                *(i + 540) = v130;
                v133 = (*(i + 234) + 2) & 0x3FFF | 0x4000;
                *(i + 234) = (*(i + 234) + 2) & 0x3FFF | 0x4000;
                AddOneRelayBeat(v24, a1, *(i + 148), __src, i + 508, i + 236, a12, v133);
                pthread_mutex_unlock((i + 16));
                pthread_mutex_unlock((v24 + 168));
                goto LABEL_207;
              }

              pthread_mutex_unlock((i + 16));
            }
          }

          pthread_mutex_unlock((v24 + 168));
          free(v63);
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              ICEGetCandidates_cold_9();
            }
          }

LABEL_255:
          pthread_mutex_unlock((v24 + 96));
          goto LABEL_256;
        }

        goto LABEL_91;
      }

      v71 = *(v64 + 112);
      v164 = *(v64 + 96);
      *v165 = v71;
      *&v165[16] = *(v64 + 128);
      if ((*v168 & 0x100) != 0)
      {
        v72 = AddOneCandidate(v63, v65, 10, a3, *v64, v168, 50, v168, a2);
      }

      else
      {
        if ((*v168 & 0x200) == 0)
        {
          if ((v168[0] & 2) != 0)
          {
            v73 = AddOneCandidate(v63, v65, 7, a3, *v64, v168, 50, v168, a2);
          }

          else
          {
            if (!IsIPPORTValid(&v164) || (v164 & 1) != (v168[0] & 1))
            {
              goto LABEL_112;
            }

            if ((v164 & 1) == 0)
            {
              if (*&v165[4] != *&v168[20])
              {
                goto LABEL_112;
              }

LABEL_111:
              v70 = v65;
              if (*&v165[20] != *&v168[36])
              {
                goto LABEL_112;
              }

LABEL_117:
              if (v65 >= v70)
              {
                v77 = v65;
              }

              else
              {
                v76 = (v64 + 48);
                if (v60)
                {
                  v77 = v70;
                  if (*v76)
                  {
                    v78 = (v64 + 48);
                    v76 = &v63[148 * v65 + 12];
                    goto LABEL_123;
                  }
                }

                else
                {
                  v78 = &v63[148 * v65 + 12];
LABEL_123:
                  *v76 = *v78;
                  v77 = v70;
                }
              }

              if (!IsIPPORTValid(&v164))
              {
                goto LABEL_137;
              }

              v79 = *(v64 + 228);
              if ((v79 & 0xFFFFFFFE) != 8)
              {
                goto LABEL_129;
              }

              if (*(v64 + 4) == a3)
              {
                if (v79 == 9)
                {
                  ++*&v165[20];
                }

LABEL_129:
                if (v79 == -1)
                {
                  v80 = 3;
                }

                else
                {
                  v80 = v79;
                }

                v81 = *(v64 + 224);
                if (v81 == -1)
                {
                  if ((*(v64 + 8) & 4) != 0)
                  {
                    LOWORD(v81) = 50;
                  }

                  else
                  {
                    LOWORD(v81) = 70;
                  }
                }

                v70 = v70 + (AddOneCandidate(v63, v70, v80, a3, *v64, &v164, v81, v168, a2) >= 0);
LABEL_137:
                if (v77 < v70)
                {
                  if (a14)
                  {
                    if (*(v64 + 136))
                    {
                      *&v63[148 * v77 + 12] = *(v64 + 136);
                    }
                  }

                  else
                  {
                    *(v64 + 136) = *&v63[148 * v77 + 12];
                  }
                }
              }

              v60 = a14;
LABEL_92:
              v64 = *(v64 + 240);
              v65 = v70;
              if (!v64)
              {
                goto LABEL_207;
              }

              continue;
            }

            if (*&v165[4] == *&v168[20] && *&v165[12] == *&v168[28])
            {
              goto LABEL_111;
            }

LABEL_112:
            if ((*(v64 + 8) & 4) != 0)
            {
              v75 = 50;
            }

            else
            {
              v75 = 90;
            }

            v73 = AddOneCandidate(v63, v65, 1, a3, *v64, v168, v75, v168, a2);
          }

          v70 = v65 + (v73 >= 0);
          goto LABEL_117;
        }

        v72 = AddOneCandidate(v63, v65, 11, a3, *v64, v168, 50, v168, a2);
      }

      break;
    }

    v70 = v65 + (v72 >= 0);
    goto LABEL_92;
  }

  pthread_mutex_unlock((v24 + 96));
LABEL_246:
  v30 = 2148859907;
LABEL_257:
  if (v36)
  {
LABEL_258:
    pthread_mutex_lock((v24 + 168));
    ICEReleaseAndFreeICEList(v36, v24, 0, a1);
    pthread_mutex_unlock((v24 + 168));
  }

LABEL_259:
  CheckOutHandleDebug();
LABEL_260:
  v124 = *MEMORY[0x277D85DE8];
  return v30;
}

BOOL ICERetainICEList(uint64_t a1)
{
  v2 = *(a1 + 416);
  if (v2 < 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICERetainICEList_cold_1(v3, a1);
      }
    }
  }

  else
  {
    *(a1 + 416) = v2 + 1;
  }

  return *(a1 + 416) > 0;
}

uint64_t ICERecvUDPPacketWithTimeout(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, void *a8, int a9)
{
  v55 = *MEMORY[0x277D85DE8];
  v16 = micro();
  pthread_mutex_lock((a1 + 496));
  v17 = (a1 + 560);
  v18 = *(a1 + 560);
  if (v18)
  {
    if (!ICECheckPacket(a1, *(a1 + 560), a2, a3))
    {
      do
      {
        v19 = v18;
        v18 = *(v18 + 1584);
        if (!v18)
        {
          goto LABEL_6;
        }
      }

      while (!ICECheckPacket(a1, v18, a2, a3));
      v17 = (v19 + 1584);
    }

    v29 = *(v18 + 1492);
    *a5 = v29;
    memcpy(a4, (v18 + 7), v29);
    v30 = *(v18 + 1528);
    v31 = *(v18 + 1512);
    *a6 = *(v18 + 1496);
    *(a6 + 16) = v31;
    *(a6 + 32) = v30;
    v32 = *(v18 + 1552);
    v33 = *(v18 + 1536);
    *(a7 + 32) = *(v18 + 1568);
    *a7 = v33;
    *(a7 + 16) = v32;
    *a8 = *(v18 + 1576);
    *v17 = *(v18 + 1584);
    free(v18);
    pthread_mutex_unlock((a1 + 496));
    v20 = 0;
    goto LABEL_31;
  }

LABEL_6:
  __dst = a4;
  v43 = a6;
  v20 = 2148859927;
  pthread_mutex_unlock((a1 + 496));
  v21 = (a9 - ((micro() - v16) * 1000.0));
  if (v21 < 1)
  {
    goto LABEL_31;
  }

  v41 = a8;
  v22 = 0;
  do
  {
    if (v22)
    {
      bzero(v22, 0x638uLL);
    }

    else
    {
      v22 = malloc_type_calloc(1uLL, 0x638uLL, 0x102004070FB87F4uLL);
      if (!v22)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v27 = VRTraceErrorLogLevelToCSTR();
          v28 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v46 = v27;
            v47 = 2080;
            v48 = "ICERecvUDPPacketWithTimeout";
            v49 = 1024;
            v50 = 2421;
            v51 = 1024;
            v52 = 2421;
            v53 = 1024;
            v54 = 1592;
            _os_log_error_impl(&dword_23D497000, v28, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: calloc(%d) failed", buf, 0x28u);
          }
        }

LABEL_17:
        v22 = 0;
        goto LABEL_19;
      }
    }

    v23 = (*(a1 + 24))(*(a1 + 8), a3, v22 + 7, v22 + 373, v22 + 374, v22 + 384, v22 + 394, v21, 1);
    v20 = v23;
    if ((v23 & 0x80000000) == 0)
    {
      ProcessMessageType(v22);
      if (ICECheckPacket(a1, v22, a2, a3))
      {
        v34 = v22[373];
        *a5 = v34;
        memcpy(__dst, v22 + 7, v34);
        v35 = *(v22 + 191);
        v36 = *(v22 + 378);
        *v43 = *(v22 + 374);
        *(v43 + 16) = v36;
        *(v43 + 32) = v35;
        v38 = *(v22 + 96);
        v37 = *(v22 + 97);
        *(a7 + 32) = *(v22 + 196);
        *a7 = v38;
        *(a7 + 16) = v37;
        *v41 = *(v22 + 197);
LABEL_30:
        free(v22);
        goto LABEL_31;
      }

      pthread_mutex_lock((a1 + 496));
      v24 = *v17;
      v25 = (a1 + 560);
      if (*v17)
      {
        do
        {
          v26 = v24;
          v24 = *(v24 + 1584);
        }

        while (v24);
        v25 = (v26 + 1584);
      }

      *v25 = v22;
      pthread_mutex_unlock((a1 + 496));
      goto LABEL_17;
    }

    if (v23 == 30)
    {
      goto LABEL_30;
    }

LABEL_19:
    v21 = (v21 - ((micro() - v16) * 1000.0));
  }

  while (v21 >= 1);
  if (v22)
  {
    free(v22);
  }

  v20 = 2148859927;
LABEL_31:
  v39 = *MEMORY[0x277D85DE8];
  return v20;
}

void AddOneRelayBeat(uint64_t a1, uint64_t a2, int a3, const char *a4, uint64_t a5, uint64_t a6, const void *a7, int a8)
{
  v49 = *MEMORY[0x277D85DE8];
  v16 = malloc_type_calloc(1uLL, 0x150uLL, 0x10A0040062F5B3BuLL);
  if (v16)
  {
    v17 = v16;
    *(v16 + 9) = a3;
    *v16 = *(a1 + 8);
    *(v16 + 1) = a2;
    if (a4)
    {
      strncpy(v16 + 57, a4, 0x41uLL);
    }

    *(v17 + 16) = 1;
    v18 = *a5;
    v19 = *(a5 + 16);
    *(v17 + 156) = *(a5 + 32);
    *(v17 + 140) = v19;
    *(v17 + 124) = v18;
    v20 = *a6;
    v21 = *(a6 + 16);
    *(v17 + 236) = *(a6 + 32);
    *(v17 + 220) = v21;
    *(v17 + 204) = v20;
    v22 = *a6;
    v23 = *(a6 + 16);
    *(v17 + 196) = *(a6 + 32);
    *(v17 + 180) = v23;
    *(v17 + 164) = v22;
    *(v17 + 31) = 0;
    *(v17 + 78) = 1;
    *(v17 + 66) = a8;
    *(v17 + 40) = *(a1 + 16);
    if (a7)
    {
      *(v17 + 32) = CFRetain(a7);
    }

    pthread_mutex_lock((a1 + 568));
    v24 = *(a1 + 632);
    if (v24)
    {
      do
      {
        v25 = v24;
        v24 = *(v24 + 328);
      }

      while (v24);
      v26 = (v25 + 328);
    }

    else
    {
      v26 = (a1 + 632);
    }

    *v26 = v17;
    pthread_mutex_unlock((a1 + 568));
    *&v48[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v47[1] = v27;
    *v48 = v27;
    v47[0] = v27;
    *&v46[14] = 0xAAAAAAAAAAAAAAAALL;
    v45[1] = v27;
    *v46 = v27;
    v45[0] = v27;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136316674;
        v32 = v28;
        v33 = 2080;
        v34 = "AddOneRelayBeat";
        v35 = 1024;
        v36 = 108;
        v37 = 1024;
        v38 = a3;
        v39 = 1024;
        v40 = a8;
        v41 = 2080;
        v42 = IPPORTToStringWithSize(v47, a5, 0x36uLL);
        v43 = 2080;
        v44 = IPPORTToStringWithSize(v45, a6, 0x36uLL);
        _os_log_impl(&dword_23D497000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Add RB(%d): channel#[%04X], local[%s], server[%s].", &v31, 0x3Cu);
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t ICEGetNewCandidates(uint64_t a1, int a2, _DWORD *a3, int a4, int a5)
{
  v48 = *MEMORY[0x277D85DE8];
  result = 2148859905;
  if (a3 && a4 >= 1)
  {
    pthread_mutex_lock((a1 + 168));
    v11 = *(a1 + 232);
    if (!v11)
    {
LABEL_39:
      pthread_mutex_unlock((a1 + 168));
      result = 0;
      goto LABEL_40;
    }

    while (*(v11 + 148) != a2)
    {
      v11 = *(v11 + 912);
      if (!v11)
      {
        goto LABEL_39;
      }
    }

    pthread_mutex_lock((v11 + 16));
    if (a5)
    {
      v12 = *(v11 + 148);
      v13 = (a4 + 3) & 0xFFFFFFFC;
      v14 = xmmword_23D4C9BF0;
      v15 = xmmword_23D4C9C00;
      v16 = vdupq_n_s64(a4 - 1);
      v17 = vdupq_n_s64(4uLL);
      v18 = 776;
      v19 = 772;
      v20 = 768;
      v21 = a3;
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v16, v15));
        if (vuzp1_s16(v22, *v14.i8).u8[0])
        {
          v21[2] = v12;
        }

        if (vuzp1_s16(v22, *&v14).i8[2])
        {
          v21[39] = v12;
        }

        if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v16, *&v14))).i32[1])
        {
          v21[76] = v12;
          v21[113] = v12;
        }

        v14 = vaddq_s64(v14, v17);
        v15 = vaddq_s64(v15, v17);
        v21 += 148;
        v13 -= 4;
      }

      while (v13);
    }

    else
    {
      v18 = 792;
      v19 = 788;
      v20 = 784;
    }

    v23 = *(v11 + v18);
    v24 = *(v11 + v20);
    v25 = *(v11 + v19);
    v26 = v24 + a4;
    if (v26 > v25)
    {
      v23 = malloc_type_realloc(*(v11 + v18), 148 * v26, 0x1000040C185D105uLL);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (!v23)
      {
        if (ErrorLogLevelForModule >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICEGetNewCandidates_cold_1();
          }
        }

        goto LABEL_38;
      }

      if (ErrorLogLevelForModule >= 7)
      {
        v37 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v29 = "local";
          *buf = 136316418;
          v39 = v37;
          v40 = 2080;
          v41 = "ICEGetNewCandidates";
          if (!a5)
          {
            v29 = "remote";
          }

          v42 = 1024;
          v43 = 347;
          v44 = 2080;
          *v45 = v29;
          *&v45[8] = 1024;
          *v46 = v25;
          *&v46[4] = 1024;
          v47[0] = v24 + a4;
          _os_log_impl(&dword_23D497000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Increase new %s candidate buffer size [%d->%d].", buf, 0x32u);
        }
      }

      v25 = v24 + a4;
    }

    memcpy(&v23[148 * v24], a3, 148 * a4);
    v30 = 768;
    if (!a5)
    {
      v30 = 784;
    }

    v31 = 772;
    if (!a5)
    {
      v31 = 788;
    }

    *(v11 + v30) = v26;
    v32 = 792;
    if (a5)
    {
      v32 = 776;
    }

    *(v11 + v31) = v25;
    *(v11 + v32) = v23;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(v11 + 148);
        *buf = 136316674;
        v39 = v33;
        v40 = 2080;
        v41 = "ICEGetNewCandidates";
        v42 = 1024;
        v43 = 365;
        v44 = 1024;
        *v45 = a4;
        *&v45[4] = 1024;
        *&v45[6] = v35;
        *v46 = 1024;
        *&v46[2] = v24 + a4;
        LOWORD(v47[0]) = 1024;
        *(v47 + 2) = v25;
        _os_log_impl(&dword_23D497000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Add %d candidate(s) for call(%d) to buffer, newCanCount %d, maxCount %d.", buf, 0x34u);
      }
    }

LABEL_38:
    pthread_mutex_unlock((v11 + 16));
    goto LABEL_39;
  }

LABEL_40:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AddOneICEList(uint64_t a1, uint64_t a2, int a3, const void *a4, int a5, int a6, int a7, __int128 *a8, char *__src, const void *a10)
{
  v49 = *MEMORY[0x277D85DE8];
  v18 = malloc_type_calloc(1uLL, 0x398uLL, 0x1020040CC000195uLL);
  if (!v18)
  {
    v23 = 2148859907;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        AddOneICEList_cold_3();
      }
    }

    goto LABEL_56;
  }

  v19 = v18;
  *v18 = a2;
  pthread_mutex_init((v18 + 16), 0);
  pthread_cond_init((v19 + 80), 0);
  *(v19 + 37) = a3;
  *(v19 + 222) = 105;
  *(v19 + 210) = 0;
  *(v19 + 117) = a3 & 0x3FFF | 0x4000;
  *(v19 + 51) = 0;
  if (a10)
  {
    IPPortFromDict = GetIPPortFromDict(a10, @"GKSRelaySelfRelayIP", @"GKSRelaySelfRelayPort", (v19 + 236));
    *(v19 + 64) = bswap32(*(v19 + 64));
    if (IPPortFromDict < 0 || !IsIPPORTValid((v19 + 236)))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v42 = v39;
          v43 = 2080;
          v44 = "AddOneICEList";
          v45 = 1024;
          v46 = 219;
          v47 = 1024;
          v48 = IPPortFromDict;
          _os_log_impl(&dword_23D497000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \n\t\t\t~~~~~~~\n\t\t\t~~~~~~~ IL: NO RELAY SERVER (%08X)?!?!?\n\t\t\t~~~~~~~", buf, 0x22u);
        }
      }

      *(v19 + 268) = 0;
      *(v19 + 236) = 0u;
      *(v19 + 252) = 0u;
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v42 = v21;
        v43 = 2080;
        v44 = "AddOneICEList";
        v45 = 1024;
        v46 = 222;
        _os_log_impl(&dword_23D497000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \n\t\t\t~~~~~~~\n\t\t\t~~~~~~~ IL: RELAY SERVER OK!!!\n\t\t\t~~~~~~~", buf, 0x1Cu);
      }
    }
  }

  if (!a7)
  {
    v33 = *(v19 + 252);
    *(v19 + 276) = *(v19 + 236);
    *(v19 + 292) = v33;
    *(v19 + 308) = *(v19 + 268);
    if (!__src)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *(v19 + 116) = 1;
  v24 = *a8;
  v25 = a8[1];
  *(v19 + 308) = *(a8 + 4);
  *(v19 + 276) = v24;
  *(v19 + 292) = v25;
  if (__src)
  {
LABEL_17:
    strncpy(v19 + 316, __src, 0x41uLL);
  }

LABEL_18:
  if (a10)
  {
    *(v19 + 93) = CFRetain(a10);
  }

  *(v19 + 189) = 1;
  *(v19 + 54) = 0;
  if (!a6)
  {
    v26 = 148 * a5;
    *(v19 + 48) = a5;
    v27 = 148 * a5;
    v28 = malloc_type_malloc(v26, 0x1000040C185D105uLL);
    *(v19 + 21) = v28;
    if (!v28)
    {
      v36 = *(v19 + 93);
      if (v36)
      {
        CFRelease(v36);
      }

      v23 = 2148859907;
      pthread_cond_destroy((v19 + 80));
      pthread_mutex_destroy((v19 + 16));
      free(v19);
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          AddOneICEList_cold_2();
        }
      }

      goto LABEL_56;
    }

    memcpy(v28, a4, v27);
    ++*(v19 + 51);
  }

  v29 = malloc_type_calloc(1uLL, 0x50uLL, 0x10200408C354D81uLL);
  *(v19 + 20) = v29;
  if (v29)
  {
    EQInit(v29);
    pthread_mutex_lock((a1 + 168));
    *(v19 + 104) = 1;
    v30 = *(a1 + 232);
    if (v30)
    {
      *(v19 + 114) = v30;
    }

    *(a1 + 232) = v19;
    pthread_mutex_unlock((a1 + 168));
    v23 = 0;
    if (a7 && __src)
    {
      for (i = *(a1 + 160); i; i = *(i + 240))
      {
        if ((*(i + 180) & 1) == (*a8 & 1))
        {
          if (*(i + 180))
          {
            if (*(i + 200) != *(a8 + 20) || *(i + 208) != *(a8 + 28))
            {
              continue;
            }

LABEL_38:
            if (*(i + 216) == *(a8 + 18))
            {
              AddOneRelayBeat(a1, a2, *(v19 + 37), __src, i + 8, (v19 + 236), a10, *(v19 + 117));
            }

            continue;
          }

          if (*(i + 200) == *(a8 + 5))
          {
            goto LABEL_38;
          }
        }
      }

      v23 = 0;
    }
  }

  else
  {
    v34 = *(v19 + 21);
    if (v34)
    {
      free(v34);
    }

    v35 = *(v19 + 93);
    if (v35)
    {
      CFRelease(v35);
    }

    v23 = 2148859907;
    pthread_cond_destroy((v19 + 80));
    pthread_mutex_destroy((v19 + 16));
    free(v19);
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        AddOneICEList_cold_1();
      }
    }
  }

LABEL_56:
  v37 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t ICEReleaseAndFreeICEList(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 416);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v7 < 0 != v6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEReleaseAndFreeICEList_cold_1(v9, a1);
      }
    }

    result = 2;
  }

  else
  {
    *(a1 + 416) = v7;
    if (v7)
    {
      goto LABEL_3;
    }

    v13 = *(a1 + 148);
    v14 = *(a1 + 744);
    if (v14)
    {
      CFRelease(v14);
    }

    pthread_mutex_destroy((a1 + 16));
    pthread_cond_destroy((a1 + 80));
    v16 = a2 + 29;
    v15 = a2[29];
    if (!v15)
    {
LABEL_3:
      result = 22;
      goto LABEL_22;
    }

    if (v15 != a1)
    {
      while (1)
      {
        v17 = v15;
        v15 = v15[114];
        if (!v15)
        {
          goto LABEL_3;
        }

        if (v15 == a1)
        {
          v16 = v17 + 114;
          break;
        }
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315906;
        v23 = v18;
        v24 = 2080;
        v25 = "ICEReleaseAndFreeICEList";
        v26 = 1024;
        v27 = 1001;
        v28 = 1024;
        v29 = v13;
        _os_log_impl(&dword_23D497000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Clean up ICEList for call '%d'", &v22, 0x22u);
      }
    }

    if (a3)
    {
      v20 = a2[7];
      if (v20)
      {
        v20(a2[1], v13, a4);
      }
    }

    *v16 = v15[114];
    free(v15);
    result = 0;
  }

LABEL_22:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ICEUpdateSMSTUNIPPort(uint64_t a1, uint64_t a2, __int128 *a3, int a4, uint64_t a5, _DWORD *a6)
{
  v7 = 2148859926;
  result = 2148859905;
  if (!a1 || !a2 || !a3)
  {
    return result;
  }

  pthread_mutex_lock((a1 + 96));
  v13 = *(a1 + 160);
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = *a2 & 1;
  while (1)
  {
    v15 = *(v13 + 8);
    if ((v15 & 1) != v14)
    {
      goto LABEL_19;
    }

    if (v14)
    {
      break;
    }

    if (*(v13 + 28) == *(a2 + 20))
    {
      goto LABEL_15;
    }

LABEL_19:
    v13 = *(v13 + 240);
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (*(v13 + 28) != *(a2 + 20) || *(v13 + 36) != *(a2 + 28))
  {
    goto LABEL_19;
  }

LABEL_15:
  if (*(v13 + 44) != *(a2 + 36) || *v13 && *v13 != 5 && *(v13 + 4) != a4)
  {
    goto LABEL_19;
  }

  v17 = (v13 + 96);
  if ((*(v13 + 96) & 1) != (*a3 & 1))
  {
    goto LABEL_32;
  }

  if (*(v13 + 96))
  {
    if (*(v13 + 116) == *(a3 + 20) && *(v13 + 124) == *(a3 + 28))
    {
      goto LABEL_31;
    }

LABEL_32:
    *(v13 + 136) = 0;
  }

  else
  {
    if (*(v13 + 116) != *(a3 + 5))
    {
      goto LABEL_32;
    }

LABEL_31:
    if (*(v13 + 132) != *(a3 + 18))
    {
      goto LABEL_32;
    }
  }

  v20 = *a3;
  v19 = a3[1];
  *(v13 + 128) = *(a3 + 4);
  *v17 = v20;
  *(v13 + 112) = v19;
  *v17 = v15 & 0xFFFFFFFE;
  v7 = 0;
  if (a6)
  {
    *a6 = ((v15 >> 2) & 1) == 0;
  }

LABEL_20:
  pthread_mutex_unlock((a1 + 96));
  return v7;
}

uint64_t ICEUpdateRelayIPPort(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, int a5)
{
  v10 = 2148859926;
  pthread_mutex_lock((a1 + 96));
  v11 = *(a1 + 160);
  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = *a2 & 1;
  while (1)
  {
    v13 = *(v11 + 8);
    if ((v13 & 1) != v12)
    {
      goto LABEL_16;
    }

    if (v12)
    {
      break;
    }

    if (*(v11 + 28) == *(a2 + 20))
    {
      goto LABEL_12;
    }

LABEL_16:
    v11 = *(v11 + 240);
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  if (*(v11 + 28) != *(a2 + 20) || *(v11 + 36) != *(a2 + 28))
  {
    goto LABEL_16;
  }

LABEL_12:
  if (*(v11 + 44) != *(a2 + 36) || *v11 && *v11 != 5 && *(v11 + 4) != a5)
  {
    goto LABEL_16;
  }

  if (!*(v11 + 220))
  {
    *(v11 + 220) = 1;
  }

  v10 = 0;
  v15 = *a3;
  v16 = a3[1];
  *(v11 + 212) = *(a3 + 4);
  *(v11 + 196) = v16;
  *(v11 + 180) = v15;
  v17 = *(a4 + 16);
  v18 = *(a4 + 32);
  *(v11 + 140) = *a4;
  *(v11 + 172) = v18;
  *(v11 + 156) = v17;
  *(v11 + 180) = v13 & 0xFFFFFFFE;
  *(v11 + 140) = v13;
LABEL_21:
  pthread_mutex_unlock((a1 + 96));
  return v10;
}

uint64_t ICEUpdateNAT64FlagForInterface(uint64_t a1, uint64_t a2, int a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2 + 4;
  if (*(a2 + 4) == 108 && *(a2 + 5) == 111)
  {
    goto LABEL_24;
  }

  v6 = CheckInHandleDebug();
  if (!v6)
  {
    v11 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEUpdateNAT64FlagForInterface_cold_1();
      }
    }

    goto LABEL_25;
  }

  v7 = v6;
  pthread_mutex_lock((v6 + 96));
  v8 = *(v7 + 160);
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = *a2 & 1;
  while (1)
  {
    if (v9 != (*(v8 + 8) & 1))
    {
      goto LABEL_14;
    }

    if (v9)
    {
      break;
    }

    if (*(a2 + 20) == *(v8 + 28))
    {
      goto LABEL_19;
    }

LABEL_14:
    v8 = *(v8 + 240);
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (*(a2 + 20) != *(v8 + 28) || *(a2 + 28) != *(v8 + 36))
  {
    goto LABEL_14;
  }

LABEL_19:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316162;
      v17 = v12;
      v18 = 2080;
      v19 = "ICEUpdateNAT64FlagForInterface";
      v20 = 1024;
      v21 = 1118;
      v22 = 2080;
      v23 = v5;
      v24 = 1024;
      v25 = a3;
      _os_log_impl(&dword_23D497000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEUpdateNAT64FlagForInterface: Interface '%s' flag=%d", &v16, 0x2Cu);
    }
  }

  *(v8 + 232) = a3;
LABEL_23:
  pthread_mutex_unlock((v7 + 96));
  CheckOutHandleDebug();
LABEL_24:
  v11 = 0;
LABEL_25:
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t ICEAddOneInterfaceWithPriorityHints(uint64_t a1, __int128 *a2, __int128 *a3, int a4, int a5, int a6, int a7)
{
  v44 = *MEMORY[0x277D85DE8];
  v13 = CheckInHandleDebug();
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    pthread_mutex_lock((v13 + 96));
    v16 = *(v14 + 728);
    pthread_mutex_unlock((v14 + 96));
    if ((v16 & 1) == 0 && *(a2 + 4) == 108 && *(a2 + 5) == 111)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v32 = 136316418;
          v33 = v17;
          v34 = 2080;
          v35 = "ICEAddOneInterfaceWithPriorityHints";
          v36 = 1024;
          v37 = 1149;
          v38 = 2048;
          v39 = v15;
          v40 = 2080;
          v41 = a2 + 4;
          v42 = 1024;
          v43 = 0;
          _os_log_impl(&dword_23D497000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEAddOneInterface  pICEInfo=%p Ignoring loopback interface '%s', enableLoopbackInterface='%d", &v32, 0x36u);
        }
      }

LABEL_16:
      CheckOutHandleDebug();
      v29 = 0;
      goto LABEL_24;
    }

    v19 = malloc_type_calloc(1uLL, 0xF8uLL, 0x1020040C4EBF4E2uLL);
    if (v19)
    {
      v20 = v19;
      *v19 = a4;
      *(v19 + 1) = a5;
      *(v19 + 56) = a6;
      *(v19 + 57) = a7;
      *(v19 + 58) = 0;
      v21 = *a2;
      v22 = a2[1];
      *(v19 + 5) = *(a2 + 4);
      *(v19 + 24) = v22;
      *(v19 + 8) = v21;
      if (a3)
      {
        v23 = *a3;
        v24 = a3[1];
        *(v19 + 16) = *(a3 + 4);
        *(v19 + 6) = v23;
        *(v19 + 7) = v24;
      }

      pthread_mutex_lock((v14 + 96));
      v27 = *(v15 + 160);
      v26 = (v15 + 160);
      v25 = v27;
      if (v27)
      {
        do
        {
          v28 = v25;
          v25 = *(v25 + 240);
        }

        while (v25);
        v26 = (v28 + 240);
      }

      *v26 = v20;
      pthread_mutex_unlock((v14 + 96));
      goto LABEL_16;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEAddOneInterfaceWithPriorityHints_cold_1();
      }
    }

    CheckOutHandleDebug();
    v29 = 2148859907;
  }

  else
  {
    v29 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEAddOneInterfaceWithPriorityHints_cold_2();
      }
    }
  }

LABEL_24:
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t ICERemoveOneInterface(uint64_t a1, uint64_t a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = CheckInHandleDebug();
  if (!v6)
  {
    v19 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICERemoveOneInterface_cold_1();
      }
    }

    goto LABEL_30;
  }

  v7 = v6;
  pthread_mutex_lock((v6 + 96));
  v8 = (v7 + 160);
  v9 = *(v7 + 160);
  if (!v9)
  {
    pthread_mutex_unlock((v7 + 96));
    goto LABEL_29;
  }

  v10 = 0;
  v11 = *a2 & 1;
  do
  {
    if ((*(v9 + 8) & 1) == v11)
    {
      if (v11)
      {
        if (*(v9 + 28) != *(a2 + 20) || *(v9 + 36) != *(a2 + 28))
        {
          goto LABEL_16;
        }
      }

      else if (*(v9 + 28) != *(a2 + 20))
      {
        goto LABEL_16;
      }

      if (*(v9 + 44) == *(a2 + 36) && *(v9 + 4) == a3)
      {
        *v8 = *(v9 + 240);
        *(v9 + 240) = v10;
        v10 = v9;
        goto LABEL_17;
      }
    }

LABEL_16:
    v8 = (v9 + 240);
LABEL_17:
    v9 = *v8;
  }

  while (*v8);
  pthread_mutex_unlock((v7 + 96));
  if (v10)
  {
    *&v33[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v33 = v13;
    v14 = MEMORY[0x277CE5818];
    v32[0] = v13;
    v32[1] = v13;
    do
    {
      v15 = v10;
      v10 = *(v10 + 30);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *v14;
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
        {
          v18 = IPPORTToStringWithSize(v32, (v15 + 8), 0x36uLL);
          *buf = 136316162;
          v23 = v16;
          v24 = 2080;
          v25 = "_ICEProcessRemovedIFList";
          v26 = 1024;
          v27 = 1193;
          v28 = 2080;
          v29 = v18;
          v30 = 2080;
          v31 = v15 + 12;
          _os_log_impl(&dword_23D497000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICE removed interface [%s, '%s'].", buf, 0x30u);
        }
      }

      ICEAddRemovedLocalIPPort(a1, (v15 + 8));
      free(v15);
    }

    while (v10);
  }

LABEL_29:
  CheckOutHandleDebug();
  v19 = 0;
LABEL_30:
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t ICECreateHandleWithCallback(uint64_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = 2148859907;
  result = 2148859905;
  if (a1 && a2)
  {
    v10 = malloc_type_calloc(1uLL, 0x2E0uLL, 0x10A0040D7798380uLL);
    if (v10)
    {
      v11 = v10;
      *(v10 + 1) = a3;
      *(v10 + 1) = *a2;
      v12 = *(a2 + 16);
      v13 = *(a2 + 32);
      v14 = *(a2 + 48);
      *(v10 + 10) = *(a2 + 64);
      *(v10 + 3) = v13;
      *(v10 + 4) = v14;
      *(v10 + 2) = v12;
      v20.__sig = 0xAAAAAAAAAAAAAAAALL;
      *v20.__opaque = 0xAAAAAAAAAAAAAAAALL;
      if (pthread_mutexattr_init(&v20))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICECreateHandleWithCallback_cold_1();
          }
        }

        free(v11);
      }

      else
      {
        pthread_mutexattr_settype(&v20, 2);
        pthread_mutex_init((v11 + 168), &v20);
        pthread_mutexattr_destroy(&v20);
        pthread_mutex_init((v11 + 96), 0);
        pthread_rwlock_init((v11 + 240), 0);
        pthread_mutex_init((v11 + 496), 0);
        pthread_mutex_init((v11 + 568), 0);
        Handle = CreateHandle();
        *a1 = Handle;
        if (Handle == 0xFFFFFFFFLL)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
          {
            ICECreateHandleWithCallback_cold_2();
            v5 = 2148859909;
          }

          else
          {
            v5 = 2148859909;
          }
        }

        else
        {
          v5 = 0;
          *(v11 + 40) = *a4;
          v16 = a4[1];
          v17 = a4[2];
          v18 = a4[4];
          *(v11 + 43) = a4[3];
          *(v11 + 44) = v18;
          *(v11 + 41) = v16;
          *(v11 + 42) = v17;
        }
      }

      result = v5;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICECreateHandleWithCallback_cold_3();
        }
      }

      result = 2148859907;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ICECreateHandle(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v9 = 0u;
  v10 = 0u;
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = 0;
  return ICECreateHandleWithCallback(a1, v8, a6, a7);
}

uint64_t ICEStartConnectivityCheckN(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4, _OWORD *a5, int a6, int a7, uint64_t a8, int a9, _DWORD *a10, const void *a11, int a12, uint64_t a13)
{
  v151 = *MEMORY[0x277D85DE8];
  v20 = 2148859905;
  v21 = CheckInHandleDebug();
  if (!v21)
  {
    v20 = 2148859906;
    goto LABEL_11;
  }

  v22 = v21;
  v133 = a7;
  pthread_mutex_lock((v21 + 168));
  v23 = *(v22 + 232);
  if (!v23)
  {
LABEL_6:
    if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
    {
      ICEStartConnectivityCheckN_cold_13();
      v20 = 2148859926;
    }

    else
    {
      v20 = 2148859926;
    }

    goto LABEL_9;
  }

  while (*(v23 + 148) != a2 || !ICERetainICEList(v23))
  {
    v23 = *(v23 + 912);
    if (!v23)
    {
      goto LABEL_6;
    }
  }

  v26 = *(v23 + 744);
  if (v26)
  {
    CFRelease(v26);
  }

  *(v23 + 744) = 0;
  if (!a11)
  {
    goto LABEL_36;
  }

  v27 = CFRetain(a11);
  *(v23 + 744) = v27;
  *(v23 + 752) = 1;
  if (*(v23 + 232) != 1)
  {
    goto LABEL_36;
  }

  v28 = *(v23 + 148);
  v137 = 0;
  cf = v27;
  if ((GetReservationTokenFromDict(v27, &v137) & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEStartConnectivityCheckN_cold_1();
      }
    }

    goto LABEL_36;
  }

  v129 = a1;
  pthread_mutex_lock((v22 + 568));
  v29 = *(v22 + 632);
  if (!v29)
  {
    goto LABEL_32;
  }

  while (1)
  {
    if (*(v29 + 36) != v28 || (*(v23 + 508) & 1) != (*(v29 + 124) & 1))
    {
      goto LABEL_31;
    }

    if (*(v23 + 508))
    {
      break;
    }

    if (*(v23 + 528) == *(v29 + 144))
    {
      goto LABEL_28;
    }

LABEL_31:
    v29 = *(v29 + 328);
    if (!v29)
    {
      goto LABEL_32;
    }
  }

  if (*(v23 + 528) != *(v29 + 144) || *(v23 + 536) != *(v29 + 152))
  {
    goto LABEL_31;
  }

LABEL_28:
  if (*(v23 + 544) != *(v29 + 160))
  {
    goto LABEL_31;
  }

  v136 = 0;
  if ((GetReservationTokenFromDict(*(v29 + 256), &v136) & 0x80000000) != 0 || v136 != v137)
  {
    goto LABEL_31;
  }

  *(v29 + 312) = 3;
  v116 = *(v29 + 256);
  if (v116)
  {
    CFRelease(v116);
  }

  *(v29 + 256) = CFRetain(cf);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v126 = VRTraceErrorLogLevelToCSTR();
    v127 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v117 = *(v29 + 264);
      *buf = 136316674;
      v140 = v126;
      v141 = 2080;
      v142 = "UpdateRBRefreshTypeAndDictionary";
      v143 = 1024;
      v144 = 138;
      v145 = 1024;
      *v146 = v28;
      *&v146[4] = 1024;
      *&v146[6] = v117;
      *&v146[10] = 1024;
      *&v146[12] = 3;
      *&v146[16] = 2048;
      *&v146[18] = cf;
      _os_log_impl(&dword_23D497000, v127, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Update RB(%d, %04X): refresh[%04X], dictionary[%p].", buf, 0x38u);
    }
  }

LABEL_32:
  pthread_mutex_unlock((v22 + 568));
  a1 = v129;
LABEL_36:
  pthread_mutex_lock((v23 + 16));
  *(v23 + 136) = 0;
  if (!*(v23 + 128))
  {
    *(v23 + 896) = a13;
    *(v23 + 904) = a13 != 0;
    *(v23 + 128) = 1;
    pthread_mutex_unlock((v23 + 16));
    pthread_mutex_unlock((v22 + 168));
    *(v23 + 140) = a12;
    if (!a5 || a6 <= 0)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_59;
      }

      v46 = VRTraceErrorLogLevelToCSTR();
      v47 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_59;
      }

      *buf = 136316418;
      v140 = v46;
      v141 = 2080;
      v142 = "ICEStartConnectivityCheckN";
      v143 = 1024;
      v144 = 1881;
      v145 = 1024;
      *v146 = 1881;
      *&v146[4] = 2048;
      *&v146[6] = a5;
      *&v146[14] = 1024;
      *&v146[16] = a6;
      v62 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: Remote candidate data is invalid (data:%p len:%d).\n";
      v63 = v47;
      goto LABEL_143;
    }

    if ((CompressedCandidateByteOrderNToH(a5, a6) & 0x80000000) != 0)
    {
      *(v23 + 212) = a9;
      *(v23 + 196) = a6 / 0x94u;
      v51 = malloc_type_malloc(a6, 0x1000040C185D105uLL);
      *(v23 + 176) = v51;
      if (!v51)
      {
        v68 = a1;
        v69 = 2148859907;
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_152;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_152;
        }

        ICEStartConnectivityCheckN_cold_7();
        goto LABEL_94;
      }

      memcpy(v51, a5, a6);
      v52 = CandidateByteOrderNToH(*(v23 + 176), *(v23 + 196));
      if ((v52 & 0x80000000) != 0)
      {
        v54 = v52;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICEStartConnectivityCheckN_cold_6();
          }
        }
      }

      else
      {
        fixed = FixFlippedCandidate(*(v23 + 176), *(v23 + 196));
        if ((fixed & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        v54 = fixed;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICEStartConnectivityCheckN_cold_5();
          }
        }
      }
    }

    else
    {
      v44 = UncompressCandidateList(a5, a6, (v23 + 176), (v23 + 196));
      if ((v44 & 0x80000000) == 0)
      {
LABEL_51:
        if (!v133)
        {
          v56 = *(v23 + 192);
          if (v56 >= 1)
          {
            v57 = *(v23 + 168);
            if (v57)
            {
LABEL_108:
              *(v23 + 148) = *(v57 + 8);
              *(v23 + 152) = *(*(v23 + 176) + 8);
              SortCandidate(v57, v56);
              SortCandidate(*(v23 + 176), *(v23 + 196));
              AppendInterfaceNameToRemoteCandidates(v23, 10);
              AppendInterfaceNameToRemoteCandidates(v23, 11);
              *&v150[14] = 0xAAAAAAAAAAAAAAAALL;
              *&v78 = 0xAAAAAAAAAAAAAAAALL;
              *(&v78 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v149[1] = v78;
              *v150 = v78;
              v149[0] = v78;
              memset(v148, 170, sizeof(v148));
              LODWORD(v79) = *(v23 + 192);
              v130 = a1;
              if (v79 >= 1)
              {
                v80 = 0;
                v81 = 0;
                do
                {
                  v82 = *(v23 + 168);
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v83 = VRTraceErrorLogLevelToCSTR();
                    v84 = *MEMORY[0x277CE5818];
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                    {
                      v131 = *(v23 + 192);
                      v85 = v82 + v80;
                      v86 = CANIDToString(v148, (v82 + v80 + 12));
                      v87 = IPPORTToStringWithSize(v149, v85 + 24, 0x36uLL);
                      v88 = *(v85 + 24);
                      *buf = 136317186;
                      v140 = v83;
                      v141 = 2080;
                      v142 = "ICEStartConnectivityCheckN";
                      v143 = 1024;
                      v144 = 1974;
                      v145 = 1024;
                      *v146 = v81 + 1;
                      *&v146[4] = 1024;
                      *&v146[6] = v131;
                      *&v146[10] = 2080;
                      *&v146[12] = v86;
                      *&v146[20] = 2080;
                      *&v146[22] = v87;
                      *&v146[30] = 1024;
                      *v147 = v88;
                      *&v147[4] = 2080;
                      *&v147[6] = v85 + 68;
                      _os_log_impl(&dword_23D497000, v84, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Local candidate(%d/%d):\tID[%s]\t[%s]\tflag(%02X) if (%s).", buf, 0x4Cu);
                    }
                  }

                  ++v81;
                  v79 = *(v23 + 192);
                  v80 += 148;
                }

                while (v81 < v79);
                a1 = v130;
              }

              LODWORD(v89) = *(v23 + 196);
              if (v89 >= 1)
              {
                v90 = 0;
                v91 = 24;
                do
                {
                  v92 = *(v23 + 176);
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v93 = VRTraceErrorLogLevelToCSTR();
                    v94 = *MEMORY[0x277CE5818];
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                    {
                      v132 = *(v23 + 196);
                      v95 = (v92 + v91);
                      v96 = CANIDToString(v148, v95 - 3);
                      v97 = IPPORTToStringWithSize(v149, v95, 0x36uLL);
                      v98 = *v95;
                      *buf = 136316930;
                      v140 = v93;
                      v141 = 2080;
                      v142 = "ICEStartConnectivityCheckN";
                      v143 = 1024;
                      v144 = 1981;
                      v145 = 1024;
                      *v146 = v90 + 1;
                      *&v146[4] = 1024;
                      *&v146[6] = v132;
                      *&v146[10] = 2080;
                      *&v146[12] = v96;
                      *&v146[20] = 2080;
                      *&v146[22] = v97;
                      *&v146[30] = 1024;
                      *v147 = v98;
                      _os_log_impl(&dword_23D497000, v94, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote candidate(%d/%d):\tID[%s]\t[%s]\tflag(%02X).", buf, 0x42u);
                    }
                  }

                  ++v90;
                  v89 = *(v23 + 196);
                  v91 += 148;
                }

                while (v90 < v89);
                LODWORD(v79) = *(v23 + 192);
                a1 = v130;
              }

              v99 = v79 * v89;
              *(v23 + 200) = v99;
              if (400 * v99)
              {
                v100 = malloc_type_calloc(1uLL, 400 * v99, 0x10200402E010713uLL);
                *(v23 + 184) = v100;
                if (v100)
                {
                  v101 = a1;
                  PairUpCandidate(*(v23 + 168), *(v23 + 192), *(v23 + 176), *(v23 + 196), v100, 1, v23 + 200, 0);
                  SortCandidatePair(*(v23 + 184), *(v23 + 200));
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v102 = VRTraceErrorLogLevelToCSTR();
                    v103 = *MEMORY[0x277CE5818];
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                    {
                      v104 = *(v23 + 148);
                      v105 = *(v23 + 152);
                      v106 = *(v23 + 192);
                      v107 = *(v23 + 196);
                      v108 = *(v23 + 168);
                      v109 = *(v23 + 176);
                      v110 = *(v23 + 184);
                      *buf = 136317442;
                      v140 = v102;
                      v141 = 2080;
                      v142 = "ICEStartConnectivityCheckN";
                      v143 = 1024;
                      v144 = 2007;
                      v145 = 1024;
                      *v146 = v104;
                      *&v146[4] = 1024;
                      *&v146[6] = v105;
                      *&v146[10] = 1024;
                      *&v146[12] = v106;
                      *&v146[16] = 1024;
                      *&v146[18] = v107;
                      *&v146[22] = 2048;
                      *&v146[24] = v108;
                      *v147 = 2048;
                      *&v147[2] = v109;
                      *&v147[10] = 2048;
                      *&v147[12] = v110;
                      _os_log_impl(&dword_23D497000, v103, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEStartConnectivityCheck(id[local:%d remote:%d] count[local:%d remote:%d] candidate[local:%p remote:%p] pair[%p]\n", buf, 0x52u);
                    }
                  }

                  v135 = 0xAAAAAAAAAAAAAAAALL;
                  v111 = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL);
                  v48 = v111;
                  if (v111)
                  {
                    *v111 = a2;
                    *(v111 + 1) = a1;
                    *&v112 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v112 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    *&v138.__opaque[24] = v112;
                    *&v138.__opaque[40] = v112;
                    *&v138.__sig = v112;
                    *&v138.__opaque[8] = v112;
                    v134 = 0xAAAAAAAAAAAAAAAALL;
                    pthread_attr_init(&v138);
                    pthread_attr_getschedparam(&v138, &v134);
                    v134.sched_priority = 56;
                    pthread_attr_setschedparam(&v138, &v134);
                    v113 = pthread_create(&v135, &v138, ConnectivityCheckProc, v48);
                    pthread_attr_destroy(&v138);
                    if (!v113)
                    {
                      if (VRTraceGetErrorLogLevelForModule() >= 7)
                      {
                        v118 = VRTraceErrorLogLevelToCSTR();
                        v119 = *MEMORY[0x277CE5818];
                        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                        {
                          v120 = "VCCExtra ";
                          if (!v133)
                          {
                            v120 = &unk_23D4C9CFB;
                          }

                          *buf = 136316162;
                          v140 = v118;
                          v141 = 2080;
                          v142 = "ICEStartConnectivityCheckN";
                          v143 = 1024;
                          v144 = 2034;
                          v145 = 2080;
                          *v146 = v120;
                          *&v146[8] = 2048;
                          *&v146[10] = v135;
                          _os_log_impl(&dword_23D497000, v119, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %sconnectivity check thread start...(%p)", buf, 0x30u);
                        }
                      }

                      pthread_mutex_lock((v22 + 168));
                      v121 = *(v22 + 232);
                      if (v121)
                      {
                        while (v121 != v23)
                        {
                          v20 = 0;
                          v121 = *(v121 + 912);
                          if (!v121)
                          {
                            goto LABEL_9;
                          }
                        }

                        v20 = 0;
                        *(v121 + 8) = v135;
                        --*(v121 + 416);
                      }

                      else
                      {
                        v20 = 0;
                      }

                      goto LABEL_9;
                    }

                    v20 = v113 | 0xC0150000;
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                      {
                        ICEStartConnectivityCheckN_cold_10();
                      }

                      goto LABEL_168;
                    }

                    goto LABEL_167;
                  }
                }

                else
                {
                  v101 = a1;
                  if (VRTraceGetErrorLogLevelForModule() < 3 || (VRTraceErrorLogLevelToCSTR(), !os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
                  {
                    v48 = 0;
                    v20 = 2148859907;
LABEL_167:
                    a1 = v101;
                    goto LABEL_168;
                  }

                  ICEStartConnectivityCheckN_cold_11();
                  v48 = 0;
                }

                v20 = 2148859907;
                goto LABEL_167;
              }

              v68 = a1;
              v69 = 2148859926;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v114 = VRTraceErrorLogLevelToCSTR();
                v115 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  v140 = v114;
                  v141 = 2080;
                  v142 = "ICEStartConnectivityCheckN";
                  v143 = 1024;
                  v144 = 1988;
                  v145 = 1024;
                  *v146 = 1988;
                  _os_log_impl(&dword_23D497000, v115, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: No local or no remote candidates", buf, 0x22u);
                  v48 = 0;
                  v20 = 2148859926;
                  goto LABEL_153;
                }
              }

LABEL_152:
              v48 = 0;
              v20 = v69;
              goto LABEL_153;
            }
          }

          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_59;
          }

          v58 = VRTraceErrorLogLevelToCSTR();
          v59 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_59;
          }

          v60 = *(v23 + 192);
          v61 = *(v23 + 168);
          *buf = 136316674;
          v140 = v58;
          v141 = 2080;
          v142 = "ICEStartConnectivityCheckN";
          v143 = 1024;
          v144 = 1923;
          v145 = 1024;
          *v146 = 1923;
          *&v146[4] = 1024;
          *&v146[6] = a2;
          *&v146[10] = 1024;
          *&v146[12] = v60;
          *&v146[16] = 2048;
          *&v146[18] = v61;
          v62 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: Local connection data is invalid (id:%d iLCCount:%d local data:%p).\n";
          v63 = v59;
          v64 = 56;
          goto LABEL_144;
        }

        if (a3 && a4 > 0)
        {
          if ((CompressedCandidateByteOrderNToH(a3, a4) & 0x80000000) == 0)
          {
            v45 = UncompressCandidateList(a3, a4, (v23 + 168), (v23 + 192));
LABEL_106:
            v54 = v45;
            if ((v45 & 0x80000000) == 0)
            {
              v57 = *(v23 + 168);
              v56 = *(v23 + 192);
              goto LABEL_108;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                ICEStartConnectivityCheckN_cold_9();
              }
            }

            goto LABEL_138;
          }

          *(v23 + 192) = a4 / 0x94;
          v77 = malloc_type_calloc(1uLL, a4, 0x1000040C185D105uLL);
          *(v23 + 168) = v77;
          if (v77)
          {
            memcpy(v77, a3, a4);
            v45 = CandidateByteOrderNToH(*(v23 + 168), a4);
            goto LABEL_106;
          }

          v68 = a1;
          v69 = 2148859907;
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_152;
          }

          VRTraceErrorLogLevelToCSTR();
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_152;
          }

          ICEStartConnectivityCheckN_cold_8();
LABEL_94:
          v48 = 0;
          v20 = 2148859907;
LABEL_153:
          a1 = v68;
          goto LABEL_168;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3 || (v66 = VRTraceErrorLogLevelToCSTR(), v67 = *MEMORY[0x277CE5818], !os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
        {
LABEL_59:
          v48 = 0;
LABEL_168:
          pthread_mutex_lock((v22 + 168));
          pthread_mutex_lock((v23 + 16));
          *(v23 + 128) = 0;
          *(v23 + 196) = 0;
          v122 = *(v23 + 168);
          if (v122)
          {
            *(v23 + 168) = 0;
            free(v122);
          }

          v123 = *(v23 + 176);
          if (v123)
          {
            *(v23 + 176) = 0;
            free(v123);
          }

          v124 = *(v23 + 184);
          if (v124)
          {
            *(v23 + 184) = 0;
            free(v124);
          }

          v125 = *(v23 + 160);
          if (v125)
          {
            *(v23 + 160) = 0;
            FreeEQ(v125);
          }

          if (v48)
          {
            free(v48);
          }

          pthread_mutex_unlock((v23 + 16));
          --*(v23 + 416);
          ICEReleaseAndFreeICEList(v23, v22, 0, a1);
          goto LABEL_9;
        }

        *buf = 136316418;
        v140 = v66;
        v141 = 2080;
        v142 = "ICEStartConnectivityCheckN";
        v143 = 1024;
        v144 = 1930;
        v145 = 1024;
        *v146 = 1930;
        *&v146[4] = 2048;
        *&v146[6] = a3;
        *&v146[14] = 1024;
        *&v146[16] = a4;
        v62 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: Local candidate data is invalid (data:%p len:%d).\n";
        v63 = v67;
LABEL_143:
        v64 = 50;
LABEL_144:
        _os_log_error_impl(&dword_23D497000, v63, OS_LOG_TYPE_ERROR, v62, buf, v64);
        goto LABEL_59;
      }

      v54 = v44;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEStartConnectivityCheckN_cold_12();
        }
      }
    }

LABEL_138:
    v48 = 0;
    v20 = v54;
    goto LABEL_168;
  }

  if (*a10 != 1)
  {
    v20 = 0;
    goto LABEL_100;
  }

  v137 = 0;
  LODWORD(v136) = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v31 = VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(v23 + 148);
      *buf = 136315906;
      v140 = v31;
      v141 = 2080;
      v142 = "ICEStartPERelay";
      v143 = 1024;
      v144 = 1298;
      v145 = 1024;
      *v146 = v33;
      _os_log_impl(&dword_23D497000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEStartPERelay call id (%d)", buf, 0x22u);
    }
  }

  if (!a5 || a6 <= 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v49 = VRTraceErrorLogLevelToCSTR();
      v50 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v140 = v49;
        v141 = 2080;
        v142 = "ICEStartPERelay";
        v143 = 1024;
        v144 = 1301;
        v145 = 1024;
        *v146 = 1301;
        *&v146[4] = 2048;
        *&v146[6] = a5;
        *&v146[14] = 1024;
        *&v146[16] = a6;
        _os_log_error_impl(&dword_23D497000, v50, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: invalid remote candidate data (%p, %d)", buf, 0x32u);
      }
    }

    goto LABEL_98;
  }

  v34 = CompressedCandidateByteOrderNToH(a5, a6);
  if ((v34 & 0x80000000) != 0)
  {
    v35 = v34;
    HIDWORD(v55) = -1857283155 * a6;
    LODWORD(v55) = -1857283155 * a6;
    if ((v55 >> 2) < 0x1BACF92)
    {
      v70 = a5[1];
      *(v23 + 592) = *a5;
      *(v23 + 608) = v70;
      v71 = a5[2];
      v72 = a5[3];
      v73 = a5[5];
      *(v23 + 656) = a5[4];
      *(v23 + 672) = v73;
      *(v23 + 624) = v71;
      *(v23 + 640) = v72;
      v74 = a5[6];
      v75 = a5[7];
      v76 = a5[8];
      *(v23 + 736) = *(a5 + 36);
      *(v23 + 704) = v75;
      *(v23 + 720) = v76;
      *(v23 + 688) = v74;
LABEL_96:
      *(v23 + 400) = 0;
      *(v23 + 408) = 0;
      *(v23 + 420) = 5;
      (*(v22 + 40))(*(v22 + 8), 0);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEStartConnectivityCheckN_cold_2();
      }
    }

    goto LABEL_97;
  }

  v35 = UncompressCandidateList(a5, a6, &v137, &v136);
  if ((v35 & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEStartConnectivityCheckN_cold_4();
      }
    }

LABEL_97:
    v20 = v35;
    goto LABEL_98;
  }

  if (v136 == 1)
  {
    v36 = v137;
    v37 = *(v137 + 1);
    *(v23 + 592) = *v137;
    *(v23 + 608) = v37;
    v38 = v36[5];
    v40 = v36[2];
    v39 = v36[3];
    *(v23 + 656) = v36[4];
    *(v23 + 672) = v38;
    *(v23 + 624) = v40;
    *(v23 + 640) = v39;
    v42 = v36[7];
    v41 = v36[8];
    v43 = v36[6];
    *(v23 + 736) = *(v36 + 36);
    *(v23 + 704) = v42;
    *(v23 + 720) = v41;
    *(v23 + 688) = v43;
    goto LABEL_96;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v65 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      ICEStartConnectivityCheckN_cold_3(v65, &v136);
    }
  }

LABEL_98:
  if (v137)
  {
    free(v137);
  }

LABEL_100:
  pthread_mutex_unlock((v23 + 16));
  --*(v23 + 416);
LABEL_9:
  pthread_mutex_unlock((v22 + 168));
  CheckOutHandleDebug();
LABEL_11:
  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t ICEProcessRemoteInterfaceChange(uint64_t a1, int a2, unsigned __int8 *a3, int a4, int a5, int a6)
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = 2148859905;
  v29 = 0;
  v28 = 0;
  if (a3 && a4 > 0)
  {
    v12 = CheckInHandleDebug();
    if (!v12)
    {
      v8 = 2148859906;
      goto LABEL_28;
    }

    v13 = v12;
    if (!a6)
    {
      pthread_mutex_lock((v12 + 168));
      v17 = *(v13 + 232);
      if (!v17)
      {
LABEL_17:
        pthread_mutex_unlock((v13 + 168));
        if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
        {
          ICEProcessRemoteInterfaceChange_cold_2();
          v8 = 2148859926;
        }

        else
        {
          v8 = 2148859926;
        }

LABEL_25:
        if (v29)
        {
          free(v29);
        }

        CheckOutHandleDebug();
        goto LABEL_28;
      }

      while (*(v17 + 148) != a2)
      {
        v17 = *(v17 + 912);
        if (!v17)
        {
          goto LABEL_17;
        }
      }

      if (*(v17 + 208) >= a5)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(v17 + 208);
            *buf = 136316162;
            v31 = v25;
            v32 = 2080;
            v33 = "ICEProcessRemoteInterfaceChange";
            v34 = 1024;
            v35 = 1370;
            v36 = 1024;
            v37 = a5;
            v38 = 1024;
            LODWORD(v39) = v27;
            _os_log_impl(&dword_23D497000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote candidate data is not new, skip. (%d<=%d)", buf, 0x28u);
          }
        }

        pthread_mutex_unlock((v13 + 168));
        v8 = 0;
        goto LABEL_25;
      }

      pthread_mutex_lock((v17 + 16));
      *(v17 + 208) = a5;
      pthread_mutex_unlock((v17 + 16));
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(v17 + 208);
          *buf = 136315906;
          v31 = v22;
          v32 = 2080;
          v33 = "ICEProcessRemoteInterfaceChange";
          v34 = 1024;
          v35 = 1380;
          v36 = 1024;
          v37 = v24;
          _os_log_impl(&dword_23D497000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Update remote candidate version (%d)", buf, 0x22u);
        }
      }

      pthread_mutex_unlock((v13 + 168));
    }

    v14 = CompressedCandidateByteOrderNToH(a3, a4);
    if ((v14 & 0x80000000) != 0)
    {
      v8 = v14;
    }

    else
    {
      v8 = UncompressCandidateList(a3, a4, &v29, &v28);
      if ((v8 & 0x80000000) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICEProcessRemoteInterfaceChange_cold_1();
          }
        }

        goto LABEL_25;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v31 = v18;
        v32 = 2080;
        v33 = "ICEProcessRemoteInterfaceChange";
        v34 = 1024;
        v35 = 1403;
        _os_log_impl(&dword_23D497000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Process new remote connection blob.", buf, 0x1Cu);
      }
    }

    ICEGetNewCandidates(v13, a2, v29, v28, 0);
    goto LABEL_25;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v31 = v15;
      v32 = 2080;
      v33 = "ICEProcessRemoteInterfaceChange";
      v34 = 1024;
      v35 = 1355;
      v36 = 1024;
      v37 = 1355;
      v38 = 2048;
      v39 = a3;
      v40 = 1024;
      v41 = a4;
      _os_log_error_impl(&dword_23D497000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: Remote candidate data is invalid (data:%p len:%d).\n", buf, 0x32u);
    }
  }

LABEL_28:
  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t ICEGetRemoteCIDForDstIPPort(uint64_t a1, int a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v5 = 2148859926;
  result = 2148859905;
  if (!a4 || !a5)
  {
    return result;
  }

  v11 = CheckInHandleDebug();
  if (!v11)
  {
    return 2148859906;
  }

  v12 = v11;
  pthread_mutex_lock((v11 + 168));
  v13 = *(v12 + 232);
  if (!v13)
  {
LABEL_7:
    pthread_mutex_unlock((v12 + 168));
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEGetRemoteCIDForDstIPPort_cold_1();
      }
    }

    goto LABEL_25;
  }

  while (*(v13 + 148) != a2)
  {
    v13 = *(v13 + 912);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  pthread_mutex_lock((v13 + 16));
  v14 = *(v13 + 196);
  if (v14 < 1)
  {
    goto LABEL_24;
  }

  v15 = *a3 & 1;
  v16 = *(v13 + 176) + 44;
  while (1)
  {
    if (v15 == (*(v16 - 20) & 1))
    {
      if (v15)
      {
        if (*(a3 + 20) != *v16 || *(a3 + 28) != *(v16 + 8))
        {
          goto LABEL_23;
        }
      }

      else if (*(a3 + 20) != *v16)
      {
        goto LABEL_23;
      }

      if (*(a3 + 36) == *(v16 + 16))
      {
        break;
      }
    }

LABEL_23:
    v16 += 148;
    if (!--v14)
    {
      goto LABEL_24;
    }
  }

  *a4 = *(v16 - 32);
  *a5 = 8;
LABEL_24:
  pthread_mutex_unlock((v13 + 16));
  pthread_mutex_unlock((v12 + 168));
  v5 = 0;
LABEL_25:
  CheckOutHandleDebug();
  return v5;
}

uint64_t ICEGetNextBestCandidate(uint64_t a1, int a2, int a3, int *a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = 2148859926;
  result = 2148859905;
  if (a4 && a5)
  {
    v11 = CheckInHandleDebug();
    if (v11)
    {
      v12 = v11;
      pthread_mutex_lock((v11 + 168));
      v13 = *(v12 + 232);
      if (v13)
      {
        while (*(v13 + 148) != a2)
        {
          v13 = *(v13 + 912);
          if (!v13)
          {
            goto LABEL_7;
          }
        }

        pthread_mutex_lock((v13 + 16));
        if (a3)
        {
          v14 = *(v13 + 168);
          v15 = *(v13 + 192);
        }

        else
        {
          v14 = *(v13 + 176);
          v15 = *(v13 + 196);
        }

        GetNextBestCandidate(a4, v14, v15, a5);
        pthread_mutex_unlock((v13 + 16));
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(a5 + 44);
            v20 = 136316162;
            v21 = v16;
            v22 = 2080;
            v23 = "ICEGetNextBestCandidate";
            v24 = 1024;
            v25 = 1553;
            v26 = 1024;
            v27 = a3;
            v28 = 1024;
            v29 = v18;
            _os_log_impl(&dword_23D497000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEGetNextBestCandidate: %d, %x", &v20, 0x28u);
          }
        }

        pthread_mutex_unlock((v12 + 168));
        v5 = 0;
      }

      else
      {
LABEL_7:
        pthread_mutex_unlock((v12 + 168));
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICEGetNextBestCandidate_cold_1();
          }
        }
      }

      CheckOutHandleDebug();
      result = v5;
    }

    else
    {
      result = 2148859906;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void GetNextBestCandidate(int *a1, uint64_t a2, int a3, uint64_t a4)
{
  v78 = *MEMORY[0x277D85DE8];
  v52 = *a1;
  *&v77[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v76[1] = v7;
  *v77 = v7;
  v76[0] = v7;
  memset(v75, 170, sizeof(v75));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v58 = v8;
      v59 = 2080;
      v60 = "GetNextBestCandidate";
      v61 = 1024;
      v62 = 1479;
      v63 = 1024;
      v64 = a3;
      _os_log_impl(&dword_23D497000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GetNextBestCandidate: searching list %d", buf, 0x22u);
    }
  }

  if (a3 < 1)
  {
    if (!a2)
    {
      *(a4 + 144) = 0;
      *(a4 + 112) = 0u;
      *(a4 + 128) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 96) = 0u;
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *a4 = 0u;
      goto LABEL_45;
    }

LABEL_44:
    v42 = *(a2 + 64);
    v43 = *(a2 + 80);
    v44 = *(a2 + 48);
    *(a4 + 32) = *(a2 + 32);
    v45 = *(a2 + 16);
    *a4 = *a2;
    *(a4 + 16) = v45;
    *(a4 + 64) = v42;
    *(a4 + 80) = v43;
    *(a4 + 48) = v44;
    v46 = *(a2 + 96);
    v47 = *(a2 + 112);
    v48 = *(a2 + 128);
    *(a4 + 144) = *(a2 + 144);
    *(a4 + 112) = v47;
    *(a4 + 128) = v48;
    *(a4 + 96) = v46;
    *(a4 + 44) = 0;
    goto LABEL_45;
  }

  v10 = 0;
  v53 = 0;
  v51 = 0;
  v54 = a3;
  v11 = 148 * a3;
  v12 = 1;
  v56 = 1;
  v50 = 1;
  do
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v15 = CANIDToString(v75, (a2 + v10 + 12));
        v16 = IPPORTToStringWithSize(v76, a2 + v10 + 24, 0x36uLL);
        v17 = *(a2 + v10 + 24);
        *buf = 136317186;
        v58 = v13;
        v59 = 2080;
        v60 = "GetNextBestCandidate";
        v61 = 1024;
        v62 = 1484;
        v63 = 1024;
        v64 = v12;
        v65 = 1024;
        v66 = v54;
        v67 = 2080;
        v68 = v15;
        v69 = 2080;
        v70 = v16;
        v71 = 1024;
        v72 = v17;
        v73 = 2080;
        v74 = a2 + 68 + v10;
        _os_log_impl(&dword_23D497000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GetNextBestCandidate(%d/%d):\tID[%s]\t[%s]\tflag(%02X) if (%s).", buf, 0x4Cu);
      }
    }

    v18 = a2 + v10;
    if ((*(a2 + v10 + 24) & 1) == 0)
    {
      v19 = a2 + v10;
      v20 = *(a2 + v10 + 44);
      if (v20)
      {
        v21 = *(v19 + 4);
        if (v21 >= 2)
        {
          v22 = *a1;
          if (v56)
          {
            v56 = (v22 & 1) == 0 && v20 == a1[5] && *(a2 + v10 + 60) == *(a1 + 18);
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v23 = VRTraceErrorLogLevelToCSTR();
              v24 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v58 = v23;
                v59 = 2080;
                v60 = "GetNextBestCandidate";
                v61 = 1024;
                v62 = 1498;
                _os_log_impl(&dword_23D497000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GetNextBestCandidate: mark the first external candidate", buf, 0x1Cu);
              }
            }

            v53 = a2 + v10;
          }

          else if ((v22 & 1) == 0 && v20 == a1[5] && *(a2 + v10 + 60) == *(a1 + 18))
          {
            v56 = 0;
          }

          else
          {
            v56 = 0;
            v25 = v53;
            if (v21 < *(v53 + 4))
            {
              v25 = a2 + v10;
            }

            v53 = v25;
          }

          if (((*(v18 + 24) ^ v52) & 4) != 0)
          {
            if (!v50 && *(v19 + 4) >= *(v51 + 4))
            {
              v18 = v51;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v26 = VRTraceErrorLogLevelToCSTR();
              v27 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v58 = v26;
                v59 = 2080;
                v60 = "GetNextBestCandidate";
                v61 = 1024;
                v62 = 1510;
                v63 = 1024;
                v64 = 0;
                _os_log_impl(&dword_23D497000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GetNextBestCandidate: got excluded candidate %d", buf, 0x22u);
              }
            }

            v50 = 0;
            v51 = v18;
          }
        }
      }
    }

    ++v12;
    v10 += 148;
  }

  while (v11 != v10);
  if (!v51)
  {
    if (v53)
    {
      v35 = *(v53 + 16);
      *a4 = *v53;
      *(a4 + 16) = v35;
      v36 = *(v53 + 32);
      v37 = *(v53 + 48);
      v38 = *(v53 + 80);
      *(a4 + 64) = *(v53 + 64);
      *(a4 + 80) = v38;
      *(a4 + 32) = v36;
      *(a4 + 48) = v37;
      v39 = *(v53 + 96);
      v40 = *(v53 + 112);
      v41 = *(v53 + 128);
      *(a4 + 144) = *(v53 + 144);
      *(a4 + 112) = v40;
      *(a4 + 128) = v41;
      *(a4 + 96) = v39;
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v28 = *(v51 + 16);
  *a4 = *v51;
  *(a4 + 16) = v28;
  v29 = *(v51 + 32);
  v30 = *(v51 + 48);
  v31 = *(v51 + 80);
  *(a4 + 64) = *(v51 + 64);
  *(a4 + 80) = v31;
  *(a4 + 32) = v29;
  *(a4 + 48) = v30;
  v32 = *(v51 + 96);
  v33 = *(v51 + 112);
  v34 = *(v51 + 128);
  *(a4 + 144) = *(v51 + 144);
  *(a4 + 112) = v33;
  *(a4 + 128) = v34;
  *(a4 + 96) = v32;
LABEL_45:
  v49 = *MEMORY[0x277D85DE8];
}

uint64_t ICEGetRemoteICEVersion(uint64_t a1, int a2, _DWORD *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    pthread_mutex_lock((v5 + 168));
    v7 = *(v6 + 232);
    if (v7)
    {
      while (*(v7 + 148) != a2)
      {
        v7 = *(v7 + 912);
        if (!v7)
        {
          goto LABEL_13;
        }
      }

      pthread_mutex_lock((v7 + 16));
      if (a3)
      {
        *a3 = *(v7 + 888);
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(v7 + 888);
          v13 = 136315906;
          v14 = v9;
          v15 = 2080;
          v16 = "ICEGetRemoteICEVersion";
          v17 = 1024;
          v18 = 1619;
          v19 = 1024;
          v20 = v11;
          _os_log_impl(&dword_23D497000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEGetRemoteICEVersion: remote ICE Version (%u)", &v13, 0x22u);
        }
      }

      pthread_mutex_unlock((v7 + 16));
    }

LABEL_13:
    pthread_mutex_unlock((v6 + 168));
    CheckOutHandleDebug();
    result = 0;
  }

  else
  {
    result = 2148859906;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ICEAddRemovedLocalIPPort(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = 2148859906;
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = v4;
  *&v39[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38[1] = v6;
  *v39 = v6;
  v38[0] = v6;
  pthread_mutex_lock((v4 + 168));
  v7 = *(v5 + 232);
  if (!v7)
  {
    v3 = 0;
    goto LABEL_24;
  }

  v8 = MEMORY[0x277CE5818];
  while (1)
  {
    pthread_mutex_lock((v7 + 16));
    v9 = *(v7 + 808);
    v10 = *(v7 + 812);
    if (v9 >= v10)
    {
      break;
    }

LABEL_10:
    v15 = *(v7 + 816) + 40 * v9;
    v16 = *a2;
    v17 = *(a2 + 16);
    *(v15 + 32) = *(a2 + 32);
    *v15 = v16;
    *(v15 + 16) = v17;
    ++*(v7 + 808);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v20 = IPPORTToStringWithSize(v38, a2, 0x36uLL);
        v21 = *(v7 + 148);
        v22 = *(v7 + 808);
        *buf = 136316418;
        v28 = v18;
        v29 = 2080;
        v30 = "ICEAddRemovedLocalIPPort";
        v31 = 1024;
        v32 = 1666;
        v33 = 2080;
        *v34 = v20;
        *&v34[8] = 1024;
        v35 = v21;
        v36 = 1024;
        v37 = v22;
        _os_log_impl(&dword_23D497000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Add localIPPort [%s] to removed list for call(%08X), count(%d).", buf, 0x32u);
      }
    }

    v23 = *(v5 + 40);
    if (v23)
    {
      v23(*(v5 + 8), 0);
    }

    v24 = *(v5 + 80);
    if (v24)
    {
      v24(*(v5 + 8), *(v7 + 148), a2, 1);
    }

    pthread_mutex_unlock((v7 + 16));
    v7 = *(v7 + 912);
    if (!v7)
    {
      v3 = 0;
      goto LABEL_24;
    }
  }

  v11 = malloc_type_realloc(*(v7 + 816), 40 * v10 + 40, 0x100004053E81896uLL);
  if (v11)
  {
    *(v7 + 816) = v11;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(v7 + 812);
        *buf = 136316162;
        v28 = v12;
        v29 = 2080;
        v30 = "ICEAddRemovedLocalIPPort";
        v31 = 1024;
        v32 = 1657;
        v33 = 1024;
        *v34 = v14;
        *&v34[4] = 1024;
        *&v34[6] = v14 + 1;
        _os_log_impl(&dword_23D497000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Increase removed local buffer size (%d->%d).", buf, 0x28u);
      }
    }

    ++*(v7 + 812);
    v9 = *(v7 + 808);
    goto LABEL_10;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      ICEAddRemovedLocalIPPort_cold_1();
    }
  }

  pthread_mutex_unlock((v7 + 16));
  v3 = 2148859907;
LABEL_24:
  pthread_mutex_unlock((v5 + 168));
  CheckOutHandleDebug();
LABEL_25:
  v25 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ICEAddRemovedRemoteIPPort(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v67 = *MEMORY[0x277D85DE8];
  v54 = 0;
  v53 = 0;
  *&v66[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v65[1] = v6;
  *v66 = v6;
  v65[0] = v6;
  if (!a3 || a4 <= 0)
  {
    v11 = 2148859905;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v56 = v13;
        v57 = 2080;
        v58 = "ICEAddRemovedRemoteIPPort";
        v59 = 1024;
        v60 = 1694;
        v61 = 1024;
        *v62 = 1694;
        *&v62[4] = 2048;
        *&v62[6] = a3;
        v63 = 1024;
        v64 = a4;
        _os_log_error_impl(&dword_23D497000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: Remote candidate data is invalid (data:%p len:%d).\n", buf, 0x32u);
      }
    }

    goto LABEL_76;
  }

  v8 = CheckInHandleDebug();
  if (!v8)
  {
    v11 = 2148859906;
    goto LABEL_76;
  }

  v9 = v8;
  v10 = CompressedCandidateByteOrderNToH(a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = UncompressCandidateList(a3, a4, &v54, &v53);
    if ((v11 & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEAddRemovedRemoteIPPort_cold_2();
        }
      }

      v12 = 0;
      goto LABEL_71;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v56 = v15;
      v57 = 2080;
      v58 = "ICEAddRemovedRemoteIPPort";
      v59 = 1024;
      v60 = 1713;
      v61 = 1024;
      *v62 = a2;
      _os_log_impl(&dword_23D497000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEGetRemovedRemoteInterface for call(%08X).", buf, 0x22u);
    }
  }

  pthread_mutex_lock((v9 + 168));
  v17 = *(v9 + 232);
  if (!v17)
  {
LABEL_21:
    v12 = 0;
    goto LABEL_70;
  }

  while (*(v17 + 148) != a2)
  {
    v17 = *(v17 + 912);
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  pthread_mutex_lock((v17 + 16));
  v18 = malloc_type_malloc(40 * *(v17 + 196), 0x100004053E81896uLL);
  v12 = v18;
  if (!v18 || *(v17 + 196) < 1)
  {
    goto LABEL_69;
  }

  v19 = 0;
  v20 = 0;
  v52 = v18 + 20;
  do
  {
    if (IsIPPORTValid(*(v17 + 176) + 148 * v19 + 24))
    {
      if (v53 >= 1)
      {
        v21 = 0;
        v22 = *(v17 + 176) + 148 * v19;
        v24 = *(v22 + 24);
        v23 = v22 + 24;
        v25 = v24 & 1;
        v26 = v54 + 44;
        while (1)
        {
          if ((*(v26 - 5) & 1) == v25)
          {
            if (v25)
            {
              if (*v26 == *(v23 + 20) && v26[1] == *(v23 + 28))
              {
                goto LABEL_39;
              }
            }

            else if (*v26 == *(v23 + 20))
            {
              goto LABEL_39;
            }
          }

          ++v21;
          v26 = (v26 + 148);
          if (v53 == v21)
          {
            goto LABEL_40;
          }
        }
      }

      LODWORD(v21) = 0;
LABEL_39:
      if (v21 == v53)
      {
LABEL_40:
        if (v20 >= 1)
        {
          v28 = 0;
          v29 = *(v17 + 176) + 148 * v19;
          v31 = *(v29 + 24);
          v30 = v29 + 24;
          v32 = v31 & 1;
          v33 = v52;
          while (1)
          {
            if (v32 == (*(v33 - 5) & 1))
            {
              if (v32)
              {
                if (*(v30 + 20) == *v33 && *(v30 + 28) == *(v33 + 1))
                {
LABEL_51:
                  if (*(v30 + 36) == *(v33 + 8))
                  {
                    goto LABEL_55;
                  }
                }
              }

              else if (*(v30 + 20) == *v33)
              {
                goto LABEL_51;
              }
            }

            ++v28;
            v33 += 40;
            if (v20 == v28)
            {
              goto LABEL_56;
            }
          }
        }

        LODWORD(v28) = 0;
LABEL_55:
        if (v28 == v20)
        {
LABEL_56:
          v35 = *(v17 + 176) + 148 * v19;
          v36 = *(v35 + 24);
          v37 = *(v35 + 40);
          v38 = v12;
          v39 = &v12[40 * v20];
          *(v39 + 4) = *(v35 + 56);
          *v39 = v36;
          *(v39 + 1) = v37;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v40 = VRTraceErrorLogLevelToCSTR();
            v41 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v42 = IPPORTToStringWithSize(v65, *(v17 + 176) + 148 * v19 + 24, 0x36uLL);
              *buf = 136315906;
              v56 = v40;
              v57 = 2080;
              v58 = "ICEAddRemovedRemoteIPPort";
              v59 = 1024;
              v60 = 1751;
              v61 = 2080;
              *v62 = v42;
              _os_log_impl(&dword_23D497000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove remoteIPPort [%s]", buf, 0x26u);
            }
          }

          ++v20;
          (*(v9 + 80))(*(v9 + 8), a2, *(v17 + 176) + 148 * v19 + 24, 0);
          v12 = v38;
        }
      }
    }

    ++v19;
  }

  while (v19 < *(v17 + 196));
  if (v20 >= 1)
  {
    v43 = *(v17 + 828);
    v44 = *(v17 + 824);
    v45 = v20 - (v43 - v44);
    if (v20 <= v43 - v44)
    {
      goto LABEL_68;
    }

    v46 = malloc_type_realloc(*(v17 + 832), 40 * (v20 + v44), 0x100004053E81896uLL);
    if (v46)
    {
      *(v17 + 832) = v46;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v47 = VRTraceErrorLogLevelToCSTR();
        v48 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v49 = *(v17 + 828);
          *buf = 136316162;
          v56 = v47;
          v57 = 2080;
          v58 = "ICEAddRemovedRemoteIPPort";
          v59 = 1024;
          v60 = 1773;
          v61 = 1024;
          *v62 = v49;
          *&v62[4] = 1024;
          *&v62[6] = v49 + v45;
          _os_log_impl(&dword_23D497000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Increase removed remote buffer size (%d->%d).", buf, 0x28u);
        }
      }

      *(v17 + 828) += v45;
      v44 = *(v17 + 824);
LABEL_68:
      memcpy((*(v17 + 832) + 40 * v44), v12, 40 * v20);
      *(v17 + 824) += v20;
    }

    else
    {
      v11 = 2148859907;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEAddRemovedRemoteIPPort_cold_1();
          v11 = 2148859907;
        }
      }
    }
  }

LABEL_69:
  pthread_mutex_unlock((v17 + 16));
LABEL_70:
  pthread_mutex_unlock((v9 + 168));
LABEL_71:
  if (v54)
  {
    free(v54);
  }

  if (v12)
  {
    free(v12);
  }

  CheckOutHandleDebug();
LABEL_76:
  v50 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t AppendInterfaceNameToRemoteCandidates(uint64_t result, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(result + 192);
  if (v2 >= 1)
  {
    v4 = result;
    v5 = *(result + 168) + 28;
    while (*(v5 - 24) != a2)
    {
      v5 += 148;
      if (!--v2)
      {
        goto LABEL_11;
      }
    }

    result = __strlcpy_chk();
    v6 = *(v4 + 196);
    if (v6 >= 1)
    {
      v7 = 0;
      for (i = 0; i < v6; ++i)
      {
        if (*(*(v4 + 176) + v7 + 4) == a2)
        {
          result = __strlcpy_chk();
          v6 = *(v4 + 196);
        }

        v7 += 148;
      }
    }
  }

LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ICEGetCallInfoForConnectionData(uint64_t a1, int a2, _DWORD *a3, _BYTE *a4)
{
  result = 2148859905;
  if (a1 && a2 >= 1)
  {
    if ((CompressedCandidateByteOrderNToH(a1, a2) & 0x80000000) != 0)
    {
      result = 0;
      *a3 = bswap32(*(a1 + 8));
      *a4 = 0;
    }

    else
    {
      v11 = 0xAAAAAAAAAAAAAAAALL;
      v10 = -1431655766;
      result = UncompressCandidateList(a1, a2, &v11, &v10);
      if ((result & 0x80000000) == 0)
      {
        v9 = v11;
        *a3 = *(v11 + 2);
        *a4 = v9[36];
        free(v9);
        return 0;
      }
    }
  }

  return result;
}

uint64_t ICEDiscardResult(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (v3)
  {
    v4 = v3;
    pthread_rwlock_wrlock((v3 + 240));
    v5 = *(v4 + 440);
    if (v5)
    {
      v6 = (v4 + 440);
      do
      {
        if (*v5 == a2)
        {
          *v6 = v5[38];
          free(v5);
        }

        else
        {
          v6 = v5 + 38;
        }

        v5 = *v6;
      }

      while (*v6);
    }

    pthread_rwlock_unlock((v4 + 240));
    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    v7 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEDiscardResult_cold_1();
      }
    }
  }

  return v7;
}

uint64_t ICECloseHandle(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = CheckInHandleDebug();
  if (v2)
  {
    v3 = v2;
    pthread_mutex_lock((v2 + 168));
    *(v3 + 448) = 1;
    pthread_mutex_unlock((v3 + 168));
    CheckOutHandleDebug();
    pthread_mutex_lock((v3 + 96));
    v4 = *(v3 + 160);
    if (v4)
    {
      do
      {
        v5 = v4[30];
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(v3 + 160) = 0;
    pthread_mutex_unlock((v3 + 96));
    pthread_mutex_lock((v3 + 168));
    v6 = *(v3 + 232);
    if (v6)
    {
      do
      {
        v7 = *(v6 + 912);
        pthread_mutex_destroy((v6 + 16));
        pthread_cond_destroy((v6 + 80));
        v8 = *(v6 + 160);
        if (v8)
        {
          *(v6 + 160) = 0;
          FreeEQ(v8);
        }

        v9 = *(v6 + 168);
        if (v9)
        {
          *(v6 + 168) = 0;
          free(v9);
        }

        v10 = *(v6 + 176);
        if (v10)
        {
          *(v6 + 176) = 0;
          free(v10);
        }

        v11 = *(v6 + 184);
        if (v11)
        {
          *(v6 + 184) = 0;
          free(v11);
        }

        v12 = *(v6 + 744);
        if (v12)
        {
          CFRelease(v12);
        }

        v13 = *(v6 + 776);
        if (v13)
        {
          free(v13);
          *(v6 + 768) = 0u;
        }

        v14 = *(v6 + 792);
        if (v14)
        {
          free(v14);
          *(v6 + 784) = 0u;
        }

        v15 = *(v6 + 816);
        if (v15)
        {
          free(v15);
          *(v6 + 808) = 0u;
        }

        v16 = *(v6 + 832);
        if (v16)
        {
          free(v16);
          *(v6 + 824) = 0u;
        }

        v17 = *(v3 + 56);
        if (v17)
        {
          v17(*(v3 + 8), *(v6 + 148), a1);
        }

        free(v6);
        v6 = v7;
      }

      while (v7);
    }

    *(v3 + 232) = 0;
    v18 = *(v3 + 720);
    if (v18)
    {
      CFRelease(v18);
      *(v3 + 720) = 0;
    }

    pthread_mutex_unlock((v3 + 168));
    pthread_rwlock_wrlock((v3 + 240));
    v19 = *(v3 + 440);
    if (v19)
    {
      do
      {
        v20 = v19[38];
        free(v19);
        v19 = v20;
      }

      while (v20);
    }

    *(v3 + 440) = 0;
    pthread_rwlock_unlock((v3 + 240));
    pthread_mutex_destroy((v3 + 96));
    pthread_mutex_destroy((v3 + 168));
    pthread_rwlock_destroy((v3 + 240));
    pthread_mutex_lock((v3 + 496));
    v21 = *(v3 + 560);
    if (v21)
    {
      do
      {
        v22 = v21[198];
        free(v21);
        v21 = v22;
      }

      while (v22);
    }

    *(v3 + 560) = 0;
    pthread_mutex_unlock((v3 + 496));
    pthread_mutex_destroy((v3 + 496));
    pthread_mutex_lock((v3 + 568));
    v23 = *(v3 + 632);
    if (v23)
    {
      do
      {
        v24 = v23[32];
        if (v24)
        {
          CFRelease(v24);
        }

        v25 = v23[41];
        free(v23);
        v23 = v25;
      }

      while (v25);
    }

    *(v3 + 632) = 0;
    pthread_mutex_unlock((v3 + 568));
    pthread_mutex_destroy((v3 + 568));
    free(v3);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136315650;
        v32 = v26;
        v33 = 2080;
        v34 = "ICECloseHandle";
        v35 = 1024;
        v36 = 2296;
        _os_log_impl(&dword_23D497000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICECloseHandle ... done.", &v31, 0x1Cu);
      }
    }

    v28 = 0;
  }

  else
  {
    v28 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICECloseHandle_cold_1();
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

BOOL ICECheckPacket(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 4);
  if (v6 == 2)
  {
    v10 = bswap32(*(a2 + 7));
    v11 = HIWORD(v10) & 0x110;
    v12 = (v10 >> 17) & 0x70 | HIWORD(v10) & 0xF | (v10 >> 18) & 0xF80;
    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12 == 1;
    }

    if (v13)
    {
      memset(v23, 170, 0x480uLL);
      ParseSTUNMessage((a2 + 7), *(a2 + 1492), v23);
      STUNAttr = GetSTUNAttr(v23, 6);
      if (STUNAttr)
      {
        v19 = *(STUNAttr + 2);
        pthread_mutex_lock((a1 + 168));
        v20 = *(a1 + 232);
        if (v20)
        {
          while (*(v20 + 148) != a4 || FindMatchCP(*(v20 + 184), *(v20 + 200), v19, 0) == -1)
          {
            v20 = *(v20 + 912);
            if (!v20)
            {
              goto LABEL_24;
            }
          }

          v9 = 1;
        }

        else
        {
LABEL_24:
          v9 = 0;
        }

        pthread_mutex_unlock((a1 + 168));
      }

      else
      {
        v9 = 0;
      }

      FreeSTUNMessage(v23);
    }

    else if (v12 == 7 || (v11 >= 0x100 ? (v14 = v12 == 5) : (v14 = 0), v14))
    {
      v9 = 1;
    }

    else
    {
      v15 = HIWORD(v10);
      *v23 = *(a2 + 11);
      if (v23[0] == 1118048801)
      {
        v23[0] = 554869826;
      }

      v9 = IsSTUNIDValid(a3, v23, (v12 == 9) & (v15 >> 8), *(a2 + 1576)) != 0;
    }
  }

  else if (v6 == 1 && (v23[0] = -1431655766, v7 = *(a2 + 1492), (SNATMAP_GetNonceValue() & 0x80000000) == 0) && (SNATMAPRequest = FindSNATMAPRequest(a3, v23[0], 0)) != 0)
  {
    v9 = 1;
    *(SNATMAPRequest + 6) = 1;
  }

  else
  {
    v9 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t ICEDiscardOneRelayBindingForRemote(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v11 = 2148859906;
    goto LABEL_21;
  }

  *&v25[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v6;
  *v25 = v6;
  pthread_mutex_lock((a1 + 568));
  v7 = *(a1 + 632);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = (a1 + 632);
  while (1)
  {
    if ((GetIPPortFromDict(*(v7 + 256), @"GKSRelayPeerRelayNatIP", @"GKSRelayPeerRelayNatPort", &v24) & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    v9 = bswap32(*&v25[4]);
    *&v25[4] = v9;
    if (*(v7 + 36) != *(a2 + 148) || (v24 & 1) != (*a3 & 1))
    {
      goto LABEL_16;
    }

    if (v24)
    {
      if (*&v25[4] != *(a3 + 20) || *&v25[12] != *(a3 + 28))
      {
        goto LABEL_16;
      }
    }

    else if (v9 != *(a3 + 20))
    {
      goto LABEL_16;
    }

    if (*&v25[20] == *(a3 + 36))
    {
      break;
    }

LABEL_16:
    v8 = (v7 + 328);
    v7 = *(v7 + 328);
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  *v8 = *(v7 + 328);
LABEL_17:
  v11 = DiscardOneRelayBinding(v7, a2);
  pthread_mutex_unlock((a1 + 568));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315906;
      v17 = v12;
      v18 = 2080;
      v19 = "ICEDiscardOneRelayBindingForRemote";
      v20 = 1024;
      v21 = 2530;
      v22 = 1024;
      v23 = v11;
      _os_log_impl(&dword_23D497000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d discard one relay binding %x", &v16, 0x22u);
    }
  }

LABEL_21:
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t DiscardOneRelayBinding(pthread_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v9.__opaque[24] = v3;
    *&v9.__opaque[40] = v3;
    *&v9.__sig = v3;
    *&v9.__opaque[8] = v3;
    if (a2)
    {
      v4 = *(a2 + 160);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 0x40000000;
      v8[2] = __DiscardOneRelayBinding_block_invoke;
      v8[3] = &__block_descriptor_tmp;
      v8[4] = a1;
      FreeEventsMatchingPredicate(v4, v8);
    }

    pthread_attr_init(&v9);
    pthread_attr_setdetachstate(&v9, 2);
    v5 = pthread_create(a1 + 3, &v9, RelayDiscardProc, a1);
    pthread_attr_destroy(&v9);
    if (v5)
    {
      result = v5 | 0xC0150000;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 2148859926;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DiscardOneRelayBindingWithChannelNumber(uint64_t a1, int a2, int a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = 2148859925;
  if (a1)
  {
    v36 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v34 = v7;
    v35 = v7;
    v32[0] = v7;
    v32[1] = v7;
    v33[0] = v7;
    *(v33 + 14) = 0xAAAAAAAAAAAAAAAALL;
    v30[0] = v7;
    v30[1] = v7;
    v31[0] = v7;
    *(v31 + 14) = 0xAAAAAAAAAAAAAAAALL;
    pthread_mutex_lock((a1 + 568));
    v8 = *(a1 + 632);
    if (v8)
    {
      v9 = (a1 + 632);
      while (1)
      {
        if ((GetIPPortFromDict(*(v8 + 256), @"GKSRelayPeerRelayNatIP", @"GKSRelayPeerRelayNatPort", &v34) & 0x80000000) == 0)
        {
          DWORD1(v35) = bswap32(DWORD1(v35));
          if (*(v8 + 36) == a2 && *(v8 + 264) == a3)
          {
            break;
          }
        }

        v9 = (v8 + 328);
        v8 = *(v8 + 328);
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      *v9 = *(v8 + 328);
      pthread_mutex_lock((a1 + 168));
      for (i = *(a1 + 232); i; i = *(i + 912))
      {
        if (*(i + 148) == a2)
        {
          break;
        }
      }

      pthread_mutex_unlock((a1 + 168));
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v13 = IPPORTToStringWithSize(v32, v8 + 124, 0x36uLL);
          v14 = IPPORTToStringWithSize(v30, &v34, 0x36uLL);
          v15 = *(v8 + 264);
          v18 = 136316418;
          v19 = v11;
          v20 = 2080;
          v21 = "DiscardOneRelayBindingWithChannelNumber";
          v22 = 1024;
          v23 = 2574;
          v24 = 2080;
          v25 = v13;
          v26 = 2080;
          v27 = v14;
          v28 = 1024;
          v29 = v15;
          _os_log_impl(&dword_23D497000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d relay %s - %s is torn down, channel#[%04X]", &v18, 0x36u);
        }
      }

      v3 = DiscardOneRelayBinding(v8, i);
    }

    else
    {
LABEL_8:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          DiscardOneRelayBindingWithChannelNumber_cold_1();
        }
      }
    }

    pthread_mutex_unlock((a1 + 568));
  }

  else
  {
    v3 = 2148859906;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ICEDiscardOneRelayBindingWithChannelNumber(uint64_t a1, int a2, int a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2148859906;
  }

  v6 = DiscardOneRelayBindingWithChannelNumber(v5, a2, a3);
  CheckOutHandleDebug();
  return v6;
}

uint64_t ICEDiscardRelayBinding(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148859906;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 568));
  pthread_mutex_lock((v4 + 168));
  for (i = *(v4 + 232); i; i = *(i + 912))
  {
    if (*(i + 148) == a2)
    {
      break;
    }
  }

  pthread_mutex_unlock((v4 + 168));
  v6 = *(v4 + 632);
  if (v6)
  {
    v7 = 0;
    v8 = (v4 + 632);
    do
    {
      while (*(v6 + 36) == a2)
      {
        v7 = DiscardOneRelayBinding(v6, i);
        v6 = *(v6 + 328);
        *v8 = v6;
        if (!v6)
        {
          goto LABEL_14;
        }
      }

      v8 = (v6 + 328);
      v6 = *(v6 + 328);
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

LABEL_14:
  pthread_mutex_unlock((v4 + 568));
  CheckOutHandleDebug();
  return v7;
}

uint64_t ICERefreshRelayBinding(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = micro();
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v17.__opaque[24] = v6;
    *&v17.__opaque[40] = v6;
    *&v17.__sig = v6;
    *&v17.__opaque[8] = v6;
    pthread_mutex_lock((v4 + 568));
    v7 = *(v5 + 632);
    if (v7)
    {
      v8 = 0;
      do
      {
        if (*(v7 + 36) == a2 && v3 - *(v7 + 248) > 20.0)
        {
          v9 = malloc_type_malloc(0x150uLL, 0x10A0040062F5B3BuLL);
          if (v9)
          {
            v10 = v9;
            memcpy(v9, v7, 0x150uLL);
            v11 = *(v7 + 256);
            if (v11)
            {
              v10[32] = CFRetain(v11);
            }

            pthread_attr_init(&v17);
            pthread_attr_setdetachstate(&v17, 2);
            v16 = 0xAAAAAAAAAAAAAAAALL;
            v12 = pthread_create(&v16, &v17, RelayRefreshProc, v10);
            pthread_attr_destroy(&v17);
            if (v12)
            {
              v13 = v10[32];
              if (v13)
              {
                CFRelease(v13);
              }

              v8 = v12 | 0xC0150000;
              free(v10);
            }
          }
        }

        v7 = *(v7 + 328);
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    pthread_mutex_unlock((v5 + 568));
    CheckOutHandleDebug();
  }

  else
  {
    v8 = 2148859906;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t ICERefreshAllRelayBinding()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = CheckInHandleDebug();
  if (v0)
  {
    v1 = v0;
    pthread_mutex_lock((v0 + 568));
    v2 = *(v1 + 632);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = malloc_type_malloc(0x150uLL, 0x10A0040062F5B3BuLL);
        if (v4)
        {
          v5 = v4;
          memcpy(v4, v2, 0x150uLL);
          v6 = v2[32];
          if (v6)
          {
            v5[32] = CFRetain(v6);
          }

          v5[41] = 0;
          *&v7 = 0xAAAAAAAAAAAAAAAALL;
          *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v15.__opaque[24] = v7;
          *&v15.__opaque[40] = v7;
          *&v15.__sig = v7;
          *&v15.__opaque[8] = v7;
          pthread_attr_init(&v15);
          pthread_attr_setdetachstate(&v15, 2);
          v14 = 0xAAAAAAAAAAAAAAAALL;
          v8 = pthread_create(&v14, &v15, RelayRefreshProc, v5);
          pthread_attr_destroy(&v15);
          if (v8)
          {
            v9 = v5[32];
            if (v9)
            {
              CFRelease(v9);
            }

            v3 = v8 | 0xC0150000;
            free(v5);
          }
        }

        else
        {
          v3 = 2148859907;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v10 = VRTraceErrorLogLevelToCSTR();
            v11 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              LODWORD(v15.__sig) = 136315906;
              *(&v15.__sig + 4) = v10;
              *&v15.__opaque[4] = 2080;
              *&v15.__opaque[6] = "ICERefreshAllRelayBinding";
              *&v15.__opaque[14] = 1024;
              *&v15.__opaque[16] = 2698;
              *&v15.__opaque[20] = 1024;
              *&v15.__opaque[22] = 2698;
              _os_log_error_impl(&dword_23D497000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: malloc failed!", &v15, 0x22u);
            }
          }
        }

        v2 = v2[41];
      }

      while (v2);
    }

    else
    {
      v3 = 0;
    }

    pthread_mutex_unlock((v1 + 568));
    CheckOutHandleDebug();
  }

  else
  {
    v3 = 2148859906;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ICEStopConnectivityCheck(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = v3;
      v13 = 2080;
      v14 = "ICEStopConnectivityCheck";
      v15 = 1024;
      v16 = 2734;
      v17 = 1024;
      v18 = a2;
      _os_log_impl(&dword_23D497000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEStopConnectivityCheck() callID=%d", &v11, 0x22u);
    }
  }

  v5 = 2148859926;
  v6 = CheckInHandleDebug();
  if (v6)
  {
    v7 = v6;
    pthread_mutex_lock((v6 + 168));
    v8 = *(v7 + 232);
    if (v8)
    {
      while (*(v8 + 148) != a2)
      {
        v8 = *(v8 + 912);
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      *(v8 + 136) = 1;
      pthread_mutex_unlock((v7 + 168));
      v5 = 0;
    }

    else
    {
LABEL_8:
      pthread_mutex_unlock((v7 + 168));
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEStopConnectivityCheck_cold_1();
        }
      }
    }

    CheckOutHandleDebug();
  }

  else
  {
    v5 = 2148859906;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ICESetSKEState(uint64_t a1, int a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136316162;
      v14 = v5;
      v15 = 2080;
      v16 = "ICESetSKEState";
      v17 = 1024;
      v18 = 2767;
      v19 = 1024;
      v20 = a2;
      v21 = 2048;
      v22 = a3;
      _os_log_impl(&dword_23D497000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICESetSKEState() callID=%d pSKEState=%p", &v13, 0x2Cu);
    }
  }

  v7 = 2148859926;
  v8 = CheckInHandleDebug();
  if (v8)
  {
    v9 = v8;
    pthread_mutex_lock((v8 + 168));
    v10 = *(v9 + 232);
    if (v10)
    {
      while (*(v10 + 148) != a2)
      {
        v10 = *(v10 + 912);
        if (!v10)
        {
          goto LABEL_8;
        }
      }

      pthread_mutex_lock((v10 + 16));
      *(v10 + 896) = a3;
      pthread_mutex_unlock((v10 + 16));
      pthread_mutex_unlock((v9 + 168));
      v7 = 0;
    }

    else
    {
LABEL_8:
      pthread_mutex_unlock((v9 + 168));
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICESetSKEState_cold_1();
        }
      }
    }

    CheckOutHandleDebug();
  }

  else
  {
    v7 = 2148859906;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t ICEGetExtIPPorts(uint64_t a1, _BYTE *a2, int a3, uint64_t a4)
{
  v96 = *MEMORY[0x277D85DE8];
  SNATMAPServer = 2148859906;
  if (!a2 || (*a2 & 1) != 0)
  {
    SNATMAPServer = 2148859905;
    goto LABEL_108;
  }

  v95 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v94 = v8;
  v93 = v8;
  memset(__b, 170, sizeof(__b));
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v90[0] = v9;
  v90[1] = v9;
  v91[0] = v9;
  *(v91 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v74 = -1431655766;
  v10 = CheckInHandleDebug();
  if (!v10)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEGetExtIPPorts_cold_4();
      }
    }

    goto LABEL_108;
  }

  v11 = v10;
  v70 = *(v10 + 16);
  v12 = v10 + 452;
  if (IsIPPORTValid(v10 + 452))
  {
    SNATMAPServer = 0;
    v13 = *(v12 + 16);
    v93 = *v12;
    v94 = v13;
    v95 = *(v12 + 32);
  }

  else
  {
    SNATMAPServer = GetSNATMAPServer();
    if ((SNATMAPServer & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEGetExtIPPorts_cold_3();
        }
      }

      goto LABEL_107;
    }

    v14 = v94;
    *v12 = v93;
    *(v12 + 16) = v14;
    *(v12 + 32) = v95;
  }

  v69 = a2;
  v68 = a4;
  pthread_mutex_lock((v11 + 96));
  v71 = v11;
  v72 = a3;
  v65 = a3;
  if (a3 < 1)
  {
    v17 = 0;
    v16 = 0;
    goto LABEL_56;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    v18 = *(v11 + 160);
    if (!v18)
    {
      goto LABEL_46;
    }

    v19 = &v69[40 * v15];
    while (1)
    {
      if (!IsIPPORTValid(v19))
      {
        goto LABEL_45;
      }

      v20 = (v18 + 8);
      if ((*(v18 + 8) & 1) != (*v19 & 1))
      {
        goto LABEL_45;
      }

      if (*(v18 + 8))
      {
        if (*(v18 + 28) != *(v19 + 20) || *(v18 + 36) != *(v19 + 28))
        {
          goto LABEL_45;
        }
      }

      else if (*(v18 + 28) != *(v19 + 20))
      {
        goto LABEL_45;
      }

      if (*(v18 + 44) != *(v19 + 36))
      {
        goto LABEL_45;
      }

      v17 = *(v18 + 4);
      if (IsIPPORTValid(v18 + 96))
      {
        v36 = v68 + 40 * v15;
        v37 = *(v18 + 96);
        v38 = *(v18 + 112);
        *(v36 + 32) = *(v18 + 128);
        *v36 = v37;
        *(v36 + 16) = v38;
        goto LABEL_46;
      }

      v74 = 1472;
      SNATMAPRequest = MakeSNATMAPRequest(v16, v18 + 8, __b, &v74);
      if ((SNATMAPRequest & 0x80000000) == 0)
      {
        break;
      }

      SNATMAPServer = SNATMAPRequest;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v83 = v32;
          v84 = 2080;
          v85 = "ICEGetExtIPPorts";
          v86 = 1024;
          v87 = 2847;
          v88 = 1024;
          *v89 = 2847;
          *&v89[4] = 1024;
          *&v89[6] = SNATMAPServer;
          v30 = v33;
          v31 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: MakeSNATMAPRequest failed (%08X)\n";
          goto LABEL_43;
        }

LABEL_44:
        v11 = v71;
      }

LABEL_45:
      v18 = *(v18 + 240);
      if (!v18)
      {
        goto LABEL_46;
      }
    }

    SNATMAPServer = v70(*(v11 + 8), 0, __b, v74, v18 + 8, &v93, 0, 0);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if ((SNATMAPServer & 0x80000000) != 0)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v34 = VRTraceErrorLogLevelToCSTR();
        v35 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v83 = v34;
          v84 = 2080;
          v85 = "ICEGetExtIPPorts";
          v86 = 1024;
          v87 = 2855;
          v88 = 1024;
          *v89 = 2855;
          *&v89[4] = 1024;
          *&v89[6] = SNATMAPServer;
          v30 = v35;
          v31 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: UDPSENDCALLBACK failed (%08X)";
LABEL_43:
          _os_log_error_impl(&dword_23D497000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x28u);
        }

        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (ErrorLogLevelForModule >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v26 = IPPORTToStringWithSize(v90, v18 + 8, 0x36uLL);
        *buf = 136315906;
        v83 = v24;
        v84 = 2080;
        v85 = "ICEGetExtIPPorts";
        v86 = 1024;
        v87 = 2860;
        v88 = 2080;
        *v89 = v26;
        _os_log_impl(&dword_23D497000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sent SNATMAP request for [%s]", buf, 0x26u);
      }
    }

    v27 = malloc_type_calloc(1uLL, 0x638uLL, 0x102004070FB87F4uLL);
    if (!v27)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        v29 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v83 = v28;
          v84 = 2080;
          v85 = "ICEGetExtIPPorts";
          v86 = 1024;
          v87 = 2864;
          v88 = 1024;
          *v89 = 2864;
          *&v89[4] = 1024;
          *&v89[6] = 1592;
          v30 = v29;
          v31 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: calloc(%d) failed";
          goto LABEL_43;
        }
      }

      goto LABEL_44;
    }

    v39 = v27;
    *v27 = *v20 & 4;
    *(v27 + 2) = 1;
    v27[6] = 0;
    *(v27 + 373) = v74;
    __memcpy_chk();
    v40 = *(v18 + 40);
    v41 = *(v18 + 24);
    *(v39 + 1496) = *v20;
    *(v39 + 1512) = v41;
    *(v39 + 191) = v40;
    *(v39 + 196) = v95;
    *(v39 + 97) = v94;
    *(v39 + 96) = v93;
    if (v16)
    {
      v42 = v16;
      do
      {
        v43 = v42;
        v42 = v42[198];
      }

      while (v42);
      v43[198] = v39;
    }

    else
    {
      v16 = v39;
    }

    v11 = v71;
LABEL_46:
    ++v15;
  }

  while (v15 != v72);
LABEL_56:
  pthread_mutex_unlock((v11 + 96));
  *&v44 = 0xAAAAAAAAAAAAAAAALL;
  *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v80 = v44;
  *v81 = v44;
  *&v81[16] = 0xAAAAAAAAAAAAAAAALL;
  v78[0] = v44;
  v78[1] = v44;
  v79 = 0xAAAAAAAAAAAAAAAALL;
  v75 = v44;
  v76 = v44;
  v77 = 0xAAAAAAAAAAAAAAAALL;
  v73 = 0;
  v45 = micro();
  if (v16)
  {
    v46 = v45;
    v47 = *(v11 + 24);
    while (1)
    {
LABEL_58:
      v48 = v16;
      while (*(v48 + 6))
      {
        v48 = v48[198];
        if (!v48)
        {
          goto LABEL_106;
        }
      }

      if (micro() - v46 >= 5.0)
      {
        SNATMAPServer = 2148859927;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICEGetExtIPPorts_cold_1();
            SNATMAPServer = 2148859927;
          }
        }

        goto LABEL_106;
      }

      v49 = v47(*(v71 + 8), v17, __b, &v74, &v80, v78, &v73, 1000, 0);
      SNATMAPServer = v49;
      if ((v49 & 0x80000000) != 0)
      {
        break;
      }

      v77 = 0;
      v75 = 0u;
      v76 = 0u;
      if (!__b[0] && v74 == 16 && (SNATMAP_GetNonceValue() & 0x80000000) == 0)
      {
        v50 = FindSNATMAPRequest(v16, 2863311530, 0);
        if (v50)
        {
          v51 = v50;
          SNATMAPServer = ProcessSNATMAPResponse();
          if ((SNATMAPServer & 0x80000000) != 0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v67 = VRTraceErrorLogLevelToCSTR();
              v59 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                v83 = v67;
                v84 = 2080;
                v85 = "ICEGetExtIPPorts";
                v86 = 1024;
                v87 = 2939;
                v88 = 1024;
                *v89 = 2939;
                *&v89[4] = 1024;
                *&v89[6] = SNATMAPServer;
                _os_log_error_impl(&dword_23D497000, v59, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ProcessSNATMAPResponse failed (%08X)", buf, 0x28u);
              }
            }

            continue;
          }

          *(v51 + 6) = 1;
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v66 = VRTraceErrorLogLevelToCSTR();
            v52 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v53 = IPPORTToStringWithSize(v90, &v75, 0x36uLL);
              *buf = 136315906;
              v83 = v66;
              v84 = 2080;
              v85 = "ICEGetExtIPPorts";
              v86 = 1024;
              v87 = 2944;
              v88 = 2080;
              *v89 = v53;
              _os_log_impl(&dword_23D497000, v52, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SNATMAP mapping [%s]", buf, 0x26u);
            }
          }

          if (v65 >= 1)
          {
            v54 = v72;
            v55 = v69 + 20;
            v56 = v68;
            while (1)
            {
              if ((v80 & 1) == (*(v55 - 5) & 1))
              {
                if (v80)
                {
                  if (*&v81[4] != *v55 || *&v81[12] != *(v55 + 1))
                  {
                    goto LABEL_84;
                  }
                }

                else if (*&v81[4] != *v55)
                {
                  goto LABEL_84;
                }

                if (*&v81[20] == *(v55 + 8))
                {
                  v60 = v76;
                  *v56 = v75;
                  *(v56 + 16) = v60;
                  *(v56 + 32) = v77;
                  goto LABEL_58;
                }
              }

LABEL_84:
              v56 += 40;
              v55 += 40;
              if (!--v54)
              {
                goto LABEL_58;
              }
            }
          }
        }
      }
    }

    if (v49 == 23 || v49 == 30)
    {
      ReXmitCollectionRequest(*(v71 + 8), *(v71 + 720), v16, v70);
      goto LABEL_58;
    }

    v61 = VRTraceGetErrorLogLevelForModule();
    if (v61 >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEGetExtIPPorts_cold_2();
      }
    }

    do
    {
LABEL_106:
      v62 = v16[198];
      free(v16);
      v16 = v62;
    }

    while (v62);
  }

LABEL_107:
  CheckOutHandleDebug();
LABEL_108:
  v63 = *MEMORY[0x277D85DE8];
  return SNATMAPServer;
}

uint64_t ICEConnectionDataContainsCallID(const __CFData *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFDataGetLength(a1);
  v5 = Length;
  if (Length < 1)
  {
    return 0;
  }

  v20 = 0;
  v19 = -1431655766;
  v6 = Length & 0x7FFFFFFF;
  v7 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v21.location = 0;
  v21.length = v5 & 0x7FFFFFFF;
  CFDataGetBytes(a1, v21, v7);
  if ((CompressedCandidateByteOrderNToH(v8, v5) & 0x80000000) != 0)
  {
    v15 = v5 / 0x94;
    v19 = v5 / 0x94;
    if (v6 >= 0x94)
    {
      v16 = CFDataGetLength(a1);
      v17 = malloc_type_calloc(1uLL, v16, 0x1000040C185D105uLL);
      v20 = v17;
      if (v17)
      {
        v10 = v17;
        v22.location = 0;
        v22.length = v6;
        CFDataGetBytes(a1, v22, v17);
        if ((CandidateByteOrderNToH(v10, v15) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }

        goto LABEL_6;
      }
    }

    return 0;
  }

  v9 = UncompressCandidateList(v8, v5, &v20, &v19);
  v10 = v20;
  if (v9 < 0)
  {
LABEL_15:
    if (v10)
    {
      free(v10);
    }

    free(v8);
    return 0;
  }

LABEL_6:
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v19;
  free(v8);
  if (v11 < 1)
  {
LABEL_11:
    v14 = 0;
  }

  else
  {
    v12 = v10 + 2;
    while (1)
    {
      v13 = *v12;
      v12 += 37;
      if (v13 == a2)
      {
        break;
      }

      if (!--v11)
      {
        goto LABEL_11;
      }
    }

    v14 = 1;
  }

  free(v10);
  return v14;
}

uint64_t ICEGetExtIPIndex(const __CFData *a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v41 = 0;
  if (a1)
  {
    Length = CFDataGetLength(a1);
    v3 = Length;
    if (Length >= 1)
    {
      v4 = Length & 0x7FFFFFFF;
      v5 = malloc_type_calloc(1uLL, v4, 0x100004077774924uLL);
      if (v5)
      {
        v6 = v5;
        v40 = -1431655766;
        v57.location = 0;
        v57.length = v3 & 0x7FFFFFFF;
        CFDataGetBytes(a1, v57, v5);
        v7 = CompressedCandidateByteOrderNToH(v6, v3);
        if (v7 < 0)
        {
          v40 = v3 / 0x94;
          if (v4 < 0x94 || (v27 = CFDataGetLength(a1), v28 = malloc_type_calloc(1uLL, v27, 0x1000040C185D105uLL), (v41 = v28) == 0))
          {
            LOWORD(v26) = -1;
LABEL_61:
            free(v6);
            goto LABEL_62;
          }

          v29 = v28;
          v58.location = 0;
          v58.length = v3 & 0x7FFFFFFF;
          CFDataGetBytes(a1, v58, v28);
          if ((CandidateByteOrderNToH(v29, v3 / 0x94) & 0x80000000) != 0)
          {
            goto LABEL_59;
          }
        }

        else if ((UncompressCandidateList(v6, v3, &v41, &v40) & 0x80000000) != 0)
        {
          goto LABEL_59;
        }

        if (v40 <= 0)
        {
          LODWORD(v8) = 0;
          v25 = v40 == 0;
          v10 = -1;
          v12 = -1;
        }

        else
        {
          v8 = 0;
          v9 = v41 + 24;
          v10 = -1;
          v11 = -1;
          v12 = -1;
          do
          {
            if ((*v9 & 1) == 0)
            {
              v13 = *(v9 - 5);
              if (v13 == 3)
              {
                if ((*v9 & 4) == 0)
                {
                  goto LABEL_36;
                }

                if (v11 == -1)
                {
                  v11 = v8;
                }
              }

              else
              {
                v14 = v9[5];
                v15 = v14 & 0xFFF00000;
                v16 = v14 & 0xFFFF0000;
                v17 = HIBYTE(v14);
                if (v12 == -1)
                {
                  v18 = v8;
                }

                else
                {
                  v18 = v12;
                }

                if (v10 == -1)
                {
                  v19 = v8;
                }

                else
                {
                  v19 = v10;
                }

                v20 = v13 == 7;
                if (v13 == 7)
                {
                  v21 = v12;
                }

                else
                {
                  v21 = v18;
                }

                if (v20)
                {
                  v22 = v19;
                }

                else
                {
                  v22 = v10;
                }

                if (v17 != 10 && v15 != -1408237568 && v16 != -1062731776)
                {
                  v12 = v21;
                  v10 = v22;
                }
              }
            }

            ++v8;
            v9 += 37;
          }

          while (v40 != v8);
          LODWORD(v8) = v40;
LABEL_36:
          v25 = v8 == v40;
          if ((v11 & 0x80000000) == 0)
          {
LABEL_46:
            if (v12 >= 0)
            {
              v30 = v12;
            }

            else
            {
              v30 = v11;
            }

            if (v25)
            {
              v31 = v30;
            }

            else
            {
              v31 = v8;
            }

            if (v31 != -1)
            {
              if (v7 < 0)
              {
                LOWORD(v26) = 148 * v31 + 44;
                if ((v26 & 0x8000) == 0)
                {
LABEL_70:
                  *&v55[14] = 0xAAAAAAAAAAAAAAAALL;
                  *&v36 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v54[1] = v36;
                  *v55 = v36;
                  v54[0] = v36;
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v37 = VRTraceErrorLogLevelToCSTR();
                    v38 = *MEMORY[0x277CE5818];
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                    {
                      v39 = IPPORTToStringWithSize(v54, v41 + 148 * v31 + 24, 0x36uLL);
                      *buf = 136316418;
                      v43 = v37;
                      v44 = 2080;
                      v45 = "ICEGetExtIPIndex";
                      v46 = 1024;
                      v47 = 3170;
                      v48 = 1024;
                      v49 = v26;
                      v50 = 1024;
                      v51 = v3;
                      v52 = 2080;
                      v53 = v39;
                      _os_log_impl(&dword_23D497000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEGetExtIPIndex: %d (blob length: %d) for %s", buf, 0x32u);
                    }
                  }
                }
              }

              else
              {
                LODWORD(v54[0]) = -1431655766;
                *buf = -1431655766;
                breakByte(*v6, v54, buf);
                if (SLODWORD(v54[0]) < 1)
                {
                  LODWORD(v32) = 0;
                  LOWORD(v26) = -1;
                }

                else
                {
                  v32 = 0;
                  v26 = 1;
                  while (*&v6[v26] != *(v41 + 37 * v31 + 11))
                  {
                    ++v32;
                    v26 += 4;
                    if (LODWORD(v54[0]) == v32)
                    {
                      LOWORD(v26) = -1;
                      goto LABEL_67;
                    }
                  }
                }

                if (v32 == LODWORD(v54[0]))
                {
LABEL_67:
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v35 = VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                    {
                      ICEGetExtIPIndex_cold_1(v35, v54);
                      if ((v26 & 0x8000) == 0)
                      {
                        goto LABEL_70;
                      }

                      goto LABEL_60;
                    }
                  }
                }

                if ((v26 & 0x8000) == 0)
                {
                  goto LABEL_70;
                }
              }

LABEL_60:
              free(v41);
              goto LABEL_61;
            }

LABEL_59:
            LOWORD(v26) = -1;
            goto LABEL_60;
          }
        }

        v11 = v10;
        goto LABEL_46;
      }
    }
  }

  LOWORD(v26) = -1;
LABEL_62:
  v33 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t ICESetTimeout(double a1)
{
  v2 = CheckInHandleDebug();
  if (!v2)
  {
    return 2148859906;
  }

  v3 = v2;
  pthread_mutex_lock((v2 + 168));
  *(v3 + 712) = a1;
  pthread_mutex_unlock((v3 + 168));
  CheckOutHandleDebug();
  return 0;
}

uint64_t ICESetReportingAgent(uint64_t a1, const void *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148859906;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 168));
  v5 = *(v4 + 720);
  *(v4 + 720) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  pthread_mutex_unlock((v4 + 168));
  CheckOutHandleDebug();
  return 0;
}

uint64_t ICEConvertToOldCompression(unsigned __int8 **a1, int *a2, const void *a3, int a4)
{
  v4 = 2148859905;
  if (a3 && a4)
  {
    v9 = malloc_type_malloc(a4, 0x100004077774924uLL);
    if (v9)
    {
      v10 = v9;
      *a2 = a4;
      memcpy(v9, a3, a4);
      v4 = CompressedCandidateByteOrderNToH(v10, *a2);
      if ((v4 & 0x80000000) != 0)
      {
        free(v10);
      }

      else
      {
        *a1 = v10;
      }
    }

    else
    {
      return 2148859907;
    }
  }

  return v4;
}

uint64_t ICEConvertToNewCompression(unsigned __int8 **a1, int *a2, const void *a3, int a4)
{
  v4 = 2148859905;
  if (a3 && a4)
  {
    v9 = malloc_type_malloc(a4, 0x100004077774924uLL);
    if (v9)
    {
      v10 = v9;
      *a2 = a4;
      memcpy(v9, a3, a4);
      v4 = CompressedCandidateByteOrderHToN(v10, *a2);
      if ((v4 & 0x80000000) != 0)
      {
        free(v10);
      }

      else
      {
        *a1 = v10;
      }
    }

    else
    {
      return 2148859907;
    }
  }

  return v4;
}

uint64_t ICESetForceRelay(uint64_t a1, int a2)
{
  v3 = 2148859906;
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    pthread_mutex_lock((v4 + 168));
    v6 = *(v5 + 232);
    if (v6)
    {
      while (*(v6 + 148) != a2)
      {
        v6 = *(v6 + 912);
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      *(v6 + 760) = 1;
      pthread_mutex_unlock((v5 + 168));
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICESetForceRelay_cold_1();
        }
      }

      v3 = 0;
    }

    else
    {
LABEL_5:
      pthread_mutex_unlock((v5 + 168));
      v3 = 2148859926;
    }

    CheckOutHandleDebug();
  }

  return v3;
}

uint64_t ICESetForceIPv6(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = 2148859926;
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    pthread_mutex_lock((v4 + 168));
    v6 = *(v5 + 232);
    if (v6)
    {
      while (*(v6 + 148) != a2)
      {
        v6 = *(v6 + 912);
        if (!v6)
        {
          goto LABEL_11;
        }
      }

      *(v6 + 764) = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315906;
          v12 = v7;
          v13 = 2080;
          v14 = "ICESetForceIPv6";
          v15 = 1024;
          v16 = 3314;
          v17 = 1024;
          v18 = a2;
          _os_log_impl(&dword_23D497000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Force IPv6 for call (%d).", &v11, 0x22u);
        }
      }

      v3 = 0;
    }

LABEL_11:
    pthread_mutex_unlock((v5 + 168));
    CheckOutHandleDebug();
  }

  else
  {
    v3 = 2148859906;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ICEUpdateRole(uint64_t a1, int a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    pthread_mutex_lock((v5 + 168));
    v7 = *(v6 + 232);
    if (v7)
    {
      while (*(v7 + 148) != a2)
      {
        v7 = *(v7 + 912);
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      if (!*(v7 + 840))
      {
        *(v7 + 840) = a3;
        if (a3)
        {
          *(v7 + 848) = arc4random() & 0x7FFFFFFF;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136316162;
            v14 = v9;
            v15 = 2080;
            v16 = "ICEUpdateRole";
            v17 = 1024;
            v18 = 3343;
            v19 = 1024;
            v20 = a2;
            v21 = 1024;
            v22 = a3;
            _os_log_impl(&dword_23D497000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Updated ICEList(%d) to role (%d)", &v13, 0x28u);
          }
        }
      }

      v8 = 0;
    }

    else
    {
LABEL_5:
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        v8 = 2148859926;
      }

      else
      {
        VRTraceErrorLogLevelToCSTR();
        v8 = 2148859926;
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEUpdateRole_cold_1();
        }
      }
    }

    pthread_mutex_unlock((v6 + 168));
    CheckOutHandleDebug();
  }

  else
  {
    v8 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEUpdateRole_cold_2();
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t ICEUpdateServingNetworkInfo(uint64_t a1, int a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    pthread_mutex_lock((v5 + 168));
    v7 = *(v6 + 232);
    if (v7)
    {
      while (*(v7 + 148) != a2)
      {
        v7 = *(v7 + 912);
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      *(v7 + 872) = a3;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136316162;
          v14 = v9;
          v15 = 2080;
          v16 = "ICEUpdateServingNetworkInfo";
          v17 = 1024;
          v18 = 3376;
          v19 = 1024;
          v20 = a2;
          v21 = 1024;
          v22 = a3;
          _os_log_impl(&dword_23D497000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Call (%d) serving network QoS available (%d)", &v13, 0x28u);
        }
      }

      v8 = 0;
    }

    else
    {
LABEL_5:
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        v8 = 2148859926;
      }

      else
      {
        VRTraceErrorLogLevelToCSTR();
        v8 = 2148859926;
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEUpdateServingNetworkInfo_cold_1();
        }
      }
    }

    pthread_mutex_unlock((v6 + 168));
    CheckOutHandleDebug();
  }

  else
  {
    v8 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEUpdateServingNetworkInfo_cold_2();
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t ICEUpdateCellTech(uint64_t a1, int a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    pthread_mutex_lock((v5 + 168));
    v7 = *(v6 + 232);
    if (v7)
    {
      while (*(v7 + 148) != a2)
      {
        v7 = *(v7 + 912);
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(v7 + 880);
          v14 = 136316162;
          v15 = v9;
          v16 = 2080;
          v17 = "ICEUpdateCellTech";
          v18 = 1024;
          v19 = 3408;
          v20 = 1024;
          v21 = v11;
          v22 = 1024;
          v23 = a3;
          _os_log_impl(&dword_23D497000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICEUpdateCellTech (%d->%d)", &v14, 0x28u);
        }
      }

      v8 = 0;
      *(v7 + 880) = a3;
    }

    else
    {
LABEL_5:
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        v8 = 2148859926;
      }

      else
      {
        VRTraceErrorLogLevelToCSTR();
        v8 = 2148859926;
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEUpdateCellTech_cold_1();
        }
      }
    }

    pthread_mutex_unlock((v6 + 168));
    CheckOutHandleDebug();
  }

  else
  {
    v8 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEUpdateCellTech_cold_2();
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t ICEGetCellTech(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v11 = CheckInHandleDebug();
  if (v11)
  {
    v12 = v11;
    pthread_mutex_lock((v11 + 168));
    v13 = *(v12 + 232);
    if (v13)
    {
      while (*(v13 + 148) != a2)
      {
        v13 = *(v13 + 912);
        if (!v13)
        {
          goto LABEL_5;
        }
      }

      v14 = 0;
      *a3 = *(v13 + 880);
      *a4 = *(v13 + 872);
      *a5 = *(v13 + 884);
      *a6 = *(v13 + 876);
    }

    else
    {
LABEL_5:
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        v14 = 2148859926;
      }

      else
      {
        VRTraceErrorLogLevelToCSTR();
        v14 = 2148859926;
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ICEGetCellTech_cold_1();
        }
      }
    }

    pthread_mutex_unlock((v12 + 168));
    CheckOutHandleDebug();
  }

  else
  {
    v14 = 2148859906;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEGetCellTech_cold_2();
      }
    }
  }

  return v14;
}

uint64_t ICEGetConnErrorCode(uint64_t a1, int a2, int *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    pthread_mutex_lock((v5 + 168));
    v7 = *(v6 + 632);
    if (v7)
    {
      while (*(v7 + 36) != a2)
      {
        v7 = *(v7 + 328);
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      *a3 = *(v7 + 268);
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_22;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v12 = *a3;
      v21 = 136316162;
      v22 = v10;
      v23 = 2080;
      v24 = "ICEGetConnErrorCode";
      v25 = 1024;
      v26 = 3475;
      v27 = 1024;
      v28 = a2;
      v29 = 1024;
      v30 = v12;
      v13 = " [%s] %s:%d Call (%d) failure code: %d";
      v14 = v11;
      v15 = 40;
    }

    else
    {
LABEL_5:
      v8 = *(v6 + 232);
      if (!v8)
      {
LABEL_8:
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          v9 = 2148859926;
        }

        else
        {
          VRTraceErrorLogLevelToCSTR();
          v9 = 2148859926;
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ICEGetConnErrorCode_cold_1();
          }
        }

        goto LABEL_23;
      }

      while (*(v8 + 148) != a2)
      {
        v8 = *(v8 + 912);
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      *a3 = *(v8 + 424);
      if (VRTraceGetErrorLogLevelForModule() < 7 || (v16 = VRTraceErrorLogLevelToCSTR(), v17 = *MEMORY[0x277CE5818], !os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_22:
        v9 = 0;
LABEL_23:
        pthread_mutex_unlock((v6 + 168));
        CheckOutHandleDebug();
        goto LABEL_24;
      }

      v18 = *a3;
      v21 = 136315906;
      v22 = v16;
      v23 = 2080;
      v24 = "ICEGetConnErrorCode";
      v25 = 1024;
      v26 = 3485;
      v27 = 1024;
      v28 = v18;
      v13 = " [%s] %s:%d Relay Allocation failure code: %d";
      v14 = v17;
      v15 = 34;
    }

    _os_log_impl(&dword_23D497000, v14, OS_LOG_TYPE_DEFAULT, v13, &v21, v15);
    goto LABEL_22;
  }

  v9 = 2148859906;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      ICEGetConnErrorCode_cold_2();
    }
  }

LABEL_24:
  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

void ICEDisableCandidatePairFilter()
{
  v0 = CheckInHandleDebug();
  if (v0)
  {
    v1 = v0;
    pthread_mutex_lock((v0 + 168));
    *(v1 + 88) = 1;
    pthread_mutex_unlock((v1 + 168));

    CheckOutHandleDebug();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      ICEDisableCandidatePairFilter_cold_1();
    }
  }
}