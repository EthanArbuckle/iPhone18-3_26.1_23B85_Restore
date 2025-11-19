void sub_23DA02410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&a20);
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 112));
  _Unwind_Resume(a1);
}

void sub_23DA05B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DA05CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DA05E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCACSpokenCommandPresentationClass_block_invoke(uint64_t a1)
{
  SpeechRecognitionCommandAndControlLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CACSpokenCommandPresentation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCACSpokenCommandPresentationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCACSpokenCommandPresentationClass_block_invoke_cold_1();
    SpeechRecognitionCommandAndControlLibrary();
  }
}

void SpeechRecognitionCommandAndControlLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!SpeechRecognitionCommandAndControlLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __SpeechRecognitionCommandAndControlLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278BF0378;
    v4 = 0;
    SpeechRecognitionCommandAndControlLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!SpeechRecognitionCommandAndControlLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __SpeechRecognitionCommandAndControlLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpeechRecognitionCommandAndControlLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCACLocaleUtilitiesClass_block_invoke(uint64_t a1)
{
  SpeechRecognitionCommandAndControlLibrary();
  result = objc_getClass("CACLocaleUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCACLocaleUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCACLocaleUtilitiesClass_block_invoke_cold_1();
    return __getCACPreferencesClass_block_invoke(v3);
  }

  return result;
}

Class __getCACPreferencesClass_block_invoke(uint64_t a1)
{
  SpeechRecognitionCommandAndControlLibrary();
  result = objc_getClass("CACPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCACPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCACPreferencesClass_block_invoke_cold_1();
    return [(AXSSDocument *)v3 documentWithText:v4, v5];
  }

  return result;
}

void sub_23DA0692C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _CheckNodeWord(void *a1, void *a2, void *a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v64 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v46 = a2;
  v45 = a3;
  v44 = a6;
  v14 = a9;
  v38 = objc_opt_new();
  +[AXSSDocumentTextRulesetManager sharedManager];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v33 = v60 = 0u;
  obj = [v33 rulesets];
  v36 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v36)
  {
    v35 = *v58;
    do
    {
      v15 = 0;
      do
      {
        if (*v58 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v15;
        v16 = [*(*(&v57 + 1) + 8 * v15) rulesForGranularity:1];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v40 = v16;
        v47 = [v16 countByEnumeratingWithState:&v53 objects:v62 count:16];
        if (v47)
        {
          v17 = *v54;
          v39 = *v54;
          do
          {
            for (i = 0; i != v47; ++i)
            {
              if (*v54 != v17)
              {
                objc_enumerationMutation(v40);
              }

              v19 = *(*(&v53 + 1) + 8 * i);
              v20 = [v14 objectForKeyedSubscript:v19];
              v21 = v20;
              if (v20)
              {
                if (a4 <= [v20 integerValue])
                {
                  goto LABEL_26;
                }

                [v14 setObject:0 forKeyedSubscript:v19];
              }

              v52 = 0x7FFFFFFFFFFFFFFFLL;
              v22 = [v19 issuesForWord:v45 atRange:a4 previousWord:a5 previousWordRange:v44 inText:a7 ignoreRuleUntilIndex:{a8, v46, &v52}];
              if (v52 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v23 = [MEMORY[0x277CCABB0] numberWithInteger:?];
                [v14 setObject:v23 forKeyedSubscript:v19];
              }

              if ([v22 count])
              {
                v24 = v14;
                v25 = a4;
                v50 = 0u;
                v51 = 0u;
                v48 = 0u;
                v49 = 0u;
                v26 = v22;
                v27 = [v26 countByEnumeratingWithState:&v48 objects:v61 count:16];
                if (v27)
                {
                  v28 = v27;
                  v29 = *v49;
                  do
                  {
                    for (j = 0; j != v28; ++j)
                    {
                      if (*v49 != v29)
                      {
                        objc_enumerationMutation(v26);
                      }

                      [*(*(&v48 + 1) + 8 * j) setNode:v13];
                    }

                    v28 = [v26 countByEnumeratingWithState:&v48 objects:v61 count:16];
                  }

                  while (v28);
                }

                [v38 addObjectsFromArray:v26];
                a4 = v25;
                v14 = v24;
                v17 = v39;
              }

LABEL_26:
            }

            v47 = [v40 countByEnumeratingWithState:&v53 objects:v62 count:16];
          }

          while (v47);
        }

        v15 = v37 + 1;
      }

      while (v37 + 1 != v36);
      v36 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v36);
  }

  v31 = *MEMORY[0x277D85DE8];

  return v38;
}

id AXDocumentConsoleString(void *a1)
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"\t" withString:@"\\t"];

  return v2;
}

uint64_t AXSSDeviceHasHomeButton()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAXDeviceHasHomeButtonSymbolLoc_ptr;
  v7 = getAXDeviceHasHomeButtonSymbolLoc_ptr;
  if (!getAXDeviceHasHomeButtonSymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAXDeviceHasHomeButtonSymbolLoc_block_invoke;
    v3[3] = &unk_278BF0358;
    v3[4] = &v4;
    __getAXDeviceHasHomeButtonSymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    HasHomeButton_cold_1 = AXSSDeviceHasHomeButton_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(HasHomeButton_cold_1);
  }

  return v0();
}

void *__getAXDeviceHasHomeButtonSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278BF03F8;
    v8 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
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

  v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AXDeviceHasHomeButton");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXDeviceHasHomeButtonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AXDeviceTemplateType()
{
  v0 = NSClassFromString(&cfstr_Obdevice.isa);
  if (v0)
  {
    v1 = v0;
    if (objc_opt_respondsToSelector())
    {
      v2 = [(objc_class *)v1 currentDevice];
      if (objc_opt_respondsToSelector())
      {
        v3 = [v2 templateType];

        return v3;
      }

      v19 = AXLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        AXDeviceTemplateType_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }

    else
    {
      v2 = AXLogCommon();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        AXDeviceTemplateType_cold_1(v2, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      AXDeviceTemplateType_cold_3(v2, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return 0;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_23DA08144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getAXVoiceOverServerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXVoiceOverServerClass_softClass;
  v7 = getAXVoiceOverServerClass_softClass;
  if (!getAXVoiceOverServerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAXVoiceOverServerClass_block_invoke;
    v3[3] = &unk_278BF0358;
    v3[4] = &v4;
    __getAXVoiceOverServerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23DA0B5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _updateSpeakingRateNotification()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"AXVOTTrainingSpeakingRateSwiftNotification" object:0];
}

id getAXTeachableMomentsManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXTeachableMomentsManagerClass_softClass;
  v7 = getAXTeachableMomentsManagerClass_softClass;
  if (!getAXTeachableMomentsManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAXTeachableMomentsManagerClass_block_invoke;
    v3[3] = &unk_278BF0358;
    v3[4] = &v4;
    __getAXTeachableMomentsManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23DA0B920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAXTeachableFeatureBraille()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAXTeachableFeatureBrailleSymbolLoc_ptr;
  v8 = getAXTeachableFeatureBrailleSymbolLoc_ptr;
  if (!getAXTeachableFeatureBrailleSymbolLoc_ptr)
  {
    v1 = AccessibilityUtilitiesLibrary();
    v6[3] = dlsym(v1, "AXTeachableFeatureBraille");
    getAXTeachableFeatureBrailleSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    HasHomeButton_cold_1 = AXSSDeviceHasHomeButton_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(HasHomeButton_cold_1);
  }

  v2 = *v0;

  return v2;
}

id getAXTeachableFeatureVoiceOver()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAXTeachableFeatureVoiceOverSymbolLoc_ptr;
  v8 = getAXTeachableFeatureVoiceOverSymbolLoc_ptr;
  if (!getAXTeachableFeatureVoiceOverSymbolLoc_ptr)
  {
    v1 = AccessibilityUtilitiesLibrary();
    v6[3] = dlsym(v1, "AXTeachableFeatureVoiceOver");
    getAXTeachableFeatureVoiceOverSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    HasHomeButton_cold_1 = AXSSDeviceHasHomeButton_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(HasHomeButton_cold_1);
  }

  v2 = *v0;

  return v2;
}

Class __getAXVoiceOverServerClass_block_invoke(uint64_t a1)
{
  AccessibilityUtilitiesLibrary();
  result = objc_getClass("AXVoiceOverServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXVoiceOverServerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAXVoiceOverServerClass_block_invoke_cold_1();
    return AccessibilityUtilitiesLibrary();
  }

  return result;
}

uint64_t AccessibilityUtilitiesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278BF04F8;
    v6 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_0;
  v1 = v4[0];
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
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

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getAXTeachableMomentsManagerClass_block_invoke(uint64_t a1)
{
  AccessibilityUtilitiesLibrary();
  result = objc_getClass("AXTeachableMomentsManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXTeachableMomentsManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAXTeachableMomentsManagerClass_block_invoke_cold_1();
    return __getAXTeachableFeatureBrailleSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getAXTeachableFeatureBrailleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXTeachableFeatureBraille");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXTeachableFeatureBrailleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXTeachableFeatureVoiceOverSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXTeachableFeatureVoiceOver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXTeachableFeatureVoiceOverSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXDeviceHasHomeButtonSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXDeviceHasHomeButton");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXDeviceHasHomeButtonSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_23DA0C3E0()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport12SpeakingRate__currentSpeakingRate;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23DA0C488@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SpeakingRate();
  result = sub_23DB6EE6C();
  *a1 = result;
  return result;
}

uint64_t sub_23DA0C4C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for SpeakingRate();
  result = sub_23DB70CFC();
  *a1 = result;
  return result;
}

uint64_t sub_23DA0C50C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_23DA0C684(v1, &v14);
  v12 = v14;
  v4 = v15;
  v5 = v16;
  v6 = v17;
  v19 = *(v1 + 16);
  v7 = *(&v19 + 1);
  type metadata accessor for NavigationModel();
  sub_23DA0CC28(&unk_27E2FE800, type metadata accessor for NavigationModel);
  v8 = sub_23DB6EE5C();
  v14 = *v2;
  v18 = v2[2];
  v9 = swift_allocObject();
  v10 = v2[1];
  v9[1] = *v2;
  v9[2] = v10;
  v9[3] = v2[2];
  *a1 = v12;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v8;
  *(a1 + 48) = v7;
  *(a1 + 56) = sub_23DA0E2AC;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;

  sub_23DA0E2B4(&v19, v13, &qword_27E2FBD38, &qword_23DB73740);
  sub_23DA0E2B4(&v14, v13, &qword_27E2FBD40, &qword_23DB73748);
  return sub_23DA0E2B4(&v18, v13, &qword_27E2FBD48, &qword_23DB73750);
}

void sub_23DA0C684(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  type metadata accessor for NavigationModel();
  sub_23DA0CC28(&unk_27E2FE800, type metadata accessor for NavigationModel);

  v4 = sub_23DB6F39C();
  v6 = v5;
  KeyPath = swift_getKeyPath();
  v8 = [objc_opt_self() mainScreen];
  [v8 bounds];
  v10 = v9;

  if (v10 >= 850.0)
  {
    v12 = [objc_opt_self() currentDevice];
    v13 = [v12 userInterfaceIdiom];

    v11 = v13 == 0;
  }

  else
  {
    v11 = 1;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v11;
}

uint64_t sub_23DA0C7D8()
{
  sub_23DA0E324();
  sub_23DB6F56C();
  return v1;
}

uint64_t sub_23DA0C814(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 8);
  swift_beginAccess();
  swift_weakAssign();
  NavigationModel.goHome()();
  type metadata accessor for AXOnboardingModelVoiceOverIOS();
  if (swift_dynamicCastClass() || (type metadata accessor for AXOnboardingModelVoiceOverMac(), (result = swift_dynamicCastClass()) != 0))
  {
    result = [objc_opt_self() voTutorialUsageConfirmed];
    if ((result & 1) == 0)
    {
      v4 = 0;
      return sub_23DABB0B8(&v4);
    }
  }

  return result;
}

uint64_t sub_23DA0C8F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_23DA0C50C(a1);
}

uint64_t sub_23DA0C92C()
{
  v0 = sub_23DB6FA6C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DB6FA5C();
  v5 = type metadata accessor for NavigationModel();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_23DAC2518(v4, 0, 0);
}

uint64_t AXOnboardingPrimaryWindowContentView.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = sub_23DA0C92C;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = result;
  return result;
}

uint64_t AXOnboardingPrimaryWindowContentView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  type metadata accessor for NavigationModel();
  sub_23DA0CC28(&unk_27E2FE800, type metadata accessor for NavigationModel);
  sub_23DB6F06C();
  type metadata accessor for AXOnboardingModel();
  sub_23DA0CC28(&qword_27E2FBC50, type metadata accessor for AXOnboardingModel);

  v20 = sub_23DB6F1EC();
  v8 = v7;

  v9 = sub_23DB6F1EC();
  v11 = v10;
  v12 = objc_opt_self();
  [v12 getSpeakingRate];
  v13 = type metadata accessor for SpeakingRate();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  [v12 getSpeakingRate];
  sub_23DB70A8C();
  MEMORY[0x23EEF6D00](37, 0xE100000000000000);
  swift_beginAccess();
  sub_23DB6EECC();
  swift_endAccess();
  sub_23DA0CC28(&qword_27E2FBC60, type metadata accessor for SpeakingRate);
  v16 = sub_23DB6F1EC();
  v18 = v17;

  *a1 = v20;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v11;
  a1[4] = v16;
  a1[5] = v18;
  return result;
}

uint64_t sub_23DA0CC28(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for SpeakingRate()
{
  result = qword_27E2FBC78;
  if (!qword_27E2FBC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DA0CCBC@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  type metadata accessor for NavigationModel();
  sub_23DA0CC28(&unk_27E2FE800, type metadata accessor for NavigationModel);
  sub_23DB6F06C();
  type metadata accessor for AXOnboardingModel();
  sub_23DA0CC28(&qword_27E2FBC50, type metadata accessor for AXOnboardingModel);

  v20 = sub_23DB6F1EC();
  v8 = v7;

  v9 = sub_23DB6F1EC();
  v11 = v10;
  v12 = objc_opt_self();
  [v12 getSpeakingRate];
  v13 = type metadata accessor for SpeakingRate();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  [v12 getSpeakingRate];
  sub_23DB70A8C();
  MEMORY[0x23EEF6D00](37, 0xE100000000000000);
  swift_beginAccess();
  sub_23DB6EECC();
  swift_endAccess();
  sub_23DA0CC28(&qword_27E2FBC60, type metadata accessor for SpeakingRate);
  v16 = sub_23DB6F1EC();
  v18 = v17;

  *a1 = v20;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v11;
  a1[4] = v16;
  a1[5] = v18;
  return result;
}

uint64_t sub_23DA0CF1C(uint64_t *a1)
{
  v1 = *a1;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_23DB6F23C();
  }

  else
  {
    sub_23DB6F18C();
  }

  return sub_23DB6F2DC();
}

uint64_t sub_23DA0CF84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_23DB6F23C();
    sub_23DB6F2DC();
    sub_23DA0D078();
  }

  else
  {
    sub_23DB6F18C();
    sub_23DB6F2DC();
    sub_23DA0CC28(&qword_27E2FBC70, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_23DA0D078()
{
  result = qword_27E2FBC68;
  if (!qword_27E2FBC68)
  {
    sub_23DB6F23C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBC68);
  }

  return result;
}

uint64_t sub_23DA0D0C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v40 = a4;
  v41 = a5;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v42 = a7;
    v43 = a2;
    v44 = a6;
    v45 = a8;
    v46 = a9;
    v47 = a10;
    v17 = sub_23DB6F23C();
    v18 = *(v17 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v17, v20);
    v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      v39 = v10;
      sub_23DB70CEC();

      strcpy(v49, "View.task @ ");
      BYTE5(v49[1]) = 0;
      HIWORD(v49[1]) = -5120;
      MEMORY[0x23EEF6D00](a3, v40);
      MEMORY[0x23EEF6D00](58, 0xE100000000000000);
      v48 = v41;
      v32 = sub_23DB70D9C();
      MEMORY[0x23EEF6D00](v32);
    }

    v33 = sub_23DB70A6C();
    v34 = *(*(v33 - 8) + 64);
    v36 = MEMORY[0x28223BE20](v33, v35);
    (*(v38 + 16))(&v39 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v36);

    sub_23DB6F22C();
    MEMORY[0x23EEF6430](v22, v46, v17, v47);

    return (*(v18 + 8))(v22, v17);
  }

  else
  {
    v23 = sub_23DB6F18C();
    v24 = *(*(v23 - 8) + 64);
    MEMORY[0x28223BE20](v23, v25);
    v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = *(v28 + 20);
    v30 = sub_23DB70A6C();
    (*(*(v30 - 8) + 16))(&v27[v29], a2, v30);
    *v27 = a6;
    *(v27 + 1) = a7;
    MEMORY[0x23EEF6430](v27, a9, v23, a10);
    return sub_23DA0D42C(v27);
  }
}

uint64_t sub_23DA0D42C(uint64_t a1)
{
  v2 = sub_23DB6F18C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DA0D488(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23DB6F9AC();

    return sub_23DB6F2DC();
  }

  else
  {
    sub_23DB6F33C();
    swift_getWitnessTable();
    sub_23DB6F86C();
    sub_23DB6F2DC();
    sub_23DB70B7C();
    swift_getWitnessTable();
    sub_23DB6F33C();
    swift_getWitnessTable();
    sub_23DB6F86C();
    return sub_23DB6F2DC();
  }
}

uint64_t sub_23DA0D5EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23DB6F9AC();
    sub_23DB6F2DC();
  }

  else
  {
    sub_23DB6F33C();
    swift_getWitnessTable();
    sub_23DB6F86C();
    sub_23DB6F2DC();
    sub_23DB70B7C();
    swift_getWitnessTable();
    sub_23DB6F33C();
    swift_getWitnessTable();
    sub_23DB6F86C();
    sub_23DB6F2DC();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23DA0D7EC()
{
  v1 = *v0;
  sub_23DB70E0C();
  MEMORY[0x23EEF71C0](v1);
  return sub_23DB70E4C();
}

uint64_t sub_23DA0D860()
{
  v1 = *v0;
  sub_23DB70E0C();
  MEMORY[0x23EEF71C0](v1);
  return sub_23DB70E4C();
}

uint64_t sub_23DA0D8D0(uint64_t a1, id *a2)
{
  result = sub_23DB7089C();
  *a2 = 0;
  return result;
}

uint64_t sub_23DA0D948(uint64_t a1, id *a2)
{
  v3 = sub_23DB708AC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23DA0D9C8@<X0>(uint64_t *a1@<X8>)
{
  sub_23DB708BC();
  v2 = sub_23DB7087C();

  *a1 = v2;
  return result;
}

void *sub_23DA0DA20@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23DA0DA38@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23DB708BC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23DA0DA64(uint64_t a1)
{
  v2 = sub_23DA0CC28(&qword_27E2FBE30, type metadata accessor for Key);
  v3 = sub_23DA0CC28(&qword_27E2FBE38, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DA0DB20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23DB7087C();

  *a2 = v5;
  return result;
}

uint64_t sub_23DA0DB68(uint64_t a1)
{
  v2 = sub_23DA0CC28(&qword_27E2FBE20, type metadata accessor for UIAccessibilityPriority);
  v3 = sub_23DA0CC28(&qword_27E2FBE28, type metadata accessor for UIAccessibilityPriority);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DA0DC24()
{
  v1 = *v0;
  v2 = sub_23DB708BC();
  v3 = MEMORY[0x23EEF6D40](v2);

  return v3;
}

uint64_t sub_23DA0DC60()
{
  v1 = *v0;
  sub_23DB708BC();
  sub_23DB7091C();
}

uint64_t sub_23DA0DCB4()
{
  v1 = *v0;
  sub_23DB708BC();
  sub_23DB70E0C();
  sub_23DB7091C();
  v2 = sub_23DB70E4C();

  return v2;
}

uint64_t sub_23DA0DD28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23DB708BC();
  v6 = v5;
  if (v4 == sub_23DB708BC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23DB70DBC();
  }

  return v9 & 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_23DA0DE1C()
{
  sub_23DA0E4A4(319, &unk_27E2FBC88, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_23DA0DEF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DA0DF38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23DA0DF90()
{
  result = qword_27E2FBC98;
  if (!qword_27E2FBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBC98);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23DA0E098(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DA0E0E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DA0E174(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DA0E194(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_23DA0E264()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_23DA0E2B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_23DA0E324()
{
  result = qword_27E2FBD58;
  if (!qword_27E2FBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBD58);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23DA0E3E4(uint64_t a1, int a2)
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

uint64_t sub_23DA0E404(uint64_t result, int a2, int a3)
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

void sub_23DA0E4A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_23DA0E4F8()
{
  result = qword_27E2FBD88;
  if (!qword_27E2FBD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBD90, &qword_23DB73860);
    sub_23DA0E5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBD88);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23DA0E5CC()
{
  result = qword_27E2FBD98;
  if (!qword_27E2FBD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBDA0, &qword_23DB73868);
    sub_23DA0E670();
    sub_23DA0E7EC(&qword_27E2FBDE0, &qword_27E2FBDE8, &unk_23DB73888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBD98);
  }

  return result;
}

unint64_t sub_23DA0E670()
{
  result = qword_27E2FBDA8;
  if (!qword_27E2FBDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBDB0, &qword_23DB73870);
    sub_23DA0E6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBDA8);
  }

  return result;
}

unint64_t sub_23DA0E6F4()
{
  result = qword_27E2FBDB8;
  if (!qword_27E2FBDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBDC0, &qword_23DB73878);
    sub_23DA0E798();
    sub_23DA0E7EC(&qword_27E2FBDD0, &qword_27E2FBDD8, &qword_23DB73880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBDB8);
  }

  return result;
}

unint64_t sub_23DA0E798()
{
  result = qword_27E2FBDC8;
  if (!qword_27E2FBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBDC8);
  }

  return result;
}

uint64_t sub_23DA0E7EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23DA0EA38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23DB6F55C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (&v19 - v13);
  sub_23DA0E2B4(v2, &v19 - v13, &qword_27E2FBEF8, &qword_23DB73D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23DB6F25C();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_23DB70ACC();
    v18 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t BrailleUIVisualView.Line.init(braille:brailleSelection:caption:captionSelection:mathML:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  return result;
}

uint64_t sub_23DA0EC6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23DA0ECEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DA0ED68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t sub_23DA0EDE4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t (*sub_23DA0EE54(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA0EEF8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEB0, &qword_23DB73C30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEA8, &qword_23DB73C28);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA0F098(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEB0, &qword_23DB73C30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEA8, &qword_23DB73C28);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA0F1D0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEB0, &qword_23DB73C30);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__lines;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEA8, &qword_23DB73C28);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t sub_23DA0F340@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23DA0F3C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DA0F434()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t sub_23DA0F4B0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t (*sub_23DA0F520(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA0F5C4;
}

uint64_t sub_23DA0F5C8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC8, &qword_23DB73C88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA0F768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC8, &qword_23DB73C88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA0F8A0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC8, &qword_23DB73C88);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__focusedIndex;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA0FA10;
}

uint64_t (*sub_23DA0FA6C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA0FB10(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA0FCB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA0FDE8(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__isList;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t sub_23DA0FF6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23DA0FFFC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DA10080()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t sub_23DA10108()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t (*sub_23DA10174(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

void sub_23DA10218(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_23DA10280(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_23DB6EEDC();
  return swift_endAccess();
}

uint64_t sub_23DA102FC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA1049C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_23DB6EEDC();
  return swift_endAccess();
}

uint64_t sub_23DA10514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1064C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__isHidden;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

void sub_23DA107BC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_23DB6EEEC();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_23DB6EEEC();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t BrailleUIVisualView.VisualData.deinit()
{
  v1 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__lines;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEA8, &qword_23DB73C28);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__focusedIndex;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__isList;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__isHidden, v6);
  return v0;
}

uint64_t BrailleUIVisualView.VisualData.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__lines;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEA8, &qword_23DB73C28);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__focusedIndex;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__isList;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__isHidden, v6);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t sub_23DA10BC8()
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v26, v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEA8, &qword_23DB73C28);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v26 - v16;
  v18 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__lines;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2FC270, &unk_23DB74280);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23DB73BA0;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0xE000000000000000;
  *(v19 + 48) = 0;
  *(v19 + 56) = 0;
  *(v19 + 64) = 1;
  *(v19 + 72) = 0;
  *(v19 + 80) = 0xE000000000000000;
  *(v19 + 88) = 0;
  *(v19 + 96) = 0;
  *(v19 + 104) = 1;
  *(v19 + 112) = 0;
  *(v19 + 120) = 0;
  v27 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBFA0, &qword_23DB73EA8);
  sub_23DB6EECC();
  (*(v13 + 32))(v0 + v18, v17, v12);
  v20 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__focusedIndex;
  v27 = 0;
  sub_23DB6EECC();
  (*(v7 + 32))(v0 + v20, v11, v6);
  v21 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__isList;
  LOBYTE(v27) = 0;
  sub_23DB6EECC();
  v22 = *(v1 + 32);
  v23 = v26;
  v22(v0 + v21, v5, v26);
  v24 = OBJC_IVAR____TtCV28AccessibilitySharedUISupport19BrailleUIVisualView10VisualData__isHidden;
  LOBYTE(v27) = 0;
  sub_23DB6EECC();
  v22(v0 + v24, v5, v23);
  return v0;
}

uint64_t sub_23DA10EE0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BrailleUIVisualView.VisualData(0);
  result = sub_23DB6EE6C();
  *a1 = result;
  return result;
}

uint64_t BrailleUIVisualView.data.getter()
{
  v1 = *(v0 + *(type metadata accessor for BrailleUIVisualView(0) + 20) + 8);
}

uint64_t sub_23DA10F78(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for BrailleUIVisualView(0) + 20);
  v4 = *(v3 + 8);

  *(v3 + 8) = v2;
  return result;
}

uint64_t BrailleUIVisualView.data.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BrailleUIVisualView(0) + 20);
  v4 = *(v3 + 8);

  *(v3 + 8) = a1;
  return result;
}

uint64_t BrailleUIVisualView.$data.getter()
{
  v1 = (v0 + *(type metadata accessor for BrailleUIVisualView(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  type metadata accessor for BrailleUIVisualView.VisualData(0);
  sub_23DA16ED4(&qword_27E2FBEF0, type metadata accessor for BrailleUIVisualView.VisualData);

  return sub_23DB6F1FC();
}

uint64_t sub_23DA11110(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BrailleUIVisualView.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  swift_storeEnumTagMultiPayload();
  v2 = (a1 + *(type metadata accessor for BrailleUIVisualView(0) + 20));
  v3 = type metadata accessor for BrailleUIVisualView.VisualData(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_23DA10BC8();
  sub_23DA16ED4(&qword_27E2FBEF0, type metadata accessor for BrailleUIVisualView.VisualData);
  result = sub_23DB6F1EC();
  *v2 = result;
  v2[1] = v7;
  return result;
}

uint64_t BrailleUIVisualView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF00, &qword_23DB73D68);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v40[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF08, &qword_23DB73D70);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v40[-v12];
  v14 = *(v1 + *(type metadata accessor for BrailleUIVisualView(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  if (v40[15])
  {
    v15 = 1;
  }

  else
  {
    *v7 = sub_23DB6F68C();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF10, &qword_23DB73D78);
    sub_23DA11590(v1, &v7[*(v16 + 44)]);
    v17 = sub_23DB6FB5C();
    sub_23DB6EFAC();
    v18 = &v7[*(v3 + 36)];
    *v18 = v17;
    *(v18 + 1) = v19;
    *(v18 + 2) = v20;
    *(v18 + 3) = v21;
    *(v18 + 4) = v22;
    v18[40] = 0;
    sub_23DB705DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF18, &qword_23DB73D80);
    sub_23DA151B8();
    sub_23DA15270();
    sub_23DB700CC();
    sub_23DA17988(v7, &qword_27E2FBF00, &qword_23DB73D68);
    v23 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF50, &qword_23DB73D98) + 36)];
    sub_23DB705BC();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF48, &qword_23DB73D90);
    v25 = &v23[*(v24 + 52)];
    v26 = *(sub_23DB6F32C() + 20);
    v27 = *MEMORY[0x277CE0118];
    v28 = sub_23DB6F63C();
    (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
    __asm { FMOV            V0.2D, #25.0 }

    *v25 = _Q0;
    *&v23[*(v24 + 56)] = 256;
    LOBYTE(v23) = sub_23DB6FB3C();
    sub_23DB6EFAC();
    v34 = &v13[*(v8 + 36)];
    *v34 = v23;
    *(v34 + 1) = v35;
    *(v34 + 2) = v36;
    *(v34 + 3) = v37;
    *(v34 + 4) = v38;
    v34[40] = 0;
    sub_23DA17A54(v13, a1, &qword_27E2FBF08, &qword_23DB73D70);
    v15 = 0;
  }

  return (*(v9 + 56))(a1, v15, 1, v8);
}

void sub_23DA11590(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a1;
  v104 = a2;
  v2 = type metadata accessor for BrailleUIVisualView(0);
  v118 = *(v2 - 8);
  v3 = *(v118 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v119 = v5;
  v120 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC088, &qword_23DB74110);
  v124 = *(v6 - 8);
  v125 = v6;
  v7 = *(v124 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v123 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v122 = &v101 - v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC090, &qword_23DB74118);
  v13 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105, v14);
  v16 = &v101 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC098, &qword_23DB74120);
  v115 = *(v17 - 8);
  v116 = v17;
  v18 = *(v115 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v103 = &v101 - v20;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC0A0, &qword_23DB74128);
  v113 = *(v114 - 8);
  v21 = *(v113 + 64);
  MEMORY[0x28223BE20](v114, v22);
  v110 = &v101 - v23;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC0A8, &qword_23DB74130);
  v24 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106, v25);
  v109 = &v101 - v26;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC0B0, &qword_23DB74138);
  v27 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107, v28);
  v112 = &v101 - v29;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC0B8, &qword_23DB74140);
  v30 = *(*(v111 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v111, v31);
  v117 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v108 = &v101 - v36;
  MEMORY[0x28223BE20](v35, v37);
  v126 = &v101 - v38;
  v39 = sub_23DB7087C();
  v40 = [objc_opt_self() bundleWithIdentifier_];

  if (v40)
  {
    v41 = sub_23DB6E9FC();
    v43 = v42;

    v127 = v41;
    v128 = v43;
    sub_23DA16E70();
    v44 = sub_23DB6FD8C();
    v46 = v45;
    v48 = v47;
    sub_23DB6FC8C();
    v49 = sub_23DB6FD3C();
    v51 = v50;
    v53 = v52;
    v55 = v54;

    sub_23DA16EC4(v44, v46, v48 & 1);

    v102 = v49;
    v127 = v49;
    v128 = v51;
    v101 = v51;
    LOBYTE(v129) = v53 & 1;
    v130 = v55;
    v56 = *MEMORY[0x277CDFA10];
    v57 = sub_23DB6F25C();
    (*(*(v57 - 8) + 104))(v16, v56, v57);
    sub_23DA16ED4(&qword_27E2FC0C8, MEMORY[0x277CDFA28]);
    if (sub_23DB7086C())
    {
      v58 = sub_23DA17B80(&qword_27E2FC0D0, &qword_27E2FC090, &qword_23DB74118);
      v59 = MEMORY[0x277CE0BD8];
      v60 = v103;
      v61 = v16;
      v62 = v105;
      sub_23DB6FECC();
      sub_23DA17988(v61, &qword_27E2FC090, &qword_23DB74118);
      sub_23DA16EC4(v102, v101, v53 & 1);

      sub_23DB6FBFC();
      v127 = v59;
      v128 = v62;
      v129 = MEMORY[0x277CE0BC8];
      v130 = v58;
      swift_getOpaqueTypeConformance2();
      v63 = v110;
      v64 = v116;
      sub_23DB6FE1C();
      (*(v115 + 8))(v60, v64);
      v65 = sub_23DB701AC();
      v66 = v109;
      (*(v113 + 32))(v109, v63, v114);
      *&v66[*(v106 + 36)] = v65;
      LOBYTE(v65) = sub_23DB6FB4C();
      sub_23DB6EFAC();
      v68 = v67;
      v70 = v69;
      v72 = v71;
      v74 = v73;
      v75 = v66;
      v76 = v112;
      sub_23DA17A54(v75, v112, &qword_27E2FC0A8, &qword_23DB74130);
      v77 = v76 + *(v107 + 36);
      *v77 = v65;
      *(v77 + 8) = v68;
      *(v77 + 16) = v70;
      *(v77 + 24) = v72;
      *(v77 + 32) = v74;
      *(v77 + 40) = 0;
      LOBYTE(v65) = sub_23DB6FB3C();
      sub_23DB6EFAC();
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v86 = v108;
      sub_23DA17A54(v76, v108, &qword_27E2FC0B0, &qword_23DB74138);
      v87 = v86 + *(v111 + 36);
      *v87 = v65;
      *(v87 + 8) = v79;
      *(v87 + 16) = v81;
      *(v87 + 24) = v83;
      *(v87 + 32) = v85;
      *(v87 + 40) = 0;
      v88 = v126;
      sub_23DA17A54(v86, v126, &qword_27E2FC0B8, &qword_23DB74140);
      v89 = v120;
      sub_23DA16F1C(v121, v120);
      v90 = (*(v118 + 80) + 16) & ~*(v118 + 80);
      v91 = swift_allocObject();
      sub_23DA170A4(v89, v91 + v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC0D8, &qword_23DB74148);
      sub_23DA17188(&qword_27E2FC0E0, &qword_27E2FC0D8, &qword_23DB74148, sub_23DA17204);
      v92 = v122;
      sub_23DB7051C();
      v93 = v117;
      sub_23DA0E2B4(v88, v117, &qword_27E2FC0B8, &qword_23DB74140);
      v95 = v123;
      v94 = v124;
      v96 = *(v124 + 16);
      v97 = v125;
      v96(v123, v92, v125);
      v98 = v104;
      sub_23DA0E2B4(v93, v104, &qword_27E2FC0B8, &qword_23DB74140);
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC158, &qword_23DB74188);
      v96((v98 + *(v99 + 48)), v95, v97);
      v100 = *(v94 + 8);
      v100(v92, v97);
      sub_23DA17988(v126, &qword_27E2FC0B8, &qword_23DB74140);
      v100(v95, v97);
      sub_23DA17988(v93, &qword_27E2FC0B8, &qword_23DB74140);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_23DA11FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC0F0, &qword_23DB74150);
  v80 = *(v6 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v77 = (&v75 - v9);
  v10 = sub_23DB6F25C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v75 - v18;
  result = sub_23DA125F4();
  v21 = a1 + result;
  if (__OFADD__(a1, result))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v78 = v6;
  v79 = a3;
  v22 = *(a2 + *(type metadata accessor for BrailleUIVisualView(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v76 = *&v82[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v23 = *(*&v82[0] + 16);

  if (v21 >= v23)
  {
LABEL_5:
    v26 = 1;
    v27 = v79;
    v28 = v78;
    return (*(v80 + 56))(v27, v26, 1, v28);
  }

  sub_23DA0EA38(v19);
  (*(v11 + 104))(v16, *MEMORY[0x277CDFA10], v10);
  sub_23DA16ED4(&qword_27E2FC160, MEMORY[0x277CDFA28]);
  v24 = sub_23DB7084C();
  v25 = *(v11 + 8);
  v25(v16, v10);
  v25(v19, v10);
  if (v24)
  {
    if (a1 > 2)
    {
      goto LABEL_5;
    }
  }

  else if (a1 >= 7)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  if (v21 < 0)
  {
    goto LABEL_12;
  }

  if (v21 < *(*&v82[0] + 16))
  {
    v29 = v76 == v21;
    v30 = (*&v82[0] + 96 * v21);
    v31 = v30[3];
    v82[0] = v30[2];
    v82[1] = v31;
    v32 = v30[4];
    v33 = v30[5];
    v34 = v30[7];
    v82[4] = v30[6];
    v82[5] = v34;
    v82[2] = v32;
    v82[3] = v33;
    sub_23DA17518(v82, v81);

    v35 = sub_23DB6F68C();
    v36 = v77;
    *v77 = v35;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC168, &qword_23DB74190);
    sub_23DA12930(v82, v29, v36 + *(v37 + 44));
    sub_23DA17550(v82);
    *(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC130, &qword_23DB74170) + 36)) = 256;
    LOBYTE(v29) = sub_23DB6FB3C();
    sub_23DB6EFAC();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC120, &qword_23DB74168) + 36);
    *v46 = v29;
    *(v46 + 8) = v39;
    *(v46 + 16) = v41;
    *(v46 + 24) = v43;
    *(v46 + 32) = v45;
    *(v46 + 40) = 0;
    sub_23DB701AC();
    v47 = sub_23DB701FC();

    v48 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC110, &qword_23DB74160) + 36));
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC150, &qword_23DB74180);
    v50 = v48 + *(v49 + 52);
    v51 = *(sub_23DB6F32C() + 20);
    v52 = *MEMORY[0x277CE0118];
    v53 = sub_23DB6F63C();
    (*(*(v53 - 8) + 104))(&v50[v51], v52, v53);
    __asm { FMOV            V0.2D, #18.0 }

    *v50 = _Q0;
    *v48 = v47;
    *(v48 + *(v49 + 56)) = 256;
    LOBYTE(v49) = sub_23DB6FB2C();
    sub_23DB6EFAC();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC100, &qword_23DB74158) + 36);
    *v67 = v49;
    *(v67 + 8) = v60;
    *(v67 + 16) = v62;
    *(v67 + 24) = v64;
    *(v67 + 32) = v66;
    *(v67 + 40) = 0;
    LOBYTE(v49) = sub_23DB6FB9C();
    sub_23DB6EFAC();
    v68 = v78;
    v69 = v36 + *(v78 + 36);
    *v69 = v49;
    *(v69 + 8) = v70;
    *(v69 + 16) = v71;
    *(v69 + 24) = v72;
    *(v69 + 32) = v73;
    *(v69 + 40) = 0;
    v74 = v79;
    sub_23DA17A54(v36, v79, &qword_27E2FC0F0, &qword_23DB74150);
    v28 = v68;
    v27 = v74;
    v26 = 0;
    return (*(v80 + 56))(v27, v26, 1, v28);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_23DA125F4()
{
  v1 = sub_23DB6F25C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  v11 = *(v0 + *(type metadata accessor for BrailleUIVisualView(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v12 = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v14 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
    sub_23DA0EA38(v10);
    (*(v2 + 104))(v7, *MEMORY[0x277CDFA10], v1);
    sub_23DA16ED4(&qword_27E2FC160, MEMORY[0x277CDFA28]);
    v15 = sub_23DB7084C();
    v16 = *(v2 + 8);
    v16(v7, v1);
    result = (v16)(v10, v1);
    if (v15)
    {
      v17 = 2;
    }

    else
    {
      v17 = 6;
    }

    while (v17 >= 1)
    {
      if (__OFSUB__(v14, v12))
      {
        __break(1u);
        goto LABEL_15;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C();

      v18 = *(v22 + 16);

      if (v14 - v12 >= v18)
      {
        break;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C();

      v19 = *(v22 + 16);

      v20 = v14 < v19;
      if (v14 < v19)
      {
        ++v14;
      }

      v17 -= v20;
      if (v12 >= 1)
      {
        --v17;
        --v12;
      }
    }

    if (v14 < v12)
    {
      goto LABEL_16;
    }

    return v12;
  }

  return result;
}

uint64_t sub_23DA12930@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v47 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC170, &qword_23DB74198);
  v5 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45, v6);
  v8 = (&v42 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC178, &qword_23DB741A0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v43 = &v42 - v15;
  v16 = sub_23DB6E9BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC180, &qword_23DB741A8);
  v22 = *(*(v44 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v44, v23);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v42 - v28;
  v30 = *(a1 + 8);
  sub_23DA12E28(*a1, *(a1 + 16), *(a1 + 24), *(a1 + 32), 8429794, 0xA300000000000000, v21);
  v31 = a2;
  sub_23DA137F8(v21, a2, v29);
  v32 = *(v17 + 8);
  v32(v21, v16);
  if (*(a1 + 88))
  {
    v33 = *(a1 + 80);
    *&v48 = 0xD0000000000000F2;
    *(&v48 + 1) = 0x800000023DB86570;
    MEMORY[0x23EEF6D00](v33);

    MEMORY[0x23EEF6D00](0xD000000000000015, 0x800000023DB86670);

    v34 = v48;
    sub_23DB7062C();
    sub_23DB6F10C();
    *v8 = v34;
    v8[1] = xmmword_23DB73BB0;
    v8[2] = xmmword_23DB73BB0;
    v35 = v49;
    v8[3] = v48;
    v8[4] = v35;
    v8[5] = v50;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC188, &qword_23DB741B0);
    sub_23DA17580();
    sub_23DA1760C();
    v36 = v43;
    sub_23DB6F79C();
  }

  else
  {
    v37 = *(a1 + 48);
    sub_23DA12E28(*(a1 + 40), *(a1 + 56), *(a1 + 64), *(a1 + 72), 32, 0xE100000000000000, v21);
    sub_23DA137F8(v21, v31 & 1, v26);
    v32(v21, v16);
    sub_23DA0E2B4(v26, v8, &qword_27E2FC180, &qword_23DB741A8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC188, &qword_23DB741B0);
    sub_23DA17580();
    sub_23DA1760C();
    v36 = v43;
    sub_23DB6F79C();
    sub_23DA17988(v26, &qword_27E2FC180, &qword_23DB741A8);
  }

  sub_23DA0E2B4(v29, v26, &qword_27E2FC180, &qword_23DB741A8);
  v38 = v46;
  sub_23DA0E2B4(v36, v46, &qword_27E2FC178, &qword_23DB741A0);
  v39 = v47;
  sub_23DA0E2B4(v26, v47, &qword_27E2FC180, &qword_23DB741A8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC210, &qword_23DB741F0);
  sub_23DA0E2B4(v38, v39 + *(v40 + 48), &qword_27E2FC178, &qword_23DB741A0);
  sub_23DA17988(v36, &qword_27E2FC178, &qword_23DB741A0);
  sub_23DA17988(v29, &qword_27E2FC180, &qword_23DB741A8);
  sub_23DA17988(v38, &qword_27E2FC178, &qword_23DB741A0);
  return sub_23DA17988(v26, &qword_27E2FC180, &qword_23DB741A8);
}

uint64_t sub_23DA12E28@<X0>(void *a1@<X0>, void (*a2)(void, void)@<X2>, void (*a3)(char *, uint64_t)@<X3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v90 = a5;
  v91 = a6;
  v101 = a2;
  v102 = a3;
  v104 = a1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC220, &qword_23DB74260);
  v9 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94, v10);
  v95 = &v84 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC228, &qword_23DB74268);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v97 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v98 = &v84 - v18;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC230, &qword_23DB74270);
  v19 = *(*(v100 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v100, v20);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v99 = &v84 - v25;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC238, &qword_23DB74278);
  v26 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93, v27);
  v96 = &v84 - v28;
  v29 = sub_23DB6E9BC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  v89 = &v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23DB6E99C();
  v103 = *(v34 - 8);
  v35 = v103[8];
  v37 = MEMORY[0x28223BE20](v34, v36);
  v105 = &v84 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v42 = &v84 - v41;
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v84 - v44;
  v46 = sub_23DB6EA1C();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8, v48);

  sub_23DB6EA0C();
  result = sub_23DB6E9CC();
  if ((a4 & 1) == 0)
  {
    v85 = v30;
    v87 = v23;
    sub_23DB6E93C();
    sub_23DA16ED4(&qword_27E2FC240, MEMORY[0x277CC8C40]);
    v92 = v45;
    v50 = v101;
    sub_23DB6EA3C();
    v52 = v103 + 1;
    v51 = v103[1];
    v51(v42, v34);
    sub_23DB6E93C();
    v53 = v102;
    v86 = v29;
    sub_23DB6EA3C();
    v104 = v52;
    v51(v42, v34);
    v88 = a7;
    if (v50 == v53)
    {
      sub_23DB6E9AC();
      v54 = v92;
      v55 = sub_23DB6E98C();
      v51(v42, v34);
      v56 = v51;
      if (v55)
      {

        sub_23DB6EA0C();
        v57 = v89;
        sub_23DB6E9CC();
        sub_23DB6E97C();
        (*(v85 + 8))(v57, v86);
      }

      sub_23DA16ED4(&qword_27E2FC248, MEMORY[0x277CC8C20]);
      result = sub_23DB7085C();
      v58 = v87;
      v59 = v103;
      if (result)
      {
        v60 = v103[2];
        v61 = v99;
        v60(v99, v54, v34);
        v62 = v100;
        v60((v61 + *(v100 + 48)), v54, v34);
        sub_23DA0E2B4(v61, v58, &qword_27E2FC230, &qword_23DB74270);
        v63 = *(v62 + 48);
        v64 = v59[4];
        v65 = v96;
        v64(v96, v58, v34);
        v56(v58 + v63, v34);
        sub_23DA17ABC(v61, v58);
        v64((v65 + *(v93 + 36)), v58 + *(v62 + 48), v34);
        v56(v58, v34);
        v66 = v98;
        sub_23DB6FD4C();
        v67 = sub_23DB6FD5C();
        (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
        sub_23DA17B80(&qword_27E2FC260, &qword_27E2FC238, &qword_23DB74278);
        v68 = sub_23DB6E9DC();
        v69 = v56;
        v70 = v92;
        v71 = v68;
        sub_23DA0E2B4(v66, v97, &qword_27E2FC228, &qword_23DB74268);
        sub_23DA17BC8();
        sub_23DB6EA2C();
        sub_23DA17988(v66, &qword_27E2FC228, &qword_23DB74268);
        v71(v107, 0);
        sub_23DA17988(v65, &qword_27E2FC238, &qword_23DB74278);
        v72 = v105;
LABEL_9:
        v69(v72, v34);
        return (v69)(v70, v34);
      }

      __break(1u);
    }

    else
    {
      v102 = v51;
      sub_23DA16ED4(&qword_27E2FC248, MEMORY[0x277CC8C20]);
      v70 = v92;
      v73 = v105;
      result = sub_23DB7085C();
      if (result)
      {
        v74 = v103;
        v75 = v103[2];
        v76 = v99;
        v75(v99, v70, v34);
        v77 = v100;
        v75((v76 + *(v100 + 48)), v73, v34);
        v78 = v87;
        sub_23DA0E2B4(v76, v87, &qword_27E2FC230, &qword_23DB74270);
        v79 = *(v77 + 48);
        v80 = v74[4];
        v81 = v95;
        v80(v95, v78, v34);
        v69 = v102;
        v102((v78 + v79), v34);
        sub_23DA17ABC(v76, v78);
        v80((v81 + *(v94 + 36)), v78 + *(v77 + 48), v34);
        v69(v78, v34);
        v82 = sub_23DB701BC();
        sub_23DA17B80(&qword_27E2FC250, &qword_27E2FC220, &qword_23DB74260);
        v83 = sub_23DB6E9DC();
        v106 = v82;
        sub_23DA17B2C();
        sub_23DB6EA2C();
        v83(v107, 0);
        v72 = v105;
        sub_23DA17988(v81, &qword_27E2FC220, &qword_23DB74260);
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23DA137F8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v52 = a2;
  v57 = a3;
  v5 = sub_23DB6E9BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC218, &qword_23DB741F8);
  v55 = *(v56 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v56, v12);
  v14 = &v51[-v13];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC1B8, &qword_23DB741C0);
  v15 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53, v16);
  v18 = &v51[-v17];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC1A8, &qword_23DB741B8);
  v19 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54, v20);
  v22 = &v51[-v21];
  (*(v6 + 16))(v10, a1, v5);
  v23 = sub_23DB6FD7C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (v3)
  {
    v30 = 3;
  }

  else
  {
    v30 = 1;
  }

  KeyPath = swift_getKeyPath();
  v32 = sub_23DB6FC8C();
  v33 = swift_getKeyPath();
  v61 = v27 & 1;
  v60 = 0;
  *&v62 = v23;
  *(&v62 + 1) = v25;
  LOBYTE(v63) = v27 & 1;
  *(&v63 + 1) = v29;
  *&v64 = KeyPath;
  *(&v64 + 1) = v30;
  LOBYTE(v65) = 0;
  *(&v65 + 1) = v33;
  *&v66 = v32;
  sub_23DB6FBFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC1C0, &qword_23DB741C8);
  sub_23DA17818();
  sub_23DB6FE1C();
  v58[2] = v64;
  v58[3] = v65;
  v59 = v66;
  v58[1] = v63;
  v58[0] = v62;
  sub_23DA17988(v58, &qword_27E2FC1C0, &qword_23DB741C8);
  if (v52)
  {
    v34 = sub_23DB701EC();
  }

  else
  {
    v34 = sub_23DB701AC();
  }

  v35 = v34;
  (*(v55 + 32))(v18, v14, v56);
  *&v18[*(v53 + 36)] = v35;
  sub_23DB7063C();
  sub_23DB6F34C();
  sub_23DA17A54(v18, v22, &qword_27E2FC1B8, &qword_23DB741C0);
  v36 = &v22[*(v54 + 36)];
  v37 = v67;
  v36[4] = v66;
  v36[5] = v37;
  v36[6] = v68;
  v38 = v63;
  *v36 = v62;
  v36[1] = v38;
  v39 = v65;
  v36[2] = v64;
  v36[3] = v39;
  LOBYTE(v35) = sub_23DB6FB2C();
  sub_23DB6EFAC();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v57;
  sub_23DA17A54(v22, v57, &qword_27E2FC1A8, &qword_23DB741B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC180, &qword_23DB741A8);
  v50 = v48 + *(result + 36);
  *v50 = v35;
  *(v50 + 8) = v41;
  *(v50 + 16) = v43;
  *(v50 + 24) = v45;
  *(v50 + 32) = v47;
  *(v50 + 40) = 0;
  return result;
}

uint64_t sub_23DA13C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF18, &qword_23DB73D80) + 36);
  sub_23DB705AC();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF48, &qword_23DB73D90);
  v6 = (v4 + *(v5 + 52));
  v7 = *(sub_23DB6F32C() + 20);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_23DB6F63C();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #25.0 }

  *v6 = _Q0;
  *(v4 + *(v5 + 56)) = 256;
  return sub_23DA0E2B4(a1, a2, &qword_27E2FBF00, &qword_23DB73D68);
}

uint64_t sub_23DA13E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  sub_23DB70A3C();
  v5[21] = sub_23DB70A2C();
  v7 = sub_23DB70A1C();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x2822009F8](sub_23DA13EBC, v7, v6);
}

uint64_t sub_23DA13EBC()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(MEMORY[0x277CE3828]) init];
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23DA14004;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC078, &qword_23DB74100);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23DA14274;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v1 takeSnapshotWithConfiguration:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DA14004()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 184);
  v5 = *(v1 + 176);
  if (v3)
  {
    v6 = sub_23DA141FC;
  }

  else
  {
    v6 = sub_23DA14134;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_23DA14134()
{
  v1 = v0[24];
  v2 = v0[21];

  v3 = v0[18];
  v4 = UIImageJPEGRepresentation(v3, 1.0);

  if (v4)
  {
    v5 = v0[20];
    v6 = sub_23DB6EA5C();
    v8 = v7;

    v9 = v5 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent;
    v10 = *(v5 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent + 16);
    v11 = *(v5 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v8;
    sub_23DA16D64(v10, v11);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_23DA141FC()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];

  swift_willThrow();

  v4 = v0[1];
  v5 = v0[25];

  return v4();
}

uint64_t sub_23DA14274(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC080, &qword_23DB74108);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_23DA1434C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC070, &qword_23DB740C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_23DA0E2B4(a3, v25 - v11, &qword_27E2FC070, &qword_23DB740C0);
  v13 = sub_23DB70A6C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23DA17988(v12, &qword_27E2FC070, &qword_23DB740C0);
  }

  else
  {
    sub_23DB70A5C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23DB70A1C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23DB708EC() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_23DA17988(a3, &qword_27E2FC070, &qword_23DB740C0);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23DA17988(a3, &qword_27E2FC070, &qword_23DB740C0);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_23DA145F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_23DB70A3C();
  v5[4] = sub_23DB70A2C();
  v7 = sub_23DB70A1C();

  return MEMORY[0x2822009F8](sub_23DA14690, v7, v6);
}

uint64_t sub_23DA14690()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  *(swift_allocObject() + 16) = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CE3810]);
  v5 = v2;
  v6 = [v4 init];
  sub_23DB70B6C();

  v7 = v0[1];

  return v7();
}

void sub_23DA14768(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v4 = sub_23DB70ABC();
    sub_23DA168D8();
    log = sub_23DB70B5C();
    if (os_log_type_enabled(log, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136315138;
      swift_getErrorValue();
      v7 = sub_23DB70DFC();
      v9 = sub_23DB5EC5C(v7, v8, &v14);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_23D9FF000, log, v4, "Error creating PDF... %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x23EEF7D90](v6, -1, -1);
      MEMORY[0x23EEF7D90](v5, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v10 = a4 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent;
    v11 = *(a4 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent + 32);
    v12 = *(a4 + OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent + 40);
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    sub_23DA16098(a1, a2);

    sub_23DA16D64(v11, v12);
  }
}

uint64_t sub_23DA148FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC070, &qword_23DB740C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_23DA0E2B4(a3, v28 - v12, &qword_27E2FC070, &qword_23DB740C0);
  v14 = sub_23DB70A6C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_23DA17988(v13, &qword_27E2FC070, &qword_23DB740C0);
  }

  else
  {
    sub_23DB70A5C();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_23DB70A1C();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_23DB708EC() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_23DA17988(a3, &qword_27E2FC070, &qword_23DB740C0);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23DA17988(a3, &qword_27E2FC070, &qword_23DB740C0);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

id sub_23DA14D2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NemethView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23DA14DE8(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC058, &qword_23DB740B8);
  sub_23DB6FA0C();
  [a1 setNavigationDelegate_];

  v5 = sub_23DB7087C();
}

id sub_23DA14EA4@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = type metadata accessor for NemethView.Coordinator();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator__htmlString];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v10[OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent];
  *v12 = v4;
  *(v12 + 1) = v3;
  *(v12 + 2) = v5;
  *(v12 + 3) = v6;
  *(v12 + 4) = v8;
  *(v12 + 5) = v7;

  sub_23DA16098(v5, v6);
  sub_23DA16098(v8, v7);
  v14.receiver = v10;
  v14.super_class = v9;
  result = objc_msgSendSuper2(&v14, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_23DA14FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DA16884();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23DA15018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DA16884();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23DA1507C()
{
  sub_23DA16884();
  sub_23DB6F75C();
  __break(1u);
}

uint64_t sub_23DA150EC(uint64_t a1)
{
  v2 = sub_23DB6F25C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23DB6F3FC();
}

unint64_t sub_23DA151B8()
{
  result = qword_27E2FBF20;
  if (!qword_27E2FBF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBF00, &qword_23DB73D68);
    sub_23DA17B80(&qword_27E2FBF28, &qword_27E2FBF30, &qword_23DB73D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBF20);
  }

  return result;
}

unint64_t sub_23DA15270()
{
  result = qword_27E2FBF38;
  if (!qword_27E2FBF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBF18, &qword_23DB73D80);
    sub_23DA151B8();
    sub_23DA17B80(&qword_27E2FBF40, &qword_27E2FBF48, &qword_23DB73D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FBF38);
  }

  return result;
}

uint64_t sub_23DA15414@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for BrailleUIVisualView(0) + 20) + 8);
}

uint64_t sub_23DA15478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2FBF58, &unk_23DB73E30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23DA15558(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2FBF58, &unk_23DB73E30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23DA15620()
{
  sub_23DA156A4();
  if (v0 <= 0x3F)
  {
    sub_23DA156FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23DA156A4()
{
  if (!qword_27E2FBF78)
  {
    sub_23DB6F25C();
    v0 = sub_23DB6F05C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FBF78);
    }
  }
}

void sub_23DA156FC()
{
  if (!qword_27E2FBF80)
  {
    type metadata accessor for BrailleUIVisualView.VisualData(255);
    sub_23DA16ED4(&qword_27E2FBEF0, type metadata accessor for BrailleUIVisualView.VisualData);
    v0 = sub_23DB6F21C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FBF80);
    }
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_23DA157AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DA157F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23DA15864()
{
  sub_23DA15D30();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_23DA15D94(319, &qword_27E2FBFA8);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_23DA15D94(319, &qword_27E2FBFB0);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23DA15D30()
{
  if (!qword_27E2FBF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBFA0, &qword_23DB73EA8);
    v0 = sub_23DB6EF2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FBF98);
    }
  }
}

void sub_23DA15D94(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23DB6EF2C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_23DA15E48()
{
  result = qword_27E2FC040;
  if (!qword_27E2FC040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBF08, &qword_23DB73D70);
    sub_23DA15ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC040);
  }

  return result;
}

unint64_t sub_23DA15ED4()
{
  result = qword_27E2FC048;
  if (!qword_27E2FC048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBF50, &qword_23DB73D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBF00, &qword_23DB73D68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FBF18, &qword_23DB73D80);
    sub_23DA151B8();
    sub_23DA15270();
    swift_getOpaqueTypeConformance2();
    sub_23DA17B80(&qword_27E2FBF40, &qword_27E2FBF48, &qword_23DB73D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC048);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t sub_23DA16044()
{
  result = qword_27E2FC050;
  if (!qword_27E2FC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC050);
  }

  return result;
}

uint64_t sub_23DA16098(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23DA160EC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DA161E4;

  return v7(a1);
}

uint64_t sub_23DA161E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23DA162DC@<X0>(uint64_t a1@<X8>)
{
  result = sub_23DB6F50C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23DA16310(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_23DB6F51C();
}

uint64_t sub_23DA16340(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC070, &qword_23DB740C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v25 - v6;
  v8 = &v1[OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator__htmlString];
  result = *&v1[OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator__htmlString];
  v10 = &v1[OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent];
  if (result != *&v1[OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent] || *&v1[OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator__htmlString + 8] != *&v1[OBJC_IVAR____TtCV28AccessibilitySharedUISupport10NemethView11Coordinator_parent + 8])
  {
    result = sub_23DB70DBC();
    if ((result & 1) == 0)
    {
      v12 = sub_23DB70A6C();
      v13 = *(*(v12 - 8) + 56);
      v13(v7, 1, 1, v12);
      sub_23DB70A3C();
      v14 = a1;
      v15 = v1;
      v16 = sub_23DB70A2C();
      v17 = swift_allocObject();
      v18 = MEMORY[0x277D85700];
      v17[2] = v16;
      v17[3] = v18;
      v17[4] = v14;
      v17[5] = v15;
      sub_23DA1434C(0, 0, v7, &unk_23DB740D0, v17);

      v13(v7, 1, 1, v12);
      v19 = v14;
      v20 = v15;
      v21 = sub_23DB70A2C();
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = MEMORY[0x277D85700];
      v22[4] = v19;
      v22[5] = v20;
      sub_23DA148FC(0, 0, v7, &unk_23DB740E0, v22);

      v23 = *(v10 + 1);
      v24 = *(v8 + 1);
      *v8 = *v10;
      *(v8 + 1) = v23;
    }
  }

  return result;
}

void sub_23DA16568(uint64_t a1, const char *a2)
{
  v3 = sub_23DB70ABC();
  sub_23DA168D8();
  log = sub_23DB70B5C();
  if (os_log_type_enabled(log, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_23DB70DFC();
    v8 = sub_23DB5EC5C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_23D9FF000, log, v3, a2, v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23EEF7D90](v5, -1, -1);
    MEMORY[0x23EEF7D90](v4, -1, -1);
  }

  else
  {
  }
}

id sub_23DA166B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE3858]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277CE3830]) init];
  v2 = objc_allocWithZone(MEMORY[0x277CE3838]);
  v3 = sub_23DB7087C();
  v4 = [v2 initWithSource:v3 injectionTime:1 forMainFrameOnly:1];

  [v1 addUserScript_];
  [v0 setUserContentController_];
  v5 = [objc_allocWithZone(MEMORY[0x277CE3850]) initWithFrame:v0 configuration:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  [v7 setOpaque_];
  v9 = [v7 scrollView];
  v10 = [v6 clearColor];
  [v9 setBackgroundColor_];

  return v7;
}

unint64_t sub_23DA16884()
{
  result = qword_27E2FC060;
  if (!qword_27E2FC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC060);
  }

  return result;
}

unint64_t sub_23DA168D8()
{
  result = qword_27E2FC068;
  if (!qword_27E2FC068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2FC068);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23DA16974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23DA16A34;

  return sub_23DA13E24(a1, v4, v5, v7, v6);
}

uint64_t sub_23DA16A34()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23DA16B70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23DA16A34;

  return sub_23DA145F8(a1, v4, v5, v7, v6);
}

uint64_t sub_23DA16C30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_23DA16C68(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DA17C24;

  return sub_23DA160EC(a1, v5);
}

uint64_t sub_23DA16D20()
{

  return swift_deallocObject();
}

uint64_t sub_23DA16D64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23DA16DC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23DA16E70()
{
  result = qword_27E2FC0C0;
  if (!qword_27E2FC0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC0C0);
  }

  return result;
}

uint64_t sub_23DA16EC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23DA16ED4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23DA16F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrailleUIVisualView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DA16F80()
{
  v1 = type metadata accessor for BrailleUIVisualView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23DB6F25C();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v4 + *(v1 + 20) + 8);

  return swift_deallocObject();
}

uint64_t sub_23DA170A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrailleUIVisualView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DA17108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BrailleUIVisualView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23DA11FD0(a1, v6, a2);
}

uint64_t sub_23DA17188(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DA17204()
{
  result = qword_27E2FC0E8;
  if (!qword_27E2FC0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC0F0, &qword_23DB74150);
    sub_23DA17290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC0E8);
  }

  return result;
}

unint64_t sub_23DA17290()
{
  result = qword_27E2FC0F8;
  if (!qword_27E2FC0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC100, &qword_23DB74158);
    sub_23DA1731C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC0F8);
  }

  return result;
}

unint64_t sub_23DA1731C()
{
  result = qword_27E2FC108;
  if (!qword_27E2FC108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC110, &qword_23DB74160);
    sub_23DA173D4();
    sub_23DA17B80(&qword_27E2FC148, &qword_27E2FC150, &qword_23DB74180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC108);
  }

  return result;
}

unint64_t sub_23DA173D4()
{
  result = qword_27E2FC118;
  if (!qword_27E2FC118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC120, &qword_23DB74168);
    sub_23DA17460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC118);
  }

  return result;
}

unint64_t sub_23DA17460()
{
  result = qword_27E2FC128;
  if (!qword_27E2FC128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC130, &qword_23DB74170);
    sub_23DA17B80(&qword_27E2FC138, &qword_27E2FC140, &qword_23DB74178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC128);
  }

  return result;
}

unint64_t sub_23DA17580()
{
  result = qword_27E2FC190;
  if (!qword_27E2FC190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC188, &qword_23DB741B0);
    sub_23DA16044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC190);
  }

  return result;
}

unint64_t sub_23DA1760C()
{
  result = qword_27E2FC198;
  if (!qword_27E2FC198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC180, &qword_23DB741A8);
    sub_23DA17698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC198);
  }

  return result;
}

unint64_t sub_23DA17698()
{
  result = qword_27E2FC1A0;
  if (!qword_27E2FC1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC1A8, &qword_23DB741B8);
    sub_23DA17724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC1A0);
  }

  return result;
}

unint64_t sub_23DA17724()
{
  result = qword_27E2FC1B0;
  if (!qword_27E2FC1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC1B8, &qword_23DB741C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC1C0, &qword_23DB741C8);
    sub_23DA17818();
    swift_getOpaqueTypeConformance2();
    sub_23DA17B80(&qword_27E2FC200, &qword_27E2FC208, &qword_23DB7CCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC1B0);
  }

  return result;
}

unint64_t sub_23DA17818()
{
  result = qword_27E2FC1C8;
  if (!qword_27E2FC1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC1C0, &qword_23DB741C8);
    sub_23DA178D0();
    sub_23DA17B80(&qword_27E2FC1F0, &qword_27E2FC1F8, &unk_23DB741E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC1C8);
  }

  return result;
}

unint64_t sub_23DA178D0()
{
  result = qword_27E2FC1D0;
  if (!qword_27E2FC1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC1D8, &qword_23DB741D0);
    sub_23DA17B80(&qword_27E2FC1E0, &qword_27E2FC1E8, &qword_23DB741D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC1D0);
  }

  return result;
}

uint64_t sub_23DA17988(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23DA179E8@<X0>(uint64_t a1@<X8>)
{
  result = sub_23DB6F50C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23DA17A1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_23DB6F51C();
}

uint64_t sub_23DA17A54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23DA17ABC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC230, &qword_23DB74270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DA17B2C()
{
  result = qword_27E2FC258;
  if (!qword_27E2FC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC258);
  }

  return result;
}

uint64_t sub_23DA17B80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DA17BC8()
{
  result = qword_27E2FC268;
  if (!qword_27E2FC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC268);
  }

  return result;
}

uint64_t AXOnboardingButton.init(_:contentLabel:role:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  v12 = type metadata accessor for AXOnboardingButton();
  result = sub_23DA17CE8(a5, a8 + *(v12 + 24));
  v14 = (a8 + *(v12 + 28));
  *v14 = a6;
  v14[1] = a7;
  return result;
}

uint64_t type metadata accessor for AXOnboardingButton()
{
  result = qword_27E2FC288;
  if (!qword_27E2FC288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DA17CE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC280, &qword_23DB74290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AXOnboardingButton.body.getter()
{
  v1 = type metadata accessor for AXOnboardingButton();
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC280, &qword_23DB74290);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = v0[1];
  v14[0] = *v0;
  v14[1] = v9;
  sub_23DA17EF0(v0 + *(v2 + 32), v14 - v10);
  sub_23DA17F60(v0, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_23DA17FC8(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_23DA16E70();

  return sub_23DB703DC();
}

uint64_t sub_23DA17EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC280, &qword_23DB74290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DA17F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXOnboardingButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DA17FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXOnboardingButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DA1804C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC280, &qword_23DB74290);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v10 = v3[1];
  v15[0] = *v3;
  v15[1] = v10;
  sub_23DA17EF0(v3 + *(v4 + 32), v15 - v11);
  sub_23DA17F60(v3, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_23DA17FC8(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_23DA16E70();

  return sub_23DB703DC();
}

uint64_t sub_23DA181F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC280, &qword_23DB74290);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23DA182C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC280, &qword_23DB74290);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23DA18374()
{
  sub_23DA18420();
  if (v0 <= 0x3F)
  {
    sub_23DA18470();
    if (v1 <= 0x3F)
    {
      sub_23DA184C8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23DA18420()
{
  if (!qword_27E2FC298)
  {
    v0 = sub_23DB70B7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FC298);
    }
  }
}

void sub_23DA18470()
{
  if (!qword_27E2FC2A0)
  {
    sub_23DB6EF9C();
    v0 = sub_23DB70B7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FC2A0);
    }
  }
}

unint64_t sub_23DA184C8()
{
  result = qword_27E2FC2A8;
  if (!qword_27E2FC2A8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E2FC2A8);
  }

  return result;
}

unint64_t sub_23DA1851C()
{
  result = qword_27E2FC2B0;
  if (!qword_27E2FC2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC2B8, &qword_23DB74308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC2B0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for AXOnboardingButton();
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = *(v1 + 24);
  v7 = sub_23DB6EF9C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v9 = *(v3 + *(v1 + 28) + 8);

  return swift_deallocObject();
}

uint64_t sub_23DA186CC()
{
  v1 = type metadata accessor for AXOnboardingButton();
  v2 = v0 + *(v1 + 28) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_23DA18740@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v5 = sub_23DB6EA8C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_23DA187CC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23DB6EA8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  (*(v5 + 40))(v10 + v11, v9, v4);
  return swift_endAccess();
}

uint64_t sub_23DA188E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v4 = sub_23DB6EA8C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_23DA1896C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23DA40770;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_23DA18B30(v4);
}

uint64_t sub_23DA18A0C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23DA40738;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_23DA18B30(v3);
  return sub_23DA18BA0(v8);
}

uint64_t sub_23DA18AD4()
{
  v1 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_23DA18B30(v3);
  return v3;
}

uint64_t sub_23DA18B30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23DA18B40(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_23DA18BA0(v6);
}

uint64_t sub_23DA18BA0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23DA18C10(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_23DA18C7C()
{
  v1 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t (*sub_23DA18DAC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA18E50(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA18FF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA19128(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__superTitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t (*sub_23DA192F0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA19394(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA19534(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1966C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__subTitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t sub_23DA19820()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t (*sub_23DA1989C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA19940(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2E8, &qword_23DB74420);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA19AE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2E8, &qword_23DB74420);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA19C18(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2E8, &qword_23DB74420);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__text;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t sub_23DA19D88(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();
}

uint64_t sub_23DA19E04(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2F8, &qword_23DB74470);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v15 - v11;
  sub_23DA0E2B4(a1, &v15 - v11, &qword_27E2FC2F8, &qword_23DB74470);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DA0E2B4(v12, v9, &qword_27E2FC2F8, &qword_23DB74470);

  sub_23DB6EF1C();
  return sub_23DA17988(v12, &qword_27E2FC2F8, &qword_23DB74470);
}

uint64_t sub_23DA19F34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();
}

uint64_t sub_23DA19FB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2F8, &qword_23DB74470);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v8 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DA0E2B4(a1, v6, &qword_27E2FC2F8, &qword_23DB74470);

  sub_23DB6EF1C();
  return sub_23DA17988(a1, &qword_27E2FC2F8, &qword_23DB74470);
}

uint64_t (*sub_23DA1A0A4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA1A148(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC308, &qword_23DB74480);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC300, &qword_23DB74478);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA1A2E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC308, &qword_23DB74480);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC300, &qword_23DB74478);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1A420(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC308, &qword_23DB74480);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__attributedText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC300, &qword_23DB74478);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t (*sub_23DA1A5E8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA0F5C4;
}

uint64_t sub_23DA1A68C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA1A82C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1A964(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__footerText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA0FA10;
}

uint64_t (*sub_23DA1AAFC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA1ABA0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA1AD40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1AE78(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__shouldDisplay;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t (*sub_23DA1B040(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA1B0E4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA1B284(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1B3BC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__tocTitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t (*sub_23DA1B584(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA1B628(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA1B7C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1B900(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__isPrimaryTOC;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

double sub_23DA1BA84@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_23DA1BB14(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DA1BBC4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t (*sub_23DA1BC3C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA1BCE0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA1BE80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1BFB8(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2D0, &qword_23DB74380);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__iconName;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t sub_23DA1C128@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23DA1C1A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DA1C224()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t sub_23DA1C2A0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t (*sub_23DA1C310(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA1C3B4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC348, &qword_23DB74640);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC340, &qword_23DB74638);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA1C554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC348, &qword_23DB74640);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC340, &qword_23DB74638);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1C68C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC348, &qword_23DB74640);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__subPages;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC340, &qword_23DB74638);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t (*sub_23DA1C868(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA1C90C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA1CAAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1CBE4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__isBeingDisplayed;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t sub_23DA1CE30@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X5>, void *a4@<X8>)
{
  v6 = (*a1 + *a2);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *a4 = a3;
  a4[1] = v9;
}

uint64_t sub_23DA1CEB4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = (*a2 + *a6);
  swift_beginAccess();
  v14 = v13[1];
  *v13 = a7;
  v13[1] = v12;
}

uint64_t sub_23DA1CF54(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_23DA1CFC8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

uint64_t Page.init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v97 = a7;
  v98 = a8;
  v95 = a5;
  v96 = a6;
  v93 = a3;
  v94 = a4;
  v91 = a1;
  v92 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC340, &qword_23DB74638);
  v10 = *(v9 - 8);
  v100 = v9;
  v101 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v84 = v77 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v82 = *(v83 - 8);
  v14 = *(v82 + 64);
  MEMORY[0x28223BE20](v83, v15);
  v99 = v77 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC300, &qword_23DB74478);
  v80 = *(v81 - 8);
  v17 = *(v80 + 64);
  MEMORY[0x28223BE20](v81, v18);
  v20 = v77 - v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2F8, &qword_23DB74470);
  v21 = *(*(v79 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v79, v22);
  v25 = v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v28 = v77 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v89 = *(v29 - 8);
  v30 = v89;
  v31 = *(v89 + 64);
  MEMORY[0x28223BE20](v29, v32);
  v34 = v77 - v33;
  sub_23DB6EA7C();
  v35 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_defaults;
  *(v8 + v35) = [objc_opt_self() standardUserDefaults];
  v36 = (v8 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  *v36 = nullsub_1;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__superTitle;
  v106 = 0;
  v107 = 0;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v38 = *(v30 + 32);
  v38(v8 + v37, v34, v29);
  v102 = v38;
  v39 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__subTitle;
  v106 = 0;
  v107 = 0;
  sub_23DB6EECC();
  v38(v8 + v39, v34, v29);
  v40 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__attributedText;
  v87 = sub_23DB6E9BC();
  v41 = *(v87 - 8);
  v86 = *(v41 + 56);
  v88 = v41 + 56;
  v86(v28, 1, 1, v87);
  v85 = v28;
  v90 = v25;
  sub_23DA0E2B4(v28, v25, &qword_27E2FC2F8, &qword_23DB74470);
  sub_23DB6EECC();
  sub_23DA17988(v28, &qword_27E2FC2F8, &qword_23DB74470);
  (*(v80 + 32))(v8 + v40, v20, v81);
  v42 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__footerText;
  v106 = 0;
  v107 = 0;
  sub_23DB6EECC();
  v43 = v102;
  v102(v8 + v42, v34, v29);
  v44 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__tipHeaderText;
  v106 = 0;
  v107 = 0;
  sub_23DB6EECC();
  v43(v8 + v44, v34, v29);
  v77[1] = v30 + 32;
  v45 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__tipBodyText;
  v106 = 0;
  v107 = 0;
  sub_23DB6EECC();
  v43(v8 + v45, v34, v29);
  v46 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__shouldDisplay;
  LOBYTE(v106) = 1;
  v47 = v99;
  sub_23DB6EECC();
  v80 = *(v82 + 32);
  v48 = v83;
  (v80)(v8 + v46, v47, v83);
  v49 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__tocTitle;
  v106 = 0;
  v107 = 0;
  sub_23DB6EECC();
  v78 = v29;
  v50 = v102;
  v102(v8 + v49, v34, v29);
  v51 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__isPrimaryTOC;
  LOBYTE(v106) = 0;
  sub_23DB6EECC();
  v52 = v47;
  v53 = v80;
  (v80)(v8 + v51, v52, v48);
  v54 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__iconName;
  v82 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__iconName;
  v106 = 0;
  v107 = 0;
  sub_23DB6EECC();
  v50(v8 + v54, v34, v29);
  v55 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__subPages;
  v106 = 0;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC370, &qword_23DB74698);
  v56 = v84;
  sub_23DB6EECC();
  (*(v101 + 32))(v8 + v55, v56, v100);
  v57 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__read;
  LOBYTE(v106) = 0;
  v58 = v99;
  sub_23DB6EECC();
  v53(v8 + v57, v58, v48);
  v59 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__isBeingDisplayed;
  LOBYTE(v106) = 0;
  sub_23DB6EECC();
  v53(v8 + v59, v58, v48);
  v60 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__shouldAutoAdvance;
  LOBYTE(v106) = 0;
  sub_23DB6EECC();
  v53(v8 + v60, v58, v48);
  v61 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__timerAnnouncement;
  v106 = 0;
  v107 = 0;
  sub_23DB6EECC();
  v62 = v34;
  v63 = v78;
  v102(v8 + v61, v62, v78);
  v64 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__focusHeader;
  LOBYTE(v106) = 0;
  sub_23DB6EECC();
  v53(v8 + v64, v58, v48);
  v65 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__shouldDisableKeyboard;
  LOBYTE(v106) = 0;
  sub_23DB6EECC();
  v53(v8 + v65, v58, v48);
  v66 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v67 = sub_23DB6EA8C();
  v68 = *(v67 - 8);
  v69 = v91;
  (*(v68 + 24))(v8 + v66, v91, v67);
  swift_endAccess();
  v70 = (v8 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  v71 = v93;
  *v70 = v92;
  v70[1] = v71;
  swift_beginAccess();
  v104 = v94;
  v105 = v95;
  sub_23DB6EECC();
  swift_endAccess();
  swift_beginAccess();
  (*(v101 + 8))(v8 + v55, v100);
  v104 = v96;
  sub_23DB6EECC();
  swift_endAccess();
  v72 = v82;
  swift_beginAccess();
  (*(v89 + 8))(v8 + v72, v63);
  v104 = v97;
  v105 = v98;
  sub_23DB6EECC();
  swift_endAccess();
  v73 = (v8 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  *v73 = nullsub_1;
  v73[1] = 0;
  v74 = (v8 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  *v74 = nullsub_1;
  v74[1] = 0;
  v75 = v85;
  v86(v85, 1, 1, v87);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DA0E2B4(v75, v90, &qword_27E2FC2F8, &qword_23DB74470);

  sub_23DB6EF1C();
  (*(v68 + 8))(v69, v67);
  sub_23DA17988(v75, &qword_27E2FC2F8, &qword_23DB74470);
  return v8;
}

uint64_t static Page.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23DB6EA8C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v19[-v12];
  v14 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v15 = v5[2];
  v15(v13, a1 + v14, v4);
  v16 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v15(v10, a2 + v16, v4);
  LOBYTE(a2) = sub_23DB6EA6C();
  v17 = v5[1];
  v17(v10, v4);
  v17(v13, v4);
  return a2 & 1;
}

NSObject *sub_23DA1DD00()
{
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v17) = 0;

  sub_23DB6EF1C();
  v1 = sub_23DB70AAC();
  result = AXLogCommon();
  if (result)
  {
    v3 = result;
    if (os_log_type_enabled(result, v1))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v17 = v5;
      *v4 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_23DB73BA0;
      v7 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
      swift_beginAccess();
      v9 = *v7;
      v8 = v7[1];
      *(v6 + 56) = MEMORY[0x277D837D0];
      *(v6 + 64) = sub_23DA40598();
      *(v6 + 32) = v9;
      *(v6 + 40) = v8;

      v10 = sub_23DB708CC();
      v12 = sub_23DB5EC5C(v10, v11, &v17);

      *(v4 + 4) = v12;
      _os_log_impl(&dword_23D9FF000, v3, v1, "Did end page %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x23EEF7D90](v5, -1, -1);
      MEMORY[0x23EEF7D90](v4, -1, -1);
    }

    v13 = v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction;
    swift_beginAccess();
    v15 = *v13;
    v14 = *(v13 + 8);

    v15(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

NSObject *sub_23DA1DF04()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  if (v25 == 1)
  {
    v2 = [objc_opt_self() sharedInstance];
    [v2 disableSoftwareKeyboard];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v25 = 1;

  sub_23DB6EF1C();
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  v3 = *(qword_27E30A6A8 + 16);
  swift_beginAccess();
  *(v3 + 40) = 27;

  sub_23DABC32C();

  v4 = v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState;
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);

    v5(v7);
    sub_23DA18BA0(v5);
  }

  v8 = sub_23DB70AAC();
  result = AXLogCommon();
  if (result)
  {
    v10 = result;
    if (os_log_type_enabled(result, v8))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_23DB73BA0;
      v14 = (v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
      swift_beginAccess();
      v16 = *v14;
      v15 = v14[1];
      *(v13 + 56) = MEMORY[0x277D837D0];
      *(v13 + 64) = sub_23DA40598();
      *(v13 + 32) = v16;
      *(v13 + 40) = v15;

      v17 = sub_23DB708CC();
      v19 = sub_23DB5EC5C(v17, v18, &v24);

      *(v11 + 4) = v19;
      _os_log_impl(&dword_23D9FF000, v10, v8, "Did Start page %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x23EEF7D90](v12, -1, -1);
      MEMORY[0x23EEF7D90](v11, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v24) = 1;

    sub_23DB6EF1C();
    v20 = v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction;
    swift_beginAccess();
    v22 = *v20;
    v21 = *(v20 + 8);

    v22(v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DA1E28C()
{
  v1 = sub_23DB6EA8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  (*(v2 + 16))(v6, v0 + v7, v1);
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
  sub_23DB7083C();
  return (*(v2 + 8))(v6, v1);
}

uint64_t sub_23DA1E3D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23DB6EA8C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v28[-v12];
  v14 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v15 = v5[2];
  v15(v13, v2 + v14, v4);
  v16 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v15(v10, a1 + v16, v4);
  LOBYTE(v16) = sub_23DB6EA6C();
  v17 = v5[1];
  v17(v10, v4);
  v17(v13, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  if ((v16 & 1) == 0)
  {
    sub_23DB6EF0C();

    if (v29)
    {
      v19 = v29;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    if (v19 >> 62)
    {
LABEL_22:
      v20 = sub_23DB70C3C();
      if (v20)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
LABEL_9:
        v21 = 0;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            MEMORY[0x23EEF70C0](v21, v19);
            v23 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
LABEL_18:
              __break(1u);
              goto LABEL_19;
            }
          }

          else
          {
            if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_22;
            }

            v22 = *(v19 + 8 * v21 + 32);

            v23 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_18;
            }
          }

          v24 = sub_23DA1E3D8(a1);
          if (v24)
          {
            v26 = v24;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_23DB74310;
            *(inited + 32) = v2;
            v29 = v26;

            sub_23DB3C864(inited);

            return v29;
          }

          ++v21;
        }

        while (v23 != v20);
      }
    }

    return 0;
  }

  sub_23DB6EF0C();

  if (v29)
  {

    return MEMORY[0x277D84F90];
  }

  else
  {
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_23DB74310;
    *(v25 + 32) = v2;

    return v25;
  }
}

uint64_t Page.deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  v2 = sub_23DB6EA8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState + 8);
  sub_23DA18BA0(*(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState));
  v4 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title + 8);

  v5 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__superTitle;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__subTitle, v6);
  v8 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__text;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__attributedText;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC300, &qword_23DB74478);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v7(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__footerText, v6);
  v7(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__tipHeaderText, v6);
  v7(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__tipBodyText, v6);
  v12 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__shouldDisplay;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v7(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__tocTitle, v6);
  v14(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__isPrimaryTOC, v13);
  v7(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__iconName, v6);
  v15 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__subPages;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC340, &qword_23DB74638);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v14(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__read, v13);
  v14(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__isBeingDisplayed, v13);
  v14(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__shouldAutoAdvance, v13);
  v7(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__timerAnnouncement, v6);
  v14(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__focusHeader, v13);
  v17 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction + 8);

  v14(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page__shouldDisableKeyboard, v13);
  v18 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction + 8);

  return v0;
}

uint64_t sub_23DA1EB10()
{
  v1 = sub_23DB6EA8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23DB70E0C();
  v7 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  (*(v2 + 16))(v6, v0 + v7, v1);
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
  sub_23DB7083C();
  (*(v2 + 8))(v6, v1);
  return sub_23DB70E4C();
}

uint64_t sub_23DA1ECB8()
{
  v1 = sub_23DB6EA8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  (*(v2 + 16))(v6, v7 + v8, v1);
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
  sub_23DB7083C();
  return (*(v2 + 8))(v6, v1);
}

uint64_t sub_23DA1EE08()
{
  v1 = sub_23DB6EA8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23DB70E0C();
  v7 = *v0;
  v8 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  (*(v2 + 16))(v6, v7 + v8, v1);
  sub_23DA3AE40(&qword_27E2FC3A0, MEMORY[0x277CC95F0]);
  sub_23DB7083C();
  (*(v2 + 8))(v6, v1);
  return sub_23DB70E4C();
}

uint64_t sub_23DA1EF6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v5 = sub_23DB6EA8C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_23DA1EFF8(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_23DB6EA8C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v21[-v12];
  v14 = *a1;
  v15 = *a2;
  v16 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v17 = v5[2];
  v17(v13, v14 + v16, v4);
  v18 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v17(v10, v15 + v18, v4);
  LOBYTE(v15) = sub_23DB6EA6C();
  v19 = v5[1];
  v19(v10, v4);
  v19(v13, v4);
  return v15 & 1;
}

uint64_t sub_23DA1F190@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Page(0);
  result = sub_23DB6EE6C();
  *a1 = result;
  return result;
}

uint64_t sub_23DA1F1D0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_23DA1F23C()
{
  v1 = (v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_23DA1F294(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t Page.PrimaryTOC.__allocating_init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v27 = a7;
  v28 = a8;
  v16 = sub_23DB6EA8C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v9 + 48);
  v23 = *(v9 + 52);
  v24 = swift_allocObject();
  v25 = (v24 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  *v25 = 0;
  v25[1] = 0;
  (*(v17 + 16))(v21, a1, v16);
  Page.init(id:title:text:subPages:iconName:)(v21, a2, a3, a4, a5, a6, v27, v28);
  (*(v17 + 8))(a1, v16);
  return v24;
}

uint64_t Page.PrimaryTOC.init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a7;
  v24 = a8;
  v15 = sub_23DB6EA8C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  *v21 = 0;
  v21[1] = 0;
  (*(v16 + 16))(v20, a1, v15);
  Page.init(id:title:text:subPages:iconName:)(v20, a2, a3, a4, a5, a6, v23, v24);
  (*(v16 + 8))(a1, v15);
  return v8;
}

uint64_t Page.PrimaryTOC.deinit()
{
  Page.deinit();
  v1 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName + 8);

  return v0;
}

uint64_t Page.PrimaryTOC.__deallocating_deinit()
{
  Page.deinit();
  v1 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName + 8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t Page.SecondaryTOC.init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a7;
  v23 = a8;
  v15 = sub_23DB6EA8C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a1, v15);
  Page.init(id:title:text:subPages:iconName:)(v20, a2, a3, a4, a5, a6, v22, v23);
  (*(v16 + 8))(a1, v15);
  return v8;
}

uint64_t sub_23DA1F84C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1496))();
  *a2 = result;
  return result;
}

uint64_t sub_23DA1F8A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 1504);

  return v3(v4);
}

uint64_t (*sub_23DA1F924(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA1F9C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B8, &qword_23DB746F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*(**a2 + 1528))(v8);
}

uint64_t sub_23DA1FAEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B8, &qword_23DB746F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA1FC24(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B8, &qword_23DB746F0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t sub_23DA1FD94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for Page.Practice(0);
  sub_23DA3AE40(&qword_27E2FC3C0, type metadata accessor for Page.Practice);

  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_23DA1FE5C()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_23DA1FEA4(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for Page.Practice(0);
  sub_23DA3AE40(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

void (*sub_23DA1FF60(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_23DA1FFFC;
}

void sub_23DA1FFFC(void **a1, char a2)
{
  v3 = *a1;
  v5 = *a1 + 3;
  v4 = *v5;
  type metadata accessor for Page.Practice(0);
  sub_23DA3AE40(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v6 = v3[4];
  v7 = v3[5];
  if (a2)
  {

    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v8 = *(v6 + v7);
    *(v6 + v7) = v4;

    v9 = *v5;
  }

  else
  {
    v10 = v3[4];
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v11 = *(v6 + v7);
    *(v6 + v7) = v4;
  }

  free(v3);
}

uint64_t sub_23DA20108@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23DA20188(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DA201FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t sub_23DA20270()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t (*sub_23DA202E0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA20384(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC8, &qword_23DB73C88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA20524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC8, &qword_23DB73C88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA2065C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC8, &qword_23DB73C88);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t (*sub_23DA2081C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA208C0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA20A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA20B98(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEE0, &qword_23DB73CE0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t (*sub_23DA20D6C())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *(swift_allocObject() + 16) = v1;
  return sub_23DA40738;
}

uint64_t Page.Practice.__allocating_init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86 = a7;
  v87 = a8;
  v85 = a6;
  v82 = a4;
  v83 = a5;
  v81 = a3;
  v79 = a2;
  v88 = a1;
  v84 = sub_23DB6EA8C();
  v80 = *(v84 - 8);
  v9 = *(v80 + 64);
  MEMORY[0x28223BE20](v84, v10);
  v78 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = *(v76 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v75 = &v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v73 = *(v16 - 8);
  v74 = v16;
  v17 = *(v73 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v70 = &v66 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v71 = *(v20 - 8);
  v72 = v20;
  v21 = *(v71 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v67 = &v66 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v69 = *(v66 - 8);
  v24 = *(v69 + 64);
  MEMORY[0x28223BE20](v66, v25);
  *&v68 = &v66 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v66 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v66 - v37;
  v39 = *(v8 + 48);
  v40 = *(v8 + 52);
  v41 = swift_allocObject();
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v89) = 0;
  sub_23DB6EECC();
  v43 = *(v34 + 32);
  v43(v41 + v42, v38, v33);
  v44 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v45 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v45 = MEMORY[0x277D84FA0];
  }

  *(v41 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v45;
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v89 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v28 + 32))(v41 + v46, v32, v27);
  *(v41 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v44;
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v89 = 0;
  v48 = v68;
  sub_23DB6EECC();
  (*(v69 + 32))(v41 + v47, v48, v66);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v89) = 0;
  sub_23DB6EECC();
  v69 = v33;
  v43(v41 + v49, v38, v33);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v68 = xmmword_23DB74320;
  v89 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v51 = v67;
  sub_23DB6EECC();
  v52 = v72;
  v53 = *(v71 + 32);
  v53(v41 + v50, v51, v72);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v89 = v68;
  sub_23DB6EECC();
  v53(v41 + v54, v51, v52);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v89) = 0;
  sub_23DB6EECC();
  v43(v41 + v55, v38, v69);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v89 = 0;
  *(&v89 + 1) = 0xE000000000000000;
  v57 = v70;
  sub_23DB6EECC();
  (*(v73 + 32))(v41 + v56, v57, v74);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v89 = 0uLL;
  sub_23DB6EECC();
  v53(v41 + v58, v51, v52);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v89 = nullsub_1;
  *(&v89 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v60 = v75;
  sub_23DB6EECC();
  (*(v76 + 32))(v41 + v59, v60, v77);
  v61 = v80;
  v62 = v78;
  v63 = v88;
  v64 = v84;
  (*(v80 + 16))(v78, v88, v84);
  Page.init(id:title:text:subPages:iconName:)(v62, v79, v81, v82, v83, v85, v86, v87);
  (*(v61 + 8))(v63, v64);
  return v41;
}

uint64_t Page.Practice.init(id:title:text:subPages:iconName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v83 = a7;
  v84 = a8;
  v82 = a6;
  v79 = a4;
  v80 = a5;
  v78 = a3;
  v76 = a2;
  v85 = a1;
  v81 = sub_23DB6EA8C();
  v77 = *(v81 - 8);
  v9 = *(v77 + 64);
  MEMORY[0x28223BE20](v81, v10);
  v75 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v73 = *(v12 - 8);
  v74 = v12;
  v13 = *(v73 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v72 = &v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v70 = *(v16 - 8);
  v71 = v16;
  v17 = *(v70 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v67 = &v63 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v68 = *(v20 - 8);
  v69 = v20;
  v21 = *(v68 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v63 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v65 = *(v66 - 8);
  v25 = *(v65 + 64);
  MEMORY[0x28223BE20](v66, v26);
  v28 = &v63 - v27;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v29 = *(v63 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v63, v31);
  v33 = &v63 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v63 - v38;
  v40 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v86) = 0;
  sub_23DB6EECC();
  v64 = *(v35 + 32);
  v64(v8 + v40, v39, v34);
  v41 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v42 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v42 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v42;
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v86 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v29 + 32))(v8 + v43, v33, v63);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v41;
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v86 = 0;
  sub_23DB6EECC();
  (*(v65 + 32))(v8 + v44, v28, v66);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v86) = 0;
  sub_23DB6EECC();
  v46 = v34;
  v66 = v34;
  v47 = v64;
  v64(v8 + v45, v39, v46);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v65 = xmmword_23DB74320;
  v86 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v49 = v69;
  v50 = *(v68 + 32);
  v50(v8 + v48, v24, v69);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v86 = v65;
  sub_23DB6EECC();
  v50(v8 + v51, v24, v49);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v86) = 0;
  sub_23DB6EECC();
  v47(v8 + v52, v39, v66);
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v86 = 0;
  *(&v86 + 1) = 0xE000000000000000;
  v54 = v67;
  sub_23DB6EECC();
  (*(v70 + 32))(v8 + v53, v54, v71);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v86 = 0uLL;
  sub_23DB6EECC();
  v50(v8 + v55, v24, v49);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v86 = nullsub_1;
  *(&v86 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v57 = v72;
  sub_23DB6EECC();
  (*(v73 + 32))(v8 + v56, v57, v74);
  v58 = v77;
  v59 = v75;
  v60 = v85;
  v61 = v81;
  (*(v77 + 16))(v75, v85, v81);
  Page.init(id:title:text:subPages:iconName:)(v59, v76, v78, v79, v80, v82, v83, v84);
  (*(v58 + 8))(v60, v61);
  return v8;
}

uint64_t sub_23DA21D24()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers);

  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands);

  v8 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered, v2);
  v10 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v12(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody, v11);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning, v2);
  v13 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v12(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText, v11);
  v15 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v17 = *(*(v16 - 8) + 8);

  return v17(v0 + v15, v16);
}

uint64_t Page.Practice.deinit()
{
  Page.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers);

  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands);

  v8 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered, v2);
  v10 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v12(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody, v11);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning, v2);
  v13 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v12(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText, v11);
  v15 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  return v0;
}

uint64_t Page.WhatsNew.WhatsNewItem.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23DB7091C();
}

AccessibilitySharedUISupport::Page::WhatsNew::WhatsNewItem __swiftcall Page.WhatsNew.WhatsNewItem.init(title:description:)(Swift::String title, Swift::String description)
{
  *v2 = title;
  v2[1] = description;
  result.description = description;
  result.title = title;
  return result;
}

uint64_t static Page.WhatsNew.WhatsNewItem.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23DB70DBC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_23DB70DBC();
    }
  }

  return result;
}

uint64_t Page.WhatsNew.WhatsNewItem.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23DB70E0C();
  sub_23DB7091C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA22364()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23DB70E0C();
  sub_23DB7091C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA223B0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23DB7091C();
}

uint64_t sub_23DA223B8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23DB70E0C();
  sub_23DB7091C();
  return sub_23DB70E4C();
}

uint64_t sub_23DA22400(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23DB70DBC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_23DB70DBC();
    }
  }

  return result;
}

uint64_t sub_23DA224F4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t (*sub_23DA22560(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA17C28;
}

uint64_t sub_23DA22604(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC440, &unk_23DB747F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC438, &qword_23DB747E8);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_23DA227A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC440, &unk_23DB747F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC438, &qword_23DB747E8);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DA228DC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC440, &unk_23DB747F0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8WhatsNew__items;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC438, &qword_23DB747E8);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA17C2C;
}

uint64_t sub_23DA22AF8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v107 = a7;
  v108 = a8;
  v105 = a5;
  v106 = a6;
  v103 = a3;
  v104 = a4;
  v102 = a2;
  v111 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v100 = *(v9 - 8);
  v101 = v9;
  v10 = *(v100 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v99 = &v79 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v93 = *(v94 - 1);
  v13 = *(v93 + 64);
  MEMORY[0x28223BE20](v94, v14);
  v91 = &v79 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v88 = *(v90 - 8);
  v16 = *(v88 + 64);
  MEMORY[0x28223BE20](v90, v17);
  v86 = &v79 - v18;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v19 = *(v109 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v109, v21);
  v80 = &v79 - v22;
  v23 = sub_23DB6EA8C();
  v110 = *(v23 - 8);
  v24 = v110[8];
  v26 = MEMORY[0x28223BE20](v23, v25);
  v96 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v79 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v112 = *(v31 - 8);
  v32 = *(v112 + 64);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v79 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  v41 = &v79 - v40;
  v42 = *(v8 + 48);
  v43 = *(v8 + 52);
  v44 = swift_allocObject();
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeSingleButton__buttonText;
  *&v113 = 0;
  *(&v113 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v46 = *(v37 + 32);
  v85 = v41;
  v47 = v41;
  v48 = v80;
  v89 = v36;
  v49 = v36;
  v50 = v112;
  v87 = v37 + 32;
  v83 = v46;
  v46(v44 + v45, v47, v49);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeSingleButton__popoverText;
  v113 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v52 = *(v50 + 32);
  v92 = v31;
  v81 = v52;
  v112 = v50 + 32;
  v52(v44 + v51, v35, v31);
  v53 = v110[2];
  v97 = v30;
  v98 = v23;
  v84 = v53;
  v82 = v110 + 2;
  v53(v30, v111, v23);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v113) = 0;
  sub_23DB6EECC();
  v55 = *(v19 + 32);
  v95 = v19 + 32;
  v55(v44 + v54, v48, v109);
  v56 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v57 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v57 = MEMORY[0x277D84FA0];
  }

  *(v44 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v57;
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v113 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v59 = v86;
  sub_23DB6EECC();
  (*(v88 + 32))(v44 + v58, v59, v90);
  *(v44 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v56;
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v113 = 0;
  v61 = v91;
  sub_23DB6EECC();
  (*(v93 + 32))(v44 + v60, v61, v94);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v113) = 0;
  sub_23DB6EECC();
  v63 = v109;
  v55(v44 + v62, v48, v109);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v93 = xmmword_23DB74320;
  v113 = xmmword_23DB74320;
  sub_23DB6EECC();
  v65 = v92;
  v94 = v55;
  v66 = v81;
  v81(v44 + v64, v35, v92);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v113 = v93;
  sub_23DB6EECC();
  v66(v44 + v67, v35, v65);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v113) = 0;
  sub_23DB6EECC();
  v94(v44 + v68, v48, v63);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v113 = 0;
  *(&v113 + 1) = 0xE000000000000000;
  v70 = v85;
  sub_23DB6EECC();
  v83(v44 + v69, v70, v89);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v113 = 0uLL;
  sub_23DB6EECC();
  v66(v44 + v71, v35, v65);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v113 = nullsub_1;
  *(&v113 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v73 = v99;
  sub_23DB6EECC();
  (*(v100 + 32))(v44 + v72, v73, v101);
  v74 = v96;
  v75 = v97;
  v76 = v98;
  v84(v96, v97, v98);
  Page.init(id:title:text:subPages:iconName:)(v74, v102, v103, v104, v105, v106, v107, v108);
  v77 = v110[1];
  v77(v111, v76);
  v77(v75, v76);
  return v44;
}

uint64_t sub_23DA234C8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v100 = a7;
  v101 = a8;
  v98 = a5;
  v99 = a6;
  v96 = a3;
  v97 = a4;
  v95 = a2;
  v104 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v93 = *(v9 - 8);
  v94 = v9;
  v10 = *(v93 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v92 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v90 = *(v13 - 8);
  v91 = v13;
  v14 = *(v90 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v89 = &v75 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v85 = *(v86 - 1);
  v17 = *(v85 + 64);
  MEMORY[0x28223BE20](v86, v18);
  v84 = &v75 - v19;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v79 = *(v81 - 8);
  v20 = *(v79 + 64);
  MEMORY[0x28223BE20](v81, v21);
  v76 = &v75 - v22;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v105 = *(v75 - 8);
  v23 = *(v105 + 64);
  MEMORY[0x28223BE20](v75, v24);
  v26 = &v75 - v25;
  v27 = sub_23DB6EA8C();
  v102 = *(v27 - 8);
  v103 = v27;
  v28 = v102[8];
  v30 = MEMORY[0x28223BE20](v27, v29);
  v87 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v75 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v75 - v39;
  v41 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page14PracticeScroll__scrollText;
  *&v106 = 0;
  *(&v106 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v42 = *(v36 + 32);
  v42(v8 + v41, v40, v35);
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page14PracticeScroll__scrollOnChange;
  *&v106 = 0;
  *(&v106 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v42(v8 + v43, v40, v35);
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page14PracticeScroll__scrollDown;
  *&v106 = 0;
  *(&v106 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v42(v8 + v44, v40, v35);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page14PracticeScroll__scrollUp;
  *&v106 = 0;
  *(&v106 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v83 = v35;
  v82 = v36 + 32;
  v80 = v42;
  v42(v8 + v45, v40, v35);
  v46 = v102[2];
  v88 = v34;
  v78 = v102 + 2;
  v77 = v46;
  v46(v34, v104, v103);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v106) = 0;
  sub_23DB6EECC();
  v48 = *(v105 + 32);
  v49 = v26;
  v50 = v75;
  v51 = v105 + 32;
  v48(v8 + v47, v26);
  v52 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v53 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v53 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v53;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v106 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v55 = v76;
  sub_23DB6EECC();
  (*(v79 + 32))(v8 + v54, v55, v81);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v52;
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v106 = 0;
  v57 = v84;
  sub_23DB6EECC();
  (*(v85 + 32))(v8 + v56, v57, v86);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v106) = 0;
  sub_23DB6EECC();
  v59 = v50;
  v105 = v51;
  (v48)(v8 + v58, v49, v50);
  v86 = v48;
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v85 = xmmword_23DB74320;
  v106 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v61 = v89;
  sub_23DB6EECC();
  v62 = v91;
  v63 = *(v90 + 32);
  v63(v8 + v60, v61, v91);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v106 = v85;
  sub_23DB6EECC();
  v63(v8 + v64, v61, v62);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v106) = 0;
  sub_23DB6EECC();
  v86(v8 + v65, v49, v59);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v106 = 0;
  *(&v106 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v80(v8 + v66, v40, v83);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v106 = 0uLL;
  sub_23DB6EECC();
  v63(v8 + v67, v61, v62);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v106 = nullsub_1;
  *(&v106 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v69 = v92;
  sub_23DB6EECC();
  (*(v93 + 32))(v8 + v68, v69, v94);
  v70 = v87;
  v71 = v88;
  v72 = v103;
  v77(v87, v88, v103);
  Page.init(id:title:text:subPages:iconName:)(v70, v95, v96, v97, v98, v99, v100, v101);
  v73 = v102[1];
  v73(v104, v72);
  v73(v71, v72);
  return v8;
}

uint64_t sub_23DA23EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v106 = a7;
  v107 = a8;
  v104 = a5;
  v105 = a6;
  v102 = a3;
  v103 = a4;
  v101 = a2;
  v110 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v99 = *(v9 - 8);
  v100 = v9;
  v10 = *(v99 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v98 = &v78 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = *(v96 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v94 = &v78 - v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v90 = *(v91 - 1);
  v17 = *(v90 + 64);
  MEMORY[0x28223BE20](v91, v18);
  v89 = &v78 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v85 = *(v86 - 8);
  v20 = *(v85 + 64);
  MEMORY[0x28223BE20](v86, v21);
  v83 = &v78 - v22;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v111 = *(v80 - 8);
  v23 = *(v111 + 64);
  MEMORY[0x28223BE20](v80, v24);
  v79 = &v78 - v25;
  v26 = sub_23DB6EA8C();
  v109 = *(v26 - 8);
  v27 = v109[8];
  v29 = MEMORY[0x28223BE20](v26, v28);
  v92 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v108 = &v78 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v78 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v78 - v41;
  v43 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeLongText__correctPhrase;
  *&v112 = 0;
  *(&v112 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v44 = *(v38 + 32);
  v44(v8 + v43, v42, v37);
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeLongText__currentPhrase;
  *&v112 = 0;
  *(&v112 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v44(v8 + v45, v42, v37);
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeLongText__backingPhrase;
  *&v112 = 0;
  *(&v112 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v44(v8 + v46, v42, v37);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page16PracticeLongText__spokenPhrase;
  *&v112 = 0;
  *(&v112 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v88 = v37;
  v87 = v38 + 32;
  v84 = v44;
  v44(v8 + v47, v42, v37);
  v48 = v109 + 2;
  v49 = v109[2];
  v49(v36, v110, v26);
  v93 = v36;
  v95 = v26;
  v82 = v48;
  v81 = v49;
  v49(v108, v36, v26);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v112) = 0;
  v51 = v79;
  sub_23DB6EECC();
  v52 = *(v111 + 32);
  v53 = v51;
  v54 = v80;
  v55 = v111 + 32;
  v52(v8 + v50, v51);
  v56 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v57 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v57 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v57;
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v112 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v59 = v83;
  sub_23DB6EECC();
  (*(v85 + 32))(v8 + v58, v59, v86);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v56;
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v112 = 0;
  v61 = v89;
  sub_23DB6EECC();
  (*(v90 + 32))(v8 + v60, v61, v91);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v112) = 0;
  sub_23DB6EECC();
  v111 = v55;
  (v52)(v8 + v62, v51, v54);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v90 = xmmword_23DB74320;
  v112 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v91 = v52;
  v64 = v94;
  sub_23DB6EECC();
  v65 = v97;
  v66 = *(v96 + 32);
  v66(v8 + v63, v64, v97);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v112 = v90;
  sub_23DB6EECC();
  v66(v8 + v67, v64, v65);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v112) = 0;
  sub_23DB6EECC();
  v91(v8 + v68, v53, v54);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v112 = 0;
  *(&v112 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v84(v8 + v69, v42, v88);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v112 = 0uLL;
  sub_23DB6EECC();
  v66(v8 + v70, v64, v65);
  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v112 = nullsub_1;
  *(&v112 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v72 = v98;
  sub_23DB6EECC();
  (*(v99 + 32))(v8 + v71, v72, v100);
  v73 = v92;
  v74 = v108;
  v75 = v95;
  v81(v92, v108, v95);
  Page.init(id:title:text:subPages:iconName:)(v73, v101, v102, v103, v104, v105, v106, v107);
  v76 = v109[1];
  v76(v110, v75);
  v76(v74, v75);
  v76(v93, v75);
  return v8;
}

uint64_t sub_23DA24870(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v8 = *a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v12 = *(*(v9 - 8) + 8);
  (v12)((v9 - 8), v4 + v8, v9);
  v12(v4 + *a2, v9);
  v12(v4 + *a3, v9);
  v10 = v4 + *a4;

  return (v12)(v10, v9);
}

uint64_t sub_23DA24988(uint64_t *a1, void *a2, void *a3, void *a4)
{
  Page.Practice.deinit();
  v9 = *a1;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v11 = *(*(v10 - 8) + 8);
  v11(v4 + v9, v10);
  v11(v4 + *a2, v10);
  v11(v4 + *a3, v10);
  v11(v4 + *a4, v10);

  v12 = *(*v4 + 48);
  v13 = *(*v4 + 52);

  return MEMORY[0x2821FE8D8](v4, v12, v13);
}

uint64_t sub_23DA24AF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t sub_23DA24B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v113 = a7;
  v114 = a8;
  v111 = a5;
  v112 = a6;
  v109 = a3;
  v110 = a4;
  v108 = a2;
  v118 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v106 = *(v9 - 8);
  v107 = v9;
  v10 = *(v106 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v105 = &v84 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v103 = *(v13 - 8);
  v104 = v13;
  v14 = *(v103 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v102 = &v84 - v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v98 = *(v99 - 1);
  v17 = *(v98 + 64);
  MEMORY[0x28223BE20](v99, v18);
  v97 = &v84 - v19;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v94 = *(v96 - 8);
  v20 = *(v94 + 64);
  MEMORY[0x28223BE20](v96, v21);
  v92 = &v84 - v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v86 = *(v87 - 8);
  v23 = *(v86 + 64);
  MEMORY[0x28223BE20](v87, v24);
  v85 = &v84 - v25;
  v26 = sub_23DB6EA8C();
  v116 = *(v26 - 8);
  v117 = v26;
  v27 = v116[8];
  v29 = MEMORY[0x28223BE20](v26, v28);
  v100 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v115 = &v84 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v84 - v35;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAC8, &qword_23DB75318);
  v89 = *(v101 - 8);
  v37 = v89[8];
  MEMORY[0x28223BE20](v101, v38);
  v40 = &v84 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41, v44);
  v46 = &v84 - v45;
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__correctPhrase;
  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v48 = *(v42 + 32);
  v48(v8 + v47, v46, v41);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__startingPhrase;
  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v48(v8 + v49, v46, v41);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__currentPhrase;
  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v91 = v46;
  v95 = v41;
  v93 = v42 + 32;
  v90 = v48;
  v48(v8 + v50, v46, v41);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__practiceCompleted;
  LOBYTE(v119) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC638, &qword_23DB779A0);
  sub_23DB6EECC();
  (v89[4])(v8 + v51, v40, v101);
  v52 = v117;
  v53 = v116 + 2;
  v54 = v116[2];
  v54(v36, v118, v117);
  v101 = v36;
  v89 = v53;
  v88 = v54;
  v54(v115, v36, v52);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v119) = 0;
  v56 = v85;
  sub_23DB6EECC();
  v57 = *(v86 + 32);
  v58 = v56;
  v59 = v56;
  v60 = v87;
  v57(v8 + v55, v59);
  v61 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v62 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v62 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v62;
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v119 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v64 = v92;
  sub_23DB6EECC();
  (*(v94 + 32))(v8 + v63, v64, v96);
  *(v8 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v61;
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v119 = 0;
  v66 = v97;
  sub_23DB6EECC();
  (*(v98 + 32))(v8 + v65, v66, v99);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v119) = 0;
  sub_23DB6EECC();
  (v57)(v8 + v67, v58, v60);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v98 = xmmword_23DB74320;
  v119 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v69 = v102;
  sub_23DB6EECC();
  v99 = v57;
  v70 = v104;
  v71 = *(v103 + 32);
  v71(v8 + v68, v69, v104);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v119 = v98;
  sub_23DB6EECC();
  v71(v8 + v72, v69, v70);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v119) = 0;
  sub_23DB6EECC();
  v99(v8 + v73, v58, v60);
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  v75 = v91;
  sub_23DB6EECC();
  v90(v8 + v74, v75, v95);
  v76 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v119 = 0uLL;
  sub_23DB6EECC();
  v71(v8 + v76, v69, v70);
  v77 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v119 = nullsub_1;
  *(&v119 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v78 = v105;
  sub_23DB6EECC();
  (*(v106 + 32))(v8 + v77, v78, v107);
  v79 = v100;
  v80 = v115;
  v81 = v117;
  v88(v100, v115, v117);
  Page.init(id:title:text:subPages:iconName:)(v79, v108, v109, v110, v111, v112, v113, v114);
  v82 = v116[1];
  v82(v118, v81);
  v82(v80, v81);
  v82(v101, v81);
  return v8;
}

uint64_t sub_23DA255E0()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__correctPhrase;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__startingPhrase, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__currentPhrase, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__practiceCompleted;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAC8, &qword_23DB75318);
  v6 = *(*(v5 - 8) + 8);

  return v6(v0 + v4, v5);
}

uint64_t sub_23DA256EC()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__correctPhrase;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__startingPhrase, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__currentPhrase, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__practiceCompleted;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAC8, &qword_23DB75318);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_23DA25878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v9;
  v28 = a7;
  v29 = a8;
  v27 = a6;
  v16 = sub_23DB6EA8C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v10 + 48);
  v23 = *(v10 + 52);
  v24 = swift_allocObject();
  (*(v17 + 16))(v21, a1, v16);
  a9(v21, a2, a3, a4, a5, v27, v28, v29);
  (*(v17 + 8))(a1, v16);
  return v24;
}

uint64_t sub_23DA259D0()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__correctPhrase;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__startingPhrase, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__currentPhrase, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__practiceCompleted;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAC8, &qword_23DB75318);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_23DA25B50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  return v1;
}

uint64_t sub_23DA25BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v42 = a1;
  v43 = a2;
  v41 = sub_23DB6EA8C();
  v9 = *(v41 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v41, v11);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB28, &qword_23DB76220);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v39 - v17;
  v19 = *(v8 + 48);
  v20 = *(v8 + 52);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedCorrectPhrase;
  v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v24 = sub_23DB7087C();
  v25 = [v23 initWithString_];

  v50 = v25;
  sub_23DA3DB58();
  sub_23DB6EECC();
  v26 = *(v14 + 32);
  v26(v21 + v22, v18, v13);
  v27 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedCurrentPhrase;
  v28 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v29 = sub_23DB7087C();
  v30 = [v28 initWithString_];

  v50 = v30;
  sub_23DB6EECC();
  v26(v21 + v27, v18, v13);
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedStartingPhrase;
  v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v33 = sub_23DB7087C();
  v34 = [v32 initWithString_];

  v50 = v34;
  sub_23DB6EECC();
  v26(v21 + v31, v18, v13);
  v36 = v40;
  v35 = v41;
  v37 = v42;
  (*(v9 + 16))(v40, v42, v41);
  sub_23DA24B98(v36, v43, v44, v45, v46, v47, v48, v49);
  (*(v9 + 8))(v37, v35);
  return v21;
}

uint64_t sub_23DA25EDC()
{
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedCorrectPhrase;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB28, &qword_23DB76220);
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v5(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedCurrentPhrase, v2);
  v3 = v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedStartingPhrase;

  return (v5)(v3, v2);
}

uint64_t sub_23DA25FAC()
{
  Page.Practice.deinit();
  v1 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__correctPhrase;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__startingPhrase, v2);
  v3(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__currentPhrase, v2);
  v4 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page17PracticeShortText__practiceCompleted;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCAC8, &qword_23DB75318);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedCorrectPhrase;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB28, &qword_23DB76220);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedCurrentPhrase, v7);
  v8(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedStartingPhrase, v7);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v9, v10);
}

uint64_t sub_23DA2619C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v110 = a7;
  v111 = a8;
  v108 = a5;
  v109 = a6;
  v106 = a3;
  v107 = a4;
  v105 = a2;
  v112 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v103 = *(v9 - 8);
  v104 = v9;
  v10 = *(v103 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v102 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v100 = *(v13 - 8);
  v101 = v13;
  v14 = *(v100 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v99 = &v80 - v16;
  *&v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v93 = *(v94 - 8);
  v17 = *(v93 + 64);
  MEMORY[0x28223BE20](v94, v18);
  v92 = &v80 - v19;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v86 = *(v89 - 8);
  v20 = *(v86 + 64);
  MEMORY[0x28223BE20](v89, v21);
  v83 = &v80 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v81 = *(v23 - 8);
  v24 = *(v81 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v80 - v26;
  v28 = sub_23DB6EA8C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v95 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v80 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v80 - v41;
  v43 = *(v8 + 48);
  v44 = *(v8 + 52);
  v45 = swift_allocObject();
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeCommandsCheckmark__currentIcon;
  v113 = 0uLL;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v47 = *(v38 + 32);
  v82 = v42;
  v87 = v37;
  v85 = v47;
  v84 = v38 + 32;
  v47(v45 + v46, v42, v37);
  v96 = v36;
  v97 = v29;
  v48 = *(v29 + 16);
  v49 = v36;
  v50 = v23;
  v51 = v81;
  v98 = v28;
  v91 = v29 + 16;
  v90 = v48;
  v48(v49, v112, v28);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v113) = 0;
  sub_23DB6EECC();
  v53 = v50;
  v54 = v50;
  v55 = *(v51 + 32);
  v55(v45 + v52, v27, v54);
  v56 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v57 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v57 = MEMORY[0x277D84FA0];
  }

  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v57;
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v113 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v59 = v83;
  sub_23DB6EECC();
  (*(v86 + 32))(v45 + v58, v59, v89);
  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v56;
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v113 = 0;
  v61 = v92;
  sub_23DB6EECC();
  (*(v93 + 32))(v45 + v60, v61, v94);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v113) = 0;
  sub_23DB6EECC();
  v80 = v53;
  v63 = v55;
  v55(v45 + v62, v27, v53);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v94 = xmmword_23DB74320;
  v113 = xmmword_23DB74320;
  v65 = v82;
  sub_23DB6EECC();
  v66 = v87;
  v67 = v85;
  v85(v45 + v64, v65, v87);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v113 = v94;
  sub_23DB6EECC();
  v67(v45 + v68, v65, v66);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v113) = 0;
  sub_23DB6EECC();
  v63(v45 + v69, v27, v80);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v113 = 0;
  *(&v113 + 1) = 0xE000000000000000;
  v71 = v99;
  sub_23DB6EECC();
  (*(v100 + 32))(v45 + v70, v71, v101);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v113 = 0uLL;
  sub_23DB6EECC();
  v67(v45 + v72, v65, v66);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v113 = nullsub_1;
  *(&v113 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v74 = v102;
  sub_23DB6EECC();
  (*(v103 + 32))(v45 + v73, v74, v104);
  v75 = v95;
  v76 = v96;
  v77 = v98;
  v90(v95, v96, v98);
  Page.init(id:title:text:subPages:iconName:)(v75, v105, v106, v107, v108, v109, v110, v111);
  v78 = *(v97 + 8);
  v78(v112, v77);
  v78(v76, v77);
  return v45;
}

uint64_t sub_23DA26A74(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v106 = a7;
  v107 = a8;
  v104 = a5;
  v105 = a6;
  v102 = a3;
  v103 = a4;
  v101 = a2;
  v108 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v99 = *(v9 - 8);
  v100 = v9;
  v10 = *(v99 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v98 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = *(v96 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v91 = &v77 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v90 = *(v87 - 8);
  v17 = *(v90 + 8);
  MEMORY[0x28223BE20](v87, v18);
  *&v89 = &v77 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v81 = *(v82 - 8);
  v20 = *(v81 + 64);
  MEMORY[0x28223BE20](v82, v21);
  v80 = &v77 - v22;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v23 = *(v78 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v78, v25);
  v27 = &v77 - v26;
  v28 = sub_23DB6EA8C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v92 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v77 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v77 - v41;
  v43 = *(v8 + 48);
  v44 = *(v8 + 52);
  v45 = swift_allocObject();
  v46 = (v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands_foregroundAppIcon);
  *v46 = 0;
  v46[1] = 0;
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands__hiddenText;
  *&v109 = 0;
  *(&v109 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v48 = *(v38 + 32);
  v83 = v42;
  v88 = v37;
  v86 = v38 + 32;
  v79 = v48;
  v48(v45 + v47, v42, v37);
  v93 = v36;
  v94 = v29;
  v49 = *(v29 + 16);
  v95 = v28;
  v85 = v29 + 16;
  v84 = v49;
  v49(v36, v108, v28);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v109) = 0;
  sub_23DB6EECC();
  v51 = *(v23 + 32);
  v52 = v78;
  v51(v45 + v50, v27);
  v53 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v54 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v54 = MEMORY[0x277D84FA0];
  }

  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v54;
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v109 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v56 = v80;
  sub_23DB6EECC();
  (*(v81 + 32))(v45 + v55, v56, v82);
  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v53;
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v109 = 0;
  v58 = v89;
  sub_23DB6EECC();
  (*(v90 + 4))(v45 + v57, v58, v87);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v109) = 0;
  sub_23DB6EECC();
  v60 = v52;
  (v51)(v45 + v59, v27, v52);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v89 = xmmword_23DB74320;
  v109 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v90 = v51;
  v62 = v91;
  sub_23DB6EECC();
  v63 = v97;
  v64 = *(v96 + 32);
  v64(v45 + v61, v62, v97);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v109 = v89;
  sub_23DB6EECC();
  v64(v45 + v65, v62, v63);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v109) = 0;
  sub_23DB6EECC();
  v90(v45 + v66, v27, v60);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v109 = 0;
  *(&v109 + 1) = 0xE000000000000000;
  v68 = v83;
  sub_23DB6EECC();
  v79(v45 + v67, v68, v88);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v109 = 0uLL;
  sub_23DB6EECC();
  v64(v45 + v69, v62, v63);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v109 = nullsub_1;
  *(&v109 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v71 = v98;
  sub_23DB6EECC();
  (*(v99 + 32))(v45 + v70, v71, v100);
  v72 = v92;
  v73 = v93;
  v74 = v95;
  v84(v92, v93, v95);
  Page.init(id:title:text:subPages:iconName:)(v72, v101, v102, v103, v104, v105, v106, v107);
  v75 = *(v94 + 8);
  v75(v108, v74);
  v75(v73, v74);
  return v45;
}

uint64_t sub_23DA2731C()
{
  v1 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands_foregroundAppIcon + 8);

  v2 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands__hiddenText;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t sub_23DA273A4()
{
  Page.Practice.deinit();
  v1 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands_foregroundAppIcon + 8);

  v2 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands__hiddenText;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_23DA2748C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v102 = a7;
  v103 = a8;
  v100 = a5;
  v101 = a6;
  v98 = a3;
  v99 = a4;
  v97 = a2;
  v104 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v94 = &v74 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v88 = *(v93 - 8);
  v13 = *(v88 + 8);
  MEMORY[0x28223BE20](v93, v14);
  v87 = &v74 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v86 = *(v83 - 8);
  v16 = *(v86 + 64);
  MEMORY[0x28223BE20](v83, v17);
  v85 = &v74 - v18;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v77 = *(v78 - 8);
  v19 = *(v77 + 64);
  MEMORY[0x28223BE20](v78, v20);
  v75 = &v74 - v21;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v22 = *(v74 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v74, v24);
  v26 = &v74 - v25;
  v27 = sub_23DB6EA8C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v89 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v74 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  v41 = &v74 - v40;
  v42 = *(v8 + 48);
  v43 = *(v8 + 52);
  v44 = swift_allocObject();
  v45 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeUneditableText__exampleText;
  *&v105 = 0;
  *(&v105 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v46 = *(v37 + 32);
  v79 = v41;
  v84 = v36;
  v80 = v37 + 32;
  v76 = v46;
  v46(v44 + v45, v41, v36);
  v90 = v35;
  v91 = v28;
  v47 = *(v28 + 16);
  v92 = v27;
  v82 = v28 + 16;
  v81 = v47;
  v47(v35, v104, v27);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v49 = *(v22 + 32);
  v50 = v74;
  v49(v44 + v48, v26);
  v51 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v52 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v52 = MEMORY[0x277D84FA0];
  }

  *(v44 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v52;
  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v105 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v54 = v75;
  sub_23DB6EECC();
  (*(v77 + 32))(v44 + v53, v54, v78);
  *(v44 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v51;
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v105 = 0;
  v56 = v85;
  sub_23DB6EECC();
  (*(v86 + 32))(v44 + v55, v56, v83);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  (v49)(v44 + v57, v26, v50);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v86 = xmmword_23DB74320;
  v105 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v59 = v87;
  sub_23DB6EECC();
  v60 = *(v88 + 4);
  v88 = v49;
  v61 = v93;
  v60(v44 + v58, v59, v93);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v105 = v86;
  sub_23DB6EECC();
  v60(v44 + v62, v59, v61);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v105) = 0;
  sub_23DB6EECC();
  v88(v44 + v63, v26, v50);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v105 = 0;
  *(&v105 + 1) = 0xE000000000000000;
  v65 = v79;
  sub_23DB6EECC();
  v76(v44 + v64, v65, v84);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v105 = 0uLL;
  sub_23DB6EECC();
  v60(v44 + v66, v59, v61);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v105 = nullsub_1;
  *(&v105 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v68 = v94;
  sub_23DB6EECC();
  (*(v95 + 32))(v44 + v67, v68, v96);
  v69 = v89;
  v70 = v90;
  v71 = v92;
  v81(v89, v90, v92);
  Page.init(id:title:text:subPages:iconName:)(v69, v97, v98, v99, v100, v101, v102, v103);
  v72 = *(v91 + 8);
  v72(v104, v71);
  v72(v70, v71);
  return v44;
}

uint64_t (*sub_23DA27D58())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *(swift_allocObject() + 16) = v1;
  return sub_23DA40738;
}

uint64_t sub_23DA27E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v102 = a7;
  v103 = a8;
  v100 = a5;
  v101 = a6;
  v98 = a3;
  v99 = a4;
  v97 = a2;
  v105 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v93 = v76 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v91 = *(v94 - 8);
  v13 = *(v91 + 64);
  MEMORY[0x28223BE20](v94, v14);
  v86 = v76 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v83 = *(v84 - 1);
  v16 = *(v83 + 64);
  MEMORY[0x28223BE20](v84, v17);
  v82 = v76 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v78 = *(v79 - 8);
  v19 = *(v78 + 64);
  MEMORY[0x28223BE20](v79, v20);
  v77 = v76 - v21;
  v22 = sub_23DB6EA8C();
  v104 = *(v22 - 8);
  v23 = v104[8];
  v25 = MEMORY[0x28223BE20](v22, v24);
  v89 = v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = v76 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = v76 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  v41 = v76 - v40;
  v42 = *(v8 + 48);
  v43 = *(v8 + 52);
  v44 = swift_allocObject();
  v45 = (v44 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid_cardSymbols);
  *v45 = 0;
  v45[1] = 0xE000000000000000;
  v45[2] = 0;
  v45[3] = 0xE000000000000000;
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid__gridNumberDidChange;
  *&v106 = nullsub_1;
  *(&v106 + 1) = 0;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  sub_23DB6EECC();
  v47 = *(v37 + 32);
  v85 = v41;
  v88 = v36;
  v87 = v37 + 32;
  v80 = v47;
  v47(v44 + v46, v41, v36);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid__clickedButton;
  LOBYTE(v106) = 0;
  sub_23DB6EECC();
  v49 = *(v31 + 32);
  v49(v44 + v48, v35, v30);
  v50 = v104[2];
  v90 = v29;
  v92 = v22;
  v76[1] = v104 + 2;
  v76[0] = v50;
  v50(v29, v105, v22);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v106) = 0;
  sub_23DB6EECC();
  v49(v44 + v51, v35, v30);
  v52 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v53 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v53 = MEMORY[0x277D84FA0];
  }

  *(v44 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v53;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v106 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v55 = v77;
  sub_23DB6EECC();
  (*(v78 + 32))(v44 + v54, v55, v79);
  *(v44 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v52;
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v106 = 0;
  v57 = v82;
  sub_23DB6EECC();
  (*(v83 + 32))(v44 + v56, v57, v84);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v106) = 0;
  sub_23DB6EECC();
  v59 = v30;
  v49(v44 + v58, v35, v30);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v83 = xmmword_23DB74320;
  v106 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v84 = v49;
  v61 = v86;
  sub_23DB6EECC();
  v62 = *(v91 + 32);
  v63 = v94;
  v62(v44 + v60, v61, v94);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v106 = v83;
  sub_23DB6EECC();
  v62(v44 + v64, v61, v63);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v106) = 0;
  sub_23DB6EECC();
  v84(v44 + v65, v35, v59);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v106 = 0;
  *(&v106 + 1) = 0xE000000000000000;
  v67 = v93;
  sub_23DB6EECC();
  (*(v95 + 32))(v44 + v66, v67, v96);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v106 = 0uLL;
  sub_23DB6EECC();
  v62(v44 + v68, v61, v63);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v106 = nullsub_1;
  *(&v106 + 1) = 0;
  v70 = v85;
  sub_23DB6EECC();
  v80(v44 + v69, v70, v88);
  v71 = v89;
  v72 = v90;
  v73 = v92;
  (v76[0])(v89, v90, v92);
  Page.init(id:title:text:subPages:iconName:)(v71, v97, v98, v99, v100, v101, v102, v103);
  v74 = v104[1];
  v74(v105, v73);
  v74(v72, v73);
  return v44;
}

uint64_t sub_23DA28708()
{
  v1 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid_cardSymbols + 8);
  v2 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid_cardSymbols + 24);

  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid__gridNumberDidChange;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid__clickedButton;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

uint64_t sub_23DA287E8()
{
  Page.Practice.deinit();
  v1 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid_cardSymbols + 8);
  v2 = *(v0 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid_cardSymbols + 24);

  v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid__gridNumberDidChange;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid__clickedButton;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_23DA2891C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v115 = a7;
  v116 = a8;
  v113 = a5;
  v114 = a6;
  v111 = a3;
  v112 = a4;
  v110 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v108 = *(v10 - 8);
  v109 = v10;
  v11 = *(v108 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v107 = &v84 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v105 = *(v14 - 8);
  v106 = v14;
  v15 = *(v105 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v104 = &v84 - v17;
  *&v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v95 = *(v96 - 8);
  v18 = *(v95 + 64);
  MEMORY[0x28223BE20](v96, v19);
  v92 = &v84 - v20;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v90 = *(v91 - 8);
  v21 = *(v90 + 64);
  MEMORY[0x28223BE20](v91, v22);
  v89 = &v84 - v23;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v118 = *(v85 - 8);
  v24 = *(v118 + 64);
  MEMORY[0x28223BE20](v85, v25);
  v84 = &v84 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v84 - v31;
  v33 = sub_23DB6EA8C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v37 = MEMORY[0x28223BE20](v33, v36);
  v99 = &v84 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v42 = &v84 - v41;
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v84 - v44;
  v46 = *(v8 + 48);
  v47 = *(v8 + 52);
  v48 = swift_allocObject();
  v103 = v34;
  v49 = *(v34 + 16);
  v117 = a1;
  v49(v45, a1, v33);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeCommandsCheckmark__currentIcon;
  v119 = 0uLL;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v51 = *(v28 + 32);
  v86 = v32;
  v100 = v27;
  v52 = v27;
  v53 = v85;
  v98 = v28 + 32;
  v87 = v51;
  v51(v48 + v50, v32, v52);
  v101 = v45;
  v102 = v42;
  v97 = v33;
  v54 = v84;
  v94 = v34 + 16;
  v93 = v49;
  v49(v42, v45, v33);
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v119) = 0;
  sub_23DB6EECC();
  v56 = v54;
  v57 = v54;
  v58 = v53;
  v59 = v118 + 32;
  v60 = *(v118 + 32);
  v60(v48 + v55, v57, v53);
  v61 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v62 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v62 = MEMORY[0x277D84FA0];
  }

  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v62;
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v119 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v64 = v89;
  sub_23DB6EECC();
  (*(v90 + 32))(v48 + v63, v64, v91);
  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v61;
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v119 = 0;
  v66 = v92;
  sub_23DB6EECC();
  (*(v95 + 32))(v48 + v65, v66, v96);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v119) = 0;
  sub_23DB6EECC();
  v118 = v59;
  v60(v48 + v67, v56, v53);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v96 = xmmword_23DB74320;
  v119 = xmmword_23DB74320;
  v69 = v86;
  sub_23DB6EECC();
  v70 = v100;
  v71 = v87;
  v87(v48 + v68, v69, v100);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v119 = v96;
  sub_23DB6EECC();
  v71(v48 + v72, v69, v70);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v119) = 0;
  sub_23DB6EECC();
  v60(v48 + v73, v56, v58);
  v74 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  v75 = v104;
  sub_23DB6EECC();
  (*(v105 + 32))(v48 + v74, v75, v106);
  v76 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v119 = 0uLL;
  sub_23DB6EECC();
  v71(v48 + v76, v69, v70);
  v77 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v119 = nullsub_1;
  *(&v119 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v78 = v107;
  sub_23DB6EECC();
  (*(v108 + 32))(v48 + v77, v78, v109);
  v79 = v99;
  v80 = v102;
  v81 = v97;
  v93(v99, v102, v97);
  Page.init(id:title:text:subPages:iconName:)(v79, v110, v111, v112, v113, v114, v115, v116);
  v82 = *(v103 + 8);
  v82(v117, v81);
  v82(v80, v81);
  v82(v101, v81);
  return v48;
}

uint64_t sub_23DA29254(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v98 = a7;
  v99 = a8;
  v96 = a5;
  v97 = a6;
  v94 = a3;
  v95 = a4;
  v93 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v91 = *(v10 - 8);
  v92 = v10;
  v11 = *(v91 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v90 = &v73 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v88 = *(v14 - 8);
  v89 = v14;
  v15 = *(v88 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v85 = &v73 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v86 = *(v18 - 8);
  v87 = v18;
  v19 = *(v86 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v73 - v21;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v77 = *(v78 - 1);
  v23 = *(v77 + 64);
  MEMORY[0x28223BE20](v78, v24);
  v76 = &v73 - v25;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v74 = *(v75 - 8);
  v26 = *(v74 + 64);
  MEMORY[0x28223BE20](v75, v27);
  v29 = &v73 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v73 - v34;
  v36 = sub_23DB6EA8C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v40 = MEMORY[0x28223BE20](v36, v39);
  v81 = &v73 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v73 - v43;
  v45 = *(v8 + 48);
  v46 = *(v8 + 52);
  v47 = swift_allocObject();
  v83 = v37;
  v48 = *(v37 + 16);
  v82 = v44;
  v100 = a1;
  v84 = v36;
  v80 = v37 + 16;
  v79 = v48;
  v48(v44, a1, v36);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  v50 = *(v31 + 32);
  v51 = v30;
  v50(v47 + v49, v35, v30);
  v52 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v53 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v53 = MEMORY[0x277D84FA0];
  }

  *(v47 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v53;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v101 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v74 + 32))(v47 + v54, v29, v75);
  *(v47 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v52;
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v101 = 0;
  v56 = v76;
  sub_23DB6EECC();
  (*(v77 + 32))(v47 + v55, v56, v78);
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  v50(v47 + v57, v35, v30);
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v77 = xmmword_23DB74320;
  v101 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v78 = v50;
  v59 = v87;
  v60 = *(v86 + 32);
  v60(v47 + v58, v22, v87);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v101 = v77;
  sub_23DB6EECC();
  v60(v47 + v61, v22, v59);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v101) = 0;
  sub_23DB6EECC();
  v78(v47 + v62, v35, v51);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  v64 = v85;
  sub_23DB6EECC();
  (*(v88 + 32))(v47 + v63, v64, v89);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v101 = 0uLL;
  sub_23DB6EECC();
  v60(v47 + v65, v22, v59);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v101 = nullsub_1;
  *(&v101 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v67 = v90;
  sub_23DB6EECC();
  (*(v91 + 32))(v47 + v66, v67, v92);
  v68 = v81;
  v69 = v82;
  v70 = v84;
  v79(v81, v82, v84);
  Page.init(id:title:text:subPages:iconName:)(v68, v93, v94, v95, v96, v97, v98, v99);
  v71 = *(v83 + 8);
  v71(v100, v70);
  v71(v69, v70);
  return v47;
}