@interface ATXDynamicBreakthroughFeaturesCorrelator
- (ATXDynamicBreakthroughFeaturesCorrelator)init;
- (double)appCategoryScoreForNotification:(id)notification inCurrentMode:(unint64_t)mode;
- (double)appModeAffinityScoreForNotification:(id)notification inCurrentMode:(unint64_t)mode;
- (double)contactModeAffinityScoreForNotification:(id)notification inCurrentMode:(unint64_t)mode;
- (double)notificationModeAffinityScoreForNotification:(id)notification inCurrentMode:(unint64_t)mode;
- (id)collectDynamicBreakthroughFeaturesForNotification:(id)notification contactStore:(id)store withContactRelationships:(id)relationships;
- (int)currentLocationSemanticForGivenDate:(id)date;
- (unint64_t)_contactRelationshipsFromNotification:(id)notification contactStore:(id)store withRelationships:(id)relationships;
- (void)refreshMegadomeRelationshipsIfNeeded:(id)needed;
@end

@implementation ATXDynamicBreakthroughFeaturesCorrelator

- (ATXDynamicBreakthroughFeaturesCorrelator)init
{
  v6.receiver = self;
  v6.super_class = ATXDynamicBreakthroughFeaturesCorrelator;
  v2 = [(ATXDynamicBreakthroughFeaturesCorrelator *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    resolutionAccumulator = v2->_resolutionAccumulator;
    v2->_resolutionAccumulator = v3;
  }

  return v2;
}

- (unint64_t)_contactRelationshipsFromNotification:(id)notification contactStore:(id)store withRelationships:(id)relationships
{
  v41[1] = *MEMORY[0x277D85DE8];
  storeCopy = store;
  relationshipsCopy = relationships;
  contactIDs = [notification contactIDs];
  firstObject = [contactIDs firstObject];

  if (firstObject)
  {
    cnContactIdsOfEmergencyContacts = [relationshipsCopy cnContactIdsOfEmergencyContacts];
    v12 = [cnContactIdsOfEmergencyContacts containsObject:firstObject];

    v13 = v12;
    cnContactIdsOfFavoriteContacts = [relationshipsCopy cnContactIdsOfFavoriteContacts];
    v15 = [cnContactIdsOfFavoriteContacts containsObject:firstObject];

    if (v15)
    {
      v13 |= 2uLL;
    }

    cnContactIdsOfICloudFamilyMembers = [relationshipsCopy cnContactIdsOfICloudFamilyMembers];
    v17 = [cnContactIdsOfICloudFamilyMembers containsObject:firstObject];

    if (v17)
    {
      v18 = v13 | 4;
    }

    else
    {
      v18 = v13;
    }

    v41[0] = *MEMORY[0x277CBCFC0];
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    v39 = 0;
    v20 = [storeCopy unifiedContactWithIdentifier:firstObject keysToFetch:v19 error:&v39];
    v21 = v39;

    if (v21)
    {
      emailAddresses = __atxlog_handle_notification_categorization();
      if (os_log_type_enabled(emailAddresses, OS_LOG_TYPE_ERROR))
      {
        [ATXDynamicBreakthroughFeaturesCorrelator _contactRelationshipsFromNotification:v21 contactStore:emailAddresses withRelationships:?];
      }
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      emailAddresses = [v20 emailAddresses];
      v23 = [emailAddresses countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v23)
      {
        v24 = v23;
        v33 = v20;
        v34 = storeCopy;
        v25 = *v36;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v36 != v25)
            {
              objc_enumerationMutation(emailAddresses);
            }

            v27 = *(*(&v35 + 1) + 8 * i);
            vipContactEmailAddresses = [relationshipsCopy vipContactEmailAddresses];
            value = [v27 value];
            v30 = [vipContactEmailAddresses containsObject:value];

            if (v30)
            {
              v18 |= 8uLL;
            }
          }

          v24 = [emailAddresses countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v24);
        v20 = v33;
        storeCopy = v34;
        v21 = 0;
      }
    }
  }

  else
  {
    v18 = 16;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v18;
}

- (int)currentLocationSemanticForGivenDate:(id)date
{
  dateCopy = date;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v4 = BiomeLibrary();
  location = [v4 Location];
  semantic = [location Semantic];
  v7 = [semantic atx_publisherWithStartDate:dateCopy endDate:0 maxEvents:&unk_283A552C8 lastN:0 reversed:1];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__ATXDynamicBreakthroughFeaturesCorrelator_currentLocationSemanticForGivenDate___block_invoke_22;
  v14[3] = &unk_278597E00;
  v14[4] = &v15;
  v8 = [v7 sinkWithCompletion:&__block_literal_global_20 shouldContinue:v14];
  LODWORD(v4) = [v16[5] userSpecificPlaceType];
  LODWORD(location) = [v16[5] userSpecificPlaceType];
  userSpecificPlaceType = [v16[5] userSpecificPlaceType];
  userSpecificPlaceType2 = [v16[5] userSpecificPlaceType];
  v11 = v4 == 1;
  if (location == 2)
  {
    v11 = 2;
  }

  if (userSpecificPlaceType == 4)
  {
    v11 = 3;
  }

  if (userSpecificPlaceType2 == 3)
  {
    v12 = 4;
  }

  else
  {
    v12 = v11;
  }

  _Block_object_dispose(&v15, 8);
  return v12;
}

void __80__ATXDynamicBreakthroughFeaturesCorrelator_currentLocationSemanticForGivenDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __80__ATXDynamicBreakthroughFeaturesCorrelator_currentLocationSemanticForGivenDate___block_invoke_cold_1(v2, v4);
    }
  }
}

uint64_t __80__ATXDynamicBreakthroughFeaturesCorrelator_currentLocationSemanticForGivenDate___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 starting];

  if (v5)
  {
    v6 = [v3 eventBody];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return 0;
}

- (double)appCategoryScoreForNotification:(id)notification inCurrentMode:(unint64_t)mode
{
  notificationCopy = notification;
  bundleID = [notificationCopy bundleID];
  v7 = [bundleID length];

  if (v7)
  {
    v8 = objc_opt_new();
    bundleID2 = [notificationCopy bundleID];
    v10 = [v8 appEntityForBundleId:bundleID2];

    if (v10)
    {
      affinityVector_v2 = [v10 affinityVector_v2];
      [affinityVector_v2 scoreForMode:mode];
      v13 = v12;
    }

    else
    {
      v13 = 0.0;
    }
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (double)appModeAffinityScoreForNotification:(id)notification inCurrentMode:(unint64_t)mode
{
  notificationCopy = notification;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = +[ATXModeEntityScorerServer sharedInstance];
  v7 = [v6 rankedAppsForMode:mode];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__ATXDynamicBreakthroughFeaturesCorrelator_appModeAffinityScoreForNotification_inCurrentMode___block_invoke;
  v11[3] = &unk_278597E28;
  v8 = notificationCopy;
  v12 = v8;
  v13 = &v14;
  [v7 enumerateObjectsUsingBlock:v11];
  v9 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v9;
}

void __94__ATXDynamicBreakthroughFeaturesCorrelator_appModeAffinityScoreForNotification_inCurrentMode___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 bundleId];
  v7 = [*(a1 + 32) bundleID];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [v11 scoreMetadata];
    [v9 score];
    *(*(*(a1 + 40) + 8) + 24) = v10;

    *a4 = 1;
  }
}

- (double)contactModeAffinityScoreForNotification:(id)notification inCurrentMode:(unint64_t)mode
{
  notificationCopy = notification;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  contactIDs = [notificationCopy contactIDs];
  v7 = [contactIDs count];

  if (v7)
  {
    v8 = +[ATXModeEntityScorerServer sharedInstance];
    v9 = [v8 rankedContactsForMode:mode options:1];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __98__ATXDynamicBreakthroughFeaturesCorrelator_contactModeAffinityScoreForNotification_inCurrentMode___block_invoke;
    v12[3] = &unk_278597E50;
    v13 = notificationCopy;
    v14 = &v15;
    [v9 enumerateObjectsUsingBlock:v12];
  }

  v10 = v16[3];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __98__ATXDynamicBreakthroughFeaturesCorrelator_contactModeAffinityScoreForNotification_inCurrentMode___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 identifier];
  v7 = [*(a1 + 32) contactIDs];
  v8 = [v7 firstObject];
  v9 = [v6 isEqualToString:v8];

  if (v9)
  {
    v10 = [v12 scoreMetadata];
    [v10 score];
    *(*(*(a1 + 40) + 8) + 24) = v11;

    *a4 = 1;
  }
}

- (double)notificationModeAffinityScoreForNotification:(id)notification inCurrentMode:(unint64_t)mode
{
  notificationCopy = notification;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = +[ATXModeEntityScorerServer sharedInstance];
  v7 = [v6 rankedNotificationsForMode:mode options:1];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __103__ATXDynamicBreakthroughFeaturesCorrelator_notificationModeAffinityScoreForNotification_inCurrentMode___block_invoke;
  v11[3] = &unk_278597E78;
  v8 = notificationCopy;
  v12 = v8;
  v13 = &v14;
  [v7 enumerateObjectsUsingBlock:v11];
  v9 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v9;
}

void __103__ATXDynamicBreakthroughFeaturesCorrelator_notificationModeAffinityScoreForNotification_inCurrentMode___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = a2;
  v6 = [v20 appEntity];
  v7 = [v6 bundleId];
  v8 = [*(a1 + 32) bundleID];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [*(a1 + 32) contactIDs];
    v11 = [v10 count];

    if (!v11)
    {
      goto LABEL_5;
    }

    v12 = [v20 contactEntity];

    if (v12)
    {
      v13 = [v20 contactEntity];
      v14 = [v13 identifier];
      v15 = [*(a1 + 32) contactIDs];
      v16 = [v15 firstObject];
      v17 = [v14 isEqualToString:v16];

      if (v17)
      {
LABEL_5:
        v18 = [v20 scoreMetadata];
        [v18 score];
        *(*(*(a1 + 40) + 8) + 24) = v19;

        *a4 = 1;
      }
    }
  }
}

- (void)refreshMegadomeRelationshipsIfNeeded:(id)needed
{
  v4 = [ATXNotificationCategorizationUtils megadomeEntityIDFromNotification:needed];
  megadomeEntityIDFromLastNotification = self->_megadomeEntityIDFromLastNotification;
  obj = v4;
  if (!megadomeEntityIDFromLastNotification || (v6 = [(NSString *)megadomeEntityIDFromLastNotification isEqualToString:?], v7 = obj, !v6))
  {
    objc_storeStrong(&self->_megadomeEntityIDFromLastNotification, obj);
    v8 = [ATXNotificationCategorizationUtils megadomePersonRelationshipFromEntityID:self->_megadomeEntityIDFromLastNotification];
    megadomeRelationshipsFromLastNotification = self->_megadomeRelationshipsFromLastNotification;
    self->_megadomeRelationshipsFromLastNotification = v8;

    v7 = obj;
  }
}

- (id)collectDynamicBreakthroughFeaturesForNotification:(id)notification contactStore:(id)store withContactRelationships:(id)relationships
{
  v56 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  relationshipsCopy = relationships;
  storeCopy = store;
  v11 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[ATXDynamicBreakthroughFeaturesCorrelator collectDynamicBreakthroughFeaturesForNotification:contactStore:withContactRelationships:]";
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Starting %s", buf, 0xCu);
  }

  v12 = MEMORY[0x277CBEAA8];
  [notificationCopy timestamp];
  v13 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
  v14 = [ATXUnifiedComputedAndInferredModeStream currentUnifiedModeEventAtGivenTime:v13];
  mode = [v14 mode];

  [(ATXDynamicBreakthroughFeaturesCorrelator *)self refreshMegadomeRelationshipsIfNeeded:notificationCopy];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v53 = [currentCalendar components:512 fromDate:v13];
  weekday = [v53 weekday];
  v54 = currentCalendar;
  *buf = 0;
  [currentCalendar getHour:buf minute:0 second:0 nanosecond:0 fromDate:v13];
  if (*buf > 0x17uLL)
  {
    v19 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [ATXDynamicBreakthroughFeaturesCorrelator collectDynamicBreakthroughFeaturesForNotification:v19 contactStore:? withContactRelationships:?];
    }

    v51 = 0;
  }

  else
  {
    if (*buf < 0x11uLL)
    {
      v17 = 2;
    }

    else
    {
      v17 = 3;
    }

    if (*buf >= 0xCuLL)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1;
    }

    v51 = v18;
  }

  bodyLength = [notificationCopy bodyLength];
  v21 = 10 * (bodyLength / 10);
  if (bodyLength % 10 >= 5)
  {
    v21 += 10;
  }

  if (v21 <= 0xA)
  {
    v21 = 10;
  }

  v50 = v21;
  [(ATXNotificationResolutionAccumulator *)self->_resolutionAccumulator computeFeaturesForNotification:notificationCopy mode:mode];
  v49 = objc_alloc(MEMORY[0x277CEB6D8]);
  bundleID = [notificationCopy bundleID];
  urgency = [notificationCopy urgency];
  v46 = [(ATXDynamicBreakthroughFeaturesCorrelator *)self _contactRelationshipsFromNotification:notificationCopy contactStore:storeCopy withRelationships:relationshipsCopy];

  megadomeRelationshipsFromLastNotification = self->_megadomeRelationshipsFromLastNotification;
  v43 = [(ATXDynamicBreakthroughFeaturesCorrelator *)self currentLocationSemanticForGivenDate:v13];
  [(ATXDynamicBreakthroughFeaturesCorrelator *)self appModeAffinityScoreForNotification:notificationCopy inCurrentMode:mode];
  v23 = v22;
  [(ATXDynamicBreakthroughFeaturesCorrelator *)self contactModeAffinityScoreForNotification:notificationCopy inCurrentMode:mode];
  v25 = v24;
  [(ATXDynamicBreakthroughFeaturesCorrelator *)self notificationModeAffinityScoreForNotification:notificationCopy inCurrentMode:mode];
  v27 = v26;
  [(ATXDynamicBreakthroughFeaturesCorrelator *)self appCategoryScoreForNotification:notificationCopy inCurrentMode:mode];
  v29 = v28;
  timeToLaunchApp = [(ATXNotificationResolutionAccumulator *)self->_resolutionAccumulator timeToLaunchApp];
  historicalResolutionsForNotification = [(ATXNotificationResolutionAccumulator *)self->_resolutionAccumulator historicalResolutionsForNotification];
  historicalVolumeByCountAndPercentage = [historicalResolutionsForNotification historicalVolumeByCountAndPercentage];
  historicalResolutionsForNotification2 = [(ATXNotificationResolutionAccumulator *)self->_resolutionAccumulator historicalResolutionsForNotification];
  modeConditionedHistoricalVolumeByCountAndPercentage = [historicalResolutionsForNotification2 modeConditionedHistoricalVolumeByCountAndPercentage];
  historicalResolutionsForNotification3 = [(ATXNotificationResolutionAccumulator *)self->_resolutionAccumulator historicalResolutionsForNotification];
  historicalResolutionByPercentage = [historicalResolutionsForNotification3 historicalResolutionByPercentage];
  [(ATXNotificationResolutionAccumulator *)self->_resolutionAccumulator historicalResolutionsForNotification];
  v35 = v42 = v13;
  modeConditionedHistoricalResolutionByPercentage = [v35 modeConditionedHistoricalResolutionByPercentage];
  LODWORD(v40) = v43;
  v37 = [v49 initWithBundleID:bundleID notificationDeliveryUrgency:urgency contactRelationships:v46 relationshipsFromMegadome:megadomeRelationshipsFromLastNotification dayOfWeek:weekday timeOfDay:v51 locationSemantic:v23 appModeAffinityScore:v25 contactModeAffinityScore:v27 notificationModeAffinityScore:v29 appCategoryScoreInMode:0.0 urgencyScore:0.0 importanceScore:v40 bucketizedLengthOfNotificationBody:v50 currentMode:mode timeToLaunchApp:timeToLaunchApp historicalVolumeByCountAndPercentage:historicalVolumeByCountAndPercentage modeConditionedHistoricalVolumeByCountAndPercentage:modeConditionedHistoricalVolumeByCountAndPercentage historicalResolutionByPercentage:historicalResolutionByPercentage modeConditionedHistoricalResolutionByPercentage:modeConditionedHistoricalResolutionByPercentage];

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (void)_contactRelationshipsFromNotification:(uint64_t)a1 contactStore:(NSObject *)a2 withRelationships:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXDynamicBreakthroughFeaturesCorrelator: Error fetching unified contact email addresses: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __80__ATXDynamicBreakthroughFeaturesCorrelator_currentLocationSemanticForGivenDate___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXDynamicBreakthroughFeaturesCorrelator: Error fetching last location event: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end