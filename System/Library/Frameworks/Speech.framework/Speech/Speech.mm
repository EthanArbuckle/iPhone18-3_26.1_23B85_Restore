uint64_t SFEntitledAssetTypeForTaskHint(unint64_t a1)
{
  result = 3;
  v3 = a1 + 23;
  if (a1 - 1001 > 0xC)
  {
    goto LABEL_5;
  }

  if (((1 << v3) & 0x4FF) != 0)
  {
    return result;
  }

  if (((1 << v3) & 0x1300) != 0)
  {
    return 7;
  }

LABEL_5:
  if (a1 >= 4)
  {
    return 0;
  }

  return result;
}

void sub_1AC5BE81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SFLSRGetInterface()
{
  v38[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F215B4C8];
  v1 = MEMORY[0x1E695DFD8];
  v38[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_startRecordedAudioDictationWithParameters_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_installedLanguagesForAssetType_completion_ argumentIndex:0 ofReply:1];

  v7 = MEMORY[0x1E695DFD8];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_initializeWithSandboxExtensions_ argumentIndex:0 ofReply:0];

  v10 = MEMORY[0x1E695DFD8];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v35[2] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_logCoreAnalyticsEvent_withAnalytics_ argumentIndex:1 ofReply:0];

  v13 = MEMORY[0x1E695DFD8];
  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v15 = [v13 setWithArray:v14];
  [v0 setClasses:v15 forSelector:sel_createPhraseCountsArtifactWithIdentifier_rawPhraseCountsPath_customPronunciationsPath_writeToDirectory_sandboxExtensions_completion_ argumentIndex:5 ofReply:0];

  v16 = MEMORY[0x1E695DFD8];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v18 = [v16 setWithArray:v17];
  [v0 setClasses:v18 forSelector:sel_createNgramCountsArtifactFromPhraseCountArtifact_writeToDirectory_sandboxExtensions_completion_ argumentIndex:2 ofReply:0];

  v19 = MEMORY[0x1E695DFD8];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v21 = [v19 setWithArray:v20];
  [v0 setClasses:v21 forSelector:sel_trainAppLmFromNgramCountsArtifact_forApp_language_writeToDirectory_sandboxExtensions_completion_ argumentIndex:4 ofReply:0];

  v22 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v24 = [v22 setWithArray:v23];
  [v0 setClasses:v24 forSelector:sel_setPurgeabilityForAssetWithConfig_purgeable_clientID_completion_ argumentIndex:0 ofReply:0];

  v25 = MEMORY[0x1E695DFD8];
  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v30[2] = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
  v27 = [v25 setWithArray:v26];
  [v0 setClasses:v27 forSelector:sel_subscriptionsForClientId_completion_ argumentIndex:0 ofReply:1];

  v28 = *MEMORY[0x1E69E9840];

  return v0;
}

void SFLogInitIfNeeded()
{
  if (SFLogInitIfNeeded_once != -1)
  {
    dispatch_once(&SFLogInitIfNeeded_once, &__block_literal_global_3109);
  }
}

id SFLSRDelegateGetInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2151A80];
  v1 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v1 forSelector:sel_localSpeechRecognitionDidRecognizePartialResult_rawPartialResult_ argumentIndex:0 ofReply:0];

  v2 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v2 forSelector:sel_localSpeechRecognitionDidRecognizePartialResult_rawPartialResult_ argumentIndex:1 ofReply:0];

  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v3 forSelector:sel_localSpeechRecognitionDidFinishRecognition_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t __SFLogInitIfNeeded_block_invoke()
{
  v0 = os_log_create(kSFLoggingSubsystem, kSFLogConnection);
  v1 = SFLogConnection;
  SFLogConnection = v0;

  SFLogFramework = os_log_create(kSFLoggingSubsystem, kSFLogFramework);

  return MEMORY[0x1EEE66BB8]();
}

__CFString *SFEntitledAssetTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E797BC18[a1 - 1];
  }
}

id SFReplacementLocaleCodeForLocaleIdentifier(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (SFReplacementLocaleCodeForLocaleIdentifier_onceToken != -1)
    {
      dispatch_once(&SFReplacementLocaleCodeForLocaleIdentifier_onceToken, &__block_literal_global);
    }

    v2 = [SFUtilities stringByReplacingUnderscoresWithHyphens:v1];

    v1 = [SFReplacementLocaleCodeForLocaleIdentifier_sReplacementLocaleCodeForLocaleIdentifier objectForKey:v2];
  }

  return v1;
}

uint64_t __SFIsInternalInstall_block_invoke()
{
  result = MGGetBoolAnswer();
  SFIsInternalInstall_isInternal = result;
  return result;
}

void __SFReplacementLocaleCodeForLocaleIdentifier_block_invoke()
{
  v0 = SFReplacementLocaleCodeForLocaleIdentifier_sReplacementLocaleCodeForLocaleIdentifier;
  SFReplacementLocaleCodeForLocaleIdentifier_sReplacementLocaleCodeForLocaleIdentifier = &unk_1F214A0A8;
}

uint64_t SFEntitledAssetStatusIsInstalled(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v1 stringWithFormat:@"%@:", @"Version"];
  v4 = [v2 containsString:v3];

  return v4;
}

uint64_t SFEntitledAssetStatusIsHighQuality(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:", @"HQ"];
  if ([v1 containsString:v2])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v1 isEqualToString:@"HQ"];
  }

  return v3;
}

id SFGeneralASRReplacementLanguageCodeForLocaleIdentifier(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy_;
    v15 = __Block_byref_object_dispose_;
    v16 = 0;
    if (SFGeneralASRReplacementLanguageCodeForLocaleIdentifier_onceToken != -1)
    {
      dispatch_once(&SFGeneralASRReplacementLanguageCodeForLocaleIdentifier_onceToken, &__block_literal_global_37);
    }

    v3 = [SFUtilities stringByReplacingUnderscoresWithHyphens:v2];

    v4 = SFGeneralASRReplacementLanguageCodeForLocaleIdentifier_sReplacementLanguageCodeForLocaleIdentifier;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __SFGeneralASRReplacementLanguageCodeForLocaleIdentifier_block_invoke_2;
    v8[3] = &unk_1E797BBF8;
    v5 = v3;
    v9 = v5;
    v10 = &v11;
    [v4 enumerateKeysAndObjectsUsingBlock:v8];
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1AC5BFC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SFGeneralASRReplacementLanguageCodeForLocaleIdentifier_block_invoke()
{
  v0 = SFGeneralASRReplacementLanguageCodeForLocaleIdentifier_sReplacementLanguageCodeForLocaleIdentifier;
  SFGeneralASRReplacementLanguageCodeForLocaleIdentifier_sReplacementLanguageCodeForLocaleIdentifier = &unk_1F214A0D0;
}

void __SFGeneralASRReplacementLanguageCodeForLocaleIdentifier_block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([*(a1 + 32) hasPrefix:a2])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void OUTLINED_FUNCTION_10()
{

  JUMPOUT(0x1B26E8C40);
}

void OUTLINED_FUNCTION_10_0(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  a1[4] = a4;
  a1[5] = a5;
  a1[2] = a2;
  a1[3] = a3;
  *v6 = v5;
}

uint64_t OUTLINED_FUNCTION_17()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_44()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_13(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1AC5C8B9C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_64(uint64_t a1)
{
  *(v1 + 56) = a1;
  *(v1 + 16) = a1;

  return nullsub_1();
}

uint64_t OUTLINED_FUNCTION_10_8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = a2;
  a1[8] = v2;
  a1[4] = v3;

  return sub_1AC79FF98();
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return sub_1AC7A0D38();
}

void OUTLINED_FUNCTION_10_14(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + ((a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t OUTLINED_FUNCTION_10_16()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_10_20()
{

  JUMPOUT(0x1B26E8C40);
}

uint64_t OUTLINED_FUNCTION_49()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_132()
{

  return sub_1AC7A0758();
}

id OUTLINED_FUNCTION_49_3(void *a1)
{

  return [a1 init];
}

void OUTLINED_FUNCTION_49_4()
{

  JUMPOUT(0x1B26E8C40);
}

uint64_t OUTLINED_FUNCTION_49_5()
{
  v1 = v0[35];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v5 = v0[20];
  v7 = v0[21];
  return 0;
}

void OUTLINED_FUNCTION_49_6(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, os_log_type_t a12)
{

  _os_log_impl(a1, v12, a12, a4, v13, 0x20u);
}

uint64_t OUTLINED_FUNCTION_68_1()
{

  return sub_1AC7A0CC8();
}

void OUTLINED_FUNCTION_68_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x1B26E9A40);
}

uint64_t OUTLINED_FUNCTION_68_5(uint64_t a1, unsigned __int16 a2)
{
  v4 = a2 | 0xED00007478650000;

  return sub_1AC6DC6E0(a1, v4, v2);
}

uint64_t OUTLINED_FUNCTION_53()
{

  return sub_1AC7A0D38();
}

void *OUTLINED_FUNCTION_15_2(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char __dst)
{

  return memcpy(&__dst, __src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_129()
{

  JUMPOUT(0x1B26EAB10);
}

uint64_t OUTLINED_FUNCTION_15_7()
{

  return sub_1AC7A0B78();
}

uint64_t OUTLINED_FUNCTION_15_12()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  result = v0[10];
  v8 = v0[8];
  v9 = *(v0[9] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_15()
{

  return swift_beginAccess();
}

void sub_1AC5C090C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v9 = a2;
  v7 = a3;
  v8 = OUTLINED_FUNCTION_89();
  v6(v8);
}

uint64_t OUTLINED_FUNCTION_81(uint64_t a1)
{
  *(v2 - 104) = a1;
  *(v2 - 128) = v1;
  v3 = *(v2 - 80);
  *(v2 - 192) = *(v2 - 96);
  *(v2 - 176) = v3;
  sub_1AC5C3968((v2 - 128), (v2 - 160));

  return sub_1AC5C3978();
}

uint64_t OUTLINED_FUNCTION_81_0()
{
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[20];
}

BOOL OUTLINED_FUNCTION_366(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_81_2()
{

  return sub_1AC7A0D38();
}

void *OUTLINED_FUNCTION_81_4(void *result)
{
  result[2] = v1;
  result[3] = v2;
  result[4] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_29()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

unint64_t OUTLINED_FUNCTION_76_0(unint64_t result)
{
  *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(v1 + 48) + 8 * result) = v3;
  ++*(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_150()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_76_3()
{

  return sub_1AC79FCD8();
}

uint64_t OUTLINED_FUNCTION_61()
{
  result = v0[6];
  v2 = v0[4];
  v3 = *(v0[5] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_126()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_70()
{

  JUMPOUT(0x1B26EAB10);
}

__n128 OUTLINED_FUNCTION_60@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_6(uint64_t a1)
{
  *(v1 + 16) = a1;
  v4 = *(v3 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_18_9()
{

  return sub_1AC79FED8();
}

uint64_t OUTLINED_FUNCTION_18_10()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  return v0[12];
}

void OUTLINED_FUNCTION_18_15()
{
  v1 = v0[5];
  v2 = v0[7];
  v3 = v0[39];
}

uint64_t OUTLINED_FUNCTION_18_16()
{

  return sub_1AC7A0D38();
}

uint64_t OUTLINED_FUNCTION_27()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return sub_1AC7A0D38();
}

BOOL OUTLINED_FUNCTION_17_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_48()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_9(uint64_t a1, uint64_t a2)
{

  return sub_1AC5D1E4C(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_17_12()
{
  result = v0[59];
  v2 = v0[57];
  v3 = v0[52];
  v4 = *(v0[58] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_132_1(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

id OUTLINED_FUNCTION_149(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_132_2()
{
  v4 = *(v2 - 144);
  v5 = *(*(v2 - 152) + 80);
  v6 = (v1 + v5 + ((*(v0 + 80) + 24) & ~*(v0 + 80))) & ~v5;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_73_0(uint64_t result)
{
  *(result + 8) = sub_1AC60AA3C;
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_85_1()
{

  return sub_1AC7A0E78();
}

uint64_t OUTLINED_FUNCTION_20()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_73_2()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_153(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_103()
{
  result = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  return result;
}

void OUTLINED_FUNCTION_31_3(uint64_t a1, uint64_t a2, unint64_t a3)
{

  sub_1AC6482E4(a1, a2, a3, v4, v3);
}

void OUTLINED_FUNCTION_31_7()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
}

uint64_t OUTLINED_FUNCTION_31_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;

  return sub_1AC79FC78();
}

void OUTLINED_FUNCTION_31_11()
{

  JUMPOUT(0x1B26E8C40);
}

uint64_t OUTLINED_FUNCTION_31_12()
{
  v4 = *v0;
  v5 = v0[1];
  v2 = v0[2];
  return v1;
}

void OUTLINED_FUNCTION_31_13()
{
  *(v2 - 232) = 0;
  v3 = *(v2 - 128);
  v4 = *(v2 - 120);
  v5 = *(v2 - 112);
  *(v2 - 168) = *(v2 - 104);
  *(v2 - 160) = v3;
  *(v2 - 128) = *(v2 - 96);
  *(v2 - 200) = v3 + v1;
  *(v2 - 192) = v5;
  *(v2 - 216) = v0;
  *(v2 - 208) = v0 + 16;
  *(v2 - 152) = *(v3 + 16);
  *(v2 - 256) = v0 + 32;
  *(v2 - 280) = v1;
  v6 = *(v2 - 240);
}

void sub_1AC5C1298()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCE8, &qword_1AC7A8110);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_21_2(v8);
      OUTLINED_FUNCTION_20_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_15_1();
        sub_1AC5C6864(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D430, &qword_1AC7A8118);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_41_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[3];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_41_3()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_376(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_41_6()
{

  sub_1AC61CBD4();
}

void OUTLINED_FUNCTION_41_7(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v7 + a1) = v5;
  *(v7 + *(v6 + 60)) = a5;
  v8 = *(v6 + 52);
}

uint64_t OUTLINED_FUNCTION_41_8()
{

  return sub_1AC7A0628();
}

uint64_t OUTLINED_FUNCTION_41_11()
{

  return sub_1AC7A0368();
}

void OUTLINED_FUNCTION_70_3()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[61];
  v4 = v0[57];
  v5 = v0[52];
}

uint64_t OUTLINED_FUNCTION_70_4()
{
  v2 = *v0;
  v3 = v0[1];
}

uint64_t OUTLINED_FUNCTION_70_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_70_6@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 232) = a1;
  v3 = *(v2 - 288) + 1;
  result = v1;
  v6 = *(v2 - 256);
  v5 = *(v2 - 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_189()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_189_0()
{
  v2 = *(v0 + 32);

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_189_1(uint64_t a1)
{
  *(a1 + 8) = sub_1AC660B68;
  result = *(v1 + 960);
  v4 = *(v2 - 144);
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_189_2(uint64_t result, uint64_t a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_1(uint64_t a1)
{
  *(a1 + 8) = sub_1AC60B228;
  v2 = *(v1 + 24);
  return *(v1 + 48);
}

uint64_t OUTLINED_FUNCTION_65_2(uint64_t a1)
{
  v2 = *(a1 + 20);

  return sub_1AC79F8B8();
}

uint64_t OUTLINED_FUNCTION_65_3()
{

  return sub_1AC79FC98();
}

uint64_t OUTLINED_FUNCTION_65_5()
{
  sub_1AC703E6C(*((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));

  return sub_1AC7A0198();
}

uint64_t OUTLINED_FUNCTION_38_1(uint64_t a1, float a2)
{
  *v2 = a2;
  *(v3 - 104) = 0;
  *(v3 - 96) = 0xE000000000000000;
  *(v3 - 88) = a1;

  return sub_1AC7A09C8();
}

id OUTLINED_FUNCTION_38_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_38_6()
{
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[60];
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[56];
  v8 = v0[53];
}

void OUTLINED_FUNCTION_11()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[15];
}

void OUTLINED_FUNCTION_38_9()
{

  sub_1AC60DBDC();
}

uint64_t OUTLINED_FUNCTION_38_13()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_59(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_77_1()
{

  JUMPOUT(0x1B26EAB10);
}

uint64_t OUTLINED_FUNCTION_44_2()
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_508(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = *(v2 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_6(uint64_t a1)
{

  return sub_1AC5C720C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_44_7()
{
  v2 = *(v0 + 32);

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_44_8()
{
}

id sub_1AC5C19F4(id result, id a2, void (*a3)(id *))
{
  v4 = result;
  v5 = result;
  if (!result)
  {
    if (!a2)
    {
      goto LABEL_7;
    }

    result = a2;
    v5 = a2;
  }

  if (a3)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B990, &unk_1AC7B1850);
    v8 = v5;
    v9 = v4 == 0;
    v7 = v4;
    sub_1AC5C1AD0(v5);
    a3(&v8);
    sub_1AC601544(v5);
    return sub_1AC641B24(&v8);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AC5C1ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_130_0(a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_167(v8);
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_67_0();
  return sub_1AC5C1B84(a1, v11, v12, a4);
}

uint64_t sub_1AC5C1B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_1AC5D1E4C(a1, v43, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v44)
  {
    goto LABEL_6;
  }

  sub_1AC5D1E4C(v43, v42, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!OUTLINED_FUNCTION_205())
  {
    __swift_destroy_boxed_opaque_existential_0(v42);
LABEL_6:
    LOBYTE(v41) = a4(a1);
    v20 = OUTLINED_FUNCTION_180();
    OUTLINED_FUNCTION_111_0(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v32, v33, v34, AssociatedTypeWitness, v36, v37, v38, v39, v40, v41);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v43, &unk_1EB56C620);
  }

  v31 = a3;
  sub_1AC5D9384(&v41, &v36);
  v8 = v40;
  __swift_project_boxed_opaque_existential_1(&v36, v39);
  v9 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(&v32);
  OUTLINED_FUNCTION_163();
  v10 = OUTLINED_FUNCTION_133_0();
  v9(v10);
  if (v4)
  {
    __swift_deallocate_boxed_opaque_existential_0Tm(&v32);
    __swift_destroy_boxed_opaque_existential_0(&v36);
    __swift_destroy_boxed_opaque_existential_0(v42);
    sub_1AC5C71B8(v43, &unk_1EB56C620);
    *&v41 = v4;
    v11 = OUTLINED_FUNCTION_180();
    OUTLINED_FUNCTION_111_0(v11, v12, v13, v14, v15, v16, v17, v18, v29, v31, v32, v33, v34, AssociatedTypeWitness, v36, v37, v38, v39, v40, v41);
    return sub_1AC7A01C8();
  }

  v28 = a4(&v32);
  sub_1AC5C71B8(&v32, &unk_1EB56C620);
  v32 = v28;
  OUTLINED_FUNCTION_180();
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  __swift_destroy_boxed_opaque_existential_0(v42);
  return sub_1AC5C71B8(v43, &unk_1EB56C620);
}

uint64_t sub_1AC5C1E30()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_82();

  return v2();
}

uint64_t storeEnumTagSinglePayload for AnalyzerInput(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC5C1EE4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 440);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 448) = v0;

  v9 = *(v3 + 264);
  if (v0)
  {
    v10 = sub_1AC6741CC;
  }

  else
  {
    v10 = sub_1AC5CC370;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC5C1FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AC5D1E4C(a1, v9, &unk_1EB56C620, &unk_1AC7A7A00);
  sub_1AC5CFF64(a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D440, &qword_1AC7AF0E8);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  if (!v10)
  {
LABEL_11:
    sub_1AC5D1E4C(a1, a3, &unk_1EB56C620, &unk_1AC7A7A00);
    return sub_1AC5C720C(v9, &unk_1EB56D430, &qword_1AC7A8118);
  }

  sub_1AC5D1E4C(v9, v8, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
    goto LABEL_11;
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v8);
LABEL_5:
  __swift_destroy_boxed_opaque_existential_0(v11);
  sub_1AC5C720C(v9, &unk_1EB56C620, &unk_1AC7A7A00);
  sub_1AC5D1E4C(a1, v9, &unk_1EB56C620, &unk_1AC7A7A00);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
    result = swift_dynamicCast();
    if (result)
    {
      v7 = sub_1AC6EA410(v8[0], v8[1]);
      *(a3 + 24) = sub_1AC5CF764(0, &qword_1ED9372A0, 0x1E696B0E0);
      result = swift_unknownObjectRelease();
      *a3 = v7;
      return result;
    }
  }

  else
  {
    result = sub_1AC5C720C(v9, &unk_1EB56C620, &unk_1AC7A7A00);
  }

  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t initializeWithCopy for AnalyzerInput(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = v3;
  return a1;
}

uint64_t sub_1AC5C2260()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC5C2364()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  *(v5 + 120) = v0;

  if (!v0)
  {
    *(v5 + 128) = v3 & 1;
  }

  v11 = *(v5 + 32);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC5C2480()
{
  OUTLINED_FUNCTION_72();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_89();
  v6(v5);

  OUTLINED_FUNCTION_82();
  v8 = *(v0 + 128);

  return v7(v8);
}

uint64_t sub_1AC5C2524()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 816);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 824) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC5C261C()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[68];
  sub_1AC5C28A8(v0[98], v0[99]);
  v2 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_13_0(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 16) = result;
  return result;
}

void OUTLINED_FUNCTION_19_1()
{
  v1 = 1 << *(v0 + 32);
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  else
  {
    v2 = -1;
  }

  v3 = v2 & *(v0 + 56);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return sub_1AC7A0E98();
}

void OUTLINED_FUNCTION_19_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_19_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 696);
  return v2;
}

uint64_t OUTLINED_FUNCTION_19_6()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_19_7@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *v2;
  a2[1] = a1;
  v4 = v2[3];
  a2[2] = v2[2];
  a2[3] = v4;
  v5 = v2[5];
  a2[4] = v2[4];
  a2[5] = v5;
}

uint64_t OUTLINED_FUNCTION_19_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return sub_1AC5D1E4C(a1, v5, v2, v3);
}

unint64_t OUTLINED_FUNCTION_19_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *(v10 + 320);
  v15 = *(v10 + 296);
  *(v13 + 16) = v11;
  return v13 + ((*(a10 + 80) + 32) & ~*(a10 + 80)) + *(a10 + 72) * v12;
}

void OUTLINED_FUNCTION_19_15()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x1B26EAB10);
}

uint64_t sub_1AC5C28A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t OUTLINED_FUNCTION_2()
{

  return sub_1AC7A0E78();
}

uint64_t OUTLINED_FUNCTION_2_9()
{

  return swift_dynamicCastClass();
}

uint64_t OUTLINED_FUNCTION_2_13()
{
  result = v0[100];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[94];
  v6 = v0[91];
  v7 = v0[88];
  v8 = v0[87];
  v9 = v0[86];
  v10 = v0[85];
  v11 = v0[82];
  v12 = v0[79];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_15(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1AC5C8BE0(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_2_16(int *a1)
{
  *(v5 + a1[5]) = v4;
  v6 = (v5 + a1[6]);
  *v6 = v3;
  v6[1] = v2;
  v7 = v5 + a1[7];
  return v1;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 88);
  v4 = *(v2 + 72);
  return v2 + 40;
}

_OWORD *OUTLINED_FUNCTION_2_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return sub_1AC5C3968(&a14, &a11);
}

uint64_t sub_1AC5C2C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  v19 = *(v18 + 80);
  if (swift_distributed_actor_is_remote())
  {
    v20 = *(v18 + 224);
    v21 = *(v18 + 48);
    v22 = OUTLINED_FUNCTION_140(*(v18 + 80));
    *(v18 + 40) = v21;
    *(v18 + 32) = v22;
    sub_1AC5CF764(0, &qword_1EB56AB20, off_1E797ACC0);
    v23 = v21;
    OUTLINED_FUNCTION_86_3();
    v24 = OUTLINED_FUNCTION_63();
    sub_1AC5DE69C(v24);
    if (v20)
    {
      (*(*(v18 + 216) + 8))(*(v18 + 224), *(v18 + 208));
      v43 = *(v18 + 32);

      v44 = *(v18 + 224);
      v45 = *(v18 + 192);
      v46 = *(v18 + 200);
      OUTLINED_FUNCTION_37_3();
      v47 = *(v18 + 104);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_26();

      return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    else
    {
      v30 = *(v18 + 200);
      *(v18 + 256) = *(v18 + 258);
      OUTLINED_FUNCTION_65_3();
      v31 = OUTLINED_FUNCTION_39_3();
      sub_1AC5C31A8(v31);
      v32 = *(v18 + 168);
      v33 = *(v18 + 64);
      *(v18 + 16) = *(v18 + 56);
      *(v18 + 24) = v33;

      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_13_3();
      sub_1AC79FC98();
      v34 = OUTLINED_FUNCTION_39_3();
      sub_1AC5C6DD8(v34);
      v35 = *(v18 + 144);
      v36 = *(v18 + 112);
      sub_1AC5C6EC4(*(v18 + 72), *(v18 + 120), &qword_1EB56BB68, &qword_1AC7A8490);
      OUTLINED_FUNCTION_62_2();
      sub_1AC79FC98();
      OUTLINED_FUNCTION_39_3();
      sub_1AC5C6FD8();
      v37 = *(v18 + 192);
      *(v18 + 257) = *(v18 + 259);
      sub_1AC79FC98();
      v38 = OUTLINED_FUNCTION_39_3();
      v39 = sub_1AC5C31A8(v38);
      v41 = nullsub_1(v39, v40);
      nullsub_1(v41, v42);
      v56 = *(v18 + 104);
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7C98);
      v69 = v57;
      v58 = swift_task_alloc();
      *(v18 + 232) = v58;
      *v58 = v18;
      v58[1] = sub_1AC5C574C;
      v59 = *(v18 + 104);
      OUTLINED_FUNCTION_31_0(*(v18 + 80));
      OUTLINED_FUNCTION_26();

      return v63(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, v69, a15, a16, a17, a18);
    }
  }

  else
  {
    v25 = *(v18 + 80);
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_26();

    return MEMORY[0x1EEE6DFA0](v26, v27, v28);
  }
}

void OUTLINED_FUNCTION_64_2()
{

  JUMPOUT(0x1B26E8C40);
}

uint64_t OUTLINED_FUNCTION_64_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_64_8(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v4 + 16);
  v6 = *(a1 + 48) + *(v4 + 72) * (__clz(__rbit64(v3)) | (v2 << 6));
  return a2;
}

uint64_t OUTLINED_FUNCTION_35_3()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_4()
{

  return sub_1AC79FF08();
}

uint64_t OUTLINED_FUNCTION_202()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_418()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_35_6()
{
  v2 = *(v0 + 16) + 1;

  sub_1AC60DBDC();
}

__n128 OUTLINED_FUNCTION_21_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __n128 a11)
{
  *v11 = a9;
  v11[1] = a10;
  result = a11;
  v11[2] = a11;
  return result;
}

void OUTLINED_FUNCTION_35_8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

uint64_t OUTLINED_FUNCTION_35_10()
{
  v6 = *(v4 - 96);

  return sub_1AC5D1E4C(v6, v3 + v2, v0, v1);
}

void *OUTLINED_FUNCTION_35_12@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1AC6DC87C(a1, a2 | 0x8000000000000000, v2);
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 136);

  return sub_1AC5C6544();
}

uint64_t OUTLINED_FUNCTION_33_5(uint64_t a1)
{
  *(a1 + 8) = sub_1AC674020;
  v2 = *(v1 + 264);
  return 1;
}

uint64_t OUTLINED_FUNCTION_33_6()
{
  result = type metadata accessor for AnalysisOptions.LoggingInfo(0);
  v1 = *(result + 20);
  return result;
}

_OWORD *OUTLINED_FUNCTION_33_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{

  return sub_1AC5C3968((v9 - 128), &a9);
}

uint64_t OUTLINED_FUNCTION_33_9()
{
  v2 = *(v0 - 112);

  return sub_1AC79FED8();
}

void OUTLINED_FUNCTION_33_10()
{
  *(v6 + 8 * v1) = v3 | v2;
  *(*(v4 + 48) + v0) = v5;
  v7 = *(v4 + 16);
}

uint64_t OUTLINED_FUNCTION_33_11@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1AC6DC828(v9 + 29, (a1 - 32) | 0x8000000000000000, a9);
}

id OUTLINED_FUNCTION_33_12()
{

  return [v0 (v1 + 2040)];
}

void OUTLINED_FUNCTION_174_0()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_174_1()
{
  v3 = *(v1 + *(v0 + 48) + 8);
}

uint64_t sub_1AC5C3604(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_190()
{
  v2 = v0[12];
  v1 = v0[13];
  result = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = *(v0[9] + 8);
  return result;
}

id OUTLINED_FUNCTION_190_0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1AC5C368C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_80_0(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_80_1()
{

  return sub_1AC7A0E98();
}

uint64_t OUTLINED_FUNCTION_80_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_80_4()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_80_6(void *result)
{
  result[2] = v2;
  result[3] = v3;
  result[4] = v1;
  return result;
}

void OUTLINED_FUNCTION_80_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_127_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_105_0()
{
  v1 = v0[25];
  v2 = v0[24];
  v14 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  result = v0[14];
  v12 = v0[12];
  v13 = *(v0[13] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_105_1()
{
}

void OUTLINED_FUNCTION_105_2()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_107_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_107_2()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[2];
  v8 = v0[3];
  sub_1AC5C3958(v0[7]);
}

void OUTLINED_FUNCTION_107_3()
{
}

uint64_t sub_1AC5C3958(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

_OWORD *sub_1AC5C3968(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void OUTLINED_FUNCTION_11_0()
{

  JUMPOUT(0x1B26E8C40);
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t result)
{
  v4 = result & ~(v3 << *(v1 + 32));
  v5 = (v3 << v4) & ~*(v2 + 8 * (v4 >> 6));
  return result;
}

uint64_t OUTLINED_FUNCTION_11_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_24@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

void OUTLINED_FUNCTION_11_6()
{
  *(v0 + 336) = v1;
  *(v0 + 344) = v2;
  *(v0 + 352) = v3;
  *(v0 + 360) = v4;
  *(v0 + 368) = v5;
  *(v0 + 376) = v6;
  *(v0 + 384) = 0;
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t result)
{
  *(result + 8) = sub_1AC697FE4;
  v2 = *(v1 + 544);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_9()
{
  v2 = *(v0 + 72);

  return sub_1AC6B03E0();
}

uint64_t OUTLINED_FUNCTION_11_10(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_1AC5CFE74(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_11_11()
{
  v2 = v0[44];
  v3 = v0[41];
  v4 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
  *(v0[31] + v0[46]) = 0;
}

unint64_t OUTLINED_FUNCTION_11_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *v5;

  return sub_1AC5D0E20(a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_11_13()
{
  v2 = 1 << *(v0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v0 + 64);

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_11_14()
{

  return sub_1AC79FC98();
}

void OUTLINED_FUNCTION_11_17(uint64_t a1@<X8>)
{
  v1[12] = sub_1AC6BB2BC;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_11_18()
{

  return sub_1AC79F958();
}

uint64_t OUTLINED_FUNCTION_72_0(uint64_t result)
{
  *(result + 8) = sub_1AC6081FC;
  v2 = *(v1 + 112);
  v3 = *(v1 + 96);
  return result;
}

void OUTLINED_FUNCTION_96_0()
{

  JUMPOUT(0x1B26EAB10);
}

void *OUTLINED_FUNCTION_72_1@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 32), (v1 + 520), 0xA0uLL);
}

uint64_t OUTLINED_FUNCTION_72_2()
{
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  v5 = *(v0 + 216);
  v6 = *(v0 + 176);
  v7 = **(v0 + 168);
}

id OUTLINED_FUNCTION_72_3()
{
  *(v1 + v2) = 1;

  return v0;
}

uint64_t OUTLINED_FUNCTION_72_4(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7 = a7[6] + 24 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  v8 = (a7[7] + 16 * result);
  *v8 = a5;
  v8[1] = a6;
  v9 = a7[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_72_6()
{
  v1 = *(v0[15] + 104);
  result = v0[14];
  v3 = v0[16];
  return result;
}

uint64_t OUTLINED_FUNCTION_36_3()
{
  v2 = *(*(v0 + 168) + 8);
  result = v1;
  v4 = *(v0 + 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1, uint64_t a2)
{

  return related decl 'e' for SFSpeechErrorCode.init(_:description:)(1, a1, a2);
}

uint64_t OUTLINED_FUNCTION_36_6()
{
  result = type metadata accessor for LanguageDetector.LocaleAlternative(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_9(uint64_t a1)
{
  *(v1 + 32) = a1;
}

id OUTLINED_FUNCTION_36_10(void *a1)
{

  return [a1 (v1 + 1144)];
}

uint64_t OUTLINED_FUNCTION_13_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

__n128 OUTLINED_FUNCTION_13_6()
{
  result = *(v0 + 40);
  *(v0 + 104) = result;
  return result;
}

void OUTLINED_FUNCTION_13_9()
{
  v1[20] = sub_1AC70D65C;
  v1[21] = v0;
  v1[22] = v2;
}

uint64_t OUTLINED_FUNCTION_13_10()
{
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[21];
}

uint64_t OUTLINED_FUNCTION_13_15()
{

  return sub_1AC7A0B78();
}

void OUTLINED_FUNCTION_13_17()
{
  v1 = *(v0 + 20);
  v2 = *(v0 + 36);
  v3 = HIDWORD(*(v0 + 28));
}

uint64_t sub_1AC5C40B4()
{
  v1 = [*(v0 + 640) format];
  [v1 sampleRate];
  v3 = v2;
  v4 = v2;

  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v3 <= -1.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    OUTLINED_FUNCTION_1_8();
    swift_once();
    goto LABEL_10;
  }

  v5 = *(v0 + 544);
  v6 = sub_1AC5C45E8(*(v0 + 768), *(v0 + 776), v3);
  *&v4 = v5 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_measurements;
  OUTLINED_FUNCTION_574();
  v7 = v6 + *(*&v4 + 56);
  *(*&v4 + 56) = v7;
  if (!*(*&v4 + 8))
  {
    v8 = *(v0 + 56);
    if (*(v0 + 64))
    {
      v8 = 0;
    }

    *(*&v4 + 8) = v8;
  }

  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  OUTLINED_FUNCTION_134_3();
  swift_beginAccess();
  sub_1AC5C4678();
  v11 = *(*(*&v4 + 104) + 16);
  sub_1AC5C4690(v11);
  v12 = *(*&v4 + 104);
  *(v12 + 16) = v11 + 1;
  v13 = v12 + 24 * v11;
  *(v13 + 32) = v7;
  *(v13 + 40) = v9;
  *(v13 + 48) = v10;
  *(*&v4 + 104) = v12;
  swift_endAccess();
  if (*(*&v4 + 16) != 0.0)
  {
    goto LABEL_13;
  }

  v14 = [objc_opt_self() processInfo];
  [v14 systemUptime];
  v16 = v15;

  *(*&v4 + 16) = v16;
  *(*&v4 + 24) = mach_continuous_time();
  if (qword_1EB56B060 != -1)
  {
    goto LABEL_25;
  }

LABEL_10:
  v17 = *(v0 + 544);
  v18 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_asrId;
  sub_1AC6AA65C(v17 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_asrId, *(v0 + 608), &qword_1EB56B8F0, &unk_1AC7A9520);
  v19 = v17 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures;
  v20 = *(v19 + *(type metadata accessor for SpeechRecognizerSupportedFeatures() + 20));
  result = sub_1AC625D20(v20);
  if (!v22)
  {
    __break(1u);
    goto LABEL_27;
  }

  v23 = *(v0 + 600);
  v24 = *(v0 + 608);
  sub_1AC728430();

  v25 = OUTLINED_FUNCTION_117();
  sub_1AC5C9624(v25, v26, &unk_1AC7A9520);
  sub_1AC6AA65C(v17 + v18, v23, &qword_1EB56B8F0, &unk_1AC7A9520);
  result = sub_1AC625D20(v20);
  if (!v27)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v28 = *(v0 + 600);
  mach_continuous_time();
  OUTLINED_FUNCTION_117();
  sub_1AC728448();

  sub_1AC5C9624(v28, &qword_1EB56B8F0, &unk_1AC7A9520);
LABEL_13:
  v29 = (v0 + 260);
  v30 = *(v0 + 544) + *(v0 + 672);
  v31 = [objc_opt_self() processInfo];
  [v31 systemUptime];
  v33 = v32;

  *(*&v4 + 32) = v33;
  *(*&v4 + 40) = mach_continuous_time();
  v34 = *(v0 + 672);
  if (*(v30 + 48))
  {
    v35 = *(v0 + 544) + v34;
    v36 = *(v0 + 568);
    v37 = *(v0 + 584);
    *v35 = *(v0 + 552);
    *(v35 + 16) = v36;
    *(v35 + 32) = v37;
    *(v35 + 48) = 0;
  }

  else
  {
    v38 = *(v0 + 536);
    v39 = *(v0 + 544) + v34;
    v41 = *(v39 + 32);
    v40 = *(v39 + 40);
    v42 = *(v39 + 8);
    v43 = *(v39 + 16);
    *(v0 + 132) = *v39;
    *(v0 + 140) = v42;
    *(v0 + 148) = v43;
    *(v0 + 164) = v41;
    *(v0 + 172) = v40;
    sub_1AC7A0588();
    v44 = *(v0 + 292);
    v45 = *(v0 + 308);
    *v39 = *(v0 + 276);
    *(v39 + 16) = v44;
    *(v39 + 32) = v45;
    *(v39 + 48) = 0;
    sub_1AC5C46A8((v0 + 132));
  }

  v46 = *(v0 + 544) + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_volatileRange;
  if (*(v46 + 48) == 1)
  {
    v47 = (v0 + 592);
    v29 = (v0 + 584);
    v48 = (v0 + 576);
    v49 = (v0 + 568);
    v50 = (v0 + 560);
    v51 = (v0 + 552);
  }

  else
  {
    v51 = (v0 + 228);
    v52 = *(v0 + 536);
    v54 = *(v46 + 32);
    v53 = *(v46 + 40);
    v55 = *(v46 + 8);
    v56 = *(v46 + 16);
    *(v0 + 180) = *v46;
    *(v0 + 188) = v55;
    *(v0 + 196) = v56;
    *(v0 + 212) = v54;
    *(v0 + 220) = v53;
    sub_1AC7A0588();
    v50 = (v0 + 236);
    v49 = (v0 + 244);
    v48 = (v0 + 252);
    v47 = (v0 + 268);
  }

  v57 = *v29;
  v58 = *v48;
  v59 = *v49;
  v60 = *v50;
  v61 = *v51;
  v62 = *(v0 + 784);
  v68 = *(v0 + 776);
  v69 = *v47;
  v66 = *(v0 + 792);
  v67 = *(v0 + 768);
  v63 = *(v0 + 760);
  v70 = *(v0 + 608);
  v71 = *(v0 + 600);
  v64 = *(v0 + 528);
  *v46 = v61;
  *(v46 + 8) = v60;
  *(v46 + 16) = v59;
  *(v46 + 24) = v58;
  *(v46 + 32) = v57;
  *(v46 + 40) = v69;
  *(v46 + 48) = 0;

  sub_1AC5C28A8(v62, v66);
  sub_1AC5C28A8(v67, v68);
  *v64 = v61;
  v64[1] = v60;
  v64[2] = v59;
  v64[3] = v58;
  v64[4] = v57;
  v64[5] = v69;

  OUTLINED_FUNCTION_29();

  return v65();
}

double sub_1AC5C45E8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v3) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_8:
        __break(1u);
        JUMPOUT(0x1AC5C4650);
      }

      v3 = v3;
      return vcvtd_n_f64_s64(v3, 1uLL) / a3;
    case 2uLL:
      v5 = *(a1 + 16);
      v4 = *(a1 + 24);
      v6 = __OFSUB__(v4, v5);
      v3 = v4 - v5;
      if (!v6)
      {
        return vcvtd_n_f64_s64(v3, 1uLL) / a3;
      }

      goto LABEL_8;
    case 3uLL:
      return vcvtd_n_f64_s64(v3, 1uLL) / a3;
    default:
      v3 = BYTE6(a2);
      return vcvtd_n_f64_s64(v3, 1uLL) / a3;
  }
}

uint64_t OUTLINED_FUNCTION_564()
{

  return sub_1AC79FFF8();
}

uint64_t sub_1AC5C46A8(_OWORD *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v27 = &v26 - v6;
  v7 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_scheduledFinalizations;
  swift_beginAccess();
  v28 = v2;
  v8 = *(v2 + v7);
  v9 = *(v8 + 16);

  v10 = (v8 + 48);
  v11 = -v9;
  v12 = -1;
  do
  {
    v13 = v11 + v12;
    if (v11 + v12 == -1)
    {
      break;
    }

    if (++v12 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v14 = v10 + 3;
    v16 = *(v10 - 1);
    v15 = *v10;
    v17 = *(v10 - 2);
    sub_1AC7A0558();
    v18 = sub_1AC7A0678();
    v10 = v14;
  }

  while ((v18 & 1) == 0);

  v19 = v28;
  swift_beginAccess();
  v20 = sub_1AC5C4908((v19 + v7), a1);
  v21 = *(*(v19 + v7) + 16);
  if (v21 < v20)
  {
LABEL_10:
    __break(1u);
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  sub_1AC5C4EB8(v20, v21);
  result = swift_endAccess();
  if (v13 != -1)
  {
    v23 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v23);
    v24 = sub_1AC6A78C4(&qword_1EB56B408, type metadata accessor for SpeechRecognizerWorker);
    v25 = swift_allocObject();
    v25[2] = v19;
    v25[3] = v24;
    v25[4] = v19;
    swift_retain_n();
    sub_1AC659DBC();
  }

  return result;
}

uint64_t sub_1AC5C4908(uint64_t *a1, _OWORD *a2)
{
  v5 = swift_allocObject();
  v6 = a2[1];
  v5[1] = *a2;
  v5[2] = v6;
  v5[3] = a2[2];
  v7 = *a1;
  result = sub_1AC5C4B04(*a1, a2);
  if (v2)
  {
  }

  if (v9)
  {
    v10 = *(v7 + 16);

    return v10;
  }

  else
  {
    v31 = a1;
    v11 = result + 1;
    if (!__OFADD__(result, 1))
    {
      for (i = 24 * result; ; i += 24)
      {
        v13 = *(v7 + 16);
        if (v11 == v13)
        {
          v30 = result;

          return v30;
        }

        if (v11 >= v13)
        {
          break;
        }

        v14 = result;
        v15 = (v7 + i);
        v16 = *(v7 + i + 56);
        v17 = *(v7 + i + 64);
        v18 = *(v7 + i + 72);
        sub_1AC7A0558();
        if (sub_1AC7A0678())
        {
          result = v14;
        }

        else
        {
          result = v14;
          if (v11 != v14)
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_22;
            }

            v19 = *(v7 + 16);
            if (v14 >= v19)
            {
              goto LABEL_23;
            }

            if (v11 >= v19)
            {
              goto LABEL_24;
            }

            v20 = (v7 + 32 + 24 * v14);
            v21 = *v20;
            v22 = v20[1];
            v23 = v20[2];
            v24 = v15[7];
            v25 = v15[8];
            v26 = v15[9];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1AC704610(v7);
              v7 = v29;
            }

            result = v14;
            v27 = (v7 + 24 * v14);
            v27[4] = v24;
            v27[5] = v25;
            v27[6] = v26;
            v28 = (v7 + i);
            v28[7] = v21;
            v28[8] = v22;
            v28[9] = v23;
            *v31 = v7;
          }

          ++result;
        }

        ++v11;
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5C4B04(uint64_t a1, _OWORD *a2)
{
  v4 = swift_allocObject();
  v5 = 0;
  v6 = a2[1];
  v4[1] = *a2;
  v4[2] = v6;
  v4[3] = a2[2];
  v7 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v7 == v5)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    sub_1AC7A0558();
    if (sub_1AC7A0678())
    {
      break;
    }

    ++v5;
  }

  v12 = v5;
LABEL_7:

  return v12;
}

uint64_t sub_1AC5C4BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_1AC5C4C70()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCD8, &qword_1AC7A8100);
      v8 = OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_6_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC5D9428(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_191_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

size_t OUTLINED_FUNCTION_155_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1AC60F7F4(v4, a2, a3, a4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_155_2()
{
  v3 = *(v0 + *(v1 + 32) + 8);
}

uint64_t OUTLINED_FUNCTION_83_2(uint64_t a1)
{
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = a1;
}

uint64_t OUTLINED_FUNCTION_83_5()
{
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  v10 = v0[2];

  return sub_1AC6CBCA4(v10, v2);
}

uint64_t sub_1AC5C4E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1AC7A0D38() & 1;
  }
}

uint64_t sub_1AC5C4EB8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1AC5C4BF8(result, 1, sub_1AC5C4C70);
  v8 = *v2;
  if (!v7)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v9 = *(v8 + 16);
  if (__OFSUB__(v9, a2))
  {
    goto LABEL_16;
  }

  result = sub_1AC5D9428((v8 + 32 + 24 * a2), v9 - a2, (v8 + 32 + 24 * v5));
  v10 = *(v8 + 16);
  v11 = __OFADD__(v10, v7);
  v12 = v10 + v7;
  if (!v11)
  {
    *(v8 + 16) = v12;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return sub_1AC7A0B78();
}

uint64_t OUTLINED_FUNCTION_27_4()
{

  return sub_1AC79FFC8();
}

void OUTLINED_FUNCTION_27_5()
{
  v1 = v0[212];
  v2 = v0[211];
  v3 = v0[185];
  v4 = v0[180];
  v5 = v0[179];
  v6 = v0[120];
  v7 = v0[119];
  v8 = v0[118];
  v9 = v0[115];
  v10 = v0[114];
  v11 = v0[113];
}

void OUTLINED_FUNCTION_483(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_27_7(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[8] = a8;
  v9[9] = v8;
  v9[6] = a6;
  v9[7] = a7;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = result;
  v9[3] = a2;
  return result;
}

__n128 OUTLINED_FUNCTION_27_8()
{
  result = *v0;
  *(v1 - 96) = *(v0 + 16);
  *(v1 - 80) = result;
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_10()
{
  v2 = *(v0 - 120);

  return sub_1AC7A0C88();
}

uint64_t OUTLINED_FUNCTION_27_12()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_27_13(uint64_t a1)
{
  *(v1 + 400) = a1;
  v3 = *(v1 + 16);

  return [v3 format];
}

uint64_t sub_1AC5C517C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (!v0)
  {
    v9 = *(v3 + 16);
    v10 = *(v3 + 32);
    v11 = *(v3 + 64);
    v9[1] = *(v3 + 48);
    v9[2] = v11;
    *v9 = v10;
  }

  OUTLINED_FUNCTION_27();

  return v12();
}

uint64_t sub_1AC5C5274()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 152) = v0;

  if (!v0)
  {
    v9 = *(v3 + 100);
    *(v3 + 160) = *(v3 + 84);
    *(v3 + 176) = v9;
    *(v3 + 192) = *(v3 + 116);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC5C5380()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC5C5460()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 176);
  v3 = *(v0 + 192);
  *v1 = *(v0 + 160);
  *(v1 + 16) = v2;
  *(v1 + 32) = v3;
  *(v1 + 48) = 0;
  return OUTLINED_FUNCTION_28_4();
}

uint64_t sub_1AC5C547C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 40) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t OUTLINED_FUNCTION_134()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_134_1()
{

  JUMPOUT(0x1B26E9A40);
}

void OUTLINED_FUNCTION_657()
{
  v4 = v1[35];
  v3 = v1[36];
  v5 = v1[34];
}

uint64_t sub_1AC5C55E8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC5C56E8()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_82();

  return v2();
}

uint64_t sub_1AC5C574C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 232);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  v4[30] = v0;

  if (!v0)
  {
    v4[31] = v1;
  }

  v10 = v4[4];

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

id OUTLINED_FUNCTION_14_0()
{

  return [v0 (v1 + 480)];
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 80);
  return *(v2 + 56);
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_4()
{
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[3];
  v7 = *(v0[4] + 136);

  return sub_1AC5C6544();
}

uint64_t OUTLINED_FUNCTION_14_5()
{
  result = type metadata accessor for ClientInfo(0);
  v1 = *(result + 32);
  return result;
}

void OUTLINED_FUNCTION_14_6(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  *(v1 + v2) = 0;
}

__n128 OUTLINED_FUNCTION_14_8(uint64_t a1)
{
  v5 = v1 + *(a1 + 24);
  v7 = *(v4 - 96);
  result = *(v4 - 80);
  *v5 = result;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 112);
  return *(v2 + 88);
}

uint64_t OUTLINED_FUNCTION_14_13(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_19(uint64_t result)
{
  *(result + 8) = sub_1AC769974;
  v2 = *(v1 + 16);
  return result;
}

uint64_t sub_1AC5C5A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  v19 = v18[27];
  v20 = v18[26];
  v44 = v20;
  v45 = v18[28];
  v21 = v18[23];
  v22 = v18[24];
  v23 = v18[22];
  v42 = v18[21];
  v43 = v18[25];
  v24 = v18[20];
  v41 = v18[19];
  v25 = v18[17];
  v26 = v18[18];
  v27 = v18[16];
  v28 = v18[13];
  v46 = v28;
  v47 = v18[15];
  v29 = v18[11];
  (*(v18[12] + 8))();
  v30 = *(v21 + 8);
  v30(v22, v23);
  (*(v25 + 8))(v26, v27);
  (*(v24 + 8))(v42, v41);
  v30(v43, v23);
  (*(v19 + 8))(v45, v44);

  OUTLINED_FUNCTION_82();
  v31 = v18[31];
  OUTLINED_FUNCTION_26();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43, v44, v45, v46, v47, a16, a17, a18);
}

uint64_t OUTLINED_FUNCTION_140@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 136);

  return sub_1AC5C6544();
}

uint64_t OUTLINED_FUNCTION_53_4()
{
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[93];
}

uint64_t OUTLINED_FUNCTION_53_5(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1AC5C8BE0(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_53_6()
{

  return sub_1AC7A0758();
}

uint64_t OUTLINED_FUNCTION_53_7()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return v0;
}

uint64_t OUTLINED_FUNCTION_53_9()
{
  *(v1 - 288) = v0;
  v2 = **(v1 - 256);
  return *(v1 - 272);
}

uint64_t OUTLINED_FUNCTION_69_0()
{
  v1 = v0[4];
  v2 = *(v0[5] + 8);
  return v0[6];
}

uint64_t OUTLINED_FUNCTION_69_2()
{

  return sub_1AC79FF58();
}

unint64_t OUTLINED_FUNCTION_69_5()
{
  v3 = *v0;

  return sub_1AC6E08C4(v1);
}

uint64_t OUTLINED_FUNCTION_69_6(uint64_t result)
{
  v2 = result & ~(-1 << *(v1 + 32));
  v3 = *(v1 + 56 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_69_7()
{
  v4 = *(v2 - 216);
  v3 = *(v2 - 208);
  v5 = *(v2 - 200) + *(v4 + 72) * v0;
  v6 = *(v4 + 16);
  return v1;
}

uint64_t sub_1AC5C5DB4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 32);
  *v4 = *v1;
  *(v3 + 40) = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v8();
  }

  else
  {
    v10 = *(v3 + 16);
    v11 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t OUTLINED_FUNCTION_45_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_55_4()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t sub_1AC5C5F48()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C058, &qword_1AC7A8758);
  v4 = swift_allocObject();
  v0[6] = v4;
  *(v4 + 16) = v1;
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC5C6004()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 48) + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_42_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC5C608C();
}

uint64_t sub_1AC5C608C()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_126();
  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

BOOL OUTLINED_FUNCTION_95(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_95_1()
{
  v1 = v0[66];
  v0[158] = v0[65];
  v0[159] = v1;
}

id OUTLINED_FUNCTION_95_3()
{
  v1[53] = v0;
  v3 = v1[35];
  v4 = v1[32];
  v1[29] = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_95_5@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 224) = a1;
  *(v3 - 264) = a1 + v1;
  *(v3 - 144) = v2;
  *(v3 - 136) = 0;
}

uint64_t sub_1AC5C61F0()
{
  OUTLINED_FUNCTION_45();
  v2 = v1[3];
  if (swift_distributed_actor_is_remote())
  {
    v3 = *(v1[3] + 136);
    v4 = sub_1AC5C6544();
    v5 = OUTLINED_FUNCTION_13_0(v4);
    nullsub_1(v5, v6);
    if (v0)
    {

      v7 = v1[6];

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_155();

      __asm { BRAA            X1, X16 }
    }

    v14 = v1[6];
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7C90);
    v15 = swift_task_alloc();
    v1[8] = v15;
    *v15 = v1;
    v15[1] = sub_1AC6F2BC8;
    v16 = v1[6];
    OUTLINED_FUNCTION_9_1(v1[3]);
    OUTLINED_FUNCTION_155();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void OUTLINED_FUNCTION_122_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *v12;
  v14 = v12[1];
  v15 = *(a12 + 36);
}

uint64_t OUTLINED_FUNCTION_122_3@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1AC5CFE74(v2 + 51, (a1 - 32) | 0x8000000000000000, &a2);
}

uint64_t OUTLINED_FUNCTION_21_1(uint64_t a1)
{
  *(v1 + 32) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return sub_1AC7A0D38();
}

uint64_t OUTLINED_FUNCTION_21_6()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  result = v0[7];
  v5 = v0[5];
  v6 = *(v0[6] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_12()
{

  return sub_1AC79F958();
}

uint64_t OUTLINED_FUNCTION_148()
{
  *(v1 + 24) = v0;

  return sub_1AC79FC78();
}

uint64_t OUTLINED_FUNCTION_148_0()
{

  return sub_1AC7A0178();
}

void OUTLINED_FUNCTION_148_1()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x1B26EAB10);
}

void OUTLINED_FUNCTION_148_2()
{

  sub_1AC727BA8();
}

void OUTLINED_FUNCTION_148_3()
{

  JUMPOUT(0x1B26E8C40);
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_9()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2082;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return sub_1AC79FC98();
}

uint64_t OUTLINED_FUNCTION_9_11()
{
  v4 = v0[78];
  v5 = v0[77];
  v2 = v0[76];
  v6 = v0[73];
  v7 = v0[70];
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return sub_1AC7A0D38();
}

uint64_t OUTLINED_FUNCTION_9_13(uint64_t result)
{
  v8 = *(v7 - 96);
  *(v1 + *(result + 20)) = *(v7 - 88);
  v9 = (v1 + *(result + 24));
  *v9 = v6;
  v9[1] = v2;
  v9[2] = v5;
  v9[3] = v4;
  v9[4] = v8;
  v9[5] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_16(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
  v4 = *(*(v2 - 128) + 48);
  return result;
}

void OUTLINED_FUNCTION_9_17(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_9_18()
{
  v1 = v0[59];
  v3 = v0[53];
  v2 = v0[54];
  v5 = v0[51];
  v4 = v0[52];
  v6 = v0[50];
  v7 = *(v0[55] + 16);
  return v0[56];
}

uint64_t sub_1AC5C684C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

char *sub_1AC5C6864(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

void OUTLINED_FUNCTION_16()
{

  JUMPOUT(0x1B26E8C40);
}

void OUTLINED_FUNCTION_16_0(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_16_1(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

void OUTLINED_FUNCTION_16_4()
{

  JUMPOUT(0x1B26EAB10);
}

void OUTLINED_FUNCTION_16_7()
{

  JUMPOUT(0x1B26E8C40);
}

uint64_t OUTLINED_FUNCTION_16_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v14;
  *(a1 + 40) = v11;
  *(a1 + 48) = a11;

  return sub_1AC61BB80(v13, v12);
}

uint64_t OUTLINED_FUNCTION_16_10()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_16_11@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*(v1 + 56) + ((a1 << 9) | (8 * __clz(__rbit64(v3)))));

  return [v5 (v2 + 3704)];
}

uint64_t OUTLINED_FUNCTION_16_12()
{

  return sub_1AC79FC98();
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_16_15(unint64_t *a1)
{

  return sub_1AC71F7C8(a1, v1);
}

uint64_t OUTLINED_FUNCTION_16_16()
{
  result = v0[59];
  v2 = v0[57];
  v3 = v0[52];
  v4 = *(v0[58] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_17()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;

  return sub_1AC7A09C8();
}

uint64_t OUTLINED_FUNCTION_16_18()
{

  return sub_1AC7A0D38();
}

__n128 OUTLINED_FUNCTION_0_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __int128 a10, __int128 a11, __int128 a12)
{
  v14 = *v12;
  *(v14 + 16) = v13 + 1;
  v15 = (v14 + (v13 << 6));
  result = a9;
  v15[4] = a11;
  v15[5] = a12;
  v15[2] = a9;
  v15[3] = a10;
  *v12 = v14;
  return result;
}

size_t OUTLINED_FUNCTION_0_2(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t result)
{
  *(v2 - 136) = v1;
  *(v2 - 128) = result;
  *(v2 - 168) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_17(uint64_t result)
{
  *(v2 - 80) = v1;
  *(v2 - 72) = result;
  *(v2 - 112) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 472);
  v4 = *(v2 + 456);
  return v2 + 376;
}

uint64_t OUTLINED_FUNCTION_0_21()
{

  return swift_deallocPartialClassInstance();
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 48);
  return *(v2 + 24);
}

uint64_t sub_1AC5C6E6C()
{
  OUTLINED_FUNCTION_50_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_39();
  v7(v6);
  return v0;
}

uint64_t sub_1AC5C6EC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void OUTLINED_FUNCTION_60_4()
{
  *(v4 + 16) = v0;
  v5 = v4 + 16 * v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_60_6()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_60_7()
{
  *(v0 + 56) = v1;
  *(v0 + 40) = v2;
  return v3;
}

void sub_1AC5C6FD8()
{
  OUTLINED_FUNCTION_28();
  v1 = OUTLINED_FUNCTION_77();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v4 = OUTLINED_FUNCTION_80(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_177(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB70, &qword_1AC7A7CB0);
  sub_1AC79FCA8();
  sub_1AC79FCA8();
  sub_1AC5C71B8(v0, &qword_1EB56BB68);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB78, &qword_1AC7A7CB8);
  *&v12 = v3;
  v9 = v14;
  v10 = v15;
  OUTLINED_FUNCTION_135(&v12, v11);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_10_0(v8, v9, v10, v11[0], v11[1]);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

__n128 OUTLINED_FUNCTION_24_0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __n128 a12, __int128 a13)
{
  *(v13 + 16) = *&a1;
  result = a12;
  *(v13 + 24) = a13;
  *(v13 + 40) = a12;
  return result;
}

uint64_t sub_1AC5C71B8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_130_0(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_1AC5C720C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_80(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1AC5C7264(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_146(void *a1, void *a2, int a3)
{

  return sub_1AC5EF99C(a1, a2, a3, 0, v3);
}

uint64_t OUTLINED_FUNCTION_146_0()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_146_1()
{
  v1 = v0[115];
  v2 = v0[106];
  v3 = v0[105];
}

uint64_t sub_1AC5C731C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t OUTLINED_FUNCTION_29_1@<X0>(uint64_t a1@<X8>)
{
  v4 = *(*(v1 + 48) + (__clz(__rbit64(v2)) | (a1 << 6)));

  return sub_1AC7A0E78();
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return sub_1AC79FEA8();
}

uint64_t OUTLINED_FUNCTION_29_4()
{
  result = *(v0 - 368);
  v2 = *(v0 - 376);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_9()
{
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[7];
}

__n128 OUTLINED_FUNCTION_29_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  v11 = (v10 + *(a1 + 24));
  result = a10;
  *v11 = a10;
  v11[1] = a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_13()
{

  return sub_1AC6F8C8C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_29_14()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_29_15(uint64_t a1)
{

  return sub_1AC5C720C(a1, v1, v2);
}

uint64_t sub_1AC5C750C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5C7608(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_41(v15);
    type metadata accessor for LSRAssets();
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

id sub_1AC5C7608(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      break;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      break;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for LocalSpeechRecognitionService();
      sub_1AC7A0AF8();
      sub_1AC7A0B78();
      __break(1u);
      JUMPOUT(0x1AC5C784CLL);
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C();
      break;
  }

  v10 = qword_1ED937D58;
  v8 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  [v8 setRemoteObjectInterface_];

  sub_1AC6E9C00(v8, v4, v5, v6);
  sub_1AC601D3C(v8, a1, 0, 0, v2);
  return v8;
}

void OUTLINED_FUNCTION_24_2()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
}

void OUTLINED_FUNCTION_24_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x1B26E9A40);
}

uint64_t OUTLINED_FUNCTION_24_4@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 144) = a1;
  *(v1 - 136) = 0xE100000000000000;
  return v1 - 144;
}

uint64_t OUTLINED_FUNCTION_24_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16[98] = a13;
  v16[99] = a14;
  v16[100] = a15;
  v16[101] = a16;

  return sub_1AC5CFBB8(v17, v18);
}

uint64_t OUTLINED_FUNCTION_24_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_24_10@<X0>(uint64_t *a1@<X8>)
{
  v3 = a1[5];
  *(v1 - 96) = a1[4];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a1;
}

uint64_t OUTLINED_FUNCTION_24_11@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_24_12()
{
  v2 = v0[18];
  v4 = v0[7];
  v3 = v0[8];
  v5 = *(v0[11] + 136);

  return sub_1AC5C6544();
}

id OUTLINED_FUNCTION_24_15(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_24_17()
{
}

__n128 OUTLINED_FUNCTION_12_2()
{
  result = *(v0 - 80);
  v2 = *(v0 - 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_30@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

void OUTLINED_FUNCTION_12_3(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

unint64_t OUTLINED_FUNCTION_12_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  result = sub_1AC699D54(v10, v11, v12);
  *a10 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_7@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1AC5CFE74(0xD00000000000001FLL, (a1 - 32) | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_12_8()
{
  v2 = v0[46];
  v3 = v0[43];
  v4 = v0[40];
  v6 = v0[36];
  v5 = v0[37];
  *(v0[33] + v0[48]) = 0;
}

uint64_t OUTLINED_FUNCTION_12_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_12_10()
{
  v1 = v0[9];
  v2 = *(v0[10] + 8);
  return v0[11];
}

uint64_t OUTLINED_FUNCTION_12_13(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 48);
  return *(v2 + 24);
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_15(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_1_16()
{

  return sub_1AC7A0B78();
}

void *sub_1AC5C7E18()
{
  OUTLINED_FUNCTION_36_8();
  v1 = *(*(v0 + 144) + 16);

  v2 = OUTLINED_FUNCTION_5_12();
  sub_1AC5D0DD0(v2, v3, v4);
  os_unfair_lock_lock(v1);
  swift_beginAccess();
  v5 = *(v0 + 136);
  if (*(v5 + 16) && (v6 = OUTLINED_FUNCTION_5_12(), v9 = sub_1AC5D0E20(v6, v7, v8), (v10 & 1) != 0))
  {
    v11 = *(*(v5 + 56) + 8 * v9);
    v12 = v11;
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  os_unfair_lock_unlock(v1);

  v13 = OUTLINED_FUNCTION_5_12();
  sub_1AC5D1128(v13, v14, v15);
  return v11;
}

uint64_t OUTLINED_FUNCTION_28_0()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_28_1()
{
  result = type metadata accessor for DictationTranscriber.Preset(0);
  v1 = *(result + 32);
  return result;
}

BOOL OUTLINED_FUNCTION_28_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_67()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x1B26EAB10);
}

uint64_t OUTLINED_FUNCTION_28_11()
{

  return sub_1AC706CAC();
}

uint64_t OUTLINED_FUNCTION_28_14()
{

  return swift_beginAccess();
}

id SFSpeechProfileSiteDirectoriesWithUserType(void *a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = SFSpeechProfileRootDirectoryURL();
  if (!v1)
  {
    v4 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "SFSpeechProfileSiteDirectoriesWithUserType";
      _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "%s No userType provided, fetching both default and user-specific data site directories.", &v10, 0xCu);
    }

    v3 = SFAllDataSites(v2);
    goto LABEL_7;
  }

  if ([v1 isEqualToString:@"User"])
  {
    v3 = SFUserSpecificDataSites(v2);
LABEL_7:
    v5 = v3;
    goto LABEL_8;
  }

  if ([v1 isEqualToString:@"Default"])
  {
    v8 = SFDefaultDataSite(v2);
    v14[0] = v8;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  else
  {
    v9 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "SFSpeechProfileSiteDirectoriesWithUserType";
      v12 = 2112;
      v13 = v1;
      _os_log_error_impl(&dword_1AC5BC000, v9, OS_LOG_TYPE_ERROR, "%s Unrecognized userType: %@", &v10, 0x16u);
    }

    v5 = MEMORY[0x1E695E0F0];
  }

LABEL_8:

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id SFSpeechProfileRootDirectoryURL()
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Assistant/SiriVocabulary"];
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:v1 isDirectory:1];

  v3 = [v0 fileURLWithPath:@"Modules" isDirectory:1 relativeToURL:v2];

  v4 = [v0 fileURLWithPath:@"CESR" isDirectory:1 relativeToURL:v3];

  return v4;
}

id SFAllDataSites(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = SFDefaultDataSite(v1);
  if (v3)
  {
    [v2 addObject:v3];
  }

  v4 = SFUserSpecificDataSites(v1);
  [v2 addObjectsFromArray:v4];

  v5 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315394;
    v9 = "SFAllDataSites";
    v10 = 2112;
    v11 = v2;
    _os_log_debug_impl(&dword_1AC5BC000, v5, OS_LOG_TYPE_DEBUG, "%s Managed data sites: %@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

id SFDefaultDataSite(uint64_t a1)
{
  v8 = 0;
  v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"Default" isDirectory:1 relativeToURL:a1];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v1 path];
  v4 = [v2 fileExistsAtPath:v3 isDirectory:&v8];
  v5 = v8;

  v6 = 0;
  if (v4 && (v5 & 1) != 0)
  {
    v6 = v1;
  }

  return v6;
}

id SFUserSpecificDataSites(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v30 = 0;
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"User" isDirectory:1 relativeToURL:v1];
  v4 = [v3 path];
  v5 = [v2 fileExistsAtPath:v4 isDirectory:&v30];
  v6 = v30;

  if (v5 && (v6 & 1) != 0)
  {
    v7 = [v3 path];
    v29 = 0;
    v8 = [v2 contentsOfDirectoryAtPath:v7 error:&v29];
    v9 = v29;

    if (v8)
    {
      v22 = v9;
      v23 = v1;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v25 + 1) + 8 * i) isDirectory:1 relativeToURL:v3];
            v16 = [v15 path];
            v17 = [v2 fileExistsAtPath:v16 isDirectory:&v30];
            v18 = v30;

            if (v17 && (v18 & 1) != 0)
            {
              [v24 addObject:v15];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v12);
      }

      v9 = v22;
      v1 = v23;
    }

    else
    {
      v19 = SFLogFramework;
      if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v33 = "SFUserSpecificDataSites";
        v34 = 2112;
        v35 = v9;
        _os_log_error_impl(&dword_1AC5BC000, v19, OS_LOG_TYPE_ERROR, "%s Failed to resolve user-specific data site directories: %@", buf, 0x16u);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v24;
}

uint64_t sub_1AC5C8838()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1AC5C8930()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_43_2()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_635(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_43_4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_1AC5CFE74(0xD000000000000014, (a1 - 32) | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_43_6()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t sub_1AC5C8B48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5C9E54, 0, 0);
}

uint64_t sub_1AC5C8B68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1AC5C8B9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_93();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC5C8BE0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_1AC5C8C68(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange);
  v4 = *(a1 + 16);
  if (*(v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange + 48))
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      v10 = *(a1 + 72);

      sub_1AC5C8FDC(1, a1);
      v14 = (v13 >> 1) - v12;
      if (v13 >> 1 == v12)
      {
LABEL_7:
        *&v49 = v5;
        *(&v49 + 1) = v6;
        *v50 = v7;
        *&v50[8] = v8;
        *&v50[16] = v9;
        *&v50[24] = v10;
        v51 = 0;
        sub_1AC5C9294(&v49);
LABEL_18:
        swift_unknownObjectRelease();
        goto LABEL_19;
      }

      if ((v13 >> 1) > v12)
      {
        v15 = (v11 + 48 * v12);
        do
        {
          v67 = v5;
          v68 = v6;
          v69 = v7;
          *&v70 = v8;
          *(&v70 + 1) = v9;
          v71 = v10;
          v16 = *v15;
          v17 = v15[2];
          v65 = v15[1];
          v66 = v17;
          v64 = v16;
          sub_1AC7A0588();
          v5 = v58;
          v6 = v59;
          v7 = v60;
          v8 = v61;
          v15 += 3;
          v9 = v62;
          v10 = v63;
          --v14;
        }

        while (v14);
        goto LABEL_7;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }
  }

  else
  {
    v19 = v3[4];
    v18 = v3[5];
    v21 = v3[2];
    v20 = v3[3];
    v23 = *v3;
    v22 = v3[1];
    v58 = *v3;
    v59 = v22;
    v60 = v21;
    v61 = v20;
    v62 = v19;
    v63 = v18;
    if (v4)
    {
      v24 = *(a1 + 32);
      v26 = *(a1 + 40);
      v25 = *(a1 + 44);
      v27 = *(a1 + 48);
      v38 = *(a1 + 56);
      v39 = *(a1 + 72);

      sub_1AC5C8FDC(1, a1);
      if (v29 == v30 >> 1)
      {
        v36 = v38;
        v37 = v39;
      }

      else
      {
        if (v29 >= (v30 >> 1))
        {
          goto LABEL_23;
        }

        v49 = v38;
        *v50 = v39;
        v32 = ~v29 + (v30 >> 1);
        for (i = (v28 + 48 * v29); ; i += 3)
        {
          v67 = v24;
          v68 = __PAIR64__(v25, v26);
          v69 = v27;
          v70 = v49;
          v71 = *v50;
          v34 = i[2];
          v35 = *i;
          v65 = i[1];
          v66 = v34;
          v64 = v35;
          sub_1AC7A0588();
          v24 = v40;
          v26 = v41;
          v25 = v42;
          v27 = v43;
          if (!v32)
          {
            break;
          }

          v49 = v44;
          *v50 = v45;
          --v32;
        }

        v36 = v44;
        v37 = v45;
      }

      v52 = v24;
      v53 = v26;
      v54 = v25;
      v56 = v36;
      v55 = v27;
      v57 = v37;
      sub_1AC7A06B8();
      sub_1AC7A0558();
      sub_1AC7A0558();
      sub_1AC7A06B8();
      sub_1AC7A0578();
      v49 = v46;
      *v50 = v47;
      *&v50[16] = v48;
      v51 = 0;
      sub_1AC5C9294(&v49);
      goto LABEL_18;
    }

    v31 = *(MEMORY[0x1E6960CC0] + 16);
    *&v49 = v23;
    *(&v49 + 1) = v22;
    *&v50[8] = *MEMORY[0x1E6960CC0];
    *v50 = v21;
    *&v50[24] = v31;
    v51 = 0;
    sub_1AC5C9294(&v49);
  }

LABEL_19:

  sub_1AC5C9678();
}

uint64_t sub_1AC5C9010(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      a4();
      OUTLINED_FUNCTION_43_3();

      return OUTLINED_FUNCTION_34_5();
    }
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_45_3@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*(v2 + 48) + (a1 | (v3 << 6)));
  v6 = *(v1 + 40);

  return sub_1AC7A0E78();
}

void OUTLINED_FUNCTION_45_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 96);

  _os_log_impl(a1, v8, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_45_9(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

id OUTLINED_FUNCTION_45_13()
{

  return [v0 (v1 + 180)];
}

uint64_t OUTLINED_FUNCTION_119_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return v2 + 56;
}

uint64_t OUTLINED_FUNCTION_119_2()
{
  v3 = *(v1 + *(v0 + 24) + 8);
}

void OUTLINED_FUNCTION_119_3()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[7];
  v5 = v0[4];
}

uint64_t OUTLINED_FUNCTION_119_4()
{
  v2 = v0[44];
  v3 = v0[41];
  v4 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
}

uint64_t OUTLINED_FUNCTION_119_5(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void sub_1AC5C9294(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange;
  v3 = *(v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange + 16);
  v5[0] = *(v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange);
  v5[1] = v3;
  v5[2] = *(v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange + 32);
  v6 = *(v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange + 48);
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = *(a1 + 48);
  sub_1AC5C92F4(v5);
}

void sub_1AC5C92F4(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange);
  if ((*(v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange + 48) & 1) == 0)
  {
    v3 = v1;
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    v8 = *(a1 + 32);
    v32 = v8;
    v33 = *(a1 + 24);
    v31 = *(a1 + 40);
    v9 = v2[1];
    v10 = v2[2];
    v11 = v2[3];
    v12 = v2[4];
    v13 = v2[5];
    v35 = *v2;
    v36[0] = *v2;
    v36[1] = v9;
    v34 = v10;
    v36[2] = v10;
    v36[3] = v11;
    v36[4] = v12;
    v36[5] = v13;
    if (*(a1 + 48))
    {
      goto LABEL_4;
    }

    v38 = v5;
    v39 = v6;
    v40 = v7;
    v41 = v33;
    v42 = v8;
    v43 = v31;
    v44 = v35;
    v45 = v9;
    v46 = v10;
    v47 = v11;
    v48 = v12;
    v49 = v13;
    if ((sub_1AC7A0548() & 1) == 0)
    {
LABEL_4:
      v30 = v7;
      if (off_1ED937D60 != -1)
      {
        swift_once();
      }

      v14 = sub_1AC79FDE8();
      __swift_project_value_buffer(v14, qword_1ED9386C8);
      v15 = sub_1AC79FDC8();
      v16 = sub_1AC7A05E8();
      if (os_log_type_enabled(v15, v16))
      {
        v28 = v6;
        v17 = swift_slowAlloc();
        v29 = v5;
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        range.start.value = v35;
        *&range.start.timescale = v9;
        range.start.epoch = v34;
        range.duration.value = v11;
        *&range.duration.timescale = v12;
        range.duration.epoch = v13;
        v19 = CMTimeRangeCopyDescription(0, &range);
        *(v17 + 4) = v19;
        *v18 = v19;
        _os_log_impl(&dword_1AC5BC000, v15, v16, "SpeechAnalyzer: Volatile range %@", v17, 0xCu);
        sub_1AC5C9624(v18, &unk_1EB56C630, &qword_1AC7A7E40);
        v20 = v18;
        v5 = v29;
        MEMORY[0x1B26EAB10](v20, -1, -1);
        v21 = v17;
        v6 = v28;
        MEMORY[0x1B26EAB10](v21, -1, -1);
      }

      v22 = v3 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange;
      v23 = *(v3 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
      if (v23)
      {
        v24 = v6;
        v25 = *(v22 + 8);
        if (*(a1 + 48))
        {

          v26 = 1;
          v27 = 1;
        }

        else
        {
          range.start.value = v5;
          *&range.start.timescale = v24;
          range.start.epoch = v30;
          range.duration.value = v33;
          *&range.duration.timescale = v32;
          range.duration.epoch = v31;

          v27 = sub_1AC7A06D8();
          sub_1AC7A0558();
          sub_1AC7A0558();
          v26 = sub_1AC7A06D8();
        }

        v23(v36, v27 & 1, v26 & 1);
        sub_1AC5C3958(v23);
      }
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1AC5C9624(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_22_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1AC5C9678()
{
  v1 = (v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange);
  if ((*(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange + 48) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_volatileRangeBarriers;
    v41 = *v1;
    v42 = v1[2];
    v40 = v1[1];
    swift_beginAccess();
    v35 = v2;
    v36 = v0;
    v3 = *(v0 + v2);
    v38 = v3[2];

    v4 = 0;
    value = MEMORY[0x1E69E7CC0];
LABEL_3:
    v5 = 5 * v4;
    while (v38 != v4)
    {
      if (v4 >= v3[2])
      {
        __break(1u);
        goto LABEL_24;
      }

      v6 = v3[v5 + 4];
      v7 = v3[v5 + 5];
      v8 = HIDWORD(v3[v5 + 5]);
      v10 = v3[v5 + 6];
      v9 = v3[v5 + 7];
      v11 = v3[v5 + 8];

      if (sub_1AC7A0678())
      {
        time.value = value;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC631640(0, *(value + 16) + 1, 1);
          value = time.value;
        }

        v13 = *(value + 16);
        v12 = *(value + 24);
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          sub_1AC631640(v12 > 1, v13 + 1, 1);
          v14 = v13 + 1;
          value = time.value;
        }

        *(value + 16) = v14;
        v15 = value + 40 * v13;
        *(v15 + 32) = v6;
        ++v4;
        *(v15 + 40) = v7;
        *(v15 + 44) = v8;
        *(v15 + 48) = v10;
        *(v15 + 56) = v9;
        *(v15 + 64) = v11;
        goto LABEL_3;
      }

      v5 += 5;
      ++v4;
    }

    time.value = value;

    v3 = 0;
    sub_1AC684DEC(&time.value);

    v16 = time.value;
    swift_beginAccess();
    v17 = sub_1AC5C9C08((v36 + v35), v41, v40, v42);
    if (*(*(v36 + v35) + 16) < v17)
    {
LABEL_24:
      __break(1u);

      __break(1u);
      swift_endAccess();
      __break(1u);
      return;
    }

    sub_1AC5CABDC(v17);
    swift_endAccess();
    v18 = *(v16 + 16);
    if (v18)
    {
      v19 = (v16 + 64);
      p_cache = _TtC6Speech22SpeechRecognizerWorker.cache;
      do
      {
        v21 = *(v19 - 4);
        v22 = *(v19 - 3);
        v24 = *(v19 - 2);
        v23 = *(v19 - 1);
        v25 = *v19;
        v26 = p_cache[428];

        if (v26 != -1)
        {
          swift_once();
        }

        v27 = sub_1AC79FDE8();
        __swift_project_value_buffer(v27, qword_1ED9386C8);
        v28 = sub_1AC79FDC8();
        v29 = sub_1AC7A05E8();
        if (os_log_type_enabled(v28, v29))
        {
          v39 = v23;
          v30 = p_cache;
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *v31 = 138412290;
          time.value = v21;
          *&time.timescale = v22;
          time.epoch = v24;
          v33 = CMTimeCopyDescription(0, &time);
          *(v31 + 4) = v33;
          *v32 = v33;
          _os_log_impl(&dword_1AC5BC000, v28, v29, "SpeechAnalyzer: Volatile range passed barrier at %@", v31, 0xCu);
          sub_1AC5C9624(v32, &unk_1EB56C630, &qword_1AC7A7E40);
          MEMORY[0x1B26EAB10](v32, -1, -1);
          v34 = v31;
          p_cache = v30;
          v23 = v39;
          MEMORY[0x1B26EAB10](v34, -1, -1);
        }

        time.value = v41;
        *&time.timescale = v40;
        time.epoch = v42;
        v44 = 0;
        v23(&time);

        v19 += 5;
        --v18;
      }

      while (v18);
    }
  }
}

_OWORD *OUTLINED_FUNCTION_85_2()
{

  return sub_1AC5C3968((v0 + 184), (v0 + 216));
}

uint64_t OUTLINED_FUNCTION_85_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_85_8()
{
  v5 = *(v3 - 96);
  *(v5 + 16) = v0 + 1;
  v6 = v5 + 16 * v0;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  *(v3 - 96) = v5;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_87_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_87_3()
{
  result = v2[105];
  v4 = v2[98];
  v5 = v2[94];
  v2[78] = v1;
  v6 = *(v0 + 24);
  return result;
}

void OUTLINED_FUNCTION_87_4()
{
  v7 = v0[18];
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
}

uint64_t sub_1AC5C9C08(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v10 = HIDWORD(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 28) = v10;
  *(v11 + 32) = a4;
  v12 = *a1;
  result = sub_1AC5CAAF8(*a1, a2, a3, a4);
  if (v4)
  {
    goto LABEL_19;
  }

  if (v14)
  {
    v5 = *(v12 + 16);
LABEL_19:

    return v5;
  }

  v5 = result;
  v36 = a1;
  v15 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 40 * result + 104; ; i += 40)
    {
      v17 = *(v12 + 16);
      if (v15 == v17)
      {
        break;
      }

      if (v15 >= v17)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v18 = v12 + i;
      v19 = *(v12 + i - 32);
      v20 = *(v12 + i - 24);
      v21 = *(v12 + i - 16);
      result = sub_1AC7A0678();
      if ((result & 1) == 0)
      {
        if (v15 != v5)
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          v22 = *(v12 + 16);
          if (v5 >= v22)
          {
            goto LABEL_22;
          }

          if (v15 >= v22)
          {
            goto LABEL_23;
          }

          v23 = (v12 + 32 + 40 * v5);
          v39 = *v23;
          v24 = v23[1];
          v37 = v23[3];
          v38 = v23[2];
          v25 = v23[4];
          v26 = *(v18 - 32);
          v27 = *(v18 - 24);
          v28 = *(v18 - 16);
          v29 = *(v12 + i - 8);
          v30 = *(v12 + i);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AC7045C8(v12);
            v12 = v35;
          }

          v31 = (v12 + 40 * v5);
          v32 = v31[8];
          v31[4] = v26;
          v31[5] = v27;
          v31[6] = v28;
          v31[7] = v29;
          v31[8] = v30;

          if (v15 >= *(v12 + 16))
          {
            goto LABEL_24;
          }

          v33 = (v12 + i);
          v34 = *(v12 + i);
          *(v33 - 4) = v39;
          *(v33 - 3) = v24;
          *(v33 - 2) = v38;
          *(v33 - 1) = v37;
          *v33 = v25;

          *v36 = v12;
        }

        ++v5;
      }

      ++v15;
    }

    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1AC5C9E54()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *(v2 + 48) = *(v1 + 48);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = v3;
  OUTLINED_FUNCTION_44();
  return v6();
}

uint64_t sub_1AC5C9E90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(v2 + 24) = *a2;
  *(v2 + 40) = v4;
  *(v2 + 56) = *(a2 + 32);
  *(v2 + 72) = *(a2 + 48);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AC5C5380;

  return sub_1AC5C8B48(a1, v2 + 24);
}

uint64_t sub_1AC5C9F48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_1AC5C9F80()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[25] = v0;

  if (v0)
  {
    v9 = v3[23];
    (*(v3[15] + 8))(v3[16], v3[14]);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC5CA09C()
{
  OUTLINED_FUNCTION_169();
  if (*(v0 + 256))
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 176);
    v4 = *(v0 + 152);
    v3 = *(v0 + 160);
    v5 = *(v0 + 136);
    v6 = *(v0 + 144);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    v7 = *(v6 + 8);
    v8 = OUTLINED_FUNCTION_619();
    v9(v8);

    OUTLINED_FUNCTION_82();
    v11 = *(v0 + 184);

    return v10(v11);
  }

  else
  {
    v13 = *(v0 + 184);
    v28 = *(v0 + 224);
    v29 = *(v0 + 208);
    v14 = *(v0 + 240);
    v15 = *(v0 + 248);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v0 + 184);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = *(v17 + 16);
      OUTLINED_FUNCTION_53_3();
      sub_1AC5CA25C();
      v17 = v26;
    }

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      OUTLINED_FUNCTION_83_3(v18);
      sub_1AC5CA25C();
      v17 = v27;
    }

    *(v17 + 16) = v19 + 1;
    v20 = v17 + 48 * v19;
    *(v20 + 32) = v29;
    *(v20 + 48) = v28;
    *(v20 + 64) = v14;
    *(v20 + 72) = v15;
    *(v0 + 184) = v17;
    OUTLINED_FUNCTION_58_0(&qword_1EB56AA70, &qword_1EB56C860, &qword_1AC7AAD08);
    v21 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v0 + 192) = v22;
    *v22 = v23;
    v24 = OUTLINED_FUNCTION_199_0();

    return MEMORY[0x1EEE6D8C8](v24);
  }
}

void sub_1AC5CA25C()
{
  OUTLINED_FUNCTION_52_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF50, &unk_1AC7A8360);
      v9 = OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_6_2(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_15_1();
        sub_1AC704020(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 48 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_61_1(uint64_t a1)
{
  *(v1 + 32) = a1;
  v4 = *(v3 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_61_6()
{

  return swift_unknownObjectWeakInit();
}

void OUTLINED_FUNCTION_61_7()
{

  JUMPOUT(0x1B26E8C40);
}

uint64_t OUTLINED_FUNCTION_90_0()
{

  return sub_1AC5CA508();
}

uint64_t OUTLINED_FUNCTION_90_1()
{
  result = *(v0 - 2);
  v3 = *(v0 - 1);
  v4 = *v0;
  v5 = *(v1 - 2);
  v6 = *(v1 - 1);
  v7 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_90_2()
{
  v2 = *(v1 - 128);
  sub_1AC5D9374(v0);
}

uint64_t OUTLINED_FUNCTION_90_3()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 80);
  return result;
}

void OUTLINED_FUNCTION_90_4()
{
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[29];
  v3 = v0[30];
  v12 = v0[27];
  v13 = v0[28];
  v5 = v0[25];
  v11 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[18];
  v9 = v0[9];
  v14 = v0[15];
  v10 = v0[7];
}

uint64_t OUTLINED_FUNCTION_90_6@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  v3 = *(v1 - 200);

  return sub_1AC7A0C28();
}

uint64_t OUTLINED_FUNCTION_90_7()
{
  *(v1 - 96) = v0;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_193_0()
{

  return sub_1AC7A0968();
}

uint64_t OUTLINED_FUNCTION_193_1@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + a1);
  v6 = *(v5 + 2);
  v7 = *v5;
  *(v3 - 144) = *v5;
  *(v2 + 384) = v7;
  *(v2 + 400) = v6;

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_232_0(uint64_t result, uint64_t a2)
{
  *(v2 + 640) = result;
  *(v2 + 648) = a2;
  return result;
}

void sub_1AC5CA588(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    OUTLINED_FUNCTION_99_2();
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return swift_once();
}

void OUTLINED_FUNCTION_22_5()
{

  JUMPOUT(0x1B26E8C40);
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_8()
{

  return sub_1AC7A0B18();
}

uint64_t OUTLINED_FUNCTION_22_9()
{
  result = v0;
  v3 = *(v1 - 128);
  v4 = *(v1 - 132);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_12()
{

  return sub_1AC5DC36C(v1, v0);
}

void sub_1AC5CA76C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF40, &qword_1AC7A8350);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_115_1(v12);
      if (a1)
      {
LABEL_12:
        sub_1AC703FE4((a4 + 32), v9, v11 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF48, &qword_1AC7A8358);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_158()
{
}

uint64_t OUTLINED_FUNCTION_158_2()
{
  v3 = v1 + *(v0 + 36);

  return type metadata accessor for TranscriberCommon.ModelOptions(0);
}

uint64_t OUTLINED_FUNCTION_157()
{
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];
  v10 = v0[28];
}

void OUTLINED_FUNCTION_157_0()
{

  JUMPOUT(0x1B26E9A40);
}

uint64_t sub_1AC5CA904(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_1AC7A0CA8();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        OUTLINED_FUNCTION_391();
        v14 = sub_1AC7A0188();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_161_0()
{

  return sub_1AC7A0828();
}

uint64_t OUTLINED_FUNCTION_56_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = ((*(a18 + 80) + 32) & ~*(a18 + 80)) + *(a18 + 72);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_56_4()
{
  result = v0[43];
  v2 = v0[41];
  v3 = *(v0[42] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_56_6@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return sub_1AC637EB8(v2 + 1376, a1, 0xD00000000000002BLL, (a2 - 32) | 0x8000000000000000);
}

uint64_t sub_1AC5CAAF8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = HIDWORD(a3);
  v9 = swift_allocObject();
  v10 = 0;
  *(v9 + 16) = a2;
  *(v9 + 24) = v5;
  *(v9 + 28) = v8;
  *(v9 + 32) = a4;
  v11 = (a1 + 48);
  v12 = *(a1 + 16);
  while (1)
  {
    if (v12 == v10)
    {
      v16 = 0;
      goto LABEL_7;
    }

    v13 = *(v11 - 2);
    v14 = *(v11 - 1);
    v15 = *v11;
    if (sub_1AC7A0678())
    {
      break;
    }

    ++v10;
    v11 += 5;
  }

  v16 = v10;
LABEL_7:

  return v16;
}

void sub_1AC5CABDC(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_67_5();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v3 - v1))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1AC5C4BF8(v4 - v8, 1, sub_1AC5CAD8C);
  v9 = *v2;
  v10 = *v2 + 32;
  v11 = (v10 + 40 * v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF48, &qword_1AC7A8358);
  OUTLINED_FUNCTION_143();
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v2 = v9;
    return;
  }

  OUTLINED_FUNCTION_221_0();
  if (v6)
  {
    goto LABEL_16;
  }

  sub_1AC703FE4((v10 + 40 * v1), v12, v11);
  OUTLINED_FUNCTION_222_0();
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_118(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_4(uint64_t a1)
{
  *(a1 + 8) = sub_1AC66ADD4;
  v2 = *(v1 + 960);
  return v1 + 480;
}

void sub_1AC5CAD8C()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF40, &qword_1AC7A8350);
      v8 = OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_6_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC703FE4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF48, &qword_1AC7A8358);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_92_0()
{
  v4 = *(v2 + 16);
  v5 = *(*(v3 - 120) + 48) + *(v2 + 72) * v1;
  result = v0;
  v7 = *(v3 - 104);
  return result;
}

uint64_t sub_1AC5CAF3C()
{
  v1 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v4 = sub_1AC5CAF9C(v3);

  return v4;
}

uint64_t sub_1AC5CAF9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = (v3 + 16 * v2);
    v7 = *v5;
    v6 = v5[1];
    ObjectType = swift_getObjectType();
    v9 = *(v6 + 16);
    v10 = *(v9 + 24);
    swift_unknownObjectRetain();
    v11 = v10(ObjectType, v9);
    if (v11)
    {
      v12 = v11;
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v14 = *(v4 + 16) + 1;
      v15 = 32;
      while (--v14)
      {
        v16 = *(v4 + v15);
        v15 += 16;
        if (v16 == v12)
        {
          swift_unknownObjectRelease();
          goto LABEL_8;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC5CB1EC();
        v4 = v20;
      }

      v17 = *(v4 + 16);
      if (v17 >= *(v4 + 24) >> 1)
      {
        v18 = v17 + 1;
        sub_1AC5CB1EC();
        v4 = v21;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v18 = v17 + 1;
      }

      *(v4 + 16) = v18;
      v19 = v4 + 16 * v17;
      *(v19 + 32) = v12;
      *(v19 + 40) = AssociatedConformanceWitness;
    }

    else
    {
LABEL_8:
      swift_unknownObjectRelease();
    }

    ++v2;
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_1AC5CB1A4()
{
  v1 = v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon__workerWithLocked;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon__workerWithLocked));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_1AC5CB1EC()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF68, &unk_1AC7A9280);
      v8 = OUTLINED_FUNCTION_67_1();
      OUTLINED_FUNCTION_0_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC706D1C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF70, &unk_1AC7A8380);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_123_3(_DWORD *a1)
{
  *a1 = 16777472;

  return sub_1AC7A0338();
}

uint64_t OUTLINED_FUNCTION_84(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_84_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_84_1(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 16);
  return result;
}

void OUTLINED_FUNCTION_84_2()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

uint64_t OUTLINED_FUNCTION_84_3()
{
  v2 = *(v0 + 472);
  v3 = *(v0 + 448);
}

uint64_t OUTLINED_FUNCTION_84_4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v3;
  *(v4 - 96) = v2;

  return swift_endAccess();
}

uint64_t sub_1AC5CB404()
{
  v1 = v0 + OBJC_IVAR____TtC6Speech16EndpointDetector__workerWithLocked;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC6Speech16EndpointDetector__workerWithLocked));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

void OUTLINED_FUNCTION_187(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_116_1()
{

  return sub_1AC7A09C8();
}

uint64_t OUTLINED_FUNCTION_116_2()
{
  v2 = v0[46];
  v3 = v0[43];
  v4 = v0[40];
  v6 = v0[36];
  v5 = v0[37];
}

uint64_t sub_1AC5CB4B4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputBarriers;
  swift_beginAccess();
  v24 = v5;
  v25 = v3;
  v31 = *(*(v3 + v5) + 16);

  v7 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v27 = v6;
LABEL_2:
  v8 = 48 * v7;
  while (v31 != v7)
  {
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v9 = *(v6 + v8 + 32);
    v10 = *(v6 + v8 + 40);
    v11 = *(v6 + v8 + 44);
    v12 = *(v6 + v8 + 48);
    v4 = *(v6 + v8 + 56);
    v14 = *(v6 + v8 + 64);
    v13 = *(v6 + v8 + 72);

    if (sub_1AC7A0678())
    {
      v23 = v4;
      v15 = v26;
      v32[0] = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC6316A0(0, *(v26 + 16) + 1, 1);
        v15 = v32[0];
      }

      v16 = v4;
      v4 = v14;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AC6316A0(v17 > 1, v18 + 1, 1);
        v16 = v23;
        v15 = v32[0];
      }

      *(v15 + 16) = v18 + 1;
      v26 = v15;
      v19 = v15 + 48 * v18;
      *(v19 + 32) = v9;
      ++v7;
      *(v19 + 40) = v10;
      *(v19 + 44) = v11;
      *(v19 + 48) = v12;
      *(v19 + 56) = v16;
      *(v19 + 64) = v4;
      *(v19 + 72) = v13;
      v6 = v27;
      goto LABEL_2;
    }

    v8 += 48;
    ++v7;
    v6 = v27;
  }

  v32[0] = v26;

  v4 = 0;
  sub_1AC684E90(v32);

  v20 = v32[0];
  swift_beginAccess();
  v21 = sub_1AC5CB7FC((v25 + v24), a1, a2, a3);
  if (*(*(v25 + v24) + 16) >= v21)
  {
    sub_1AC5CBB30(v21);
    swift_endAccess();
    return v20;
  }

LABEL_15:
  __break(1u);

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

void sub_1AC5CB700(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF30, &unk_1AC7A8340);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_115_1(v12);
      if (a1)
      {
LABEL_12:
        sub_1AC704020((a4 + 32), v9, v11 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF38, &unk_1AC7AB4C0);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1AC5CB7FC(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v10 = HIDWORD(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 28) = v10;
  *(v11 + 32) = a4;
  v12 = *a1;
  result = sub_1AC5CBA58(*a1, a2, a3, a4);
  if (v4)
  {
    goto LABEL_19;
  }

  if (v14)
  {
    v5 = *(v12 + 16);
LABEL_19:

    return v5;
  }

  v5 = result;
  v36 = a1;
  v15 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 48 * result + 120; ; i += 48)
    {
      v17 = *(v12 + 16);
      if (v15 == v17)
      {
        break;
      }

      if (v15 >= v17)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v18 = v12 + i;
      v19 = *(v12 + i - 40);
      v20 = *(v12 + i - 32);
      v21 = *(v12 + i - 24);
      result = sub_1AC7A0678();
      if ((result & 1) == 0)
      {
        if (v15 != v5)
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          v22 = *(v12 + 16);
          if (v5 >= v22)
          {
            goto LABEL_22;
          }

          if (v15 >= v22)
          {
            goto LABEL_23;
          }

          v23 = v12 + 32 + 48 * v5;
          v24 = *(v23 + 8);
          v39 = *(v23 + 16);
          v40 = *v23;
          v38 = *(v23 + 24);
          v25 = *(v23 + 40);
          v37 = *(v23 + 32);
          v41 = *(v18 - 40);
          v26 = *(v18 - 32);
          v27 = *(v18 - 24);
          v28 = *(v12 + i - 16);
          v29 = *(v12 + i - 8);
          v30 = *(v12 + i);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AC7045F8(v12);
            v12 = v35;
          }

          v31 = v12 + 48 * v5;
          v32 = *(v31 + 72);
          *(v31 + 32) = v41;
          *(v31 + 40) = v26;
          *(v31 + 48) = v27;
          *(v31 + 56) = v28;
          *(v31 + 64) = v29;
          *(v31 + 72) = v30;

          if (v15 >= *(v12 + 16))
          {
            goto LABEL_24;
          }

          v33 = (v12 + i);
          v34 = *(v12 + i);
          *(v33 - 5) = v40;
          *(v33 - 4) = v24;
          *(v33 - 3) = v39;
          *(v33 - 16) = v38;
          *(v33 - 1) = v37;
          *v33 = v25;

          *v36 = v12;
        }

        ++v5;
      }

      ++v15;
    }

    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1AC5CBA58(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = HIDWORD(a3);
  v9 = swift_allocObject();
  v10 = 0;
  *(v9 + 16) = a2;
  *(v9 + 24) = v5;
  *(v9 + 28) = v8;
  *(v9 + 32) = a4;
  v11 = (a1 + 48);
  v12 = *(a1 + 16);
  while (1)
  {
    if (v12 == v10)
    {
      v16 = 0;
      goto LABEL_7;
    }

    v13 = *(v11 - 2);
    v14 = *(v11 - 1);
    v15 = *v11;
    if (sub_1AC7A0678())
    {
      break;
    }

    ++v10;
    v11 += 6;
  }

  v16 = v10;
LABEL_7:

  return v16;
}

void sub_1AC5CBB30(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_67_5();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v3 - v1))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1AC5C4BF8(v4 - v8, 1, sub_1AC5CBC20);
  v9 = *v2;
  v10 = *v2 + 32;
  v11 = (v10 + 48 * v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF38, &unk_1AC7AB4C0);
  OUTLINED_FUNCTION_143();
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v2 = v9;
    return;
  }

  OUTLINED_FUNCTION_221_0();
  if (v6)
  {
    goto LABEL_16;
  }

  sub_1AC704020((v10 + 48 * v1), v12, v11);
  OUTLINED_FUNCTION_222_0();
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1AC5CBC20()
{
  OUTLINED_FUNCTION_52_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF30, &unk_1AC7A8340);
      v8 = OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_6_2(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_15_1();
        sub_1AC704020(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF38, &unk_1AC7AB4C0);
    OUTLINED_FUNCTION_28_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1AC5CBCE0()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 456);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  *(v5 + 464) = v0;

  v11 = *(v5 + 264);
  if (!v0)
  {
    *(v5 + 81) = v3 & 1;
  }

  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t OUTLINED_FUNCTION_364()
{

  return type metadata accessor for TranscriberCommon.ModelOptions(0);
}

void OUTLINED_FUNCTION_131_0(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_131_1()
{

  return sub_1AC5C6E6C();
}

id OUTLINED_FUNCTION_131_2(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t getEnumTagSinglePayload for AnalyzerInput(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_110()
{
  v1 = v0[32];
  v2 = v0[31];
  v13 = v0[33];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[24];
  v8 = v0[25];
  result = v0[22];
  v10 = v0[23];
  v11 = v0[20];
  v12 = *(v0[21] + 8);
  return result;
}

id OUTLINED_FUNCTION_110_3()
{
  v3 = *(v0 + 152);

  return v1;
}

uint64_t sub_1AC5CC77C()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 232) = v0;
  memcpy((v1 + 16), v2, 0x41uLL);
  v3 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC5CC7E4()
{
  OUTLINED_FUNCTION_72();
  if (*(*(v0 + 232) + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished))
  {
    OUTLINED_FUNCTION_82();

    return v1(0);
  }

  else
  {
    sub_1AC5CC904(*(v0 + 16));
    sub_1AC5CC9CC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v2, v3, v4, (v0 + 84));
    v6 = swift_task_alloc();
    *(v0 + 240) = v6;
    *v6 = v0;
    v6[1] = sub_1AC5CD46C;
    v7 = *(v0 + 232);

    return sub_1AC5CCD68();
  }
}

void sub_1AC5CC904(void *a1)
{
  [a1 frameLength];
  v2 = [a1 format];
  [v2 sampleRate];
  v4 = v3;
  v5 = v3;

  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= -2147483650.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= 2147483650.0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_1AC7A06F8();
}

uint64_t sub_1AC5CC9CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v42 = a7;
  v43 = a6;
  v41 = a5;
  v14 = sub_1AC79FB18();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1AC79FF48();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v40 = v8;
  v20 = sub_1AC5CCD04();
  if (v23)
  {
    v39 = v17;
    if (a4)
    {
      a1 = *MEMORY[0x1E6960CC0];
      LODWORD(a2) = *(MEMORY[0x1E6960CC0] + 8);
      v24 = *(MEMORY[0x1E6960CC0] + 12);
      a3 = *(MEMORY[0x1E6960CC0] + 16);
    }

    else
    {
      v24 = HIDWORD(a2);
    }
  }

  else
  {
    if (a4)
    {
      a1 = v20;
      a2 = v21;
      a3 = v22;
    }

    if ((sub_1AC7A06B8() & 1) == 0)
    {
      sub_1AC79FEE8();
      if (qword_1EB56B610 == -1)
      {
LABEL_16:
        v35 = qword_1EB56DF80;
        sub_1AC79FA88();
        v36 = sub_1AC79FFC8();
        related decl 'e' for SFSpeechErrorCode.init(_:description:)(2, v36, v37);
        return swift_willThrow();
      }

LABEL_17:
      swift_once();
      goto LABEL_16;
    }

    v39 = v17;
    v24 = HIDWORD(a2);
  }

  v25 = v42;
  v26 = a2 | (v24 << 32);
  v44 = a1;
  v45 = v26;
  v27 = v41;
  v46 = a3;
  v47 = v41;
  v48 = v43;
  v49 = v42;
  if ((sub_1AC7A05A8() & 1) == 0)
  {
    sub_1AC79FEE8();
    if (qword_1EB56B610 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  result = v27 - 1;
  v29 = v43;
  v30 = v40;
  if (v27 >= 1)
  {
    sub_1AC7A06F8();
    result = sub_1AC7A0688();
    v31 = v30 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime;
    *v31 = result;
    *(v31 + 8) = v32;
    *(v31 + 16) = v33;
    *(v31 + 24) = 0;
  }

  v34 = v30 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange;
  *v34 = a1;
  *(v34 + 8) = v26;
  *(v34 + 16) = a3;
  *(v34 + 24) = v27;
  *(v34 + 32) = v29;
  *(v34 + 40) = v25;
  *(v34 + 48) = 0;
  *a8 = a1;
  a8[1] = v26;
  a8[2] = a3;
  a8[3] = v27;
  a8[4] = v29;
  a8[5] = v25;
  return result;
}

uint64_t sub_1AC5CCD04()
{
  v1 = (v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange);
  if (*(v0 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange + 48))
  {
    return 0;
  }

  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_1AC7A0558();
}

uint64_t sub_1AC5CCD68()
{
  v1[10] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C890, &qword_1AC7AADC8);
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC5CCE34, v0, 0);
}

void sub_1AC5CCE34()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules;
  if (!*(v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules))
  {
    v18 = v0[13];

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_402();

    __asm { BRAA            X1, X16 }
  }

  v3 = v0[13];
  v4 = v0[11];

  v5 = sub_1AC6088E8(v67);
  v6 = *(v1 + v2);
  *(v1 + v2) = 0;

  v66 = v5;
  v0[8] = v5;
  v7 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules;
  v0[14] = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules;
  OUTLINED_FUNCTION_574();
  v68 = v7;
  v69 = v1;
  v0[9] = *(v1 + v7);

  v8 = OUTLINED_FUNCTION_60_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  sub_1AC5C8B9C(&qword_1EB56ACA0, &qword_1EB56C898, &qword_1AC7AADD0);
  sub_1AC79FE98();

  v11 = v3;
  v12 = sub_1AC7A0BD8();
  v13 = MEMORY[0x1E69E7CC0];
  if (*(v12 + 16))
  {
    OUTLINED_FUNCTION_534();
    v14 = 0;
    v15 = v74;
    v16 = (v12 + 40);
    v70 = 518;
    while (v14 < *(v12 + 16))
    {
      if (*(v12 + 65))
      {
LABEL_24:
        sub_1AC7A0B78();
        OUTLINED_FUNCTION_402();
        return;
      }

      v74 = v15;
      v10 = *(v15 + 16);
      v11 = *(v15 + 24);
      v72 = *v16;
      swift_unknownObjectRetain();
      if (v10 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_533();
      }

      ++v14;
      *(v15 + 16) = v10 + 1;
      OUTLINED_FUNCTION_580((v15 + 16 * v10), v63, v64, v65, v66, v67, v68, v69, v70, v72);
      if (v17)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_64;
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v0[15] = v15;
  v11 = v0[13];
  v21 = v0[11];
  v22 = sub_1AC7A0BE8();
  if (*(v22 + 16))
  {
    OUTLINED_FUNCTION_534();
    v14 = 0;
    v10 = v74;
    v16 = (v22 + 40);
    v71 = 522;
    while (v14 < *(v22 + 16))
    {
      if (*(v22 + 65) != 1)
      {
        goto LABEL_24;
      }

      v13 = *(v74 + 16);
      v11 = *(v74 + 24);
      v73 = *v16;
      swift_unknownObjectRetain();
      if (v13 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_533();
      }

      ++v14;
      *(v74 + 16) = v13 + 1;
      OUTLINED_FUNCTION_580((v74 + 16 * v13), v63, v64, v65, v66, v67, v68, v69, v71, v73);
      if (v17)
      {

        goto LABEL_26;
      }
    }

LABEL_64:
    __break(1u);
LABEL_65:
    sub_1AC7045E0(v11);
    v11 = v62;
    *(v16->n128_u64 + v14) = v62;
    goto LABEL_27;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v0[16] = v10;
  v14 = v68;
  v16 = v69;
  swift_beginAccess();
  v11 = *(v69 + v68);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v69 + v68) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_27:
  v24 = 0;
  v25 = *(v11 + 16);
  v26 = v11 + 32;
  while (1)
  {
    v27 = v24;
LABEL_29:
    if (v27 >= v25)
    {
      break;
    }

    v28 = *(v26 + 16 * v27);
    v29 = *(v10 + 16);
    v30 = v29 + 1;
    v31 = (v10 + 32);
    do
    {
      if (!--v30)
      {
        ++v27;
        goto LABEL_29;
      }

      v32 = *v31;
      v31 += 2;
    }

    while (v32 != v28);
    v33 = v26 + 16 * v27;
    v34 = *(v33 + 8);
    v35 = v29 + 1;
LABEL_35:
    if (v27 >= --v25)
    {
      goto LABEL_46;
    }

    v36 = v35;
    v37 = (v10 + 32);
    while (--v36)
    {
      v38 = *v37;
      v37 += 2;
      if (v38 == *(v26 + 16 * v25))
      {
        goto LABEL_35;
      }
    }

    if (v27 != v25)
    {
      v39 = v26 + 16 * v25;
      *v33 = *v39;
      *v39 = v28;
      *(v39 + 8) = v34;
    }

    v24 = v27 + 1;
  }

  if (v25 <= v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = v25;
  }

LABEL_46:
  *(v16->n128_u64 + v14) = v11;
  swift_endAccess();

  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  sub_1AC5C90A0(0, v27, *(v16->n128_u64 + v14));
  OUTLINED_FUNCTION_612();
  if ((v27 & 1) == 0)
  {
LABEL_48:
    OUTLINED_FUNCTION_48_5();
    sub_1AC751D80(v40, v41, v42, v43);
    v13 = v44;
    goto LABEL_55;
  }

  sub_1AC7A0D68();
  OUTLINED_FUNCTION_168_1();
  swift_unknownObjectRetain_n();
  v45 = swift_dynamicCastClass();
  if (!v45)
  {
    swift_unknownObjectRelease();
    v45 = MEMORY[0x1E69E7CC0];
  }

  v46 = *(v45 + 16);

  if (__OFSUB__(v27 >> 1, v10))
  {
    goto LABEL_67;
  }

  if (v46 != (v27 >> 1) - v10)
  {
LABEL_68:
    swift_unknownObjectRelease();
    goto LABEL_48;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_29_5();
  swift_unknownObjectRelease();
  if (v13)
  {
    goto LABEL_56;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_55:
  swift_unknownObjectRelease();
LABEL_56:
  v0[17] = v13;
  v0[18] = *(v16->n128_u64 + v14);
  objc_opt_self();
  OUTLINED_FUNCTION_29_5();

  if ([v13 hasSPIAccess])
  {
    v48 = v0[14];
    v47 = v0[15];
    v49 = v0[10];
    v75 = v0[17];

    OUTLINED_FUNCTION_11_7();
    sub_1AC65922C(v50, v51);
    v52 = *(v49 + v48);
    *(v49 + v48) = v75;

    v53 = swift_task_alloc();
    v0[22] = v53;
    *v53 = v0;
    OUTLINED_FUNCTION_198_0(v53);
    OUTLINED_FUNCTION_402();

    sub_1AC65ECDC(v54, v55, v56);
  }

  else
  {
    type metadata accessor for AssetInventory();
    v58 = OUTLINED_FUNCTION_86();
    sub_1AC608680(v58);
    sub_1AC608C18();
    v0[19] = v59;

    v60 = swift_task_alloc();
    v0[20] = v60;
    *v60 = v0;
    OUTLINED_FUNCTION_85_0(v60);
    OUTLINED_FUNCTION_402();

    static AssetInventory.reservedLocales.getter();
  }
}

uint64_t sub_1AC5CD46C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_470();

    return v9(0);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v3 + 248) = v11;
    *v11 = v7;
    v11[1] = sub_1AC6747EC;
    v12 = *(v3 + 232);

    return sub_1AC674E40();
  }
}

uint64_t OUTLINED_FUNCTION_574()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_258_0()
{
  v3 = *(v1 + *(v0 + 20));
}

uint64_t sub_1AC5CD658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v3[2] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1AC5CD680, 0, 0);
}

uint64_t sub_1AC5CD680()
{
  OUTLINED_FUNCTION_72();
  if (*(*(v0 + 48) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C850, &qword_1AC7AACE0);
    v1 = swift_task_alloc();
    OUTLINED_FUNCTION_519(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C858, &qword_1AC7AACF8);
    v2 = *(MEMORY[0x1E69E88A0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v0 + 64) = v3;
    *v3 = v4;
    v3[1] = sub_1AC5C8930;
    v5 = OUTLINED_FUNCTION_323();

    return MEMORY[0x1EEE6DD58](v5);
  }

  else
  {
    OUTLINED_FUNCTION_82();
    v7 = MEMORY[0x1E69E7CC0];

    return v6(v7);
  }
}

uint64_t OUTLINED_FUNCTION_317()
{
  *(v3 - 168) = v0;
  v5 = *(v2 + 672) + 16 * v1;

  return sub_1AC61C258(v1, 1);
}

uint64_t sub_1AC5CD7D8()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_165_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45_0(v1);
  OUTLINED_FUNCTION_523();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_551()
{
  v3 = *(*(v1 + *(v0 + 48)) + 16);
}

__n128 *OUTLINED_FUNCTION_23(__n128 *result, __n128 a2)
{
  result[1].n128_u64[0] = v2;
  result[1].n128_u64[1] = v3;
  result[2] = a2;
  result[3].n128_u64[0] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_5(uint64_t a1)
{
  *(a1 + 8) = sub_1AC697B20;
  v2 = *(v1 + 544);
  return 0;
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return sub_1AC7A0B18();
}

uint64_t OUTLINED_FUNCTION_23_9()
{

  return sub_1AC7A0C48();
}

uint64_t OUTLINED_FUNCTION_23_10(uint64_t a1)
{
  v1[2] = v3;
  v1[6] = a1;
  v1[3] = v2;
}

uint64_t OUTLINED_FUNCTION_23_11@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_14(uint64_t a1)
{
  v1[25] = a1;
  v3 = v1[23];
  v4 = v1[19];
  v5 = v1[20];

  return sub_1AC79FF58();
}

uint64_t sub_1AC5CDA88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1AC5CA560;

  return sub_1AC5CDB5C(a2, v9, a4, a5);
}

uint64_t OUTLINED_FUNCTION_531()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 144);

  return __swift_getEnumTagSinglePayload(v2, 1, v3);
}

uint64_t sub_1AC5CDB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C860, &qword_1AC7AAD08);
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C868, &qword_1AC7AAD10);
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v10 = *(v9 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC5CDCE4, 0, 0);
}

uint64_t sub_1AC5CDCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_598();
  v11 = *(v10 + 88);
  v12 = (v11 + 32);
  v13 = *(v11 + 16);
  v14 = &qword_1EB56BE70;
  if (v13)
  {
    do
    {
      v61 = v13;
      v15 = *(v10 + 168);
      v16 = *(v10 + 176);
      v17 = v14;
      v18 = *(v10 + 96);
      v19 = *(v10 + 104);
      v20 = sub_1AC7A0288();
      v62 = v12;
      v63 = *v12;
      OUTLINED_FUNCTION_55_2();
      OUTLINED_FUNCTION_247();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      OUTLINED_FUNCTION_613();
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      v26 = (v25 + 16);
      *(v25 + 24) = 0;
      *(v25 + 32) = v18;
      v14 = v17;
      *(v25 + 40) = v19;
      *(v25 + 48) = v63;
      v27 = OUTLINED_FUNCTION_89();
      sub_1AC68A3F8(v27, v28, v17, &qword_1AC7A8270);
      v29 = OUTLINED_FUNCTION_178_1();
      LODWORD(v15) = __swift_getEnumTagSinglePayload(v29, v30, v20);
      swift_unknownObjectRetain();

      v31 = *(v10 + 168);
      if (v15 == 1)
      {
        v32 = *(v10 + 168);
        OUTLINED_FUNCTION_246();
        sub_1AC5C9624(v33, v34, v35);
      }

      else
      {
        sub_1AC7A0278();
        OUTLINED_FUNCTION_106(v20);
        (*(v36 + 8))(v31, v20);
      }

      if (*v26)
      {
        v37 = *(v25 + 24);
        v38 = *v26;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v39 = sub_1AC7A01B8();
        v41 = v40;
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = 0;
        v41 = 0;
      }

      v42 = **(v10 + 80);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C850, &qword_1AC7AACE0);
      v43 = (v41 | v39);
      if (v41 | v39)
      {
        v43 = a10;
        *a10 = 0;
        a10[1] = 0;
        *(v10 + 32) = v39;
        *(v10 + 40) = v41;
      }

      v44 = *(v10 + 176);
      *(v10 + 48) = 1;
      *(v10 + 56) = v43;
      *(v10 + 64) = v42;
      OUTLINED_FUNCTION_606();
      swift_task_create();

      OUTLINED_FUNCTION_246();
      sub_1AC5C9624(v45, v46, v47);
      v12 = v62 + 1;
      v13 = v61 - 1;
    }

    while (v61 != 1);
  }

  v48 = *(v10 + 152);
  v49 = *(v10 + 160);
  v50 = *(v10 + 136);
  v51 = *(v10 + 144);
  v64 = *(v10 + 128);
  *(v10 + 72) = **(v10 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C870, &qword_1AC7AAD30);
  type metadata accessor for CMTimeRange(0);
  OUTLINED_FUNCTION_281(&unk_1EB56AC78);
  OUTLINED_FUNCTION_488();
  v52 = *(v51 + 16);
  v53 = OUTLINED_FUNCTION_100_2();
  v54(v53);
  OUTLINED_FUNCTION_337(&qword_1EB56AA68, &qword_1EB56C868, &qword_1AC7AAD10);
  sub_1AC7A0368();
  *(v10 + 184) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_58_0(&qword_1EB56AA70, &qword_1EB56C860, &qword_1AC7AAD08);
  v55 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v10 + 192) = v56;
  *v56 = v57;
  OUTLINED_FUNCTION_199_0(v56);
  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6D8C8](v58);
}

uint64_t OUTLINED_FUNCTION_71_1()
{
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[30];
  v6 = v0[31];
  v9 = v0[28];
  v8 = v0[29];
  v11 = v0[25];
  v10 = v0[26];
  v13 = v0[23];
}

uint64_t OUTLINED_FUNCTION_71_2(uint64_t result)
{
  *(result + 8) = sub_1AC697500;
  v2 = *(v1 + 544);
  return result;
}

uint64_t OUTLINED_FUNCTION_71_4()
{

  return sub_1AC7A0768();
}

uint64_t OUTLINED_FUNCTION_71_5@<X0>(char a1@<W8>)
{
  *(v1 - 144) = a1;

  return sub_1AC7A0C68();
}

uint64_t OUTLINED_FUNCTION_340()
{
  result = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  return result;
}

uint64_t OUTLINED_FUNCTION_111_2()
{
  result = v0[137];
  v3 = v0[115];
  v4 = v0[114];
  *(v1 - 120) = v0[106];
  v5 = v0[99];
  return result;
}

uint64_t OUTLINED_FUNCTION_111_4()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  sub_1AC5C3958(v0[6]);
}

uint64_t OUTLINED_FUNCTION_111_5()
{
  v2 = *(v0 + 408) + 16;

  return swift_unknownObjectWeakLoadStrong();
}

void OUTLINED_FUNCTION_111_6(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void sub_1AC5CE284(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_295()
{
  result = v0[46];
  v2 = v0[44];
  v3 = *(v0[45] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_104_1()
{
  *(v1 - 140) = v0;

  return sub_1AC79FFD8();
}

uint64_t OUTLINED_FUNCTION_104_3@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 344) = v1;
  *(v2 + 352) = a1;
}

void OUTLINED_FUNCTION_104_4()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[10];
}

uint64_t OUTLINED_FUNCTION_51_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_59_1()
{
  result = v0[13];
  v2 = v0[11];
  v3 = *(v0[12] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_51_2(uint64_t result)
{
  v3 = result & ~(-1 << *(v1 + 32));
  v4 = *(v2 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_3()
{
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[13];
}

uint64_t OUTLINED_FUNCTION_51_4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1AC5C8BE0(a1, a2, a3);
}

uint64_t sub_1AC5CE460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_105_2();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_29_0(v10);
  *v11 = v12;
  v11[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_291();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t OUTLINED_FUNCTION_154()
{
  result = v0[26];
  v2 = v0[23];
  v3 = v0[20];
  return result;
}

uint64_t OUTLINED_FUNCTION_154_0()
{
  v2 = *v0;

  return sub_1AC7A0958();
}

void OUTLINED_FUNCTION_154_2()
{

  JUMPOUT(0x1B26E8C40);
}

uint64_t OUTLINED_FUNCTION_297()
{
  *(v1 + 600) = *(v2 - 104);

  return sub_1AC6EE14C(v0);
}

uint64_t sub_1AC5CE608(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = a6[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1AC5C4D48;

  return sub_1AC5CE6E4(a1, a2, a3, a4, a5, v12, v13);
}

uint64_t sub_1AC5CE6E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  v7[4] = v10;
  *v10 = v7;
  v10[1] = sub_1AC5C547C;

  return (v12)(a1, v7 + 2);
}

uint64_t sub_1AC5CE7F0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_78_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_0(v3);
  *v4 = v5;
  v4[1] = sub_1AC5C5380;

  return sub_1AC5CE890(v2, v0, (v1 + 16), v1 + 84);
}

uint64_t sub_1AC5CE890(uint64_t a1, uint64_t *a2, const void *a3, uint64_t a4)
{
  v4[17] = a1;
  v7 = *a2;
  v8 = a2[1];
  ObjectType = swift_getObjectType();
  memcpy(v4 + 2, a3, 0x41uLL);
  v10 = *(v8 + 24);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v4[18] = v12;
  *v12 = v4;
  v12[1] = sub_1AC5C5274;

  return (v14)(v4 + 84, v4 + 2, a4, ObjectType, v8);
}

uint64_t *OUTLINED_FUNCTION_75(uint64_t a1)
{
  *(v1 - 72) = a1;

  return __swift_allocate_boxed_opaque_existential_0Tm((v1 - 96));
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_75_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_75_2()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return result;
}

uint64_t sub_1AC5CEA74(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC5C517C;

  return sub_1AC5CEB24();
}

uint64_t sub_1AC5CEB24()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  *(v1 + 544) = v0;
  *(v1 + 536) = v4;
  *(v1 + 528) = v5;
  v6 = v4[1];
  *(v1 + 552) = *v4;
  *(v1 + 568) = v6;
  *(v1 + 584) = v4[2];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v7);
  v9 = *(v8 + 64) + 15;
  *(v1 + 600) = swift_task_alloc();
  *(v1 + 608) = swift_task_alloc();
  memcpy((v1 + 16), v3, 0x41uLL);
  v10 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC5CF314()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7F0, &qword_1AC7AAAF0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1AC5CF354()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_1AC5CF394()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CB30, &qword_1AC7B1CA0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1AC5CF3C4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D240, &qword_1AC7AE6A0);
  }

  else
  {
    return OUTLINED_FUNCTION_28_9(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_1AC5CF3F0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D248, &qword_1AC7AE6A8);
  }

  else
  {
    return OUTLINED_FUNCTION_28_9(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_1AC5CF41C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D250, &qword_1AC7AE6B0);
  }

  else
  {
    return OUTLINED_FUNCTION_28_9(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_1AC5CF448()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D258, &qword_1AC7AE6B8);
  }

  else
  {
    return OUTLINED_FUNCTION_28_9(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_1AC5CF474()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE98, &qword_1AC7B2948);
  }

  else
  {
    return OUTLINED_FUNCTION_28_9(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_1AC5CF4A0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEA0, &unk_1AC7B2950);
  }

  else
  {
    return OUTLINED_FUNCTION_28_9(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_1AC5CF4CC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CB30, &qword_1AC7B1CA0);
  }

  else
  {
    return OUTLINED_FUNCTION_28_9(MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_1AC5CF4F8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0A0, &qword_1AC7B40B0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1AC5CF528()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CB30, &qword_1AC7B1CA0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1AC5CF558()
{
  v1 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService;
  v2 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_audioBufferService);
  v3 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resultStreamActor;
  v4 = *(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_resultStreamActor);
  if (*(v0 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didPrepare))
  {
    if (!v2)
    {
      if (v4)
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    if (v4)
    {
      return 2;
    }
  }

  else if (!(v2 | v4))
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_didPrepare;

  sub_1AC7A09C8();
  MEMORY[0x1B26E8C40](0xD00000000000002CLL, 0x80000001AC7B7110);
  if (*(v0 + v6))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + v6))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1B26E8C40](v7, v8);

  MEMORY[0x1B26E8C40](0x426F69647561202CLL, 0xEE00207265666675);
  v9 = *(v0 + v1);
  if (v9)
  {
    v10 = 0x6C696E6E6F6ELL;
  }

  else
  {
    v10 = 7104878;
  }

  if (v9)
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x1B26E8C40](v10, v11);

  MEMORY[0x1B26E8C40](0x746C75736572202CLL, 0xEF206D6165727453);
  v12 = *(v0 + v3);
  if (v12)
  {
    v13 = 0x6C696E6E6F6ELL;
  }

  else
  {
    v13 = 7104878;
  }

  if (v12)
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  MEMORY[0x1B26E8C40](v13, v14);

  result = sub_1AC7A0B78();
  __break(1u);
  return result;
}

uint64_t sub_1AC5CF764(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v13 = a11;
  v14 = a12;

  return sub_1AC5CFE74(v13, v14, &a10);
}

void OUTLINED_FUNCTION_94_2()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

void OUTLINED_FUNCTION_94_3()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
}

uint64_t OUTLINED_FUNCTION_156()
{

  return sub_1AC79FC98();
}

uint64_t OUTLINED_FUNCTION_156_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_156_1(float a1)
{
  *v2 = a1;
  *(v1 + 144) = v3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_156_2()
{
  v3 = *(v0 + *(v1 + 24) + 8);
}

uint64_t OUTLINED_FUNCTION_37_0(float a1)
{
  *v1 = a1;

  return sub_1AC7A09C8();
}

void OUTLINED_FUNCTION_37_3()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[15];
}

uint64_t OUTLINED_FUNCTION_37_5()
{
  v1 = v0[43];
  v2 = v0[44];
  return v0[42];
}

uint64_t OUTLINED_FUNCTION_37_6(uint64_t a1)
{
  *(v4 + 120) = a1;
  *(v4 + 88) = v1;
  *(v2 + 16) = v5;
  sub_1AC5D9384((v4 + 88), v2 + 40 * v7 + 32);
  *(*(v6 + 56) + 8 * v3) = v2;
}

uint64_t OUTLINED_FUNCTION_37_7(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v6 + 768) = a1;
  *(v6 + 776) = a2;

  return sub_1AC6A8B80(a1, a2, 0x10000, va);
}

uint64_t OUTLINED_FUNCTION_37_8()
{
  v1 = v0[4];
  v2 = *(v0[6] + 8);
  return v0[7];
}

uint64_t OUTLINED_FUNCTION_37_13()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_37_14()
{
  result = v0[43];
  v2 = v0[41];
  v3 = *(v0[42] + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_182()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_198_0(uint64_t a1)
{
  *(a1 + 8) = sub_1AC65C3F4;
  v3 = v1[17];
  v2 = v1[18];
  v4 = v1[10];
  return v1[15];
}

uint64_t sub_1AC5CFAB8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 + 0x4000000000000000 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 2 * a2;
      if (2 * a2)
      {
        if (v3 <= 14)
        {
          return sub_1AC79F808();
        }

        else
        {
          v4 = sub_1AC79F4B8();
          v5 = *(v4 + 48);
          v6 = *(v4 + 52);
          swift_allocObject();
          OUTLINED_FUNCTION_89();
          sub_1AC79F4A8();
          if (v3 >= 0x7FFFFFFF)
          {
            sub_1AC79F828();
            OUTLINED_FUNCTION_99();
            result = swift_allocObject();
            *(result + 16) = 0;
            *(result + 24) = v3;
          }

          else
          {
            return a2 << 33;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AC5CFBB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t OUTLINED_FUNCTION_88_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1AC5C6EC4(v4 + 32, v5 - 200, a3, a4);
}

uint64_t OUTLINED_FUNCTION_88_2()
{
  v4 = v1 + *(v0 + 28);

  return __swift_getEnumTagSinglePayload(v4, 1, v2);
}

void OUTLINED_FUNCTION_194_0()
{

  JUMPOUT(0x1B26E9A40);
}

uint64_t OUTLINED_FUNCTION_42()
{
  v2 = v0[13];
  v3 = v0[6];
  v4 = v0[5];
  v5 = *(v0[7] + 136);

  return sub_1AC5C6544();
}

uint64_t OUTLINED_FUNCTION_42_2()
{

  return sub_1AC79FC98();
}

void OUTLINED_FUNCTION_42_3()
{

  objc_setAssociatedObject(v1, v2, v0, 1);
}

void OUTLINED_FUNCTION_42_8()
{

  sub_1AC6ED760(v0);
}

uint64_t OUTLINED_FUNCTION_42_10()
{
  v5 = *(v3 - 144);

  return sub_1AC5C720C(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_42_12()
{

  return swift_beginAccess();
}

_OWORD *OUTLINED_FUNCTION_42_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, __int128 a18)
{

  return sub_1AC5C3968(&a15, &a18);
}

uint64_t sub_1AC5CFE74(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1AC5CFFC0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1AC5CFF64(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_1AC5CFF64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1AC5CFFC0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1AC630D20(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1AC7A0A48();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
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

uint64_t OUTLINED_FUNCTION_67_1()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_67_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

_OWORD *OUTLINED_FUNCTION_67_4()
{

  return sub_1AC5C3968((v0 - 200), (v0 - 120));
}

uint64_t OUTLINED_FUNCTION_58_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1AC5C8B9C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_67_6()
{

  return sub_1AC7A0D38();
}

uint64_t OUTLINED_FUNCTION_67_7()
{
  v2 = v0[52];
  v3 = v0[53];

  return sub_1AC5CFE74(v2, v3, v0 + 85);
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return sub_1AC7A0048();
}

uint64_t OUTLINED_FUNCTION_3_3@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

_OWORD *OUTLINED_FUNCTION_3_17(uint64_t a1)
{

  return sub_1AC6E114C(a1, v1, v2);
}

uint64_t sub_1AC5D037C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[95] + 16);
  v2 = swift_task_alloc();
  v0[102] = v2;
  *v2 = v0;
  v2[1] = sub_1AC5C2524;
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];

  return sub_1AC699DEC(v2, v1, v6, v5, v4, v3);
}

uint64_t sub_1AC5D0420()
{
  OUTLINED_FUNCTION_85();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_1AC79FC78();
  v1[8] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = OUTLINED_FUNCTION_126();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B918, &unk_1AC7ACDB0);
  v1[11] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[12] = v9;
  v11 = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_126();
  v12 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t OUTLINED_FUNCTION_180()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

void OUTLINED_FUNCTION_180_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1AC6B5150(0xD000000000000024, v3 | 0x8000000000000000, a3, v5 | 0x8000000000000000, v4);
}

uint64_t sub_1AC5D0574()
{
  v1 = v0[7];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[13];
    v3 = v0[6];
    v4 = v0[5];
    v5 = *(v0[7] + 136);
    v6 = sub_1AC5C6544();
    v0[2] = v4;
    v0[3] = v3;
    v0[4] = v6;
    sub_1AC5CFBB8(v4, v3);
    sub_1AC79FC98();
    v7 = sub_1AC5D0788(v2);
    v9 = nullsub_1(v7, v8);
    nullsub_1(v9, v10);
    v12 = v0[10];
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7B98);
    v18 = v13;
    v14 = swift_task_alloc();
    v0[14] = v14;
    *v14 = v0;
    v14[1] = sub_1AC5C2364;
    v15 = v0[10];
    v16 = v0[7];

    return v18(v16, v15, v0 + 4);
  }

  else
  {
    v11 = v0[7];

    return MEMORY[0x1EEE6DFA0](sub_1AC75A0AC, v11, 0);
  }
}

uint64_t sub_1AC5D081C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_60_0();
  *(v1 + 48) = sub_1AC5D0940(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_149_0();

    return v5(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_20_0(v12);
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_56_1(v14);
    *v15 = v16;
    v15[1] = sub_1AC5C2260;
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5D0928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

id sub_1AC5D0940(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = sub_1AC5C7E18();
  if (v7)
  {
    return v7;
  }

  switch(v6)
  {
    case 1:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9FC0(v4, v5, 0);
      break;
    case 2:
      v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
      break;
    case 3:
      sub_1AC7A09C8();
      MEMORY[0x1B26E8C40](0xD000000000000030, 0x80000001AC7B5600);
      type metadata accessor for EARSpeechRecognitionAudioBuffer();
      sub_1AC7A0AF8();
      sub_1AC7A0B78();
      __break(1u);
      JUMPOUT(0x1AC5D0B84);
    default:
      sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);

      v9 = sub_1AC6E9F4C();
      break;
  }

  v10 = qword_1EB56AD98;
  v8 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  [v8 setRemoteObjectInterface_];

  sub_1AC6E9C00(v8, v4, v5, v6);
  sub_1AC6027C8(v8, a1, 0, 0, v2);
  return v8;
}

uint64_t OUTLINED_FUNCTION_5_1@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

__n128 OUTLINED_FUNCTION_5_2(__n128 *a1)
{
  v3[4].n128_u64[0] = a1;
  result = v3[2];
  a1[1].n128_u64[0] = v1;
  a1[1].n128_u64[1] = v2;
  a1[2] = result;
  a1[3].n128_u64[0] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

void OUTLINED_FUNCTION_5_6()
{
}

uint64_t OUTLINED_FUNCTION_5_7()
{
  v9 = *(type metadata accessor for ClientInfo(0) + 32);
  v10 = type metadata accessor for ClientInfo.LoggingInfo(0);
  result = __swift_storeEnumTagSinglePayload(v8 + v9, 1, 1, v10);
  *v8 = v7;
  v8[1] = v6;
  v8[4] = v5;
  v8[5] = v4;
  v8[2] = v3;
  v8[3] = v2;
  v8[6] = v1;
  v8[7] = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{
  *(a1 + 8) = sub_1AC6C551C;
  v2 = *(v1 + 264);
  return 1;
}

uint64_t OUTLINED_FUNCTION_5_9@<X0>(void *a1@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *v1 = *a1;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v5;
}

uint64_t OUTLINED_FUNCTION_5_18(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
  *(v2 - 96) = v1;
  return result;
}

id sub_1AC5D0DD0(id result, id a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:

      break;
    case 2:
    case 3:
      result = result;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1AC5D0E20(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 40);
  sub_1AC7A0E78();
  sub_1AC5D0EA4(v13, a1, a2, a3);
  sub_1AC7A0EC8();
  v8 = OUTLINED_FUNCTION_32_8();

  return sub_1AC5D0F60(v8, v9, v10, v11);
}

uint64_t sub_1AC5D0EA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      v4 = 1;
      goto LABEL_7;
    case 2:
      v5 = 2;
      goto LABEL_5;
    case 3:
      v5 = 3;
LABEL_5:
      MEMORY[0x1B26E9A40](v5);
      result = sub_1AC7A0768();
      break;
    default:
      v4 = 0;
LABEL_7:
      MEMORY[0x1B26E9A40](v4);

      result = sub_1AC7A0048();
      break;
  }

  return result;
}

unint64_t sub_1AC5D0F60(void *a1, void *a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v4;
    v11 = ~v6;
    while (2)
    {
      v12 = *(v8 + 48) + 24 * v7;
      v14 = *v12;
      v13 = *(v12 + 8);
      switch(*(v12 + 16))
      {
        case 1:
          if (a3 != 1)
          {
            goto LABEL_18;
          }

          goto LABEL_13;
        case 2:
          if (a3 != 2)
          {
            goto LABEL_18;
          }

          sub_1AC5CF764(0, &qword_1ED9372A0, 0x1E696B0E0);
          v15 = v14;
          v16 = sub_1AC7A0758();
          v17 = v14;
          v18 = v13;
          v19 = 2;
          goto LABEL_10;
        case 3:
          if (a3 != 3)
          {
            goto LABEL_18;
          }

          sub_1AC5CF764(0, &qword_1ED9372A0, 0x1E696B0E0);
          v20 = v14;
          v16 = sub_1AC7A0758();
          v17 = v14;
          v18 = v13;
          v19 = 3;
LABEL_10:
          sub_1AC5D1128(v17, v18, v19);
          if (v16)
          {
            return v7;
          }

          goto LABEL_18;
        default:
          if (a3)
          {
            goto LABEL_18;
          }

LABEL_13:
          v21 = v14 == a1 && v13 == a2;
          if (v21 || (sub_1AC7A0D38() & 1) != 0)
          {
            return v7;
          }

LABEL_18:
          v7 = (v7 + 1) & v11;
          if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            return v7;
          }

          continue;
      }
    }
  }

  return v7;
}

void sub_1AC5D1128(void *a1, id a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:

      break;
    case 2:
    case 3:

      break;
    default:
      return;
  }
}

uint64_t OUTLINED_FUNCTION_7_7(uint64_t result)
{
  *(result + 8) = sub_1AC698450;
  v2 = *(v1 + 544);
  return result;
}

void OUTLINED_FUNCTION_7_9()
{
  v2 = v0[110];
  v13 = v0[107];
  v3 = v0[106];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[103];
  v7 = v0[102];
  v8 = v0[101];
  v9 = v0[96];
  v10 = v0[95];
  v11 = v0[93];
  v14 = v0[92];
  v15 = v0[94];
  v12 = v0[65];
  v16 = v0[100];
}

uint64_t OUTLINED_FUNCTION_7_10(uint64_t result)
{
  *(v2 + *(result + 20)) = v1;
  v3 = v2 + *(result + 24);
  return result;
}

void OUTLINED_FUNCTION_7_11()
{
  v3 = *(v1 + 24);
  *(v2 - 88) = 0x402030100uLL >> (8 * *(v0 + *(v1 + 20)));
  v4 = *(v0 + v3 + 8);
}

uint64_t OUTLINED_FUNCTION_7_13(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[5];
  v4 = v2[6];
  v5 = v2[4];
  return v2[3];
}

uint64_t OUTLINED_FUNCTION_7_15@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_21(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1AC5C8B9C(a1, a2, a3);
}

uint64_t sub_1AC5D1484(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA68, &qword_1AC7A7B28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC604BF8;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_412;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognitionAudioBuffer();

    a3 = v30;
    v22 = sub_1AC5D1ED0(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AC5D1B84(uint64_t *a1, uint64_t *a2)
{
  v2 = a1;
  v3 = *a2;
  v4 = *(*a2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v20 = MEMORY[0x1E69E7CC0];

    sub_1AC5D1E2C(0, v4, 0);
    v6 = v3 + 32;
    v5 = v20;
    do
    {
      sub_1AC5D1E4C(v6, v19, &unk_1EB56D430, &qword_1AC7A8118);
      sub_1AC5D1E4C(v19, &v14, &unk_1EB56D430, &qword_1AC7A8118);
      v18[0] = v14;
      v18[1] = v15;
      sub_1AC5C3968(&v16, v17);
      sub_1AC5C1FE4(v18, v17, &v14);
      __swift_destroy_boxed_opaque_existential_0(v17);
      sub_1AC5C720C(v18, &unk_1EB56C620, &unk_1AC7A7A00);
      sub_1AC5C720C(v19, &unk_1EB56D430, &qword_1AC7A8118);
      v20 = v5;
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1AC5D1E2C(v7 > 1, v8 + 1, 1);
        v5 = v20;
      }

      *(v5 + 16) = v8 + 1;
      v9 = v5 + 32 * v8;
      v10 = v15;
      *(v9 + 32) = v14;
      *(v9 + 48) = v10;
      v6 += 64;
      --v4;
    }

    while (v4);

    v2 = a1;
  }

  v11 = *v2;
  *v2 = v5;
}

uint64_t sub_1AC5D1D1C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C430, &unk_1AC7A9088);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1AC703F78((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5D1E2C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1AC5D1D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC5D1E4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_80(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1AC5D1ED0(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_65();
  v10 = v5 == 0xD00000000000002ELL && v6 == a2;
  if (v10 || (v11 = v9, v12 = v8, v13 = v7, v14 = v5, (OUTLINED_FUNCTION_53() & 1) != 0))
  {
    [a3 hello];
    return 1;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD00000000000003DLL;
  v17 = v14 == 0xD00000000000003DLL && v16 == a2;
  if (v17 || (result = OUTLINED_FUNCTION_53(), (result & 1) != 0))
  {
    if (*(v13 + 16))
    {
      sub_1AC5D2398(v13 + 32, aBlock);
      if (v36)
      {
        result = swift_dynamicCast();
        if (result)
        {
          v18 = v40;
          v19 = sub_1AC79F858();
          result = sub_1AC5C28A8(v18, *(&v18 + 1));
          goto LABEL_20;
        }
      }

      else
      {
        result = sub_1AC641B24(aBlock);
      }

      v19 = 0;
LABEL_20:
      if (v12)
      {
        v20 = swift_allocObject();
        *(v20 + 16) = v12;
        *(v20 + 24) = v11;
        OUTLINED_FUNCTION_6_15();
        v34 = 1107296256;
        v35 = sub_1AC5D25B4;
        v36 = &block_descriptor_25;
        v21 = _Block_copy(aBlock);

        [a3 addAudioSampleData:v19 reply:v21];
        _Block_release(v21);

        return 1;
      }

      goto LABEL_45;
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_65();
  v23 = v14 == 0xD000000000000031 && v22 == a2;
  if (v23 || (OUTLINED_FUNCTION_53() & 1) != 0)
  {
    [a3 endAudio];
    return 1;
  }

  OUTLINED_FUNCTION_65();
  v25 = v14 == 0xD00000000000003ALL && v24 == a2;
  if (v25 || (OUTLINED_FUNCTION_53() & 1) != 0)
  {
    [a3 cancelRecognition];
    return 1;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD000000000000052;
  v27 = v14 == 0xD000000000000052 && v26 == a2;
  if (v27 || (v28 = OUTLINED_FUNCTION_53(), result = 0, (v28 & 1) != 0))
  {
    if (*(v13 + 16))
    {
      result = sub_1AC5D2398(v13 + 32, &v38);
      if (v39)
      {
        sub_1AC5C3968(&v38, &v40);
        result = swift_dynamicCast();
        if (v12)
        {
          v29 = v37;
          v30 = swift_allocObject();
          *(v30 + 16) = v12;
          *(v30 + 24) = v11;
          OUTLINED_FUNCTION_6_15();
          v34 = 1107296256;
          v35 = sub_1AC75B6DC;
          v36 = &block_descriptor_18;
          v31 = _Block_copy(aBlock);

          LODWORD(v32) = v29;
          [a3 packetArrivalTimestampFromAudioTimestamp:v31 reply:v32];
          _Block_release(v31);
          return 1;
        }

LABEL_47:
        __break(1u);
        return result;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  return result;
}