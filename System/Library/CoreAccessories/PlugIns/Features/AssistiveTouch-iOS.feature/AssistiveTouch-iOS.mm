void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void init_logging_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __init_logging_modules_block_invoke;
  block[3] = &__block_descriptor_tmp;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_modules_onceToken, block);
  }
}

void __init_logging_modules_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = &loc_2335AB000;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + v3);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v14) = v4;
          _os_log_error_impl(&dword_2335A9000, v6, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
          v7 = *(a1 + 32);
          v8 = "<Undefined>";
        }
      }

      v9 = *(v7 + v3 + 8);
      if (!v9)
      {
        v9 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __init_logging_modules_block_invoke_cold_1(v17, v4, &v18);
          v9 = "<Undefined>";
        }
      }

      v10 = os_log_create(v8, v9);
      *(*(a1 + 40) + 8 * v4) = v10;
      if (v10)
      {
        ++v5;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v14 = v8;
          v15 = 2080;
          v16 = v9;
          _os_log_debug_impl(&dword_2335A9000, v6, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = v8;
        v15 = 2080;
        v16 = v9;
        _os_log_error_impl(&dword_2335A9000, v6, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v11 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v11);
    v2 = &loc_2335AB000;
  }

  else
  {
    LODWORD(v11) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = v2[210];
    LODWORD(v14) = v5;
    _os_log_impl(&dword_2335A9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v11) = *(a1 + 48);
  }

  gLogObjects = *(a1 + 40);
  gNumLogObjects = v11;
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t ascii_to_hex(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = 0;
      v14 = -86;
      v13 = -86;
      v5 = &v14;
      v6 = 1;
      do
      {
        v7 = v6;
        v8 = *(a2 + 2 * v3 + v4);
        v9 = v8 - 48;
        v10 = v8 - 65;
        if ((v8 - 97) >= 6)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 - 87;
        }

        v12 = v8 - 55;
        if (v10 > 5)
        {
          v12 = v11;
        }

        if (v9 < 0xA)
        {
          v12 = v9;
        }

        *v5 = v12;
        v5 = &v13;
        v4 = 1;
        v6 = 0;
      }

      while ((v7 & 1) != 0);
      *(result + v3++) = v13 | (16 * v14);
    }

    while (v3 != a3 >> 1);
  }

  return result;
}

unsigned __int8 *printBytes(unsigned __int8 *result, uint64_t a2, char *a3, int a4)
{
  if (result)
  {
    v4 = a2;
    if (a2)
    {
      v7 = result;
      do
      {
        v8 = *v7++;
        result = printf(a3, v8);
        --v4;
      }

      while (v4);
      if (a4)
      {

        return putchar(10);
      }
    }
  }

  return result;
}

const char *removeNewline(const char *a1)
{
  v2 = strlen(a1);
  if (v2 && a1[v2 - 1] == 10)
  {
    a1[v2 - 1] = 0;
  }

  return a1;
}

uint64_t obfuscatedPointer(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = obfuscatedPointer_salt;
    if (!obfuscatedPointer_salt)
    {
      v2 = random();
      obfuscatedPointer_salt = v2;
    }

    return v1 + v2;
  }

  return result;
}

BOOL getMemoryUse(void *a1, void *a2, void *a3)
{
  v33 = -1431655766;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v6;
  v32 = v6;
  v29 = v6;
  v30 = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  v26 = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  v22 = v6;
  v19 = v6;
  v20 = v6;
  v18 = v6;
  v16 = v6;
  v17 = v6;
  v14 = v6;
  v15 = v6;
  v12 = v6;
  v13 = v6;
  *task_info_out = v6;
  v11 = v6;
  task_info_outCnt = 93;
  v7 = task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt);
  if (!v7)
  {
    if (a1)
    {
      *a1 = v11;
    }

    if (a2)
    {
      *a2 = *task_info_out;
    }

    if (a3)
    {
      *a3 = v19;
    }
  }

  return v7 == 0;
}

uint64_t init_logging()
{
  init_logging_modules(&_gLogObjects, 1, _kLoggingModuleEntries);

  return MEMORY[0x28213A060]();
}

void __init_logging_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_2335A9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
}

char *createHexString(uint64_t a1, unint64_t a2, int a3)
{
  if (a1 && a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (!a3)
      {
        v6 = (2 * a2) | 1;
LABEL_10:
        v8 = malloc_type_malloc(v6, 0x100004077774924uLL);
        if (v8)
        {
          v9 = 0;
          v10 = v8;
          v19 = v8;
          v11 = v8;
          v12 = v6;
          while (a3)
          {
            v13 = *(a1 + v9);
            if (v9 >= a2 - 1)
            {
              v18 = *(a1 + v9);
              v15 = v11;
              v16 = v12;
              goto LABEL_17;
            }

            v17 = *(a1 + v9);
            snprintf(v11, v12, "%02X ");
LABEL_18:
            ++v9;
            v12 -= 3;
            v11 += 3;
            v10 += 2;
            v6 -= 2;
            if (a2 == v9)
            {
              return v19;
            }
          }

          v14 = *(a1 + v9);
          v15 = v10;
          v16 = v6;
LABEL_17:
          snprintf(v15, v16, "%02X");
          goto LABEL_18;
        }

        goto LABEL_21;
      }

      if (is_mul_ok(a2, 3uLL))
      {
        v6 = 3 * a2;
        goto LABEL_10;
      }
    }

    do
    {
LABEL_21:
      result = malloc_type_malloc(0xEuLL, 0x100004077774924uLL);
    }

    while (!result);
    strcpy(result, "<print error>");
    return result;
  }

  result = malloc_type_malloc(7uLL, 0x100004077774924uLL);
  if (result)
  {
    strcpy(result, "(null)");
  }

  return result;
}