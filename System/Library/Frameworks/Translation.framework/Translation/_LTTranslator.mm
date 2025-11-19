@interface _LTTranslator
+ (id)interruptionHandler;
+ (void)_deleteHotfix:(id)a3;
+ (void)_downloadAssetForLanguagePair:(id)a3 userInitiated:(BOOL)a4 completion:(id)a5;
+ (void)_getAssetSize:(id)a3;
+ (void)_getServiceProxyWithDelegate:(id)a3 errorHandler:(id)a4 block:(id)a5;
+ (void)_getSyncServiceProxyWithDelegate:(id)a3 errorHandler:(id)a4 block:(id)a5;
+ (void)_getTextServiceProxyWithDelegate:(id)a3 useDedicatedTextMachPort:(BOOL)a4 errorHandler:(id)a5 block:(id)a6;
+ (void)_offlineLanguageStatus:(id)a3;
+ (void)_purgeAllAssetsExcludingConfig:(BOOL)a3 completion:(id)a4;
+ (void)_purgeAssetForLanguagePair:(id)a3 userInitiated:(BOOL)a4 completion:(id)a5;
+ (void)_updateAllAssets:(id)a3;
+ (void)_updateHotfix:(id)a3;
+ (void)addLanguages:(id)a3 useCellular:(BOOL)a4;
+ (void)additionalLikelyPreferredLocalesForLocale:(id)a3 completion:(id)a4;
+ (void)autoDetectSpeechUnsupportedPairsWithCompletion:(id)a3;
+ (void)configInfoForLocale:(id)a3 otherLocale:(id)a4 completion:(id)a5;
+ (void)initialize;
+ (void)installOfflineLocales:(id)a3 completion:(id)a4;
+ (void)installedLocales:(id)a3;
+ (void)installedLocalesForTask:(int64_t)a3 completion:(id)a4;
+ (void)languageAssetsWithOptions:(unint64_t)a3 completion:(id)a4;
+ (void)languageForText:(id)a3 completion:(id)a4;
+ (void)modalitiesPerLocaleWithCompletion:(id)a3;
+ (void)onDeviceModeSupported:(id)a3;
+ (void)removeLanguages:(id)a3;
+ (void)selfLoggingEventWithData:(id)a3;
+ (void)selfLoggingInvocationCancelledForIDs:(id)a3;
+ (void)selfLoggingInvocationDidError:(id)a3 invocationId:(id)a4;
+ (void)selfLoggingInvocationStartedWithData:(id)a3 invocationStartedTier1Data:(id)a4;
+ (void)selfLoggingLanguageIdentificationCompletedWithLIDData:(id)a3;
+ (void)setLanguageAssets:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6;
+ (void)task:(int64_t)a3 isSupportedInCountry:(id)a4 completion:(id)a5;
+ (void)taskIsSupportedInCurrentRegion:(int64_t)a3 completion:(id)a4;
+ (void)textStreamingConfigurationWithCompletion:(id)a3;
- (id)startTranslationSession;
- (id)startTranslationSessionWithSELFLoggingInvocationId:(id)a3;
- (void)cleanup;
- (void)log:(id)a3;
- (void)preheatForRequest:(id)a3 completion:(id)a4;
- (void)preheatForRequestSync:(id)a3;
- (void)translate:(id)a3 useDedicatedTextMachPort:(BOOL)a4;
- (void)updateOVADStreamingState:(id)a3;
@end

@implementation _LTTranslator

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_alloc_init(_LTInterruptionHandler);
    v3 = _interruptionController;
    _interruptionController = v2;

    v4 = objc_alloc_init(_LTBlockBasedInterruptionHandler);
    v5 = _legacyInterruptionHandler;
    _legacyInterruptionHandler = v4;

    [_interruptionController addObserver:_legacyInterruptionHandler];
    v6 = internalInterruptionHandler;
    internalInterruptionHandler = &__block_literal_global_16;
  }
}

+ (id)interruptionHandler
{
  v2 = [_legacyInterruptionHandler handler];
  v3 = v2;
  if (!v2)
  {
    v2 = &__block_literal_global_5;
  }

  v4 = _Block_copy(v2);

  return v4;
}

+ (void)languageAssetsWithOptions:(unint64_t)a3 completion:(id)a4
{
  v5 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54___LTTranslator_languageAssetsWithOptions_completion___block_invoke;
  v10[3] = &unk_278B6DBE8;
  v11 = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54___LTTranslator_languageAssetsWithOptions_completion___block_invoke_16;
  v7[3] = &unk_278B6DF38;
  v8 = v11;
  v9 = a3;
  v6 = v11;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v10 block:v7];
}

+ (void)setLanguageAssets:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [[_LTLanguageAssetRequest alloc] initWithLanguageAssets:v11 options:a4 progress:v10 completion:v9];

  v13 = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63___LTTranslator_setLanguageAssets_options_progress_completion___block_invoke;
  v17[3] = &unk_278B6DBE8;
  v18 = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63___LTTranslator_setLanguageAssets_options_progress_completion___block_invoke_20;
  v15[3] = &unk_278B6DF60;
  v16 = v13;
  v14 = v9;
  [_LTTranslator _getServiceProxyWithDelegate:v13 errorHandler:v17 block:v15];
}

+ (void)addLanguages:(id)a3 useCellular:(BOOL)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42___LTTranslator_addLanguages_useCellular___block_invoke_23;
  v7[3] = &unk_278B6DF88;
  v8 = v5;
  v9 = a4;
  v6 = v5;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:&__block_literal_global_22_0 block:v7];
}

+ (void)removeLanguages:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33___LTTranslator_removeLanguages___block_invoke_26;
  v5[3] = &unk_278B6DF60;
  v6 = v3;
  v4 = v3;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:&__block_literal_global_25_0 block:v5];
}

+ (void)_offlineLanguageStatus:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40___LTTranslator__offlineLanguageStatus___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40___LTTranslator__offlineLanguageStatus___block_invoke_27;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)_downloadAssetForLanguagePair:(id)a3 userInitiated:(BOOL)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72___LTTranslator__downloadAssetForLanguagePair_userInitiated_completion___block_invoke;
  v15[3] = &unk_278B6DBE8;
  v16 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72___LTTranslator__downloadAssetForLanguagePair_userInitiated_completion___block_invoke_28;
  v11[3] = &unk_278B6E000;
  v14 = a4;
  v12 = v7;
  v13 = v16;
  v9 = v16;
  v10 = v7;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v15 block:v11];
}

+ (void)_purgeAssetForLanguagePair:(id)a3 userInitiated:(BOOL)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69___LTTranslator__purgeAssetForLanguagePair_userInitiated_completion___block_invoke;
  v15[3] = &unk_278B6DBE8;
  v16 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69___LTTranslator__purgeAssetForLanguagePair_userInitiated_completion___block_invoke_29;
  v11[3] = &unk_278B6E000;
  v14 = a4;
  v12 = v7;
  v13 = v16;
  v9 = v16;
  v10 = v7;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v15 block:v11];
}

+ (void)_purgeAllAssetsExcludingConfig:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59___LTTranslator__purgeAllAssetsExcludingConfig_completion___block_invoke;
  v10[3] = &unk_278B6DBE8;
  v11 = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59___LTTranslator__purgeAllAssetsExcludingConfig_completion___block_invoke_30;
  v7[3] = &unk_278B6E028;
  v9 = a3;
  v8 = v11;
  v6 = v11;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v10 block:v7];
}

+ (void)_updateAllAssets:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34___LTTranslator__updateAllAssets___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34___LTTranslator__updateAllAssets___block_invoke_31;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)_updateHotfix:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31___LTTranslator__updateHotfix___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31___LTTranslator__updateHotfix___block_invoke_32;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)_deleteHotfix:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31___LTTranslator__deleteHotfix___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31___LTTranslator__deleteHotfix___block_invoke_33;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)installedLocales:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34___LTTranslator_installedLocales___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34___LTTranslator_installedLocales___block_invoke_34;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)installedLocalesForTask:(int64_t)a3 completion:(id)a4
{
  v5 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52___LTTranslator_installedLocalesForTask_completion___block_invoke;
  v10[3] = &unk_278B6DBE8;
  v11 = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52___LTTranslator_installedLocalesForTask_completion___block_invoke_36;
  v7[3] = &unk_278B6E078;
  v8 = v11;
  v9 = a3;
  v6 = v11;
  [_LTTranslator _getTextServiceProxyWithDelegate:0 useDedicatedTextMachPort:1 errorHandler:v10 block:v7];
}

+ (void)_getAssetSize:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31___LTTranslator__getAssetSize___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31___LTTranslator__getAssetSize___block_invoke_37;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)installOfflineLocales:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  [v7 setCompletionHandler:v6];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50___LTTranslator_installOfflineLocales_completion___block_invoke;
  v12[3] = &unk_278B6DBE8;
  v13 = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50___LTTranslator_installOfflineLocales_completion___block_invoke_39;
  v10[3] = &unk_278B6DF60;
  v11 = v7;
  v8 = v7;
  v9 = v6;
  [_LTTranslator _getServiceProxyWithDelegate:v8 errorHandler:v12 block:v10];
}

+ (void)additionalLikelyPreferredLocalesForLocale:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70___LTTranslator_additionalLikelyPreferredLocalesForLocale_completion___block_invoke;
  v12[3] = &unk_278B6DBE8;
  v13 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70___LTTranslator_additionalLikelyPreferredLocalesForLocale_completion___block_invoke_41;
  v9[3] = &unk_278B6E0C8;
  v10 = v5;
  v11 = v13;
  v7 = v13;
  v8 = v5;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v12 block:v9];
}

+ (void)configInfoForLocale:(id)a3 otherLocale:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60___LTTranslator_configInfoForLocale_otherLocale_completion___block_invoke;
  v17[3] = &unk_278B6DBE8;
  v18 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60___LTTranslator_configInfoForLocale_otherLocale_completion___block_invoke_42;
  v13[3] = &unk_278B6E118;
  v14 = v7;
  v15 = v8;
  v16 = v18;
  v10 = v18;
  v11 = v8;
  v12 = v7;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v17 block:v13];
}

+ (void)onDeviceModeSupported:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39___LTTranslator_onDeviceModeSupported___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39___LTTranslator_onDeviceModeSupported___block_invoke_44;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)taskIsSupportedInCurrentRegion:(int64_t)a3 completion:(id)a4
{
  v5 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59___LTTranslator_taskIsSupportedInCurrentRegion_completion___block_invoke;
  v10[3] = &unk_278B6DBE8;
  v11 = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59___LTTranslator_taskIsSupportedInCurrentRegion_completion___block_invoke_48;
  v7[3] = &unk_278B6DF38;
  v8 = v11;
  v9 = a3;
  v6 = v11;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v10 block:v7];
}

+ (void)autoDetectSpeechUnsupportedPairsWithCompletion:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64___LTTranslator_autoDetectSpeechUnsupportedPairsWithCompletion___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64___LTTranslator_autoDetectSpeechUnsupportedPairsWithCompletion___block_invoke_50;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)modalitiesPerLocaleWithCompletion:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51___LTTranslator_modalitiesPerLocaleWithCompletion___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51___LTTranslator_modalitiesPerLocaleWithCompletion___block_invoke_51;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)textStreamingConfigurationWithCompletion:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58___LTTranslator_textStreamingConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58___LTTranslator_textStreamingConfigurationWithCompletion___block_invoke_53;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)task:(int64_t)a3 isSupportedInCountry:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54___LTTranslator_task_isSupportedInCountry_completion___block_invoke;
  v15[3] = &unk_278B6DBE8;
  v16 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54___LTTranslator_task_isSupportedInCountry_completion___block_invoke_55;
  v11[3] = &unk_278B6E1B8;
  v13 = v16;
  v14 = a3;
  v12 = v7;
  v9 = v16;
  v10 = v7;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v15 block:v11];
}

+ (void)languageForText:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44___LTTranslator_languageForText_completion___block_invoke;
  v12[3] = &unk_278B6DBE8;
  v13 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44___LTTranslator_languageForText_completion___block_invoke_56;
  v9[3] = &unk_278B6E0C8;
  v10 = v5;
  v11 = v13;
  v7 = v13;
  v8 = v5;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v12 block:v9];
}

+ (void)_getServiceProxyWithDelegate:(id)a3 errorHandler:(id)a4 block:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _LTOSLogXPC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23AAF5000, v10, OS_LOG_TYPE_INFO, "Creating service proxy", buf, 2u);
  }

  v11 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.translationd" options:0];
  v12 = _LTTranslationServiceXPCInterface();
  [v11 setRemoteObjectInterface:v12];

  if (v7)
  {
    [v11 setExportedObject:v7];
    v13 = _LTTranslationServiceDelegateXPCInterface();
    [v11 setExportedInterface:v13];
  }

  [v11 setInterruptionHandler:internalInterruptionHandler];
  [v11 resume];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __65___LTTranslator__getServiceProxyWithDelegate_errorHandler_block___block_invoke;
  v21[3] = &unk_278B6E258;
  v14 = v11;
  v22 = v14;
  v23 = v8;
  v15 = v8;
  v16 = [v14 remoteObjectProxyWithErrorHandler:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65___LTTranslator__getServiceProxyWithDelegate_errorHandler_block___block_invoke_70;
  v19[3] = &unk_278B6CEE8;
  v20 = v14;
  v17 = v9[2];
  v18 = v14;
  v17(v9, v16, v19);
}

+ (void)_getTextServiceProxyWithDelegate:(id)a3 useDedicatedTextMachPort:(BOOL)a4 errorHandler:(id)a5 block:(id)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = _LTOSLogXPC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23AAF5000, v12, OS_LOG_TYPE_INFO, "Creating text-only service proxy", buf, 2u);
  }

  v13 = @"com.apple.translationd";
  if (v8)
  {
    v13 = @"com.apple.translation.text";
  }

  v14 = MEMORY[0x277CCAE80];
  v15 = v13;
  v16 = [[v14 alloc] initWithMachServiceName:v15 options:0];

  v17 = _LTTextTranslationServiceXPCInterface();
  [v16 setRemoteObjectInterface:v17];

  if (v9)
  {
    [v16 setExportedObject:v9];
    v18 = _LTTranslationServiceDelegateXPCInterface();
    [v16 setExportedInterface:v18];
  }

  [v16 setInterruptionHandler:internalInterruptionHandler];
  [v16 resume];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __94___LTTranslator__getTextServiceProxyWithDelegate_useDedicatedTextMachPort_errorHandler_block___block_invoke;
  v26[3] = &unk_278B6E258;
  v19 = v16;
  v27 = v19;
  v28 = v10;
  v20 = v10;
  v21 = [v19 remoteObjectProxyWithErrorHandler:v26];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __94___LTTranslator__getTextServiceProxyWithDelegate_useDedicatedTextMachPort_errorHandler_block___block_invoke_74;
  v24[3] = &unk_278B6CEE8;
  v25 = v19;
  v22 = v11[2];
  v23 = v19;
  v22(v11, v21, v24);
}

+ (void)_getSyncServiceProxyWithDelegate:(id)a3 errorHandler:(id)a4 block:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _LTOSLogXPC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23AAF5000, v10, OS_LOG_TYPE_INFO, "Creating SYNC service proxy", buf, 2u);
  }

  v11 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.translationd" options:0];
  v12 = _LTTranslationServiceXPCInterface();
  [v11 setRemoteObjectInterface:v12];

  if (v7)
  {
    [v11 setExportedObject:v7];
    v13 = _LTTranslationServiceDelegateXPCInterface();
    [v11 setExportedInterface:v13];
  }

  [v11 setInterruptionHandler:internalInterruptionHandler];
  [v11 resume];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __69___LTTranslator__getSyncServiceProxyWithDelegate_errorHandler_block___block_invoke;
  v20 = &unk_278B6E258;
  v21 = v11;
  v22 = v8;
  v14 = v8;
  v15 = v11;
  v16 = [v15 synchronousRemoteObjectProxyWithErrorHandler:&v17];
  v9[2](v9, v16);

  [v15 invalidate];
}

- (void)preheatForRequestSync:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39___LTTranslator_preheatForRequestSync___block_invoke_77;
  v5[3] = &unk_278B6E280;
  v6 = v3;
  v4 = v3;
  [_LTTranslator _getSyncServiceProxyWithDelegate:0 errorHandler:&__block_literal_global_76 block:v5];
}

- (void)preheatForRequest:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46___LTTranslator_preheatForRequest_completion___block_invoke;
  v12[3] = &unk_278B6DBE8;
  v13 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46___LTTranslator_preheatForRequest_completion___block_invoke_80;
  v9[3] = &unk_278B6E0C8;
  v10 = v5;
  v11 = v13;
  v7 = v13;
  v8 = v5;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v12 block:v9];
}

- (void)cleanup
{
  v2 = _LTOSLogXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_23AAF5000, v2, OS_LOG_TYPE_INFO, "Client requesting translator cleanup", v3, 2u);
  }

  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:&__block_literal_global_82 block:&__block_literal_global_85];
}

- (void)translate:(id)a3 useDedicatedTextMachPort:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _LTOSLogXPC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v23 = v4;
    _os_log_impl(&dword_23AAF5000, v6, OS_LOG_TYPE_INFO, "Starting translation for request (using dedicated text mach port = %{BOOL}i)", buf, 8u);
  }

  v7 = [v5 serviceDelegate];
  if (v4)
  {
    if ([v5 _canUseTextService])
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __52___LTTranslator_translate_useDedicatedTextMachPort___block_invoke;
      v20[3] = &unk_278B6E2C8;
      v21 = v5;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __52___LTTranslator_translate_useDedicatedTextMachPort___block_invoke_93;
      v18[3] = &unk_278B6E2F0;
      v19 = v21;
      [_LTTranslator _getTextServiceProxyWithDelegate:v7 useDedicatedTextMachPort:1 errorHandler:v20 block:v18];

      v8 = v21;
    }

    else
    {
      v9 = _LTOSLogXPC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_LTTranslator translate:v9 useDedicatedTextMachPort:?];
      }

      v10 = MEMORY[0x277CCA9B8];
      v8 = [MEMORY[0x277CCA8D8] mainBundle];
      v11 = [v8 localizedStringForKey:@"CLIENT_REQUIRES_TEXT_SERVICE_ERROR_DESCRIPTION" value:&stru_284DBB9B8 table:0];
      v12 = [v10 lt_errorWithCode:17 description:v11 userInfo:0];
      [v5 _translationFailedWithError:v12];
    }
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52___LTTranslator_translate_useDedicatedTextMachPort___block_invoke_2;
    v16[3] = &unk_278B6E2C8;
    v17 = v5;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52___LTTranslator_translate_useDedicatedTextMachPort___block_invoke_94;
    v14[3] = &unk_278B6DF60;
    v15 = v17;
    [_LTTranslator _getServiceProxyWithDelegate:v7 errorHandler:v16 block:v14];

    v8 = v17;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)log:(id)a3
{
  v8 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = _LTOSLogXPC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_LTTranslator log:];
    }
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __21___LTTranslator_log___block_invoke_98;
    v6[3] = &unk_278B6DF60;
    v7 = v3;
    [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:&__block_literal_global_97 block:v6];
  }
}

- (id)startTranslationSession
{
  v3 = [_LTTranslationSession alloc];
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [(_LTTranslationSession *)v3 initWithTranslator:self selfLoggingInvocationId:v4];

  return v5;
}

- (id)startTranslationSessionWithSELFLoggingInvocationId:(id)a3
{
  v4 = a3;
  v5 = [[_LTTranslationSession alloc] initWithTranslator:self selfLoggingInvocationId:v4];

  return v5;
}

+ (void)selfLoggingEventWithData:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42___LTTranslator_selfLoggingEventWithData___block_invoke;
  v7[3] = &unk_278B6E2C8;
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42___LTTranslator_selfLoggingEventWithData___block_invoke_101;
  v5[3] = &unk_278B6DF60;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)selfLoggingInvocationStartedWithData:(id)a3 invocationStartedTier1Data:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81___LTTranslator_selfLoggingInvocationStartedWithData_invocationStartedTier1Data___block_invoke;
  v12[3] = &unk_278B6E2C8;
  v13 = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81___LTTranslator_selfLoggingInvocationStartedWithData_invocationStartedTier1Data___block_invoke_102;
  v9[3] = &unk_278B6E318;
  v10 = v13;
  v11 = v6;
  v7 = v6;
  v8 = v13;
  [_LTTranslator _getTextServiceProxyWithDelegate:0 useDedicatedTextMachPort:1 errorHandler:v12 block:v9];
}

+ (void)selfLoggingLanguageIdentificationCompletedWithLIDData:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71___LTTranslator_selfLoggingLanguageIdentificationCompletedWithLIDData___block_invoke;
  v7[3] = &unk_278B6E2C8;
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71___LTTranslator_selfLoggingLanguageIdentificationCompletedWithLIDData___block_invoke_103;
  v5[3] = &unk_278B6E2F0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getTextServiceProxyWithDelegate:0 useDedicatedTextMachPort:1 errorHandler:v7 block:v5];
}

+ (void)selfLoggingInvocationCancelledForIDs:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54___LTTranslator_selfLoggingInvocationCancelledForIDs___block_invoke;
  v7[3] = &unk_278B6E2C8;
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54___LTTranslator_selfLoggingInvocationCancelledForIDs___block_invoke_104;
  v5[3] = &unk_278B6E2F0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getTextServiceProxyWithDelegate:0 useDedicatedTextMachPort:1 errorHandler:v7 block:v5];
}

+ (void)selfLoggingInvocationDidError:(id)a3 invocationId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60___LTTranslator_selfLoggingInvocationDidError_invocationId___block_invoke;
  v12[3] = &unk_278B6E2C8;
  v13 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60___LTTranslator_selfLoggingInvocationDidError_invocationId___block_invoke_105;
  v9[3] = &unk_278B6E318;
  v10 = v5;
  v11 = v13;
  v7 = v13;
  v8 = v5;
  [_LTTranslator _getTextServiceProxyWithDelegate:0 useDedicatedTextMachPort:1 errorHandler:v12 block:v9];
}

- (void)updateOVADStreamingState:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42___LTTranslator_updateOVADStreamingState___block_invoke_108;
  v5[3] = &unk_278B6DF60;
  v6 = v3;
  v4 = v3;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:&__block_literal_global_107 block:v5];
}

- (void)log:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to serialize logging request: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end