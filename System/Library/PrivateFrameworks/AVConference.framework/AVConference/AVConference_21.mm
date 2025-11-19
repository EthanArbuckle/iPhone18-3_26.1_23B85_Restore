uint64_t VCWRSFECDecoder_Enqueue(uint64_t a1, const void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCWRSFECDecoder_Enqueue_cold_2();
    return v4;
  }

  if (!a2)
  {
    VCWRSFECDecoder_Enqueue_cold_1(a1, &v4);
    return v4;
  }

  v2 = *(a1 + 16);

  return VCWRSQueue_Enqueue(v2, a2);
}

double VCGF256_MultiplySimdVectorByConst(int8x16_t *a1, int a2)
{
  v2.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v2.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  *&result = veorq_s8(vqtbl1q_s8(g_rtable[a2], vandq_s8(*a1, v2)), vqtbl1q_s8(g_ltable[a2], vshrq_n_u8(*a1, 4uLL))).u64[0];
  return result;
}

uint64_t VCGF256_InverseMatrix(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCGF256_InverseMatrix_cold_4();
    return v59;
  }

  if (!a2)
  {
    VCGF256_InverseMatrix_cold_3();
    return v59;
  }

  if (!a3)
  {
    VCGF256_InverseMatrix_cold_2();
    return v59;
  }

  if (!a4)
  {
    VCGF256_InverseMatrix_cold_1();
    return v59;
  }

  v5 = (a1 + 0x100000);
  *a4 = 0;
  if (*(a1 + 0x100000))
  {
    v6 = 0;
    do
    {
      *(a3 + 2 * v6) = v6;
      ++v6;
      v7 = *v5;
    }

    while (v6 < v7);
    if (*v5)
    {
      v8 = 0;
      LOWORD(v9) = 1;
      v10 = a2;
      do
      {
        if (v9)
        {
          v11 = 0;
          do
          {
            *(v10 + v11) = v8 == v11;
            ++v11;
            v7 = *v5;
          }

          while (v11 < v7);
          v9 = *v5;
        }

        else
        {
          v9 = 0;
        }

        ++v8;
        v10 += 1024;
      }

      while (v8 < v9);
    }
  }

  else
  {
    LOWORD(v7) = 0;
  }

  v12 = 0;
  v13 = a2;
  v14 = a1;
  v15 = a1;
  while (v12 < v7)
  {
    v16 = v12;
    v17 = v15;
    v18 = v12;
    while (!*v17)
    {
      v17 += 1024;
      ++v18;
      ++v16;
      if (v7 == v18)
      {
        goto LABEL_69;
      }
    }

    LODWORD(v19) = *(a1 + 1048578);
    if (v12 != v18 && *(a1 + 1048578))
    {
      v20 = 0;
      v21 = a1 + (v16 << 10);
      do
      {
        v22 = *(v14 + v20);
        *(v14 + v20) = *(v21 + v20);
        *(v21 + v20++) = v22;
        v19 = *(a1 + 1048578);
      }

      while (v20 < v19);
      LOWORD(v7) = *v5;
    }

    if (v12 != v18 && v7)
    {
      v23 = 0;
      v24 = a2 + (v16 << 10);
      do
      {
        v25 = *(v13 + v23);
        *(v13 + v23) = *(v24 + v23);
        *(v24 + v23++) = v25;
      }

      while (v23 < *v5);
      v26 = *(a3 + 2 * v12);
      *(a3 + 2 * v12) = *(a3 + 2 * v18);
      *(a3 + 2 * v18) = v26;
      LODWORD(v19) = *(a1 + 1048578);
    }

    v27 = g_alphaPowers[~g_logTable[*(a1 + (v12 << 10) + v12)]];
    if (v19)
    {
      v28 = 0;
      do
      {
        v29 = 0;
        if (v27 && *(v14 + v28))
        {
          v30 = g_logTable[v27] + g_logTable[*(v14 + v28)];
          v29 = g_alphaPowers[(v30 - 255 * (((515 * v30) >> 16) >> 1))];
        }

        *(v14 + v28++) = v29;
      }

      while (v28 < *(a1 + 1048578));
    }

    if (!*v5)
    {
      goto LABEL_66;
    }

    v31 = 0;
    do
    {
      v32 = 0;
      if (v27 && *(v13 + v31))
      {
        v33 = g_logTable[v27] + g_logTable[*(v13 + v31)];
        v32 = g_alphaPowers[(v33 - 255 * (((515 * v33) >> 16) >> 1))];
      }

      *(v13 + v31++) = v32;
      v34 = *v5;
    }

    while (v31 < v34);
    if (*v5)
    {
      v35 = 0;
      v36 = a2;
      v37 = a1;
      LOWORD(v7) = *v5;
      do
      {
        if (v35 != v12)
        {
          v38 = *(a1 + (v35 << 10) + v12);
          if (*(a1 + 1048578))
          {
            v39 = 0;
            do
            {
              v40 = 0;
              if (v38 && *(v14 + v39))
              {
                v41 = g_logTable[*(v14 + v39)] + g_logTable[v38];
                v40 = g_alphaPowers[(v41 - 255 * (((515 * v41) >> 16) >> 1))];
              }

              *(v37 + v39++) ^= v40;
            }

            while (v39 < *(a1 + 1048578));
            LOWORD(v7) = *v5;
            LOWORD(v34) = *v5;
          }

          if (v34)
          {
            v42 = 0;
            do
            {
              v43 = 0;
              if (v38 && *(v13 + v42))
              {
                v44 = g_logTable[*(v13 + v42)] + g_logTable[v38];
                v43 = g_alphaPowers[(v44 - 255 * (((515 * v44) >> 16) >> 1))];
              }

              *(v36 + v42++) ^= v43;
              v7 = *v5;
            }

            while (v42 < v7);
            LOWORD(v34) = *v5;
          }

          else
          {
            LOWORD(v34) = 0;
          }
        }

        ++v35;
        v37 += 1024;
        v36 += 1024;
      }

      while (v35 < v34);
    }

    else
    {
LABEL_66:
      LOWORD(v7) = 0;
    }

    ++v12;
    v15 += 1025;
    v14 += 1024;
    v13 += 1024;
    if (v7 < v12)
    {
      return 0;
    }
  }

LABEL_69:
  v46 = *(a1 + 1048578);
  if (v7 >= v46)
  {
    v47 = *(a1 + 1048578);
  }

  else
  {
    v47 = v7;
  }

  if (v47 == v12)
  {
    if (v46 >= 2)
    {
      for (i = 1; i != v46; ++i)
      {
        v49 = *(a3 + 2 * i);
        v50 = i;
        while (1)
        {
          v51 = v50 - 1;
          v52 = *(a3 + 2 * (v50 - 1));
          if (v52 <= v49)
          {
            break;
          }

          *(a3 + 2 * v50--) = v52;
          if (v51 + 1 <= 1)
          {
            LODWORD(v50) = 0;
            break;
          }
        }

        *(a3 + 2 * v50) = v49;
      }

      LOWORD(v7) = *v5;
    }

    if (v7)
    {
      v53 = 0;
      LODWORD(v54) = 1;
      v55 = a2;
      do
      {
        if (v54)
        {
          v56 = 0;
          do
          {
            *(v55 + v56) = *(a2 + (v53 << 10) + *(a3 + 2 * v56));
            ++v56;
            v54 = *v5;
          }

          while (v56 < v54);
        }

        ++v53;
        v55 += 1024;
      }

      while (v53 < v54);
    }

    *(a2 + 0x100000) = v12;
    *(a2 + 1048578) = v12;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v57 = VRTraceErrorLogLevelToCSTR();
    v58 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v59 = 136315650;
      v60 = v57;
      v61 = 2080;
      v62 = "_VCGF256_InverseStopCondition";
      v63 = 1024;
      v64 = 154;
      _os_log_impl(&dword_1DB56E000, v58, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCGF256_InverseMatrix: Matrix is non-invertible.", &v59, 0x1Cu);
    }
  }

  result = 0;
  *a4 = v47 == v12;
  return result;
}

uint64_t VCGF256_MultiplyMatrixByVector(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    VCGF256_MultiplyMatrixByVector_cold_5();
    return v9;
  }

  if (!a2)
  {
    VCGF256_MultiplyMatrixByVector_cold_4();
    return v9;
  }

  if (!a3)
  {
    VCGF256_MultiplyMatrixByVector_cold_3();
    return v9;
  }

  v3 = (a1 + 0x100000);
  if (*(a1 + 0x100000) >= 0x401u)
  {
    VCGF256_MultiplyMatrixByVector_cold_2();
    return v9;
  }

  if (*(a1 + 1048578) > 0x400u)
  {
    VCGF256_MultiplyMatrixByVector_cold_1();
    return v9;
  }

  if (*(a1 + 0x100000))
  {
    v4 = 0;
    v5.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v5.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    do
    {
      *(a3 + 16 * v4) = 0uLL;
      if (v3[1])
      {
        v6 = 0;
        v7 = 0uLL;
        do
        {
          v7 = veorq_s8(veorq_s8(vqtbl1q_s8(g_rtable[*(a1 + v6)], vandq_s8(*(a2 + 16 * v6), v5)), vqtbl1q_s8(g_ltable[*(a1 + v6)], vshrq_n_u8(*(a2 + 16 * v6), 4uLL))), v7);
          *(a3 + 16 * v4) = v7;
          ++v6;
        }

        while (v6 < v3[1]);
      }

      ++v4;
      a1 += 1024;
    }

    while (v4 < *v3);
  }

  return 0;
}

uint64_t VCRS255_SimdEncode()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v55 = v5;
  v58[510] = *MEMORY[0x1E69E9840];
  if (!v0)
  {
    VCRS255_SimdEncode_cold_10();
    return LODWORD(v58[0]);
  }

  if (v2 > 0x400)
  {
    VCRS255_SimdEncode_cold_9(v2, v58);
    return LODWORD(v58[0]);
  }

  v6 = v1;
  v7 = v0;
  if (v2)
  {
    v8 = 0;
    do
    {
      if (!*(v7 + 8 * v8))
      {
        VCRS255_SimdEncode_cold_2(v8, v2, v58);
        return LODWORD(v58[0]);
      }

      ++v8;
    }

    while (v2 != v8);
    if (!v1)
    {
      goto LABEL_66;
    }

    v9 = 0;
    while (*(v6 + 2 * v9) < 0x5DDu)
    {
      if (v2 == ++v9)
      {
        goto LABEL_13;
      }
    }

    VCRS255_SimdEncode_cold_1(v6, v9, v58);
    return LODWORD(v58[0]);
  }

  if (!v1)
  {
LABEL_66:
    VCRS255_SimdEncode_cold_8();
    return LODWORD(v58[0]);
  }

LABEL_13:
  if (!v3)
  {
    VCRS255_SimdEncode_cold_7();
    return LODWORD(v58[0]);
  }

  if (v5)
  {
    v10 = 0;
    while (v3[v10])
    {
      if (v5 == ++v10)
      {
        goto LABEL_18;
      }
    }

    VCRS255_SimdEncode_cold_3(v10, v5, v58);
    return LODWORD(v58[0]);
  }

LABEL_18:
  if (!v4)
  {
    VCRS255_SimdEncode_cold_6();
    return LODWORD(v58[0]);
  }

  if (!v2)
  {
    VCRS255_SimdEncode_cold_5();
    return LODWORD(v58[0]);
  }

  if (v5 + v2 >= 0x401)
  {
    VCRS255_SimdEncode_cold_4();
    return LODWORD(v58[0]);
  }

  LOWORD(v11) = 0;
  v12 = v2;
  v13 = v6;
  v14 = v2;
  do
  {
    v16 = *v13++;
    v15 = v16;
    if (v16 <= v11)
    {
      v11 = v11;
    }

    else
    {
      v11 = v15;
    }

    --v14;
  }

  while (v14);
  if (v5)
  {
    v17 = (v5 + 7) & 0x1FFF8;
    v18 = vdupq_n_s64(v5 - 1);
    v19 = xmmword_1DBD48730;
    v20 = xmmword_1DBD48740;
    v21 = xmmword_1DBD45970;
    v22 = xmmword_1DBD45330;
    v23 = (v4 + 8);
    v24 = vdupq_n_s64(8uLL);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v18, v22));
      if (vuzp1_s8(vuzp1_s16(v25, *v18.i8), *v18.i8).u8[0])
      {
        *(v23 - 4) = v11;
      }

      if (vuzp1_s8(vuzp1_s16(v25, *&v18), *&v18).i8[1])
      {
        *(v23 - 3) = v11;
      }

      if (vuzp1_s8(vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v21))), *&v18).i8[2])
      {
        *(v23 - 2) = v11;
        *(v23 - 1) = v11;
      }

      v26 = vmovn_s64(vcgeq_u64(v18, v20));
      if (vuzp1_s8(*&v18, vuzp1_s16(v26, *&v18)).i32[1])
      {
        *v23 = v11;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(v26, *&v18)).i8[5])
      {
        v23[1] = v11;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v19)))).i8[6])
      {
        v23[2] = v11;
        v23[3] = v11;
      }

      v20 = vaddq_s64(v20, v24);
      v21 = vaddq_s64(v21, v24);
      v22 = vaddq_s64(v22, v24);
      v23 += 8;
      v19 = vaddq_s64(v19, v24);
      v17 -= 8;
    }

    while (v17);
  }

  if (v11)
  {
    v52 = v3;
    v53 = v7;
    v27 = 0;
    __src = &v58[2 * v2];
    v54 = v6;
    v56 = v11;
    do
    {
      bzero(v58, 0xFF0uLL);
      v28 = 0;
      v57 = v27;
      v29 = v27;
      v30 = v12;
      v31 = v53;
      do
      {
        v32 = *(v6 + v28);
        if (v32 > v29)
        {
          v33 = v32 - v57;
          if (v33 >= 16)
          {
            v33 = 16;
          }

          memcpy(&v58[v28], (*v31 + v29), v33);
        }

        ++v31;
        v28 += 2;
        --v30;
      }

      while (v30);
      if (v55)
      {
        v34 = 0;
        v35 = &g_generatorMatrix;
        v36 = v52;
        v37.i64[0] = 0xF0F0F0F0F0F0F0FLL;
        v37.i64[1] = 0xF0F0F0F0F0F0F0FLL;
        do
        {
          v38 = v58;
          v39 = *&v58[2 * v34 + 2 * v12];
          v40 = v35;
          v41 = v12;
          do
          {
            v43 = *v40;
            v40 += 32;
            v42 = v43;
            v44 = *v38++;
            v39 = veorq_s8(veorq_s8(vqtbl1q_s8(g_ltable[v42], vshrq_n_u8(v44, 4uLL)), v39), vqtbl1q_s8(g_rtable[v42], vandq_s8(v44, v37)));
            *&v58[2 * v34 + 2 * v12] = v39;
            --v41;
          }

          while (v41);
          ++v34;
          ++v35;
        }

        while (v34 != v55);
        v45 = v56 - v57;
        if ((v56 - v57) >= 16)
        {
          v45 = 16;
        }

        v46 = v45;
        v47 = __src;
        v48 = v55;
        do
        {
          v49 = *v36++;
          memcpy((v49 + v29), v47, v46);
          v47 += 16;
          --v48;
        }

        while (v48);
      }

      v27 = v57 + 16;
      v6 = v54;
    }

    while (v56 > (v57 + 16));
  }

  return 0;
}

uint64_t VCWRSFECEncoder_Create(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    VCWRSFECEncoder_Create_cold_5();
    return v16;
  }

  v3 = a3;
  if (a3 >= 2)
  {
    VCWRSFECEncoder_Create_cold_4(a3, &v16);
    return v16;
  }

  if (_MergedGlobals_12 != -1)
  {
    VCWRSFECEncoder_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VCWRSFECEncoder_Create_cold_3();
    return v16;
  }

  v6 = Instance;
  v7 = 0;
  *(Instance + 24) = v3;
  v8 = xmmword_1DBD45330;
  v9 = vdupq_n_s64(Instance + 59424);
  v10 = vdupq_n_s64(2uLL);
  do
  {
    *(Instance + v7 + 61472) = vaddq_s64(v9, vaddq_s64(v8, v8));
    v8 = vaddq_s64(v8, v10);
    v7 += 16;
  }

  while (v7 != 0x2000);
  v11 = VCWRSQueue_Create(v3, (Instance + 16));
  if (v11)
  {
    v14 = v11;
    VCWRSFECEncoder_Create_cold_2(v11, v6);
  }

  else
  {
    *a2 = v6;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136316418;
        v17 = v12;
        v18 = 2080;
        v19 = "VCWRSFECEncoder_Create";
        v20 = 1024;
        v21 = 200;
        v22 = 2048;
        v23 = v6;
        v24 = 1024;
        v25 = v3;
        v26 = 1024;
        v27 = v3;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCWRSFECEncoder[%p] was created with sliding window size=%u and queue capacity=%u", &v16, 0x32u);
      }
    }

    return 0;
  }

  return v14;
}

uint64_t _VCWRSFECEncoderClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t VCWRS_Encode(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v122 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCWRS_Encode_cold_5();
    return __b[0];
  }

  if (!a5)
  {
    VCWRS_Encode_cold_4();
    return __b[0];
  }

  v7 = *(a1 + 16);
  RearIndex = VCWRSQueue_GetRearIndex(v7);
  Element = VCWRSQueue_GetElement(v7, RearIndex);
  if (!VCWRSFrame_GetNumberOfParityPackets(Element))
  {
    VCWRS_Encode_cold_3();
    return __b[0];
  }

  v93 = a5;
  v94 = a4;
  v10 = *(a1 + 16);
  FrontIndex = VCWRSQueue_GetFrontIndex(v10);
  v12 = VCWRSQueue_GetElement(v10, FrontIndex);
  Size = VCWRSQueue_GetSize(v10);
  if (Size)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v100 = v14;
      v102 = FrontIndex;
      NumberOfDataPackets = VCWRSFrame_GetNumberOfDataPackets(v12);
      if (NumberOfDataPackets)
      {
        v16 = NumberOfDataPackets;
        v17 = 0;
        do
        {
          v18 = v13;
          *(a1 + 2080 + 8 * v13) = VCWRSFrame_GetDataLocation(v12, v17);
          *(a1 + 10272 + 2 * v13) = VCWRSFrame_GetPacketDataSize(v12, v17);
          *(a1 + 32800 + 8 * v13++) = VCWRSFrame_GetExtendedBytes(v12, v17);
          *(a1 + 40992 + 2 * v18) = 2;
          ++v17;
        }

        while (v16 > v17);
      }

      FrontIndex = (v102 + 1) % VCWRSQueue_GetCapacity(v10);
      v12 = VCWRSQueue_GetElement(v10, FrontIndex);
      v14 = v100 + 1;
    }

    while (v100 + 1 < Size);
  }

  else
  {
    v13 = 0;
  }

  v19 = VCWRSQueue_GetRearIndex(v10);
  v20 = VCWRSQueue_GetElement(v10, v19);
  v21 = v20;
  if (v13)
  {
    v22 = 0;
    v23 = a1;
    v24 = (a1 + 10272);
    v25 = v13;
    do
    {
      v27 = *v24++;
      v26 = v27;
      if (v27 > v22)
      {
        v22 = v26;
      }

      --v25;
    }

    while (v25);
  }

  else
  {
    v22 = 0;
    v23 = a1;
  }

  v28 = v23 + 59425;
  NumberOfParityPackets = VCWRSFrame_GetNumberOfParityPackets(v20);
  if (NumberOfParityPackets)
  {
    v30 = NumberOfParityPackets;
    v31 = 0;
    do
    {
      VCWRSFrame_SetParitySizeLocation(v21, v31++, v22);
    }

    while (v30 > v31);
  }

  FrameSequentialNumber = VCWRSFrame_GetFrameSequentialNumber(v21);
  v33 = 0;
  v34 = a1;
  v35 = FrameSequentialNumber % *(a1 + 24) + 1;
  v36 = 1;
  do
  {
    if (v36 <= v13)
    {
      v37 = (a1 + 26 + 2 * v33);
      v38 = v36;
      do
      {
        *v37++ = v38 - 1;
        v38 += v35;
        ++v33;
      }

      while (v38 <= v13);
    }

    v39 = v36++ == v35;
  }

  while (!v39);
  if (v13)
  {
    v40 = a1;
    v41 = v13;
    do
    {
      v42 = *(v40 + 26);
      *(v34 + 12320) = *(a1 + 2080 + 8 * v42);
      *(v40 + 20512) = *(a1 + 10272 + 2 * v42);
      *(v34 + 43040) = *(a1 + 32800 + 8 * v42);
      v34 += 8;
      v40 += 2;
      --v41;
    }

    while (v41);
    *&v43 = 0xAAAAAAAAAAAAAAAALL;
    *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v119 = v43;
    v120 = v43;
    v117 = v43;
    v118 = v43;
    v115 = v43;
    v116 = v43;
    v113 = v43;
    v114 = v43;
    v111 = v43;
    v112 = v43;
    v109 = v43;
    v110 = v43;
    v107 = v43;
    v108 = v43;
    v105 = v43;
    v106 = v43;
    v104 = v43;
    v44 = *(a1 + 16);
    v45 = VCWRSQueue_GetRearIndex(v44);
    VCWRSUtil_MultiCodewordsParamtersCalculation(v44, v45, v13, &v104);
    v46 = *(a1 + 16);
    v47 = VCWRSQueue_GetRearIndex(v46);
    v48 = v46;
    v49 = a1;
    v50 = VCWRSQueue_GetElement(v48, v47);
    VCWRSFrame_SetNumberOfCodewords(v50, v104);
    v51 = (v13 + 1) & 0x1FFFE;
    v52 = vdupq_n_s64(v13 - 1);
    v53 = (v28 + 2055);
    v54 = a1 + 59426;
    v55 = xmmword_1DBD45330;
    v56 = vdupq_n_s64(2uLL);
    do
    {
      v57 = vmovn_s64(vcgeq_u64(v52, v55));
      if (v57.i8[0])
      {
        *(v53 - 1) = v54 - 2;
      }

      if (v57.i8[4])
      {
        *v53 = v54;
      }

      v55 = vaddq_s64(v55, v56);
      v53 += 2;
      v54 += 4;
      v51 -= 2;
    }

    while (v51);
  }

  else
  {
    *&v58 = 0xAAAAAAAAAAAAAAAALL;
    *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v119 = v58;
    v120 = v58;
    v117 = v58;
    v118 = v58;
    v115 = v58;
    v116 = v58;
    v113 = v58;
    v114 = v58;
    v111 = v58;
    v112 = v58;
    v109 = v58;
    v110 = v58;
    v107 = v58;
    v108 = v58;
    v105 = v58;
    v106 = v58;
    v104 = v58;
    v59 = *(a1 + 16);
    v60 = VCWRSQueue_GetRearIndex(v59);
    VCWRSUtil_MultiCodewordsParamtersCalculation(v59, v60, v13, &v104);
    v61 = *(a1 + 16);
    v62 = VCWRSQueue_GetRearIndex(v61);
    v63 = v61;
    v49 = a1;
    v64 = VCWRSQueue_GetElement(v63, v62);
    VCWRSFrame_SetNumberOfCodewords(v64, v104);
  }

  v65 = v104;
  if (v104)
  {
    v92 = v28;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = (v49 + 30752);
    v70 = v49 + 2080;
    v96 = v49 + 10272;
    v95 = v49 + 32800;
    do
    {
      v103 = v67;
      v71 = WORD5(v104);
      if (v66 < WORD6(v104))
      {
        v71 = WORD5(v104) + 1;
      }

      v101 = v71;
      v72 = WORD1(v104);
      v99 = v66;
      if (v65 >= 2)
      {
        v73 = v49;
        v74 = WORD3(v104);
        v75 = WORD4(v104);
        bzero((v73 + 22560), 8 * v13);
        bzero(v69, 2 * v13);
        if (v66 && v72 >= 2)
        {
          if ((~v74 + v65) >= v66)
          {
            v76 = v75;
          }

          else
          {
            v76 = v75 + 1;
          }

          v68 += v76;
        }

        bzero(__b, 0x800uLL);
        v77 = 0;
        v78 = v66 + 1;
        v79 = 1;
        v49 = a1;
        do
        {
          if (v79 <= v13)
          {
            v80 = __b + v77;
            v81 = v79;
            do
            {
              *v80++ = v81 - 1;
              v81 += v78;
              ++v77;
            }

            while (v81 <= v13);
          }

          v39 = v79++ == v78;
        }

        while (!v39);
        if (v13)
        {
          v82 = __b;
          v83 = v13;
          do
          {
            *v82 = *(a1 + 26 + 2 * *v82);
            ++v82;
            --v83;
          }

          while (v83);
          for (i = 0; i != v13; ++i)
          {
            v85 = *(__b + i);
            v86 = &v69[8 * i];
            *(v86 - 1024) = *(v70 + 8 * v85);
            *&v69[2 * i] = *(v96 + 2 * v85);
            *(v86 + 2560) = *(v95 + 8 * v85);
          }
        }
      }

      memset(__b, 170, sizeof(__b));
      v87 = VCRS255_SimdEncode();
      if (v87)
      {
        VCWRS_Encode_cold_1(v49, v87, __b);
        return __b[0];
      }

      v88 = VCRS255_SimdEncode();
      if (v88)
      {
        VCWRS_Encode_cold_2(v49, v88, __b);
        return __b[0];
      }

      v67 = v101 + v103;
      ++v66;
      v65 = v104;
    }

    while (v99 + 1 < v104);
    *v94 = v67;
    v89 = v92;
    if (v101 + v103)
    {
      v90 = 0;
      do
      {
        *(v93 + 2 * v90++) = bswap32(*(v89 - 1)) >> 16;
        v89 += 2;
      }

      while (v90 < *v94);
    }

    return 0;
  }

  else
  {
    result = 0;
    *v94 = 0;
  }

  return result;
}

uint64_t VCWRSFECEncoder_Enqueue(uint64_t a1, const void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCWRSFECEncoder_Enqueue_cold_2();
    return v4;
  }

  if (!a2)
  {
    VCWRSFECEncoder_Enqueue_cold_1(a1, &v4);
    return v4;
  }

  v2 = *(a1 + 16);

  return VCWRSQueue_Enqueue(v2, a2);
}

uint64_t VCWRSUtil_FindTotalDataPackets(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 >= 2)
    {
      VCWRSUtil_FindTotalDataPackets_cold_2(&v9);
      return v9;
    }

    else if (a3 > 1)
    {
      VCWRSUtil_FindTotalDataPackets_cold_1(&v8);
      return v8;
    }

    else if (a3 == 1)
    {
      v4 = a2 + VCWRSQueue_GetCapacity(a1) - 1;
      Capacity = VCWRSQueue_GetCapacity(a1);
      Element = VCWRSQueue_GetElement(a1, (v4 % Capacity));

      return VCWRSFrame_GetNumberOfDataPackets(Element);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    VCWRSUtil_FindTotalDataPackets_cold_3(&v10);
    return v10;
  }
}

uint64_t VCWRSUtil_MultiCodewordsParamtersCalculation(uint64_t a1, unsigned int a2, unsigned int a3, unsigned __int16 *a4)
{
  if (!a1)
  {
    VCWRSUtil_MultiCodewordsParamtersCalculation_cold_3();
    return v19;
  }

  if (!a4)
  {
    VCWRSUtil_MultiCodewordsParamtersCalculation_cold_2();
    return v19;
  }

  *(a4 + 15) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 13) = 0u;
  *(a4 + 14) = 0u;
  *(a4 + 11) = 0u;
  *(a4 + 12) = 0u;
  *(a4 + 9) = 0u;
  *(a4 + 10) = 0u;
  *(a4 + 7) = 0u;
  *(a4 + 8) = 0u;
  *(a4 + 5) = 0u;
  *(a4 + 6) = 0u;
  *(a4 + 3) = 0u;
  *(a4 + 4) = 0u;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *a4 = 0u;
  Element = VCWRSQueue_GetElement(a1, a2);
  a4[1] = vcvtps_s32_f32(a3 / 223.0);
  v7 = vcvtps_s32_f32(vcvts_n_f32_u32(VCWRSFrame_GetNumberOfParityPackets(Element), 5uLL));
  a4[2] = v7;
  v8 = a4[1];
  if (v8 <= v7)
  {
    LOWORD(v8) = v7;
  }

  *a4 = v8;
  if (!v7)
  {
    VCWRSUtil_MultiCodewordsParamtersCalculation_cold_1();
    return v19;
  }

  a4[6] = VCWRSFrame_GetNumberOfParityPackets(Element) % a4[2];
  NumberOfParityPackets = VCWRSFrame_GetNumberOfParityPackets(Element);
  v10 = a4[6];
  v11 = *a4;
  a4[5] = (NumberOfParityPackets - v10) / v11;
  if (v11 >= 2)
  {
    v12 = a4 + 10;
    for (i = 1; i != v11; ++i)
    {
      if (i < 2)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v12 - 1);
      }

      if (i > v10)
      {
        v15 = ((NumberOfParityPackets - v10) / v11);
      }

      else
      {
        v15 = ((NumberOfParityPackets - v10) / v11) + 1;
      }

      *v12++ = v14 + v15;
    }
  }

  result = 0;
  if (a4[1] > 1u)
  {
    v17 = v11 - 1;
    v18 = (a3 - 223) % v17;
    a4[3] = v18;
    a4[4] = (a3 - 223 - v18) / v17;
  }

  return result;
}

uint64_t VCWRSUtil_EncoderPermutation(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 <= a2)
  {
    VCWRSUtil_EncoderPermutation_cold_1(a1, a2, &v10);
    return v10;
  }

  if (!a3)
  {
    VCWRSUtil_EncoderPermutation_cold_2();
    return v10;
  }

  if (a2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      for (i = v5; a1 >= i; i += a2)
      {
        v7 = v4++;
        a3[v7] = i - 1;
      }

      ++v5;
    }

    while (a2 >= v5);
  }

  if (a4)
  {
    v8 = a1;
    do
    {
      *a3 = *(a4 + 2 * *a3);
      ++a3;
      --v8;
    }

    while (v8);
  }

  return 0;
}

uint64_t VCWRSUtil_DecoderInversePermutation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1 <= a2)
  {
    VCWRSUtil_DecoderInversePermutation_cold_1(a1, a2, &v13);
    return v13;
  }

  if (!a3)
  {
    VCWRSUtil_DecoderInversePermutation_cold_2();
    return v13;
  }

  bzero(v14, 0x800uLL);
  VCWRSUtil_EncoderPermutation(a1, a2, v14, a4);
  v8 = 0;
  v9 = 0;
  do
  {
    if (v14[v9] == v8)
    {
      if (a2 - 1 == v8)
      {
        break;
      }

      v9 = 0;
      ++v8;
    }

    ++v9;
  }

  while (a1 > v9);
  v10 = 0;
  do
  {
    v11 = 0;
    while (v10 != v14[v11])
    {
      if (a1 == ++v11)
      {
        goto LABEL_14;
      }
    }

    *(a3 + 2 * v10) = v11;
LABEL_14:
    ++v10;
  }

  while (v10 != a1);
  return 0;
}

void OUTLINED_FUNCTION_8_28(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x28u);
}

uint64_t VCWRSQueue_GetFrontIndex(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 8);
  }

  VCWRSQueue_GetFrontIndex_cold_1(&v2);
  return v2;
}

uint64_t VCWRSQueue_GetRearIndex(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 12);
  }

  VCWRSQueue_GetRearIndex_cold_1();
  return v2;
}

uint64_t VCWRSQueue_GetCapacity(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 18);
  }

  VCWRSQueue_GetCapacity_cold_1(&v2);
  return v2;
}

uint64_t VCWRSQueue_GetSize(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 16);
  }

  VCWRSQueue_GetSize_cold_1(&v2);
  return v2;
}

uint64_t VCWRSQueue_GetElement(uint64_t a1, unsigned int a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 8 * a2);
  }

  VCWRSQueue_GetElement_cold_1(v3);
  return v3[0];
}

uint64_t VCWRSQueue_DistanceToFront(uint64_t a1, int a2)
{
  if (!a1)
  {
    VCWRSQueue_DistanceToFront_cold_3();
    return v3;
  }

  if (a2)
  {
    VCWRSQueue_DistanceToFront_cold_1();
    return v3;
  }

  if (!*a1)
  {
    VCWRSQueue_DistanceToFront_cold_2();
    return v3;
  }

  return (*(a1 + 18) - *(a1 + 8)) % *(a1 + 18);
}

uint64_t VCWRSQueue_NextFrameIndex(uint64_t a1, int a2)
{
  if (!a1)
  {
    VCWRSQueue_NextFrameIndex_cold_3();
    return v3;
  }

  if (a2)
  {
    VCWRSQueue_NextFrameIndex_cold_1();
    return v3;
  }

  if (!*a1)
  {
    VCWRSQueue_NextFrameIndex_cold_2();
    return v3;
  }

  return (*(a1 + 18) + 1) % *(a1 + 18);
}

uint64_t VCWRSFrame_Create(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (!a2)
  {
    VCWRSFrame_Create_cold_13();
    return v30;
  }

  if (!a3)
  {
    VCWRSFrame_Create_cold_12();
    return v30;
  }

  v4 = *(a3 + 8);
  if ((v4 - 1025) <= 0xFFFFFBFF)
  {
    VCWRSFrame_Create_cold_11();
    return v30;
  }

  v5 = *(a3 + 16);
  if (!v5)
  {
    VCWRSFrame_Create_cold_10();
    return v30;
  }

  v6 = *(a3 + 24);
  if (!v6)
  {
    VCWRSFrame_Create_cold_9();
    return v30;
  }

  v8 = 0;
  do
  {
    if (!*(v5 + 8 * v8))
    {
      VCWRSFrame_Create_cold_8();
      return v30;
    }

    if (*(v6 + 2 * v8) >= 0x5DDu)
    {
      VCWRSFrame_Create_cold_7();
      return v30;
    }

    ++v8;
  }

  while (v4 != v8);
  v9 = *(a3 + 32);
  if (v9)
  {
    v10 = *(a3 + 10);
    if (v10 >= 0x401)
    {
      VCWRSFrame_Create_cold_4();
      return v30;
    }

    v11 = *(a3 + 40);
    if (!v11)
    {
      VCWRSFrame_Create_cold_3();
      return v30;
    }

    if (*(a3 + 10))
    {
      v12 = 0;
      while (1)
      {
        if (!*(v9 + 8 * v12))
        {
          VCWRSFrame_Create_cold_2();
          return v30;
        }

        if (*(v11 + 2 * v12) >= 0x5DDu)
        {
          break;
        }

        if (v10 == ++v12)
        {
          goto LABEL_18;
        }
      }

      VCWRSFrame_Create_cold_1();
      return v30;
    }
  }

LABEL_18:
  if (_MergedGlobals_13 != -1)
  {
    VCWRSFrame_Create_cold_5();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VCWRSFrame_Create_cold_6();
    return v30;
  }

  v14 = Instance;
  *(Instance + 61472) = *a3;
  v15 = *(a3 + 8);
  *(Instance + 16) = v15;
  *(Instance + 20504) = *(a3 + 10);
  *(Instance + 67630) = 0;
  *(Instance + 61480) = 1;
  if (v15)
  {
    v16 = 0;
    v17 = Instance + 8216;
    v18 = (Instance + 40992);
    v19 = 24;
    v20 = 18457;
    do
    {
      v21 = (v14 + v20);
      *(v21 - 1) = *(*(a3 + 24) + 2 * v16 + 1);
      *v21 = *(*(a3 + 24) + 2 * v16);
      v22 = *(*(a3 + 16) + 8 * v16);
      *(v17 + 8 * v16) = v22;
      if (v22)
      {
        CFRetain(v22);
        v22 = *(v17 + 8 * v16);
      }

      CMBlockBufferGetDataPointer(v22, 0, 0, 0, (v14 + v19));
      v23 = *(*(a3 + 24) + 2 * v16);
      *(v14 + 16408 + 2 * v16) = v23;
      CC_SHA1(*(v14 + 8 * v16++ + 24), v23, v18);
      v18 += 20;
      v19 += 8;
      v20 += 2;
    }

    while (v16 < *(v14 + 16));
  }

  if (*(a3 + 32) && *(a3 + 40) && *(a3 + 10))
  {
    v24 = 0;
    v25 = (v14 + 38945);
    v26 = v14 + 20512;
    do
    {
      v27 = *(*(a3 + 32) + 8 * v24);
      *(v26 + 0x2000) = v27;
      if (v27)
      {
        CFRetain(v27);
      }

      CMBlockBufferGetDataPointer(*(*(a3 + 32) + 8 * v24), 0, 0, 0, v26);
      *(v14 + 36896 + 2 * v24) = *(*(a3 + 40) + 2 * v24);
      v28 = *(a3 + 48);
      if (v28)
      {
        *(v25 - 1) = *(v28 + 2 * v24 + 1);
        *v25 = *(*(a3 + 48) + 2 * v24);
      }

      ++v24;
      v25 += 2;
      v26 += 8;
    }

    while (v24 < *(a3 + 10));
  }

  result = 0;
  *a2 = v14;
  return result;
}

uint64_t VCWRSFrame_AddErasures(unsigned __int16 *a1, uint64_t a2, unsigned int a3, __int16 *a4, unsigned int a5)
{
  if (!a1)
  {
    VCWRSFrame_AddErasures_cold_3();
    return v21;
  }

  if (!a2)
  {
    VCWRSFrame_AddErasures_cold_2();
    return v21;
  }

  if (!a4)
  {
    VCWRSFrame_AddErasures_cold_1();
    return v21;
  }

  v5 = a1 + 0x8000;
  a1[32789] = 0;
  v6 = a1[8];
  if (a1[8])
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      if (*(a2 + 2 * v8) == v7 && (v10 = a1[32789], v10 < a3))
      {
        a1[32789] = v10 + 1;
        a1[v10 + 30741] = v7;
        ++v8;
      }

      else
      {
        v11 = v9++;
        a1[v11 + 31765] = v7;
      }

      ++v7;
    }

    while (v7 < v6);
  }

  a1[33814] = a5;
  if (a5)
  {
    v12 = a1 + 32790;
    v13 = a5;
    do
    {
      v14 = *a4++;
      *v12++ = v14;
      --v13;
    }

    while (v13);
  }

  if (a1[32789])
  {
    v15 = 0;
    v16 = a1 + 9228;
    v17 = a1 + 30741;
    v18 = a1 + 12;
    v19 = a1 + 8204;
    do
    {
      v16[v17[v15]] = 0;
      bzero(*&v18[4 * v17[v15]], v19[v17[v15]]);
      v19[v17[v15++]] = 0;
    }

    while (v15 < v5[21]);
  }

  return 0;
}

uint64_t VCWRSFrame_GetFrameSequentialNumber(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 61472);
  }

  VCWRSFrame_GetFrameSequentialNumber_cold_1();
  return v2;
}

uint64_t VCWRSFrame_GetNumberOfDataPackets(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  VCWRSFrame_GetNumberOfDataPackets_cold_1();
  return v2;
}

uint64_t VCWRSFrame_GetNumberOfParityPackets(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 20504);
  }

  VCWRSFrame_GetNumberOfParityPackets_cold_1();
  return v2;
}

uint64_t VCWRSFrame_SetNumberOfCodewords(uint64_t a1, __int16 a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 61480) = a2;
  }

  else
  {
    VCWRSFrame_SetNumberOfCodewords_cold_1();
    return v4;
  }

  return result;
}

uint64_t VCWRSFrame_GetNumberOfLostData(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 65578);
  }

  VCWRSFrame_GetNumberOfLostData_cold_1();
  return v2;
}

uint64_t VCWRSFrame_GetNumberOfReceivedParityPackets(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 67628);
  }

  VCWRSFrame_GetNumberOfReceivedParityPackets_cold_1();
  return v2;
}

uint64_t VCWRSFrame_GetIsRecovered(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 67630);
  }

  else
  {
    VCWRSFrame_GetIsRecovered_cold_1(&v3);
    v1 = v3;
  }

  return v1 & 1;
}

uint64_t VCWRSFrame_GetDataLocation(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    VCWRSFrame_GetDataLocation_cold_2();
    return v3;
  }

  if (*(a1 + 16) <= a2)
  {
    VCWRSFrame_GetDataLocation_cold_1();
    return v3;
  }

  return *(a1 + 8 * a2 + 24);
}

uint64_t VCWRSFrame_GetPacketDataSize(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    if (*(a1 + 16) <= a2)
    {
      VCWRSFrame_GetPacketDataSize_cold_1();
      return v3;
    }

    else
    {
      return *(a1 + 2 * a2 + 16408);
    }
  }

  else
  {
    VCWRSFrame_GetPacketDataSize_cold_2();
    return v4;
  }
}

uint64_t VCWRSFrame_GetParityPacket(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    VCWRSFrame_GetParityPacket_cold_2();
    return v3;
  }

  if (*(a1 + 20504) <= a2)
  {
    VCWRSFrame_GetParityPacket_cold_1();
    return v3;
  }

  return *(a1 + 8 * a2 + 20512);
}

uint64_t VCWRSFrame_GetParityPacketSize(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    if (*(a1 + 20504) <= a2)
    {
      VCWRSFrame_GetParityPacketSize_cold_1();
      return v3;
    }

    else
    {
      return *(a1 + 2 * a2 + 36896);
    }
  }

  else
  {
    VCWRSFrame_GetParityPacketSize_cold_2();
    return v4;
  }
}

uint64_t VCWRSFrame_SetParitySizeLocation(uint64_t a1, unsigned int a2, __int16 a3)
{
  if (!a1)
  {
    VCWRSFrame_SetParitySizeLocation_cold_2();
    return v5;
  }

  if (*(a1 + 20504) <= a2)
  {
    VCWRSFrame_SetParitySizeLocation_cold_1();
    return v5;
  }

  result = 0;
  *(a1 + 2 * a2 + 36896) = a3;
  return result;
}

uint64_t VCWRSFrame_SetNumberOfLostData(uint64_t a1, __int16 a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 65578) = a2;
  }

  else
  {
    VCWRSFrame_SetNumberOfLostData_cold_1();
    return v4;
  }

  return result;
}

uint64_t VCWRSFrame_SetIsRecovered(uint64_t a1, char a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 67630) = a2;
  }

  else
  {
    VCWRSFrame_SetIsRecovered_cold_1();
    return v4;
  }

  return result;
}

uint64_t VCWRSFrame_GetLostDataPacketIndex(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    if (*(a1 + 65578) <= a2)
    {
      VCWRSFrame_GetLostDataPacketIndex_cold_1();
      return v3;
    }

    else
    {
      return *(a1 + 2 * a2 + 61482);
    }
  }

  else
  {
    VCWRSFrame_GetLostDataPacketIndex_cold_2();
    return v4;
  }
}

uint64_t VCWRSFrame_GetReceivedDataPacketIndex(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 16) - *(a1 + 65578) <= a2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v7 = *(a1 + 16) - *(a1 + 65578);
          v8 = 136316162;
          v9 = v5;
          v10 = 2080;
          v11 = "VCWRSFrame_GetReceivedDataPacketIndex";
          v12 = 1024;
          v13 = 336;
          v14 = 1024;
          v15 = a2;
          v16 = 1024;
          v17 = v7;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d index=%hu is greater than number of received data packets=%hu", &v8, 0x28u);
        }
      }

      return 0xFFFFLL;
    }

    else
    {
      return *(a1 + 2 * a2 + 63530);
    }
  }

  else
  {
    VCWRSFrame_GetReceivedDataPacketIndex_cold_1();
    return v8;
  }
}

uint64_t VCWRSFrame_GetReceivedParityPacketIndex(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    if (*(a1 + 67628) <= a2)
    {
      VCWRSFrame_GetReceivedParityPacketIndex_cold_1();
      return v3;
    }

    else
    {
      return *(a1 + 2 * a2 + 65580);
    }
  }

  else
  {
    VCWRSFrame_GetReceivedParityPacketIndex_cold_2();
    return v4;
  }
}

uint64_t VCWRSFrame_SetReceivedData(uint64_t a1, unsigned int a2, __int16 a3)
{
  if (!a1)
  {
    VCWRSFrame_SetReceivedData_cold_2();
    return v5;
  }

  if (*(a1 + 16) <= a2)
  {
    VCWRSFrame_SetReceivedData_cold_1();
    return v5;
  }

  result = 0;
  *(a1 + 2 * a2 + 63530) = a3;
  return result;
}

uint64_t VCWRSFrame_SetDataLocation(uint64_t a1, unsigned int a2, unsigned int a3, __n128 a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (!a1)
  {
    VCWRSFrame_SetDataLocation_cold_2();
    return v9;
  }

  if (*(a1 + 16) <= a2)
  {
    VCWRSFrame_SetDataLocation_cold_1();
    return v9;
  }

  v4 = *(a1 + 2 * a2 + 16408);
  v5 = v4 - a3;
  if (v4 <= a3)
  {
    return 0;
  }

  v6 = (*(a1 + 8 * a2 + 24) + a3);
  if (v5 <= 15)
  {
    memcpy(v6, &v8, v5);
    return 0;
  }

  result = 0;
  *v6 = a4;
  return result;
}

uint64_t VCWRSFrame_SetDataPacketSize(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!a1)
  {
    VCWRSFrame_SetDataPacketSize_cold_3();
    return v6;
  }

  if (*(a1 + 16) <= a2)
  {
    VCWRSFrame_SetDataPacketSize_cold_1();
    return v6;
  }

  if (a3 >= 0x5DD)
  {
    VCWRSFrame_SetDataPacketSize_cold_2();
    return v6;
  }

  result = 0;
  v5 = a1 + 2 * a2;
  *(v5 + 16408) = a3;
  v5 += 18456;
  *v5 = BYTE1(a3);
  *(v5 + 1) = a3;
  return result;
}

uint64_t _VCWRSFrameClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t VCWRSFrame_GetRedundantBits(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    VCWRSFrame_GetRedundantBits_cold_2();
    return v3;
  }

  if (*(a1 + 20504) <= a2)
  {
    VCWRSFrame_GetRedundantBits_cold_1();
    return v3;
  }

  return a1 + 2 * a2 + 38944;
}

uint64_t VCWRSFrame_GetExtendedBytes(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    VCWRSFrame_GetExtendedBytes_cold_2();
    return v3;
  }

  if (*(a1 + 16) <= a2)
  {
    VCWRSFrame_GetExtendedBytes_cold_1();
    return v3;
  }

  return a1 + 2 * a2 + 18456;
}

void _VCWRSFrame_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v3 = 0;
    v4 = a1 + 8216;
    do
    {
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        CFRelease(v5);
        *(v4 + 8 * v3) = 0;
        v2 = *(a1 + 16);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  v6 = *(a1 + 20504);
  if (*(a1 + 20504))
  {
    v7 = 0;
    v8 = a1 + 28704;
    do
    {
      v9 = *(v8 + 8 * v7);
      if (v9)
      {
        CFRelease(v9);
        *(v8 + 8 * v7) = 0;
        v6 = *(a1 + 20504);
      }

      ++v7;
    }

    while (v7 < v6);
  }
}

BOOL VCBasebandNotificationParser_ParseNotification(unint64_t a1, unsigned int a2, uint64_t a3, double a4)
{
  v63 = *MEMORY[0x1E69E9840];
  if (a2 < 8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCBasebandNotificationParser_ParseNotification_cold_6();
    }

    return 0;
  }

  v6 = a3;
  *a3 = 0;
  v7 = a2 & 0x7FFFFFFE;
  if (v7 == 6)
  {
    goto LABEL_96;
  }

  *(a3 + 4) = bswap32(*(a1 + 6)) >> 16;
  if (v7 == 4)
  {
    goto LABEL_96;
  }

  v9 = bswap32(*(a1 + 4)) >> 16;
  if (v9 == 51966)
  {
    if (a2 <= 0xB)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        VCBasebandNotificationParser_ParseNotification_cold_3();
      }

      return 0;
    }

    v41 = a2 & 0x7FFFFFFC;
    if (v41 == 8)
    {
      goto LABEL_96;
    }

    if (*(a1 + 8) == 1862270976)
    {
      *a3 = 3;
      if (a2 <= 0xF)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          VCBasebandNotificationParser_ParseNotification_cold_2();
        }

        return 0;
      }

      if ((a2 & 0x7FFFFFFC | 2) != 0xE)
      {
        v42 = *(a1 + 14);
        *(a3 + 16) = bswap32(*(a1 + 12)) >> 16;
        *(a3 + 18) = bswap32(v42) >> 16;
        return 1;
      }
    }

    else
    {
      *a3 = 1;
      *(a3 + 8) = a4;
      if (a2 <= 0x23)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          VCBasebandNotificationParser_ParseNotification_cold_1();
        }

        return 0;
      }

      *(a3 + 16) = *(a1 + 12);
      *(a3 + 18) = *(a1 + 13);
      if (v7 != 14)
      {
        *(a3 + 20) = bswap32(*(a1 + 14)) >> 16;
        *(a3 + 22) = *(a1 + 16);
        *(a3 + 23) = *(a1 + 17);
        if (v41 != 20)
        {
          *(a3 + 24) = bswap32(*(a1 + 20));
          if (v41 != 24)
          {
            *(a3 + 28) = bswap32(*(a1 + 24));
            if (v41 != 28)
            {
              *(a3 + 32) = bswap32(*(a1 + 28));
              if (v41 != 32)
              {
                *(a3 + 36) = bswap32(*(a1 + 32));
                return 1;
              }
            }
          }
        }
      }
    }

LABEL_96:
    __break(0x5519u);
  }

  if (v9 != 57005)
  {
    return 1;
  }

  *a3 = 2;
  *(a3 + 8) = a4;
  if (a2 <= 0xF)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCBasebandNotificationParser_ParseNotification_cold_5();
    }

    return 0;
  }

  if (v7 == 12)
  {
    goto LABEL_96;
  }

  *(a3 + 16) = bswap32(*(a1 + 12)) >> 16;
  if (v7 == 14)
  {
    goto LABEL_96;
  }

  v10 = *(a1 + 14);
  *(a3 + 18) = __rev16(v10);
  if (v10 == 0xFFFF)
  {
    return 1;
  }

  v11 = 0;
  v12 = a1 + a2;
  v49 = a3 + 6046;
  v50 = a3 + 22;
  v13 = (a3 + 26);
  v14 = 16;
  do
  {
    v15 = v14 + 3;
    v16 = a2 - (v14 + 3);
    if (a2 < v14 + 3)
    {
      goto LABEL_93;
    }

    v17 = a1 + v14;
    if (v17 >= v12 || v17 < a1)
    {
      goto LABEL_96;
    }

    v18 = (v50 + 1004 * v11);
    if (v18 >= v49 || v18 < v50)
    {
      goto LABEL_96;
    }

    *v18 = *(a1 + v14);
    v20 = v14 + 1;
    v21 = (a1 + v20);
    if (a1 + v20 > v12 || v21 < a1 || a2 - v20 < 2)
    {
      goto LABEL_96;
    }

    v22 = bswap32(*v21);
    v23 = HIWORD(v22);
    *(v18 + 1) = HIWORD(v22);
    v24 = v16 >> 1;
    if (v16 >> 1 < HIWORD(v22))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v47 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v39 = *(v18 + 1);
          *buf = 136316418;
          v52 = v47;
          v53 = 2080;
          v54 = "VCBasebandNotificationParser_ParseNotification";
          v55 = 1024;
          v56 = 76;
          v57 = 1024;
          v58 = 76;
          v59 = 1024;
          v60 = v24;
          v61 = 1024;
          v62 = v39;
          _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCBasebandNotificationParser.c:%d: Bad ACK, #dropped SN doesn't match(%d != %u).", buf, 0x2Eu);
        }
      }

      *(v18 + 1) = v24;
      LOWORD(v23) = v24;
    }

    if (v23 >= 0x1F5u)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v40 = *(v18 + 1);
          *buf = 136316418;
          v52 = v26;
          v53 = 2080;
          v54 = "VCBasebandNotificationParser_ParseNotification";
          v55 = 1024;
          v56 = 81;
          v57 = 1024;
          v58 = 81;
          v59 = 1024;
          v60 = v40;
          v61 = 1024;
          v62 = 500;
          _os_log_error_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCBasebandNotificationParser.c:%d: Bad ACK, #dropped SN exceeds limit(%d > %d).", buf, 0x2Eu);
        }
      }

      *(v18 + 1) = 500;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(v18 + 1);
        v31 = *v18;
        *buf = 136316162;
        v52 = v28;
        v53 = 2080;
        v54 = "VCBasebandNotificationParser_ParseNotification";
        v55 = 1024;
        v56 = 85;
        v57 = 1024;
        v58 = v30;
        v59 = 1024;
        v60 = v31;
        _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Baseband dropped %u packet(s) for PT %u.", buf, 0x28u);
      }
    }

    if (v15 + 2 * *(v18 + 1) > a2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v43 = VRTraceErrorLogLevelToCSTR();
        v44 = *MEMORY[0x1E6986650];
        result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        v45 = *(v18 + 1);
        *buf = 136316162;
        v52 = v43;
        v53 = 2080;
        v54 = "VCBasebandNotificationParser_ParseNotification";
        v55 = 1024;
        v56 = 88;
        v57 = 1024;
        v58 = a2;
        v59 = 1024;
        v60 = v15 + 2 * v45;
        _os_log_error_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_ERROR, " [%s] %s:%d Corrupted baseband notification ACK packet. Length[%d] < needed[%d]", buf, 0x28u);
      }

      return 0;
    }

    if (*(v18 + 1))
    {
      v32 = 0;
      v33 = v13;
      v6 = a3;
      while (1)
      {
        v34 = (a1 + v15);
        v35 = v34 <= v12 && v34 >= a1;
        v36 = v35 && a2 - v15 >= 2;
        v37 = !v36 || v33 >= v18 + 502;
        if (v37 || v33 < v18 + 2)
        {
          goto LABEL_96;
        }

        *v33++ = bswap32(*v34) >> 16;
        v15 += 2;
        if (++v32 >= *(v18 + 1))
        {
          goto LABEL_65;
        }
      }
    }

    v6 = a3;
LABEL_65:
    ++v11;
    v13 += 502;
    v14 = v15;
  }

  while (v11 != 6);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCBasebandNotificationParser_ParseNotification_cold_4();
    }
  }

  LOWORD(v11) = 6;
LABEL_93:
  *(v6 + 20) = v11;
  return 1;
}

void *videoRulesForFormatList_0(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = (a1 + 8);
    v6 = 5;
    v7 = MEMORY[0x1E6986650];
    do
    {
      v8 = [VCVideoRule alloc];
      *&v9 = *v5;
      v10 = [(VCVideoRule *)v8 initWithFrameWidth:*(v5 - 2) frameHeight:*(v5 - 1) frameRate:a2 payload:v9];
      if (v10)
      {
        v11 = v10;
        [v4 addObject:v10];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v16 = v12;
          v17 = 2080;
          v18 = "videoRulesForFormatList";
          v19 = 1024;
          v20 = 37;
          _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create video rule for secondary screen !", buf, 0x1Cu);
        }
      }

      v5 += 3;
      --v6;
    }

    while (v6);
  }

  return v4;
}

void VCTimescaleWSOLAShiftBuffer::VCTimescaleWSOLAShiftBuffer(VCTimescaleWSOLAShiftBuffer *this, unsigned int a2)
{
  *this = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 100 * a2;
}

_DWORD *VCTimescaleWSOLAShiftBuffer::appendSamples(_DWORD *this, float *__src, unsigned int a3)
{
  v5 = this;
  v17 = *MEMORY[0x1E69E9840];
  v6 = this[2];
  if (v6 - this[3] < a3)
  {
    v7 = 8 * v6;
    if (8 * v6 < this[4])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315650;
          v12 = v8;
          v13 = 2080;
          v14 = "appendSamples";
          v15 = 1024;
          v16 = 52;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCTimescaleWSOLAClass is increasing size of extendedBuffer by 8x.\n", &v11, 0x1Cu);
        }
      }

      this = malloc_type_realloc(*v5, 4 * v7, 0x100004052888210uLL);
      if (this)
      {
        *v5 = this;
        *(v5 + 8) = v7;
        v6 = v7;
      }

      else
      {
        v6 = *(v5 + 8);
      }
    }
  }

  v10 = *(v5 + 12);
  if (v6 - v10 >= a3)
  {
    this = memcpy((*v5 + 4 * v10), __src, 4 * a3);
    *(v5 + 12) += a3;
  }

  return this;
}

void **VCTimescaleWSOLAShiftBuffer::removeSamples(void **this, unsigned int a2)
{
  if (a2)
  {
    v3 = this;
    this = memmove(*this, *this + 4 * a2, 4 * (*(this + 3) - a2));
    *(v3 + 3) -= a2;
  }

  return this;
}

uint64_t VCVideoDecoder_NewVideoDecoder(void *a1, _DWORD *a2)
{
  v3 = [VCVideoDecoder decoderForStreamToken:a2[24] + (2 * *a2) withConfig:a2];
  if (a1)
  {
    *a1 = [v3 videoPlayerHandle];
  }

  return 0;
}

uint64_t VCPacketFilterBasebandNotificationCreate(uint64_t a1, void *a2)
{
  ClassID = VCPacketFilterGetClassID();

  return VCFBOUtils_ObjectCreate(a1, a2, &kVCPacketFilterBBNotificationVTable, ClassID, 52);
}

void _VCPacketFilterBBNotificationFinalize(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v2 = *DerivedStorage;
      if (v2)
      {

        CFRelease(v2);
      }
    }

    else
    {
      _VCPacketFilterBBNotificationFinalize_cold_1();
    }
  }

  else
  {
    _VCPacketFilterBBNotificationFinalize_cold_2();
  }
}

uint64_t _VCPacketFilterBBNotificationCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _VCPacketFilterBBNotificationCopyProperty_cold_3();
    return v12;
  }

  if (!a2 || !a4)
  {
    _VCPacketFilterBBNotificationCopyProperty_cold_2();
    return v12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"CellularUniqueTag"))
  {
    if (*DerivedStorage)
    {
      v7 = CFRetain(*DerivedStorage);
      result = 0;
      *a4 = v7;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315906;
          v13 = v10;
          v14 = 2080;
          v15 = "_VCPacketFilterBBNotificationCopyProperty";
          v16 = 1024;
          v17 = 68;
          v18 = 2112;
          v19 = a2;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Parameter '%@' is currently not set for packet filter", &v12, 0x26u);
        }
      }

      return 4294954513;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCPacketFilterBBNotificationCopyProperty_cold_1(v9);
      }
    }

    return 4294954512;
  }

  return result;
}

uint64_t _VCPacketFilterBBNotificationSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    _VCPacketFilterBBNotificationSetProperty_cold_3();
    return v9;
  }

  if (!a2 || !a3)
  {
    _VCPacketFilterBBNotificationSetProperty_cold_2();
    return v9;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"CellularUniqueTag"))
  {
    v6 = *DerivedStorage;
    *DerivedStorage = a3;
    CFRetain(a3);
    if (v6)
    {
      CFRelease(v6);
    }

    return 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCPacketFilterBBNotificationSetProperty_cold_1(v8);
      }
    }

    return 4294954512;
  }
}

CVPixelBufferRef VCImageResizingConverter_CreateResizedPixelBuffer(uint64_t a1, __CVBuffer *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v6 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
        *buf = 136316930;
        v31 = v4;
        v32 = 2080;
        v33 = "VCImageResizingConverter_CreateResizedPixelBuffer";
        v34 = 1024;
        v35 = 50;
        v36 = 2048;
        v37 = a1;
        v38 = 2048;
        v39 = a2;
        v40 = 2080;
        v41 = FourccToCStr(PixelFormatType);
        v42 = 2048;
        Width = CVPixelBufferGetWidth(a2);
        v44 = 2048;
        Height = CVPixelBufferGetHeight(a2);
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d pointer=%p, pixelBuffer=%p, formatType=%s, width=%lu, height=%lu", buf, 0x4Eu);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v23 = CVPixelBufferGetPixelFormatType(a2);
      *buf = 136316930;
      v31 = v4;
      v32 = 2080;
      v33 = "VCImageResizingConverter_CreateResizedPixelBuffer";
      v34 = 1024;
      v35 = 50;
      v36 = 2048;
      v37 = a1;
      v38 = 2048;
      v39 = a2;
      v40 = 2080;
      v41 = FourccToCStr(v23);
      v42 = 2048;
      Width = CVPixelBufferGetWidth(a2);
      v44 = 2048;
      Height = CVPixelBufferGetHeight(a2);
      _os_log_debug_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEBUG, " [%s] %s:%d pointer=%p, pixelBuffer=%p, formatType=%s, width=%lu, height=%lu", buf, 0x4Eu);
    }
  }

  pixelBufferOut = 0;
  if (*(a1 + 48))
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], v8, &pixelBufferOut))
      {
        VCImageResizingConverter_CreateResizedPixelBuffer_cold_1();
      }

      else
      {
        v9 = VTPixelTransferSessionTransferImage(*(a1 + 48), a2, pixelBufferOut);
        if (v9)
        {
          VCImageResizingConverter_CreateResizedPixelBuffer_cold_2(v9);
        }

        else
        {
          CVOFromPixelBuffer = VCCVOExtensionUtils_GetCVOFromPixelBuffer(a2);
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *MEMORY[0x1E6986650];
            v13 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v31 = v11;
                v32 = 2080;
                v33 = "VCImageResizingConverter_CreateResizedPixelBuffer";
                v34 = 1024;
                v35 = 63;
                v36 = 1024;
                LODWORD(v37) = CVOFromPixelBuffer;
                _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CVO=0x%02x", buf, 0x22u);
              }
            }

            else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              VCImageResizingConverter_CreateResizedPixelBuffer_cold_3();
            }
          }

          VCCVOExtensionUtils_AttachCVOToPixelBuffer(pixelBufferOut, CVOFromPixelBuffer);
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            v16 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = pixelBufferOut;
                v18 = CVPixelBufferGetPixelFormatType(pixelBufferOut);
                v19 = FourccToCStr(v18);
                v20 = CVPixelBufferGetWidth(pixelBufferOut);
                v21 = CVPixelBufferGetHeight(pixelBufferOut);
                *buf = 136316930;
                v31 = v14;
                v32 = 2080;
                v33 = "VCImageResizingConverter_CreateResizedPixelBuffer";
                v34 = 1024;
                v35 = 66;
                v36 = 2048;
                v37 = a1;
                v38 = 2048;
                v39 = v17;
                v40 = 2080;
                v41 = v19;
                v42 = 2048;
                Width = v20;
                v44 = 2048;
                Height = v21;
                _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d pointer=%p, newPixelBuffer=%p, formatType=%s, width=%lu, height=%lu", buf, 0x4Eu);
              }
            }

            else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v24 = pixelBufferOut;
              v25 = CVPixelBufferGetPixelFormatType(pixelBufferOut);
              v26 = FourccToCStr(v25);
              v27 = CVPixelBufferGetWidth(pixelBufferOut);
              v28 = CVPixelBufferGetHeight(pixelBufferOut);
              *buf = 136316930;
              v31 = v14;
              v32 = 2080;
              v33 = "VCImageResizingConverter_CreateResizedPixelBuffer";
              v34 = 1024;
              v35 = 66;
              v36 = 2048;
              v37 = a1;
              v38 = 2048;
              v39 = v24;
              v40 = 2080;
              v41 = v26;
              v42 = 2048;
              Width = v27;
              v44 = 2048;
              Height = v28;
              _os_log_debug_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d pointer=%p, newPixelBuffer=%p, formatType=%s, width=%lu, height=%lu", buf, 0x4Eu);
            }
          }
        }
      }
    }

    else
    {
      VCImageResizingConverter_CreateResizedPixelBuffer_cold_4();
    }
  }

  else
  {
    VCImageResizingConverter_CreateResizedPixelBuffer_cold_5();
  }

  return pixelBufferOut;
}

CMSampleBufferRef _VCImageResizingConverter_CreateSampleBufferWithNewTiming(CMSampleBufferRef originalSBuf, uint64_t a2)
{
  sampleBufferOut[1] = *MEMORY[0x1E69E9840];
  sampleBufferOut[0] = 0;
  if (originalSBuf)
  {
    v2 = *(MEMORY[0x1E6960CF0] + 48);
    *&v7.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32);
    *&v7.decodeTimeStamp.value = v2;
    v3 = *(MEMORY[0x1E6960CF0] + 64);
    v4 = *(MEMORY[0x1E6960CF0] + 16);
    *&v7.duration.value = *MEMORY[0x1E6960CF0];
    *&v7.duration.epoch = v4;
    *&v7.presentationTimeStamp.value = *a2;
    v5 = *(a2 + 16);
    v7.decodeTimeStamp.epoch = v3;
    v7.presentationTimeStamp.epoch = v5;
    if (CMSampleBufferCreateCopyWithNewTiming(*MEMORY[0x1E695E480], originalSBuf, 1, &v7, sampleBufferOut))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCImageResizingConverter_CreateSampleBufferWithNewTiming_cold_1();
        }
      }
    }
  }

  else
  {
    _VCImageResizingConverter_CreateSampleBufferWithNewTiming_cold_2();
  }

  return sampleBufferOut[0];
}

CMSampleBufferRef VCImageResizingConverter_CreateResizedSampleBuffer(uint64_t a1, CMSampleBufferRef sbuf, CMTime *a3)
{
  v4 = sbuf;
  v32 = *MEMORY[0x1E69E9840];
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  if (CVPixelBufferGetPixelFormatType(ImageBuffer) != *(a1 + 16) || CVPixelBufferGetWidth(ImageBuffer) != *(a1 + 24) || CVPixelBufferGetHeight(ImageBuffer) != *(a1 + 32))
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __VCImageResizingConverter_CreateResizedSampleBuffer_block_invoke;
    v18[3] = &unk_1E85F6B10;
    v18[4] = a1;
    buf = *a3;
    return VCImageConverterBase_CreateConvertedSampleBuffer(a1, v4, &buf, v18);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    v9 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = FourccToCStr(*(a1 + 16));
        v11 = *(a1 + 24);
        v12 = *(a1 + 32);
        LODWORD(buf.value) = 136316930;
        *(&buf.value + 4) = v7;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "VCImageResizingConverter_CreateResizedSampleBuffer";
        HIWORD(buf.epoch) = 1024;
        v21 = 97;
        v22 = 2048;
        v23 = a1;
        v24 = 2048;
        v25 = ImageBuffer;
        v26 = 2080;
        v27 = v10;
        v28 = 2048;
        v29 = v11;
        v30 = 2048;
        v31 = v12;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipping resizing -- input/output sizes are the same; pointer=%p, pixelBuffer=%p, formatType=%s, width=%lu, height=%lu", &buf, 0x4Eu);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = FourccToCStr(*(a1 + 16));
      v16 = *(a1 + 24);
      v17 = *(a1 + 32);
      LODWORD(buf.value) = 136316930;
      *(&buf.value + 4) = v7;
      LOWORD(buf.flags) = 2080;
      *(&buf.flags + 2) = "VCImageResizingConverter_CreateResizedSampleBuffer";
      HIWORD(buf.epoch) = 1024;
      v21 = 97;
      v22 = 2048;
      v23 = a1;
      v24 = 2048;
      v25 = ImageBuffer;
      v26 = 2080;
      v27 = v15;
      v28 = 2048;
      v29 = v16;
      v30 = 2048;
      v31 = v17;
      _os_log_debug_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Skipping resizing -- input/output sizes are the same; pointer=%p, pixelBuffer=%p, formatType=%s, width=%lu, height=%lu", &buf, 0x4Eu);
    }
  }

  CMSampleBufferGetPresentationTimeStamp(&buf, v4);
  time1 = *a3;
  if (CMTimeCompare(&time1, &buf))
  {
    buf = *a3;
    return _VCImageResizingConverter_CreateSampleBufferWithNewTiming(v4, &buf);
  }

  if (v4)
  {
    CFRetain(v4);
  }

  return v4;
}

void *VCMicrophonePreferencesAVAS_BuiltInMicPortDescriptionFromSelectableInputsArray(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCMicrophonePreferencesAVAS_BuiltInMicPortDescriptionFromSelectableInputsArray_cold_1(v10);
      }
    }

    return 0;
  }

  v2 = *MEMORY[0x1E69581D0];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (!v3)
  {
LABEL_10:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v12 = 136316162;
        v13 = v8;
        v14 = 2080;
        v15 = "VCMicrophonePreferencesAVAS_BuiltInMicPortDescriptionFromSelectableInputsArray";
        v16 = 1024;
        v17 = 32;
        v18 = 2112;
        v19 = v2;
        v20 = 2112;
        v21 = a1;
        _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d desiredPortType=%@ was not found in selectableInputs=%@", &v12, 0x30u);
      }
    }

    return 0;
  }

  v4 = v3;
  v5 = *v24;
LABEL_4:
  v6 = 0;
  while (1)
  {
    if (*v24 != v5)
    {
      objc_enumerationMutation(a1);
    }

    v7 = *(*(&v23 + 1) + 8 * v6);
    if ([objc_msgSend(v7 "portType")])
    {
      return v7;
    }

    if (v4 == ++v6)
    {
      v4 = [a1 countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }
}

uint64_t VCMicrophonePreferencesAVAS_DataSourcesFromPortDescription(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 && a3)
    {
      v5 = [a1 dataSources];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v6)
      {
        v7 = v6;
        v20 = v4;
        v21 = v3;
        v8 = 0;
        v9 = 0;
        v10 = *v24;
        v11 = *MEMORY[0x1E6958180];
        v12 = *MEMORY[0x1E6958178];
LABEL_6:
        v13 = 0;
        while (1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          v15 = [v14 orientation];
          if ([v15 isEqualToString:v11])
          {
            v9 = v14;
          }

          else if ([v15 isEqualToString:v12])
          {
            v8 = v14;
          }

          if (v9 && v8 != 0)
          {
            break;
          }

          if (v7 == ++v13)
          {
            v7 = [v5 countByEnumeratingWithState:&v23 objects:v22 count:16];
            if (v7)
            {
              goto LABEL_6;
            }

            break;
          }
        }

        if (v9)
        {
          v17 = v8 == 0;
        }

        else
        {
          v17 = 1;
        }

        v3 = v21;
        if (!v17)
        {
          *v20 = v9;
          v18 = v8;
          result = 1;
LABEL_25:
          *v3 = v18;
          return result;
        }

        v4 = v20;
      }

      else
      {
        v9 = 0;
        v8 = 0;
      }

      VCMicrophonePreferencesAVAS_DataSourcesFromPortDescription_cold_1(v9, v8);
    }

    else
    {
      VCMicrophonePreferencesAVAS_DataSourcesFromPortDescription_cold_2(a2, a3);
    }
  }

  else
  {
    VCMicrophonePreferencesAVAS_DataSourcesFromPortDescription_cold_3();
  }

  if (v4)
  {
    *v4 = 0;
  }

  result = 0;
  if (v3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  return result;
}

id VCMicrophonePreferencesAVAS_InitSelectedInputDictWithPolarPattern(uint64_t a1, void *a2)
{
  v50[2] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v4 = [a2 supportedPolarPatterns];
    v5 = *MEMORY[0x1E6958198];
    v50[0] = *MEMORY[0x1E6958190];
    v50[1] = v5;
    v6 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v50, 2)}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v7 = [v4 countByEnumeratingWithState:&v46 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v47;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v46 + 1) + 8 * v10);
        if ([v6 containsObject:v11])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v4 countByEnumeratingWithState:&v46 objects:v36 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v14 = v11;
      if (!v14)
      {
        goto LABEL_16;
      }

      v15 = v14;
      v22[0] = @"port";
      v22[1] = @"dataSource";
      v23[0] = a1;
      v23[1] = a2;
      v22[2] = @"polarPattern";
      v23[2] = v14;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
    }

    else
    {
LABEL_11:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v25 = v12;
          v26 = 2080;
          v27 = "_VCMicrophonePreferencesAVAS_CopyOptimalMicPolarPatternFromDataSource";
          v28 = 1024;
          v29 = 94;
          v30 = 2112;
          v31 = v6;
          v32 = 2112;
          v33 = v4;
          v34 = 2112;
          v35 = a2;
          _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Did not find any desiredPolarPatterns=%@ in supportedPolarPatterns=%@ for dataSource=%@", buf, 0x3Au);
        }
      }

LABEL_16:
      v20[0] = @"port";
      v20[1] = @"dataSource";
      v21[0] = a1;
      v21[1] = a2;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v15 = 0;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *v36 = 136316162;
        v37 = v18;
        v38 = 2080;
        v39 = "VCMicrophonePreferencesAVAS_InitSelectedInputDictWithPolarPattern";
        v40 = 1024;
        v41 = 101;
        v42 = 2048;
        v43 = a1;
        v44 = 2048;
        v45 = a2;
        _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d inPort [%p] or inSource [%p] == nil", v36, 0x30u);
      }
    }

    v15 = 0;
    v16 = 0;
  }

  return v16;
}

uint64_t VCMicrophonePreferencesAVAS_ApplyMicrophonePreferences(void *a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    VCMicrophonePreferencesAVAS_ApplyMicrophonePreferences_cold_1(buf);
    return buf[0];
  }

  v4 = [a2 objectForKeyedSubscript:@"port"];
  v5 = [a2 objectForKeyedSubscript:@"dataSource"];
  v6 = [a2 objectForKeyedSubscript:@"polarPattern"];
  v27 = 0;
  v7 = v6 != 0;
  if (v6)
  {
    v8 = v6;
    v9 = [v5 setPreferredPolarPattern:v6 error:&v27];
    v10 = v27;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (!v9 || v10)
    {
      if (ErrorLogLevelForModule < 3)
      {
        return 0;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136317186;
      v29 = v20;
      v30 = 2080;
      v31 = "VCMicrophonePreferencesAVAS_ApplyMicrophonePreferences";
      v32 = 1024;
      v33 = 134;
      v34 = 2112;
      v35 = v8;
      v36 = 2048;
      v37 = v5;
      v38 = 2112;
      v39 = v5;
      v40 = 2048;
      v41 = a1;
      v42 = 2112;
      v43 = a1;
      v44 = 2112;
      v45 = v27;
      v22 = " [%s] %s:%d Failed to set selectedPolarPattern=%@ on selectedDataSource=%p [%@] for inAVAudioSession=%p [%@] with error=%@";
      v23 = v21;
      v24 = 88;
      goto LABEL_24;
    }

    if (ErrorLogLevelForModule >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v29 = v12;
        v30 = 2080;
        v31 = "VCMicrophonePreferencesAVAS_ApplyMicrophonePreferences";
        v32 = 1024;
        v33 = 135;
        v34 = 2112;
        v35 = v8;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d setPreferredPolarPattern=%@ completed successfully", buf, 0x26u);
      }
    }
  }

  if (!v5)
  {
    return v7;
  }

  v14 = [v4 setPreferredDataSource:v5 error:&v27];
  v15 = v27;
  v16 = VRTraceGetErrorLogLevelForModule();
  if (!v14 || v15)
  {
    if (v16 < 3)
    {
      return 0;
    }

    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136317442;
    v29 = v25;
    v30 = 2080;
    v31 = "VCMicrophonePreferencesAVAS_ApplyMicrophonePreferences";
    v32 = 1024;
    v33 = 139;
    v34 = 2048;
    v35 = v5;
    v36 = 2112;
    v37 = v5;
    v38 = 2048;
    v39 = v4;
    v40 = 2112;
    v41 = v4;
    v42 = 2048;
    v43 = a1;
    v44 = 2112;
    v45 = a1;
    v46 = 2112;
    v47 = v27;
    v22 = " [%s] %s:%d Failed to set selectedDataSource=%p [%@] on selectedPort=%p [%@] for inAVAudioSession=%p [%@] with error=%@";
    v23 = v26;
    v24 = 98;
LABEL_24:
    _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
    return 0;
  }

  if (v16 >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v29 = v17;
      v30 = 2080;
      v31 = "VCMicrophonePreferencesAVAS_ApplyMicrophonePreferences";
      v32 = 1024;
      v33 = 140;
      v34 = 2112;
      v35 = v5;
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d setPreferredDataSource=%@ completed with successfully", buf, 0x26u);
    }
  }

  return 1;
}

uint64_t VCHardwareSettingsEmbedded_AACELDPacketLossConcealmentAlgorithm()
{
  v0 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v0 audioPacketLossConcealmentAlgorithmAACELD];
}

uint64_t VCHardwareSettingsEmbedded_shouldEnableLowPowerMode()
{
  v0 = +[VCHardwareSettingsEmbedded sharedInstance];

  return [(VCHardwareSettingsEmbedded *)v0 shouldEnableLowPowerMode];
}

void __VCLoadAppleCVA_block_invoke()
{
  sVCAppleCVAFrameworkLibrary = dlopen("/System/Library/PrivateFrameworks/AppleCVA.framework/AppleCVA", 2);
  if (!sVCAppleCVAFrameworkLibrary && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __VCLoadAppleCVA_block_invoke_cold_1(v0, v1);
    }
  }
}

void __loadAppleCVAFaceTrackingSymbols_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  if (VCLoadAppleCVA_loadPredicate != -1)
  {
    __loadAppleCVAFaceTrackingSymbols_block_invoke_cold_1();
  }

  if (sVCAppleCVAFrameworkLibrary)
  {
    if (sVC_CVAFaceTracking_DetectedFacesArray)
    {
      goto LABEL_5;
    }

    v2 = dlsym(sVCAppleCVAFrameworkLibrary, "kCVAFaceTracking_DetectedFacesArray");
    if (!v2)
    {
      sVC_CVAFaceTracking_DetectedFacesArray = 0;
      return;
    }

    sVC_CVAFaceTracking_DetectedFacesArray = *v2;
    if (sVC_CVAFaceTracking_DetectedFacesArray)
    {
LABEL_5:
      loadAppleCVAFaceTrackingSymbols_loaded = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v0 = VRTraceErrorLogLevelToCSTR();
        v1 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v3 = 136315650;
          v4 = v0;
          v5 = 2080;
          v6 = "loadAppleCVAFaceTrackingSymbols_block_invoke";
          v7 = 1024;
          v8 = 62;
          _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Loaded AppleCVA FaceTracking symbols", &v3, 0x1Cu);
        }
      }
    }
  }
}

uint64_t VCGetCVAFaceTracking_DetectedFacesArray()
{
  if (loadAppleCVAFaceTrackingSymbols_onceToken != -1)
  {
    VCGetCVAFaceTracking_DetectedFacesArray_cold_1();
  }

  return sVC_CVAFaceTracking_DetectedFacesArray;
}

void __loadAppleCVAViewpointCorrectionSymbols_block_invoke()
{
  v26 = *MEMORY[0x1E69E9840];
  if (VCLoadAppleCVA_loadPredicate != -1)
  {
    __loadAppleCVAFaceTrackingSymbols_block_invoke_cold_1();
  }

  v0 = sVCAppleCVAFrameworkLibrary;
  if (sVCAppleCVAFrameworkLibrary)
  {
    if (!_MergedGlobals_14)
    {
      v1 = dlsym(sVCAppleCVAFrameworkLibrary, "kCVAViewpointCorrection_Image");
      if (v1)
      {
        v2 = *v1;
      }

      else
      {
        v2 = 0;
      }

      _MergedGlobals_14 = v2;
      v0 = sVCAppleCVAFrameworkLibrary;
    }

    if (!qword_1EDBDA948)
    {
      v3 = dlsym(v0, "kCVAViewpointCorrection_Intrinsics");
      if (v3)
      {
        v4 = *v3;
      }

      else
      {
        v4 = 0;
      }

      qword_1EDBDA948 = v4;
      v0 = sVCAppleCVAFrameworkLibrary;
    }

    if (!qword_1EDBDA950)
    {
      v5 = dlsym(v0, "kCVAViewpointCorrection_VirtualCameraExtrinsics");
      if (v5)
      {
        v6 = *v5;
      }

      else
      {
        v6 = 0;
      }

      qword_1EDBDA950 = v6;
      v0 = sVCAppleCVAFrameworkLibrary;
    }

    if (!qword_1EDBDA958)
    {
      v7 = dlsym(v0, "kCVAViewpointCorrection_StereographicFisheyeFactor");
      if (v7)
      {
        v8 = *v7;
      }

      else
      {
        v8 = 0;
      }

      qword_1EDBDA958 = v8;
      v0 = sVCAppleCVAFrameworkLibrary;
    }

    if (!qword_1EDBDA960)
    {
      v9 = dlsym(v0, "kCVAViewpointCorrection_Timestamp");
      if (v9)
      {
        v10 = *v9;
      }

      else
      {
        v10 = 0;
      }

      qword_1EDBDA960 = v10;
      v0 = sVCAppleCVAFrameworkLibrary;
    }

    if (!sVC_CVAViewpointCorrection_Callback)
    {
      v11 = dlsym(v0, "kCVAViewpointCorrection_Callback");
      if (v11)
      {
        v12 = *v11;
      }

      else
      {
        v12 = 0;
      }

      sVC_CVAViewpointCorrection_Callback = v12;
      v0 = sVCAppleCVAFrameworkLibrary;
    }

    if (!sVC_CVAViewpointCorrection_ModificationStatus)
    {
      v13 = dlsym(v0, "kCVAViewpointCorrection_ModificationStatus");
      if (v13)
      {
        v14 = *v13;
      }

      else
      {
        v14 = 0;
      }

      sVC_CVAViewpointCorrection_ModificationStatus = v14;
      v0 = sVCAppleCVAFrameworkLibrary;
    }

    if (!qword_1EDBDA968)
    {
      v15 = dlsym(v0, "kCVAViewpointCorrection_EnableCorrection");
      if (v15)
      {
        v16 = *v15;
      }

      else
      {
        v16 = 0;
      }

      qword_1EDBDA968 = v16;
      v0 = sVCAppleCVAFrameworkLibrary;
    }

    sVC_CVAViewpointCorrectionProcessFunc = dlsym(v0, "CVAViewpointCorrectionProcess");
    v17 = dlsym(sVCAppleCVAFrameworkLibrary, "CVAViewpointCorrectionCreate");
    sVC_CVAViewpointCorrectionCreateFunc = v17;
    if (_MergedGlobals_14)
    {
      if (qword_1EDBDA948)
      {
        if (qword_1EDBDA950)
        {
          if (qword_1EDBDA960)
          {
            if (sVC_CVAViewpointCorrection_Callback)
            {
              if (qword_1EDBDA968)
              {
                if (sVC_CVAViewpointCorrectionProcessFunc)
                {
                  if (v17)
                  {
                    loadAppleCVAViewpointCorrectionSymbols_loaded = 1;
                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v18 = VRTraceErrorLogLevelToCSTR();
                      v19 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        v20 = 136315650;
                        v21 = v18;
                        v22 = 2080;
                        v23 = "loadAppleCVAViewpointCorrectionSymbols_block_invoke";
                        v24 = 1024;
                        v25 = 97;
                        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Loaded AppleCVA Viewpoint Correction symbols", &v20, 0x1Cu);
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

uint64_t VCViewpointCorrection_CorrectViewpoint(uint64_t a1, opaqueCMSampleBuffer *a2, const __CFArray *a3, const void *a4, uint64_t a5)
{
  v19[1] = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v11 = Mutable;
    VCViewpointCorrection_PrepareProcessDictionary(a2, a3, a4, Mutable);
    v12 = dispatch_semaphore_create(0);
    value[0] = MEMORY[0x1E69E9820];
    value[1] = 3221225472;
    value[2] = __VCViewpointCorrection_CorrectViewpoint_block_invoke;
    value[3] = &unk_1E85F8488;
    value[4] = v12;
    value[5] = a5;
    CFDictionarySetValue(v11, sVC_CVAViewpointCorrection_Callback, value);
    v13 = sVC_CVAViewpointCorrectionProcessFunc(*(a1 + 8), v11);
    if (v13)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCViewpointCorrection_CorrectViewpoint_cold_1(v14, v13, v15);
        }
      }
    }

    else
    {
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    }

    CFRelease(v11);
  }

  else
  {
    VCViewpointCorrection_CorrectViewpoint_cold_2(&v18, v19);
    v13 = v18;
    v12 = v19[0];
  }

  dispatch_release(v12);
  return v13;
}

void OUTLINED_FUNCTION_2_23(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint8_t buf)
{

  _os_log_error_impl(a1, v27, OS_LOG_TYPE_ERROR, a4, &buf, 0x1Cu);
}

CFNumberRef OUTLINED_FUNCTION_4_29(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t valuePtr)
{
  *&valuePtr = a9;

  return CFNumberCreate(v15, kCFNumberCGFloatType, &valuePtr);
}

uint64_t OUTLINED_FUNCTION_5_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, uint64_t a28)
{
  *v28 = a27;
  *(v29 - 144) = a28;
  return v29 - 160;
}

void OUTLINED_FUNCTION_7_22(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 + 14) = a1;
  *(v3 - 138) = 1024;
  *(v3 - 136) = 295;
  *(v3 - 132) = 2048;
  *(v2 + 30) = a2;
}

void OUTLINED_FUNCTION_10_15(double a1, float a2)
{
  *(v4 - 160) = a2;
  *(v3 + 4) = v2;
  *(v4 - 148) = 2080;
}

__n128 OUTLINED_FUNCTION_12_10@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

CFArrayRef OUTLINED_FUNCTION_14_16(uint64_t a1, const void **a2, uint64_t a3, const CFArrayCallBacks *a4)
{

  return CFArrayCreate(v4, a2, 3, a4);
}

uint64_t VCSecurityKeyHolder_CopyKeyManager(uint64_t a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {

    JUMPOUT(0x1E1289F20);
  }

  VCSecurityKeyHolder_CopyKeyManager_cold_1(v2);
  return v2[0];
}

uint64_t VCSecurityKeyHolder_ParticipantID(uint64_t a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 48);
  }

  VCSecurityKeyHolder_ParticipantID_cold_1(v2);
  return v2[0];
}

uint64_t VCSecurityKeyHolder_SecurityKeyMode(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 57);
  }

  else
  {
    VCSecurityKeyHolder_SecurityKeyMode_cold_1(&v3);
    return v3;
  }
}

uint64_t _VCSecurityKeyHolderClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t VCSecurityKeyHolder_Create(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, unsigned int a6, uint64_t *a7)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a7)
  {
    VCSecurityKeyHolder_Create_cold_6();
    return v18;
  }

  if (!a2)
  {
    VCSecurityKeyHolder_Create_cold_5();
    return v18;
  }

  if ((a3 - 4) <= 0xFFFFFFFC)
  {
    VCSecurityKeyHolder_Create_cold_4(a3, &v18);
    return v18;
  }

  v8 = a6;
  if (a6 >= 3)
  {
    VCSecurityKeyHolder_Create_cold_3();
    return v18;
  }

  if (_MergedGlobals_15 != -1)
  {
    VCSecurityKeyHolder_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VCSecurityKeyHolder_Create_cold_2();
    return v18;
  }

  v13 = Instance;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 40) = 0;
  *(Instance + 16) = a3;
  FigCFWeakReferenceStore();
  *(v13 + 48) = a4;
  *(v13 + 56) = a5;
  *(v13 + 57) = v8;
  *a7 = v13;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v17 = *a7;
    v18 = 136315906;
    v19 = v14;
    v20 = 2080;
    v21 = "VCSecurityKeyHolder_Create";
    v22 = 1024;
    v23 = 170;
    v24 = 2048;
    v25 = v17;
    _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d keyHolder instance '%p' created", &v18, 0x26u);
  }

  return 0;
}

uint64_t VCSecurityKeyHolder_CopyKeyMaterialForKeyIndex(uint64_t a1, const char *a2, uint64_t *a3)
{
  if (!a1)
  {
    VCSecurityKeyHolder_CopyKeyMaterialForKeyIndex_cold_3();
    return v11;
  }

  if (!a3)
  {
    VCSecurityKeyHolder_CopyKeyMaterialForKeyIndex_cold_2();
    return v11;
  }

  v6 = MEMORY[0x1E1289F20](a1 + 24);
  if (!v6)
  {
    VCSecurityKeyHolder_CopyKeyMaterialForKeyIndex_cold_1();
    return v11;
  }

  v7 = v6;
  if (a2)
  {
    if (*(a1 + 56) == 1)
    {
      v8 = *(a1 + 48);
    }

    else
    {
      v8 = 0;
    }

    v9 = VCSecurityKeyManager_CopyMKMWithPrefixForParticipant(v6, a2, v8);
  }

  else
  {
    v9 = VCSecurityKeyManager_CopyLatestSendKeyMaterial(v6, *(a1 + 57));
  }

  *a3 = v9;
  CFRelease(v7);
  return 0;
}

uint64_t VCSecurityKeyHolder_RegisterForKeyMaterialChangeNotification(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    VCSecurityKeyHolder_RegisterForKeyMaterialChangeNotification_cold_2();
    return v11;
  }

  v4 = MEMORY[0x1E1289F20](a1 + 24);
  if (!v4)
  {
    VCSecurityKeyHolder_RegisterForKeyMaterialChangeNotification_cold_1();
    return v11;
  }

  v5 = v4;
  os_unfair_lock_lock((a1 + 40));
  v6 = *(a1 + 32);
  if (!v6)
  {
    if (a2)
    {
      *(a1 + 32) = _Block_copy(a2);
      v7 = *(a1 + 16);
      if ((v7 | 2) == 3)
      {
        LocalCenter = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterAddObserver(LocalCenter, a1, _VCSecurityKeyHolder_KeyMaterialCallback, @"VCSecurityKeyManagerNotification_SendKeyMaterialChanged", v5, CFNotificationSuspensionBehaviorDeliverImmediately);
        v7 = *(a1 + 16);
      }

      if ((v7 & 0xFFFFFFFE) == 2)
      {
        v9 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterAddObserver(v9, a1, _VCSecurityKeyHolder_KeyMaterialCallback, @"VCSecurityKeyManagerNotification_ReceiveKeyMaterialChanged", v5, CFNotificationSuspensionBehaviorDeliverImmediately);
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  _Block_release(v6);
  *(a1 + 32) = 0;
  if (!a2)
  {
LABEL_11:
    _VCSecurityKeyHolder_UnregisterKeyMaterialNotification(a1);
    goto LABEL_12;
  }

  *(a1 + 32) = _Block_copy(a2);
LABEL_12:
  os_unfair_lock_unlock((a1 + 40));
  CFRelease(v5);
  return 0;
}

void _VCSecurityKeyHolder_KeyMaterialCallback(uint64_t a1, uint64_t a2, const __CFString *a3, const void *a4, const void *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136316162;
      v18 = v9;
      v19 = 2080;
      v20 = "_VCSecurityKeyHolder_KeyMaterialCallback";
      v21 = 1024;
      v22 = 95;
      v23 = 2048;
      v24 = a2;
      v25 = 2112;
      v26 = a5;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received Uplink notification for keyHolder instance '%p' with key material '%@'", &v17, 0x30u);
    }
  }

  v11 = VCSecurityKeyHolder_CopyKeyManager(a2);
  if (v11 == a4)
  {
    if (CFStringCompare(a3, @"VCSecurityKeyManagerNotification_SendKeyMaterialChanged", 0) && CFStringCompare(a3, @"VCSecurityKeyManagerNotification_ReceiveKeyMaterialChanged", 0))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCSecurityKeyHolder_KeyMaterialCallback_cold_1(v14, a3, v15);
        }
      }
    }

    else
    {
      os_unfair_lock_lock((a2 + 40));
      v16 = *(a2 + 32);
      if (v16)
      {
        (*(v16 + 16))(v16, a5);
      }

      os_unfair_lock_unlock((a2 + 40));
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v17 = 136316162;
      v18 = v12;
      v19 = 2080;
      v20 = "_VCSecurityKeyHolder_KeyMaterialCallback";
      v21 = 1024;
      v22 = 112;
      v23 = 2048;
      v24 = v11;
      v25 = 2048;
      v26 = a4;
      _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Notification from wrong VCSecurityKeyManager instance received: Expected instance '%llu' but got '%llu'", &v17, 0x30u);
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

void _VCSecurityKeyHolder_UnregisterKeyMaterialNotification(uint64_t a1)
{
  v2 = VCSecurityKeyHolder_CopyKeyManager(a1);
  v3 = *(a1 + 16);
  if ((v3 | 2) == 3)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, a1, @"VCSecurityKeyManagerNotification_SendKeyMaterialChanged", v2);
    v3 = *(a1 + 16);
  }

  if ((v3 & 0xFFFFFFFE) == 2)
  {
    v5 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(v5, a1, @"VCSecurityKeyManagerNotification_ReceiveKeyMaterialChanged", v2);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    _Block_release(v6);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t VCSecurityKeyHolder_AssociateKeyIndex(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    VCSecurityKeyHolder_AssociateKeyIndex_cold_2();
    return v3;
  }

  if (!a2)
  {
    VCSecurityKeyHolder_AssociateKeyIndex_cold_1();
    return v3;
  }

  VCSecurityKeyManager_AssociateKeyIndex(*(a1 + 24), a2, *(a1 + 48));
  return 0;
}

void _VCSecurityKeyHolder_Finalize(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  _VCSecurityKeyHolder_UnregisterKeyMaterialNotification(a1);
  FigCFWeakReferenceStore();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      v7 = "_VCSecurityKeyHolder_Finalize";
      v8 = 1024;
      v9 = 42;
      v10 = 2048;
      v11 = a1;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d keyHolder instance '%p' finalized", &v4, 0x26u);
    }
  }
}

void OUTLINED_FUNCTION_14_17(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

uint64_t _VCFECGeneratorGroupBased_PerformTryEncode()
{
  v90[2] = *MEMORY[0x1E69E9840];
  v0 = micro();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    _VCFECGeneratorGroupBased_PerformTryEncode_cold_10();
    return *buf;
  }

  v2 = DerivedStorage;
  NumberEntries = VCSingleLinkedGetNumberEntries(DerivedStorage + 8);
  *(v2 + 12331768) = 0;
  if (NumberEntries)
  {
    v4 = v2 + 8320;
    v5 = (v2 + 124);
    v6 = (v2 + 4220);
    v67 = (v2 + 32896);
    v62 = (v2 + 12329088);
    v61 = vdupq_n_s64(v2 + 41088);
    v60 = vdupq_n_s64(2uLL);
    v68 = v2 + 4220;
    while (1)
    {
      CurrentGroupSize = VCFECGeneratorCommon_GetCurrentGroupSize(NumberEntries);
      if (CurrentGroupSize)
      {
        break;
      }

LABEL_8:
      v64 = VCSingleLinkedGetNumberEntries(v2 + 8);
      v65 = VCSingleLinkedGetNumberEntries(v2 + 12331736);
      v71 = 0;
      v70 = 0;
      v9 = VCSingleLinkedListPop((v2 + 12331736));
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = v2 + 24704;
        do
        {
          v13 = v11;
          v14 = v10[2];
          *(v4 + 8 * v11) = v14;
          *&v5[2 * v11] = CMBlockBufferGetDataLength(v14);
          CMBlockBufferGetDataPointer(*(v4 + 8 * v11), 0, 0, 0, (v2 + 24704 + 8 * v11));
          VCMemoryPool_Free(*v2, v10);
          ++v11;
          v10 = VCSingleLinkedListPop((v2 + 12331736));
        }

        while (v10);
        v15 = v13 == 0;
        v6 = (v2 + 4220);
      }

      else
      {
        v15 = 0;
        v12 = v2 + 24704;
      }

      *v6 = 0u;
      *(v6 + 1) = 0u;
      v16 = -64;
      v17 = xmmword_1DBD45330;
      do
      {
        v18.i64[0] = 12000 * v17.i64[0];
        v18.i64[1] = 12000 * v17.i64[1];
        *(v2 + v16 + 32960) = vaddq_s64(v61, v18);
        v17 = vaddq_s64(v17, v60);
        v16 += 16;
      }

      while (v16);
      if (v15)
      {
        if ((VCFECGeneratorCommon_Encode_PrepareOutputSinglePacketFrame(v2) & 0x80000000) != 0)
        {
          _VCFECGeneratorGroupBased_PerformTryEncode_cold_8();
LABEL_75:
          v52 = *buf;
          goto LABEL_62;
        }
      }

      else
      {
        *&v69 = 1.0;
        ParityPacketsCount = VCFECGeneratorCommon_GetParityPacketsCount(v2, v65, &v69, 7);
        v20 = ParityPacketsCount;
        if (ParityPacketsCount > v65)
        {
          _VCFECGeneratorGroupBased_PerformTryEncode_cold_7(ParityPacketsCount, v65, buf);
          goto LABEL_75;
        }

        if (ParityPacketsCount >= 1 && (RSU_Encode(v12, v5, v65, v67, v6, &v71 + 1, &v71, &v70, v62, 1) & 0x80000000) != 0)
        {
          _VCFECGeneratorGroupBased_PerformTryEncode_cold_6();
          goto LABEL_75;
        }

        v21 = v70;
        v22 = v71;
        v23 = *&v69;
        v88 = -22013;
        v89 = 0;
        v90[1] = 0;
        v90[0] = 0;
        if (v20 >= 1)
        {
          v24 = *(v2 + 88);
          LOBYTE(v88) = v24 & 3;
          if (v24 <= 1)
          {
            v25 = *(v2 + 12331768);
            *(v2 + 12331768) = v25 + 1;
            LODWORD(v89) = v22 & 7 | ((v64 == 0) << 15) | ((v21 & 0xF) << 16) | ((v25 & 0x7F) << 8);
            if (v24 == 1)
            {
              if (*(v2 + 89))
              {
                v26 = ((v23 * v20) * 100.0) / v65;
              }

              else
              {
                v26 = *(v2 + 84);
              }

              HIDWORD(v89) = v26 & 0x3FF;
            }
          }
        }

        if (v65 >= 1)
        {
          v27 = 0;
          v28 = 0;
          while (1)
          {
            VCFECHeader_SetIsParityPacket(&v88, 0);
            VCFECHeader_SetStartPosition(&v88, (v21 + v27 * v22) & 0xF);
            v29 = *v2;
            v30 = *(v4 + 8 * v28);
            v31 = *(v2 + 76);
            *(v2 + 76) = v31 + 1;
            if (VCFECPacketList_AllocateAndPush(v29, v30, v31, v2 + 40, &v88))
            {
              break;
            }

            _VCFECGeneratorCommon_UpdateOutputMediaPackets(v2, v2 + 40, 1, 1);
            v27 = ++v28;
            if (v28 >= v65)
            {
              goto LABEL_32;
            }
          }

          _VCFECGeneratorGroupBased_PerformTryEncode_cold_3();
LABEL_59:
          v52 = 2150825985;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v53 = VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              _VCFECGeneratorGroupBased_PerformTryEncode_cold_5(v53);
            }
          }

LABEL_62:
          VCFECGeneratorCommon_Encode_CleanBlockBuffers(v2);
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v54 = VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              _VCFECGeneratorGroupBased_PerformTryEncode_cold_9(v54);
            }
          }

          return v52;
        }

LABEL_32:
        v6 = (v2 + 4220);
        if (v20 >= 1)
        {
          v32 = 0;
          v33 = 0;
          if (v65 >= 8)
          {
            v34 = 8;
          }

          else
          {
            v34 = v65;
          }

          v63 = v34;
          v35 = v23;
          v66 = v20;
          while (1)
          {
            v36 = v33;
            if (v6[v33] >= 1)
            {
              VCFECHeader_SetIsParityPacket(&v88, 1);
              VCFECHeader_SetStartPosition(&v88, (v32 * v22) & 0xF);
              v37 = *(v2 + 88);
              if ((v37 - 2) < 2)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v42 = VRTraceErrorLogLevelToCSTR();
                  v43 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    v44 = *(v2 + 88);
                    *buf = 136315906;
                    v73 = v42;
                    v74 = 2080;
                    v75 = "_VCFECGeneratorGroupBased_FillHeaderVersionSpecific";
                    v76 = 1024;
                    v77 = 130;
                    v78 = 1024;
                    v79 = v44;
                    _os_log_error_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid FEC Header Version=%d", buf, 0x22u);
                  }
                }
              }

              else if (v37 == 1)
              {
                HIWORD(v89) = v62[v36];
                v45 = *(v2 + 80);
                *(v2 + 80) = v45 + 1;
                LOWORD(v90[0]) = v45;
              }

              else if (!*(v2 + 88))
              {
                HIWORD(v89) = v65;
                WORD2(v89) = WORD2(v89) & 0xF800 | *(v68 + 4 * v36) & 0x7FF;
                if (v63)
                {
                  v38 = (v2 + 8320);
                  v39 = v90;
                  v40 = v63;
                  do
                  {
                    v41 = *v38++;
                    *v39++ = CMBlockBufferGetDataLength(v41);
                    --v40;
                  }

                  while (v40);
                }
              }

              v6 = (v2 + 4220);
              blockBufferOut = (v2 + 16512 + 8 * v36);
              v47 = CMBlockBufferCreateWithMemoryBlock(*(v2 + 104), 0, 0x5DCuLL, *(v2 + 96), 0, 0, *(v68 + 4 * v36), 1u, blockBufferOut);
              if (v47)
              {
                v56 = v47;
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v57 = VRTraceErrorLogLevelToCSTR();
                  v58 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    v59 = *(v68 + 4 * v36);
                    *buf = 136316930;
                    v73 = v57;
                    v74 = 2080;
                    v75 = "_VCFECGeneratorGroupBased_Encode_PrepareOutput";
                    v76 = 1024;
                    v77 = 179;
                    v78 = 1024;
                    v79 = v56;
                    v80 = 1024;
                    v81 = v32;
                    v82 = 1024;
                    v83 = v59;
                    v84 = 1024;
                    v85 = v65;
                    v86 = 1024;
                    v87 = v66;
                    _os_log_error_impl(&dword_1DB56E000, v58, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failure allocating output buffer status=%d parityPacketSize[%d]=%d inputPacketCount=%d parityPacketsCount=%d", buf, 0x3Au);
                  }
                }

                goto LABEL_59;
              }

              CMBlockBufferReplaceDataBytes(v67[v36], *blockBufferOut, 0, *(v68 + 4 * v36));
              v20 = v66;
              if (v35 >= 1)
              {
                break;
              }
            }

LABEL_54:
            v33 = v36 + 1;
            v32 = (v36 + 1);
            if (v20 <= v32)
            {
              goto LABEL_55;
            }
          }

          v48 = 0;
          while (1)
          {
            v49 = *v2;
            v50 = *blockBufferOut;
            v51 = *(v2 + 76);
            *(v2 + 76) = v51 + 1;
            if (VCFECPacketList_AllocateAndPush(v49, v50, v51, v2 + 40, &v88))
            {
              break;
            }

            _VCFECGeneratorCommon_UpdateOutputMediaPackets(v2, v2 + 40, 0, 1);
            if (v35 <= ++v48)
            {
              goto LABEL_54;
            }
          }

          _VCFECGeneratorGroupBased_PerformTryEncode_cold_4();
          goto LABEL_59;
        }

LABEL_55:
        v5 = (v2 + 124);
      }

      VCFECGeneratorCommon_Encode_CleanBlockBuffers(v2);
      NumberEntries = v64;
      if (!v64)
      {
        goto LABEL_57;
      }
    }

    while (1)
    {
      v8 = VCSingleLinkedListPop((v2 + 8));
      if (!v8)
      {
        _VCFECGeneratorGroupBased_PerformTryEncode_cold_2();
        return *buf;
      }

      if ((VCSingleLinkedListPush(v2 + 12331736, v8) & 1) == 0)
      {
        break;
      }

      if (!--CurrentGroupSize)
      {
        goto LABEL_8;
      }
    }

    _VCFECGeneratorGroupBased_PerformTryEncode_cold_1();
    return *buf;
  }

LABEL_57:
  VCFECGeneratorCommon_UpdateProcessingAverageTime(v2, v0);
  return 0;
}

uint64_t _VCFECGeneratorGroupBased_FlushPackets()
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
    _VCFECGeneratorGroupBased_FlushPackets_cold_1();
    return v4;
  }
}

uint64_t _VCFECGeneratorGroupBased_PassThrough()
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
    _VCFECGeneratorGroupBased_PassThrough_cold_1();
    return v4;
  }
}

uint64_t VCFECGeneratorGroupBased_Create(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, const void *a5, const void *a6, const void *a7)
{
  v21 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (a2)
  {
    if (a3 >= 2)
    {
      VCFECGeneratorGroupBased_Create_cold_4(a3, &v20);
    }

    else
    {
      ClassID = VCFECGeneratorGetClassID();
      if ((VCFBOUtils_ObjectCreate(a1, &cf, &kVCFECGeneratorGroupBasedVTable, ClassID, 51) & 0x80000000) != 0)
      {
        VCFECGeneratorGroupBased_Create_cold_3();
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v16 = VCFECGeneratorCommon_Init(cf, DerivedStorage, a3, a4, a5, a6, a7);
        v17 = v16;
        if ((v16 & 0x80000000) != 0)
        {
          VCFECGeneratorGroupBased_Create_cold_2(v16, &v20);
        }

        else
        {
          if (VCSingleLinkedListInitialize(DerivedStorage + 12331736, VCFECPacketList_CompareEntries))
          {
            *a2 = cf;
            return v17;
          }

          VCFECGeneratorGroupBased_Create_cold_1();
        }
      }
    }
  }

  else if (VCFECGeneratorGroupBased_Create_cold_5(&v20))
  {
    return 2150825985;
  }

  v17 = v20;
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

void _VCFECGeneratorGroupBased_Finalize(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "_VCFECGeneratorGroupBased_Finalize";
      v9 = 1024;
      v10 = 83;
      v11 = 2048;
      v12 = a1;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", &v5, 0x26u);
    }
  }

  VCFECGeneratorCommon_Finalize(DerivedStorage);
}

uint64_t _VCDTMFToneGenerator_GenerateNextSample(_DWORD *a1)
{
  v1 = a1[4];
  v2 = a1[2];
  v3 = a1[6];
  v4 = ((v3 * a1[1] + 0x2000) >> 14) - a1[5];
  v5 = (((v1 * *a1 + 0x2000) >> 14) - a1[3]);
  a1[3] = v1;
  a1[4] = v5;
  a1[5] = v3;
  a1[6] = v4;
  return ((((23171 * v5 + ((v4 << 16) >> 1) + 0x4000) >> 15) * v2 + 0x2000) >> 14);
}

_DWORD *VCDTMFToneGenerator_Create()
{
  result = malloc_type_malloc(0x1CuLL, 0x100004027586B93uLL);
  if (result)
  {
    result[2] = -1;
  }

  return result;
}

void VCDTMFToneGenerator_Destroy(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    *a1 = 0;
  }
}

uint64_t VCDTMFToneGenerator_Reinit(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    v10 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316674;
        v16 = v8;
        v17 = 2080;
        v18 = "VCDTMFToneGenerator_Reinit";
        v19 = 1024;
        v20 = 199;
        v21 = 2048;
        v22 = a1;
        v23 = 1024;
        v24 = a2;
        v25 = 1024;
        v26 = a3;
        v27 = 1024;
        v28 = a4;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCDTMFToneGenerator[%p] Initialize event=%d, powerLevel=%d, sampleRate=%d", &v15, 0x38u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136316674;
      v16 = v8;
      v17 = 2080;
      v18 = "VCDTMFToneGenerator_Reinit";
      v19 = 1024;
      v20 = 199;
      v21 = 2048;
      v22 = a1;
      v23 = 1024;
      v24 = a2;
      v25 = 1024;
      v26 = a3;
      v27 = 1024;
      v28 = a4;
      _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCDTMFToneGenerator[%p] Initialize event=%d, powerLevel=%d, sampleRate=%d", &v15, 0x38u);
    }
  }

  if (a2 >= 0x10)
  {
    VCDTMFToneGenerator_Reinit_cold_3(a2, &v15);
    return v15;
  }

  if (a3 >= 0x40)
  {
    VCDTMFToneGenerator_Reinit_cold_2(a3, &v15);
    return v15;
  }

  if (a4 <= 23999)
  {
    if (a4 == 8000)
    {
      v11 = 0;
      goto LABEL_20;
    }

    if (a4 == 16000)
    {
      v11 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    switch(a4)
    {
      case 24000:
        v11 = 2;
        goto LABEL_20;
      case 32000:
        v11 = 3;
        goto LABEL_20;
      case 48000:
        v11 = 4;
LABEL_20:
        v12 = 0;
        *a1 = VCDTMFToneGeneratorCoefficient1[16 * v11 + a2];
        *(a1 + 4) = VCDTMFToneGeneratorCoefficient2[16 * v11 + a2];
        *(a1 + 8) = VCDTMFToneGenerator_Amplitude[a3];
        *(a1 + 12) = VCDTMFToneGeneratorInitValue1[16 * v11 + a2];
        *(a1 + 20) = VCDTMFToneGeneratorInitValue2[16 * v11 + a2];
        return v12;
    }
  }

  v12 = 2147811332;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCDTMFToneGenerator_Reinit_cold_1(v14);
    }
  }

  return v12;
}

uint64_t VCDTMFToneGenerator_GenerateSamples(_DWORD *a1, int a2, _WORD *a3)
{
  LODWORD(v4) = a2;
  v22 = *MEMORY[0x1E69E9840];
  v6 = a1[2];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v6 == -1)
  {
    VCDTMFToneGenerator_GenerateSamples_cold_1(ErrorLogLevelForModule, a1, &v12);
    return v12;
  }

  else
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      v10 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136316162;
          v13 = v8;
          v14 = 2080;
          v15 = "VCDTMFToneGenerator_GenerateSamples";
          v16 = 1024;
          v17 = 224;
          v18 = 2048;
          v19 = a1;
          v20 = 1024;
          v21 = v4;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCDTMFToneGenerator[%p] Generate DTMF tone samples, sampleCount=%d", &v12, 0x2Cu);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = 136316162;
        v13 = v8;
        v14 = 2080;
        v15 = "VCDTMFToneGenerator_GenerateSamples";
        v16 = 1024;
        v17 = 224;
        v18 = 2048;
        v19 = a1;
        v20 = 1024;
        v21 = v4;
        _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCDTMFToneGenerator[%p] Generate DTMF tone samples, sampleCount=%d", &v12, 0x2Cu);
      }
    }

    if (v4 >= 1)
    {
      v4 = v4;
      do
      {
        *a3++ = _VCDTMFToneGenerator_GenerateNextSample(a1);
        --v4;
      }

      while (v4);
    }

    return 0;
  }
}

CFTypeRef _VCConnectionManagerIDS_CopyConnection(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  pthread_rwlock_rdlock((a1 + 104));
  v6 = VCConnectionManager_CopyPrimaryConnection(a1);
  if (!v6)
  {
    pthread_rwlock_unlock((a1 + 104));
    return 0;
  }

  v7 = v6;
  v8 = micro();
  if (VCConnection_MatchesSourceDestinationInfo(v7, a2))
  {
    *a3 = 1;
    v9 = CFRetain(v7);
    VCConnection_SourceDestinationInfo(v7, a2);
    v10 = *(a1 + 3576);
    if (v10 != 0.0 && v8 - v10 > 5.0)
    {
      v12 = 0;
      *(a1 + 3576) = 0;
LABEL_20:
      v18 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    v13 = *(a1 + 336);
    if (v13 && (Count = CFArrayGetCount(*(a1 + 336)), Count >= 1))
    {
      v15 = Count;
      v16 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
        if (VCConnection_MatchesSourceDestinationInfo(ValueAtIndex, a2))
        {
          break;
        }

        if (v15 == ++v16)
        {
          goto LABEL_13;
        }
      }

      *a3 = 0;
      if (ValueAtIndex)
      {
        v9 = CFRetain(ValueAtIndex);
      }

      else
      {
        v9 = 0;
      }

      VCConnection_SourceDestinationInfo(ValueAtIndex, a2);
      *(a1 + 3576) = v8;
      if (v8 - *(a1 + 3584) > 1.0)
      {
        v12 = VCConnection_IsRemoteOnWiFiOrWired(ValueAtIndex) ^ 1;
        *(a1 + 3584) = v8;
        goto LABEL_20;
      }
    }

    else
    {
LABEL_13:
      v9 = 0;
    }
  }

  v18 = 0;
  v12 = 170;
LABEL_21:
  CFRelease(v7);
  pthread_rwlock_unlock((a1 + 104));
  if (v18 && (*(a1 + 710) & 1) == 0)
  {
    _VCConnectionManagerIDS_SetPreferredRemoteInterfaceForDuplication(a1, v12);
  }

  return v9;
}

void _VCConnectionManagerIDS_UpdateConnectionForDuplication(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = VCConnectionSelector_CopyConnectionForDuplication(*(a1 + 640));
  v3 = VCDuplicationHandler_DuplicationReason(*(a1 + 632));
  VCConnectionSelector_UpdateConnectionForDuplication(*(a1 + 640), v3, *(a1 + 749), *(a1 + 498), *(a1 + 499), *(a1 + 336));
  v4 = VCConnectionSelector_CopyConnectionForDuplication(*(a1 + 640));
  if ((VCConnection_Equal(v2, v4) & 1) == 0)
  {
    v5 = VCConnection_CopyDescription(v4);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v18 = v6;
        v19 = 2080;
        v20 = "_VCConnectionManagerIDS_UpdateConnectionForDuplication";
        v21 = 1024;
        v22 = 758;
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: selected connection %@ for duplication", buf, 0x26u);
      }
    }

    if (v5)
    {
      CFRelease(v5);
    }

    IsDuplicationEnabled = VCDuplicationHandler_IsDuplicationEnabled(*(a1 + 632));
    VCConnectionManager_SetOverlayLinkDetails(a1, v4, 1, IsDuplicationEnabled);
    if (v4)
    {
      v9 = !IsDuplicationEnabled;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      IsLocalOnCellular = VCConnection_IsLocalOnCellular(v4);
      VCConnectionManager_UseCellPrimaryInterface(a1, IsLocalOnCellular);
      v11 = VCConnectionManager_CopySuggestedLinkTypeCombo(a1);
      v12 = VCDuplicationHandler_DuplicationReason(*(a1 + 632));
      v13 = *(a1 + 448);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = ___VCConnectionManagerIDS_UpdateConnectionForDuplication_block_invoke;
      v14[3] = &unk_1E85F6C20;
      v15 = 1;
      v14[4] = a1;
      v14[5] = v4;
      v16 = v12;
      v14[6] = v11;
      dispatch_async(v13, v14);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void _VCConnectionManagerIDS_SynchronizeParticipantGenerationCounter(uint64_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 448);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___VCConnectionManagerIDS_SynchronizeParticipantGenerationCounter_block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = a1;
  v4 = a2;
  dispatch_async(v2, block);
}

void _VCConnectionManagerIDS_IsSourceOnCellularIPv6(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *a4 = 0;
  if (*a2 == 4)
  {
    v4 = *(a1 + 336);
    if (v4)
    {
      Count = CFArrayGetCount(*(a1 + 336));
      if (Count >= 1)
      {
        v9 = Count;
        v10 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v10);
          if (VCConnectionIDS_LinkID(ValueAtIndex) == *(a2 + 12))
          {
            break;
          }

          if (v9 == ++v10)
          {
            return;
          }
        }

        if (VCConnection_IsLocalOnCellular(ValueAtIndex))
        {
          *a3 = 1;
        }

        if (VCConnection_IsIPv6(ValueAtIndex))
        {
          *a4 = 1;
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = v12;
        v16 = 2080;
        v17 = "_VCConnectionManagerIDS_IsSourceOnCellularIPv6";
        v18 = 1024;
        v19 = 1004;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil _connectionArray", &v14, 0x1Cu);
      }
    }
  }
}

uint64_t _VCConnectionManagerIDS_UpdatePacketAndByteCount(uint64_t a1, unsigned int a2, int a3, int a4, int a5, int a6)
{
  v12 = VCConnectionManager_CopyPrimaryConnection(a1);
  v13 = VCConnectionIDS_NetworkOverheadInBytes(v12, a4, a5);
  if (v12)
  {
    CFRelease(v12);
  }

  v14 = v13 + a3;
  pthread_rwlock_wrlock((a1 + 104));
  v15 = &OBJC_IVAR___VCConnectionManagerIDS__receivedPacketCount;
  if (a6)
  {
    v15 = &OBJC_IVAR___VCConnectionManagerIDS__sentPacketCount;
  }

  v16 = &OBJC_IVAR___VCConnectionManagerIDS__receivedByteCount;
  if (a6)
  {
    v16 = &OBJC_IVAR___VCConnectionManagerIDS__sentByteCount;
  }

  ++*(a1 + *v15 + 4 * a2);
  *(a1 + *v16 + 4 * a2) = v14 + *(a1 + *v16 + 4 * a2) - 20;

  return pthread_rwlock_unlock((a1 + 104));
}

uint64_t _VCConnectionManagerIDS_UpdatePersistentPacketCounts(uint64_t a1, unsigned int a2, uint64_t a3)
{
  pthread_rwlock_wrlock((a1 + 104));
  if (a3)
  {
    ++*(a1 + 864 + 4 * a2);
    v6 = &OBJC_IVAR___VCConnectionManager__isFirstPacketSentCount;
  }

  else
  {
    ++*(a1 + 1888 + 4 * a2);
    v6 = &OBJC_IVAR___VCConnectionManager__isFirstPacketReceivedCount;
  }

  v7 = *v6;
  if ((*(a1 + v7) & 1) == 0)
  {
    [*(a1 + 2928) startPeriodicUpdateHistory:a3 withCopyPacketCountCallback:*(a1 + 2920)];
    v7 = *v6;
  }

  *(a1 + v7) = 1;

  return pthread_rwlock_unlock((a1 + 104));
}

uint64_t _VCConnectionManagerIDS_AddLinkProbingTelemetry_0(id *a1, void *a2)
{
  result = [objc_msgSend(a1[80] "linkPreferenceOrder")];
  if (result)
  {
    result = VCConnection_Equal([a1 connectionForDuplication], objc_msgSend(a1[80], "connectionForDuplicationNonProbingVersion"));
    if ((result & 1) == 0)
    {
      v5 = [a1[97] getProbingResultsForLinkID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", VCConnection_ConnectionID(objc_msgSend(a1, "connectionForDuplication")))}];
      v6 = [a1[97] getProbingResultsForLinkID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", VCConnection_ConnectionID(objc_msgSend(a1[80], "connectionForDuplicationNonProbingVersion")))}];
      if (v5)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        v8 = 0;
        v9 = 0.0;
      }

      else
      {
        v10 = v6;
        [objc_msgSend(v5 "expMovMeanRTT")];
        v9 = 0.0;
        if (v11 != 0.0)
        {
          [objc_msgSend(v10 "expMovMeanRTT")];
          if (v12 != 0.0)
          {
            [objc_msgSend(v10 "expMovMeanRTT")];
            v14 = v13;
            [objc_msgSend(v5 "expMovMeanRTT")];
            v9 = v14 - v15;
          }
        }

        v16 = [objc_msgSend(v10 "plrTier")];
        v8 = v16 - [objc_msgSend(v5 "plrTier")];
      }

      [a2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v9), @"lnkPrbRTTMeanDelta"}];
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v8];

      return [a2 setObject:v17 forKeyedSubscript:@"lnkPrbPLRTierDelta"];
    }
  }

  return result;
}

uint64_t _VCConnectionManagerIDS_SetPreferredRemoteInterfaceForDuplication(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_rwlock_wrlock((a1 + 104));
  if (*(a1 + 499) == a2)
  {

    return pthread_rwlock_unlock((a1 + 104));
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = "Cellular";
        v9 = v5;
        v8 = 136315906;
        v11 = "_VCConnectionManagerIDS_SetPreferredRemoteInterfaceForDuplication";
        v10 = 2080;
        if (!a2)
        {
          v7 = "WiFi";
        }

        v12 = 1024;
        v13 = 614;
        v14 = 2080;
        v15 = v7;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: updated preferred remote interface for duplication to %s", &v8, 0x26u);
      }
    }

    *(a1 + 499) = a2;
    VCConnectionManager_UpdateConnectionForDuplication(a1);
    return pthread_rwlock_unlock((a1 + 104));
  }
}

uint64_t _VCAudioFrameDelayClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t VCAudioFrameDelay_Create(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    VCAudioFrameDelay_Create_cold_7();
    return *v23;
  }

  if (!a3)
  {
    VCAudioFrameDelay_Create_cold_6();
    return *v23;
  }

  if (_MergedGlobals_16 != -1)
  {
    VCAudioFrameDelay_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VCAudioFrameDelay_Create_cold_5();
    return *v23;
  }

  v7 = Instance;
  *(Instance + 96) = 0;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  v8 = *(a2 + 6);
  if (v8)
  {
    v8 = CFRetain(v8);
  }

  *(v7 + 16) = v8;
  v9 = *a2;
  v10 = a2[1];
  *(v7 + 56) = a2[2];
  *(v7 + 40) = v10;
  *(v7 + 24) = v9;
  *(v7 + 72) = *(a2 + 8);
  *(v7 + 88) = *(a2 + 14);
  v11 = MEMORY[0x1E1288880](a1);
  *(v7 + 80) = v11;
  if (!v11)
  {
    VCAudioFrameDelay_Create_cold_4(v7, v23);
    v21 = *v23;
LABEL_23:
    CFRelease(v7);
    return v21;
  }

  v12 = *(a2 + 14);
  if (v12)
  {
    while (1)
    {
      *v23 = 0;
      DelayFrame = _VCAudioFrameDelay_AllocateDelayFrame(v7, v23);
      if ((DelayFrame & 0x80000000) != 0)
      {
        break;
      }

      _VCAudioFrameDelay_InsertDelayFrame(v7, *v23, *(v7 + 96));
      if (!--v12)
      {
        goto LABEL_12;
      }
    }

    v21 = DelayFrame;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioFrameDelay_Create_cold_2();
      }
    }

    _VCAudioFrameDelay_CleanupDelayFrames(v7);
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioFrameDelay_Create_cold_3();
      }
    }

    goto LABEL_23;
  }

LABEL_12:
  *a3 = v7;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v7 + 92);
      LODWORD(v16) = *(v7 + 64);
      v18 = v17 * v16;
      v19 = *a3;
      *v23 = 136316418;
      v20 = *(v7 + 24);
      *&v23[4] = v14;
      v24 = 2080;
      v25 = "VCAudioFrameDelay_Create";
      v26 = 1024;
      v27 = 300;
      v28 = 2048;
      v29 = v19;
      v30 = 1024;
      v31 = v17;
      v32 = 2048;
      v33 = v18 / v20;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] VCAudioFrameDelay created. frameDelay=%d timeDelay=%f", v23, 0x36u);
    }
  }

  return 0;
}

uint64_t VCAudioFrameDelay_PullAudioSamples(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (result && a2 && a3)
  {
    v7 = result;
    v8 = *(result + 88);
    v9 = *(result + 92);
    if (v8 != v9)
    {
      if (v8 <= v9)
      {
        if (v8 < v9)
        {
          v12 = *(result + 96);
          if (v12)
          {
            *buf = *(result + 96);
            v13 = v12;
            do
            {
              v14 = *v13;
              if (*(v13 + 25))
              {
                _VCAudioFrameDelay_RemoveDelayFrame(v7, v13);
                _VCAudioFrameDelay_DeallocateDelayFrame(v7, buf);
                v15 = *(v7 + 92);
                *buf = v14;
                if (!v15)
                {
                  break;
                }

                v12 = *(v7 + 96);
              }

              else
              {
                *buf = *v13;
              }

              v13 = v14;
            }

            while (v14 != v12);
          }

          else
          {
            VCAudioFrameDelay_PullAudioSamples_cold_1();
          }
        }
      }

      else
      {
        v10 = *(result + 96);
        if (v10)
        {
          v11 = *(result + 96);
          do
          {
            if (*(v11 + 25))
            {
              goto LABEL_21;
            }

            v11 = *v11;
          }

          while (v11 != v10);
        }

        else
        {
          v11 = 0;
LABEL_21:
          while (1)
          {
            v28 = 0;
            if ((_VCAudioFrameDelay_AllocateDelayFrame(v7, &v28) & 0x80000000) != 0)
            {
              break;
            }

            v16 = v11;
            if (!v11)
            {
              v16 = *(v7 + 96);
            }

            _VCAudioFrameDelay_InsertDelayFrame(v7, v28, v16);
            if (*(v7 + 92) >= *(v7 + 88))
            {
              goto LABEL_25;
            }
          }

          VCAudioFrameDelay_PullAudioSamples_cold_2();
        }
      }

LABEL_25:
      v8 = *(v7 + 92);
      if (*(v7 + 88) == v8)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          v19 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = *(v7 + 92);
              *buf = 136316162;
              *&buf[4] = v17;
              v30 = 2080;
              v31 = "_VCAudioFrameDelay_PerformAdaptation";
              v32 = 1024;
              v33 = 264;
              v34 = 2048;
              v35 = v7;
              v36 = 1024;
              v37 = v20;
              _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Successfully adapted to frame delay=%u", buf, 0x2Cu);
            }
          }

          else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v27 = *(v7 + 92);
            *buf = 136316162;
            *&buf[4] = v17;
            v30 = 2080;
            v31 = "_VCAudioFrameDelay_PerformAdaptation";
            v32 = 1024;
            v33 = 264;
            v34 = 2048;
            v35 = v7;
            v36 = 1024;
            v37 = v27;
            _os_log_debug_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] Successfully adapted to frame delay=%u", buf, 0x2Cu);
          }
        }

        v8 = *(v7 + 92);
      }
    }

    if (v8)
    {
      v21 = *(v7 + 96);
      *(v7 + 96) = *v21;
      VCAudioBufferList_ReplaceSamples(a2, *(v21 + 16), 0);
      if (*(v21 + 24) == 1)
      {
        Priority = VCAudioBufferList_GetPriority(*(v21 + 16));
        VCAudioBufferList_SetPriority(a2, Priority);
        v23 = *(v21 + 32);
      }

      else
      {
        VCAudioBufferList_SetPriority(a2, 0);
        v23 = 0;
      }

      *a3 = v23;
      v24 = *(v21 + 32);
      *(v21 + 32) = *(v7 + 80);
      *(v7 + 80) = v24;
      HostTime = VCAudioBufferList_GetHostTime(a2);
      Timestamp = VCAudioBufferList_GetTimestamp(a2);
      VCAudioBufferList_SetTime(*(v21 + 16), Timestamp, HostTime);
      result = (*(a4 + 16))(a4, *(v21 + 16), *(v21 + 32), v21 + 25);
      *(v21 + 24) = 1;
    }

    else
    {
      buf[0] = 0;
      result = (*(a4 + 16))(a4, a2, *(v7 + 80), buf);
      *a3 = *(v7 + 80);
    }
  }

  return result;
}

uint64_t VCAudioFrameDelay_UpdateDelay(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 88) = a2;
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return 0;
    }

    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v6 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v8 = 136316162;
        v9 = v4;
        v10 = 2080;
        v11 = "VCAudioFrameDelay_UpdateDelay";
        v12 = 1024;
        v13 = 348;
        v14 = 2048;
        v15 = a1;
        v16 = 1024;
        v17 = a2;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Setting audio frame delay=%d", &v8, 0x2Cu);
        return 0;
      }
    }

    else
    {
      result = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v8 = 136316162;
        v9 = v4;
        v10 = 2080;
        v11 = "VCAudioFrameDelay_UpdateDelay";
        v12 = 1024;
        v13 = 348;
        v14 = 2048;
        v15 = a1;
        v16 = 1024;
        v17 = a2;
        _os_log_debug_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] Setting audio frame delay=%d", &v8, 0x2Cu);
        return 0;
      }
    }
  }

  else
  {
    VCAudioFrameDelay_UpdateDelay_cold_1();
    return v8;
  }

  return result;
}

double _VCAudioFrameDelayInit(uint64_t a1)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void _VCAudioFrameDelayFinalize(uint64_t a1)
{
  _VCAudioFrameDelay_CleanupDelayFrames(a1);
  v2 = CFGetAllocator(a1);
  CFAllocatorDeallocate(v2, *(a1 + 80));
  *(a1 + 80) = 0;
}

__CFString *_VCAudioFrameDelayCopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"[%p]", a1);
  v4 = a1[2];
  if (v4)
  {
    CFStringAppend(Mutable, v4);
  }

  return Mutable;
}

void _VCAudioFrameDelay_CleanupDelayFrames(void *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  for (i = a1[12]; i; i = a1[12])
  {
    v3[0] = i;
    _VCAudioFrameDelay_RemoveDelayFrame(a1, i);
    _VCAudioFrameDelay_DeallocateDelayFrame(a1, v3);
  }
}

void _VCAudioFrameDelay_RemoveDelayFrame(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *(a1 + 96);
    if (v2)
    {
      v3 = *(a1 + 96);
      while (v3 != a2)
      {
        v3 = *v3;
        if (v3 == v2)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              _VCAudioFrameDelay_RemoveDelayFrame_cold_1();
            }
          }

          return;
        }
      }

      if (v2 == a2)
      {
        v4 = *v2;
        if (v4 == a2)
        {
          v4 = 0;
        }

        *(a1 + 96) = v4;
      }

      v5 = *a2;
      v6 = a2[1];
      *v6 = *a2;
      *(v5 + 8) = v6;
      *a2 = a2;
      a2[1] = a2;
      --*(a1 + 92);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCAudioFrameDelay_RemoveDelayFrame_cold_2();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCAudioFrameDelay_RemoveDelayFrame_cold_3();
    }
  }
}

void _VCAudioFrameDelay_DeallocateDelayFrame(const void *a1, uint64_t **a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *a2 = 0;
      v3 = CFGetAllocator(a1);
      v4 = v3;
      v5 = v2[4];
      if (v5)
      {
        CFAllocatorDeallocate(v3, v5);
        v2[4] = 0;
      }

      VCAudioBufferList_Destroy(v2 + 2);

      CFAllocatorDeallocate(v4, v2);
    }
  }
}

uint64_t _VCAudioFrameDelay_AllocateDelayFrame(uint64_t a1, uint64_t *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = CFGetAllocator(a1);
  v5 = MEMORY[0x1E1288880](v4, 40, 0x10A004096DB73B8, 0);
  v10[0] = v5;
  if (!v5)
  {
    _VCAudioFrameDelay_AllocateDelayFrame_cold_3();
LABEL_9:
    _VCAudioFrameDelay_DeallocateDelayFrame(a1, v10);
    return 2152464386;
  }

  v6 = v5;
  *(v5 + 16) = 0;
  v7 = (v5 + 16);
  *v5 = v5;
  *(v5 + 8) = v5;
  *(v5 + 24) = 256;
  v8 = MEMORY[0x1E1288880](v4, *(a1 + 72), 2441221436, 0);
  *(v6 + 32) = v8;
  if (!v8)
  {
    _VCAudioFrameDelay_AllocateDelayFrame_cold_2();
    goto LABEL_9;
  }

  if (!VCAudioBufferList_AllocateFrame(a1 + 24, v7))
  {
    _VCAudioFrameDelay_AllocateDelayFrame_cold_1();
    goto LABEL_9;
  }

  VCAudioBufferList_SetSampleCount(*(v6 + 16), *(a1 + 64));
  result = 0;
  *a2 = v6;
  return result;
}

void _VCAudioFrameDelay_InsertDelayFrame(uint64_t a1, void *a2, uint64_t *a3)
{
  if (a2)
  {
    v3 = *(a1 + 96);
    if (v3)
    {
      v4 = *(a1 + 96);
      while (v4 != a2)
      {
        v4 = *v4;
        if (v4 == v3)
        {
          v5 = *a3;
          *(v5 + 8) = a2;
          *a2 = v5;
          *a3 = a2;
          a2[1] = a3;
          goto LABEL_11;
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCAudioFrameDelay_InsertDelayFrame_cold_1();
        }
      }
    }

    else
    {
      *(a1 + 96) = a2;
LABEL_11:
      ++*(a1 + 92);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCAudioFrameDelay_InsertDelayFrame_cold_2();
    }
  }
}

void sub_1DB940B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VCMediaStreamSendGroup_UpdateSendSampleRTPTimestamp(uint64_t result, int a2, double a3, double a4)
{
  if (*(result + 500) == 1)
  {
    v8 = result;
    pthread_rwlock_wrlock((result + 504));
    *(v8 + 704) = a2;
    *(v8 + 712) = a4;
    *(v8 + 728) = a3;
    *(v8 + 720) = 1;

    return pthread_rwlock_unlock((v8 + 504));
  }

  return result;
}

uint64_t VCMediaStreamSendGroup_ModulateTimestampWithSourceTimestamp(uint64_t a1, double a2, double a3)
{
  pthread_rwlock_wrlock((a1 + 504));
  v7 = *(a1 + 728);
  v8 = *(a1 + 712);
  LODWORD(v3) = *(a1 + 704);
  pthread_rwlock_unlock((a1 + 504));
  return ((v3 * a2 / v7) + (a3 - v8) * a2);
}

uint64_t VCSignalErrorAt(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  vasprintf(v17, a2, &a9);
  v10 = v17[0];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v10)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCSignalErrorAt_cold_1(v12, v17, v13);
      }
    }

    free(v17[0]);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCSignalErrorAt_cold_2(v14, v15);
    }
  }

  return a1;
}

int32x2_t **VCAudioIssueDetector_Create(unsigned int a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if (a1 >= 2)
  {
    VCAudioIssueDetector_Create_cold_3();
  }

  else
  {
    v2 = malloc_type_calloc(1uLL, 0x238uLL, 0x10200400ED4710AuLL);
    v9 = v2;
    if (v2)
    {
      v3 = v2;
      v4 = VCAudioIssueDetectorUtil_Create(a1 == 1);
      v3[70] = v4;
      if (v4)
      {
        *v3 = a1;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v5 = VRTraceErrorLogLevelToCSTR();
          v6 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v11 = v5;
            v12 = 2080;
            v13 = "VCAudioIssueDetector_Create";
            v14 = 1024;
            v15 = 40;
            v16 = 2048;
            v17 = v3;
            v18 = 1024;
            v19 = a1;
            _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioIssueDetector=%p of type=%d created", buf, 0x2Cu);
          }
        }

        return v3;
      }

      VCAudioIssueDetector_Create_cold_1();
    }

    else
    {
      VCAudioIssueDetector_Create_cold_2();
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioIssueDetector_Create_cold_4(v8);
    }
  }

  VCAudioIssueDetector_Finalize(&v9);
  return v9;
}

void VCAudioIssueDetector_Finalize(int32x2_t ***a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (v2[70])
      {
        VCAudioIssueDetectorUtil_Finalize(v2 + 70);
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v5 = 136315906;
          v6 = v3;
          v7 = 2080;
          v8 = "VCAudioIssueDetector_Finalize";
          v9 = 1024;
          v10 = 57;
          v11 = 2048;
          v12 = v2;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioIssueDetector=%p finalized", &v5, 0x26u);
        }
      }

      free(v2);
      *a1 = 0;
    }

    else
    {
      VCAudioIssueDetector_Finalize_cold_1();
    }
  }

  else
  {
    VCAudioIssueDetector_Finalize_cold_2();
  }
}

void VCAudioIssueDetector_Configure(uint64_t a1, unsigned __int16 *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      v7 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315906;
          v9 = v5;
          v10 = 2080;
          v11 = "VCAudioIssueDetector_Configure";
          v12 = 1024;
          v13 = 66;
          v14 = 2048;
          v15 = a1;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioIssueDetector=%p configured", &v8, 0x26u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        VCAudioIssueDetector_Configure_cold_1();
      }
    }

    VCAudioIssueDetectorUtil_Configure(*(a1 + 560), a2);
  }

  else
  {
    VCAudioIssueDetector_Configure_cold_2();
  }
}

void VCAudioIssueDetector_UpdateConnectionType(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      v7 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315906;
          v9 = v5;
          v10 = 2080;
          v11 = "VCAudioIssueDetector_UpdateConnectionType";
          v12 = 1024;
          v13 = 74;
          v14 = 2048;
          v15 = a1;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioIssueDetector=%p link type updated", &v8, 0x26u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        VCAudioIssueDetector_UpdateConnectionType_cold_1();
      }
    }

    VCAudioIssueDetectorUtil_UpdateRATType(*(a1 + 560), a2);
  }

  else
  {
    VCAudioIssueDetector_UpdateConnectionType_cold_2();
  }
}

void VCAudioIssueDetector_ProcessCellularNetworkNotification(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      v7 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315906;
          v9 = v5;
          v10 = 2080;
          v11 = "VCAudioIssueDetector_ProcessCellularNetworkNotification";
          v12 = 1024;
          v13 = 82;
          v14 = 2048;
          v15 = a1;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioIssueDetector=%p NW notification received", &v8, 0x26u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        VCAudioIssueDetector_ProcessCellularNetworkNotification_cold_1();
      }
    }

    VCAudioIssueDetectorUtil_ProcessCellularNetworkNotification(*(a1 + 560), a2);
  }

  else
  {
    VCAudioIssueDetector_ProcessCellularNetworkNotification_cold_2();
  }
}

void VCAudioIssueDetector_Start(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      v5 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = 136315906;
          v7 = v3;
          v8 = 2080;
          v9 = "VCAudioIssueDetector_Start";
          v10 = 1024;
          v11 = 90;
          v12 = 2048;
          v13 = a1;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioIssueDetector=%p started", &v6, 0x26u);
        }
      }

      else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        VCAudioIssueDetector_Start_cold_1();
      }
    }

    VCAudioIssueDetectorUtil_Start(*(a1 + 560));
  }

  else
  {
    VCAudioIssueDetector_Start_cold_2();
  }
}

void VCAudioIssueDetector_Stop(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      v5 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = 136315906;
          v7 = v3;
          v8 = 2080;
          v9 = "VCAudioIssueDetector_Stop";
          v10 = 1024;
          v11 = 98;
          v12 = 2048;
          v13 = a1;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioIssueDetector=%p stopped", &v6, 0x26u);
        }
      }

      else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        VCAudioIssueDetector_Stop_cold_1();
      }
    }

    VCAudioIssueDetectorUtil_Stop(*(a1 + 560));
  }

  else
  {
    VCAudioIssueDetector_Stop_cold_2();
  }
}

void VCAudioIssueDetector_ProcessFrame(uint64_t a1, unsigned __int16 *a2)
{
  if (a1 && a2)
  {
    v3 = *(a1 + 560);

    VCAudioIssueDetectorUtil_ProcessFrame(v3, a2);
  }

  else
  {
    VCAudioIssueDetector_ProcessFrame_cold_1();
  }
}

void VCAudioIssueDetector_ReportRTPTraffic(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 556) = 1;
    v2 = *(a1 + 560);

    VCAudioIssueDetectorUtil_RtpPacketIndication(v2);
  }

  else
  {
    VCAudioIssueDetector_ReportRTPTraffic_cold_1();
  }
}

void VCAudioIssueDetector_ReportRTCPTraffic(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 557) = 1;
  }

  else
  {
    VCAudioIssueDetector_ReportRTCPTraffic_cold_1();
  }
}

void VCAudioIssueDetector_GetReportingStats(int *a1, _BYTE *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if ((a1[139] & 1) == 0)
    {
      *a2 = 1;
      VCAudioIssueDetectorUtil_RtpPacketTimeoutIndication(*(a1 + 70));
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v6 = *a1;
          v10 = 136316162;
          v11 = v4;
          v12 = 2080;
          v13 = "VCAudioIssueDetector_GetReportingStats";
          v14 = 1024;
          v15 = 147;
          v16 = 2048;
          v17 = a1;
          v18 = 1024;
          v19 = v6;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Rtp inactivity detected in audio issue detector=%p, direction=%d", &v10, 0x2Cu);
        }
      }
    }

    *(a1 + 556) = 0;
    if ((*(a1 + 557) & 1) == 0)
    {
      a2[1] = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = *a1;
          v10 = 136316162;
          v11 = v7;
          v12 = 2080;
          v13 = "VCAudioIssueDetector_GetReportingStats";
          v14 = 1024;
          v15 = 152;
          v16 = 2048;
          v17 = a1;
          v18 = 1024;
          v19 = v9;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Rtcp inactivity detected in audio issue detector=%p, direction=%d", &v10, 0x2Cu);
        }
      }
    }

    *(a1 + 557) = 0;
  }

  else
  {
    VCAudioIssueDetector_GetReportingStats_cold_1();
  }
}

void VCAudioIssueDetector_FlushLogEvents(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 560);

    VCAudioIssueDetectorUtil_FlushLogEvents(v2);
  }

  else
  {
    VCAudioIssueDetector_FlushLogEvents_cold_1();
  }
}

void OUTLINED_FUNCTION_10_17(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

uint64_t VCMediaNegotiationBlobV2CameraSettingsU1ReadFrom(_WORD *a1, void *a2)
{
  v87[2] = *MEMORY[0x1E69E9840];
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
        LOBYTE(v87[0]) = 0;
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

        v7 |= (v87[0] & 0x7F) << v5;
        if ((v87[0] & 0x80) == 0)
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
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          a1[36] |= 0x1000u;
          while (1)
          {
            LOBYTE(v87[0]) = 0;
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

            v14 |= (v87[0] & 0x7F) << v12;
            if ((v87[0] & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_184:
              v84 = 32;
              goto LABEL_205;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v14;
          }

          goto LABEL_184;
        case 2u:
          v58 = objc_alloc_init(VCMediaNegotiationBlobV2VideoPayload);
          [a1 addPayloads:v58];

          v87[0] = 0xAAAAAAAAAAAAAAAALL;
          v87[1] = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobV2VideoPayloadReadFrom(v58, a2);
          if (!result)
          {
            return result;
          }

          PBReaderRecallMark();
          goto LABEL_206;
        case 3u:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          a1[36] |= 0x10u;
          while (1)
          {
            LOBYTE(v87[0]) = 0;
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

            v45 |= (v87[0] & 0x7F) << v43;
            if ((v87[0] & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v10 = v44++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_172;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v45;
          }

LABEL_172:
          v84 = 12;
          goto LABEL_205;
        case 4u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          a1[36] |= 0x20u;
          while (1)
          {
            LOBYTE(v87[0]) = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v87[0] & 0x7F) << v48;
            if ((v87[0] & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v10 = v49++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_176;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v50;
          }

LABEL_176:
          v84 = 14;
          goto LABEL_205;
        case 5u:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          a1[36] |= 0x400u;
          while (1)
          {
            LOBYTE(v87[0]) = 0;
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

            v30 |= (v87[0] & 0x7F) << v28;
            if ((v87[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v10 = v29++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_160;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v30;
          }

LABEL_160:
          v84 = 28;
          goto LABEL_205;
        case 6u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          a1[36] |= 0x800u;
          while (1)
          {
            LOBYTE(v87[0]) = 0;
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

            v61 |= (v87[0] & 0x7F) << v59;
            if ((v87[0] & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v10 = v60++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_188;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v61;
          }

LABEL_188:
          v84 = 30;
          goto LABEL_205;
        case 7u:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          a1[36] |= 0x40u;
          while (1)
          {
            LOBYTE(v87[0]) = 0;
            v72 = [a2 position] + 1;
            if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v71 |= (v87[0] & 0x7F) << v69;
            if ((v87[0] & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v10 = v70++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_196;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v71;
          }

LABEL_196:
          v84 = 16;
          goto LABEL_205;
        case 8u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          a1[36] |= 0x80u;
          while (1)
          {
            LOBYTE(v87[0]) = 0;
            v56 = [a2 position] + 1;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v55 |= (v87[0] & 0x7F) << v53;
            if ((v87[0] & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v10 = v54++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_180;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v55;
          }

LABEL_180:
          v84 = 18;
          goto LABEL_205;
        case 9u:
          v79 = 0;
          v80 = 0;
          v81 = 0;
          a1[36] |= 2u;
          while (1)
          {
            LOBYTE(v87[0]) = 0;
            v82 = [a2 position] + 1;
            if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v81 |= (v87[0] & 0x7F) << v79;
            if ((v87[0] & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v10 = v80++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_204;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v81;
          }

LABEL_204:
          v84 = 6;
          goto LABEL_205;
        case 0xAu:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          a1[36] |= 0x100u;
          while (1)
          {
            LOBYTE(v87[0]) = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v87[0] & 0x7F) << v38;
            if ((v87[0] & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v10 = v39++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_168;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v40;
          }

LABEL_168:
          v84 = 20;
          goto LABEL_205;
        case 0xBu:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          a1[36] |= 0x200u;
          while (1)
          {
            LOBYTE(v87[0]) = 0;
            v77 = [a2 position] + 1;
            if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v76 |= (v87[0] & 0x7F) << v74;
            if ((v87[0] & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v10 = v75++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_200;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v76;
          }

LABEL_200:
          v84 = 22;
          goto LABEL_205;
        case 0xCu:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          a1[36] |= 8u;
          while (1)
          {
            LOBYTE(v87[0]) = 0;
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

            v25 |= (v87[0] & 0x7F) << v23;
            if ((v87[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v10 = v24++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_156;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v25;
          }

LABEL_156:
          v84 = 10;
          goto LABEL_205;
        case 0xDu:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          a1[36] |= 1u;
          while (1)
          {
            LOBYTE(v87[0]) = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v87[0] & 0x7F) << v33;
            if ((v87[0] & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v10 = v34++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_164;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v35;
          }

LABEL_164:
          v84 = 4;
          goto LABEL_205;
        case 0xEu:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          a1[36] |= 4u;
          while (1)
          {
            LOBYTE(v87[0]) = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v87[0] & 0x7F) << v64;
            if ((v87[0] & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v10 = v65++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_192;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v66;
          }

LABEL_192:
          v84 = 8;
          goto LABEL_205;
        case 0xFu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          a1[36] |= 0x2000u;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_206;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v87[0]) = 0;
        v21 = [a2 position] + 1;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v20 |= (v87[0] & 0x7F) << v18;
        if ((v87[0] & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        v10 = v19++ >= 9;
        if (v10)
        {
          v17 = 0;
          goto LABEL_152;
        }
      }

      v17 = [a2 hasError] ? 0 : v20;
LABEL_152:
      v84 = 34;
LABEL_205:
      *&a1[v84] = v17;
LABEL_206:
      v85 = [a2 position];
    }

    while (v85 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t OUTLINED_FUNCTION_7_23@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *&a1[a2];

  return [a1 stateStringForState:v3];
}

uint64_t VCMediaNegotiationBlobVideoPayloadSettingsReadFrom(id *a1, void *a2)
{
  v29[2] = *MEMORY[0x1E69E9840];
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
        LOBYTE(v29[0]) = 0;
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

        v7 |= (v29[0] & 0x7F) << v5;
        if ((v29[0] & 0x80) == 0)
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
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          String = PBReaderReadString();

          a1[1] = String;
          goto LABEL_55;
        }

        if (v12 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v29[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v29[0] & 0x7F) << v15;
            if ((v29[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v10 = v16++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_49;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v17;
          }

LABEL_49:
          v27 = 16;
          goto LABEL_54;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            LOBYTE(v29[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v29[0] & 0x7F) << v21;
            if ((v29[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v10 = v22++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_53;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_53:
          v27 = 20;
LABEL_54:
          *(a1 + v27) = v20;
          goto LABEL_55;
        }

        if (v12 == 2)
        {
          v13 = objc_alloc_init(VCMediaNegotiationBlobVideoRuleCollection);
          [a1 addVideoRuleCollections:v13];

          v29[0] = 0xAAAAAAAAAAAAAAAALL;
          v29[1] = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobVideoRuleCollectionReadFrom(v13, a2);
          if (!result)
          {
            return result;
          }

          PBReaderRecallMark();
          goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DB947E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VCFECGeneratorGetClassID()
{
  if (VCFECGeneratorGetClassID_onceToken != -1)
  {
    VCFECGeneratorGetClassID_cold_1();
  }

  return VCFECGeneratorGetClassID_classID;
}

uint64_t __VCFECGeneratorGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&VCFECGeneratorGetClassID_descriptor, ClassID, 1, &VCFECGeneratorGetClassID_classID);
}

uint64_t _VCFECGeneratorCommon_UpdateOutputMediaPackets(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (result + 40 == a2)
  {
    if (!a3)
    {
      a4 = 0;
    }

    *(result + 92) += a4;
  }

  return result;
}

uint64_t VCFECGeneratorCommon_Init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, const void *a6, const void *a7)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    VCFECGeneratorCommon_Init_cold_6();
    return v17;
  }

  if (a3 >= 3)
  {
    VCFECGeneratorCommon_Init_cold_5(a3, &v17);
    return v17;
  }

  *(a2 + 88) = a3;
  if (a4 >= 3)
  {
    VCFECGeneratorCommon_Init_cold_4(a4, &v17);
    return v17;
  }

  *(a2 + 89) = a4;
  Typed = VCMemoryPool_CreateTyped(0x38uLL, 0x1020040966F1B03);
  *a2 = Typed;
  if (!Typed)
  {
    VCFECGeneratorCommon_Init_cold_3();
    return v17;
  }

  if ((VCSingleLinkedListInitialize(a2 + 8, VCFECPacketList_CompareEntries) & 1) == 0)
  {
    VCFECGeneratorCommon_Init_cold_1();
    return v17;
  }

  if ((VCSingleLinkedListInitialize(a2 + 40, VCFECPacketList_CompareEntries) & 1) == 0)
  {
    VCFECGeneratorCommon_Init_cold_2();
    return v17;
  }

  v12 = *(a2 + 104);
  *(a2 + 104) = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a2 + 96);
  *(a2 + 96) = a6;
  if (a6)
  {
    CFRetain(a6);
  }

  v14 = a2 + 12328960;
  if (v13)
  {
    CFRelease(v13);
  }

  *(a2 + 84) = -1;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  pthread_mutex_init((a2 + 12331656), 0);
  v15 = *(a2 + 12331720);
  *(v14 + 2760) = a7;
  if (a7)
  {
    CFRetain(a7);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (a7)
  {
    *(v14 + 2768) = VCReporting_GetDynamicReportingModuleID();
    reportingRegisterPeriodicTaskWeak();
  }

  return 0;
}

void VCFECGeneratorCommon_Finalize(uint64_t a1)
{
  VCFECGeneratorCommon_FlushPackets(a1);
  VCMemoryPool_Destroy(*a1);
  pthread_mutex_destroy((a1 + 12331656));
  v2 = *(a1 + 96);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 96) = 0;
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 104) = 0;
  }

  if (*(a1 + 12331720))
  {
    reportingUnregisterPeriodicTask();
  }

  else
  {
    VCFECGeneratorCommon_Finalize_cold_1();
  }

  v4 = *(a1 + 12331720);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 12331720) = 0;
  }
}

void VCFECGeneratorCommon_FlushPackets(uint64_t a1)
{
  if (a1)
  {
    VCFECPacketList_Flush(*a1, (a1 + 8));
    VCFECPacketList_Flush(*a1, (a1 + 40));
    *(a1 + 92) = 0;
  }

  else
  {
    VCFECGeneratorCommon_FlushPackets_cold_1();
  }
}

uint64_t VCFECGeneratorCommon_PushPacket(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    VCFECGeneratorCommon_PushPacket_cold_3();
    return v8;
  }

  if (!a2)
  {
    VCFECGeneratorCommon_PushPacket_cold_2();
    return v8;
  }

  v4 = VCMemoryPool_Alloc(*a1);
  if (!v4)
  {
    VCFECGeneratorCommon_PushPacket_cold_1();
    return v8;
  }

  v5 = v4;
  v6 = *(a1 + 72);
  *(a1 + 72) = v6 + 1;
  *(v4 + 2) = v6;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  *(v4 + 3) = 0;
  *(v4 + 24) = 0;
  CFRetain(a2);
  *(v5 + 2) = a2;
  VCSingleLinkedListPush(a1 + 8, v5);
  return 0;
}

uint64_t VCFECGeneratorCommon_PopPacket(uint64_t a1, void *a2, _OWORD *a3)
{
  if (!a1)
  {
    VCFECGeneratorCommon_PopPacket_cold_3();
    return v10;
  }

  if (!a2)
  {
    VCFECGeneratorCommon_PopPacket_cold_2();
    return v10;
  }

  *a2 = 0;
  v6 = VCSingleLinkedListPop((a1 + 40));
  if (!v6)
  {
    VCFECGeneratorCommon_PopPacket_cold_1();
    return v10;
  }

  v7 = v6;
  *a2 = v6[2];
  if (a3)
  {
    v8 = *(v6 + 3);
    *(a3 + 10) = *(v6 + 34);
    *a3 = v8;
  }

  *(a1 + 92) -= !VCFECHeader_GetIsParityPacket(v6 + 24);
  VCMemoryPool_Free(*a1, v7);
  return 0;
}

void VCFECGeneratorCommon_PassThrough(uint64_t a1)
{
  if (a1)
  {
    v2 = VCSingleLinkedListPop((a1 + 8));
    if (v2)
    {
      v3 = v2;
      do
      {
        *(v3 + 24) = 3;
        v4 = v3 + 3;
        *(v3 + 25) = 0;
        *(v3 + 41) = 0;
        *(v3 + 33) = 0;
        *(v3 + 49) = 0;
        VCSingleLinkedListPush(a1 + 40, v3);
        *(a1 + 92) += !VCFECHeader_GetIsParityPacket(v4);
        v3 = VCSingleLinkedListPop((a1 + 8));
      }

      while (v3);
    }
  }

  else
  {
    VCFECGeneratorCommon_PassThrough_cold_1();
  }
}

uint64_t VCFECGeneratorCommon_GetNumberOutputPackets(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 + 40;

    return VCSingleLinkedGetNumberEntries(v1);
  }

  else
  {
    VCFECGeneratorCommon_GetNumberOutputPackets_cold_1(v3);
    return v3[0];
  }
}

uint64_t VCFECGeneratorCommon_GetNumberOutputMediaPackets(uint64_t a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 92);
  }

  VCFECGeneratorCommon_GetNumberOutputMediaPackets_cold_1(v2);
  return v2[0];
}

uint64_t VCFECGeneratorCommon_SetFixedFECLevel(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    VCFECGeneratorCommon_SetFixedFECLevel_cold_2();
    return v4;
  }

  if (a2 >= 0x12D)
  {
    VCFECGeneratorCommon_SetFixedFECLevel_cold_1();
    return v4;
  }

  result = 0;
  *(a1 + 84) = a2;
  return result;
}

uint64_t VCFECGeneratorCommon_SetFECLevelPerBlockSizeVector(uint64_t a1, unint64_t a2, const void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCFECGeneratorCommon_SetFECLevelPerBlockSizeVector_cold_2();
    return *v25;
  }

  if (a2 >= 0x101)
  {
    VCFECGeneratorCommon_SetFECLevelPerBlockSizeVector_cold_1(a2, v25);
    return *v25;
  }

  pthread_mutex_lock((a1 + 12331656));
  *(a1 + 12331136) = a2;
  memcpy((a1 + 12331144), a3, 2 * a2);
  bzero(&v25[1], 0xAEFuLL);
  v25[0] = 10;
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      __sprintf_chk(v25, 0, 0xAF0uLL, "%s(%02d,%02d)\t", v25, *(a1 + 12331144 + 2 * v6), *(a1 + 12331144 + 2 * v6 + 1));
      v6 = ++v7;
    }

    while (*(a1 + 12331136) > v7);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str = 0;
    asprintf(&__str, " _fecLevelPerBlockSizeVector=\n%s\n", v25);
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
            v16 = v10;
            v17 = 2080;
            v18 = "_VCFECGeneratorCommon_PrintFECLevelVector";
            v19 = 1024;
            v20 = 337;
            v21 = 2080;
            v22 = "histogram";
            v23 = 2080;
            v24 = v8;
            _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v8 = strtok_r(0, "\n", &__lasts);
      }

      while (v8);
      free(__str);
    }
  }

  pthread_mutex_unlock((a1 + 12331656));
  return 0;
}

void VCFECGeneratorCommon_UpdateProcessingAverageTime(uint64_t a1, double a2)
{
  if (a1)
  {
    atomic_fetch_add((a1 + 112), vcvtd_n_s64_f64(micro() - a2, 0x20uLL));
    atomic_fetch_add((a1 + 120), 1u);
  }

  else
  {
    VCFECGeneratorCommon_UpdateProcessingAverageTime_cold_1();
  }
}

double VCFECGeneratorCommon_GetProcessingAverageTime(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = atomic_exchange((a1 + 120), 0);
    if (v1)
    {
      return atomic_exchange((a1 + 112), 0) / (v1 << 32);
    }

    else
    {
      return NAN;
    }
  }

  else
  {
    VCFECGeneratorCommon_GetProcessingAverageTime_cold_1(v3);
    return *v3;
  }
}

uint64_t VCFECGeneratorCommon_GetParityPacketsCount(uint64_t a1, int a2, float *a3, int a4)
{
  v40 = *MEMORY[0x1E69E9840];
  IsLossStatsEnabled = VCMediaControlInfo_IsLossStatsEnabled(*(a1 + 89));
  ParityPacketCount_BasedOnPLR = _VCFECGeneratorCommon_GetParityPacketCount_BasedOnPLR(a1, a2, a3);
  v10 = ParityPacketCount_BasedOnPLR;
  if (a2 < 2 || !IsLossStatsEnabled)
  {
    return ParityPacketCount_BasedOnPLR;
  }

  pthread_mutex_lock((a1 + 12331656));
  v11 = *(a1 + 12331136);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = a1 + 12331144;
    while (1)
    {
      v15 = v12;
      if (*(v14 + 2 * v12) >= a2)
      {
        break;
      }

      v12 = ++v13;
      if (v11 <= v13)
      {
        v16 = *(v14 + 2 * v15 + 1);
        goto LABEL_10;
      }
    }

    v16 = *(v14 + 2 * v12 + 1);
    pthread_mutex_unlock((a1 + 12331656));
    if (v16 >= a4)
    {
      v16 = a4;
    }
  }

  else
  {
    v16 = 0;
LABEL_10:
    pthread_mutex_unlock((a1 + 12331656));
  }

  if (v16 >= a2)
  {
    v17 = a2;
  }

  else
  {
    v17 = v16;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    v20 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *a3;
        v24 = 136316930;
        v25 = v18;
        v26 = 2080;
        v27 = "_VCFECGeneratorCommon_GetParityPacketCount_BasedOnFECFeedback";
        v28 = 1024;
        v29 = 161;
        v30 = 1024;
        v31 = a2;
        v32 = 1024;
        v33 = v16;
        v34 = 1024;
        v35 = v17;
        v36 = 1024;
        v37 = v10;
        v38 = 2048;
        v39 = v21;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Parity Packet Count Based on FEC Feedback inputPacketCount=%d foundFECLevel=%d parityPacketsCount=%d parityPacketsCountPlrBased=%d transmissionFactor=%2.2f ", &v24, 0x3Eu);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v23 = *a3;
      v24 = 136316930;
      v25 = v18;
      v26 = 2080;
      v27 = "_VCFECGeneratorCommon_GetParityPacketCount_BasedOnFECFeedback";
      v28 = 1024;
      v29 = 161;
      v30 = 1024;
      v31 = a2;
      v32 = 1024;
      v33 = v16;
      v34 = 1024;
      v35 = v17;
      v36 = 1024;
      v37 = v10;
      v38 = 2048;
      v39 = v23;
      _os_log_debug_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Parity Packet Count Based on FEC Feedback inputPacketCount=%d foundFECLevel=%d parityPacketsCount=%d parityPacketsCountPlrBased=%d transmissionFactor=%2.2f ", &v24, 0x3Eu);
    }
  }

  return v17;
}

uint64_t _VCFECGeneratorCommon_GetParityPacketCount_BasedOnPLR(uint64_t a1, int a2, float *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a1 + 84) >= 100)
  {
    v6 = 100;
  }

  else
  {
    v6 = *(a1 + 84);
  }

  v7 = FECUtil_FECPercentageToLevelofProtection(v6);
  if (a2 < 1)
  {
    v9 = 0;
    if (!a3)
    {
      return v9;
    }
  }

  else
  {
    v8 = v7;
    LODWORD(v9) = 0;
    v10 = a2;
    do
    {
      if (v10 - 9 >= 4)
      {
        v11 = 8;
      }

      else
      {
        v11 = v10 >> 1;
      }

      if (v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      v9 = FECUtil_GetRealNumParity(v12, v8) + v9;
      if (v10 >= v11)
      {
        v10 -= v11;
      }

      else
      {
        v10 = 0;
      }
    }

    while (v10 > 0);
    if (!a3)
    {
      return v9;
    }
  }

  v13 = *(a1 + 84);
  v14 = 1.0;
  if (v13 >= 101)
  {
    v14 = v13 / 100.0;
    if (v14 < 1.0)
    {
      v14 = 1.0;
    }
  }

  *a3 = v14;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    v17 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *a3;
        v21 = 136316418;
        v22 = v15;
        v23 = 2080;
        v24 = "_VCFECGeneratorCommon_GetParityPacketCount_BasedOnPLR";
        v25 = 1024;
        v26 = 130;
        v27 = 1024;
        v28 = a2;
        v29 = 1024;
        v30 = v9;
        v31 = 2048;
        v32 = v18;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Parity Packet Count Based on PLR inputPacketCount=%d parityPacketsCount=%d transmissionFactor=%2.2f", &v21, 0x32u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v20 = *a3;
      v21 = 136316418;
      v22 = v15;
      v23 = 2080;
      v24 = "_VCFECGeneratorCommon_GetParityPacketCount_BasedOnPLR";
      v25 = 1024;
      v26 = 130;
      v27 = 1024;
      v28 = a2;
      v29 = 1024;
      v30 = v9;
      v31 = 2048;
      v32 = v20;
      _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Parity Packet Count Based on PLR inputPacketCount=%d parityPacketsCount=%d transmissionFactor=%2.2f", &v21, 0x32u);
    }
  }

  return v9;
}

uint64_t VCFECGeneratorCommon_Encode_PrepareOutputSinglePacketFrame(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCFECGeneratorCommon_Encode_PrepareOutputSinglePacketFrame_cold_2();
    return v6;
  }

  v7 = -22013;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (VCMediaControlInfo_IsLossStatsEnabled(*(a1 + 89)) && *(a1 + 84) >= 1)
  {
    LOBYTE(v7) = *(a1 + 88) & 3;
    VCFECHeader_SetIsParityPacket(&v7, 0);
    VCFECHeader_SetFecLevel(&v7, *(a1 + 84), 1);
  }

  v2 = *a1;
  v3 = *(a1 + 8320);
  v4 = *(a1 + 76);
  *(a1 + 76) = v4 + 1;
  if ((VCFECPacketList_AllocateAndPush(v2, v3, v4, a1 + 40, &v7) & 0x80000000) != 0)
  {
    VCFECGeneratorCommon_Encode_PrepareOutputSinglePacketFrame_cold_1();
    return v6;
  }

  result = 0;
  ++*(a1 + 92);
  return result;
}

void VCFECGeneratorCommon_Encode_CleanBlockBuffers(uint64_t a1)
{
  if (a1)
  {
    v1 = a1 + 8320;
    v2 = 1024;
    do
    {
      if (*v1)
      {
        CFRelease(*v1);
        *v1 = 0;
      }

      v3 = *(v1 + 0x2000);
      if (v3)
      {
        CFRelease(v3);
        *(v1 + 0x2000) = 0;
      }

      v1 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {
    VCFECGeneratorCommon_Encode_CleanBlockBuffers_cold_1();
  }
}

unint64_t VCFECGeneratorCommon_GetCurrentGroupSize(unint64_t result)
{
  v1 = 8;
  if (result - 9 < 4)
  {
    v1 = (result >> 1);
  }

  if (v1 < result)
  {
    return v1;
  }

  return result;
}

void OUTLINED_FUNCTION_11_15(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

id VCSecurityKeyManager_CopyLatestSendKeyMaterial(void *a1, uint64_t a2)
{
  v2 = [a1 latestSendKeyMaterialWithSecurityKeyMode:a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v4 addObject:v3];
  return v4;
}

uint64_t VCMediaNegotiationBlobV2BandwidthSettingsReadFrom(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
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
        v39 = 0;
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

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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
      if ((v11 >> 3) <= 2)
      {
        if (v12 == 1)
        {
          v33 = 0;
          v34 = 0;
          v15 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v44 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v44 & 0x7F) << v33;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v18 = v34++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___VCMediaNegotiationBlobV2BandwidthSettings__cap2G;
              goto LABEL_78;
            }
          }

          v20 = &OBJC_IVAR___VCMediaNegotiationBlobV2BandwidthSettings__cap2G;
          goto LABEL_75;
        }

        if (v12 == 2)
        {
          v21 = 0;
          v22 = 0;
          v15 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v43 = 0;
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

            v15 |= (v43 & 0x7F) << v21;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v18 = v22++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___VCMediaNegotiationBlobV2BandwidthSettings__cap3G;
              goto LABEL_78;
            }
          }

          v20 = &OBJC_IVAR___VCMediaNegotiationBlobV2BandwidthSettings__cap3G;
LABEL_75:
          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

LABEL_78:
          *(a1 + *v20) = v19;
          goto LABEL_79;
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            v25 = 0;
            v26 = 0;
            v15 = 0;
            *(a1 + 28) |= 8u;
            while (1)
            {
              v42 = 0;
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

              v15 |= (v42 & 0x7F) << v25;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v18 = v26++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___VCMediaNegotiationBlobV2BandwidthSettings__capLTE;
                goto LABEL_78;
              }
            }

            v20 = &OBJC_IVAR___VCMediaNegotiationBlobV2BandwidthSettings__capLTE;
            goto LABEL_75;
          case 4:
            v29 = 0;
            v30 = 0;
            v15 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              v41 = 0;
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

              v15 |= (v41 & 0x7F) << v29;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v18 = v30++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___VCMediaNegotiationBlobV2BandwidthSettings__cap5G;
                goto LABEL_78;
              }
            }

            v20 = &OBJC_IVAR___VCMediaNegotiationBlobV2BandwidthSettings__cap5G;
            goto LABEL_75;
          case 5:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 28) |= 0x10u;
            while (1)
            {
              v40 = 0;
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

              v15 |= (v40 & 0x7F) << v13;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v18 = v14++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___VCMediaNegotiationBlobV2BandwidthSettings__capWifi;
                goto LABEL_78;
              }
            }

            v20 = &OBJC_IVAR___VCMediaNegotiationBlobV2BandwidthSettings__capWifi;
            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_79:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void OUTLINED_FUNCTION_5_28()
{
  *v2 = 0;
  *v1 = v4;
  *v0 = v3;
}

void OUTLINED_FUNCTION_9_23()
{
  *v2 = v4;
  *v1 = 0;
  *v0 = v3;
}

BOOL VCVideoCaptureConverter_ProcessFrame(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 32) != 1 || (v8 = *(a1 + 24), v9 = *(a1 + 28), v10 = v8 / *(a1 + 16), *(a1 + 24) = v8 + 1, *(a1 + 28) = v10, v9 != v10))
    {
      v11 = MEMORY[0x1E1289F20](a1 + 40);
      v12 = *(a1 + 48);
      v14 = *a3;
      v15 = *(a3 + 2);
      v12(v11, a2, &v14, a4);
      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  return a1 != 0;
}

void VCConnectionHealthMonitor_UpdateReceiveStats(uint64_t a1)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v2 = micro();
  if (a1)
  {
    v3 = v2;
    pthread_rwlock_wrlock((a1 + 304));
    if (v3 - *(a1 + 512) > 1.0)
    {
      _VCConnectionHealthMonitor_UpdateStatsHistory(a1);
      *(a1 + 507) = *(a1 + 507) + 1 - 120 * ((547 * (*(a1 + 507) + 1)) >> 16);
      v4 = *(a1 + 520);
      *(a1 + 504) = v4;
      *(a1 + 505) = *(a1 + 521);
      *(a1 + 520) = 0;
      *(a1 + 521) = 0;
      *(a1 + 512) = v3;
      if ((*(a1 + 288) & 1) == 0 && *(a1 + 536) == 1)
      {
        v5 = *(a1 + 296);
        if (v4)
        {
          if (v5 != 0.0)
          {
            if (v3 - v5 >= 8.0)
            {
              v6 = *(a1 + 280);
              if (v6)
              {
                v7[0] = MEMORY[0x1E69E9820];
                v7[1] = 3221225472;
                v7[2] = ___VCConnectionHealthMonitor_checkAndReportSymptomOnRecoveryAfterLongMediaStall_block_invoke;
                v7[3] = &unk_1E85F3778;
                v7[4] = a1;
                dispatch_async(v6, v7);
              }

              *(a1 + 288) = 1;
            }

            else
            {
              *(a1 + 296) = 0;
            }
          }
        }

        else if (v5 == 0.0)
        {
          *(a1 + 296) = v3;
        }
      }
    }

    pthread_rwlock_unlock((a1 + 304));
  }

  else
  {
    VCConnectionHealthMonitor_UpdateReceiveStats_cold_1();
  }
}

void _VCConnectionHealthMonitor_UpdateStatsHistory(_BYTE *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 9);
  v2 = a1[507];
  if (a1[9] != v2)
  {
    a1[9] = v2;
    v4 = (v2 - 5 * ((858993460 * v2) >> 32));
    v5 = a1 + 10;
    a1[v4 + 10] = a1[504];
    v6 = a1 + 15;
    a1[v4 + 15] = a1[505];
    v7 = a1 + 20;
    a1[v4 + 20] = a1[506];
    _VCConnectionHealthMonitor_UpdateRatiosForHistory((a1 + 9), v2 - 5 * ((858993460 * v2) >> 32));
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[9];
        v11 = v6[v4];
        v12 = v7[v4];
        v13 = v5[v4];
        v14 = a1[v4 + 25];
        v15 = a1[v4 + 30];
        v16 = 136317442;
        v17 = v8;
        v18 = 2080;
        v19 = "_VCConnectionHealthMonitor_UpdateStatsHistory";
        v20 = 1024;
        v21 = 238;
        v22 = 1024;
        v23 = v4;
        v24 = 1024;
        v25 = v10;
        v26 = 1024;
        v27 = v11;
        v28 = 1024;
        v29 = v12;
        v30 = 1024;
        v31 = v13;
        v32 = 1024;
        v33 = v14;
        v34 = 1024;
        v35 = v15;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: send - last received packet with index %d, %u, bucket [%u %u %u] ratios [%u %u]", &v16, 0x46u);
      }
    }

    VCConnectionHealthMonitor_ReportConnectionHealthWithStatsHistory(a1, v1, v4, 0);
  }
}

uint64_t _VCConnectionHealthMonitor_UpdateRatiosForHistory(uint64_t result, int a2)
{
  v2 = 0;
  for (i = 1; i != 6; ++i)
  {
    v2 += *(result + i);
  }

  v4 = 0;
  v5 = 1;
  do
  {
    v6 = 0;
    v7 = 0;
    v8 = v5;
    v9 = 5 * v4;
    do
    {
      v7 += *(result + 6 + v9 + v6++);
    }

    while (v6 != 5);
    if (v2)
    {
      v10 = 100 * v7 / v2;
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    v5 = 0;
    *(result + 16 + v9 + a2) = v10;
    v4 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

void VCConnectionHealthMonitor_ReportConnectionHealthWithStatsHistory(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v4 = a4;
      if (*(a2 + a3 + 1) || (*(a1 + 536) & 1) == 0)
      {
        if (*(a2 + a3 + 6))
        {
          v7 = 240;
          if (a4)
          {
            v7 = 9;
          }

          if (VCConnectionHealthMonitor_IsPrimaryConnectionImprovedFromHistory(a1, a2, a3, a1 + v7))
          {
            v6 = 3;
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 2;
        }
      }

      else
      {
        v6 = 1;
      }

      v8 = *(a1 + 280);
      if (v8)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __VCConnectionHealthMonitor_ReportConnectionHealthWithStatsHistory_block_invoke;
        block[3] = &unk_1E85F7418;
        block[4] = a1;
        v10 = v6;
        v11 = v4;
        dispatch_async(v8, block);
      }
    }

    else
    {
      VCConnectionHealthMonitor_ReportConnectionHealthWithStatsHistory_cold_1();
    }
  }

  else
  {
    VCConnectionHealthMonitor_ReportConnectionHealthWithStatsHistory_cold_2();
  }
}

uint64_t VCConnectionHealthMonitor_IsPrimaryConnectionImprovedFromHistory(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        v4 = a2 + 16;
        v5 = *(a2 + 16 + (a3 + 1) % 5);
        v6 = a3 + 2;
        do
        {
          v7 = *(v4 + v6 % 5);
          v8 = (v5 - 1);
          v9 = v8 < v7 && v6++ < a3 + 5;
          v5 = v7;
        }

        while (v9);
        if (v8 >= v7 || *(v4 + a3) < 0x32u || !*(a2 + 6))
        {
          return 0;
        }

        v10 = 0;
        while (v10 != 4)
        {
          if (!*(a2 + 7 + v10++))
          {
            if ((v10 - 1) < 4)
            {
              return 0;
            }

            break;
          }
        }

        if (*(a1 + 552))
        {
          return 1;
        }

        if (*(a4 + 6))
        {
          v13 = 0;
          do
          {
            v14 = v13;
            if (v13 == 4)
            {
              break;
            }

            ++v13;
          }

          while (*(a4 + 7 + v14));
          return v14 > 3;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        VCConnectionHealthMonitor_IsPrimaryConnectionImprovedFromHistory_cold_1(&v15);
        return v15;
      }
    }

    else
    {
      VCConnectionHealthMonitor_IsPrimaryConnectionImprovedFromHistory_cold_2(&v16);
      return v16;
    }
  }

  else
  {
    VCConnectionHealthMonitor_IsPrimaryConnectionImprovedFromHistory_cold_3(&v17);
    return v17;
  }
}

void VCConnectionHealthMonitor_ReceivePacket(uint64_t a1, int a2, int a3, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = micro();
  if (!a4 || a2)
  {
    pthread_rwlock_wrlock((a1 + 304));
    if (a2 && (*(a1 + 536) & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315650;
          v17 = v9;
          v18 = 2080;
          v19 = "VCConnectionHealthMonitor_ReceivePacket";
          v20 = 1024;
          v21 = 381;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d First packet received", &v16, 0x1Cu);
        }
      }

      *(a1 + 536) = 1;
    }

    v11 = *(a1 + 544);
    v12 = 504;
    if (v8 > *(a1 + 512) + 1.0 - v11)
    {
      v12 = 520;
    }

    v13 = (a1 + v12);
    if (a4)
    {
      v14 = v13[2];
      if (v14 && *(a1 + 16 * (a3 & 0x3FF) + 560) == a3 && v8 - *(a1 + 16 * (a3 & 0x3FF) + 568) < v11)
      {
        ++v13[1];
        v13[2] = v14 - 1;
      }
    }

    else
    {
      ++*v13;
      if (a2)
      {
        ++v13[1];
      }

      else
      {
        ++v13[2];
        v15 = a1 + 16 * (a3 & 0x3FF);
        *(v15 + 560) = a3;
        *(v15 + 566) = 0;
        *(v15 + 562) = 0;
        *(v15 + 568) = v8;
      }
    }

    pthread_rwlock_unlock((a1 + 304));
  }
}

uint64_t VCConnectionHealthMonitor_ReceiveServerStats(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  pthread_rwlock_wrlock((a1 + 304));
  if (a2 && (*(a1 + 536) & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v4;
        v10 = 2080;
        v11 = "VCConnectionHealthMonitor_ReceiveServerStats";
        v12 = 1024;
        v13 = 402;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d First packet received", &v8, 0x1Cu);
      }
    }

    *(a1 + 536) = 1;
  }

  ++*(a1 + 504);
  v6 = 505;
  if (!a2)
  {
    v6 = 506;
  }

  ++*(a1 + v6);
  return pthread_rwlock_unlock((a1 + 304));
}

uint64_t VCPixelBufferOverlay_updateOverlayWithPixelBuffer(uint64_t result, __CVBuffer *a2)
{
  v133 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v3 = result;
  if (*(result + 356) != 1)
  {
    return result;
  }

  v4 = micro();
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  v7 = *(v3 + 192);
  if (v7)
  {
    VCOverlaySource_Read(v7);
  }

  v8 = *(v3 + 184);
  if (v8)
  {
    VCOverlaySource_Read(v8);
  }

  v9 = *(v3 + 200);
  if (v9)
  {
    VCOverlaySource_Read(v9);
  }

  LODWORD(valuePtr.a) = Width;
  LODWORD(keys.a) = Height;
  Attachment = CVBufferGetAttachment(a2, @"VraWidth", 0);
  if (Attachment)
  {
    CFNumberGetValue(Attachment, kCFNumberIntType, &valuePtr);
  }

  v11 = CVBufferGetAttachment(a2, @"VraHeight", 0);
  a_low = Height;
  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberIntType, &keys);
    a_low = LODWORD(keys.a);
  }

  *(v3 + 304) = SLODWORD(valuePtr.a);
  *(v3 + 312) = a_low;
  v114 = Height;
  if (CFStringGetLength(*(v3 + 296)) < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(*(v3 + 296), v13);
      if (v14 <= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v14;
      }

      if (CharacterAtIndex == 10)
      {
        v15 = 0;
      }

      else
      {
        ++v15;
      }

      if (CharacterAtIndex == 10)
      {
        v14 = v17;
      }

      ++v13;
    }

    while (CFStringGetLength(*(v3 + 296)) > v13);
  }

  v115 = Width;
  if (*(v3 + 320) != v14 || v4 - *(v3 + 336) > 5.0)
  {
    *(v3 + 336) = v4;
    v18 = *(v3 + 288);
    if (v18)
    {
      CFRelease(v18);
    }

    v19 = *(v3 + 272);
    v20 = *(v3 + 280);
    v21 = *(v3 + 360);
    DeviceGray = CGColorSpaceCreateDeviceGray();
    __asm { FMOV            V0.2D, #1.0 }

    *&valuePtr.a = _Q0;
    v28 = CGColorCreate(DeviceGray, &valuePtr.a);
    if (v21)
    {
      v29 = v21;
    }

    else
    {
      if (v14 >= 75)
      {
        v30 = 75;
      }

      else
      {
        v30 = v14;
      }

      v31 = v19 * v20;
      v29 = round(sqrtf(v31) / v30);
    }

    v32 = fmin(v29, 32.0);
    if (v32 < 20.0)
    {
      v32 = 20.0;
    }

    UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontUserFixedPitch, v32, 0);
    v34 = *MEMORY[0x1E69659D8];
    keys.a = *MEMORY[0x1E6965658];
    keys.b = v34;
    values[0] = UIFontForLanguage;
    values[1] = v28;
    v35 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v28)
    {
      CFRelease(v28);
    }

    if (UIFontForLanguage)
    {
      CFRelease(UIFontForLanguage);
    }

    if (DeviceGray)
    {
      CFRelease(DeviceGray);
    }

    *(v3 + 288) = v35;
    *(v3 + 320) = v14;
  }

  v36 = MEMORY[0x1E695EFD0];
  if (*(v3 + 344) == 1)
  {
    *(v3 + 344) = 0;
    LODWORD(values[0]) = -1431655766;
    FigCFDictionaryGetIntIfPresent();
    v37 = values[0] & 3;
    v38.i64[0] = CVPixelBufferGetWidth(a2);
    v38.i64[1] = CVPixelBufferGetHeight(a2);
    v39 = vcvtq_f64_s64(v38);
    v116 = vcvt_f32_f64(vmulq_f64(*(v3 + 384), v39));
    v40 = vcvt_f32_f64(vmulq_f64(*(v3 + 368), v39));
    v41 = v36[1];
    v43 = v36[2];
    v42 = v36[3];
    v45 = v36[4];
    v44 = v36[5];
    if (*(v3 + 424))
    {
      if (v37 > 1)
      {
        if (v37 == 2)
        {
LABEL_50:
          v112 = vmul_f32(v40, 0x3F0000003F000000);
          keys.a = *v36;
          keys.b = v41;
          keys.c = v43;
          keys.d = v42;
          keys.tx = v45;
          keys.ty = v44;
          CGAffineTransformTranslate(&valuePtr, &keys, v40.f32[0], v112.f32[1]);
          v46 = *&valuePtr.a;
          v47 = *&valuePtr.c;
          v48 = *&valuePtr.tx;
          v49 = v3 + 256;
          v50 = vadd_f32(v112, v116);
LABEL_58:
          *v49 = 0;
          *(v49 + 8) = 0;
          *(v49 + 16) = vcvtq_f64_f32(v50);
          *(v3 + 208) = v46;
          *(v3 + 224) = v47;
          *(v3 + 240) = v48;
          goto LABEL_59;
        }

LABEL_57:
        v113 = vmul_f32(v40, 0x3F0000003F000000);
        keys.a = *v36;
        keys.b = v41;
        keys.c = v43;
        keys.d = v42;
        keys.tx = v45;
        keys.ty = v44;
        CGAffineTransformTranslate(&valuePtr, &keys, v113.f32[0], v113.f32[1]);
        keys = valuePtr;
        CGAffineTransformRotate(&valuePtr, &keys, 3.14159265);
        keys = valuePtr;
        CGAffineTransformTranslate(&valuePtr, &keys, (-v116.f32[0] - v113.f32[0]), (-v116.f32[1] - v113.f32[1]));
        v46 = *&valuePtr.a;
        v47 = *&valuePtr.c;
        v48 = *&valuePtr.tx;
        v49 = v3 + 256;
        v50 = vadd_f32(v113, v116);
        goto LABEL_58;
      }
    }

    else if (v37 > 1)
    {
      if (v37 != 2)
      {
        goto LABEL_50;
      }

      goto LABEL_57;
    }

    if (v37)
    {
      v55 = (0.5 * v40.f32[0]);
      keys.a = *v36;
      keys.b = v41;
      v56 = vmuls_lane_f32(0.5, v40, 1);
      keys.c = v43;
      keys.d = v42;
      keys.tx = v45;
      keys.ty = v44;
      CGAffineTransformTranslate(&valuePtr, &keys, v55, v56);
      keys = valuePtr;
      CGAffineTransformRotate(&valuePtr, &keys, -1.57079633);
      v54 = (-v116.f32[1] - v56);
      keys = valuePtr;
      v53 = v55;
    }

    else
    {
      v51 = 0.5 * v40.f32[0];
      keys.a = *v36;
      keys.b = v41;
      v52 = vmuls_lane_f32(0.5, v40, 1);
      keys.c = v43;
      keys.d = v42;
      keys.tx = v45;
      keys.ty = v44;
      CGAffineTransformTranslate(&valuePtr, &keys, (0.5 * v40.f32[0]), v52);
      keys = valuePtr;
      CGAffineTransformRotate(&valuePtr, &keys, 1.57079633);
      v53 = (-v116.f32[0] - v51);
      keys = valuePtr;
      v54 = v52;
    }

    CGAffineTransformTranslate(&valuePtr, &keys, v54, v53);
    v46 = *&valuePtr.a;
    v47 = *&valuePtr.c;
    v48 = *&valuePtr.tx;
    v49 = v3 + 256;
    v50 = vrev64_s32(v116);
    goto LABEL_58;
  }

LABEL_59:
  v57 = *(v3 + 296);
  v134.length = CFStringGetLength(v57);
  v134.location = 0;
  CFStringDelete(v57, v134);
  v58 = *(v3 + 358);
  if (v58)
  {
    v59 = *(v3 + 192);
    if (v59)
    {
      v60 = *(v59 + 48);
      if (v60)
      {
        valuePtr.c = -3.72066208e-103;
        valuePtr.a = *(v3 + 296);
        LOBYTE(valuePtr.b) = v58;
        *(&valuePtr.b + 1) = 0.0;
        v61 = *(v3 + 176);
        valuePtr.d = *(v60 + 16);
        valuePtr.tx = v61;
        valuePtr.ty = v4;
        v62 = *(v3 + 200);
        if (v62)
        {
          v63 = *(v62 + 48);
          if (v63)
          {
            v64 = *(v63 + 8);
            *(&valuePtr.b + 5) = *(v63 + 11);
            *(&valuePtr.b + 2) = v64;
            BYTE1(valuePtr.b) = *(v3 + 359);
          }
        }

        VCOverlaySourceTextHelper_appendHeaderTextToString(&valuePtr);
      }
    }
  }

  v65 = *(v3 + 192);
  if (v65)
  {
    v66 = *(v65 + 48);
    if (v66)
    {
      v67 = *(v3 + 358);
      if (v67)
      {
        v129 = xmmword_1DBD4F1C8;
        v130 = unk_1DBD4F1D8;
        v131 = xmmword_1DBD4F1E8;
        v132 = 0xAAAAAAAAFFFFFFFFLL;
        v125 = xmmword_1DBD4F188;
        v126 = unk_1DBD4F198;
        v127 = xmmword_1DBD4F1A8;
        v128 = unk_1DBD4F1B8;
        v121 = xmmword_1DBD4F148;
        v122 = unk_1DBD4F158;
        v123 = xmmword_1DBD4F168;
        v124 = unk_1DBD4F178;
        valuePtr = *byte_1DBD4F108;
        v120 = unk_1DBD4F138;
        valuePtr.a = *(v3 + 296);
        LOBYTE(valuePtr.b) = v67;
        v68 = *(v66 + 8);
        v69 = *(v66 + 24);
        v70 = *(v66 + 56);
        v120 = *(v66 + 40);
        v121 = v70;
        *&valuePtr.c = v68;
        *&valuePtr.tx = v69;
        v71 = *(v66 + 72);
        v72 = *(v66 + 88);
        v73 = *(v66 + 120);
        v124 = *(v66 + 104);
        v125 = v73;
        v122 = v71;
        v123 = v72;
        v74 = *(v66 + 136);
        v75 = *(v66 + 152);
        v76 = *(v66 + 184);
        v128 = *(v66 + 168);
        v129 = v76;
        v126 = v74;
        v127 = v75;
        *&v130 = v115;
        *(&v130 + 1) = v114;
        v131 = *(v3 + 304);
        LODWORD(v132) = *(v3 + 352);
        VCOverlaySourceTextHelper_appendVideoTextToString(&valuePtr);
      }
    }
  }

  v77 = *(v3 + 184);
  if (v77)
  {
    v78 = *(v77 + 48);
    if (v78)
    {
      *&valuePtr.a = xmmword_1DBD4F200;
      valuePtr.a = *(v3 + 296);
      LOBYTE(valuePtr.b) = *(v3 + 357);
      v79 = *(v78 + 8);
      v80 = *(v78 + 24);
      v81 = *(v78 + 56);
      v120 = *(v78 + 40);
      v121 = v81;
      *&valuePtr.c = v79;
      *&valuePtr.tx = v80;
      VCOverlaySourceTextHelper_appendAudioTextToString(&valuePtr);
    }
  }

  v82 = CVPixelBufferGetWidth(a2);
  v83 = CVPixelBufferGetHeight(a2);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  if (!BaseAddressOfPlane)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_99;
    }

    v102 = VRTraceErrorLogLevelToCSTR();
    v103 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_99;
    }

    LODWORD(valuePtr.a) = 136315650;
    *(&valuePtr.a + 4) = v102;
    WORD2(valuePtr.b) = 2080;
    *(&valuePtr.b + 6) = "_VCPixelBufferOverlay_renderText";
    HIWORD(valuePtr.c) = 1024;
    LODWORD(valuePtr.d) = 226;
    v104 = " [%s] %s:%d CVPixelBufferGetBaseAddressOfPlane was NULL";
    goto LABEL_98;
  }

  v86 = BaseAddressOfPlane;
  v87 = CGColorSpaceCreateDeviceGray();
  if (!v87)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_99;
    }

    v105 = VRTraceErrorLogLevelToCSTR();
    v103 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_99;
    }

    LODWORD(valuePtr.a) = 136315650;
    *(&valuePtr.a + 4) = v105;
    WORD2(valuePtr.b) = 2080;
    *(&valuePtr.b + 6) = "_VCPixelBufferOverlay_renderText";
    HIWORD(valuePtr.c) = 1024;
    LODWORD(valuePtr.d) = 229;
    v104 = " [%s] %s:%d CGColorSpaceCreateDeviceGray was NULL";
LABEL_98:
    _os_log_impl(&dword_1DB56E000, v103, OS_LOG_TYPE_DEFAULT, v104, &valuePtr, 0x1Cu);
LABEL_99:
    v88 = 0;
LABEL_100:
    v90 = 0;
LABEL_101:
    v94 = 0;
LABEL_102:
    v96 = 0;
    v99 = 0;
    a = 0.0;
    goto LABEL_82;
  }

  v88 = v87;
  v89 = CGBitmapContextCreate(v86, v82, v83, 8uLL, BytesPerRowOfPlane, v87, 0);
  if (!v89)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v106 = VRTraceErrorLogLevelToCSTR();
      v107 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(valuePtr.a) = 136315650;
        *(&valuePtr.a + 4) = v106;
        WORD2(valuePtr.b) = 2080;
        *(&valuePtr.b + 6) = "_VCPixelBufferOverlay_renderText";
        HIWORD(valuePtr.c) = 1024;
        LODWORD(valuePtr.d) = 232;
        _os_log_impl(&dword_1DB56E000, v107, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CGBitmatContextCreate was NULL", &valuePtr, 0x1Cu);
      }
    }

    goto LABEL_100;
  }

  v90 = v89;
  v91 = *(v3 + 224);
  *&valuePtr.a = *(v3 + 208);
  *&valuePtr.c = v91;
  *&valuePtr.tx = *(v3 + 240);
  CGContextConcatCTM(v89, &valuePtr);
  v92 = *(MEMORY[0x1E695EFD0] + 16);
  *&valuePtr.a = *MEMORY[0x1E695EFD0];
  *&valuePtr.c = v92;
  *&valuePtr.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGContextSetTextMatrix(v90, &valuePtr);
  v93 = CFAttributedStringCreate(0, *(v3 + 296), *(v3 + 288));
  if (!v93)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v108 = VRTraceErrorLogLevelToCSTR();
      v109 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(valuePtr.a) = 136315650;
        *(&valuePtr.a + 4) = v108;
        WORD2(valuePtr.b) = 2080;
        *(&valuePtr.b + 6) = "_VCPixelBufferOverlay_renderText";
        HIWORD(valuePtr.c) = 1024;
        LODWORD(valuePtr.d) = 238;
        _os_log_impl(&dword_1DB56E000, v109, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CFAttributedStringCreate was NULL", &valuePtr, 0x1Cu);
      }
    }

    goto LABEL_101;
  }

  v94 = v93;
  v95 = CTFramesetterCreateWithAttributedString(v93);
  if (!v95)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v110 = VRTraceErrorLogLevelToCSTR();
      v111 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(valuePtr.a) = 136315650;
        *(&valuePtr.a + 4) = v110;
        WORD2(valuePtr.b) = 2080;
        *(&valuePtr.b + 6) = "_VCPixelBufferOverlay_renderText";
        HIWORD(valuePtr.c) = 1024;
        LODWORD(valuePtr.d) = 242;
        _os_log_impl(&dword_1DB56E000, v111, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CTFramesetterCreateWithAttributedString was NULL", &valuePtr, 0x1Cu);
      }
    }

    goto LABEL_102;
  }

  v96 = v95;
  SRGB = CGColorCreateSRGB(0.0, 0.0, 0.0, 1.0);
  v136.width = 0.0;
  v136.height = 0.0;
  CGContextSetShadowWithColor(v90, v136, 2.0, SRGB);
  Mutable = CGPathCreateMutable();
  v99 = Mutable;
  if (!Mutable)
  {
    VCPixelBufferOverlay_updateOverlayWithPixelBuffer_cold_2(&valuePtr);
    goto LABEL_114;
  }

  CGPathAddRect(Mutable, 0, *(v3 + 256));
  v135.location = 0;
  v135.length = 0;
  Frame = CTFramesetterCreateFrame(v96, v135, v99, 0);
  if (!Frame)
  {
    VCPixelBufferOverlay_updateOverlayWithPixelBuffer_cold_1(&valuePtr);
LABEL_114:
    a = valuePtr.a;
    if (!SRGB)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  a = *&Frame;
  CTFrameDraw(Frame, v90);
  if (SRGB)
  {
LABEL_81:
    CFRelease(SRGB);
  }

LABEL_82:
  CGColorSpaceRelease(v88);
  CGContextRelease(v90);
  if (v94)
  {
    CFRelease(v94);
  }

  if (v96)
  {
    CFRelease(v96);
  }

  if (v99)
  {
    CFRelease(v99);
  }

  if (a != 0.0)
  {
    CFRelease(*&a);
  }

  return CVPixelBufferUnlockBaseAddress(a2, 0);
}