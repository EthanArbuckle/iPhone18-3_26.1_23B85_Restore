uint64_t LibCall_ACMContextCreate(uint64_t (*a1)(void), uint64_t a2, void *a3, uint64_t a4, _BYTE *a5, int a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextCreate");
  }

  sub_16F4();
  if (a1 && a3 && v11)
  {
    v12 = sub_16C0();
    acm_mem_alloc_info("ACMHandleWithPayload", v12, 20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 49, "LibCall_ACMContextCreate");
    if (!v12)
    {
      sub_18450();
      goto LABEL_20;
    }

    memset(v17, 0, sizeof(v17));
    if (a6)
    {
      sub_18B0();
      sub_186C();
      v13 = a1();
      if (!v13)
      {
        v6 = 0;
LABEL_16:
        *v12 = *v17;
        v12[4] = 0;
        *a3 = v12;
        if (a5)
        {
          *a5 = 0;
        }

LABEL_18:
        if (!v6)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v6 = v13;
      if (v13 != -3)
      {
LABEL_19:
        acm_mem_free_info("ACMHandleWithPayload", v12, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 89, "LibCall_ACMContextCreate");
        acm_mem_free(v12, 0x14uLL);
        goto LABEL_20;
      }
    }

    sub_18B0();
    sub_186C();
    v14 = a1();
    if (v14)
    {
      v6 = v14;
    }

    else
    {
      v6 = 0;
    }

    if (v14)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_20:
  sub_22E4();
  if (v15)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextCreate", v6);
  }

  return v6;
}

uint64_t ACMContextCreateWithFlags(uint64_t *a1, uint64_t a2)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreate(sub_1908, &v8, a1, a2, &byte_350A1, 1);
  if (v4)
  {
    sub_17CD4();
    v5 = 70;
  }

  else
  {
    v5 = 10;
    if (a1 && byte_350A1 <= 0x28u)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        if (*a1)
        {
          LODWORD(v6) = *(v6 + 16);
        }

        *buf = 136315906;
        v10 = "ACMLib";
        v11 = 2080;
        v12 = "ACMContextCreateWithFlags";
        v13 = 1024;
        LODWORD(v14[0]) = v6;
        WORD2(v14[0]) = 1024;
        *(v14 + 6) = a2;
        _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] created (flags=0x%x).\n", buf, 0x22u);
      }

      v5 = 10;
    }
  }

  if (v5 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    v13 = 2048;
    v14[0] = v4;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v4;
}

void *acm_mem_alloc_typed(size_t size, malloc_type_id_t type_id)
{
  result = malloc_type_calloc(1uLL, size, type_id);
  if (result)
  {
    qword_35120 += size;
  }

  return result;
}

uint64_t sub_1678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a10 = 0;
  a11 = 0;

  return DeserializeRequirement(v22 + v24, v23 - v24, &a11, &a10, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void *sub_16C0()
{

  return acm_mem_alloc_typed(0x14uLL, 0x1000040A86A77D5uLL);
}

const char *acm_mem_alloc_info(const char *result, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    qword_35110 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, qword_35110, 0, qword_35118, qword_35120, v8, a5, v6);
  }

  return result;
}

void sub_17B0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_17D0(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t sub_17F0@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  a2 = a1;

  return sub_1384C(v4, v3, v2, &a2);
}

void *acm_mem_alloc_data(size_t size)
{
  result = malloc_type_calloc(1uLL, size, 0x7F43DDCBuLL);
  if (result)
  {
    qword_35118 += size;
  }

  return result;
}

uint64_t sub_1908(uint64_t *a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_17F28();
    sub_17ED0();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  if (a1)
  {
    v19 = sub_1F08();
    v20 = 70;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = sub_1ACC(*a1, a2, a3, a4, a5, a6, a7);
      if (v21)
      {
        v20 = 70;
      }

      else
      {
        v20 = 10;
      }
    }
  }

  else
  {
    v20 = 70;
    v21 = 4294967293;
  }

  if (v20 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_17FE0();
    sub_17F60();
    sub_18A0();
    sub_17ED0();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
  }

  return v21;
}

uint64_t sub_1ACC(uint64_t a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_20E4();
    sub_21F8();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  inputStructCnt = 0;
  v19 = LibCall_BuildCommand(a2, 0, a3, a4, a5, &inputStructCnt);
  if (v19)
  {
    v20 = v19;
    if (!a6 && a7)
    {
      v23 = 4294967293;
    }

    else
    {
      if (a7)
      {
        v21 = *a7;
      }

      else
      {
        v21 = 0;
      }

      v44 = v21;
      v22 = IOConnectCallStructMethod(dword_35134, 0, v19, inputStructCnt, a6, &v44);
      v23 = v22;
      if (a1)
      {
        v24 = *(a1 + 16);
      }

      if (v22)
      {
        if (byte_350A1 <= 0x46u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_20E4();
          sub_210C();
          v49 = v25;
          v50 = v23;
          v51 = v25;
          v52 = v23;
          sub_21F8();
          _os_log_impl(v26, v27, v28, v29, v30, 0x2Eu);
        }
      }

      else
      {
        if (byte_350A1 <= 0x28u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_20E4();
          sub_210C();
          sub_21F8();
          _os_log_impl(v31, v32, v33, v34, v35, 0x22u);
        }

        v23 = 0;
        if (a7)
        {
          *a7 = v44;
        }
      }
    }

    v36 = inputStructCnt;
    acm_mem_free_info("<data>", v20, inputStructCnt, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 134, "performCommand");
    acm_mem_free_data(v20, v36);
    if (v23)
    {
      v37 = 70;
    }

    else
    {
      v37 = 10;
    }
  }

  else
  {
    v37 = 70;
    v23 = 4294967291;
  }

  if (v37 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v46 = 136315650;
    v47 = "ACMLib";
    sub_17F10();
    v48 = "performCommand";
    sub_17E80();
    sub_21F8();
    _os_log_impl(v38, v39, v40, v41, v42, 0x20u);
  }

  return v23;
}

_BYTE *LibCall_BuildCommand(char a1, char a2, char a3, const void *a4, size_t a5, void *a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_BuildCommand");
  }

  v12 = 0;
  if (a5)
  {
    v13 = a4 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13 && a6)
  {
    if (a5 >= 0xFFFFFFFFFFFFFFF8)
    {
      v12 = 0;
    }

    else
    {
      v12 = acm_mem_alloc_data(a5 + 8);
      acm_mem_alloc_info("<data>", v12, a5 + 8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 22, "LibCall_BuildCommand");
      if (v12)
      {
        *a6 = a5 + 8;
        *v12 = 1396920900;
        v12[4] = a1;
        v12[5] = a2;
        v12[6] = a3;
        v12[7] = 2;
        if (a5)
        {
          memcpy(v12 + 8, a4, a5);
        }
      }
    }
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: returning.\n", "ACM", "LibCall_BuildCommand");
  }

  return v12;
}

uint64_t sub_1F08()
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_17EB8();
    sub_17ED0();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  if (byte_35130)
  {
    v5 = 0;
  }

  else
  {
    v6 = IOServiceMatching("AppleCredentialManager");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (!MatchingService)
    {
      v9 = 70;
      v5 = 4294967291;
      goto LABEL_10;
    }

    v8 = MatchingService;
    v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_35134);
    if (v5)
    {
      v9 = 70;
      goto LABEL_10;
    }

    IOObjectRelease(v8);
    byte_35130 = 1;
  }

  v9 = 10;
LABEL_10:
  if (v9 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_17FE0();
    sub_17F60();
    sub_18A0();
    sub_17ED0();
    _os_log_impl(v10, v11, v12, v13, v14, 0x20u);
  }

  return v5;
}

void acm_mem_free_data(void *a1, rsize_t a2)
{
  if (a1)
  {
    sub_17D0(a1, a2);
    free(v3);
    v4 = qword_35118 - v2;
    if (qword_35118 < v2)
    {
      v4 = 0;
    }

    qword_35118 = v4;
  }
}

void sub_2180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a9 = *v22 - v25;
  v29 = *(v27 + 8 * v26);

  SerializeRequirement(v24, v29, v23 + v25, &a9, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_21AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14)
{
  a13 = 0u;
  a14 = 0u;

  return crypto_generateKeyFromSharedInfo(v14, a4, a5, a2, a3, a8, &a13);
}

const char *acm_mem_free_info(const char *result, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    v6 = qword_35110 - a3;
    if (qword_35110 < a3)
    {
      v6 = 0;
    }

    qword_35110 = v6;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v7 = "NULL";
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = "NULL";
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "NULL";
    }

    if (a6)
    {
      v7 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v8, a2, a3, qword_35110, 0, qword_35118, qword_35120, v9, a5, v7);
  }

  return result;
}

uint64_t sub_22D4()
{
  v3 = *(v2 + 8 * v1);
  v4 = *(v0 + 16);
  return v0;
}

uint64_t ACMContextGetTrackingNumber(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void ACMContextGetExternalForm(const void *a1, uint64_t a2)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v4, 0x16u);
  }

  if (a1 && a2)
  {
    if (!sub_1F08() && !sub_1ACC(a1, 19, 0, a1, 0x10uLL, 0, 0))
    {
      (*(a2 + 16))(a2, a1, 16);
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  sub_18014(a2);
LABEL_9:
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", &v4, 0x16u);
  }
}

void ACMRequirementGetSubrequirements(int *a1, uint64_t a2)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_17EB8();
    sub_17ED0();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  if (a1 && a2)
  {
    v9 = *a1;
    if (*a1 == 4)
    {
      if (a1[4])
      {
        v16 = 0;
        do
        {
          v17 = sub_22D4();
          v18(v17);
          ++v16;
        }

        while (v16 < a1[4]);
      }
    }

    else if (v9 == 5)
    {
      if (a1[4])
      {
        v13 = 0;
        do
        {
          v14 = sub_22D4();
          v15(v14);
          ++v13;
        }

        while (v13 < a1[4]);
      }
    }

    else if (v9 == 7 && a1[5])
    {
      v10 = 0;
      do
      {
        v11 = sub_22D4();
        v12(v11);
        ++v10;
      }

      while (v10 < a1[5]);
    }
  }

  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_17EB8();
    sub_17ED0();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
  }
}

id sub_26D8()
{
  if (qword_350A8 != -1)
  {
    sub_18DE4();
  }

  v1 = qword_350B0;

  return v1;
}

unsigned int *LibCall_ACMRequirementGetType(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t LibCall_ACMRequirementGetState(uint64_t result)
{
  if (result)
  {
    return *(result + 4);
  }

  return result;
}

uint64_t ACMContextDelete(_DWORD *a1, int a2)
{
  v4 = byte_350A1;
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
    v4 = byte_350A1;
  }

  if (a1 && v4 <= 0x28 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = "NO";
    *buf = 136315906;
    v12 = "ACMLib";
    v14 = "ACMContextDelete";
    v13 = 2080;
    if (a2)
    {
      v6 = "YES";
    }

    v15 = 1024;
    LODWORD(v16[0]) = v5;
    WORD2(v16[0]) = 2080;
    *(v16 + 6) = v6;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] deleted (contextDestroyed=%s).\n", buf, 0x26u);
  }

  v10 = a1;
  v7 = LibCall_ACMContextDelete(sub_1908, &v10, a1, a2);
  if (v7)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    v15 = 2048;
    v16[0] = v7;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v7;
}

uint64_t LibCall_ACMContextDelete(void (*a1)(uint64_t, uint64_t, void, void *, uint64_t, void, void), uint64_t a2, void *a3, int a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextDelete");
  }

  if (a1 && a3)
  {
    if (a4)
    {
      a1(a2, 2, 0, a3, 16, 0, 0);
    }

    goto LABEL_7;
  }

  if (a3)
  {
LABEL_7:
    acm_mem_free_info("ACMHandleWithPayload", a3, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 172, "LibCall_ACMContextDelete");
    acm_mem_free(a3, 0x14uLL);
    v8 = 0;
    v9 = 10;
    goto LABEL_8;
  }

  v9 = 70;
  v8 = 4294967293;
LABEL_8:
  if (v9 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextDelete", v8);
  }

  return v8;
}

void acm_mem_free(void *a1, rsize_t a2)
{
  if (a1)
  {
    sub_17D0(a1, a2);
    free(v3);
    v4 = qword_35120 - v2;
    if (qword_35120 < v2)
    {
      v4 = 0;
    }

    qword_35120 = v4;
  }
}

void sub_3C84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 128));
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_3CC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKey:@"Result"];
  if ([*(a1 + 32) _shouldRetryEvaluationForError:v5 options:*(a1 + 40)])
  {
    [*(a1 + 48) setRetryingForError:v5];
    v7 = *(a1 + 80);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [v8 evaluatePolicy:v7 options:v9 uiDelegate:v10 originator:WeakRetained request:*(a1 + 48) reply:*(a1 + 64)];
  }

  else
  {
    if (!a2 && [*(a1 + 32) _isBiometricOnlyPolicy:*(a1 + 80)] && objc_msgSend(v5, "code") == -5)
    {
      v12 = +[BiometryHelper sharedInstance];
      v26 = 0;
      v13 = [v12 deviceHasBiometryWithError:&v26];
      v14 = v26;

      if (v13)
      {
        v15 = +[BiometryHelper sharedInstance];
        v16 = objc_loadWeakRetained((a1 + 72));
        v17 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v16 userId]);
        v25 = v14;
        v18 = [v15 isEnrolled:v17 error:&v25];
        v19 = v25;

        if (v18)
        {
          v14 = v5;
        }

        else
        {
          v14 = v19;
        }
      }

      v20 = [v14 userInfo];
      v21 = [NSMutableDictionary dictionaryWithDictionary:v20];

      v22 = +[BiometryHelper sharedInstance];
      v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v22 biometryType]);
      [v21 setObject:v23 forKey:LAErrorInfoBiometryType];

      v24 = +[LAErrorHelper errorWithCode:userInfo:](LAErrorHelper, "errorWithCode:userInfo:", [v14 code], v21);

      v5 = v24;
    }

    (*(*(a1 + 64) + 16))();
  }
}

id sub_3F48(uint64_t a1)
{
  v2 = [LACMutablePasscodeVerificationRequest alloc];
  v3 = [*(a1 + 32) cachedExternalizedContext];
  v4 = [v3 externalizedContext];
  v5 = *(a1 + 40);
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v6 = [v2 initWithPasscode:0 acmContext:v4 rawAuditToken:v9];

  v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 40) userId]);
  [v6 setUserId:v7];

  [v6 setPolicy:*(a1 + 64)];
  [v6 setOptions:*(a1 + 48)];
  [v6 setBioLockoutRecovery:{objc_msgSend(*(a1 + 56), "isRecoveringFromBiolockout")}];

  return v6;
}

void sub_4054(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, void *a5)
{
  v9 = a5;
  if (!v9)
  {
    [*(a1 + 32) setImmediateSuccess:a3];
    v10 = *(a1 + 40);
    v11 = [NSString stringWithFormat:@"ACM verification of %s", [LACACMHelper acmPolicyForPolicy:*(a1 + 80)]];
    LOBYTE(v10) = [v10 _shouldFailOnAcmStatus:a2 action:v11 failureHandler:*(a1 + 72)];

    if (v10)
    {
      goto LABEL_14;
    }

    if (a2 == -2)
    {
      v12 = [LAErrorHelper errorWithCode:-10 message:@"ACM context not found."];
      v13 = [*(a1 + 48) callback];
      [v13 invalidatedWithError:v12];

      (*(*(a1 + 72) + 16))();
      goto LABEL_14;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = a3;
    if (a3 && (*(a1 + 80) != 1004 || (v19[0] = _NSConcreteStackBlock, v19[1] = 3221225472, v19[2] = sub_4310, v19[3] = &unk_30650, v19[4] = &v20, ACMRequirementGetSubrequirements(a4, v19), (v21[3] & 1) != 0)))
    {
      v14 = [*(a1 + 40) resultInfo];
      v15 = [v14 objectForKey:@"Result"];

      v16 = *(a1 + 72);
      if (!v15)
      {
        (*(v16 + 16))(*(a1 + 72), &off_32B40, 0);
        goto LABEL_13;
      }

      v17 = [*(a1 + 40) resultInfo];
      (*(v16 + 16))(v16, v17, 0);
    }

    else
    {
      v17 = [*(a1 + 40) createInternalInfoWithPolicy:*(a1 + 80) policyOptions:*(a1 + 56) request:*(a1 + 32) originator:*(a1 + 48)];
      v18 = *(a1 + 32);
      [*(a1 + 40) _handleAcmRequirement:a4 policy:*(a1 + 80) constraintData:0 operation:0 internalInfo:v17 uiDelegate:*(a1 + 64) originator:*(a1 + 48) request:v18 reply:*(a1 + 72)];
    }

LABEL_13:
    _Block_object_dispose(&v20, 8);
    goto LABEL_14;
  }

  (*(*(a1 + 72) + 16))();
LABEL_14:
}

void sub_42F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4310(uint64_t a1, uint64_t a2)
{
  if ([LACACMHelper requirement:a2 hasFlag:2 andType:3])
  {
    v8 = 0;
    v3 = +[BiometryHelper sharedInstance];
    v7 = 0;
    v4 = [v3 userPresent:&v8 error:&v7];
    v5 = v7;
    v6 = v8;

    if (!v4 || (v6 & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }
}

void sub_4E90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = a3;
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) setPIN:v5];
    }

    else
    {
      v12 = *(a1 + 56);
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) setPassword:v5];
      }
    }

    v17 = @"Result";
    v15[0] = &off_326B0;
    v15[1] = &off_326C8;
    v13 = *(a1 + 32);
    v16[0] = &__kCFBooleanTrue;
    v16[1] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v18 = v14;
    v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *(v9 + 16);
    v11 = a3;
    v10(v9, 0, v11);
  }
}

void sub_5010(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 objectForKeyedSubscript:@"PIN"];
    v4 = *(a1 + 32);
    v8 = v3;
    if (v3)
    {
      (*(v4 + 16))(v4, v3, 0);
    }

    else
    {
      v7 = [LAErrorHelper internalErrorWithMessage:@"Missing CTK PIN"];
      (*(v4 + 16))(v4, 0, v7);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

void sub_51C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = LACLogACM();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = NSStringFromACMRequirement();
    v10 = 136315394;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&def_1FF08, v7, OS_LOG_TYPE_DEFAULT, "Policy '%s' is requesting: %@", &v10, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_55A0(uint64_t a1)
{
  v1 = [*(a1 + 32) userInfo];
  v2 = [v1 objectForKeyedSubscript:LAErrorSubcodeKey];

  if (v2)
  {
    v3 = [&off_32B90 containsObject:v2] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void sub_5A2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_5A50(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [LAErrorHelper error:v12 hasCode:-1004];
  v14 = &LACLogACM_ptr;
  if (v13)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_5DB0;
    v35 = sub_5DC0;
    v36 = +[NSArray array];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_5DC8;
    v30[3] = &unk_30740;
    v30[4] = &v31;
    [v10 enumerateKeysAndObjectsUsingBlock:v30];
    v15 = [NSMutableDictionary dictionaryWithObject:v32[5] forKey:LAAvailableMechanisms];
    [v15 setObject:v11 forKeyedSubscript:LAMechanismTree];
    v16 = +[BiometryHelper sharedInstance];
    v17 = [*(a1 + 32) objectForKeyedSubscript:@"UserId"];
    v18 = [v16 biometryDatabaseHashForUser:v17 error:0];

    if (v18)
    {
      [v15 setObject:v18 forKey:LABiometryDatabaseHash];
    }

    v19 = [v12 userInfo];
    v20 = [NSDictionary dictionaryByMerging:v19 with:v15];

    v21 = [LAErrorHelper errorWithCode:-1004 userInfo:v20];

    _Block_object_dispose(&v31, 8);
    v12 = v21;
    v14 = &LACLogACM_ptr;
  }

  if (v12)
  {
    v22 = v14[176];
    v23 = [v12 userInfo];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = &__NSDictionary0__struct;
    }

    v26 = [v22 dictionaryWithDictionary:v25];

    v27 = +[BiometryHelper sharedInstance];
    v28 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v27 biometryType]);
    [v26 setObject:v28 forKey:LAErrorInfoBiometryType];

    v29 = +[LAErrorHelper errorWithCode:userInfo:](LAErrorHelper, "errorWithCode:userInfo:", [v12 code], v26);
  }

  else
  {
    v29 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_5D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_5DB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_5DC8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  if ([a3 BOOLValue])
  {
    v5 = [*(*(*(a1 + 32) + 8) + 40) arrayByAddingObject:v8];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_5E48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 availableMechanisms];
  v8 = [v5 mechanismTree];
  v9 = [v5 internalInfo];
  v10 = *(a1 + 32);
  if (v10)
  {
    [v10 event:0 params:v7 reply:&stru_307A8];
  }

  v11 = [v5 mechanism];
  if (v11)
  {
    v12 = *(a1 + 40);
    v15 = *(v12 + 40);
    v13 = *(a1 + 96);
    v14 = *(a1 + 48);
    v17 = *(a1 + 56);
    v18 = *(a1 + 32);
    v16 = *(a1 + 64);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_6098;
    v19[3] = &unk_307F8;
    v19[4] = v12;
    v28[1] = v13;
    v20 = *(a1 + 72);
    v21 = *(a1 + 48);
    v22 = v9;
    v23 = *(a1 + 32);
    objc_copyWeak(v28, (a1 + 88));
    v24 = *(a1 + 64);
    v25 = v7;
    v27 = *(a1 + 80);
    v26 = v8;
    [v15 authenticateForPolicy:v13 constraintData:v14 internalInfo:v22 uiDelegate:v18 originator:v17 request:v16 mechanism:v11 reply:v19];

    objc_destroyWeak(v28);
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void sub_6098(uint64_t a1, void *a2, void *a3)
{
  v15 = *(a1 + 112);
  v16 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v17 = [v6 objectForKeyedSubscript:@"ConstraintData"];
  v7 = [v17 objectForKeyedSubscript:*(a1 + 40)];
  v8 = v7;
  if (!v7)
  {
    v8 = *(a1 + 48);
  }

  v9 = *(a1 + 40);
  v13 = *(a1 + 64);
  v14 = *(a1 + 56);
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_6208;
  v18[3] = &unk_307D0;
  v21 = *(a1 + 96);
  v19 = *(a1 + 80);
  v20 = *(a1 + 88);
  [v16 finishedAuthenticationForPolicy:v15 constraintData:v8 operation:v9 internalInfo:v14 uiDelegate:v13 originator:WeakRetained request:v11 availabilityEvents:v12 result:v6 error:v5 reply:v18];
}

uint64_t sub_635C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _unsatisfiedListForRequirement:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_6920(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 120));
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_6950(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v7 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_6A7C;
    v9[3] = &unk_30890;
    objc_copyWeak(&v12, (a1 + 64));
    v10 = v5;
    v11 = *(a1 + 32);
    [v7 enumerateKeysAndObjectsUsingBlock:v9];

    objc_destroyWeak(&v12);
  }

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = &__NSDictionary0__struct;
  }

  [*(a1 + 48) setResultInfo:v8];
  (*(*(a1 + 56) + 16))();
}

void sub_6A7C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [v3 integerValue];
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"Result"];
  v7 = [WeakRetained _isEvent:v5 contributingToResult:v6];

  v12 = &off_32860;
  v8 = [NSNumber numberWithBool:v7];
  v13 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

  v10 = *(a1 + 40);
  v11 = [v3 integerValue];

  [v10 event:v11 params:v9 reply:&stru_30868];
}

void sub_6BB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  v11 = a6;
  if (v11)
  {
    v12 = *(*(a1 + 96) + 16);
LABEL_3:
    v12();
    goto LABEL_4;
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 104);
  if (v14)
  {
    v15 = [NSString stringWithUTF8String:[LACACMHelper acmPolicyForPolicy:*(a1 + 104)]];
  }

  else
  {
    v15 = *(a1 + 40);
  }

  v16 = [NSString stringWithFormat:@"Final ACM verification of %@", v15];
  v17 = [v13 _shouldFailOnAcmStatus:a3 action:v16 failureHandler:*(a1 + 96)];

  if (v14)
  {
  }

  if ((v17 & 1) == 0)
  {
    if ((a4 & 1) != 0 || [*(a1 + 48) isPurposeSecureUIRecording])
    {
      goto LABEL_13;
    }

    if (*(a1 + 56))
    {
      v19 = [LACACMHelper requirement:a5 uint32Property:700];
      if ([v19 unsignedIntValue] <= 1)
      {
      }

      else
      {
        v20 = [LACACMHelper requirement:a5 hasState:1 andType:8];

        if (v20)
        {
LABEL_13:
          v18 = *(a1 + 56);
          v12 = *(*(a1 + 96) + 16);
          goto LABEL_3;
        }
      }
    }

    if ([LACACMHelper requirement:a5 hasFlag:16 andType:3])
    {
      v21 = *(a1 + 96);
      v22 = [LAErrorHelper errorWithCode:-1022 message:@"Failed to match the bound identity."];
      (*(v21 + 16))(v21, 0, v22);
LABEL_23:

      goto LABEL_4;
    }

    v23 = [*(a1 + 64) objectForKeyedSubscript:@"SecondAcmRound"];
    v24 = [v23 BOOLValue];

    if (v24)
    {
      v25 = *(a1 + 96);
      v22 = [*(a1 + 32) _unsatisfiedListForRequirement:a5];
      v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"ACM %s succeeded, but ACM is still requesting %@ on ACMContext %u after a retry.", a2, v22, [*(a1 + 32) instanceId]);
      v27 = [LAErrorHelper internalErrorWithMessage:v26];
      (*(v25 + 16))(v25, 0, v27);

      goto LABEL_23;
    }

    v28 = [*(a1 + 48) log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = [*(a1 + 32) instanceId];
      v32 = [*(a1 + 32) _unsatisfiedListForRequirement:a5];
      *buf = 136315650;
      v34 = a2;
      v35 = 1024;
      v36 = v31;
      v37 = 2114;
      v38 = v32;
      _os_log_error_impl(&def_1FF08, v28, OS_LOG_TYPE_ERROR, "ACM verification not satisfied after %s on ACMContext %u '%{public}@', retrying second round", buf, 0x1Cu);
    }

    [*(a1 + 32) _removeRequestedCredentials:a5];
    v29 = [NSMutableDictionary dictionaryWithDictionary:*(a1 + 64)];
    [v29 setObject:&__kCFBooleanTrue forKey:@"SecondAcmRound"];
    v30 = *(a1 + 48);
    [*(a1 + 32) _handleAcmRequirement:a5 policy:*(a1 + 104) constraintData:*(a1 + 72) operation:*(a1 + 40) internalInfo:v29 uiDelegate:*(a1 + 80) originator:*(a1 + 88) request:v30 reply:*(a1 + 96)];
  }

LABEL_4:
}

uint64_t sub_7098(uint64_t a1)
{
  v1 = *(a1 + 32) - 1;
  if (v1 > 8)
  {
    return 0;
  }

  else
  {
    return qword_260B0[v1];
  }
}

void sub_7950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak((v33 - 176));
  _Unwind_Resume(a1);
}

void sub_7970(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"Result"];
  v9 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  (*(v4 + 16))(v4, v8, v5);
}

void sub_7A00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && (v7 = *(a1 + 32), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![*(a1 + 32) integerValue])
  {
    v14 = *(a1 + 48);
    v15 = *(a1 + 40);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    WeakRetained = objc_loadWeakRetained((a1 + 104));
    v12 = *(a1 + 72);
    v11 = *(a1 + 80);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_7B6C;
    v16[3] = &unk_309A0;
    v13 = *(a1 + 88);
    v18 = *(a1 + 96);
    v17 = v5;
    [v15 evaluateACL:v14 operation:@"oe" options:v8 uiDelegate:v9 originator:WeakRetained request:v12 callerName:v11 callerBundleId:v13 reply:v16];
  }

  else
  {
    (*(*(a1 + 96) + 16))();
  }
}

void sub_7B6C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (!v11)
  {
    v9 = *(*(a1 + 40) + 16);
LABEL_7:
    v9();
    goto LABEL_8;
  }

  if (![v11 count])
  {
    v10 = *(a1 + 32);
    v9 = *(*(a1 + 40) + 16);
    goto LABEL_7;
  }

  v6 = [*(a1 + 32) count];
  v7 = *(a1 + 40);
  if (v6)
  {
    v8 = [NSDictionary dictionaryByMerging:*(a1 + 32) with:v11];
    (*(v7 + 16))(v7, v8, 0);
  }

  else
  {
    (*(v7 + 16))(*(a1 + 40), v11, 0);
  }

LABEL_8:
}

void sub_80B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v10 = 0;
  v5 = [v2 evaluateAccessControl:v3 forOperation:v4 error:&v10];
  v6 = v10;
  *(*(a1 + 56) + 64) = 0;
  if (v5)
  {
    v7 = [*(a1 + 64) log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&def_1FF08, v7, OS_LOG_TYPE_DEFAULT, "TKClientTokenSession evaluated ACL successfully.", v9, 2u);
    }

    v8 = *(*(a1 + 72) + 16);
  }

  else
  {
    v8 = *(*(a1 + 72) + 16);
  }

  v8();
}

void sub_8708(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_87DC;
  v10[3] = &unk_306C8;
  v9 = *(a1 + 96);
  v11 = *(a1 + 104);
  [v1 _handleCTKACL:v2 tokenId:v3 operation:v4 options:v5 originator:v6 request:v7 callerName:v8 callerBundleId:v9 reply:v10];
}

void sub_87DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[DaemonUtils queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_88C8;
  block[3] = &unk_30A18;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_8AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 96));
  _Unwind_Resume(a1);
}

void sub_8B08(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v13 = *(*(a1 + 88) + 16);
LABEL_8:
    v13();
    goto LABEL_9;
  }

  v7 = *(a1 + 32);
  if (!SecAccessControlGetRequirePassword())
  {
    v13 = *(*(a1 + 88) + 16);
    goto LABEL_8;
  }

  v8 = *(a1 + 40);
  v14 = *(a1 + 56);
  v15 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_8C7C;
  v16[3] = &unk_30A68;
  v12 = *(a1 + 80);
  v18 = *(a1 + 88);
  v17 = v5;
  LODWORD(v8) = [v8 _validatePassword:1 options:v15 uiDelegate:v14 originator:WeakRetained request:v10 callerName:v11 callerBundleId:v12 reply:v16];

  if (v8)
  {
    (*(*(a1 + 88) + 16))();
  }

LABEL_9:
}

uint64_t sub_8C7C(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4);
}

uint64_t sub_9418(uint64_t a1, id a2)
{
  if (*(a1 + 32))
  {
    v4 = a2;
    **(a1 + 32) = a2;
  }

  return 0;
}

void sub_9B3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v6 = *(a1 + 128);
    v7 = *(*(a1 + 128) + 16);

    v7();
    return;
  }

  [*(a1 + 32) setImmediateSuccess:?];
  if (a2)
  {
    if (a2 == -2)
    {
      v32 = [LAErrorHelper errorWithCode:-10 message:@"ACM context not found."];
      v13 = [*(a1 + 48) callback];
      [v13 invalidatedWithError:v32];

      (*(*(a1 + 128) + 16))();
      goto LABEL_16;
    }

    if (a2 == -3)
    {
      v11 = *(a1 + 128);
      v32 = [NSString stringWithFormat:@"Invalid constraint: %@", *(a1 + 40)];
      v12 = [LAErrorHelper parameterErrorWithMessage:v32];
      (*(v11 + 16))(v11, 0, v12);

LABEL_16:

      return;
    }

    v16 = *(a1 + 128);
    v32 = [NSNumber numberWithInt:a2];
    v17 = [NSString stringWithFormat:@"ACM constraint verification failed: %@", v32];
    v18 = [LAErrorHelper internalErrorWithMessage:v17];
    (*(v16 + 16))(v16, 0, v18);

LABEL_15:
    goto LABEL_16;
  }

  if (*(a1 + 140) == 1)
  {
    v14 = *(a1 + 56);
    v15 = *(*(a1 + 128) + 16);

    v15();
  }

  else
  {
    if (a3)
    {
      v19 = *(a1 + 128);
      v32 = [*(a1 + 64) resultInfo];
      v17 = [v32 objectForKeyedSubscript:@"Result"];
      if (v17)
      {
        v20 = [*(a1 + 64) resultInfo];
        (*(v19 + 16))(v19, v20, 0);
      }

      else
      {
        (*(v19 + 16))(v19, &off_32B68, 0);
      }

      goto LABEL_15;
    }

    v21 = [*(a1 + 64) createInternalInfo:*(a1 + 72) skipCallerIdentification:*(a1 + 80) != 0 callerBundleId:*(a1 + 88) request:*(a1 + 32) originator:*(a1 + 48)];
    v22 = v21;
    v23 = *(a1 + 80);
    if (v23)
    {
      [v21 setObject:v23 forKey:@"CallerName"];
    }

    v24 = *(a1 + 88);
    if (v24)
    {
      [v22 setObject:v24 forKey:@"CallerId"];
    }

    if (*(a1 + 136))
    {
      v25 = [NSNumber numberWithUnsignedInt:?];
      [v22 setObject:v25 forKey:@"GlobalCredential"];
    }

    [v22 setObject:*(a1 + 40) forKey:@"Constraint"];
    [v22 setObject:*(a1 + 96) forKey:@"ConstraintData"];
    [v22 setObject:*(a1 + 104) forKey:@"ConstraintOp"];
    v26 = *(a1 + 64);
    v27 = *(a1 + 96);
    v28 = *(a1 + 104);
    v29 = *(a1 + 112);
    v30 = *(a1 + 48);
    v31 = *(a1 + 32);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_A034;
    v33[3] = &unk_30AD8;
    v33[4] = v26;
    v34 = *(a1 + 72);
    v35 = *(a1 + 32);
    v36 = *(a1 + 104);
    v37 = *(a1 + 120);
    v38 = *(a1 + 112);
    v39 = *(a1 + 48);
    v43 = *(a1 + 140);
    v40 = *(a1 + 80);
    v41 = *(a1 + 88);
    v42 = *(a1 + 128);
    [v26 _handleAcmRequirement:a4 policy:0 constraintData:v27 operation:v28 internalInfo:v22 uiDelegate:v29 originator:v30 request:v31 reply:v33];
  }
}

void sub_A034(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([*(a1 + 32) _shouldRetryEvaluationForError:v5 options:*(a1 + 40)])
  {
    [*(a1 + 48) setRetryingForError:v5];
    LOBYTE(v6) = *(a1 + 112);
    [*(a1 + 32) _evaluateOperation:*(a1 + 56) aclRef:*(a1 + 64) options:*(a1 + 40) uiDelegate:*(a1 + 72) originator:*(a1 + 80) request:*(a1 + 48) validate:v6 callerName:*(a1 + 88) callerBundleId:*(a1 + 96) reply:*(a1 + 104)];
  }

  else
  {
    (*(*(a1 + 104) + 16))();
  }
}

void sub_A438(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_A45C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v13 = *(*(a1 + 80) + 16);
LABEL_8:
    v13();
    goto LABEL_9;
  }

  v7 = *(a1 + 96);
  if (!SecAccessControlGetRequirePassword())
  {
    v13 = *(*(a1 + 80) + 16);
    goto LABEL_8;
  }

  v8 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_A5D0;
  v16[3] = &unk_30A68;
  v12 = *(a1 + 72);
  v18 = *(a1 + 80);
  v17 = v5;
  LODWORD(v8) = [v8 _validatePassword:0 options:v15 uiDelegate:v14 originator:WeakRetained request:v10 callerName:v11 callerBundleId:v12 reply:v16];

  if (v8)
  {
    (*(*(a1 + 80) + 16))();
  }

LABEL_9:
}

uint64_t sub_A5D0(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4);
}

void sub_A8F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    if ([v3 count])
    {
      v7 = *(a1 + 40);
      v8 = v3;
      v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
      v6 = [v4 dictionaryByMergingWith:v5];

      v4 = v6;
    }

    [*(a1 + 48) _validateOperations:*(a1 + 56) aclRef:*(a1 + 64) evaluateOperation:*(a1 + 72) options:*(a1 + 80) uiDelegate:*(a1 + 88) originator:*(a1 + 96) request:*(a1 + 104) currentResult:v4 reply:*(a1 + 112)];
  }

  else
  {
    (*(*(a1 + 112) + 16))();
  }
}

void sub_AFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak((v31 - 104));
  _Unwind_Resume(a1);
}

void sub_AFFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:&off_328D8];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    v8 = +[DaemonUtils sharedInstance];
    v9 = [v8 serverQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_B1C4;
    block[3] = &unk_30B78;
    v18 = v3;
    dispatch_after(v7, v9, block);
  }

  v10 = *(a1 + 48);
  v11 = *(*(a1 + 40) + 40);
  v12 = *(a1 + 56);
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_B230;
  v15[3] = &unk_30BA0;
  v15[4] = *(a1 + 40);
  v14 = *(a1 + 64);
  v16 = *(a1 + 72);
  [v11 authenticateForPolicy:0 constraintData:0 internalInfo:v10 uiDelegate:v12 originator:WeakRetained request:v14 mechanism:v3 reply:v15];
}

void sub_B1C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [LAErrorHelper errorWithCode:-1003 message:@"Timeout expired."];
  [v1 finishRunWithResult:0 error:v2];
}

uint64_t sub_B230(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ++*(*(a1 + 32) + 16);
  }

  return (*(*(a1 + 40) + 16))();
}

id sub_BB60(uint64_t a1)
{
  v2 = [LACMutablePasscodeVerificationRequest alloc];
  v3 = [LACSecureData secureDataWithData:*(a1 + 32)];
  v4 = [*(a1 + 40) cachedExternalizedContext];
  v5 = [v4 externalizedContext];
  v6 = *(a1 + 48);
  if (v6)
  {
    [v6 auditToken];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  v7 = [v2 initWithPasscode:v3 acmContext:v5 rawAuditToken:v11];

  v8 = [*(a1 + 56) objectForKeyedSubscript:&off_328A8];
  if (v8)
  {
    [v7 setUserId:v8];
  }

  else
  {
    v9 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 48) userId]);
    [v7 setUserId:v9];
  }

  [v7 setPolicy:0];
  [v7 setOptions:*(a1 + 56)];
  [v7 setBioLockoutRecovery:0];

  return v7;
}

id sub_C1CC(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  [*(a1 + 32) getUUIDBytes:v3];
  v1 = [LACSecureData secureDataWithBytes:v3 length:16];

  return v1;
}

void sub_C3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = [NSData dataWithBytes:a2 length:a3];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    v6 = [NSString stringWithFormat:@"ACMContextGetExternalForm failed."];
    v5 = [LAErrorHelper internalErrorWithMessage:?];
    (*(v4 + 16))(v4, 0, v5);
  }
}

void sub_C5D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_C5FC(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _setOptions:*(a1 + 32) forInternalOperation:*(a1 + 56) originatorId:*(a1 + 64) reply:*(a1 + 40)];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void sub_C894(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    if (v10 && (+[LAUtils isDaytona]& 1) == 0)
    {
      v17 = *(a1 + 32);
      v24 = 0;
      v12 = [v17 _setPragueInstructions:v10 signature:v11 error:&v24];
      v13 = v24;
      if (a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      if (a3)
      {
LABEL_6:
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_CA74;
        v20[3] = &unk_30C90;
        v23 = v12;
        v16 = *(a1 + 56);
        v22 = *(a1 + 48);
        v21 = v13;
        [v14 _setLegacyInstructions:v15 originatorId:v16 reply:v20];

LABEL_12:
        goto LABEL_13;
      }
    }

    v18 = *(a1 + 48);
    if (v12)
    {
      (*(v18 + 16))(v18, 1, 0);
    }

    else if (v13)
    {
      (*(v18 + 16))(v18, 0, v13);
    }

    else
    {
      v19 = [LAErrorHelper parameterErrorWithMessage:@"No instructions."];
      (*(v18 + 16))(v18, 0, v19);
    }

    goto LABEL_12;
  }

  (*(*(a1 + 48) + 16))();
LABEL_13:
}

void sub_CA74(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if ((a2 & 1) != 0 || *(a1 + 48) == 1)
  {
    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (!v5)
    {
      v7 = *(a1 + 32);
    }

    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

void sub_D23C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2 == -7)
  {
    v4 = [LAErrorHelper errorWithCode:-1008 message:@"Blob not found."];
    (*(v2 + 16))(v2, 0, v4);
  }

  else if (a2)
  {
    v4 = [NSString stringWithFormat:@"ACM failed to get ACL auth method: %d", a2];
    v3 = [LAErrorHelper internalErrorWithMessage:?];
    (*(v2 + 16))(v2, 0, v3);
  }

  else
  {
    v4 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
    (*(v2 + 16))(v2, v4, 0);
  }
}

void sub_D390(id a1)
{
  qword_350B0 = LALogForCategory();

  _objc_release_x1();
}

Class sub_D3CC(uint64_t a1)
{
  sub_D424();
  result = objc_getClass("TKTokenSmartCardPINAuthOperation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_350B8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_18F1C();
    return sub_D424();
  }

  return result;
}

uint64_t sub_D424()
{
  v3[0] = 0;
  if (!qword_350C0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_D524;
    v3[4] = &unk_30DA8;
    v3[5] = v3;
    v4 = off_30D90;
    v5 = 0;
    qword_350C0 = _sl_dlopen();
  }

  v0 = qword_350C0;
  v1 = v3[0];
  if (!qword_350C0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_D524(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_350C0 = result;
  return result;
}

Class sub_D598(uint64_t a1)
{
  sub_D424();
  result = objc_getClass("TKTokenPasswordAuthOperation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_350C8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_18F44();
    return sub_D5F0(v3);
  }

  return result;
}

Class sub_D5F0(uint64_t a1)
{
  sub_D424();
  result = objc_getClass("TKClientToken");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_350D0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_18F6C();
    return sub_D648(v3);
  }

  return result;
}

void *sub_D648(uint64_t a1)
{
  v2 = sub_D424();
  result = dlsym(v2, "TKAccessControlProtectionTokenIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_350D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_E670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_E6BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_E6D4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v12 = v4;
  v6 = [v4 creationTime];
  v7 = [v5 laterDate:v6];
  v8 = *(*(*(a1 + 32) + 8) + 40);

  if (v7 == v8)
  {
    v9 = [v12 creationTime];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_EAF0(id a1)
{
  qword_350E0 = objc_opt_new();

  _objc_release_x1();
}

id sub_F370(uint64_t a1)
{
  v2 = [[NSMutableDictionary alloc] initWithDictionary:*(a1 + 32)];
  [v2 setObject:*(a1 + 40) forKeyedSubscript:@"AcmContextRecord"];

  return v2;
}

id sub_10398(uint64_t a1)
{
  v2 = [LACACMHelper requirement:*(a1 + 48) uint32Property:305];
  v3 = v2;
  if (v2)
  {
    if ([v2 unsignedIntValue])
    {
      v4 = [*(a1 + 32) log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v7 = 138543618;
        v8 = v5;
        v9 = 2114;
        v10 = v3;
        _os_log_impl(&def_1FF08, v4, OS_LOG_TYPE_DEFAULT, "Unbound identity has to be resolved with %{public}@, bind offset: %{public}@", &v7, 0x16u);
      }
    }

    else
    {

      v3 = 0;
    }
  }

  return v3;
}

id sub_104A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 eventIdentifier]);
    LODWORD(v5) = [v5 containsObject:v6];

    if (!v5)
    {
      v7 = 0;
      goto LABEL_16;
    }

    if (*(a1 + 56))
    {
      [v4 postCompanion];
    }

    else
    {
      [v4 preCompanion];
    }
    v8 = ;

    v9 = [*(a1 + 40) log];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!v8)
    {
      if (v10)
      {
        v15 = *(a1 + 48);
        if (*(a1 + 56))
        {
          v16 = "post";
        }

        else
        {
          v16 = "pre";
        }

        v18 = 138543874;
        v19 = v15;
        v20 = 2082;
        v21 = v16;
        v22 = 2114;
        v23 = v4;
        _os_log_impl(&def_1FF08, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ will become a %{public}s-companion of %{public}@", &v18, 0x20u);
      }

      v17 = *(a1 + 48);
      if (*(a1 + 56) == 1)
      {
        [v4 setPostCompanion:v17];
      }

      else
      {
        [v4 setPreCompanion:v17];
      }

      [*(a1 + 48) setParent:v4];
      v13 = v4;
      goto LABEL_15;
    }

    if (v10)
    {
      v11 = *(a1 + 48);
      if (*(a1 + 56))
      {
        v12 = "post";
      }

      else
      {
        v12 = "pre";
      }

      v18 = 138543874;
      v19 = v11;
      v20 = 2114;
      v21 = v4;
      v22 = 2080;
      v23 = v12;
      _os_log_impl(&def_1FF08, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ will become a standalone mechanism because %{public}@ already has a %s-companion", &v18, 0x20u);
    }
  }

  v13 = *(a1 + 48);
LABEL_15:
  v7 = v13;
LABEL_16:

  return v7;
}

uint64_t sub_106DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_106F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [NSData dataWithBytes:a2 length:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return _objc_release_x1();
}

void sub_110F4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_11124(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedInt:ACMRequirementGetType(a2, a2)];
  [v2 addObject:v3];
}

void sub_11190(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 88) + 8) + 24);
  v26 = 0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 104);
  v8 = *(a1 + 56);
  v25 = 0;
  v9 = [v4 _nonUiMechanismForACMRequirement:a2 acmContextRecord:v5 policy:v7 internalInfo:v6 request:v8 state:&v26 error:&v25];
  v10 = v25;
  v12 = v10;
  if (!v9)
  {
    v15 = v10;
    goto LABEL_20;
  }

  v13 = *(a1 + 56);
  v24 = v10;
  v14 = [v9 bestEffortAvailableMechanismForRequest:v13 error:&v24];
  v15 = v24;

  if (v14)
  {
    goto LABEL_5;
  }

  if (([v9 canRecoverFromAvailabilityError:v15 request:*(a1 + 56)] & 1) == 0)
  {

LABEL_20:
    Type = ACMRequirementGetType(a2, v11);
    if (ACMRequirementGetState(a2, v21) == 2 || Type == 8)
    {
      v9 = 0;
      goto LABEL_24;
    }

    v9 = 0;
LABEL_25:
    v19 = v26;
    goto LABEL_26;
  }

  v15 = 0;
LABEL_5:
  v16 = v26;
  v17 = v26 == 1;
  if (*(a1 + 104) == 1004)
  {
    v18 = [LACACMHelper requirement:a2 hasFlag:2 andType:3];
    if (v16 == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v18;
    }

    v16 = v26;
  }

  if (v16 == 2)
  {
    v17 |= [LACACMHelper requirement:a2 hasState:2 andType:11];
    if (*(a1 + 112) == 2)
    {
      if ([*(a1 + 64) containsObject:&off_32A10])
      {
        if (!(v17 & 1 | (([*(a1 + 56) customUI] & 1) == 0)))
        {
          goto LABEL_14;
        }

        goto LABEL_17;
      }
    }
  }

  if (v17)
  {
LABEL_17:
    [*(a1 + 72) addObject:v9];
    goto LABEL_25;
  }

LABEL_14:
  v19 = v26;
  if (v26 == 2)
  {
LABEL_24:
    --**(a1 + 120);
    goto LABEL_25;
  }

LABEL_26:
  if (v19 == 3)
  {
    *(*(*(a1 + 96) + 8) + 24) = 1;
  }

  if (v15)
  {
    v22 = *(a1 + 80);
    v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 code]);
    [v22 setObject:v15 forKey:v23];
  }
}

void sub_118E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = a2;
  v6 = [*(a1 + 32) findMechanismWithEventIdentifier:{objc_msgSend(v8, "integerValue")}];

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  [*(a1 + 40) setObject:v7 forKey:v8];
}

BOOL sub_11BC0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:&off_32AA0];
    v7 = v6;
    if (v6 && [v6 count])
    {
      v8 = SecAccessControlGetConstraints();
      if (v8)
      {
        v9 = [NSMutableDictionary dictionaryWithDictionary:v8];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_11D94;
        v13[3] = &unk_30F30;
        v14 = v8;
        v16 = &v17;
        v10 = v9;
        v15 = v10;
        [v7 enumerateKeysAndObjectsUsingBlock:v13];
        if (!v18[3])
        {
          SecAccessControlSetConstraints();
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = v18[3];
  if (a3)
  {
    *a3 = v11;
  }

  else if (v11)
  {
    CFRelease(v18[3]);
  }

  _Block_object_dispose(&v17, 8);
  objc_autoreleasePoolPop(v5);

  return v11 == 0;
}

void sub_11D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_11D94(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (!*(a1 + 32))
  {
    v11 = *(*(a1 + 48) + 8);
    v12 = @"Invalid update request.";
LABEL_9:
    sub_11F4C(v12, -1000, (v11 + 24));
    *a4 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = objc_opt_class();
    if (v13 == objc_opt_class())
    {
      [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
      goto LABEL_10;
    }

    v11 = *(*(a1 + 48) + 8);
    v12 = @"Invalid update value type.";
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = *(*(a1 + 48) + 8);
    v12 = @"Invalid update value type, expecting dictionary.";
    goto LABEL_9;
  }

  [NSMutableDictionary dictionaryWithDictionary:v9];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_12028;
  v15 = v14[3] = &unk_30F08;
  v10 = v15;
  [v8 enumerateKeysAndObjectsUsingBlock:v14];
  [*(a1 + 40) setObject:v10 forKeyedSubscript:v7];

LABEL_10:
}

void sub_11F4C(void *a1, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v8 = NSDebugDescriptionErrorKey;
    v9 = a1;
    v5 = a1;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v7 = [NSError errorWithDomain:@"Error.LocalAuthentication.coreauthd_client" code:a2 userInfo:v6];

    *a3 = v7;
  }
}

BOOL sub_12034(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1229C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 138412802;
    *&v25[4] = a1;
    *&v25[12] = 2112;
    *&v25[14] = a3;
    v26 = 2112;
    v27 = a4;
    _os_log_impl(&def_1FF08, v13, OS_LOG_TYPE_DEFAULT, "LAEvaluateAndUpdateACL(%@, %@, %@)", v25, 0x20u);
  }

  v14 = sub_12658(a1, a6);
  if (!a1)
  {
    goto LABEL_13;
  }

  v15 = CFGetTypeID(a3);
  if (v15 != CFStringGetTypeID())
  {
    v21 = @"Invalid operation type.";
LABEL_12:
    sub_11F4C(v21, -1006, a6);
LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  if (!a2)
  {
    v21 = @"Invalid 'ACL' argument.";
    goto LABEL_12;
  }

  v16 = SecAccessControlCreateFromData();
  if (v16)
  {
    *v25 = 0;
    v17 = [v14 evaluateAccessControl:v16 aksOperation:a3 options:a4 error:v25];
    v18 = *v25;
    v19 = v18;
    v20 = v17 != 0;
    if (v17)
    {
      if (a5)
      {
        *a5 = SecAccessControlCopyData();
      }
    }

    else if (a6)
    {
      *a6 = v18;
    }
  }

  else
  {
    sub_11F4C(@"Invalid 'ACL' argument.", -1006, a6);
    v20 = 0;
  }

LABEL_14:
  v22 = sub_1229C();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    if (a6)
    {
      v23 = *a6;
    }

    else
    {
      v23 = 0;
    }

    *v25 = 67109378;
    *&v25[4] = v20;
    *&v25[8] = 2112;
    *&v25[10] = v23;
    _os_log_impl(&def_1FF08, v22, OS_LOG_TYPE_DEFAULT, "LAEvaluateAndUpdateACL -> %d, %@", v25, 0x12u);
  }

  objc_autoreleasePoolPop(v12);
  return v20;
}

id sub_1229C()
{
  if (qword_350F0 != -1)
  {
    sub_12E14();
  }

  v1 = qword_350F8;

  return v1;
}

uint64_t sub_122E0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_123C0;
  block[3] = &unk_30F58;
  v12 = a2;
  block[6] = a3;
  block[7] = a4;
  block[4] = &v13;
  block[5] = a1;
  dispatch_block_perform(DISPATCH_BLOCK_DETACHED, block);
  v9 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  objc_autoreleasePoolPop(v8);
  return v9;
}

void sub_123C0(uint64_t a1)
{
  v2 = sub_12424(*(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = v2 != 0;
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t sub_12424(void *a1, int a2, uint64_t a3, uint64_t *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = sub_1229C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 138412802;
    *&v18[4] = a1;
    v19 = 1024;
    LODWORD(v20[0]) = a2;
    WORD2(v20[0]) = 2112;
    *(v20 + 6) = a3;
    _os_log_impl(&def_1FF08, v9, OS_LOG_TYPE_DEFAULT, "LACopyResultOfPolicyEvaluation(%@, %d, %@)", v18, 0x1Cu);
  }

  v10 = sub_12658(a1, a4);
  v11 = v10;
  if (v10)
  {
    *v18 = 0;
    v12 = [v10 evaluatePolicy:a2 options:a3 error:v18];
    v13 = *v18;
    v14 = v13;
    if (a4 && !v12)
    {
      *a4 = v13;
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = sub_1229C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (a4)
    {
      v16 = *a4;
    }

    else
    {
      v16 = 0;
    }

    *v18 = 138412546;
    *&v18[4] = v12;
    v19 = 2112;
    v20[0] = v16;
    _os_log_impl(&def_1FF08, v15, OS_LOG_TYPE_DEFAULT, "LACopyResultOfPolicyEvaluation -> %@, %@", v18, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  return v12;
}

id sub_125E0(void *a1, uint64_t a2, int a3, uint64_t *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = sub_12658(a1, a4);
  v10 = [v9 setCredential:a2 type:a3];

  objc_autoreleasePoolPop(v8);
  return v10;
}

id sub_12658(void *a1, uint64_t *a2)
{
  v3 = a1;
  if (v3 && (sub_128A8(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    sub_11F4C(@"Invalid 'context' argument.", -1006, a2);
    v4 = 0;
  }

  return v4;
}

id sub_126D4(void *a1, int a2, uint64_t *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = sub_12658(a1, a3);
  v8 = [v7 isCredentialSet:a2];

  objc_autoreleasePoolPop(v6);
  return v8;
}

id sub_1273C(void *a1, uint64_t *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = a1;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = sub_1229C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_12E28(v9);
    }

    sub_11F4C(@"Invalid acmContext.", -1006, a2);
    v7 = 0;
  }

  else
  {
    v6 = [objc_alloc(sub_128A8()) initWithExternalizedContext:v5];
    v7 = v6;
    if (a2 && !v6)
    {
      v11 = NSDebugDescriptionErrorKey;
      v12 = @"Failed to create LAContext";
      v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      *a2 = [NSError errorWithDomain:@"Error.LocalAuthentication.coreauthd_client" code:-1000 userInfo:v8];
    }
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

id sub_128A8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_35100;
  v7 = qword_35100;
  if (!qword_35100)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_12C5C;
    v3[3] = &unk_30D70;
    v3[4] = &v4;
    sub_12C5C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_12970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_12988(void *a1, uint64_t *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sub_12658(a1, a2);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  v7 = [v5 externalizedContext];
  v8 = v7;
  if (a2 && !v7)
  {
    v11 = NSDebugDescriptionErrorKey;
    v12 = @"Failed to get externalized context from LAContext";
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *a2 = [NSError errorWithDomain:@"Error.LocalAuthentication.coreauthd_client" code:-1000 userInfo:v9];

LABEL_5:
    v8 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v8;
}

BOOL sub_12AA0(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t *a5)
{
  v10 = objc_autoreleasePoolPush();
  v11 = sub_12034(a1, a2, a3, a4, 0, a5);
  objc_autoreleasePoolPop(v10);
  return v11;
}

id sub_12B14(int a1, uint64_t a2, uint64_t *a3)
{
  v10 = a1;
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(sub_128A8()) initWithExternalizedContext:a2 userSession:&v10];
  v7 = v6;
  if (a3 && !v6)
  {
    v11 = NSDebugDescriptionErrorKey;
    v12 = @"Failed to create LAContext";
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *a3 = [NSError errorWithDomain:@"Error.LocalAuthentication.coreauthd_client" code:-1000 userInfo:v8];
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

void sub_12C18(id a1)
{
  qword_350F8 = os_log_create("com.apple.LocalAuthentication", "coreauthd_client");

  _objc_release_x1();
}

Class sub_12C5C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_35108)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_12DA0;
    v4[4] = &unk_30DA8;
    v4[5] = v4;
    v5 = off_30F98;
    v6 = 0;
    qword_35108 = _sl_dlopen();
    v2 = v4[0];
    if (qword_35108)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LAContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_12E6C();
  }

  qword_35100 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_12DA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_35108 = result;
  return result;
}

uint64_t DeserializeVerifyAclConstraint(int a1, uint64_t a2, unsigned int a3, _OWORD *a4, void *a5, _DWORD *a6, void *a7, unsigned int *a8, BOOL *a9, _DWORD *a10, void *a11, _DWORD *a12)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v12 = 4294967293;
  if (a2 && a4 && a5 && a6 && a9 && a10 && a11 && a12 && a3 >= 0x10)
  {
    v16 = a3;
    *a4 = *a2;
    v37 = 16;
    if ((a3 & 0xFFFFFFFC) == 0x10)
    {
      v12 = 4294967293;
    }

    else
    {
      v20 = *(a2 + 16);
      v37 = 20;
      v21 = acm_mem_alloc_data(v20);
      acm_mem_alloc_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 534, "DeserializeVerifyAclConstraint");
      if (v21)
      {
        if (v16 - 20 < v20)
        {
          goto LABEL_24;
        }

        memcpy(v21, (a2 + 20), v20);
        v22 = v20 + 20;
        v37 = v20 + 20;
        v33 = a5;
        if (a1 != 32)
        {
          v26 = 0;
          v34 = 0;
          goto LABEL_19;
        }

        if (v16 - v22 < 4)
        {
LABEL_24:
          v26 = 0;
          v34 = 0;
        }

        else
        {
          v31 = a7;
          v23 = a8;
          v24 = *(a2 + v22);
          v25 = v20 + 24;
          v37 = v20 + 24;
          v26 = acm_mem_alloc_data(v24);
          acm_mem_alloc_info("<data>", v26, v24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 546, "DeserializeVerifyAclConstraint");
          v34 = v24;
          if (!v26)
          {
            v12 = 4294967292;
LABEL_26:
            acm_mem_free_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 582, "DeserializeVerifyAclConstraint");
            acm_mem_free_data(v21, v20);
            if (v26)
            {
              acm_mem_free_info("<data>", v26, v34, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 585, "DeserializeVerifyAclConstraint");
              acm_mem_free_data(v26, v34);
            }

            goto LABEL_30;
          }

          if (v16 - v25 >= v24)
          {
            memcpy(v26, (a2 + v25), v24);
            v22 = v25 + v24;
            v37 = v25 + v24;
            a8 = v23;
            a7 = v31;
LABEL_19:
            if (v22 != v16)
            {
              v27 = *(a2 + v22) != 0;
              v37 = v22 + 1;
              if (v16 - (v22 + 1) >= 4)
              {
                v32 = v20;
                v28 = v26;
                v29 = *(a2 + v22 + 1);
                v37 = v22 + 5;
                v12 = sub_13988(a2, v16, &v37, &v36, &v35);
                if (!v12)
                {
                  *v33 = v21;
                  *a7 = v28;
                  *a8 = v34;
                  *a6 = v32;
                  *a9 = v27;
                  *a10 = v29;
                  *a11 = v36;
                  *a12 = v35;
                  return v12;
                }

                v26 = v28;
                v20 = v32;
                goto LABEL_26;
              }
            }
          }
        }

        v12 = 4294967293;
        goto LABEL_26;
      }

      v12 = 4294967292;
    }
  }

LABEL_30:
  if (v36)
  {
    Util_SafeDeallocParameters(v36, v35);
  }

  return v12;
}

uint64_t DeserializeProcessAcl(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4, _DWORD *a5, void *a6, unsigned int *a7, _DWORD *a8, void *a9, _DWORD *a10)
{
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v10 = 4294967293;
  if (a1)
  {
    if (a3)
    {
      v11 = a4;
      if (a4)
      {
        if (a5)
        {
          v13 = a6;
          if (a6)
          {
            v14 = a7;
            if (a7)
            {
              v15 = a8;
              if (a8)
              {
                if (a9 && a10 && a2 >= 0x10)
                {
                  v17 = a2;
                  *a3 = *a1;
                  v40 = 16;
                  if ((a2 & 0xFFFFFFFC) == 0x10)
                  {
                    v10 = 4294967293;
                  }

                  else
                  {
                    v18 = *(a1 + 16);
                    v40 = 20;
                    v19 = acm_mem_alloc_data(v18);
                    acm_mem_alloc_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 724, "DeserializeProcessAcl");
                    if (v19)
                    {
                      if (v17 - 20 < v18 || (memcpy(v19, (a1 + 20), v18), v40 = v18 + 20, v17 - (v18 + 20) < 4))
                      {
                        v32 = 0;
                        v37 = 0;
                        v10 = 4294967293;
                      }

                      else
                      {
                        v36 = a5;
                        v20 = *(a1 + v18 + 20);
                        v21 = v18 + 24;
                        v40 = v18 + 24;
                        v37 = v20;
                        if (!v20)
                        {
                          v35 = 0;
                          goto LABEL_20;
                        }

                        v33 = v11;
                        v22 = v13;
                        v23 = v14;
                        v24 = v15;
                        v25 = v20;
                        v26 = acm_mem_alloc_data(v20);
                        acm_mem_alloc_info("<data>", v26, v25, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 736, "DeserializeProcessAcl");
                        if (v26)
                        {
                          v27 = v26;
                          if (v17 - v21 >= v25)
                          {
                            v13 = v22;
                            v35 = v27;
                            memcpy(v27, (a1 + v21), v25);
                            v21 += v25;
                            v40 = v21;
                            v15 = v24;
                            v14 = v23;
                            v11 = v33;
LABEL_20:
                            if (v17 - v21 < 4)
                            {
                              v10 = 4294967293;
                            }

                            else
                            {
                              v34 = v18;
                              v28 = v19;
                              v29 = v15;
                              v30 = *(a1 + v21);
                              v40 = v21 + 4;
                              v10 = sub_13988(a1, v17, &v40, &v39, &v38);
                              if (!v10)
                              {
                                *v11 = v28;
                                *v36 = v34;
                                *v13 = v35;
                                *v14 = v37;
                                *v29 = v30;
                                *a9 = v39;
                                *a10 = v38;
                                return v10;
                              }

                              v19 = v28;
                              v18 = v34;
                            }

                            v32 = v35;
                            goto LABEL_32;
                          }

                          v10 = 4294967293;
                          v32 = v26;
                        }

                        else
                        {
                          v32 = 0;
                          v10 = 4294967292;
                        }
                      }

LABEL_32:
                      acm_mem_free_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 765, "DeserializeProcessAcl");
                      acm_mem_free_data(v19, v18);
                      if (v32)
                      {
                        acm_mem_free_info("<data>", v32, v37, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 768, "DeserializeProcessAcl");
                        acm_mem_free_data(v32, v37);
                      }

                      goto LABEL_34;
                    }

                    v10 = 4294967292;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  if (v39)
  {
    Util_SafeDeallocParameters(v39, v38);
  }

  return v10;
}

uint64_t sub_134FC(unsigned int a1, _DWORD *a2)
{
  if (!a2)
  {
    sub_13CF0();
  }

  if (a1 > 1)
  {
    return a2[3];
  }

  v2 = *a2 - 1;
  if (v2 >= 0x1C || ((0xFFE7FE7u >> v2) & 1) == 0)
  {
    sub_13CC4();
  }

  return qword_261B0[v2];
}

uint64_t sub_13620()
{

  return memcmp(v1, v0, 0x20uLL);
}

uint64_t sub_1363C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 0;
  *a4 = 24;
  return result;
}

uint64_t sub_1364C(uint64_t a1, void *a2)
{
  result = 0;
  *a2 = 16;
  return result;
}

uint64_t sub_1365C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{

  return sub_1375C(a2, a3, &a11);
}

__n128 sub_136CC(__n128 *a1, uint64_t a2, __n128 *a3, _DWORD *a4)
{
  result = *a1;
  *a3 = *a1;
  *a4 = a1[1].n128_u32[0];
  return result;
}

__n128 sub_13710@<Q0>(unsigned __int32 a1@<W1>, unsigned __int32 a2@<W2>, __n128 *a3@<X3>, void *a4@<X4>, __n128 *a5@<X8>)
{
  result = *a5;
  *a3 = *a5;
  a3[1].n128_u32[0] = a1;
  a3[1].n128_u32[1] = a2;
  *a4 = 24;
  return result;
}

uint64_t sub_1384C(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  LODWORD(v6) = a2;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "serializeParameters");
  }

  v8 = 70;
  v9 = 4294967293;
  if (a3 && a4)
  {
    v10 = *a4;
    *(a3 + v10) = v6;
    v11 = v10 + 4;
    if (v6)
    {
      v6 = v6;
      while (1)
      {
        *__src = *a1;
        __n = *(a1 + 16);
        v12 = sub_13C2C(__src);
        if (v12)
        {
          break;
        }

        v13 = (a3 + v11);
        v14 = __n;
        *v13 = __src[0];
        v13[1] = v14;
        v11 += 8;
        if (v14)
        {
          memcpy((a3 + v11), __src[1], v14);
          v11 += v14;
        }

        a1 += 24;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }

      v9 = v12;
      v8 = 70;
    }

    else
    {
LABEL_11:
      v9 = 0;
      *a4 = v11;
      v8 = 10;
    }
  }

  if (v8 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "serializeParameters", v9);
  }

  return v9;
}

uint64_t sub_13988(uint64_t a1, unint64_t a2, unint64_t *a3, void *size, _DWORD *a5)
{
  v10 = MechanismManagerACMResult;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "deserializeParameters");
  }

  v11 = 70;
  v12 = 4294967293;
  if (!a1 || !a3 || !size || !a5)
  {
    goto LABEL_24;
  }

  v13 = *a3;
  if (a2 <= *a3)
  {
    goto LABEL_22;
  }

  if (a2 - *a3 < 4 || (v14 = *(a1 + v13), v14 > 0xA))
  {
    v11 = 70;
    v12 = 4294967293;
    goto LABEL_24;
  }

  v13 += 4;
  if (!v14)
  {
LABEL_22:
    v20 = 0;
    v21 = 0;
LABEL_23:
    v12 = 0;
    *size = v21;
    *a5 = v20;
    v11 = 10;
    *a3 = v13;
    goto LABEL_24;
  }

  v15 = acm_mem_alloc_typed(24 * v14, 0x1080040388D5D28uLL);
  acm_mem_alloc_info("array of ACMParameter", v15, 24 * v14, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 196, "deserializeParameters");
  if (!v15)
  {
    v11 = 70;
    v12 = 4294967292;
    goto LABEL_24;
  }

  v25 = a5;
  v23 = v15;
  v24 = v14;
  v16 = v14;
  while (1)
  {
    *(v15 + 1) = 0;
    if (a2 - v13 < 8 || (*v15 = *(a1 + v13), a2 - (v13 + 4) < 4) || (v17 = *(a1 + v13 + 4), v15[4] = v17, v13 += 8, a2 - v13 < v17))
    {
      v11 = 70;
      v12 = 4294967293;
      goto LABEL_30;
    }

    v18 = sub_13C2C(v15);
    if (v18)
    {
      v12 = v18;
      v11 = 70;
      goto LABEL_30;
    }

    if (v17)
    {
      break;
    }

LABEL_20:
    v15 += 6;
    if (!--v16)
    {
      v10 = MechanismManagerACMResult;
      a5 = v25;
      v21 = v23;
      v20 = v24;
      goto LABEL_23;
    }
  }

  v19 = acm_mem_alloc_data(v17);
  acm_mem_alloc_info("<data>", v19, v17, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 214, "deserializeParameters");
  *(v15 + 1) = v19;
  if (v19)
  {
    memcpy(v19, (a1 + v13), v15[4]);
    v13 += v15[4];
    goto LABEL_20;
  }

  v11 = 70;
  v12 = 4294967292;
LABEL_30:
  v10 = MechanismManagerACMResult;
LABEL_24:
  if (v11 >= LOBYTE(v10[4].isa))
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "deserializeParameters", v12);
  }

  return v12;
}

uint64_t sub_13C2C(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  switch(*a1)
  {
    case 0:
    case 0xC:
      if (a1[4])
      {
        return 4294967293;
      }

      break;
    case 1:
    case 4:
    case 5:
    case 0xA:
      if (a1[4] != 4)
      {
        return 4294967293;
      }

      break;
    case 2:
    case 6:
    case 7:
      if (a1[4] != 16)
      {
        return 4294967293;
      }

      break;
    case 3:
      if ((a1[4] - 1001) < 0xFFFFFC18)
      {
        return 4294967293;
      }

      break;
    case 8:
    case 9:
    case 0xD:
    case 0xE:
      if (a1[4] != 1)
      {
        return 4294967293;
      }

      break;
    case 0xB:
      if (a1[4] > 0x400u)
      {
        return 4294967293;
      }

      break;
    default:
      return 4294967293;
  }

  return 0;
}

uint64_t crypto_encryptedTextLength(int a1, uint64_t a2)
{
  v2 = a2 + 32;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    return a2 + 33;
  }

  else
  {
    return v2;
  }
}

unint64_t crypto_plainTextLength(int a1, unint64_t a2)
{
  v2 = a2 - 33;
  v3 = a2 - 32;
  if (a2 <= 0x20)
  {
    v2 = 0;
  }

  if (a2 <= 0x1F)
  {
    v3 = 0;
  }

  if (a1 != 1)
  {
    v3 = 0;
  }

  if (a1 == 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_13D60(int a1, const char *a2)
{
  if (a1)
  {
    if (gACMLoggingLevel <= 0x46u)
    {
      printf("%s: %s: CoreCrypto - %s() failed, ccErr: %d.\n", "ACM", "checkCCError", a2, a1);
    }

    return 4294967264;
  }

  else
  {
    if (gACMLoggingLevel <= 0x1Eu)
    {
      printf("%s: %s: CoreCrypto - %s() succeeded, ccErr: %d.\n", "ACM", "checkCCError", a2, 0);
    }

    return 0;
  }
}

void sub_13E14(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - a2, a2);
}

uint64_t sub_13EB4(uint64_t a1, uint64_t a2)
{
  v2 = 70;
  v3 = 4294967293;
  if (!a1 || !a2)
  {
    goto LABEL_14;
  }

  v6 = qword_35128;
  if (qword_35128)
  {
    v3 = 0;
  }

  else
  {
    qword_35128 = ccrng();
    v3 = sub_13D60(-1, "ccrng");
    if (v3)
    {
      v6 = 0;
      v7 = 70;
      goto LABEL_8;
    }

    v6 = qword_35128;
  }

  v7 = 10;
LABEL_8:
  if (v7 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "platform_rng", v3);
  }

  v2 = 70;
  if (!v3)
  {
    v8 = (*v6)(v6, a2, a1);
    sub_13D60(v8, "platform_rng");
    sub_13E60();
    if (v9)
    {
      v2 = 10;
    }

    else
    {
      v2 = 70;
    }
  }

LABEL_14:
  if (v2 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "generateRandom", v3);
  }

  return v3;
}

void sub_14000()
{
  sub_13E84();
  sub_169C();
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  sub_20D4();
  v6 = __chkstk_darwin(v5);
  sub_13E14(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 32;
            if (v1 != -32)
            {
              if (v14 > *v0)
              {
                goto LABEL_13;
              }

              sub_13E08();
              v15 = ccgcm_init();
              if (!sub_13D60(v15, "ccgcm_init") && !sub_13EB4(v3, 16))
              {
                sub_1814();
                v16 = ccgcm_set_iv();
                if (!sub_13D60(v16, "ccgcm_set_iv"))
                {
                  sub_13E08();
                  v17 = ccgcm_update();
                  if (!sub_13D60(v17, "ccgcm_update"))
                  {
                    sub_1814();
                    v18 = ccgcm_finalize();
                    if (!sub_13D60(v18, "ccgcm_finalize"))
                    {
LABEL_13:
                      *v0 = v14;
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

  ccgcm_context_size();
  cc_clear();
  sub_13E34();
  if (v19)
  {
    sub_13E6C();
    printf("%s: %s: returning, err = %ld.\n", v21, v22, v23);
  }

  sub_13E9C();
}

void sub_141C0()
{
  sub_13E84();
  sub_169C();
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  sub_20D4();
  v6 = __chkstk_darwin(v5);
  sub_13E14(v6, v7, v8, v9, v10, v11, v12, v13, v24);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 33;
            if (v1 != -33)
            {
              if (v14 > *v0)
              {
                goto LABEL_16;
              }

              sub_13E08();
              v15 = ccgcm_init();
              if (!sub_13D60(v15, "ccgcm_init"))
              {
                *v3 = 2;
                v16 = (v3 + 1);
                sub_13E78();
                if (!v17 && !sub_13EB4(v16, 16))
                {
                  sub_1814();
                  v18 = ccgcm_set_iv();
                  if (!sub_13D60(v18, "ccgcm_set_iv"))
                  {
                    v19 = v16 + 16;
                    sub_13E78();
                    if (!v20)
                    {
                      sub_13E08();
                      v21 = ccgcm_update();
                      if (!sub_13D60(v21, "ccgcm_update") && !__CFADD__(v19, v1))
                      {
                        sub_1814();
                        v22 = ccgcm_finalize();
                        if (!sub_13D60(v22, "ccgcm_finalize"))
                        {
LABEL_16:
                          *v0 = v14;
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

  ccgcm_context_size();
  cc_clear();
  sub_13E34();
  if (v23)
  {
    sub_13E6C();
    printf("%s: %s: returning, err = %ld.\n", v25, v26, v27);
  }

  sub_13E9C();
}

void sub_143B0()
{
  sub_13E84();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  sub_20D4();
  v11 = __chkstk_darwin(v10);
  sub_13E14(v11, v12, v13, v14, v15, v16, v17, v18, v25);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            v19 = v5 >= 0x20;
            v20 = v5 - 32;
            if (v19)
            {
              if (*v1 < v20)
              {
                goto LABEL_13;
              }

              sub_13E08();
              v21 = ccgcm_init();
              if (!sub_13D60(v21, "ccgcm_init"))
              {
                sub_1814();
                v22 = ccgcm_set_iv();
                if (!sub_13D60(v22, "ccgcm_set_iv"))
                {
                  sub_13E08();
                  v23 = ccgcm_update();
                  if (!sub_13D60(v23, "ccgcm_update"))
                  {
                    sub_1814();
                    ccgcm_finalize();
                    v24 = cc_cmp_safe();
                    if (!sub_13D60(v24, "cc_cmp_safe"))
                    {
LABEL_13:
                      *v1 = v20;
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

  ccgcm_context_size();
  cc_clear();
  sub_13E34();
  if (v19)
  {
    sub_13E6C();
    printf("%s: %s: returning, err = %ld.\n", v26, 0, 0);
  }

  sub_13E9C();
}

void sub_1458C()
{
  sub_13E84();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  sub_20D4();
  v11 = __chkstk_darwin(v10);
  sub_13E14(v11, v12, v13, v14, v15, v16, v17, v18, v27);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            if (v5 >= 0x22)
            {
              v19 = v5 - 33;
              if (*v1 < v19)
              {
                goto LABEL_16;
              }

              sub_13E78();
              if (!v20 && *v7 == 2)
              {
                sub_13E08();
                v21 = ccgcm_init();
                if (!sub_13D60(v21, "ccgcm_init"))
                {
                  sub_1814();
                  v22 = ccgcm_set_iv();
                  if (!sub_13D60(v22, "ccgcm_set_iv"))
                  {
                    sub_13E78();
                    if (!v23)
                    {
                      sub_13E08();
                      v24 = ccgcm_update();
                      if (!sub_13D60(v24, "ccgcm_update") && !__CFADD__(v7 + 17, v19))
                      {
                        sub_1814();
                        ccgcm_finalize();
                        v25 = cc_cmp_safe();
                        if (!sub_13D60(v25, "cc_cmp_safe"))
                        {
LABEL_16:
                          *v1 = v19;
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

  ccgcm_context_size();
  cc_clear();
  sub_13E34();
  if (v26)
  {
    sub_13E6C();
    printf("%s: %s: returning, err = %ld.\n", v28, 0, 0);
  }

  sub_13E9C();
}

uint64_t LibCall_ACMKernelControl_Block(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl_Block");
  }

  bzero(v18, 0x2000uLL);
  v17 = 0x2000;
  v13 = LibCall_ACMKernelControl(v12, v11, v9, v7, v5, v18, &v17);
  if (v3)
  {
    if (v17)
    {
      v14 = v18;
    }

    else
    {
      v14 = 0;
    }

    (*(v3 + 16))(v3, v14);
  }

  if (v13)
  {
    v15 = 70;
  }

  else
  {
    v15 = 10;
  }

  if (v15 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl_Block", v13);
  }

  return v13;
}

uint64_t LibCall_ACMSEPControl_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMSEPControl_Block");
  }

  bzero(v24, 0x400uLL);
  LibCall_ACMSEPControl(a1, a2, a3, a4, a5, a6, a7, v24, &v23, v21, v22, 1024, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8]);
  v17 = v16;
  if (a8)
  {
    if (v23)
    {
      v18 = v24;
    }

    else
    {
      v18 = 0;
    }

    (*(a8 + 16))(a8, v18);
  }

  if (v17)
  {
    v19 = 70;
  }

  else
  {
    v19 = 10;
  }

  if (v19 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSEPControl_Block", v17);
  }

  return v17;
}

uint64_t LibCall_ACMGlobalContextVerifyPolicy_Block(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  v15 = 0;
  result = LibCall_ACMContextCreate(a1, a2, &v15, 0, 0, 1);
  if (result)
  {
    if (a7)
    {
      result = (*(a7 + 16))(a7, result, 0, 0);
    }
  }

  else
  {
    result = LibCall_ACMContextVerifyPolicyEx_Block(a1, a2, v15, a3, a4, a5, a6, 0xFFFFFFFFLL, a7);
  }

  if (v15)
  {
    result = LibCall_ACMContextDelete(a1, a2, v15, 1);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  return result;
}

uint64_t LibCall_ACMGetAclAuthMethod_Block(uint64_t result, uint64_t a2, __n128 *a3, uint64_t a4)
{
  v7 = result;
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  memset(v13, 0, sizeof(v13));
  v11 = 256;
  if (v7 && a3 && a4)
  {
    v12 = 0uLL;
    v10 = 16;
    AclAuthMethod_Serialize = LibSer_GetAclAuthMethod_Serialize(a3, &v12, &v10);
    if (!v9 && v10 == 16)
    {
      v7(a2, 31, 0, &v12, 16, v13, &v11, AclAuthMethod_Serialize);
    }

    goto LABEL_9;
  }

  if (a4)
  {
LABEL_9:
    result = (*(a4 + 16))(a4);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  return result;
}

rsize_t sub_14DC0(rsize_t result, int a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, char a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13)
{
  v20 = result;
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  v25 = 0;
  v24 = 0;
  if (a4 && a5 && a6 && a13)
  {
    v21 = verifyAclConstraintInternal(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, &v24, &v25);
    v22 = v25;
    v23 = v24;
  }

  else
  {
    if (!a13)
    {
      goto LABEL_10;
    }

    v22 = 0;
    v23 = 0;
    v21 = 4294967293;
  }

  (*(a13 + 16))(a13, v21, v23, v22);
  result = v25;
  if (v25)
  {
    result = Util_DeallocRequirement(v25);
  }

LABEL_10:
  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  return result;
}

uint64_t Util_GetBitCount(uint64_t a1)
{
  v1 = vcnt_s8(a1);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

char *Util_isNullOrZeroMemory(_BYTE *a1, uint64_t a2)
{
  if (!a1)
  {
    return &def_1FF08 + 1;
  }

  if (*a1)
  {
    return 0;
  }

  return (memcmp(a1, a1 + 1, a2 - 1) == 0);
}

BOOL Util_isNonNullEqualMemory(void *__s1, size_t __n, void *__s2, uint64_t a4)
{
  if (__n != a4)
  {
    return 0;
  }

  result = 0;
  if (__s1)
  {
    if (__s2)
    {
      return memcmp(__s1, __s2, __n) == 0;
    }
  }

  return result;
}

char *Util_hexDumpToStrHelper(char *result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!result && a2)
  {
    sub_15228();
  }

  if (!a3 && a4)
  {
    sub_151FC();
  }

  if (a2 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a2;
  }

  if (v4)
  {
    v5 = (a3 + 1);
    do
    {
      *(v5 - 1) = a0123456789abcd[*result >> 4];
      v6 = *result++;
      *v5 = a0123456789abcd[v6 & 0xF];
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t Util_KeybagLockStateToEnvVar(unsigned int a1)
{
  v1 = 0x2010103020201uLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 1;
  }

  return v1 & 3;
}

void Util_SafeDeallocParameters(unsigned int *a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1 + 4;
      v5 = a2;
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          v7 = *v4;
          acm_mem_free_info("<data>", *(v4 - 1), v7, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 118, "Util_SafeDeallocParameters");
          acm_mem_free_data(v6, v7);
        }

        v4 += 6;
        --v5;
      }

      while (v5);
    }

    acm_mem_free_info("array of ACMParameter", a1, 24 * v3, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 121, "Util_SafeDeallocParameters");

    acm_mem_free(a1, 24 * v3);
  }
}

uint64_t ACMContextCreateWithExternalForm(uint64_t a1, uint64_t a2)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithExternalForm";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreateWithExternalForm(sub_1908, &v8, a1, a2, &byte_350A1, 1);
  if (v4)
  {
    if (byte_350A1 <= 0x28u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v5 = *(v4 + 16);
      *buf = 136315650;
      v10 = "ACMLib";
      v11 = 2080;
      v12 = "ACMContextCreateWithExternalForm";
      v13 = 1024;
      LODWORD(v14) = v5;
      _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] acquired.\n", buf, 0x1Cu);
    }

    v6 = 30;
  }

  else
  {
    sub_17CD4();
    v6 = 70;
  }

  if (v6 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithExternalForm";
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, -> ctx = %p.\n", buf, 0x20u);
  }

  return v4;
}

uint64_t ACMContextRemoveCredentialsByType(_OWORD *a1, int a2)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMContextRemoveCredentialsByType";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v5, 0x16u);
  }

  return ACMContextRemoveCredentialsByTypeAndScope(a1, a2, 1);
}

uint64_t ACMContextContainsCredentialType(uint64_t a1, int a2)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMContextContainsCredentialType";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v5, 0x16u);
  }

  return ACMContextContainsCredentialTypeEx(a1, a2, 0);
}

uint64_t ACMContextVerifyPolicy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextVerifyPolicy";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = a1;
  v6 = LibCall_ACMContextVerifyPolicy_Block(sub_1908, &v9, a1, a2, a3);
  if (v6)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextVerifyPolicy";
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

uint64_t ACMContextVerifyPolicyWithPreflight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextVerifyPolicyWithPreflight";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v11 = a1;
  v8 = LibCall_ACMContextVerifyPolicyWithPreflight_Block(sub_1908, &v11, a1, a2, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextVerifyPolicyWithPreflight";
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v8;
}

void ACMContextVerifyPolicyEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "ACMLib";
    v17 = 2080;
    v18 = "ACMContextVerifyPolicyEx";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v14 = a1;
  LibCall_ACMContextVerifyPolicyEx_Block(sub_1908, &v14, a1, a2, a3, a4, a5, a6, a7);
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "ACMLib";
    v17 = 2080;
    v18 = "ACMContextVerifyPolicyEx";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

void ACMGlobalContextVerifyPolicy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMGlobalContextVerifyPolicy";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v11 = 0;
  v10 = ACMContextCreateWithFlags(&v11, 0);
  if (v10)
  {
    if (a5)
    {
      (*(a5 + 16))(a5, v10, 0, 0);
    }
  }

  else
  {
    ACMContextVerifyPolicyEx(v11, a1, a2, a3, a4, 0xFFFFFFFFLL, a5);
  }

  if (v11)
  {
    ACMContextDelete(v11, 1);
  }

  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMGlobalContextVerifyPolicy";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t ACMParseAclAndCopyConstraintCharacteristics(const void *a1, uint64_t a2, uint64_t a3)
{
  __n = 4096;
  size = 0;
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "ACMLib";
    v23 = 2080;
    v24 = "ACMParseAclAndCopyConstraintCharacteristics";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v6 = 4294967293;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_28;
  }

  SerializedProcessAclSize = sub_1F08();
  if (SerializedProcessAclSize || (SerializedProcessAclSize = GetSerializedProcessAclSize(0, a1, a2, 0, 0, 0, 0, 0, &size), SerializedProcessAclSize))
  {
    v6 = SerializedProcessAclSize;
LABEL_28:
    (*(a3 + 16))(a3, v6, 0, 4096);
    goto LABEL_19;
  }

  v8 = size;
  v9 = acm_mem_alloc_data(size);
  acm_mem_alloc_info("<data>", v9, v8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 727, "ACMParseAclAndCopyConstraintCharacteristics");
  if (!v9)
  {
    v6 = 4294967292;
    goto LABEL_28;
  }

  v10 = SerializeProcessAcl(0, a1, a2, 0, 0, 0, 0, 0, v9, &size);
  if (v10)
  {
    v6 = v10;
    v12 = 0;
    v14 = 0;
    v11 = 4096;
    goto LABEL_15;
  }

  v11 = 4096;
  v12 = acm_mem_alloc_data(0x1000uLL);
  acm_mem_alloc_info("<data>", v12, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 733, "ACMParseAclAndCopyConstraintCharacteristics");
  if (!v12)
  {
    v14 = 0;
LABEL_31:
    v6 = 4294967292;
    goto LABEL_15;
  }

  v13 = sub_1ACC(0, 20, 0, v9, size, v12, &__n);
  v11 = __n;
  if (v13)
  {
    v6 = v13;
    v14 = 0;
    goto LABEL_15;
  }

  v14 = acm_mem_alloc_data(__n);
  acm_mem_alloc_info("<data>", v14, v11, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 739, "ACMParseAclAndCopyConstraintCharacteristics");
  v11 = __n;
  if (!v14)
  {
    goto LABEL_31;
  }

  memcpy(v14, v12, __n);
  v6 = 0;
  v11 = __n;
LABEL_15:
  (*(a3 + 16))(a3, v6, v14, v11);
  v15 = size;
  acm_mem_free_info("<data>", v9, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 750, "ACMParseAclAndCopyConstraintCharacteristics");
  acm_mem_free_data(v9, v15);
  if (v12)
  {
    acm_mem_free_info("<data>", v12, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 753, "ACMParseAclAndCopyConstraintCharacteristics");
    acm_mem_free_data(v12, 0x1000uLL);
  }

  if (v14)
  {
    v16 = __n;
    acm_mem_free_info("<data>", v14, __n, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 756, "ACMParseAclAndCopyConstraintCharacteristics");
    acm_mem_free_data(v14, v16);
  }

LABEL_19:
  if (v6)
  {
    v17 = 70;
  }

  else
  {
    v17 = 10;
  }

  if (v17 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "ACMLib";
    v23 = 2080;
    v24 = "ACMParseAclAndCopyConstraintCharacteristics";
    v25 = 2048;
    v26 = v6;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

void ACMGetAclAuthMethod(__n128 *a1, uint64_t a2)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMGetAclAuthMethod";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v4 = a1;
  LibCall_ACMGetAclAuthMethod_Block(sub_1908, &v4, a1, a2);
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMGetAclAuthMethod";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t ACMSetEnvironmentVariable(int a1)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMSetEnvironmentVariable";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  LibCall_ACMSetEnvironmentVariable();
  v3 = v2;
  if (v2)
  {
    v4 = 70;
  }

  else
  {
    v4 = 10;
  }

  if (v4 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMSetEnvironmentVariable";
    v10 = 2048;
    v11 = v3;
    v12 = 1024;
    v13 = a1;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v3;
}

uint64_t ACMSetEnvironmentVariableWithAccessPolicy(int a1)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMSetEnvironmentVariableWithAccessPolicy";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  LibCall_ACMSetEnvironmentVariable();
  v3 = v2;
  if (v2)
  {
    v4 = 70;
  }

  else
  {
    v4 = 10;
  }

  if (v4 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMSetEnvironmentVariableWithAccessPolicy";
    v10 = 2048;
    v11 = v3;
    v12 = 1024;
    v13 = a1;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v3;
}

uint64_t ACMGetEnvironmentVariable(uint64_t a1, uint64_t a2)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMGetEnvironmentVariable";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v7 = 0;
  v4 = LibCall_ACMGetEnvironmentVariable_Block(sub_1908, &v7, a1, a2);
  if (v4)
  {
    v5 = 70;
  }

  else
  {
    v5 = 10;
  }

  if (v5 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMGetEnvironmentVariable";
    v12 = 2048;
    v13 = v4;
    v14 = 1024;
    v15 = a1;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v4;
}

uint64_t ACMKernelControl(int a1)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMKernelControl";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v2 = LibCall_ACMKernelControl_Block(sub_1908);
  if (v2)
  {
    v3 = 70;
  }

  else
  {
    v3 = 10;
  }

  if (v3 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMKernelControl";
    v9 = 2048;
    v10 = v2;
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, code=%u.\n", buf, 0x26u);
  }

  return v2;
}

void ACMGlobalContextCredentialGetProperty(int a1, int a2, uint64_t a3)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMGlobalContextCredentialGetProperty";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v6 = 0;
  LibCall_ACMGlobalContextCredentialGetProperty_Block(sub_1908, &v6, a1, a2, a3);
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMGlobalContextCredentialGetProperty";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

void ACMContextCredentialGetProperty(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, uint64_t a4)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextCredentialGetProperty";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(buf, 0, sizeof(buf));
  v10 = 256;
  if (a4)
  {
    v9 = a1;
    v8 = LibCall_ACMContextCredentialGetProperty(sub_1908, &v9, a1, a2, a3, buf, &v10);
    (*(a4 + 16))(a4, v8, buf, v10);
  }

  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextCredentialGetProperty";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", v11, 0x16u);
  }
}

uint64_t ACMContextSetData(uint64_t a1, int a2, int a3, int a4)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextSetData";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v11, 0x16u);
  }

  v8 = ACMContextSetDataEx(a1, a2, 0, 0, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextSetData";
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v11, 0x20u);
  }

  return v8;
}

uint64_t ACMContextSetDataEx(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextSetDataEx";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v12 = LibCall_ACMContextSetData(sub_1908, &v16, a1, a2, a3, a4, a5, a6, v15, a1, *buf, *&buf[8], *&buf[16], v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  if (v12)
  {
    v13 = 70;
  }

  else
  {
    v13 = 10;
  }

  if (v13 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextSetDataEx";
    *&buf[22] = 2048;
    v18 = v12;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v12;
}

uint64_t ACMContextGetData(uint64_t a1, int a2, uint64_t a3)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextGetData";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v9, 0x16u);
  }

  Data = ACMContextGetDataEx(a1, a2, 0, 0, a3);
  if (Data)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextGetData";
    v13 = 2048;
    v14 = Data;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v9, 0x20u);
  }

  return Data;
}

uint64_t ACMContextGetDataProperty(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextGetDataProperty";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v11, 0x16u);
  }

  Data = ACMContextGetData(a1, a2 | (a3 << 16), a4);
  if (Data)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextGetDataProperty";
    v15 = 2048;
    v16 = Data;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v11, 0x20u);
  }

  return Data;
}

uint64_t ACMContextCopyData(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextCopyData";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v11 = 0;
  v8 = LibCall_ACMContextCopyData(sub_1908, &v11, a1, a2, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextCopyData";
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v8;
}

uint64_t ACMContextGetInfo(__int128 *a1, int a2, void *a3)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextGetInfo";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = a1;
  v6 = LibCall_ACMContextGetInfo(sub_1908, &v9, a1, a2, a3);
  if (v6)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= byte_350A1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextGetInfo";
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

void sub_17CD4()
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  output = 0;
  outputCnt = 1;
  if (IOConnectCallScalarMethod(dword_35134, 2u, 0, 0, &output, &outputCnt))
  {
    goto LABEL_12;
  }

  v0 = output;
  byte_350A1 = output;
  if (output <= 0x1EuLL && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_1803C();
LABEL_12:
    v0 = byte_350A1;
  }

  if (v0 <= 0xA && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&def_1FF08, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t sub_17F34(uint64_t a1, char a2, uint64_t a3, uint64_t a4, size_t a5)
{

  return sub_1ACC(a1, a2, 0, v5, a5, 0, 0);
}

void sub_1803C()
{
  sub_17F60();
  sub_17ED0();
  _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

uint64_t LibCall_ACMKernelControl(uint64_t (*a1)(uint64_t, uint64_t, void, char *, size_t, uint64_t, uint64_t), uint64_t a2, int a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  if (gACMLoggingLevel <= 0xAu)
  {
    a1 = printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl");
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = a5 != 0;
  if (a4)
  {
    v14 = a5 - 4097 < 0xFFFFFFFFFFFFF000;
  }

  if (v14)
  {
LABEL_16:
    v18 = 70;
    v17 = 4294967293;
  }

  else
  {
    v20 = &v20;
    __chkstk_darwin(a1);
    v15 = (&v20 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0));
    bzero(v15, a5 + 4);
    *v15 = a3;
    v16 = v15 + 1;
    if (a5)
    {
      memcpy(v15 + 1, a4, a5);
      v16 = (v16 + a5);
    }

    if (v16 != (v15 + a5 + 4))
    {
      sub_18D30();
    }

    v17 = v13(a2, 26, 0, &v20 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0), a5 + 4, a6, a7);
    if (v17)
    {
      v18 = 70;
    }

    else
    {
      v18 = 10;
    }
  }

  if (v18 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl", v17);
  }

  return v17;
}

uint64_t sub_18444(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = 0;
  v4 = *a3;
  return result;
}

void sub_18498()
{

  LibCall_ACMSetEnvironmentVariable();
}

uint64_t sub_184B8(uint64_t (*a1)(uint64_t, void, void, void *, size_t, _DWORD *, unint64_t *), uint64_t a2, int a3, _OWORD *a4, unsigned __int8 *a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, const void *a9, unsigned int a10, unsigned int a11, _DWORD *a12, BOOL *a13, void *a14, unint64_t *a15)
{
  v19 = gACMLoggingLevel;
  v20 = "processAclCommandInternal";
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "processAclCommandInternal");
    v19 = gACMLoggingLevel;
  }

  if (v19 <= 0x14)
  {
    printf("%s: %s: command = %u.\n", "ACM", "processAclCommandInternal", a3);
    sub_18370();
    if (!(!v28 & v21))
    {
      printf("%s: %s: context = %p.\n", "ACM", "processAclCommandInternal", a4);
      sub_18370();
      if (!(!v28 & v21))
      {
        printf("%s: %s: acl = %p, aclLength = %zu.\n", "ACM", "processAclCommandInternal", a5, a6);
        sub_18370();
        if (!(!v28 & v21))
        {
          printf("%s: %s (len=%u): acl:", "ACM", "processAclCommandInternal", a6);
          v19 = gACMLoggingLevel;
        }
      }
    }
  }

  if (a6)
  {
    v22 = a6;
    v23 = a5;
    do
    {
      if (v19 <= 0x14)
      {
        printf("%02x ", *v23);
        v19 = gACMLoggingLevel;
      }

      ++v23;
      --v22;
    }

    while (v22);
  }

  if (v19 < 0x15)
  {
    putchar(10);
    sub_18370();
    if (!(!v28 & v21))
    {
      printf("%s: %s: operation = %p, operationLength = %zu.\n", "ACM", "processAclCommandInternal", a7, a8);
      sub_18370();
      if (!(!v28 & v21))
      {
        printf("%s: %s (len=%u): operation:", "ACM", "processAclCommandInternal", a8);
        v19 = gACMLoggingLevel;
      }
    }
  }

  v42 = a3;
  if (a8)
  {
    v24 = a8;
    v25 = a7;
    do
    {
      if (v19 <= 0x14)
      {
        printf("%02x ", *v25);
        v19 = gACMLoggingLevel;
      }

      ++v25;
      --v24;
    }

    while (v24);
  }

  if (v19 < 0x15)
  {
    putchar(10);
    sub_18370();
    if (!(!v28 & v21))
    {
      printf("%s: %s: parameters = %p, parameterCount = %u.\n", "ACM", "processAclCommandInternal", a9, a10);
      sub_18370();
      if (!(!v28 & v21))
      {
        printf("%s: %s: maxGlobalCredentialAge = %u.\n", "ACM", "processAclCommandInternal", a11);
        sub_18370();
        if (!(!v28 & v21))
        {
          printf("%s: %s: constraintState = %p.\n", "ACM", "processAclCommandInternal", a12);
          sub_18370();
          if (!(!v28 & v21))
          {
            printf("%s: %s: requirePasscode = %p.\n", "ACM", "processAclCommandInternal", a13);
          }
        }
      }
    }
  }

  if (a7 || a9 || a12)
  {
    if (a5)
    {
      v28 = a6 == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = v28;
    sub_1845C();
    if (!a7)
    {
      goto LABEL_79;
    }

    if (!a8)
    {
      goto LABEL_79;
    }

    if (v29)
    {
      goto LABEL_79;
    }

    v20 = 4294967293;
    if ((a9 != 0) == (a10 == 0) || !a12)
    {
      goto LABEL_79;
    }

    v48 = 0;
    v47 = 4096;
    if (gACMLoggingLevel <= 0xAu)
    {
      printf("%s: %s: called.\n", "ACM", "processAclInternal");
    }

    SerializedProcessAclSize = GetSerializedProcessAclSize(a4, a5, a6, a7, a8, a11, a9, a10, &v48);
    if (SerializedProcessAclSize)
    {
      v20 = SerializedProcessAclSize;
      v40 = 70;
      goto LABEL_74;
    }

    v31 = v48;
    v32 = acm_mem_alloc_data(v48);
    acm_mem_alloc_info("<data>", v32, v31, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1841, "processAclInternal");
    if (!v32)
    {
      v40 = 70;
      v20 = 4294967292;
      goto LABEL_74;
    }

    v47 = 4096;
    v33 = acm_mem_alloc_data(0x1000uLL);
    acm_mem_alloc_info("<data>", v33, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1845, "processAclInternal");
    if (!v33)
    {
      v37 = 0;
      v36 = 0;
      v20 = 4294967292;
      goto LABEL_68;
    }

    v34 = SerializeProcessAcl(a4, a5, a6, a7, a8, a11, a9, a10, v32, &v48);
    if (v34 || (v34 = a1(a2, v42, 0, v32, v48, v33, &v47), v34))
    {
      v20 = v34;
      v36 = 0;
      v37 = 0;
      goto LABEL_67;
    }

    v35 = v47;
    if (v47 >= 8)
    {
      *a12 = *v33;
      if (a13)
      {
        *a13 = v33[1] != 0;
      }

      v20 = 0;
      v36 = 0;
      if (v42 != 30 || !a14)
      {
        v37 = 0;
        goto LABEL_67;
      }

      v37 = 0;
      if (!a15)
      {
LABEL_67:
        acm_mem_free_info("<data>", v33, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1882, "processAclInternal");
        acm_mem_free_data(v33, 0x1000uLL);
LABEL_68:
        acm_mem_free_info("<data>", v32, v48, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1886, "processAclInternal");
        v38 = sub_183E8();
        acm_mem_free_data(v38, v39);
        if (v20 && v37)
        {
          acm_mem_free_info("<data>", v37, v36, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1890, "processAclInternal");
          acm_mem_free_data(v37, v36);
          v40 = 70;
        }

        else if (v20)
        {
          v40 = 70;
        }

        else
        {
          v40 = 10;
        }

LABEL_74:
        if (v40 >= gACMLoggingLevel)
        {
          printf("%s: %s: returning, err = %ld.\n", "ACM", "processAclInternal", v20);
        }

        goto LABEL_76;
      }

      if (v35 >= 0xC)
      {
        v36 = v33[2];
        if (v36)
        {
          if (v35 >= v36 + 12)
          {
            v37 = acm_mem_alloc_data(v33[2]);
            acm_mem_alloc_info("<data>", v37, v36, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1870, "processAclInternal");
            if (v37)
            {
              memcpy(v37, v33 + 3, v36);
              v20 = 0;
              *a14 = v37;
              *a15 = v36;
            }

            else
            {
              v20 = 4294967292;
            }

            goto LABEL_67;
          }

          goto LABEL_84;
        }

        v36 = 0;
        v37 = 0;
        v20 = 0;
        goto LABEL_67;
      }
    }

    v36 = 0;
LABEL_84:
    v37 = 0;
    v20 = 4294967291;
    goto LABEL_67;
  }

  if (a4)
  {
    sub_1845C();
    goto LABEL_79;
  }

  sub_1845C();
  if (a5 && a13 && a6)
  {
    sub_18B84();
    v20 = v27;
LABEL_76:
    if (v20)
    {
      v26 = 70;
    }

    else
    {
      v26 = 10;
    }
  }

LABEL_79:
  if (v26 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "processAclCommandInternal", v20);
  }

  return v20;
}

void sub_18B84()
{
  sub_13E84();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v17[0] = 0;
  v16 = 4;
  v10 = v2;
  __chkstk_darwin(v8);
  v11 = (&v15 - ((v10 + 19) & 0x1FFFFFFF0));
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "aclRequiresPasscodeInternal");
  }

  bzero(&v15 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4);
  v12 = -3;
  if (v5 && v1)
  {
    *v11 = v3;
    memcpy(v11 + 1, v5, v10);
    v13 = v9(v7, 17, 0, &v15 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4, v17, &v16);
    if (v13)
    {
      v12 = v13;
    }

    else if (v16 == 4)
    {
      v12 = 0;
      *v1 = 1;
    }

    else
    {
      v12 = -5;
    }
  }

  sub_18324();
  if (v14)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "aclRequiresPasscodeInternal", v12);
  }

  sub_13E9C();
}

void sub_18D5C(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_fault_impl(&def_1FF08, log, OS_LOG_TYPE_FAULT, "ACMContextDelete of ACMContext:%u failed: %d", v3, 0xEu);
}

void sub_18DF8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&def_1FF08, a2, OS_LOG_TYPE_ERROR, "unsupported requirement: %d", v2, 8u);
}

void sub_18E70(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&def_1FF08, log, OS_LOG_TYPE_ERROR, "Failed to remove credential of type %d: %{public}@", v3, 0x12u);
}

uint64_t sub_18EF8()
{
  dlerror();
  abort_report_np();
  return sub_18F1C();
}

void sub_18F94(void *a1)
{
  v1 = [a1 nonDisposablePool];
  sub_17B0(&def_1FF08, v2, v3, "No free slots for a new LAContext in the non-disposable pool: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_1901C(void *a1)
{
  v1 = [a1 disposablePool];
  sub_17B0(&def_1FF08, v2, v3, "Disposable pool has no free slots: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_190FC(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(*a2 + 24);
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_error_impl(&def_1FF08, log, OS_LOG_TYPE_ERROR, "%d submechanisms required, but only %d can be made satisfied.", v5, 0xEu);
}

uint64_t GetSerializedVerifyPolicySize()
{
  result = sub_136F8();
  if (v5)
  {
    if (v1)
    {
      v6 = v4;
      if (v4)
      {
        v7 = v3;
        v8 = v2;
        v9 = strnlen(v1, 0x81uLL);
        if (v9 > 0x80)
        {
          return 4294967293;
        }

        else
        {
          v10 = v9;
          result = sub_1375C(v8, v7, &v11);
          if (!result)
          {
            *v6 = v10 + v11 + 26;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DeserializeVerifyPolicy(uint64_t a1)
{
  v25 = 0;
  result = sub_136F8();
  v10 = v3 - 16;
  if (v3 >= 0x10)
  {
    if (a1)
    {
      if (v4)
      {
        v11 = v5;
        if (v5)
        {
          v12 = v6;
          if (v6)
          {
            v13 = v7;
            if (v7)
            {
              v14 = v8;
              if (v8)
              {
                v15 = v9;
                if (v9)
                {
                  v16 = v3;
                  *v4 = *a1;
                  v17 = strnlen((a1 + 16), v3 - 16);
                  v18 = v17;
                  if (v17 > 0x80uLL || v10 <= v17)
                  {
                    return 4294967293;
                  }

                  v19 = acm_mem_alloc_data(v17 + 1);
                  acm_mem_alloc_info("<data>", v19, v18 + 1, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 351, "DeserializeVerifyPolicy");
                  if (!v19)
                  {
                    return 4294967292;
                  }

                  memcpy(v19, (a1 + 16), v18 + 1);
                  v26 = v18 + 17;
                  if (v18 + 17 == v16 || (v20 = *(a1 + v18 + 17) != 0, v26 = v18 + 18, v16 - (v18 + 18) < 4))
                  {
                    v22 = 4294967293;
                  }

                  else
                  {
                    v23 = v15;
                    v21 = *(a1 + v18 + 18);
                    v26 = v18 + 22;
                    result = sub_13988(a1, v16, &v26, &v25, &v24);
                    if (!result)
                    {
                      *v11 = v19;
                      *v12 = v20;
                      *v13 = v21;
                      *v14 = v25;
                      *v23 = v24;
                      return result;
                    }

                    v22 = result;
                  }

                  acm_mem_free_info("<data>", v19, v18 + 1, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 380, "DeserializeVerifyPolicy");
                  acm_mem_free_data(v19, v18 + 1);
                  if (v25)
                  {
                    Util_SafeDeallocParameters(v25, v24);
                  }

                  return v22;
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

uint64_t GetSerializedVerifyAclConstraintSize(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, void *a11)
{
  result = sub_136F8();
  if (v15)
  {
    if (a11)
    {
      if (a10 <= 0xA && (a9 != 0) == (a10 != 0))
      {
        v16 = v14;
        v17 = v13;
        result = sub_1375C(a9, a10, &v21);
        if (!result)
        {
          v18 = 29;
          if (a1 == 32)
          {
            v18 = 33;
          }

          v19 = v18 + v17;
          if (a1 == 32)
          {
            v20 = v16;
          }

          else
          {
            v20 = 0;
          }

          *a11 = v19 + v20 + v21;
        }
      }
    }
  }

  return result;
}

uint64_t SerializeVerifyAclConstraint(int a1, _OWORD *a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, char a7, int a8, uint64_t a9, unsigned int a10, uint64_t a11, void *a12)
{
  if (!a3)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a12)
  {
    if (a11 && a10 <= 0xA && (a9 != 0) == (a10 != 0))
    {
      v30 = 0;
      result = sub_1375C(a9, a10, &v30);
      if (!result)
      {
        v20 = 29;
        if (a1 == 32)
        {
          v20 = 33;
        }

        v21 = v20 + a4;
        if (a1 == 32)
        {
          v22 = a6;
        }

        else
        {
          v22 = 0;
        }

        if (*a12 < v21 + v22 + v30)
        {
          return 4294967293;
        }

        else
        {
          v23 = a8;
          if (a2)
          {
            *a11 = *a2;
          }

          else
          {
            *a11 = 0;
            *(a11 + 8) = 0;
          }

          *(a11 + 16) = a4;
          memcpy((a11 + 20), a3, a4);
          v24 = a4 + 20;
          if (a1 == 32)
          {
            *(a11 + v24) = a6;
            v25 = a4 + 24;
            memcpy((a11 + v25), a5, a6);
            v24 = v25 + a6;
          }

          v26 = a11 + v24;
          *v26 = a7;
          *(v26 + 1) = v23;
          v29 = v24 + 5;
          result = sub_1384C(a9, a10, a11, &v29);
          if (!result)
          {
            *a12 = v29;
          }
        }
      }
    }
  }

  return result;
}

uint64_t GetSerializedProcessAclSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  result = sub_136F8();
  if (v14)
  {
    v15 = v10;
    if (v10)
    {
      if (a9 && v13 <= 0xA && (v12 != 0) == (v13 != 0))
      {
        v16 = v11;
        result = sub_1375C(v12, v13, &v17);
        if (!result)
        {
          *a9 = v15 + v16 + v17 + 36;
        }
      }
    }
  }

  return result;
}

uint64_t SerializeProcessAcl(_OWORD *a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  v21 = 0;
  result = 4294967293;
  if (a2)
  {
    v12 = a3;
    if (a3)
    {
      v13 = a8;
      if (a10)
      {
        if (a9)
        {
          if (a8 <= 0xA && (a7 != 0) == (a8 != 0))
          {
            v15 = a6;
            v16 = a5;
            result = GetSerializedProcessAclSize(4294967293, a2, a3, a4, a5, a6, a7, a8, &v21);
            if (!result)
            {
              if (*a10 < v21)
              {
                return 4294967293;
              }

              else
              {
                if (a1)
                {
                  *a9 = *a1;
                }

                else
                {
                  *a9 = 0;
                  *(a9 + 8) = 0;
                }

                *(a9 + 16) = v12;
                memcpy((a9 + 20), a2, v12);
                *(a9 + v12 + 20) = v16;
                v19 = v12 + 24;
                if (v16)
                {
                  memcpy((a9 + v19), a4, v16);
                  v19 += v16;
                }

                *(a9 + v19) = v15;
                v20 = v19 + 4;
                result = sub_1384C(a7, v13, a9, &v20);
                if (!result)
                {
                  *a10 = v20;
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

void GetSerializedRequirementSize(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = 0;
  if (a2 && a3 && *a2 <= 0x1Cu)
  {
    sub_20BC();
    if (v8)
    {
      if ((v7 & 0x30) != 0)
      {
        *a3 = 20;
        while (*(a2 + 16))
        {
          SerializedRequirementSize = GetSerializedRequirementSize(a1, *(a2 + 20), &v26);
          if (SerializedRequirementSize)
          {
            break;
          }

          sub_13684(SerializedRequirementSize, v10, v11, v12, v13, v14, v15, v16, v25, v26);
        }
      }

      else if (v6 == 7)
      {
        *a3 = 24;
        while (*(a2 + 20))
        {
          v17 = GetSerializedRequirementSize(a1, *(a2 + 24), &v26);
          if (v17)
          {
            break;
          }

          sub_13684(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
        }
      }
    }

    else
    {
      *a3 = sub_134FC(a1, a2) + 16;
    }
  }
}

void SerializeRequirement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1372C();
  a21 = v22;
  a22 = v27;
  v28 = v23;
  a12 = 0;
  if (v24)
  {
    v29 = v25;
    if (v25)
    {
      v30 = v26;
      if (v26)
      {
        v31 = v24;
        GetSerializedRequirementSize(v23, v24, &a12);
        if (!v32 && a12 <= *v30)
        {
          v41 = *v31;
          v42 = v31[2];
          v33 = sub_134FC(v28, v31);
          *v29 = v41;
          *(v29 + 8) = v42;
          *(v29 + 12) = v33;
          if (*v31 <= 0x1Cu)
          {
            sub_20BC();
            if (!v36)
            {
              v37 = sub_134FC(v28, v31);
              memcpy((v29 + 16), v31 + 4, v37);
              v38 = v37 + 16;
LABEL_9:
              *v30 = v38;
              goto LABEL_10;
            }

            if ((v35 & 0x30) != 0)
            {
              *(v29 + 16) = v31[4];
              if (!v31[4])
              {
                v38 = 20;
                goto LABEL_9;
              }

              v39 = 0;
              v38 = 20;
              while (!sub_2180())
              {
                v38 += a9;
                if (++v39 >= v31[4])
                {
                  goto LABEL_9;
                }
              }
            }

            else
            {
              if (v34 != 7)
              {
                goto LABEL_10;
              }

              *(v29 + 16) = *(v31 + 2);
              if (!v31[5])
              {
                v38 = 24;
                goto LABEL_9;
              }

              v40 = 0;
              v38 = 24;
              while (!sub_2180())
              {
                v38 += a9;
                if (++v40 >= v31[5])
                {
                  goto LABEL_9;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_10:
  sub_13744();
}

uint64_t GetSerializedCredentialSize(_DWORD *a1, void *a2)
{
  result = 4294967293;
  if (a1 && a2 && *a1 <= 0x17u && ((1 << *a1) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a2 = a1[7] + 32;
  }

  return result;
}

uint64_t SerializeCredential(unsigned int *__src, void *__dst, size_t *a3)
{
  result = 4294967293;
  if (__src && __dst && a3)
  {
    v6 = *__src;
    if (*__src <= 0x17 && ((1 << *__src) & 0xFFF7FE) != 0)
    {
      v8 = __src[7] + 32;
      if (v8 <= *a3 && v6 <= 0x17 && ((1 << v6) & 0xFFF7FE) != 0)
      {
        memcpy(__dst, __src, v8);
        result = 0;
        *a3 = __src[7] + 32;
      }
    }
  }

  return result;
}

void DeserializeCredential(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *__dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1369C();
  a19 = v20;
  a20 = v25;
  __dst = 0;
  if (v22 >= 0x20)
  {
    v26 = v21;
    if (v21)
    {
      v27 = v23;
      if (v23)
      {
        v28 = v24;
        if (v24)
        {
          v29 = *v21;
          v30 = v22;
          v31 = v21[7];
          switch(*v21)
          {
            case 1u:
              if (v31 == 28)
              {
                goto LABEL_7;
              }

              break;
            case 2u:
              if (v31 == 136)
              {
                goto LABEL_7;
              }

              break;
            case 3u:
              if (v31 == 305)
              {
                goto LABEL_7;
              }

              break;
            case 4u:
            case 5u:
            case 6u:
            case 8u:
            case 0xEu:
            case 0x10u:
            case 0x13u:
            case 0x16u:
            case 0x17u:
              if (!v31)
              {
                goto LABEL_7;
              }

              break;
            case 7u:
              if (v31 == 56)
              {
                goto LABEL_7;
              }

              break;
            case 9u:
              if (v31 == 24)
              {
                goto LABEL_7;
              }

              break;
            case 0xAu:
              if (v31 == 52)
              {
                goto LABEL_7;
              }

              break;
            case 0xCu:
            case 0xFu:
              if (v31 == 8)
              {
                goto LABEL_7;
              }

              break;
            case 0xDu:
            case 0x15u:
              if (v31 == 132)
              {
                goto LABEL_7;
              }

              break;
            case 0x11u:
              if (v31 == 81)
              {
                goto LABEL_7;
              }

              break;
            case 0x12u:
              if (v31 == 20)
              {
                goto LABEL_7;
              }

              break;
            case 0x14u:
              if (v31 != 32)
              {
                break;
              }

LABEL_7:
              if (!Util_AllocCredential(*v21, &__dst))
              {
                if (!__dst)
                {
                  break;
                }

                if (__dst[1] <= 3u && __dst[2] <= 0x100u && v29 <= 0x17 && ((1 << v29) & 0xFFF7FE) != 0 && v31 + 32 <= v30)
                {
                  memcpy(__dst, v26, v31 + 32);
                  *v27 = __dst;
                  *v28 = v31 + 32;
                  break;
                }

                goto LABEL_15;
              }

              if (__dst)
              {
LABEL_15:
                Util_DeallocCredential(__dst);
                break;
              }

              break;
            default:
              break;
          }
        }
      }
    }
  }

  sub_136B4();
}

uint64_t CopyCredential(uint64_t a1, void **a2)
{
  __dst = 0;
  v2 = 4294967293;
  if (a1 && a2)
  {
    v2 = Util_AllocCredential(*a1, &__dst);
    if (v2)
    {
      if (__dst)
      {
        Util_DeallocCredential(__dst);
      }
    }

    else if (__dst)
    {
      memcpy(__dst, a1, *(a1 + 28) + 32);
      v2 = 0;
      *a2 = __dst;
    }

    else
    {
      return 4294967292;
    }
  }

  return v2;
}

uint64_t CompareCredentials(char *__s1, _DWORD *__s2, BOOL *a3)
{
  result = 4294967293;
  if (__s1)
  {
    v5 = __s2;
    if (__s2)
    {
      if (a3)
      {
        if (*__s1 == *__s2)
        {
          v7 = *(__s1 + 7);
          if (v7 == __s2[7])
          {
            switch(*__s1)
            {
              case 1:
                if (sub_13620())
                {
                  break;
                }

                v9 = __s1 + 44;
                __s2 = v5 + 11;
                goto LABEL_33;
              case 2:
                if (*(__s1 + 8) != __s2[8])
                {
                  break;
                }

                v8 = *(__s1 + 9);
                if (v8 != __s2[9])
                {
                  break;
                }

                v9 = __s1 + 40;
                __s2 += 10;
                goto LABEL_8;
              case 3:
                if (sub_13620())
                {
                  break;
                }

                v9 = __s1 + 104;
                __s2 = v5 + 26;
                goto LABEL_33;
              case 4:
              case 5:
              case 6:
              case 8:
              case 0xC:
              case 0xE:
              case 0xF:
              case 0x10:
              case 0x11:
              case 0x12:
              case 0x13:
              case 0x16:
              case 0x17:
                v8 = v7 + 32;
                v9 = __s1;
                goto LABEL_8;
              case 7:
                if (sub_13620() || memcmp(__s1 + 32, v5 + 8, 0x20uLL))
                {
                  break;
                }

                v9 = __s1 + 64;
                __s2 = v5 + 16;
                v8 = 24;
                goto LABEL_8;
              case 9:
                if (sub_13620())
                {
                  break;
                }

                v9 = __s1 + 40;
                __s2 = v5 + 10;
                goto LABEL_33;
              case 0xA:
                if (sub_13620() || memcmp(__s1 + 36, v5 + 9, 0x10uLL))
                {
                  break;
                }

                v9 = __s1 + 52;
                __s2 = v5 + 13;
LABEL_33:
                v8 = 16;
                goto LABEL_8;
              case 0xD:
                v8 = *(__s1 + 8);
                if (v8 != __s2[8])
                {
                  break;
                }

                v9 = __s1 + 36;
                __s2 += 9;
                goto LABEL_8;
              case 0x14:
                if (sub_13620())
                {
                  break;
                }

                v9 = __s1 + 32;
                __s2 = v5 + 8;
                v8 = 32;
                goto LABEL_8;
              case 0x15:
                if (sub_13620())
                {
                  break;
                }

                v9 = __s1 + 36;
                __s2 = v5 + 9;
                v8 = 128;
LABEL_8:
                v10 = memcmp(v9, __s2, v8) == 0;
                goto LABEL_30;
              default:
                return result;
            }
          }
        }

        v10 = 0;
LABEL_30:
        result = 0;
        *a3 = v10;
      }
    }
  }

  return result;
}

uint64_t GetSerializedAddCredentialSize(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 2;
  }

  v5 = !v4;
  result = 4294967293;
  if (a4 && a2 && (v5 & 1) == 0 && *a2 <= 0x17u && ((1 << *a2) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a4 = a2[7] + 52;
  }

  return result;
}

uint64_t SerializeAddCredential(_OWORD *a1, unsigned int *__src, int a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3 == 2;
  }

  v7 = !v6;
  result = 4294967293;
  if (a5)
  {
    if (a4)
    {
      if (__src)
      {
        if ((v7 & 1) == 0)
        {
          result = 4294967293;
          if (*__src <= 0x17 && ((1 << *__src) & 0xFFF7FE) != 0 && *a5 >= __src[7] + 52)
          {
            if (a1)
            {
              *a4 = *a1;
            }

            else
            {
              *a4 = 0;
              *(a4 + 8) = 0;
            }

            v13 = *a5 - 16;
            result = SerializeCredential(__src, (a4 + 16), &v13);
            if (!result)
            {
              v12 = v13;
              *(a4 + v13 + 16) = a3;
              *a5 = v12 + 20;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t DeserializeAddCredentialType(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  result = 4294967293;
  if (a2 >= 0x34 && a1)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a1 + 16);
    }
  }

  return result;
}

uint64_t LibSer_GetSerializedContainsCredential_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 4294967293;
  if (a1)
  {
    if (a4)
    {
      result = 0;
      *a4 = 24;
    }
  }

  return result;
}

double LibSer_GetSerializedContainsCredential_Serialize(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, __n128 *a4, void *a5)
{
  if (a4 && a1 && a5 && *a5 >= 0x18uLL)
  {
    *&result = sub_13710(a2, a3, a4, a5, a1).n128_u64[0];
  }

  return result;
}

uint64_t GetSerializedRemoveCredentialSize(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 2;
  }

  v5 = !v4;
  result = 4294967293;
  if (a4 && a2 && (v5 & 1) == 0 && *a2 <= 0x17u && ((1 << *a2) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a4 = a2[7] + 52;
  }

  return result;
}

uint64_t GetSerializedReplacePassphraseCredentialSize(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 2;
  }

  v5 = !v4;
  result = 4294967293;
  if (a4 && a2 && (v5 & 1) == 0 && *a2 <= 0x17u && ((1 << *a2) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a4 = a2[7] + 52;
  }

  return result;
}

uint64_t SerializeCredentialList(unsigned int **a1, unsigned int a2, unsigned int *a3, void *a4)
{
  if (a2)
  {
    v6 = a1 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6 || a3 == 0 || a4 == 0)
  {
    return 4294967293;
  }

  v16[7] = v4;
  v16[8] = v5;
  *a3 = a2;
  if (a2)
  {
    v11 = a1;
    v12 = a2;
    v13 = 4;
    while (1)
    {
      v14 = *v11;
      if (!*v11)
      {
        return 4294967293;
      }

      v16[0] = *a4 - v13;
      result = SerializeCredential(v14, a3 + v13, v16);
      if (result)
      {
        return result;
      }

      v13 += v16[0];
      ++v11;
      if (!--v12)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v13 = 4;
LABEL_18:
    result = 0;
    *a4 = v13;
  }

  return result;
}

uint64_t DeserializeCredentialList(unsigned int *a1, int a2, void *a3, _DWORD *a4)
{
  __dst[0] = 0;
  v4 = 4294967293;
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        v7 = a1;
        v8 = *a1;
        if (v8 <= 0x3E8)
        {
          if (v8)
          {
            v10 = acm_mem_alloc_typed(8 * v8, 0x2004093837F09uLL);
            acm_mem_alloc_info("array of ACMCredentialRef", v10, 8 * v8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 1897, "DeserializeCredentialList");
            if (v10)
            {
              v15 = 4;
              v16 = v10;
              v17 = v8;
              while (1)
              {
                DeserializeCredential(v7 + v15, a2 - v15, v16, __dst, v11, v12, v13, v14, v20, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10]);
                if (v18)
                {
                  break;
                }

                v15 += LODWORD(__dst[0]);
                v16 += 8;
                if (!--v17)
                {
                  goto LABEL_12;
                }
              }

              v4 = v18;
              DeallocCredentialList(v10, v8);
            }

            else
            {
              return 4294967292;
            }
          }

          else
          {
            v10 = 0;
LABEL_12:
            v4 = 0;
            *a4 = v8;
            *a3 = v10;
          }
        }
      }
    }
  }

  return v4;
}

void DeallocCredentialList(_DWORD **a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1;
      v5 = a2;
      do
      {
        if (*v4)
        {
          Util_DeallocCredential(*v4);
          *v4 = 0;
        }

        ++v4;
        --v5;
      }

      while (v5);
    }

    v6 = 8 * v3;
    acm_mem_free_info("array of ACMCredentialRef", a1, v6, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 1935, "DeallocCredentialList");

    acm_mem_free(a1, v6);
  }
}

uint64_t GetSerializedGetContextPropertySize(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 4294967293;
  }

  result = 0;
  *a3 = 20;
  return result;
}

__n128 SerializeGetContextProperty(__n128 *a1, unsigned __int32 a2, __n128 *a3, void *a4)
{
  if (a1 && a3 && a4 && *a4 >= 0x14uLL)
  {
    result = *a1;
    *a3 = *a1;
    a3[1].n128_u32[0] = a2;
    *a4 = 20;
  }

  return result;
}

uint64_t DeserializeGetContextProperty(uint64_t a1, unint64_t a2, _OWORD *a3, _DWORD *a4)
{
  result = 4294967293;
  if (a2 >= 0x10 && a1 && a3 && a4)
  {
    *a3 = *a1;
    if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != 0x10)
    {
      result = 0;
      *a4 = *(a1 + 16);
    }
  }

  return result;
}

uint64_t LibSer_GetAclAuthMethod_GetSize(uint64_t a1, void *a2)
{
  if (a2)
  {
    return sub_1364C(a1, a2);
  }

  else
  {
    return 4294967293;
  }
}

__n128 LibSer_GetAclAuthMethod_Serialize(__n128 *a1, __n128 *a2, void *a3)
{
  if (a1 && a2 && a3 && *a3 >= 0x10uLL)
  {
    result = *a1;
    *a2 = *a1;
    *a3 = 16;
  }

  return result;
}

__n128 LibSer_GetAclAuthMethod_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3)
{
  if (a2 >= 0x10 && a1)
  {
    if (a3)
    {
      result = *a1;
      *a3 = *a1;
    }
  }

  return result;
}

uint64_t LibSer_ContextCredentialGetProperty_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    return sub_1363C(a1, a2, a3, a4);
  }

  else
  {
    return 4294967293;
  }
}

double LibSer_ContextCredentialGetProperty_Serialize(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, __n128 *a4, void *a5)
{
  if (a1 && a4 && a5 && *a5 >= 0x18uLL)
  {
    *&result = sub_13710(a2, a3, a4, a5, a1).n128_u64[0];
  }

  return result;
}

__n128 LibSer_ContextCredentialGetProperty_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2 >= 0x18 && a1 && a3 && a4)
  {
    if (a5)
    {
      result = *a1;
      *a3 = *a1;
      *a4 = a1[1].n128_u32[0];
      *a5 = a1[1].n128_u32[1];
    }
  }

  return result;
}

uint64_t LibSer_GlobalContextCredentialGetProperty_GetSize(void *a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  result = 0;
  *a1 = 8;
  return result;
}

uint64_t LibSer_GlobalContextCredentialGetProperty_Serialize(int a1, int a2, _DWORD *a3, void *a4)
{
  result = 4294967293;
  if (a3 && a4 && *a4 >= 8uLL)
  {
    result = 0;
    *a3 = a1;
    a3[1] = a2;
    *a4 = 8;
  }

  return result;
}

uint64_t LibSer_GlobalContextCredentialGetProperty_Deserialize(_DWORD *a1, unint64_t a2, _DWORD *a3, _DWORD *a4)
{
  result = 4294967293;
  if (a2 >= 8 && a1 && a3)
  {
    if (a4)
    {
      result = 0;
      *a3 = *a1;
      *a4 = a1[1];
    }
  }

  return result;
}

uint64_t LibSer_RemoveCredentialByType_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    return sub_1363C(a1, a2, a3, a4);
  }

  else
  {
    return 4294967293;
  }
}

double LibSer_RemoveCredentialByType_Serialize(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, __n128 *a4, void *a5)
{
  if (a1 && a4 && a5 && *a5 >= 0x18uLL)
  {
    *&result = sub_13710(a2, a3, a4, a5, a1).n128_u64[0];
  }

  return result;
}

__n128 LibSer_RemoveCredentialByType_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2 >= 0x18 && a1 && a3 && a4)
  {
    if (a5)
    {
      result = *a1;
      *a3 = *a1;
      *a4 = a1[1].n128_u32[0];
      *a5 = a1[1].n128_u32[1];
    }
  }

  return result;
}

uint64_t LibSer_DeleteContext_GetSize(uint64_t a1, void *a2)
{
  if (a2)
  {
    return sub_1364C(a1, a2);
  }

  else
  {
    return 4294967293;
  }
}

__n128 LibSer_DeleteContext_Serialize(__n128 *a1, __n128 *a2, void *a3)
{
  if (a1 && a2 && a3 && *a3 >= 0x10uLL)
  {
    result = *a1;
    *a2 = *a1;
    *a3 = 16;
  }

  return result;
}

__n128 LibSer_DeleteContext_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3)
{
  if (a2 >= 0x10 && a1)
  {
    if (a3)
    {
      result = *a1;
      *a3 = *a1;
    }
  }

  return result;
}

uint64_t LibSer_StorageAnyCmd_DeserializeCommonFields(uint64_t a1, unint64_t a2, _OWORD *a3, _DWORD *a4)
{
  result = 4294967293;
  if (a1 && a2 >= 0x14)
  {
    if (a3)
    {
      *a3 = *a1;
    }

    result = 0;
    if (a4)
    {
      *a4 = *(a1 + 16);
    }
  }

  return result;
}

uint64_t LibSer_StorageSetData_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a4)
  {
    return 4294967291;
  }

  result = sub_1365C(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, 0);
  if (!result)
  {
    *v8 = v9 + v13 + 28;
  }

  return result;
}

uint64_t LibSer_StorageSetData_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 4294967293;
  if (a1 && a2 >= 0x18 && a3 && a4 && a5 && a6 && a7 && a8)
  {
    v20[1] = v8;
    v20[2] = v9;
    sub_136CC(a1, a2, a3, a4);
    v16 = *(v11 + 20);
    v20[0] = 24;
    *v17 = v16;
    if (v16)
    {
      v18 = v16 + 24;
      if (v18 > v12)
      {
        return 4294967293;
      }

      *v13 = v11 + 24;
      v20[0] = v18;
    }

    else
    {
      *v13 = 0;
    }

    return sub_13988(v11, v12, v20, v14, v15);
  }

  return v10;
}

uint64_t LibSer_StorageGetData_GetSize(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  if (!a3)
  {
    return 4294967291;
  }

  result = sub_1375C(a1, a2, &v5);
  if (!result)
  {
    *a3 = v5 + 25;
  }

  return result;
}

uint64_t LibSer_StorageGetData_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3, _DWORD *a4, uint64_t a5)
{
  v7 = 4294967293;
  if (a1 && a2 >= 0x15 && a3 && a4 && a5)
  {
    v14[1] = v5;
    v14[2] = v6;
    sub_136CC(a1, a2, a3, a4);
    *v9 = *(v8 + 20) != 0;
    v14[0] = 21;
    return sub_13988(v8, v10, v14, v11, v12);
  }

  return v7;
}

uint64_t LibSer_GetUnlockSecret_GetSize(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  if (!a3)
  {
    return 4294967291;
  }

  result = sub_1375C(a1, a2, &v5);
  if (!result)
  {
    *a3 = v5 + 20;
  }

  return result;
}

void LibSer_GetUnlockSecret_Serialize(_OWORD *a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  if (a1)
  {
    if (a4)
    {
      if (a5)
      {
        sub_136EC();
        if (!sub_1375C(v8, a3, v9))
        {
          sub_136E0();
          if (v10)
          {
            *a4 = *a1;
            v11 = sub_17F0(16, v19);
            if (!v11)
            {
              sub_13704(v11, v12, v13, v14, v15, v16, v17, v18, v20);
            }
          }
        }
      }
    }
  }
}

uint64_t LibSer_GetUnlockSecret_Deserialize(_OWORD *a1, unint64_t a2, _OWORD *a3, void *a4, _DWORD *a5)
{
  if (!a1)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a2 >= 0x10 && a3 && a4)
  {
    if (a5)
    {
      v9[1] = v5;
      v9[2] = v6;
      *a3 = *a1;
      v9[0] = 16;
      return sub_13988(a1, a2, v9, a4, a5);
    }
  }

  return result;
}

uint64_t LibSer_GetUnlockSecretResponse_GetSize(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294967291;
  }

  result = 0;
  *a2 = a1 + 1;
  return result;
}

uint64_t LibSer_GetUnlockSecretResponse_Serialize(void *__src, size_t __n, char a3, _BYTE *a4, void *a5)
{
  result = 4294967293;
  if (__src && __n && a4 && a5)
  {
    v9 = __n + 1;
    if (*a5 < __n + 1)
    {
      return 4294967293;
    }

    else
    {
      *a4 = a3;
      memcpy(a4 + 1, __src, __n);
      result = 0;
      *a5 = v9;
    }
  }

  return result;
}

uint64_t LibSer_GetUnlockSecretResponse_Deserialize(_BYTE *a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  result = 4294967293;
  if (a2 && a1 && a3 && a4)
  {
    if (a5)
    {
      result = 0;
      *a5 = *a1;
      *a3 = a1 + 1;
      *a4 = a2 - 1;
    }
  }

  return result;
}

uint64_t LibSer_SEPControl_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a4)
  {
    return 4294967291;
  }

  result = sub_1365C(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, 0);
  if (!result)
  {
    *v8 = v9 + v13 + 24;
  }

  return result;
}

void LibSer_SEPControl_Serialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1369C();
  a19 = v20;
  a20 = v27;
  v29 = v28;
  if (v25)
  {
    v30 = v26;
    if (v26)
    {
      v31 = v25;
      v32 = v24;
      v33 = v23;
      v34 = v22;
      v35 = v21;
      sub_136EC();
      if (!sub_1375C(v36, v34, v37))
      {
        sub_136E0();
        if (v38)
        {
          if (v29)
          {
            *v31 = *v29;
          }

          else
          {
            *v31 = 0;
            *(v31 + 8) = 0;
          }

          a9 = 16;
          if (!sub_1384C(v35, v34, v31, &a9))
          {
            v39 = a9;
            *(v31 + a9) = v32;
            v40 = v39 + 4;
            memcpy((v31 + v39 + 4), v33, v32);
            *v30 = v40 + v32;
          }
        }
      }
    }
  }

  sub_136B4();
}

uint64_t LibSer_SEPControl_Deserialize(_OWORD *a1, unint64_t a2, _OWORD *a3, void *a4, _DWORD *a5, unint64_t *a6, void *a7)
{
  if (!a1)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a2 >= 0x18 && a3 && a4 && a5 && a6 && a7)
  {
    *a3 = *a1;
    v12 = 16;
    result = sub_13988(a1, a2, &v12, a4, a5);
    if (!result)
    {
      v11 = a1 + v12 + 4;
      *a7 = *(a1 + v12);
      *a6 = v11;
    }
  }

  return result;
}

uint64_t LibSer_SEPControlResponse_GetSize(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294967291;
  }

  result = 0;
  *a2 = a1 + 4;
  return result;
}

uint64_t LibSer_SEPControlResponse_Serialize(void *__src, size_t __n, _DWORD *a3, uint64_t *a4)
{
  result = 4294967293;
  if (a3 && a4)
  {
    v8 = __n + 4;
    if (*a4 < __n + 4)
    {
      return 4294967293;
    }

    else
    {
      *a3 = __n;
      if (__src)
      {
        memcpy(a3 + 1, __src, __n);
      }

      else
      {
        v8 = 4;
      }

      result = 0;
      *a4 = v8;
    }
  }

  return result;
}

uint64_t LibSer_SEPControlResponse_Deserialize(unsigned int *a1, unint64_t a2, void *a3, void *a4)
{
  if (!a1)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a2 >= 4 && a3 && a4)
  {
    result = 0;
    v7 = *a1;
    v6 = a1 + 1;
    *a4 = v7;
    if (!v7)
    {
      v6 = 0;
    }

    *a3 = v6;
  }

  return result;
}

uint64_t LibSer_ACMDeserializeSEPControlCode()
{
  sub_187C();
  if (v4 <= 0xA)
  {
    printf("%s: %s: called.\n", "ACM", "LibSer_ACMDeserializeSEPControlCode");
  }

  v10 = 0;
  v9 = 0;
  v5 = 4294967293;
  if (v1 && v2)
  {
    if (v2 < 0x18)
    {
      v5 = 4294967293;
    }

    else
    {
      v11 = 16;
      v6 = sub_13988(v1, v2, &v11, &v10, &v9);
      if (v6)
      {
        v5 = v6;
      }

      else
      {
        v5 = 4294967293;
        if (v1 + v11 != -4 && *(v1 + v11) >= 4u)
        {
          v5 = 0;
          *v0 = *(v1 + v11 + 4);
        }
      }
    }
  }

  Util_SafeDeallocParameters(v10, v9);
  if (v5)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= *(v3 + 160))
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibSer_ACMDeserializeSEPControlCode", v5);
  }

  return v5;
}

uint64_t crypto_generateKeyFromSharedInfo(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, _OWORD *a7)
{
  if ((a1 - 3) < 0xFFFFFFFE)
  {
    sub_1894();
    goto LABEL_31;
  }

  v7 = a4;
  if (a2)
  {
    v9 = a3 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (a1 == 1)
  {
    if (!a7)
    {
      v10 = 1;
    }

    if (v10)
    {
      sub_1894();
    }

    else
    {
      ccsha256_di();
      v11 = cchkdf();
      v7 = sub_13D60(v11, "cchkdf");
      if (v7)
      {
        v12 = 70;
      }

      else
      {
        *a7 = 0u;
        a7[1] = 0u;
        v12 = 10;
      }
    }

    if (v12 < gACMLoggingLevel)
    {
      goto LABEL_28;
    }

    v13 = v7;
    v14 = "crypto_generateKeyFromSharedInfo_version1";
  }

  else
  {
    if (a6)
    {
      v16 = a7 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v10 = 1;
    }

    if (v10)
    {
      sub_1894();
    }

    else
    {
      ccsha256_di();
      strlen(a6);
      v17 = cchkdf();
      v7 = sub_13D60(v17, "cchkdf");
      if (v7)
      {
        v18 = 70;
      }

      else
      {
        *a7 = 0u;
        a7[1] = 0u;
        v18 = 10;
      }
    }

    if (v18 < gACMLoggingLevel)
    {
      goto LABEL_28;
    }

    v13 = v7;
    v14 = "crypto_generateKeyFromSharedInfo_version2";
  }

  printf("%s: %s: returning, err = %ld.\n", "ACM", v14, v13);
LABEL_28:
  if (v7)
  {
    v19 = 70;
  }

  else
  {
    v19 = 10;
  }

LABEL_31:
  if (v19 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "crypto_generateKeyFromSharedInfo", v7);
  }

  return v7;
}

uint64_t crypto_generateKey(uint64_t a1)
{
  v2 = 70;
  if (a1)
  {
    sub_13EB4(a1, 32);
    sub_13E60();
    if (v3)
    {
      v2 = 10;
    }

    else
    {
      v2 = 70;
    }
  }

  else
  {
    v1 = 4294967293;
  }

  if (v2 >= gACMLoggingLevel)
  {
    sub_13E40();
    printf("%s: %s: returning, err = %ld.\n", v5, v6, v7);
  }

  return v1;
}

uint64_t crypto_encryptText(uint64_t a1, uint64_t a2)
{
  if ((a1 - 3) < 0xFFFFFFFE)
  {
    sub_1894();
  }

  else
  {
    if (a1 == 1)
    {
      sub_13DF0(a1, a2);
      sub_14000();
    }

    else
    {
      sub_13DF0(a1, a2);
      sub_141C0();
    }

    sub_13E60();
  }

  sub_13E34();
  if (v3)
  {
    sub_13E40();
    printf("%s: %s: returning, err = %ld.\n", v5, v6, v7);
  }

  return v2;
}

uint64_t crypto_decryptText(uint64_t a1, uint64_t a2)
{
  if ((a1 - 3) < 0xFFFFFFFE)
  {
    sub_1894();
  }

  else
  {
    if (a1 == 1)
    {
      sub_13DF0(a1, a2);
      sub_143B0();
    }

    else
    {
      sub_13DF0(a1, a2);
      sub_1458C();
    }

    sub_13E60();
  }

  sub_13E34();
  if (v3)
  {
    sub_13E40();
    printf("%s: %s: returning, err = %ld.\n", v5, v6, v7);
  }

  return v2;
}

uint64_t crypto_deriveKeyAndEncryptData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  sub_13E4C();
  if (v19)
  {
    v20 = v14 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20 || v15 == 0 || v16 == 0 || v17 == 0 || v18 == 0 || a10 == 0)
  {
    sub_1894();
  }

  else
  {
    v26 = v11;
    if (a9)
    {
      v30 = sub_21AC(v11, v12, v13, v14, v15, v16, v17, v18, v31, v32, v33, v34, v35[0], v35[1]);
      if (v30)
      {
        v10 = v30;
      }

      else
      {
        v10 = crypto_encryptText(v26, v35);
        if (!v10)
        {
          acm_explicit_bzero(v35, 0x20uLL);
        }
      }
    }

    else
    {
      v27 = 32;
      if (v11 != 1)
      {
        v27 = 33;
      }

      v28 = v27 + v17;
      if (v28)
      {
        v10 = 0;
        *a10 = v28;
      }

      else
      {
        v10 = 4294967280;
      }
    }
  }

  sub_13E34();
  if (v19)
  {
    sub_13E40();
    printf("%s: %s: returning, err = %ld.\n", v31, v32, v33);
  }

  return v10;
}

uint64_t crypto_deriveKeyAndDecryptData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  sub_13E4C();
  if (v19)
  {
    v20 = v14 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20 || v15 == 0 || v16 == 0 || v17 == 0 || a10 == 0)
  {
    sub_1894();
    goto LABEL_26;
  }

  v25 = v11;
  if (!a9)
  {
    if (v11 == 1)
    {
      if (v17 <= 0x1F)
      {
        goto LABEL_25;
      }

      v26 = v17 - 32;
    }

    else
    {
      v26 = v17 - 33;
      if (v17 < 0x21)
      {
        goto LABEL_25;
      }
    }

    if (v26)
    {
      v10 = 0;
      *a10 = v26;
      goto LABEL_26;
    }

LABEL_25:
    v10 = 4294967280;
    goto LABEL_26;
  }

  v28 = sub_21AC(v11, v12, v13, v14, v15, v16, v17, v18, v29, v30, v31, v32, v33[0], v33[1]);
  if (v28)
  {
    v10 = v28;
  }

  else
  {
    v10 = crypto_decryptText(v25, v33);
    if (!v10)
    {
      acm_explicit_bzero(v33, 0x20uLL);
    }
  }

LABEL_26:
  sub_13E34();
  if (v19)
  {
    sub_13E40();
    printf("%s: %s: returning, err = %ld.\n", v29, v30, v31);
  }

  return v10;
}

uint64_t crypto_generateRandomSaltLazily()
{
  sub_1894();
  if (v1)
  {
    v3 = v2;
    if (v2)
    {
      v4 = v1;
      while (Util_isNullOrZeroMemory(v4, v3))
      {
        v5 = sub_13EB4(v4, v3);
        if (v5)
        {
          v0 = v5;
          goto LABEL_8;
        }
      }

      v0 = 0;
    }
  }

LABEL_8:
  sub_13E34();
  if (v6)
  {
    sub_13E40();
    printf("%s: %s: returning, err = %ld.\n", v8, v9, v10);
  }

  return v0;
}

void LibCall_ACMGlobalContextCredentialGetProperty_Block(uint64_t (*a1)(uint64_t, uint64_t, void, uint64_t *, uint64_t, _BYTE *, uint64_t *), uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGlobalContextCredentialGetProperty_Block");
  }

  bzero(v18, 0x100uLL);
  v16 = 256;
  if (a1)
  {
    v17 = 0;
    v15 = 8;
    Property_Serialize = LibSer_GlobalContextCredentialGetProperty_Serialize(a3, a4, &v17, &v15);
    if (Property_Serialize)
    {
LABEL_7:
      v11 = Property_Serialize;
      goto LABEL_8;
    }

    if (v15 == 8)
    {
      Property_Serialize = a1(a2, 27, 0, &v17, 8, v18, &v16);
      goto LABEL_7;
    }

    v11 = 4294967291;
  }

  else
  {
    v11 = 4294967293;
  }

LABEL_8:
  if (a5)
  {
    v12 = sub_1824();
    v13(v12, v11);
  }

  if (v11)
  {
    v14 = 70;
  }

  else
  {
    v14 = 10;
  }

  if (v14 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMGlobalContextCredentialGetProperty_Block", v11);
  }
}

uint64_t LibCall_ACMContextVerifyPolicyWithPreflight_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextVerifyPolicyWithPreflight_Block");
  }

  v17 = 0;
  v16 = 0;
  v12 = 70;
  v13 = 4294967293;
  if (a3 && a4 && a6)
  {
    v13 = LibCall_ACMContextVerifyPolicyEx(a1, a2, a3, a4, a5, 0, 0, 0, &v16, &v17);
    v14 = v17;
    if (!v13)
    {
      (*(a6 + 16))(a6, v16, v17);
      v14 = v17;
    }

    if (v14)
    {
      Util_DeallocRequirement(v14);
    }

    if (v13)
    {
      v12 = 70;
    }

    else
    {
      v12 = 10;
    }
  }

  if (v12 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextVerifyPolicyWithPreflight_Block", v13);
  }

  return v13;
}

int *LibCall_ACMContextVerifyPolicyEx_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextVerifyPolicyEx_Block");
  }

  v17 = 0;
  v18 = 0;
  v22 = 0;
  v21 = 0;
  v19 = 4294967293;
  if (a3 && a4 && a9)
  {
    v19 = LibCall_ACMContextVerifyPolicyEx(a1, a2, a3, a4, a5, a6, a7, a8, &v21, &v22);
    v18 = v22;
    v17 = v21;
  }

  (*(a9 + 16))(a9, v19, v17 & 1, v18);
  result = v22;
  if (v22)
  {
    result = Util_DeallocRequirement(v22);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMContextVerifyPolicyEx_Block");
  }

  return result;
}

uint64_t LibCall_ACMGetEnvironmentVariable_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGetEnvironmentVariable_Block");
  }

  memset(v17, 0, sizeof(v17));
  v16 = 128;
  if (!a4)
  {
    v14 = 70;
    v9 = 4294967293;
    goto LABEL_11;
  }

  if (a3 == 36)
  {
    v8 = acm_mem_alloc_data(0x800uLL);
    acm_mem_alloc_info("<data>", v8, 2048, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCallBlock.c", 162, "LibCall_ACMGetEnvironmentVariable_Block");
    if (!v8)
    {
      v14 = 70;
      v9 = 4294967292;
      goto LABEL_11;
    }

    v16 = 2048;
    v9 = LibCall_ACMGetEnvironmentVariable(a1, a2, 36, v8, &v16);
    if (!v9)
    {
      v10 = sub_1824();
      v11(v10);
      acm_mem_free_info("<data>", v8, 0x800uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCallBlock.c", 176, "LibCall_ACMGetEnvironmentVariable_Block");
      acm_mem_free_data(v8, 0x800uLL);
LABEL_10:
      v14 = 10;
      goto LABEL_11;
    }

    acm_mem_free_info("<data>", v8, 0x800uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCallBlock.c", 176, "LibCall_ACMGetEnvironmentVariable_Block");
    acm_mem_free_data(v8, 0x800uLL);
  }

  else
  {
    v9 = LibCall_ACMGetEnvironmentVariable(a1, a2, a3, v17, &v16);
    if (!v9)
    {
      v12 = sub_1824();
      v13(v12);
      goto LABEL_10;
    }
  }

  v14 = 70;
LABEL_11:
  if (v14 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMGetEnvironmentVariable_Block", v9);
  }

  return v9;
}

uint64_t LibCall_ACMTRMLoadState_Block(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMTRMLoadState_Block");
  }

  bzero(v13, 0x2000uLL);
  v12 = 0x2000;
  if (v3)
  {
    v7 = LibCall_ACMTRMLoadState(v6, v5, v13, &v12);
    if (v7)
    {
      v10 = 70;
    }

    else
    {
      v8 = sub_1824();
      v9(v8);
      v10 = 10;
    }
  }

  else
  {
    v10 = 70;
    v7 = 4294967293;
  }

  if (v10 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMTRMLoadState_Block", v7);
  }

  return v7;
}

uint64_t LibCall_ACMContextUnloadToImage_Block(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextUnloadToImage_Block");
  }

  bzero(v9, 0x1000uLL);
  if (v2)
  {
    LibCall_ACMContextUnloadToImage();
    v4 = v3;
    if (v3)
    {
      v7 = 70;
    }

    else
    {
      v5 = sub_1824();
      v6(v5);
      v7 = 10;
    }
  }

  else
  {
    v7 = 70;
    v4 = 4294967293;
  }

  if (v7 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextUnloadToImage_Block", v4);
  }

  return v4;
}

uint64_t Util_WriteToBuffer(uint64_t a1, size_t a2, void *a3, void *__src, size_t __n)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_WriteToBuffer");
  }

  if (a3)
  {
    v10 = *a3;
    v11 = *a3 + __n;
    if (!__CFADD__(*a3, __n))
    {
      if (a1 && v11 > a2)
      {
        v12 = 4294967276;
        goto LABEL_19;
      }

      if (!a1 || !__src || !__n)
      {
        goto LABEL_12;
      }

      if (!__CFADD__(a1, v10))
      {
        memcpy((a1 + v10), __src, __n);
LABEL_12:
        v12 = 0;
        *a3 = v11;
        v13 = 10;
        goto LABEL_13;
      }
    }

    v12 = 4294967291;
  }

  else
  {
    v12 = 4294967293;
  }

LABEL_19:
  v13 = 70;
LABEL_13:
  if (v13 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "Util_WriteToBuffer", v12);
  }

  return v12;
}

uint64_t Util_ReadFromBuffer(uint64_t a1, size_t a2, void *a3, void *__dst, size_t __n)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_ReadFromBuffer");
  }

  v10 = 4294967293;
  v11 = 70;
  if (a1 && a3)
  {
    v12 = *a3;
    v13 = *a3 + __n;
    if (!__CFADD__(*a3, __n))
    {
      if (v13 > a2)
      {
        v10 = 4294967276;
        goto LABEL_17;
      }

      if (!__dst || !__n)
      {
        goto LABEL_11;
      }

      if (!__CFADD__(a1, v12))
      {
        memcpy(__dst, (a1 + v12), __n);
LABEL_11:
        v10 = 0;
        *a3 = v13;
        v11 = 10;
        goto LABEL_12;
      }
    }

    v10 = 4294967291;
LABEL_17:
    v11 = 70;
  }

LABEL_12:
  if (v11 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "Util_ReadFromBuffer", v10);
  }

  return v10;
}

rsize_t Util_DeallocCredential(_DWORD *a1)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_DeallocCredential");
  }

  if (a1)
  {
    v2 = 4294967293;
    v3 = 70;
    switch(*a1)
    {
      case 1:
        v4 = "ACMCredential - ACMCredentialDataPasscodeValidated";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 60;
        v5 = a1;
        v6 = 60;
        v9 = 146;
        goto LABEL_6;
      case 2:
        v4 = "ACMCredential - ACMCredentialDataPassphraseEntered";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 168;
        v5 = a1;
        v6 = 168;
        v9 = 138;
        goto LABEL_6;
      case 3:
        v4 = "ACMCredential - ACMCredentialDataBiometryMatched";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 337;
        v5 = a1;
        v6 = 337;
        v9 = 142;
        goto LABEL_6;
      case 4:
      case 5:
      case 6:
      case 8:
      case 0xE:
      case 0x10:
      case 0x13:
      case 0x16:
      case 0x17:
        sub_151E0();
        v9 = 191;
        goto LABEL_6;
      case 7:
        v4 = "ACMCredential - ACMCredentialDataUserOutputDisplayed";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 88;
        v5 = a1;
        v6 = 88;
        v9 = 154;
        goto LABEL_6;
      case 9:
        v4 = "ACMCredential - ACMCredentialDataContinuityUnlock";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 56;
        v5 = a1;
        v6 = 56;
        v9 = 158;
        goto LABEL_6;
      case 0xA:
        v4 = "ACMCredential - ACMCredentialDataPasscodeValidated2";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 84;
        v5 = a1;
        v6 = 84;
        v9 = 150;
        goto LABEL_6;
      case 0xC:
      case 0xF:
        v4 = "ACMCredential - ACMCredentialDataKextDenyList";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 40;
        v5 = a1;
        v6 = 40;
        v9 = 163;
        goto LABEL_6;
      case 0xD:
        v4 = "ACMCredential - ACMCredentialDataPassphraseExtractable";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 164;
        v5 = a1;
        v6 = 164;
        v9 = 133;
        goto LABEL_6;
      case 0x11:
        v4 = "ACMCredential - ACMCredentialDataSecureIntent";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 113;
        v5 = a1;
        v6 = 113;
        v9 = 167;
        goto LABEL_6;
      case 0x12:
        v4 = "ACMCredential - ACMCredentialDataBiometryMatchAttempted";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 52;
        v5 = a1;
        v6 = 52;
        v9 = 171;
        goto LABEL_6;
      case 0x14:
        v4 = "ACMCredential - ACMCredentialDataAP";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 64;
        v5 = a1;
        v6 = 64;
        v9 = 175;
        goto LABEL_6;
      case 0x15:
        v4 = "ACMCredential - ACMCredentialDataSignature";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 164;
        v5 = a1;
        v6 = 164;
        v9 = 179;
LABEL_6:
        acm_mem_free_info(v4, v5, v6, v7, v9, v8);
        acm_mem_free(a1, v2);
        v2 = 0;
        v3 = 10;
        break;
      default:
        break;
    }
  }

  else
  {
    v2 = 4294967293;
    v3 = 70;
  }

  if (v3 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "Util_DeallocCredential", v2);
  }

  return v2;
}

uint64_t Util_AllocCredential(int a1, void *a2)
{
  if (!a2)
  {
    return 4294967293;
  }

  result = 4294967293;
  switch(a1)
  {
    case 1:
      sub_151BC();
      v6 = acm_mem_alloc_typed(0x3CuLL, v18);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataPasscodeValidated", v6, 60, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 230, "Util_AllocCredential");
      v7 = 28;
      goto LABEL_4;
    case 2:
      sub_151BC();
      v6 = acm_mem_alloc_typed(0xA8uLL, v19);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataPassphraseEntered", v6, 168, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 220, "Util_AllocCredential");
      v7 = 136;
      goto LABEL_4;
    case 3:
      sub_151BC();
      v6 = acm_mem_alloc_typed(0x151uLL, v15);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataBiometryMatched", v6, 337, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 225, "Util_AllocCredential");
      v7 = 305;
      goto LABEL_4;
    case 4:
    case 5:
    case 6:
    case 8:
    case 14:
    case 16:
    case 19:
    case 22:
    case 23:
      sub_151BC();
      v6 = acm_mem_alloc_typed(0x20uLL, v5);
      acm_mem_alloc_info("ACMCredential", v6, 32, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 284, "Util_AllocCredential");
      v7 = 0;
      goto LABEL_4;
    case 7:
      sub_151BC();
      v6 = acm_mem_alloc_typed(0x58uLL, v17);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataUserOutputDisplayed", v6, 88, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 240, "Util_AllocCredential");
      v7 = 56;
      goto LABEL_4;
    case 9:
      sub_151BC();
      v6 = acm_mem_alloc_typed(0x38uLL, v14);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataContinuityUnlock", v6, 56, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 245, "Util_AllocCredential");
      v7 = 24;
      goto LABEL_4;
    case 10:
      sub_151BC();
      v6 = acm_mem_alloc_typed(0x54uLL, v20);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataPasscodeValidated2", v6, 84, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 235, "Util_AllocCredential");
      v7 = 52;
      goto LABEL_4;
    case 12:
    case 15:
      sub_151BC();
      v6 = acm_mem_alloc_typed(0x28uLL, v8);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataKextDenyList", v6, 40, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 251, "Util_AllocCredential");
      v7 = 8;
      goto LABEL_4;
    case 13:
      sub_151BC();
      v6 = acm_mem_alloc_typed(0xA4uLL, v21);
      v11 = "ACMCredential - ACMCredentialDataPassphraseExtractable";
      v12 = v6;
      v13 = 214;
      goto LABEL_17;
    case 17:
      sub_151BC();
      v6 = acm_mem_alloc_typed(0x71uLL, v9);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataSecureIntent", v6, 113, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 256, "Util_AllocCredential");
      v7 = 81;
      goto LABEL_4;
    case 18:
      sub_151BC();
      v6 = acm_mem_alloc_typed(0x34uLL, v16);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataBiometryMatchAttempted", v6, 52, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 261, "Util_AllocCredential");
      v7 = 20;
      goto LABEL_4;
    case 20:
      sub_151BC();
      v6 = acm_mem_alloc_typed(0x40uLL, v22);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataAP", v6, 64, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 266, "Util_AllocCredential");
      v7 = 32;
      goto LABEL_4;
    case 21:
      sub_151BC();
      v6 = acm_mem_alloc_typed(0xA4uLL, v10);
      v11 = "ACMCredential - ACMCredentialDataSignature";
      v12 = v6;
      v13 = 271;
LABEL_17:
      acm_mem_alloc_info(v11, v12, 164, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", v13, "Util_AllocCredential");
      v7 = 132;
LABEL_4:
      if (v6)
      {
        result = 0;
        *v6 = a1;
        v6[1] = 1;
        v6[7] = v7;
        v6[3] = -1;
        *a2 = v6;
      }

      else
      {
        result = 4294967292;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t Util_AllocRequirement(int a1, int a2, void *a3)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_AllocRequirement");
  }

  if (!a3)
  {
LABEL_61:
    v6 = 4294967293;
    goto LABEL_62;
  }

  v6 = 4294967293;
  v7 = 70;
  switch(a1)
  {
    case 1:
      sub_1834();
      v9 = acm_mem_alloc_typed(0x14uLL, v35);
      sub_21EC();
      v23 = 346;
      goto LABEL_57;
    case 2:
      sub_1834();
      v9 = acm_mem_alloc_typed(0x14uLL, v34);
      sub_21EC();
      v23 = 351;
      goto LABEL_57;
    case 3:
      sub_1834();
      v9 = acm_mem_alloc_typed(0xACuLL, v32);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataBiometryMatched", v9, 172, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 356, "Util_AllocRequirement");
      v10 = 156;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 4:
      sub_151F0();
      if (!v12)
      {
        goto LABEL_61;
      }

      sub_1834();
      v9 = acm_mem_alloc_typed(0x64uLL, v28);
      v29 = "ACMRequirement - ACMRequirementDataOr";
      v30 = v9;
      v31 = 414;
      goto LABEL_45;
    case 5:
      sub_151F0();
      if (!v12)
      {
        goto LABEL_61;
      }

      sub_1834();
      v9 = acm_mem_alloc_typed(0x64uLL, v33);
      v29 = "ACMRequirement - ACMRequirementDataAnd";
      v30 = v9;
      v31 = 406;
LABEL_45:
      acm_mem_alloc_info(v29, v30, 100, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", v31, "Util_AllocRequirement");
      v10 = 84;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 6:
    case 9:
    case 10:
    case 12:
    case 14:
    case 15:
    case 18:
    case 19:
    case 22:
    case 23:
    case 27:
    case 28:
      sub_1834();
      v9 = acm_mem_alloc_typed(0x10uLL, v8);
      acm_mem_alloc_info("ACMRequirement", v9, 16, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 336, "Util_AllocRequirement");
      v10 = 0;
      if (v9)
      {
        goto LABEL_6;
      }

      goto LABEL_58;
    case 7:
      sub_151F0();
      if (!v12)
      {
        goto LABEL_61;
      }

      sub_1834();
      v9 = acm_mem_alloc_typed(0x68uLL, v24);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataKofN", v9, 104, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 399, "Util_AllocRequirement");
      v10 = 88;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 8:
      sub_1834();
      v9 = acm_mem_alloc_typed(0x410uLL, v26);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataAccessGroups", v9, 1040, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 386, "Util_AllocRequirement");
      v10 = 1024;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 11:
      sub_1834();
      v9 = acm_mem_alloc_typed(0x18uLL, v36);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataPushButton", v9, 24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 341, "Util_AllocRequirement");
      v10 = 8;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 13:
      sub_1834();
      v9 = acm_mem_alloc_typed(0x30uLL, v27);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataUserOutputDisplayed", v9, 48, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 371, "Util_AllocRequirement");
      v10 = 32;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 16:
    case 17:
      goto LABEL_19;
    case 20:
      sub_1834();
      v9 = acm_mem_alloc_typed(0x14uLL, v37);
      sub_21EC();
      v23 = 361;
      goto LABEL_57;
    case 21:
      sub_1834();
      v9 = acm_mem_alloc_typed(0x14uLL, v17);
      sub_21EC();
      v23 = 366;
LABEL_57:
      acm_mem_alloc_info(v18, v19, v20, v21, v23, v22);
      v10 = 4;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 24:
      sub_1834();
      v9 = acm_mem_alloc_typed(0x434uLL, v16);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataAP", v9, 1076, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 376, "Util_AllocRequirement");
      v10 = 1060;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 25:
      sub_1834();
      v9 = acm_mem_alloc_typed(0x3BuLL, v15);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataKeyRef", v9, 59, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 381, "Util_AllocRequirement");
      v10 = 43;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 26:
      sub_1834();
      v9 = acm_mem_alloc_typed(0x2CuLL, v25);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataRatchet", v9, 44, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 392, "Util_AllocRequirement");
      v10 = 28;
      if (v9)
      {
LABEL_6:
        *v9 = a1;
        *(v9 + 1) = 0x100000001;
        v9[3] = v10;
        if ((a1 & 0xFFFFFFFE) == 4)
        {
          v11 = 4;
        }

        else if (a1 == 7)
        {
          v11 = 5;
        }

        else
        {
          if (a1 != 1000)
          {
LABEL_18:
            v6 = 0;
            *a3 = v9;
            v7 = 10;
            goto LABEL_19;
          }

          v11 = 13;
        }

        v9[v11] = a2;
        goto LABEL_18;
      }

LABEL_58:
      v6 = 4294967292;
LABEL_62:
      v7 = 70;
LABEL_19:
      if (v7 >= gACMLoggingLevel)
      {
        printf("%s: %s: returning, err = %ld.\n", "ACM", "Util_AllocRequirement", v6);
      }

      return v6;
    default:
      switch(a1)
      {
        case 1000:
          sub_151F0();
          if (!v12)
          {
            goto LABEL_61;
          }

          sub_1834();
          v9 = acm_mem_alloc_typed(0x88uLL, v13);
          acm_mem_alloc_info("ACMRequirement - ACMRequirementDataKofNWithAttributes", v9, 136, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 422, "Util_AllocRequirement");
          v10 = 120;
          if (!v9)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        case 1001:
          sub_1834();
          v9 = acm_mem_alloc_typed(0xB8uLL, v44);
          acm_mem_alloc_info("ACMRequirement - ACMRequirementDataBiometryMatchedWithAttributes", v9, 184, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 427, "Util_AllocRequirement");
          v10 = 168;
          if (!v9)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        case 1002:
          sub_1834();
          v9 = acm_mem_alloc_typed(0x20uLL, v42);
          v39 = "ACMRequirement - ACMRequirementDataPushButtonWithAttributes";
          v40 = v9;
          v41 = 432;
          goto LABEL_54;
        case 1003:
          sub_1834();
          v9 = acm_mem_alloc_typed(0x14uLL, v43);
          sub_21EC();
          v23 = 437;
          goto LABEL_57;
        case 1004:
          sub_1834();
          v9 = acm_mem_alloc_typed(0x20uLL, v38);
          v39 = "ACMRequirement - ACMRequirementDataPasscodeValidatedWithAttributes";
          v40 = v9;
          v41 = 442;
LABEL_54:
          acm_mem_alloc_info(v39, v40, 32, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", v41, "Util_AllocRequirement");
          v10 = 16;
          if (!v9)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        default:
          goto LABEL_19;
      }
  }
}

uint64_t Util_CreateRequirement(int a1, int a2)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_CreateRequirement");
  }

  v5 = 0;
  Util_AllocRequirement(a1, a2, &v5);
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: returning.\n", "ACM", "Util_CreateRequirement");
  }

  return v5;
}

rsize_t Util_DeallocRequirement(int *a1)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_DeallocRequirement");
  }

  if (!a1)
  {
    v7 = 4294967293;
    v8 = 70;
    goto LABEL_27;
  }

  v2 = *a1;
  if (*a1 == 4)
  {
    if (a1[4])
    {
      v6 = 0;
      do
      {
        Util_DeallocRequirement(*&a1[2 * v6++ + 5]);
      }

      while (v6 < a1[4]);
    }
  }

  else
  {
    switch(v2)
    {
      case 5:
        if (a1[4])
        {
          v4 = 0;
          do
          {
            Util_DeallocRequirement(*&a1[2 * v4++ + 5]);
          }

          while (v4 < a1[4]);
        }

        break;
      case 7:
        if (a1[5])
        {
          v5 = 0;
          do
          {
            Util_DeallocRequirement(*&a1[2 * v5++ + 6]);
          }

          while (v5 < a1[5]);
        }

        break;
      case 1000:
        if (a1[13])
        {
          v3 = 0;
          do
          {
            Util_DeallocRequirement(*&a1[2 * v3++ + 14]);
          }

          while (v3 < a1[13]);
        }

        break;
      default:
        goto LABEL_24;
    }
  }

  v2 = *a1;
LABEL_24:
  v7 = 4294967293;
  v8 = 70;
  switch(v2)
  {
    case 1:
      sub_151D0();
      v14 = 553;
      goto LABEL_26;
    case 2:
      sub_151D0();
      v14 = 557;
      goto LABEL_26;
    case 3:
      v9 = "ACMRequirement - ACMRequirementDataBiometryMatched";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 172;
      v12 = a1;
      v13 = 172;
      v14 = 561;
      goto LABEL_26;
    case 4:
      v9 = "ACMRequirement - ACMRequirementDataOr";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 100;
      v12 = a1;
      v13 = 100;
      v14 = 606;
      goto LABEL_26;
    case 5:
      v9 = "ACMRequirement - ACMRequirementDataAnd";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 100;
      v12 = a1;
      v13 = 100;
      v14 = 600;
      goto LABEL_26;
    case 6:
    case 9:
    case 10:
    case 12:
    case 14:
    case 15:
    case 18:
    case 19:
    case 22:
    case 23:
    case 27:
    case 28:
      v9 = "ACMRequirement";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 16;
      v12 = a1;
      v13 = 16;
      v14 = 545;
      goto LABEL_26;
    case 7:
      v9 = "ACMRequirement - ACMRequirementDataKofN";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 104;
      v12 = a1;
      v13 = 104;
      v14 = 595;
      goto LABEL_26;
    case 8:
      v9 = "ACMRequirement - ACMRequirementDataAccessGroups";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 1040;
      v12 = a1;
      v13 = 1040;
      v14 = 585;
      goto LABEL_26;
    case 11:
      v9 = "ACMRequirement - ACMRequirementDataPushButton";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 24;
      v12 = a1;
      v13 = 24;
      v14 = 549;
      goto LABEL_26;
    case 13:
      v9 = "ACMRequirement - ACMRequirementDataUserOutputDisplayed";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 48;
      v12 = a1;
      v13 = 48;
      v14 = 573;
      goto LABEL_26;
    case 16:
    case 17:
      break;
    case 20:
      sub_151D0();
      v14 = 565;
      goto LABEL_26;
    case 21:
      sub_151D0();
      v14 = 569;
      goto LABEL_26;
    case 24:
      v9 = "ACMRequirement - ACMRequirementDataAP";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 1076;
      v12 = a1;
      v13 = 1076;
      v14 = 577;
      goto LABEL_26;
    case 25:
      v9 = "ACMRequirement - ACMRequirementDataKeyRef";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 59;
      v12 = a1;
      v13 = 59;
      v14 = 581;
      goto LABEL_26;
    case 26:
      v9 = "ACMRequirement - ACMRequirementDataRatchet";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 44;
      v12 = a1;
      v13 = 44;
      v14 = 590;
LABEL_26:
      acm_mem_free_info(v9, v12, v13, v10, v14, v11);
      acm_mem_free(a1, v7);
      v7 = 0;
      v8 = 10;
      break;
    default:
      switch(v2)
      {
        case 1000:
          v9 = "ACMRequirement - ACMRequirementDataKofNWithAttributes";
          v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
          v11 = "Util_DeallocRequirement";
          v7 = 136;
          v12 = a1;
          v13 = 136;
          v14 = 612;
          goto LABEL_26;
        case 1001:
          v9 = "ACMRequirement - ACMRequirementDataBiometryMatchedWithAttributes";
          v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
          v11 = "Util_DeallocRequirement";
          v7 = 184;
          v12 = a1;
          v13 = 184;
          v14 = 616;
          goto LABEL_26;
        case 1002:
          sub_151E0();
          v14 = 620;
          goto LABEL_26;
        case 1003:
          sub_151D0();
          v14 = 624;
          goto LABEL_26;
        case 1004:
          sub_151E0();
          v14 = 628;
          goto LABEL_26;
        default:
          goto LABEL_27;
      }
  }

LABEL_27:
  if (v8 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "Util_DeallocRequirement", v7);
  }

  return v7;
}

void ACMContextAddCredentialWithScope(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, size_t size, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_17FC8();
  sub_17F7C();
  sub_17F00();
  if (v28 <= 0xA && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_17E90();
    sub_21F8();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
  }

  sub_16E4();
  sub_1894();
  if (v27 && (v34 & 1) == 0)
  {
    if (sub_1F08() || (v35 = sub_17EA8(), GetSerializedAddCredentialSize(v35, v36, v37, v38)))
    {
      sub_17F8C();
    }

    else
    {
      v39 = acm_mem_alloc_data(size);
      acm_mem_alloc_info("<data>", v39, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 333, "ACMContextAddCredentialWithScope");
      if (v39)
      {
        v40 = sub_17EA8();
        if (!SerializeAddCredential(v40, v41, v42, v39, v43))
        {
          sub_17F34(v26, 5, v44, v45, size);
        }

        acm_mem_free_info("<data>", v39, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 346, "ACMContextAddCredentialWithScope");
        acm_mem_free_data(v39, size);
      }

      else
      {
        sub_17F98();
      }
    }
  }

  sub_17FA4();
  if (v46 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_1848();
    sub_21F8();
    _os_log_impl(v47, v48, v49, v50, v51, 0x20u);
  }

  sub_17FB0();
}

uint64_t ACMContextRemoveCredentialsByTypeAndScope(_OWORD *a1, int a2, int a3)
{
  if (byte_350A1 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_17F28();
    sub_17ED0();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }

  if (a1 || a3 == 2)
  {
    if (sub_1F08())
    {
      sub_17F8C();
    }

    else
    {
      v12 = acm_mem_alloc_data(0x18uLL);
      sub_17F54();
      acm_mem_alloc_info(v13, v14, v15, v16, 394, v17);
      if (v12)
      {
        if (a1)
        {
          *v12 = *a1;
        }

        else
        {
          *v12 = 0;
          v12[1] = 0;
        }

        *(v12 + 4) = a2;
        *(v12 + 5) = a3;
        sub_17F6C();
        v3 = sub_1ACC(v18, v19, v20, v21, v22, 0, 0);
        sub_17F54();
        acm_mem_free_info(v23, v24, v25, v26, 415, v27);
        acm_mem_free_data(v12, 0x18uLL);
      }

      else
      {
        sub_17F98();
      }
    }
  }

  else
  {
    sub_1894();
  }

  sub_17FA4();
  if (v28 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_17FE0();
    sub_17F60();
    sub_18A0();
    sub_17ED0();
    _os_log_impl(v29, v30, v31, v32, v33, 0x20u);
  }

  return v3;
}