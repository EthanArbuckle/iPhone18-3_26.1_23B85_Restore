void sub_1894(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_18B4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained backboardDelegate];
  v5 = objc_loadWeakRetained((a1 + 32));
  [v4 backboardServer:v5 clientWentInvalid:a2];
}

void sub_1938(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = 0;
  v2 = [v1 startServerWithError:&v5];
  v3 = v5;
  if ((v2 & 1) == 0)
  {
    v4 = GAXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_29E94(v3, v4);
    }
  }
}

void sub_3EFC(uint64_t a1)
{
  v3 = +[NSMutableArray array];
  v2 = *(a1 + 32);
  if ((v2 & 0x20000) != 0)
  {
    [v3 addObject:&off_51728];
    v2 = *(a1 + 32);
    if ((v2 & 0x800) == 0)
    {
LABEL_3:
      if ((v2 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 0x800) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:&off_516C8];
  v2 = *(a1 + 32);
  if ((v2 & 0x2000) == 0)
  {
LABEL_4:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 addObject:&off_516E0];
  v2 = *(a1 + 32);
  if ((v2 & 0x1000) == 0)
  {
LABEL_5:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 addObject:&off_516F8];
  v2 = *(a1 + 32);
  if ((v2 & 0x80000) == 0)
  {
LABEL_6:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 addObject:&off_51788];
  v2 = *(a1 + 32);
  if ((v2 & 0x8000) == 0)
  {
LABEL_7:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 addObject:&off_51710];
  v2 = *(a1 + 32);
  if ((v2 & 0x40000) == 0)
  {
LABEL_8:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 addObject:&off_51740];
  v2 = *(a1 + 32);
  if ((v2 & 0x10000) == 0)
  {
LABEL_9:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 addObject:&off_51758];
  v2 = *(a1 + 32);
  if ((v2 & 0x4000) == 0)
  {
LABEL_10:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  [v3 addObject:&off_51770];
  if ((*(a1 + 32) & 0x100000) != 0)
  {
LABEL_11:
    [v3 addObject:&off_517A0];
  }

LABEL_12:
  _AXSSetTripleClickOptions();
}

void sub_4358(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

id GAXFallbackValueForProfileKey(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (qword_595C8 == -1)
  {
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_2A06C();
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  v6 = [qword_595C0 objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    goto LABEL_10;
  }

LABEL_6:
  v8 = qword_595B8;
  v9 = [NSNumber numberWithUnsignedInt:a2];
  v10 = [v8 objectForKey:v9];
  v7 = [v10 objectForKey:v5];

  if (!v7)
  {
    v11 = GAXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_2A080(v5, v11);
    }

    v7 = 0;
  }

LABEL_10:

  return v7;
}

void sub_4488(id a1)
{
  v52[0] = @"GAXProfileAllowsKeyboardTextInput";
  v52[1] = @"GAXProfileAllowsTouch";
  v53[0] = &__kCFBooleanTrue;
  v53[1] = &__kCFBooleanTrue;
  v52[2] = @"GAXProfileAllowsMotion";
  v52[3] = @"GAXProfileAllowsRingerSwitch";
  v53[2] = &__kCFBooleanTrue;
  v53[3] = &__kCFBooleanFalse;
  v52[4] = @"GAXProfileAllowsProximity";
  v52[5] = @"GAXProfileAllowsLockButton";
  v53[4] = &__kCFBooleanFalse;
  v53[5] = &__kCFBooleanTrue;
  v52[6] = @"GAXProfileAllowsVolumeButtons";
  v52[7] = @"GAXProfileAllowsAutolock";
  v53[6] = &__kCFBooleanTrue;
  v53[7] = &__kCFBooleanTrue;
  v52[8] = @"GAXProfileAppTimeoutDuration";
  v52[9] = @"GAXProfileAppTimeoutEnabled";
  v53[8] = &off_51908;
  v53[9] = &__kCFBooleanFalse;
  v52[10] = @"GAXProfileAllowsAXAutoEnableVoiceOver";
  v41 = +[NSNull null];
  v53[10] = v41;
  v52[11] = @"GAXProfileAllowsAXAutoEnableZoom";
  v38 = +[NSNull null];
  v53[11] = v38;
  v52[12] = @"GAXProfileAllowsAXAutoEnableInvertColors";
  v35 = +[NSNull null];
  v53[12] = v35;
  v52[13] = @"GAXProfileAllowsAXAutoEnableGrayscale";
  v32 = +[NSNull null];
  v53[13] = v32;
  v52[14] = @"GAXProfileAllowsAXAutoEnableAssistiveTouch";
  v29 = +[NSNull null];
  v53[14] = v29;
  v52[15] = @"GAXProfileAllowsAXAutoEnableSpeakSelection";
  v1 = +[NSNull null];
  v53[15] = v1;
  v52[16] = @"GAXProfileAllowsAXAutoEnableMonoAudio";
  v2 = +[NSNull null];
  v53[16] = v2;
  v52[17] = @"GAXProfileAllowsAXAutoEnableCommandAndControl";
  v3 = +[NSNull null];
  v53[17] = v3;
  v53[18] = &__kCFBooleanFalse;
  v52[18] = @"GAXProfileAllowsAXToggleVoiceOver";
  v52[19] = @"GAXProfileAllowsAXToggleZoom";
  v53[19] = &__kCFBooleanFalse;
  v53[20] = &__kCFBooleanFalse;
  v52[20] = @"GAXProfileAllowsAXToggleInvertColors";
  v52[21] = @"GAXProfileAllowsAXToggleGrayscale";
  v53[21] = &__kCFBooleanFalse;
  v53[22] = &__kCFBooleanFalse;
  v52[22] = @"GAXProfileAllowsAXToggleAssistiveTouch";
  v52[23] = @"GAXProfileAllowsAXToggleCommandAndControl";
  v53[23] = &__kCFBooleanFalse;
  v52[24] = @"GAXProfileIgnoredTouchRegionsPortrait";
  v4 = +[NSNull null];
  v53[24] = v4;
  v52[25] = @"GAXProfileIgnoredTouchRegionsLandscape";
  v5 = +[NSNull null];
  v53[25] = v5;
  v52[26] = @"GAXProfileStatesForRestrictions";
  v6 = +[NSNull null];
  v53[26] = v6;
  v52[27] = @"GAXProfileUnappliedChangedStatesForRestrictions";
  v7 = +[NSNull null];
  v53[27] = v7;
  v53[28] = &__kCFBooleanFalse;
  v52[28] = @"GAXProfileAllowsHomeButton";
  v52[29] = @"GAXProfileShouldAutolaunchCrashedApps";
  v53[29] = &__kCFBooleanTrue;
  v53[30] = &__kCFBooleanTrue;
  v52[30] = @"GAXProfileShowsUserConfirmationPromptsAndBanners";
  v52[31] = @"GAXProfileShouldAutolaunchAppsAfterSystemCrash";
  v53[31] = &__kCFBooleanTrue;
  v53[32] = &__kCFBooleanTrue;
  v52[32] = @"GAXProfileAllowsExit";
  v52[33] = @"GAXProfileShouldAutolaunchAfterLowBatteryShutDown";
  v53[33] = &__kCFBooleanFalse;
  v53[34] = &__kCFBooleanTrue;
  v52[34] = @"GAXProfileAllowsWebTextDefine";
  v52[35] = @"GAXProfileAllowsAccessibilityShortcut";
  v53[35] = &__kCFBooleanFalse;
  v43 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:36];

  v50[0] = @"GAXProfileAllowsKeyboardTextInput";
  v50[1] = @"GAXProfileAllowsTouch";
  v51[0] = &__kCFBooleanTrue;
  v51[1] = &__kCFBooleanTrue;
  v50[2] = @"GAXProfileAllowsMotion";
  v50[3] = @"GAXProfileAllowsRingerSwitch";
  v51[2] = &__kCFBooleanTrue;
  v51[3] = &__kCFBooleanTrue;
  v50[4] = @"GAXProfileAllowsProximity";
  v50[5] = @"GAXProfileAllowsLockButton";
  v51[4] = &__kCFBooleanTrue;
  v51[5] = &__kCFBooleanTrue;
  v50[6] = @"GAXProfileAllowsVolumeButtons";
  v50[7] = @"GAXProfileAllowsAutolock";
  v51[6] = &__kCFBooleanTrue;
  v51[7] = &__kCFBooleanTrue;
  v50[8] = @"GAXProfileAppTimeoutDuration";
  v50[9] = @"GAXProfileAppTimeoutEnabled";
  v51[8] = &off_51908;
  v51[9] = &__kCFBooleanFalse;
  v50[10] = @"GAXProfileAllowsAXAutoEnableVoiceOver";
  v39 = +[NSNull null];
  v51[10] = v39;
  v50[11] = @"GAXProfileAllowsAXAutoEnableZoom";
  v36 = +[NSNull null];
  v51[11] = v36;
  v50[12] = @"GAXProfileAllowsAXAutoEnableInvertColors";
  v33 = +[NSNull null];
  v51[12] = v33;
  v50[13] = @"GAXProfileAllowsAXAutoEnableGrayscale";
  v30 = +[NSNull null];
  v51[13] = v30;
  v50[14] = @"GAXProfileAllowsAXAutoEnableAssistiveTouch";
  v27 = +[NSNull null];
  v51[14] = v27;
  v50[15] = @"GAXProfileAllowsAXAutoEnableSpeakSelection";
  v8 = +[NSNull null];
  v51[15] = v8;
  v50[16] = @"GAXProfileAllowsAXAutoEnableMonoAudio";
  v9 = +[NSNull null];
  v51[16] = v9;
  v50[17] = @"GAXProfileAllowsAXAutoEnableCommandAndControl";
  v10 = +[NSNull null];
  v51[17] = v10;
  v51[18] = &__kCFBooleanFalse;
  v50[18] = @"GAXProfileAllowsAXToggleVoiceOver";
  v50[19] = @"GAXProfileAllowsAXToggleZoom";
  v51[19] = &__kCFBooleanFalse;
  v51[20] = &__kCFBooleanFalse;
  v50[20] = @"GAXProfileAllowsAXToggleInvertColors";
  v50[21] = @"GAXProfileAllowsAXToggleGrayscale";
  v51[21] = &__kCFBooleanFalse;
  v51[22] = &__kCFBooleanFalse;
  v50[22] = @"GAXProfileAllowsAXToggleAssistiveTouch";
  v50[23] = @"GAXProfileAllowsAXToggleCommandAndControl";
  v51[23] = &__kCFBooleanFalse;
  v50[24] = @"GAXProfileIgnoredTouchRegionsPortrait";
  v11 = +[NSNull null];
  v51[24] = v11;
  v50[25] = @"GAXProfileIgnoredTouchRegionsLandscape";
  v12 = +[NSNull null];
  v51[25] = v12;
  v50[26] = @"GAXProfileStatesForRestrictions";
  v13 = +[NSNull null];
  v51[26] = v13;
  v50[27] = @"GAXProfileUnappliedChangedStatesForRestrictions";
  v14 = +[NSNull null];
  v51[27] = v14;
  v51[28] = &__kCFBooleanFalse;
  v50[28] = @"GAXProfileAllowsHomeButton";
  v50[29] = @"GAXProfileShouldAutolaunchCrashedApps";
  v51[29] = &__kCFBooleanTrue;
  v51[30] = &__kCFBooleanTrue;
  v50[30] = @"GAXProfileShowsUserConfirmationPromptsAndBanners";
  v50[31] = @"GAXProfileShouldAutolaunchAppsAfterSystemCrash";
  v51[31] = &__kCFBooleanTrue;
  v51[32] = &__kCFBooleanFalse;
  v50[32] = @"GAXProfileAllowsExit";
  v50[33] = @"GAXProfileShouldAutolaunchAfterLowBatteryShutDown";
  v51[33] = &__kCFBooleanTrue;
  v51[34] = &__kCFBooleanTrue;
  v50[34] = @"GAXProfileAllowsWebTextDefine";
  v50[35] = @"GAXProfileAllowsAccessibilityShortcut";
  v51[35] = &__kCFBooleanFalse;
  v42 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:36];

  v48[0] = @"GAXProfileAllowsKeyboardTextInput";
  v48[1] = @"GAXProfileAllowsTouch";
  v49[0] = &__kCFBooleanTrue;
  v49[1] = &__kCFBooleanTrue;
  v48[2] = @"GAXProfileAllowsMotion";
  v48[3] = @"GAXProfileAllowsRingerSwitch";
  v49[2] = &__kCFBooleanTrue;
  v49[3] = &__kCFBooleanTrue;
  v48[4] = @"GAXProfileAllowsProximity";
  v48[5] = @"GAXProfileAllowsLockButton";
  v49[4] = &__kCFBooleanTrue;
  v49[5] = &__kCFBooleanTrue;
  v48[6] = @"GAXProfileAllowsVolumeButtons";
  v48[7] = @"GAXProfileAllowsAutolock";
  v49[6] = &__kCFBooleanTrue;
  v49[7] = &__kCFBooleanTrue;
  v48[8] = @"GAXProfileAppTimeoutDuration";
  v48[9] = @"GAXProfileAppTimeoutEnabled";
  v49[8] = &off_51908;
  v49[9] = &__kCFBooleanFalse;
  v48[10] = @"GAXProfileAllowsAXAutoEnableVoiceOver";
  v40 = +[NSNull null];
  v49[10] = v40;
  v48[11] = @"GAXProfileAllowsAXAutoEnableZoom";
  v37 = +[NSNull null];
  v49[11] = v37;
  v48[12] = @"GAXProfileAllowsAXAutoEnableInvertColors";
  v34 = +[NSNull null];
  v49[12] = v34;
  v48[13] = @"GAXProfileAllowsAXAutoEnableGrayscale";
  v31 = +[NSNull null];
  v49[13] = v31;
  v48[14] = @"GAXProfileAllowsAXAutoEnableAssistiveTouch";
  v28 = +[NSNull null];
  v49[14] = v28;
  v48[15] = @"GAXProfileAllowsAXAutoEnableSpeakSelection";
  v15 = +[NSNull null];
  v49[15] = v15;
  v48[16] = @"GAXProfileAllowsAXAutoEnableMonoAudio";
  v16 = +[NSNull null];
  v49[16] = v16;
  v48[17] = @"GAXProfileAllowsAXAutoEnableCommandAndControl";
  v17 = +[NSNull null];
  v49[17] = v17;
  v49[18] = &__kCFBooleanFalse;
  v48[18] = @"GAXProfileAllowsAXToggleVoiceOver";
  v48[19] = @"GAXProfileAllowsAXToggleZoom";
  v49[19] = &__kCFBooleanFalse;
  v49[20] = &__kCFBooleanFalse;
  v48[20] = @"GAXProfileAllowsAXToggleInvertColors";
  v48[21] = @"GAXProfileAllowsAXToggleGrayscale";
  v49[21] = &__kCFBooleanFalse;
  v49[22] = &__kCFBooleanFalse;
  v48[22] = @"GAXProfileAllowsAXToggleAssistiveTouch";
  v48[23] = @"GAXProfileAllowsAXToggleCommandAndControl";
  v49[23] = &__kCFBooleanFalse;
  v48[24] = @"GAXProfileIgnoredTouchRegionsPortrait";
  v18 = +[NSNull null];
  v49[24] = v18;
  v48[25] = @"GAXProfileIgnoredTouchRegionsLandscape";
  v19 = +[NSNull null];
  v49[25] = v19;
  v48[26] = @"GAXProfileStatesForRestrictions";
  v20 = +[NSNull null];
  v49[26] = v20;
  v48[27] = @"GAXProfileUnappliedChangedStatesForRestrictions";
  v21 = +[NSNull null];
  v49[27] = v21;
  v49[28] = &__kCFBooleanFalse;
  v48[28] = @"GAXProfileAllowsHomeButton";
  v48[29] = @"GAXProfileShouldAutolaunchCrashedApps";
  v49[29] = &__kCFBooleanTrue;
  v49[30] = &__kCFBooleanTrue;
  v48[30] = @"GAXProfileShowsUserConfirmationPromptsAndBanners";
  v48[31] = @"GAXProfileShouldAutolaunchAppsAfterSystemCrash";
  v49[31] = &__kCFBooleanTrue;
  v49[32] = &__kCFBooleanFalse;
  v48[32] = @"GAXProfileAllowsExit";
  v48[33] = @"GAXProfileShouldAutolaunchAfterLowBatteryShutDown";
  v49[33] = &__kCFBooleanTrue;
  v49[34] = &__kCFBooleanTrue;
  v48[34] = @"GAXProfileAllowsWebTextDefine";
  v48[35] = @"GAXProfileAllowsAccessibilityShortcut";
  v49[35] = &__kCFBooleanFalse;
  v22 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:36];

  v46[0] = @"GAXProfileAllowsAutolock";
  v46[1] = @"GAXProfileAllowsLockButton";
  v47[0] = &__kCFBooleanFalse;
  v47[1] = &__kCFBooleanFalse;
  v23 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
  v24 = qword_595C0;
  qword_595C0 = v23;

  v44[0] = &off_517B8;
  v44[1] = &off_517D0;
  v45[0] = v43;
  v45[1] = v42;
  v44[2] = &off_517E8;
  v45[2] = v22;
  v25 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:3];
  v26 = qword_595B8;
  qword_595B8 = v25;
}

id GAXAppIsMobilePhoneOrFacetime(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.mobilephone"])
  {
    v2 = &dword_0 + 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.facetime"];
  }

  return v2;
}

uint64_t GAXSessionAppsContainMobilePhoneOrFacetime(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isEqualToString:{@"com.apple.mobilephone", v9}] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"com.apple.facetime"))
        {
          v7 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v7 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_13:

  return v7;
}

void extractGAXBackboardStateFromMessage(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  v3 = [a1 payload];
  v4 = [v3 objectForKey:@"GAXIPCPayloadKeyGAXBackboardState"];

  [v4 getBytes:a2 length:28];
}

id gaxDebugDescriptionForGAXBackboardState(unsigned int *a1)
{
  v2 = [NSMutableString stringWithString:@"GAXBackboardState:\n"];
  [v2 appendFormat:@"  mode: %ld\n", *a1];
  [v2 appendFormat:@"  passcodeWindowContextID: %ld\n", a1[1]];
  [v2 appendFormat:@"  voiceOverItemChooserWindowContextID: %ld\n", a1[2]];
  [v2 appendFormat:@"  tripleClickSheetWindowContextID: %ld\n", a1[3]];
  [v2 appendFormat:@"  shouldBlockAllEvents: %ld\n", a1[6] & 1];
  [v2 appendFormat:@"  restartingAndWasActiveBeforeRestart: %ld\n", (a1[6] >> 1) & 1];
  [v2 appendFormat:@"  verifyingDeviceUnlockInSAM: %ld\n", (a1[6] >> 2) & 1];
  [v2 appendFormat:@"  isPasscodeViewVisible: %ld\n", (a1[6] >> 3) & 1];
  [v2 appendFormat:@"  isRestricted: %ld\n", (a1[6] >> 4) & 1];
  [v2 appendFormat:@"  overrideAllowsAllTouchSBMiniAlertIsShowing: %ld\n", (a1[6] >> 5) & 1];
  [v2 appendFormat:@"  overrideAllowsAllTouchCallStateIsChanging: %ld\n", (a1[6] >> 6) & 1];
  [v2 appendFormat:@"  overrideAllowsAllTouchMakingEmergencyCall: %ld\n", (a1[6] >> 7) & 1];
  [v2 appendFormat:@"  overrideIgnoresAllTouchAllowedAppNotFound: %ld\n", (a1[6] >> 8) & 1];
  [v2 appendFormat:@"  overrideIgnoresAllTouchVerifyingIntegrity: %ld\n", (a1[6] >> 9) & 1];
  [v2 appendFormat:@"  profileConfiguration: %ld\n", a1[5]];
  [v2 appendFormat:@"  allowsTouch: %ld\n", (a1[6] >> 10) & 1];
  [v2 appendFormat:@"  allowsLockButton: %ld\n", (a1[6] >> 11) & 1];
  [v2 appendFormat:@"  allowsAppExit: %ld\n", (a1[6] >> 12) & 1];
  [v2 appendFormat:@"  allowsHomeButton: %ld\n", (a1[6] >> 13) & 1];
  [v2 appendFormat:@"  allowsVolumeButtons: %ld\n", (a1[6] >> 14) & 1];
  [v2 appendFormat:@"  allowsRingerSwitch: %ld\n", (a1[6] >> 15) & 1];
  [v2 appendFormat:@"  allowsMotion: %ld\n", (a1[6] >> 16) & 1];
  [v2 appendFormat:@"  allowsAutolock: %ld\n", (a1[6] >> 17) & 1];
  [v2 appendFormat:@"  allowsKeyboardTextInput: %ld\n", (a1[6] >> 18) & 1];
  [v2 appendFormat:@"  allowsProximity: %ld\n", (a1[6] >> 19) & 1];

  return v2;
}

BOOL GAXSecTaskHasBooleanEntitlement(__SecTask *a1, void *a2)
{
  v3 = a2;
  error = 0;
  v4 = SecTaskCopyValueForEntitlement(a1, v3, &error);
  if (error)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v11 = a1;
      v12 = 2112;
      v13 = v3;
      v14 = 2112;
      v15 = error;
      _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Unable to check if task %@ has entitlement %@: %@", buf, 0x20u);
    }

    CFRelease(error);
  }

  if (v4)
  {
    v6 = CFGetTypeID(v4);
    v7 = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_5A9C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = GAXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_2A0F8();
    }
  }
}

void sub_5F18(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  v4 = [v3 objectForKey:@"GAXIPCPayloadKeyShouldAbortServerModeTransition"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Transition was aborted by system app.", v10, 2u);
    }

    v7 = 0;
  }

  else
  {
    v7 = objc_alloc_init(GAXSpringboardClientStatus);
    v8 = [v3 objectForKey:@"GAXIPCPayloadKeyFrontmostAppName"];
    [(GAXSpringboardClientStatus *)v7 setSessionApplicationName:v8];

    v9 = [v3 objectForKey:@"GAXIPCPayloadKeyFrontmostArchivedAppIcon"];
    [(GAXSpringboardClientStatus *)v7 setArchivedSessionApplicationIcon:v9];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_66AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = AXLogIPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_2A1EC();
    }
  }

  else
  {
    v7 = [a2 payload];
    v8 = [v7 objectForKey:@"GAXIPCPayloadKeyNewPasscodeLength"];
    [v8 unsignedIntegerValue];
  }

  (*(*(a1 + 32) + 16))();
}

id sub_81C4(uint64_t a1)
{
  v2 = GAXLogIntegrity();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) eventName];
    *buf = 138543362;
    v9 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Proceeding with verification of event <%{public}@>", buf, 0xCu);
  }

  [*(a1 + 32) setDelay:0.0];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_82E4;
  v7[3] = &unk_4D028;
  v7[4] = v4;
  return [v4 _verifyWithEventObject:v5 completion:v7];
}

uint64_t sub_87B8(uint64_t a1, uint64_t a2)
{
  if (a2 == 23)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = [v3 expectedSessionAppIdentifierForIntegrityVerifier:*(a1 + 32)];

    v5 = [*(a1 + 32) delegate];
    [v5 attemptAppRelaunchForAppWithIdentifier:v4 withIntegrityVerifier:*(a1 + 32)];
  }

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void sub_8BDC(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = a2;
  v3 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  v5 = [v4 delegate];
  v6 = [v5 expectedSessionAppIdentifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_8D00;
  v7[3] = &unk_4D0F0;
  v9 = v10;
  v8 = *(a1 + 40);
  [v3 sessionAppIsBeingInstalledForIntegrityVerifier:v4 sessionIdentifier:v6 completion:v7];

  _Block_object_dispose(v10, 8);
}

void sub_8CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8D00(uint64_t a1, int a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 27;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  AXPerformBlockAsynchronouslyOnMainThread();
}

uint64_t sub_8DBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:&off_51800];
  v5 = [v4 BOOLValue];

  v6 = [v3 objectForKey:&off_51818];

  [v6 BOOLValue];
  v7 = [*(a1 + 32) delegate];
  [v7 hasSystemPasscodeForIntegrityVerifier:*(a1 + 32)];

  if (v3 && ((v5 & 1) != 0 || [*(a1 + 32) _appWithIdentifierIsInstalledOnDevice:*(a1 + 40)]))
  {
    v8 = *(a1 + 76);
    if ((v8 - 2) >= 2)
    {
      if (v8 == 1)
      {
        if ((*(a1 + 84) & 1) == 0)
        {
          v9 = [*(a1 + 32) delegate];
          v10 = [v9 relaunchAttemptsForSessionAppWithIdentifier:*(a1 + 40) forIntegrityVerifier:*(a1 + 32)];

          if (v10 <= 3)
          {
            *(a1 + 56);
          }
        }
      }

      else
      {
        _AXAssert();
      }
    }
  }

  v11 = *(*(a1 + 48) + 16);

  return v11();
}

void sub_925C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_927C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = GAXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) displayStringForOutcome:*(a1 + 56)];
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Had error outcome %{public}@ but session app is being installed, so substituting in the session app being installed outcome", buf, 0xCu);
    }

    [*(a1 + 32) _didFinishVerifyingCurrentEventWithOutcome:27 error:0];
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v5 = v6;
  AXPerformBlockOnMainThreadAfterDelay();
}

void sub_98AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_9A8C(id a1)
{
  v1 = +[GAXBackboard sharedInstance];
  [v1 didEnableSystemAppAccess];
}

id GAXAllowedRemoteUIProcesses()
{
  if (qword_595D8 != -1)
  {
    sub_2A458();
  }

  v1 = qword_595D0;

  return v1;
}

void sub_9B18(id a1)
{
  v3[0] = @"com.apple.MailCompositionService";
  v3[1] = @"com.apple.mobilesms.compose";
  v3[2] = @"com.apple.MessageCompositionService";
  v3[3] = @"com.apple.social.remoteui.SocialUIService";
  v3[4] = @"com.apple.quicklook.quicklookd";
  v3[5] = @"com.apple.SafariViewService";
  v3[6] = @"com.apple.CoreAuthUI";
  v3[7] = @"com.apple.InCallService";
  v3[8] = @"com.apple.datadetectors.DDActionsService";
  v3[9] = @"com.apple.shortcuts.runtime";
  v3[10] = @"com.apple.SleepLockScreen";
  v3[11] = @"com.apple.ContactlessUIService";
  v1 = [NSArray arrayWithObjects:v3 count:12];
  v2 = qword_595D0;
  qword_595D0 = v1;
}

id GAXURLSchemeIsPhoneRelated(void *a1)
{
  v1 = [a1 scheme];
  if ([v1 isEqualToString:@"tel"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"facetime"))
  {
    v2 = &dword_0 + 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"facetime-audio"];
  }

  return v2;
}

id GAXLocalizedStringForTimeDuration(double a1)
{
  v2 = objc_opt_new();
  [v2 setZeroFormattingBehavior:1];
  [v2 setUnitsStyle:3];
  if (a1 >= 60.0)
  {
    if (a1 % 60 > 30)
    {
      a1 = a1 + 60.0;
    }

    v3 = 96;
  }

  else
  {
    v3 = 128;
  }

  [v2 setAllowedUnits:v3];
  v4 = [v2 stringFromTimeInterval:a1];

  return v4;
}

void sub_AC20(id a1)
{
  qword_595E0 = objc_alloc_init(GAXSettings);

  _objc_release_x1();
}

void sub_BDC8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(a1 + 32);
  if (isKindOfClass)
  {
    v8 = [v5 mutableCopy];

    v5 = v8;
  }

  [v7 setObject:v5 forKey:v9];
}

void sub_BEF8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_BF18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_CC70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 description];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];

  [*(a1 + 32) appendFormat:@"\t%@ : %@\n", v5, v7];
}

void sub_CD0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) appendFormat:@"\t%@\n", v5];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_CE80;
    v9[3] = &unk_4D2F8;
    v10 = *(a1 + 32);
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [NSString stringWithFormat:@"NSData<%p>", v6];
    }

    else
    {
      v8 = [v6 description];
      v7 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];
    }

    [*(a1 + 32) appendFormat:@"\t%@ : %@\n", v5, v7];
  }
}

void sub_CE80(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [NSString stringWithFormat:@"NSData<%p>", v5];
  }

  else
  {
    v7 = [v5 description];

    v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];
    v5 = v7;
  }

  [*(a1 + 32) appendFormat:@"\t\t%@ : %@\n", v6, v8];
}

void sub_DBE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 stateForRestrictionWithIdentifier:v4];
  v6 = *(a1 + 40);
  v7 = [NSNumber numberWithInteger:v5];
  [v6 setObject:v7 forKey:v4];
}

void sub_DE18(id *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 integerValue];
  v7 = [a1[4] objectForKey:v10];
  v8 = [v7 integerValue];

  if (v6 != v8)
  {
    v9 = [v10 copy];
    [a1[5] setObject:v5 forKey:v9];
    [a1[6] setObject:v5 forKey:v9];
  }
}

void sub_E650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_E66C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_E684(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if ([a3 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_F87C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = 0;
  v6 = [*(a1 + 32) _guidedAccessProfileKeyForManagedConfigKey:a2 shouldInvertValue:&v8];
  if (v6)
  {
    if (v8 == 1)
    {
      v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 BOOLValue] ^ 1);

      v5 = v7;
    }

    [*(a1 + 40) setObject:v5 forKey:v6];
  }
}

void sub_F928(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = 0;
  v6 = [*(a1 + 32) _guidedAccessProfileKeyForManagedConfigKey:a2 shouldInvertValue:&v8];
  if (v6)
  {
    if (v8 == 1)
    {
      v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 BOOLValue] ^ 1);

      v5 = v7;
    }

    [*(a1 + 40) setObject:v5 forKey:v6];
  }
}

void sub_FA98(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pauseVerificationForProfileManager:*(a1 + 32)];

  v3 = [*(a1 + 32) managedConfigurationNotificationCoalesceTimer];
  [v3 cancel];

  v4 = [*(a1 + 32) managedConfigurationNotificationCoalesceTimer];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_FB60;
  v5[3] = &unk_4C958;
  v5[4] = *(a1 + 32);
  [v4 afterDelay:v5 processBlock:5.0];
}

void sub_FB60(uint64_t a1)
{
  v2 = GAXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Now acting on last received MCProfileListChangedNotification", v4, 2u);
  }

  [*(a1 + 32) _updateConfigurationAndNotifyDelegate:1];
  v3 = [*(a1 + 32) delegate];
  [v3 resumeVerificationForProfileManager:*(a1 + 32)];
}

void sub_10734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10754(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _handleSystemEvent:v3];

  return v5;
}

BOOL sub_107C4(id a1, AXEventRepresentation *a2)
{
  v2 = GAXLogIntegrity();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_2AB40(v2);
  }

  return 1;
}

void sub_10A84(uint64_t a1)
{
  v2 = GAXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_2AB84(a1, v2);
  }
}

void sub_10D00(uint64_t a1)
{
  v2 = +[AXEventTapManager sharedManager];
  [v2 sendEvent:*(a1 + 32) afterTap:AXEventTapIdentifierGuidedAccess useGSEvent:0 namedTaps:0 options:0];
}

void sub_111C4(uint64_t a1)
{
  *(*(a1 + 32) + 64) = 0;
  *(*(a1 + 32) + 56) = 0;
  v2 = *(a1 + 32);
  if ((*(a1 + 73) & 8) != 0)
  {
    if (v2[9] || (_AXAssert(), v2 = *(a1 + 32), v2[9]))
    {
      v3 = *(a1 + 40);

      [v2 _postLockButtonPressWithDown:? up:?];
    }
  }

  else
  {
    v4 = [v2 delegate];
    [v4 eventProcessor:*(a1 + 32) showAlertWithType:1];
  }
}

void sub_11BB0(id a1)
{
  qword_595F0 = objc_alloc_init(GAXBackboard);

  _objc_release_x1();
}

void sub_124B0(uint64_t a1)
{
  [*(a1 + 32) _updateRestrictedState:0];
  v2 = +[AXSpringBoardServer server];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_12554;
  v3[3] = &unk_4D500;
  v3[4] = *(a1 + 32);
  [v2 screenLockStatus:v3 passcodeStatusRequired:0];
}

void sub_12554(uint64_t a1, int a2, int a3)
{
  IsLoginSession = AXSessionIsLoginSession();
  if ((a2 & a3 & 1) == 0 && (IsLoginSession & 1) == 0)
  {
    v7 = [*(a1 + 32) profileManager];
    v8 = [v7 configuration];

    if (v8 == 2)
    {
      [*(a1 + 32) _updateSessionAppForSingleAppMode];
      [*(a1 + 32) _notifyOfGAXBackboardStateChange];
      v9 = [*(a1 + 32) integrityVerifier];
      [v9 verifyIntegrityWithEvent:18];

      v10 = *(a1 + 32);

      [v10 _applyDeniedStatesForRestrictions];
    }
  }
}

void sub_12714(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_12738(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained expectedSessionAppIdentifier];
  v4 = [WeakRetained _appWithIdentifierIsBeingInstalled:v3];

  v5 = GAXLogCommon();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = 0x403E000000000000;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Didn't get a frontmost app change in %f seconds, but session app is being installed. Will wait for that to finish.", &v9, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_2ADD8();
    }

    v6 = [*(a1 + 32) appManager];
    v7 = [v6 sessionAppBundleIdentifiers];
    v8 = [v7 firstObject];
    [WeakRetained _launchSessionAppWithIdentifier:v8];
  }
}

id sub_12998(uint64_t a1)
{
  [*(*(a1 + 32) + 256) addObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 256) count];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40) & 0xFFFFFFFE;
  if (result)
  {
    ++v4;
  }

  *(v3 + 40) = v4;
  return result;
}

id sub_12B08(uint64_t a1)
{
  [*(*(a1 + 32) + 256) removeObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 256) count];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40) & 0xFFFFFFFE;
  if (result)
  {
    ++v4;
  }

  *(v3 + 40) = v4;
  return result;
}

uint64_t sub_12C48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_12C60(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 256) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id sub_12D1C(uint64_t a1)
{
  v2 = [*(a1 + 32) appManager];
  [v2 updateSessionAppBundleIdentifiers:0];

  v3 = [*(a1 + 32) integrityVerifier];
  [v3 verifyIntegrityWithEvent:3];

  v4 = *(a1 + 32);

  return [v4 setDisableSystemGesturesForActiveAssertion:0];
}

id sub_12E6C(uint64_t a1, uint64_t a2)
{
  if (a2 <= 0)
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Still waiting to connect to SB. Will try again in .5", buf, 2u);
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    return AXPerformBlockOnMainThreadAfterDelay();
  }

  if (([*(a1 + 40) gaxServerIsReady] & 1) == 0)
  {
    v7 = GAXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Still waiting for GAX SpringBoard Server to load. Will try again in .1", buf, 2u);
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    return AXPerformBlockOnMainThreadAfterDelay();
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);

  return [v4 _prepareGuidedAccessAfterConnectingToSpringboard:v5 springBoardPID:a2];
}

void sub_13114(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = GAXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_2AE54();
    }

    [*(a1 + 32) _prepareGuidedAccessAfterConnectingToSpringboard:*(a1 + 44)];
  }

  else
  {
    v5 = +[AXSpringBoardServer server];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_13210;
    v6[3] = &unk_4D5A0;
    v6[4] = *(a1 + 32);
    v8 = *(a1 + 44);
    v7 = *(a1 + 40);
    [v5 screenLockStatus:v6 passcodeStatusRequired:0];
  }
}

void sub_13210(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _prepareGuidedAccessAfterConnectingToSpringboard:*(a1 + 44) springBoardPID:*(a1 + 40) screenLocked:a2];
  if (*(a1 + 44) == 1)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_13314;
    v6[3] = &unk_4D4B0;
    v6[4] = v3;
    v6[5] = &v7;
    dispatch_sync(v4, v6);
    [*(a1 + 32) _updateDisablingSystemGesturesForMode:*(v8 + 6)];
    v5 = [*(a1 + 32) integrityVerifier];
    [v5 springBoardDidRelaunch];

    _Block_object_dispose(&v7, 8);
  }
}

void sub_132FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_137BC(uint64_t a1)
{
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:"_handleToggleServerModeNotification:" name:AXBackboardServerShouldToggleGuidedAccessNotification object:0];
  [v5 addObserver:*(a1 + 32) selector:"_handleAssistiveTouchEnabledNotification:" name:kAXSAssistiveTouchEnabledNotification object:0];
  [v5 addObserver:*(a1 + 32) selector:"_handleAssistiveTouchEnabledNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), sub_138FC, @"com.apple.mobile.SubstantialTransition", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v3, *(a1 + 32), sub_13904, kAXSGuidedAccessActivateNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v4, *(a1 + 32), sub_13910, @"AXInternalClearGAXSessionSettingsNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_13910(uint64_t a1, void *a2)
{
  if (AXIsInternalInstall())
  {
    v3 = a2;
    v4 = [v3 profileManager];
    v5 = objc_alloc_init(GAXProfileManager);
    [v3 setProfileManager:v5];

    v6 = [v4 delegate];
    v7 = [v3 profileManager];

    [v7 setDelegate:v6];
    v8 = GAXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_2AF34();
    }
  }
}

void sub_14094(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v2 + 16);
  *(v3 + 44) = *(v2 + 28);
  *(v3 + 32) = v4;
  v15 = [*(a1 + 32) profileManager];
  *(*(*(a1 + 40) + 8) + 52) = [v15 configuration];
  if ([v15 shouldAllowTouch])
  {
    v5 = 1024;
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 40) + 8) + 56) = *(*(*(a1 + 40) + 8) + 56) & 0xFFFFFBFF | v5;
  if ([v15 shouldAllowLockButton])
  {
    v6 = 2048;
  }

  else
  {
    v6 = 0;
  }

  *(*(*(a1 + 40) + 8) + 56) = *(*(*(a1 + 40) + 8) + 56) & 0xFFFFF7FF | v6;
  if ([v15 shouldAllowExit])
  {
    v7 = 4096;
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 40) + 8) + 56) = *(*(*(a1 + 40) + 8) + 56) & 0xFFFFEFFF | v7;
  if ([v15 shouldAllowHomeButton])
  {
    v8 = 0x2000;
  }

  else
  {
    v8 = 0;
  }

  *(*(*(a1 + 40) + 8) + 56) = *(*(*(a1 + 40) + 8) + 56) & 0xFFFFDFFF | v8;
  if ([v15 shouldAllowVolumeButtons])
  {
    v9 = 0x4000;
  }

  else
  {
    v9 = 0;
  }

  *(*(*(a1 + 40) + 8) + 56) = *(*(*(a1 + 40) + 8) + 56) & 0xFFFFBFFF | v9;
  if ([v15 shouldAllowRingerSwitch])
  {
    v10 = 0x8000;
  }

  else
  {
    v10 = 0;
  }

  *(*(*(a1 + 40) + 8) + 56) = *(*(*(a1 + 40) + 8) + 56) & 0xFFFF7FFF | v10;
  if ([v15 shouldAllowMotion])
  {
    v11 = 0x10000;
  }

  else
  {
    v11 = 0;
  }

  *(*(*(a1 + 40) + 8) + 56) = *(*(*(a1 + 40) + 8) + 56) & 0xFFFEFFFF | v11;
  if ([v15 shouldAllowAutolock])
  {
    v12 = 0x20000;
  }

  else
  {
    v12 = 0;
  }

  *(*(*(a1 + 40) + 8) + 56) = *(*(*(a1 + 40) + 8) + 56) & 0xFFFDFFFF | v12;
  if ([v15 shouldAllowKeyboardTextInput])
  {
    v13 = 0x40000;
  }

  else
  {
    v13 = 0;
  }

  *(*(*(a1 + 40) + 8) + 56) = *(*(*(a1 + 40) + 8) + 56) & 0xFFFBFFFF | v13;
  if ([v15 shouldAllowProximity])
  {
    v14 = 0x80000;
  }

  else
  {
    v14 = 0;
  }

  *(*(*(a1 + 40) + 8) + 56) = *(*(*(a1 + 40) + 8) + 56) & 0xFFF7FFFF | v14;
}

void sub_14814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_14834(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 16);
  *(*(result + 32) + 16) = *(result + 48);
  return result;
}

void sub_14E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_14ECC(uint64_t a1)
{
  v2 = [*(a1 + 32) clientPortsToBundleIds];
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = GAXLogAppLaunching();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v15 = 138543618;
    v16 = v4;
    v17 = 2048;
    v18 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Was notified gax client did become invalid: %{public}@. send right name: %llx", &v15, 0x16u);
  }

  if ([*(a1 + 32) isActive])
  {
    if (!v4 || ([*(a1 + 32) appManager], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "appWithIdentifierIsASessionApp:", v4), v7, v8))
    {
      v9 = [*(a1 + 32) profileManager];
      v10 = [v9 shouldAutolaunchCrashedApps];

      if (v10)
      {
        v11 = 7;
      }

      else
      {
        v11 = 8;
      }

      v12 = [*(a1 + 32) integrityVerifier];
      [v12 verifyIntegrityWithEvent:v11 afterDelay:1.5];
    }
  }

  v13 = [*(a1 + 32) clientPortsToBundleIds];
  v14 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  [v13 removeObjectForKey:v14];
}

void sub_1529C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) clientPortsToBundleIds];
  v4 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = [*(a1 + 32) appManager];
  [v5 gaxClientDidLoad:*(a1 + 40) pid:*(a1 + 52)];
  [*(a1 + 32) _handleUpdateGAXClientState];
}

void sub_1549C(uint64_t a1)
{
  v2 = [*(a1 + 32) appManager];
  [v2 updateManagedAppState:0];
  [v2 appWithBundleIdentifier:*(a1 + 40) becameActiveWithPid:*(a1 + 48)];
  [*(a1 + 32) setWasEverActiveInCurrentFrontmostApp:0];
  v3 = GAXLogAppLaunching();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 sessionAppBundleIdentifiers];
    v5 = [v2 effectiveAppBundleIdentifier];
    *buf = 138412546;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Session apps are %@. Effective app is %@.", buf, 0x16u);
  }

  v6 = [v2 sessionAppIsEffectiveApp:*(a1 + 40)];
  v7 = *(a1 + 32);
  if (v6)
  {
    if ([v7 shouldStartSessionUponFrontmostAppChanged])
    {
      v8 = GAXLogAppLaunching();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "About to transition to active with new frontmost app", buf, 2u);
      }

      [*(a1 + 32) _transitionToMode:2];
      [*(a1 + 32) _updateRestrictedState:0];
      [*(a1 + 32) _updateIsInitializingAndWasActiveBeforeReboot:0];
    }

    [*(a1 + 32) setShouldStartSessionUponFrontmostAppChanged:0];
    [*(a1 + 32) _handleUpdateGAXClientState];
    goto LABEL_21;
  }

  if (![v7 wantsSingleAppModeOrAppSelfLockMode] || (objc_msgSend(v2, "sessionAppIsEffectiveApp:", *(a1 + 40)) & 1) != 0)
  {
    goto LABEL_21;
  }

  if ([v2 effectiveAppIsPurpleBuddy])
  {
    v9 = GAXLogAppLaunching();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_2B13C();
    }

LABEL_20:

    goto LABEL_21;
  }

  if ([v2 effectiveAppIsCoreAuthUI])
  {
    v9 = GAXLogAppLaunching();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Effective app does not match session app, but is CoreAuthUI. will continue to run.", buf, 2u);
    }

    goto LABEL_20;
  }

  v10 = [*(a1 + 32) profileManager];
  v11 = [v2 effectiveAppBundleIdentifier];
  v12 = [v10 appAllowlistActiveAndContainsAdditionalApp:v11];

  if (v12)
  {
    v9 = GAXLogAppLaunching();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_2B084(v2);
    }

    goto LABEL_20;
  }

  v13 = [v2 sessionAppBundleIdentifiers];
  v14 = [v2 effectiveAppBundleIdentifier];
  v15 = [v13 containsObject:v14];

  if ((v15 & 1) == 0)
  {
    v16 = GAXLogAppLaunching();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_2B048();
    }

    [v2 terminateEffectiveApp];
    v17 = *(a1 + 32);
    AXPerformBlockAsynchronouslyOnMainThread();
  }

LABEL_21:
}

void sub_15820(uint64_t a1)
{
  v1 = [*(a1 + 32) integrityVerifier];
  [v1 verifyIntegrityWithEvent:16];
}

id sub_158DC(uint64_t a1)
{
  result = [*(a1 + 32) isInWorkspace];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _transitionToMode:0];
  }

  return result;
}

void sub_15F1C(uint64_t a1)
{
  v2 = GAXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) appLaunchGeneration];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "App launch generation %lu was correct", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) integrityVerifier];
  [v4 didFinishAppLaunchAttemptWithConfiguration:*(a1 + 48) errorMessage:*(a1 + 40)];
}

void sub_15FE8(uint64_t a1)
{
  v2 = GAXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_2B178(a1);
  }

  v3 = [*(a1 + 32) integrityVerifier];
  [v3 didFinishAppLaunchAttemptWithConfiguration:*(a1 + 48) errorMessage:@"stale app launch generation count"];
}

void sub_160CC(uint64_t a1)
{
  v1 = [*(a1 + 32) settings];
  [v1 setSystemDidRestartDueToLowBattery:1];
}

void sub_17060(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [*(a1 + 40) objectForKey:@"passcode window context ID"];
    v4 = [v3 unsignedIntegerValue];
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    *(v6 + 20) = v4;

    v2 = v5[16];
  }

  else
  {
    v5 = (a1 + 32);
    *(*(a1 + 32) + 20) = 0;
  }

  *(*v5 + 40) = *(*v5 + 40) & 0xFFFFFFF7 | (8 * (v2 & 0x1F));
}

id sub_170DC(uint64_t a1)
{
  v2 = GAXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "self.locked = NO (Biometrics)", v4, 2u);
  }

  [*(a1 + 32) setLocked:0];
  [*(a1 + 32) _setTimeRestrictionHasExpired:0];
  [*(a1 + 32) _transitionToMode:1];
  [*(a1 + 32) setDesiredModeAfterSuccessfulPasscodeEntry:0];
  return [*(a1 + 32) setPasscodeEntryFailedCount:0];
}

id sub_17184(uint64_t a1, int a2)
{
  v4 = GAXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "self.locked = NO (passcode succeeded)", v8, 2u);
  }

  [*(a1 + 32) setLocked:0];
  [*(a1 + 32) _setTimeRestrictionHasExpired:0];
  if (a2 && (+[AXSpringBoardServer server](AXSpringBoardServer, "server"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 gaxIsSystemAppShowingTransientOverlay], v5, (v6 & 1) == 0))
  {
    [*(a1 + 32) _transitionToMode:0];
    [*(a1 + 32) _showAlertWithTextType:2 asBanner:0 isUrgent:0];
  }

  else
  {
    [*(a1 + 32) _transitionToMode:{objc_msgSend(*(a1 + 32), "desiredModeAfterSuccessfulPasscodeEntry")}];
  }

  [*(a1 + 32) setDesiredModeAfterSuccessfulPasscodeEntry:0];
  return [*(a1 + 32) setPasscodeEntryFailedCount:0];
}

id sub_17290(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) desiredModeAfterSuccessfulPasscodeEntry];
  }

  [v3 _transitionToMode:v4];
  v5 = *(a1 + 32);

  return [v5 setDesiredModeAfterSuccessfulPasscodeEntry:0];
}

void sub_17490(uint64_t a1)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1783C;
  block[3] = &unk_4D4B0;
  block[4] = v2;
  block[5] = &v24;
  dispatch_sync(v3, block);
  v4 = *(v25 + 6);
  if (v4 == 2)
  {
    v6 = [*(a1 + 32) activeInterfaceOrientation];
    v7 = [*(a1 + 32) profileManager];
    v21 = [v7 ignoredTouchRegionsForOrientation:v6];

    v20 = [*(a1 + 32) profileManager];
    v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v20 configuration]);
    v29[0] = v8;
    v9 = [*(a1 + 32) profileManager];
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 timeRestrictionsEnabled]);
    v29[1] = v10;
    v11 = [*(a1 + 32) profileManager];
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 appTimeoutDuration]);
    v29[2] = v12;
    v13 = [NSNumber numberWithUnsignedInt:*(v25 + 6)];
    v29[3] = v13;
    v14 = [NSArray arrayWithObjects:v29 count:4];
    v28[0] = @"profile configuration";
    v28[1] = @"time restrictions enabled";
    v28[2] = @"time restriction duration";
    v28[3] = @"server mode for disabling telephony";
    v15 = [NSArray arrayWithObjects:v28 count:4];
    v16 = [NSMutableDictionary dictionaryWithObjects:v14 forKeys:v15];

    if (v21)
    {
      [v16 setObject:v21 forKeyedSubscript:@"interest area paths for storage"];
    }

    v17 = [*(a1 + 32) userInterfaceClient];
    [v17 sendAsynchronousMessage:v16 withIdentifier:10 targetAccessQueue:0 completion:0];
  }

  else if (v4 == 1)
  {
    v5 = +[AXSpringBoardServer server];
    [v5 stopHostingWorkspaceApplicationImmediately];

    [*(a1 + 32) _transitionToMode:0 requireUserUnlock:0 assumeUserInterfaceConnectionSevered:1];
  }

  v18 = *(a1 + 32);
  v19 = *(v18 + 8);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_17850;
  v22[3] = &unk_4C958;
  v22[4] = v18;
  dispatch_sync(v19, v22);
  _Block_object_dispose(&v24, 8);
}

void sub_17810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_178D8(uint64_t a1)
{
  v2 = GAXLogIntegrity();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Start ignoring all touches via override for verifying integrity - for 5 minutes max", buf, 2u);
  }

  *(*(a1 + 32) + 40) |= 0x200u;
  v4 = *(a1 + 32);
  return AXPerformBlockOnMainThreadAfterDelay();
}

void sub_179B0(uint64_t a1)
{
  if ((*(*(a1 + 32) + 41) & 2) != 0)
  {
    v2 = GAXLogIntegrity();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Stop ignoring all touches via override for verifying integrity - exceeded 5 minutes", v3, 2u);
    }

    *(*(a1 + 32) + 40) &= ~0x200u;
  }
}

id sub_17CE0(uint64_t a1)
{
  [*(a1 + 32) _transitionToMode:2];
  v2 = *(a1 + 32);

  return [v2 _updateRestrictedState:0];
}

void sub_17D24(uint64_t a1)
{
  [*(a1 + 32) removeReasonToBlockAllEvents:@"GAX verifying app relaunch"];
  v2 = [*(a1 + 32) eventProcessor];
  [v2 endHandlingSystemEventsForReason:@"GAX Launching app"];
}

id sub_18500(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (*(a1 + 40) == 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2 & a3 ^ 1u;
  }

  return [*(a1 + 32) _transitionToMode:0 requireUserUnlock:v4];
}

void sub_18524(uint64_t a1)
{
  v2 = GAXLogIntegrity();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Stop ignoring all touches via override for verifying integrity", v3, 2u);
  }

  *(*(a1 + 32) + 40) &= ~0x200u;
}

id sub_1884C(uint64_t a1, void *a2, void *a3)
{
  *a2 = 0;
  v5 = +[AXSpringBoardServer server];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) profileManager];
  v8 = [v7 configuration];
  v9 = *(a1 + 48);
  v15 = 0;
  v10 = [v5 gaxLaunchApplication:v6 withConfiguration:v8 appLaunchGeneration:v9 enqueueError:&v15];
  v11 = v15;

  if (v11)
  {
    v12 = GAXLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_2B3A8();
    }

    if (a3)
    {
      v13 = v11;
      *a3 = v11;
    }
  }

  return v10;
}

void sub_18930(id a1, BOOL a2, id a3, NSError *a4)
{
  v5 = a4;
  if (!a2)
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_2B418();
    }
  }
}

uint64_t sub_18EA8(uint64_t a1)
{
  v2 = [*(a1 + 32) _appWithIdentifierIsBeingInstalled:*(a1 + 40)];
  v3 = GAXLogIntegrity();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6[0] = 67109378;
    v6[1] = v2;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "App is being installed: %d %@", v6, 0x12u);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_19364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1938C(uint64_t a1)
{
  v2 = *(a1 + 48);
  os_unfair_lock_lock(v2);
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) safeBoolForKey:@"_lock_systemAppBlocked"] ^ 1;

  os_unfair_lock_unlock(v2);
}

void sub_1957C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInPreBoardScenarioUpdated];
}

void sub_19770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19794(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInCheckerBoardScenarioUpdated];
}

void sub_1992C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = [v2 profileManager];
  v4 = [v6 timeRestrictionsEnabled];
  v5 = [*(a1 + 32) timeRestrictionManager];
  [v2 _showAlertWithTextType:v3 asBanner:1 isUrgent:0 timeRestrictionsEnabled:v4 remainingTime:{objc_msgSend(v5, "remainingTimeInSeconds")}];
}

void sub_19A60(id a1)
{
  v1 = +[AXSpringBoardServer server];
  [v1 gaxUnlockDevice];
}

void sub_19B9C(uint64_t a1)
{
  v5 = [*(a1 + 32) ignoredTouchRegions];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_19FCC(uint64_t result)
{
  *(*(result + 32) + 40) = *(*(result + 32) + 40) & 0xFFFFFFFD | (2 * (*(result + 40) & 1));
  if ((*(result + 40) & 1) == 0)
  {
    *(*(result + 32) + 40) &= ~4u;
  }

  return result;
}

uint64_t sub_1A070(uint64_t result)
{
  *(*(result + 32) + 40) &= ~0x20u;
  *(*(result + 32) + 40) &= ~0x40u;
  *(*(result + 32) + 40) &= ~0x80u;
  *(*(result + 32) + 40) &= ~0x100u;
  *(*(result + 32) + 40) &= ~0x200u;
  return result;
}

void sub_1B6EC(uint64_t a1, double a2)
{
  v3 = dispatch_time(0, (a2 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1B7B0;
  block[3] = &unk_4D808;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 52);
  v6 = v4;
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_1B7DC(uint64_t a1, int a2)
{
  v4 = GAXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "System app frontmost: %i", buf, 8u);
  }

  if (*(a1 + 48) < 2.0 || (a2 & 1) != 0)
  {
    v10 = +[AXSettings sharedInstance];
    v11 = [v10 guidedAccessAllowsUnlockWithTouchID];

    v12 = *(a1 + 32);
    if (v11)
    {
      [v12 monitorForTouchID];
    }

    else
    {
      [v12 _showPasscodeViewForVerification:*(a1 + 56)];
    }
  }

  else
  {
    v5 = GAXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Show lockout duration alert.", buf, 2u);
    }

    v15[0] = @"alert text type";
    v6 = [NSNumber numberWithUnsignedInteger:0];
    v16[0] = v6;
    v16[1] = &__kCFBooleanTrue;
    v15[1] = @"alert is banner";
    v15[2] = @"alert is urgent";
    v16[2] = &__kCFBooleanFalse;
    v15[3] = @"alert remaining lockout duration";
    v7 = [NSNumber numberWithDouble:*(a1 + 48)];
    v16[3] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];

    v9 = [*(a1 + 32) userInterfaceClient];
    [v9 sendAsynchronousMessage:v8 withIdentifier:5 targetAccessQueue:0 completion:0];
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = v13;
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

void sub_1BA70(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 eventProcessor];
    [v6 beginHandlingSystemEventsForReason:@"GAX Active"];
  }

  else
  {
    [v5 _setTimeRestrictionHasExpired:0];
    v6 = [*(a1 + 32) eventProcessor];
    [v6 endHandlingSystemEventsForReason:@"GAX Active"];
  }

  v7 = [*(a1 + 32) appManager];
  v8 = *(a1 + 48);
  v9 = [*(a1 + 32) profileManager];
  v10 = [v9 shouldAllowMotion];
  v11 = [*(a1 + 32) profileManager];
  [v7 settingsDidChangeWithServerMode:v8 allowsMotion:v10 allowsKeyboardTextInput:{objc_msgSend(v11, "shouldAllowKeyboardTextInput")}];

  [*(a1 + 32) _updateMode:*(a1 + 48)];
  [*(a1 + 32) _updateDisablingSystemGesturesForMode:*(a1 + 48)];
  [*(a1 + 32) _disableSOSGesture:*(a1 + 48) != 0];
  memset(&v23[40], 0, 28);
  v12 = *(a1 + 32);
  if (v12)
  {
    [v12 gaxState];
  }

  v13 = +[AXSpringBoardServer server];
  v14 = *(a1 + 48);
  *v23 = *&v23[40];
  *&v23[12] = *&v23[52];
  [v13 gaxDidChangeMode:v14 shouldAcquireLockScreenAssertion:a2 gaxState:v23];

  v24[0] = @"gax backboard state";
  *v23 = *&v23[40];
  *&v23[12] = *&v23[52];
  v15 = serializeGAXBackboardState(v23);
  v25[0] = v15;
  v24[1] = @"time restriction did expire";
  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) _hasTimeRestrictionExpired]);
  v25[1] = v16;
  v24[2] = @"time restriction duration";
  v17 = [*(a1 + 32) profileManager];
  v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v17 appTimeoutDuration]);
  v25[2] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];

  v20 = [*(a1 + 32) userInterfaceClient];
  [v20 sendAsynchronousMessage:v19 withIdentifier:1 targetAccessQueue:0 completion:0];

  if ((*(a1 + 52) & 1) == 0)
  {
    v22 = *(a1 + 32);
    AXPerformBlockOnMainThreadAfterDelay();
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, 0);
  }
}

void sub_1BD90(uint64_t a1)
{
  v1 = [*(a1 + 32) userInterfaceClient];
  [v1 sendAsynchronousMessage:0 withIdentifier:21 targetAccessQueue:0 completion:0];
}

void sub_1BDE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (*(a1 + 32))
    {
      v4 = *(a1 + 40);
      v25[0] = 0;
      v5 = [v4 effectiveAppPrepareForTransitionToWorkspaceAndRetrieveRestrictionsInformation:v25];
      v6 = v25[0];
      if (v5)
      {
        (*(*(a1 + 72) + 16))(0.2);
      }

      else
      {
        v9 = [*(a1 + 48) timeRestrictionManager];
        [v9 cancel];

        v10 = +[AXSpringBoardServer server];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1C058;
        v17[3] = &unk_4D8F8;
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        v13 = *(a1 + 32);
        v23 = *(a1 + 88);
        v16 = *(a1 + 48);
        v14 = *(&v16 + 1);
        *&v15 = v12;
        *(&v15 + 1) = v13;
        v19 = v16;
        v18 = v15;
        v24 = *(a1 + 96);
        v20 = v3;
        v21 = v6;
        v22 = *(a1 + 80);
        [v10 isMediaPlayingForApp:v11 completionHandler:v17];
      }
    }

    else
    {
      (*(*(a1 + 72) + 16))(0.5);
    }
  }

  else
  {
    v7 = GAXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2B4E8();
    }

    v8 = *(a1 + 64);
    if (v8)
    {
      v25[1] = _NSConcreteStackBlock;
      v25[2] = 3221225472;
      v25[3] = sub_1C044;
      v25[4] = &unk_4CFB0;
      v26 = v8;
      AXPerformBlockAsynchronouslyOnMainThread();
    }
  }
}

void sub_1C058(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setEffectiveAppWasPlayingMedia:a2];
  v3 = +[AXSpringBoardServer server];
  [v3 pauseMediaForApp:*(a1 + 40)];

  if (*(*(*(a1 + 88) + 8) + 24) == 2)
  {
    v4 = [*(a1 + 48) timeRestrictionManager];
    [v4 pause];
  }

  v35 = 0;
  v5 = *(a1 + 40);
  [*(a1 + 48) _updateSessionAppWithIdentifier:v5 notifyUserInterfaceServer:0 sessionAppIdentifierDidChange:&v35];
  [*(a1 + 56) setActiveAppID:0];
  [*(a1 + 48) addReasonToBlockAllEvents:@"GAX transitioning to workspace"];
  v6 = [NSNumber numberWithUnsignedInteger:*(a1 + 96)];
  v7 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{v6, @"server mode for disabling telephony", 0}];
  v8 = GAXLogBlockedTouches();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 48) activeInterfaceOrientation];
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Transitioning into workspace, drawing interest area paths for orientation %d", buf, 8u);
  }

  v10 = [*(a1 + 48) profileManager];
  v11 = [v10 ignoredTouchRegionsForOrientation:{objc_msgSend(*(a1 + 48), "activeInterfaceOrientation")}];

  [v7 setValue:v11 forKey:@"interest area paths for storage"];
  if (v35 == 1)
  {
    if (v5)
    {
      v37 = v5;
      [NSArray arrayWithObjects:&v37 count:1];
    }

    else
    {
      [NSNumber numberWithBool:0];
    }
    v12 = ;
    [v7 setObject:v12 forKey:@"session application identifiers"];
  }

  v13 = [NSNumber numberWithUnsignedInt:*(*(*(a1 + 88) + 8) + 24)];
  [v7 setObject:v13 forKey:@"previous server mode"];

  v14 = [*(a1 + 48) profileManager];
  v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 appTimeoutDuration]);
  [v7 setValue:v15 forKey:@"time restriction duration"];

  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v14 timeRestrictionsEnabled]);
  [v7 setValue:v16 forKey:@"time restrictions enabled"];

  memset(buf, 0, 28);
  v17 = *(a1 + 48);
  if (v17)
  {
    [v17 gaxState];
  }

  *v34 = *buf;
  *&v34[12] = *&buf[12];
  v18 = serializeGAXBackboardState(v34);
  [v7 setValue:v18 forKey:@"gax backboard state"];

  v19 = [*(a1 + 64) sessionApplicationName];
  [v7 setValue:v19 forKey:@"application name"];

  v20 = [*(a1 + 64) archivedSessionApplicationIcon];
  [v7 setValue:v20 forKey:@"archived application icon"];

  v21 = [*(a1 + 72) objectForKey:@"GAXIPCPayloadKeyRestrictionIdentifiers"];
  if ([v21 count])
  {
    [v7 setObject:v21 forKey:@"restriction identifiers"];
    v22 = [v14 statesForRestrictionsWithIdentifiers:v21];
    [v7 setValue:v22 forKey:@"states for restrictions"];
    v23 = [*(a1 + 72) objectForKey:@"GAXIPCPayloadKeyTextsForRestrictions"];
    [v7 setValue:v23 forKey:@"texts for restrictions"];
    v24 = [*(a1 + 72) objectForKey:@"GAXIPCPayloadKeyDetailTextsForRestrictions"];
    [v7 setValue:v24 forKey:@"detail texts for restrictions"];
  }

  v25 = [*(a1 + 48) userInterfaceClient];
  v26 = +[AXAccessQueue mainAccessQueue];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1C5BC;
  v30[3] = &unk_4D8D0;
  v27 = *(a1 + 88);
  v28 = *(a1 + 48);
  v31 = v25;
  v32 = v28;
  v33 = v27;
  v29 = v25;
  [v29 sendAsynchronousMessage:v7 withIdentifier:8 targetAccessQueue:v26 completion:v30];

  (*(*(a1 + 80) + 16))();
}

void sub_1C5BC(void *a1)
{
  v2 = [NSNumber numberWithUnsignedInteger:*(*(a1[6] + 8) + 24)];
  v3 = [[NSDictionary alloc] initWithObjectsAndKeys:{v2, @"previous server mode", 0}];
  v4 = a1[4];
  v5 = +[AXAccessQueue mainAccessQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1C6C4;
  v6[3] = &unk_4D8A8;
  v6[4] = a1[5];
  [v4 sendAsynchronousMessage:v3 withIdentifier:9 targetAccessQueue:v5 completion:v6];
}

uint64_t sub_1C6E8(uint64_t a1)
{
  [*(a1 + 32) _transitionToMode:0 requireUserUnlock:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1C748(uint64_t a1, uint64_t a2)
{
  v6 = @"new passcode length";
  v3 = [NSNumber numberWithUnsignedInteger:a2];
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  v5 = [*(a1 + 32) userInterfaceClient];
  [v5 sendAsynchronousMessage:v4 withIdentifier:6 targetAccessQueue:0 completion:0];
}

void sub_1C834(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _persistInterestAreaPathsForStorageFromMessage:v3 forInterfaceOrientation:*(a1 + 72)];
  v4 = *(a1 + 32);
  v5 = [v3 objectForKey:@"interest area paths in screen coordinates"];
  v6 = [v4 _unarchivedIgnoredTouchRegionsWithDataArray:v5];

  v7 = +[AXAccessQueue mainAccessQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1CB84;
  v24[3] = &unk_4D050;
  v24[4] = *(a1 + 32);
  v8 = v6;
  v25 = v8;
  [v7 performAsynchronousWritingBlock:v24];

  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    v9 = +[AXSpringBoardServer server];
    v10 = [*(a1 + 40) effectiveAppBundleIdentifier];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1CBD8;
    v22[3] = &unk_4D6B8;
    v23 = *(a1 + 40);
    [v9 isMediaPlayingForApp:v10 completionHandler:v22];
  }

  v11 = [v3 objectForKey:@"states for restrictions"];
  if (v11)
  {
    v12 = [*(a1 + 32) profileManager];
    [v12 setStatesForRestrictions:v11];
  }

  if (([*(a1 + 32) _hasTimeRestrictionExpired] & 1) == 0)
  {
    v13 = +[AXSettings sharedInstance];
    [v13 setGuidedAccessTimeLimitsUsageCount:{objc_msgSend(v13, "guidedAccessTimeLimitsUsageCount") + 1}];

    v14 = [*(a1 + 32) timeRestrictionManager];
    v15 = [v14 isPaused];

    if (v15)
    {
      v16 = [*(a1 + 32) timeRestrictionManager];
      [v16 resume];
    }

    else
    {
      if (![*(a1 + 48) timeRestrictionsEnabled])
      {
        goto LABEL_11;
      }

      v16 = [*(a1 + 32) timeRestrictionManager];
      [v16 beginWithDuration:{objc_msgSend(*(a1 + 48), "appTimeoutDuration")}];
    }
  }

LABEL_11:
  v17 = [v3 objectForKey:@"requires complete hiding workspace message"];
  v18 = [v17 BOOLValue];

  if (v18)
  {
    v19 = *(a1 + 56);
    v20 = +[AXAccessQueue mainAccessQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1CBE4;
    v21[3] = &unk_4D8A8;
    v21[4] = *(a1 + 32);
    [v19 sendAsynchronousMessage:0 withIdentifier:11 targetAccessQueue:v20 completion:v21];
  }

  else
  {
    [*(a1 + 32) _didFinishTransitioningFromWorkspaceToSession];
  }
}

void sub_1CB84(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(a1 + 32) setIgnoredTouchRegions:*(a1 + 40)];
  v2 = GAXLogBlockedTouches();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_2B524(v1);
  }
}

void sub_1CC00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GAXLogBlockedTouches();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) activeInterfaceOrientation];
    *buf = 67109120;
    v14 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Transitioning out of Guided Access, storing interest area paths for orientation %d", buf, 8u);
  }

  v6 = [v3 objectForKey:@"interest area paths for storage"];
  [*(a1 + 40) setIgnoredTouchRegions:v6 forOrientation:{objc_msgSend(*(a1 + 32), "activeInterfaceOrientation")}];
  v7 = [v3 objectForKey:@"states for restrictions"];
  if (v7)
  {
    [*(a1 + 40) setStatesForRestrictions:v7];
  }

  v8 = [v3 objectForKey:@"requires complete hiding workspace message"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = *(a1 + 48);
    v11 = +[AXAccessQueue mainAccessQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1CDE8;
    v12[3] = &unk_4D8A8;
    v12[4] = *(a1 + 32);
    [v10 sendAsynchronousMessage:0 withIdentifier:13 targetAccessQueue:v11 completion:v12];
  }

  else
  {
    [*(a1 + 32) _didFinishTransitioningFromWorkspaceToApplication];
  }
}

void sub_1D03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D094(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if ((v1 & 0x40) != 0)
  {
    v2 = @"Call state is changing";
LABEL_8:
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    return;
  }

  if ((v1 & 0x80) != 0)
  {
    v2 = @"Making emergency call";
    goto LABEL_8;
  }

  if ((v1 & 0x20) != 0)
  {
    v2 = @"Mini alert is shwowing";
    goto LABEL_8;
  }
}

void sub_1D254(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = (v2 >> 9) & 1;
  v4 = (v2 >> 8) & 1;
  v5 = GAXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 67240448;
    LODWORD(v11[0]) = v3;
    WORD2(v11[0]) = 1026;
    *(v11 + 6) = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Determining if touches are ignored by override. verifyingIntegrity: %{public}d, allowedAppNotFound: %{public}d", &v10, 0xEu);
  }

  *(*(*(a1 + 40) + 8) + 24) = (v3 | v4) != 0;
  if (v3)
  {
    v6 = [*(*(a1 + 32) + 144) isVerifyingIntegrity];
    v7 = [*(*(a1 + 32) + 144) displayStringForOutcome:{objc_msgSend(*(*(a1 + 32) + 144), "mostRecentOutcome")}];
    v8 = GAXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67240192;
      LODWORD(v11[0]) = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Checking if verifier is processing event queue %{public}d", &v10, 8u);
    }

    v9 = GAXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11[0] = v7;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Checking most recent verification outcome %{public}@", &v10, 0xCu);
    }
  }
}

void sub_1D7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1D820(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 8);
  result = *(v1 + 16);
  *(v2 + 44) = *(v1 + 28);
  *(v2 + 32) = result;
  return result;
}

void sub_1DC84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (AXDeviceIsUnlocked())
  {
    v4 = [*(a1 + 32) _availabilityForRequestType:*(a1 + 40) springboardParameters:v3];
    if (v4)
    {
      v5 = v4;
      if (v4 == &dword_C + 1 || v4 == &dword_4 + 3)
      {
        v7 = 9;
      }

      else
      {
        v7 = 8;
      }

      if (v4 == &dword_8 + 1)
      {
        v7 = 10;
      }

      if (v4 == &dword_8 + 2)
      {
        v8 = 11;
      }

      else
      {
        v8 = v7;
      }

      v9 = GAXLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
        v11 = [*(a1 + 32) _errorMessageForAvailability:v5];
        *buf = 138543618;
        *&buf[4] = v10;
        *&buf[12] = 2114;
        *&buf[14] = v11;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Unable to make GAX active with request type: %{public}@ - %{public}@", buf, 0x16u);
      }

      v12 = *(a1 + 32);
      v13 = [v12 profileManager];
      v14 = [v13 timeRestrictionsEnabled];
      v15 = [*(a1 + 32) timeRestrictionManager];
      [v12 _showAlertWithTextType:v8 asBanner:0 isUrgent:0 timeRestrictionsEnabled:v14 remainingTime:{objc_msgSend(v15, "remainingTimeInSeconds")}];

      goto LABEL_33;
    }

    v22 = *(a1 + 40);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v35 = 0;
    v23 = *(a1 + 32);
    v24 = *(v23 + 8);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1E070;
    v33[3] = &unk_4D4B0;
    v33[4] = v23;
    v33[5] = buf;
    dispatch_sync(v24, v33);
    v25 = *(*&buf[8] + 24);
    if (v25 == 2)
    {
      if (v22 == 2)
      {
        goto LABEL_32;
      }

      v27 = [*(a1 + 32) profileManager];
      v28 = [v27 shouldAllowExit];

      if ((v28 & 1) == 0)
      {
        goto LABEL_32;
      }

      v26 = 1;
    }

    else if (v25 == 1)
    {
      if (v22 == 2)
      {
LABEL_32:
        _Block_object_dispose(buf, 8);
        goto LABEL_33;
      }

      v26 = 0;
    }

    else
    {
      v29 = *(a1 + 32);
      if (v22 != 2)
      {
        v30 = [*(a1 + 32) _shouldAllowDirectInactiveToActiveTransition];
        v29 = *(a1 + 32);
        if (!v30)
        {
          v26 = 1;
          goto LABEL_31;
        }
      }

      v31 = [*(a1 + 32) appManager];
      v32 = [v31 effectiveAppBundleIdentifier];
      [v29 _updateSessionAppWithIdentifier:v32];

      v26 = 2;
    }

    v29 = *(a1 + 32);
LABEL_31:
    [v29 _transitionToMode:v26];
    goto LABEL_32;
  }

  v16 = GAXLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
    *buf = 138543362;
    *&buf[4] = v17;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Unable to make GAX active with request type: %{public}@. Device is not keybag unlocked.", buf, 0xCu);
  }

  v18 = *(a1 + 32);
  v19 = [v18 profileManager];
  v20 = [v19 timeRestrictionsEnabled];
  v21 = [*(a1 + 32) timeRestrictionManager];
  [v18 _showAlertWithTextType:12 asBanner:0 isUrgent:0 timeRestrictionsEnabled:v20 remainingTime:{objc_msgSend(v21, "remainingTimeInSeconds")}];

LABEL_33:
}

void sub_1E050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E7B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = GAXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_2B650();
    }
  }

  [*(a1 + 32) _showAlertWithTextType:*(a1 + 40) asBanner:1 isUrgent:1 effectiveAppName:v3];
}

void sub_1E9B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v11 = @"application name";
    v12 = v3;
    v5 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  else
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_2B684(a1, v6);
    }

    v5 = &__NSDictionary0__struct;
  }

  v7 = [*(a1 + 40) userInterfaceClient];
  v8 = +[AXAccessQueue mainAccessQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1EB34;
  v9[3] = &unk_4DA60;
  v10 = *(a1 + 48);
  [v7 sendAsynchronousMessage:v5 withIdentifier:35 targetAccessQueue:v8 completion:v9];
}

void sub_1EB34(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = GAXLogIntegrity();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_2B700();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [a2 objectForKeyedSubscript:@"result"];
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v7 BOOLValue]);
  }
}

void sub_1F50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52)
{
  objc_destroyWeak((v52 + 104));
  objc_destroyWeak(&a52);
  objc_destroyWeak((v53 - 248));
  _Block_object_dispose((v53 - 240), 8);
  _Block_object_dispose((v53 - 208), 8);
  _Block_object_dispose((v53 - 176), 8);
  _Block_object_dispose((v53 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1F590(uint64_t a1, int a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [*(a1 + 32) setDisableSystemGesturesForASAMStartAssertion:0];
  if (a2 && *(a1 + 64) == 1)
  {
    [WeakRetained setEffectiveASAMStyle:*(*(*(a1 + 48) + 8) + 24)];
    v7 = [WeakRetained integrityVerifier];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1F6F4;
    v9[3] = &unk_4DAB0;
    v10 = *(a1 + 40);
    v12 = a2;
    v13 = a3;
    objc_copyWeak(&v11, (a1 + 56));
    [v7 verifyIntegrityWithEvent:19 afterDelay:v9 completion:1.0];

    objc_destroyWeak(&v11);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v8 = objc_loadWeakRetained((a1 + 56));
    [v8 setCheckingASAMValidity:0];
  }
}

void sub_1F6F4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 49);
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCheckingASAMValidity:0];
}

void sub_1F75C(uint64_t a1)
{
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    (*(*(a1 + 64) + 16))(*(a1 + 64));
LABEL_3:
    v2 = 0;
    goto LABEL_26;
  }

  if (*(a1 + 144) == 1)
  {
    if ((*(a1 + 145) & 1) == 0)
    {
      _AXAssert();
    }

    v3 = *(*(*(a1 + 80) + 8) + 24);
    if (v3 == 3)
    {
      v33 = GAXLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = *(a1 + 32);
        *buf = 138543362;
        v81 = v34;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "unmanaged self-locking to %{public}@ (internal style)", buf, 0xCu);
      }

      [*(a1 + 40) _updateSessionAppWithIdentifier:*(a1 + 32)];
      v35 = +[GAXSettings sharedInstance];
      [v35 setSelfLockUnmanaged:1];

      v36 = +[GAXSettings sharedInstance];
      [v36 setActiveAppSelfLocked:1];

      [*(a1 + 48) notifySelfLockStateDidChange];
      v37 = *(a1 + 48);
      v38 = [*(a1 + 56) objectForKeyedSubscript:&off_518C0];
      v39 = [*(a1 + 56) objectForKeyedSubscript:&off_518F0];
      [v37 applyUnmanagedSelfLockPropertiesMap:v38 managedConfigurationSettings:v39];

      v40 = *(a1 + 40);
      v41 = [v40 profileManager];
      v42 = [v41 isUserMode];
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_207C4;
      v62[3] = &unk_4DBA0;
      v43 = *(a1 + 80);
      v62[4] = *(a1 + 40);
      v64 = v43;
      v63 = *(a1 + 64);
      [v40 _transitionToMode:2 requireUserUnlock:v42 assumeUserInterfaceConnectionSevered:0 completion:v62];
    }

    else if (v3 == 1)
    {
      v22 = GAXLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        *buf = 138543362;
        v81 = v23;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "unmanaged self-locking to %{public}@ (AAC style)", buf, 0xCu);
      }

      v24 = *(a1 + 40);
      v25 = [v24 appManager];
      v26 = [v25 effectiveAppBundleIdentifier];
      v27 = *(a1 + 146);
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_200A8;
      v65[3] = &unk_4DB78;
      v72 = v27;
      v69 = *(a1 + 96);
      v58 = *(a1 + 40);
      v28 = *(a1 + 48);
      v73 = *(a1 + 144);
      v29 = *(a1 + 32);
      v30 = *(a1 + 56);
      *&v31 = v29;
      *(&v31 + 1) = v30;
      *&v32 = v58;
      *(&v32 + 1) = v28;
      v66 = v32;
      v67 = v31;
      objc_copyWeak(&v71, (a1 + 104));
      v70 = *(a1 + 80);
      v68 = *(a1 + 64);
      [v24 userConfirmUnmanagedASAMForAppWithBundleID:v26 requireConfirmation:v27 & 1 completion:v65];

      objc_destroyWeak(&v71);
    }

    else
    {
      if (v3)
      {
        v56 = *(*(*(a1 + 80) + 8) + 24);
        _AXAssert();
        (*(*(a1 + 64) + 16))(*(a1 + 64));
        goto LABEL_3;
      }

      v4 = GAXLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        *buf = 138543362;
        v81 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "vanilla self-locking to %{public}@", buf, 0xCu);
      }

      [*(a1 + 40) _updateSessionAppWithIdentifier:*(a1 + 32)];
      v6 = +[GAXSettings sharedInstance];
      [v6 setActiveAppSelfLocked:1];

      v7 = +[GAXSettings sharedInstance];
      [v7 setSelfLockUnmanaged:0];

      [*(a1 + 48) notifySelfLockStateDidChange];
      v8 = *(a1 + 40);
      v9 = [v8 profileManager];
      v10 = [v9 isUserMode];
      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v74[2] = sub_2002C;
      v74[3] = &unk_4DB00;
      v77 = *(a1 + 88);
      v57 = *(a1 + 32);
      v11 = v57.i64[0];
      v75 = vextq_s8(v57, v57, 8uLL);
      v12 = *(a1 + 128);
      v78 = *(a1 + 112);
      v79 = v12;
      v76 = *(a1 + 64);
      [v8 _transitionToMode:2 requireUserUnlock:v10 assumeUserInterfaceConnectionSevered:0 completion:v74];
    }
  }

  else
  {
    v13 = +[GAXSettings sharedInstance];
    if ([v13 selfLockUnmanaged] && objc_msgSend(v13, "isActiveAppSelfLocked") && objc_msgSend(*(a1 + 40), "effectiveASAMStyle") == &dword_0 + 1)
    {
      v14 = [*(a1 + 48) shouldShowUserConfirmationPromptsAndBanners];
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a1 + 40);
    v16 = [v15 profileManager];
    v17 = [v16 isUserMode];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_2081C;
    v59[3] = &unk_4DBC8;
    v18 = *(a1 + 64);
    v61 = v14;
    v59[4] = *(a1 + 40);
    v60 = v18;
    [v15 _transitionToMode:0 requireUserUnlock:v17 assumeUserInterfaceConnectionSevered:0 completion:v59];

    [*(a1 + 40) _removeUnmanagedSelfLockRestrictions];
    v19 = +[GAXSettings sharedInstance];
    [v19 setActiveAppSelfLocked:0];

    v20 = +[GAXSettings sharedInstance];
    [v20 setSelfLockUnmanaged:0];

    [*(a1 + 48) notifySelfLockStateDidChange];
    v21 = [*(a1 + 40) axFeatureManager];
    [v21 restoreAccessibilityFeatures];
  }

  v2 = 1;
LABEL_26:
  v44 = *(a1 + 144);
  v45 = GAXLogCommon();
  v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
  if (v44)
  {
    if (v46)
    {
      v47 = *(a1 + 32);
      v48 = *(*(*(a1 + 88) + 8) + 24);
      v49 = *(*(*(a1 + 80) + 8) + 24);
      v50 = [NSNumber numberWithBool:v2];
      v51 = [NSNumber numberWithUnsignedInt:*(*(*(a1 + 72) + 8) + 24)];
      v52 = [*(a1 + 40) _errorMessageForAvailability:*(*(*(a1 + 96) + 8) + 24)];
      *buf = 138544642;
      v81 = v47;
      v82 = 2048;
      v83 = v48;
      v84 = 2048;
      v85 = v49;
      v86 = 2114;
      v87 = v50;
      v88 = 2114;
      v89 = v51;
      v90 = 2114;
      v91 = v52;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "App:(%{public}@) asked to self-lock into gax. desired style: %ld effective style: %ld result:%{public}@ error:%{public}@ availability:%{public}@", buf, 0x3Eu);
    }
  }

  else if (v46)
  {
    v53 = *(a1 + 32);
    v54 = [NSNumber numberWithBool:v2];
    v55 = [NSNumber numberWithUnsignedInt:*(*(*(a1 + 72) + 8) + 24)];
    *buf = 138543874;
    v81 = v53;
    v82 = 2114;
    v83 = v54;
    v84 = 2114;
    v85 = v55;
    _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "App:(%{public}@) asked to remove self-lock. result:%{public}@ error:%{public}@", buf, 0x20u);
  }
}

uint64_t sub_2002C(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 80);
    v6[0] = *(a1 + 64);
    v6[1] = v4;
    if ([v2 appWithBundleIdentifier:v3 auditToken:v6 isAuthorizedForASAMStyle:1])
    {
      [*(a1 + 32) _applyUnmanagedSelfLockRestrictionsForStyle:1];
    }
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_200A8(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) _SBServerQueryForAvailabilitySBParameters];
  if (*(a1 + 96) == 1)
  {
    v5 = GAXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v22 = a2;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "User did confirm to begin AAC: %d", buf, 8u);
    }
  }

  v6 = +[AXSpringBoardServer server];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_20298;
  v12[3] = &unk_4DB50;
  v16 = *(a1 + 72);
  v11 = *(a1 + 32);
  v7 = *(&v11 + 1);
  v19 = *(a1 + 97);
  v8 = *(a1 + 48);
  v20 = a2;
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v13 = v11;
  v14 = v10;
  objc_copyWeak(&v18, (a1 + 88));
  v17 = *(a1 + 80);
  v15 = *(a1 + 64);
  [v6 systemAppInfoWithQuery:v4 completion:v12];

  objc_destroyWeak(&v18);
}

void sub_20298(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) _availabilityForRequestType:2 springboardParameters:v3];
  v4 = [*(a1 + 40) isAvailabilityValid:*(*(*(a1 + 72) + 8) + 24) forSelfLockAppToEnableGuidedAccess:*(a1 + 96)];
  v5 = GAXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(*(a1 + 72) + 8) + 24);
    v7 = [*(a1 + 32) appManager];
    v8 = [v7 effectiveAppBundleIdentifier];
    *buf = 67109634;
    v28 = v6;
    v29 = 1024;
    v30 = v4;
    v31 = 2114;
    v32 = v8;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "rechecked availability: %d. resulting error: %d. effective app is %{public}@ .", buf, 0x18u);
  }

  if (v4 || ([*(a1 + 32) appManager], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "effectiveAppBundleIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *(a1 + 48)), v10, v9, (*(a1 + 97) & v11 & 1) == 0))
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    [*(a1 + 32) _updateSessionAppWithIdentifier:*(a1 + 48)];
    v12 = +[GAXSettings sharedInstance];
    [v12 setSelfLockUnmanaged:1];

    v13 = +[GAXSettings sharedInstance];
    [v13 setActiveAppSelfLocked:1];

    [*(a1 + 40) notifySelfLockStateDidChange];
    v14 = *(a1 + 40);
    v15 = [*(a1 + 56) objectForKeyedSubscript:&off_518C0];
    v16 = [*(a1 + 56) objectForKeyedSubscript:&off_518F0];
    [v14 applyUnmanagedSelfLockPropertiesMap:v15 managedConfigurationSettings:v16];

    v17 = *(a1 + 32);
    v18 = [v17 profileManager];
    v19 = [v18 isUserMode];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_205C8;
    v22[3] = &unk_4DB28;
    v22[4] = *(a1 + 32);
    objc_copyWeak(&v26, (a1 + 88));
    v20 = *(a1 + 40);
    v21 = *(a1 + 80);
    v23 = v20;
    v25 = v21;
    v24 = *(a1 + 64);
    [v17 _transitionToMode:2 requireUserUnlock:v19 assumeUserInterfaceConnectionSevered:0 completion:v22];

    objc_destroyWeak(&v26);
  }
}

void sub_205C8(uint64_t a1)
{
  v2 = [*(a1 + 32) unmanagedASAMFailsafeTimer];
  v3 = _NSConcreteStackBlock;
  v4 = 3221225472;
  v5 = sub_206D8;
  v6 = &unk_4D528;
  objc_copyWeak(&v8, (a1 + 64));
  v7 = *(a1 + 40);
  [v2 afterDelay:&v3 processBlock:28800.0];

  [*(a1 + 32) _applyUnmanagedSelfLockRestrictionsForStyle:{*(*(*(a1 + 56) + 8) + 24), v3, v4, v5, v6}];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) _showUnmanagedASAMBeganBanner];

  objc_destroyWeak(&v8);
}

void sub_206D8(uint64_t a1)
{
  v2 = +[GAXSettings sharedInstance];
  v3 = [v2 selfLockUnmanaged];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _transitionToMode:0 requireUserUnlock:0 assumeUserInterfaceConnectionSevered:0];

    v5 = +[GAXSettings sharedInstance];
    [v5 setActiveAppSelfLocked:0];

    v6 = +[GAXSettings sharedInstance];
    [v6 setSelfLockUnmanaged:0];

    [*(a1 + 32) notifySelfLockStateDidChange];
    v7 = objc_loadWeakRetained((a1 + 40));
    [v7 _showUnmanagedASAMTimedOutBanner];
  }
}

uint64_t sub_207C4(uint64_t a1)
{
  [*(a1 + 32) _applyUnmanagedSelfLockRestrictionsForStyle:*(*(*(a1 + 48) + 8) + 24)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

id sub_2081C(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _showUnmanagedASAMEndedBanner];
  }

  return result;
}

uint64_t sub_20880(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _availabilityForRequestType:2 springboardParameters:a2];
  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 40) isAvailabilityValid:*(*(*(a1 + 56) + 8) + 24) forSelfLockAppToEnableGuidedAccess:*(a1 + 72)];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

BOOL sub_20D50(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 validateClass:@"AXBHomeClickController" hasClassMethod:@"controller" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"AXBHomeClickController" hasInstanceVariable:@"_isAlertVisible" withType:"B"];
  [(AXValidationManager *)v2 validateClass:@"FBSDisplayLayoutElement" hasInstanceVariable:@"_application" withType:"B"];
  [(AXValidationManager *)v2 validateClass:@"FBSDisplayLayoutElement" hasInstanceVariable:@"_bundleIdentifier" withType:"NSString"];
  [(AXValidationManager *)v2 validateClass:@"BKSystemShellSentinel"];
  [(AXValidationManager *)v2 validateClass:@"BKSystemShellSentinel" hasClassMethod:@"sharedInstance" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"BKSystemShellSentinel" hasInstanceVariable:@"_lock_systemAppBlocked" withType:"B"];
  objc_opt_class();
  [(AXValidationManager *)v2 validateClass:@"BKSystemShellSentinel" hasInstanceVariable:@"_lock" withType:__ax_verbose_encode_with_type_encoding_group_class()];

  return 1;
}

BOOL sub_20E88(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"GAX Backboard"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"Guided Access Backboard"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void sub_20EEC(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 installSafeCategory:@"GAXBKAccelerometerInterfaceAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXBKSystemShellSentinelAccessibility" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXBKOrientationManagerAccessibility" canInteractWithTargetClass:1];
}

void sub_2134C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if ([a3 integerValue] == &dword_0 + 1)
  {
    v5 = [*(a1 + 32) appManager];
    [v5 effectiveAppRestrictionWithIdentifier:v6 didChangeState:0];
  }
}

void sub_213C4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if (![a3 integerValue])
  {
    v5 = [*(a1 + 32) appManager];
    [v5 effectiveAppRestrictionWithIdentifier:v6 didChangeState:0];
  }
}

void sub_2150C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [*(a1 + 32) effectiveAppRestrictionWithIdentifier:v5 didChangeState:{objc_msgSend(a3, "integerValue")}];
}

void sub_2164C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 integerValue] == &dword_0 + 1)
  {
    [*(a1 + 32) effectiveAppRestrictionWithIdentifier:v5 didChangeState:1];
  }
}

void sub_21D5C(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"passcode view was visible"];
  v4 = [v3 BOOLValue];

  v5 = GAXLogCommon();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Tried to show passcode view, but it was already visible!", buf, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Passcode view was shown.", buf, 2u);
    }

    [*(a1 + 32) setDesiredModeAfterSuccessfulPasscodeEntry:*(a1 + 40)];
    v5 = +[AXSpringBoardServer server];
    v7 = [*(a1 + 32) appManager];
    v8 = [v7 effectiveAppBundleIdentifier];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_21ED0;
    v9[3] = &unk_4D6B8;
    v9[4] = *(a1 + 32);
    [v5 isMediaPlayingForApp:v8 completionHandler:v9];
  }
}

void sub_21ED0(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) appManager];
  [v4 setEffectiveAppWasPlayingMedia:a2];

  v7 = +[AXSpringBoardServer server];
  v5 = [*(a1 + 32) appManager];
  v6 = [v5 effectiveAppBundleIdentifier];
  [v7 pauseMediaForApp:v6];
}

void sub_21FE4(uint64_t a1)
{
  v1 = [*(a1 + 32) userInterfaceClient];
  [v1 sendAsynchronousMessage:0 withIdentifier:40 targetAccessQueue:0 completion:0];
}

void sub_22204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2222C(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = (*(*(result + 32) + 40) & 0x10) != 0;
  *(*(result + 32) + 40) = *(*(result + 32) + 40) & 0xFFFFFFEF | (16 * (*(result + 48) & 1));
  return result;
}

void sub_224B4(uint64_t a1)
{
  [*(a1 + 32) _setTimeRestrictionHasExpired:1];
  v2 = [*(a1 + 32) userInterfaceClient];
  v13 = @"time restriction duration";
  v3 = [*(a1 + 32) profileManager];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 appTimeoutDuration]);
  v14 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v6 = +[AXAccessQueue mainAccessQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_226D8;
  v12[3] = &unk_4D8A8;
  v12[4] = *(a1 + 32);
  [v2 sendAsynchronousMessage:v5 withIdentifier:29 targetAccessQueue:v6 completion:v12];

  v7 = +[AXSpringBoardServer server];
  v8 = [*(a1 + 32) appManager];
  v9 = [v8 effectiveAppBundleIdentifier];
  [v7 pauseMediaForApp:v9];

  v10 = dispatch_time(0, 200000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_22724;
  block[3] = &unk_4C958;
  block[4] = *(a1 + 32);
  dispatch_after(v10, &_dispatch_main_q, block);
}

void sub_226D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = [*(a1 + 32) eventProcessor];
    [v4 cancelCurrentTouches];
  }
}

void sub_22724(uint64_t a1)
{
  v3 = [*(a1 + 32) appManager];
  if (([v3 effectiveAppIsHostedByTheSystemApp] & 1) == 0)
  {
    v2 = [*(a1 + 32) _hasTimeRestrictionExpired];

    if (!v2)
    {
      return;
    }

    v3 = [*(a1 + 32) appManager];
    [v3 suspendEffectiveApp];
  }
}

uint64_t sub_22A58(uint64_t a1, int a2, int a3)
{
  result = AXSessionIsLoginSession();
  if ((a2 & a3 & 1) == 0 && (result & 1) == 0)
  {
    [*(a1 + 32) _updateSessionAppForSingleAppMode];
    [*(a1 + 32) _notifyOfGAXBackboardStateChange];
    v7 = [*(a1 + 32) integrityVerifier];
    [v7 verifyIntegrityWithEvent:13];

    v8 = *(a1 + 32);

    return [v8 _applyDeniedStatesForRestrictions];
  }

  return result;
}

uint64_t sub_22BA8(uint64_t a1, int a2, int a3)
{
  result = AXSessionIsLoginSession();
  if ((a2 & a3 & 1) == 0 && (result & 1) == 0)
  {
    [*(a1 + 32) _updateSessionAppForSingleAppMode];
    [*(a1 + 32) _notifyOfGAXBackboardStateChange];
    v7 = [*(a1 + 32) integrityVerifier];
    [v7 verifyIntegrityWithEvent:14];

    v8 = *(a1 + 32);

    return [v8 _applyDeniedStatesForRestrictions];
  }

  return result;
}

id sub_22D3C(uint64_t a1)
{
  [*(a1 + 32) _transitionToMode:0 requireUserUnlock:0];
  [*(a1 + 32) _updateRestrictedState:0];
  v2 = *(a1 + 32);

  return [v2 setShouldStartSessionUponFrontmostAppChanged:0];
}

void sub_23040(uint64_t a1)
{
  v2 = +[GAXSettings sharedInstance];
  [v2 setActiveAppSelfLocked:0];

  [*(a1 + 32) _transitionToMode:0 requireUserUnlock:0];
  [*(a1 + 32) _updateRestrictedState:0];
  v3 = [*(a1 + 32) axFeatureManager];
  [v3 restoreAccessibilityFeatures];
}

void sub_231C0(uint64_t a1)
{
  v2 = [*(a1 + 32) profileManager];
  v3 = [v2 isUserMode];

  if (v3)
  {
    v4 = [*(a1 + 32) substantialTransitionTimer];

    if (!v4)
    {
      v5 = [AXAccessQueueTimer alloc];
      v6 = +[AXAccessQueue mainAccessQueue];
      v7 = [v5 initWithTargetAccessQueue:v6];
      [*(a1 + 32) setSubstantialTransitionTimer:v7];
    }

    v8 = [*(a1 + 32) substantialTransitionTimer];
    [v8 cancel];

    v9 = [*(a1 + 32) substantialTransitionTimer];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_232F4;
    v10[3] = &unk_4C958;
    v10[4] = *(a1 + 32);
    [v9 afterDelay:v10 processWritingBlock:1.0];
  }
}

void sub_232F4(uint64_t a1)
{
  v2 = GAXLogIntegrity();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_2B9F4();
  }

  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = [v4 integrityVerifier];
  v6 = [v5 isVerifyingIntegrity];

  if (v6)
  {
    v7 = GAXLogIntegrity();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_2BA28(v3);
    }
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v8 = *v3;
    v9 = *(*v3 + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_234BC;
    block[3] = &unk_4D4B0;
    block[4] = v8;
    block[5] = &v13;
    dispatch_sync(v9, block);
    if (*(v14 + 6) > 1u)
    {
      v10 = [*v3 integrityVerifier];
      [v10 verifyIntegrityWithEvent:15];
    }

    else
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_234D0;
      v11[3] = &unk_4C958;
      v11[4] = *v3;
      dispatch_async(&_dispatch_main_q, v11);
    }

    _Block_object_dispose(&v13, 8);
  }
}

void sub_234D0(uint64_t a1)
{
  v2 = [*(a1 + 32) appManager];
  v4 = [v2 effectiveAppBundleIdentifier];

  [*(a1 + 32) _updateSessionAppWithIdentifier:v4];
  v3 = [*(a1 + 32) integrityVerifier];
  [v3 verifyIntegrityWithEvent:15];
}

void sub_23A24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [v2 profileManager];
  v3 = [v5 timeRestrictionsEnabled];
  v4 = [*(a1 + 32) timeRestrictionManager];
  [v2 _showAlertWithTextType:1 asBanner:1 isUrgent:0 timeRestrictionsEnabled:v3 remainingTime:{objc_msgSend(v4, "remainingTimeInSeconds")}];
}

void sub_247FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) parameters];
  v2 = [v3 objectForKeyedSubscript:@"passcode"];
  [v1 _setPasscode:v2];
}

id sub_24868(uint64_t a1)
{
  v2 = [*(a1 + 32) profileManager];
  [v2 updateProperty:@"GAXProfileAllowsKeyboardTextInput" withValue:*(a1 + 40)];

  result = *(a1 + 32);
  if (result)
  {
    result = [result gaxState];
    if (v4)
    {
      return [*(a1 + 32) _handleUpdateGAXClientState];
    }
  }

  return result;
}

void sub_248D8(uint64_t a1, uint64_t a2)
{
  v3 = [NSNumber numberWithBool:a2];
  [*(a1 + 32) setResult:v3];

  v4 = [*(a1 + 32) data];
  (*(*(a1 + 40) + 16))();
}

void sub_24DF4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_24E2C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_24F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24FAC(uint64_t a1)
{
  v2 = GAXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Got layout monitor transition.", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_25080;
  block[3] = &unk_4DDF0;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v4);
}

void sub_25080(uint64_t a1)
{
  v2 = GAXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Now updating for layout monitor transition.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateManagedAppState:1];
}

void sub_25384(uint64_t a1)
{
  v2 = +[AXSpringBoardServer server];
  v3 = [v2 focusedApps];

  v6 = *(a1 + 40);
  v5 = *(a1 + 32);
  v4 = v3;
  AXPerformBlockAsynchronouslyOnMainThread();
}

void sub_25448(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v2 = [*(a1 + 32) managedApps];
    v3 = [v2 countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v54;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v54 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v53 + 1) + 8 * i) setLayoutRole:0];
        }

        v4 = [v2 countByEnumeratingWithState:&v53 objects:v65 count:16];
      }

      while (v4);
    }
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v64 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    do
    {
      for (j = 0; j != v9; j = j + 1)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v49 + 1) + 8 * j);
        v13 = *(a1 + 32);
        v14 = [v12 bundleIdentifier];
        v15 = [v13 _appWithBundleIdentifier:v14];

        v16 = *(a1 + 32);
        if (v15)
        {
          [v16 _updateGAXApp:v15 fromAXApp:v12];
        }

        else if ([v16 _axAppIsValidGAXApp:v12])
        {
          v17 = [*(a1 + 32) managedApps];
          v18 = [*(a1 + 32) _makeGAXAppFromAXApp:v12];
          [v17 addObject:v18];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v49 objects:v64 count:16];
    }

    while (v9);
  }

  v19 = [*(a1 + 32) appLayoutMonitor];
  v20 = [v19 currentLayout];
  v21 = [v20 elements];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v21;
  v22 = [obj countByEnumeratingWithState:&v45 objects:v63 count:16];
  if (!v22)
  {
    v25 = 0;
    goto LABEL_65;
  }

  v24 = v22;
  v25 = 0;
  v26 = *v46;
  *&v23 = 138412290;
  v43 = v23;
  do
  {
    v27 = 0;
    do
    {
      if (*v46 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v45 + 1) + 8 * v27);
      v29 = [v28 identifier];
      if ([v28 isUIApplicationElement])
      {
        [v28 bundleIdentifier];
      }

      else
      {
        [*(a1 + 32) _bundleIdentifierFromLayoutIdentifier:v29];
      }
      v30 = ;
      v31 = v30;
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = v29;
      }

      v33 = v32;

      v34 = [v28 layoutRole];
      v35 = GAXLogCommon();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v58 = v29;
        v59 = 2112;
        v60 = v33;
        v61 = 2048;
        v62 = v34;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "Layout ID: %@ Bundle ID: %@ Role: %ld", buf, 0x20u);
      }

      if (v29)
      {
        v36 = [*(a1 + 32) _appWithBundleIdentifier:v33];
        if (!v36)
        {
          v36 = [[_GAXAppRepresentation alloc] initWithDelegate:*(a1 + 32)];
          [(_GAXAppRepresentation *)v36 setPid:0xFFFFFFFFLL];
          [(_GAXAppRepresentation *)v36 setBundleIdentifier:v33];
          if ([*(a1 + 32) _axAppIsValidGAXApp:v36])
          {
            v37 = [*(a1 + 32) managedApps];
            [v37 addObject:v36];
          }
        }

        if (v25 && ([v33 isEqualToString:v25] & 1) != 0)
        {
          v38 = GAXLogCommon();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            v58 = v34;
            v59 = 2112;
            v60 = v33;
            _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "Found app with both primary role and role %ld: %@", buf, 0x16u);
          }
        }

        else
        {
          [(_GAXAppRepresentation *)v36 setLayoutRole:v34];
          if ([(_GAXAppRepresentation *)v36 layoutRole]!= &dword_0 + 1)
          {
            goto LABEL_58;
          }

          if (qword_59620 == -1)
          {
            if (!v25)
            {
              goto LABEL_57;
            }
          }

          else
          {
            sub_2BC6C();
            if (!v25)
            {
              goto LABEL_57;
            }
          }

          if (([qword_59618 containsObject:v25] & 1) == 0 && !objc_msgSend(qword_59618, "containsObject:", v33))
          {
            v40 = GAXLogCommon();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v58 = v25;
              v59 = 2112;
              v60 = v33;
              _os_log_fault_impl(&dword_0, v40, OS_LOG_TYPE_FAULT, "Unexpectedly found two app bundle identifiers that were primary, %@ and %@", buf, 0x16u);
            }

LABEL_57:
            v41 = v33;

            v25 = v41;
            goto LABEL_58;
          }

          v39 = GAXLogCommon();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v58 = v25;
            v59 = 2112;
            v60 = v33;
            _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "Primary role found for both %@ and %@", buf, 0x16u);
          }

          if ([qword_59618 containsObject:v25])
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        v36 = GAXLogCommon();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = v43;
          v58 = v28;
          _os_log_error_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "Did not expect layoutElement to have a nil identifier: %@", buf, 0xCu);
        }
      }

LABEL_58:

      v27 = v27 + 1;
    }

    while (v24 != v27);
    v42 = [obj countByEnumeratingWithState:&v45 objects:v63 count:16];
    v24 = v42;
  }

  while (v42);
LABEL_65:
}

void sub_25AC4(id a1)
{
  v4[0] = SBSDisplayLayoutElementHomeScreenIdentifier;
  v4[1] = SBSDisplayLayoutElementAppSwitcherIdentifier;
  v1 = [NSArray arrayWithObjects:v4 count:2];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_59618;
  qword_59618 = v2;
}

void sub_25EBC(id a1)
{
  v4[0] = @"com.apple.lock-screen";
  v4[1] = @"com.apple.Siri";
  v4[2] = SBSDisplayLayoutElementTodayViewIdentifier;
  v4[3] = SBSDisplayLayoutElementAppLibraryIdentifier;
  v4[4] = SBSDisplayLayoutElementAppLibraryOpenPodIdentifier;
  v4[5] = SBSDisplayLayoutElementHomeScreenOpenFolderIdentifier;
  v4[6] = @"com.apple.shortcuts.runtime";
  v1 = [NSArray arrayWithObjects:v4 count:7];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_59628;
  qword_59628 = v2;
}

BOOL sub_25FAC(id a1, FBSDisplayLayoutElement *a2, NSDictionary *a3)
{
  v3 = [(FBSDisplayLayoutElement *)a2 identifier];
  v4 = [qword_59628 containsObject:v3];

  return v4 ^ 1;
}

void sub_26588(uint64_t a1, uint64_t a2)
{
  v4 = GAXLogIntegrity();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [NSNumber numberWithInt:a2];
    *buf = 138543362;
    v19 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Monitoring PurpleBuddy PID: %{public}@", buf, 0xCu);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_267F8;
  v17[3] = &unk_4C958;
  v17[4] = *(a1 + 32);
  v6 = objc_retainBlock(v17);
  v7 = dispatch_get_global_queue(0, 0);
  v8 = [*(a1 + 32) purpleBuddyPIDMonitor];

  if (a2 < 1 || v8)
  {
    if (a2 == -1)
    {
      v12 = GAXLogIntegrity();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Asked to monitor PurpleBuddy, but by the time we tried to get its PID, it had terminated.", buf, 2u);
      }

      dispatch_async(v7, v6);
    }
  }

  else
  {
    v9 = dispatch_source_create(&_dispatch_source_type_proc, a2, 0x80000000uLL, v7);
    [*(a1 + 32) setPurpleBuddyPIDMonitor:v9];
    if (v9)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_26A08;
      v13[3] = &unk_4DEC0;
      v16 = v6;
      v10 = v9;
      v11 = *(a1 + 32);
      v14 = v10;
      v15 = v11;
      dispatch_source_set_event_handler(v10, v13);
      dispatch_resume(v10);
    }
  }
}

uint64_t sub_267F8(uint64_t a1)
{
  v2 = CFPreferencesAppSynchronize(@"com.apple.purplebuddy");
  keyExistsAndHasValidFormat = v2;
  if (!v2)
  {
    v3 = GAXLogIntegrity();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_2BCE8();
    }
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SetupDone", @"com.apple.purplebuddy", &keyExistsAndHasValidFormat);
  v5 = AppBooleanValue;
  if (keyExistsAndHasValidFormat)
  {
    if (AppBooleanValue)
    {
LABEL_7:
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_269AC;
      v14 = &unk_4C958;
      v15 = *(a1 + 32);
      return AXPerformBlockAsynchronouslyOnMainThread();
    }
  }

  else
  {
    v7 = GAXLogIntegrity();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2BD28();
    }

    if (v5)
    {
      goto LABEL_7;
    }
  }

  v8 = GAXLogIntegrity();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "buddy did not appear to exit cleanly. will monitor for new instance", buf, 2u);
  }

  v9 = *(a1 + 32);
  return AXPerformBlockOnMainThreadAfterDelay();
}

void sub_269AC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 purpleBuddyDidTerminateWithAppManager:*(a1 + 32)];
}

id sub_26A08(uint64_t a1)
{
  v2 = GAXLogIntegrity();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Did get nod that purpleBuddy terminated. Verifying Guided Access now", v4, 2u);
  }

  (*(*(a1 + 48) + 16))();
  dispatch_source_cancel(*(a1 + 32));
  return [*(a1 + 40) setPurpleBuddyPIDMonitor:0];
}

void sub_28264(id a1)
{
  v4 = @"com.apple.shortcuts.runtime";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_59638;
  qword_59638 = v2;
}

void sub_29994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_299BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GAXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained appClient];
    v4 = [v3 pid];
    v5 = [WeakRetained bundleIdentifier];
    v6[0] = 67109378;
    v6[1] = v4;
    v7 = 2112;
    v8 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Port death handler called for pid %i, identifier %@", v6, 0x12u);
  }

  [WeakRetained handleDeath];
}

void sub_29E94(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Backboard Server could not start its message server: %{public}@", &v2, 0xCu);
}

void sub_29FDC(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 isRestoring];
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Did finish updating AX Settings. Was restoring: %ld", &v3, 0xCu);
}

void sub_2A080(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "No fallback value was registered for profile key: %@", &v2, 0xCu);
}

void sub_2A260(NSObject *a1)
{
  v2 = [NSNumber numberWithUnsignedInteger:0];
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_0, a1, OS_LOG_TYPE_FAULT, "Did not understand outcome: %@", &v3, 0xCu);
}

void sub_2A3AC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v2, 0xCu);
}

void sub_2A53C(void *a1)
{
  v1 = [a1 settingsStorage];
  sub_BEEC();
  sub_BEF8(&dword_0, v2, v3, "Cannot write out GAX state. Its not valid json: %{public}@", v4, v5, v6, v7, v8);
}

void sub_2A690()
{
  v0 = __error();
  strerror(*v0);
  sub_BEEC();
  sub_BEF8(&dword_0, v1, v2, "failed to F_FULLSYNC GAX state directory: %{public}s", v3, v4, v5, v6, v7);
}

void sub_2A710()
{
  v0 = __error();
  strerror(*v0);
  sub_BEEC();
  sub_BEF8(&dword_0, v1, v2, "Failed to open GAX state directory: %{public}s", v3, v4, v5, v6, v7);
}

void sub_2A790()
{
  v0 = __error();
  strerror(*v0);
  sub_BEEC();
  sub_BEF8(&dword_0, v1, v2, "Failed to open GAX State file. errno: %{public}s", v3, v4, v5, v6, v7);
}

void sub_2A88C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 fastStorage];
  v6 = [v5 activeAppID];
  sub_BEEC();
  v8 = 2114;
  v9 = a2;
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "Updated persisted appID. %{public}@ --> %{public}@", v7, 0x16u);
}

void sub_2AB84(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "%{public}@", &v3, 0xCu);
}

void sub_2AD10(uint64_t a1)
{
  *(*a1 + 24);
  sub_24DE8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_2AE54()
{
  sub_BEEC();
  sub_75D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2AEC4()
{
  sub_BEEC();
  sub_24DE8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2AF68()
{
  sub_BEEC();
  sub_75D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2AFD8()
{
  sub_BEEC();
  sub_75D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2B048()
{
  sub_4374();
  sub_75D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_2B084(void *a1)
{
  v2 = [a1 effectiveAppBundleIdentifier];
  v3 = [a1 sessionAppBundleIdentifiers];
  sub_24E20();
  sub_24E10();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_2B13C()
{
  sub_4374();
  sub_75D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_2B178(uint64_t a1)
{
  v1 = *(a1 + 40);
  [*(a1 + 32) appLaunchGeneration];
  sub_24E20();
  sub_24E10();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_2B208(uint64_t a1, uint64_t a2)
{
  v3 = 134218242;
  v4 = a2;
  sub_24E20();
  _os_log_error_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "Unknown message from server: %lu %@", &v3, 0x16u);
}

void sub_2B2C0(void *a1, NSObject *a2)
{
  v4 = [a1 appManager];
  v5 = [v4 sessionAppBundleIdentifiers];
  v6 = [a1 profileManager];
  v7 = [v6 singleAppModeAppID];
  v8 = 138543618;
  v9 = v5;
  sub_24E20();
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Wanted single app mode, but the app manager's session apps %{public}@ did not contain the profile manager's single app mode app %{public}@. attempting to recover...", &v8, 0x16u);
}

void sub_2B3A8()
{
  sub_BEEC();
  sub_75D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2B418()
{
  sub_BEEC();
  sub_75D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2B4E8()
{
  sub_4374();
  sub_75D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_2B524(id *a1)
{
  v1 = [*a1 ignoredTouchRegions];
  sub_BEEC();
  sub_24E2C(&dword_0, v2, v3, "setting ignored touch regions in screen coordinates:\n%@", v4, v5, v6, v7, v8);
}

void sub_2B5E0()
{
  sub_BEEC();
  sub_24DE8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2B684(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Could not get app name for %{public}@ appID for confirmation prompt", &v3, 0xCu);
}

void sub_2B700()
{
  sub_BEEC();
  sub_75D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2B770()
{
  sub_BEEC();
  sub_75D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2B814(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "AX_CGPathCreateWithDataRepresentation returned a NULL value for ignoredPaths", buf, 2u);
}

void sub_2BA28(id *a1)
{
  v1 = [*a1 integrityVerifier];
  [v1 isVerifyingIntegrity];
  sub_24E2C(&dword_0, v2, v3, "Got substantial transition note, but already verifying integrity:%ld, so bailing", v4, v5, v6, v7, 0);
}

void sub_2BAC0()
{
  sub_BEEC();
  sub_75D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2BB30()
{
  sub_BEEC();
  sub_24DE8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2BBA0(void *a1)
{
  v1 = [a1 errorMessage];
  sub_BEEC();
  sub_24E10();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_2BC30()
{
  sub_4374();
  sub_75D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_2BD90(void *a1)
{
  v1 = [a1 bundleIdentifier];
  sub_BEEC();
  sub_BEF8(&dword_0, v2, v3, "GAX: Killing process: %{public}@", v4, v5, v6, v7, v8);
}

void sub_2BE14()
{
  sub_BEEC();
  sub_75D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2BE84(void *a1, NSObject *a2)
{
  v4 = [a1 bundleIdentifier];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a1 pid]);
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Cannot set up GAX client connection to %{public}@. PID not valid: %{public}@", &v6, 0x16u);
}

void sub_2BF60()
{
  v0 = +[NSThread callStackSymbols];
  sub_BEEC();
  sub_BEF8(&dword_0, v1, v2, "%{public}@", v3, v4, v5, v6, v7);
}

void sub_2BFF0()
{
  sub_BEEC();
  sub_75D4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2C060()
{
  v0 = +[NSThread callStackSymbols];
  sub_BEEC();
  sub_BEF8(&dword_0, v1, v2, "%{public}@", v3, v4, v5, v6, v7);
}