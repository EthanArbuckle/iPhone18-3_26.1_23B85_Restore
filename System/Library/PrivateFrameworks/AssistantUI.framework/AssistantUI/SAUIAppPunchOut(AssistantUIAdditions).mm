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
  v5 = [a1 bundleId];
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__SAUIAppPunchOut_AssistantUIAdditions__afui_populateStoreServicesData___block_invoke;
    block[3] = &unk_278CD6380;
    v8 = v5;
    v9 = a1;
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
  v1 = [a1 appDisplayName];
  if (v1)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v4 = [v3 assistantUILocalizedStringForKey:@"PUNCHOUT_FAILURE_FOR_APP" table:@"Localizable"];
    v5 = [v2 stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:0, v1];

    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v8 = [v7 assistantUILocalizedStringForKey:@"SPEAKABLE_PUNCHOUT_FAILURE_FOR_APP" table:@"Localizable"];
    v9 = [v6 stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@%@" error:0, @"@{tts#\x1B\\pause=500\\}", v1];
  }

  else
  {
    v10 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v5 = [v10 assistantUILocalizedStringForKey:@"PUNCHOUT_FAILURE_GENERIC" table:@"Localizable"];

    v7 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v9 = [v7 assistantUILocalizedStringForKey:@"PUNCHOUT_FAILURE_GENERIC" table:@"Localizable"];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277D47A00]);
  [v12 setText:v5];
  [v12 setSpeakableText:v9];
  [v11 addObject:v12];
  v13 = objc_alloc_init(MEMORY[0x277D479E8]);
  v14 = [MEMORY[0x277CCAD78] UUID];
  v15 = [v14 UUIDString];
  [v13 setAceId:v15];

  [v13 setDialogPhase:*MEMORY[0x277D48C00]];
  [v13 setViews:v11];

  return v13;
}

- (id)afui_punchOutAppNotAvailableViews
{
  v1 = [a1 appDisplayName];
  if (v1)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v4 = [v3 assistantUILocalizedStringForKey:@"PUNCHOUT_APP_NOT_AVAILABLE_IN_STOREFRONT" table:@"Localizable"];
    v5 = [v2 stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:0, v1];

    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v8 = [v7 assistantUILocalizedStringForKey:@"SPEAKABLE_PUNCHOUT_APP_NOT_AVAILABLE_IN_STOREFRONT" table:@"Localizable"];
    v9 = [v6 stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@%@" error:0, @"@{tts#\x1B\\pause=500\\}", v1];
  }

  else
  {
    v10 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v5 = [v10 assistantUILocalizedStringForKey:@"PUNCHOUT_FAILURE_GENERIC" table:@"Localizable"];

    v7 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v9 = [v7 assistantUILocalizedStringForKey:@"PUNCHOUT_FAILURE_GENERIC" table:@"Localizable"];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277D47A00]);
  [v12 setText:v5];
  [v12 setSpeakableText:v9];
  [v11 addObject:v12];
  v13 = objc_alloc_init(MEMORY[0x277D479E8]);
  v14 = [MEMORY[0x277CCAD78] UUID];
  v15 = [v14 UUIDString];
  [v13 setAceId:v15];

  [v13 setDialogPhase:*MEMORY[0x277D48C00]];
  [v13 setViews:v11];

  return v13;
}

- (void)afui_getInstallAppPunchoutWithCompletion:()AssistantUIAdditions
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 bundleId];
    if (v5)
    {
      v6 = [a1 dictionary];
      v7 = [v6 objectForKey:@"AFUIStoreServicesData"];

      if (v7)
      {
        v8 = [a1 _afui_installAppPunchout];
        v4[2](v4, v8);
      }

      else
      {
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __82__SAUIAppPunchOut_AssistantUIAdditions__afui_getInstallAppPunchoutWithCompletion___block_invoke;
        v9[3] = &unk_278CD5C08;
        v9[4] = a1;
        v10 = v4;
        [a1 afui_populateStoreServicesData:v9];
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
  v2 = [a1 appStoreUri];

  if (v2)
  {
    v2 = objc_alloc_init(MEMORY[0x277D47A18]);
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
    v5 = [v4 assistantUILocalizedStringForKey:@"INSTALL_APP_BUTTON_TITLE" table:@"Localizable"];
    v6 = [a1 appDisplayName];
    v7 = [v3 stringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:0, v6];

    [v2 setText:v7];
    v8 = objc_alloc_init(MEMORY[0x277D479F0]);
    [v8 setAppAvailableInStorefront:1];
    v9 = [a1 appStoreUri];
    [v8 setPunchOutUri:v9];

    v10 = [MEMORY[0x277CBEA60] arrayWithObject:v8];
    [v2 setCommands:v10];
  }

  return v2;
}

@end