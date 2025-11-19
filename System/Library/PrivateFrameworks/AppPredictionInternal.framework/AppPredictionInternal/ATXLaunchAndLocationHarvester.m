@interface ATXLaunchAndLocationHarvester
+ (void)logAppOrClipLaunch:(id)a3 isNegativeSession:(BOOL)a4;
@end

@implementation ATXLaunchAndLocationHarvester

+ (void)logAppOrClipLaunch:(id)a3 isNegativeSession:(BOOL)a4
{
  v4 = a4;
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = __atxlog_handle_hero();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v8 = @"negative";
    }

    else
    {
      v8 = @"positive";
    }

    v9 = [v6 bundleId];
    v10 = [v6 urlHash];
    if (v10)
    {
      v11 = [v6 urlHash];
    }

    else
    {
      v11 = @"NULL URL hash";
    }

    *buf = 138412802;
    v40 = v8;
    v41 = 2112;
    v42 = v9;
    v43 = 2112;
    v44 = v11;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, ": Received %@ session to harvest. Bundle Id: %@ URLHash: %@", buf, 0x20u);
    if (v10)
    {
    }
  }

  [v6 latitude];
  v12 = *MEMORY[0x277D131D0];
  if (v13 == *MEMORY[0x277D131D0] && ([v6 longitude], v14 == v12))
  {
    v28 = [MEMORY[0x277D41BF8] sharedInstance];
    v19 = [v28 getCurrentLocation];

    if (v19)
    {
LABEL_14:
      v20 = +[_ATXGlobals sharedInstance];
      if ([v6 isClip])
      {
        v21 = +[ATXHeroAndClipConstants sharedInstance];
        v22 = [v21 appClipShadowLogSamplesPerDay];

        [v20 launchAndLocationHarvesterSamplingRate];
        v24 = v23;
        v25 = [@"LaunchAndLocationHavester" stringByAppendingString:@".appClip"];
        if ([v6 launchReason] == 3 || objc_msgSend(v6, "launchReason") == 2)
        {
          if (v4)
          {
            v26 = @".negativeSession";
          }

          else
          {
            v26 = @".positiveSession";
          }

          v29 = [v25 stringByAppendingString:v26];
LABEL_30:

          v30 = 0;
          v25 = v29;
LABEL_31:
          v31 = [MEMORY[0x277CBEAA8] now];
          if (!v30 || [a1 _passedGeneralFiltersGivenLocation:v19 date:v31] && (objc_msgSend(v6, "bundleId"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(a1, "_passedAppOrClipSpecificFiltersGivenBundleId:date:isClip:counterKey:samplingRate:maxSamples:", v32, v31, objc_msgSend(v6, "isClip"), v25, v22, v24), v32, v33))
          {
            v34 = [v6 bundleId];
            v35 = [v6 urlHash];
            LOBYTE(v38) = v4;
            v36 = [a1 _awdMetricsObjectWithLocation:v19 date:v31 bundleId:v34 urlHash:v35 isClip:objc_msgSend(v6 launchReason:"isClip") isNegativeSession:{objc_msgSend(v6, "launchReason"), v38}];

            [a1 _postAwdMetrics:v36];
            [ATXLaunchAndLocationFilterer incrementOnDeviceDailySamplesWithCounterKey:v25 date:v31];
          }

          goto LABEL_35;
        }

        if (!v4)
        {
          v30 = 1;
          goto LABEL_31;
        }

        v31 = __atxlog_handle_hero();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
LABEL_39:
          [ATXLaunchAndLocationHarvester logAppOrClipLaunch:v31 isNegativeSession:?];
        }
      }

      else
      {
        v25 = [@"LaunchAndLocationHavester" stringByAppendingString:@".app"];
        if ([v6 launchReason] == 3 || objc_msgSend(v6, "launchReason") == 2)
        {
          if (v4)
          {
            v27 = @".negativeSession";
          }

          else
          {
            v27 = @".positiveSession";
          }

          v29 = [v25 stringByAppendingString:v27];
          v22 = -1;
          v24 = 1.0;
          goto LABEL_30;
        }

        if (!v4)
        {
          v30 = 0;
          v22 = -1;
          v24 = 1.0;
          goto LABEL_31;
        }

        v31 = __atxlog_handle_hero();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }
      }

LABEL_35:

      goto LABEL_36;
    }
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277CE41F8]);
    [v6 latitude];
    v17 = v16;
    [v6 longitude];
    v19 = [v15 initWithLatitude:v17 longitude:v18];
    if (v19)
    {
      goto LABEL_14;
    }
  }

  v20 = __atxlog_handle_hero();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, ": Received nil location. Ignoring", buf, 2u);
  }

LABEL_36:

  v37 = *MEMORY[0x277D85DE8];
}

@end