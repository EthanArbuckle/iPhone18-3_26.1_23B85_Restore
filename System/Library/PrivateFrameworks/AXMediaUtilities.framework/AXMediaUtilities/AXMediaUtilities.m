uint64_t sub_1AE37DA08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE37DA28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t ReplayKitLibraryCore()
{
  if (!ReplayKitLibraryCore_frameworkLibrary)
  {
    ReplayKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return ReplayKitLibraryCore_frameworkLibrary;
}

uint64_t __ReplayKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ReplayKitLibraryCore_frameworkLibrary = result;
  return result;
}

void __getRPScreenRecorderClass_block_invoke(uint64_t a1)
{
  if (!ReplayKitLibraryCore())
  {
    v2 = abort_report_np();
    free(v2);
  }

  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RPScreenRecorder");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRPScreenRecorderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getRPScreenRecorderClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0();
  }
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id getVNDetectHorizonRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNDetectHorizonRequestClass_softClass;
  v7 = getVNDetectHorizonRequestClass_softClass;
  if (!getVNDetectHorizonRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNDetectHorizonRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNDetectHorizonRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE37FF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNDetectHorizonRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A1C740;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary)
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
  result = objc_getClass("VNDetectHorizonRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNDetectHorizonRequestClass_block_invoke_cold_1();
  }

  getVNDetectHorizonRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1AE381AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE381DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE3820C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE38272C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE382B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE382EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE3832CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE3835D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE383B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE3841CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE38491C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE385070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE38560C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE385BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE386210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVNFaceAttributeAgeBabySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeAgeBaby");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeAgeBabySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t VisionLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __VisionLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A1C768;
    v5 = 0;
    VisionLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = VisionLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!VisionLibraryCore_frameworkLibrary_0)
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

uint64_t __VisionLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getVNFaceAttributeAgeChildSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeAgeChild");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeAgeChildSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeAgeYoungAdultSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeAgeYoungAdult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeAgeYoungAdultSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeAgeAdultSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeAgeAdult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeAgeAdultSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeAgeSeniorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeAgeSenior");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeAgeSeniorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN1yPD9G185LIMKFd9RgandG6vUu4B3DZkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN1yPD9G185LIMKFd9RgandG6vUu4B3DZk");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN1yPD9G185LIMKFd9RgandG6vUu4B3DZkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN6cM1E1jfvMnUZoEeDjinPOtJKpacqIprSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN6cM1E1jfvMnUZoEeDjinPOtJKpacqIpr");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN6cM1E1jfvMnUZoEeDjinPOtJKpacqIprSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeEyesClosedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeEyesClosed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeEyesClosedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeEyesOpenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeEyesOpen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeEyesOpenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeHairColorBlackSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeHairColorBlack");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeHairColorBlackSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeHairColorBlondeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeHairColorBlonde");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeHairColorBlondeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeHairColorBrownSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeHairColorBrown");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeHairColorBrownSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeHairColorGraySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeHairColorGray");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeHairColorGraySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeHairColorRedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeHairColorRed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeHairColorRedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeHairColorWhiteSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeHairColorWhite");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeHairColorWhiteSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeGlassesPrescriptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeGlassesPrescription");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeGlassesPrescriptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeGlassesSunglassesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeGlassesSunglasses");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeGlassesSunglassesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeGlassesNoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeGlassesNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeGlassesNoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeMakeupEyesUnsureSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeMakeupEyesUnsure");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeMakeupEyesUnsureSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeMakeupEyesNoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeMakeupEyesNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeMakeupEyesNoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeMakeupEyesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeMakeupEyes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeMakeupEyesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeMakeupLipsUnsureSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeMakeupLipsUnsure");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeMakeupLipsUnsureSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeMakeupLipsNoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeMakeupLipsNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeMakeupLipsNoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeMakeupLipsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeMakeupLips");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeMakeupLipsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeFacemaskNoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeFacemaskNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeFacemaskNoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeFacemaskSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeFacemask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeFacemaskSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN7yMsLB9ggBYLDbJYIMGMSW6YBgi5uH2pSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN7yMsLB9ggBYLDbJYIMGMSW6YBgi5uH2p");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN7yMsLB9ggBYLDbJYIMGMSW6YBgi5uH2pSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN2eECeAuLQ8wnXvvNNkc5XEtpjqyiYvIpSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN2eECeAuLQ8wnXvvNNkc5XEtpjqyiYvIp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN2eECeAuLQ8wnXvvNNkc5XEtpjqyiYvIpSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN2AhEqI0IOCJAaCX6zovlg85aFZ80JfESSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN2AhEqI0IOCJAaCX6zovlg85aFZ80JfES");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN2AhEqI0IOCJAaCX6zovlg85aFZ80JfESSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN6a4sQBuQ5pSiUEd6p9iQflpz8xkWOnD2SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN6a4sQBuQ5pSiUEd6p9iQflpz8xkWOnD2");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN6a4sQBuQ5pSiUEd6p9iQflpz8xkWOnD2SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN6pbJdmseepvIGYzcDyryle1xGdZEWhHNSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN6pbJdmseepvIGYzcDyryle1xGdZEWhHN");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN6pbJdmseepvIGYzcDyryle1xGdZEWhHNSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN607hNga4JKRc1ljftiy9QfPCqbXQmLP4SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN607hNga4JKRc1ljftiy9QfPCqbXQmLP4");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN607hNga4JKRc1ljftiy9QfPCqbXQmLP4SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN2TVJG6FfNTt72vwVKOv1Jf5dWtEHvQISSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN2TVJG6FfNTt72vwVKOv1Jf5dWtEHvQIS");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN2TVJG6FfNTt72vwVKOv1Jf5dWtEHvQISSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN7ja3fTi9TZDyKN8NdYJaWqla1NRFdcRXSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN7ja3fTi9TZDyKN8NdYJaWqla1NRFdcRX");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN7ja3fTi9TZDyKN8NdYJaWqla1NRFdcRXSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN4lC1NTVMt6oWugtej0fqgS3z5p60aMupSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN4lC1NTVMt6oWugtej0fqgS3z5p60aMup");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN4lC1NTVMt6oWugtej0fqgS3z5p60aMupSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN1VQUXOcXrfZPXtaGgfZBhujM6uH6hvmISymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN1VQUXOcXrfZPXtaGgfZBhujM6uH6hvmI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN1VQUXOcXrfZPXtaGgfZBhujM6uH6hvmISymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN6i04vrZluouTItkCUMtS916cLgTyvODXSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN6i04vrZluouTItkCUMtS916cLgTyvODX");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN6i04vrZluouTItkCUMtS916cLgTyvODXSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN42tJSMaSWdsAnZKXv8XcZg2j2AIS7gjmSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN42tJSMaSWdsAnZKXv8XcZg2j2AIS7gjm");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN42tJSMaSWdsAnZKXv8XcZg2j2AIS7gjmSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN7vELTVTtPH26ptfCYi9dUHH8NxJ7O3cFSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN7vELTVTtPH26ptfCYi9dUHH8NxJ7O3cF");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN7vELTVTtPH26ptfCYi9dUHH8NxJ7O3cFSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN5ijZTfHVHp6ubCHBh4oIZR1SW4xbvQ00SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN5ijZTfHVHp6ubCHBh4oIZR1SW4xbvQ00");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN5ijZTfHVHp6ubCHBh4oIZR1SW4xbvQ00SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN3WbFaDRN3PTBiMaMEq5ttCx7hmmfySmRSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN3WbFaDRN3PTBiMaMEq5ttCx7hmmfySmR");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN3WbFaDRN3PTBiMaMEq5ttCx7hmmfySmRSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN4lCLwxDV30rFLSeoihd8yM1zdbka3cVuSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN4lCLwxDV30rFLSeoihd8yM1zdbka3cVu");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN4lCLwxDV30rFLSeoihd8yM1zdbka3cVuSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN4qKg9nfl3p0M4juXFIsbUb7tpfCv9epxSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN4qKg9nfl3p0M4juXFIsbUb7tpfCv9epx");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN4qKg9nfl3p0M4juXFIsbUb7tpfCv9epxSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN31UxDngUK44hDexm8CSuZnlLxECLb0yUSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN31UxDngUK44hDexm8CSuZnlLxECLb0yU");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN31UxDngUK44hDexm8CSuZnlLxECLb0yUSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN5JBEfctS0JUWeTVUxBAKOSXCUuMqPxTgSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN5JBEfctS0JUWeTVUxBAKOSXCUuMqPxTg");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN5JBEfctS0JUWeTVUxBAKOSXCUuMqPxTgSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN7CY11MLEimaE8WoiQ4opgi5HOi84j0UHSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN7CY11MLEimaE8WoiQ4opgi5HOi84j0UH");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN7CY11MLEimaE8WoiQ4opgi5HOi84j0UHSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN5SpoOVxahuTheCrHGepAYKTVB1baFLhQSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN5SpoOVxahuTheCrHGepAYKTVB1baFLhQ");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN5SpoOVxahuTheCrHGepAYKTVB1baFLhQSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN6YAJH4UBXYDBoH6cemKhJR7fPi2dt5QdSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN6YAJH4UBXYDBoH6cemKhJR7fPi2dt5Qd");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN6YAJH4UBXYDBoH6cemKhJR7fPi2dt5QdSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN21VM8NbCJMJjpepNo1kZkxteFybpDwlBSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN21VM8NbCJMJjpepNo1kZkxteFybpDwlB");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN21VM8NbCJMJjpepNo1kZkxteFybpDwlBSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN6lDi9hTBjr2vdjAJ5rwdun4YEH09u5F5SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN6lDi9hTBjr2vdjAJ5rwdun4YEH09u5F5");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN6lDi9hTBjr2vdjAJ5rwdun4YEH09u5F5SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN2X5h7waRTqk71pInqK4dnT6sZ6dRElxeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN2X5h7waRTqk71pInqK4dnT6sZ6dRElxe");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN2X5h7waRTqk71pInqK4dnT6sZ6dRElxeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNPdH78Lr962vQvRIq2JApX2QJZtbR3fviSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNPdH78Lr962vQvRIq2JApX2QJZtbR3fvi");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNPdH78Lr962vQvRIq2JApX2QJZtbR3fviSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN2nEhtfck4KB7KsvJeCeSEPcGLfKzeUKiSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN2nEhtfck4KB7KsvJeCeSEPcGLfKzeUKi");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN2nEhtfck4KB7KsvJeCeSEPcGLfKzeUKiSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN465E5iEqlR2tknJ0qZkyAn3yIDrmUpJwSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN465E5iEqlR2tknJ0qZkyAn3yIDrmUpJw");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN465E5iEqlR2tknJ0qZkyAn3yIDrmUpJwSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN4oD9MSPBdmmSq6KG3k7nYqdSMT5aNp6pSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN4oD9MSPBdmmSq6KG3k7nYqdSMT5aNp6p");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN4oD9MSPBdmmSq6KG3k7nYqdSMT5aNp6pSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN34LMYSFC7onytwsvH0y6uz2QaYvqY9qiSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN34LMYSFC7onytwsvH0y6uz2QaYvqY9qi");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN34LMYSFC7onytwsvH0y6uz2QaYvqY9qiSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN5iEOkR2NrIkLsZRvJTn61k1ovk3hvuxYSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN5iEOkR2NrIkLsZRvJTn61k1ovk3hvuxY");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN5iEOkR2NrIkLsZRvJTn61k1ovk3hvuxYSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN7ICFqxCpgr8BTWkFrFGYTQ3INUhxhYXRSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN7ICFqxCpgr8BTWkFrFGYTQ3INUhxhYXR");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN7ICFqxCpgr8BTWkFrFGYTQ3INUhxhYXRSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN3rKrpi4DELvo8AgM5Y3C68ryFlgB1grkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN3rKrpi4DELvo8AgM5Y3C68ryFlgB1grk");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN3rKrpi4DELvo8AgM5Y3C68ryFlgB1grkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN7ar6bR0PqRvM9BZ0nqEdwh61tXzue1UtSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN7ar6bR0PqRvM9BZ0nqEdwh61tXzue1Ut");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN7ar6bR0PqRvM9BZ0nqEdwh61tXzue1UtSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN1I7oR8JHxER2i7d6nQxNtHhGXxkJuH7cSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN1I7oR8JHxER2i7d6nQxNtHhGXxkJuH7c");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN1I7oR8JHxER2i7d6nQxNtHhGXxkJuH7cSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNDGCsUiwnQwGz0qSSQPGGd177EyoSaoGNSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNDGCsUiwnQwGz0qSSQPGGd177EyoSaoGN");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNDGCsUiwnQwGz0qSSQPGGd177EyoSaoGNSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN6LhAjooMZpZkrkhS48XbQt7602EpEAxvSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN6LhAjooMZpZkrkhS48XbQt7602EpEAxv");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN6LhAjooMZpZkrkhS48XbQt7602EpEAxvSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN1HsiXmKrxTsH8TYOuN5s7G3uHSP75iYSSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN1HsiXmKrxTsH8TYOuN5s7G3uHSP75iYS");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN1HsiXmKrxTsH8TYOuN5s7G3uHSP75iYSSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN1kD4zwSpSn6esc2wHjyAeZ2IRmwqjgttSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN1kD4zwSpSn6esc2wHjyAeZ2IRmwqjgtt");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN1kD4zwSpSn6esc2wHjyAeZ2IRmwqjgttSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN1PwKd46IDZj2ErCN9d1fTn3FuN3h4d9pSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN1PwKd46IDZj2ErCN9d1fTn3FuN3h4d9p");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN1PwKd46IDZj2ErCN9d1fTn3FuN3h4d9pSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN4bzonkXHYlzBnJNXcyyPd8WLw1wAI1PvSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VN4bzonkXHYlzBnJNXcyyPd8WLw1wAI1Pv");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN4bzonkXHYlzBnJNXcyyPd8WLw1wAI1PvSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

id getVNDetectFaceExpressionsRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNDetectFaceExpressionsRequestClass_softClass;
  v7 = getVNDetectFaceExpressionsRequestClass_softClass;
  if (!getVNDetectFaceExpressionsRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNDetectFaceExpressionsRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNDetectFaceExpressionsRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3890E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNCreateFaceprintRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNCreateFaceprintRequestClass_softClass;
  v7 = getVNCreateFaceprintRequestClass_softClass;
  if (!getVNCreateFaceprintRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNCreateFaceprintRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNCreateFaceprintRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3897F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNClassifyFaceAttributesRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNClassifyFaceAttributesRequestClass_softClass;
  v7 = getVNClassifyFaceAttributesRequestClass_softClass;
  if (!getVNClassifyFaceAttributesRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNClassifyFaceAttributesRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNClassifyFaceAttributesRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3898D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNDetectFaceLandmarksRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNDetectFaceLandmarksRequestClass_softClass;
  v7 = getVNDetectFaceLandmarksRequestClass_softClass;
  if (!getVNDetectFaceLandmarksRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNDetectFaceLandmarksRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNDetectFaceLandmarksRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3899B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNDetectFacePoseRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNDetectFacePoseRequestClass_softClass;
  v7 = getVNDetectFacePoseRequestClass_softClass;
  if (!getVNDetectFacePoseRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNDetectFacePoseRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNDetectFacePoseRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE389A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNDetectFaceRectanglesRequestClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v8 = getVNDetectFaceRectanglesRequestClass_softClass;
  v16 = getVNDetectFaceRectanglesRequestClass_softClass;
  if (!getVNDetectFaceRectanglesRequestClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getVNDetectFaceRectanglesRequestClass_block_invoke;
    v12[3] = &unk_1E7A1C700;
    v12[4] = &v13;
    __getVNDetectFaceRectanglesRequestClass_block_invoke(v12, a2, a3, a4, a5, a6, a7, a8, v11);
    v8 = v14[3];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  return v9;
}

void sub_1AE389B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getVNDetectFaceExpressionsRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNDetectFaceExpressionsRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNDetectFaceExpressionsRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getVNDetectFaceExpressionsRequestClass_block_invoke_cold_1();
    VisionLibrary_0();
  }
}

void VisionLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __VisionLibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7A1C9F8;
    v3 = 0;
    VisionLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!VisionLibraryCore_frameworkLibrary_1)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __VisionLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getVNCreateFaceprintRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_0();
  result = objc_getClass("VNCreateFaceprintRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNCreateFaceprintRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getVNCreateFaceprintRequestClass_block_invoke_cold_1();
    return __getVNClassifyFaceAttributesRequestClass_block_invoke(v3);
  }

  return result;
}

Class __getVNClassifyFaceAttributesRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_0();
  result = objc_getClass("VNClassifyFaceAttributesRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNClassifyFaceAttributesRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getVNClassifyFaceAttributesRequestClass_block_invoke_cold_1();
    return __getVNDetectFaceLandmarksRequestClass_block_invoke(v3);
  }

  return result;
}

Class __getVNDetectFaceLandmarksRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_0();
  result = objc_getClass("VNDetectFaceLandmarksRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNDetectFaceLandmarksRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getVNDetectFaceLandmarksRequestClass_block_invoke_cold_1();
    return __getVNDetectFacePoseRequestClass_block_invoke(v3);
  }

  return result;
}

Class __getVNDetectFacePoseRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_0();
  result = objc_getClass("VNDetectFacePoseRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNDetectFacePoseRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getVNDetectFacePoseRequestClass_block_invoke_cold_1();
    return __getVNDetectFaceRectanglesRequestClass_block_invoke(v3);
  }

  return result;
}

void __getVNDetectFaceRectanglesRequestClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{
  VisionLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNDetectFaceRectanglesRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNDetectFaceRectanglesRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = __getVNDetectFaceRectanglesRequestClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0_1(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id getVNClassifyImageAestheticsRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNClassifyImageAestheticsRequestClass_softClass;
  v7 = getVNClassifyImageAestheticsRequestClass_softClass;
  if (!getVNClassifyImageAestheticsRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNClassifyImageAestheticsRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNClassifyImageAestheticsRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE38ADBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNClassifyImageAestheticsRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A1CA10;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary_2)
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
  result = objc_getClass("VNClassifyImageAestheticsRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNClassifyImageAestheticsRequestClass_block_invoke_cold_1();
  }

  getVNClassifyImageAestheticsRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void sub_1AE38BA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AE38C218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AE38C660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AE38CED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<BOOL>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7A1C5F0, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void sub_1AE38DFA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1AE38E200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id getMLModelClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMLModelClass_softClass;
  v7 = getMLModelClass_softClass;
  if (!getMLModelClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMLModelClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getMLModelClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE38FC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNCoreMLModelClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNCoreMLModelClass_softClass;
  v7 = getVNCoreMLModelClass_softClass;
  if (!getVNCoreMLModelClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNCoreMLModelClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNCoreMLModelClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE38FD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNClassificationObservationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNClassificationObservationClass_softClass;
  v7 = getVNClassificationObservationClass_softClass;
  if (!getVNClassificationObservationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNClassificationObservationClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNClassificationObservationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE39014C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNCoreMLRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNCoreMLRequestClass_softClass;
  v7 = getVNCoreMLRequestClass_softClass;
  if (!getVNCoreMLRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNCoreMLRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNCoreMLRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE39022C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMLModelClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreMLLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreMLLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A1CB70;
    v6 = 0;
    CoreMLLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreMLLibraryCore_frameworkLibrary)
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
  result = objc_getClass("MLModel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMLModelClass_block_invoke_cold_1();
  }

  getMLModelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreMLLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreMLLibraryCore_frameworkLibrary = result;
  return result;
}

void __getVNCoreMLModelClass_block_invoke(uint64_t a1)
{
  VisionLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNCoreMLModel");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNCoreMLModelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getVNCoreMLModelClass_block_invoke_cold_1();
    VisionLibrary_1();
  }
}

void VisionLibrary_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_3)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __VisionLibraryCore_block_invoke_3;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7A1CB88;
    v3 = 0;
    VisionLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!VisionLibraryCore_frameworkLibrary_3)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __VisionLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_3 = result;
  return result;
}

Class __getVNClassificationObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary_1();
  result = objc_getClass("VNClassificationObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNClassificationObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getVNClassificationObservationClass_block_invoke_cold_1();
    return __getVNCoreMLRequestClass_block_invoke(v3);
  }

  return result;
}

void __getVNCoreMLRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNCoreMLRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNCoreMLRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = __getVNCoreMLRequestClass_block_invoke_cold_1();
    [(AXMScreenCaptureNode *)v2 nodeInitialize];
  }
}

void sub_1AE39081C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id getVNImageScoreObservationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNImageScoreObservationClass_softClass;
  v7 = getVNImageScoreObservationClass_softClass;
  if (!getVNImageScoreObservationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNImageScoreObservationClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNImageScoreObservationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE390FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNImageBrightnessObservationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNImageBrightnessObservationClass_softClass;
  v7 = getVNImageBrightnessObservationClass_softClass;
  if (!getVNImageBrightnessObservationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNImageBrightnessObservationClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNImageBrightnessObservationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3910D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNImageBlurObservationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNImageBlurObservationClass_softClass;
  v7 = getVNImageBlurObservationClass_softClass;
  if (!getVNImageBlurObservationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNImageBlurObservationClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNImageBlurObservationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3911B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE391498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getVNImageScoreObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNImageScoreObservation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNImageScoreObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getVNImageScoreObservationClass_block_invoke_cold_1();
    VisionLibrary_2();
  }
}

void VisionLibrary_2()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_4)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __VisionLibraryCore_block_invoke_4;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7A1CBD8;
    v3 = 0;
    VisionLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!VisionLibraryCore_frameworkLibrary_4)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __VisionLibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_4 = result;
  return result;
}

Class __getVNImageBrightnessObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary_2();
  result = objc_getClass("VNImageBrightnessObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNImageBrightnessObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getVNImageBrightnessObservationClass_block_invoke_cold_1();
    return __getVNImageBlurObservationClass_block_invoke(v3);
  }

  return result;
}

Class __getVNImageBlurObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary_2();
  result = objc_getClass("VNImageBlurObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNImageBlurObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getVNImageBlurObservationClass_block_invoke_cold_1();
    return __getVNImageBlurScoreRequestClass_block_invoke(v3);
  }

  return result;
}

AXMMobileAssetEvaluationNode *__getVNImageBlurScoreRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_2();
  result = objc_getClass("VNImageBlurScoreRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNImageBlurScoreRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getVNImageBlurScoreRequestClass_block_invoke_cold_1();
    return [(AXMMobileAssetEvaluationNode *)v3 initWithIdentifier:v4, v5];
  }

  return result;
}

uint64_t CoreAnalyticsLibraryCore()
{
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    CoreAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return CoreAnalyticsLibraryCore_frameworkLibrary;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreAnalyticsLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAnalyticsSendEventLazySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAnalyticsLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "AnalyticsSendEventLazy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAnalyticsSendEventLazySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __kernel_morphmin_block_invoke()
{
  v0 = [MEMORY[0x1E695F660] kernelWithString:{@"kernel vec4 _morphmin (sampler i, float n, vec2 d) \n { \n vec2 dc = destCoord() \n vec4 s = sample(i, samplerTransform(i, dc)); \n for (float x = -n; x <= n; x++) \n s = min(s, sample(i, samplerTransform(i, dc + d*x))); \n return s; \n } \n"}];;
  v1 = kernel_morphmin_singleton;
  kernel_morphmin_singleton = v0;

  v2 = kernel_morphmin_singleton;

  return [v2 setCanReduceOutputChannels:1];
}

uint64_t __kernel_morphmax_block_invoke()
{
  v0 = [MEMORY[0x1E695F660] kernelWithString:{@"kernel vec4 _morphmax (sampler i, float n, vec2 d) \n { \n vec2 dc = destCoord() \n vec4 s = sample(i, samplerTransform(i, dc)); \n for (float x = -n; x <= n; x++) \n s = max(s, sample(i, samplerTransform(i, dc + d*x))); \n return s; \n } \n"}];;
  v1 = kernel_morphmax_singleton;
  kernel_morphmax_singleton = v0;

  v2 = kernel_morphmax_singleton;

  return [v2 setCanReduceOutputChannels:1];
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t VisionLibrary_3()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_5)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __VisionLibraryCore_block_invoke_5;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A1D080;
    v5 = 0;
    VisionLibraryCore_frameworkLibrary_5 = _sl_dlopen();
  }

  v0 = VisionLibraryCore_frameworkLibrary_5;
  v1 = v3[0];
  if (!VisionLibraryCore_frameworkLibrary_5)
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

uint64_t __VisionLibraryCore_block_invoke_5()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_5 = result;
  return result;
}

void *__getVNCleanupPurgeAllSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_3();
  result = dlsym(v2, "VNCleanupPurgeAll");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNCleanupPurgeAllSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getVNImageRequestHandlerClass_block_invoke(uint64_t a1)
{
  VisionLibrary_3();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNImageRequestHandler");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNImageRequestHandlerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getVNImageRequestHandlerClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0_3();
  }
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_1AE39C7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1AE39DDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

Class ___ZL15getMLModelClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreMLLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL17CoreMLLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A1D0C0;
    v6 = 0;
    CoreMLLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreMLLibraryCore(char **)::frameworkLibrary)
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
  result = objc_getClass("MLModel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMLModelClass_block_invoke_cold_1();
  }

  getMLModelClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL17CoreMLLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  CoreMLLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL39getUIGraphicsBeginImageContextSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsBeginImageContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsBeginImageContextSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UIKitLibrary(void)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!UIKitLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL16UIKitLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A1D0D8;
    v5 = 0;
    UIKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = UIKitLibraryCore(char **)::frameworkLibrary;
  v1 = v3[0];
  if (!UIKitLibraryCore(char **)::frameworkLibrary)
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

uint64_t ___ZL16UIKitLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  UIKitLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL39getUIGraphicsGetCurrentContextSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsGetCurrentContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsGetCurrentContextSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class ___ZL15getUIImageClassv_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIImageClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL15getUIImageClassv_block_invoke_cold_1();
    return ___ZL53getUIGraphicsGetImageFromCurrentImageContextSymbolLocv_block_invoke(v3);
  }

  return result;
}

void *___ZL53getUIGraphicsGetImageFromCurrentImageContextSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsGetImageFromCurrentImageContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsGetImageFromCurrentImageContextSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL37getUIGraphicsEndImageContextSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsEndImageContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsEndImageContextSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<NSString * {__strong}>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<NSString * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NSString * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<NSString * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__CFDictionary *ImageTools_fcssCreateIOSurfacePropertiesDictionary(int a1, int a2, int a3)
{
  hasVXD = ImageTools_hasVXD();
  v7 = ImageTools_hasVXD();
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = Mutable;
  if (hasVXD)
  {
    if (v7)
    {
      ImageTools_setIntValue(Mutable, *MEMORY[0x1E696CE60], 1280);
    }
  }

  else
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E696CF90], @"PurpleGfxMem");
  }

  v10 = (a1 + 15) & 0xFFFFFFF0;
  if (a3 == 1111970369)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = (v10 << v11) * ((a2 + 15) & 0xFFFFFFF0);
  ImageTools_setIntValue(v9, *MEMORY[0x1E696CE58], v10 << v11);
  ImageTools_setIntValue(v9, *MEMORY[0x1E696D130], a1);
  ImageTools_setIntValue(v9, *MEMORY[0x1E696CF58], a2);
  ImageTools_setIntValue(v9, *MEMORY[0x1E696CFC0], a3);
  ImageTools_setIntValue(v9, *MEMORY[0x1E696CE30], v12);
  return v9;
}

uint64_t ImageTools_hasVXD()
{
  if (ImageTools_hasVXD_checked == 1)
  {
    return ImageTools_hasVXD_hasSupport;
  }

  v1 = *MEMORY[0x1E696CD60];
  v2 = IOServiceMatching("AppleVXD375");
  MatchingService = IOServiceGetMatchingService(v1, v2);
  v4 = IOServiceMatching("AppleVXD390");
  result = (MatchingService | IOServiceGetMatchingService(v1, v4)) != 0;
  ImageTools_hasVXD_hasSupport = result;
  ImageTools_hasVXD_checked = 1;
  return result;
}

void ImageTools_setIntValue(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void sub_1AE39F2C0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id getVNImageRequestHandlerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNImageRequestHandlerClass_softClass_0;
  v7 = getVNImageRequestHandlerClass_softClass_0;
  if (!getVNImageRequestHandlerClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNImageRequestHandlerClass_block_invoke_0;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNImageRequestHandlerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3A04CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getVNImageRequestHandlerClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_6)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke_6;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A1D110;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary_6 = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary_6)
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
  result = objc_getClass("VNImageRequestHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNImageRequestHandlerClass_block_invoke_cold_1();
  }

  getVNImageRequestHandlerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke_6()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_6 = result;
  return result;
}

id getVNRecognizeTextRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNRecognizeTextRequestClass_softClass;
  v7 = getVNRecognizeTextRequestClass_softClass;
  if (!getVNRecognizeTextRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNRecognizeTextRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNRecognizeTextRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3A18AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNRecognizeTextRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_7)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke_7;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A1D168;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary_7 = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary_7)
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
  result = objc_getClass("VNRecognizeTextRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNRecognizeTextRequestClass_block_invoke_cold_1();
  }

  getVNRecognizeTextRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke_7()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_7 = result;
  return result;
}

void sub_1AE3A352C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AE3A3C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AE3A52C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPHPhotoLibraryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHPhotoLibraryClass_softClass;
  v7 = getPHPhotoLibraryClass_softClass;
  if (!getPHPhotoLibraryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPHPhotoLibraryClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getPHPhotoLibraryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3A53AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE3A55F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPHImageManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHImageManagerClass_softClass;
  v7 = getPHImageManagerClass_softClass;
  if (!getPHImageManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPHImageManagerClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getPHImageManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3A56D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPHPhotoLibraryClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHPhotoLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPhotoLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPHPhotoLibraryClass_block_invoke_cold_1();
    PhotosLibrary();
  }
}

void PhotosLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PhotosLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7A1D1F8;
    v3 = 0;
    PhotosLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PhotosLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPHAssetClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  result = objc_getClass("PHAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPHAssetClass_block_invoke_cold_1();
    return __getPHImageManagerClass_block_invoke(v3);
  }

  return result;
}

Class __getPHImageManagerClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  result = objc_getClass("PHImageManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHImageManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPHImageManagerClass_block_invoke_cold_1();
    return __getPHImageRequestOptionsClass_block_invoke(v3);
  }

  return result;
}

Class __getPHImageRequestOptionsClass_block_invoke(uint64_t a1)
{
  PhotosLibrary();
  result = objc_getClass("PHImageRequestOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHImageRequestOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPHImageRequestOptionsClass_block_invoke_cold_1();
    return +[(AXMADSREnvelope *)v3];
  }

  return result;
}

id getVNDetectRectanglesRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNDetectRectanglesRequestClass_softClass;
  v7 = getVNDetectRectanglesRequestClass_softClass;
  if (!getVNDetectRectanglesRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNDetectRectanglesRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNDetectRectanglesRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3A63AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNDetectRectanglesRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_4();
  result = objc_getClass("VNDetectRectanglesRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNDetectRectanglesRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getVNDetectRectanglesRequestClass_block_invoke_cold_1();
    return VisionLibrary_4();
  }

  return result;
}

uint64_t VisionLibrary_4()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_8)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __VisionLibraryCore_block_invoke_8;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A1D228;
    v5 = 0;
    VisionLibraryCore_frameworkLibrary_8 = _sl_dlopen();
  }

  v0 = VisionLibraryCore_frameworkLibrary_8;
  v1 = v3[0];
  if (!VisionLibraryCore_frameworkLibrary_8)
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

uint64_t __VisionLibraryCore_block_invoke_8()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_8 = result;
  return result;
}

void *__getVNImageOptionCameraIntrinsicsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_4();
  result = dlsym(v2, "VNImageOptionCameraIntrinsics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNImageOptionCameraIntrinsicsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double _AXMRGBToHSB(void *a1, double *a2, double *a3, int8x16_t a4, int8x16_t a5, double a6)
{
  if (*a4.i64 < *a5.i64 || *a4.i64 < a6)
  {
    if (*a5.i64 >= *a4.i64)
    {
      v7 = *a4.i64;
    }

    else
    {
      v7 = *a5.i64;
    }

    if (*a4.i64 >= a6)
    {
      v8 = a6;
    }

    else
    {
      v8 = *a4.i64;
    }

    v9 = *a5.i64 < *a4.i64 || *a5.i64 < a6;
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = a6;
    }

    else
    {
      v11 = *a5.i64;
    }
  }

  else
  {
    if (*a5.i64 >= a6)
    {
      v10 = a6;
    }

    else
    {
      v10 = *a5.i64;
    }

    v11 = *a4.i64;
  }

  v12 = 0.0;
  if (v11 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = v11 - v10;
    v14 = (v11 - v10) / v11;
    if (v14 != 0.0)
    {
      v15 = (v11 - *a5.i64) / v13;
      v16 = (v11 - a6) / v13;
      if (v11 == *a4.i64)
      {
        if (v10 == *a5.i64)
        {
          v12 = v16 + 5.0;
        }

        else
        {
          v12 = 1.0 - v15;
        }
      }

      else
      {
        v18 = v11 == *a5.i64;
        v19 = (v11 - *a4.i64) / v13;
        if (v18)
        {
          if (v10 == a6)
          {
            v12 = v19 + 1.0;
          }

          else
          {
            v12 = 3.0 - v16;
          }
        }

        else if (v10 == *a4.i64)
        {
          v12 = v15 + 3.0;
        }

        else
        {
          v12 = 5.0 - v19;
        }
      }
    }
  }

  *a3 = v11;
  *a4.i64 = v12 / 6.0;
  *a5.i64 = v12 / 6.0 - trunc(v12 / 6.0);
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  a4.i64[0] = vbslq_s8(vnegq_f64(v17), a5, a4).u64[0];
  *a1 = a4.i64[0];
  *a2 = v14;
  return *a4.i64;
}

double *_AXMHSBToRGB(double *result, double *a2, double *a3, int8x16_t a4, double a5, double a6, int8x16_t a7)
{
  *a7.i64 = *a4.i64 - trunc(*a4.i64);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = *vbslq_s8(vnegq_f64(v7), a7, a4).i64 * 6.0;
  v9 = v8;
  v10 = v8 - v8;
  v11 = (1.0 - a5) * a6;
  v12 = (1.0 - a5 * v10) * a6;
  v13 = (1.0 - a5 * (1.0 - v10)) * a6;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        v14 = (1.0 - a5) * a6;
        v15 = a6;
        if (v9 != 2)
        {
          return result;
        }

LABEL_17:
        *result = v14;
        *a2 = v15;
        *a3 = v13;
        return result;
      }

      v14 = v12;
      v15 = a6;
    }

    else
    {
      v14 = a6;
      v15 = v13;
    }

    v13 = v11;
    goto LABEL_17;
  }

  switch(v9)
  {
    case 3:
      v14 = (1.0 - a5) * a6;
      v15 = v12;
LABEL_16:
      v13 = a6;
      goto LABEL_17;
    case 4:
      v14 = v13;
      v15 = v11;
      goto LABEL_16;
    case 5:
      v14 = a6;
      v15 = v11;
      v13 = v12;
      goto LABEL_17;
  }

  return result;
}

void sub_1AE3AA600(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 136));
  _Unwind_Resume(a1);
}

void sub_1AE3AB5FC(void *a1)
{
  __cxa_begin_catch(a1);
  v1(v2);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<CGImage *,void (*)(CGImage *),std::allocator<CGImage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2700150);
}

uint64_t std::__shared_ptr_pointer<CGImage *,void (*)(CGImage *),std::allocator<CGImage>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_1AE3AC300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id get_LTTranslatorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_LTTranslatorClass_softClass;
  v7 = get_LTTranslatorClass_softClass;
  if (!get_LTTranslatorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_LTTranslatorClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __get_LTTranslatorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3AC464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE3AD2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE3ADDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE3AE228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
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

void TranslationLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!TranslationLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __TranslationLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7A1D500;
    v3 = 0;
    TranslationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!TranslationLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __TranslationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TranslationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1AE3B1C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_1AE3B36C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void __72__iconclassification_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[iconclassification alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

id getPFSceneTaxonomyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPFSceneTaxonomyClass_softClass;
  v7 = getPFSceneTaxonomyClass_softClass;
  if (!getPFSceneTaxonomyClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPFSceneTaxonomyClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getPFSceneTaxonomyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3B6394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE3B6A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE3B70AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE3B7570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPFSceneTaxonomyClass_block_invoke(uint64_t a1)
{
  if (!PhotosFormatsLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("PFSceneTaxonomy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPFSceneTaxonomyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPFSceneTaxonomyClass_block_invoke_cold_1();
    return PhotosFormatsLibraryCore();
  }

  return result;
}

uint64_t PhotosFormatsLibraryCore()
{
  if (!PhotosFormatsLibraryCore_frameworkLibrary)
  {
    PhotosFormatsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return PhotosFormatsLibraryCore_frameworkLibrary;
}

uint64_t __PhotosFormatsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosFormatsLibraryCore_frameworkLibrary = result;
  return result;
}

id getVNVYvzEtX1JlUdu8xx5qhDIClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNVYvzEtX1JlUdu8xx5qhDIClass_softClass;
  v7 = getVNVYvzEtX1JlUdu8xx5qhDIClass_softClass;
  if (!getVNVYvzEtX1JlUdu8xx5qhDIClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNVYvzEtX1JlUdu8xx5qhDIClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNVYvzEtX1JlUdu8xx5qhDIClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3B7B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNVYvzEtX1JlUdu8xx5qhDIClass_block_invoke(uint64_t a1)
{
  VisionLibrary_5();
  result = objc_getClass("VNVYvzEtX1JlUdu8xx5qhDI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNVYvzEtX1JlUdu8xx5qhDIClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getVNVYvzEtX1JlUdu8xx5qhDIClass_block_invoke_cold_1();
    return VisionLibrary_5();
  }

  return result;
}

uint64_t VisionLibrary_5()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_9)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __VisionLibraryCore_block_invoke_9;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A1D8B8;
    v5 = 0;
    VisionLibraryCore_frameworkLibrary_9 = _sl_dlopen();
  }

  v0 = VisionLibraryCore_frameworkLibrary_9;
  v1 = v3[0];
  if (!VisionLibraryCore_frameworkLibrary_9)
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

uint64_t __VisionLibraryCore_block_invoke_9()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_9 = result;
  return result;
}

void *__getVN81aedeb999c79d74e79af7f1c922cf97SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_5();
  result = dlsym(v2, "VN81aedeb999c79d74e79af7f1c922cf97");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN81aedeb999c79d74e79af7f1c922cf97SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double AXMTransformedNormalizedFrame(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  v8 = a1 - 2;
  if ((a1 - 2) > 2)
  {
    v11 = 1.0;
    v9 = 0.0;
    v10 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    if (!a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = dbl_1AE451A50[v8];
    v10 = dbl_1AE451A68[v8];
    v11 = dbl_1AE451A80[v8];
    v12 = dbl_1AE451A98[v8];
    v13 = dbl_1AE451AB0[v8];
    if (!a2)
    {
LABEL_3:
      v14 = v11;
      goto LABEL_14;
    }
  }

  if ((a1 - 3) <= 1)
  {
    v14 = v11;
  }

  else
  {
    v14 = -v11;
  }

  if ((a1 - 3) > 1)
  {
    v9 = -v9;
  }

  else
  {
    v11 = -v11;
  }

  if ((a1 - 3) > 1)
  {
    v13 = 1.0 - v13;
  }

  else
  {
    v10 = -v10;
    v12 = 1.0 - v12;
  }

LABEL_14:
  v17 = v6;
  v18 = v7;
  v16.a = v11;
  v16.b = v9;
  v16.c = v10;
  v16.d = v14;
  v16.tx = v12;
  v16.ty = v13;
  *&result = CGRectApplyAffineTransform(*&a3, &v16);
  return result;
}

uint64_t AXMNormalizedFrameTransform@<X0>(uint64_t result@<X0>, int a2@<W1>, double *a3@<X8>)
{
  v3 = result - 2;
  if ((result - 2) > 2)
  {
    v6 = 1.0;
    v4 = 0.0;
    v5 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    if (!a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = dbl_1AE451A50[v3];
    v5 = dbl_1AE451A68[v3];
    v6 = dbl_1AE451A80[v3];
    v7 = dbl_1AE451A98[v3];
    v8 = dbl_1AE451AB0[v3];
    if (!a2)
    {
LABEL_3:
      v9 = v6;
      goto LABEL_14;
    }
  }

  if ((result - 3) <= 1)
  {
    v9 = v6;
  }

  else
  {
    v9 = -v6;
  }

  if ((result - 3) > 1)
  {
    v4 = -v4;
  }

  else
  {
    v6 = -v6;
  }

  if ((result - 3) > 1)
  {
    v8 = 1.0 - v8;
  }

  else
  {
    v5 = -v5;
    v7 = 1.0 - v7;
  }

LABEL_14:
  *a3 = v6;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = v9;
  a3[4] = v7;
  a3[5] = v8;
  return result;
}

uint64_t AXMEXIFOrientationFromInterfaceOrientation(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 1;
  }

  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if (a1 != 4)
  {
    v3 = 1;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a2)
  {
    v4 = 5;
  }

  else
  {
    v4 = 6;
  }

  if (a2)
  {
    v5 = 7;
  }

  else
  {
    v5 = 8;
  }

  if (a1 == 2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (a1 < 2)
  {
    v6 = v4;
  }

  if (a1 <= 2)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

void sub_1AE3B8844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNSequenceRequestHandlerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_10)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke_10;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A1D8D0;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary_10 = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary_10)
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
  result = objc_getClass("VNSequenceRequestHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNSequenceRequestHandlerClass_block_invoke_cold_1();
  }

  getVNSequenceRequestHandlerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke_10()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_10 = result;
  return result;
}

id getVNRecognizeObjectsRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNRecognizeObjectsRequestClass_softClass;
  v7 = getVNRecognizeObjectsRequestClass_softClass;
  if (!getVNRecognizeObjectsRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNRecognizeObjectsRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNRecognizeObjectsRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3B8C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNRecognizeObjectsRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_11)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke_11;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A1D8E8;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary_11 = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary_11)
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
  result = objc_getClass("VNRecognizeObjectsRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNRecognizeObjectsRequestClass_block_invoke_cold_1();
  }

  getVNRecognizeObjectsRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke_11()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_11 = result;
  return result;
}

void sub_1AE3B9434(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

Class ___ZL30getVNRecognizeTextRequestClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL17VisionLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A1D988;
    v6 = 0;
    VisionLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore(char **)::frameworkLibrary)
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
  result = objc_getClass("VNRecognizeTextRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNRecognizeTextRequestClass_block_invoke_cold_1();
  }

  getVNRecognizeTextRequestClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL17VisionLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  VisionLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id getVNImageRequestHandlerClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNImageRequestHandlerClass_softClass_1;
  v7 = getVNImageRequestHandlerClass_softClass_1;
  if (!getVNImageRequestHandlerClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNImageRequestHandlerClass_block_invoke_1;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNImageRequestHandlerClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3C2F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNDetectContoursRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNDetectContoursRequestClass_softClass;
  v7 = getVNDetectContoursRequestClass_softClass;
  if (!getVNDetectContoursRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNDetectContoursRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNDetectContoursRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3C3030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNRecognizeTextRequestClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNRecognizeTextRequestClass_softClass_0;
  v7 = getVNRecognizeTextRequestClass_softClass_0;
  if (!getVNRecognizeTextRequestClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNRecognizeTextRequestClass_block_invoke_0;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNRecognizeTextRequestClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3C3EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getVNImageRequestHandlerClass_block_invoke_1(uint64_t a1)
{
  VisionLibrary_6();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNImageRequestHandler");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNImageRequestHandlerClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getVNImageRequestHandlerClass_block_invoke_cold_1();
    VisionLibrary_6();
  }
}

void VisionLibrary_6()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_12)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __VisionLibraryCore_block_invoke_12;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7A1DA88;
    v3 = 0;
    VisionLibraryCore_frameworkLibrary_12 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!VisionLibraryCore_frameworkLibrary_12)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __VisionLibraryCore_block_invoke_12()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_12 = result;
  return result;
}

Class __getVNDetectContoursRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_6();
  result = objc_getClass("VNDetectContoursRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNDetectContoursRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getVNDetectContoursRequestClass_block_invoke_cold_1();
    return __getVNRecognizeTextRequestClass_block_invoke_0(v3);
  }

  return result;
}

Class __getVNRecognizeTextRequestClass_block_invoke_0(uint64_t a1)
{
  VisionLibrary_6();
  result = objc_getClass("VNRecognizeTextRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNRecognizeTextRequestClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getVNRecognizeTextRequestClass_block_invoke_cold_1();
    return OUTLINED_FUNCTION_0_6(v3, v4);
  }

  return result;
}

_BYTE *OUTLINED_FUNCTION_0_6(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

id getVNTranslationalImageRegistrationRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNTranslationalImageRegistrationRequestClass_softClass;
  v7 = getVNTranslationalImageRegistrationRequestClass_softClass;
  if (!getVNTranslationalImageRegistrationRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNTranslationalImageRegistrationRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNTranslationalImageRegistrationRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3C97E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVNImageTranslationAlignmentObservationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNImageTranslationAlignmentObservationClass_softClass;
  v7 = getVNImageTranslationAlignmentObservationClass_softClass;
  if (!getVNImageTranslationAlignmentObservationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNImageTranslationAlignmentObservationClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNImageTranslationAlignmentObservationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3C98C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getVNTranslationalImageRegistrationRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_7();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VNTranslationalImageRegistrationRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNTranslationalImageRegistrationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getVNTranslationalImageRegistrationRequestClass_block_invoke_cold_1();
    VisionLibrary_7();
  }
}

void VisionLibrary_7()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_13)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __VisionLibraryCore_block_invoke_13;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7A1DAA0;
    v3 = 0;
    VisionLibraryCore_frameworkLibrary_13 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!VisionLibraryCore_frameworkLibrary_13)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __VisionLibraryCore_block_invoke_13()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_13 = result;
  return result;
}

Class __getVNImageTranslationAlignmentObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary_7();
  result = objc_getClass("VNImageTranslationAlignmentObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVNImageTranslationAlignmentObservationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getVNImageTranslationAlignmentObservationClass_block_invoke_cold_1();
    return +[(AXMCameraMetadataNode *)v3];
  }

  return result;
}

void sub_1AE3CAF74(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE3CB174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1AE3CC8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AE3CE528(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1AE3CF5CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL AXMIsContainedBy(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v23 = CGRectIntersection(*&a1, *&a5);
  width = v23.size.width;
  height = v23.size.height;
  IsNull = CGRectIsNull(v23);
  result = 0;
  if (!IsNull && width > 0.0 && height > 0.0)
  {
    return width * height / (a7 * a8) >= a9;
  }

  return result;
}

void AXMIntersectionOverUnion(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  CGRectIntersection(*&a1, *&a5);
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  v17.origin.x = a5;
  v17.origin.y = a6;
  v17.size.width = a7;
  v17.size.height = a8;
  CGRectUnion(v16, v17);
}

double AXMDistanceBetweenCenters(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  v22 = (MinX + CGRectGetMaxX(v25)) * 0.5;
  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  v21 = CGRectGetMinX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  v23 = v22 - (v21 + CGRectGetMaxX(v27)) * 0.5;
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  MinY = CGRectGetMinY(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v17 = (MinY + CGRectGetMaxY(v29)) * 0.5;
  v30.origin.x = a5;
  v30.origin.y = a6;
  v30.size.width = a7;
  v30.size.height = a8;
  v18 = CGRectGetMinY(v30);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v31.size.height = a8;
  MaxY = CGRectGetMaxY(v31);
  return sqrt(v23 * v23 + (v17 - (v18 + MaxY) * 0.5) * (v17 - (v18 + MaxY) * 0.5));
}

void sub_1AE3DB6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE3DD14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE3DE074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getVNCreateSceneprintRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNCreateSceneprintRequestClass_softClass;
  v7 = getVNCreateSceneprintRequestClass_softClass;
  if (!getVNCreateSceneprintRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNCreateSceneprintRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNCreateSceneprintRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3DE278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNCreateSceneprintRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_14)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke_14;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A1DF00;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary_14 = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary_14)
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
  result = objc_getClass("VNCreateSceneprintRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNCreateSceneprintRequestClass_block_invoke_cold_1();
  }

  getVNCreateSceneprintRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke_14()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_14 = result;
  return result;
}

void sub_1AE3DEC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMADVIDocumentRecognitionResultClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADVIDocumentRecognitionResult");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADVIDocumentRecognitionResultClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMADVIDocumentRecognitionResultClass_block_invoke_cold_1();
    MediaAnalysisServicesLibrary();
  }
}

void MediaAnalysisServicesLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaAnalysisServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7A1DF68;
    v3 = 0;
    MediaAnalysisServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MediaAnalysisServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaAnalysisServicesLibraryCore_frameworkLibrary = result;
  return result;
}

AXMSynthOscillatorParameters *__getMADVIDocumentRecognitionRequestClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary();
  result = objc_getClass("MADVIDocumentRecognitionRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADVIDocumentRecognitionRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMADVIDocumentRecognitionRequestClass_block_invoke_cold_1();
    return [(AXMSynthOscillatorParameters *)v3 init];
  }

  return result;
}

void sub_1AE3E0080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1AE3E09AC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v2);
  }
}

void sub_1AE3E28C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak((v29 + 56));
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);

  _Block_object_dispose((v30 - 104), 8);
  objc_destroyWeak((v30 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AE3E2E44(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1AE3E3F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = AXMediaLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 description];
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v11;
      _os_log_impl(&dword_1AE37B000, v10, OS_LOG_TYPE_DEFAULT, "Audio player node failed to play: %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1AE3E3F58);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE3E5FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<BOOL>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AE3EEC8C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t UIAccessibilityIsImageScreenshot(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = CGImageSourceCreateWithURL(v1, 0)) != 0)
  {
    v4 = v3;
    v5 = CGImageSourceCopyPropertiesAtIndex(v3, 0, 0);
    v6 = [(__CFDictionary *)v5 objectForKey:*MEMORY[0x1E696DEB0]];

    v7 = [(__CFDictionary *)v5 objectForKey:*MEMORY[0x1E696DEC8]];
    v8 = [v7 intValue];

    v9 = [(__CFDictionary *)v5 objectForKey:*MEMORY[0x1E696DED8]];
    v10 = [v9 intValue];

    v11 = [getUIScreenClass() mainScreen];
    [v11 bounds];
    v13 = v12;
    v15 = v14;

    v16 = [getUIScreenClass() mainScreen];
    [v16 scale];
    v18 = v17;

    if (v6)
    {
      v19 = v18;
      v20 = v19;
      v21 = (v15 * v20);
      v22 = (v13 * v20);
      v6 = v8 == v21 && v10 == v22 || v8 == v22 && v10 == v21;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id getUIScreenClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIScreenClass_softClass;
  v7 = getUIScreenClass_softClass;
  if (!getUIScreenClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getUIScreenClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getUIScreenClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE3F099C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *UIAccessibilityMetadataDescriptionForVideo(uint64_t a1)
{
  v1 = [MEMORY[0x1E6987E28] assetWithURL:a1];
  v2 = [v1 commonMetadata];
  v3 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:v2 withKey:*MEMORY[0x1E6987690] keySpace:*MEMORY[0x1E6987838]];
  v4 = [v3 firstObject];
  v5 = [v4 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

void _removeMetadataDescriptionItems(void *a1)
{
  v4 = a1;
  v1 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:? withKey:? keySpace:?];
  if ([v1 count])
  {
    v2 = 0;
    do
    {
      v3 = [v1 objectAtIndexedSubscript:v2];
      [v4 removeObject:v3];

      ++v2;
    }

    while ([v1 count] > v2);
  }
}

uint64_t UIAccessibilityAddMetadataDescriptionToVideo(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x1E6987E28];
  v5 = a2;
  v6 = [v4 assetWithURL:v3];
  v7 = [MEMORY[0x1E6987E60] exportSessionWithAsset:v6 presetName:*MEMORY[0x1E6987338]];
  v8 = [v7 supportedFileTypes];
  v9 = [v8 firstObject];
  [v7 setOutputFileType:v9];

  v10 = [v3 absoluteString];
  v11 = [v10 stringByDeletingPathExtension];
  v12 = [v11 stringByAppendingString:@"axout-tmp"];
  v13 = [v12 stringByAppendingPathExtension:@"MOV"];

  v14 = [MEMORY[0x1E695DFF8] URLWithString:v13];
  [v7 setOutputURL:v14];
  v15 = [v6 metadata];
  v16 = [v15 mutableCopy];

  if (!v16)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  _removeMetadataDescriptionItems(v16);
  v17 = [MEMORY[0x1E6988050] metadataItem];
  [v17 setKeySpace:*MEMORY[0x1E6987838]];
  [v17 setKey:*MEMORY[0x1E6987690]];
  [v17 setValue:v5];

  v18 = [MEMORY[0x1E695DF58] currentLocale];
  [v17 setLocale:v18];

  [v16 addObject:v17];
  [v7 setMetadata:v16];
  v19 = dispatch_semaphore_create(0);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __UIAccessibilityAddMetadataDescriptionToVideo_block_invoke;
  v58[3] = &unk_1E7A1CB30;
  v20 = v7;
  v59 = v20;
  v60 = v19;
  v21 = v19;
  [v20 exportAsynchronouslyWithCompletionHandler:v58];
  v22 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v21, v22);

  if ([v20 status] != 3)
  {
    v35 = 0;
    goto LABEL_11;
  }

  v54 = v13;
  v23 = [v3 absoluteString];
  v24 = [v23 stringByAppendingString:@"-axtmp"];

  v53 = v24;
  v25 = [MEMORY[0x1E695DFF8] URLWithString:v24];
  v26 = [MEMORY[0x1E696AC08] defaultManager];
  v57 = 0;
  [v26 moveItemAtURL:v3 toURL:v25 error:&v57];
  v27 = v57;

  if (v27)
  {
    v28 = AXMediaLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      UIAccessibilityAddMetadataDescriptionToVideo_cold_1(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    v37 = [MEMORY[0x1E696AC08] defaultManager];
    v56 = 0;
    [v37 moveItemAtURL:v14 toURL:v3 error:&v56];
    v38 = v56;

    if (!v38)
    {
      v27 = [MEMORY[0x1E696AC08] defaultManager];
      [v27 removeItemAtURL:v25 error:0];
      v35 = 1;
      goto LABEL_8;
    }

    v39 = AXMediaLogCommon();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      UIAccessibilityAddMetadataDescriptionToVideo_cold_2(v38, v39, v40, v41, v42, v43, v44, v45);
    }

    v46 = [MEMORY[0x1E696AC08] defaultManager];
    v55 = v38;
    [v46 moveItemAtURL:v25 toURL:v3 error:&v55];
    v27 = v55;

    if (!v27)
    {
      v35 = 0;
      goto LABEL_9;
    }

    v28 = AXMediaLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      UIAccessibilityAddMetadataDescriptionToVideo_cold_3(v27, v28, v47, v48, v49, v50, v51, v52);
    }
  }

  v35 = 0;
LABEL_8:

LABEL_9:
  v13 = v54;
LABEL_11:

  return v35;
}

intptr_t __UIAccessibilityAddMetadataDescriptionToVideo_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = AXMediaLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) status];
    v4 = [*(a1 + 32) error];
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1AE37B000, v2, OS_LOG_TYPE_INFO, "AX: Export Session status: %ld %@", &v6, 0x16u);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

id UIAccessibilityPhotoCreationDate(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = CGImageSourceCreateWithURL(v1, 0)) != 0)
  {
    v4 = v3;
    v5 = CGImageSourceCopyPropertiesAtIndex(v3, 0, 0);
    CFRelease(v4);
    v6 = [(__CFDictionary *)v5 objectForKey:*MEMORY[0x1E696DF28]];
    v7 = [v6 objectForKey:*MEMORY[0x1E696DF20]];
    if ([v7 length])
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v8 setDateFormat:@"yyyy:MM:dd HH:mm:ss"];
      v9 = [v8 dateFromString:v7];
      v10 = [MEMORY[0x1E695DEE8] currentCalendar];
      v11 = [v10 components:28 fromDate:v9];

      v12 = [MEMORY[0x1E695DEE8] currentCalendar];
      v13 = [MEMORY[0x1E695DF00] date];
      v14 = [v12 components:28 fromDate:v13];

      v15 = [v11 year];
      if (v15 == [v14 year])
      {
        v16 = [v11 month];
        v17 = @"MMMMddjjmm";
        if (v16 == [v14 month])
        {
          v18 = [v11 day];
          if (v18 == [v14 day])
          {
            v17 = @"jjmm";
          }
        }
      }

      else
      {
        v17 = @"MMMMddyyyyjjmm";
      }

      v19 = AXMDateStringForFormat(v9, v17);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

__CFString *UIAccessibilityMetadataDescriptionForImage(void *a1)
{
  v1 = a1;
  error = 0;
  v2 = MAImageCaptioningCopyCaption(v1, &error);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    if (error)
    {
      v5 = AXLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        UIAccessibilityMetadataDescriptionForImage_cold_1(&error, v5, v6, v7, v8, v9, v10, v11);
      }

      if (error)
      {
        CFRelease(error);
        error = 0;
      }
    }

    if (v1 && (v12 = CGImageSourceCreateWithURL(v1, 0)) != 0)
    {
      v13 = v12;
      v14 = CGImageSourceCopyPropertiesAtIndex(v12, 0, 0);
      v15 = [(__CFDictionary *)v14 objectForKey:*MEMORY[0x1E696DF28]];
      v4 = [v15 objectForKey:*MEMORY[0x1E696DF40]];
      if (!v4)
      {
        v16 = [(__CFDictionary *)v14 objectForKey:*MEMORY[0x1E696DD90]];
        v4 = [v16 objectForKey:*MEMORY[0x1E696DD68]];
      }

      CFRelease(v13);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

BOOL UIAccessibilityAddMetadataDescriptionToImage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    goto LABEL_16;
  }

  error = 0;
  if (MAImageCaptioningSetCaption(v3, v4, &error))
  {
    v5 = 1;
    goto LABEL_19;
  }

  v6 = AXLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    UIAccessibilityAddMetadataDescriptionToImage_cold_1(&error, v6, v7, v8, v9, v10, v11, v12);
  }

  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  v13 = CGImageSourceCreateWithURL(v3, 0);
  if (!v13)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_19;
  }

  v14 = v13;
  v15 = CGImageSourceCopyPropertiesAtIndex(v13, 0, 0);
  v16 = [(__CFDictionary *)v15 mutableCopy];

  v17 = [v16 objectForKey:*MEMORY[0x1E696D9B0]];
  v18 = [v17 mutableCopy];

  if (v18 && (v19 = *MEMORY[0x1E696DF40], [v18 setObject:v4 forKey:*MEMORY[0x1E696DF40]], v20 = *MEMORY[0x1E696DF28], objc_msgSend(v16, "setObject:forKey:", v18, *MEMORY[0x1E696DF28]), Type = CGImageSourceGetType(v14), (v22 = CGImageDestinationCreateWithURL(v3, Type, 1uLL, 0)) != 0))
  {
    v23 = v22;
    Mutable = CGImageMetadataCreateMutable();
    CGImageMetadataSetValueMatchingImageProperty(Mutable, v20, v19, v4);
    CGImageMetadataSetValueMatchingImageProperty(Mutable, *MEMORY[0x1E696DD90], *MEMORY[0x1E696DD68], v4);
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{Mutable, *MEMORY[0x1E696D348], *MEMORY[0x1E695E4D0], *MEMORY[0x1E696D340], 0}];
    err = 0;
    v5 = CGImageDestinationCopyImageSource(v23, v14, v25, &err);
    if (err)
    {
      CFRelease(err);
      err = 0;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    CFRelease(v23);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v14);

LABEL_19:
  return v5;
}

id UIAXPhotoDescriptionString(CGImage *a1, unint64_t a2)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v4 = getUIAccessibilityIsVoiceOverRunningSymbolLoc_ptr;
  v46 = getUIAccessibilityIsVoiceOverRunningSymbolLoc_ptr;
  if (!getUIAccessibilityIsVoiceOverRunningSymbolLoc_ptr)
  {
    *&transform.a = MEMORY[0x1E69E9820];
    *&transform.b = 3221225472;
    *&transform.c = __getUIAccessibilityIsVoiceOverRunningSymbolLoc_block_invoke;
    *&transform.d = &unk_1E7A1C700;
    *&transform.tx = &v43;
    v5 = UIKitLibrary();
    v44[3] = dlsym(v5, "UIAccessibilityIsVoiceOverRunning");
    getUIAccessibilityIsVoiceOverRunningSymbolLoc_ptr = *(*(*&transform.tx + 8) + 24);
    v4 = v44[3];
  }

  _Block_object_dispose(&v43, 8);
  if (v4)
  {
    if (v4())
    {
      if (UIAXPhotoDescriptionString_onceToken == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_23;
  }

  __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
LABEL_27:
  UIAXPhotoDescriptionString_cold_1();
LABEL_7:
  v6 = objc_autoreleasePoolPush();
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if (CGImageGetWidth(a1) <= 0x190)
  {
    v9 = CGImageGetWidth(a1);
  }

  else
  {
    v9 = 400.0;
  }

  v11 = v9 * Height / Width;
  v12 = 0;
  v13 = 0;
  v48 = CGRectIntegral(*(&v9 - 2));
  x = v48.origin.x;
  y = v48.origin.y;
  v16 = v48.size.width;
  v17 = v48.size.height;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v18 = getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr;
  v46 = getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr;
  if (!getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr)
  {
    *&transform.a = MEMORY[0x1E69E9820];
    *&transform.b = 3221225472;
    *&transform.c = __getUIGraphicsBeginImageContextWithOptionsSymbolLoc_block_invoke;
    *&transform.d = &unk_1E7A1C700;
    *&transform.tx = &v43;
    v19 = UIKitLibrary();
    v44[3] = dlsym(v19, "UIGraphicsBeginImageContextWithOptions");
    getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr = *(*(*&transform.tx + 8) + 24);
    v18 = v44[3];
  }

  _Block_object_dispose(&v43, 8);
  if (!v18)
  {
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
LABEL_29:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    goto LABEL_30;
  }

  v18(0, v16, v17, 0.0);
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v20 = getUIGraphicsGetCurrentContextSymbolLoc_ptr;
  v46 = getUIGraphicsGetCurrentContextSymbolLoc_ptr;
  if (!getUIGraphicsGetCurrentContextSymbolLoc_ptr)
  {
    *&transform.a = MEMORY[0x1E69E9820];
    *&transform.b = 3221225472;
    *&transform.c = __getUIGraphicsGetCurrentContextSymbolLoc_block_invoke;
    *&transform.d = &unk_1E7A1C700;
    *&transform.tx = &v43;
    v21 = UIKitLibrary();
    v44[3] = dlsym(v21, "UIGraphicsGetCurrentContext");
    getUIGraphicsGetCurrentContextSymbolLoc_ptr = *(*(*&transform.tx + 8) + 24);
    v20 = v44[3];
  }

  _Block_object_dispose(&v43, 8);
  if (!v20)
  {
    goto LABEL_29;
  }

  v22 = v20();
  CGContextSetInterpolationQuality(v22, kCGInterpolationHigh);
  transform.b = 0.0;
  transform.c = 0.0;
  transform.a = 1.0;
  *&transform.d = xmmword_1AE451DE0;
  transform.ty = v17;
  CGContextConcatCTM(v22, &transform);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = v16;
  v49.size.height = v17;
  CGContextDrawImage(v22, v49, a1);
  Image = CGBitmapContextCreateImage(v22);
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v24 = getUIGraphicsEndImageContextSymbolLoc_ptr;
  v46 = getUIGraphicsEndImageContextSymbolLoc_ptr;
  if (!getUIGraphicsEndImageContextSymbolLoc_ptr)
  {
    *&transform.a = MEMORY[0x1E69E9820];
    *&transform.b = 3221225472;
    *&transform.c = __getUIGraphicsEndImageContextSymbolLoc_block_invoke;
    *&transform.d = &unk_1E7A1C700;
    *&transform.tx = &v43;
    v25 = UIKitLibrary();
    v26 = dlsym(v25, "UIGraphicsEndImageContext");
    *(*(*&transform.tx + 8) + 24) = v26;
    getUIGraphicsEndImageContextSymbolLoc_ptr = *(*(*&transform.tx + 8) + 24);
    v24 = v44[3];
  }

  _Block_object_dispose(&v43, 8);
  if (!v24)
  {
LABEL_30:
    v41 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v43, 8);
    _Unwind_Resume(v41);
  }

  v24();
  objc_autoreleasePoolPop(v6);
  if (Image)
  {
    CFAutorelease(Image);
  }

  v27 = [NSClassFromString(&cfstr_Scrcphotoevalu.isa) sharedInstance];
  v28 = [v27 evaluateImage:Image forCriteria:a2 & 2 | (16 * ((a2 >> 2) & 1)) inRect:{x, y, v16, v17}];
  v29 = [v28 blurResult];
  v30 = [v28 luminanceResult];
  v31 = [v29 humanReadableResult];
  v32 = [v30 humanReadableResult];
  v10 = __AXMStringForVariables(v31, v33, v34, v35, v36, v37, v38, v39, v32);

LABEL_23:

  return v10;
}

void __UIAXPhotoDescriptionString_block_invoke()
{
  v1 = [MEMORY[0x1B27000A0]() stringByAppendingPathComponent:@"/System/Library/PrivateFrameworks/ScreenReaderCore.framework"];
  v0 = [MEMORY[0x1E696AAE8] bundleWithPath:v1];
  [v0 load];
}

id UIAXFileTypeDescriptionForFile(void *a1)
{
  v1 = [a1 pathExtension];
  v2 = [v1 lowercaseString];
  v3 = UIAXFileTypeDescriptionForFileExtension(v2);

  return v3;
}

id UIAXFileTypeDescriptionForFileExtension(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], v1, 0);
    v3 = UIAXFileTypeDescriptionForUTI(PreferredIdentifierForTag);
    v4 = v3;
    if (v3)
    {
      v5 = v3;
LABEL_15:

      goto LABEL_20;
    }

    if ([(__CFString *)v1 isEqualToString:@"usdz"])
    {
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
      v7 = v6;
      v8 = @"filetype.3D.model";
LABEL_14:
      v5 = [v6 localizedStringForKey:v8 value:&stru_1F23EA908 table:@"Accessibility"];

      goto LABEL_15;
    }

    if ([(__CFString *)v1 isEqualToString:@"numbers"])
    {
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
      v7 = v6;
      v8 = @"filetype.number";
      goto LABEL_14;
    }

    if ([(__CFString *)v1 isEqualToString:@"pages"])
    {
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
      v7 = v6;
      v8 = @"filetype.pages";
      goto LABEL_14;
    }

    if ([(__CFString *)v1 isEqualToString:@"key"])
    {
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
      v7 = v6;
      v8 = @"filetype.keynote";
      goto LABEL_14;
    }

    if ([(__CFString *)v1 isEqualToString:@"rtfd"])
    {
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
      v7 = v6;
      v8 = @"filetype.rtf.document";
      goto LABEL_14;
    }

    v9 = AXMediaLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = PreferredIdentifierForTag;
      v13 = 2112;
      v14 = v1;
      _os_log_impl(&dword_1AE37B000, v9, OS_LOG_TYPE_INFO, "unknown file type: UTI: %@, extension: %@", &v11, 0x16u);
    }
  }

  PreferredIdentifierForTag = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v5 = [PreferredIdentifierForTag localizedStringForKey:@"filetype.unknown" value:&stru_1F23EA908 table:@"Accessibility"];
LABEL_20:

  return v5;
}

id UIAXFileTypeDescriptionForUTI(void *a1)
{
  v90[39] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!ContentTypeMap)
  {
    v89[0] = @"image/png";
    v87 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v86 = [v87 localizedStringForKey:@"filetype.image" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[0] = v86;
    v89[1] = @"image/bmp";
    v85 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v84 = [v85 localizedStringForKey:@"filetype.image" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[1] = v84;
    v89[2] = @"image/jpeg";
    v83 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v82 = [v83 localizedStringForKey:@"filetype.image" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[2] = v82;
    v89[3] = @"image/vnd.adobe.photoshop";
    v81 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v80 = [v81 localizedStringForKey:@"filetype.psd" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[3] = v80;
    v89[4] = @"image/tiff";
    v79 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v78 = [v79 localizedStringForKey:@"filetype.tiff" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[4] = v78;
    v89[5] = @"image/svg+xml";
    v77 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v76 = [v77 localizedStringForKey:@"filetype.svg" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[5] = v76;
    v89[6] = @"image/gif";
    v75 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v74 = [v75 localizedStringForKey:@"filetype.gif" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[6] = v74;
    v89[7] = @"text/css";
    v73 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v72 = [v73 localizedStringForKey:@"filetype.css.file" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[7] = v72;
    v89[8] = @"text/csv";
    v71 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v70 = [v71 localizedStringForKey:@"filetype.csv.file" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[8] = v70;
    v89[9] = @"text/html";
    v69 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v68 = [v69 localizedStringForKey:@"filetype.html.file" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[9] = v68;
    v89[10] = @"text/calendar";
    v67 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v66 = [v67 localizedStringForKey:@"filetype.calendar.event" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[10] = v66;
    v89[11] = @"text/plain";
    v65 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v64 = [v65 localizedStringForKey:@"filetype.text.file" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[11] = v64;
    v89[12] = @"text/rtf";
    v63 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v62 = [v63 localizedStringForKey:@"filetype.rtf.document" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[12] = v62;
    v89[13] = @"text/directory";
    v61 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v60 = [v61 localizedStringForKey:@"filetype.contact.card" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[13] = v60;
    v89[14] = @"application/pdf";
    v59 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v58 = [v59 localizedStringForKey:@"filetype.pdf" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[14] = v58;
    v89[15] = @"application/x-latex";
    v57 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v56 = [v57 localizedStringForKey:@"filetype.latex" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[15] = v56;
    v89[16] = @"application/json";
    v55 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v54 = [v55 localizedStringForKey:@"filetype.json" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[16] = v54;
    v89[17] = @"application/vnd.ms-excel";
    v53 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v52 = [v53 localizedStringForKey:@"filetype.excel" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[17] = v52;
    v89[18] = @"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
    v51 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v50 = [v51 localizedStringForKey:@"filetype.excel" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[18] = v50;
    v89[19] = @"application/onenote";
    v49 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v48 = [v49 localizedStringForKey:@"filetype.onenote" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[19] = v48;
    v89[20] = @"application/vnd.ms-powerpoint";
    v47 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v46 = [v47 localizedStringForKey:@"filetype.powerpoint" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[20] = v46;
    v89[21] = @"application/vnd.openxmlformats-officedocument.presentationml.presentation";
    v45 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v44 = [v45 localizedStringForKey:@"filetype.powerpoint" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[21] = v44;
    v89[22] = @"application/msword";
    v43 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v42 = [v43 localizedStringForKey:@"filetype.word" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[22] = v42;
    v89[23] = @"application/vnd.openxmlformats-officedocument.wordprocessingml.document";
    v41 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v40 = [v41 localizedStringForKey:@"filetype.word" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[23] = v40;
    v89[24] = @"application/postscript";
    v39 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v38 = [v39 localizedStringForKey:@"filetype.postscript" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[24] = v38;
    v89[25] = @"application/rtf";
    v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v36 = [v37 localizedStringForKey:@"filetype.rtf.document" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[25] = v36;
    v89[26] = @"application/xml";
    v35 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v34 = [v35 localizedStringForKey:@"filetype.xml" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[26] = v34;
    v89[27] = @"application/rss+xml";
    v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v32 = [v33 localizedStringForKey:@"filetype.rss" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[27] = v32;
    v89[28] = @"application/zip";
    v31 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v30 = [v31 localizedStringForKey:@"filetype.zip" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[28] = v30;
    v89[29] = @"application/x-rar-compressed";
    v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v28 = [v29 localizedStringForKey:@"filetype.rar" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[29] = v28;
    v89[30] = @"application/x-tar";
    v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v26 = [v27 localizedStringForKey:@"filetype.tar" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[30] = v26;
    v89[31] = @"application/epub+zip";
    v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v24 = [v25 localizedStringForKey:@"filetype.epub" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[31] = v24;
    v89[32] = @"audio/mp4";
    v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v22 = [v23 localizedStringForKey:@"filetype.audio" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[32] = v22;
    v89[33] = @"audio/x-wav";
    v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v20 = [v21 localizedStringForKey:@"filetype.audio" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[33] = v20;
    v89[34] = @"audio/x-m4a";
    v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v18 = [v19 localizedStringForKey:@"filetype.audio" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[34] = v18;
    v89[35] = @"video/quicktime";
    v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v2 = [v17 localizedStringForKey:@"filetype.video" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[35] = v2;
    v89[36] = @"video/mp4";
    [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v3 = v88 = v1;
    v4 = [v3 localizedStringForKey:@"filetype.video" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[36] = v4;
    v89[37] = @"video/mpeg";
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v6 = [v5 localizedStringForKey:@"filetype.video" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[37] = v6;
    v89[38] = @"video/x-m4v";
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v8 = [v7 localizedStringForKey:@"filetype.video" value:&stru_1F23EA908 table:@"Accessibility"];
    v90[38] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:39];
    v10 = ContentTypeMap;
    ContentTypeMap = v9;

    v1 = v88;
  }

  v11 = UTTypeCopyPreferredTagWithClass(v1, *MEMORY[0x1E6982C50]);
  v12 = [ContentTypeMap objectForKeyedSubscript:v11];
  if (![v12 length])
  {
    if (([(__CFString *)v11 hasPrefix:@"audio/"]& 1) != 0 || ([(__CFString *)v1 isEqualToString:@"com.apple.coreaudio-format"]& 1) != 0)
    {
      v13 = @"filetype.audio";
LABEL_7:
      v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
      v15 = [v14 localizedStringForKey:v13 value:&stru_1F23EA908 table:@"Accessibility"];

      v12 = v15;
      goto LABEL_8;
    }

    if ([(__CFString *)v11 hasPrefix:@"video/"])
    {
      v13 = @"filetype.video";
      goto LABEL_7;
    }
  }

LABEL_8:

  return v12;
}

__CFString *_heartLocSuffixForSuffix(uint64_t a1)
{
  v1 = [&unk_1F240B608 objectForKey:a1];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = &stru_1F23EA908;
  }

  v4 = v3;

  return v3;
}

__CFString *_handLocSuffixForSuffix(uint64_t a1)
{
  v1 = [&unk_1F240B630 objectForKey:a1];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = &stru_1F23EA908;
  }

  v4 = v3;

  return v3;
}

__CFString *_eyesLocSuffixForSuffix(void *a1)
{
  v1 = _eyesLocSuffixForSuffix_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _eyesLocSuffixForSuffix_cold_1();
  }

  v3 = [v2 integerValue];

  v4 = _eyesLocSuffixForSuffix_emojiDescriptions;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v6 = [v4 objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1F23EA908;
  }

  v9 = v8;

  return v8;
}

void ___eyesLocSuffixForSuffix_block_invoke()
{
  v3[58] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F240AA68;
  v2[1] = &unk_1F240AA80;
  v3[0] = @".face.eyes.open";
  v3[1] = @".face.eyes.one.eye.closed";
  v2[2] = &unk_1F240AA98;
  v2[3] = &unk_1F240AAB0;
  v3[2] = @".face.eyes.open";
  v3[3] = @".face.eyes.open";
  v2[4] = &unk_1F240AAC8;
  v2[5] = &unk_1F240AAE0;
  v3[4] = @".face.eyes.one.eye.closed";
  v3[5] = @".face.eyes.one.eye.closed";
  v2[6] = &unk_1F240AAF8;
  v2[7] = &unk_1F240AB10;
  v3[6] = @".face.eyes.open";
  v3[7] = @".face.eyes.hearts";
  v2[8] = &unk_1F240AB28;
  v2[9] = &unk_1F240AB40;
  v3[8] = @".face.eyes.hearts";
  v3[9] = @".eyes.hearts";
  v2[10] = &unk_1F240AB58;
  v2[11] = &unk_1F240AB70;
  v3[10] = @".eyes.one.eye.closed";
  v3[11] = @".sunglasses";
  v2[12] = &unk_1F240AB88;
  v2[13] = &unk_1F240ABA0;
  v3[12] = @".aviator.sunglasses";
  v3[13] = @".cat.eye.sunglasses";
  v2[14] = &unk_1F240ABB8;
  v2[15] = &unk_1F240ABD0;
  v3[14] = @".eyes.furled";
  v3[15] = @".eyes.furled";
  v2[16] = &unk_1F240ABE8;
  v2[17] = &unk_1F240AC00;
  v3[16] = @".eyes.furled";
  v3[17] = @".eyes.crying";
  v2[18] = &unk_1F240AC18;
  v2[19] = &unk_1F240AC30;
  v3[18] = @".eyes.crying";
  v3[19] = @".eyes.crying";
  v2[20] = &unk_1F240AC48;
  v2[21] = &unk_1F240AC60;
  v3[20] = @".eyes.open";
  v3[21] = @".eyes.furled";
  v2[22] = &unk_1F240AC78;
  v2[23] = &unk_1F240AC90;
  v3[22] = @".eyes.furled";
  v3[23] = @".eyes.furled";
  v2[24] = &unk_1F240ACA8;
  v2[25] = &unk_1F240ACC0;
  v3[24] = @".eyes.furled";
  v3[25] = @".eyes.wide.open";
  v2[26] = &unk_1F240ACD8;
  v2[27] = &unk_1F240ACF0;
  v3[26] = @".eyes.one.eye.closed";
  v3[27] = @".eyes.open";
  v2[28] = &unk_1F240AD08;
  v2[29] = &unk_1F240AD20;
  v3[28] = @".eyes.furled";
  v3[29] = @".eyes.open";
  v2[30] = &unk_1F240AD38;
  v2[31] = &unk_1F240AD50;
  v3[30] = @".eyes.crying";
  v3[31] = @".eyes.closed";
  v2[32] = &unk_1F240AD68;
  v2[33] = &unk_1F240AD80;
  v3[32] = @".eyes.closed";
  v3[33] = @".eyes.crying";
  v2[34] = &unk_1F240AD98;
  v2[35] = &unk_1F240ADB0;
  v3[34] = @".eyes.black.hearts";
  v3[35] = @".eyes.black.hearts";
  v2[36] = &unk_1F240ADC8;
  v2[37] = &unk_1F240ADE0;
  v3[36] = @".eyes.black.hearts";
  v3[37] = @".eyes.crying";
  v2[38] = &unk_1F240ADF8;
  v2[39] = &unk_1F240AE10;
  v3[38] = @".eyes.crying";
  v3[39] = @".eyes.open";
  v2[40] = &unk_1F240AE28;
  v2[41] = &unk_1F240AE40;
  v3[40] = @".eyes.open";
  v3[41] = @".eyes.open";
  v2[42] = &unk_1F240AE58;
  v2[43] = &unk_1F240AE70;
  v3[42] = @".eyes.open";
  v3[43] = @".eyes.crosses";
  v2[44] = &unk_1F240AE88;
  v2[45] = &unk_1F240AEA0;
  v3[44] = @".eyes.bandages";
  v3[45] = @".eyes.half.closed";
  v2[46] = &unk_1F240AEB8;
  v2[47] = &unk_1F240AED0;
  v3[46] = @".eyes.closed";
  v3[47] = @".eyes.half.closed";
  v2[48] = &unk_1F240AEE8;
  v2[49] = &unk_1F240AF00;
  v3[48] = @".eyes.closed";
  v3[49] = @".eyes.closed";
  v2[50] = &unk_1F240AF18;
  v2[51] = &unk_1F240AF30;
  v3[50] = @".eyes.closed";
  v3[51] = @".eyes.closed";
  v2[52] = &unk_1F240AF48;
  v2[53] = &unk_1F240AF60;
  v3[52] = @".eyes.half.closed";
  v3[53] = @".eyes.half.closed";
  v2[54] = &unk_1F240AF78;
  v2[55] = &unk_1F240AF90;
  v3[54] = @".eyes.open";
  v3[55] = @".eyes.half.closed.one";
  v2[56] = &unk_1F240AFA8;
  v2[57] = &unk_1F240AFC0;
  v3[56] = @".eyes.tearing.up";
  v3[57] = @".eyes.open";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:58];
  v1 = _eyesLocSuffixForSuffix_emojiDescriptions;
  _eyesLocSuffixForSuffix_emojiDescriptions = v0;
}

__CFString *_mouthLocSuffixForSuffix(void *a1)
{
  v1 = _mouthLocSuffixForSuffix_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _mouthLocSuffixForSuffix_cold_1();
  }

  v3 = [v2 integerValue];

  v4 = _mouthLocSuffixForSuffix_emojiDescriptions;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v6 = [v4 objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1F23EA908;
  }

  v9 = v8;

  return v8;
}

void ___mouthLocSuffixForSuffix_block_invoke()
{
  v3[58] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F240AA68;
  v2[1] = &unk_1F240AA80;
  v3[0] = @".mouth.smiling";
  v3[1] = @".mouth.smiling";
  v2[2] = &unk_1F240AA98;
  v2[3] = &unk_1F240AAB0;
  v3[2] = @".mouth.smiling.half.open";
  v3[3] = @".mouth.smiling.wide";
  v2[4] = &unk_1F240AAC8;
  v2[5] = &unk_1F240AAE0;
  v3[4] = @".mouth.smiling.wide";
  v3[5] = @".mouth.tongue";
  v2[6] = &unk_1F240AAF8;
  v2[7] = &unk_1F240AB10;
  v3[6] = @".mouth.tongue";
  v3[7] = @".mouth.tongue";
  v2[8] = &unk_1F240AB28;
  v2[9] = &unk_1F240AB40;
  v3[8] = @".mouth.smiling.wide";
  v3[9] = @".mouth.smiling";
  v2[10] = &unk_1F240AB58;
  v2[11] = &unk_1F240AB70;
  v3[10] = @".mouth.blowing.kiss";
  v3[11] = @".mouth.smirking";
  v2[12] = &unk_1F240AB88;
  v2[13] = &unk_1F240ABA0;
  v3[12] = @".mouth.smirking";
  v3[13] = @".mouth.smirking";
  v2[14] = &unk_1F240ABB8;
  v2[15] = &unk_1F240ABD0;
  v3[14] = @".mouth.smiling";
  v3[15] = @".mouth.smiling.wide";
  v2[16] = &unk_1F240ABE8;
  v2[17] = &unk_1F240AC00;
  v3[16] = @".mouth.tongue";
  v3[17] = @".mouth.tongue";
  v2[18] = &unk_1F240AC18;
  v2[19] = &unk_1F240AC30;
  v3[18] = @".mouth.smiling.wide";
  v3[19] = @".mouth.smiling";
  v2[20] = &unk_1F240AC48;
  v2[21] = &unk_1F240AC60;
  v3[20] = @".mouth.half.frowning";
  v3[21] = @".mouth.half.frowning";
  v2[22] = &unk_1F240AC78;
  v2[23] = &unk_1F240AC90;
  v3[22] = @".mouth.frowning";
  v3[23] = @".mouth.frowning";
  v2[24] = &unk_1F240ACA8;
  v2[25] = &unk_1F240ACC0;
  v3[24] = @".mouth.frowning";
  v3[25] = @".mouth.gasping";
  v2[26] = &unk_1F240ACD8;
  v2[27] = &unk_1F240ACF0;
  v3[26] = @".mouth.gasping";
  v3[27] = @".mouth.gasping";
  v2[28] = &unk_1F240AD08;
  v2[29] = &unk_1F240AD20;
  v3[28] = @".mouth.gasping";
  v3[29] = @".mouth.screaming";
  v2[30] = &unk_1F240AD38;
  v2[31] = &unk_1F240AD50;
  v3[30] = @".mouth.screaming";
  v3[31] = @".mouth.screaming";
  v2[32] = &unk_1F240AD68;
  v2[33] = &unk_1F240AD80;
  v3[32] = @".mouth.gasping";
  v3[33] = @".mouth.gasping";
  v2[34] = &unk_1F240AD98;
  v2[35] = &unk_1F240ADB0;
  v3[34] = @".mouth.gasping";
  v3[35] = @".mouth.frowning";
  v2[36] = &unk_1F240ADC8;
  v2[37] = &unk_1F240ADE0;
  v3[36] = @".mouth.half.frowning";
  v3[37] = @".mouth.half.frowning";
  v2[38] = &unk_1F240ADF8;
  v2[39] = &unk_1F240AE10;
  v3[38] = @".mouth.frowning";
  v3[39] = @".mouth.frowning";
  v2[40] = &unk_1F240AE28;
  v2[41] = &unk_1F240AE40;
  v3[40] = @".mouth.frowning";
  v3[41] = @".mouth.thermometer";
  v2[42] = &unk_1F240AE58;
  v2[43] = &unk_1F240AE70;
  v3[42] = @".mouth.surgical.mask";
  v3[43] = @".mouth.half.frowning";
  v2[44] = &unk_1F240AE88;
  v2[45] = &unk_1F240AEA0;
  v3[44] = @".mouth.half.frowning";
  v3[45] = @".mouth.half.frowning";
  v2[46] = &unk_1F240AEB8;
  v2[47] = &unk_1F240AED0;
  v3[46] = @".mouth.half.frowning";
  v3[47] = @".mouth.frowning";
  v2[48] = &unk_1F240AEE8;
  v2[49] = &unk_1F240AF00;
  v3[48] = @".mouth.frowning";
  v3[49] = @".mouth.smiling";
  v2[50] = &unk_1F240AF18;
  v2[51] = &unk_1F240AF30;
  v3[50] = @".mouth.smiling.wide";
  v3[51] = @".mouth.tongue";
  v2[52] = &unk_1F240AF48;
  v2[53] = &unk_1F240AF60;
  v3[52] = @".mouth.tongue";
  v3[53] = @".mouth.smiling";
  v2[54] = &unk_1F240AF78;
  v2[55] = &unk_1F240AF90;
  v3[54] = @".mouth.smirking";
  v3[55] = @".mouth.smiling";
  v2[56] = &unk_1F240AFA8;
  v2[57] = &unk_1F240AFC0;
  v3[56] = @".mouth.smiling.teeth";
  v3[57] = @".mouth.smiling.teeth";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:58];
  v1 = _mouthLocSuffixForSuffix_emojiDescriptions;
  _mouthLocSuffixForSuffix_emojiDescriptions = v0;
}

id UIAccessibilityEmojiDescription(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || (v3 = CGImageSourceCreateWithURL(v1, 0)) == 0)
  {
    v16 = 0;
    goto LABEL_22;
  }

  v4 = v3;
  v5 = CGImageSourceCopyPropertiesAtIndex(v3, 0, 0);
  v6 = [(__CFDictionary *)v5 objectForKey:*MEMORY[0x1E696DB70]];

  if (v6)
  {
    v7 = [(__CFURL *)v2 path];
    v8 = [v7 lastPathComponent];
    v9 = [v8 stringByDeletingPathExtension];

    v42 = v9;
    v40 = v2;
    v41 = v4;
    if ([v9 rangeOfString:@"heart-blue-loop-"])
    {
      if ([v9 rangeOfString:@"heart-red-loop-"])
      {
        if ([v9 rangeOfString:@"heart-purple-loop-"])
        {
          if ([v9 rangeOfString:@"hand-loop-"])
          {
            if ([v9 rangeOfString:@"face-red-loop-"])
            {
              if ([v9 rangeOfString:@"face-yellow-loop-"])
              {
                v16 = 0;
                v17 = &stru_1F23EA908;
                v18 = &stru_1F23EA908;
LABEL_20:

                goto LABEL_21;
              }

              v19 = [v9 substringFromIndex:v15];
              if ([v19 isEqualToString:@"21"])
              {
                v17 = @"emoji.face.sad";
LABEL_38:
                v39 = &stru_1F23EA908;
                v22 = @"emoji.yellow.face";
                goto LABEL_19;
              }

              if ([v19 isEqualToString:@"52"])
              {
                v17 = @"emoji.face.sleeping";
                goto LABEL_38;
              }

              if ([v19 isEqualToString:@"26"])
              {
                v17 = @"emoji.face.confused.and.dismayed";
                goto LABEL_38;
              }

              v37 = _eyesLocSuffixForSuffix(v19);
              v17 = [@"emoji.face" stringByAppendingString:v37];

              v20 = _mouthLocSuffixForSuffix(v19);
              v39 = [@"emoji.face" stringByAppendingString:v20];
              v22 = @"emoji.yellow.face";
              goto LABEL_18;
            }

            v19 = [v9 substringFromIndex:v14];
            if ([v19 isEqualToString:@"21"])
            {
              v17 = @"emoji.face.sad";
LABEL_35:
              v39 = &stru_1F23EA908;
              v22 = @"emoji.red.face";
              goto LABEL_19;
            }

            if ([v19 isEqualToString:@"52"])
            {
              v17 = @"emoji.face.sleeping";
              goto LABEL_35;
            }

            if ([v19 isEqualToString:@"26"])
            {
              v17 = @"emoji.face.confused.and.dismayed";
              goto LABEL_35;
            }

            v36 = _eyesLocSuffixForSuffix(v19);
            v17 = [@"emoji.face" stringByAppendingString:v36];

            v20 = _mouthLocSuffixForSuffix(v19);
            v39 = [@"emoji.face" stringByAppendingString:v20];
            v22 = @"emoji.red.face";
LABEL_18:

LABEL_19:
            v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
            v24 = [v23 localizedStringForKey:v22 value:&stru_1F23EA908 table:@"Accessibility"];
            v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
            v26 = [v25 localizedStringForKey:v17 value:&stru_1F23EA908 table:@"Accessibility"];
            v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
            v18 = v39;
            v38 = [v27 localizedStringForKey:v39 value:&stru_1F23EA908 table:@"Accessibility"];
            v16 = __AXMStringForVariables(v24, v28, v29, v30, v31, v32, v33, v34, v26);

            v9 = v42;
            v2 = v40;
            v4 = v41;
            goto LABEL_20;
          }

          v19 = [v9 substringFromIndex:v13];
          v20 = _handLocSuffixForSuffix(v19);
          v21 = @"emoji.hand";
        }

        else
        {
          v19 = [v9 substringFromIndex:v12];
          v20 = _heartLocSuffixForSuffix(v19);
          v21 = @"emoji.heart.purple";
        }
      }

      else
      {
        v19 = [v9 substringFromIndex:v11];
        v20 = _heartLocSuffixForSuffix(v19);
        v21 = @"emoji.heart.red";
      }
    }

    else
    {
      v19 = [v9 substringFromIndex:v10];
      v20 = _heartLocSuffixForSuffix(v19);
      v21 = @"emoji.heart.blue";
    }

    v17 = [(__CFString *)v21 stringByAppendingString:v20];
    v22 = &stru_1F23EA908;
    v39 = &stru_1F23EA908;
    goto LABEL_18;
  }

  v16 = 0;
LABEL_21:
  CFRelease(v4);

LABEL_22:

  return v16;
}

Class __getUIScreenClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIScreenClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUIScreenClass_block_invoke_cold_1();
    return UIKitLibrary();
  }

  return result;
}

uint64_t UIKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __UIKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A1E128;
    v5 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = UIKitLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!UIKitLibraryCore_frameworkLibrary)
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

uint64_t __UIKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getUIAccessibilityIsVoiceOverRunningSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIAccessibilityIsVoiceOverRunning");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIAccessibilityIsVoiceOverRunningSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getUIGraphicsBeginImageContextWithOptionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsBeginImageContextWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getUIGraphicsGetCurrentContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsGetCurrentContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsGetCurrentContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getUIGraphicsEndImageContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsEndImageContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsEndImageContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AXMSecureCodingClasses()
{
  v61 = MEMORY[0x1E695DFD8];
  v60 = objc_opt_class();
  v59 = objc_opt_class();
  v58 = objc_opt_class();
  v57 = objc_opt_class();
  v56 = objc_opt_class();
  v55 = objc_opt_class();
  v54 = objc_opt_class();
  v53 = objc_opt_class();
  v52 = objc_opt_class();
  v51 = objc_opt_class();
  v50 = objc_opt_class();
  v49 = objc_opt_class();
  v48 = objc_opt_class();
  v47 = objc_opt_class();
  v46 = objc_opt_class();
  v45 = objc_opt_class();
  v44 = objc_opt_class();
  v43 = objc_opt_class();
  v42 = objc_opt_class();
  v41 = objc_opt_class();
  v40 = objc_opt_class();
  v39 = objc_opt_class();
  v38 = objc_opt_class();
  v37 = objc_opt_class();
  v36 = objc_opt_class();
  v35 = objc_opt_class();
  v34 = objc_opt_class();
  v33 = objc_opt_class();
  v32 = objc_opt_class();
  v31 = objc_opt_class();
  v30 = objc_opt_class();
  v29 = objc_opt_class();
  v28 = objc_opt_class();
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  return [v61 setWithObjects:{v60, v59, v58, v57, v56, v55, v54, v53, v52, v51, v50, v49, v48, v47, v46, v45, v44, v43, v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class()}];
}

id AXMServiceInterface()
{
  if (AXMServiceInterface_onceToken != -1)
  {
    AXMServiceInterface_cold_1();
  }

  v1 = AXMServiceInterface__Interface;

  return v1;
}

void __AXMServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F240EF10];
  v1 = AXMServiceInterface__Interface;
  AXMServiceInterface__Interface = v0;

  v2 = AXMSecureCodingClasses();
  [AXMServiceInterface__Interface setClasses:v2 forSelector:sel_visionEngine_evaluateSource_context_options_result_ argumentIndex:0 ofReply:0];
  [AXMServiceInterface__Interface setClasses:v2 forSelector:sel_visionEngine_evaluateSource_context_options_result_ argumentIndex:1 ofReply:0];
  [AXMServiceInterface__Interface setClasses:v2 forSelector:sel_visionEngine_evaluateSource_context_options_result_ argumentIndex:2 ofReply:0];
  [AXMServiceInterface__Interface setClasses:v2 forSelector:sel_visionEngine_evaluateSource_context_options_result_ argumentIndex:3 ofReply:0];
  [AXMServiceInterface__Interface setClasses:v2 forSelector:sel_visionEngine_evaluateSource_context_options_result_ argumentIndex:0 ofReply:1];
  [AXMServiceInterface__Interface setClasses:v2 forSelector:sel_visionEngine_evaluateSource_context_options_result_ argumentIndex:1 ofReply:1];
}

uint64_t AXMIsRunningInServiceProcess()
{
  if (AXMIsRunningInServiceProcess_onceToken != -1)
  {
    AXMIsRunningInServiceProcess_cold_1();
  }

  return AXMIsRunningInServiceProcess__RunningInServiceProcess;
}

void __AXMIsRunningInServiceProcess_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  AXMIsRunningInServiceProcess__RunningInServiceProcess = [v0 isEqualToString:AXMServiceIdentifier];
}

id _AXMContextQueue()
{
  if (_AXMContextQueue_onceToken != -1)
  {
    _AXMContextQueue_cold_1();
  }

  v1 = _AXMContextQueue__ContextQueue;

  return v1;
}

id AXMCoreImageContext(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__11;
  v13 = __Block_byref_object_dispose__11;
  v14 = 0;
  v2 = _AXMContextQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __AXMCoreImageContext_block_invoke;
  v6[3] = &unk_1E7A1E190;
  v7 = v1;
  v8 = &v9;
  v3 = v1;
  dispatch_sync(v2, v6);

  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __AXMCoreImageContext_block_invoke(uint64_t a1)
{
  v2 = _AXMContext;
  if (!_AXMContext)
  {
    [*(a1 + 32) measure:@"Create CIContext" execute:&__block_literal_global_150];
    v2 = _AXMContext;
  }

  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

void __AXMCoreImageContext_block_invoke_2()
{
  v0 = [MEMORY[0x1E695F620] context];
  v1 = _AXMContext;
  _AXMContext = v0;
}

void AXMDeleteCoreImageContext()
{
  v0 = _AXMContextQueue();
  dispatch_sync(v0, &__block_literal_global_153);
}

void __AXMDeleteCoreImageContext_block_invoke()
{
  v0 = _AXMContext;
  _AXMContext = 0;
}

id AXMSharedDisplayManager()
{
  if (AXMSharedDisplayManager_onceToken != -1)
  {
    AXMSharedDisplayManager_cold_1();
  }

  v1 = AXMSharedDisplayManager_DisplayManager;

  return v1;
}

void __AXMSharedDisplayManager_block_invoke()
{
  v0 = [[AXMDisplayManager alloc] initAndWaitForMainDisplayConfiguration];
  v1 = AXMSharedDisplayManager_DisplayManager;
  AXMSharedDisplayManager_DisplayManager = v0;
}

id AXMAllSourceNodeClasses()
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:5];

  return v0;
}

id AXMAllEvaluationNodeClasses()
{
  v2[18] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v2[5] = objc_opt_class();
  v2[6] = objc_opt_class();
  v2[7] = objc_opt_class();
  v2[8] = objc_opt_class();
  v2[9] = objc_opt_class();
  v2[10] = objc_opt_class();
  v2[11] = objc_opt_class();
  v2[12] = objc_opt_class();
  v2[13] = objc_opt_class();
  v2[14] = objc_opt_class();
  v2[15] = objc_opt_class();
  v2[16] = objc_opt_class();
  v2[17] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:18];

  return v0;
}

CVPixelBufferRef AXMCreatePixelBufferByRotatingBuffer(CVPixelBufferRef texture, uint64_t a2, void *a3)
{
  pixelBufferOut = 0;
  if (a2 != 1)
  {
    Width = CVPixelBufferGetWidth(texture);
    Height = CVPixelBufferGetHeight(texture);
    PixelFormatType = CVPixelBufferGetPixelFormatType(texture);
    if (a2 > 4)
    {
      if (a2 <= 6)
      {
        if (a2 == 5)
        {
          v11 = 0;
          v10 = 1;
          goto LABEL_21;
        }

LABEL_15:
        v10 = 0;
        v11 = 0;
LABEL_21:
        v19 = Width;
        Width = Height;
LABEL_24:
        v20 = [MEMORY[0x1E695DF90] dictionary];
        [v20 setObject:MEMORY[0x1E695E0F8] forKeyedSubscript:*MEMORY[0x1E69660D8]];
        v21 = CVPixelBufferCreate(*MEMORY[0x1E695E480], Width, v19, PixelFormatType, v20, &pixelBufferOut);
        if (v21)
        {
          if (a3)
          {
            v22 = [MEMORY[0x1E696AD98] numberWithInt:v21];
            *a3 = _AXMMakeError(0, @"could not allocate pixel buffer: %@", v23, v24, v25, v26, v27, v28, v22);
          }
        }

        else
        {
          pixelRotationSessionOut = 0;
          VTPixelRotationSessionCreate(0, &pixelRotationSessionOut);
          v29 = CVPixelBufferGetWidth(texture);
          v42.size.height = CVPixelBufferGetHeight(texture);
          v42.origin.x = 0.0;
          v42.origin.y = 0.0;
          v42.size.width = v29;
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v42);
          VTSessionSetProperty(pixelRotationSessionOut, *MEMORY[0x1E6983E40], DictionaryRepresentation);
          CFRelease(DictionaryRepresentation);
          if (v10)
          {
            VTSessionSetProperty(pixelRotationSessionOut, *MEMORY[0x1E6983D78], MEMORY[0x1E695E118]);
          }

          if (v11)
          {
            VTSessionSetProperty(pixelRotationSessionOut, *MEMORY[0x1E6983D80], MEMORY[0x1E695E118]);
          }

          v31 = VTPixelRotationSessionRotateImage(pixelRotationSessionOut, texture, pixelBufferOut);
          if (!v31)
          {
            VTPixelRotationSessionInvalidate(pixelRotationSessionOut);
            CFRelease(pixelRotationSessionOut);

            return pixelBufferOut;
          }

          if (a3)
          {
            v32 = [MEMORY[0x1E696AD98] numberWithInt:v31];
            *a3 = _AXMMakeError(0, @"Could not rotate buffer: %@", v33, v34, v35, v36, v37, v38, v32);
          }

          if (pixelRotationSessionOut)
          {
            VTPixelRotationSessionInvalidate(pixelRotationSessionOut);
            CFRelease(pixelRotationSessionOut);
          }
        }

        if (pixelBufferOut)
        {
          CVPixelBufferRelease(pixelBufferOut);
        }

        return 0;
      }

      if (a2 == 7)
      {
        v10 = 0;
        v11 = 1;
        goto LABEL_21;
      }

      if (a2 == 8)
      {
        goto LABEL_15;
      }

LABEL_17:
      if (a3)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
        *a3 = _AXMMakeError(0, @"Could not rotate buffer with orientation: %@", v13, v14, v15, v16, v17, v18, v12);
      }

      return 0;
    }

    switch(a2)
    {
      case 2:
        v11 = 0;
        v10 = 1;
        break;
      case 3:
        v10 = 0;
        v11 = 0;
        break;
      case 4:
        v10 = 0;
        v11 = 1;
        break;
      default:
        goto LABEL_17;
    }

    v19 = Height;
    goto LABEL_24;
  }

  return CVPixelBufferRetain(texture);
}

id AXMImageByRotatingImage(void *a1, CGFloat a2)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  [v3 extent];
  v5 = v4;
  [v3 extent];
  v7 = v6;
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeTranslation(&v18, v5 * 0.5, v6 * 0.5);
  v16 = v18;
  CGAffineTransformRotate(&v17, &v16, a2);
  v18 = v17;
  v16 = v17;
  CGAffineTransformTranslate(&v17, &v16, v5 * -0.5, v7 * -0.5);
  v18 = v17;
  v8 = MEMORY[0x1E695F648];
  v9 = *MEMORY[0x1E695FAB0];
  v20[0] = v3;
  v10 = *MEMORY[0x1E695FB38];
  v19[0] = v9;
  v19[1] = v10;
  v11 = [MEMORY[0x1E696B098] axmValueWithCGAffineTransform:&v17];
  v20[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v13 = [v8 filterWithName:@"CIAffineTransform" withInputParameters:v12];

  v14 = [v13 outputImage];

  return v14;
}

void AXMWritePixelBufferToURL(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695F658];
  v6 = a3;
  v7 = a2;
  v8 = [v5 imageWithCVPixelBuffer:a1];
  AXMWriteImageToURL(v8, v7, v6);
}

void AXMWriteImageToURL(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = AXMCoreImageContext(v5);

  v12 = 0;
  [v9 writeJPEGRepresentationOfImage:v7 toURL:v6 colorSpace:DeviceRGB options:MEMORY[0x1E695E0F8] error:&v12];

  v10 = v12;
  if (v10)
  {
    v11 = AXMediaLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AXMModelDetectorNode evaluate:v10 metrics:v11];
    }
  }

  if (DeviceRGB)
  {
    CFRelease(DeviceRGB);
  }
}

void sub_1AE3F8790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVN2vIWnsZbk4Su55oeWfKDq1()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getVN2vIWnsZbk4Su55oeWfKDq1SymbolLoc_ptr;
  v8 = getVN2vIWnsZbk4Su55oeWfKDq1SymbolLoc_ptr;
  if (!getVN2vIWnsZbk4Su55oeWfKDq1SymbolLoc_ptr)
  {
    v1 = VisionLibrary_8();
    v6[3] = dlsym(v1, "VN2vIWnsZbk4Su55oeWfKDq1");
    getVN2vIWnsZbk4Su55oeWfKDq1SymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getVNmNJnu0xlW8CZXt6hJ7Rpb0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getVNmNJnu0xlW8CZXt6hJ7Rpb0SymbolLoc_ptr;
  v8 = getVNmNJnu0xlW8CZXt6hJ7Rpb0SymbolLoc_ptr;
  if (!getVNmNJnu0xlW8CZXt6hJ7Rpb0SymbolLoc_ptr)
  {
    v1 = VisionLibrary_8();
    v6[3] = dlsym(v1, "VNmNJnu0xlW8CZXt6hJ7Rpb0");
    getVNmNJnu0xlW8CZXt6hJ7Rpb0SymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getVN35FOB1QhtSfYGRIJvTgtTq()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getVN35FOB1QhtSfYGRIJvTgtTqSymbolLoc_ptr;
  v8 = getVN35FOB1QhtSfYGRIJvTgtTqSymbolLoc_ptr;
  if (!getVN35FOB1QhtSfYGRIJvTgtTqSymbolLoc_ptr)
  {
    v1 = VisionLibrary_8();
    v6[3] = dlsym(v1, "VN35FOB1QhtSfYGRIJvTgtTq");
    getVN35FOB1QhtSfYGRIJvTgtTqSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getVN6ZsEIQ9ri2eF1vhsxw5COm()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getVN6ZsEIQ9ri2eF1vhsxw5COmSymbolLoc_ptr;
  v8 = getVN6ZsEIQ9ri2eF1vhsxw5COmSymbolLoc_ptr;
  if (!getVN6ZsEIQ9ri2eF1vhsxw5COmSymbolLoc_ptr)
  {
    v1 = VisionLibrary_8();
    v6[3] = dlsym(v1, "VN6ZsEIQ9ri2eF1vhsxw5COm");
    getVN6ZsEIQ9ri2eF1vhsxw5COmSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void __getMADVISceneClassificationRequestClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADVISceneClassificationRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADVISceneClassificationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMADVISceneClassificationRequestClass_block_invoke_cold_1();
    MediaAnalysisServicesLibrary_0();
  }
}

void MediaAnalysisServicesLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaAnalysisServicesLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7A1E200;
    v3 = 0;
    MediaAnalysisServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MediaAnalysisServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  MediaAnalysisServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getMADVISceneClassificationResultClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary_0();
  result = objc_getClass("MADVISceneClassificationResult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADVISceneClassificationResultClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMADVISceneClassificationResultClass_block_invoke_cold_1();
    return __getVN81aedeb999c79d74e79af7f1c922cf97SymbolLoc_block_invoke_0(v3);
  }

  return result;
}

void *__getVN81aedeb999c79d74e79af7f1c922cf97SymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = VisionLibrary_8();
  result = dlsym(v2, "VN81aedeb999c79d74e79af7f1c922cf97");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN81aedeb999c79d74e79af7f1c922cf97SymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t VisionLibrary_8()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_15)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __VisionLibraryCore_block_invoke_15;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A1E218;
    v5 = 0;
    VisionLibraryCore_frameworkLibrary_15 = _sl_dlopen();
  }

  v0 = VisionLibraryCore_frameworkLibrary_15;
  v1 = v3[0];
  if (!VisionLibraryCore_frameworkLibrary_15)
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

uint64_t __VisionLibraryCore_block_invoke_15()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_15 = result;
  return result;
}

void *__getVN3FNQUJVIs2puI1uPc9mxh7SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_8();
  result = dlsym(v2, "VN3FNQUJVIs2puI1uPc9mxh7");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN3FNQUJVIs2puI1uPc9mxh7SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNSY8t4EoTztuqIL02g8uVA0SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_8();
  result = dlsym(v2, "VNSY8t4EoTztuqIL02g8uVA0");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNSY8t4EoTztuqIL02g8uVA0SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN6XNMvaRunPpzWjGa9uUHD6SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_8();
  result = dlsym(v2, "VN6XNMvaRunPpzWjGa9uUHD6");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN6XNMvaRunPpzWjGa9uUHD6SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN4QuphG8kE4qDaDycivBkX5SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_8();
  result = dlsym(v2, "VN4QuphG8kE4qDaDycivBkX5");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN4QuphG8kE4qDaDycivBkX5SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN7gQUejje8mmnE9GSTsVBVVSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_8();
  result = dlsym(v2, "VN7gQUejje8mmnE9GSTsVBVV");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN7gQUejje8mmnE9GSTsVBVVSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNa9xpOJNvRoaW9plFGZ9Eo0SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_8();
  result = dlsym(v2, "VNa9xpOJNvRoaW9plFGZ9Eo0");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNa9xpOJNvRoaW9plFGZ9Eo0SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN2vIWnsZbk4Su55oeWfKDq1SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_8();
  result = dlsym(v2, "VN2vIWnsZbk4Su55oeWfKDq1");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN2vIWnsZbk4Su55oeWfKDq1SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNmNJnu0xlW8CZXt6hJ7Rpb0SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_8();
  result = dlsym(v2, "VNmNJnu0xlW8CZXt6hJ7Rpb0");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNmNJnu0xlW8CZXt6hJ7Rpb0SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN35FOB1QhtSfYGRIJvTgtTqSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_8();
  result = dlsym(v2, "VN35FOB1QhtSfYGRIJvTgtTq");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN35FOB1QhtSfYGRIJvTgtTqSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN6ZsEIQ9ri2eF1vhsxw5COmSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_8();
  result = dlsym(v2, "VN6ZsEIQ9ri2eF1vhsxw5COm");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN6ZsEIQ9ri2eF1vhsxw5COmSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getVNGenerateAttentionBasedSaliencyImageRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNGenerateAttentionBasedSaliencyImageRequestClass_softClass;
  v7 = getVNGenerateAttentionBasedSaliencyImageRequestClass_softClass;
  if (!getVNGenerateAttentionBasedSaliencyImageRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNGenerateAttentionBasedSaliencyImageRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNGenerateAttentionBasedSaliencyImageRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE4009F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNGenerateAttentionBasedSaliencyImageRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_16)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke_16;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A1E230;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary_16 = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary_16)
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
  result = objc_getClass("VNGenerateAttentionBasedSaliencyImageRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNGenerateAttentionBasedSaliencyImageRequestClass_block_invoke_cold_1();
  }

  getVNGenerateAttentionBasedSaliencyImageRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke_16()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_16 = result;
  return result;
}

void sub_1AE4067E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<BOOL>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void **std::vector<std::shared_ptr<espresso_buffer_t>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<BOOL>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<espresso_buffer_t>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<espresso_buffer_t>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void sub_1AE409FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = AXShotflowNetwork;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<BOOL>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<BOOL>::__throw_length_error[abi:ne200100]();
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<BOOL>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void std::vector<NSString * {__strong}>::__assign_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(uint64_t a1, void **a2, void **a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 3)
  {
    std::vector<NSString * {__strong}>::__vdeallocate(a1);
    if (!(a4 >> 61))
    {
      v8 = *(a1 + 16) - *a1;
      v9 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<NSString * {__strong}>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<BOOL>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v7;
  if (a4 <= v11 >> 3)
  {
    std::__copy_impl::operator()[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong},NSString * {__strong}*>(&v21, a2, a3, v7);
    v17 = v16;
    v18 = *(a1 + 8);
    if (v18 != v16)
    {
      do
      {
        v19 = *(v18 - 8);
        v18 -= 8;
      }

      while (v18 != v17);
    }

    *(a1 + 8) = v17;
  }

  else
  {
    v12 = (a2 + v11);
    std::__copy_impl::operator()[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong},NSString * {__strong}*>(&v20, a2, (a2 + v11), v7);
    v13 = *(a1 + 8);
    if (v12 != a3)
    {
      v14 = *(a1 + 8);
      do
      {
        v15 = *v12++;
        *v14++ = v15;
        v13 += 8;
      }

      while (v12 != a3);
    }

    *(a1 + 8) = v13;
  }
}

void std::vector<NSString * {__strong}>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<NSString * {__strong}>>(a1, a2);
  }

  std::vector<BOOL>::__throw_length_error[abi:ne200100]();
}

void **std::__copy_impl::operator()[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong},NSString * {__strong}*>(int a1, void **a2, void **a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5++;
      objc_storeStrong(location++, v7);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__shared_ptr_emplace<espresso_buffer_t>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F23E8F60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2700150);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<espresso_buffer_t>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<espresso_buffer_t>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<espresso_buffer_t>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<espresso_buffer_t>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1AE40BB6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<espresso_buffer_t>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<espresso_buffer_t>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<espresso_buffer_t>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

id MLAllComputeDevicesSoft()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMLAllComputeDevicesSymbolLoc_ptr;
  v8 = getMLAllComputeDevicesSymbolLoc_ptr;
  if (!getMLAllComputeDevicesSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getMLAllComputeDevicesSymbolLoc_block_invoke;
    v4[3] = &unk_1E7A1C700;
    v4[4] = &v5;
    __getMLAllComputeDevicesSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v3 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v1 = v0();

  return v1;
}

void sub_1AE40C4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMLAllComputeDevicesSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreMLLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreMLLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7A1E408;
    v7 = 0;
    CoreMLLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v5[0];
    v2 = CoreMLLibraryCore_frameworkLibrary_0;
    if (CoreMLLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CoreMLLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "MLAllComputeDevices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMLAllComputeDevicesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreMLLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  CoreMLLibraryCore_frameworkLibrary_0 = result;
  return result;
}

id getVNRecognizedTextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNRecognizedTextClass_softClass;
  v7 = getVNRecognizedTextClass_softClass;
  if (!getVNRecognizedTextClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNRecognizedTextClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNRecognizedTextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE40D000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNRecognizedTextClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_17)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke_17;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A1E420;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary_17 = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary_17)
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
  result = objc_getClass("VNRecognizedText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNRecognizedTextClass_block_invoke_cold_1();
  }

  getVNRecognizedTextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke_17()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_17 = result;
  return result;
}

id getVCPMediaAnalyzerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVCPMediaAnalyzerClass_softClass;
  v7 = getVCPMediaAnalyzerClass_softClass;
  if (!getVCPMediaAnalyzerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVCPMediaAnalyzerClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVCPMediaAnalyzerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE40D360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPHPhotoLibraryClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHPhotoLibraryClass_softClass_0;
  v7 = getPHPhotoLibraryClass_softClass_0;
  if (!getPHPhotoLibraryClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPHPhotoLibraryClass_block_invoke_0;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getPHPhotoLibraryClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE40D520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE40DCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVCPMediaAnalyzerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaAnalysisLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaAnalysisLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A1E438;
    v6 = 0;
    MediaAnalysisLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MediaAnalysisLibraryCore_frameworkLibrary)
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
  result = objc_getClass("VCPMediaAnalyzer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVCPMediaAnalyzerClass_block_invoke_cold_1();
  }

  getVCPMediaAnalyzerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaAnalysisLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaAnalysisLibraryCore_frameworkLibrary = result;
  return result;
}

void __getPHPhotoLibraryClass_block_invoke_0(uint64_t a1)
{
  PhotosLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PHPhotoLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPhotoLibraryClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPHPhotoLibraryClass_block_invoke_cold_1_0();
    PhotosLibrary_0();
  }
}

void PhotosLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PhotosLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7A1E450;
    v3 = 0;
    PhotosLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PhotosLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PhotosLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getPHPersonClass_block_invoke(uint64_t a1)
{
  PhotosLibrary_0();
  result = objc_getClass("PHPerson");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPHPersonClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPHPersonClass_block_invoke_cold_1();
    return __getMKBGetDeviceLockStateSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMKBGetDeviceLockStateSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MobileKeyBagLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7A1E468;
    v7 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MobileKeyBagLibraryCore_frameworkLibrary;
    if (MobileKeyBagLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MKBGetDeviceLockState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBGetDeviceLockStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1AE40F024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNFaceLandmarks2DClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_18)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke_18;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A1E4A8;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary_18 = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary_18)
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
  result = objc_getClass("VNFaceLandmarks2D");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNFaceLandmarks2DClass_block_invoke_cold_1();
  }

  getVNFaceLandmarks2DClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke_18()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_18 = result;
  return result;
}

id getMADImageCaptionRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMADImageCaptionRequestClass_softClass;
  v7 = getMADImageCaptionRequestClass_softClass;
  if (!getMADImageCaptionRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMADImageCaptionRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getMADImageCaptionRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE413CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE415058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MediaAnalysisLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaAnalysisLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaAnalysisLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A1E5A8;
    v5 = 0;
    MediaAnalysisLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = MediaAnalysisLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!MediaAnalysisLibraryCore_frameworkLibrary_0)
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

uint64_t __MediaAnalysisLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  MediaAnalysisLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void __getVCPMediaAnalysisServiceClass_block_invoke(uint64_t a1)
{
  MediaAnalysisLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VCPMediaAnalysisService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVCPMediaAnalysisServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = __getVCPMediaAnalysisServiceClass_block_invoke_cold_1();
    __getMADImageCaptionRequestClass_block_invoke(v2);
  }
}

void __getMADImageCaptionRequestClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADImageCaptionRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADImageCaptionRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMADImageCaptionRequestClass_block_invoke_cold_1();
    MediaAnalysisServicesLibrary_1();
  }
}

void MediaAnalysisServicesLibrary_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaAnalysisServicesLibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7A1E5C0;
    v3 = 0;
    MediaAnalysisServicesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary_1)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MediaAnalysisServicesLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  MediaAnalysisServicesLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void *__getMediaAnalysisResultAttributesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultAttributesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultAttributesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisResultImageCaptionLowConfidenceAttributeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultImageCaptionLowConfidenceAttributeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultImageCaptionLowConfidenceAttributeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisResultClassificationIdentifiersAttributeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultClassificationIdentifiersAttributeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultClassificationIdentifiersAttributeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisImageCaptionResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisImageCaptionResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisImageCaptionResultsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisResultImageCaptionTextAttributeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultImageCaptionTextAttributeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultImageCaptionTextAttributeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMediaAnalysisResultImageCaptionConfidenceAttributeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisResultImageCaptionConfidenceAttributeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultImageCaptionConfidenceAttributeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getMADCaptionResultClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{
  MediaAnalysisServicesLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADCaptionResult");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADCaptionResultClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = __getMADCaptionResultClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_2_0(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_1AE415CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getMADVIFaceRequestClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADVIFaceRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADVIFaceRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMADVIFaceRequestClass_block_invoke_cold_1();
    MediaAnalysisServicesLibrary_2();
  }
}

void MediaAnalysisServicesLibrary_2()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary_2)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaAnalysisServicesLibraryCore_block_invoke_2;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7A1EA28;
    v3 = 0;
    MediaAnalysisServicesLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary_2)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MediaAnalysisServicesLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  MediaAnalysisServicesLibraryCore_frameworkLibrary_2 = result;
  return result;
}

Class __getMADVIFaceResultClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary_2();
  result = objc_getClass("MADVIFaceResult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADVIFaceResultClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMADVIFaceResultClass_block_invoke_cold_1();
    return +[(AXMMADSService *)v3];
  }

  return result;
}

Class __getMADServiceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaAnalysisServicesLibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A1EA40;
    v6 = 0;
    MediaAnalysisServicesLibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v2 = v4[0];
    if (MediaAnalysisServicesLibraryCore_frameworkLibrary_3)
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
  result = objc_getClass("MADService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMADServiceClass_block_invoke_cold_1();
  }

  getMADServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaAnalysisServicesLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  MediaAnalysisServicesLibraryCore_frameworkLibrary_3 = result;
  return result;
}

double mean(double *a1, int a2)
{
  if (a2 < 1)
  {
    v3 = 0.0;
  }

  else
  {
    v2 = a2;
    v3 = 0.0;
    do
    {
      v4 = *a1++;
      v3 = v3 + v4;
      --v2;
    }

    while (v2);
  }

  return v3 / a2;
}

double min(double *a1, int a2)
{
  if (a2 < 1)
  {
    return 1.79769313e308;
  }

  v2 = a2;
  result = 1.79769313e308;
  do
  {
    v4 = *a1++;
    v5 = v4;
    if (v4 < result)
    {
      result = v5;
    }

    --v2;
  }

  while (v2);
  return result;
}

double max(double *a1, int a2)
{
  if (a2 < 1)
  {
    return -1.79769313e308;
  }

  v2 = a2;
  result = -1.79769313e308;
  do
  {
    v4 = *a1++;
    v5 = v4;
    if (v4 > result)
    {
      result = v5;
    }

    --v2;
  }

  while (v2);
  return result;
}

double covariance(double *a1, double *a2, int a3)
{
  if (a3 < 1)
  {
    v14 = 0.0;
  }

  else
  {
    v3 = a3;
    v4 = 0.0;
    v5 = a1;
    v6 = a3;
    do
    {
      v7 = *v5++;
      v4 = v4 + v7;
      --v6;
    }

    while (v6);
    v8 = a3;
    v9 = 0.0;
    v10 = a2;
    v11 = a3;
    do
    {
      v12 = *v10++;
      v9 = v9 + v12;
      --v11;
    }

    while (v11);
    v13 = v4 / v8;
    v14 = 0.0;
    v15 = v9 / v8;
    do
    {
      v16 = *a1++;
      v17 = v16 - v13;
      v18 = *a2++;
      v14 = v14 + v17 * (v18 - v15);
      --v3;
    }

    while (v3);
  }

  return v14 / (a3 - 1);
}

double variance(double *a1, int a2)
{
  if (a2 < 1)
  {
    v8 = 0.0;
  }

  else
  {
    v2 = a2;
    v3 = 0.0;
    v4 = a1;
    v5 = a2;
    do
    {
      v6 = *v4++;
      v3 = v3 + v6;
      --v5;
    }

    while (v5);
    v7 = v3 / a2;
    v8 = 0.0;
    do
    {
      v9 = *a1++;
      v8 = v8 + (v9 - v7) * (v9 - v7);
      --v2;
    }

    while (v2);
  }

  return v8 / (a2 - 1);
}

double rsquared(double *a1, double *a2, int a3)
{
  v6 = covariance(a1, a2, a3);
  v7 = variance(a1, a3);
  v8 = sqrt(v7 * variance(a2, a3));
  return v6 / v8 * (v6 / v8);
}

const char *CVML_getStatusDescription(unint64_t a1)
{
  v1 = "Not supported error";
  switch(a1)
  {
    case 0x59u:
      return v1;
    case 0x5Au:
      v1 = "General error";
      break;
    case 0x5Bu:
      v1 = "Espresso error";
      break;
    case 0x5Cu:
      v1 = "incorrect binserializer key";
      break;
    case 0x5Du:
      v1 = "small sparsity error";
      break;
    case 0x5Eu:
      v1 = "feature extraction error";
      break;
    case 0x5Fu:
      v1 = "initialization error";
      break;
    case 0x60u:
      v1 = "no saved state to revert";
      break;
    case 0x61u:
      v1 = "nominal distance not changed";
      break;
    case 0x62u:
      v1 = "batch size violation";
      break;
    case 0x63u:
      v1 = "computation kill request was issued";
      break;
    case 0x64u:
      v1 = "too few IDs to build VIP model";
      break;
    case 0x65u:
      v1 = "video error";
      break;
    case 0x66u:
      v1 = "error with projection computation";
      break;
    case 0x67u:
      v1 = "missing positional parameter";
      break;
    case 0x68u:
      v1 = "inconsistent state error";
      break;
    case 0x69u:
      v1 = "warping error";
      break;
    case 0x6Au:
      v1 = "OpenGL error";
      break;
    case 0x6Bu:
      v1 = "invalid format";
      break;
    case 0x6Cu:
      v1 = "out of bounds";
      break;
    case 0x6Du:
      v1 = "singular point configuration error";
      break;
    case 0x6Eu:
      v1 = "division by zero";
      break;
    case 0x6Fu:
      v1 = "LAPACK error";
      break;
    case 0x70u:
      v1 = "platform endianess not supported";
      break;
    case 0x71u:
      v1 = "hash already in use";
      break;
    case 0x72u:
      v1 = "invalid ID";
      break;
    case 0x73u:
      v1 = "invalid data type";
      break;
    case 0x74u:
      v1 = "data inconsistency error";
      break;
    case 0x75u:
      v1 = "I/O error";
      break;
    case 0x76u:
      v1 = "unknown option";
      break;
    case 0x77u:
      v1 = "invalid option";
      break;
    case 0x78u:
      v1 = "missing option";
      break;
    case 0x79u:
      v1 = "delegate error";
      break;
    case 0x7Au:
      v1 = "vImage related error";
      break;
    case 0x7Bu:
      v1 = "memory allocation error";
      break;
    case 0x7Cu:
      v1 = "invalid parameter";
      break;
    case 0x7Du:
      v1 = "unexpected null pointer";
      break;
    case 0x7Eu:
      v1 = "internal error";
      break;
    case 0x7Fu:
      v1 = "not implemented error";
      break;
    case 0x80u:
      v1 = "ok";
      break;
    default:
      v1 = CVML_getStatusDescription_ourSharedDefaultStatusDescription;
      snprintf(CVML_getStatusDescription_ourSharedDefaultStatusDescription, 0x3FuLL, "CVML_status module %d error %lld", a1 >> 8, a1 - 128);
      break;
  }

  return v1;
}

const char *CVML_getModuleDescription(uint64_t a1)
{
  v1 = a1 >> 8;
  if (a1 >> 8 > 127)
  {
    if (v1 <= 130)
    {
      switch(v1)
      {
        case 128:
          return "FaceProcessorCLI";
        case 129:
          return "ImageClassifierCLI";
        case 130:
          return "MPCmdlineClientCLI";
      }
    }

    else
    {
      if (v1 <= 132)
      {
        if (v1 == 131)
        {
          return "ClusteringCLI";
        }

        else
        {
          return "ImageProcessorCLI";
        }
      }

      if (v1 == 133)
      {
        return "PhotosProcessorCLI";
      }

      if (v1 == 192)
      {
        return "CVMLEngine";
      }
    }

LABEL_60:
    v2 = CVML_getModuleDescription_ourSharedModuleNameString;
    snprintf(CVML_getModuleDescription_ourSharedModuleNameString, 0x1FuLL, "CVML Module %lld", a1 >> 8);
    return v2;
  }

  v2 = "BinSerializer";
  switch(v1)
  {
    case 1:
      return v2;
    case 2:
      v2 = "ERT";
      break;
    case 3:
      v2 = "Face3D";
      break;
    case 4:
      v2 = "FaceDescriptor";
      break;
    case 5:
      v2 = "FaceFrontalizer";
      break;
    case 6:
      v2 = "FaceWarper";
      break;
    case 7:
      v2 = "Geometry2D";
      break;
    case 8:
      v2 = "Geometry3D";
      break;
    case 9:
      v2 = "ImageGrouping";
      break;
    case 10:
      v2 = "ImageQuality";
      break;
    case 11:
      v2 = "LandmarkDetector";
      break;
    case 12:
      v2 = "MomentProcessor";
      break;
    case 13:
      v2 = "FaceboxAligner";
      break;
    case 14:
      v2 = "ImageDescriptor";
      break;
    case 15:
      v2 = "ImageClassifier";
      break;
    case 16:
      v2 = "ImageProcessing";
      break;
    case 17:
      v2 = "VIPIdentification";
      break;
    case 18:
      v2 = "ImageRegistration";
      break;
    case 19:
      v2 = "SimilarityMatrix";
      break;
    case 20:
      v2 = "Clustering";
      break;
    case 21:
      v2 = "HumanDetector";
      break;
    case 22:
      v2 = "FaceRegionMap";
      break;
    case 23:
      v2 = "ObjectDetector";
      break;
    case 24:
      v2 = "DML";
      break;
    case 25:
      v2 = "SGD";
      break;
    case 26:
      v2 = "ObjectTracker";
      break;
    case 27:
      v2 = "SRCClassifier";
      break;
    case 28:
      v2 = "Kmeans";
      break;
    case 29:
      v2 = "SparseCoding";
      break;
    case 30:
      v2 = "FaceID";
      break;
    case 31:
      v2 = "BoostedClassifier";
      break;
    case 32:
      v2 = "FaceSegmenter";
      break;
    case 33:
      v2 = "ImageAnalyzer";
      break;
    case 34:
      v2 = "FaceAttributes";
      break;
    case 35:
      v2 = "FaceprintAndAttributes";
      break;
    case 36:
      v2 = "FaceQuality";
      break;
    case 64:
      v2 = "Generic";
      break;
    case 65:
      v2 = "ImageTools";
      break;
    case 66:
      v2 = "VideoTools";
      break;
    case 67:
      v2 = "ImageWarper";
      break;
    case 68:
      v2 = "ThirdParty";
      break;
    case 69:
      v2 = "BinSerializerProcessor";
      break;
    case 70:
      v2 = "AppleNetParser";
      break;
    default:
      goto LABEL_60;
  }

  return v2;
}

void sub_1AE421128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AE42130C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE421484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE421640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE42175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE4229EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCVNLPCaptionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPCaptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPCaptionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CVNLPLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CVNLPLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CVNLPLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A1EA78;
    v5 = 0;
    CVNLPLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CVNLPLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!CVNLPLibraryCore_frameworkLibrary)
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

uint64_t __CVNLPLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CVNLPLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCVNLPGeneratedCaptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPGeneratedCaption");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPGeneratedCaptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPGeneratedCaptionScoreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPGeneratedCaptionScore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPGeneratedCaptionScoreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPGeneratedCaptionConfidenceLowSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPGeneratedCaptionConfidenceLow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPGeneratedCaptionConfidenceLowSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPImageClassificationIdentifiersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPImageClassificationIdentifiers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPImageClassificationIdentifiersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPCaptionModelPathSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPCaptionModelPath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPCaptionModelPathSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPCaptionLanguageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPCaptionLanguage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPCaptionLanguageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPBeamSearchSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPBeamSearchSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPBeamSearchSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPCaptionModelTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPCaptionModelType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPCaptionModelTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPCaptionModelTransformerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPCaptionModelTransformer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPCaptionModelTransformerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPCaptionEnableGenderedCaptionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPCaptionEnableGenderedCaptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPCaptionEnableGenderedCaptionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPCaptionScaleMethodSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPCaptionScaleMethod");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPCaptionScaleMethodSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPCaptionHandlerCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPCaptionHandlerCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPCaptionHandlerCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPCaptionScaleMethodCGInterpolationNoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPCaptionScaleMethodCGInterpolationNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPCaptionScaleMethodCGInterpolationNoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPCaptionScaleMethodCGInterpolationLowSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPCaptionScaleMethodCGInterpolationLow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPCaptionScaleMethodCGInterpolationLowSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPCaptionScaleMethodCGInterpolationMediumSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPCaptionScaleMethodCGInterpolationMedium");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPCaptionScaleMethodCGInterpolationMediumSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPCaptionScaleMethodCGInterpolationHighSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPCaptionScaleMethodCGInterpolationHigh");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPCaptionScaleMethodCGInterpolationHighSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPCaptionScaleMethodvImageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPCaptionScaleMethodvImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPCaptionScaleMethodvImageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPCaptionCopyForCVPixelBufferSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPCaptionCopyForCVPixelBuffer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPCaptionCopyForCVPixelBufferSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCVNLPCaptionCopyForImageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CVNLPLibrary();
  result = dlsym(v2, "CVNLPCaptionCopyForImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCVNLPCaptionCopyForImageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getVNSceneClassificationRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVNSceneClassificationRequestClass_softClass;
  v7 = getVNSceneClassificationRequestClass_softClass;
  if (!getVNSceneClassificationRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVNSceneClassificationRequestClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVNSceneClassificationRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE423CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNSceneClassificationRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_19)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionLibraryCore_block_invoke_19;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A1EA90;
    v6 = 0;
    VisionLibraryCore_frameworkLibrary_19 = _sl_dlopen();
    v2 = v4[0];
    if (VisionLibraryCore_frameworkLibrary_19)
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
  result = objc_getClass("VNSceneClassificationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVNSceneClassificationRequestClass_block_invoke_cold_1();
  }

  getVNSceneClassificationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionLibraryCore_block_invoke_19()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_19 = result;
  return result;
}

id getVN6Mb1ME89lyW3HpahkEygIGClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVN6Mb1ME89lyW3HpahkEygIGClass_softClass;
  v7 = getVN6Mb1ME89lyW3HpahkEygIGClass_softClass;
  if (!getVN6Mb1ME89lyW3HpahkEygIGClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVN6Mb1ME89lyW3HpahkEygIGClass_block_invoke;
    v3[3] = &unk_1E7A1C700;
    v3[4] = &v4;
    __getVN6Mb1ME89lyW3HpahkEygIGClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE427274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVN2vIWnsZbk4Su55oeWfKDq1_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getVN2vIWnsZbk4Su55oeWfKDq1SymbolLoc_ptr_0;
  v8 = getVN2vIWnsZbk4Su55oeWfKDq1SymbolLoc_ptr_0;
  if (!getVN2vIWnsZbk4Su55oeWfKDq1SymbolLoc_ptr_0)
  {
    v1 = VisionLibrary_9();
    v6[3] = dlsym(v1, "VN2vIWnsZbk4Su55oeWfKDq1");
    getVN2vIWnsZbk4Su55oeWfKDq1SymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getVNmNJnu0xlW8CZXt6hJ7Rpb0_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getVNmNJnu0xlW8CZXt6hJ7Rpb0SymbolLoc_ptr_0;
  v8 = getVNmNJnu0xlW8CZXt6hJ7Rpb0SymbolLoc_ptr_0;
  if (!getVNmNJnu0xlW8CZXt6hJ7Rpb0SymbolLoc_ptr_0)
  {
    v1 = VisionLibrary_9();
    v6[3] = dlsym(v1, "VNmNJnu0xlW8CZXt6hJ7Rpb0");
    getVNmNJnu0xlW8CZXt6hJ7Rpb0SymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getVN35FOB1QhtSfYGRIJvTgtTq_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getVN35FOB1QhtSfYGRIJvTgtTqSymbolLoc_ptr_0;
  v8 = getVN35FOB1QhtSfYGRIJvTgtTqSymbolLoc_ptr_0;
  if (!getVN35FOB1QhtSfYGRIJvTgtTqSymbolLoc_ptr_0)
  {
    v1 = VisionLibrary_9();
    v6[3] = dlsym(v1, "VN35FOB1QhtSfYGRIJvTgtTq");
    getVN35FOB1QhtSfYGRIJvTgtTqSymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getVN6ZsEIQ9ri2eF1vhsxw5COm_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getVN6ZsEIQ9ri2eF1vhsxw5COmSymbolLoc_ptr_0;
  v8 = getVN6ZsEIQ9ri2eF1vhsxw5COmSymbolLoc_ptr_0;
  if (!getVN6ZsEIQ9ri2eF1vhsxw5COmSymbolLoc_ptr_0)
  {
    v1 = VisionLibrary_9();
    v6[3] = dlsym(v1, "VN6ZsEIQ9ri2eF1vhsxw5COm");
    getVN6ZsEIQ9ri2eF1vhsxw5COmSymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

Class __getVN6Mb1ME89lyW3HpahkEygIGClass_block_invoke(uint64_t a1)
{
  VisionLibrary_9();
  result = objc_getClass("VN6Mb1ME89lyW3HpahkEygIG");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVN6Mb1ME89lyW3HpahkEygIGClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getVN6Mb1ME89lyW3HpahkEygIGClass_block_invoke_cold_1();
    return VisionLibrary_9();
  }

  return result;
}

uint64_t VisionLibrary_9()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_20)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __VisionLibraryCore_block_invoke_20;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7A1EAF0;
    v5 = 0;
    VisionLibraryCore_frameworkLibrary_20 = _sl_dlopen();
  }

  v0 = VisionLibraryCore_frameworkLibrary_20;
  v1 = v3[0];
  if (!VisionLibraryCore_frameworkLibrary_20)
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

uint64_t __VisionLibraryCore_block_invoke_20()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_20 = result;
  return result;
}

void *__getVN3FNQUJVIs2puI1uPc9mxh7SymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = VisionLibrary_9();
  result = dlsym(v2, "VN3FNQUJVIs2puI1uPc9mxh7");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN3FNQUJVIs2puI1uPc9mxh7SymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNSY8t4EoTztuqIL02g8uVA0SymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = VisionLibrary_9();
  result = dlsym(v2, "VNSY8t4EoTztuqIL02g8uVA0");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNSY8t4EoTztuqIL02g8uVA0SymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVN6XNMvaRunPpzWjGa9uUHD6SymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = VisionLibrary_9();
  result = dlsym(v2, "VN6XNMvaRunPpzWjGa9uUHD6");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVN6XNMvaRunPpzWjGa9uUHD6SymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}