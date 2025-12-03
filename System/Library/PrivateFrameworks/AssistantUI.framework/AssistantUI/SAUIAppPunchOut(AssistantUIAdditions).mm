@interface SAUIAppPunchOut(AssistantUIAdditions)
- (id)_afui_installAppPunchout;
- (id)afui_punchOutAppNotAvailableViews;
- (id)afui_punchOutFailureViews;
- (void)afui_getInstallAppPunchoutWithCompletion:()AssistantUIAdditions;
- (void)afui_populateStoreServicesData:()AssistantUIAdditions;
@end

@implementation SAUIAppPunchOut(AssistantUIAdditions)

- (void)afui_populateStoreServicesData:()AssistantUIAdditions
{
  v4 = a3;
  bundleId = [self bundleId];
  if (bundleId)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__SAUIAppPunchOut_AssistantUIAdditions__afui_populateStoreServicesData___block_invoke;
    block[3] = &unk_278CD6380;
    v8 = bundleId;
    selfCopy = self;
    v10 = v4;
    dispatch_async(v6, block);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (id)afui_punchOutFailureViews
{
  appDisplayName = [self appDisplayName];
  if (appDisplayName)
  {
    v2 = MEMORY[0x277CCACA8];
    afui_assistantUIFrameworkBundle = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v4 = [afui_assistantUIFrameworkBundle assistantUILocalizedStringForKey:@"PUNCHOUT_FAILURE_FOR_APP" table:@"Localizable"];
    v5 = [v2 stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:0, appDisplayName];

    v6 = MEMORY[0x277CCACA8];
    afui_assistantUIFrameworkBundle2 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v8 = [afui_assistantUIFrameworkBundle2 assistantUILocalizedStringForKey:@"SPEAKABLE_PUNCHOUT_FAILURE_FOR_APP" table:@"Localizable"];
    v9 = [v6 stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@%@" error:0, @"@{tts#\x1B\\pause=500\\}", appDisplayName];
  }

  else
  {
    afui_assistantUIFrameworkBundle3 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v5 = [afui_assistantUIFrameworkBundle3 assistantUILocalizedStringForKey:@"PUNCHOUT_FAILURE_GENERIC" table:@"Localizable"];

    afui_assistantUIFrameworkBundle2 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v9 = [afui_assistantUIFrameworkBundle2 assistantUILocalizedStringForKey:@"PUNCHOUT_FAILURE_GENERIC" table:@"Localizable"];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277D47A00]);
  [v12 setText:v5];
  [v12 setSpeakableText:v9];
  [v11 addObject:v12];
  v13 = objc_alloc_init(MEMORY[0x277D479E8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v13 setAceId:uUIDString];

  [v13 setDialogPhase:*MEMORY[0x277D48C00]];
  [v13 setViews:v11];

  return v13;
}

- (id)afui_punchOutAppNotAvailableViews
{
  appDisplayName = [self appDisplayName];
  if (appDisplayName)
  {
    v2 = MEMORY[0x277CCACA8];
    afui_assistantUIFrameworkBundle = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v4 = [afui_assistantUIFrameworkBundle assistantUILocalizedStringForKey:@"PUNCHOUT_APP_NOT_AVAILABLE_IN_STOREFRONT" table:@"Localizable"];
    v5 = [v2 stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:0, appDisplayName];

    v6 = MEMORY[0x277CCACA8];
    afui_assistantUIFrameworkBundle2 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v8 = [afui_assistantUIFrameworkBundle2 assistantUILocalizedStringForKey:@"SPEAKABLE_PUNCHOUT_APP_NOT_AVAILABLE_IN_STOREFRONT" table:@"Localizable"];
    v9 = [v6 stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@%@" error:0, @"@{tts#\x1B\\pause=500\\}", appDisplayName];
  }

  else
  {
    afui_assistantUIFrameworkBundle3 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v5 = [afui_assistantUIFrameworkBundle3 assistantUILocalizedStringForKey:@"PUNCHOUT_FAILURE_GENERIC" table:@"Localizable"];

    afui_assistantUIFrameworkBundle2 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v9 = [afui_assistantUIFrameworkBundle2 assistantUILocalizedStringForKey:@"PUNCHOUT_FAILURE_GENERIC" table:@"Localizable"];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277D47A00]);
  [v12 setText:v5];
  [v12 setSpeakableText:v9];
  [v11 addObject:v12];
  v13 = objc_alloc_init(MEMORY[0x277D479E8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v13 setAceId:uUIDString];

  [v13 setDialogPhase:*MEMORY[0x277D48C00]];
  [v13 setViews:v11];

  return v13;
}

- (void)afui_getInstallAppPunchoutWithCompletion:()AssistantUIAdditions
{
  v4 = a3;
  if (v4)
  {
    bundleId = [self bundleId];
    if (bundleId)
    {
      dictionary = [self dictionary];
      v7 = [dictionary objectForKey:@"AFUIStoreServicesData"];

      if (v7)
      {
        _afui_installAppPunchout = [self _afui_installAppPunchout];
        v4[2](v4, _afui_installAppPunchout);
      }

      else
      {
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __82__SAUIAppPunchOut_AssistantUIAdditions__afui_getInstallAppPunchoutWithCompletion___block_invoke;
        v9[3] = &unk_278CD5C08;
        v9[4] = self;
        v10 = v4;
        [self afui_populateStoreServicesData:v9];
      }
    }

    else
    {
      v4[2](v4, 0);
    }
  }
}

- (id)_afui_installAppPunchout
{
  appStoreUri = [self appStoreUri];

  if (appStoreUri)
  {
    appStoreUri = objc_alloc_init(MEMORY[0x277D47A18]);
    v3 = MEMORY[0x277CCACA8];
    afui_assistantUIFrameworkBundle = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v5 = [afui_assistantUIFrameworkBundle assistantUILocalizedStringForKey:@"INSTALL_APP_BUTTON_TITLE" table:@"Localizable"];
    appDisplayName = [self appDisplayName];
    v7 = [v3 stringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:0, appDisplayName];

    [appStoreUri setText:v7];
    v8 = objc_alloc_init(MEMORY[0x277D479F0]);
    [v8 setAppAvailableInStorefront:1];
    appStoreUri2 = [self appStoreUri];
    [v8 setPunchOutUri:appStoreUri2];

    v10 = [MEMORY[0x277CBEA60] arrayWithObject:v8];
    [appStoreUri setCommands:v10];
  }

  return appStoreUri;
}

@end