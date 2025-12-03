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
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v7 = 0;
  if ([mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled])
  {
    v5 = 34.0;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v7 = 1;
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    v3 = 44.0;
    if (userInterfaceIdiom != 1)
    {
      v3 = 36.0;
    }

    v5 = v3;
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](currentDevice);
  }

  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  return v5;
}

+ (double)bulletLeadingSpacing
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v14 = 0;
  v12 = 0;
  v10 = 0;
  if ([mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled])
  {
    mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
    v14 = 1;
    if ([mEMORY[0x277CF0228]2 isAuthKitSolariumFeatureEnabled])
    {
      v8 = 38.0;
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      v12 = 1;
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];
      v3 = 50.0;
      if (userInterfaceIdiom != 1)
      {
        v3 = 32.0;
      }

      v8 = v3;
    }

    v7 = v8 + 4.0;
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    v10 = 1;
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];
    v5 = 64.0;
    if (userInterfaceIdiom2 != 1)
    {
      v5 = 42.0;
    }

    v7 = v5;
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](currentDevice2);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](currentDevice);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2);
  }

  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  return v7;
}

+ (double)bulletTrailingSpacing
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v14 = 0;
  v12 = 0;
  v10 = 0;
  if ([mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled])
  {
    mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
    v14 = 1;
    if ([mEMORY[0x277CF0228]2 isAuthKitSolariumFeatureEnabled])
    {
      v8 = 38.0;
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      v12 = 1;
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];
      v3 = 50.0;
      if (userInterfaceIdiom != 1)
      {
        v3 = 32.0;
      }

      v8 = v3;
    }

    v7 = -v8;
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    v10 = 1;
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];
    v5 = -64.0;
    if (userInterfaceIdiom2 != 1)
    {
      v5 = -36.0;
    }

    v7 = v5;
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](currentDevice2);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](currentDevice);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2);
  }

  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  return v7;
}

+ (double)bulletImageToInfoLabelSpacing
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v14 = 0;
  v12 = 0;
  v10 = 0;
  if ([mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled])
  {
    mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
    v14 = 1;
    if ([mEMORY[0x277CF0228]2 isAuthKitSolariumFeatureEnabled])
    {
      v8 = 38.0;
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      v12 = 1;
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];
      v3 = 50.0;
      if (userInterfaceIdiom != 1)
      {
        v3 = 32.0;
      }

      v8 = v3;
    }

    v7 = v8 + 58.0;
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    v10 = 1;
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];
    v5 = 16.0;
    if (userInterfaceIdiom2 != 1)
    {
      v5 = 26.0;
    }

    v7 = v5;
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](currentDevice2);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](currentDevice);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2);
  }

  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  return v7;
}

+ (double)infoLabelMarginInset
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v7 = 0;
  if ([mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled])
  {
    v5 = 38.0;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v7 = 1;
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    v3 = 50.0;
    if (userInterfaceIdiom != 1)
    {
      v3 = 32.0;
    }

    v5 = v3;
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](currentDevice);
  }

  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  return v5;
}

+ (double)privacyLinkMarginInset
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v14 = 0;
  v12 = 0;
  v10 = 0;
  if ([mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled])
  {
    mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
    v14 = 1;
    if ([mEMORY[0x277CF0228]2 isAuthKitSolariumFeatureEnabled])
    {
      v8 = 0x4043000000000000;
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      v12 = 1;
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];
      v3 = 50.0;
      if (userInterfaceIdiom != 1)
      {
        v3 = 32.0;
      }

      v8 = *&v3;
    }

    v7 = *&v8;
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    v10 = 1;
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];
    v5 = 76.0;
    if (userInterfaceIdiom2 != 1)
    {
      v5 = 42.0;
    }

    v7 = v5;
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](currentDevice2);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](currentDevice);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2);
  }

  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  return v7;
}

@end