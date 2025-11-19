@interface ATXModeEntityModelTrainer
+ (double)maxScoreWithThresholdGivenModeEntityScores:(id)a3;
+ (double)scoreThresholdGivenModeEntityScores:(id)a3 modeEntityTypeIdentifier:(id)a4;
+ (id)eventProviderForMode:(unint64_t)a3;
+ (id)eventProviderForScorableTime:(id)a3;
+ (id)thresholdedModeEntityScores:(id)a3 modeEntityTypeIdentifier:(id)a4 threshold:(double)a5;
- (ATXModeEntityModelTrainer)init;
- (ATXModeEntityModelTrainer)initWithCacheBasePath:(id)a3 modeEntityStore:(id)a4 globalAppModeAffinityModel:(id)a5 globalInterruptingAppModel:(id)a6 globalWidgetPopularityModel:(id)a7;
- (BOOL)persistModeEntityScores:(id)a3 modeEntityTypeIdentifier:(id)a4 modeIdentifier:(id)a5 modeConfigurationType:(int64_t)a6;
- (BOOL)shouldDeferTrainingDueToRestoredBackup;
- (BOOL)shouldDeferTrainingDueToUpgrade;
- (id)pathForModeEntityTypeIdentifier:(id)a3 modeIdentifier:(id)a4 modeConfigurationType:(int64_t)a5;
- (void)trainWithTask:(id)a3 shouldSkipRetrainingIfTrainedRecently:(BOOL)a4 shouldDeferTrainingOnRestoreOrUpgrade:(BOOL)a5;
@end

@implementation ATXModeEntityModelTrainer

- (ATXModeEntityModelTrainer)init
{
  v3 = [MEMORY[0x277CEBCB0] modeCachesRootDirectory];
  v4 = objc_opt_new();
  v5 = +[ATXGlobalAppModeAffinityModel modelWithAllInstalledAppsKnownToSpringBoard];
  v6 = +[ATXGlobalInterruptingAppModel modelWithAllInstalledAppsKnownToSpringBoard];
  v7 = +[ATXGlobalWidgetPopularityModel modelWithAllAvailableWidgets];
  v8 = [(ATXModeEntityModelTrainer *)self initWithCacheBasePath:v3 modeEntityStore:v4 globalAppModeAffinityModel:v5 globalInterruptingAppModel:v6 globalWidgetPopularityModel:v7];

  return v8;
}

- (ATXModeEntityModelTrainer)initWithCacheBasePath:(id)a3 modeEntityStore:(id)a4 globalAppModeAffinityModel:(id)a5 globalInterruptingAppModel:(id)a6 globalWidgetPopularityModel:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = ATXModeEntityModelTrainer;
  v17 = [(ATXModeEntityModelTrainer *)&v21 init];
  if (v17)
  {
    v18 = [v12 copy];
    cacheBasePath = v17->_cacheBasePath;
    v17->_cacheBasePath = v18;

    objc_storeStrong(&v17->_modeEntityStore, a4);
    objc_storeStrong(&v17->_globalAppModeAffinityModel, a5);
    objc_storeStrong(&v17->_globalInterruptingAppModel, a6);
    objc_storeStrong(&v17->_globalWidgetPopularityModel, a7);
  }

  return v17;
}

- (void)trainWithTask:(id)a3 shouldSkipRetrainingIfTrainedRecently:(BOOL)a4 shouldDeferTrainingOnRestoreOrUpgrade:(BOOL)a5
{
  v5 = a5;
  v74 = a4;
  v89 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v5 && ([(ATXModeEntityModelTrainer *)self shouldDeferTrainingDueToRestoredBackup]|| [(ATXModeEntityModelTrainer *)self shouldDeferTrainingDueToUpgrade]))
  {
    [v7 setDone];
    goto LABEL_64;
  }

  v8 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Started training Mode Entity Models...", buf, 2u);
  }

  [v7 setProgressUnits:5];
  v9 = objc_opt_new();
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v10 = allModesForTraining();
  v72 = [v10 countByEnumeratingWithState:&v80 objects:v88 count:16];
  if (v72)
  {
    v65 = 0;
    v73 = *v81;
    v71 = v9;
    v67 = v10;
LABEL_9:
    v11 = 0;
    while (1)
    {
      if (*v81 != v73)
      {
        objc_enumerationMutation(v10);
      }

      v12 = *(*(&v80 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v14 = [v12 unsignedIntegerValue];
      v15 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = ATXModeToString();
        *buf = 138412290;
        v85 = v16;
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Training Mode Entity Models for Mode %@...", buf, 0xCu);
      }

      if (v74)
      {
        [v12 unsignedIntegerValue];
        v17 = ATXModeToString();
        v18 = [(ATXModeEntityModelTrainer *)self pathForModeEntityTypeIdentifier:@"apps" modeIdentifier:v17 modeConfigurationType:0];

        v19 = [MEMORY[0x277CEBCB0] modificationDateOfFileAtPath:v18];
        [v19 timeIntervalSinceNow];
        v21 = v20;

        if (v21 < 0.0 && v21 > -21600.0)
        {
          v22 = __atxlog_handle_notification_management();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            [v12 unsignedIntegerValue];
            v23 = ATXModeToString();
            *buf = 138412546;
            v85 = v23;
            v86 = 2048;
            v87 = -v21;
            _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "Skipping training of apps, contacts, and notification scores in Mode Entity Scorer for mode %@ since it was trained recently. Cache age: %.2f", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v13);
          goto LABEL_47;
        }
      }

      v24 = -[ATXAppModeModel initWithMode:modeEntityStore:globalAppModeAffinityModel:]([ATXAppModeModel alloc], "initWithMode:modeEntityStore:globalAppModeAffinityModel:", [v12 unsignedIntegerValue], self->_modeEntityStore, self->_globalAppModeAffinityModel);
      v25 = [(ATXAppModeModel *)v24 scoredEntitiesWithXPCActivity:v7];
      if ([v7 didDefer])
      {
        v27 = __atxlog_handle_notification_management();
        if (!os_log_type_enabled(&v27->super, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_62;
        }

        v57 = ATXModeToString();
        *buf = 138412290;
        v85 = v57;
        v58 = "ATXAppModeModel: computing scoredEntities for %@, but deferring training because XPC activity asked for deferral";
LABEL_55:
        _os_log_impl(&dword_2263AA000, &v27->super, OS_LOG_TYPE_DEFAULT, v58, buf, 0xCu);

        goto LABEL_62;
      }

      v26 = ATXModeToString();
      [(ATXModeEntityModelTrainer *)self persistModeEntityScores:v25 modeEntityTypeIdentifier:@"apps" modeIdentifier:v26 modeConfigurationType:0];

      if ([v7 didDefer])
      {
        v27 = __atxlog_handle_notification_management();
        if (!os_log_type_enabled(&v27->super, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_62;
        }

        v57 = ATXModeToString();
        *buf = 138412290;
        v85 = v57;
        v58 = "(Allow List) Finished training of app scores in Mode Entity Scorer for mode %@, but deferring training because XPC activity asked for deferral";
        goto LABEL_55;
      }

      v79 = v25;
      context = v13;
      v27 = [[ATXAppModeDenyListModel alloc] initWithMode:v14 modeEntityStore:self->_modeEntityStore globalInterruptingAppModel:self->_globalInterruptingAppModel];
      v28 = [(ATXAppModeDenyListModel *)v27 scoredEntitiesWithXPCActivity:v7];
      if ([v7 didDefer])
      {
        v59 = __atxlog_handle_notification_management();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = ATXModeToString();
          *buf = 138412290;
          v85 = v60;
          v61 = "ATXAppModeDenyListModel: computing scoredEntities for %@, but deferring training because XPC activity asked for deferral.";
          goto LABEL_60;
        }

LABEL_61:

        v13 = context;
        v25 = v79;
LABEL_62:

        objc_autoreleasePoolPop(v13);
        goto LABEL_63;
      }

      v29 = ATXModeToString();
      [(ATXModeEntityModelTrainer *)self persistModeEntityScores:v28 modeEntityTypeIdentifier:@"apps" modeIdentifier:v29 modeConfigurationType:1];

      if ([v7 didDefer])
      {
        v59 = __atxlog_handle_notification_management();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = ATXModeToString();
          *buf = 138412290;
          v85 = v60;
          v61 = "(Deny List) Finished training of app scores in Mode Entity Scorer for mode %@, but deferring training because XPC activity asked for deferral.";
LABEL_60:
          _os_log_impl(&dword_2263AA000, v59, OS_LOG_TYPE_DEFAULT, v61, buf, 0xCu);
        }

        goto LABEL_61;
      }

      v75 = v27;
      v76 = v24;
      v30 = [[ATXContactModeModel alloc] initWithMode:v14 contactStore:v9];
      v31 = [(ATXContactModeModel *)v30 scoredEntities];
      v32 = [(ATXContactModeModel *)v30 purgeDeletedContacts:v31];

      v33 = ATXModeToString();
      v78 = v32;
      [(ATXModeEntityModelTrainer *)self persistModeEntityScores:v32 modeEntityTypeIdentifier:@"contacts" modeIdentifier:v33 modeConfigurationType:0];

      if ([v7 didDefer])
      {
        v34 = __atxlog_handle_notification_management();
        v35 = v75;
        if (os_log_type_enabled(&v34->super, OS_LOG_TYPE_DEFAULT))
        {
          v36 = ATXModeToString();
          *buf = 138412290;
          v85 = v36;
          _os_log_impl(&dword_2263AA000, &v34->super, OS_LOG_TYPE_DEFAULT, "(Allow List) Finished training of contact scores in Mode Entity Scorer for mode %@, but deferring training because XPC activity asked for deferral.", buf, 0xCu);
        }

        v37 = 0;
      }

      else
      {
        v69 = v30;
        v34 = [[ATXContactModeDenyListModel alloc] initWithMode:v14 contactStore:v9];
        [(ATXContactModeDenyListModel *)v34 scoredEntities];
        v39 = v38 = v9;
        [(ATXContactModeDenyListModel *)v34 purgeDeletedContacts:v39];
        v41 = v40 = v7;

        v42 = ATXModeToString();
        v70 = v41;
        v43 = v41;
        v7 = v40;
        [(ATXModeEntityModelTrainer *)self persistModeEntityScores:v43 modeEntityTypeIdentifier:@"contacts" modeIdentifier:v42 modeConfigurationType:1];

        if ([v40 didDefer])
        {
          v44 = __atxlog_handle_notification_management();
          v68 = v44;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = ATXModeToString();
            *buf = 138412290;
            v85 = v45;
            _os_log_impl(&dword_2263AA000, v44, OS_LOG_TYPE_DEFAULT, "(Deny List) Finished training of contact scores in Mode Entity Scorer for mode %@, but deferring training because XPC activity asked for deferral.", buf, 0xCu);
          }

          v37 = 0;
          v35 = v75;
          v30 = v69;
        }

        else
        {
          v68 = [[ATXNotificationModeModel alloc] initWithMode:v14 contactStore:v38];
          v46 = [(ATXNotificationModeModel *)v68 scoredEntitiesWithScoredAppEntities:v79 scoredContactEntities:v32];
          v47 = ATXModeToString();
          v66 = v46;
          [(ATXModeEntityModelTrainer *)self persistModeEntityScores:v46 modeEntityTypeIdentifier:@"notifications" modeIdentifier:v47 modeConfigurationType:0];

          if ([v7 didDefer])
          {
            p_super = __atxlog_handle_notification_management();
            v35 = v75;
            v30 = v69;
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
            {
              v49 = ATXModeToString();
              *buf = 138412290;
              v85 = v49;
              _os_log_impl(&dword_2263AA000, p_super, OS_LOG_TYPE_DEFAULT, "Finished training of notification scores in Mode Entity Scorer for mode %@, but deferring training because XPC activity asked for deferral.", buf, 0xCu);
            }

            v37 = 0;
          }

          else
          {
            v64 = [[ATXWidgetModeModel alloc] initWithMode:v14 globalWidgetPopularityModel:self->_globalWidgetPopularityModel];
            v50 = [(ATXWidgetModeModel *)v64 scoredEntitiesWithScoredAppEntities:v79];
            v51 = ATXModeToString();
            v63 = v50;
            [(ATXModeEntityModelTrainer *)self persistModeEntityScores:v50 modeEntityTypeIdentifier:@"widgets" modeIdentifier:v51 modeConfigurationType:0];

            v52 = __atxlog_handle_notification_management();
            v30 = v69;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = ATXModeToString();
              *buf = 138412290;
              v85 = v53;
              _os_log_impl(&dword_2263AA000, v52, OS_LOG_TYPE_DEFAULT, "Finished training of widget scores in Mode Entity Scorer for mode %@.", buf, 0xCu);
            }

            v54 = [v7 didDefer];
            v35 = v75;
            if (v54)
            {
              v55 = __atxlog_handle_notification_management();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v56 = ATXModeToString();
                *buf = 138412290;
                v85 = v56;
                _os_log_impl(&dword_2263AA000, v55, OS_LOG_TYPE_DEFAULT, "Finished training of all entities for mode %@, but deferring training because XPC activity asked for deferral.", buf, 0xCu);
              }
            }

            else
            {
              ++v65;
              v55 = allModesForTraining();
              [v7 setProgressUnits:{(v65 / -[NSObject count](v55, "count") * 95.0)}];
            }

            v37 = v54 ^ 1;
            p_super = &v64->super;
          }
        }

        v10 = v67;
      }

      objc_autoreleasePoolPop(context);
      if (!v37)
      {
        v9 = v71;
        goto LABEL_63;
      }

LABEL_47:
      ++v11;
      v9 = v71;
      if (v72 == v11)
      {
        v72 = [v10 countByEnumeratingWithState:&v80 objects:v88 count:16];
        if (v72)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  [v7 setDone];
  v10 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Finished training Mode Entity Models for all modes.", buf, 2u);
  }

LABEL_63:

LABEL_64:
  v62 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldDeferTrainingDueToRestoredBackup
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277D41CF0]];
  v4 = *MEMORY[0x277D41CC8];
  [v3 doubleForKey:*MEMORY[0x277D41CC8]];
  v6 = v5;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v8 = v7 - v6;
  if (v7 - v6 >= 604800.0)
  {
    if (v6 > 0.0)
    {
      [v3 removeObjectForKey:v4];
    }
  }

  else
  {
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Skipping retraining because backup was recently restored", v11, 2u);
    }
  }

  return v8 < 604800.0;
}

- (BOOL)shouldDeferTrainingDueToUpgrade
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277D41CF0]];
  v4 = *MEMORY[0x277D41CD0];
  [v3 doubleForKey:*MEMORY[0x277D41CD0]];
  if (v5 == 0.0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v7 = v6;
    [v3 setDouble:v4 forKey:?];
  }

  else
  {
    v7 = v5;
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8 - v7;
  if (v9 < 604800.0)
  {
    v10 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Skipping retraining because of recent upgrade", v12, 2u);
    }
  }

  return v9 < 604800.0;
}

- (id)pathForModeEntityTypeIdentifier:(id)a3 modeIdentifier:(id)a4 modeConfigurationType:(int64_t)a5
{
  cacheBasePath = self->_cacheBasePath;
  v8 = MEMORY[0x277CCACA8];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithFormat:@"%@_%@", v10, v9];

  v12 = [(NSString *)cacheBasePath stringByAppendingPathComponent:v11];

  if (a5 == 1)
  {
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = NSStringForATXModeConfigurationType();
    v15 = [v13 initWithFormat:@"%@_%@", v12, v14];

    v12 = v15;
  }

  return v12;
}

- (BOOL)persistModeEntityScores:(id)a3 modeEntityTypeIdentifier:(id)a4 modeIdentifier:(id)a5 modeConfigurationType:(int64_t)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a3;
  [objc_opt_class() scoreThresholdGivenModeEntityScores:v12 modeEntityTypeIdentifier:v10];
  v14 = [objc_opt_class() thresholdedModeEntityScores:v12 modeEntityTypeIdentifier:v10 threshold:v13];

  v15 = objc_autoreleasePoolPush();
  v16 = objc_autoreleasePoolPush();
  v27 = 0;
  v17 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v27];
  v18 = v27;
  objc_autoreleasePoolPop(v16);
  if (v17 || !v18)
  {
    v19 = [(ATXModeEntityModelTrainer *)self pathForModeEntityTypeIdentifier:v10 modeIdentifier:v11 modeConfigurationType:a6];
    v26 = 0;
    v20 = [v17 writeToFile:v19 options:1073741825 error:&v26];
    v21 = v26;
    v22 = __atxlog_handle_notification_management();
    v23 = v22;
    if (v20)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v10;
        _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "SUCCESS: Finished writing mode entity scores for mode entity type: %@.", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [ATXModeEntityModelTrainer persistModeEntityScores:modeEntityTypeIdentifier:modeIdentifier:modeConfigurationType:];
    }
  }

  else
  {
    v19 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [ATXModeEntityModelTrainer persistModeEntityScores:modeEntityTypeIdentifier:modeIdentifier:modeConfigurationType:];
    }

    v20 = 0;
  }

  objc_autoreleasePoolPop(v15);
  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (id)thresholdedModeEntityScores:(id)a3 modeEntityTypeIdentifier:(id)a4 threshold:(double)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (([v8 isEqualToString:@"apps"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"contacts"))
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v16 = [v10 objectForKeyedSubscript:{v15, v26}];
          v17 = [v16 scoreMetadata];
          [v17 score];
          v19 = v18;

          if (v19 >= a5)
          {
            [v9 setObject:v16 forKeyedSubscript:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v12);
    }

    v20 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v10 count];
      v22 = v21 - [v9 count];
      v23 = [v10 count];
      *buf = 136315906;
      v31 = "+[ATXModeEntityModelTrainer thresholdedModeEntityScores:modeEntityTypeIdentifier:threshold:]";
      v32 = 2048;
      v33 = v22;
      v34 = 2048;
      v35 = v23;
      v36 = 2048;
      v37 = a5;
      _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "%s Filtered out %ld/%ld entities because their scores were < %f", buf, 0x2Au);
    }
  }

  else
  {
    v9 = v7;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (double)scoreThresholdGivenModeEntityScores:(id)a3 modeEntityTypeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_ATXGlobals sharedInstance];
  [v8 scoreThresholdForSavingAppsToModeFiles];
  v10 = v9;
  [v8 scoreThresholdForSavingContactsToModeFiles];
  v12 = v11;
  if (([v7 isEqualToString:@"apps"] & 1) == 0)
  {
    v10 = 1.0;
    if (![v7 isEqualToString:@"contacts"])
    {
      goto LABEL_6;
    }

    v10 = v12;
  }

  [a1 maxScoreWithThresholdGivenModeEntityScores:v6];
  if (v13 >= v10)
  {
    v10 = v13;
  }

LABEL_6:

  return v10;
}

+ (double)maxScoreWithThresholdGivenModeEntityScores:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v5 objectForKeyedSubscript:{*(*(&v24 + 1) + 8 * v9), v24}];
        v11 = objc_alloc(MEMORY[0x277CCABB0]);
        v12 = [v10 scoreMetadata];
        [v12 score];
        v13 = [v11 initWithDouble:?];

        [v4 addObject:v13];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
  v15 = [MEMORY[0x277CBEA60] arrayWithObject:v14];
  v16 = [v4 sortedArrayUsingDescriptors:v15];

  v17 = +[_ATXGlobals sharedInstance];
  v18 = [v17 maxElementsToPerisistPerEntityForModeBackup];
  if ([v16 count] <= v18)
  {
    if (![v16 count])
    {
LABEL_14:
      v21 = 0.0;
      goto LABEL_15;
    }

    v18 = [v16 count];
  }

  else if (!v18)
  {
    goto LABEL_14;
  }

  v19 = [v16 objectAtIndexedSubscript:{v18 - 1, v24}];
  [v19 doubleValue];
  v21 = v20;

LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (id)eventProviderForScorableTime:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 eventProviderForMode:{objc_msgSend(v4, "atxMode")}];
  }

  else
  {
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXModeEntityModelTrainer *)v4 eventProviderForScorableTime:v6];
    }

    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE658];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v7 raise:v8 format:{@"Received invalid scorable time class %@", v10}];

    v5 = 0;
  }

  return v5;
}

+ (id)eventProviderForMode:(unint64_t)a3
{
  if (a3 - 8 >= 4)
  {
    if (a3 == 12)
    {
      v6 = objc_opt_new();
      v7 = 12;
    }

    else
    {
      v6 = [ATXUnifiedModeStreamModeEventProvider alloc];
      v7 = a3;
    }

    v4 = [(ATXModeTransitionModeEventProvider *)v6 initWithMode:v7];
  }

  else
  {
    v3 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [ATXModeEntityModelTrainer eventProviderForMode:v3];
    }

    v4 = 0;
  }

  return v4;
}

- (void)persistModeEntityScores:modeEntityTypeIdentifier:modeIdentifier:modeConfigurationType:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v0, v1, "FAILURE: Unable to write mode entity scores for mode entity type: %@. Error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)persistModeEntityScores:modeEntityTypeIdentifier:modeIdentifier:modeConfigurationType:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v0, v1, "FAILURE: Unable to archive mode entity scores for mode entity type: %@. Error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)eventProviderForScorableTime:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Received invalid scorable time class %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end