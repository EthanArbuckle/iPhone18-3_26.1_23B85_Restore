@interface LTTranslator
@end

@implementation LTTranslator

uint64_t __27___LTTranslator_initialize__block_invoke()
{
  v0 = _LTOSLogXPC();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __27___LTTranslator_initialize__block_invoke_cold_1(v0);
  }

  return [_interruptionController _didReceiveInterruption];
}

void __69___LTTranslator_onDeviceModeEnabledWithDedicatedMachPort_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69___LTTranslator_onDeviceModeEnabledWithDedicatedMachPort_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 32) + 16))();
}

void __69___LTTranslator_onDeviceModeEnabledWithDedicatedMachPort_completion___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69___LTTranslator_onDeviceModeEnabledWithDedicatedMachPort_completion___block_invoke_2;
  v7[3] = &unk_278B6DEA0;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 onDeviceModeEnabled:v7];
}

uint64_t __69___LTTranslator_onDeviceModeEnabledWithDedicatedMachPort_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __29___LTTranslator__clearCaches__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LTOSLogXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __29___LTTranslator__clearCaches__block_invoke_cold_1();
  }
}

void __54___LTTranslator_languageAssetsWithOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54___LTTranslator_languageAssetsWithOptions_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __54___LTTranslator_languageAssetsWithOptions_completion___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54___LTTranslator_languageAssetsWithOptions_completion___block_invoke_2;
  v8[3] = &unk_278B6DF10;
  v6 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v5;
  v7 = v5;
  [a2 languageAssetsWithOptions:v6 completion:v8];
}

uint64_t __54___LTTranslator_languageAssetsWithOptions_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __63___LTTranslator_setLanguageAssets_options_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _LTOSLogXPC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63___LTTranslator_setLanguageAssets_options_progress_completion___block_invoke_cold_1();
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __42___LTTranslator_addLanguages_useCellular___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LTOSLogXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __42___LTTranslator_addLanguages_useCellular___block_invoke_cold_1();
  }
}

void __42___LTTranslator_addLanguages_useCellular___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  [a2 addLanguages:v4 useCellular:v5];
  v6[2]();
}

void __33___LTTranslator_removeLanguages___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LTOSLogXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __33___LTTranslator_removeLanguages___block_invoke_cold_1();
  }
}

void __33___LTTranslator_removeLanguages___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [a2 removeLanguages:v4];
  v5[2]();
}

void __40___LTTranslator__offlineLanguageStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40___LTTranslator__offlineLanguageStatus___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __40___LTTranslator__offlineLanguageStatus___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40___LTTranslator__offlineLanguageStatus___block_invoke_2;
  v7[3] = &unk_278B6DF10;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 _offlineLanguageStatus:v7];
}

uint64_t __40___LTTranslator__offlineLanguageStatus___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __72___LTTranslator__downloadAssetForLanguagePair_userInitiated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72___LTTranslator__downloadAssetForLanguagePair_userInitiated_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __72___LTTranslator__downloadAssetForLanguagePair_userInitiated_completion___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72___LTTranslator__downloadAssetForLanguagePair_userInitiated_completion___block_invoke_2;
  v9[3] = &unk_278B6DFD8;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v5;
  v8 = v5;
  [a2 _downloadAssetForLanguagePair:v7 userInitiated:v6 completion:v9];
}

uint64_t __72___LTTranslator__downloadAssetForLanguagePair_userInitiated_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __69___LTTranslator__purgeAssetForLanguagePair_userInitiated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69___LTTranslator__purgeAssetForLanguagePair_userInitiated_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __69___LTTranslator__purgeAssetForLanguagePair_userInitiated_completion___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69___LTTranslator__purgeAssetForLanguagePair_userInitiated_completion___block_invoke_2;
  v9[3] = &unk_278B6DFD8;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v5;
  v8 = v5;
  [a2 _purgeAssetForLanguagePair:v7 userInitiated:v6 completion:v9];
}

uint64_t __69___LTTranslator__purgeAssetForLanguagePair_userInitiated_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __59___LTTranslator__purgeAllAssetsExcludingConfig_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59___LTTranslator__purgeAllAssetsExcludingConfig_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __59___LTTranslator__purgeAllAssetsExcludingConfig_completion___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___LTTranslator__purgeAllAssetsExcludingConfig_completion___block_invoke_2;
  v8[3] = &unk_278B6DFD8;
  v9 = *(a1 + 32);
  v10 = v5;
  v7 = v5;
  [a2 _purgeAllAssetsExcludingConfig:v6 completion:v8];
}

uint64_t __59___LTTranslator__purgeAllAssetsExcludingConfig_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __34___LTTranslator__updateAllAssets___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __34___LTTranslator__updateAllAssets___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __34___LTTranslator__updateAllAssets___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34___LTTranslator__updateAllAssets___block_invoke_2;
  v7[3] = &unk_278B6DFD8;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 _updateAllAssets:v7];
}

uint64_t __34___LTTranslator__updateAllAssets___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __31___LTTranslator__updateHotfix___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __31___LTTranslator__updateHotfix___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __31___LTTranslator__updateHotfix___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31___LTTranslator__updateHotfix___block_invoke_2;
  v7[3] = &unk_278B6DFD8;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 _updateHotfix:v7];
}

uint64_t __31___LTTranslator__updateHotfix___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __31___LTTranslator__deleteHotfix___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __31___LTTranslator__deleteHotfix___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __31___LTTranslator__deleteHotfix___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31___LTTranslator__deleteHotfix___block_invoke_2;
  v7[3] = &unk_278B6DFD8;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 _deleteHotfix:v7];
}

uint64_t __31___LTTranslator__deleteHotfix___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __34___LTTranslator_installedLocales___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __34___LTTranslator_installedLocales___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __34___LTTranslator_installedLocales___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34___LTTranslator_installedLocales___block_invoke_2;
  v7[3] = &unk_278B6E050;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 installedLocales:v7];
}

uint64_t __34___LTTranslator_installedLocales___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __52___LTTranslator_installedLocalesForTask_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52___LTTranslator_installedLocalesForTask_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __52___LTTranslator_installedLocalesForTask_completion___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52___LTTranslator_installedLocalesForTask_completion___block_invoke_2;
  v8[3] = &unk_278B6E050;
  v6 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v5;
  v7 = v5;
  [a2 installedLocalesForTask:v6 completion:v8];
}

uint64_t __52___LTTranslator_installedLocalesForTask_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __31___LTTranslator__getAssetSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __31___LTTranslator__getAssetSize___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __31___LTTranslator__getAssetSize___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31___LTTranslator__getAssetSize___block_invoke_2;
  v7[3] = &unk_278B6E0A0;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 _getAssetSize:v7];
}

uint64_t __31___LTTranslator__getAssetSize___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __50___LTTranslator_installOfflineLocales_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _LTOSLogXPC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63___LTTranslator_setLanguageAssets_options_progress_completion___block_invoke_cold_1();
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __77___LTTranslator_availableLocalePairsForTask_useDedicatedMachPort_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77___LTTranslator_availableLocalePairsForTask_useDedicatedMachPort_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 32) + 16))();
}

void __77___LTTranslator_availableLocalePairsForTask_useDedicatedMachPort_completion___block_invoke_40(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77___LTTranslator_availableLocalePairsForTask_useDedicatedMachPort_completion___block_invoke_2;
  v8[3] = &unk_278B6E050;
  v6 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v5;
  v7 = v5;
  [a2 availableLocalePairsForTask:v6 completion:v8];
}

uint64_t __77___LTTranslator_availableLocalePairsForTask_useDedicatedMachPort_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __70___LTTranslator_additionalLikelyPreferredLocalesForLocale_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70___LTTranslator_additionalLikelyPreferredLocalesForLocale_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __70___LTTranslator_additionalLikelyPreferredLocalesForLocale_completion___block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70___LTTranslator_additionalLikelyPreferredLocalesForLocale_completion___block_invoke_2;
  v8[3] = &unk_278B6E050;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [a2 additionalLikelyPreferredLocalesForLocale:v6 completion:v8];
}

uint64_t __70___LTTranslator_additionalLikelyPreferredLocalesForLocale_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __60___LTTranslator_configInfoForLocale_otherLocale_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60___LTTranslator_configInfoForLocale_otherLocale_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __60___LTTranslator_configInfoForLocale_otherLocale_completion___block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60___LTTranslator_configInfoForLocale_otherLocale_completion___block_invoke_2;
  v9[3] = &unk_278B6E0F0;
  v10 = *(a1 + 48);
  v11 = v5;
  v8 = v5;
  [a2 configInfoForLocale:v6 otherLocale:v7 completion:v9];
}

uint64_t __60___LTTranslator_configInfoForLocale_otherLocale_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __39___LTTranslator_onDeviceModeSupported___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __39___LTTranslator_onDeviceModeSupported___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __39___LTTranslator_onDeviceModeSupported___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39___LTTranslator_onDeviceModeSupported___block_invoke_2;
  v7[3] = &unk_278B6E140;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 onDeviceModeSupported:v7];
}

uint64_t __39___LTTranslator_onDeviceModeSupported___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __84___LTTranslator_shouldPresentSystemFirstUseConsentWithDedicatedMachPort_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84___LTTranslator_shouldPresentSystemFirstUseConsentWithDedicatedMachPort_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __84___LTTranslator_shouldPresentSystemFirstUseConsentWithDedicatedMachPort_completion___block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84___LTTranslator_shouldPresentSystemFirstUseConsentWithDedicatedMachPort_completion___block_invoke_2;
  v7[3] = &unk_278B6DEA0;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 shouldPresentSystemFirstUseConsent:v7];
}

uint64_t __84___LTTranslator_shouldPresentSystemFirstUseConsentWithDedicatedMachPort_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __59___LTTranslator_taskIsSupportedInCurrentRegion_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59___LTTranslator_taskIsSupportedInCurrentRegion_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __59___LTTranslator_taskIsSupportedInCurrentRegion_completion___block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x277CBEAF8];
  v7 = a2;
  v8 = [v6 currentLocale];
  v9 = [v8 objectForKey:*MEMORY[0x277CBE690]];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59___LTTranslator_taskIsSupportedInCurrentRegion_completion___block_invoke_2;
  v12[3] = &unk_278B6DEA0;
  v10 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v5;
  v11 = v5;
  [v7 task:v10 isSupportedInCountry:v9 completion:v12];
}

uint64_t __59___LTTranslator_taskIsSupportedInCurrentRegion_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __64___LTTranslator_autoDetectSpeechUnsupportedPairsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64___LTTranslator_autoDetectSpeechUnsupportedPairsWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __64___LTTranslator_autoDetectSpeechUnsupportedPairsWithCompletion___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64___LTTranslator_autoDetectSpeechUnsupportedPairsWithCompletion___block_invoke_2;
  v7[3] = &unk_278B6E050;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 autoDetectSpeechUnsupportedPairsWithCompletion:v7];
}

uint64_t __64___LTTranslator_autoDetectSpeechUnsupportedPairsWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __51___LTTranslator_modalitiesPerLocaleWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51___LTTranslator_modalitiesPerLocaleWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __51___LTTranslator_modalitiesPerLocaleWithCompletion___block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51___LTTranslator_modalitiesPerLocaleWithCompletion___block_invoke_2;
  v7[3] = &unk_278B6E168;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 modalitiesPerLocaleWithCompletion:v7];
}

uint64_t __51___LTTranslator_modalitiesPerLocaleWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __58___LTTranslator_textStreamingConfigurationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58___LTTranslator_textStreamingConfigurationWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __58___LTTranslator_textStreamingConfigurationWithCompletion___block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58___LTTranslator_textStreamingConfigurationWithCompletion___block_invoke_2;
  v7[3] = &unk_278B6E190;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 textStreamingConfigurationWithCompletion:v7];
}

uint64_t __58___LTTranslator_textStreamingConfigurationWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __54___LTTranslator_task_isSupportedInCountry_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59___LTTranslator_taskIsSupportedInCurrentRegion_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __54___LTTranslator_task_isSupportedInCountry_completion___block_invoke_55(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54___LTTranslator_task_isSupportedInCountry_completion___block_invoke_2;
  v9[3] = &unk_278B6DEA0;
  v7 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = v5;
  v8 = v5;
  [a2 task:v7 isSupportedInCountry:v6 completion:v9];
}

uint64_t __54___LTTranslator_task_isSupportedInCountry_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __44___LTTranslator_languageForText_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __44___LTTranslator_languageForText_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __44___LTTranslator_languageForText_completion___block_invoke_56(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44___LTTranslator_languageForText_completion___block_invoke_2;
  v8[3] = &unk_278B6E1E0;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [a2 languageForText:v6 completion:v8];
}

uint64_t __44___LTTranslator_languageForText_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __90___LTTranslator_languagesForText_usingModel_strategy_useDedicatedTextMachPort_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __90___LTTranslator_languagesForText_usingModel_strategy_useDedicatedTextMachPort_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 32) + 16))();
}

void __90___LTTranslator_languagesForText_usingModel_strategy_useDedicatedTextMachPort_completion___block_invoke_64(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90___LTTranslator_languagesForText_usingModel_strategy_useDedicatedTextMachPort_completion___block_invoke_2;
  v10[3] = &unk_278B6E208;
  v8 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v5;
  v9 = v5;
  [a2 languagesForText:v8 usingModel:v6 strategy:v7 completion:v10];
}

uint64_t __90___LTTranslator_languagesForText_usingModel_strategy_useDedicatedTextMachPort_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __65___LTTranslator__getServiceProxyWithDelegate_errorHandler_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65___LTTranslator__getServiceProxyWithDelegate_errorHandler_block___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

uint64_t __65___LTTranslator__getServiceProxyWithDelegate_errorHandler_block___block_invoke_70(uint64_t a1)
{
  v2 = _LTOSLogXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AAF5000, v2, OS_LOG_TYPE_INFO, "Connection done", v4, 2u);
  }

  return [*(a1 + 32) invalidate];
}

void __94___LTTranslator__getTextServiceProxyWithDelegate_useDedicatedTextMachPort_errorHandler_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94___LTTranslator__getTextServiceProxyWithDelegate_useDedicatedTextMachPort_errorHandler_block___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

uint64_t __94___LTTranslator__getTextServiceProxyWithDelegate_useDedicatedTextMachPort_errorHandler_block___block_invoke_74(uint64_t a1)
{
  v2 = _LTOSLogXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AAF5000, v2, OS_LOG_TYPE_INFO, "Text translation connection done", v4, 2u);
  }

  return [*(a1 + 32) invalidate];
}

void __69___LTTranslator__getSyncServiceProxyWithDelegate_errorHandler_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

void __39___LTTranslator_preheatForRequestSync___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LTOSLogXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __39___LTTranslator_preheatForRequestSync___block_invoke_cold_1();
  }
}

void __39___LTTranslator_preheatForRequestSync___block_invoke_77(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 requestContext];
  [v3 preheatWithContext:v4 completion:&__block_literal_global_79];
}

void __46___LTTranslator_preheatForRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46___LTTranslator_preheatForRequest_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __46___LTTranslator_preheatForRequest_completion___block_invoke_80(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 requestContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46___LTTranslator_preheatForRequest_completion___block_invoke_2;
  v10[3] = &unk_278B6DFD8;
  v11 = *(a1 + 40);
  v12 = v5;
  v9 = v5;
  [v7 preheatWithContext:v8 completion:v10];
}

uint64_t __46___LTTranslator_preheatForRequest_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __24___LTTranslator_cleanup__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LTOSLogXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24___LTTranslator_cleanup__block_invoke_cold_1();
  }
}

void __24___LTTranslator_cleanup__block_invoke_83(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 cleanup];
  v4[2]();
}

void __52___LTTranslator_translate_useDedicatedTextMachPort___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52___LTTranslator_translate_useDedicatedTextMachPort___block_invoke_cold_1();
  }

  [*(a1 + 32) _translationFailedWithError:v3];
}

void __52___LTTranslator_translate_useDedicatedTextMachPort___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52___LTTranslator_translate_useDedicatedTextMachPort___block_invoke_2_cold_1();
  }

  [*(a1 + 32) _translationFailedWithError:v3];
}

void __21___LTTranslator_log___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LTOSLogXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __21___LTTranslator_log___block_invoke_cold_1();
  }
}

void __21___LTTranslator_log___block_invoke_98(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [a2 logWithRequestData:v4];
  v5[2]();
}

void __42___LTTranslator_selfLoggingEventWithData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __42___LTTranslator_selfLoggingEventWithData___block_invoke_cold_1(a1, v4);
  }
}

void __42___LTTranslator_selfLoggingEventWithData___block_invoke_101(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [a2 selfLoggingEventWithData:v4];
  v5[2]();
}

void __81___LTTranslator_selfLoggingInvocationStartedWithData_invocationStartedTier1Data___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __81___LTTranslator_selfLoggingInvocationStartedWithData_invocationStartedTier1Data___block_invoke_cold_1(a1, v4);
  }
}

void __81___LTTranslator_selfLoggingInvocationStartedWithData_invocationStartedTier1Data___block_invoke_102(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  [a2 selfLoggingInvocationStartedWithData:v4 invocationStartedTier1Data:v5];
  v6[2]();
}

void __71___LTTranslator_selfLoggingLanguageIdentificationCompletedWithLIDData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __42___LTTranslator_selfLoggingEventWithData___block_invoke_cold_1(a1, v4);
  }
}

void __71___LTTranslator_selfLoggingLanguageIdentificationCompletedWithLIDData___block_invoke_103(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [a2 selfLoggingLanguageIdentificationCompletedWithLIDData:v4];
  v5[2]();
}

void __54___LTTranslator_selfLoggingInvocationCancelledForIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54___LTTranslator_selfLoggingInvocationCancelledForIDs___block_invoke_cold_1(a1);
  }
}

void __54___LTTranslator_selfLoggingInvocationCancelledForIDs___block_invoke_104(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [a2 selfLoggingInvocationCancelledForIDs:v4];
  v5[2]();
}

void __60___LTTranslator_selfLoggingInvocationDidError_invocationId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60___LTTranslator_selfLoggingInvocationDidError_invocationId___block_invoke_cold_1(a1);
  }
}

void __60___LTTranslator_selfLoggingInvocationDidError_invocationId___block_invoke_105(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  [a2 selfLoggingInvocationDidError:v4 invocationId:v5];
  v6[2]();
}

void __42___LTTranslator_updateOVADStreamingState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LTOSLogXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __42___LTTranslator_updateOVADStreamingState___block_invoke_cold_1();
  }
}

void __42___LTTranslator_updateOVADStreamingState___block_invoke_108(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [a2 updateOVADStreamingState:v4];
  v5[2]();
}

void __69___LTTranslator_onDeviceModeEnabledWithDedicatedMachPort_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void __29___LTTranslator__clearCaches__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to clear caches: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54___LTTranslator_languageAssetsWithOptions_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to get language asset status %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __63___LTTranslator_setLanguageAssets_options_progress_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to install offline locales: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42___LTTranslator_addLanguages_useCellular___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to add language %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __33___LTTranslator_removeLanguages___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed remove language %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __40___LTTranslator__offlineLanguageStatus___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete get offline language status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __72___LTTranslator__downloadAssetForLanguagePair_userInitiated_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete _downloadAssetForLanguagePair %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69___LTTranslator__purgeAssetForLanguagePair_userInitiated_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete _purgeAssetForLanguagePair %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59___LTTranslator__purgeAllAssetsExcludingConfig_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete purging all assets: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __34___LTTranslator__updateAllAssets___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete updating all assets: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __31___LTTranslator__updateHotfix___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete updating hotfix: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __31___LTTranslator__deleteHotfix___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete deleting hotfix: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __34___LTTranslator_installedLocales___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete installedLocales %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52___LTTranslator_installedLocalesForTask_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete -installedLocalesForTask:completion: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __31___LTTranslator__getAssetSize___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete getting asset size: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __77___LTTranslator_availableLocalePairsForTask_useDedicatedMachPort_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void __70___LTTranslator_additionalLikelyPreferredLocalesForLocale_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete additionalLikelyPreferredLocalesForLocale %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __60___LTTranslator_configInfoForLocale_otherLocale_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete configInfoForLocale %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39___LTTranslator_onDeviceModeSupported___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete onDeviceModeSupported check: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84___LTTranslator_shouldPresentSystemFirstUseConsentWithDedicatedMachPort_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete checking whether to present system first time use consent: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59___LTTranslator_taskIsSupportedInCurrentRegion_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete taskIsSupportedInCurrentRegion %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64___LTTranslator_autoDetectSpeechUnsupportedPairsWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete autoDetectSpeechUnsupportedPairsWithCompletion %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51___LTTranslator_modalitiesPerLocaleWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete modalitiesPerLocaleWithCompletion %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __58___LTTranslator_textStreamingConfigurationWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete textStreamingConfigurationWithCompletion %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __44___LTTranslator_languageForText_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete text-LID request %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __90___LTTranslator_languagesForText_usingModel_strategy_useDedicatedTextMachPort_completion___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  *(a1 + 40);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __65___LTTranslator__getServiceProxyWithDelegate_errorHandler_block___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Connection error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __94___LTTranslator__getTextServiceProxyWithDelegate_useDedicatedTextMachPort_errorHandler_block___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Text translation connection error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39___LTTranslator_preheatForRequestSync___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete sync preheat request: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46___LTTranslator_preheatForRequest_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete preheat request %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __24___LTTranslator_cleanup__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to initiate cleanup: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52___LTTranslator_translate_useDedicatedTextMachPort___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete getting text service for translation with dedicated mach port: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52___LTTranslator_translate_useDedicatedTextMachPort___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete getting text service for translation without dedicated mach port: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __21___LTTranslator_log___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to complete logging request: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42___LTTranslator_selfLoggingEventWithData___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 invocationId];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(&dword_23AAF5000, v5, v6, "Failed to send SELF logging event [%@] %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __81___LTTranslator_selfLoggingInvocationStartedWithData_invocationStartedTier1Data___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 invocationId];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(&dword_23AAF5000, v5, v6, "Failed to send SELF logging invocation started and started tier 1 [%{public}@] %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __54___LTTranslator_selfLoggingInvocationCancelledForIDs___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __60___LTTranslator_selfLoggingInvocationDidError_invocationId___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __42___LTTranslator_updateOVADStreamingState___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to initiate updateOVADStreamingState call: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end