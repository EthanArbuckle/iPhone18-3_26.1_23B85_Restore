@interface WBSAnalyticsLogger(_SFWebClipsAnalyticsLogger)
- (void)_performWebClipsBehaviorReport;
- (void)_webClipsAnalyticsLogger_updatePeriodicCoreAnalyticsLastReportTime;
- (void)schedulePeriodicWebClipsReport;
@end

@implementation WBSAnalyticsLogger(_SFWebClipsAnalyticsLogger)

- (void)_webClipsAnalyticsLogger_updatePeriodicCoreAnalyticsLastReportTime
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setDouble:@"LastWebAppReportTime" forKey:CFAbsoluteTimeGetCurrent()];
}

- (void)_performWebClipsBehaviorReport
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DD2B8] clipsIncludingWebClips:1 includingAppClips:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *v11;
    do
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v0);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        applicationBundleIdentifier = [v6 applicationBundleIdentifier];

        if (!applicationBundleIdentifier)
        {
          if ([v6 fullScreen])
          {
            ++v3;
          }

          else
          {
            ++v2;
          }
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v1);
    v1 = v3;
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  [mEMORY[0x1E69C8810] reportNumberOfWebApps:v1 andBookmarks:v8];
}

- (void)schedulePeriodicWebClipsReport
{
  WeeklyAnalyticsReportForKey = WBSTimeUntilNextWeeklyAnalyticsReportForKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__WBSAnalyticsLogger__SFWebClipsAnalyticsLogger__schedulePeriodicWebClipsReport__block_invoke;
  block[3] = &unk_1E848F810;
  block[4] = self;
  dispatch_after(WeeklyAnalyticsReportForKey, MEMORY[0x1E69E96A0], block);
}

@end