@interface ATXHomeScreenLogUploader
+ (BOOL)_shouldProcessATXUIEvent:(id)a3 startTime:(double)a4;
- (ATXHomeScreenLogUploader)init;
- (void)uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:(id)a3 customStartDate:(id)a4 dryRunCompletionHandler:(id)a5;
@end

@implementation ATXHomeScreenLogUploader

- (ATXHomeScreenLogUploader)init
{
  v20.receiver = self;
  v20.super_class = ATXHomeScreenLogUploader;
  v2 = [(ATXHomeScreenLogUploader *)&v20 init];
  if (v2)
  {
    v3 = objc_opt_new();
    widgetSetupDictionaries = v2->_widgetSetupDictionaries;
    v2->_widgetSetupDictionaries = v3;

    v5 = objc_opt_new();
    widgetEventDictionaries = v2->_widgetEventDictionaries;
    v2->_widgetEventDictionaries = v5;

    v7 = objc_opt_new();
    widgetRotationDictionaries = v2->_widgetRotationDictionaries;
    v2->_widgetRotationDictionaries = v7;

    v9 = objc_opt_new();
    systemEventDictionary = v2->_systemEventDictionary;
    v2->_systemEventDictionary = v9;

    v11 = objc_opt_new();
    systemChangeDictionary = v2->_systemChangeDictionary;
    v2->_systemChangeDictionary = v11;

    v13 = objc_opt_new();
    widgetAddSheetDictionaries = v2->_widgetAddSheetDictionaries;
    v2->_widgetAddSheetDictionaries = v13;

    v15 = objc_opt_new();
    widgetDiscoverabilityDictionaries = v2->_widgetDiscoverabilityDictionaries;
    v2->_widgetDiscoverabilityDictionaries = v15;

    v17 = objc_opt_new();
    tvWidgetLogHarvester = v2->_tvWidgetLogHarvester;
    v2->_tvWidgetLogHarvester = v17;
  }

  return v2;
}

+ (BOOL)_shouldProcessATXUIEvent:(id)a3 startTime:(double)a4
{
  v5 = [a3 homeScreenEvent];
  v6 = v5;
  if (v5 && ([v5 date], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "timeIntervalSinceReferenceDate"), v9 = v8, v7, v9 > a4))
  {
    v10 = [v6 eventTypeString];
    if ([v10 isEqualToString:@"Unknown"])
    {
      v11 = 0;
    }

    else if ([v10 isEqualToString:@"HomeScreenPageShown"])
    {
      v11 = 1;
    }

    else if ([v10 isEqualToString:@"HomeScreenDisappeared"])
    {
      v11 = 2;
    }

    else if ([v10 isEqualToString:@"StackChanged"])
    {
      v11 = 3;
    }

    else if ([v10 isEqualToString:@"WidgetTapped"])
    {
      v11 = 4;
    }

    else if ([v10 isEqualToString:@"WidgetLongLook"])
    {
      v11 = 5;
    }

    else if ([v10 isEqualToString:@"WidgetUserFeedback"])
    {
      v11 = 6;
    }

    else if ([v10 isEqualToString:@"UserStackConfigChanged"])
    {
      v11 = 7;
    }

    else if ([v10 isEqualToString:@"DeviceLocked"])
    {
      v11 = 8;
    }

    else if ([v10 isEqualToString:@"DeviceUnlocked"])
    {
      v11 = 9;
    }

    else if ([v10 isEqualToString:@"PinnedWidgetAdded"])
    {
      v11 = 10;
    }

    else if ([v10 isEqualToString:@"PinnedWidgetDeleted"])
    {
      v11 = 11;
    }

    else if ([v10 isEqualToString:@"SpecialPageAppeared"])
    {
      v11 = 12;
    }

    else if ([v10 isEqualToString:@"SpecialPageDisappeared"])
    {
      v11 = 13;
    }

    else if ([v10 isEqualToString:@"StackShown"])
    {
      v11 = 14;
    }

    else if ([v10 isEqualToString:@"StackDisappeared"])
    {
      v11 = 15;
    }

    else if ([v10 isEqualToString:@"StackCreated"])
    {
      v11 = 16;
    }

    else if ([v10 isEqualToString:@"StackDeleted"])
    {
      v11 = 17;
    }

    else if ([v10 isEqualToString:@"WidgetAddedToStack"])
    {
      v11 = 18;
    }

    else if ([v10 isEqualToString:@"WidgetRemovedFromStack"])
    {
      v11 = 19;
    }

    else if ([v10 isEqualToString:@"StackVisibilityChanged"])
    {
      v11 = 20;
    }

    else if ([v10 isEqualToString:@"AppAdded"])
    {
      v11 = 21;
    }

    else if ([v10 isEqualToString:@"AppRemoved"])
    {
      v11 = 22;
    }

    else
    {
      v11 = 0;
    }

    v12 = vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v11 & 0x1E), xmmword_226872D40))) | ((v11 & 0x1E) == 8) | ((v11 - 3) < 2);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t __73__ATXHomeScreenLogUploader__timeBasedMergePublisher_withOtherPublishers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 timestamp];
  v7 = v6;
  [v5 timestamp];
  if (v7 >= v8)
  {
    [v4 timestamp];
    v11 = v10;
    [v5 timestamp];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:(id)a3 customStartDate:(id)a4 dryRunCompletionHandler:(id)a5
{
  v128[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v8 didDefer] & 1) == 0)
  {
    v77 = v10;
    v11 = objc_opt_new();
    v124 = 0;
    v79 = [v11 loadHomeScreenAndTodayPageConfigurationsWithError:&v124];
    v78 = v124;

    if (!v79 || v78)
    {
      v14 = __atxlog_handle_home_screen();
      v15 = v14;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ATXHomeScreenLogUploader uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:];
        v15 = v14;
      }
    }

    else
    {
      if ([v8 didDefer])
      {
LABEL_47:

        v10 = v77;
        goto LABEL_48;
      }

      if (v9)
      {
        [v9 timeIntervalSinceNow];
        v13 = -v12;
      }

      else
      {
        v13 = 86400.0;
      }

      v76 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-v13];
      [v76 timeIntervalSinceReferenceDate];
      v17 = v16;
      [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary updateSystemLevelSummaryForHomeScreenPages:v79 startDate:v76];
      [(ATXHomeScreenLogSystemChangeDictionary *)self->_systemChangeDictionary updateSystemChangeSummaryForHomeScreenPages:v79];
      [(ATXHomeScreenLogWidgetSetupDictionaries *)self->_widgetSetupDictionaries updateWidgetSetupSummaryForHomeScreenPages:v79];
      [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self->_widgetDiscoverabilityDictionaries generateWidgetDiscoverabilityMetricsWithActivity:v8];
      [(ATXTVWidgetLogHarvester *)self->_tvWidgetLogHarvester generateTVWidgetMetrics];
      if (([v8 didDefer] & 1) == 0)
      {
        objc_initWeak(&location, self);
        v18 = dispatch_semaphore_create(0);
        v75 = [MEMORY[0x277CEB450] sharedInstance];
        if ([MEMORY[0x277D42590] isiPad])
        {
          v19 = 2;
        }

        else
        {
          v19 = 0;
        }

        v120[0] = MEMORY[0x277D85DD0];
        v120[1] = 3221225472;
        v120[2] = __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke;
        v120[3] = &unk_2785A1A68;
        v20 = v18;
        v121 = v20;
        objc_copyWeak(&v122, &location);
        [v75 fetchSuggestedGalleryItemsOfGridSize:v19 widgetFamilyMask:7294 withCompletionHandler:v120];
        if ([MEMORY[0x277D425A0] waitForSemaphore:v20 timeoutSeconds:2.0] == 1)
        {
          v21 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [ATXHomeScreenLogUploader uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:];
          }
        }

        v22 = dispatch_semaphore_create(0);
        v116[0] = MEMORY[0x277D85DD0];
        v116[1] = 3221225472;
        v116[2] = __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_30;
        v116[3] = &unk_2785A1A90;
        v74 = v22;
        v117 = v74;
        objc_copyWeak(&v119, &location);
        v23 = v20;
        v118 = v23;
        [v75 fetchSmartStackOfVariant:0 completionHandler:v116];
        v67 = v23;
        if ([MEMORY[0x277D425A0] waitForSemaphore:v74 timeoutSeconds:2.0] == 1)
        {
          v24 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [ATXHomeScreenLogUploader uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:];
          }
        }

        v112 = 0;
        v113 = &v112;
        v114 = 0x2020000000;
        v115 = 0;
        v106 = 0;
        v107 = &v106;
        v108 = 0x3032000000;
        v109 = __Block_byref_object_copy__103;
        v110 = __Block_byref_object_dispose__103;
        v111 = objc_opt_new();
        v102 = 0;
        v103 = &v102;
        v104 = 0x2020000000;
        v105 = 0;
        v100[0] = 0;
        v100[1] = v100;
        v100[2] = 0x3032000000;
        v100[3] = __Block_byref_object_copy__103;
        v100[4] = __Block_byref_object_dispose__103;
        v101 = objc_opt_new();
        v98[0] = 0;
        v98[1] = v98;
        v98[2] = 0x2020000000;
        v99 = 0;
        v96[0] = 0;
        v96[1] = v96;
        v96[2] = 0x3032000000;
        v96[3] = __Block_byref_object_copy__103;
        v96[4] = __Block_byref_object_dispose__103;
        v97 = objc_opt_new();
        v25 = v13 + 43200.0;
        v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-(v13 + 43200.0)];
        [v26 timeIntervalSinceReferenceDate];
        v28 = v27;

        v29 = objc_opt_new();
        v73 = [v29 genericEventPublisherFromStartTime:v28];

        v30 = BiomeLibrary();
        v31 = [v30 App];
        v32 = [v31 InFocus];
        v33 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
        v72 = [v32 atx_publisherFromStartTime:v33];

        v34 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-(v25 + 3600.0)];
        [v34 timeIntervalSinceReferenceDate];
        v36 = v35;

        v37 = objc_opt_new();
        v71 = [v37 publisherFromStartTime:v36];

        v128[0] = v72;
        v128[1] = v71;
        v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:2];
        v70 = [(ATXHomeScreenLogUploader *)self _timeBasedMergePublisher:v73 withOtherPublishers:v38];

        v39 = objc_opt_new();
        v40 = objc_opt_new();
        v41 = [v70 filterWithIsIncluded:&__block_literal_global_41_4];
        v85[0] = MEMORY[0x277D85DD0];
        v85[1] = 3221225472;
        v85[2] = __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_45;
        v85[3] = &unk_2785A1AB8;
        objc_copyWeak(v95, &location);
        v42 = v8;
        v86 = v42;
        v89 = &v112;
        v68 = v40;
        v87 = v68;
        v43 = v39;
        v95[1] = v17;
        v69 = v43;
        v88 = v43;
        v90 = &v102;
        v91 = v96;
        v92 = v98;
        v93 = v100;
        v94 = &v106;
        v44 = [v41 sinkWithCompletion:&__block_literal_global_44_4 receiveInput:v85];

        if (([v42 didDefer] & 1) == 0)
        {
          [(ATXHomeScreenLogWidgetSetupDictionaries *)self->_widgetSetupDictionaries updateWidgetLevelParentAppLaunches:v107[5]];
          v45 = v113[3];
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          if (v45 >= v46)
          {
            v63 = __atxlog_handle_home_screen();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              [ATXHomeScreenLogUploader uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:];
            }
          }

          else
          {
            v47 = __atxlog_handle_home_screen();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              [ATXHomeScreenLogUploader uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:];
            }

            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v48 = [v69 removeAndReturnCompletedSessions];
            v49 = [v48 countByEnumeratingWithState:&v81 objects:v127 count:16];
            if (v49)
            {
              v50 = *v82;
              do
              {
                for (i = 0; i != v49; ++i)
                {
                  if (*v82 != v50)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v52 = *(*(&v81 + 1) + 8 * i);
                  v53 = [v52 sessionEndDate];
                  [v53 timeIntervalSinceReferenceDate];
                  v55 = v54 < *&v17;

                  if (!v55)
                  {
                    [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary updateSystemLevelSummaryWithRotationSession:v52];
                    [(ATXHomeScreenLogWidgetRotationDictionaries *)self->_widgetRotationDictionaries updateWithRotationSession:v52];
                  }
                }

                v49 = [v48 countByEnumeratingWithState:&v81 objects:v127 count:16];
              }

              while (v49);
            }

            [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary updateSystemLevelSummaryTotalUnlockSessions:v103[3]];
            [(ATXHomeScreenLogWidgetSetupDictionaries *)self->_widgetSetupDictionaries updateTotalUnlockSessions:v103[3]];
            [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary populateUnlockSessionEngagementSummaryFromManager:v68];
            [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary populateLifetimeNPlusOneStatistics];
            [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary populateHasBehavioralData];
            [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary populateUsedKettle];
            if (v77)
            {
              v125[0] = @"System Event Dictionary";
              v56 = [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary dryRunResult];
              v126[0] = v56;
              v125[1] = @"System Change Dictionary";
              v57 = [(ATXHomeScreenLogSystemChangeDictionary *)self->_systemChangeDictionary dryRunResult];
              v126[1] = v57;
              v125[2] = @"Widget Setup Dictionary";
              v58 = [(ATXHomeScreenLogWidgetSetupDictionaries *)self->_widgetSetupDictionaries dryRunResult];
              v126[2] = v58;
              v125[3] = @"Widget Event Dictionary";
              v66 = [(ATXHomeScreenLogWidgetEventDictionaries *)self->_widgetEventDictionaries dryRunResult];
              v126[3] = v66;
              v125[4] = @"Widget Add Sheet Dictionary";
              v59 = [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self->_widgetAddSheetDictionaries dryRunResult];
              v126[4] = v59;
              v125[5] = @"Widget Rotation Dictionary";
              v60 = [(ATXHomeScreenLogWidgetRotationDictionaries *)self->_widgetRotationDictionaries dryRunResult];
              v126[5] = v60;
              v125[6] = @"Default Stack Metrics Dictionary";
              v61 = [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self->_widgetDiscoverabilityDictionaries dryRunResult];
              v126[6] = v61;
              v125[7] = @"TV Widget Metrics Dictionary";
              v62 = [(ATXTVWidgetLogHarvester *)self->_tvWidgetLogHarvester dryRunResult];
              v126[7] = v62;
              v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:8];

              (*(v77 + 2))(v77, v63, 0);
              v64 = __atxlog_handle_home_screen();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2263AA000, v64, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenLogUploader: Daily CoreAnalytics log upload dry-run complete - no actual logs uploaded", buf, 2u);
              }
            }

            else
            {
              [(ATXHomeScreenLogSystemEventDictionaries *)self->_systemEventDictionary sendToCoreAnalytics];
              [(ATXHomeScreenLogSystemChangeDictionary *)self->_systemChangeDictionary sendToCoreAnalytics];
              [(ATXHomeScreenLogWidgetSetupDictionaries *)self->_widgetSetupDictionaries sendToCoreAnalytics];
              [(ATXHomeScreenLogWidgetEventDictionaries *)self->_widgetEventDictionaries sendToCoreAnalytics];
              [(ATXHomeScreenLogWidgetAddSheetDictionaries *)self->_widgetAddSheetDictionaries sendToCoreAnalytics];
              [(ATXHomeScreenLogWidgetRotationDictionaries *)self->_widgetRotationDictionaries sendToCoreAnalytics];
              [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self->_widgetDiscoverabilityDictionaries sendToCoreAnalytics];
              [(ATXTVWidgetLogHarvester *)self->_tvWidgetLogHarvester sendToCoreAnalytics];
              v63 = __atxlog_handle_home_screen();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2263AA000, v63, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenLogUploader: Daily CoreAnalytics log upload complete", buf, 2u);
              }
            }
          }
        }

        objc_destroyWeak(v95);
        _Block_object_dispose(v96, 8);

        _Block_object_dispose(v98, 8);
        _Block_object_dispose(v100, 8);

        _Block_object_dispose(&v102, 8);
        _Block_object_dispose(&v106, 8);

        _Block_object_dispose(&v112, 8);
        objc_destroyWeak(&v119);

        objc_destroyWeak(&v122);
        objc_destroyWeak(&location);
      }

      v15 = v76;
    }

    goto LABEL_47;
  }

LABEL_48:

  v65 = *MEMORY[0x277D85DE8];
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_cold_2();
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained[6] updateWidgetAddSheetSummaryForSuggestions:v5];
    }

    else
    {
      v11 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_cold_1();
      }
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (v6 || !v7)
  {
    v13 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_30_cold_2();
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v10 = *(WeakRetained + 6);
      v11 = [v5 firstObject];
      [v10 updateWidgetAddSheetSummaryForDefaultStack:v11];

      v12 = *(a1 + 32);
    }

    else
    {
      v14 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_30_cold_1();
      }

      v12 = *(a1 + 40);
    }

    dispatch_semaphore_signal(v12);
  }
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_home_screen();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_2_cold_1(v2, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenLogUploader: Daily CoreAnalytics log processing (task 1 of 2) complete", v6, 2u);
  }
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_45(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained && ([*(a1 + 32) didDefer] & 1) == 0)
  {
    v5 = *(*(*(a1 + 56) + 8) + 24);
    [v3 timestamp];
    if (v5 >= v6)
    {
      v6 = v5;
    }

    *(*(*(a1 + 56) + 8) + 24) = v6;
    v7 = [v3 eventBody];

    if (v7)
    {
      v8 = [v3 eventBody];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v10 = *(a1 + 40);
        v11 = [v3 eventBody];
        v12 = [v10 updateSessionStateWithUIEvent:v11];

        v13 = *(a1 + 48);
        v14 = [v3 eventBody];
        [v13 updateWithUIEvent:v14];
      }

      else
      {
        v12 = 0;
      }

      v16 = [v3 eventBody];
      objc_opt_class();
      v17 = objc_opt_isKindOfClass();

      if (v17)
      {
        v18 = *(a1 + 48);
        v19 = [v3 eventBody];
        [v18 updateWithBlendingUICacheUpdate:v19];
      }

      else
      {
        v20 = [v3 eventBody];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
        }

        else
        {
          v21 = objc_opt_class();
          v22 = [v3 eventBody];
          LODWORD(v21) = [v21 _shouldProcessATXUIEvent:v22 startTime:*(a1 + 112)];

          if (!v21)
          {
            goto LABEL_37;
          }
        }

        if (v12 == 1)
        {
          ++*(*(*(a1 + 64) + 8) + 24);
          [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
          *(*(*(a1 + 80) + 8) + 24) = 0;
        }

        v23 = [v3 eventBody];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = v23;
          v57 = v12;
          v24 = *(*(*(a1 + 88) + 8) + 40);
          v25 = [v23 homeScreenEvent];
          v26 = [v25 stackId];
          v27 = [v24 objectForKeyedSubscript:v26];
          v28 = [v27 eventBody];
          v55 = [v28 homeScreenEvent];

          v29 = a1;
          [ATXHomeScreenLogUploaderUtilities stackShownEventsForPseudoTapIfPossible:*(*(*(a1 + 88) + 8) + 40) currentEvent:v3];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          obj = v62 = 0u;
          v30 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v60;
            do
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v60 != v32)
                {
                  objc_enumerationMutation(obj);
                }

                v34 = *(*(&v59 + 1) + 8 * i);
                [WeakRetained[4] updateSystemLevelSummaryForWidgetPseudoTapWithStackShownEvent:v34];
                [WeakRetained[2] updateWidgetLevelSummaryForWidgetPseudoTapWithStackShownEvent:v34];
                v35 = MEMORY[0x277CEB9B0];
                v36 = [v34 widgetBundleId];
                v37 = [v34 widgetKind];
                v38 = [v35 stringRepresentationForExtensionBundleId:v36 kind:v37];

                [*(*(*(v29 + 72) + 8) + 40) setObject:v34 forKeyedSubscript:v38];
              }

              v31 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
            }

            while (v31);
          }

          v39 = WeakRetained[4];
          v23 = v56;
          v40 = [v56 homeScreenEvent];
          [v39 updateSystemLevelSummaryForHomeScreenEvent:v40];

          v41 = WeakRetained[5];
          v42 = [v56 homeScreenEvent];
          [v41 updateSystemChangeSummaryForHomeScreenEvent:v42];

          v43 = WeakRetained[2];
          v44 = [v56 homeScreenEvent];
          [v43 updateWidgetLevelSummaryForHomeScreenEvent:v44 lastStackEvent:v55];

          v12 = v57;
          a1 = v29;
        }

        else
        {
          v45 = [v3 eventBody];
          objc_opt_class();
          v46 = objc_opt_isKindOfClass();

          if (v46)
          {
            v47 = v23;
            if ([ATXHomeScreenLogUploaderUtilities isValidAppLaunch:v47])
            {
              v48 = *(*(*(a1 + 96) + 8) + 40);
              v49 = [v47 bundleID];
              [ATXHomeScreenLogUploaderUtilities incrementDictionary:v48 forKey:v49];

              *(*(*(a1 + 80) + 8) + 24) = 1;
            }
          }
        }

        if (v12 == 2 && (*(*(*(a1 + 80) + 8) + 24) & 1) == 0 && [*(*(*(a1 + 72) + 8) + 40) count])
        {
          v50 = WeakRetained[4];
          v51 = [*(*(*(a1 + 72) + 8) + 40) allValues];
          [v50 updateSystemLevelUnlockSessionsWithWidgetDwell:v51];

          v52 = WeakRetained[2];
          v53 = [*(*(*(a1 + 72) + 8) + 40) allValues];
          [v52 updateUnlockSessionsWithWidgetDwell:v53];
        }
      }
    }

    else
    {
      v15 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_45_cold_1();
      }
    }
  }

LABEL_37:

  v54 = *MEMORY[0x277D85DE8];
}

- (void)uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity:customStartDate:dryRunCompletionHandler:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_30_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_30_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXHomeScreenLogUploader: Error in CoreAnalytics log processing (task 1 of 2) : %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __123__ATXHomeScreenLogUploader_uploadHomeScreenSummaryLogsToCoreAnalyticsWithActivity_customStartDate_dryRunCompletionHandler___block_invoke_45_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end