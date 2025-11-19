void sub_241934108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2419344D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241934AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2419350AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2419353BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_24193594C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_241937264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24193739C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2419375A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2419376DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_24193A01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24193DC50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24193DFF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t AVTIsPersistentChangeOfInterest_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 changeType] && objc_msgSend(v2, "changeType") != 2)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v4 = [v2 updatedProperties];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = AVTIsPersistentChangeOfInterest_block_invoke_2;
    v6[3] = &unk_278CFA7F8;
    v6[4] = &v7;
    [v4 enumerateObjectsUsingBlock:v6];

    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

void sub_24193E9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AVTIsPersistentChangeOfInterest_block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = @"orderDate";
  v11 = @"avatarData";
  v12 = @"identifier";
  v5 = MEMORY[0x277CBEA60];
  v6 = a2;
  v7 = [v5 arrayWithObjects:&v10 count:3];
  v8 = [v6 name];

  LODWORD(v6) = [v7 containsObject:v8];
  if (v6)
  {
    *a3 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t AVTAnyTransactionHasChangesFromAuthor_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 author];
        if ([v11 isEqual:v5])
        {
          v12 = [v10 changes];
          v13 = [v12 count];

          if (v13)
          {
            v7 = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t AVTAnyTransactionHasChangesFromOtherThanAuthor_block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 author];
        if ([v11 isEqual:v5])
        {
        }

        else
        {
          v12 = [v10 changes];
          v13 = [v12 count];

          if (v13)
          {
            v7 = 1;
            goto LABEL_13;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t AVTAnyTransactionHasChangesFromOtherThanBundleID_block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 bundleID];
        if ([v11 isEqual:v5])
        {
        }

        else
        {
          v12 = [v10 changes];
          v13 = [v12 count];

          if (v13)
          {
            v7 = 1;
            goto LABEL_13;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t AVTAnyTransactionHasAvatarChange_block_invoke_6(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = a2;
  v19 = [v2 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v3 = *v26;
    v20 = v2;
    v18 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v3)
        {
          objc_enumerationMutation(v2);
        }

        v5 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v6 = [v5 changes];
        v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v22;
          while (2)
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v22 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = [*(*(&v21 + 1) + 8 * j) changedObjectID];
              v12 = [v11 entity];
              v13 = [v12 name];
              v14 = [v13 isEqualToString:@"Avatar"];

              if (v14)
              {

                v15 = 1;
                v2 = v20;
                goto LABEL_19;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        v2 = v20;
        v3 = v18;
      }

      v15 = 0;
      v19 = [v20 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void _AVTUISetPropertyListObjectForInternalSettingsKey(void *a1, void *a2)
{
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF010];
  v5 = a2;
  value = a1;
  _CFPreferencesSetBackupDisabled();
  CFPreferencesSetValue(v5, value, @"com.apple.AvatarUI.Staryu", v3, v4);
}

id _AVTUIPropertyListObjectForInternalSettingsKey(const __CFString *a1)
{
  v1 = CFPreferencesCopyValue(a1, @"com.apple.AvatarUI.Staryu", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return v1;
}

uint64_t _AVTUIBoolForInternalSettingKey(const __CFString *a1, uint64_t a2)
{
  v3 = CFPreferencesCopyValue(a1, @"com.apple.AvatarUI.Staryu", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v4 = v3;
  if (v3)
  {
    a2 = [v3 BOOLValue];
  }

  return a2;
}

void _AVTUISetBoolForInternalSettingsKey(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  if ((a1 & 1) != 0 || a3)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  }

  else
  {
    v5 = 0;
  }

  _AVTUISetPropertyListObjectForInternalSettingsKey(v5, v6);
}

uint64_t _AVTUIIntegerForInternalSettingsKey(const __CFString *a1)
{
  v1 = _AVTUIPropertyListObjectForInternalSettingsKey(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void _AVTUISetIntegerForInternalSettingsKey(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithInteger:a1];
  _AVTUISetPropertyListObjectForInternalSettingsKey(v5, v4);
}

id _AVTUIPropertyListObjectForGlobalKey(const __CFString *a1)
{
  v1 = CFPreferencesCopyValue(a1, @".GlobalPreferences", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return v1;
}

uint64_t _AVTUIIntegerForGlobalKey(const __CFString *a1)
{
  v1 = _AVTUIPropertyListObjectForGlobalKey(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void _AVTUISetIntegerForGlobalKey(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithInteger:a1];
  CFPreferencesSetValue(v4, v5, @".GlobalPreferences", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
}

void AVTUIResetInternalSettings()
{
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUIRestrictMaxAvatarCount");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarUIShowPerfHUD");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarUIThumbnailCaching");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarUIFlushThumbnailCache");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUIRestrictMaxAvatarCount");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarShowTrackingLostReticle");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarAlwaysShowSplashScreen");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarAlwaysShowPaddleView");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarPreLoadOnLaunch");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAdaptativeFrameRate");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarUIEditorShowAssetsName");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUIGlobalPreferencesGroupDialUsesMasking");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUIGlobalPreferencesDisableDeleteConfirmation");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUIGlobalPreferencesDisablEditAfterDuplicate");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarUIShowAssetsWarning");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUIGlobalPreferencesMemojiClassicDisclosureWarning");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUIGlobalPreferencesStickersDisclosureWarning");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUIGlobalPreferencesStickersCaching");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUIGlobalPreferencesFlushStickersCache");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUIGlobalPreferencesShowPrereleaseStickerPack");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUIGlobalPreferencesShowPrereleaseStickerLabel");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUIGlobalPreferencesStickersHEICSSequence");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUIGlobalPreferencesStickerRecentsDisclosureWarning");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUIGlobalPreferencesAlwaysShowStickerRecentsSplashScreen");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUIGlobalPreferencesStickersDisclosureWarning");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTSyncEnabled");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarUIWipeCloudKitContainer");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarUIUseTestCloudKitContainer");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarUIWipeDatabase");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUISyncPreserveContentOnAccountChange");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarUIWipeCloudKitContainer");

  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarUseLocalEditorModel");
}

void AVTUIFlushCaches()
{
  _AVTUISetBoolForInternalSettingsKey(1, @"AVTAvatarUIFlushThumbnailCache", 0);

  _AVTUISetBoolForInternalSettingsKey(1, @"AVTUIGlobalPreferencesFlushStickersCache", 0);
}

void AVTUIResetFirstTimeExperience()
{
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarHasDisplayedSplashScreen");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarHasDisplayedPaddleView");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarHasDisplayedCameraEffectsSplashScreen");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTAvatarHasDisplayedAnimojiSplashScreen");
  _AVTUISetPropertyListObjectForInternalSettingsKey(0, @"AVTUIGlobalPreferencesHasDisplayedCategoriesDiscoverability");
  CFPreferencesSetValue(@"com.apple.Animoji.StickerRecents.SplashVersion", 0, @".GlobalPreferences", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  _AVTUISetBoolForInternalSettingsKey(1, @"AVTAvatarUIFlushThumbnailCache", 0);

  _AVTUISetBoolForInternalSettingsKey(1, @"AVTUIGlobalPreferencesFlushStickersCache", 0);
}

uint64_t AVTUIIsAvatarUIEnabled_once()
{
  if (AVTUIIsAvatarUIEnabled_once_onceToken != -1)
  {
    AVTUIIsAvatarUIEnabled_once_cold_1();
  }

  return AVTUIIsAvatarUIEnabled_once_enabled;
}

uint64_t AVTUIShowAssetsWarning_once()
{
  if (AVTUIShowAssetsWarning_once_onceToken != -1)
  {
    AVTUIShowAssetsWarning_once_cold_1();
  }

  return AVTUIShowAssetsWarning_once_enabled;
}

uint64_t AVTUIShowPerfHUD_once()
{
  if (AVTUIShowPerfHUD_once_onceToken != -1)
  {
    AVTUIShowPerfHUD_once_cold_1();
  }

  return AVTUIShowPerfHUD_once_enabled;
}

uint64_t AVTUIEditorShowAssetsName_once()
{
  if (AVTUIEditorShowAssetsName_once_onceToken != -1)
  {
    AVTUIEditorShowAssetsName_once_cold_1();
  }

  return AVTUIEditorShowAssetsName_once_enabled;
}

uint64_t AVTUIThumbnailCaching_once()
{
  if (AVTUIThumbnailCaching_once_onceToken != -1)
  {
    AVTUIThumbnailCaching_once_cold_1();
  }

  return AVTUIThumbnailCaching_once_enabled;
}

uint64_t AVTUIFlushThumbnailCache_once()
{
  if (AVTUIFlushThumbnailCache_once_onceToken != -1)
  {
    AVTUIFlushThumbnailCache_once_cold_1();
  }

  return AVTUIFlushThumbnailCache_once_enabled;
}

uint64_t AVTUIShowTrackingLostReticle_once()
{
  if (AVTUIShowTrackingLostReticle_once_onceToken != -1)
  {
    AVTUIShowTrackingLostReticle_once_cold_1();
  }

  return AVTUIShowTrackingLostReticle_once_enabled;
}

uint64_t AVTUIAlwaysShowSplashScreen_once()
{
  if (AVTUIAlwaysShowSplashScreen_once_onceToken != -1)
  {
    AVTUIAlwaysShowSplashScreen_once_cold_1();
  }

  return AVTUIAlwaysShowSplashScreen_once_enabled;
}

uint64_t AVTUIForceCameraDisclosures_once()
{
  if (AVTUIForceCameraDisclosures_once_onceToken != -1)
  {
    AVTUIForceCameraDisclosures_once_cold_1();
  }

  return AVTUIForceCameraDisclosures_once_enabled;
}

uint64_t AVTUIDisableDeleteConfirmation_once()
{
  if (AVTUIDisableDeleteConfirmation_once_onceToken != -1)
  {
    AVTUIDisableDeleteConfirmation_once_cold_1();
  }

  return AVTUIDisableDeleteConfirmation_once_enabled;
}

uint64_t AVTUIDisableEditAfterDuplicate_once()
{
  if (AVTUIDisableEditAfterDuplicate_once_onceToken != -1)
  {
    AVTUIDisableEditAfterDuplicate_once_cold_1();
  }

  return AVTUIDisableEditAfterDuplicate_once_enabled;
}

uint64_t AVTUIGroupDialUsesMasking_once()
{
  if (AVTUIGroupDialUsesMasking_once_onceToken != -1)
  {
    AVTUIGroupDialUsesMasking_once_cold_1();
  }

  return AVTUIGroupDialUsesMasking_once_enabled;
}

uint64_t AVTUIRestrictMaximumAvatarCount_once()
{
  if (AVTUIRestrictMaximumAvatarCount_once_onceToken != -1)
  {
    AVTUIRestrictMaximumAvatarCount_once_cold_1();
  }

  return AVTUIRestrictMaximumAvatarCount_once_enabled;
}

uint64_t AVTUIAlwaysShowPaddleView_once()
{
  if (AVTUIAlwaysShowPaddleView_once_onceToken != -1)
  {
    AVTUIAlwaysShowPaddleView_once_cold_1();
  }

  return AVTUIAlwaysShowPaddleView_once_enabled;
}

uint64_t AVTUIHasDisplayedSplashScreen_once()
{
  if (AVTUIHasDisplayedSplashScreen_once_onceToken != -1)
  {
    AVTUIHasDisplayedSplashScreen_once_cold_1();
  }

  return AVTUIHasDisplayedSplashScreen_once_enabled;
}

uint64_t AVTUIHasDisplayedAnimojiSplashScreen_once()
{
  if (AVTUIHasDisplayedAnimojiSplashScreen_once_onceToken != -1)
  {
    AVTUIHasDisplayedAnimojiSplashScreen_once_cold_1();
  }

  return AVTUIHasDisplayedAnimojiSplashScreen_once_enabled;
}

uint64_t AVTUIHasDisplayedCameraEffectsSplashScreen_once()
{
  if (AVTUIHasDisplayedCameraEffectsSplashScreen_once_onceToken != -1)
  {
    AVTUIHasDisplayedCameraEffectsSplashScreen_once_cold_1();
  }

  return AVTUIHasDisplayedCameraEffectsSplashScreen_once_enabled;
}

uint64_t AVTUIAlwaysShowRecentStickersSplashScreen_once()
{
  if (AVTUIAlwaysShowRecentStickersSplashScreen_once_onceToken != -1)
  {
    AVTUIAlwaysShowRecentStickersSplashScreen_once_cold_1();
  }

  return AVTUIAlwaysShowRecentStickersSplashScreen_once_enabled;
}

uint64_t AVTUIForceNoMemojiRecentStickersSplashScreen_once()
{
  if (AVTUIForceNoMemojiRecentStickersSplashScreen_once_onceToken != -1)
  {
    AVTUIForceNoMemojiRecentStickersSplashScreen_once_cold_1();
  }

  return AVTUIForceNoMemojiRecentStickersSplashScreen_once_enabled;
}

uint64_t AVTUIStickerRecentsMigrationVersion_once()
{
  if (AVTUIStickerRecentsMigrationVersion_once_onceToken != -1)
  {
    AVTUIStickerRecentsMigrationVersion_once_cold_1();
  }

  return AVTUIStickerRecentsMigrationVersion_once_value;
}

uint64_t AVTUIStickerRecentsMigrationVersion()
{
  v0 = _AVTUIPropertyListObjectForInternalSettingsKey(@"AVTUIGlobalPreferencesStickerRecentsMigrationVersion");
  v1 = [v0 integerValue];

  return v1;
}

uint64_t AVTUIHasDisplayedPaddleView_once()
{
  if (AVTUIHasDisplayedPaddleView_once_onceToken != -1)
  {
    AVTUIHasDisplayedPaddleView_once_cold_1();
  }

  return AVTUIHasDisplayedPaddleView_once_enabled;
}

uint64_t AVTUIMemojiClassicShowDisclosureWarning_once()
{
  if (AVTUIMemojiClassicShowDisclosureWarning_once_onceToken != -1)
  {
    AVTUIMemojiClassicShowDisclosureWarning_once_cold_1();
  }

  return AVTUIMemojiClassicShowDisclosureWarning_once_enabled;
}

uint64_t AVTUIStickersShowDisclosureWarning_once()
{
  if (AVTUIStickersShowDisclosureWarning_once_onceToken != -1)
  {
    AVTUIStickersShowDisclosureWarning_once_cold_1();
  }

  return AVTUIStickersShowDisclosureWarning_once_enabled;
}

uint64_t AVTUIStickerRecentsShowDisclosureWarning_once()
{
  if (AVTUIStickerRecentsShowDisclosureWarning_once_onceToken != -1)
  {
    AVTUIStickerRecentsShowDisclosureWarning_once_cold_1();
  }

  return AVTUIStickerRecentsShowDisclosureWarning_once_enabled;
}

uint64_t AVTUIShowPrereleaseStickerPack_once()
{
  if (AVTUIShowPrereleaseStickerPack_once_onceToken != -1)
  {
    AVTUIShowPrereleaseStickerPack_once_cold_1();
  }

  return AVTUIShowPrereleaseStickerPack_once_enabled;
}

uint64_t AVTUIShowPrereleaseStickerLabel_once()
{
  if (AVTUIShowPrereleaseStickerLabel_once_onceToken != -1)
  {
    AVTUIShowPrereleaseStickerLabel_once_cold_1();
  }

  return AVTUIShowPrereleaseStickerLabel_once_enabled;
}

uint64_t AVTUIUseLocalEditorModel_once()
{
  if (AVTUIUseLocalEditorModel_once_onceToken != -1)
  {
    AVTUIUseLocalEditorModel_once_cold_1();
  }

  return AVTUIUseLocalEditorModel_once_enabled;
}

void AVTUISetStickerRecentsMigrationVersion(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  _AVTUISetPropertyListObjectForInternalSettingsKey(v1, @"AVTUIGlobalPreferencesStickerRecentsMigrationVersion");
}

void sub_241941EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x245CF3540](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_241942270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24194260C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL AVTAvatarRecordChangeEqualToChange(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = [v4 recordIdentifier];
  if (!v6)
  {
    v2 = [v5 recordIdentifier];
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  v7 = [v4 recordIdentifier];
  v8 = [v5 recordIdentifier];
  v9 = [v7 isEqual:v8];

  if (!v6)
  {

    if (v9)
    {
      goto LABEL_5;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  v10 = [v4 changeType];
  v11 = v10 == [v5 changeType];
LABEL_8:

  return v11;
}

uint64_t AVTAvatarRecordChangeHash(void *a1)
{
  v1 = a1;
  v2 = [v1 recordIdentifier];
  v3 = [v2 hash];
  v4 = [v1 recordIdentifier];
  *(&v5 + 1) = v3;
  *&v5 = [v4 hash];
  v6 = [v1 changeType];

  return (v5 >> 32) ^ v6;
}

void sub_241945EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2419464A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 184), 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_24194706C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_24194760C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_241947B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_241948668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24194BDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24194C634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_24194D090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24194DF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24194E968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_24194F058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_24194FE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak((v20 - 72));
  _Unwind_Resume(a1);
}

void sub_24194FF90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_24195AB3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}