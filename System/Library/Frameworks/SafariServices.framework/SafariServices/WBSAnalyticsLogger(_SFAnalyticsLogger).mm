@interface WBSAnalyticsLogger(_SFAnalyticsLogger)
- (uint64_t)_sf_reportCapsuleLayoutStyle:()_SFAnalyticsLogger backgroundColorInTabBarEnabled:;
- (uint64_t)_sf_reportCapsuleLayoutStyle:()_SFAnalyticsLogger previousSetting:;
- (uint64_t)_sf_reportPrivateWindowStatus:()_SFAnalyticsLogger;
- (void)_sf_didBeginDownloadWithMIMEType:()_SFAnalyticsLogger uti:downloadType:promptType:browserPersona:;
- (void)_sf_didPerformFormatMenuAction:()_SFAnalyticsLogger provenance:;
- (void)_sf_performExtensionsReportIfNecessaryWithExtensionsController:()_SFAnalyticsLogger;
- (void)_sf_reportBrowserChoice:()_SFAnalyticsLogger;
@end

@implementation WBSAnalyticsLogger(_SFAnalyticsLogger)

- (void)_sf_didBeginDownloadWithMIMEType:()_SFAnalyticsLogger uti:downloadType:promptType:browserPersona:
{
  v12 = a3;
  v13 = a4;
  v14 = *(self + *MEMORY[0x1E69C8A78]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __118__WBSAnalyticsLogger__SFAnalyticsLogger___sf_didBeginDownloadWithMIMEType_uti_downloadType_promptType_browserPersona___block_invoke;
  block[3] = &unk_1E84960D8;
  v18 = v12;
  v19 = v13;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v15 = v13;
  v16 = v12;
  dispatch_async(v14, block);
}

- (void)_sf_performExtensionsReportIfNecessaryWithExtensionsController:()_SFAnalyticsLogger
{
  v4 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults doubleForKey:@"LastPeriodicExtensionsReportTimePreferenceKey"];
  v8 = Current - v7;

  if (v8 > 604800.0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __105__WBSAnalyticsLogger__SFAnalyticsLogger___sf_performExtensionsReportIfNecessaryWithExtensionsController___block_invoke;
    v9[3] = &unk_1E848F548;
    v10 = v4;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

- (uint64_t)_sf_reportCapsuleLayoutStyle:()_SFAnalyticsLogger backgroundColorInTabBarEnabled:
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __102__WBSAnalyticsLogger__SFAnalyticsLogger___sf_reportCapsuleLayoutStyle_backgroundColorInTabBarEnabled___block_invoke;
  v5[3] = &__block_descriptor_41_e19___NSDictionary_8__0l;
  v5[4] = a3;
  v6 = a4;
  return [self _sendEvent:@"com.apple.MobileSafari.CapsuleLayoutStyle" usingBlock:v5];
}

- (uint64_t)_sf_reportCapsuleLayoutStyle:()_SFAnalyticsLogger previousSetting:
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__WBSAnalyticsLogger__SFAnalyticsLogger___sf_reportCapsuleLayoutStyle_previousSetting___block_invoke;
  v5[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v5[4] = a3;
  v5[5] = a4;
  return [self _sendEvent:@"com.apple.MobileSafari.CapsuleLayoutStyle" usingBlock:v5];
}

- (void)_sf_didPerformFormatMenuAction:()_SFAnalyticsLogger provenance:
{
  if (a3)
  {
    if (a4)
    {
      v6 = a3 - 1;
      if (a3 - 1) <= 0x36 && ((0x5FFFFFFFFBDFDFuLL >> v6))
      {
        v11 = v4;
        v12 = v5;
        v7 = *(&off_1E84961E8 + v6);
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __84__WBSAnalyticsLogger__SFAnalyticsLogger___sf_didPerformFormatMenuAction_provenance___block_invoke;
        v8[3] = &unk_1E8496188;
        v9 = v7;
        v10 = a4;
        [self _sendEvent:@"com.apple.MobileSafari.PerformedFormatMenuAction" usingBlock:v8];
      }
    }
  }
}

- (uint64_t)_sf_reportPrivateWindowStatus:()_SFAnalyticsLogger
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__WBSAnalyticsLogger__SFAnalyticsLogger___sf_reportPrivateWindowStatus___block_invoke;
  v4[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v4[4] = a3;
  return [self _sendEvent:@"com.apple.MobileSafari.PrivateWindowStatus" usingBlock:v4];
}

- (void)_sf_reportBrowserChoice:()_SFAnalyticsLogger
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__WBSAnalyticsLogger__SFAnalyticsLogger___sf_reportBrowserChoice___block_invoke;
  v6[3] = &unk_1E8496120;
  v7 = v4;
  v5 = v4;
  [self _sendEvent:@"com.apple.SafariViewService.BrowserChoice" usingBlock:v6];
}

@end