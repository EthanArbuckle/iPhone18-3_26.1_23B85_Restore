@interface AKAuthorizationSubPaneMetrics
+ (double)bulletImageSize;
+ (double)bulletImageToInfoLabelSpacing;
+ (double)bulletLeadingSpacing;
+ (double)bulletTrailingSpacing;
+ (double)infoLabelMarginInset;
+ (double)privacyLinkMarginInset;
@end

@implementation AKAuthorizationSubPaneMetrics

+ (double)bulletImageSize
{
  v6 = [MEMORY[0x277CF0228] sharedManager];
  v7 = 0;
  if ([v6 isAuthKitSolariumFeatureEnabled])
  {
    v5 = 34.0;
  }

  else
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    v7 = 1;
    v2 = [v8 userInterfaceIdiom];
    v3 = 44.0;
    if (v2 != 1)
    {
      v3 = 36.0;
    }

    v5 = v3;
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  MEMORY[0x277D82BD8](v6);
  return v5;
}

+ (double)bulletLeadingSpacing
{
  v9 = [MEMORY[0x277CF0228] sharedManager];
  v14 = 0;
  v12 = 0;
  v10 = 0;
  if ([v9 isAuthKitSolariumFeatureEnabled])
  {
    v15 = [MEMORY[0x277CF0228] sharedManager];
    v14 = 1;
    if ([v15 isAuthKitSolariumFeatureEnabled])
    {
      v8 = 38.0;
    }

    else
    {
      v13 = [MEMORY[0x277D75418] currentDevice];
      v12 = 1;
      v2 = [v13 userInterfaceIdiom];
      v3 = 50.0;
      if (v2 != 1)
      {
        v3 = 32.0;
      }

      v8 = v3;
    }

    v7 = v8 + 4.0;
  }

  else
  {
    v11 = [MEMORY[0x277D75418] currentDevice];
    v10 = 1;
    v4 = [v11 userInterfaceIdiom];
    v5 = 64.0;
    if (v4 != 1)
    {
      v5 = 42.0;
    }

    v7 = v5;
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  MEMORY[0x277D82BD8](v9);
  return v7;
}

+ (double)bulletTrailingSpacing
{
  v9 = [MEMORY[0x277CF0228] sharedManager];
  v14 = 0;
  v12 = 0;
  v10 = 0;
  if ([v9 isAuthKitSolariumFeatureEnabled])
  {
    v15 = [MEMORY[0x277CF0228] sharedManager];
    v14 = 1;
    if ([v15 isAuthKitSolariumFeatureEnabled])
    {
      v8 = 38.0;
    }

    else
    {
      v13 = [MEMORY[0x277D75418] currentDevice];
      v12 = 1;
      v2 = [v13 userInterfaceIdiom];
      v3 = 50.0;
      if (v2 != 1)
      {
        v3 = 32.0;
      }

      v8 = v3;
    }

    v7 = -v8;
  }

  else
  {
    v11 = [MEMORY[0x277D75418] currentDevice];
    v10 = 1;
    v4 = [v11 userInterfaceIdiom];
    v5 = -64.0;
    if (v4 != 1)
    {
      v5 = -36.0;
    }

    v7 = v5;
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  MEMORY[0x277D82BD8](v9);
  return v7;
}

+ (double)bulletImageToInfoLabelSpacing
{
  v9 = [MEMORY[0x277CF0228] sharedManager];
  v14 = 0;
  v12 = 0;
  v10 = 0;
  if ([v9 isAuthKitSolariumFeatureEnabled])
  {
    v15 = [MEMORY[0x277CF0228] sharedManager];
    v14 = 1;
    if ([v15 isAuthKitSolariumFeatureEnabled])
    {
      v8 = 38.0;
    }

    else
    {
      v13 = [MEMORY[0x277D75418] currentDevice];
      v12 = 1;
      v2 = [v13 userInterfaceIdiom];
      v3 = 50.0;
      if (v2 != 1)
      {
        v3 = 32.0;
      }

      v8 = v3;
    }

    v7 = v8 + 58.0;
  }

  else
  {
    v11 = [MEMORY[0x277D75418] currentDevice];
    v10 = 1;
    v4 = [v11 userInterfaceIdiom];
    v5 = 16.0;
    if (v4 != 1)
    {
      v5 = 26.0;
    }

    v7 = v5;
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  MEMORY[0x277D82BD8](v9);
  return v7;
}

+ (double)infoLabelMarginInset
{
  v6 = [MEMORY[0x277CF0228] sharedManager];
  v7 = 0;
  if ([v6 isAuthKitSolariumFeatureEnabled])
  {
    v5 = 38.0;
  }

  else
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    v7 = 1;
    v2 = [v8 userInterfaceIdiom];
    v3 = 50.0;
    if (v2 != 1)
    {
      v3 = 32.0;
    }

    v5 = v3;
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  MEMORY[0x277D82BD8](v6);
  return v5;
}

+ (double)privacyLinkMarginInset
{
  v9 = [MEMORY[0x277CF0228] sharedManager];
  v14 = 0;
  v12 = 0;
  v10 = 0;
  if ([v9 isAuthKitSolariumFeatureEnabled])
  {
    v15 = [MEMORY[0x277CF0228] sharedManager];
    v14 = 1;
    if ([v15 isAuthKitSolariumFeatureEnabled])
    {
      v8 = 0x4043000000000000;
    }

    else
    {
      v13 = [MEMORY[0x277D75418] currentDevice];
      v12 = 1;
      v2 = [v13 userInterfaceIdiom];
      v3 = 50.0;
      if (v2 != 1)
      {
        v3 = 32.0;
      }

      v8 = *&v3;
    }

    v7 = *&v8;
  }

  else
  {
    v11 = [MEMORY[0x277D75418] currentDevice];
    v10 = 1;
    v4 = [v11 userInterfaceIdiom];
    v5 = 76.0;
    if (v4 != 1)
    {
      v5 = 42.0;
    }

    v7 = v5;
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  MEMORY[0x277D82BD8](v9);
  return v7;
}

@end