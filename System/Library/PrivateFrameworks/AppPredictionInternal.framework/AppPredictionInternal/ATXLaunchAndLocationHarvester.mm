@interface ATXLaunchAndLocationHarvester
+ (void)logAppOrClipLaunch:(id)launch isNegativeSession:(BOOL)session;
@end

@implementation ATXLaunchAndLocationHarvester

+ (void)logAppOrClipLaunch:(id)launch isNegativeSession:(BOOL)session
{
  sessionCopy = session;
  v45 = *MEMORY[0x277D85DE8];
  launchCopy = launch;
  v7 = __atxlog_handle_hero();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (sessionCopy)
    {
      v8 = @"negative";
    }

    else
    {
      v8 = @"positive";
    }

    bundleId = [launchCopy bundleId];
    urlHash = [launchCopy urlHash];
    if (urlHash)
    {
      urlHash2 = [launchCopy urlHash];
    }

    else
    {
      urlHash2 = @"NULL URL hash";
    }

    *buf = 138412802;
    v40 = v8;
    v41 = 2112;
    v42 = bundleId;
    v43 = 2112;
    v44 = urlHash2;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, ": Received %@ session to harvest. Bundle Id: %@ URLHash: %@", buf, 0x20u);
    if (urlHash)
    {
    }
  }

  [launchCopy latitude];
  v12 = *MEMORY[0x277D131D0];
  if (v13 == *MEMORY[0x277D131D0] && ([launchCopy longitude], v14 == v12))
  {
    mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
    getCurrentLocation = [mEMORY[0x277D41BF8] getCurrentLocation];

    if (getCurrentLocation)
    {
LABEL_14:
      v20 = +[_ATXGlobals sharedInstance];
      if ([launchCopy isClip])
      {
        v21 = +[ATXHeroAndClipConstants sharedInstance];
        appClipShadowLogSamplesPerDay = [v21 appClipShadowLogSamplesPerDay];

        [v20 launchAndLocationHarvesterSamplingRate];
        v24 = v23;
        v25 = [@"LaunchAndLocationHavester" stringByAppendingString:@".appClip"];
        if ([launchCopy launchReason] == 3 || objc_msgSend(launchCopy, "launchReason") == 2)
        {
          if (sessionCopy)
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
          if (!v30 || [self _passedGeneralFiltersGivenLocation:getCurrentLocation date:v31] && (objc_msgSend(launchCopy, "bundleId"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(self, "_passedAppOrClipSpecificFiltersGivenBundleId:date:isClip:counterKey:samplingRate:maxSamples:", v32, v31, objc_msgSend(launchCopy, "isClip"), v25, appClipShadowLogSamplesPerDay, v24), v32, v33))
          {
            bundleId2 = [launchCopy bundleId];
            urlHash3 = [launchCopy urlHash];
            LOBYTE(v38) = sessionCopy;
            v36 = [self _awdMetricsObjectWithLocation:getCurrentLocation date:v31 bundleId:bundleId2 urlHash:urlHash3 isClip:objc_msgSend(launchCopy launchReason:"isClip") isNegativeSession:{objc_msgSend(launchCopy, "launchReason"), v38}];

            [self _postAwdMetrics:v36];
            [ATXLaunchAndLocationFilterer incrementOnDeviceDailySamplesWithCounterKey:v25 date:v31];
          }

          goto LABEL_35;
        }

        if (!sessionCopy)
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
        if ([launchCopy launchReason] == 3 || objc_msgSend(launchCopy, "launchReason") == 2)
        {
          if (sessionCopy)
          {
            v27 = @".negativeSession";
          }

          else
          {
            v27 = @".positiveSession";
          }

          v29 = [v25 stringByAppendingString:v27];
          appClipShadowLogSamplesPerDay = -1;
          v24 = 1.0;
          goto LABEL_30;
        }

        if (!sessionCopy)
        {
          v30 = 0;
          appClipShadowLogSamplesPerDay = -1;
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
    [launchCopy latitude];
    v17 = v16;
    [launchCopy longitude];
    getCurrentLocation = [v15 initWithLatitude:v17 longitude:v18];
    if (getCurrentLocation)
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