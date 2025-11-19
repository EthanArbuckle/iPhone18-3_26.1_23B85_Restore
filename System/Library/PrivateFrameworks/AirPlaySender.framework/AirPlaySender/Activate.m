@interface Activate
@end

@implementation Activate

void __carEndpoint_Activate_block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = "\n";
  if (carEndpoint_isDissociated(*(a1 + 32)))
  {
    v4 = -16723;
    APSLogErrorAt();
    v5 = 0;
    goto LABEL_432;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v223 = 0;
  v224 = &v223;
  v225 = 0x2000000000;
  v226 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v221 = 0;
  v222 = 0;
  v220 = 0;
  v216 = 0;
  v217 = &v216;
  v218 = 0x2000000000;
  v219 = 0;
  v212 = 0;
  v213 = &v212;
  v214 = 0x2000000000;
  v215 = 0;
  if (*(DerivedStorage + 536))
  {
    APSEventRecorderRecordEventWithFlags();
  }

  v9 = LogCategoryCopyOSLogHandle();
  v10 = v9;
  v11 = MEMORY[0x277D86220];
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = MEMORY[0x277D86220];
  }

  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_221FFA000, v12, OS_SIGNPOST_EVENT, 0x2B160198uLL, "AP_SIGNPOST_ENDPOINTSELECTED", &unk_2222A918B, buf, 2u);
  }

  if (v10)
  {
    os_release(v10);
  }

  carEndpoint_setFeatureFlagsToDefaultValues(v6, 0, 0);
  v13 = *(DerivedStorage + 168);
  *buf = MEMORY[0x277D85DD0];
  v203 = 0x40000000;
  v204 = __carEndpoint_activateInternal_block_invoke;
  v205 = &unk_27849E6A8;
  v206 = &v223;
  v207 = &v212;
  v209 = DerivedStorage;
  v210 = v6;
  v211 = v2;
  v208 = &v216;
  dispatch_sync(v13, buf);
  if (*(v224 + 6))
  {
    v5 = 0;
    v19 = 0;
    goto LABEL_78;
  }

  if (*(DerivedStorage + 536))
  {
    APSEventRecorderRecordEvent();
  }

  v14 = LogCategoryCopyOSLogHandle();
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v11;
  }

  if (os_signpost_enabled(v16))
  {
    *block = 0;
    _os_signpost_emit_with_name_impl(&dword_221FFA000, v16, OS_SIGNPOST_EVENT, 0x2B8D0804uLL, "AP_SIGNPOST_CAR_SETUPREQUESTFEATURELIST_START", &unk_2222A918B, block, 2u);
  }

  if (v15)
  {
    os_release(v15);
  }

  v17 = CMBaseObjectGetDerivedStorage();
  v164 = v7;
  if (*(v17 + 160))
  {
    if (v7 && (Value = CFDictionaryGetValue(v7, @"FeaturesList")) != 0)
    {
      v19 = CFRetain(Value);
    }

    else
    {
      v19 = 0;
    }

    if (gLogCategory_APEndpointCarPlay > 50 || gLogCategory_APEndpointCarPlay == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_55;
    }

    goto LABEL_46;
  }

  v20 = v17;
  *block = 0;
  v21 = *(v17 + 48);
  if (v21)
  {
    v21 = CFDictionaryGetValue(v21, @"pairedVehicleIdentifier");
  }

  SessionFeatureKeysWithIdentifier = APCarPlay_FetchSessionFeatureKeysWithIdentifier(v21, block);
  if (SessionFeatureKeysWithIdentifier)
  {
    v29 = SessionFeatureKeysWithIdentifier;
    __carEndpoint_Activate_block_invoke_cold_1();
LABEL_51:
    v19 = 0;
    goto LABEL_56;
  }

  if (!*block)
  {
    if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_Activate_block_invoke_cold_4();
    }

    v29 = -16720;
    APSLogErrorAt();
    goto LABEL_51;
  }

  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *block);
  if (!MutableCopy)
  {
    __carEndpoint_Activate_block_invoke_cold_3();
    v29 = -16721;
    goto LABEL_51;
  }

  v19 = MutableCopy;
  carEndpoint_overrideFeatureKeyWithPrefValue(v6, MutableCopy, @"fileTransfer");
  carEndpoint_overrideFeatureKeyWithPrefValue(v6, v19, @"vehicleStateProtocol");
  carEndpoint_overrideFeatureKeyWithPrefValue(v6, v19, @"logTransfer");
  carEndpoint_overrideFeatureKeyWithPrefValue(v6, v19, @"iAPChannel");
  carEndpoint_overrideFeatureKeyWithPrefValue(v6, v19, @"uiSync");
  carEndpoint_overrideFeatureKeyWithPrefValue(v6, v19, @"mainBuffered");
  carEndpoint_overrideFeatureKeyWithPrefValue(v6, v19, @"hevc");
  carEndpoint_overrideFeatureKeyWithPrefValue(v6, v19, @"sessionManagement");
  v24 = CMBaseObjectGetDerivedStorage();
  IntWithDefault = APSSettingsGetIntWithDefault();
  v237.length = CFArrayGetCount(v19);
  v237.location = 0;
  CountOfValue = CFArrayGetCountOfValue(v19, v237, @"enhancedSiri");
  if (CountOfValue > 1)
  {
    __carEndpoint_Activate_block_invoke_cold_2();
    v29 = -6705;
    goto LABEL_51;
  }

  v27 = IntWithDefault == 0;
  if (CountOfValue != 1)
  {
    v27 = 0;
  }

  *(v24 + 56) = v27;
  if (CountOfValue && IntWithDefault && CountOfValue == 1)
  {
    v238.length = CFArrayGetCount(v19);
    v238.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v19, v238, @"enhancedSiri");
    CFArrayRemoveValueAtIndex(v19, FirstIndexOfValue);
  }

  if (FigCFArrayContainsValue())
  {
    CFArrayAppendValue(v19, @"videoPlayback");
  }

  *(v20 + 59) = carEndpoint_overrideFeatureKeyWithPrefValue(v6, v19, @"videoPlayback");
  CFRelease(*block);
  if (gLogCategory_APEndpointCarPlay > 50 || gLogCategory_APEndpointCarPlay == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_55;
  }

LABEL_46:
  LogPrintF();
LABEL_55:
  v29 = 0;
LABEL_56:
  *(v224 + 6) = v29;
  if (*(DerivedStorage + 536))
  {
    APSEventRecorderRecordEvent();
  }

  v30 = LogCategoryCopyOSLogHandle();
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v11;
  }

  if (os_signpost_enabled(v32))
  {
    *block = 0;
    _os_signpost_emit_with_name_impl(&dword_221FFA000, v32, OS_SIGNPOST_EVENT, 0x2B8D0808uLL, "AP_SIGNPOST_CAR_SETUPREQUESTFEATURELIST_COMPLETE", &unk_2222A918B, block, 2u);
  }

  if (v31)
  {
    os_release(v31);
  }

  if (*(v224 + 6))
  {
    __carEndpoint_Activate_block_invoke_cold_5();
    goto LABEL_77;
  }

  v33 = v217[3];
  v34 = *(DerivedStorage + 304);
  v35 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v35)
  {
    *(v224 + 6) = -12782;
    goto LABEL_76;
  }

  v36 = v35(v33, v19, v34, &v221);
  *(v224 + 6) = v36;
  if (v36)
  {
LABEL_76:
    __carEndpoint_Activate_block_invoke_cold_53();
LABEL_77:
    v5 = 0;
LABEL_78:
    v39 = 0;
    goto LABEL_416;
  }

  v171 = v19;
  v172 = v6;
  v166 = DerivedStorage;
  if (!v221)
  {
    theDict = 0;
    goto LABEL_201;
  }

  if (FigCFArrayContainsValue())
  {
    v37 = FigCFArrayCreateMutableCopy();
    v38 = FigCFArrayGetFirstIndexOfValue();
    CFArraySetValueAtIndex(v37, v38, @"videoPlayback");
    CFRelease(v221);
    v221 = v37;
    *(DerivedStorage + 61) = 1;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v40 = v221;
  theDicta = *(v213 + 6);
  v41 = CMBaseObjectGetDerivedStorage();
  v239.length = CFArrayGetCount(v40);
  v239.location = 0;
  if (CFArrayContainsValue(v40, v239, @"altScreen"))
  {
    *(v41 + 63) = 1;
  }

  v240.length = CFArrayGetCount(v40);
  v240.location = 0;
  if (CFArrayContainsValue(v40, v240, @"uiContext"))
  {
    *(v41 + 64) = 1;
  }

  v241.length = CFArrayGetCount(v40);
  v241.location = 0;
  if (CFArrayContainsValue(v40, v241, @"viewAreas"))
  {
    *(v41 + 62) = 1;
  }

  v42 = v2;
  if (*(v41 + 56))
  {
    v242.length = CFArrayGetCount(v40);
    v242.location = 0;
    if (CFArrayContainsValue(v40, v242, @"enhancedSiri"))
    {
      *(v41 + 57) = 1;
    }
  }

  v43 = *(v41 + 8);
  v44 = *MEMORY[0x277CBED28];
  v45 = *MEMORY[0x277CBED10];
  if (*(v41 + 57))
  {
    v46 = *MEMORY[0x277CBED28];
  }

  else
  {
    v46 = *MEMORY[0x277CBED10];
  }

  v47 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v47)
  {
    v47(v43, @"SupportsJarvis", v46);
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_Activate_block_invoke_cold_6();
  }

  v243.length = CFArrayGetCount(v40);
  v243.location = 0;
  if (CFArrayContainsValue(v40, v243, @"cornerMasks"))
  {
    *(v41 + 65) = 1;
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v244.length = CFArrayGetCount(v40);
  v244.location = 0;
  if (CFArrayContainsValue(v40, v244, @"focusTransfer"))
  {
    *(v41 + 66) = 1;
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v245.length = CFArrayGetCount(v40);
  v245.location = 0;
  if (CFArrayContainsValue(v40, v245, @"hevc"))
  {
    *(v41 + 68) = 1;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_Activate_block_invoke_cold_7();
  }

  v246.length = CFArrayGetCount(v40);
  v246.location = 0;
  if (CFArrayContainsValue(v40, v246, @"fileTransfer"))
  {
    *(v41 + 69) = 1;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v247.length = CFArrayGetCount(v40);
  v247.location = 0;
  if (CFArrayContainsValue(v40, v247, @"logTransfer"))
  {
    *(v41 + 104) = 1;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v248.length = CFArrayGetCount(v40);
  v248.location = 0;
  if (CFArrayContainsValue(v40, v248, @"uiSync"))
  {
    *(v41 + 120) = 1;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v249.length = CFArrayGetCount(v40);
  v249.location = 0;
  if (CFArrayContainsValue(v40, v249, @"vehicleStateProtocol"))
  {
    *(v41 + 80) = 1;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v250.length = CFArrayGetCount(v40);
  v250.location = 0;
  if (CFArrayContainsValue(v40, v250, @"iAPChannel"))
  {
    *(v41 + 136) = 1;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v251.length = CFArrayGetCount(v40);
  v251.location = 0;
  if (CFArrayContainsValue(v40, v251, @"mainBuffered"))
  {
    *(v41 + 58) = 1;
    v48 = v44;
  }

  else if (*(v41 + 58))
  {
    v48 = v44;
  }

  else
  {
    v48 = v45;
  }

  v49 = *(v41 + 8);
  v50 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v50)
  {
    v50(v49, @"SupportsBufferedAudio", v48);
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_Activate_block_invoke_cold_8();
  }

  v252.length = CFArrayGetCount(v40);
  v252.location = 0;
  if (CFArrayContainsValue(v40, v252, @"videoPlayback"))
  {
    if (!*(v41 + 59))
    {
      if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        __carEndpoint_Activate_block_invoke_cold_9();
      }

      *(v224 + 6) = -6735;
      APSLogErrorAt();
      v5 = 0;
      v39 = 0;
      v2 = v42;
      v3 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
      v19 = v171;
      v6 = v172;
      goto LABEL_416;
    }

    *(v41 + 60) = 1;
  }

  else if (!*(v41 + 60))
  {
    v44 = v45;
  }

  v51 = *(v41 + 8);
  v52 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  DerivedStorage = v166;
  if (v52)
  {
    v52(v51, @"SupportsAirPlayVideoV2", v44);
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_Activate_block_invoke_cold_10();
  }

  v253.length = CFArrayGetCount(v40);
  v253.location = 0;
  v2 = v42;
  if (CFArrayContainsValue(v40, v253, @"sessionManagement"))
  {
    *(v41 + 67) = 1;
  }

  v19 = v171;
  v6 = v172;
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_Activate_block_invoke_cold_11();
  }

  carEndpoint_postNotification(v172, *MEMORY[0x277CC0D48], theDicta, 0);
  *(v224 + 6) = 0;
  v53 = MEMORY[0x277D86220];
  if (*(v166 + 536))
  {
    APSEventRecorderRecordEvent();
  }

  v54 = LogCategoryCopyOSLogHandle();
  v55 = v54;
  if (v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = v53;
  }

  v3 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
  if (os_signpost_enabled(v56))
  {
    *block = 0;
    _os_signpost_emit_with_name_impl(&dword_221FFA000, v56, OS_SIGNPOST_EVENT, 0x2B8D080CuLL, "AP_SIGNPOST_CAR_INFOREQUESTFEATURELIST_START", &unk_2222A918B, block, 2u);
  }

  if (v55)
  {
    os_release(v55);
  }

  v57 = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  theDict = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!theDict)
  {
    __carEndpoint_Activate_block_invoke_cold_17();
    theDict = 0;
    v62 = -16721;
    goto LABEL_189;
  }

  if (*(v57 + 63))
  {
    v58 = APCarPlay_CRFetchInstrumentClusterURLs(&theArray);
    if (v58)
    {
      v62 = v58;
      __carEndpoint_Activate_block_invoke_cold_12();
      goto LABEL_473;
    }

    if (!theArray)
    {
      __carEndpoint_Activate_block_invoke_cold_14();
LABEL_472:
      v62 = -16721;
      goto LABEL_473;
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      __carEndpoint_Activate_block_invoke_cold_13();
      v62 = -71750;
      goto LABEL_473;
    }

    v60 = Mutable;
    CFArrayGetCount(theArray);
    *block = MEMORY[0x277D85DD0];
    v195 = 0x40000000;
    v196 = __carEndpoint_createInfoRequestFeatureList_block_invoke;
    v197 = &__block_descriptor_tmp_641;
    v198 = v60;
    CFArrayApplyBlock();
    CFDictionarySetValue(theDict, @"altScreenURLs", v60);
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    CFRelease(v60);
  }

  if (!*(v57 + 64))
  {
    v62 = 0;
    goto LABEL_189;
  }

  UIContextMasterURLList = APCarPlay_FetchUIContextMasterURLList(&theArray);
  if (!UIContextMasterURLList)
  {
    if (theArray)
    {
      CFDictionarySetValue(theDict, @"uiContextURLs", theArray);
      v62 = 0;
      *(v57 + 64) = 1;
      goto LABEL_189;
    }

    __carEndpoint_Activate_block_invoke_cold_16();
    goto LABEL_472;
  }

  v62 = UIContextMasterURLList;
  __carEndpoint_Activate_block_invoke_cold_15();
LABEL_473:
  CFRelease(theDict);
  theDict = 0;
LABEL_189:
  if (theArray)
  {
    CFRelease(theArray);
  }

  *(v224 + 6) = v62;
  if (*(v166 + 536))
  {
    APSEventRecorderRecordEvent();
  }

  v63 = LogCategoryCopyOSLogHandle();
  v64 = v63;
  if (v63)
  {
    v65 = v63;
  }

  else
  {
    v65 = v53;
  }

  if (os_signpost_enabled(v65))
  {
    *block = 0;
    _os_signpost_emit_with_name_impl(&dword_221FFA000, v65, OS_SIGNPOST_EVENT, 0x2B8D0810uLL, "AP_SIGNPOST_CAR_INFOREQUESTFEATURELIST_COMPLETE", &unk_2222A918B, block, 2u);
  }

  if (v64)
  {
    os_release(v64);
  }

  if (*(v224 + 6))
  {
    __carEndpoint_Activate_block_invoke_cold_18();
    goto LABEL_415;
  }

LABEL_201:
  v66 = v217[3];
  v67 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v67)
  {
    *(v224 + 6) = -12782;
    goto LABEL_218;
  }

  v68 = v67(v66, theDict);
  *(v224 + 6) = v68;
  if (v68)
  {
LABEL_218:
    __carEndpoint_Activate_block_invoke_cold_52();
    goto LABEL_415;
  }

  v69 = *(DerivedStorage + 8);
  v70 = CFGetAllocator(v6);
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(v69);
  v72 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v72)
  {
    *(v224 + 6) = -12782;
    goto LABEL_280;
  }

  v73 = v72(CMBaseObject, @"EndpointInfo", v70, &v220);
  *(v224 + 6) = v73;
  if (v73)
  {
LABEL_280:
    __carEndpoint_Activate_block_invoke_cold_51();
    goto LABEL_415;
  }

  v74 = v220;
  v75 = CMBaseObjectGetDerivedStorage();
  if (!v74)
  {
    __carEndpoint_Activate_block_invoke_cold_50();
    goto LABEL_413;
  }

  v76 = v75;
  if (CFDictionaryContainsKey(v74, @"uiContextLastOnDisplayURLs") || CFDictionaryContainsKey(v74, @"uiContextNowOnDisplayURLs"))
  {
    if (!v76[64] && gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_Activate_block_invoke_cold_19();
    }
  }

  else if (v76[64])
  {
    if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_Activate_block_invoke_cold_20();
    }

    v77 = -16720;
    goto LABEL_260;
  }

  v165 = v76;
  v78 = CFDictionaryGetValue(v74, @"displays");
  v79 = CFDictionaryGetValue(v74, @"displayPanels");
  if (!v78)
  {
    if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_Activate_block_invoke_cold_49();
    }

    v77 = -16720;
LABEL_260:
    APSLogErrorAt();
    goto LABEL_414;
  }

  v159 = v79;
  v161 = v2;
  v162 = a1;
  Count = CFArrayGetCount(v78);
  theArray = 0;
  p_theArray = &theArray;
  v188 = 0x2000000000;
  LOBYTE(v189) = 0;
  LODWORD(v235) = 0;
  v160 = v74;
  v81 = CFDictionaryContainsKey(v74, @"hevcInfo");
  v82 = 8912896;
  if (!v81)
  {
    v82 = 9437184;
  }

  v168 = v82;
  if (Count < 1)
  {
    v163 = 0;
    v167 = 0;
LABEL_262:
    if (v165[63])
    {
      v2 = v161;
      v3 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
      v99 = v166;
      if (Count <= 1)
      {
        a1 = v162;
        v6 = v172;
        if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_Activate_block_invoke_cold_23();
        }

LABEL_307:
        APSLogErrorAt();
        goto LABEL_412;
      }
    }

    else
    {
      v2 = v161;
      v3 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
      v99 = v166;
      if (Count >= 2)
      {
        a1 = v162;
        v6 = v172;
        if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_Activate_block_invoke_cold_48();
        }

        goto LABEL_307;
      }
    }

    a1 = v162;
    if (v165[62])
    {
      if (!v167)
      {
        v6 = v172;
        if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_Activate_block_invoke_cold_24();
        }

        goto LABEL_307;
      }
    }

    else if (v167 == 1 && gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_Activate_block_invoke_cold_25();
    }

    if (v165[66])
    {
      v6 = v172;
      if (!*(p_theArray + 24) && !v159)
      {
        v165[66] = 0;
        if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_Activate_block_invoke_cold_26();
        }

        goto LABEL_307;
      }
    }

    else
    {
      v6 = v172;
      if (*(p_theArray + 24) == 1 && gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        __carEndpoint_Activate_block_invoke_cold_27();
      }
    }

    if (v165[65])
    {
      if (!v163)
      {
        v165[65] = 0;
        if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_Activate_block_invoke_cold_28();
        }

        goto LABEL_307;
      }
    }

    else if (v163 == 1 && gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_Activate_block_invoke_cold_29();
    }

    _Block_object_dispose(&theArray, 8);
    v100 = carEndpoint_validateInfoResponseKeyPresentForFeature(v6, v160, @"hevcInfo", v165[68] != 0);
    if (v100)
    {
      v77 = v100;
      __carEndpoint_Activate_block_invoke_cold_30();
      goto LABEL_414;
    }

    v101 = carEndpoint_validateInfoResponseKeyPresentForFeature(v6, v160, @"mainBufferedInfo", v165[58] != 0);
    if (v101)
    {
      v77 = v101;
      __carEndpoint_Activate_block_invoke_cold_31();
      goto LABEL_414;
    }

    if (v165[61])
    {
      v102 = @"video2Info";
    }

    else
    {
      v102 = @"videoPlaybackInfo";
    }

    v103 = carEndpoint_validateInfoResponseKeyPresentForFeature(v6, v160, v102, v165[60] != 0);
    if (v103)
    {
      v77 = v103;
      __carEndpoint_Activate_block_invoke_cold_32();
      goto LABEL_414;
    }

    v104 = carEndpoint_validateInfoResponseKeyPresentForFeature(v6, v160, @"sessionManagementInfo", v165[67] != 0);
    if (v104)
    {
      v77 = v104;
      __carEndpoint_Activate_block_invoke_cold_33();
      goto LABEL_414;
    }

    v105 = carEndpoint_validateInfoResponseKeyPresentForFeature(v6, v160, @"fileTransferInfo", v165[69] != 0);
    if (v105)
    {
      v77 = v105;
      __carEndpoint_Activate_block_invoke_cold_34();
      goto LABEL_414;
    }

    v106 = carEndpoint_validateInfoResponseKeyPresentForFeature(v6, v160, @"vehicleStateProtocolInfo", v165[80] != 0);
    if (v106)
    {
      v77 = v106;
      __carEndpoint_Activate_block_invoke_cold_35();
      goto LABEL_414;
    }

    v107 = carEndpoint_validateInfoResponseKeyPresentForFeature(v6, v160, @"logTransferInfo", v165[104] != 0);
    if (v107)
    {
      v77 = v107;
      __carEndpoint_Activate_block_invoke_cold_36();
      goto LABEL_414;
    }

    v108 = carEndpoint_validateInfoResponseKeyPresentForFeature(v6, v160, @"uiSyncInfo", v165[120] != 0);
    if (v108)
    {
      v77 = v108;
      __carEndpoint_Activate_block_invoke_cold_37();
      goto LABEL_414;
    }

    *(v224 + 6) = 0;
    v109 = APEndpointDescriptionGetCMBaseObject(*(v99 + 8));
    v110 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v110)
    {
      v111 = v110(v109, @"HIDs", 0, &v222);
      *(v224 + 6) = v111;
      if (!v111)
      {
        v112 = *(v99 + 168);
        *block = MEMORY[0x277D85DD0];
        v195 = 0x40000000;
        v196 = __carEndpoint_activateInternal_block_invoke_147;
        v197 = &unk_27849E6D0;
        v198 = &v223;
        v199 = v99;
        v200 = v222;
        v201 = v172;
        dispatch_sync(v112, block);
        if (*(v224 + 6))
        {
          v5 = 0;
          v6 = v172;
LABEL_492:
          v39 = theDict;
          v19 = v171;
          goto LABEL_416;
        }

        v113 = CMBaseObjectGetDerivedStorage();
        carEndpoint_registerForGlobalNotification(v172, "com.apple.airplay.overrideTBTPrefsChanged", carEndpoint_handleOverrideTurnByTurnConfigurationChanged, v113 + 344);
        v114 = *(v113 + 512);
        theArray = MEMORY[0x277D85DD0];
        p_theArray = 0x40000000;
        v188 = __carEndpoint_registerForOverrideTurnByTurnConfigurationChangedNotification_block_invoke;
        v189 = &__block_descriptor_tmp_736;
        v190 = v172;
        dispatch_async(v114, &theArray);
        v115 = *(v99 + 168);
        theArray = MEMORY[0x277D85DD0];
        p_theArray = 0x40000000;
        v188 = __carEndpoint_activateInternal_block_invoke_2_152;
        v189 = &unk_27849E6F8;
        v190 = &v223;
        v191 = v99;
        v192 = v172;
        v193 = v164;
        dispatch_sync(v115, &theArray);
        v6 = v172;
        if (*(v224 + 6))
        {
          goto LABEL_491;
        }

        if (*(v99 + 57))
        {
          v116 = CMBaseObjectGetDerivedStorage();
          carEndpoint_registerForGlobalNotification(v172, "com.apple.coreaudio.BorealisToggled", carEndpoint_handleJarvisParametersChangedNotification, v116 + 428);
          carEndpoint_registerForGlobalNotification(v172, "com.apple.corespeech.voicetriggerassetchange", carEndpoint_handleJarvisParametersChangedNotification, (v116 + 54));
          carEndpoint_registerForGlobalNotification(v172, "com.apple.airplay.jarvisParametersChanged", carEndpoint_handleJarvisParametersChangedNotification, (v116 + 53));
          carEndpoint_registerForGlobalNotification(v172, "com.apple.mobile.keybagd.first_unlock", carEndpoint_handleJarvisParametersChangedNotification, v116 + 436);
          carEndpoint_registerForGlobalNotification(v172, kAPCarPlaySpringBoardStartNotificationKey, carEndpoint_handleJarvisParametersChangedNotification, (v116 + 55));
          v117 = *v116;
          *v227 = MEMORY[0x277D85DD0];
          v228 = 0x40000000;
          v229 = __carEndpoint_setupNotificationsAndInitialParametersForJarvis_block_invoke;
          v230 = &__block_descriptor_tmp_837;
          v231 = v172;
          dispatch_async(v117, v227);
          APCarPlayAVVCServerRegisterEndpoint(v172);
        }

        if (!*(v99 + 60))
        {
          goto LABEL_345;
        }

        v118 = v217[3];
        v119 = *(v213 + 6);
        v236[0] = 0;
        v120 = CMBaseObjectGetDerivedStorage();
        *buffer = 0;
        v181 = 0;
        LODWORD(v183) = 0;
        v182 = 0;
        v235 = 0;
        v234 = 0;
        if (IsAppleInternalBuild())
        {
          APSSettingsGetBooleanIfPresent();
          if (v234)
          {
            __carEndpoint_Activate_block_invoke_cold_38(v227);
            v123 = *v227;
            goto LABEL_339;
          }
        }

        v121 = APSenderSessionGetCMBaseObject(v118);
        v122 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v122)
        {
          v236[0] = v122(v121, 0x28357A450, *MEMORY[0x277CBECE8], &v235);
          if (!v236[0])
          {
            if (v235 && CFDataGetLength(v235) > 0x1B)
            {
              v254.location = 0;
              v254.length = 28;
              CFDataGetBytes(v235, v254, buffer);
              v123 = CFStringCreateF();
              if (!v236[0])
              {
                v157 = *(v120 + 40);
                *v227 = MEMORY[0x277D85DD0];
                v228 = 0x40000000;
                v229 = __carEndpoint_registerForHTTPProxy_block_invoke;
                v230 = &__block_descriptor_tmp_872;
                v231 = v172;
                v232 = v120;
                v233 = v119;
                v6 = v172;
                APHTTPProxyMonitorClientRegisterHTTPProxyMonitor(v172, v157, v123, v227);
                goto LABEL_340;
              }

              __carEndpoint_Activate_block_invoke_cold_39();
LABEL_339:
              v6 = v172;
LABEL_340:
              if (v235)
              {
                CFRelease(v235);
              }

              if (v123)
              {
                CFRelease(v123);
              }

              v124 = v236[0];
              *(v224 + 6) = v236[0];
              if (!v124)
              {
LABEL_345:
                DictionaryValue = FigCFDictionaryGetDictionaryValue();
                updated = carEndpoint_updateVideoPlaybackAllowed(v6, DictionaryValue, 0);
                *(v224 + 6) = updated;
                if (!updated)
                {
                  *(v99 + 162) = *(v99 + 60);
                  APSEventRecorderRecordEvent();
                  v127 = CMBaseObjectGetDerivedStorage();
                  *buffer = 0;
                  v181 = buffer;
                  v182 = 0x2000000000;
                  LODWORD(v183) = 0;
                  v128 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  if (v128)
                  {
                    v129 = v128;
                    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                    {
                      v146 = CFGetAllocator(v6);
                      v147 = CFStringCreateMutable(v146, 0);
                      v130 = v147;
                      if (v147)
                      {
                        CFStringAppendFormat(v147, 0, @"CarPlay Connection: AirPlay Timing Information For %@\n", *(v127 + 16));
                      }
                    }

                    else
                    {
                      v130 = 0;
                    }

                    v131 = *(v127 + 544);
                    v132 = *(v127 + 536);
                    if (*(v127 + 40))
                    {
                      carEndpoint_addEventIntervalToPerformanceDictionaryAndLog(v131, 268427268, v132, 268304385, @"Total AirPlay Contribution (Endpoint Detected To Endpoint Activate Complete)", v129, v130);
                      *(v127 + 460) = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
                      v133 = *(v127 + 544);
                      v134 = @"EndpointDetectedOverWiFiTime";
                      v135 = 268427268;
                    }

                    else
                    {
                      carEndpoint_addEventIntervalToPerformanceDictionaryAndLog(v131, 268427269, v132, 268304385, @"Total AirPlay Contribution (Endpoint Detected To Endpoint Activate Complete)", v129, v130);
                      *(v127 + 460) = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
                      v133 = *(v127 + 544);
                      v134 = @"EndpointDetectedOverUSBTime";
                      v135 = 268427269;
                    }

                    carEndpoint_addEventToPerformanceDictionaryAndLog(v133, v135, v134, v129, v130);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v127 + 544), 268427275, @"CarPlayControlConnectCommandReceived", v129, v130);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v127 + 536), 150994945, @"ResolveDNSTime", v129, v130);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v127 + 544), 268427266, @"USBBrowsingStartTime", v129, v130);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v127 + 544), 268427267, @"WiFiBrowsingStartTime", v129, v130);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v127 + 536), 268304384, @"EndpointActivate", v129, v130);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v127 + 536), 150994944, @"QuerySRVTime", v129, v130);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v127 + 536), 150994946, @"ConnectTime", v129, v130);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v127 + 536), 150994948, @"ConnectedTime", v129, v130);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v127 + 536), 250609664, @"EndpointConnectionStartTime", v129, v130);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v127 + 536), 250609668, @"EndpointGetInfoCompleteTime", v129, v130);
                    carEndpoint_addEventIntervalToPerformanceDictionaryAndLog(*(v127 + 536), 250609667, *(v127 + 536), 250609668, @"INFOTimeMs", v129, v130);
                    carEndpoint_addEventIntervalToPerformanceDictionaryAndLog(*(v127 + 536), 150994946, *(v127 + 536), 150994948, @"ConnectTimeMs", v129, v130);
                    carEndpoint_addEventIntervalToPerformanceDictionaryAndLog(*(v127 + 536), 250609677, *(v127 + 536), 250609678, @"EndpointAUTHTimeMs", v129, v130);
                    carEndpoint_addEventIntervalToPerformanceDictionaryAndLog(*(v127 + 536), 250609675, *(v127 + 536), 250609676, @"EndpointRECORDTimeMs", v129, v130);
                    TimeBetweenEventsInMilliSecondRecursive = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
                    v137 = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive() + TimeBetweenEventsInMilliSecondRecursive;
                    v138 = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
                    v139 = v137 + v138 + APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
                    v140 = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
                    carEndpoint_addIntervalToPerformanceDictionaryAndLog(v139 + v140, @"EndpointTotalSETUPTimeMs", v129, v130);
                    if (*(v127 + 536))
                    {
                      APSEventRecorderRecordEvent();
                    }

                    v141 = LogCategoryCopyOSLogHandle();
                    v142 = v141;
                    if (v141)
                    {
                      v143 = v141;
                    }

                    else
                    {
                      v143 = MEMORY[0x277D86220];
                    }

                    v6 = v172;
                    if (os_signpost_enabled(v143))
                    {
                      *v227 = 0;
                      _os_signpost_emit_with_name_impl(&dword_221FFA000, v143, OS_SIGNPOST_EVENT, 0x2B8D07E8uLL, "AP_SIGNPOST_CAR_SENT_STATISTICS", &unk_2222A918B, v227, 2u);
                    }

                    if (v142)
                    {
                      os_release(v142);
                    }

                    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF();
                    }

                    v144 = *(v127 + 168);
                    *v227 = MEMORY[0x277D85DD0];
                    v228 = 0x40000000;
                    v229 = __carEndpoint_postPerformanceReport_block_invoke;
                    v230 = &unk_27849F120;
                    v231 = buffer;
                    v232 = v127;
                    dispatch_sync(v144, v227);
                    carEndpoint_postNotification(v172, *MEMORY[0x277CC0D80], *(v181 + 24), v129);
                    CFRelease(v129);
                    if (v130)
                    {
                      CFRelease(v130);
                    }
                  }

                  else
                  {
                    __carEndpoint_Activate_block_invoke_cold_44();
                  }

                  _Block_object_dispose(buffer, 8);
                  carEndpoint_powerLogActivation(v6, 1);
                  CMBaseObjectGetDerivedStorage();
                  v145 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  v3 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
                  if (v145)
                  {
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    carEndpoint_addSignPostTimeToDictionary();
                    v19 = v171;
                    if (!APCarPlay_AddSignPostTimeInfoToTimeStore(@"CARAirPlayConnectionTimeInfo", v145))
                    {
LABEL_397:
                      CFRelease(v145);
LABEL_398:
                      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF();
                      }

                      v5 = *(v213 + 6);
                      a1 = v162;
                      v39 = theDict;
                      if (introspector_getCollectionOfActiveCarPlayEndpoints_once != -1)
                      {
                        __carEndpoint_Activate_block_invoke_cold_46();
                      }

                      if (introspector_getCollectionOfActiveCarPlayEndpoints_coll)
                      {
                        v148 = *introspector_getCollectionOfActiveCarPlayEndpoints_coll;
                        *v227 = MEMORY[0x277D85DD0];
                        v228 = 0x40000000;
                        v229 = __carEndpoint_activateInternal_block_invoke_2_160;
                        v230 = &__block_descriptor_tmp_161_0;
                        v231 = introspector_getCollectionOfActiveCarPlayEndpoints_coll;
                        v232 = v6;
                        dispatch_sync(v148, v227);
                      }

                      if (APSSettingsGetInt64())
                      {
                        v149 = *(v166 + 168);
                        *buffer = MEMORY[0x277D85DD0];
                        v181 = 0x40000000;
                        v182 = __carEndpoint_activateInternal_block_invoke_3_165;
                        v183 = &unk_27849E740;
                        v184 = &v223;
                        v185 = v166;
                        dispatch_async(v149, buffer);
                      }

                      goto LABEL_416;
                    }
                  }

                  else
                  {
                    __carEndpoint_Activate_block_invoke_cold_45();
                    v19 = v171;
                  }

                  if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  if (!v145)
                  {
                    goto LABEL_398;
                  }

                  goto LABEL_397;
                }

                __carEndpoint_Activate_block_invoke_cold_43();
                goto LABEL_491;
              }

              __carEndpoint_Activate_block_invoke_cold_42();
LABEL_491:
              v5 = 0;
              goto LABEL_492;
            }

            __carEndpoint_Activate_block_invoke_cold_40(v236);
LABEL_338:
            v123 = 0;
            goto LABEL_339;
          }
        }

        else
        {
          v236[0] = -12782;
        }

        __carEndpoint_Activate_block_invoke_cold_41();
        goto LABEL_338;
      }

      v19 = v171;
      v6 = v172;
    }

    else
    {
      *(v224 + 6) = -12782;
    }

    __carEndpoint_Activate_block_invoke_cold_47();
    goto LABEL_415;
  }

  v83 = 0;
  v167 = 0;
  v163 = 0;
  v84 = *MEMORY[0x277CBF3A8];
  v85 = *(MEMORY[0x277CBF3A8] + 8);
  v86 = @"viewAreas";
  while (1)
  {
    *v227 = 0;
    v228 = v227;
    v229 = 0x2000000000;
    LOBYTE(v230) = 0;
    CFDictionaryGetTypeID();
    TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
    if (v235)
    {
      v88 = 1;
    }

    else
    {
      v88 = TypedValueAtIndex == 0;
    }

    if (v88)
    {
      goto LABEL_254;
    }

    v89 = TypedValueAtIndex;
    v90 = v86;
    Int64 = CFDictionaryGetInt64();
    v92 = CFDictionaryGetInt64();
    v93 = CFDictionaryGetInt64();
    v94 = CFDictionaryGetInt64();
    if (!Int64 || !v92)
    {
      v6 = v172;
      if (gLogCategory_APEndpointCarPlay > 90 || gLogCategory_APEndpointCarPlay == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_388;
      }

LABEL_286:
      LogPrintF();
LABEL_388:
      APSLogErrorAt();
      v2 = v161;
      a1 = v162;
      v3 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
      v19 = v171;
      goto LABEL_411;
    }

    if (v92 * Int64 > v168)
    {
      v6 = v172;
      if (gLogCategory_APEndpointCarPlay > 90 || gLogCategory_APEndpointCarPlay == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_388;
      }

      goto LABEL_286;
    }

    v95 = v84 == v93 && v85 == v94;
    if (!v95 && (!v93 || !v94))
    {
      break;
    }

    v86 = v90;
    v19 = v171;
    if (CFDictionaryContainsKey(v89, v90) || CFDictionaryContainsKey(v89, @"initialViewArea") || CFDictionaryContainsKey(v89, @"adjacentViewAreas"))
    {
      v96 = CFDictionaryGetValue(v89, v90);
      if (v96)
      {
        v97 = v96;
        *buffer = 0;
        v181 = buffer;
        v182 = 0x2000000000;
        LODWORD(v183) = 0;
        v98 = CFGetTypeID(v96);
        if (v98 == CFArrayGetTypeID())
        {
          CFArrayGetCount(v97);
          *block = MEMORY[0x277D85DD0];
          v195 = 0x40000000;
          v196 = __carEndpoint_validateEnabledFeaturesWithAccessory_block_invoke;
          v197 = &unk_27849EDE0;
          v198 = buffer;
          v199 = &theArray;
          v200 = v227;
          CFArrayApplyBlock();
          if (!*(v181 + 24))
          {
            _Block_object_dispose(buffer, 8);
            goto LABEL_249;
          }

          v158 = 2212;
        }

        else
        {
          v158 = 2183;
        }

        __carEndpoint_Activate_block_invoke_cold_21(v158, buffer);
        v2 = v161;
        a1 = v162;
        v3 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
        v6 = v172;
        goto LABEL_411;
      }

LABEL_249:
      v167 = 1;
    }

    if (CFDictionaryContainsKey(v89, @"cornerMasks") && CFDictionaryGetInt64())
    {
      if (*(v228 + 24))
      {
        v6 = v172;
        if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_Activate_block_invoke_cold_22();
        }

        goto LABEL_410;
      }

      v163 = 1;
    }

LABEL_254:
    _Block_object_dispose(v227, 8);
    if (Count == ++v83)
    {
      goto LABEL_262;
    }
  }

  v19 = v171;
  v6 = v172;
  if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_410:
  APSLogErrorAt();
  v2 = v161;
  a1 = v162;
  v3 = "\n";
LABEL_411:
  _Block_object_dispose(v227, 8);
LABEL_412:
  _Block_object_dispose(&theArray, 8);
LABEL_413:
  v77 = -16720;
LABEL_414:
  *(v224 + 6) = v77;
  APSLogErrorAt();
LABEL_415:
  v5 = 0;
  v39 = theDict;
LABEL_416:
  if (*(v224 + 6))
  {
    dispatch_semaphore_signal(v2);
    carEndpoint_deactivateInternal(v6, 0, @"Activation Failed", 0);
  }

  if (v220)
  {
    CFRelease(v220);
  }

  v150 = v217[3];
  if (v150)
  {
    CFRelease(v150);
  }

  if (v222)
  {
    CFRelease(v222);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v221)
  {
    CFRelease(v221);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  v4 = *(v224 + 6);
  _Block_object_dispose(&v212, 8);
  _Block_object_dispose(&v216, 8);
  _Block_object_dispose(&v223, 8);
  if (v4)
  {
    APSLogErrorAt();
  }

LABEL_432:
  v151 = *(a1 + 32);
  v152 = *(v151 + 168);
  v179[0] = MEMORY[0x277D85DD0];
  v153 = *(v3 + 35);
  v179[1] = v153;
  v179[2] = __carEndpoint_Activate_block_invoke_2;
  v179[3] = &__block_descriptor_tmp_122;
  v179[4] = v151;
  dispatch_sync(v152, v179);
  if (!v4)
  {
    v4 = *(*(a1 + 32) + 228);
    if (v4)
    {
      if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      dispatch_semaphore_signal(v2);
      carEndpoint_deactivateInternal(*(a1 + 40), 0, @"Activation failed, endpointStatus error ", 0);
      v5 = 0;
    }
  }

  CFRetain(*(a1 + 40));
  dispatch_retain(v2);
  v154 = **(a1 + 32);
  v173[0] = MEMORY[0x277D85DD0];
  v173[1] = v153;
  v173[2] = __carEndpoint_Activate_block_invoke_3;
  v173[3] = &__block_descriptor_tmp_128;
  v155 = *(a1 + 72);
  v173[4] = *(a1 + 64);
  v174 = *(a1 + 40);
  v177 = v5;
  v178 = v4;
  v175 = v155;
  v176 = v2;
  dispatch_async(v154, v173);
  if (v5)
  {
    carEndpoint_postActivationNotification(*(a1 + 40), *MEMORY[0x277CC0D38], v5);
  }

  CFRelease(*(a1 + 40));
  v156 = *(a1 + 56);
  if (v156)
  {
    CFRelease(v156);
  }

  dispatch_release(v2);
}

void __carEndpoint_Activate_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(*(a1 + 40), *(a1 + 48), *(a1 + 72), *(a1 + 76), *(a1 + 56));
  }

  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_Activate_block_invoke_3_cold_1();
  }

  if (!*(a1 + 76))
  {
    dispatch_semaphore_signal(*(a1 + 64));
  }

  dispatch_release(*(a1 + 64));
  v3 = *(a1 + 40);

  CFRelease(v3);
}

uint64_t __carEndpoint_Activate_block_invoke_cold_38(uint64_t result)
{
  v1 = result;
  if (gLogCategory_APEndpointCarPlay <= 60)
  {
    if (gLogCategory_APEndpointCarPlay != -1 || (result = OUTLINED_FUNCTION_33_0(), result))
    {
      result = OUTLINED_FUNCTION_3_11();
    }
  }

  *v1 = 0;
  return result;
}

uint64_t __carEndpoint_Activate_block_invoke_cold_40(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -17606;
  return result;
}

@end