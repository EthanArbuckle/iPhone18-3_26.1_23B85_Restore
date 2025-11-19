uint64_t SystemStatusLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!SystemStatusLibraryCore_frameworkLibrary)
  {
    SystemStatusLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = SystemStatusLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getSTExecutableIdentityResolverClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy_;
  v0 = getSTExecutableIdentityResolverClass_softClass;
  v7 = __Block_byref_object_dispose_;
  v8 = getSTExecutableIdentityResolverClass_softClass;
  if (!getSTExecutableIdentityResolverClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getSTExecutableIdentityResolverClass_block_invoke;
    v2[3] = &unk_27885BC18;
    v2[4] = &v3;
    __getSTExecutableIdentityResolverClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EA09364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CMIOLog()
{
  if (CMIOLog::once != -1)
  {
    CMIOLog_cold_1();
  }

  return CMIOLog::cmioLog;
}

const char *CMIOFilename(const char *a1)
{
  for (i = strlen(a1); i; --i)
  {
    if (a1[i - 1] == 47)
    {
      break;
    }
  }

  return &a1[i];
}

void sub_22EA0BCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __CFString *a20)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v20 = CMIOLog();
    if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      [CMIOExtensionStream clientQueue_updateMutableStreamPropertiesByPolicy];
    }

    v21 = MEMORY[0x277CCA9B8];
    a19 = *MEMORY[0x277CCA450];
    a20 = @"exception";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a20 forKeys:&a19 count:1];
    [v21 errorWithDomain:*MEMORY[0x277CCA590] code:-8 userInfo:v22];
    objc_end_catch();
    JUMPOUT(0x22EA0B9B8);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA0C284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EA0DB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22EA12880(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    v2 = CMIOLog();
    if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      __47__CMIOExtensionProvider_removeProviderContext___block_invoke_cold_2();
    }

    objc_end_catch();
    JUMPOUT(0x22EA12740);
  }

  _Unwind_Resume(exc_buf);
}

void sub_22EA141EC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    v43 = CMIOLog();
    if (v43 && os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      __55__CMIOExtensionProvider_pluginStatesForClientID_reply___block_invoke_cold_1();
    }

    v44 = MEMORY[0x277CCA9B8];
    *(v42 - 224) = *MEMORY[0x277CCA450];
    *(v42 - 216) = @"exception";
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 - 216 forKeys:v42 - 224 count:1];
    [v44 errorWithDomain:*MEMORY[0x277CCA590] code:-8 userInfo:v45];
    objc_end_catch();
    JUMPOUT(0x22EA13B48);
  }

  _Unwind_Resume(exc_buf);
}

void sub_22EA14504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __CFString *a12, char a13)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      [CMIOExtensionProvider _addAvailablePropertyStatesForDevice:toDictionary:];
    }

    v14 = MEMORY[0x277CCA9B8];
    a11 = *MEMORY[0x277CCA450];
    a12 = @"exception";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a12 forKeys:&a11 count:1];
    [v14 errorWithDomain:*MEMORY[0x277CCA590] code:-8 userInfo:v15];
    objc_end_catch();
    JUMPOUT(0x22EA143FCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA14A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __CFString *a12, char a13)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      __74__CMIOExtensionProvider_pluginPropertyStatesForClientID_properties_reply___block_invoke_cold_1();
    }

    v14 = MEMORY[0x277CCA9B8];
    a11 = *MEMORY[0x277CCA450];
    a12 = @"exception";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a12 forKeys:&a11 count:1];
    [v14 errorWithDomain:*MEMORY[0x277CCA590] code:-8 userInfo:v15];
    objc_end_catch();
    JUMPOUT(0x22EA148E4);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA14FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __CFString *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v25 = CMIOLog();
    if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      __81__CMIOExtensionProvider_setPluginPropertyValuesForClientID_propertyValues_reply___block_invoke_cold_1();
    }

    v26 = MEMORY[0x277CCA9B8];
    a17 = *MEMORY[0x277CCA450];
    a18 = @"exception";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a18 forKeys:&a17 count:1];
    [v26 errorWithDomain:*MEMORY[0x277CCA590] code:-8 userInfo:v27];
    objc_end_catch();
    JUMPOUT(0x22EA14D64);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA15D48(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    v29 = CMIOLog();
    if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      __64__CMIOExtensionProvider_deviceStatesForClientID_deviceID_reply___block_invoke_cold_1();
    }

    v30 = MEMORY[0x277CCA9B8];
    *(v28 - 240) = *MEMORY[0x277CCA450];
    *(v28 - 232) = @"exception";
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 - 232 forKeys:v28 - 240 count:1];
    [v30 errorWithDomain:*MEMORY[0x277CCA590] code:-8 userInfo:v31];
    objc_end_catch();
    JUMPOUT(0x22EA15720);
  }

  _Unwind_Resume(exc_buf);
}

void sub_22EA16318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __CFString *a12, char a13)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      __83__CMIOExtensionProvider_devicePropertyStatesForClientID_deviceID_properties_reply___block_invoke_cold_1();
    }

    v14 = MEMORY[0x277CCA9B8];
    a11 = *MEMORY[0x277CCA450];
    a12 = @"exception";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a12 forKeys:&a11 count:1];
    [v14 errorWithDomain:*MEMORY[0x277CCA590] code:-8 userInfo:v15];
    objc_end_catch();
    JUMPOUT(0x22EA161E4);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA16D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v25 = CMIOLog();
    if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_3();
    }

    objc_end_catch();
    JUMPOUT(0x22EA1694CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA17674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __CFString *a12, char a13)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      __83__CMIOExtensionProvider_streamPropertyStatesForClientID_streamID_properties_reply___block_invoke_cold_1();
    }

    v14 = MEMORY[0x277CCA9B8];
    a11 = *MEMORY[0x277CCA450];
    a12 = @"exception";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a12 forKeys:&a11 count:1];
    [v14 errorWithDomain:*MEMORY[0x277CCA590] code:-8 userInfo:v15];
    objc_end_catch();
    JUMPOUT(0x22EA17540);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA17EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __CFString *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v25 = CMIOLog();
    if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_2();
    }

    v26 = MEMORY[0x277CCA9B8];
    a17 = *MEMORY[0x277CCA450];
    a18 = @"exception";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a18 forKeys:&a17 count:1];
    [v26 errorWithDomain:*MEMORY[0x277CCA590] code:-8 userInfo:v27];
    objc_end_catch();
    JUMPOUT(0x22EA17A48);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA19654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __CFString *a12, char a13)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v13 = CMIOLog();
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      [CMIOExtensionProvider _clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:];
    }

    v14 = MEMORY[0x277CCA9B8];
    a11 = *MEMORY[0x277CCA450];
    a12 = @"exception";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a12 forKeys:&a11 count:1];
    [v14 errorWithDomain:*MEMORY[0x277CCA590] code:-8 userInfo:v15];
    objc_end_catch();
    JUMPOUT(0x22EA19608);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA19AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SystemStatusLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SystemStatusLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getSTExecutableIdentityResolverClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SystemStatusServerLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SystemStatusServerLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27885BC38;
    v7 = 0;
    SystemStatusServerLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (SystemStatusServerLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("STExecutableIdentityResolver");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getSTExecutableIdentityResolverClass_block_invoke_cold_1();
  }

  getSTExecutableIdentityResolverClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SystemStatusServerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SystemStatusServerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getSTExecutableIdentityClass_block_invoke(uint64_t a1)
{
  if (!SystemStatusLibraryCore())
  {
    v2 = abort_report_np();
    free(v2);
  }

  *(*(*(a1 + 32) + 8) + 40) = objc_getClass("STExecutableIdentity");
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getSTExecutableIdentityClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    __getSTExecutableIdentityClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0();
  }
}

uint64_t OUTLINED_FUNCTION_1(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 1024;
  return result;
}

void OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 20) = v3;
  *(a3 + 28) = 2112;
  *(a3 + 30) = a2;
}

void OUTLINED_FUNCTION_10(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x26u);
}

uint64_t CMIOExtensionPropertyAddressFromProperty(void *a1)
{
  if (![a1 hasPrefix:@"4cc_"] || objc_msgSend(a1, "length") != 18)
  {
    return 0;
  }

  v2 = [a1 UTF8String];
  LODWORD(v3) = v2[7] | (v2[6] << 8) | (v2[5] << 16) | (v2[4] << 24);
  if (v3 == 808464432)
  {
    v3 = 0;
  }

  else
  {
    v3 = v3;
  }

  LODWORD(v4) = v2[12] | (v2[11] << 8) | (v2[10] << 16) | (v2[9] << 24);
  if (v4 == 808464432)
  {
    v4 = 0;
  }

  else
  {
    v4 = v4;
  }

  v2[17];
  v2[16];
  v2[15];
  v2[14];
  return v3 | (v4 << 32);
}

uint64_t CMIOExtensionPropertyFromPropertyAddress(unint64_t a1, unsigned int a2)
{
  if (a2 + 1 <= 3)
  {
    a2 = *&a00001000200000[4 * a2 + 4];
  }

  v4 = HIDWORD(a1);
  if (!HIDWORD(a1))
  {
    LODWORD(v4) = 808464432;
  }

  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = 808464432;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"4cc_%c%c%c%c_%c%c%c%c_%c%c%c%c", HIBYTE(v5), BYTE2(v5), BYTE1(v5), v5, BYTE3(v4), BYTE2(v4), BYTE1(v4), v4, HIBYTE(a2), BYTE2(a2), BYTE1(a2), a2, v2, v3];
}

uint64_t CMIOExtensionPropertyForPropertyAddressInDictionary(unint64_t a1, unsigned int a2, void *a3)
{
  if ([a3 count])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3052000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v6 = CMIOExtensionPropertyFromPropertyAddress(a1, a2);
    v18[5] = v6;
    if (![a3 objectForKey:v6])
    {
      v9 = CMIOExtensionPropertyFromPropertyAddress(a1 | 0x2A2A2A2A00000000, 0xFFFFFFFF);
      v18[5] = v9;
      v10 = [a3 objectForKey:v9];
      v7 = v18 + 5;
      if (v10)
      {
        goto LABEL_6;
      }

      *v7 = 0;
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"4cc_%c%c%c%c_", BYTE3(a1), BYTE2(a1), BYTE1(a1), a1];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c%c%c_", HIBYTE(HIDWORD(a1)), BYTE6(a1), BYTE5(a1), BYTE4(a1)];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c%c%c", HIBYTE(a2), BYTE2(a2), BYTE1(a2), a2];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __CMIOExtensionPropertyForPropertyAddressInDictionary_block_invoke;
      v15[3] = &unk_27885BF20;
      v16 = a2;
      v15[4] = v12;
      v15[5] = v13;
      v15[6] = v14;
      v15[7] = &v17;
      v15[8] = a1;
      [a3 enumerateKeysAndObjectsUsingBlock:v15];
    }

    v7 = v18 + 5;
LABEL_6:
    v8 = *v7;
    _Block_object_dispose(&v17, 8);
    return v8;
  }

  return 0;
}

uint64_t __CMIOExtensionPropertyForPropertyAddressInDictionary_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 hasPrefix:*(a1 + 32)];
  if (result)
  {
    v8 = [a2 substringWithRange:{9, 5}];
    if (*(a1 + 68) == 707406378 || (v9 = v8, ([v8 hasPrefix:@"****_"] & 1) != 0) || (result = objc_msgSend(v9, "isEqualToString:", *(a1 + 40)), result))
    {
      result = [a2 substringWithRange:{14, 4}];
      if (*(a1 + 72) == -1 || (v10 = result, result = [result hasPrefix:@"****"], (result & 1) != 0) || (result = objc_msgSend(v10, "isEqualToString:", *(a1 + 48)), result))
      {
        *(*(*(a1 + 56) + 8) + 40) = a2;
        *a4 = 1;
      }
    }
  }

  return result;
}

uint64_t CMIOExtensionPropertyForPropertyAddressInSet(unint64_t a1, unsigned int a2, void *a3)
{
  if (![a3 count])
  {
    return 0;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v6 = CMIOExtensionPropertyFromPropertyAddress(a1, a2);
  v18[5] = v6;
  if ([a3 containsObject:v6])
  {
    goto LABEL_5;
  }

  v7 = CMIOExtensionPropertyFromPropertyAddress(a1 | 0x2A2A2A2A00000000, 0xFFFFFFFF);
  v18[5] = v7;
  v8 = [a3 containsObject:v7];
  v9 = v18 + 5;
  if ((v8 & 1) == 0)
  {
    *v9 = 0;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"4cc_%c%c%c%c_", BYTE3(a1), BYTE2(a1), BYTE1(a1), a1];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c%c%c_", HIBYTE(HIDWORD(a1)), BYTE6(a1), BYTE5(a1), BYTE4(a1)];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c%c%c", HIBYTE(a2), BYTE2(a2), BYTE1(a2), a2];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __CMIOExtensionPropertyForPropertyAddressInSet_block_invoke;
    v15[3] = &unk_27885BF48;
    v16 = a2;
    v15[4] = v10;
    v15[5] = v11;
    v15[6] = v12;
    v15[7] = &v17;
    v15[8] = a1;
    [a3 enumerateObjectsUsingBlock:v15];
LABEL_5:
    v9 = v18 + 5;
  }

  v13 = *v9;
  _Block_object_dispose(&v17, 8);
  return v13;
}

uint64_t __CMIOExtensionPropertyForPropertyAddressInSet_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 hasPrefix:*(a1 + 32)];
  if (result)
  {
    v7 = [a2 substringWithRange:{9, 5}];
    if (*(a1 + 68) == 707406378 || (v8 = v7, ([v7 hasPrefix:@"****_"] & 1) != 0) || (result = objc_msgSend(v8, "isEqualToString:", *(a1 + 40)), result))
    {
      result = [a2 substringWithRange:{14, 4}];
      if (*(a1 + 72) == -1 || (v9 = result, result = [result hasPrefix:@"****"], (result & 1) != 0) || (result = objc_msgSend(v9, "isEqualToString:", *(a1 + 48)), result))
      {
        *(*(*(a1 + 56) + 8) + 40) = a2;
        *a3 = 1;
      }
    }
  }

  return result;
}

BOOL CMIOExtensionPropertyIs4CCControlProperty(void *a1)
{
  if (CMIOExtensionPropertyIs4CCBooleanControlProperty(a1) || CMIOExtensionPropertyIs4CCSelectorControlProperty(a1))
  {
    return 1;
  }

  return CMIOExtensionPropertyIs4CCFeatureControlProperty(a1);
}

BOOL CMIOExtensionFeatureControlFromProperty(void *a1, int *a2, int *a3, int *a4, int *a5)
{
  v10 = CMIOExtensionPropertyIs4CCFeatureControlProperty(a1);
  if (v10)
  {
    v11 = [a1 UTF8String];
    v12 = *(v11 + 7) | (*(v11 + 6) << 8) | (*(v11 + 5) << 16) | (*(v11 + 4) << 24);
    if (v12 == 808464432)
    {
      v12 = 0;
    }

    v13 = *(v11 + 12) | (*(v11 + 11) << 8) | (*(v11 + 10) << 16) | (*(v11 + 9) << 24);
    if (v13 == 808464432)
    {
      v13 = 0;
    }

    v14 = *(v11 + 17) | (*(v11 + 16) << 8) | (*(v11 + 15) << 16) | (*(v11 + 14) << 24);
    switch(v14)
    {
      case 707406378:
        v14 = -1;
        break;
      case 808464433:
        v14 = 1;
        break;
      case 808464432:
        v14 = 0;
        break;
      case 808464434:
        v14 = 2;
        break;
    }

    v15 = *(v11 + 27) | (*(v11 + 26) << 8) | (*(v11 + 25) << 16) | (*(v11 + 24) << 24);
    if (v15 == 808464432)
    {
      v15 = 0;
    }

    if (a2)
    {
      *a2 = v12;
    }

    if (a3)
    {
      *a3 = v13;
    }

    if (a4)
    {
      *a4 = v14;
    }

    if (a5)
    {
      *a5 = v15;
    }
  }

  return v10;
}

uint64_t CMIOExtensionPropertyFromFeatureControl(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3 + 1 >= 3)
  {
    if (a3 == 2)
    {
      v6 = 808464434;
    }

    else
    {
      v6 = a3;
    }
  }

  else
  {
    v6 = *&a00001000200000[4 * a3 + 20];
  }

  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = 808464432;
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = 808464432;
  }

  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = 808464432;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"4cc_%c%c%c%c_%c%c%c%c_%c%c%c%c_ftct_%c%c%c%c", HIBYTE(v8), BYTE2(v8), BYTE1(v8), v8, HIBYTE(v7), BYTE2(v7), BYTE1(v7), v7, HIBYTE(v6), BYTE2(v6), BYTE1(v6), v6, HIBYTE(v9), BYTE2(v9), BYTE1(v9), v9, v4, v5];
}

BOOL CMIOExtensionControlFromProperty(void *a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v12 = CMIOExtensionPropertyIs4CCControlProperty(a1);
  if (v12)
  {
    v13 = [a1 UTF8String];
    v14 = *(v13 + 7) | (*(v13 + 6) << 8) | (*(v13 + 5) << 16) | (*(v13 + 4) << 24);
    if (v14 == 808464432)
    {
      v14 = 0;
    }

    v15 = *(v13 + 12) | (*(v13 + 11) << 8) | (*(v13 + 10) << 16) | (*(v13 + 9) << 24);
    if (v15 == 808464432)
    {
      v15 = 0;
    }

    v16 = *(v13 + 17) | (*(v13 + 16) << 8) | (*(v13 + 15) << 16) | (*(v13 + 14) << 24);
    switch(v16)
    {
      case 707406378:
        v16 = -1;
        break;
      case 808464433:
        v16 = 1;
        break;
      case 808464432:
        v16 = 0;
        break;
      case 808464434:
        v16 = 2;
        break;
    }

    v17 = *(v13 + 22) | (*(v13 + 21) << 8) | (*(v13 + 20) << 16) | (*(v13 + 19) << 24);
    if (v17 == 808464432)
    {
      v17 = 0;
    }

    v18 = *(v13 + 27) | (*(v13 + 26) << 8) | (*(v13 + 25) << 16) | (*(v13 + 24) << 24);
    if (v18 == 808464432)
    {
      v18 = 0;
    }

    if (a3)
    {
      *a3 = v14;
    }

    if (a4)
    {
      *a4 = v15;
    }

    if (a5)
    {
      *a5 = v16;
    }

    if (a6)
    {
      *a6 = v18;
    }

    if (a2)
    {
      *a2 = v17;
    }
  }

  return v12;
}

uint64_t CMIOExtensionPropertyFromControl(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (a4 + 1 >= 3)
  {
    if (a4 == 2)
    {
      v5 = 808464434;
    }

    else
    {
      v5 = a4;
    }
  }

  else
  {
    v5 = *&a00001000200000[4 * a4 + 20];
  }

  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = 808464432;
  }

  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = 808464432;
  }

  if (a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = 808464432;
  }

  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = 808464432;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"4cc_%c%c%c%c_%c%c%c%c_%c%c%c%c_%c%c%c%c_%c%c%c%c", HIBYTE(v7), BYTE2(v7), BYTE1(v7), v7, HIBYTE(v6), BYTE2(v6), BYTE1(v6), v6, HIBYTE(v5), BYTE2(v5), BYTE1(v5), v5, HIBYTE(v9), BYTE2(v9), BYTE1(v9), v9, HIBYTE(v8), BYTE2(v8), BYTE1(v8), v8];
}

void cmio_bbufUtilXPCObjectReleaser(xpc_object_t object)
{
  if (object)
  {
    xpc_release(object);
  }
}

uint64_t CMIOFormatDescriptionGetOnlyHasIFrames(const opaqueCMFormatDescription *a1)
{
  if (!a1)
  {
    return 0;
  }

  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (!Extensions)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(Extensions, kCMIOFormatDescriptionExtensionKey_OnlyHasIFrames);
  if (!Value)
  {
    return 0;
  }

  return CFBooleanGetValue(Value);
}

uint64_t CMIOFormatDescriptionGetManufacturerCode(const opaqueCMFormatDescription *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 4294967246;
  }

  *a2 = 0;
  if (!a1)
  {
    return 4294967246;
  }

  result = CMFormatDescriptionGetExtensions(a1);
  if (result)
  {
    result = CFDictionaryGetValue(result, *MEMORY[0x277CC03E0]);
    if (result)
    {
      *buffer = 0;
      v5.location = 0;
      v5.length = 4;
      if (CFStringGetBytes(result, v5, 0, 0, 0, buffer, 4, 0) == 4)
      {
        result = 0;
        *a2 = bswap32(*buffer);
        return result;
      }

      return 4294967246;
    }
  }

  return result;
}

BOOL CMIOFormatDescriptionSignifiesDiscontinuity(CMFormatDescriptionRef desc, const opaqueCMFormatDescription *a2)
{
  result = 0;
  v24[12] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CC4BE8];
  v24[0] = *MEMORY[0x277CC02F8];
  v24[1] = v4;
  v5 = *MEMORY[0x277CC4C48];
  v24[2] = *MEMORY[0x277CC4C40];
  v24[3] = v5;
  v6 = *MEMORY[0x277CC4C00];
  v24[4] = *MEMORY[0x277CC4CB0];
  v24[5] = v6;
  v7 = *MEMORY[0x277CC4C50];
  v24[6] = *MEMORY[0x277CC4CC0];
  v24[7] = v7;
  v8 = *MEMORY[0x277CC0358];
  v24[8] = *MEMORY[0x277CC4D10];
  v24[9] = v8;
  v9 = *MEMORY[0x277CC4B80];
  v24[10] = *MEMORY[0x277CC4B88];
  v24[11] = v9;
  if (a2 && desc && desc != a2)
  {
    MediaType = CMFormatDescriptionGetMediaType(desc);
    v12 = CMFormatDescriptionGetMediaType(a2);
    if (MediaType == 1986618469 && v12 == 1986618469)
    {
      MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
      if (MediaSubType != CMFormatDescriptionGetMediaSubType(a2) || (Dimensions = CMVideoFormatDescriptionGetDimensions(desc), Dimensions != CMVideoFormatDescriptionGetDimensions(a2)))
      {
LABEL_21:
        result = 1;
        goto LABEL_22;
      }

      Extensions = CMFormatDescriptionGetExtensions(desc);
      v16 = CMFormatDescriptionGetExtensions(a2);
      if (Extensions == v16)
      {
        result = 0;
        goto LABEL_22;
      }

      v17 = v16;
      result = 1;
      if (Extensions && v17)
      {
        for (i = 0; i != 12; ++i)
        {
          v19 = v24[i];
          Value = CFDictionaryGetValue(Extensions, v19);
          v21 = CFDictionaryGetValue(v17, v19);
          if (Value != v21)
          {
            v22 = !Value || v21 == 0;
            if (v22 || !CFEqual(Value, v21))
            {
              goto LABEL_21;
            }
          }

          result = 0;
        }
      }
    }

    else
    {
      result = CMFormatDescriptionEqual(desc, a2) == 0;
    }
  }

LABEL_22:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22EA2B6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __CMIOModuleLogLevel_block_invoke()
{
  result = CMIOPreferencesGetIntegerValue(@"CMIOExtensionSession.Debug", 0);
  CMIOModuleLogLevel_cmioLevel = result;
  return result;
}

void OUTLINED_FUNCTION_5_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 30) = v3;
  *(a3 + 38) = 2114;
  *(a3 + 40) = a2;
}

void sub_22EA2C128(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 152));
  _Unwind_Resume(a1);
}

void sub_22EA2E55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __CMIOModuleLogLevel_block_invoke_0()
{
  result = CMIOPreferencesGetIntegerValue(@"CMIOExtensionProxy.Debug", 0);
  CMIOModuleLogLevel_cmioLevel_0 = result;
  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

uint64_t cmio_XPCMessageSetCFNumber(void *a1, const char *a2, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (a1)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFNumberGetTypeID() || (v7 = CFGetTypeID(cf), v7 == CFBooleanGetTypeID()))
    {
      v8 = _CFXPCCreateXPCObjectFromCFObject();
      if (v8)
      {
        v9 = v8;
        xpc_dictionary_set_value(a1, a2, v8);
        xpc_release(v9);
        return 0;
      }

      else
      {
        cmio_XPCMessageSetCFNumber_cold_2();
        return v12;
      }
    }

    else
    {
      cmio_XPCMessageSetCFNumber_cold_1();
      return v11;
    }
  }

  else
  {
    cmio_XPCMessageSetCFNumber_cold_3();
    return v13;
  }
}

uint64_t cmio_XPCMessageSetCFString(void *a1, const char *a2, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (a1)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFStringGetTypeID())
    {
      v6 = _CFXPCCreateXPCObjectFromCFObject();
      if (v6)
      {
        v7 = v6;
        xpc_dictionary_set_value(a1, a2, v6);
        xpc_release(v7);
        return 0;
      }

      else
      {
        cmio_XPCMessageSetCFString_cold_2();
        return v10;
      }
    }

    else
    {
      cmio_XPCMessageSetCFString_cold_1();
      return v9;
    }
  }

  else
  {
    cmio_XPCMessageSetCFString_cold_3();
    return v11;
  }
}

uint64_t cmio_XPCMessageSetCFData(void *a1, const char *a2, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (a1)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFDataGetTypeID())
    {
      v6 = _CFXPCCreateXPCObjectFromCFObject();
      if (v6)
      {
        v7 = v6;
        xpc_dictionary_set_value(a1, a2, v6);
        xpc_release(v7);
        return 0;
      }

      else
      {
        cmio_XPCMessageSetCFData_cold_2();
        return v10;
      }
    }

    else
    {
      cmio_XPCMessageSetCFData_cold_1();
      return v9;
    }
  }

  else
  {
    cmio_XPCMessageSetCFData_cold_3();
    return v11;
  }
}

uint64_t cmio_XPCMessageSetCFArray(void *a1, const char *a2, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (a1)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFArrayGetTypeID())
    {
      v6 = _CFXPCCreateXPCObjectFromCFObject();
      if (v6)
      {
        v7 = v6;
        xpc_dictionary_set_value(a1, a2, v6);
        xpc_release(v7);
        return 0;
      }

      else
      {
        cmio_XPCMessageSetCFArray_cold_2();
        return v10;
      }
    }

    else
    {
      cmio_XPCMessageSetCFArray_cold_1();
      return v9;
    }
  }

  else
  {
    cmio_XPCMessageSetCFArray_cold_3();
    return v11;
  }
}

uint64_t cmio_XPCMessageSetCFDictionary(void *a1, const char *a2, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (a1)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFDictionaryGetTypeID())
    {
      v6 = _CFXPCCreateXPCObjectFromCFObject();
      if (v6)
      {
        v7 = v6;
        xpc_dictionary_set_value(a1, a2, v6);
        xpc_release(v7);
        return 0;
      }

      else
      {
        cmio_XPCMessageSetCFDictionary_cold_2();
        return v10;
      }
    }

    else
    {
      cmio_XPCMessageSetCFDictionary_cold_1();
      return v9;
    }
  }

  else
  {
    cmio_XPCMessageSetCFDictionary_cold_3();
    return v11;
  }
}

uint64_t cmio_XPCMessageCopyCFNumber(void *a1, const char *a2, void *a3)
{
  result = xpc_dictionary_get_value(a1, a2);
  if (result)
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFNumberGetTypeID() || (v8 = CFGetTypeID(v6), v8 == CFBooleanGetTypeID()))
      {
        result = 0;
      }

      else
      {
        cmio_XPCMessageCopyCFNumber_cold_1(v6);
        v6 = 0;
        result = 0xFFFFFFFFLL;
      }
    }

    else
    {
      cmio_XPCMessageCopyCFNumber_cold_2();
      result = v9;
      v6 = v10;
    }
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t cmio_XPCMessageCopyCFString(void *a1, const char *a2, void *a3)
{
  result = xpc_dictionary_get_value(a1, a2);
  if (result)
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFStringGetTypeID())
      {
        result = 0;
      }

      else
      {
        cmio_XPCMessageCopyCFString_cold_1(v6);
        v6 = 0;
        result = 0xFFFFFFFFLL;
      }
    }

    else
    {
      cmio_XPCMessageCopyCFString_cold_2();
      result = v8;
      v6 = v9;
    }
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t cmio_XPCMessageCopyCFData(void *a1, const char *a2, void *a3)
{
  result = xpc_dictionary_get_value(a1, a2);
  if (result)
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFDataGetTypeID())
      {
        result = 0;
      }

      else
      {
        cmio_XPCMessageCopyCFData_cold_1(v6);
        v6 = 0;
        result = 0xFFFFFFFFLL;
      }
    }

    else
    {
      cmio_XPCMessageCopyCFData_cold_2();
      result = v8;
      v6 = v9;
    }
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t cmio_XPCMessageCopyCFArray(void *a1, const char *a2, void *a3)
{
  result = xpc_dictionary_get_value(a1, a2);
  if (result)
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFArrayGetTypeID())
      {
        result = 0;
      }

      else
      {
        cmio_XPCMessageCopyCFArray_cold_1(v6);
        v6 = 0;
        result = 0xFFFFFFFFLL;
      }
    }

    else
    {
      cmio_XPCMessageCopyCFArray_cold_2();
      result = v8;
      v6 = v9;
    }
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t cmio_XPCMessageCopyCFDictionary(void *a1, const char *a2, void *a3)
{
  result = xpc_dictionary_get_value(a1, a2);
  if (result)
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFDictionaryGetTypeID())
      {
        result = 0;
      }

      else
      {
        cmio_XPCMessageCopyCFDictionary_cold_1(v6);
        v6 = 0;
        result = 0xFFFFFFFFLL;
      }
    }

    else
    {
      cmio_XPCMessageCopyCFDictionary_cold_2();
      result = v8;
      v6 = v9;
    }
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t cmio_VDCAssistantDeviceUIDForUSBAssistantNSUUID(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 getUUIDBytes:v3];
  result = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%016llx", (bswap32(v6) & 0xFFFF0000) | (bswap32(v7) >> 16) | ((bswap32(v4) >> 16) << 48) | ((bswap32(v5) >> 16) << 32)];
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cmio_getSTCameraCaptureAttributionMapKey(__CFString *a1, __CFString *a2)
{
  v2 = @"unknownDevice";
  if (a1)
  {
    v2 = a1;
  }

  v3 = @"unknownStream";
  if (a2)
  {
    v3 = a2;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v2, v3];
}

uint64_t cmio_clientIsRunningInXCTest(_OWORD *a1)
{
  v1 = *MEMORY[0x277CBECE8];
  v2 = a1[1];
  *v7.val = *a1;
  *&v7.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v7);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  IsRunningInXCTestWithSecTask = cmio_clientIsRunningInXCTestWithSecTask(v3);
  CFRelease(v4);
  return IsRunningInXCTestWithSecTask;
}

uint64_t cmio_clientIsRunningInXCTestWithSecTask(__SecTask *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = SecTaskCopySigningIdentifier(a1, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = cmio_clientApplicationIDIsXCTest(v1);

  return v3;
}

uint64_t cmio_clientApplicationIDIsXCTest(void *a1)
{
  if (a1)
  {
    if ([a1 isEqualToString:@"com.apple.xctest"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.dt.xctest.tool") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.avfoundation.AVFoundation-OSX-Capture-Unit-Tests.xctrunner") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"com.apple.avfoundation.AVFoundation-macCatalyst-Capture-Unit-Tests.xctrunner"))
    {
      return 1;
    }

    else
    {
      return [a1 isEqualToString:@"com.apple.avfoundation.AVFCaptureTests-Embedded-Runner.xctrunner"];
    }
  }

  else
  {
    cmio_clientApplicationIDIsXCTest_cold_1(&v3);
    return v3;
  }
}

void OUTLINED_FUNCTION_5_3()
{
  *v1 = 0;
  *v0 = -1;
  v3 = *(v2 - 40);
}

void OUTLINED_FUNCTION_7_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Cu);
}

BOOL OUTLINED_FUNCTION_8_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_10_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_22EA307E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22EA321DC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      v3 = CMIOLog();
      if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __62__CMIOExtensionProviderHostContext_availablePluginProperties___block_invoke_cold_4();
      }

      objc_end_catch();
      JUMPOUT(0x22EA321A0);
    }

    objc_begin_catch(exception_object);
    dispatch_group_leave(*(*(v2 + 32) + 24));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA32800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      v19 = CMIOLog();
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        [CMIOExtensionProviderHostContext pluginStates:];
      }

      objc_end_catch();
      JUMPOUT(0x22EA32758);
    }

    objc_begin_catch(exception_object);
    JUMPOUT(0x22EA3275CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA32F88(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      v3 = CMIOLog();
      if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __76__CMIOExtensionProviderHostContext_pluginPropertyStatesForProperties_reply___block_invoke_cold_5();
      }

      objc_end_catch();
      JUMPOUT(0x22EA32F4CLL);
    }

    objc_begin_catch(exception_object);
    dispatch_group_leave(*(*(v2 + 32) + 24));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA334E0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      v3 = CMIOLog();
      if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __66__CMIOExtensionProviderHostContext_setPluginPropertyValues_reply___block_invoke_cold_3();
      }

      objc_end_catch();
      JUMPOUT(0x22EA334A4);
    }

    objc_begin_catch(exception_object);
    dispatch_group_leave(*(*(v2 + 32) + 24));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA33A58(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      v3 = CMIOLog();
      if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __80__CMIOExtensionProviderHostContext_availableDevicePropertiesWithDeviceID_reply___block_invoke_cold_4();
      }

      objc_end_catch();
      JUMPOUT(0x22EA33A1CLL);
    }

    objc_begin_catch(exception_object);
    dispatch_group_leave(*(*(v2 + 32) + 24));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA340C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      v16 = CMIOLog();
      if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __67__CMIOExtensionProviderHostContext_deviceStatesWithDeviceID_reply___block_invoke_cold_5();
      }

      objc_end_catch();
      JUMPOUT(0x22EA34080);
    }

    objc_begin_catch(exception_object);
    dispatch_group_leave(*(*(v15 + 32) + 24));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA34778(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      v3 = CMIOLog();
      if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __86__CMIOExtensionProviderHostContext_devicePropertyStatesWithDeviceID_properties_reply___block_invoke_cold_5();
      }

      objc_end_catch();
      JUMPOUT(0x22EA3473CLL);
    }

    objc_begin_catch(exception_object);
    dispatch_group_leave(*(*(v2 + 32) + 24));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA34D20(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      v3 = CMIOLog();
      if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __93__CMIOExtensionProviderHostContext_setDevicePropertyValuesWithDeviceID_propertyValues_reply___block_invoke_cold_3();
      }

      objc_end_catch();
      JUMPOUT(0x22EA34CE4);
    }

    objc_begin_catch(exception_object);
    dispatch_group_leave(*(*(v2 + 32) + 24));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA35298(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      v3 = CMIOLog();
      if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __80__CMIOExtensionProviderHostContext_availableStreamPropertiesWithStreamID_reply___block_invoke_cold_4();
      }

      objc_end_catch();
      JUMPOUT(0x22EA3525CLL);
    }

    objc_begin_catch(exception_object);
    dispatch_group_leave(*(*(v2 + 32) + 24));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA358B0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      v3 = CMIOLog();
      if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __86__CMIOExtensionProviderHostContext_streamPropertyStatesWithStreamID_properties_reply___block_invoke_cold_5();
      }

      objc_end_catch();
      JUMPOUT(0x22EA35874);
    }

    objc_begin_catch(exception_object);
    dispatch_group_leave(*(*(v2 + 32) + 24));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA36024(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      v3 = CMIOLog();
      if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __93__CMIOExtensionProviderHostContext_setStreamPropertyValuesWithStreamID_propertyValues_reply___block_invoke_cold_3();
      }

      objc_end_catch();
      JUMPOUT(0x22EA35FE8);
    }

    objc_begin_catch(exception_object);
    dispatch_group_leave(*(*(v2 + 32) + 24));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA364EC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      v3 = CMIOLog();
      if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __66__CMIOExtensionProviderHostContext_startStreamWithStreamID_reply___block_invoke_cold_3();
      }

      objc_end_catch();
      JUMPOUT(0x22EA364B0);
    }

    objc_begin_catch(exception_object);
    dispatch_group_leave(*(*(v2 + 32) + 24));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA369B4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      v3 = CMIOLog();
      if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __65__CMIOExtensionProviderHostContext_stopStreamWithStreamID_reply___block_invoke_cold_3();
      }

      objc_end_catch();
      JUMPOUT(0x22EA36978);
    }

    objc_begin_catch(exception_object);
    dispatch_group_leave(*(*(v2 + 32) + 24));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA37328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      v12 = CMIOLog();
      if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __94__CMIOExtensionProviderHostContext_captureAsyncStillImageWithStreamID_uniqueID_options_reply___block_invoke_cold_4();
      }

      objc_end_catch();
      JUMPOUT(0x22EA372ECLL);
    }

    objc_begin_catch(exception_object);
    dispatch_group_leave(*(*(v11 + 32) + 24));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22EA3785C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      v3 = CMIOLog();
      if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderHostContext.m");
        __77__CMIOExtensionProviderHostContext_enqueueReactionEffect_reactionType_reply___block_invoke_cold_3();
      }

      objc_end_catch();
      JUMPOUT(0x22EA37820);
    }

    objc_begin_catch(exception_object);
    dispatch_group_leave(*(*(v2 + 32) + 24));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t __CMIOModuleLogLevel_block_invoke_1()
{
  result = CMIOPreferencesGetIntegerValue(@"CMIOExtensionProviderHostContext.Debug", 0);
  CMIOModuleLogLevel_cmioLevel_1 = result;
  return result;
}

void OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 20) = v3;
  *(a3 + 28) = 2114;
  *(a3 + 30) = a2;
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  *(a2 + 12) = 1024;
  return result;
}

void OUTLINED_FUNCTION_15_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0x1Cu);
}

uint64_t CMIOPreferences()
{
  if (CMIOPreferences::once != -1)
  {
    CMIOPreferences_cold_1();
  }

  return CMIOPreferences::cmioPref;
}

CFDictionaryRef __CMIOPreferences_block_invoke()
{
  result = CFPreferencesCopyMultiple(0, @"com.apple.cmio", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  CMIOPreferences::cmioPref = result;
  return result;
}

uint64_t CMIOPreferencesGetIntegerValue(void *key, char *a2)
{
  if (CMIOPreferences::once != -1)
  {
    CMIOPreferences_cold_1();
  }

  if (CMIOPreferences::cmioPref)
  {
    Value = CFDictionaryGetValue(CMIOPreferences::cmioPref, key);
    if (Value)
    {
      v5 = Value;
      v6 = CFGetTypeID(Value);
      if (v6 == CFStringGetTypeID())
      {
        IntValue = CFStringGetIntValue(v5);
        if (IntValue)
        {
          v8 = IntValue;
          goto LABEL_21;
        }

        v8 = 1;
        if (CFStringCompare(v5, @"true", 1uLL))
        {
          v8 = 1;
          if (CFStringCompare(v5, @"yes", 1uLL))
          {
            if (CFStringCompare(v5, @"false", 1uLL) && CFStringCompare(v5, @"no", 1uLL) && CFStringCompare(v5, @"0", 1uLL))
            {
              goto LABEL_17;
            }

            v8 = 0;
          }
        }
      }

      else
      {
        v9 = CFGetTypeID(v5);
        if (v9 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          CFNumberGetValue(v5, kCFNumberCFIndexType, &valuePtr);
          v8 = valuePtr;
        }

        else
        {
          v10 = CFGetTypeID(v5);
          if (v10 != CFBooleanGetTypeID())
          {
            goto LABEL_17;
          }

          v8 = CFBooleanGetValue(v5) != 0;
        }
      }

LABEL_21:
      v11 = 1;
      if (!a2)
      {
        return v8;
      }

      goto LABEL_18;
    }
  }

LABEL_17:
  v8 = 0;
  v11 = 0;
  if (a2)
  {
LABEL_18:
    *a2 = v11;
  }

  return v8;
}

os_log_t __CMIOLog_block_invoke()
{
  result = os_log_create("com.apple.cmio", &unk_22EA5B12F);
  CMIOLog::cmioLog = result;
  return result;
}

uint64_t CMIOLogLevel(int a1)
{
  if (CMIOLogLevel::once != -1)
  {
    CMIOLogLevel_cold_1();
  }

  if (CMIOLogLevel::cmioLevel < a1)
  {
    return 0;
  }

  if (CMIOLog::once != -1)
  {
    CMIOLog_cold_1();
  }

  return CMIOLog::cmioLog;
}

uint64_t __CMIOLogLevel_block_invoke()
{
  result = CMIOPreferencesGetIntegerValue(@"Debug", 0);
  CMIOLogLevel::cmioLevel = result;
  return result;
}

void sub_22EA38158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22EA3CAA8(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    if (a2 == 2)
    {
      v2 = objc_begin_catch(exception_object);
      v3 = CMIOLog();
      if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProviderContext.m");
        __73__CMIOExtensionProviderContext_pullSampleBufferForStreamID_replyq_reply___block_invoke_cold_4(v4, v2, va);
      }

      objc_end_catch();
      JUMPOUT(0x22EA3CA78);
    }

    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

OSStatus CMIOSampleBufferCreate(CFAllocatorRef allocator, CMBlockBufferRef dataBuffer, CMFormatDescriptionRef formatDescription, UInt32 numSamples, UInt32 numSampleTimingEntries, const CMSampleTimingInfo *sampleTimingArray, UInt32 numSampleSizeEntries, const size_t *sampleSizeArray, UInt64 sequenceNumber, UInt32 discontinuityFlags, CMSampleBufferRef *sBufOut)
{
  v11 = sBufOut;
  target = 0;
  if (!sBufOut)
  {
    return -50;
  }

  v13 = 0;
  v14 = -50;
  if (formatDescription)
  {
    if (sampleTimingArray)
    {
      if (CMFormatDescriptionGetMediaType(formatDescription) != 1986618469 || (v13 = 0, v14 = -50, numSamples == 1) && numSampleSizeEntries == 1)
      {
        v21 = CMSampleBufferCreate(allocator, dataBuffer, 1u, 0, 0, formatDescription, numSamples, numSampleTimingEntries, sampleTimingArray, numSampleSizeEntries, sampleSizeArray, &target);
        if (v21)
        {
          v14 = v21;
          v22 = CMIOLog();
          v13 = v22;
          if (v22)
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              CMIOSampleBufferCreate_cold_1();
            }

            v13 = 0;
          }
        }

        else
        {
          v13 = CFNumberCreate(allocator, kCFNumberSInt64Type, &sequenceNumber);
          if (v13)
          {
            CMSetAttachment(target, kCMIOSampleBufferAttachmentKey_SequenceNumber, v13, 1u);
            v23 = CFNumberCreate(allocator, kCFNumberSInt32Type, &discontinuityFlags);
            if (v23)
            {
              v24 = v23;
              CMSetAttachment(target, kCMIOSampleBufferAttachmentKey_DiscontinuityFlags, v23, 1u);
              *v11 = target;
              target = 0;
              CFRelease(v13);
              v14 = 0;
              v13 = v24;
LABEL_20:
              CFRelease(v13);
              return v14;
            }
          }

          v14 = -108;
        }
      }
    }
  }

  if (target)
  {
    CFRelease(target);
    target = 0;
  }

  if (v13)
  {
    goto LABEL_20;
  }

  return v14;
}

OSStatus CMIOSampleBufferCreateForImageBuffer(CFAllocatorRef allocator, CVImageBufferRef imageBuffer, CMVideoFormatDescriptionRef formatDescription, const CMSampleTimingInfo *sampleTiming, UInt64 sequenceNumber, UInt32 discontinuityFlags, CMSampleBufferRef *sBufOut)
{
  valuePtr = sequenceNumber;
  v17 = discontinuityFlags;
  sampleBufferOut = 0;
  if (!sBufOut)
  {
    return -50;
  }

  v8 = 0;
  v9 = -50;
  if (formatDescription && sampleTiming)
  {
    v11 = CMSampleBufferCreateForImageBuffer(allocator, imageBuffer, 1u, 0, 0, formatDescription, sampleTiming, &sampleBufferOut);
    if (v11)
    {
      v9 = v11;
      v12 = CMIOLog();
      v8 = v12;
      if (v12)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          CMIOSampleBufferCreateForImageBuffer_cold_1();
        }

        v8 = 0;
      }
    }

    else
    {
      v8 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
      if (v8)
      {
        CMSetAttachment(sampleBufferOut, kCMIOSampleBufferAttachmentKey_SequenceNumber, v8, 1u);
        v13 = CFNumberCreate(allocator, kCFNumberSInt32Type, &v17);
        if (v13)
        {
          v14 = v13;
          CMSetAttachment(sampleBufferOut, kCMIOSampleBufferAttachmentKey_DiscontinuityFlags, v13, 1u);
          *sBufOut = sampleBufferOut;
          sampleBufferOut = 0;
          CFRelease(v8);
          v9 = 0;
          v8 = v14;
LABEL_17:
          CFRelease(v8);
          return v9;
        }
      }

      v9 = -108;
    }
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
    sampleBufferOut = 0;
  }

  if (v8)
  {
    goto LABEL_17;
  }

  return v9;
}

OSStatus CMIOSampleBufferCreateNoDataMarker(CFAllocatorRef allocator, UInt32 noDataEvent, CMFormatDescriptionRef formatDescription, UInt64 sequenceNumber, UInt32 discontinuityFlags, CMSampleBufferRef *sBufOut)
{
  v6 = 0;
  v19 = noDataEvent;
  *&v17[8] = 0;
  valuePtr = sequenceNumber;
  *v17 = discontinuityFlags | 0x1000;
  v7 = -50;
  if (sequenceNumber == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    if (sBufOut)
    {
      v11 = CMSampleBufferCreate(allocator, 0, 0, 0, 0, formatDescription, 0, 0, 0, 0, 0, &v17[4]);
      if (v11)
      {
        v7 = v11;
        v12 = CMIOLog();
        v6 = v12;
        if (v12)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            CMIOSampleBufferCreateNoDataMarker_cold_1();
          }

          v6 = 0;
        }

        v9 = 0;
      }

      else
      {
        v9 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
        if (v9)
        {
          CMSetAttachment(*&v17[4], kCMIOSampleBufferAttachmentKey_SequenceNumber, v9, 1u);
          v6 = CFNumberCreate(allocator, kCFNumberSInt32Type, v17);
          if (v6)
          {
            CMSetAttachment(*&v17[4], kCMIOSampleBufferAttachmentKey_DiscontinuityFlags, v6, 1u);
            v13 = CFNumberCreate(allocator, kCFNumberSInt32Type, &v19);
            if (v13)
            {
              v14 = v13;
              CMSetAttachment(*&v17[4], kCMIOSampleBufferAttachmentKey_NoDataMarker, v13, 1u);
              v7 = 0;
              *sBufOut = *&v17[4];
              *&v17[4] = 0;
LABEL_19:
              CFRelease(v9);
              v15 = v14;
              goto LABEL_20;
            }
          }
        }

        else
        {
          v6 = 0;
        }

        v7 = -108;
      }
    }
  }

  if (*&v17[4])
  {
    CFRelease(*&v17[4]);
    *&v17[4] = 0;
  }

  v14 = 0;
  v15 = 0;
  if (v9)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v7;
}

void CMIOSampleBufferSetSequenceNumber(CFAllocatorRef allocator, CMSampleBufferRef sbuf, UInt64 sequenceNumber)
{
  valuePtr = sequenceNumber;
  if (sbuf)
  {
    v4 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
    if (v4)
    {
      v5 = v4;
      CMSetAttachment(sbuf, kCMIOSampleBufferAttachmentKey_SequenceNumber, v4, 1u);
      CFRelease(v5);
    }
  }
}

UInt64 CMIOSampleBufferGetSequenceNumber(CMSampleBufferRef sbuf)
{
  if (!sbuf)
  {
    return -1;
  }

  v1 = CMGetAttachment(sbuf, kCMIOSampleBufferAttachmentKey_SequenceNumber, 0);
  if (!v1)
  {
    return -1;
  }

  v2 = v1;
  TypeID = CFNumberGetTypeID();
  if (TypeID != CFGetTypeID(v2))
  {
    return -1;
  }

  valuePtr = 0;
  if (CFNumberGetValue(v2, kCFNumberSInt64Type, &valuePtr))
  {
    return valuePtr;
  }

  else
  {
    return -1;
  }
}

void CMIOSampleBufferSetDiscontinuityFlags(CFAllocatorRef allocator, CMSampleBufferRef sbuf, UInt32 discontinuityFlags)
{
  valuePtr = discontinuityFlags;
  if (sbuf)
  {
    v4 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v4)
    {
      v5 = v4;
      CMSetAttachment(sbuf, kCMIOSampleBufferAttachmentKey_DiscontinuityFlags, v4, 1u);
      CFRelease(v5);
    }
  }
}

UInt32 CMIOSampleBufferGetDiscontinuityFlags(CMSampleBufferRef sbuf)
{
  if (!sbuf)
  {
    return 1;
  }

  v1 = CMGetAttachment(sbuf, kCMIOSampleBufferAttachmentKey_DiscontinuityFlags, 0);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  TypeID = CFNumberGetTypeID();
  if (TypeID != CFGetTypeID(v2))
  {
    return 1;
  }

  valuePtr = 0;
  if (CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr))
  {
    return valuePtr;
  }

  else
  {
    return 1;
  }
}

OSStatus CMIOSampleBufferCopyNonRequiredAttachments(CMSampleBufferRef sourceSBuf, CMSampleBufferRef destSBuf, CMAttachmentMode attachmentMode)
{
  v3 = -50;
  if (sourceSBuf && destSBuf)
  {
    v6 = *MEMORY[0x277CBECE8];
    v7 = CMCopyDictionaryOfAttachments(*MEMORY[0x277CBECE8], sourceSBuf, attachmentMode);
    if (v7)
    {
      v8 = v7;
      if (CFDictionaryGetCount(v7) >= 1)
      {
        if (CFDictionaryContainsKey(v8, kCMIOSampleBufferAttachmentKey_DiscontinuityFlags) || CFDictionaryContainsKey(v8, kCMIOSampleBufferAttachmentKey_SequenceNumber))
        {
          MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, v8);
          if (MutableCopy)
          {
            v10 = MutableCopy;
            CFDictionaryRemoveValue(MutableCopy, kCMIOSampleBufferAttachmentKey_DiscontinuityFlags);
            CFDictionaryRemoveValue(v10, kCMIOSampleBufferAttachmentKey_SequenceNumber);
            if (CFDictionaryGetCount(v10) >= 1)
            {
              CMSetAttachments(destSBuf, v10, attachmentMode);
            }

            CFRelease(v8);
            v3 = 0;
            goto LABEL_16;
          }

          v3 = -108;
LABEL_15:
          v10 = v8;
LABEL_16:
          CFRelease(v10);
          return v3;
        }

        CMSetAttachments(destSBuf, v8, attachmentMode);
      }

      v3 = 0;
      goto LABEL_15;
    }

    return 0;
  }

  return v3;
}

OSStatus CMIOSampleBufferCopySampleAttachments(CMSampleBufferRef sourceSBuf, CMSampleBufferRef destSBuf)
{
  LODWORD(v2) = -50;
  if (sourceSBuf && destSBuf)
  {
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sourceSBuf, 0);
    if (SampleAttachmentsArray)
    {
      v5 = SampleAttachmentsArray;
      Count = CFArrayGetCount(SampleAttachmentsArray);
      if (Count >= 1)
      {
        v7 = Count;
        v8 = CMSampleBufferGetSampleAttachmentsArray(destSBuf, 1u);
        if (!v8)
        {
          LODWORD(v2) = -108;
          return v2;
        }

        v9 = v8;
        v10 = CFArrayGetCount(v8);
        if (v7 >= v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = v7;
        }

        v23 = v11;
        if (v10 >= 1)
        {
          v2 = 0;
          v12 = 0;
          v22 = v5;
          while (1)
          {
            v13 = v2;
            ValueAtIndex = CFArrayGetValueAtIndex(v5, v12);
            v15 = CFArrayGetValueAtIndex(v9, v12);
            LODWORD(v2) = -50;
            if (!ValueAtIndex)
            {
              return v2;
            }

            v16 = v15;
            if (!v15)
            {
              return v2;
            }

            v17 = CFDictionaryGetCount(ValueAtIndex);
            v18 = malloc_type_malloc(8 * v17, 0x80040B8603338uLL);
            v19 = malloc_type_malloc(8 * v17, 0x80040B8603338uLL);
            v20 = v19;
            if (v18)
            {
              if (v19)
              {
                break;
              }
            }

            v13 = 4294967188;
            v2 = 4294967188;
            if (v18)
            {
              goto LABEL_19;
            }

LABEL_20:
            if (v20)
            {
              free(v20);
            }

            if (++v12 == v23)
            {
              return v2;
            }
          }

          CFDictionaryGetKeysAndValues(ValueAtIndex, v18, v19);
          if (v17)
          {
            do
            {
              CFDictionarySetValue(v16, v18[v17 - 1], v20[v17 - 1]);
              --v17;
            }

            while (v17);
            v5 = v22;
          }

LABEL_19:
          free(v18);
          v2 = v13;
          goto LABEL_20;
        }
      }
    }

    LODWORD(v2) = 0;
  }

  return v2;
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

void sub_22EA3DACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void cmio_XPCMessageSetCFNumber_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_8_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  }

  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageSetCFNumber_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_8_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  }

  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageSetCFNumber_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_8_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  }

  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageSetCFString_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_8_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  }

  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageSetCFString_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_8_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  }

  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageSetCFString_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_8_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  }

  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageSetCFData_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_8_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  }

  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageSetCFData_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_8_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  }

  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageSetCFData_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_8_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  }

  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageSetCFArray_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_8_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  }

  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageSetCFArray_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_8_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  }

  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageSetCFArray_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_8_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  }

  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageSetCFDictionary_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_8_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  }

  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageSetCFDictionary_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_8_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  }

  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageSetCFDictionary_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_8_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Cu);
  }

  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageCopyCFNumber_cold_1(const void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = CMIOLog();
  if (v2 && OUTLINED_FUNCTION_8_0(v2))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
  }

  CFRelease(a1);
  v3 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageCopyCFNumber_cold_2()
{
  OUTLINED_FUNCTION_9_0();
  v9 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_10_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_7_1(&dword_22EA08000, v2, v3, "%s:%d cmio assert: %s at %s - (err=%d)", v4, v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_5_3();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageCopyCFString_cold_1(const void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = CMIOLog();
  if (v2 && OUTLINED_FUNCTION_8_0(v2))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
  }

  CFRelease(a1);
  v3 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageCopyCFString_cold_2()
{
  OUTLINED_FUNCTION_9_0();
  v9 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_10_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_7_1(&dword_22EA08000, v2, v3, "%s:%d cmio assert: %s at %s - (err=%d)", v4, v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_5_3();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageCopyCFData_cold_1(const void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = CMIOLog();
  if (v2 && OUTLINED_FUNCTION_8_0(v2))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
  }

  CFRelease(a1);
  v3 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageCopyCFData_cold_2()
{
  OUTLINED_FUNCTION_9_0();
  v9 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_10_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_7_1(&dword_22EA08000, v2, v3, "%s:%d cmio assert: %s at %s - (err=%d)", v4, v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_5_3();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageCopyCFArray_cold_1(const void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = CMIOLog();
  if (v2 && OUTLINED_FUNCTION_8_0(v2))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
  }

  CFRelease(a1);
  v3 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageCopyCFArray_cold_2()
{
  OUTLINED_FUNCTION_9_0();
  v9 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_10_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_7_1(&dword_22EA08000, v2, v3, "%s:%d cmio assert: %s at %s - (err=%d)", v4, v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_5_3();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageCopyCFDictionary_cold_1(const void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = CMIOLog();
  if (v2 && OUTLINED_FUNCTION_8_0(v2))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Cu);
  }

  CFRelease(a1);
  v3 = *MEMORY[0x277D85DE8];
}

void cmio_XPCMessageCopyCFDictionary_cold_2()
{
  OUTLINED_FUNCTION_9_0();
  v9 = *MEMORY[0x277D85DE8];
  v0 = CMIOLog();
  if (v0 && OUTLINED_FUNCTION_10_0(v0))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_7_1(&dword_22EA08000, v2, v3, "%s:%d cmio assert: %s at %s - (err=%d)", v4, v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_5_3();
  v1 = *MEMORY[0x277D85DE8];
}

void cmio_clientApplicationIDIsXCTest_cold_1(_BYTE *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = CMIOLog();
  if (v2 && OUTLINED_FUNCTION_8_0(v2))
  {
    CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionUtilities.m");
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
  }

  *a1 = 0;
  v3 = *MEMORY[0x277D85DE8];
}

void CMIOSampleBufferCreate_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Common/Sources/CMIOSampleBuffer.c");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2(&dword_22EA08000, v0, v1, "%s:%d:%s ### Err %ld, ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void CMIOSampleBufferCreateForImageBuffer_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Common/Sources/CMIOSampleBuffer.c");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2(&dword_22EA08000, v0, v1, "%s:%d:%s ### Err %ld, ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void CMIOSampleBufferCreateNoDataMarker_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Common/Sources/CMIOSampleBuffer.c");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2(&dword_22EA08000, v0, v1, "%s:%d:%s ### Err %ld, ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}