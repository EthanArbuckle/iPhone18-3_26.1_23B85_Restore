@interface ATXRSFilter
- (ATXRSFilter)init;
- (ATXRSFilter)initWithAppLaunchHistogramManager:(id)manager;
- (ATXRSFilter)initWithAppLaunchHistogramManager:(id)manager appLaunches:(id)launches;
- (id)_candidatesByUsingAppLaunchHistogramsToFilterCandidates:(id)candidates;
- (id)filterCandidatesBySuggestionRequirements:(id)requirements;
@end

@implementation ATXRSFilter

- (ATXRSFilter)init
{
  v3 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v4 = [(ATXRSFilter *)self initWithAppLaunchHistogramManager:v3];

  return v4;
}

- (ATXRSFilter)initWithAppLaunchHistogramManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_opt_new();
  v6 = [(ATXRSFilter *)self initWithAppLaunchHistogramManager:managerCopy appLaunches:v5];

  return v6;
}

- (ATXRSFilter)initWithAppLaunchHistogramManager:(id)manager appLaunches:(id)launches
{
  managerCopy = manager;
  launchesCopy = launches;
  v12.receiver = self;
  v12.super_class = ATXRSFilter;
  v9 = [(ATXRSFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appLaunchHistogramManager, manager);
    objc_storeStrong(&v10->_appLaunches, launches);
  }

  return v10;
}

- (id)filterCandidatesBySuggestionRequirements:(id)requirements
{
  v36 = *MEMORY[0x277D85DE8];
  requirementsCopy = requirements;
  v27 = objc_opt_new();
  v4 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = requirementsCopy;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    v8 = *MEMORY[0x277CEBD00];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        widgetDescriptor = [v10 widgetDescriptor];
        extensionBundleIdentifier = [widgetDescriptor extensionBundleIdentifier];

        v13 = extensionBundleIdentifier;
        v14 = v13;
        v15 = v4;
        if (CFPreferencesGetAppBooleanValue(@"widgetKitDeveloperModeEnabled", @"com.apple.duetexpertd", 0))
        {
          keyExistsAndHasValidFormat[0] = 0;
          if (CFPreferencesGetAppBooleanValue(@"ATXWidgetKitDeveloperModeSkipEntitlementCheck", v8, keyExistsAndHasValidFormat))
          {
          }

          else
          {
            v16 = [MEMORY[0x277CEB3B0] isDebuggingAllowedForExtensionBundleId:v13];

            v15 = v4;
            if (!v16)
            {
              goto LABEL_14;
            }
          }

          v14 = __atxlog_handle_relevant_shortcut();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            widgetDescriptor2 = [v10 widgetDescriptor];
            *keyExistsAndHasValidFormat = 138412290;
            v34 = widgetDescriptor2;
            _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "ATXRSFilter: WidgetKit Developer Mode enabled. Bypassing filtering for debug allowed widget: %@", keyExistsAndHasValidFormat, 0xCu);
          }

          v15 = v27;
        }

LABEL_14:
        [v15 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v6);
  }

  v18 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *keyExistsAndHasValidFormat = 0;
    _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "ATXRSFilter: Filtering candidates...", keyExistsAndHasValidFormat, 2u);
  }

  v19 = [v4 copy];
  v20 = [(ATXRSFilter *)self _candidatesByUsingAppLaunchHistogramsToFilterCandidates:v19];

  v21 = [v27 arrayByAddingObjectsFromArray:v20];
  v22 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v21 count];
    *keyExistsAndHasValidFormat = 134217984;
    v34 = v23;
    _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "ATXRSFilter: %lu candidates passed suggestion filters", keyExistsAndHasValidFormat, 0xCu);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_candidatesByUsingAppLaunchHistogramsToFilterCandidates:(id)candidates
{
  v88 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  v5 = objc_opt_new();
  selfCopy = self;
  v66 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:2];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = candidatesCopy;
  v60 = [obj countByEnumeratingWithState:&v73 objects:v87 count:16];
  if (v60)
  {
    v59 = *v74;
    *&v6 = 138412802;
    v55 = v6;
    v7 = @"ATXDateRelevantContext";
    v8 = 0x277CBE000uLL;
    v56 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v74 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v61 = v9;
        v10 = *(*(&v73 + 1) + 8 * v9);
        donationBundleIdentifier = [v10 donationBundleIdentifier];
        v12 = [ATXRSWidgetSuggestionProducer replacementContainerBundleIdForDonationBundleId:donationBundleIdentifier];
        v13 = v12;
        if (v12)
        {
          donationBundleIdentifier2 = v12;
        }

        else
        {
          donationBundleIdentifier2 = [v10 donationBundleIdentifier];
        }

        v15 = donationBundleIdentifier2;

        v16 = v15;
        if (([v16 isEqualToString:@"com.apple.Health.Sleep"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"com.apple.PeopleViewService"))
        {

LABEL_12:
          v17 = v5;
          v18 = v10;
          goto LABEL_13;
        }

        v19 = [v16 isEqualToString:@"com.apple.gamecenter.widgets"];

        if (v19)
        {
          goto LABEL_12;
        }

        [(ATXAppLaunches *)selfCopy->_appLaunches timesAppHasBeenLaunchedOverLast28Days:v16];
        if (v20 >= 10.0)
        {
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v63 = v10;
          relevantContexts = [v10 relevantContexts];
          v68 = [relevantContexts countByEnumeratingWithState:&v69 objects:v86 count:16];
          if (!v68)
          {

LABEL_41:
            v17 = v5;
            v18 = v63;
LABEL_13:
            [v17 addObject:v18];
            goto LABEL_14;
          }

          v67 = *v70;
          v32 = 1;
          v62 = v16;
          v65 = relevantContexts;
          do
          {
            for (i = 0; i != v68; ++i)
            {
              if (*v70 != v67)
              {
                objc_enumerationMutation(relevantContexts);
              }

              v34 = *(*(&v69 + 1) + 8 * i);
              v35 = NSClassFromString(&v7->isa);
              v36 = v34;
              if (v35)
              {
                if (objc_opt_isKindOfClass())
                {
                  v37 = v36;
                }

                else
                {
                  v37 = 0;
                }
              }

              else
              {
                v37 = 0;
              }

              v38 = v37;

              if (v38)
              {
                v85 = v16;
                v39 = [*(v8 + 2656) arrayWithObjects:&v85 count:1];
                startDate = [v38 startDate];
                LODWORD(v41) = 1.0;
                [v66 totalLaunchesForBundleIds:v39 forDate:startDate distanceScale:v41];
                v43 = v42;

                if (v43 < 4.0)
                {
                  v44 = __atxlog_handle_relevant_shortcut();
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                  {
                    widgetDescriptor = [v63 widgetDescriptor];
                    extensionBundleIdentifier = [widgetDescriptor extensionBundleIdentifier];
                    widgetDescriptor2 = [v63 widgetDescriptor];
                    kind = [widgetDescriptor2 kind];
                    intent = [v63 intent];
                    [intent intentDescription];
                    v50 = v49 = v7;
                    startDate2 = [v38 startDate];
                    *buf = 138413058;
                    v78 = extensionBundleIdentifier;
                    v79 = 2112;
                    v80 = kind;
                    v81 = 2112;
                    v82 = v50;
                    v83 = 2112;
                    v84 = startDate2;
                    _os_log_impl(&dword_2263AA000, v44, OS_LOG_TYPE_DEFAULT, "ATXRSFilter: Candidate (%@ - %@ - %@) failed dayOfWeek filter for start date: %@", buf, 0x2Au);

                    v7 = v49;
                    v16 = v62;

                    v8 = 0x277CBE000;
                  }

                  v32 = 0;
                  relevantContexts = v65;
                }
              }
            }

            v68 = [relevantContexts countByEnumeratingWithState:&v69 objects:v86 count:16];
          }

          while (v68);

          v5 = v56;
          if (v32)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v21 = __atxlog_handle_relevant_shortcut();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            widgetDescriptor3 = [v10 widgetDescriptor];
            extensionBundleIdentifier2 = [widgetDescriptor3 extensionBundleIdentifier];
            widgetDescriptor4 = [v10 widgetDescriptor];
            kind2 = [widgetDescriptor4 kind];
            v26 = v10;
            v27 = kind2;
            intent2 = [v26 intent];
            [intent2 intentDescription];
            v30 = v29 = v16;
            *buf = v55;
            v78 = extensionBundleIdentifier2;
            v79 = 2112;
            v80 = v27;
            v81 = 2112;
            v82 = v30;
            _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "ATXRSFilter: Candidate (%@ - %@ - %@) failed minimum app launch count over last 28 days filter", buf, 0x20u);

            v16 = v29;
            v5 = v56;
          }
        }

LABEL_14:

        v9 = v61 + 1;
      }

      while (v61 + 1 != v60);
      v52 = [obj countByEnumeratingWithState:&v73 objects:v87 count:16];
      v60 = v52;
    }

    while (v52);
  }

  v53 = *MEMORY[0x277D85DE8];

  return v5;
}

@end