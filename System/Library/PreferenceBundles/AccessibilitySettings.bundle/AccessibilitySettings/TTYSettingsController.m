@interface TTYSettingsController
- (TTYSettingsController)init;
- (id)answerRTTCallsAsMuted:(id)a3;
- (id)hardwareTTYEnabledSwitch:(id)a3;
- (id)incomingCallsTTY:(id)a3;
- (id)realtimeEnabled:(id)a3;
- (id)relayNumber:(id)a3;
- (id)rttLiveTranscriptionsEnabled:(id)a3;
- (id)showsRTTNotifications:(id)a3;
- (id)softwareTTYAndHardwareTTYSpecificSpecifiers;
- (id)softwareTTYEnabledSwitch:(id)a3;
- (id)softwareTTYSettingsSpecifiers;
- (id)specifiers;
- (id)telephonyContext;
- (void)confirmationViewAcceptedForSpecifier:(id)a3;
- (void)confirmationViewCancelledForSpecifier:(id)a3;
- (void)dealloc;
- (void)setAnswerRTTCallsAsMuted:(id)a3 specifier:(id)a4;
- (void)setHardwareTTYEnabledSwitch:(id)a3 specifier:(id)a4;
- (void)setIncomingCallsTTY:(id)a3 specifier:(id)a4;
- (void)setRTTLiveTranscriptionsEnabled:(id)a3 specifier:(id)a4;
- (void)setRealtimeEnabled:(id)a3 specifier:(id)a4;
- (void)setRelayNumber:(id)a3 specifier:(id)a4;
- (void)setShowsRTTNotifications:(id)a3 specifier:(id)a4;
- (void)setSoftwareTTYEnabledSwitch:(id)a3 specifier:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeActive;
@end

@implementation TTYSettingsController

- (TTYSettingsController)init
{
  v5.receiver = self;
  v5.super_class = TTYSettingsController;
  v2 = [(TTYSettingsController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"updateSpecifiersForCallState" name:TUCallCenterCallStatusChangedNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TTYSettingsController;
  [(TTYSettingsController *)&v4 dealloc];
}

- (id)telephonyContext
{
  objc_opt_class();
  v3 = [(TTYSettingsController *)self specifier];
  v4 = [v3 propertyForKey:PSSubscriptionContextKey];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 context];

  if (!v6)
  {
    v7 = +[RTTTelephonyUtilities sharedUtilityProvider];
    v6 = [v7 defaultVoiceContext];
  }

  return v6;
}

void __53__TTYSettingsController_updateSpecifiersForCallState__block_invoke(uint64_t a1)
{
  v2 = [&off_27CA88 mutableCopy];
  [v2 addObject:@"RTT_LIVE_TRANSCRIPTIONS"];
  v3 = [*(a1 + 32) specifiersForIDs:v2];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __53__TTYSettingsController_updateSpecifiersForCallState__block_invoke_2;
  v4[3] = &unk_2566C8;
  v4[4] = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __53__TTYSettingsController_updateSpecifiersForCallState__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[TUCallCenter sharedInstance];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 hasCurrentCalls] ^ 1);
  [v5 setProperty:v4 forKey:PSEnabledKey];

  [*(a1 + 32) reloadSpecifier:v5];
}

- (id)softwareTTYSettingsSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [(TTYSettingsController *)self telephonyContext];
  if ([RTTTelephonyUtilities softwareTTYIsSupportedForContext:v4])
  {
    v5 = +[RTTSettings sharedInstance];
    v6 = [(TTYSettingsController *)self telephonyContext];
    v7 = [v5 TTYSoftwareEnabledForContext:v6];

    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = +[PSSpecifier emptyGroupSpecifier];
    v9 = settingsLocString(@"TTY_REALTIME_FOOTER", @"Accessibility");
    v10 = PSFooterTextGroupKey;
    [v8 setProperty:v9 forKey:PSFooterTextGroupKey];

    v11 = PSIDKey;
    [v8 setProperty:@"TTY_SW_SETTINGS_GROUP" forKey:PSIDKey];
    [v3 addObject:v8];
    v12 = settingsLocString(@"TTY_RELAY_LABEL", @"Accessibility");
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:"relayNumber:" detail:objc_opt_class() cell:2 edit:0];

    [v13 setProperty:@"TTY_RELAY" forKey:v11];
    [v3 addObject:v13];
    v14 = settingsLocString(@"TTY_REALTIME_LABEL", @"Accessibility");
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"setRealtimeEnabled:specifier:" get:"realtimeEnabled:" detail:0 cell:6 edit:0];

    [v15 setProperty:@"TTY_REALTIME" forKey:v11];
    [v3 addObject:v15];
    v16 = [(TTYSettingsController *)self telephonyContext];
    LODWORD(v14) = [RTTTelephonyUtilities isRTTSupportedForContext:v16];

    v38 = v10;
    if (v14)
    {
      v17 = +[PSSpecifier emptyGroupSpecifier];

      [v17 setProperty:@"RTT_ANSWER_MUTED_SETTINGS_GROUP" forKey:v11];
      v18 = settingsLocString(@"RTT_ANSWER_CALL_MUTED_FOOTER", @"Accessibility");
      [v17 setProperty:v18 forKey:v10];

      [v3 addObject:v17];
      v19 = PSListController_ptr;
      v20 = settingsLocString(@"RTT_ANSWER_CALL_MUTED_LABEL", @"Accessibility");
      v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:"setAnswerRTTCallsAsMuted:specifier:" get:"answerRTTCallsAsMuted:" detail:0 cell:6 edit:0];

      [v21 setProperty:@"RTT_ANSWER_MUTED" forKey:v11];
      [v3 addObject:v21];
      v22 = +[RTTSettings sharedInstance];
      if ([v22 rttLiveTranscriptionsFeatureFlagEnabled])
      {
        v23 = AXHasCapability();

        if (v23)
        {
          v24 = +[PSSpecifier emptyGroupSpecifier];

          [v24 setProperty:@"RTT_LIVE_TRANSCRIPTIONS_SETTINGS_GROUP" forKey:v11];
          v25 = AXLocStringKeyForModel();
          v26 = settingsLocString(v25, @"Accessibility");
          [v24 setProperty:v26 forKey:v38];

          [v3 addObject:v24];
          v27 = settingsLocString(@"RTT_LIVE_TRANSCRIPTIONS_LABEL", @"Accessibility");
          v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:self set:"setRTTLiveTranscriptionsEnabled:specifier:" get:"rttLiveTranscriptionsEnabled:" detail:0 cell:6 edit:0];

          [v28 setProperty:@"RTT_LIVE_TRANSCRIPTIONS" forKey:v11];
          [v3 addObject:v28];
          v17 = v24;
          v21 = v28;
        }
      }

      else
      {
      }
    }

    else
    {
      v17 = v8;
      v21 = v15;
      v19 = PSListController_ptr;
    }

    v29 = [(TTYSettingsController *)self telephonyContext];
    v30 = @"TTY_RTT_CALL_ANSWER";
    if ((+[RTTTelephonyUtilities softwareTTYIsSupportedForContext:](RTTTelephonyUtilities, "softwareTTYIsSupportedForContext:", v29) & 1) == 0 && !+[RTTTelephonyUtilities isRelayRTTSupported])
    {
      v30 = @"TTY_CALL_ANSWER";
    }

    v31 = [(TTYSettingsController *)self telephonyContext];
    v32 = [RTTTelephonyUtilities hardwareTTYIsSupportedForContext:v31];

    v4 = [v19[5] emptyGroupSpecifier];

    [v4 setProperty:@"TTY_SETTINGS_GROUP" forKey:v11];
    if (v32)
    {
      v33 = settingsLocString(@"TTY_CALL_ANSWER_FOOTER", @"Accessibility");
      [v4 setProperty:v33 forKey:v38];
    }

    else
    {
      v30 = @"RTT_CALL_ANSWER";
    }

    [v3 addObject:v4];
    v34 = v19[5];
    v35 = settingsLocString(v30, @"Accessibility");
    v36 = [v34 preferenceSpecifierNamed:v35 target:self set:"setIncomingCallsTTY:specifier:" get:"incomingCallsTTY:" detail:0 cell:6 edit:0];

    [v36 setProperty:@"TTY_CALL_ANSWER" forKey:v11];
    [v3 addObject:v36];
  }

LABEL_17:

  return v3;
}

- (id)softwareTTYAndHardwareTTYSpecificSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[PSSpecifier emptyGroupSpecifier];
  v5 = PSIDKey;
  [v4 setProperty:@"RTT_SHOW_NOTIFICATIONS_SETTINGS_GROUP" forKey:PSIDKey];
  v6 = settingsLocString(@"RTT_SHOW_NOTIFICATIONS_FOOTER", @"Accessibility");
  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v3 addObject:v4];
  v7 = settingsLocString(@"RTT_SHOW_NOTIFICATIONS_LABEL", @"Accessibility");
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setShowsRTTNotifications:specifier:" get:"showsRTTNotifications:" detail:0 cell:6 edit:0];

  [v8 setProperty:@"RTT_SHOW_NOTIFICATIONS" forKey:v5];
  [v3 addObject:v8];

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v4)
  {
    goto LABEL_20;
  }

  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(TTYSettingsController *)self telephonyContext];
  if (([RTTTelephonyUtilities softwareTTYIsSupportedForContext:v6]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = +[RTTTelephonyUtilities isRelayRTTSupported];
  }

  v8 = [RTTTelephonyUtilities hardwareTTYIsSupportedForContext:v6];
  v9 = @"RTT_SOFTWARE_FOOTER_PHONE";
  if ((+[RTTTelephonyUtilities isEmergencyRTTSupportedForContext:](RTTTelephonyUtilities, "isEmergencyRTTSupportedForContext:", v6) & 1) == 0 && !+[RTTTelephonyUtilities isEmergencyRelayRTTSupported])
  {
    v9 = @"RTT_SOFTWARE_NO_EMERGENCY_FOOTER_PHONE";
  }

  v10 = +[RTTSettings sharedInstance];
  v28 = [v10 TTYSoftwareEnabledForContext:v6];

  v11 = +[RTTSettings sharedInstance];
  v12 = [v11 TTYHardwareEnabledForContext:v6];

  if (v7)
  {
    v13 = +[PSSpecifier emptyGroupSpecifier];
    if ((+[RTTTelephonyUtilities isOnlyRTTSupportedForContext:](RTTTelephonyUtilities, "isOnlyRTTSupportedForContext:", v6) & 1) != 0 || (+[RTTTelephonyUtilities isRelayRTTSupported]& 1) != 0)
    {
      v14 = @"RTT_SOFTWARE";
    }

    else
    {
      v23 = [RTTTelephonyUtilities isRTTSupportedForContext:v6];
      if (v23)
      {
        v9 = @"TTY_RTT_SOFTWARE_FOOTER_PHONE";
      }

      else
      {
        v9 = @"TTY_SOFTWARE_FOOTER_PHONE";
      }

      if (v23)
      {
        v14 = @"TTY_RTT_SOFTWARE";
      }

      else
      {
        v14 = @"TTY_SOFTWARE";
      }
    }

    v24 = settingsLocString(v9, @"Accessibility");
    [v13 setProperty:v24 forKey:PSFooterTextGroupKey];

    [v5 addObject:v13];
    v25 = settingsLocString(v14, @"Accessibility");
    v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:"setSoftwareTTYEnabledSwitch:specifier:" get:"softwareTTYEnabledSwitch:" detail:0 cell:6 edit:0];

    [v26 setProperty:@"SW_TTY" forKey:PSIDKey];
    [v5 addObject:v26];
    v27 = [(TTYSettingsController *)self softwareTTYSettingsSpecifiers];
    [v5 addObjectsFromArray:v27];

    if (((v28 | v8 & v12) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((v8 & v12) == 1)
  {
LABEL_13:
    v15 = [(TTYSettingsController *)self softwareTTYAndHardwareTTYSpecificSpecifiers];
    [v5 addObjectsFromArray:v15];
  }

LABEL_14:
  if (v8)
  {
    v16 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v16];
    if ([RTTTelephonyUtilities isRTTSupportedForContext:v6])
    {
      v17 = @"TTY_RTT_HARDWARE_FOOTER";
    }

    else
    {
      v17 = @"TTY_HARDWARE_FOOTER";
    }

    v18 = settingsLocString(v17, @"Accessibility");
    [v16 setProperty:v18 forKey:PSFooterTextGroupKey];

    v19 = settingsLocString(@"TTY_HARDWARE", @"Accessibility");
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:"setHardwareTTYEnabledSwitch:specifier:" get:"hardwareTTYEnabledSwitch:" detail:0 cell:6 edit:0];

    [v20 setProperty:@"HW_TTY" forKey:PSIDKey];
    [v5 addObject:v20];
  }

  v21 = *&self->AXUISettingsBaseListController_opaque[v3];
  *&self->AXUISettingsBaseListController_opaque[v3] = v5;

  v4 = *&self->AXUISettingsBaseListController_opaque[v3];
LABEL_20:

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TTYSettingsController;
  [(TTYSettingsController *)&v4 viewWillAppear:a3];
  [(TTYSettingsController *)self reloadSpecifierID:@"TTY_RELAY"];
  [(TTYSettingsController *)self updateSpecifiersForCallState];
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = TTYSettingsController;
  [(TTYSettingsController *)&v3 willBecomeActive];
  [(TTYSettingsController *)self updateSpecifiersForCallState];
}

- (void)setSoftwareTTYEnabledSwitch:(id)a3 specifier:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = +[RTTSettings sharedInstance];
  v8 = [v21 BOOLValue];
  v9 = [(TTYSettingsController *)self telephonyContext];
  [v7 setTTYSoftwareEnabled:v8 forContext:v9];

  v10 = [(TTYSettingsController *)self telephonyContext];
  if ([RTTTelephonyUtilities hardwareTTYIsSupportedForContext:v10])
  {
    v11 = +[RTTSettings sharedInstance];
    v12 = [(TTYSettingsController *)self telephonyContext];
    v13 = [v11 TTYHardwareEnabledForContext:v12];

    if ([v21 BOOLValue])
    {
      if (v13)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {

    if ([v21 BOOLValue])
    {
LABEL_6:
      v14 = [(TTYSettingsController *)self softwareTTYAndHardwareTTYSpecificSpecifiers];
      [(TTYSettingsController *)self insertContiguousSpecifiers:v14 afterSpecifier:v6 animated:1];

LABEL_7:
      v15 = [(TTYSettingsController *)self softwareTTYSettingsSpecifiers];
      [(TTYSettingsController *)self insertContiguousSpecifiers:v15 afterSpecifier:v6 animated:1];
      goto LABEL_12;
    }

    v13 = 0;
  }

  v15 = [NSMutableArray arrayWithObjects:@"TTY_SW_SETTINGS_GROUP", @"TTY_RELAY", @"TTY_REALTIME", 0];
  [v15 addObjectsFromArray:&off_27CAA0];
  [v15 addObjectsFromArray:&off_27CAB8];
  [v15 addObjectsFromArray:&off_27CAD0];
  v16 = [(TTYSettingsController *)self specifiersForIDs:v15];
  [(TTYSettingsController *)self removeContiguousSpecifiers:v16 animated:1];

  if ((v13 & 1) == 0)
  {
    v17 = [(TTYSettingsController *)self specifiersForIDs:&off_27CAE8];
    [(TTYSettingsController *)self removeContiguousSpecifiers:v17 animated:1];
  }

  v18 = +[RTTSettings sharedInstance];
  v19 = [(TTYSettingsController *)self telephonyContext];
  [v18 setIncomingCallsTTY:0 forContext:v19];

LABEL_12:
  v20 = +[HUUtilities sharedUtilities];
  [v20 updateHearingFeatureUsage];
}

- (void)setHardwareTTYEnabledSwitch:(id)a3 specifier:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = +[RTTSettings sharedInstance];
  v8 = [v16 BOOLValue];
  v9 = [(TTYSettingsController *)self telephonyContext];
  [v7 setTTYHardwareEnabled:v8 forContext:v9];

  v10 = [(TTYSettingsController *)self telephonyContext];
  if ((+[RTTTelephonyUtilities softwareTTYIsSupportedForContext:](RTTTelephonyUtilities, "softwareTTYIsSupportedForContext:", v10) & 1) == 0 && (+[RTTTelephonyUtilities isRelayRTTSupported]& 1) == 0)
  {

    goto LABEL_6;
  }

  v11 = +[RTTSettings sharedInstance];
  v12 = [(TTYSettingsController *)self telephonyContext];
  v13 = [v11 TTYSoftwareEnabledForContext:v12];

  if ((v13 & 1) == 0)
  {
LABEL_6:
    if ([v16 BOOLValue])
    {
      v14 = [(TTYSettingsController *)self softwareTTYAndHardwareTTYSpecificSpecifiers];
      [(TTYSettingsController *)self insertContiguousSpecifiers:v14 afterSpecifier:v6 animated:1];
    }

    else
    {
      v14 = [(TTYSettingsController *)self specifiersForIDs:&off_27CB00];
      [(TTYSettingsController *)self removeContiguousSpecifiers:v14 animated:1];
    }
  }

  v15 = +[HUUtilities sharedUtilities];
  [v15 updateHearingFeatureUsage];
}

- (id)softwareTTYEnabledSwitch:(id)a3
{
  v4 = +[RTTSettings sharedInstance];
  v5 = [(TTYSettingsController *)self telephonyContext];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 TTYSoftwareEnabledForContext:v5]);

  return v6;
}

- (id)hardwareTTYEnabledSwitch:(id)a3
{
  v4 = +[RTTSettings sharedInstance];
  v5 = [(TTYSettingsController *)self telephonyContext];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 TTYHardwareEnabledForContext:v5]);

  return v6;
}

- (void)confirmationViewAcceptedForSpecifier:(id)a3
{
  v5 = +[RTTSettings sharedInstance];
  v4 = [(TTYSettingsController *)self telephonyContext];
  [v5 setIncomingCallsTTY:1 forContext:v4];
}

- (void)confirmationViewCancelledForSpecifier:(id)a3
{
  v4 = +[RTTSettings sharedInstance];
  v5 = [(TTYSettingsController *)self telephonyContext];
  [v4 setIncomingCallsTTY:0 forContext:v5];

  [(TTYSettingsController *)self reloadSpecifierID:@"TTY_CALL_ANSWER" animated:1];
}

- (void)setIncomingCallsTTY:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v5 = [(TTYSettingsController *)self telephonyContext];
    v6 = [RTTTelephonyUtilities isOnlyRTTSupportedForContext:v5];

    if (!v6)
    {
      v16 = objc_alloc_init(PSConfirmationSpecifier);
      v10 = [(TTYSettingsController *)self telephonyContext];
      if ([RTTTelephonyUtilities isRTTSupportedForContext:v10])
      {
        v11 = @"TTY_RTT_CALL_ANSWER";
      }

      else
      {
        v11 = @"TTY_CALL_ANSWER";
      }

      v12 = settingsLocString(v11, @"Accessibility");
      [v16 setTitle:v12];

      v13 = settingsLocString(@"TTY_CALL_CONFIRM", @"Accessibility");
      [v16 setPrompt:v13];

      v14 = settingsLocString(@"CANCEL", @"Accessibility");
      [v16 setCancelButton:v14];

      v15 = [NSNumber numberWithBool:1];
      [v16 setProperty:v15 forKey:PSConfirmationDestructiveKey];

      [(TTYSettingsController *)self showConfirmationViewForSpecifier:v16];
      goto LABEL_10;
    }

    v16 = +[RTTSettings sharedInstance];
    v7 = [(TTYSettingsController *)self telephonyContext];
    v8 = v16;
    v9 = 1;
  }

  else
  {
    v16 = +[RTTSettings sharedInstance];
    v7 = [(TTYSettingsController *)self telephonyContext];
    v8 = v16;
    v9 = 0;
  }

  [v8 setIncomingCallsTTY:v9 forContext:v7];

LABEL_10:
}

- (id)incomingCallsTTY:(id)a3
{
  v4 = +[RTTSettings sharedInstance];
  v5 = [(TTYSettingsController *)self telephonyContext];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 incomingCallsTTYForContext:v5]);

  return v6;
}

- (void)setRelayNumber:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v8 = +[RTTSettings sharedInstance];
  v6 = [RTTUIUtilities phoneNumberStringFromString:v5];

  v7 = [(TTYSettingsController *)self telephonyContext];
  [v8 setPreferredRelayNumber:v6 forContext:v7];
}

- (id)relayNumber:(id)a3
{
  v4 = +[RTTSettings sharedInstance];
  v5 = [(TTYSettingsController *)self telephonyContext];
  v6 = [v4 preferredRelayNumberForContext:v5];

  if (v6)
  {
    v7 = [CNPhoneNumber phoneNumberWithStringValue:v6];
    v8 = [v7 formattedStringValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setRealtimeEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v8 = +[RTTSettings sharedInstance];
  v6 = [v5 BOOLValue];

  v7 = [(TTYSettingsController *)self telephonyContext];
  [v8 setTTYShouldBeRealtime:v6 forContext:v7];
}

- (id)realtimeEnabled:(id)a3
{
  v4 = +[RTTSettings sharedInstance];
  v5 = [(TTYSettingsController *)self telephonyContext];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 ttyShouldBeRealtimeForContext:v5]);

  return v6;
}

- (void)setAnswerRTTCallsAsMuted:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v8 = +[RTTSettings sharedInstance];
  v6 = [v5 BOOLValue];

  v7 = [(TTYSettingsController *)self telephonyContext];
  [v8 setAnswerRTTCallsAsMuted:v6 forContext:v7];
}

- (id)answerRTTCallsAsMuted:(id)a3
{
  v4 = +[RTTSettings sharedInstance];
  v5 = [(TTYSettingsController *)self telephonyContext];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 answerRTTCallsAsMutedForContext:v5]);

  return v6;
}

- (void)setShowsRTTNotifications:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v8 = +[RTTSettings sharedInstance];
  v6 = [v5 BOOLValue];

  v7 = [(TTYSettingsController *)self telephonyContext];
  [v8 setShowsRTTNotifications:v6 forContext:v7];
}

- (id)showsRTTNotifications:(id)a3
{
  v4 = +[RTTSettings sharedInstance];
  v5 = [(TTYSettingsController *)self telephonyContext];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 showsRTTNotificationsForContext:v5]);

  return v6;
}

- (void)setRTTLiveTranscriptionsEnabled:(id)a3 specifier:(id)a4
{
  v6 = a4;
  if ([a3 BOOLValue])
  {
    v7 = +[AXSpringBoardServer server];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __67__TTYSettingsController_setRTTLiveTranscriptionsEnabled_specifier___block_invoke;
    v10[3] = &unk_2566F0;
    v12 = 1;
    v10[4] = self;
    v11 = v6;
    [v7 showAlert:25 withHandler:v10];
  }

  else
  {
    v8 = +[RTTSettings sharedInstance];
    v9 = [(TTYSettingsController *)self telephonyContext];
    [v8 setRTTLiveTranscriptionsEnabled:0 forContext:v9];
  }
}

void __67__TTYSettingsController_setRTTLiveTranscriptionsEnabled_specifier___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v7 = +[RTTSettings sharedInstance];
    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) telephonyContext];
    [v7 setRTTLiveTranscriptionsEnabled:v3 forContext:v4];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v5 reloadSpecifier:v6];
  }
}

- (id)rttLiveTranscriptionsEnabled:(id)a3
{
  v4 = +[RTTSettings sharedInstance];
  v5 = [(TTYSettingsController *)self telephonyContext];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 rttLiveTranscriptionsEnabledForContext:v5]);

  return v6;
}

@end