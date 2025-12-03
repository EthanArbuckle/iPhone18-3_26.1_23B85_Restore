@interface ATXModeConfigurationLogger
- (ATXModeConfigurationLogger)init;
- (ATXModeConfigurationLogger)initWithDNDModeConfigurationClient:(id)client;
- (void)logMetricForConfiguration:(id)configuration;
- (void)logModeConfigurationsWithXPCActivity:(id)activity;
- (void)retrieveEvents;
@end

@implementation ATXModeConfigurationLogger

- (ATXModeConfigurationLogger)initWithDNDModeConfigurationClient:(id)client
{
  clientCopy = client;
  v16.receiver = self;
  v16.super_class = ATXModeConfigurationLogger;
  v6 = [(ATXModeConfigurationLogger *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, client);
    v8 = objc_opt_new();
    cachedSuggestedItems = v7->_cachedSuggestedItems;
    v7->_cachedSuggestedItems = v8;

    mEMORY[0x277CEB6A8] = [MEMORY[0x277CEB6A8] sharedInstance];
    modeEntityTrialClientWrapper = v7->_modeEntityTrialClientWrapper;
    v7->_modeEntityTrialClientWrapper = mEMORY[0x277CEB6A8];

    [(ATXModeConfigurationLogger *)v7 retrieveEvents];
    v12 = +[ATXPosterConfigurationCache sharedInstance];
    configurations = [v12 configurations];
    cachedConfigurations = v7->_cachedConfigurations;
    v7->_cachedConfigurations = configurations;
  }

  return v7;
}

- (ATXModeConfigurationLogger)init
{
  mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
  v4 = [(ATXModeConfigurationLogger *)self initWithDNDModeConfigurationClient:mEMORY[0x277CEB440]];

  return v4;
}

- (void)logModeConfigurationsWithXPCActivity:(id)activity
{
  v34 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v5 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412290;
    v33 = v7;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "%@ - Logging mode configurations", buf, 0xCu);
  }

  getAllModeConfigurationsWithoutCache = [(ATXDNDModeConfigurationClient *)self->_client getAllModeConfigurationsWithoutCache];
  v9 = __atxlog_handle_metrics();
  allValues = v9;
  if (getAllModeConfigurationsWithoutCache)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138412290;
      v33 = v12;
      _os_log_impl(&dword_2263AA000, allValues, OS_LOG_TYPE_INFO, "%@ - Fetched mode configurations from client", buf, 0xCu);
    }

    if ([activityCopy didDefer])
    {
      allValues = __atxlog_handle_metrics();
      if (os_log_type_enabled(allValues, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138412290;
        v33 = v14;
        v15 = "%@ - XPC Activity deferred, terminating.";
LABEL_21:
        _os_log_impl(&dword_2263AA000, allValues, OS_LOG_TYPE_INFO, v15, buf, 0xCu);
      }
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      allValues = [getAllModeConfigurationsWithoutCache allValues];
      v16 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v28;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(allValues);
            }

            v20 = *(*(&v27 + 1) + 8 * i);
            v21 = objc_autoreleasePoolPush();
            [(ATXModeConfigurationLogger *)self logMetricForConfiguration:v20];
            if ([activityCopy didDefer])
            {
              v23 = __atxlog_handle_metrics();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                v24 = objc_opt_class();
                v25 = NSStringFromClass(v24);
                *buf = 138412290;
                v33 = v25;
                _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_INFO, "%@ - XPC Activity deferred, terminating.", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v21);
              goto LABEL_25;
            }

            objc_autoreleasePoolPop(v21);
          }

          v17 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      allValues = __atxlog_handle_metrics();
      if (os_log_type_enabled(allValues, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v14 = NSStringFromClass(v22);
        *buf = 138412290;
        v33 = v14;
        v15 = "%@ - Finished logging mode configurations";
        goto LABEL_21;
      }
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ATXModeConfigurationLogger logModeConfigurationsWithXPCActivity:];
  }

LABEL_25:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)logMetricForConfiguration:(id)configuration
{
  v181 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v4 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    mode = [configurationCopy mode];
    identifier = [mode identifier];
    uUIDString = [identifier UUIDString];
    *buf = 138412546;
    v173 = v6;
    v174 = 2112;
    v175 = uUIDString;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_INFO, "%@ - Generating metrics for DND mode with UUID %@", buf, 0x16u);
  }

  v10 = objc_opt_new();
  mode2 = [configurationCopy mode];
  identifier2 = [mode2 identifier];
  uUIDString2 = [identifier2 UUIDString];
  [v10 setModeIdentifier:uUIDString2];

  mode3 = [configurationCopy mode];
  [mode3 semanticType];
  DNDModeSemanticTypeToATXActivityType();
  v15 = ATXActivityTypeToString();
  [v10 setModeSemanticType:v15];

  v170 = 0;
  v135 = objc_alloc_init(MEMORY[0x277CEB568]);
  v16 = [v135 loadHomeScreenPageConfigurationsIncludingHidden:1 error:&v170];
  v17 = v170;
  if (v17)
  {
    v18 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXModeConfigurationLogger logMetricForConfiguration:];
    }
  }

  v138 = configurationCopy;
  v134 = v17;
  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  obj = v16;
  v19 = [obj countByEnumeratingWithState:&v166 objects:v180 count:16];
  if (v19)
  {
    v20 = v19;
    v141 = *v167;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v167 != v141)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v166 + 1) + 8 * i);
        v162 = 0u;
        v163 = 0u;
        v164 = 0u;
        v165 = 0u;
        associatedModeUUIDs = [v22 associatedModeUUIDs];
        v24 = [associatedModeUUIDs countByEnumeratingWithState:&v162 objects:v179 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v163;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v163 != v26)
              {
                objc_enumerationMutation(associatedModeUUIDs);
              }

              v28 = *(*(&v162 + 1) + 8 * j);
              modeIdentifier = [v10 modeIdentifier];
              LODWORD(v28) = [v28 isEqualToString:modeIdentifier];

              if (v28)
              {
                [v10 setHasCustomHomeScreen:1];
                [v10 setNumCustomHomeScreens:{objc_msgSend(v10, "numCustomHomeScreens") + 1}];
                associatedModeUUIDs2 = [v22 associatedModeUUIDs];
                v31 = [associatedModeUUIDs2 count];
                hasCustomHomeScreenUsedInOtherModes = [v10 hasCustomHomeScreenUsedInOtherModes];
                if (v31 > 1)
                {
                  v33 = 1;
                }

                else
                {
                  v33 = hasCustomHomeScreenUsedInOtherModes;
                }

                [v10 setHasCustomHomeScreenUsedInOtherModes:v33];
              }
            }

            v25 = [associatedModeUUIDs countByEnumeratingWithState:&v162 objects:v179 count:16];
          }

          while (v25);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v166 objects:v180 count:16];
    }

    while (v20);
  }

  cachedConfigurations = [(ATXModeConfigurationLogger *)self cachedConfigurations];
  v160[0] = MEMORY[0x277D85DD0];
  v160[1] = 3221225472;
  v160[2] = __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke;
  v160[3] = &unk_27859F778;
  v35 = v138;
  v161 = v35;
  v36 = [cachedConfigurations _pas_filteredArrayWithTest:v160];
  [v10 setNumLockScreenPosters:{objc_msgSend(v36, "count")}];

  v37 = objc_opt_new();
  mode4 = [v35 mode];
  identifier3 = [mode4 identifier];
  uUIDString3 = [identifier3 UUIDString];
  v133 = v37;
  v41 = [v37 identifierOfSuggestedPageForModeUUID:uUIDString3];

  if (v41)
  {
    [v10 setNumAcceptedSuggestedHomePages:1];
  }

  mode5 = [v35 mode];
  semanticType = [mode5 semanticType];

  if (semanticType == 1)
  {
    v44 = ATXSleepSuggestedHomePageWasCreatedDuringMigration();
    if (!v44)
    {
      v45 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [ATXModeConfigurationLogger logMetricForConfiguration:v45];
      }
    }

    bOOLValue = [v44 BOOLValue];
    [v10 setIsSleepMigrated:bOOLValue];
    [v10 setDidRemoveSuggestedPage:{bOOLValue & (objc_msgSend(v10, "hasCustomHomeScreen") ^ 1)}];
  }

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v139 = v35;
  triggers = [v35 triggers];
  v48 = [triggers countByEnumeratingWithState:&v156 objects:v178 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v157;
    do
    {
      for (k = 0; k != v49; ++k)
      {
        if (*v157 != v50)
        {
          objc_enumerationMutation(triggers);
        }

        v52 = *(*(&v156 + 1) + 8 * k);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v52 isEnabled])
        {
          [v10 setHasAreaTrigger:1];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v52 isEnabled])
          {
            [v10 setHasTimeTrigger:1];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v52 isEnabled])
            {
              [v10 setHasAppTrigger:1];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v52 isEnabled])
              {
                [v10 setHasSmartTrigger:1];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v52 isEnabled])
                {
                  [v10 setHasWorkoutTrigger:1];
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v52 isEnabled])
                  {
                    [v10 setHasSleepTrigger:1];
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) != 0 && [v52 isEnabled])
                    {
                      [v10 setHasDrivingTrigger:1];
                    }
                  }
                }
              }
            }
          }
        }
      }

      v49 = [triggers countByEnumeratingWithState:&v156 objects:v178 count:16];
    }

    while (v49);
  }

  configuration = [v139 configuration];
  allowIntelligentManagement = [configuration allowIntelligentManagement];

  if (allowIntelligentManagement == 2)
  {
    [v10 setIsIntelligentBreakthroughEnabled:1];
  }

  cachedSuggestedItems = [(ATXModeConfigurationLogger *)self cachedSuggestedItems];
  mode6 = [v139 mode];
  identifier4 = [mode6 identifier];
  uUIDString4 = [identifier4 UUIDString];
  v59 = [cachedSuggestedItems objectForKeyedSubscript:uUIDString4];

  configuration2 = [v139 configuration];
  applicationConfigurationType = [configuration2 applicationConfigurationType];

  if (applicationConfigurationType)
  {
    if (applicationConfigurationType == 2)
    {
      goto LABEL_73;
    }

    if (applicationConfigurationType != 1)
    {
      v65 = __atxlog_handle_metrics();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
      {
        [ATXModeConfigurationLogger logMetricForConfiguration:v139];
      }

      goto LABEL_72;
    }

    configuration3 = [v139 configuration];
    applicationsWithExceptions = [configuration3 applicationsWithExceptions];

    [v10 setNumDeniedApps:{objc_msgSend(applicationsWithExceptions, "count")}];
    suggestedDeniedApps = [v59 suggestedDeniedApps];
    v154[0] = MEMORY[0x277D85DD0];
    v154[1] = 3221225472;
    v154[2] = __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke_57;
    v154[3] = &unk_27859B908;
    v155 = applicationsWithExceptions;
    v65 = applicationsWithExceptions;
    v66 = [suggestedDeniedApps _pas_filteredSetWithTest:v154];

    [v10 setNumAcceptedSuggestedApps:{objc_msgSend(v66, "count")}];
    v67 = v155;
  }

  else
  {
    configuration4 = [v139 configuration];
    applicationsWithExceptions2 = [configuration4 applicationsWithExceptions];

    [v10 setNumAllowedApps:{objc_msgSend(applicationsWithExceptions2, "count")}];
    suggestedAllowedApps = [v59 suggestedAllowedApps];
    v152[0] = MEMORY[0x277D85DD0];
    v152[1] = 3221225472;
    v152[2] = __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke_2;
    v152[3] = &unk_27859B908;
    v153 = applicationsWithExceptions2;
    v65 = applicationsWithExceptions2;
    v71 = [suggestedAllowedApps _pas_filteredSetWithTest:v152];

    [v10 setNumAcceptedSuggestedApps:{objc_msgSend(v71, "count")}];
    v67 = v153;
  }

LABEL_72:
LABEL_73:
  configuration5 = [v139 configuration];
  senderConfigurationType = [configuration5 senderConfigurationType];

  if (senderConfigurationType)
  {
    if (senderConfigurationType == 2)
    {
      goto LABEL_82;
    }

    if (senderConfigurationType != 1)
    {
      v77 = __atxlog_handle_metrics();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
      {
        [ATXModeConfigurationLogger logMetricForConfiguration:v139];
      }

      goto LABEL_81;
    }

    configuration6 = [v139 configuration];
    contactsWithExceptions = [configuration6 contactsWithExceptions];

    [v10 setNumDeniedContacts:{objc_msgSend(contactsWithExceptions, "count")}];
    suggestedDeniedContacts = [v59 suggestedDeniedContacts];
    v150[0] = MEMORY[0x277D85DD0];
    v150[1] = 3221225472;
    v150[2] = __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke_59;
    v150[3] = &unk_27859B908;
    v151 = contactsWithExceptions;
    v77 = contactsWithExceptions;
    v78 = [suggestedDeniedContacts _pas_filteredSetWithTest:v150];

    [v10 setNumAcceptedSuggestedContacts:{objc_msgSend(v78, "count")}];
    v79 = v151;
  }

  else
  {
    configuration7 = [v139 configuration];
    contactsWithExceptions2 = [configuration7 contactsWithExceptions];

    [v10 setNumAllowedContacts:{objc_msgSend(contactsWithExceptions2, "count")}];
    suggestedAllowedContacts = [v59 suggestedAllowedContacts];
    v148[0] = MEMORY[0x277D85DD0];
    v148[1] = 3221225472;
    v148[2] = __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke_2_60;
    v148[3] = &unk_27859B908;
    v149 = contactsWithExceptions2;
    v77 = contactsWithExceptions2;
    v83 = [suggestedAllowedContacts _pas_filteredSetWithTest:v148];

    [v10 setNumAcceptedSuggestedContacts:{objc_msgSend(v83, "count")}];
    v79 = v149;
  }

LABEL_81:
LABEL_82:
  v132 = v59;
  configuration8 = [v139 configuration];
  [configuration8 applicationConfigurationType];
  v85 = DNDStringFromConfigurationType();
  [v10 setAppConfigurationType:v85];

  configuration9 = [v139 configuration];
  [configuration9 senderConfigurationType];
  v87 = DNDStringFromConfigurationType();
  [v10 setContactConfigurationType:v87];

  [v10 setIsAutomaticallyGenerated:{objc_msgSend(v139, "isAutomaticallyGenerated")}];
  [v10 setDoesImpactAvailability:{objc_msgSend(v139, "impactsAvailability") != 0}];
  client = [(ATXModeConfigurationLogger *)self client];
  [v10 setIsSharingAcrossDevices:{objc_msgSend(client, "isCloudSyncActive")}];

  client2 = [(ATXModeConfigurationLogger *)self client];
  mode7 = [v139 mode];
  modeIdentifier2 = [mode7 modeIdentifier];
  v147 = 0;
  v92 = [client2 appConfigurationsForModeIdentifier:modeIdentifier2 error:&v147];
  v93 = v147;
  [v10 setNumAppConfigurations:{objc_msgSend(v92, "count")}];

  trialExperimentId = [(ATXModeEntityTrialClientWrapper *)self->_modeEntityTrialClientWrapper trialExperimentId];
  [v10 setExperimentId:trialExperimentId];

  trialTreatmentId = [(ATXModeEntityTrialClientWrapper *)self->_modeEntityTrialClientWrapper trialTreatmentId];
  [v10 setTreatmentId:trialTreatmentId];

  v96 = [MEMORY[0x277CCABB0] numberWithInt:{-[ATXModeEntityTrialClientWrapper trialDeploymentId](self->_modeEntityTrialClientWrapper, "trialDeploymentId")}];
  [v10 setDeploymentId:v96];

  v136 = v93;
  if (v93)
  {
    v97 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      v127 = objc_opt_class();
      v128 = NSStringFromClass(v127);
      localizedDescription = [v93 localizedDescription];
      mode8 = [v139 mode];
      [mode8 semanticType];
      v131 = DNDModeSemanticTypeToString();
      *buf = 138412802;
      v173 = v128;
      v174 = 2112;
      v175 = localizedDescription;
      v176 = 2112;
      v177 = v131;
      _os_log_error_impl(&dword_2263AA000, v97, OS_LOG_TYPE_ERROR, "%@: Got error: %@, when getting AppConfigturation for %@", buf, 0x20u);
    }
  }

  v98 = MEMORY[0x277CEB930];
  mode9 = [v139 mode];
  LODWORD(v98) = [v98 suggestionsAreSupportedForModeSemanticType:{objc_msgSend(mode9, "semanticType")}];

  if (v98)
  {
    v100 = objc_alloc(MEMORY[0x277CEB930]);
    mode10 = [v139 mode];
    v102 = [v100 initWithModeSemanticType:{objc_msgSend(mode10, "semanticType")}];

    [v10 setWasQuickStartPlatterShown:{objc_msgSend(v102, "suggestionWasAlreadyShown")}];
  }

  v103 = objc_alloc(MEMORY[0x277CBEBD0]);
  v104 = [v103 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v105 = [v104 dictionaryForKey:*MEMORY[0x277CEBDA8]];
  mode11 = [v139 mode];
  modeIdentifier3 = [mode11 modeIdentifier];
  mode12 = [v105 objectForKeyedSubscript:modeIdentifier3];
  [v10 setWasColoringBookSeen:{objc_msgSend(mode12, "BOOLValue")}];

  [v10 setNumAcceptedSuggestedLockScreens:0];
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v109 = +[ATXPosterConfigurationCache sharedInstance];
  configurations = [v109 configurations];

  v142 = configurations;
  v111 = [configurations countByEnumeratingWithState:&v143 objects:v171 count:16];
  if (v111)
  {
    v112 = v111;
    v113 = *v144;
    do
    {
      for (m = 0; m != v112; ++m)
      {
        if (*v144 != v113)
        {
          objc_enumerationMutation(v142);
        }

        galleryItem = [*(*(&v143 + 1) + 8 * m) galleryItem];
        v116 = galleryItem;
        if (galleryItem && ([galleryItem modeSemanticType], (modeIdentifier3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          mode11 = [v116 modeSemanticType];
          integerValue = [mode11 integerValue];
          mode12 = [v139 mode];
          v118 = integerValue == [mode12 semanticType] && objc_msgSend(v116, "source") == 6;
          v119 = 1;
        }

        else
        {
          v119 = 0;
          v118 = 0;
        }

        [v10 setNumAcceptedSuggestedLockScreens:{objc_msgSend(v10, "numAcceptedSuggestedLockScreens") + v118}];
        if (v119)
        {
        }

        if (v116)
        {
        }
      }

      v112 = [v142 countByEnumeratingWithState:&v143 objects:v171 count:16];
    }

    while (v112);
  }

  v120 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
  {
    v121 = objc_opt_class();
    v122 = NSStringFromClass(v121);
    mode13 = [v139 mode];
    identifier5 = [mode13 identifier];
    uUIDString5 = [identifier5 UUIDString];
    *buf = 138412546;
    v173 = v122;
    v174 = 2112;
    v175 = uUIDString5;
    _os_log_impl(&dword_2263AA000, v120, OS_LOG_TYPE_INFO, "%@ - Logging metrics for DND mode with UUID %@", buf, 0x16u);
  }

  [v10 logToCoreAnalytics];
  v126 = *MEMORY[0x277D85DE8];
}

uint64_t __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 modeUUID];
  v4 = [v3 UUIDString];
  v5 = [*(a1 + 32) mode];
  v6 = [v5 identifier];
  v7 = [v6 UUIDString];
  v8 = [v4 isEqualToString:v7];

  return v8;
}

uint64_t __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke_57(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [*(a1 + 32) allObjects];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) bundleID];
        v9 = [v8 isEqualToString:v3];

        if (v9)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [*(a1 + 32) allObjects];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) bundleID];
        v9 = [v8 isEqualToString:v3];

        if (v9)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke_59(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [*(a1 + 32) allObjects];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) contactIdentifier];
        v9 = [v8 isEqualToString:v3];

        if (v9)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __56__ATXModeConfigurationLogger_logMetricForConfiguration___block_invoke_2_60(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [*(a1 + 32) allObjects];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) contactIdentifier];
        v9 = [v8 isEqualToString:v3];

        if (v9)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)retrieveEvents
{
  v3 = objc_opt_new();
  v4 = [v3 publisherFromStartTime:0.0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ATXModeConfigurationLogger_retrieveEvents__block_invoke;
  v7[3] = &unk_27859E3D8;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__ATXModeConfigurationLogger_retrieveEvents__block_invoke_66;
  v6[3] = &unk_27859A798;
  v6[4] = self;
  v5 = [v4 sinkWithCompletion:v7 shouldContinue:v6];
}

void __44__ATXModeConfigurationLogger_retrieveEvents__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 state];
  v5 = __atxlog_handle_metrics();
  v6 = v5;
  if (v4 == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __44__ATXModeConfigurationLogger_retrieveEvents__block_invoke_cold_1(a1, v3);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "%@ - Retrieved events from ATXModeConfigurationUIFlowLoggingBiomeStream", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __44__ATXModeConfigurationLogger_retrieveEvents__block_invoke_66(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 dndModeUUID];
  v5 = [v4 UUIDString];

  v6 = [*(a1 + 32) cachedSuggestedItems];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = objc_opt_new();
    v9 = [*(a1 + 32) cachedSuggestedItems];
    [v9 setObject:v8 forKeyedSubscript:v5];
  }

  v10 = [*(a1 + 32) cachedSuggestedItems];
  v11 = [v10 objectForKeyedSubscript:v5];

  if (![v3 modeConfigurationEntityType])
  {
    if ([v3 modeConfigurationType])
    {
      [v11 suggestedDeniedApps];
    }

    else
    {
      [v11 suggestedAllowedApps];
    }

    goto LABEL_7;
  }

  if ([v3 modeConfigurationEntityType] == 1)
  {
    if ([v3 modeConfigurationType])
    {
      [v11 suggestedDeniedContacts];
    }

    else
    {
      [v11 suggestedAllowedContacts];
    }

    v12 = LABEL_7:;
    v13 = v12;
    v14 = [v3 suggestedEntityIdentifiers];
    [v13 addObjectsFromArray:v14];
  }

  return 1;
}

- (void)logModeConfigurationsWithXPCActivity:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logMetricForConfiguration:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "ATXModeConfigurationLogger: Unable to load HomeScreen page configurations - %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)logMetricForConfiguration:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXModeConfigurationLogger logMetricForConfiguration:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Failed to determine whether sleep migration happened so can't set didRemoveSuggestedPage on the metric correctly. Setting metric to NO as a fallback.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)logMetricForConfiguration:(void *)a1 .cold.3(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 configuration];
  [v1 applicationConfigurationType];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logMetricForConfiguration:(void *)a1 .cold.4(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 configuration];
  [v1 senderConfigurationType];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __44__ATXModeConfigurationLogger_retrieveEvents__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 error];
  v12 = [v6 localizedDescription];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v7, v8, OS_LOG_TYPE_ERROR, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

@end