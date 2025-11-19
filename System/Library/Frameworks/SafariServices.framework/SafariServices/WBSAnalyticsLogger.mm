@interface WBSAnalyticsLogger
@end

@implementation WBSAnalyticsLogger

uint64_t __80__WBSAnalyticsLogger__SFWebClipsAnalyticsLogger__schedulePeriodicWebClipsReport__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _performWebClipsBehaviorReport];
  [*(a1 + 32) _webClipsAnalyticsLogger_updatePeriodicCoreAnalyticsLastReportTime];
  v2 = *(a1 + 32);

  return [v2 schedulePeriodicWebClipsReport];
}

void __118__WBSAnalyticsLogger__SFAnalyticsLogger___sf_didBeginDownloadWithMIMEType_uti_downloadType_promptType_browserPersona___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  AnalyticsSendEventLazy();
}

id __118__WBSAnalyticsLogger__SFAnalyticsLogger___sf_didBeginDownloadWithMIMEType_uti_downloadType_promptType_browserPersona___block_invoke_2(int64x2_t *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14[0] = @"MIMEType";
  v14[1] = @"UTI";
  v1 = @"automatic download on navigation";
  v2 = vbslq_s8(vceqzq_s64(a1[2]), vdupq_n_s64(@"<unknown type>"), a1[2]);
  v3 = a1[3].i64[0];
  v4 = a1[3].i64[1];
  if (v3 == 1)
  {
    v1 = @"explicitly downloaded";
  }

  v15 = v2;
  if (v3 == 2)
  {
    v5 = @"save to files in share sheet";
  }

  else
  {
    v5 = v1;
  }

  v14[2] = @"type";
  v14[3] = @"prompt";
  v6 = @"no download prompt";
  if (v4 == 1)
  {
    v6 = @"download on prompt";
  }

  if (v4 == 2)
  {
    v6 = @"cancelled on prompt";
  }

  v16 = v5;
  v17 = v6;
  v14[4] = @"persona";
  v7 = a1[4].i64[0] - 1;
  if (v7 > 3)
  {
    v8 = @"Safari";
  }

  else
  {
    v8 = *(&off_1E84961C8 + v7);
  }

  v18 = v8;
  v9 = MEMORY[0x1E695DF20];
  v10 = v6;
  v11 = v5;
  v12 = [v9 dictionaryWithObjects:&v15 forKeys:v14 count:5];

  return v12;
}

void __105__WBSAnalyticsLogger__SFAnalyticsLogger___sf_performExtensionsReportIfNecessaryWithExtensionsController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionStatisticsReport];
  v3 = *(a1 + 40);
  v4 = *(v3 + *MEMORY[0x1E69C8A78]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __105__WBSAnalyticsLogger__SFAnalyticsLogger___sf_performExtensionsReportIfNecessaryWithExtensionsController___block_invoke_2;
  v6[3] = &unk_1E848F548;
  v6[4] = v3;
  v7 = v2;
  v5 = v2;
  dispatch_async(v4, v6);
}

void __105__WBSAnalyticsLogger__SFAnalyticsLogger___sf_performExtensionsReportIfNecessaryWithExtensionsController___block_invoke_2(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __105__WBSAnalyticsLogger__SFAnalyticsLogger___sf_performExtensionsReportIfNecessaryWithExtensionsController___block_invoke_3;
  v6[3] = &unk_1E8496120;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v2 reportNumberOfExtensionsWithFrequencyDictionaryProvider:v6];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) telemetryDataForExtensions];
  [v3 reportStatusForExtensions:v4 extensionType:@"WebExtension"];

  [*(a1 + 32) reportStartPageOverrideStatistics:*(a1 + 40)];
  v5 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v5 setDouble:@"LastPeriodicExtensionsReportTimePreferenceKey" forKey:CFAbsoluteTimeGetCurrent()];
}

id __105__WBSAnalyticsLogger__SFAnalyticsLogger___sf_performExtensionsReportIfNecessaryWithExtensionsController___block_invoke_3(uint64_t a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = *MEMORY[0x1E69C8BE0];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "enabledCount")}];
  v9[0] = v2;
  v8[1] = *MEMORY[0x1E69C8BD0];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "disabledCount")}];
  v9[1] = v3;
  v8[2] = *MEMORY[0x1E69C8BE8];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "enabledCount")}];
  v9[2] = v4;
  v8[3] = *MEMORY[0x1E69C8BD8];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "disabledCount")}];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

id __102__WBSAnalyticsLogger__SFAnalyticsLogger___sf_reportCapsuleLayoutStyle_backgroundColorInTabBarEnabled___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = @"mini";
  if (v1 == 1)
  {
    v2 = @"bottom";
  }

  v3 = v1 == 2;
  v4 = @"top";
  if (!v3)
  {
    v4 = v2;
  }

  v11[1] = @"backgroundColorInTabBarEnabled";
  v12[0] = v4;
  v11[0] = @"capsuleLayoutStyle";
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 40);
  v7 = v4;
  v8 = [v5 numberWithBool:v6];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

id __87__WBSAnalyticsLogger__SFAnalyticsLogger___sf_reportCapsuleLayoutStyle_previousSetting___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1 == 1)
  {
    v3 = @"bottom";
  }

  else
  {
    v3 = @"mini";
  }

  if (v1 == 2)
  {
    v4 = @"top";
  }

  else
  {
    v4 = v3;
  }

  v11[0] = @"capsuleLayoutStyle";
  v11[1] = @"previousLayoutStyle";
  if (v2 == 1)
  {
    v5 = @"bottom";
  }

  else
  {
    v5 = @"mini";
  }

  if (v2 == 2)
  {
    v5 = @"top";
  }

  v12[0] = v4;
  v12[1] = v5;
  v6 = MEMORY[0x1E695DF20];
  v7 = v5;
  v8 = v4;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

id __84__WBSAnalyticsLogger__SFAnalyticsLogger___sf_didPerformFormatMenuAction_provenance___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v8[0] = *(a1 + 32);
  v7[0] = @"action";
  v7[1] = @"provenance";
  if ((v1 - 1) > 4)
  {
    v2 = @"unknown";
  }

  else
  {
    v2 = *(&off_1E84963A0 + v1 - 1);
  }

  v8[1] = v2;
  v7[2] = @"menuType";
  v3 = *(a1 + 40) - 1;
  if (v3 > 4)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = *(&off_1E84963C8 + v3);
  }

  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

id __72__WBSAnalyticsLogger__SFAnalyticsLogger___sf_reportPrivateWindowStatus___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"status";
  v1 = @"running";
  v2 = *(a1 + 32);
  if (v2 == 1)
  {
    v1 = @"cached";
  }

  if (v2 == 2)
  {
    v1 = @"no private window";
  }

  v8[0] = v1;
  v3 = MEMORY[0x1E695DF20];
  v4 = v1;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

id __66__WBSAnalyticsLogger__SFAnalyticsLogger___sf_reportBrowserChoice___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"selectedBrowser";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

@end