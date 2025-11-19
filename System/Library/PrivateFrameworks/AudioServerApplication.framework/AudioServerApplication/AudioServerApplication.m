uint64_t InputOutputProc(int a1, const void *a2, unsigned int *a3, const void *a4, unsigned int *a5, const void *a6, _DWORD *a7)
{
  v55 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3 || !a4 || !a5 || !a6 || !a7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110656;
      v42 = a1;
      v43 = 2048;
      v44 = a2;
      v45 = 2048;
      v46 = a3;
      v47 = 2048;
      v48 = a4;
      v49 = 2048;
      v50 = a5;
      v51 = 2048;
      v52 = a6;
      v53 = 2048;
      v54 = a7;
      _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASAPlaythrough IO Proc NULL argument %u %p %p %p %p %p %p", buf, 0x44u);
    }

    printf("ASAPlaythrough IO Proc NULL argument %u %p %p %p %p %p %p", a1, a2, a3, a4, a5, a6, a7);
LABEL_21:
    v22 = 0;
    goto LABEL_22;
  }

  v14 = a7[1];
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = *(a7 + 5);
    do
    {
      v18 = *(v17 + 8 * v15);
      if (*v18)
      {
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = &v18[v19];
          if (v16 >= *a3)
          {
            v21[2] = 0;
            *(v21 + 2) = 0;
          }

          else
          {
            *(v21 + 2) = *&a3[4 * v16++ + 2];
            v17 = *(a7 + 5);
          }

          ++v20;
          v18 = *(v17 + 8 * v15);
          v19 += 4;
        }

        while (v20 < *v18);
        v14 = a7[1];
      }

      ++v15;
    }

    while (v15 < v14);
  }

  else
  {
    v14 = 0;
  }

  v25 = a7[2];
  if (v25)
  {
    v26 = 0;
    v27 = 0;
    v28 = *(a7 + 6);
    do
    {
      v29 = *(v28 + 8 * v26);
      if (*v29)
      {
        v30 = 0;
        v31 = 0;
        do
        {
          v32 = &v29[v30];
          if (v27 >= *a5)
          {
            v32[2] = 0;
            *(v32 + 2) = 0;
          }

          else
          {
            *(v32 + 2) = *&a5[4 * v27++ + 2];
            v28 = *(a7 + 6);
          }

          ++v31;
          v29 = *(v28 + 8 * v26);
          v30 += 4;
        }

        while (v31 < *v29);
        v25 = a7[2];
      }

      ++v26;
    }

    while (v26 < v25);
    v14 = a7[1];
  }

  if (v14)
  {
    v33 = 0;
    do
    {
      v34 = *(*(a7 + 5) + 8 * v33);
      if (CheckAudioBufferList(&v34->mNumberBuffers))
      {
        v22 = 2003329396;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          InputOutputProc_cold_1(v33, a4);
        }

        goto LABEL_22;
      }

      v35 = *(*(a7 + 7) + 8 * v33);
      if (CheckAudioBufferList(&v35->mNumberBuffers))
      {
        v22 = 2003329396;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          InputOutputProc_cold_2(v33, a4);
        }

        goto LABEL_22;
      }

      v36 = AudioConverterConvertComplexBuffer(*(*(a7 + 3) + 8 * v33++), *a7, v34, v35);
    }

    while (v33 < a7[1]);
    v22 = v36;
    if (v36)
    {
      goto LABEL_22;
    }
  }

  if (!a7[2])
  {
    goto LABEL_21;
  }

  v37 = 0;
  while (1)
  {
    v38 = *(a7 + 8);
    if (CheckAudioBufferList(&v38->mNumberBuffers))
    {
      break;
    }

    v39 = *(*(a7 + 6) + 8 * v37);
    if (CheckAudioBufferList(&v39->mNumberBuffers))
    {
      v22 = 2003329396;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        InputOutputProc_cold_4(v37, a6);
      }

      goto LABEL_22;
    }

    v40 = AudioConverterConvertComplexBuffer(*(*(a7 + 4) + 8 * v37++), *a7, v38, v39);
    if (v37 >= a7[2])
    {
      v22 = v40;
      goto LABEL_22;
    }
  }

  v22 = 2003329396;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    InputOutputProc_cold_3(v37, a6);
  }

LABEL_22:
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t CheckAudioBufferList(unsigned int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = &a1[4 * v1 + 2];
  v4 = a1 + 2;
  while (1)
  {
    v5 = *(v4 + 1);
    if (!v5)
    {
      break;
    }

    v6 = v4[1];
    if (v6 >= 4)
    {
      v2 += *v5 + *(v5 + (v6 & 0xFFFFFFFC) - 4);
    }

    v4 += 4;
    if (v4 >= v3)
    {
      v7 = 0;
      return v7 | v2 & 0xFFFFFFFE;
    }
  }

  v7 = 1;
  return v7 | v2 & 0xFFFFFFFE;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void InputOutputProc_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

void InputOutputProc_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

void InputOutputProc_cold_3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

void InputOutputProc_cold_4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}