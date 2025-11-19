id SO_LOG_SOSmartcard()
{
  if (SO_LOG_SOSmartcard_once != -1)
  {
    SO_LOG_SOSmartcard_cold_1();
  }

  v1 = SO_LOG_SOSmartcard_log;

  return v1;
}

id SO_LOG_SOKerberosSettingsManager()
{
  if (SO_LOG_SOKerberosSettingsManager_once != -1)
  {
    SO_LOG_SOKerberosSettingsManager_cold_1();
  }

  v1 = SO_LOG_SOKerberosSettingsManager_log;

  return v1;
}

id SO_LOG_SOLDAPHelper()
{
  if (SO_LOG_SOLDAPHelper_once != -1)
  {
    SO_LOG_SOLDAPHelper_cold_1();
  }

  v1 = SO_LOG_SOLDAPHelper_log;

  return v1;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

id SO_LOG_SOKerberosServer()
{
  if (SO_LOG_SOKerberosServer_once != -1)
  {
    SO_LOG_SOKerberosServer_cold_1();
  }

  v1 = SO_LOG_SOKerberosServer_log;

  return v1;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_240070FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SO_LOG_SOADSiteDiscovery()
{
  if (SO_LOG_SOADSiteDiscovery_once != -1)
  {
    SO_LOG_SOADSiteDiscovery_cold_1();
  }

  v1 = SO_LOG_SOADSiteDiscovery_log;

  return v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_240071B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id SO_LOG_SOKerberosRealmSettings()
{
  if (SO_LOG_SOKerberosRealmSettings_once != -1)
  {
    SO_LOG_SOKerberosRealmSettings_cold_1();
  }

  v1 = SO_LOG_SOKerberosRealmSettings_log;

  return v1;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

id SO_LOG_SOKeychainHelper()
{
  if (SO_LOG_SOKeychainHelper_once != -1)
  {
    SO_LOG_SOKeychainHelper_cold_1();
  }

  v1 = SO_LOG_SOKeychainHelper_log;

  return v1;
}

id SO_LOG_SOKerberosContext()
{
  if (SO_LOG_SOKerberosContext_once != -1)
  {
    SO_LOG_SOKerberosContext_cold_1();
  }

  v1 = SO_LOG_SOKerberosContext_log;

  return v1;
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id SO_LOG_SOAsynchronousLDAPOperation()
{
  if (SO_LOG_SOAsynchronousLDAPOperation_once != -1)
  {
    SO_LOG_SOAsynchronousLDAPOperation_cold_1();
  }

  v1 = SO_LOG_SOAsynchronousLDAPOperation_log;

  return v1;
}

id SO_LOG_SOKerberosExtensionProcess()
{
  if (SO_LOG_SOKerberosExtensionProcess_once != -1)
  {
    SO_LOG_SOKerberosExtensionProcess_cold_1();
  }

  v1 = SO_LOG_SOKerberosExtensionProcess_log;

  return v1;
}

void *__getASAuthorizationOperationLogoutSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthenticationServicesLibrary();
  result = dlsym(v2, "ASAuthorizationOperationLogout");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASAuthorizationOperationLogoutSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AuthenticationServicesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AuthenticationServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AuthenticationServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C930B0;
    v6 = 0;
    AuthenticationServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AuthenticationServicesLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!AuthenticationServicesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __AuthenticationServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AuthenticationServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getASAuthorizationProviderAuthorizationOperationConfigurationRemovedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthenticationServicesLibrary();
  result = dlsym(v2, "ASAuthorizationProviderAuthorizationOperationConfigurationRemoved");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASAuthorizationProviderAuthorizationOperationConfigurationRemovedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getASAuthorizationOperationLoginSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthenticationServicesLibrary();
  result = dlsym(v2, "ASAuthorizationOperationLogin");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASAuthorizationOperationLoginSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

id SO_LOG_SOKerberosHeimdalPluginSettings()
{
  if (SO_LOG_SOKerberosHeimdalPluginSettings_once != -1)
  {
    SO_LOG_SOKerberosHeimdalPluginSettings_cold_1();
  }

  v1 = SO_LOG_SOKerberosHeimdalPluginSettings_log;

  return v1;
}

void OUTLINED_FUNCTION_3_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id SO_LOG_SOKerberosAuthentication()
{
  if (SO_LOG_SOKerberosAuthentication_once != -1)
  {
    SO_LOG_SOKerberosAuthentication_cold_1();
  }

  v1 = SO_LOG_SOKerberosAuthentication_log;

  return v1;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_240082690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t *OUTLINED_FUNCTION_7@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id SO_LOG_SONetworkIdentity()
{
  if (SO_LOG_SONetworkIdentity_once != -1)
  {
    SO_LOG_SONetworkIdentity_cold_1();
  }

  v1 = SO_LOG_SONetworkIdentity_log;

  return v1;
}

void sub_240083FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SO_LOG_SOKerberosFileManager()
{
  if (SO_LOG_SOKerberosFileManager_once != -1)
  {
    SO_LOG_SOKerberosFileManager_cold_1();
  }

  v1 = SO_LOG_SOKerberosFileManager_log;

  return v1;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id SO_LOG_SOKerberosHelper()
{
  if (SO_LOG_SOKerberosHelper_once != -1)
  {
    SO_LOG_SOKerberosHelper_cold_1();
  }

  v1 = SO_LOG_SOKerberosHelper_log;

  return v1;
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_240086AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SO_LOG_SODNSSRVQuery()
{
  if (SO_LOG_SODNSSRVQuery_once != -1)
  {
    SO_LOG_SODNSSRVQuery_cold_1();
  }

  v1 = SO_LOG_SODNSSRVQuery_log;

  return v1;
}

uint64_t ndrdata_init(uint64_t a1, uint64_t a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a1 + 8) = a2;
      *(a1 + 16) = a2;
      *a1 = a3;
    }
  }

  return result;
}

void free_kerbvalidationinfo(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    free(v2);
    a1[9] = 0;
  }

  v3 = a1[13];
  if (v3)
  {
    free(v3);
    a1[13] = 0;
  }

  v4 = a1[17];
  if (v4)
  {
    free(v4);
    a1[17] = 0;
  }

  v5 = a1[21];
  if (v5)
  {
    free(v5);
    a1[21] = 0;
  }

  v6 = a1[25];
  if (v6)
  {
    free(v6);
    a1[25] = 0;
  }

  v7 = a1[29];
  if (v7)
  {
    free(v7);
    a1[29] = 0;
  }

  v8 = a1[37];
  if (v8)
  {
    free(v8);
    a1[37] = 0;
  }

  v9 = a1[41];
  if (v9)
  {
    free(v9);
    a1[41] = 0;
  }

  v10 = a1[33];
  if (v10)
  {
    free(v10);
    a1[33] = 0;
  }
}

void OUTLINED_FUNCTION_0_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, int a14)
{

  ndrdata_get_uint32(&a10, &a14);
}

void get_unicode_string(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    ndrdata_get_uint16(a1, a2);
    if (v4 != 1)
    {
      ndrdata_get_uint16(a1, (a2 + 2));
      if (v5 != 1)
      {

        ndrdata_get_uint32(a1, (a2 + 4));
      }
    }
  }
}

void get_unicode_buffer(unsigned int *a1, uint64_t a2)
{
  v13 = 0;
  v2 = (a1 + 4);
  if (*(a1 + 2))
  {
    ndrdata_get_uint32(a1, (a2 + 16));
    if (v5 != 1)
    {
      ndrdata_get_uint32(a1, (a2 + 12));
      if (v6 != 1)
      {
        ndrdata_get_uint32(a1, (a2 + 8));
        if (v7 != 1)
        {
          if (*v2)
          {
            v8 = *a1;
            if (v8)
            {
              if (*(a1 + 1))
              {
                v9 = *(a2 + 8);
                if (v9)
                {
                  v10 = 2 * v9;
                  if (&v2[v10] <= &a1[2 * v8 + 2])
                  {
                    v11 = v10;
                    v12 = malloc_type_calloc(1uLL, v10 | 1, 0xA306B336uLL);
                    *(a2 + 24) = v12;
                    memcpy(v12, *v2, v11);
                    *v2 = *v2 + v11;
                    if (*(a2 + 8))
                    {
                      ndrdata_get_uint16(a1, &v13);
                    }
                  }
                }

                else
                {
                  *(a2 + 24) = 0;
                }
              }
            }
          }
        }
      }
    }
  }
}

void ndrdata_get_uint64(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      if (*a1)
      {
        if (*a1 >= 9u && *(a1 + 8) != 0)
        {
          *a2 = *v2;
          OUTLINED_FUNCTION_0_7(a1);
        }
      }
    }
  }
}

void ndrdata_get_uint32(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      if (*a1)
      {
        if (*a1 >= 5u && *(a1 + 8) != 0)
        {
          *a2 = *v2;
          OUTLINED_FUNCTION_0_7(a1);
        }
      }
    }
  }
}

void ndrdata_get_uint16(uint64_t a1, _WORD *a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      if (*a1)
      {
        if (*a1 >= 3u && *(a1 + 8) != 0)
        {
          *a2 = *v2;
          OUTLINED_FUNCTION_0_7(a1);
        }
      }
    }
  }
}

void ndrdata_get_uint8(uint64_t a1, _BYTE *a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      if (*a1)
      {
        if (*a1 != 1 && *(a1 + 8) != 0)
        {
          *a2 = *v2;
          v4 = *(a1 + 16) + 1;
          OUTLINED_FUNCTION_0_7(a1);
        }
      }
    }
  }
}

uint64_t ndrdata_get_buffer(unsigned int *a1, void *__dst, size_t __n)
{
  if (!a1)
  {
    return 1;
  }

  v4 = a1 + 4;
  v3 = *(a1 + 2);
  if (!v3)
  {
    return 1;
  }

  v5 = *a1;
  if (!v5)
  {
    return 1;
  }

  v6 = a1 + 2;
  if (!*(a1 + 1))
  {
    return 1;
  }

  result = 0xFFFFFFFFLL;
  if (__dst && __n)
  {
    if (&v4[__n] <= &v6[2 * v5])
    {
      v8 = __n;
      memcpy(__dst, v3, __n);
      result = 0;
      *v4 += v8;
      return result;
    }

    return 1;
  }

  return result;
}

void get_kerbvalidationinfo(uint64_t a1, int a2, uint64_t a3)
{
  memset(count, 0, sizeof(count));
  v237 = 0;
  v238 = 0;
  v239 = 0;
  if (a1)
  {
    if (a2)
    {
      if (ndrdata_init(&v237, a1, a2) != 1)
      {
        ndrdata_get_uint64(&v237, &count[1]);
        if (v4 != 1)
        {
          ndrdata_get_uint64(&v237, &count[1]);
          if (v5 != 1)
          {
            OUTLINED_FUNCTION_0_8(v5, v6, v7, v8, v9, v10, v11, v12, v215, v237, v238, v239, v240, count[0]);
            if (v13 != 1)
            {
              ndrdata_get_uint64(&v237, a3);
              if (v14 != 1)
              {
                ndrdata_get_uint64(&v237, (a3 + 8));
                if (v15 != 1)
                {
                  ndrdata_get_uint64(&v237, (a3 + 16));
                  if (v16 != 1)
                  {
                    ndrdata_get_uint64(&v237, (a3 + 24));
                    if (v17 != 1)
                    {
                      ndrdata_get_uint64(&v237, (a3 + 32));
                      if (v18 != 1)
                      {
                        ndrdata_get_uint64(&v237, (a3 + 40));
                        if (v19 != 1)
                        {
                          get_unicode_string(&v237, a3 + 48);
                          if (v20 != 1)
                          {
                            get_unicode_string(&v237, a3 + 80);
                            if (v21 != 1)
                            {
                              get_unicode_string(&v237, a3 + 112);
                              if (v22 != 1)
                              {
                                get_unicode_string(&v237, a3 + 144);
                                if (v23 != 1)
                                {
                                  get_unicode_string(&v237, a3 + 176);
                                  if (v24 != 1)
                                  {
                                    get_unicode_string(&v237, a3 + 208);
                                    if (v25 != 1)
                                    {
                                      ndrdata_get_uint16(&v237, (a3 + 240));
                                      if (v26 != 1)
                                      {
                                        ndrdata_get_uint16(&v237, (a3 + 242));
                                        if (v27 != 1)
                                        {
                                          ndrdata_get_uint32(&v237, (a3 + 244));
                                          if (v28 != 1)
                                          {
                                            ndrdata_get_uint32(&v237, (a3 + 248));
                                            if (v29 != 1)
                                            {
                                              ndrdata_get_uint32(&v237, (a3 + 252));
                                              if (v30 != 1)
                                              {
                                                OUTLINED_FUNCTION_0_8(v30, v31, v32, v33, v34, v35, v36, v37, v216, v237, v238, v239, v240, count[0]);
                                                if (v38 != 1)
                                                {
                                                  ndrdata_get_uint32(&v237, (a3 + 256));
                                                  if (v39 != 1)
                                                  {
                                                    OUTLINED_FUNCTION_0_8(v39, v40, v41, v42, v43, v44, v45, v46, v217, v237, v238, v239, v240, count[0]);
                                                    if (v47 != 1)
                                                    {
                                                      OUTLINED_FUNCTION_0_8(v47, v48, v49, v50, v51, v52, v53, v54, v218, v237, v238, v239, v240, count[0]);
                                                      if (v55 != 1)
                                                      {
                                                        OUTLINED_FUNCTION_0_8(v55, v56, v57, v58, v59, v60, v61, v62, v219, v237, v238, v239, v240, count[0]);
                                                        if (v63 != 1)
                                                        {
                                                          OUTLINED_FUNCTION_0_8(v63, v64, v65, v66, v67, v68, v69, v70, v220, v237, v238, v239, v240, count[0]);
                                                          if (v71 != 1)
                                                          {
                                                            get_unicode_string(&v237, a3 + 272);
                                                            if (v72 != 1)
                                                            {
                                                              get_unicode_string(&v237, a3 + 304);
                                                              if (v73 != 1)
                                                              {
                                                                OUTLINED_FUNCTION_0_8(v73, v74, v75, v76, v77, v78, v79, v80, v221, v237, v238, v239, v240, count[0]);
                                                                if (v81 != 1)
                                                                {
                                                                  OUTLINED_FUNCTION_0_8(v81, v82, v83, v84, v85, v86, v87, v88, v222, v237, v238, v239, v240, count[0]);
                                                                  if (v89 != 1)
                                                                  {
                                                                    OUTLINED_FUNCTION_0_8(v89, v90, v91, v92, v93, v94, v95, v96, v223, v237, v238, v239, v240, count[0]);
                                                                    if (v97 != 1)
                                                                    {
                                                                      ndrdata_get_uint32(&v237, (a3 + 336));
                                                                      if (v98 != 1)
                                                                      {
                                                                        OUTLINED_FUNCTION_0_8(v98, v99, v100, v101, v102, v103, v104, v105, v224, v237, v238, v239, v240, count[0]);
                                                                        if (v106 != 1)
                                                                        {
                                                                          OUTLINED_FUNCTION_0_8(v106, v107, v108, v109, v110, v111, v112, v113, v225, v237, v238, v239, v240, count[0]);
                                                                          if (v114 != 1)
                                                                          {
                                                                            OUTLINED_FUNCTION_0_8(v114, v115, v116, v117, v118, v119, v120, v121, v226, v237, v238, v239, v240, count[0]);
                                                                            if (v122 != 1)
                                                                            {
                                                                              OUTLINED_FUNCTION_0_8(v122, v123, v124, v125, v126, v127, v128, v129, v227, v237, v238, v239, v240, count[0]);
                                                                              if (v130 != 1)
                                                                              {
                                                                                OUTLINED_FUNCTION_0_8(v130, v131, v132, v133, v134, v135, v136, v137, v228, v237, v238, v239, v240, count[0]);
                                                                                if (v138 != 1)
                                                                                {
                                                                                  OUTLINED_FUNCTION_0_8(v138, v139, v140, v141, v142, v143, v144, v145, v229, v237, v238, v239, v240, count[0]);
                                                                                  if (v146 != 1)
                                                                                  {
                                                                                    OUTLINED_FUNCTION_0_8(v146, v147, v148, v149, v150, v151, v152, v153, v230, v237, v238, v239, v240, count[0]);
                                                                                    if (v154 != 1)
                                                                                    {
                                                                                      OUTLINED_FUNCTION_0_8(v154, v155, v156, v157, v158, v159, v160, v161, v231, v237, v238, v239, v240, count[0]);
                                                                                      if (v162 != 1)
                                                                                      {
                                                                                        OUTLINED_FUNCTION_0_8(v162, v163, v164, v165, v166, v167, v168, v169, v232, v237, v238, v239, v240, count[0]);
                                                                                        if (v170 != 1)
                                                                                        {
                                                                                          OUTLINED_FUNCTION_0_8(v170, v171, v172, v173, v174, v175, v176, v177, v233, v237, v238, v239, v240, count[0]);
                                                                                          if (v178 != 1)
                                                                                          {
                                                                                            OUTLINED_FUNCTION_0_8(v178, v179, v180, v181, v182, v183, v184, v185, v234, v237, v238, v239, v240, count[0]);
                                                                                            if (v186 != 1)
                                                                                            {
                                                                                              OUTLINED_FUNCTION_0_8(v186, v187, v188, v189, v190, v191, v192, v193, v235, v237, v238, v239, v240, count[0]);
                                                                                              if (v194 != 1)
                                                                                              {
                                                                                                get_unicode_buffer(&v237, a3 + 48);
                                                                                                if (v195 != 1)
                                                                                                {
                                                                                                  get_unicode_buffer(&v237, a3 + 80);
                                                                                                  if (v196 != 1)
                                                                                                  {
                                                                                                    get_unicode_buffer(&v237, a3 + 112);
                                                                                                    if (v197 != 1)
                                                                                                    {
                                                                                                      get_unicode_buffer(&v237, a3 + 144);
                                                                                                      if (v198 != 1)
                                                                                                      {
                                                                                                        get_unicode_buffer(&v237, a3 + 176);
                                                                                                        if (v199 != 1)
                                                                                                        {
                                                                                                          get_unicode_buffer(&v237, a3 + 208);
                                                                                                          if (v200 != 1)
                                                                                                          {
                                                                                                            OUTLINED_FUNCTION_0_8(v200, v201, v202, v203, v204, v205, v206, v207, v236, v237, v238, v239, v240, count[0]);
                                                                                                            if (v208 != 1)
                                                                                                            {
                                                                                                              v209 = count[0];
                                                                                                              if (count[0])
                                                                                                              {
                                                                                                                v210 = malloc_type_calloc(count[0], 8uLL, 0x100004000313F17uLL);
                                                                                                                v211 = v210;
                                                                                                                while (1)
                                                                                                                {
                                                                                                                  ndrdata_get_uint32(&v237, v211);
                                                                                                                  if (v212 == 1)
                                                                                                                  {
                                                                                                                    break;
                                                                                                                  }

                                                                                                                  ndrdata_get_uint32(&v237, v211 + 1);
                                                                                                                  if (v213 == 1)
                                                                                                                  {
                                                                                                                    break;
                                                                                                                  }

                                                                                                                  v211 += 2;
                                                                                                                  if (!--v209)
                                                                                                                  {
                                                                                                                    *(a3 + 264) = v210;
                                                                                                                    goto LABEL_61;
                                                                                                                  }
                                                                                                                }
                                                                                                              }

                                                                                                              else
                                                                                                              {
LABEL_61:
                                                                                                                get_unicode_buffer(&v237, a3 + 272);
                                                                                                                if (v214 != 1)
                                                                                                                {
                                                                                                                  get_unicode_buffer(&v237, a3 + 304);
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
          }
        }
      }
    }
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}