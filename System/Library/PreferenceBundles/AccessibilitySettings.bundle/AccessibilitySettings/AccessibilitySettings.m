void sub_5F40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void _accessibilityiTunesSettings(uint64_t a1, void *a2)
{
  if (a2)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:a2 selector:"handleReloadSpecifiers" object:0];

    [a2 performSelector:"handleReloadSpecifiers" withObject:0 afterDelay:0.5];
  }
}

id _handleContinuityDisplayStateChanged(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 performSelector:"_updateFaceIDAndAttentionPaneForOneness" withObject:0 afterDelay:0.0];
  }

  return result;
}

void sub_6110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_61F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getTTSVBUILoaderClass_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  if (!TextToSpeechVoiceBankingUILibraryCore_frameworkLibrary)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = __TextToSpeechVoiceBankingUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = off_255618;
    v6 = 0;
    TextToSpeechVoiceBankingUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (TextToSpeechVoiceBankingUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("TTSVBUILoader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTTSVBUILoaderClass_block_invoke_cold_1();
  }

  getTTSVBUILoaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TextToSpeechVoiceBankingUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TextToSpeechVoiceBankingUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_BBF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id _reloadSettingsSpeakingRate(uint64_t a1, void *a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  result = [a2 lastSpeechRateAdjustmentTime];
  if (Current - v5 > 0.5)
  {

    return [a2 reload];
  }

  return result;
}

id _handleContinuityDisplayStateChanged_0(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 performSelector:"_updateTutorialButtonForOneness" withObject:0 afterDelay:0.0];
  }

  return result;
}

void sub_C1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_D9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_DB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1227C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

id AXSettingsBundle()
{
  v0 = AXSettingsBundle_AXBundle;
  if (!AXSettingsBundle_AXBundle)
  {
    v1 = [NSBundle bundleForClass:AXSafeClassFromString()];
    v2 = AXSettingsBundle_AXBundle;
    AXSettingsBundle_AXBundle = v1;

    v0 = AXSettingsBundle_AXBundle;
  }

  return v0;
}

id settingsLocStringTopTouchIDButton(void *a1)
{
  v1 = a1;
  v2 = AXSettingsBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"Accessibility-TopButton"];

  return v3;
}

id settingsLocString(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = AXSettingsBundle();
  v6 = [v5 localizedStringForKey:v4 value:v4 table:v3];

  return v6;
}

id hoverTextActivationKeyLocString(uint64_t a1)
{
  v1 = @"HOVER_TEXT_ACITVATOR_KEY_COMMAND";
  if (a1 == 1)
  {
    v1 = @"HOVER_TEXT_ACITVATOR_KEY_OPTION";
  }

  if (a1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"HOVER_TEXT_ACITVATOR_KEY_CONTROL";
  }

  v3 = settingsLocString(v2, @"Accessibility");

  return v3;
}

id hoverTextDisplayModeLocString(unint64_t a1)
{
  if (a1 > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = settingsLocString(off_255908[a1], @"Accessibility");
  }

  return v2;
}

id hoverTextScrollingSpeedLocString(unint64_t a1)
{
  if (a1 > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = settingsLocString(off_255930[a1], @"Accessibility");
  }

  return v2;
}

id hoverTextContentTypeLocString(unint64_t a1)
{
  if (a1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = settingsLocString(off_255958[a1], @"Accessibility");
  }

  return v2;
}

id AXNonLocalizedStringForLanguage(void *a1)
{
  v1 = a1;
  v2 = [NSLocale localeWithLocaleIdentifier:v1];
  v3 = [v2 localizedStringForLanguage:v1 context:3];

  if (!v3)
  {
    v4 = settingsLocString(v1, @"RegionNamesNonLocalized");
    if (v4)
    {
      v3 = v4;
    }

    else if ([v1 _containsSubstring:@"-"])
    {
      v5 = [v1 substringToIndex:{objc_msgSend(v1, "rangeOfString:", @"-"}];
      v6 = [NSLocale localeWithLocaleIdentifier:v5];
      v3 = [v6 localizedStringForLanguage:v5 context:3];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

id AXTableViewForCell(void *a1)
{
  v1 = a1;
  v2 = [v1 superview];
  if (v2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = [v2 superview];

      if (v3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = v3;
          goto LABEL_8;
        }

        _AXAssert();
      }

      v2 = 0;
    }
  }

LABEL_8:

  return v2;
}

id AXFlowersImage()
{
  v0 = AXSettingsBundle();
  v1 = [UIImage imageNamed:@"flowers" inBundle:v0];

  return v1;
}

id AXFlowersTestImage()
{
  v0 = AXSettingsBundle();
  v1 = [UIImage imageNamed:@"flowers_crop" inBundle:v0];

  return v1;
}

id AXHareImage()
{
  v0 = AXUISettingsSpeakingRateFastImage();
  v1 = +[UIColor systemGrayColor];
  v2 = [v0 imageWithTintColor:v1 renderingMode:1];

  return v2;
}

id AXTortoiseImage()
{
  v0 = AXUISettingsSpeakingRateSlowImage();
  v1 = +[UIColor systemGrayColor];
  v2 = [v0 imageWithTintColor:v1 renderingMode:1];

  return v2;
}

id AXAssetAndDataClient()
{
  if (AXAssetAndDataClient_onceToken != -1)
  {
    AXAssetAndDataClient_cold_1();
  }

  v1 = AXAssetAndDataClient_Client;

  return v1;
}

BOOL AXPSIsBatterySaverMode()
{
  out_token = 0;
  v2 = 0;
  if (notify_register_check("com.apple.system.lowpowermode", &out_token))
  {
    return 0;
  }

  state = notify_get_state(out_token, &v2);
  notify_cancel(out_token);
  return !state && v2 != 0;
}

id AXLocalizedTitleForZoomLensMode(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:AXZoomLensModeWindow])
  {
    v2 = @"ZOOM_LENS_MODE_WINDOW";
LABEL_7:
    v3 = settingsLocString(v2, @"ZoomSettings");
    goto LABEL_8;
  }

  if ([v1 isEqualToString:AXZoomLensModeWindowAnchored])
  {
    v2 = @"ZOOM_LENS_MODE_DOCKED";
    goto LABEL_7;
  }

  if ([v1 isEqualToString:AXZoomLensModeFullscreen])
  {
    v2 = @"ZOOM_LENS_MODE_FULLSCREEN";
    goto LABEL_7;
  }

  _AXAssert();
  v3 = 0;
LABEL_8:

  return v3;
}

id AXLocalizedTitleForDockPosition(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:AXZoomDockPositionTop])
  {
    v2 = @"DOCK_POSITION_TOP";
LABEL_9:
    v3 = settingsLocString(v2, @"ZoomSettings");
    goto LABEL_10;
  }

  if ([v1 isEqualToString:AXZoomDockPositionLeft])
  {
    v2 = @"DOCK_POSITION_LEFT";
    goto LABEL_9;
  }

  if ([v1 isEqualToString:AXZoomDockPositionRight])
  {
    v2 = @"DOCK_POSITION_RIGHT";
    goto LABEL_9;
  }

  if ([v1 isEqualToString:AXZoomDockPositionBottom])
  {
    v2 = @"DOCK_POSITION_BOTTOM";
    goto LABEL_9;
  }

  _AXAssert();
  v3 = 0;
LABEL_10:

  return v3;
}

id AXLocalizedTitleForSlugAction(unint64_t a1)
{
  if (a1 <= 3)
  {
    a1 = settingsLocString(off_255970[a1], @"ZoomSlugSettings");
  }

  return a1;
}

id AXLocalizedTitleForColor(uint64_t a1)
{
  if ((a1 - 1) >= 6)
  {
    v4 = [NSNumber numberWithInteger:a1];
    _AXLogWithFacility();

    v1 = @"CONTROLLER_COLOR_WHITE";
  }

  else
  {
    v1 = off_255990[a1 - 1];
  }

  v2 = settingsLocString(v1, @"ZoomSlugSettings");

  return v2;
}

uint64_t AXSettingsRestFingerToOpenIsAvailable()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    return AXDeviceIsMultiUser() ^ 1;
  }

  return result;
}

id AXLocalizedTitleForSpeechControllerAction(unint64_t a1)
{
  if (a1 <= 2)
  {
    a1 = settingsLocString(off_2559C0[a1], @"SpeechSettings");
  }

  return a1;
}

void AXGenerateAppNameSpecifiersWithDetailClassAction(void *a1, void *a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  *&v41 = a6;
  *(&v41 + 1) = a7;
  v40 = a1;
  v42 = a2;
  if (a5)
  {
    v10 = settingsLocString(@"PRONUNCIATION_APPS_TITLE", @"VoiceOverSettings");
    a5 = [PSSpecifier groupSpecifierWithName:v10];

    [v42 addObject:a5];
  }

  v11 = 2;
  if (v41 == 0)
  {
    v11 = 3;
  }

  v39 = v11;
  if (a3)
  {
    v12 = settingsLocString(@"HOME_SCREEN", @"Accessibility");
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:v40 set:0 get:0 detail:v41 cell:v39 edit:0];

    a5 = AX_SpringBoardBundleName;
    [v13 setProperty:AX_SpringBoardBundleName forKey:@"BundleIdentifier"];
    [v13 setProperty:a5 forKey:PSIDKey];
    [v13 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
    if (AXDeviceIsPad())
    {
      v14 = @"com.apple.graphic-icon.apps-on-ipad";
    }

    else
    {
      v14 = @"com.apple.graphic-icon.apps-on-iphone";
    }

    [v13 setProperty:v14 forKey:PSIconUTTypeIdentifierKey];
    [v13 setControllerLoadAction:*(&v41 + 1)];
    [v42 addObject:v13];
  }

  v15 = AXInstalledApps();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v47;
    v43 = AX_SidecarBundleName;
    v38 = PSIDKey;
    v36 = PSLazyIconLoading;
    v37 = PSLazyIconAppID;
    v35 = PSIconImageKey;
    v19 = @"com.apple.webapp1";
    v44 = v15;
    v45 = *v47;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v47 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v46 + 1) + 8 * i);
        v22 = [v21 bundleIdentifier];
        if (([v22 isEqualToString:v19] & 1) == 0)
        {
          v23 = [v21 bundleIdentifier];
          if ([v23 isEqualToString:@"com.apple.webapp"])
          {
          }

          else
          {
            IsPad = AXDeviceIsPad();
            if ((IsPad & 1) != 0 || ([v21 bundleIdentifier], a5 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(a5, "isEqualToString:", v43)))
            {
              v25 = v19;
              v26 = [v21 applicationState];
              v27 = [v26 isRestricted];

              if ((IsPad & 1) == 0)
              {
              }

              if (v27)
              {
                v15 = v44;
                v18 = v45;
                v19 = v25;
                continue;
              }

              v28 = [v21 localizedName];
              v22 = [PSSpecifier preferenceSpecifierNamed:v28 target:v40 set:0 get:0 detail:v41 cell:v39 edit:0];

              [v22 setControllerLoadAction:*(&v41 + 1)];
              v29 = [v21 bundleIdentifier];
              [v22 setProperty:v29 forKey:v38];

              v30 = [v21 bundleIdentifier];
              [v22 setProperty:v30 forKey:@"BundleIdentifier"];

              v31 = [v21 bundleIdentifier];
              LODWORD(v28) = AXFlipsIconRightToLeftForAppID(v31);

              v32 = [v21 bundleIdentifier];
              v33 = v32;
              v18 = v45;
              if (v28)
              {
                v34 = AXImageIconForAppID(v32);
                [v22 setProperty:v34 forKey:v35];
              }

              else
              {
                [v22 setProperty:v32 forKey:v37];

                [v22 setProperty:&__kCFBooleanTrue forKey:v36];
              }

              v19 = v25;
              [v42 addObject:v22];
              v15 = v44;
            }

            else
            {

              v18 = v45;
            }
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v17);
  }
}

id AXFlipsIconRightToLeftForAppID(void *a1)
{
  v1 = a1;
  if (AXFlipsIconRightToLeftForAppID_onceToken != -1)
  {
    AXFlipsIconRightToLeftForAppID_cold_1();
  }

  if ([UIApp userInterfaceLayoutDirection] == &dword_0 + 1)
  {
    v2 = [AXFlipsIconRightToLeftForAppID_FlipIconRightToLeftAppIDs containsObject:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id AXImageIconForAppID(void *a1)
{
  v1 = a1;
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  v3 = [UIImage _applicationIconImageForBundleIdentifier:v1 format:0 scale:?];

  if ([UIApp userInterfaceLayoutDirection] == &dword_0 + 1)
  {
    v4 = [v3 imageFlippedForRightToLeftLayoutDirection];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

id AXSettingsNameForPunctuationGroupUUID(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:AXSSVoiceOverPunctuationGroupAll])
  {
    v2 = @"PUNCTUATION_ALL";
  }

  else if ([v1 isEqual:AXSSVoiceOverPunctuationGroupSome])
  {
    v2 = @"PUNCTUATION_SOME";
  }

  else
  {
    if (![v1 isEqual:AXSSVoiceOverPunctuationGroupNone])
    {
      v5 = +[AXSSPunctuationManager sharedDatabase];
      v6 = [v5 punctuationGroupForUUID:v1];
      v7 = [v6 name];

      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = settingsLocString(@"PUNCTUATION_SOME", @"VoiceOverSettings");
      }

      v3 = v8;

      goto LABEL_8;
    }

    v2 = @"PUNCTUATION_NONE";
  }

  v3 = settingsLocString(v2, @"VoiceOverSettings");
LABEL_8:

  return v3;
}

id voiceOverLocalizedStringForKeyboardShortcutsFooterText()
{
  v0 = +[AXSettings sharedInstance];
  v1 = [v0 voiceOverKeyboardModifierChoice];

  if ((v1 - 1) > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = settingsLocString(off_2559D8[(v1 - 1)], @"VoiceOverSettings");
  }

  v3 = settingsLocString(@"vo.keyboard.shortcut.hint.text", @"VoiceOverSettings");
  v4 = [NSString stringWithFormat:v3, v2];

  return v4;
}

void sub_15254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_15BE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_170DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_17AC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1ACB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AF9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sharedBFFStyle()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getBFFStyleClass_softClass;
  v8 = getBFFStyleClass_softClass;
  if (!getBFFStyleClass_softClass)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = __getBFFStyleClass_block_invoke;
    v4[3] = &unk_2555F8;
    v4[4] = &v5;
    __getBFFStyleClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 sharedStyle];

  return v2;
}

void sub_1BA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBFFStyleClass_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = __SetupAssistantUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = off_255D60;
    v6 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SetupAssistantUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBFFStyleClass_block_invoke_cold_1();
  }

  getBFFStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_240D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x5A0]);
  objc_destroyWeak(&STACK[0x5C8]);
  objc_destroyWeak(&STACK[0x5F0]);
  objc_destroyWeak(&STACK[0x618]);
  objc_destroyWeak(&STACK[0x640]);
  objc_destroyWeak(&STACK[0x668]);
  objc_destroyWeak(&STACK[0x690]);
  objc_destroyWeak(&STACK[0x6B8]);
  objc_destroyWeak(&STACK[0x6E0]);
  objc_destroyWeak((v3 - 200));
  objc_destroyWeak((v3 - 160));
  objc_destroyWeak((v3 - 120));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_2967C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_298B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2AA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _tripleClickOptionsUpdated(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [a2 tripleClickOptionsUpdated];
  }

  return result;
}

id getAPGuardClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAPGuardClass_softClass;
  v7 = getAPGuardClass_softClass;
  if (!getAPGuardClass_softClass)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = __getAPGuardClass_block_invoke;
    v3[3] = &unk_2555F8;
    v3[4] = &v4;
    __getAPGuardClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_35D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAPGuardClass_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  if (!AppProtectionLibraryCore_frameworkLibrary)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = __AppProtectionLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = off_256318;
    v6 = 0;
    AppProtectionLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AppProtectionLibraryCore_frameworkLibrary)
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
  result = objc_getClass("APGuard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAPGuardClass_block_invoke_cold_1();
  }

  getAPGuardClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppProtectionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppProtectionLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_36BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_37904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_399C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3E1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_409D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4550C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_46A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GuidedAccessDescriptionForAutoLockTime(uint64_t a1)
{
  if (AXSGuidedAccessAutoLockTimeMirrorSystem == a1)
  {
    v1 = @"AUTO_LOCK_MIRROR_SYSTEM";
  }

  else
  {
    if (AXSGuidedAccessAutoLockTimeNever != a1)
    {
      if (a1 > 59)
      {
        v4 = settingsLocString(@"TIME_IN_MINUTES", @"GuidedAccessSettings");
        [NSString localizedStringWithFormat:v4, a1 / 0x3CuLL];
      }

      else
      {
        v4 = settingsLocString(@"TIME_IN_SECONDS", @"GuidedAccessSettings");
        [NSString localizedStringWithFormat:v4, a1];
      }
      v3 = ;

      goto LABEL_10;
    }

    v1 = @"AUTO_LOCK_NEVER";
  }

  v3 = settingsLocString(v1, @"GuidedAccessSettings");
LABEL_10:

  return v3;
}

void sub_488F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_489C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_48B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_4A6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4BD3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4BEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4D03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_4D500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4E058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4F120(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_4F618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_57EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5990C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5B60C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_5BB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5EAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getAPGuardClass_block_invoke_0(uint64_t a1)
{
  v4[0] = 0;
  if (!AppProtectionLibraryCore_frameworkLibrary_0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = __AppProtectionLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = off_256CA8;
    v6 = 0;
    AppProtectionLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (AppProtectionLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("APGuard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAPGuardClass_block_invoke_cold_1();
  }

  getAPGuardClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppProtectionLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AppProtectionLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_61A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_63474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id liveTranscriptionEnabledUpdated(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 performSelector:"updateLiveTranscriptionEnabled" withObject:0 afterDelay:0.0];
  }

  return result;
}

id selectedLocaleUpdated(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 performSelector:"updateSelectedLocale" withObject:0 afterDelay:0.0];
  }

  return result;
}

void sub_64764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void addConstraint(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v9 = a3;
  v10 = [NSLayoutConstraint constraintWithItem:a1 attribute:a2 relatedBy:0 toItem:v9 attribute:a4 multiplier:1.0 constant:a5];
  [v9 addConstraint:v10];
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return NSRequestConcreteImplementation();
}

__CFString *siriSpeakingSampleLocString(void *a1, double a2)
{
  v3 = a1;
  v4 = AXSettingsBundle();
  v5 = [v4 localizations];
  v17 = v3;
  v6 = [NSArray arrayWithObjects:&v17 count:1];
  v7 = [NSBundle preferredLocalizationsFromArray:v5 forPreferences:v6];
  v8 = [v7 firstObject];

  v9 = AXSettingsBundle();
  v10 = [v9 localizedStringForKey:@"SIRI_SPEAKING_SAMPLE" value:@"SIRI_SPEAKING_SAMPLE" table:@"SiriSettings" localization:v8];

  v11 = [NSLocale localeWithLocaleIdentifier:v8];
  v16 = 0;
  v12 = [[NSString alloc] initWithValidatedFormat:v10 validFormatSpecifiers:@"%f" locale:v11 error:&v16, a2 * 100.0];
  v13 = v16;
  if (v13)
  {
    v14 = AXLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      siriSpeakingSampleLocString_cold_1(v13, v10, v14);
    }

    v12 = &stru_25D420;
  }

  return v12;
}

void sub_6A344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_6B998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak(&a34);
  objc_destroyWeak((v38 - 128));
  objc_destroyWeak((v38 - 120));
  objc_destroyWeak((v38 - 112));
  _Unwind_Resume(a1);
}

Class __getBBSettingsGatewayClass_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  if (!BulletinBoardLibraryCore_frameworkLibrary)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = __BulletinBoardLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = off_256EA0;
    v6 = 0;
    BulletinBoardLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (BulletinBoardLibraryCore_frameworkLibrary)
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
  result = objc_getClass("BBSettingsGateway");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBBSettingsGatewayClass_block_invoke_cold_1();
  }

  getBBSettingsGatewayClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BulletinBoardLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BulletinBoardLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_6C5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_6CC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_71464(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_721F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_72610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_75348(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

uint64_t _kShotModelCreationCompleted(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return AXPerformBlockAsynchronouslyOnMainThread();
  }

  return result;
}

uint64_t _kShotModelCreationError(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return AXPerformBlockAsynchronouslyOnMainThread();
  }

  return result;
}

void sub_7B788(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_7F440(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_80608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak((v43 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_81958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_820BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_82D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8490C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_865B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_8A5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_8C0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8D334(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_8E6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8F42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_93554(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_94108(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_94480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_96814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return objc_opt_class();
}

void sub_97E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_98ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_9A90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45)
{
  objc_destroyWeak(&a45);
  objc_destroyWeak((v45 - 216));
  _Unwind_Resume(a1);
}

void sub_A2E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak(&a28);
  objc_destroyWeak((v29 - 112));
  _Unwind_Resume(a1);
}

uint64_t VOTBrailleKeyIsSupported(void *a1)
{
  v1 = a1;
  if (VOTBrailleInEightDotMode())
  {
    IsSupportedInEightDot = VOTBrailleKeyIsSupportedInEightDot(v1);
  }

  else
  {
    IsSupportedInEightDot = 1;
  }

  return IsSupportedInEightDot;
}

BOOL VOTBrailleInEightDotMode()
{
  v0 = _AXSVoiceOverTouchCopyBrailleTableIdentifier();
  v1 = [[BRLTTable alloc] initWithIdentifier:v0];
  v2 = v1;
  if (v0 && ![v1 supportsTranslationMode8Dot])
  {
    v4 = 0;
  }

  else
  {
    v3 = +[AXSettings sharedInstance];
    v4 = [v3 voiceOverTouchBrailleDisplayInputMode] == &dword_0 + 2;
  }

  return v4;
}

uint64_t VOTBrailleKeyIsSupportedInEightDot(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"67074"])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:@"67330"] ^ 1;
  }

  return v2;
}

__CFString *VOTBrailleButtonName(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 buttonNamesForInputIdentifier:a1 forDisplayWithToken:a3];
  if ([v3 count])
  {
    v4 = 0;
    v5 = &stru_25D420;
    do
    {
      if (v4)
      {
        v6 = [(__CFString *)v5 stringByAppendingString:@" + "];

        v5 = v6;
      }

      v7 = [v3 objectAtIndexedSubscript:v4];
      v8 = [(__CFString *)v5 stringByAppendingString:v7];

      ++v4;
      v5 = v8;
    }

    while ([v3 count] > v4);
  }

  else
  {
    v8 = &stru_25D420;
  }

  return v8;
}

void sub_A35E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_A43E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, id a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, id a33)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&a22);
  objc_destroyWeak(&a21);
  objc_destroyWeak(&a27);
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a32);
  objc_destroyWeak((v33 - 120));
  objc_destroyWeak((v33 - 112));
  _Unwind_Resume(a1);
}

void sub_A5D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak(v38);
  objc_destroyWeak(&a37);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_A5FD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_A6884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_A7CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_A9A50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id GAXSLocString(void *a1)
{
  v1 = a1;
  if (GAXSLocString_onceToken != -1)
  {
    GAXSLocString_cold_1();
  }

  if ([v1 isEqualToString:@"GUIDED_ACCESS_ALLOW_LOCKSCREEN"])
  {
    v2 = +[UIDevice currentDevice];
    v3 = [v2 userInterfaceIdiom];

    if (v3 == &dword_0 + 1)
    {
      v4 = @"_IPAD";
    }

    else
    {
      v4 = @"_IPHONE";
    }

    v5 = [v1 stringByAppendingString:v4];

    v1 = v5;
  }

  v6 = [NSBundle bundleForClass:GAXSLocString_principalClass];
  v7 = [v6 localizedStringForKey:v1 value:&stru_25D420 table:@"GuidedAccessSettings"];

  return v7;
}

void sub_AC550(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_AD3FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_B01BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_B15B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_B3400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_B6404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_B7D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_B9E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_BA43C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_BD028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_BE454(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_BED14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_BEEC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_C15E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SCATLocalizedHeadMovementSummary()
{
  v0 = AXParameterizedLocalizedString();

  return v0;
}

void sub_C3990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_C4058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getAPGuardClass_block_invoke_1(uint64_t a1)
{
  v4[0] = 0;
  if (!AppProtectionLibraryCore_frameworkLibrary_1)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = __AppProtectionLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = off_257EC0;
    v6 = 0;
    AppProtectionLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (AppProtectionLibraryCore_frameworkLibrary_1)
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
  result = objc_getClass("APGuard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAPGuardClass_block_invoke_cold_1();
  }

  getAPGuardClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppProtectionLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  AppProtectionLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void sub_C5D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_C6854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_C6D68(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id GAXSTimeRestrictionsLocString(void *a1)
{
  v1 = GAXSTimeRestrictionsLocString_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    GAXSTimeRestrictionsLocString_cold_1();
  }

  v3 = [NSBundle bundleForClass:GAXSTimeRestrictionsLocString_principalClass];
  v4 = [v3 localizedStringForKey:v2 value:&stru_25D420 table:@"GuidedAccessTimeRestrictionsSettings"];

  return v4;
}

void sub_C7B18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_C962C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_CE344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_CEDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_D3B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void InitializeMap()
{
  v14[0] = @"BackgroundRefreshDescription";
  v14[1] = @"NSBluetoothPeripheralUsageDescription";
  v15[0] = &off_27A8A8;
  v15[1] = &off_27A8C0;
  v14[2] = @"NSBluetoothAlwaysUsageDescription";
  v14[3] = @"NSCalendarsUsageDescription";
  v15[2] = &off_27A8C0;
  v15[3] = &off_27A8D8;
  v14[4] = @"NSCameraUsageDescription";
  v14[5] = @"NSContactsUsageDescription";
  v15[4] = &off_27A8F0;
  v15[5] = &off_27A908;
  v14[6] = @"NSUserTrackingUsageDescription";
  v14[7] = @"NSFaceIDUsageDescription";
  v15[6] = &off_27A920;
  v15[7] = &off_27A938;
  v14[8] = @"NSFocusStatusUsageDescription";
  v14[9] = @"NSHomeKitUsageDescription";
  v15[8] = &off_27A950;
  v15[9] = &off_27A968;
  v14[10] = @"NSLocalNetworkUsageDescription";
  v14[11] = @"NSLocationAlwaysAndWhenInUseUsageDescription";
  v15[10] = &off_27A980;
  v15[11] = &off_27A998;
  v14[12] = @"NSLocationWhenInUseUsageDescription";
  v14[13] = @"NSLocationTemporaryUsageDescriptionDictionary";
  v15[12] = &off_27A998;
  v15[13] = &off_27A998;
  v14[14] = @"NSAppleMusicUsageDescription";
  v14[15] = @"NSMicrophoneUsageDescription";
  v15[14] = &off_27A9B0;
  v15[15] = &off_27A9C8;
  v14[16] = @"NSMotionUsageDescription";
  v14[17] = @"NSNearbyInteractionUsageDescription";
  v15[16] = &off_27A9E0;
  v15[17] = &off_27A9F8;
  v14[18] = @"NotificationsDescription";
  v14[19] = @"NSPhotoLibraryAddUsageDescription";
  v15[18] = &off_27AA10;
  v15[19] = &off_27AA28;
  v14[20] = @"NSPhotoLibraryUsageDescription";
  v14[21] = @"NSRemindersUsageDescription";
  v15[20] = &off_27AA28;
  v15[21] = &off_27AA40;
  v14[22] = @"NSSiriUsageDescription";
  v14[23] = @"NSSpeechRecognitionUsageDescription";
  v15[22] = &off_27AA58;
  v15[23] = &off_27AA70;
  v14[24] = @"NSUserAvailabilityNameUsageDescription";
  v14[25] = @"WebKitIntelligentTrackingPrevention";
  v15[24] = &off_27A950;
  v15[25] = &off_27AA88;
  v0 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:26];
  v1 = TCCKeyToPolicyMap;
  TCCKeyToPolicyMap = v0;

  v12[0] = @"BackgroundRefreshDescription";
  v12[1] = @"NSBluetoothPeripheralUsageDescription";
  v13[0] = @"Background App Refresh";
  v13[1] = @"Bluetooth";
  v12[2] = @"NSBluetoothAlwaysUsageDescription";
  v12[3] = @"NSCalendarsUsageDescription";
  v13[2] = @"Bluetooth";
  v13[3] = @"Calendar";
  v13[4] = @"Camera";
  v13[5] = @"Contacts";
  v13[6] = @"Allow Tracking";
  v13[7] = @"Face ID";
  v12[4] = @"NSCameraUsageDescription";
  v12[5] = @"NSContactsUsageDescription";
  v13[8] = @"Focus";
  v13[9] = @"Home Data";
  v12[6] = @"NSUserTrackingUsageDescription";
  v12[7] = @"NSFaceIDUsageDescription";
  v12[10] = @"NSLocalNetworkUsageDescription";
  v12[11] = @"NSLocationAlwaysAndWhenInUseUsageDescription";
  v12[8] = @"NSFocusStatusUsageDescription";
  v12[9] = @"NSHomeKitUsageDescription";
  v13[10] = @"Local Network";
  v13[11] = @"Location";
  v12[12] = @"NSLocationWhenInUseUsageDescription";
  v12[13] = @"NSLocationTemporaryUsageDescriptionDictionary";
  v13[12] = @"Location";
  v13[13] = @"Location";
  v12[14] = @"NSAppleMusicUsageDescription";
  v12[15] = @"NSMicrophoneUsageDescription";
  v13[14] = @"Media & Apple Music";
  v13[15] = @"Microphone";
  v12[16] = @"NSMotionUsageDescription";
  v12[17] = @"NSNearbyInteractionUsageDescription";
  v13[16] = @"Motion & Fitness";
  v13[17] = @"Nearby Interactions";
  v12[18] = @"NotificationsDescription";
  v12[19] = @"NSPhotoLibraryAddUsageDescription";
  v13[18] = @"Notifications";
  v13[19] = @"Photos";
  v12[20] = @"NSPhotoLibraryUsageDescription";
  v12[21] = @"NSRemindersUsageDescription";
  v13[20] = @"Photos";
  v13[21] = @"Reminders";
  v12[22] = @"NSSiriUsageDescription";
  v12[23] = @"NSSpeechRecognitionUsageDescription";
  v13[22] = @"Siri_And_Search";
  v13[23] = @"Speech Recognition";
  v12[24] = @"NSUserAvailabilityNameUsageDescription";
  v13[24] = @"Focus";
  v2 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:25];
  v3 = TCCKeyToSpecifierIdentifierMap;
  TCCKeyToSpecifierIdentifierMap = v2;

  v10[0] = @"PSSystemPolicyOptionsPrivacyAddressBook";
  v10[1] = @"PSSystemPolicyOptionsAssistantAndSearch";
  v11[0] = @"NSContactsUsageDescription";
  v11[1] = @"NSSiriUsageDescription";
  v10[2] = @"PSSystemPolicyOptionsBackgroundRefresh";
  v10[3] = @"PSSystemPolicyOptionsBluetooth";
  v11[2] = @"BackgroundRefreshDescription";
  v11[3] = @"NSBluetoothAlwaysUsageDescription";
  v10[4] = @"PSSystemPolicyOptionsCamera";
  v10[5] = @"PSSystemPolicyOptionsCrossAppTracking";
  v11[4] = @"NSCameraUsageDescription";
  v11[5] = @"NSUserTrackingUsageDescription";
  v10[6] = @"PSSystemPolicyOptionsCrossSiteTracking";
  v10[7] = @"PSSystemPolicyOptionsFaceID";
  v11[6] = @"WebKitIntelligentTrackingPrevention";
  v11[7] = @"NSFaceIDUsageDescription";
  v10[8] = @"PSSystemPolicyOptionsLocation";
  v10[9] = @"PSSystemPolicyOptionsMediaLibrary";
  v11[8] = @"NSLocationWhenInUseUsageDescription";
  v11[9] = @"NSAppleMusicUsageDescription";
  v10[10] = @"PSSystemPolicyOptionsMicrophone";
  v10[11] = @"PSSystemPolicyOptionsMotion";
  v11[10] = @"NSMicrophoneUsageDescription";
  v11[11] = @"NSMotionUsageDescription";
  v10[12] = @"PSSystemPolicyOptionsNearbyInteraction";
  v10[13] = @"PSSystemPolicyOptionsNetwork";
  v11[12] = @"NSNearbyInteractionUsageDescription";
  v11[13] = @"NSLocalNetworkUsageDescription";
  v10[14] = @"PSSystemPolicyOptionsNotifications";
  v10[15] = @"PSSystemPolicyOptionsPrivacyPhotos";
  v11[14] = @"NotificationsDescription";
  v11[15] = @"NSPhotoLibraryUsageDescription";
  v10[16] = @"PSSystemPolicyOptionsPrivacyCalendar";
  v10[17] = @"PSSystemPolicyOptionsPrivacyReminders";
  v11[16] = @"NSCalendarsUsageDescription";
  v11[17] = @"NSRemindersUsageDescription";
  v10[18] = @"PSSystemPolicyOptionsSpeechRecognition";
  v10[19] = @"PSSystemPolicyOptionsUserAvailability";
  v11[18] = @"NSSpeechRecognitionUsageDescription";
  v11[19] = @"NSFocusStatusUsageDescription";
  v10[20] = @"PSSystemPolicyOptionsWillow";
  v11[20] = @"NSHomeKitUsageDescription";
  v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:21];
  v5 = SpecifierIdentifierToTCCKeyMap;
  SpecifierIdentifierToTCCKeyMap = v4;

  v8[0] = @"PSSystemPolicyOptionsPrivacyAddressBook";
  v8[1] = @"PSSystemPolicyOptionsBluetooth";
  v9[0] = &off_27AAA0;
  v9[1] = &off_27AAB8;
  v8[2] = @"PSSystemPolicyOptionsCamera";
  v8[3] = @"PSSystemPolicyOptionsCrossAppTracking";
  v9[2] = &off_27AAD0;
  v9[3] = &off_27AAE8;
  v8[4] = @"PSSystemPolicyOptionsLocation";
  v8[5] = @"PSSystemPolicyOptionsMediaLibrary";
  v9[4] = &off_27AB00;
  v9[5] = &off_27AB18;
  v8[6] = @"PSSystemPolicyOptionsMicrophone";
  v8[7] = @"PSSystemPolicyOptionsMotion";
  v9[6] = &off_27AB30;
  v9[7] = &off_27AB48;
  v8[8] = @"PSSystemPolicyOptionsNearbyInteraction";
  v8[9] = @"PSSystemPolicyOptionsPrivacyPhotos";
  v9[8] = &off_27AB60;
  v9[9] = &off_27AB78;
  v8[10] = @"PSSystemPolicyOptionsPrivacyCalendar";
  v8[11] = @"PSSystemPolicyOptionsPrivacyReminders";
  v9[10] = &off_27AB90;
  v9[11] = &off_27ABA8;
  v8[12] = @"PSSystemPolicyOptionsSpeechRecognition";
  v8[13] = @"PSSystemPolicyOptionsUserAvailability";
  v9[12] = &off_27ABC0;
  v9[13] = &off_27ABD8;
  v8[14] = @"PSSystemPolicyOptionsWillow";
  v9[14] = &off_27ABF0;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:15];
  v7 = SpecifierIdentifierToTCCAuthPromptIcon;
  SpecifierIdentifierToTCCAuthPromptIcon = v6;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_D8C70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_E17C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id _handleContinuityDisplayStateChanged_1(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 performSelector:"_updateSetupAVSButtonForOneness" withObject:0 afterDelay:0.0];
  }

  return result;
}

void sub_E4298(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_E500C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id location)
{
  objc_destroyWeak(&a45);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E6AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, id a18)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E70E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E76A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_E8E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_EAF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_EF530(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id _handleContinuityDisplayStateChanged_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 performSelector:"_updateOnDeviceEyeTrackingSwitchForOneness" withObject:0 afterDelay:0.0];
  }

  return result;
}

void sub_F10D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_F28F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61)
{
  objc_destroyWeak((v62 + 32));
  objc_destroyWeak((v61 + 40));
  objc_destroyWeak((v64 + 32));
  objc_destroyWeak((v63 + 40));
  objc_destroyWeak((v65 + 32));
  objc_destroyWeak(&a50);
  objc_destroyWeak(&a55);
  objc_destroyWeak(&a61);
  objc_destroyWeak(&STACK[0x220]);
  objc_destroyWeak(&STACK[0x250]);
  objc_destroyWeak(&STACK[0x278]);
  objc_destroyWeak(&STACK[0x2A8]);
  objc_destroyWeak(&STACK[0x328]);
  objc_destroyWeak(&STACK[0x358]);
  objc_destroyWeak(&STACK[0x3A0]);
  _Unwind_Resume(a1);
}

void sub_F430C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  objc_destroyWeak(&a63);
  objc_destroyWeak(&a68);
  objc_destroyWeak(&STACK[0x200]);
  objc_destroyWeak(&STACK[0x230]);
  objc_destroyWeak(&STACK[0x238]);
  _Unwind_Resume(a1);
}

void sub_F4868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_F7FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_FB45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1022C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_106FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_107858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_107A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_107CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_107EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1080CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1082E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1084CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1086C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_108860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_108ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_108C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_108DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_108F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1091A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10931C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_109498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_109610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10978C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_109904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_109A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_109BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_109D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_109EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10A280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10A49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10A6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10A824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10B278(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10BA7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1124B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_112930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x2Au);
}

void sub_11372C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_113E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

_UNKNOWN **AXCaptionColorDefault(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_258B30[a1 - 1];
  }
}

BOOL AXCaptionResetDefaultActiveProfile()
{
  v0 = MACaptionAppearancePrefCopyProfileIDs();
  v1 = [v0 sortedArrayUsingComparator:&__block_literal_global_62];

  v2 = [v1 count];
  if (v2)
  {
    [v1 objectAtIndex:0];
    MACaptionAppearancePrefSetActiveProfileID();
  }

  return v2 != 0;
}

id AXCaptionColors(int a1)
{
  if (AXCaptionColors_onceToken != -1)
  {
    AXCaptionColors_cold_1();
  }

  if ((a1 & 0xFFFFFFFE) == 2)
  {
    v2 = &AXCaptionColors_WindowColors;
LABEL_7:
    v3 = *v2;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v2 = &AXCaptionColors_TextColors;
    goto LABEL_7;
  }

  v3 = 0;
LABEL_9:

  return v3;
}

id AXCaptionTransparency(int a1)
{
  if (AXCaptionTransparency_onceToken != -1)
  {
    AXCaptionTransparency_cold_1();
  }

  if ((a1 - 1) > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_258B48[a1 - 1];
  }

  return v2;
}

id AXCaptionTransparencyDefault(int a1)
{
  v1 = AXCaptionTransparency(a1);
  v2 = [v1 objectAtIndex:0];

  return v2;
}

void AXCaptionRemoveUserAddedFont(void *a1)
{
  v1 = a1;
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 arrayForKey:@"ExtraFonts"];

  v4 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"name", v14}];
        v12 = [v11 isEqualToString:v1];

        if ((v12 & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = +[NSUserDefaults standardUserDefaults];
  [v13 setObject:v4 forKey:@"ExtraFonts"];
}

id AXCaptionDefaultFontForCategory(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = AXCaptionFonts();
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:{@"category", v12}];
        v9 = [v8 intValue];

        if (v9 == a1)
        {
          v10 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

id AXCaptionFonts()
{
  if (AXCaptionFonts_onceToken != -1)
  {
    AXCaptionFonts_cold_1();
  }

  v0 = AXCaptionExtraUserFonts();
  if (v0)
  {
    v1 = [AXCaptionFonts_Fonts arrayByAddingObjectsFromArray:v0];
  }

  else
  {
    v1 = AXCaptionFonts_Fonts;
  }

  v2 = v1;

  return v2;
}

id AXCaptionFontCategoryName(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = settingsLocString(off_258B60[a1 - 1], @"CaptioningStyle");
  }

  return v2;
}

id AXCaptionExtraUserFonts()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 arrayForKey:@"ExtraFonts"];

  return v1;
}

void AXCaptionAddExtraUserFont(void *a1)
{
  v6 = a1;
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 arrayForKey:@"ExtraFonts"];
  v3 = [v2 mutableCopy];

  if (!v3)
  {
    v3 = objc_alloc_init(NSMutableArray);
  }

  v4 = [v6 mutableCopy];
  [v4 setObject:&__kCFBooleanTrue forKey:@"isUserAddedFont"];
  [v3 addObject:v4];
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setObject:v3 forKey:@"ExtraFonts"];
}

id AXCaptionTextEdgeStyleDefault()
{
  v0 = AXCaptionTextEdgeStyles();
  v1 = [v0 objectAtIndex:0];

  return v1;
}

id AXCaptionTextEdgeStyles()
{
  if (AXCaptionTextEdgeStyles_onceToken != -1)
  {
    AXCaptionTextEdgeStyles_cold_1();
  }

  v1 = AXCaptionTextEdgeStyles_Edges;

  return v1;
}

id AXCaptionDefaultTextSize()
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v0 = AXCaptionTextSizes();
  v1 = [v0 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v11;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v10 + 1) + 8 * i);
        v6 = [v5 objectForKey:{@"default", v10}];
        v7 = [v6 BOOLValue];

        if (v7)
        {
          v8 = [v5 objectForKey:@"value"];
          goto LABEL_11;
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

id AXCaptionTextSizes()
{
  if (AXCaptionTextSizes_onceToken != -1)
  {
    AXCaptionTextSizes_cold_1();
  }

  v1 = AXCaptionTextSizes_Sizes;

  return v1;
}

id AXCaptionTextSizeForRelativeSize(uint64_t a1)
{
  AXCaptionTextSizes();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = v16 = 0u;
  v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 objectForKeyedSubscript:@"relativeSize"];
        v8 = [NSNumber numberWithLong:a1];
        v9 = [v7 isEqual:v8];

        if (v9)
        {
          v10 = [v6 objectForKeyedSubscript:@"value"];
          goto LABEL_11;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

id AXCaptionRelativeTextSizeForSize(void *a1)
{
  v1 = a1;
  AXCaptionTextSizes();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = &stru_20 + 8;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:{@"value", v13}];
        v10 = [v9 isEqual:v1];

        if (v10)
        {
          v11 = [v8 objectForKeyedSubscript:@"relativeSize"];
          v6 = [v11 longValue];

          goto LABEL_12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = &stru_20 + 8;
  }

LABEL_12:

  return v6;
}

id ClarityUIDisplayNameForApp(void *a1)
{
  v1 = a1;
  v23 = 0;
  v2 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v1 allowPlaceholder:0 error:&v23];
  v3 = v23;
  if (v3)
  {
    v4 = CLFLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = v1;
      v28 = 2112;
      v29 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Error getting bundle record for app with identifier %@: %@", buf, 0x16u);
    }

    v5 = 0;
  }

  else
  {
    v18 = v2;
    v6 = [v2 URL];
    v4 = [NSBundle bundleWithURL:v6];

    v7 = [v4 localizedInfoDictionary];
    v8 = [v4 infoDictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v24[0] = CLFClarityDisplayNameKey;
    v24[1] = _kCFBundleDisplayNameKey;
    v24[2] = kCFBundleNameKey;
    v9 = [NSArray arrayWithObjects:v24 count:3];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v5 = 0;
      v12 = *v20;
      v17 = v1;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v7 objectForKeyedSubscript:v14];

          if ([v15 length])
          {
            v5 = v15;
LABEL_17:
            v1 = v17;
            goto LABEL_18;
          }

          v5 = [v8 objectForKeyedSubscript:v14];

          if ([v5 length])
          {
            goto LABEL_17;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
        v1 = v17;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_18:

    v3 = 0;
    v2 = v18;
  }

  return v5;
}

id ClarityUIAllInstalledAppIdentifiers()
{
  v0 = +[AXSpringBoardServer server];
  v1 = [v0 installedApps];

  v2 = [v1 allKeys];
  v3 = [NSMutableSet setWithArray:v2];

  v4 = [v3 containsObject:AX_CameraBundleName];
  v5 = [v3 containsObject:AX_PhotosBundleName];
  if (v4)
  {
    v14 = AX_ClarityCameraBundleName;
    v6 = [NSArray arrayWithObjects:&v14 count:1];
    [v3 addObjectsFromArray:v6];
  }

  if (v5)
  {
    v13 = AX_ClarityPhotosBundleName;
    v7 = [NSArray arrayWithObjects:&v13 count:1];
    [v3 addObjectsFromArray:v7];
  }

  if (AXIsInternalInstall())
  {
    v8 = +[AXSpringBoardServer server];
    v9 = [v8 internalApps];

    v10 = [v9 allKeys];
    [v3 addObjectsFromArray:v10];
  }

  v11 = [v3 copy];

  return v11;
}

void sub_11EBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBFFStyleClass_block_invoke_0(uint64_t a1)
{
  v4[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = __SetupAssistantUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = off_258CE0;
    v6 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (SetupAssistantUILibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBFFStyleClass_block_invoke_cold_1();
  }

  getBFFStyleClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_11F8C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_12237C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_122658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_12EBF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _accessibilitySettingsChanged_0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return AXPerformBlockAsynchronouslyOnMainThread();
  }

  return result;
}

void sub_13270C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_133498(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 104));
  _Unwind_Resume(a1);
}

uint64_t _kShotModelCreationCompleted_0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return AXPerformBlockAsynchronouslyOnMainThread();
  }

  return result;
}

uint64_t _kShotModelCreationError_0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return AXPerformBlockAsynchronouslyOnMainThread();
  }

  return result;
}

void sub_135E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id AXSettingsNameForAudioDuckingMode(unint64_t a1)
{
  if (a1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = settingsLocString(off_259018[a1], @"VoiceOverSettings");
  }

  return v2;
}

void sub_139610(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t _kShotModelSimilarityWarning(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return AXPerformBlockAsynchronouslyOnMainThread();
  }

  return result;
}

void sub_139CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_13D144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_13DDE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_140600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_141C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location, id a32)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&a23);
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a32);
  _Unwind_Resume(a1);
}

void sub_143CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1453B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_14879C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak((v3 - 120));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_148E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_14918C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&a28);
  objc_destroyWeak((v30 - 112));
  _Unwind_Resume(a1);
}

void sub_1496B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 168));
  objc_destroyWeak((v3 - 120));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

id AXLocalizedNameForMIDINote()
{
  v0 = AXMIDINoteValueForNoteOrdinal();
  AXMIDINoteOctaveForNoteOrdinal();
  if (v0 > 0xB)
  {
    v1 = &stru_25D420;
  }

  else
  {
    v1 = off_259490[v0];
  }

  v2 = AXFormatInteger();
  v3 = AXFormatInteger();
  v4 = [NSString stringWithFormat:@"%@ : %@-%@", v2, v1, v3];

  return v4;
}

__CFString *AXLocalizedNameForMIDIChannel(int a1)
{
  if (a1 <= 127)
  {
    if (a1 > 7)
    {
      if (a1 > 31)
      {
        if (a1 == 32 || a1 == 64)
        {
          goto LABEL_37;
        }
      }

      else if (a1 == 8 || a1 == 16)
      {
        goto LABEL_37;
      }
    }

    else if (a1 > 1)
    {
      if (a1 == 2 || a1 == 4)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (!a1)
      {
        v1 = AXParameterizedLocalizedString();
        goto LABEL_38;
      }

      if (a1 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  else if (a1 <= 2047)
  {
    if (a1 > 511)
    {
      if (a1 == 512 || a1 == 1024)
      {
        goto LABEL_37;
      }
    }

    else if (a1 == 128 || a1 == 256)
    {
      goto LABEL_37;
    }
  }

  else if (a1 < 0x2000)
  {
    if (a1 == 2048 || a1 == 4096)
    {
      goto LABEL_37;
    }
  }

  else if (a1 == 0x2000 || a1 == 0x4000 || a1 == 0x8000)
  {
LABEL_37:
    v3 = AXFormatInteger();
    v1 = AXParameterizedLocalizedString();

    goto LABEL_38;
  }

  v4 = [NSNumber numberWithUnsignedShort:?];
  _AXAssert();

  v1 = @"Unknown";
LABEL_38:

  return v1;
}

void sub_14B524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_14D14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_14E000(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_14E70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_151608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_152818()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_15462C;
  v12 = v2;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_152A04;
  v10 = &block_descriptor;
  v3 = _Block_copy(&v7);

  [v1 registerUpdateBlock:v3 forRetrieveSelector:"soundDetectionState" withListener:v0];
  _Block_release(v3);

  v4 = [objc_opt_self() sharedInstance];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_153FEC;
  v12 = v5;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_152A04;
  v10 = &block_descriptor_17;
  v6 = _Block_copy(&v7);

  [v4 registerUpdateBlock:v6 forRetrieveSelector:"isNameRecognitionEnabled" withListener:v0];
  _Block_release(v6);
}

uint64_t sub_152A04(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_152A48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong reloadSpecifiers];
  }
}

char *sub_152AA4()
{
  v1 = v0;
  v2 = sub_19BFB4();
  v3 = [v0 valueForKey:v2];

  if (v3)
  {
    sub_19C4C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35[0] = v33;
  v35[1] = v34;
  if (*(&v34 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2B8C90);
    if (swift_dynamicCast())
    {
      return v32;
    }
  }

  else
  {
    sub_154438(v35);
  }

  v5 = &_swiftEmptyArrayStorage;
  *&v35[0] = &_swiftEmptyArrayStorage;
  v6 = objc_opt_self();
  v7 = [v6 emptyGroupSpecifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_19BFB4();
    v10 = AXLocStringKeyForModel();

    v11 = sub_19BFB4();
    v12 = settingsLocString(v10, v11);

    if (v12)
    {
      sub_19BFE4();
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_19BFB4();
    [v8 setProperty:v15 forKey:PSIDKey];

    if (v14)
    {
    }

    else
    {

      v12 = 0;
    }

    [v8 setProperty:v12 forKey:PSFooterTextGroupKey];
    swift_unknownObjectRelease();
    v16 = v8;
    sub_19C084();
    if (*(&dword_10 + (*&v35[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v35[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_19C0B4();
    }

    sub_19C0D4();

    v5 = *&v35[0];
  }

  v17 = sub_19BFB4();
  v18 = sub_19BFB4();
  v19 = settingsLocString(v17, v18);

  sub_1544A0(0, &qword_2B8270);
  v20 = [v6 preferenceSpecifierNamed:v19 target:v1 set:0 get:"soundDetectionEnabled:" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  if (v20)
  {
    v21 = sub_19BFB4();
    [v20 setProperty:v21 forKey:PSIDKey];

    v22 = v20;
    sub_19C084();
    if (*(&dword_10 + (*&v35[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v35[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_19C0B4();
    }

    sub_19C0D4();

    v5 = *&v35[0];
  }

  v23 = sub_19BFB4();
  v24 = sub_19BFB4();
  v25 = settingsLocString(v23, v24);

  type metadata accessor for NameRecognitionSettingsSwiftUI();
  v26 = [v6 preferenceSpecifierNamed:v25 target:v1 set:0 get:"nameRecognitionEnabled:" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  if (v26)
  {
    v27 = sub_19BFB4();
    [v26 setProperty:v27 forKey:PSIDKey];

    v28 = v26;
    sub_19C084();
    if (*(&dword_10 + (*&v35[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v35[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_19C0B4();
    }

    sub_19C0D4();

    v5 = *&v35[0];
  }

  sub_1544A0(0, &qword_2B8278);
  isa = sub_19C094().super.isa;
  v30 = sub_19BFB4();
  [v1 setValue:isa forKey:v30];

  v4 = sub_171EE4(v5);

  return v4;
}

id sub_153130(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v4 = sub_19BFB4();

  return v4;
}

UIViewController __swiftcall NameRecognitionSettingsSwiftUI.make()()
{
  sub_19B334();
  sub_19B0C4();
  sub_153894(&qword_2B81E0, &type metadata accessor for NameRecognitionSettingsView);
  return sub_19B344();
}

id SpokenContentDetectLanguagesSwiftUI.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19BFB4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id NameRecognitionSettingsSwiftUI.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_19BFB4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for NameRecognitionSettingsSwiftUI();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id SpokenContentDetectLanguagesSwiftUI.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id NameRecognitionSettingsSwiftUI.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NameRecognitionSettingsSwiftUI();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1535B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t variable initialization expression of VoiceOverExternalIntelligenceController.onboardingView@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_19B3B4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of SpokenContentDetectLanguagesView._voiceResolver()
{
  v0 = sub_19AFD4();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19B004();
  __chkstk_darwin();
  sub_19AFE4();
  v8 = &_swiftEmptyArrayStorage;
  sub_153894(&qword_2B81E8, &type metadata accessor for CoreSynthesizer.Voice.Trait);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B81F0);
  sub_153924();
  sub_19C4E4();
  v4 = sub_19B034();
  v5 = sub_19B024();
  v9 = v4;
  v10 = &protocol witness table for VoiceDatabaseClient;
  v8 = v5;
  (*(v1 + 104))(v3, enum case for VoiceResolver.Mode.defaultPreferenceOrder(_:), v0);
  return sub_19AFB4();
}

uint64_t sub_153894(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_153924()
{
  result = qword_2B81F8;
  if (!qword_2B81F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B81F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B81F8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of SpokenContentDetectLanguagesView._selectedId()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 spokenContentDefaultFallbackLanguage];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_19BFE4();

  return v2;
}

id sub_153A68(uint64_t *a1)
{
  sub_19C3B4();
  v2 = sub_19C314();
  v3 = *a1;
  swift_beginAccess();
  v4 = *&v2[v3];

  return v4;
}

uint64_t variable initialization expression of VoiceOverActivityVoiceSelectionView._fetcher()
{
  v0 = sub_19B374();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19B004();
  __chkstk_darwin(v4);
  v5 = sub_19B034();
  v6 = sub_19B024();
  v9[4] = v5;
  v9[5] = &protocol witness table for VoiceDatabaseClient;
  v9[1] = v6;
  v9[0] = &_swiftEmptyArrayStorage;
  sub_153894(&qword_2B81E8, &type metadata accessor for CoreSynthesizer.Voice.Trait);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B81F0);
  sub_153924();
  sub_19C4E4();
  (*(v1 + 104))(v3, enum case for CoreSynthesisVoicePickableFetcher.SiriVoicePolicy.neural(_:), v0);
  v7 = objc_allocWithZone(sub_19B394());
  return sub_19B384();
}

uint64_t variable initialization expression of VoiceOverActivityVoiceSelectionView._dismiss@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8200);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_153DBC(uint64_t a1, id *a2)
{
  result = sub_19BFC4();
  *a2 = 0;
  return result;
}

uint64_t sub_153E34(uint64_t a1, id *a2)
{
  v3 = sub_19BFD4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_153EB4@<X0>(void *a1@<X8>)
{
  sub_19BFE4();
  v2 = sub_19BFB4();

  *a1 = v2;
  return result;
}

uint64_t sub_153EF8@<X0>(void *a1@<X8>)
{
  v2 = sub_19BFB4();

  *a1 = v2;
  return result;
}

uint64_t sub_153F40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19BFE4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_153F8C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_153F9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_154008(uint64_t a1)
{
  v2 = sub_153894(&qword_2B82A0, type metadata accessor for CLFListLayout);
  v3 = sub_153894(&qword_2B82A8, type metadata accessor for CLFListLayout);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1540C4()
{
  sub_19BFE4();
  v0 = sub_19C054();

  return v0;
}

uint64_t sub_154100()
{
  sub_19BFE4();
  sub_19C014();
}

Swift::Int sub_154154()
{
  sub_19BFE4();
  sub_19C684();
  sub_19C014();
  v0 = sub_19C694();

  return v0;
}

uint64_t sub_1541C8()
{
  v0 = sub_19BFE4();
  v2 = v1;
  if (v0 == sub_19BFE4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_19C644();
  }

  return v5 & 1;
}

void sub_154250()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 soundDetectionEnabled];

  v1 = sub_19BFB4();

  v2 = sub_19BFB4();
  v3 = settingsLocString(v1, v2);

  if (v3)
  {
    sub_19BFE4();
  }

  else
  {
    __break(1u);
  }
}

void sub_15434C()
{
  sub_19C3B4();
  v0 = sub_19C314();
  [v0 isNameRecognitionEnabled];

  v1 = sub_19BFB4();

  v2 = sub_19BFB4();
  v3 = settingsLocString(v1, v2);

  if (v3)
  {
    sub_19BFE4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_154438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2B8C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1544A0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1544FC(uint64_t a1, unint64_t *a2)
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

id VoiceOverExternalIntelligenceController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccessibilitySettingsControllerUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessibilitySettingsControllerUtilities();
  return objc_msgSendSuper2(&v2, "init");
}

id AccessibilitySettingsControllerUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessibilitySettingsControllerUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id _s21AccessibilitySettings0aB19ControllerUtilitiesC16initializeTipKityyFZ_0()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_19BFB4();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    return sub_19B454();
  }

  v3 = sub_19BFB4();
  v4 = [v2 BOOLForKey:v3];

  if (!v4)
  {
LABEL_9:

    return sub_19B454();
  }

  v5 = sub_19BFB4();
  [v2 setBool:0 forKey:v5];

  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = sub_19BFB4();
  [v7 setBool:0 forKey:v8];

  v9 = [v6 standardUserDefaults];
  v10 = sub_19BFB4();
  [v9 setBool:0 forKey:v10];

  v11 = objc_allocWithZone(NSUserDefaults);
  v12 = sub_19BFB4();
  v13 = [v11 initWithSuiteName:v12];

  if (v13)
  {
    v14 = sub_19BFB4();
    [v13 setBool:0 forKey:v14];
  }

  else
  {
    sub_19C3E4();
    result = AXLogCommon();
    if (!result)
    {
      goto LABEL_12;
    }

    v14 = result;
    sub_19B414();
  }

  sub_19C3E4();
  result = AXLogCommon();
  if (result)
  {
    v16 = result;
    sub_19B414();

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_154B60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B82D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_154BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8310);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v26 = sub_19B304();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8318);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  sub_19C3B4();
  v12 = sub_19C314();
  v13 = direct field offset for AXSettings.spokenContent;
  swift_beginAccess();
  v14 = *&v12[v13];

  sub_19C1D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8320);
  sub_15572C(&qword_2B8328, &type metadata accessor for AXSettings.SpokenContent);
  sub_19B0A4();

  v15 = sub_19C314();
  v16 = direct field offset for AXSettings.spokenContent;
  swift_beginAccess();
  v17 = *&v15[v16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8330);
  sub_19B0A4();

  v18 = sub_19AE74();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  sub_19B2F4();
  v19 = sub_19C314();
  v20 = direct field offset for AXSettings.spokenContent;
  swift_beginAccess();
  v21 = *&v19[v20];

  sub_19C1C4();
  v22 = sub_15572C(&qword_2B8338, &type metadata accessor for AXSUILanguageVoicePicker);
  v23 = v26;
  sub_19BA14();

  (*(v27 + 8))(v7, v23);
  v33 = v30;
  v34 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8340);
  sub_19BC94();
  v36 = sub_19B394();
  v37 = &protocol witness table for CoreSynthesisVoicePickableFetcher;
  v33 = v23;
  v34 = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  sub_19BA04();
  (*(v29 + 8))(v11, v24);
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

UIViewController __swiftcall SpokenContentSpeechSwiftUI.make()()
{
  sub_19B334();
  sub_15510C();
  return sub_19B344();
}

uint64_t sub_1550E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_15551C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_15510C()
{
  result = qword_2B82E0;
  if (!qword_2B82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B82E0);
  }

  return result;
}

id SpokenContentSpeechSwiftUI.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_19BFB4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SpokenContentSpeechSwiftUI();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id SpokenContentSpeechSwiftUI.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SpokenContentSpeechSwiftUI();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id SpokenContentSpeechSwiftUI.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpokenContentSpeechSwiftUI();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_155420(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_155468(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_15551C()
{
  v0 = sub_19B004();
  __chkstk_darwin(v0);
  v1 = sub_19B374();
  __chkstk_darwin(v1);
  (*(v3 + 104))(&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for CoreSynthesisVoicePickableFetcher.SiriVoicePolicy.neural(_:));
  v4 = sub_19B034();
  v5 = sub_19B024();
  v10 = v4;
  v11 = &protocol witness table for VoiceDatabaseClient;
  v9 = v5;
  v8 = &_swiftEmptyArrayStorage;
  sub_15572C(&qword_2B81E8, &type metadata accessor for CoreSynthesizer.Voice.Trait);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B81F0);
  sub_153924();
  sub_19C4E4();
  v6 = objc_allocWithZone(sub_19B394());
  v8 = sub_19B384();
  sub_19BC84();
  return v9;
}

uint64_t sub_15572C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_155774()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8318);
  sub_19B304();
  sub_15572C(&qword_2B8338, &type metadata accessor for AXSUILanguageVoicePicker);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_155838@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_155844(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_7;
    }

    v1 = sub_19BFB4();
    v2 = SCATLocString();

    if (v2)
    {
LABEL_8:
      sub_19BFE4();

      return;
    }

    __break(1u);
  }

  v3 = sub_19BFB4();
  v2 = SCATLocString();

  if (v2)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v4 = sub_19BFB4();
  v2 = SCATLocString();

  if (v2)
  {
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_155950(unint64_t a1, char a2)
{
  v4 = sub_166E4C(&_swiftEmptyArrayStorage);
  if (!a2)
  {
    v37 = sub_19BFB4();
    v38 = SCATLocString();

    if (v38)
    {
      v39 = sub_19BFE4();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0xE000000000000000;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v4;
    sub_15FEF8(v39, v41, a1, v39, v41, isUniquelyReferenced_nonNull_native);

    goto LABEL_77;
  }

  v5 = a1 >> 62;
  v91 = a1;
  if (a2 != 1)
  {
    v42 = sub_19BFB4();
    v43 = SCATLocString();

    if (v43)
    {
      v83 = sub_19BFE4();
      v86 = v44;
    }

    else
    {
      v83 = 0;
      v86 = 0xE000000000000000;
    }

    v46 = sub_19BFB4();
    v47 = SCATLocString();

    if (v47)
    {
      v82 = sub_19BFE4();
      v84 = v48;
    }

    else
    {
      v82 = 0;
      v84 = 0xE000000000000000;
    }

    v49 = a1;
    if (v5)
    {
      v50 = sub_19C5A4();
      v49 = a1;
      if (v50)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v50 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      if (v50)
      {
LABEL_39:
        if (v50 < 1)
        {
          goto LABEL_83;
        }

        v51 = 0;
        v80 = v50;
        v81 = v49 & 0xC000000000000001;
        do
        {
          if (v81)
          {
            v53 = sub_19C564();
          }

          else
          {
            v53 = *(v49 + 8 * v51 + 32);
          }

          v54 = v53;
          v55 = [v53 isEnabled];
          if (v55)
          {
            v56 = v86;
          }

          else
          {
            v56 = v84;
          }

          if (v55)
          {
            v57 = v83;
          }

          else
          {
            v57 = v82;
          }

          if (*(v4 + 16) && (v58 = sub_164454(v57, v56), (v59 & 1) != 0))
          {
            v60 = (*(v4 + 56) + 24 * v58);
            v88 = v60[1];
            v90 = *v60;
            v61 = v60[2];
          }

          else
          {
            v61 = &_swiftEmptyArrayStorage;
            v88 = v56;
            v90 = v57;
          }

          v92 = v61;
          v62 = v54;
          sub_19C084();
          if (*(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v92 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_19C0B4();
          }

          sub_19C0D4();
          v63 = v92;
          v64 = swift_isUniquelyReferenced_nonNull_native();
          v93 = v4;
          v66 = sub_164454(v57, v56);
          v67 = *(v4 + 16);
          v68 = (v65 & 1) == 0;
          v69 = v67 + v68;
          if (__OFADD__(v67, v68))
          {
            goto LABEL_70;
          }

          a1 = v65;
          if (*(v4 + 24) >= v69)
          {
            if (v64)
            {
              v4 = v93;
              if ((v65 & 1) == 0)
              {
                goto LABEL_65;
              }
            }

            else
            {
              sub_1710F0();
              v4 = v93;
              if ((a1 & 1) == 0)
              {
                goto LABEL_65;
              }
            }
          }

          else
          {
            sub_1709A8(v69, v64);
            v70 = sub_164454(v57, v56);
            if ((a1 & 1) != (v71 & 1))
            {
              goto LABEL_84;
            }

            v66 = v70;
            v4 = v93;
            if ((a1 & 1) == 0)
            {
LABEL_65:
              *(v4 + 8 * (v66 >> 6) + 64) |= 1 << v66;
              v72 = (*(v4 + 48) + 16 * v66);
              *v72 = v57;
              v72[1] = v56;
              v73 = (*(v4 + 56) + 24 * v66);
              *v73 = v90;
              v73[1] = v88;
              v73[2] = v63;
              v74 = *(v4 + 16);
              v28 = __OFADD__(v74, 1);
              v75 = v74 + 1;
              if (v28)
              {
                goto LABEL_72;
              }

              *(v4 + 16) = v75;

              goto LABEL_42;
            }
          }

          v52 = (*(v4 + 56) + 24 * v66);
          *v52 = v90;
          v52[1] = v88;
          v52[2] = v63;

LABEL_42:
          ++v51;
          v49 = v91;
        }

        while (v80 != v51);
      }
    }

    goto LABEL_77;
  }

  v6 = a1;
  if (v5)
  {
    goto LABEL_73;
  }

  v7 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v7)
  {
LABEL_77:
    v76 = *(v4 + 16);
    if (v76)
    {
      v77 = sub_17708C(*(v4 + 16), 0);
      v78 = sub_17F498(&v92, v77 + 4, v76, v4);
      swift_bridgeObjectRetain_n();
      sub_162138();
      if (v78 == v76)
      {
LABEL_81:
        v92 = v77;
        sub_15F444(&v92);
        swift_bridgeObjectRelease_n();
        return v92;
      }

      __break(1u);
    }

    v77 = &_swiftEmptyArrayStorage;
    goto LABEL_81;
  }

  while (v7 >= 1)
  {
    v8 = 0;
    v85 = v7;
    v87 = v6 & 0xC000000000000001;
    while (1)
    {
      v10 = v87 ? sub_19C564() : *(v6 + 8 * v8 + 32);
      v11 = v10;
      v12 = [v10 localizedSourceDescription];
      v13 = sub_19BFE4();
      a1 = v14;

      if (*(v4 + 16) && (v15 = sub_164454(v13, a1), (v16 & 1) != 0))
      {
        v17 = (*(v4 + 56) + 24 * v15);
        v19 = *v17;
        v18 = v17[1];
        v20 = v17[2];
      }

      else
      {
        v20 = &_swiftEmptyArrayStorage;
        v19 = v13;
        v18 = a1;
      }

      v89 = v18;

      v92 = v20;
      v21 = v11;
      sub_19C084();
      if (*(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v92 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_19C0B4();
      }

      sub_19C0D4();
      v22 = v92;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v4;
      v24 = sub_164454(v13, a1);
      v26 = *(v4 + 16);
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        break;
      }

      v30 = v25;
      if (*(v4 + 24) >= v29)
      {
        if ((v23 & 1) == 0)
        {
          v36 = v24;
          sub_1710F0();
          v24 = v36;
        }
      }

      else
      {
        sub_1709A8(v29, v23);
        v24 = sub_164454(v13, a1);
        if ((v30 & 1) != (v31 & 1))
        {
          goto LABEL_84;
        }
      }

      v4 = v93;
      if (v30)
      {
        v9 = (*(v93 + 56) + 24 * v24);
        *v9 = v19;
        v9[1] = v89;
        v9[2] = v22;
      }

      else
      {
        *(v93 + 8 * (v24 >> 6) + 64) |= 1 << v24;
        v32 = (*(v4 + 48) + 16 * v24);
        *v32 = v13;
        v32[1] = a1;
        v33 = (*(v4 + 56) + 24 * v24);
        *v33 = v19;
        v33[1] = v89;
        v33[2] = v22;
        v34 = *(v4 + 16);
        v28 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v28)
        {
          goto LABEL_71;
        }

        *(v4 + 16) = v35;
      }

      ++v8;
      v6 = v91;
      if (v85 == v8)
      {
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    v7 = sub_19C5A4();
    v6 = a1;
    if (!v7)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  sub_19C674();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_156124(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656372756F73;
  if (v2 != 1)
  {
    v4 = 0x6574617473;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656372756F73;
  if (*a2 != 1)
  {
    v8 = 0x6574617473;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19C644();
  }

  return v11 & 1;
}

Swift::Int sub_156210()
{
  sub_19C684();
  sub_19C014();

  return sub_19C694();
}

uint64_t sub_1562A4()
{
  sub_19C014();
}

Swift::Int sub_156324()
{
  sub_19C684();
  sub_19C014();

  return sub_19C694();
}

uint64_t sub_1563B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_16125C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1563E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656372756F73;
  if (v2 != 1)
  {
    v5 = 0x6574617473;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_156444()
{
  swift_getKeyPath();
  sub_15E180(&qword_2B8670, type metadata accessor for SCSettings);
  sub_19AF44();

  return *(v0 + 16);
}

uint64_t sub_1564E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_15E180(&qword_2B8670, type metadata accessor for SCSettings);
  sub_19AF44();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_15658C(char a1)
{
  v3 = 0xE600000000000000;
  v4 = 0x656372756F73;
  if (*(v1 + 16) != 1)
  {
    v4 = 0x6574617473;
    v3 = 0xE500000000000000;
  }

  if (*(v1 + 16))
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (*(v1 + 16))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0x656372756F73;
    }

    else
    {
      v7 = 0x6574617473;
    }

    if (a1 == 1)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v5 != v7)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0xE400000000000000;
    if (v5 != 1701736302)
    {
      goto LABEL_21;
    }
  }

  if (v6 == v8)
  {

LABEL_22:
    *(v1 + 16) = a1;
    return result;
  }

LABEL_21:
  v10 = sub_19C644();

  if (v10)
  {
    goto LABEL_22;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_15E180(&qword_2B8670, type metadata accessor for SCSettings);
  sub_19AF34();
}

void sub_156768(uint64_t a1)
{
  *(v1 + 24) = a1;

  sub_19C3B4();
  v2 = sub_19C314();
  v3 = direct field offset for AXSettings.switchControl;
  swift_beginAccess();
  v4 = *&v2[v3];

  swift_getKeyPath();
  sub_15E180(&qword_2B8670, type metadata accessor for SCSettings);
  sub_19AF44();

  sub_19C284();
}

uint64_t sub_15686C()
{
  swift_getKeyPath();
  sub_15E180(&qword_2B8670, type metadata accessor for SCSettings);
  sub_19AF44();
}

uint64_t sub_156910@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_15E180(&qword_2B8670, type metadata accessor for SCSettings);
  sub_19AF44();

  *a2 = *(v3 + 24);
}

void sub_1569BC(uint64_t a1)
{

  v3 = sub_1600A4(v2, a1);

  if (v3)
  {

    sub_156768(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_15E180(&qword_2B8670, type metadata accessor for SCSettings);
    sub_19AF34();
  }
}

uint64_t sub_156B0C()
{

  v1 = OBJC_IVAR____TtC21AccessibilitySettings10SCSettings___observationRegistrar;
  v2 = sub_19AF64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_156BB0()
{
  sub_160378();
  sub_19B704();
  return v1;
}

uint64_t sub_156BEC()
{
  type metadata accessor for SCSettings(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = &_swiftEmptyArrayStorage;
  result = sub_19AF54();
  qword_2B8348 = v0;
  return result;
}

uint64_t sub_156C48@<X0>(void *a1@<X8>)
{
  if (qword_2B81D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_2B8348;
}

uint64_t sub_156CBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_19B6F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8640);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_160C70(v2, &v14 - v9, &qword_2B8640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_19B484();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_19C3D4();
    v13 = sub_19B914();
    sub_19B414();

    sub_19B6E4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_156EBC(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8640);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for SCATSwitchesView(0);
  sub_19C3B4();
  v3 = sub_19C314();
  v4 = direct field offset for AXSettings.switchControl;
  swift_beginAccess();
  v5 = *&v3[v4];

  sub_19C294();
  sub_15E180(&qword_2B8350, &type metadata accessor for AXSettings.SwitchControl);
  sub_19BE14();
  v6 = (a1 + *(v2 + 24));
  type metadata accessor for SCSettings(0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = &_swiftEmptyArrayStorage;
  sub_19AF54();
  v17 = v7;
  sub_19BC84();
  *v6 = v18;
  v6[1] = v19;
  v8 = a1 + *(v2 + 28);
  LOBYTE(v17) = 0;
  sub_19BC84();
  *v8 = v18;
  *(v8 + 1) = v19;
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = sub_19BFB4();
  v11 = [v9 stringForKey:v10];

  if (v11)
  {
    v12 = sub_19BFE4();
    v14 = v13;

    v15._rawValue = &off_2596C0;
    v20._countAndFlagsBits = v12;
    v20._object = v14;
    v16 = sub_19C5F4(v15, v20);

    if (v16 <= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8630);
      sub_19BC94();
      sub_15658C(v16);
    }
  }
}

uint64_t sub_157144@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for SCATSwitchesView(0);
  v3 = *(v2 - 8);
  v49 = v2 - 8;
  v52 = v3;
  v51 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v50 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19B654();
  v6 = *(v5 - 8);
  v46 = v5;
  v47 = v6;
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B85E8);
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B85F0);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v13 = &v40 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B85F8);
  __chkstk_darwin(v48);
  v42 = &v40 - v14;
  v41 = v1;
  v55 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8600);
  sub_162D0C(&qword_2B8608, &qword_2B8600);
  sub_19B324();
  v54 = v1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8610);
  v16 = sub_162D0C(&qword_2B8618, &qword_2B85E8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8620);
  v18 = sub_162D0C(&qword_2B8628, &qword_2B8620);
  v57 = v17;
  v58 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_19BB04();
  (*(v43 + 8))(v11, v9);
  sub_19B644();
  v57 = v9;
  v58 = v15;
  v59 = v16;
  v60 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v20 = v42;
  v21 = v44;
  v22 = v46;
  sub_19BB34();
  (*(v47 + 8))(v8, v22);
  (*(v45 + 8))(v13, v21);
  KeyPath = swift_getKeyPath();
  v24 = v49;
  v25 = v41;
  v26 = (v41 + *(v49 + 32));
  v28 = *v26;
  v27 = v26[1];
  v57 = v28;
  v58 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8630);
  sub_19BC94();
  v29 = v56;
  v30 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8638) + 36));
  *v30 = KeyPath;
  v30[1] = v29;
  v31 = v50;
  sub_16264C(v25, v50, type metadata accessor for SCATSwitchesView);
  v32 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v33 = swift_allocObject();
  sub_1626B8(v31, v33 + v32, type metadata accessor for SCATSwitchesView);
  v34 = (v20 + *(v48 + 36));
  *v34 = sub_15EFEC;
  v34[1] = v33;
  v34[2] = 0;
  v34[3] = 0;
  v35 = v25 + *(v24 + 36);
  v36 = *v35;
  v37 = *(v35 + 8);
  LOBYTE(v57) = v36;
  v58 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8648);
  sub_19BC94();
  LOBYTE(v57) = v56;
  sub_16264C(v25, v31, type metadata accessor for SCATSwitchesView);
  v38 = swift_allocObject();
  sub_1626B8(v31, v38 + v32, type metadata accessor for SCATSwitchesView);
  sub_162A6C(&qword_2B8650, &qword_2B85F8, &unk_1DB1A8, sub_15F224);
  sub_19BB14();

  return sub_160CD8(v20, &qword_2B85F8);
}

uint64_t sub_157818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B87B0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  sub_157A50(&v22 - v8);
  v10 = (a1 + *(type metadata accessor for SCATSwitchesView(0) + 24));
  v12 = *v10;
  v11 = v10[1];
  v22 = v12;
  v23 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8630);
  sub_19BCB4();
  v13 = v25;
  v14 = v26;
  v15 = v27;
  swift_getKeyPath();
  v25 = v13;
  v26 = v14;
  v27 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8788);
  sub_19BD44();

  v16 = v22;
  v17 = v23;
  v18 = v24;

  KeyPath = swift_getKeyPath();
  sub_160C70(v9, v7, &qword_2B87B0);
  sub_160C70(v7, a2, &qword_2B87B0);
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B87B8) + 48);
  *v20 = v16;
  *(v20 + 8) = v17;
  *(v20 + 16) = v18;
  *(v20 + 24) = KeyPath;
  *(v20 + 32) = 0;

  sub_160CD8(v9, &qword_2B87B0);

  return sub_160CD8(v7, &qword_2B87B0);
}

uint64_t sub_157A50@<X0>(char *a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B87C0);
  v3 = __chkstk_darwin(v2 - 8);
  v36 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v37 = v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B87C8);
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = __chkstk_darwin(v6);
  v34 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v31 - v9;
  v38 = v1;
  sub_15AA14(&v43);
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B87D0);
  v31[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B87D8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B87E0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B87E8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B87F0);
  v14 = sub_162D0C(&qword_2B87F8, &qword_2B87E8);
  v15 = sub_162D0C(&qword_2B8800, &qword_2B87F0);
  v39 = v12;
  v40 = v13;
  v41 = v14;
  v42 = v15;
  v16 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v11;
  v40 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_160B34();
  v18 = v10;
  sub_19BDE4();
  IsSetup = AXProcessIsSetup();
  if (IsSetup)
  {
    __chkstk_darwin(IsSetup);
    v31[-2] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8840);
    sub_162D0C(&qword_2B8848, &qword_2B8840);
    sub_19BDD4();
    v16 = 0;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8830);
  v21 = v37;
  (*(*(v20 - 8) + 56))(v37, v16, 1, v20);
  v22 = v32;
  v23 = v33;
  v24 = *(v32 + 16);
  v25 = v34;
  v24(v34, v18, v33);
  v26 = v36;
  sub_160C70(v21, v36, &qword_2B87C0);
  v27 = v35;
  v24(v35, v25, v23);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8838);
  sub_160C70(v26, &v27[*(v28 + 48)], &qword_2B87C0);
  sub_160CD8(v21, &qword_2B87C0);
  v29 = *(v22 + 8);
  v29(v18, v23);
  sub_160CD8(v26, &qword_2B87C0);
  return (v29)(v25, v23);
}

uint64_t sub_157F24(uint64_t a1)
{
  v2 = sub_19B7D4();
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8620);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_19B7B4();
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8688);
  sub_160404(&qword_2B8690, &qword_2B8688, &unk_1DB240, sub_1603D4);
  sub_19B664();
  sub_162D0C(&qword_2B8628, &qword_2B8620);
  sub_19B7F4();
  return (*(v4 + 8))(v6, v3);
}

void sub_158110()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B86A0);
  __chkstk_darwin(v0);
  v2 = v8 - v1;
  sub_15861C(v8 - v1);
  v3 = sub_19BFB4();
  v4 = SCATLocString();

  if (v4)
  {
    v5 = sub_19BFE4();
    v7 = v6;

    v8[0] = v5;
    v8[1] = v7;
    sub_1603D4();
    sub_16082C();
    sub_19BA94();

    sub_160CD8(v2, &qword_2B86A0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_15824C()
{
  sub_160378();

  return sub_19B714();
}

uint64_t sub_1582AC(uint64_t a1)
{
  v6 = *(a1 + *(type metadata accessor for SCATSwitchesView(0) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8630);
  sub_19BC94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8360);
  sub_19BDF4();
  v1 = sub_19C274();

  v3 = sub_1600A4(v2, v1);

  if (v3)
  {
    sub_156768(v1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_15E180(&qword_2B8670, type metadata accessor for SCSettings);
    sub_19AF34();
  }
}

uint64_t sub_158464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + *(type metadata accessor for SCATSwitchesView(0) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8630);
  sub_19BC94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8360);
  sub_19BDF4();
  v3 = sub_19C274();

  v5 = sub_1600A4(v4, v3);

  if (v5)
  {
    sub_156768(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_15E180(&qword_2B8670, type metadata accessor for SCSettings);
    sub_19AF34();
  }
}

uint64_t sub_15861C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v81 = sub_19B764();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_19B484();
  v71 = *(v72 - 8);
  v4 = __chkstk_darwin(v72);
  v70 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = &v66 - v6;
  v7 = sub_19B594();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B86E8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B86D0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v66 - v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B86C0);
  __chkstk_darwin(v74);
  v75 = &v66 - v19;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B86B0);
  __chkstk_darwin(v76);
  v77 = &v66 - v20;
  v83 = v2;
  v82 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8740);
  sub_160890();
  sub_19B994();
  sub_19B584();
  sub_162D0C(&qword_2B86F0, &qword_2B86E8);
  sub_15E180(&qword_2B86F8, &type metadata accessor for ButtonMenuStyle);
  sub_19BB44();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  v21 = sub_19B934();
  sub_19B464();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B86E0) + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = &v18[*(v16 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8708);
  sub_19B684();
  *v31 = 0;
  v32 = *(type metadata accessor for SCATSwitchesView(0) + 24);
  v73 = v2;
  v33 = (v2 + v32);
  v34 = *v33;
  v35 = v33[1];
  v85 = *v33;
  v86 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8630);
  sub_19BC94();
  v37 = v84;
  swift_getKeyPath();
  v85 = v37;
  sub_15E180(&qword_2B8670, type metadata accessor for SCSettings);
  sub_19AF44();

  if (!v37[16])
  {

    v39 = v76;
    v40 = v75;
    goto LABEL_6;
  }

  v38 = sub_19C644();

  v39 = v76;
  v40 = v75;
  if (v38)
  {
LABEL_6:
    v48 = sub_19BBE4();
    goto LABEL_9;
  }

  v66 = v36;
  v67 = v35;
  v68 = v34;
  v41 = v69;
  sub_156CBC(v69);
  v42 = v71;
  v43 = v70;
  v44 = v72;
  (*(v71 + 104))(v70, enum case for ColorScheme.dark(_:), v72);
  v45 = sub_19B474();
  v46 = *(v42 + 8);
  v46(v43, v44);
  v46(v41, v44);
  if (v45)
  {
    v47 = sub_19BBA4();
  }

  else
  {
    v47 = sub_19BBC4();
  }

  v48 = v47;
  v34 = v68;
  v35 = v67;
LABEL_9:
  sub_1609D0(v18, v40, &qword_2B86D0);
  *(v40 + *(v74 + 36)) = v48;
  v85 = v34;
  v86 = v35;
  sub_19BC94();
  v49 = v84;
  swift_getKeyPath();
  v85 = v49;
  sub_19AF44();

  if (v49[16])
  {
    v50 = sub_19C644();

    if ((v50 & 1) == 0)
    {
      v51 = sub_19BB84();
      v52 = 256;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v51 = 0;
  v52 = 0;
LABEL_14:
  v53 = sub_19BE94();
  v55 = v54;
  v56 = v40;
  v57 = v77;
  sub_1609D0(v56, v77, &qword_2B86C0);
  v58 = v57 + *(v39 + 36);
  *v58 = v51;
  *(v58 + 8) = v52;
  *(v58 + 16) = v53;
  *(v58 + 24) = v55;
  v85 = v34;
  v86 = v35;
  sub_19BC94();
  v59 = v84;
  swift_getKeyPath();
  v85 = v59;
  sub_19AF44();

  if (v59[16])
  {
    v61 = v78;
    v60 = v79;
    v62 = sub_19C644();

    if ((v62 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8760);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1DAF90;
      sub_19B754();
      v85 = v63;
      goto LABEL_20;
    }
  }

  else
  {

    v61 = v78;
    v60 = v79;
  }

  v85 = &_swiftEmptyArrayStorage;
LABEL_20:
  sub_15E180(&qword_2B8768, &type metadata accessor for AccessibilityTraits);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8770);
  sub_162D0C(&qword_2B8778, &qword_2B8770);
  v64 = v81;
  sub_19C4E4();
  sub_1604B8();
  sub_19BAC4();
  (*(v60 + 8))(v61, v64);
  return sub_160CD8(v57, &qword_2B86B0);
}

uint64_t sub_1590D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8780);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8750);
  sub_162D0C(&qword_2B8758, &qword_2B8750);
  sub_15EF14();
  swift_getOpaqueTypeConformance2();
  return sub_19BDD4();
}

void sub_1591D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8750);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v6 = (a1 + *(type metadata accessor for SCATSwitchesView(0) + 24));
  v8 = *v6;
  v7 = v6[1];
  v41 = v8;
  v42 = v7;
  v27 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8630);
  sub_19BCB4();
  v9 = v31;
  v10 = v32;
  v11 = v33;
  swift_getKeyPath();
  v41 = v9;
  v42 = v10;
  v43 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8788);
  sub_19BD44();
  v12 = v38;
  v13 = v39;
  v14 = v40;

  v35 = v12;
  v36 = v13;
  v37 = v14;
  v15 = sub_19BFB4();
  v16 = SCATLocString();

  if (v16)
  {

    v17 = sub_19BFE4();
    v19 = v18;

    v31 = v17;
    v32 = v19;
    sub_16082C();
    v31 = sub_19B9D4();
    v32 = v20;
    LOBYTE(v33) = v21 & 1;
    v34 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8790);
    sub_160A40();
    sub_160A94();
    sub_19BCF4();
    v31 = v8;
    v32 = v27;
    sub_19BC94();
    v23 = v41;
    swift_getKeyPath();
    v31 = v23;
    sub_15E180(&qword_2B8670, type metadata accessor for SCSettings);
    sub_19AF44();

    v24 = *(v23 + 16);

    LOBYTE(v31) = v24;
    sub_162D0C(&qword_2B8758, &qword_2B8750);
    sub_15EF14();
    v25 = v30;
    sub_19BB14();
    (*(v29 + 8))(v5, v25);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_15956C()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B85D8);
  sub_162D0C(&qword_2B87A8, &qword_2B85D8);
  sub_160A40();
  return sub_19BD84();
}

uint64_t sub_159658@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_155844(*a1);
  sub_16082C();
  result = sub_19B9D4();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void sub_1596B4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_19BFB4();

  v2 = sub_19BFB4();
  [v0 setObject:v1 forKey:v2];
}

uint64_t sub_1597B4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SCATSwitchesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8630);
  sub_19BC94();

  result = sub_19BC44();
  *a1 = result;
  return result;
}

void sub_159848(uint64_t a1@<X8>)
{
  v33 = a1;
  v27 = type metadata accessor for SCATSwitchesView(0);
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v27);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B87E8);
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B87E0);
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v28 = &v26 - v8;
  v9 = sub_19BFB4();
  v10 = SCATLocString();

  if (v10)
  {
    v11 = sub_19BFE4();
    v13 = v12;

    v34 = v11;
    v35 = v13;
    sub_16264C(v1, &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SCATSwitchesView);
    v14 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v15 = swift_allocObject();
    sub_1626B8(&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SCATSwitchesView);
    sub_16082C();
    sub_19BCE4();
    v16 = v1 + *(v27 + 28);
    v17 = *v16;
    v18 = *(v16 + 8);
    v38 = v17;
    v39 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8648);
    sub_19BCB4();
    sub_16264C(v1, &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SCATSwitchesView);
    v19 = swift_allocObject();
    sub_1626B8(&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v14, type metadata accessor for SCATSwitchesView);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B87F0);
    v24 = sub_162D0C(&qword_2B87F8, &qword_2B87E8);
    v25 = sub_162D0C(&qword_2B8800, &qword_2B87F0);
    v21 = v28;
    v22 = v30;
    sub_19BAF4();

    (*(v29 + 8))(v6, v22);
    v34 = v22;
    v35 = v20;
    v36 = v24;
    v37 = v25;
    swift_getOpaqueTypeConformance2();
    v23 = v32;
    sub_19B9F4();
    (*(v31 + 8))(v21, v23);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_159CE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8870);
  sub_160EBC();
  return sub_19B614();
}

void sub_159D54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_19B724();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8890);
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8880);
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B88B0);
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v41 = &v37 - v11;
  v12 = *(type metadata accessor for SCATSwitchesView(0) + 28);
  v43 = a1;
  v13 = (a1 + v12);
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v53) = v14;
  v54 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8648);
  sub_19BCB4();
  v16 = sub_19BFB4();
  v17 = SCATLocString();

  if (v17)
  {
    v18 = sub_19BFE4();
    v20 = v19;

    v53 = v18;
    v54 = v20;
    v21 = sub_1610A4();
    v22 = sub_16082C();
    sub_19BA84();

    v24 = v38;
    v23 = v39;
    (*(v38 + 104))(v5, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v39);
    v49 = &type metadata for SwitchSourceController;
    v50 = &type metadata for String;
    v51 = v21;
    v52 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = v42;
    v27 = v40;
    sub_19BAE4();
    (*(v24 + 8))(v5, v23);
    v28 = (*(v37 + 8))(v7, v27);
    __chkstk_darwin(v28);
    *(&v37 - 2) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8888);
    v49 = v27;
    v50 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B88A0);
    v30 = sub_162D0C(&qword_2B88A8, &qword_2B88A0);
    v49 = v29;
    v50 = v30;
    swift_getOpaqueTypeConformance2();
    v31 = v41;
    v32 = v47;
    sub_19BB04();
    (*(v46 + 8))(v26, v32);
    v33 = sub_19B624();
    v34 = sub_19B934();
    v35 = v48;
    (*(v44 + 32))(v48, v31, v45);
    v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8870) + 36);
    *v36 = v33;
    *(v36 + 8) = v34;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_15A2C8(uint64_t a1)
{
  v2 = sub_19B7D4();
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B88A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_19B7C4();
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B88B8);
  sub_161108();
  sub_19B4B4();
  sub_162D0C(&qword_2B88A8, &qword_2B88A0);
  sub_19B7F4();
  return (*(v4 + 8))(v6, v3);
}

void sub_15A480(uint64_t a1)
{
  v2 = type metadata accessor for SCATSwitchesView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B88D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  sub_16264C(a1, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SCATSwitchesView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1626B8(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for SCATSwitchesView);
  sub_19BCD4();
  v11 = sub_19BFB4();
  v12 = SCATLocString();

  if (v12)
  {
    v13 = sub_19BFE4();
    v15 = v14;

    v16[0] = v13;
    v16[1] = v15;
    sub_162D0C(&qword_2B88C8, &qword_2B88D0);
    sub_16082C();
    sub_19BA94();

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_15A720()
{
  type metadata accessor for SCATSwitchesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8648);
  return sub_19BCA4();
}

uint64_t sub_15A794@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19BC44();
  *a1 = result;
  return result;
}

void sub_15A7CC(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8868);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - v4;
  v6 = sub_19BFB4();
  v7 = SCATLocString();

  if (v7)
  {
    v8 = sub_19BFE4();
    v10 = v9;

    v13[0] = v8;
    v13[1] = v10;
    sub_160E0C();
    sub_16082C();
    sub_19BA84();

    v11 = sub_19B624();
    LOBYTE(v8) = sub_19B934();
    (*(v3 + 32))(a1, v5, v2);
    v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8850) + 36);
    *v12 = v11;
    *(v12 + 8) = v8;
  }

  else
  {
    __break(1u);
  }
}

void sub_15A968(uint64_t a1@<X8>)
{
  v2 = sub_19BFB4();
  v3 = SCATLocString();

  if (v3)
  {
    sub_19BFE4();

    sub_16082C();
    *a1 = sub_19B9D4();
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v6;
  }

  else
  {
    __break(1u);
  }
}

void sub_15AA14(uint64_t a1@<X8>)
{
  type metadata accessor for SCATSwitchesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8360);
  sub_19BDF4();
  v2 = sub_19C1F4();

  if (v2 == 2)
  {
    v25 = a1;
    v15 = sub_19BFB4();
    v14 = SCATLocString();

    if (v14)
    {
LABEL_9:
      v16 = sub_19BFE4();
      v18 = v17;

      *&v27 = v16;
      *(&v27 + 1) = v18;
      sub_16082C();
      v8 = sub_19B9D4();
      v10 = v19;
      v12 = v20 & 1;
      sub_160E60(v8, v19, v20 & 1);

      sub_19B7A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8818);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8828);
      sub_160C00(&qword_2B8810, &qword_2B8818);
      sub_160C00(&qword_2B8820, &qword_2B8828);
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    v25 = a1;
    v13 = sub_19BFB4();
    v14 = SCATLocString();

    if (v14)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v2)
  {
    sub_19B7A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8818);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8828);
    sub_160C00(&qword_2B8810, &qword_2B8818);
    sub_160C00(&qword_2B8820, &qword_2B8828);
    sub_19B7A4();
    v21 = v26;
    v22 = v28;
    v23 = v29;
    v24 = v30;
    goto LABEL_12;
  }

  v25 = a1;
  v3 = sub_19BFB4();
  v4 = SCATLocString();

  if (v4)
  {
    v5 = sub_19BFE4();
    v7 = v6;

    *&v27 = v5;
    *(&v27 + 1) = v7;
    sub_16082C();
    v8 = sub_19B9D4();
    v10 = v9;
    v12 = v11 & 1;
    sub_160E60(v8, v9, v11 & 1);

    sub_19B7A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8818);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8828);
    sub_160C00(&qword_2B8810, &qword_2B8818);
    sub_160C00(&qword_2B8820, &qword_2B8828);
LABEL_10:
    sub_19B7A4();
    sub_160E70(v8, v10, v12);

    v21 = v27;
    v22 = v28;
    v23 = v29;
    v24 = v30;
    a1 = v25;
LABEL_12:
    *a1 = v21;
    *(a1 + 16) = v22;
    *(a1 + 32) = v23;
    *(a1 + 33) = v24;
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_15B030()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8850);
  sub_160D40();
  return sub_19B2E4();
}

uint64_t sub_15B0E8()
{
  v1 = v0;
  v2 = sub_19B6F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v1 + 32);
  v6 = *(v1 + 24);
  v21 = v6;
  v7 = v22;

  if ((v7 & 1) == 0)
  {
    sub_19C3D4();
    v8 = sub_19B914();
    sub_19B414();

    sub_19B6E4();
    swift_getAtKeyPath();
    sub_160CD8(&v21, &qword_2B88E8);
    (*(v3 + 8))(v5, v2);
    v6 = v18[0];
  }

  swift_getKeyPath();
  v18[0] = v6;
  sub_15E180(&qword_2B8670, type metadata accessor for SCSettings);
  sub_19AF44();

  v9 = *(v6 + 16);

  v10 = *(v1 + 8);
  v12 = *(v1 + 16);
  v18[0] = *v1;
  v11 = v18[0];
  v18[1] = v10;
  v18[2] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B88F0);
  sub_19BD24();
  v13 = sub_155950(v20, v9);

  v17 = v13;
  v19 = v11;
  v20 = v12;
  v14 = swift_allocObject();
  v15 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v1 + 32);
  sub_160C70(&v21, v18, &qword_2B88E8);
  sub_161658(&v19, v18);

  sub_160C70(&v20, v18, &qword_2B88F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8908);
  sub_162D0C(&qword_2B8910, &qword_2B8900);
  sub_1616B4();
  sub_161910();
  return sub_19BD94();
}

uint64_t sub_15B444()
{
  sub_16082C();

  sub_19B9D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8928);
  sub_16174C();
  return sub_19BDC4();
}

uint64_t sub_15B51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a3;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B88F8);
  type metadata accessor for SwitchRow(0);
  sub_162D0C(&qword_2B8960, &qword_2B88F8);
  sub_15E180(&qword_2B8968, &type metadata accessor for UUID);
  sub_15E180(&qword_2B8940, type metadata accessor for SwitchRow);
  sub_19BD84();
  v10 = *a4;
  v11 = a4[3];
  v20 = a4[2];
  v21 = v10;
  v18 = v11;
  v19 = *(a4 + 32);
  v12 = swift_allocObject();
  v13 = *(a4 + 1);
  *(v12 + 16) = *a4;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a4 + 32);
  *(v12 + 56) = a1;
  *(v12 + 64) = a2;
  *(v12 + 72) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1619E0;
  *(v14 + 24) = v12;
  v15 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8928) + 36));
  *v15 = sub_161A40;
  v15[1] = v14;

  sub_161658(&v21, v17);

  sub_160C70(&v20, v17, &qword_2B88F8);
  sub_160C70(&v18, v17, &qword_2B88E8);
}

void sub_15B790(id *a1)
{
  v1 = [*a1 uuid];
  sub_19AE34();
}

uint64_t sub_15B7F0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_19C3B4();
  v4 = sub_19C314();
  v5 = direct field offset for AXSettings.switchControl;
  swift_beginAccess();
  *&v4[v5];

  sub_16032C();
  v6 = v3;
  sub_19BC84();
  *a2 = v11;
  a2[1] = v12;
  sub_19C294();
  sub_19BC84();
  a2[2] = v11;
  a2[3] = v12;
  v7 = type metadata accessor for SwitchRow(0);
  v8 = *(v7 + 24);
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8988);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + *(v7 + 28);
  result = swift_getKeyPath();
  *v9 = result;
  v9[8] = 0;
  return result;
}

uint64_t sub_15B91C()
{
  v16 = sub_19B6F4();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8988);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_19B5B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SwitchRow(0);
  sub_160C70(v0 + *(v11 + 24), v6, &qword_2B8988);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_19C3D4();
    v12 = sub_19B914();
    sub_19B414();

    sub_19B6E4();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = sub_19B5A4();
  (*(v8 + 8))(v10, v7);
  return v13 & 1;
}

uint64_t sub_15BBA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for SwitchRow(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v7 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8A68);
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  __chkstk_darwin(v10);
  v13 = v26 - v12;
  v14 = *v1;
  v27 = v1[1];
  v28 = v14;
  v33 = v14;
  v34 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8A70);
  sub_19BC94();
  v15 = v32;
  v16 = [v32 name];

  v17 = sub_19BFE4();
  v26[0] = v18;
  v26[1] = v17;

  sub_16264C(v1, v9, type metadata accessor for SwitchRow);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_1626B8(v9, v20 + v19, type metadata accessor for SwitchRow);
  sub_16264C(v2, v7, type metadata accessor for SwitchRow);
  v21 = swift_allocObject();
  sub_1626B8(v7, v21 + v19, type metadata accessor for SwitchRow);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8A80);
  sub_162988();
  sub_162A6C(&qword_2B8AB0, &qword_2B8A80, &unk_1DB8D8, sub_162AF0);
  sub_19B2E4();
  v33 = v28;
  v34 = v27;
  sub_19BC94();
  v22 = v32;
  v23 = [v32 name];

  sub_19BFE4();
  sub_162D0C(&qword_2B8AD8, &qword_2B8A68);
  v24 = v29;
  sub_19B9F4();

  return (*(v30 + 8))(v13, v24);
}

uint64_t sub_15BF6C@<X0>(ValueMetadata **a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for SwitchRow(0);
  v39 = *(v3 - 8);
  v38 = *(v39 + 64);
  __chkstk_darwin(v3 - 8);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_19B724();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8AC8);
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v32 - v8;
  v10 = a1;
  v35 = a1;
  v11 = *a1;
  v12 = v10[1];
  v40 = v11;
  v41 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8A70);
  sub_19BC94();
  v13 = v45;
  v40 = v11;
  v41 = v12;
  sub_19BC94();
  v14 = v44;
  v15 = [v44 name];

  v16 = sub_19BFE4();
  v18 = v17;

  v40 = v16;
  v41 = v18;
  v19 = sub_162C00();
  v20 = sub_16082C();
  sub_19BA84();

  v21 = v33;
  (*(v5 + 104))(v7, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v33);
  v40 = &type metadata for SwitchDetailsViewController;
  v41 = &type metadata for String;
  v42 = v19;
  v43 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v36;
  v23 = v32;
  sub_19BAE4();
  (*(v5 + 8))(v7, v21);
  (*(v34 + 8))(v9, v23);
  v24 = sub_19B624();
  LOBYTE(v16) = sub_19B934();
  v25 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8AC0) + 36);
  v26 = v22;
  *v25 = v24;
  *(v25 + 8) = v16;
  v27 = v37;
  sub_16264C(v35, v37, type metadata accessor for SwitchRow);
  v28 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v29 = swift_allocObject();
  sub_1626B8(v27, v29 + v28, type metadata accessor for SwitchRow);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8A80);
  v31 = (v26 + *(result + 36));
  *v31 = 0;
  v31[1] = 0;
  v31[2] = sub_162F2C;
  v31[3] = v29;
  return result;
}

uint64_t sub_15C378(uint64_t a1)
{
  v2 = sub_19B6F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for SwitchRow(0) + 28));
  v7 = *v6;
  v8 = *(v6 + 8);

  v9 = v7;
  if ((v8 & 1) == 0)
  {
    sub_19C3D4();
    v10 = sub_19B914();
    sub_19B414();

    sub_19B6E4();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v9 = v16;
  }

  swift_getKeyPath();
  v16 = v9;
  sub_15E180(&qword_2B8670, type metadata accessor for SCSettings);
  sub_19AF44();

  v11 = *(v9 + 16);

  if (v8)
  {
    sub_15658C(0);
  }

  else
  {
    sub_19C3D4();
    v12 = sub_19B914();
    sub_19B414();

    sub_19B6E4();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    sub_15658C(0);

    sub_19C3D4();
    v13 = sub_19B914();
    sub_19B414();

    sub_19B6E4();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_15658C(v11);
}

void sub_15C6A8(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_19B5B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SwitchRow(0);
  sub_18DE64(v7);
  v8 = sub_19B5A4();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v11 = sub_19B784();
    v12 = 0;
    v13 = 1;
    sub_162CA8();
  }

  else
  {
    v11 = sub_19B734();
    v12 = 0;
    v13 = 1;
    sub_162C54();
  }

  *a1 = sub_19BED4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8A78);
  sub_15D29C(v2, a1 + *(v9 + 44));
}

uint64_t sub_15C810(void *a1)
{
  if (![a1 isEnabled])
  {
    v9 = &selRef_systemGrayColor;
    goto LABEL_36;
  }

  v2 = [a1 source];
  v3 = sub_19BFE4();
  v5 = v4;

  if (sub_19BFE4() == v3 && v6 == v5)
  {
    v9 = &selRef_systemTealColor;
LABEL_34:

    goto LABEL_35;
  }

  v8 = sub_19C644();

  if (v8)
  {
    v9 = &selRef_systemTealColor;
LABEL_35:

    goto LABEL_36;
  }

  if (sub_19BFE4() == v3 && v10 == v5)
  {
    goto LABEL_33;
  }

  v12 = sub_19C644();

  if (v12)
  {
LABEL_15:
    v9 = &selRef_systemIndigoColor;
    goto LABEL_35;
  }

  if (sub_19BFE4() == v3 && v13 == v5)
  {
    v9 = &selRef_systemDarkBlueColor;
    goto LABEL_34;
  }

  v14 = sub_19C644();

  if (v14)
  {
    v9 = &selRef_systemDarkBlueColor;
    goto LABEL_35;
  }

  if (sub_19BFE4() == v3 && v15 == v5)
  {
    v9 = &selRef_systemGreenColor;
    goto LABEL_34;
  }

  v16 = sub_19C644();

  if (v16)
  {
    v9 = &selRef_systemGreenColor;
    goto LABEL_35;
  }

  if (sub_19BFE4() == v3 && v17 == v5)
  {
    v9 = &selRef_systemBlueColor;
    goto LABEL_34;
  }

  v18 = sub_19C644();

  if (v18)
  {
    v9 = &selRef_systemBlueColor;
    goto LABEL_35;
  }

  if (sub_19BFE4() == v3 && v19 == v5)
  {
LABEL_33:
    v9 = &selRef_systemIndigoColor;
    goto LABEL_34;
  }

  v22 = sub_19C644();

  if (v22)
  {
    goto LABEL_15;
  }

  if (sub_19BFE4() == v3 && v23 == v5)
  {
LABEL_42:
    v9 = &selRef_systemPinkColor;
    goto LABEL_34;
  }

  v24 = sub_19C644();

  if (v24)
  {
    goto LABEL_44;
  }

  if (sub_19BFE4() == v3 && v25 == v5)
  {
    goto LABEL_42;
  }

  v26 = sub_19C644();

  if (v26)
  {
    goto LABEL_44;
  }

  if (sub_19BFE4() == v3 && v27 == v5)
  {
    goto LABEL_42;
  }

  v28 = sub_19C644();

  if (v28)
  {
LABEL_44:
    v9 = &selRef_systemPinkColor;
    goto LABEL_35;
  }

  if (sub_19BFE4() == v3 && v29 == v5)
  {
    v9 = &selRef_systemOrangeColor;
    goto LABEL_34;
  }

  v30 = sub_19C644();

  if (v30)
  {
    v9 = &selRef_systemOrangeColor;
    goto LABEL_35;
  }

  if (sub_19BFE4() == v3 && v31 == v5)
  {
    v9 = &selRef_systemYellowColor;
    goto LABEL_34;
  }

  v32 = sub_19C644();

  if (v32)
  {
    v9 = &selRef_systemYellowColor;
    goto LABEL_35;
  }

  if (sub_19BFE4() == v3 && v33 == v5)
  {
LABEL_63:
    v9 = &selRef_systemCyanColor;
    goto LABEL_34;
  }

  v34 = sub_19C644();

  if (v34)
  {
    goto LABEL_71;
  }

  if (sub_19BFE4() == v3 && v35 == v5)
  {
    goto LABEL_63;
  }

  v36 = sub_19C644();

  if (v36)
  {
    goto LABEL_71;
  }

  if (sub_19BFE4() == v3 && v37 == v5)
  {
    goto LABEL_63;
  }

  v38 = sub_19C644();

  if (v38)
  {
LABEL_71:
    v9 = &selRef_systemCyanColor;
    goto LABEL_35;
  }

  v9 = &selRef_systemDarkBlueColor;
  if (sub_19BFE4() == v3 && v39 == v5)
  {
    goto LABEL_34;
  }

  v40 = sub_19C644();

  if ((v40 & 1) == 0)
  {
    v9 = &selRef_systemBlackColor;
  }

LABEL_36:
  v20 = [objc_opt_self() *v9];

  return sub_19BC14();
}

id sub_15CDE4(void *a1)
{
  if (![a1 supportsLongPress])
  {
    return 0;
  }

  if (([a1 hasLongPressAction] & 1) == 0)
  {
    result = [a1 longPressShortcutIdentifier];
    if (!result)
    {
      return result;
    }
  }

  v3 = sub_19BFB4();
  [a1 longPressAction];
  v4 = SCATLocStringForAction();
  v5 = SCATLocStringWithParameters();

  if (!v5)
  {
    return 0;
  }

  v6 = sub_19BFE4();

  return v6;
}

id sub_15CEDC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8A70);
  sub_19BC94();
  v1 = [v42 name];

  sub_19BFE4();
  sub_16082C();
  v39 = sub_19B9D4();
  v40 = v2;
  v41 = v3;
  v38 = v4;
  sub_19BC94();
  [v42 action];

  result = SCATLocStringForAction();
  if (result)
  {
    v6 = result;
    sub_19BFE4();

    v7 = sub_19B9D4();
    v9 = v8;
    v11 = v10;
    sub_19B954();
    v33 = sub_19B9C4();
    v34 = v12;
    v35 = v13;
    v36 = v14;

    sub_160E70(v7, v9, v11 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8B28);
    sub_19BC94();
    v15 = sub_19C224();

    if (v15)
    {
      sub_19BC94();
      sub_15CDE4(v42);
      v17 = v16;

      if (v17)
      {
        v18 = sub_19B9D4();
        v20 = v19;
        v22 = v21;
        sub_19B954();
        v23 = sub_19B9C4();
        v25 = v24;
        v27 = v26;
        v29 = v28;

        sub_160E70(v18, v20, v22 & 1);

        v30 = v27 & 1;
        v17 = v23;
        v31 = v25;
        sub_160E60(v23, v25, v30);
        v32 = v29;

LABEL_7:
        sub_160E60(v39, v41, v38 & 1);

        sub_160E60(v33, v34, v35 & 1);

        sub_162EA4(v17, v31, v30, v32);
        sub_162EE8(v17, v31, v30, v32);
        *a1 = v39;
        *(a1 + 8) = v41;
        *(a1 + 16) = v38 & 1;
        *(a1 + 24) = v40;
        *(a1 + 32) = v33;
        *(a1 + 40) = v34;
        *(a1 + 48) = v35 & 1;
        *(a1 + 56) = v36;
        *(a1 + 64) = v17;
        *(a1 + 72) = v31;
        *(a1 + 80) = v30;
        *(a1 + 88) = v32;
        sub_162EE8(v17, v31, v30, v32);
        sub_160E70(v33, v34, v35 & 1);

        sub_160E70(v39, v41, v38 & 1);
      }
    }

    else
    {
      v17 = 0;
    }

    v31 = 0;
    v30 = 0;
    v32 = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_15D29C(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8AF0);
  v52 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v47 - v7;
  v56 = a1;
  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8AF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8B00);
  sub_162D0C(&qword_2B8B08, &qword_2B8AF8);
  sub_162D54();
  v53 = v8;
  sub_19BC74();
  v9 = a1[1];
  v58 = *a1;
  v59 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8A70);
  sub_19BC94();
  v10 = v57;
  v11 = [v57 isEnabled];

  if (v11)
  {
    v12 = 0;
    v50 = 0;
    v51 = 0;
    v13 = 0;
    v14 = 0;
LABEL_8:
    v37 = v52;
    v38 = v53;
    v39 = *(v52 + 16);
    v40 = v3;
    v39(v6, v53, v3);
    v41 = v37;
    v42 = v54;
    v39(v54, v6, v40);
    v43 = &v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8B18) + 48)];
    v45 = v50;
    v44 = v51;
    sub_162E0C(0, v12, v51, v50, v13, v14);
    sub_162E58(0, v12, v44, v45, v13, v14);
    *v43 = 0;
    *(v43 + 1) = v12;
    *(v43 + 2) = v44;
    *(v43 + 3) = v45;
    *(v43 + 4) = v13;
    *(v43 + 5) = v14;
    v46 = *(v41 + 8);
    v46(v38, v40);
    sub_162E58(0, v12, v44, v45, v13, v14);
    v46(v6, v40);
    return;
  }

  v48 = v6;
  v49 = v3;
  v15 = sub_15B91C();
  v16 = sub_19BFB4();
  v17 = SCATLocString();

  if (v17)
  {
    v51 = ~v15;
    v18 = sub_19BFE4();
    v20 = v19;

    v58 = v18;
    v59 = v20;
    sub_16082C();
    v21 = sub_19B9D4();
    v23 = v22;
    LOBYTE(v20) = v24;
    sub_19B954();
    v25 = sub_19B9C4();
    v27 = v26;
    v29 = v28;

    sub_160E70(v21, v23, v20 & 1);

    v58 = sub_19BBF4();
    v30 = sub_19B9B4();
    v32 = v31;
    v34 = v33;
    v14 = v35;
    sub_160E70(v25, v27, v29 & 1);

    v13 = v34 & 1;
    sub_160E60(v30, v32, v34 & 1);

    sub_160E70(v30, v32, v34 & 1);

    if (v15)
    {
      v36 = 256;
    }

    else
    {
      v36 = 0;
    }

    v12 = v36 & 0xFFFFFFFFFFFFFFFELL | v51 & 1;
    v50 = v32;
    v51 = v30;
    sub_160E60(v30, v32, v34 & 1);

    v6 = v48;
    v3 = v49;
    goto LABEL_8;
  }

  __break(1u);
}

double sub_15D748@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_19B784();
  v16 = 1;
  sub_15CEDC(&v9);
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v17 = v9;
  v18 = v10;
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v23[5] = v14;
  v23[0] = v9;
  v23[1] = v10;
  sub_160C70(&v17, &v8, &qword_2B8B20);
  sub_160CD8(v23, &qword_2B8B20);
  *&v15[39] = v19;
  *&v15[55] = v20;
  *&v15[71] = v21;
  *&v15[87] = v22;
  *&v15[7] = v17;
  *&v15[23] = v18;
  v3 = *&v15[32];
  *(a1 + 65) = *&v15[48];
  v4 = *&v15[80];
  *(a1 + 81) = *&v15[64];
  *(a1 + 97) = v4;
  v6 = *v15;
  result = *&v15[16];
  *(a1 + 33) = *&v15[16];
  *(a1 + 49) = v3;
  v7 = v16;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 112) = *&v15[95];
  *(a1 + 17) = v6;
  return result;
}

void sub_15D858(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8A70);
  sub_19BC94();
  sub_19C424();

  v2 = sub_19BC44();
  sub_19BC94();
  v3 = sub_15C810(v4);

  *a1 = v2;
  a1[1] = v3;
}

id sub_15D918(uint64_t a1, void **a2, uint64_t a3, char a4)
{
  v7 = [objc_allocWithZone(SCATSwitchSourceController) init];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = a4 & 1;
  *(v8 + 32) = a4;
  v29 = sub_162180;
  v30 = v8;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_152A04;
  v28 = &block_descriptor_0;
  v10 = _Block_copy(&aBlock);

  v11 = v7;

  [v11 setCompletion:v10];
  _Block_release(v10);

  v12 = sub_19BFB4();
  v13 = SCATLocString();

  if (!v13)
  {
    v28 = &type metadata for SwitchSourceController;
    aBlock = a2;
    v26 = a3;
    LOBYTE(v27) = v9;
    goto LABEL_6;
  }

  sub_19BFE4();
  v15 = v14;

  v28 = &type metadata for SwitchSourceController;
  aBlock = a2;
  v26 = a3;
  LOBYTE(v27) = v9;
  if (!v15)
  {
LABEL_6:

    v16 = 0;
    v17 = &type metadata for SwitchSourceController;
    goto LABEL_7;
  }

  v16 = sub_19BFB4();

  v17 = v28;
  if (v28)
  {
LABEL_7:
    v19 = __swift_project_boxed_opaque_existential_0(&aBlock, v17);
    Description = v17[-1].Description;
    __chkstk_darwin(v19);
    v22 = &aBlock - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    Description[2](v22);
    v18 = sub_19C634();
    (Description[1])(v22, v17);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    goto LABEL_8;
  }

  v18 = 0;
LABEL_8:
  v23 = [objc_allocWithZone(PSSpecifier) initWithName:v16 target:v18 set:0 get:0 detail:0 cell:-1 edit:0];

  swift_unknownObjectRelease();
  [v11 setSpecifier:{v23, aBlock, v26, v27}];

  return v11;
}

uint64_t sub_15DCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1615AC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_15DD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1615AC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_15DDB8()
{
  sub_1615AC();
  sub_19B8C4();
  __break(1u);
}

id sub_15DDE0()
{
  result = [objc_opt_self() switchDetailsViewControllerWithSwitch:*v0 parentController:0];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_15DE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_163080();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_15DE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_163080();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_15DEF8()
{
  sub_163080();
  sub_19B8C4();
  __break(1u);
}

id sub_15DF20()
{
  v0 = objc_allocWithZone(SCATBluetoothDevicesController);

  return [v0 init];
}

uint64_t sub_15DF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_161558();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_15DFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_161558();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_15E020()
{
  sub_161558();
  sub_19B8C4();
  __break(1u);
}

uint64_t property wrapper backing initializer of SwitchesController.settings()
{
  swift_getObjectType();
  sub_15E180(&qword_2B8350, &type metadata accessor for AXSettings.SwitchControl);

  return sub_19BE14();
}

UIViewController __swiftcall SwitchesController.make()()
{
  sub_19B334();
  type metadata accessor for SCATSwitchesView(0);
  sub_15E180(&qword_2B8358, type metadata accessor for SCATSwitchesView);
  return sub_19B344();
}

uint64_t sub_15E180(unint64_t *a1, void (*a2)(uint64_t))
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

id SwitchesController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8360);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR___SCATSwitchesControllerSwiftUI__settings;
  sub_19C3B4();
  v12 = sub_19C314();
  v13 = direct field offset for AXSettings.switchControl;
  swift_beginAccess();
  v14 = *&v12[v13];

  sub_19C294();
  sub_15E180(&qword_2B8350, &type metadata accessor for AXSettings.SwitchControl);
  sub_19BE14();
  (*(v8 + 32))(&v4[v11], v10, v7);
  if (a2)
  {
    v15 = sub_19BFB4();
  }

  else
  {
    v15 = 0;
  }

  v16 = type metadata accessor for SwitchesController(0);
  v20.receiver = v4;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, "initWithNibName:bundle:", v15, a3);

  return v17;
}

id SwitchesController.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8360);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = OBJC_IVAR___SCATSwitchesControllerSwiftUI__settings;
  sub_19C3B4();
  v9 = sub_19C314();
  v10 = direct field offset for AXSettings.switchControl;
  swift_beginAccess();
  v11 = *&v9[v10];

  sub_19C294();
  sub_15E180(&qword_2B8350, &type metadata accessor for AXSettings.SwitchControl);
  sub_19BE14();
  (*(v5 + 32))(&v2[v8], v7, v4);
  v12 = type metadata accessor for SwitchesController(0);
  v16.receiver = v2;
  v16.super_class = v12;
  v13 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);

  if (v13)
  {
  }

  return v13;
}

id SwitchesController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwitchesController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_15E710()
{
  result = sub_19AF64();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_15E838()
{
  sub_15EE18(319, &qword_2B8510, &type metadata accessor for AXSettings.SwitchControl, &type metadata accessor for Bindable);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for SCSwitchGroupType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SCSwitchGroupType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_15EA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8518);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8360);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_15EBB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8518);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8360);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_15ECD4()
{
  sub_15EE18(319, &qword_2B8588, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_15EE18(319, &qword_2B8510, &type metadata accessor for AXSettings.SwitchControl, &type metadata accessor for Bindable);
    if (v1 <= 0x3F)
    {
      sub_15EE18(319, &qword_2B8590, type metadata accessor for SCSettings, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_15EE7C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_15EE18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_15EE7C()
{
  if (!qword_2B8598)
  {
    v0 = sub_19BCC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2B8598);
    }
  }
}

unint64_t sub_15EF14()
{
  result = qword_2B85E0;
  if (!qword_2B85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B85E0);
  }

  return result;
}

uint64_t sub_15EF94@<X0>(void *a1@<X8>)
{
  sub_160378();
  result = sub_19B704();
  *a1 = v3;
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for SCATSwitchesView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_19B484();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8360);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_15F1A4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SCATSwitchesView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_158464(a1, a2, v6);
}

unint64_t sub_15F224()
{
  result = qword_2B8658;
  if (!qword_2B8658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8638);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B85F0);
    sub_19B654();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B85E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8610);
    sub_162D0C(&qword_2B8618, &qword_2B85E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8620);
    sub_162D0C(&qword_2B8628, &qword_2B8620);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_162D0C(&qword_2B8660, &qword_2B8668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8658);
  }

  return result;
}

Swift::Int sub_15F444(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_178948(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_15F4B0(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_15F4B0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_19C614(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_19C0C4();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_15F68C(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_15F5A8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_15F5A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_19C644(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_15F68C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_178894(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_15FC98((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = sub_19C644();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_19C644();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v30 + v23);
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_176BA0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_176BA0((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_15FC98((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_178894(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_178808(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = sub_19C644(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_15FC98(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (sub_19C644() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (sub_19C644() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_15FEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_164454(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1709A8(v20, a6 & 1);
      v15 = sub_164454(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_19C674();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1710F0();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a4;
  v28[1] = a5;
  v29 = (v25[7] + 24 * v15);
  *v29 = a1;
  v29[1] = a2;
  v29[2] = a3;
  v30 = v25[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v31;
}

uint64_t sub_1600A4(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_16032C();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_19C564();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_19C564();
LABEL_26:
        v17 = v16;
        v18 = sub_19C464();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v22 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_19C464();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_19C5A4();
  }

  result = sub_19C5A4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_16032C()
{
  result = qword_2B8678;
  if (!qword_2B8678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2B8678);
  }

  return result;
}

unint64_t sub_160378()
{
  result = qword_2B8680;
  if (!qword_2B8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8680);
  }

  return result;
}

uint64_t sub_160404(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_15E180(&qword_2B8730, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1604B8()
{
  result = qword_2B86A8;
  if (!qword_2B86A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B86B0);
    sub_160570();
    sub_162D0C(&qword_2B8720, &qword_2B8728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B86A8);
  }

  return result;
}

unint64_t sub_160570()
{
  result = qword_2B86B8;
  if (!qword_2B86B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B86C0);
    sub_160628();
    sub_162D0C(&qword_2B8710, &qword_2B8718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B86B8);
  }

  return result;
}

unint64_t sub_160628()
{
  result = qword_2B86C8;
  if (!qword_2B86C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B86D0);
    sub_1606E0();
    sub_162D0C(&qword_2B8700, &qword_2B8708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B86C8);
  }

  return result;
}

unint64_t sub_1606E0()
{
  result = qword_2B86D8;
  if (!qword_2B86D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B86E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B86E8);
    sub_19B594();
    sub_162D0C(&qword_2B86F0, &qword_2B86E8);
    sub_15E180(&qword_2B86F8, &type metadata accessor for ButtonMenuStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B86D8);
  }

  return result;
}

unint64_t sub_16082C()
{
  result = qword_2B8738;
  if (!qword_2B8738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8738);
  }

  return result;
}

unint64_t sub_160890()
{
  result = qword_2B8748;
  if (!qword_2B8748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8750);
    sub_162D0C(&qword_2B8758, &qword_2B8750);
    sub_15EF14();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8748);
  }

  return result;
}

uint64_t sub_1609D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_160A40()
{
  result = qword_2B8798;
  if (!qword_2B8798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8798);
  }

  return result;
}

unint64_t sub_160A94()
{
  result = qword_2B87A0;
  if (!qword_2B87A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B87A0);
  }

  return result;
}

unint64_t sub_160B34()
{
  result = qword_2B8808;
  if (!qword_2B8808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B87D8);
    sub_160C00(&qword_2B8810, &qword_2B8818);
    sub_160C00(&qword_2B8820, &qword_2B8828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8808);
  }

  return result;
}

uint64_t sub_160C00(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_160C70(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_160CD8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_160D40()
{
  result = qword_2B8858;
  if (!qword_2B8858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8850);
    sub_160E0C();
    sub_16082C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8858);
  }

  return result;
}

unint64_t sub_160E0C()
{
  result = qword_2B8860;
  if (!qword_2B8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8860);
  }

  return result;
}

uint64_t sub_160E60(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_160E70(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_160EBC()
{
  result = qword_2B8878;
  if (!qword_2B8878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8880);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8890);
    sub_1610A4();
    sub_16082C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B88A0);
    sub_162D0C(&qword_2B88A8, &qword_2B88A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8878);
  }

  return result;
}

unint64_t sub_1610A4()
{
  result = qword_2B8898;
  if (!qword_2B8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8898);
  }

  return result;
}

unint64_t sub_161108()
{
  result = qword_2B88C0;
  if (!qword_2B88C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B88B8);
    sub_162D0C(&qword_2B88C8, &qword_2B88D0);
    sub_15E180(&qword_2B8730, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B88C0);
  }

  return result;
}

uint64_t sub_16125C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_2596C0;
  v6._object = a2;
  v4 = sub_19C5F4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_161324(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_16136C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1613E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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