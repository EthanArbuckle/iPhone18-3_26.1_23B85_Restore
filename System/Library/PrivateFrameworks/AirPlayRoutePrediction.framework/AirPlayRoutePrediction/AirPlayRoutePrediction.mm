id getHMServiceTypeSpeaker()
{
  HMServiceTypeSpeakerSymbolLoc = getHMServiceTypeSpeakerSymbolLoc();
  if (!HMServiceTypeSpeakerSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeSpeakerSymbolLoc;

  return v1;
}

id getHMServiceTypeMicrophone()
{
  HMServiceTypeMicrophoneSymbolLoc = getHMServiceTypeMicrophoneSymbolLoc();
  if (!HMServiceTypeMicrophoneSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeMicrophoneSymbolLoc;

  return v1;
}

id getHMServiceTypeDoorbell()
{
  HMServiceTypeDoorbellSymbolLoc = getHMServiceTypeDoorbellSymbolLoc();
  if (!HMServiceTypeDoorbellSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeDoorbellSymbolLoc;

  return v1;
}

id getBMStreamsClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMStreamsClass_softClass;
  v6 = getBMStreamsClass_softClass;
  if (!getBMStreamsClass_softClass)
  {
    BiomeStreamsLibraryCore();
    v4[3] = objc_getClass("BMStreams");
    getBMStreamsClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB16244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMHomeKitClientMediaAccessoryControlStreamClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMHomeKitClientMediaAccessoryControlStreamClass_softClass;
  v6 = getBMHomeKitClientMediaAccessoryControlStreamClass_softClass;
  if (!getBMHomeKitClientMediaAccessoryControlStreamClass_softClass)
  {
    BiomeStreamsLibraryCore();
    v4[3] = objc_getClass("BMHomeKitClientMediaAccessoryControlStream");
    getBMHomeKitClientMediaAccessoryControlStreamClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB1634C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMHomeKitClientActionSetStreamClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMHomeKitClientActionSetStreamClass_softClass;
  v6 = getBMHomeKitClientActionSetStreamClass_softClass;
  if (!getBMHomeKitClientActionSetStreamClass_softClass)
  {
    BiomeStreamsLibraryCore();
    v4[3] = objc_getClass("BMHomeKitClientActionSetStream");
    getBMHomeKitClientActionSetStreamClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB16454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMHomeKitClientAccessoryControlStreamClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMHomeKitClientAccessoryControlStreamClass_softClass;
  v6 = getBMHomeKitClientAccessoryControlStreamClass_softClass;
  if (!getBMHomeKitClientAccessoryControlStreamClass_softClass)
  {
    BiomeStreamsLibraryCore();
    v4[3] = objc_getClass("BMHomeKitClientAccessoryControlStream");
    getBMHomeKitClientAccessoryControlStreamClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB1655C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBMBiomeSchedulerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMBiomeSchedulerClass_softClass;
  v6 = getBMBiomeSchedulerClass_softClass;
  if (!getBMBiomeSchedulerClass_softClass)
  {
    BiomeStreamsLibraryCore();
    v4[3] = objc_getClass("BMBiomeScheduler");
    getBMBiomeSchedulerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB16664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAVSystemControllerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getAVSystemControllerClass_softClass;
  v6 = getAVSystemControllerClass_softClass;
  if (!getAVSystemControllerClass_softClass)
  {
    MediaExperienceLibraryCore();
    v4[3] = objc_getClass("AVSystemController");
    getAVSystemControllerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB1676C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ARPLog()
{
  if (ARPLog_onceToken != -1)
  {
    ARPLog_cold_1();
  }

  v1 = ARPLog_log;

  return v1;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t __ARPLog_block_invoke()
{
  ARPLog_log = os_log_create("com.apple.AirPlayRoutePrediction", "general");

  return MEMORY[0x2821F96F8]();
}

id ARPHomeControlLog()
{
  if (ARPHomeControlLog_onceToken != -1)
  {
    ARPHomeControlLog_cold_1();
  }

  v1 = ARPHomeControlLog_log;

  return v1;
}

uint64_t __ARPHomeControlLog_block_invoke()
{
  ARPHomeControlLog_log = os_log_create("com.apple.AirPlayRoutePrediction", "homeControl");

  return MEMORY[0x2821F96F8]();
}

id ARPFeedbackLog()
{
  if (ARPFeedbackLog_onceToken != -1)
  {
    ARPFeedbackLog_cold_1();
  }

  v1 = ARPFeedbackLog_log;

  return v1;
}

uint64_t __ARPFeedbackLog_block_invoke()
{
  ARPFeedbackLog_log = os_log_create("com.apple.AirPlayRoutePrediction", "feedback");

  return MEMORY[0x2821F96F8]();
}

id ARPExtractLongFormVideoOutputDeviceIDs(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v27;
    v21 = v1;
    v19 = *v27;
    do
    {
      v5 = 0;
      v20 = v3;
      do
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v26 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [v1 objectForKeyedSubscript:v6];
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v23;
            while (2)
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v23 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v22 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v14 = [v6 intValue];
                  v15 = [v13 intValue];
                  if ([MEMORY[0x277CB86B8] longFormVideoManagerCanHaveCurrentSessionWithDestinationOfType:v14 subType:v15])
                  {
                    v16 = [v8 objectForKeyedSubscript:v13];

                    v1 = v21;
                    goto LABEL_22;
                  }
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }

          v3 = v20;
          v1 = v21;
          v4 = v19;
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [v1 countByEnumeratingWithState:&v26 objects:v31 count:16];
      v16 = &unk_2851429C0;
    }

    while (v3);
  }

  else
  {
    v16 = &unk_2851429C0;
  }

LABEL_22:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void sub_23EB18CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23EB1CC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23EB1D03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23EB1E428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23EB1F3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23EB20514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 8; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

double ARPMicroLocationSimilarity(void *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&UUID_NULL];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  if (v7)
  {
    v11 = v7;
    v12 = *v40;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        v15 = [v6 objectForKeyedSubscript:v14];
        [v15 doubleValue];
        v17 = v16;
        [v15 doubleValue];
        v19 = v18;
        if (([v14 isEqual:v5] & 1) == 0)
        {
          v20 = [v4 objectForKeyedSubscript:v14];
          if (v20)
          {
            [v15 doubleValue];
            v22 = v21;
            [v20 doubleValue];
            v10 = v10 + v22 * v23;
          }
        }

        v9 = v9 + v17 * v19;
      }

      v11 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v11);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = v4;
  v25 = [v24 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v36;
    v8 = 0.0;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [v24 objectForKeyedSubscript:{*(*(&v35 + 1) + 8 * j), v35}];
        [v29 doubleValue];
        v31 = v30;
        [v29 doubleValue];
        v8 = v8 + v31 * v32;
      }

      v26 = [v24 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v26);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v10 / (sqrt(v9) * sqrt(v8));
}

void sub_23EB21CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23EB22E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

__CFString *ARPFeedbackTypeDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_278C648D0 + a1);
  }
}

void ARPDonateFeedback(unint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CFE208] knowledgeStore];
  ARPDonateFeedbackToKnowledgeStore(a1, v8, v5, v7);

  objc_autoreleasePoolPop(v6);
}

void ARPDonateFeedbackToKnowledgeStore(unint64_t a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v29 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = ARPFeedbackLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    if (a1 > 3)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = *(&off_278C648D0 + a1);
    }

    *buf = 138412802;
    v40 = v11;
    v41 = 2112;
    v42 = v29;
    v43 = 2112;
    v44 = v7;
    _os_log_impl(&dword_23EB15000, v10, OS_LOG_TYPE_INFO, "Donating airplay prediction feedback, type: '%@', subtype: %@, outputDeviceIDs: %@", buf, 0x20u);
  }

  if (v7)
  {
    v12 = [v7 count];
    if (v29)
    {
      if (v12 && [v29 length])
      {
        v13 = a1;
        v27 = v8;
        v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v14 = v7;
        v15 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v33;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v33 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v32 + 1) + 8 * i);
              if ([v19 length])
              {
                v20 = [MEMORY[0x277CFE130] outputDeviceID];
                v36[0] = v20;
                v37[0] = v19;
                v21 = [MEMORY[0x277CFE130] subtype];
                v36[1] = v21;
                v37[1] = v29;
                v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

                v23 = MEMORY[0x277CFE1D8];
                v24 = [MEMORY[0x277CFE298] airplayPredictionStream];
                v25 = [v23 eventWithStream:v24 startDate:v9 endDate:v9 categoryIntegerValue:v13 metadata:v22];

                [v28 addObject:v25];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
          }

          while (v16);
        }

        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __ARPDonateFeedbackToKnowledgeStore_block_invoke_2;
        v30[3] = &unk_278C648B0;
        v8 = v27;
        v31 = v27;
        [v31 saveObjects:v28 tracker:&__block_literal_global_6 responseQueue:0 withCompletion:v30];
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __ARPDonateFeedbackToKnowledgeStore_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = ARPFeedbackLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __ARPDonateFeedbackToKnowledgeStore_block_invoke_2_cold_1();
    }
  }
}

void ARPCollectAndSendAnalyticsEvents(void *a1, void *a2)
{
  v258[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = _os_activity_create(&dword_23EB15000, "CoreDuet: ARPCollectAndSendAnalyticsEvents", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[1] = 0;
  state.opaque[0] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  if (AnalyticsIsEventUsed())
  {
    v6 = v3;
    v188 = v4;
    v7 = v4;
    v8 = [MEMORY[0x277CFE298] appUsageStream];
    v253 = v8;
    v9 = [MEMORY[0x277CFE298] nowPlayingStream];
    v254 = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v253 count:2];

    v11 = MEMORY[0x277CFE260];
    v12 = [v7 startDate];
    v13 = [v7 endDate];
    v14 = [v11 predicateForEventsWithStartInDateRangeFromAfter:v12 to:v13];

    v226 = v14;
    v15 = [MEMORY[0x277CFE1E0] eventQueryWithPredicate:v14 eventStreams:v10 offset:0 limit:0 sortDescriptors:0];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPFeedback.m"];
    v17 = [v16 stringByAppendingFormat:@":%d", 46];
    [v15 setClientName:v17];

    [v15 setTracker:&__block_literal_global_215];
    [v15 setGroupByProperties:&unk_2851429F0];
    [v15 setResultType:3];
    v258[0] = 0;
    v18 = [v6 executeQuery:v15 error:v258];
    v19 = v258[0];
    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v187 = v3;
    if (v19)
    {
      v21 = ARPLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [ARPCorrelationTask longFormVideoAppBundleIDs];
      }

      v22 = v226;
    }

    else
    {
      v220 = v10;
      v223 = v6;
      v21 = [getAVSystemControllerClass() sharedAVSystemController];
      v237 = 0u;
      v238 = 0u;
      v239 = 0u;
      v240 = 0u;
      v217 = v18;
      v24 = [v18 valueForKey:@"valueString"];
      v25 = [v24 countByEnumeratingWithState:&v237 objects:&state count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v238;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v238 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v237 + 1) + 8 * i);
            if ([v21 hasRouteSharingPolicyLongFormVideo:v29])
            {
              [v20 addObject:v29];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v237 objects:&state count:16];
        }

        while (v26);
      }

      v10 = v220;
      v6 = v223;
      v22 = v226;
      v18 = v217;
    }

    v30 = [v20 allObjects];

    v31 = ARPFeedbackLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      ARPCollectAndSendAnalyticsEvents_cold_2();
    }

    v198 = v6;
    v32 = v30;
    v221 = v7;
    v33 = [MEMORY[0x277CFE298] appUsageStream];
    v258[0] = v33;
    v34 = [MEMORY[0x277CFE298] nowPlayingStream];
    v258[1] = v34;
    v218 = [MEMORY[0x277CBEA60] arrayWithObjects:v258 count:2];

    v215 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
    v35 = MEMORY[0x277CFE260];
    v36 = [MEMORY[0x277CFE298] appUsageStream];
    v37 = [v36 name];
    v38 = [v35 predicateForEventsWithStreamName:v37];

    v39 = MEMORY[0x277CFE260];
    v40 = [MEMORY[0x277CFE298] nowPlayingStream];
    v41 = [v40 name];
    v42 = [v39 predicateForEventsWithStreamName:v41];

    v43 = MEMORY[0x277CFE260];
    v44 = [MEMORY[0x277CFE248] playing];
    v45 = [v43 predicateForObjectsWithMetadataKey:v44 andIntegerValue:1];

    v46 = MEMORY[0x277CCA920];
    v209 = v45;
    context = v42;
    v257[0] = v42;
    v257[1] = v45;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v257 count:2];
    v48 = [v46 andPredicateWithSubpredicates:v47];

    v49 = MEMORY[0x277CCA920];
    v213 = v38;
    v256[0] = v38;
    v256[1] = v48;
    v207 = v48;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v256 count:2];
    v51 = [v49 orPredicateWithSubpredicates:v50];

    v189 = v32;
    v52 = [MEMORY[0x277CFE260] predicateForEventsWithStringValueInValues:v32];
    v53 = MEMORY[0x277CFE260];
    v54 = v221;
    v55 = [v221 startDate];
    v56 = [v221 endDate];
    v57 = [v53 predicateForEventsWithStartInDateRangeFromAfter:v55 to:v56];

    v59 = v215;
    v58 = v218;

    v60 = MEMORY[0x277CCA920];
    v201 = v57;
    v203 = v52;
    v253 = v57;
    v254 = v51;
    v205 = v51;
    v255 = v52;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v253 count:3];
    v62 = [v60 andPredicateWithSubpredicates:v61];

    v63 = MEMORY[0x277CFE1E0];
    v252 = v215;
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v252 count:1];
    v199 = v62;
    v65 = [v63 eventQueryWithPredicate:v62 eventStreams:v218 offset:0 limit:0 sortDescriptors:v64];

    v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPFeedback.m"];
    v67 = [v66 stringByAppendingFormat:@":%d", 91];
    [v65 setClientName:v67];

    [v65 setTracker:&__block_literal_global_221];
    [v65 setResultType:2];
    v241 = 0;
    v196 = v65;
    v68 = [v198 executeQuery:v65 error:&v241];
    v192 = v68;
    v194 = v241;
    if (v194)
    {
      v69 = ARPLog();
      v4 = v188;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        ARPCollectAndSendAnalyticsEvents_cold_3();
      }

      v70 = 0;
      v23 = v189;
    }

    else
    {
      v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v237 = 0u;
      v238 = 0u;
      v239 = 0u;
      v240 = 0u;
      v225 = v68;
      v152 = [v225 countByEnumeratingWithState:&v237 objects:&state count:16];
      v227 = v70;
      if (v152)
      {
        v153 = v152;
        v154 = *v238;
        do
        {
          for (j = 0; j != v153; ++j)
          {
            if (*v238 != v154)
            {
              objc_enumerationMutation(v225);
            }

            v156 = *(*(&v237 + 1) + 8 * j);
            v157 = objc_alloc(MEMORY[0x277CCA970]);
            v158 = [v156 startDate];
            v159 = [v158 dateByAddingTimeInterval:-30.0];
            v160 = [v156 endDate];
            v161 = [v160 dateByAddingTimeInterval:30.0];
            v162 = [v157 initWithStartDate:v159 endDate:v161];

            v70 = v227;
            [v227 addObject:v162];
          }

          v153 = [v225 countByEnumeratingWithState:&v237 objects:&state count:16];
        }

        while (v153);
      }

      if ([v70 count])
      {
        v71 = v213;
        if ([v70 count] == 1)
        {
          v4 = v188;
          v23 = v189;
          v58 = v218;
          v54 = v221;
          v59 = v215;
        }

        else
        {
          v164 = 0;
          do
          {
            v165 = objc_autoreleasePoolPush();
            v166 = [v70 objectAtIndexedSubscript:v164];
            v167 = [v70 objectAtIndexedSubscript:v164 + 1];
            if ([v166 intersectsDateInterval:v167])
            {
              v168 = [v166 startDate];
              v169 = [v167 startDate];
              v170 = [v168 earlierDate:v169];

              v171 = [v166 endDate];
              v172 = [v167 endDate];
              v173 = [v171 laterDate:v172];

              v70 = v227;
              v174 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v170 endDate:v173];
              [v227 setObject:v174 atIndexedSubscript:v164];
              [v227 removeObjectAtIndex:v164 + 1];
            }

            else
            {
              ++v164;
            }

            objc_autoreleasePoolPop(v165);
          }

          while (v164 < [v70 count] - 1);
          v4 = v188;
          v23 = v189;
          v58 = v218;
          v54 = v221;
          v71 = v213;
          v59 = v215;
        }

        goto LABEL_25;
      }

      v4 = v188;
      v23 = v189;
      v58 = v218;
      v54 = v221;
      v59 = v215;
    }

    v71 = v213;
LABEL_25:
    v72 = [v70 copy];
    v73 = v70;
    v74 = v72;

    if ([v74 count])
    {
      v75 = objc_alloc_init(MEMORY[0x277CCA978]);
      [v75 setTimeStyle:3];
      [v75 setDateStyle:1];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        ARPCollectAndSendAnalyticsEvents_cold_4(v74, v75, v31);
      }

      v190 = v75;

      v76 = [MEMORY[0x277CFE298] nowPlayingStream];
      v250[0] = v76;
      v77 = [MEMORY[0x277CFE298] appUsageStream];
      v250[1] = v77;
      v78 = [MEMORY[0x277CFE298] microLocationVisitStream];
      v250[2] = v78;
      v79 = [MEMORY[0x277CFE298] airplayPredictionStream];
      v250[3] = v79;
      v186 = [MEMORY[0x277CBEA60] arrayWithObjects:v250 count:4];

      v185 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
      v80 = MEMORY[0x277CFE260];
      v81 = [MEMORY[0x277CFE298] appUsageStream];
      v82 = [v81 name];
      v83 = [v80 predicateForEventsWithStreamName:v82];

      v84 = MEMORY[0x277CFE260];
      v85 = [MEMORY[0x277CFE298] nowPlayingStream];
      v86 = [v85 name];
      v87 = [v84 predicateForEventsWithStreamName:v86];

      v88 = MEMORY[0x277CFE260];
      v89 = [MEMORY[0x277CFE248] playing];
      v90 = [v88 predicateForObjectsWithMetadataKey:v89 andIntegerValue:1];

      v91 = [MEMORY[0x277CFE260] predicateForEventsWithMinimumDuration:30.0];
      v92 = MEMORY[0x277CCA920];
      v181 = v90;
      v182 = v87;
      v249[0] = v87;
      v180 = v91;
      v249[1] = v91;
      v249[2] = v90;
      v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v249 count:3];
      v94 = [v92 andPredicateWithSubpredicates:v93];

      v95 = MEMORY[0x277CCA920];
      v183 = v83;
      v248[0] = v83;
      v179 = v94;
      v248[1] = v94;
      v96 = [MEMORY[0x277CBEA60] arrayWithObjects:v248 count:2];
      v97 = [v95 orPredicateWithSubpredicates:v96];

      v98 = [MEMORY[0x277CFE260] predicateForEventsWithStringValueInValues:v189];
      v99 = MEMORY[0x277CCA920];
      v177 = v98;
      v178 = v97;
      v247[0] = v97;
      v247[1] = v98;
      v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v247 count:2];
      v101 = [v99 andPredicateWithSubpredicates:v100];

      v102 = MEMORY[0x277CFE260];
      v103 = [MEMORY[0x277CFE298] microLocationVisitStream];
      v104 = [v103 name];
      v105 = [v102 predicateForEventsWithStreamName:v104];

      v106 = MEMORY[0x277CFE260];
      v107 = [MEMORY[0x277CFE298] airplayPredictionStream];
      v108 = [v107 name];
      v109 = [v106 predicateForEventsWithStreamName:v108];

      v110 = MEMORY[0x277CCA920];
      v175 = v105;
      v246[0] = v105;
      v246[1] = v109;
      v176 = v101;
      v246[2] = v101;
      v111 = [MEMORY[0x277CBEA60] arrayWithObjects:v246 count:3];
      v197 = [v110 orPredicateWithSubpredicates:v111];

      v112 = MEMORY[0x277CFE1E0];
      v245 = v185;
      v113 = [MEMORY[0x277CBEA60] arrayWithObjects:&v245 count:1];
      v114 = [v112 eventQueryWithPredicate:0 eventStreams:v186 offset:0 limit:512 sortDescriptors:v113];

      v115 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPFeedback.m"];
      v116 = [v115 stringByAppendingFormat:@":%d", 476];
      [v114 setClientName:v116];

      v195 = v114;
      [v114 setTracker:&__block_literal_global_207];
      v235 = 0u;
      v236 = 0u;
      v233 = 0u;
      v234 = 0u;
      v184 = v74;
      obj = v74;
      v200 = [obj countByEnumeratingWithState:&v233 objects:v244 count:16];
      if (v200)
      {
        v224 = 0;
        v193 = *v234;
        do
        {
          v117 = 0;
          do
          {
            if (*v234 != v193)
            {
              objc_enumerationMutation(obj);
            }

            v214 = v117;
            v118 = *(*(&v233 + 1) + 8 * v117);
            contexta = objc_autoreleasePoolPush();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              v151 = [v190 stringFromDateInterval:v118];
              LODWORD(state.opaque[0]) = 138412290;
              *(state.opaque + 4) = v151;
              _os_log_debug_impl(&dword_23EB15000, v31, OS_LOG_TYPE_DEBUG, "Collecting analytics events in interval %@", &state, 0xCu);
            }

            v119 = MEMORY[0x277CFE260];
            v120 = [v118 startDate];
            v121 = [v118 endDate];
            v122 = [v119 predicateForEventsWithStartAndEndInDateRangeFrom:v120 to:v121];

            v123 = MEMORY[0x277CCA920];
            v210 = v122;
            v243[0] = v122;
            v243[1] = v197;
            v124 = [MEMORY[0x277CBEA60] arrayWithObjects:v243 count:2];
            v125 = [v123 andPredicateWithSubpredicates:v124];
            [v195 setPredicate:v125];

            v232 = 0;
            v222 = [v198 executeQuery:v195 error:&v232];
            v208 = v232;
            v126 = MEMORY[0x277CCAC30];
            v127 = [MEMORY[0x277CFE298] appUsageStream];
            v128 = [v127 name];
            v129 = [v126 predicateWithFormat:@"stream.name == %@", v128];
            v219 = [v222 filteredArrayUsingPredicate:v129];

            v130 = MEMORY[0x277CCAC30];
            v131 = [MEMORY[0x277CFE298] nowPlayingStream];
            v132 = [v131 name];
            v133 = [v130 predicateWithFormat:@"stream.name == %@", v132];
            v216 = [v222 filteredArrayUsingPredicate:v133];

            v134 = MEMORY[0x277CCAC30];
            v135 = [MEMORY[0x277CFE298] microLocationVisitStream];
            v136 = [v135 name];
            v137 = [v134 predicateWithFormat:@"stream.name == %@", v136];
            v138 = [v222 filteredArrayUsingPredicate:v137];

            v139 = MEMORY[0x277CCAC30];
            v140 = [MEMORY[0x277CFE298] airplayPredictionStream];
            v141 = [v140 name];
            v142 = [v139 predicateWithFormat:@"stream.name == %@", v141];
            v143 = [v222 filteredArrayUsingPredicate:v142];

            v204 = v143;
            v206 = v138;
            v144 = [ARPAnalyticsEvent feedbackEventsFromAppUsageEvents:v219 playingEvents:v216 microLocationEvents:v138 feedbackEvents:v143];
            v228 = 0u;
            v229 = 0u;
            v230 = 0u;
            v231 = 0u;
            v202 = v144;
            v145 = [v144 valueForKey:@"analyticsDictionary"];
            v146 = [v145 countByEnumeratingWithState:&v228 objects:v242 count:16];
            if (v146)
            {
              v147 = v146;
              v148 = *v229;
              do
              {
                for (k = 0; k != v147; ++k)
                {
                  if (*v229 != v148)
                  {
                    objc_enumerationMutation(v145);
                  }

                  v150 = *(*(&v228 + 1) + 8 * k);
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                  {
                    LODWORD(state.opaque[0]) = 138412290;
                    *(state.opaque + 4) = v150;
                    _os_log_impl(&dword_23EB15000, v31, OS_LOG_TYPE_INFO, "Sending analytics event: %@", &state, 0xCu);
                  }

                  AnalyticsSendEvent();
                }

                v224 += v147;
                v147 = [v145 countByEnumeratingWithState:&v228 objects:v242 count:16];
              }

              while (v147);
            }

            objc_autoreleasePoolPop(contexta);
            v117 = v214 + 1;
          }

          while (v214 + 1 != v200);
          v200 = [obj countByEnumeratingWithState:&v233 objects:v244 count:16];
        }

        while (v200);
      }

      else
      {
        v224 = 0;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        ARPCollectAndSendAnalyticsEvents_cold_5(v224, v31);
      }

      v4 = v188;
      v23 = v189;
      v74 = v184;
      v31 = v190;
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      ARPCollectAndSendAnalyticsEvents_cold_6(v31);
    }

    v3 = v187;
    goto LABEL_64;
  }

  v23 = ARPFeedbackLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_log_impl(&dword_23EB15000, v23, OS_LOG_TYPE_INFO, "Skipping analytics event collection because event is not used", &state, 2u);
  }

LABEL_64:

  v163 = *MEMORY[0x277D85DE8];
}

uint64_t HomeKitLibraryCore()
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = HomeKitLibraryCore_frameworkLibrary;
  v6 = HomeKitLibraryCore_frameworkLibrary;
  if (!HomeKitLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_278C648F0;
    v8 = *off_278C64900;
    v9 = 0;
    v4[3] = _sl_dlopen();
    HomeKitLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_23EB260D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __HomeKitLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  HomeKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t HomeKitLibrary()
{
  v0 = HomeKitLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getHMServiceTypeMicrophoneSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeMicrophoneSymbolLoc_ptr;
  v6 = getHMServiceTypeMicrophoneSymbolLoc_ptr;
  if (!getHMServiceTypeMicrophoneSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeMicrophone");
    getHMServiceTypeMicrophoneSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB262B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeMicrophoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeMicrophone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeMicrophoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getHMServiceTypeSpeakerSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeSpeakerSymbolLoc_ptr;
  v6 = getHMServiceTypeSpeakerSymbolLoc_ptr;
  if (!getHMServiceTypeSpeakerSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeSpeaker");
    getHMServiceTypeSpeakerSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB263F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeSpeakerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeSpeaker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeSpeakerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getHMServiceTypeDoorbellSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeDoorbellSymbolLoc_ptr;
  v6 = getHMServiceTypeDoorbellSymbolLoc_ptr;
  if (!getHMServiceTypeDoorbellSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeDoorbell");
    getHMServiceTypeDoorbellSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB26530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeDoorbellSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeDoorbell");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeDoorbellSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getHMServiceTypeTemperatureSensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeTemperatureSensorSymbolLoc_ptr;
  v6 = getHMServiceTypeTemperatureSensorSymbolLoc_ptr;
  if (!getHMServiceTypeTemperatureSensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeTemperatureSensor");
    getHMServiceTypeTemperatureSensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB2666C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeTemperatureSensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeTemperatureSensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeTemperatureSensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeTemperatureSensor()
{
  HMServiceTypeTemperatureSensorSymbolLoc = getHMServiceTypeTemperatureSensorSymbolLoc();
  if (!HMServiceTypeTemperatureSensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeTemperatureSensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeAirQualitySensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeAirQualitySensorSymbolLoc_ptr;
  v6 = getHMServiceTypeAirQualitySensorSymbolLoc_ptr;
  if (!getHMServiceTypeAirQualitySensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeAirQualitySensor");
    getHMServiceTypeAirQualitySensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB267DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeAirQualitySensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeAirQualitySensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeAirQualitySensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeAirQualitySensor()
{
  HMServiceTypeAirQualitySensorSymbolLoc = getHMServiceTypeAirQualitySensorSymbolLoc();
  if (!HMServiceTypeAirQualitySensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeAirQualitySensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeHumiditySensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeHumiditySensorSymbolLoc_ptr;
  v6 = getHMServiceTypeHumiditySensorSymbolLoc_ptr;
  if (!getHMServiceTypeHumiditySensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeHumiditySensor");
    getHMServiceTypeHumiditySensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB2694C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeHumiditySensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeHumiditySensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeHumiditySensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeHumiditySensor()
{
  HMServiceTypeHumiditySensorSymbolLoc = getHMServiceTypeHumiditySensorSymbolLoc();
  if (!HMServiceTypeHumiditySensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeHumiditySensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeCarbonMonoxideSensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeCarbonMonoxideSensorSymbolLoc_ptr;
  v6 = getHMServiceTypeCarbonMonoxideSensorSymbolLoc_ptr;
  if (!getHMServiceTypeCarbonMonoxideSensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeCarbonMonoxideSensor");
    getHMServiceTypeCarbonMonoxideSensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB26ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeCarbonMonoxideSensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeCarbonMonoxideSensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeCarbonMonoxideSensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeCarbonMonoxideSensor()
{
  HMServiceTypeCarbonMonoxideSensorSymbolLoc = getHMServiceTypeCarbonMonoxideSensorSymbolLoc();
  if (!HMServiceTypeCarbonMonoxideSensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeCarbonMonoxideSensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeContactSensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeContactSensorSymbolLoc_ptr;
  v6 = getHMServiceTypeContactSensorSymbolLoc_ptr;
  if (!getHMServiceTypeContactSensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeContactSensor");
    getHMServiceTypeContactSensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB26C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeContactSensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeContactSensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeContactSensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeContactSensor()
{
  HMServiceTypeContactSensorSymbolLoc = getHMServiceTypeContactSensorSymbolLoc();
  if (!HMServiceTypeContactSensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeContactSensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeLeakSensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeLeakSensorSymbolLoc_ptr;
  v6 = getHMServiceTypeLeakSensorSymbolLoc_ptr;
  if (!getHMServiceTypeLeakSensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeLeakSensor");
    getHMServiceTypeLeakSensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB26D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeLeakSensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeLeakSensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeLeakSensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeLeakSensor()
{
  HMServiceTypeLeakSensorSymbolLoc = getHMServiceTypeLeakSensorSymbolLoc();
  if (!HMServiceTypeLeakSensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeLeakSensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeLightSensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeLightSensorSymbolLoc_ptr;
  v6 = getHMServiceTypeLightSensorSymbolLoc_ptr;
  if (!getHMServiceTypeLightSensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeLightSensor");
    getHMServiceTypeLightSensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB26F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeLightSensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeLightSensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeLightSensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeLightSensor()
{
  HMServiceTypeLightSensorSymbolLoc = getHMServiceTypeLightSensorSymbolLoc();
  if (!HMServiceTypeLightSensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeLightSensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeMotionSensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeMotionSensorSymbolLoc_ptr;
  v6 = getHMServiceTypeMotionSensorSymbolLoc_ptr;
  if (!getHMServiceTypeMotionSensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeMotionSensor");
    getHMServiceTypeMotionSensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB2707C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeMotionSensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeMotionSensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeMotionSensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeMotionSensor()
{
  HMServiceTypeMotionSensorSymbolLoc = getHMServiceTypeMotionSensorSymbolLoc();
  if (!HMServiceTypeMotionSensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeMotionSensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeOccupancySensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeOccupancySensorSymbolLoc_ptr;
  v6 = getHMServiceTypeOccupancySensorSymbolLoc_ptr;
  if (!getHMServiceTypeOccupancySensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeOccupancySensor");
    getHMServiceTypeOccupancySensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB271EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeOccupancySensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeOccupancySensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeOccupancySensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeOccupancySensor()
{
  HMServiceTypeOccupancySensorSymbolLoc = getHMServiceTypeOccupancySensorSymbolLoc();
  if (!HMServiceTypeOccupancySensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeOccupancySensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeSmokeSensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeSmokeSensorSymbolLoc_ptr;
  v6 = getHMServiceTypeSmokeSensorSymbolLoc_ptr;
  if (!getHMServiceTypeSmokeSensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeSmokeSensor");
    getHMServiceTypeSmokeSensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB2735C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeSmokeSensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeSmokeSensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeSmokeSensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeSmokeSensor()
{
  HMServiceTypeSmokeSensorSymbolLoc = getHMServiceTypeSmokeSensorSymbolLoc();
  if (!HMServiceTypeSmokeSensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeSmokeSensorSymbolLoc;

  return v1;
}

uint64_t getHMServiceTypeCarbonDioxideSensorSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getHMServiceTypeCarbonDioxideSensorSymbolLoc_ptr;
  v6 = getHMServiceTypeCarbonDioxideSensorSymbolLoc_ptr;
  if (!getHMServiceTypeCarbonDioxideSensorSymbolLoc_ptr)
  {
    v1 = HomeKitLibrary();
    v4[3] = dlsym(v1, "HMServiceTypeCarbonDioxideSensor");
    getHMServiceTypeCarbonDioxideSensorSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23EB274CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMServiceTypeCarbonDioxideSensorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMServiceTypeCarbonDioxideSensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMServiceTypeCarbonDioxideSensorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getHMServiceTypeCarbonDioxideSensor()
{
  HMServiceTypeCarbonDioxideSensorSymbolLoc = getHMServiceTypeCarbonDioxideSensorSymbolLoc();
  if (!HMServiceTypeCarbonDioxideSensorSymbolLoc)
  {
    getHMServiceTypeMicrophone_cold_1();
  }

  v1 = *HMServiceTypeCarbonDioxideSensorSymbolLoc;

  return v1;
}

uint64_t BiomeStreamsLibraryCore()
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = BiomeStreamsLibraryCore_frameworkLibrary;
  v6 = BiomeStreamsLibraryCore_frameworkLibrary;
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_278C64968;
    v8 = *off_278C64978;
    v9 = 0;
    v4[3] = _sl_dlopen();
    BiomeStreamsLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_23EB2767C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __BiomeStreamsLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  BiomeStreamsLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BiomeStreamsLibrary()
{
  v0 = BiomeStreamsLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

id getBMHomeKitClientAccessoryControlEventClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMHomeKitClientAccessoryControlEventClass_softClass;
  v6 = getBMHomeKitClientAccessoryControlEventClass_softClass;
  if (!getBMHomeKitClientAccessoryControlEventClass_softClass)
  {
    BiomeStreamsLibraryCore();
    v4[3] = objc_getClass("BMHomeKitClientAccessoryControlEvent");
    getBMHomeKitClientAccessoryControlEventClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB27878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMHomeKitClientAccessoryControlEventClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore();
  result = objc_getClass("BMHomeKitClientAccessoryControlEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMHomeKitClientAccessoryControlEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getBMHomeKitClientActionSetEventClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMHomeKitClientActionSetEventClass_softClass;
  v6 = getBMHomeKitClientActionSetEventClass_softClass;
  if (!getBMHomeKitClientActionSetEventClass_softClass)
  {
    BiomeStreamsLibraryCore();
    v4[3] = objc_getClass("BMHomeKitClientActionSetEvent");
    getBMHomeKitClientActionSetEventClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB279D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMHomeKitClientActionSetEventClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore();
  result = objc_getClass("BMHomeKitClientActionSetEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMHomeKitClientActionSetEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getBMHomeKitClientMediaAccessoryControlEventClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMHomeKitClientMediaAccessoryControlEventClass_softClass;
  v6 = getBMHomeKitClientMediaAccessoryControlEventClass_softClass;
  if (!getBMHomeKitClientMediaAccessoryControlEventClass_softClass)
  {
    BiomeStreamsLibraryCore();
    v4[3] = objc_getClass("BMHomeKitClientMediaAccessoryControlEvent");
    getBMHomeKitClientMediaAccessoryControlEventClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB27B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMHomeKitClientMediaAccessoryControlEventClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore();
  result = objc_getClass("BMHomeKitClientMediaAccessoryControlEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMHomeKitClientMediaAccessoryControlEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMHomeKitClientAccessoryControlStreamClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore();
  result = objc_getClass("BMHomeKitClientAccessoryControlStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMHomeKitClientAccessoryControlStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMHomeKitClientActionSetStreamClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore();
  result = objc_getClass("BMHomeKitClientActionSetStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMHomeKitClientActionSetStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMHomeKitClientMediaAccessoryControlStreamClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore();
  result = objc_getClass("BMHomeKitClientMediaAccessoryControlStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMHomeKitClientMediaAccessoryControlStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMBiomeSchedulerClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore();
  result = objc_getClass("BMBiomeScheduler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMBiomeSchedulerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBMStreamsClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore();
  result = objc_getClass("BMStreams");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMStreamsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getBMDKEventStreamClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getBMDKEventStreamClass_softClass;
  v6 = getBMDKEventStreamClass_softClass;
  if (!getBMDKEventStreamClass_softClass)
  {
    BiomeStreamsLibraryCore();
    v4[3] = objc_getClass("BMDKEventStream");
    getBMDKEventStreamClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_23EB27E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMDKEventStreamClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibraryCore();
  result = objc_getClass("BMDKEventStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMDKEventStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaExperienceLibraryCore()
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = MediaExperienceLibraryCore_frameworkLibrary;
  v6 = MediaExperienceLibraryCore_frameworkLibrary;
  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_278C64990;
    v8 = *off_278C649A0;
    v9 = 0;
    v4[3] = _sl_dlopen();
    MediaExperienceLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_23EB27FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaExperienceLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  MediaExperienceLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MediaExperienceLibrary()
{
  v0 = MediaExperienceLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

Class __getAVSystemControllerClass_block_invoke(uint64_t a1)
{
  MediaExperienceLibraryCore();
  result = objc_getClass("AVSystemController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __ARPDonateFeedbackToKnowledgeStore_block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23EB15000, v0, v1, "Error donating airplay prediction feedback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ARPCollectAndSendAnalyticsEvents_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_23EB15000, v0, OS_LOG_TYPE_DEBUG, "Collecting analytics events from long form video bundleIDs: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void ARPCollectAndSendAnalyticsEvents_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23EB15000, v0, v1, "Error fetching long form video date intervals from knowledge store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ARPCollectAndSendAnalyticsEvents_cold_4(void *a1, void *a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v7 = [a1 firstObject];
  v8 = [v7 startDate];
  v9 = [a1 lastObject];
  v10 = [v9 endDate];
  v11 = [a2 stringFromDate:v8 toDate:v10];
  v13 = 138412546;
  v14 = v6;
  v15 = 2112;
  v16 = v11;
  _os_log_debug_impl(&dword_23EB15000, a3, OS_LOG_TYPE_DEBUG, "Collecting analytics events from %@ date intervals spanning %@", &v13, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void ARPCollectAndSendAnalyticsEvents_cold_5(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_23EB15000, a2, OS_LOG_TYPE_DEBUG, "Finished sending %@ analytics events", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void getHMServiceTypeMicrophone_cold_1()
{
  dlerror();
  abort_report_np();
  AnalyticsIsEventUsed();
}