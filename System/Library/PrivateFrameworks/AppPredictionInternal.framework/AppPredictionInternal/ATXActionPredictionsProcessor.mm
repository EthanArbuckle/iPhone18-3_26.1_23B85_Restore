@interface ATXActionPredictionsProcessor
+ (BOOL)actionPredictionsContainsAlarmAction:(id)action;
+ (BOOL)isBlockedEmailAddressContainedInAddresses:(id)addresses;
+ (BOOL)isBlockedPhoneNumberContainedInNumbers:(id)numbers;
+ (BOOL)scoredActionsAreDuplicatesWithScoredAction1:(id)action1 scoredAction2:(id)action2;
+ (BOOL)validTimeToSuggestAlarmForAlarmComponents:(id)components currentDate:(id)date;
+ (id)_contactIdentifiersReferencedByAction:(id)action;
+ (id)hourAndMinuteComponentsFromDateComponents:(id)components;
+ (id)indicesOfNonDuplicateScoredActions:(id)actions;
+ (id)removeAlarmActionsInconsistentWithAlarmAppState:(id)state;
+ (id)removeAlarmActionsInconsistentWithAlarmAppState:(id)state enabledAlarms:(id)alarms disabledAlarms:(id)disabledAlarms currentDate:(id)date;
+ (id)removeDuplicateActionPredictions:(id)predictions;
+ (id)removeDuplicateTVActionPredictions:(id)predictions;
+ (id)removeMissingOrBlockedRecipientPredictions:(id)predictions;
+ (id)userAlarms;
+ (void)addEligibleCreateAlarmIndexesToAcceptedIndexes:(id)indexes currentDate:(id)date enabledAlarms:(id)alarms idx:(unint64_t)idx params:(id)params parameterCombinations:(id)combinations;
+ (void)addEligibleToggleAlarmIndexesToAcceptedIndexes:(id)indexes currentDate:(id)date disabledAlarms:(id)alarms enabledAlarms:(id)enabledAlarms idx:(unint64_t)idx params:(id)params parameterCombinations:(id)combinations;
+ (void)userAlarms;
@end

@implementation ATXActionPredictionsProcessor

+ (id)removeMissingOrBlockedRecipientPredictions:(id)predictions
{
  predictionsCopy = predictions;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__80;
  v15[4] = __Block_byref_object_dispose__80;
  v16 = 0;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__ATXActionPredictionsProcessor_removeMissingOrBlockedRecipientPredictions___block_invoke;
  v11[3] = &unk_27859F818;
  selfCopy = self;
  v6 = v5;
  v12 = v6;
  v13 = v15;
  [predictionsCopy enumerateObjectsUsingBlock:v11];
  v7 = [v6 count];
  if (v7 == [predictionsCopy count])
  {
    v8 = predictionsCopy;
  }

  else
  {
    v8 = [predictionsCopy objectsAtIndexes:v6];
  }

  v9 = v8;

  _Block_object_dispose(v15, 8);

  return v9;
}

void __76__ATXActionPredictionsProcessor_removeMissingOrBlockedRecipientPredictions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v74[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 scoredAction];
  v8 = v7;
  if (v7)
  {
    v9 = *(a1 + 48);
    v10 = [v7 predictedItem];
    v11 = [v9 _contactIdentifiersReferencedByAction:v10];

    if ([v11 count])
    {
      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v12 = objc_opt_new();
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;
      }

      v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v11];
      v16 = [v15 allObjects];

      v17 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:v16];
      v18 = *(*(*(a1 + 40) + 8) + 40);
      v19 = *MEMORY[0x277CBCFC0];
      v74[0] = *MEMORY[0x277CBD098];
      v74[1] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
      v70 = 0;
      v21 = [v18 unifiedContactsMatchingPredicate:v17 keysToFetch:v20 error:&v70];
      v55 = v70;

      if (v21)
      {
        v22 = [v21 count];
        if (v22 >= [v16 count])
        {
          v49 = v17;
          v50 = a1;
          v51 = v16;
          v52 = v8;
          v47 = a3;
          v53 = v6;
          v54 = v5;
          v26 = v21;
          v27 = objc_opt_new();
          v28 = objc_opt_new();
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v48 = v26;
          obj = v26;
          v29 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
          if (v29)
          {
            v30 = v29;
            v57 = *v67;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v67 != v57)
                {
                  objc_enumerationMutation(obj);
                }

                v32 = *(*(&v66 + 1) + 8 * i);
                v62 = 0u;
                v63 = 0u;
                v64 = 0u;
                v65 = 0u;
                v33 = [v32 phoneNumbers];
                v34 = [v33 countByEnumeratingWithState:&v62 objects:v72 count:16];
                if (v34)
                {
                  v35 = v34;
                  v36 = *v63;
                  do
                  {
                    for (j = 0; j != v35; ++j)
                    {
                      if (*v63 != v36)
                      {
                        objc_enumerationMutation(v33);
                      }

                      v38 = [*(*(&v62 + 1) + 8 * j) value];
                      [v27 addObject:v38];
                    }

                    v35 = [v33 countByEnumeratingWithState:&v62 objects:v72 count:16];
                  }

                  while (v35);
                }

                v60 = 0u;
                v61 = 0u;
                v58 = 0u;
                v59 = 0u;
                v39 = [v32 emailAddresses];
                v40 = [v39 countByEnumeratingWithState:&v58 objects:v71 count:16];
                if (v40)
                {
                  v41 = v40;
                  v42 = *v59;
                  do
                  {
                    for (k = 0; k != v41; ++k)
                    {
                      if (*v59 != v42)
                      {
                        objc_enumerationMutation(v39);
                      }

                      v44 = [*(*(&v58 + 1) + 8 * k) value];
                      [v28 addObject:v44];
                    }

                    v41 = [v39 countByEnumeratingWithState:&v58 objects:v71 count:16];
                  }

                  while (v41);
                }
              }

              v30 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
            }

            while (v30);
          }

          v24 = v55;
          if (([*(v50 + 48) isBlockedPhoneNumberContainedInNumbers:v27] & 1) != 0 || objc_msgSend(*(v50 + 48), "isBlockedEmailAddressContainedInAddresses:", v28))
          {
            v45 = __atxlog_handle_action_prediction();
            v6 = v53;
            v5 = v54;
            v8 = v52;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              __76__ATXActionPredictionsProcessor_removeMissingOrBlockedRecipientPredictions___block_invoke_cold_1(v54);
            }
          }

          else
          {
            [*(v50 + 32) addIndex:v47];
            v6 = v53;
            v5 = v54;
            v8 = v52;
          }

          v16 = v51;
          v21 = v48;
          v17 = v49;
        }

        else
        {
          v23 = __atxlog_handle_action_prediction();
          v24 = v55;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            __76__ATXActionPredictionsProcessor_removeMissingOrBlockedRecipientPredictions___block_invoke_cold_2(v5);
          }
        }
      }

      else
      {
        v25 = __atxlog_handle_action_prediction();
        v24 = v55;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          __76__ATXActionPredictionsProcessor_removeMissingOrBlockedRecipientPredictions___block_invoke_cold_3();
        }

        [*(a1 + 32) addIndex:a3];
      }
    }

    else
    {
      [*(a1 + 32) addIndex:a3];
      v16 = v11;
    }
  }

  objc_autoreleasePoolPop(v6);
  v46 = *MEMORY[0x277D85DE8];
}

+ (id)_contactIdentifiersReferencedByAction:(id)action
{
  v15[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  intent = [actionCopy intent];

  if (!intent)
  {
    v7 = 0;
    goto LABEL_12;
  }

  intent2 = [actionCopy intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    recipients = [intent2 recipients];
LABEL_9:
    v8 = recipients;
    v7 = contactIdentifiersFromINPersons(recipients);
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    recipients = [intent2 contacts];
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v8 = intent2;
  payee = [v8 payee];
  contactIdentifier = [payee contactIdentifier];
  if (contactIdentifier)
  {
    payee2 = [v8 payee];
    contactIdentifier2 = [payee2 contactIdentifier];
    v15[0] = contactIdentifier2;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  else
  {
    v7 = 0;
  }

LABEL_10:
LABEL_11:

LABEL_12:
  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (BOOL)isBlockedEmailAddressContainedInAddresses:(id)addresses
{
  v30 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  addressesCopy = addresses;
  v4 = [addressesCopy countByEnumeratingWithState:&v16 objects:v29 count:16];
  if (v4)
  {
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(addressesCopy);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v8 = getCMFItemCreateWithEmailAddressSymbolLoc_ptr;
        v28 = getCMFItemCreateWithEmailAddressSymbolLoc_ptr;
        if (!getCMFItemCreateWithEmailAddressSymbolLoc_ptr)
        {
          v20 = MEMORY[0x277D85DD0];
          v21 = 3221225472;
          v22 = __getCMFItemCreateWithEmailAddressSymbolLoc_block_invoke;
          v23 = &unk_2785967D8;
          v24 = &v25;
          v9 = CommunicationsFilterLibrary();
          v10 = dlsym(v9, "CMFItemCreateWithEmailAddress");
          *(v24[1] + 24) = v10;
          getCMFItemCreateWithEmailAddressSymbolLoc_ptr = *(v24[1] + 24);
          v8 = v26[3];
        }

        _Block_object_dispose(&v25, 8);
        if (!v8)
        {
          +[ATXActionPredictionsProcessor isBlockedEmailAddressContainedInAddresses:];
        }

        v11 = v8(v7);
        v12 = v11;
        if (v11)
        {
          v13 = atx_CMFBlockListIsItemBlocked(v11) == 0;
          CFRelease(v12);
          if (!v13)
          {
            LOBYTE(v4) = 1;
            goto LABEL_15;
          }
        }
      }

      v4 = [addressesCopy countByEnumeratingWithState:&v16 objects:v29 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (BOOL)isBlockedPhoneNumberContainedInNumbers:(id)numbers
{
  v35 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  numbersCopy = numbers;
  v4 = [numbersCopy countByEnumeratingWithState:&v21 objects:v34 count:16];
  if (v4)
  {
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(numbersCopy);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = MEMORY[0x277CFBE78];
        stringValue = [v7 stringValue];
        v10 = [v8 countryCodeForNumber:stringValue];

        stringValue2 = [v7 stringValue];
        v12 = CFPhoneNumberCreate();

        if (!v12)
        {
          goto LABEL_14;
        }

        v30 = 0;
        v31 = &v30;
        v32 = 0x2020000000;
        v13 = getCMFItemCreateWithPhoneNumberSymbolLoc_ptr;
        v33 = getCMFItemCreateWithPhoneNumberSymbolLoc_ptr;
        if (!getCMFItemCreateWithPhoneNumberSymbolLoc_ptr)
        {
          v25 = MEMORY[0x277D85DD0];
          v26 = 3221225472;
          v27 = __getCMFItemCreateWithPhoneNumberSymbolLoc_block_invoke;
          v28 = &unk_2785967D8;
          v29 = &v30;
          v14 = CommunicationsFilterLibrary();
          v15 = dlsym(v14, "CMFItemCreateWithPhoneNumber");
          *(v29[1] + 24) = v15;
          getCMFItemCreateWithPhoneNumberSymbolLoc_ptr = *(v29[1] + 24);
          v13 = v31[3];
        }

        _Block_object_dispose(&v30, 8);
        if (!v13)
        {
          +[ATXActionPredictionsProcessor isBlockedPhoneNumberContainedInNumbers:];
        }

        v16 = v13(v12);
        v17 = v16;
        if (!v16)
        {
          CFRelease(v12);
LABEL_14:

          continue;
        }

        v18 = atx_CMFBlockListIsItemBlocked(v16) == 0;
        CFRelease(v17);
        CFRelease(v12);

        if (!v18)
        {
          LOBYTE(v4) = 1;
          goto LABEL_17;
        }
      }

      v4 = [numbersCopy countByEnumeratingWithState:&v21 objects:v34 count:16];
    }

    while (v4);
  }

LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)removeDuplicateTVActionPredictions:(id)predictions
{
  v33 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  context = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:@"com.apple.tv" actionType:@"INPlayMediaIntent"];
  v5 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = predictionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        actionKey = [v11 actionKey];
        v13 = [actionKey isEqualToString:v4];

        if (v13)
        {
          scoredAction = [v11 scoredAction];
          predictedItem = [scoredAction predictedItem];
          intent = [predictedItem intent];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            proxiedBundleIdentifier = [intent proxiedBundleIdentifier];
            if (proxiedBundleIdentifier)
            {
              [v5 addObject:proxiedBundleIdentifier];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  v18 = v6;
  v19 = v18;
  if ([v5 count])
  {
    v20 = MEMORY[0x277CCAC30];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __68__ATXActionPredictionsProcessor_removeDuplicateTVActionPredictions___block_invoke;
    v25[3] = &unk_27859F840;
    v26 = v5;
    v27 = v4;
    v21 = [v20 predicateWithBlock:v25];
    v19 = [v18 filteredArrayUsingPredicate:v21];
  }

  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __68__ATXActionPredictionsProcessor_removeDuplicateTVActionPredictions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 scoredAction];
  v6 = [v5 predictedItem];
  v7 = [v6 bundleId];
  if ([v4 containsObject:v7])
  {
    v8 = [v3 actionKey];
    v9 = [v8 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (id)removeDuplicateActionPredictions:(id)predictions
{
  predictionsCopy = predictions;
  v5 = [predictionsCopy _pas_mappedArrayWithTransform:&__block_literal_global_181];
  v6 = [self indicesOfNonDuplicateScoredActions:v5];
  v7 = [predictionsCopy objectsAtIndexes:v6];

  return v7;
}

+ (id)indicesOfNonDuplicateScoredActions:(id)actions
{
  actionsCopy = actions;
  v5 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(actionsCopy, "count")}];
  if (![actionsCopy count])
  {
    goto LABEL_18;
  }

  v6 = 0;
  do
  {
    v7 = [actionsCopy objectAtIndexedSubscript:v6];
    if (([v5 containsIndex:v6] & 1) == 0)
    {
      v9 = v6 + 1;
      goto LABEL_17;
    }

    v8 = objc_opt_new();
    v9 = v6 + 1;
    if (v6 + 1 >= [actionsCopy count])
    {
      goto LABEL_14;
    }

    v10 = v6 + 1;
    while (1)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [actionsCopy objectAtIndexedSubscript:v10];
      if (![v5 containsIndex:v10] || !objc_msgSend(self, "scoredActionsAreDuplicatesWithScoredAction1:scoredAction2:", v7, v12))
      {
        goto LABEL_10;
      }

      [v7 score];
      v14 = v13;
      [v12 score];
      if (v14 < v15)
      {
        break;
      }

      [v8 addIndex:v10];
LABEL_10:

      objc_autoreleasePoolPop(v11);
      if (++v10 >= [actionsCopy count])
      {
        goto LABEL_14;
      }
    }

    [v5 removeIndex:v6];

    objc_autoreleasePoolPop(v11);
LABEL_14:
    if ([v5 containsIndex:v6])
    {
      [v5 removeIndexes:v8];
    }

LABEL_17:
    v6 = v9;
  }

  while (v9 < [actionsCopy count]);
LABEL_18:

  return v5;
}

+ (BOOL)scoredActionsAreDuplicatesWithScoredAction1:(id)action1 scoredAction2:(id)action2
{
  action1Copy = action1;
  action2Copy = action2;
  predictedItem = [action1Copy predictedItem];
  predictedItem2 = [action2Copy predictedItem];
  if ([_ATXActionUtils isTitleEquivalenceBetweenAction:predictedItem other:predictedItem2])
  {
    v9 = 1;
  }

  else
  {
    predictedItem3 = [action1Copy predictedItem];
    predictedItem4 = [action2Copy predictedItem];
    if ([_ATXActionUtils isContainmentBetweenAction:predictedItem3 other:predictedItem4])
    {
      v9 = 1;
    }

    else
    {
      predictedItem5 = [action1Copy predictedItem];
      predictedItem6 = [action2Copy predictedItem];
      v9 = [_ATXActionUtils isCallIntentEquivalenceBetweenAction:predictedItem5 other:predictedItem6];
    }
  }

  return v9;
}

+ (BOOL)actionPredictionsContainsAlarmAction:(id)action
{
  v24 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v4 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:@"com.apple.mobiletimer" actionType:@"MTToggleAlarmIntent"];
  v5 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:@"com.apple.mobiletimer" actionType:@"MTCreateAlarmIntent"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = actionCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        scoredAction = [*(*(&v19 + 1) + 8 * i) scoredAction];
        predictedItem = [scoredAction predictedItem];
        actionKey = [predictedItem actionKey];

        if (([actionKey isEqualToString:v4] & 1) != 0 || objc_msgSend(actionKey, "isEqualToString:", v5))
        {
          v15 = __atxlog_handle_action_prediction();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v18 = 0;
            _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Found alarm action in alarm prediction candidates.", v18, 2u);
          }

          v14 = 1;
          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v14 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)removeAlarmActionsInconsistentWithAlarmAppState:(id)state
{
  v33 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if ([ATXActionPredictionsProcessor actionPredictionsContainsAlarmAction:stateCopy])
  {
    userAlarms = [self userAlarms];
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = userAlarms;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = objc_opt_new();
          [v14 setHour:{objc_msgSend(v13, "hour", v24)}];
          [v14 setMinute:{objc_msgSend(v13, "minute")}];
          if ([v13 isEnabled])
          {
            v15 = v6;
          }

          else
          {
            v15 = v7;
          }

          [v15 addObject:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v10);
    }

    v16 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v6 count];
      v18 = [v7 count];
      *buf = 134218240;
      v29 = v17;
      v30 = 2048;
      v31 = v18;
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "Found %lu enabled alarms and %lu disabled alarms.", buf, 0x16u);
    }

    v19 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "Enabled alarms: %@", buf, 0xCu);
    }

    v20 = objc_opt_new();
    v21 = [ATXActionPredictionsProcessor removeAlarmActionsInconsistentWithAlarmAppState:stateCopy enabledAlarms:v6 disabledAlarms:v7 currentDate:v20];
  }

  else
  {
    v21 = stateCopy;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)userAlarms
{
  v2 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__80;
  v23 = __Block_byref_object_dispose__80;
  v24 = 0;
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = __Block_byref_object_copy__80;
  v17[3] = __Block_byref_object_dispose__80;
  v18 = 0;
  mEMORY[0x277CE89F0] = [MEMORY[0x277CE89F0] sharedAlarmManager];
  v4 = [mEMORY[0x277CE89F0] alarmsIncludingSleepAlarm:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__ATXActionPredictionsProcessor_userAlarms__block_invoke;
  v12[3] = &unk_27859E3B0;
  v14 = &v19;
  v15 = &v16;
  v5 = v2;
  v13 = v5;
  v6 = [v4 addCompletionBlock:v12];

  [MEMORY[0x277D425A0] waitForSemaphore:v5 timeoutSeconds:0 onAcquire:&__block_literal_global_51_0 onTimeout:5.0];
  if (*(v17[0] + 40))
  {
    v7 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[(ATXActionPredictionsProcessor *)v17];
    }
  }

  v8 = v20[5];
  if (!v8)
  {
    v9 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[ATXActionPredictionsProcessor userAlarms];
    }

    v8 = v20[5];
  }

  v10 = v8;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v19, 8);

  return v10;
}

void __43__ATXActionPredictionsProcessor_userAlarms__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __43__ATXActionPredictionsProcessor_userAlarms__block_invoke_2()
{
  v0 = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __43__ATXActionPredictionsProcessor_userAlarms__block_invoke_2_cold_1();
  }
}

+ (id)removeAlarmActionsInconsistentWithAlarmAppState:(id)state enabledAlarms:(id)alarms disabledAlarms:(id)disabledAlarms currentDate:(id)date
{
  stateCopy = state;
  alarmsCopy = alarms;
  disabledAlarmsCopy = disabledAlarms;
  dateCopy = date;
  v13 = objc_opt_new();
  v14 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:@"com.apple.mobiletimer" actionType:@"MTToggleAlarmIntent"];
  v15 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:@"com.apple.mobiletimer" actionType:@"MTCreateAlarmIntent"];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __122__ATXActionPredictionsProcessor_removeAlarmActionsInconsistentWithAlarmAppState_enabledAlarms_disabledAlarms_currentDate___block_invoke;
  v29 = &unk_27859F888;
  v30 = v14;
  v16 = v13;
  v31 = v16;
  v32 = dateCopy;
  v33 = disabledAlarmsCopy;
  v34 = alarmsCopy;
  v35 = v15;
  v17 = v15;
  v18 = alarmsCopy;
  v19 = disabledAlarmsCopy;
  v20 = dateCopy;
  v21 = v14;
  [stateCopy enumerateObjectsUsingBlock:&v26];
  v22 = [v16 count];
  if (v22 == [stateCopy count])
  {
    v23 = stateCopy;
  }

  else
  {
    v23 = [stateCopy objectsAtIndexes:v16];
  }

  v24 = v23;

  return v24;
}

void __122__ATXActionPredictionsProcessor_removeAlarmActionsInconsistentWithAlarmAppState_enabledAlarms_disabledAlarms_currentDate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [v14 scoredAction];
  v7 = [v6 predictedItem];

  v8 = [v7 actionKey];
  v9 = [v7 intent];
  v10 = [v9 atx_nonNilParametersByName];

  v11 = MEMORY[0x277CBEB98];
  v12 = [v10 allKeys];
  v13 = [v11 setWithArray:v12];

  if ([v8 isEqualToString:*(a1 + 32)])
  {
    [ATXActionPredictionsProcessor addEligibleToggleAlarmIndexesToAcceptedIndexes:*(a1 + 40) currentDate:*(a1 + 48) disabledAlarms:*(a1 + 56) enabledAlarms:*(a1 + 64) idx:a3 params:v13 parameterCombinations:v10];
  }

  else if ([v8 isEqualToString:*(a1 + 72)])
  {
    [ATXActionPredictionsProcessor addEligibleCreateAlarmIndexesToAcceptedIndexes:*(a1 + 40) currentDate:*(a1 + 48) enabledAlarms:*(a1 + 64) idx:a3 params:v13 parameterCombinations:v10];
  }

  else
  {
    [*(a1 + 40) addIndex:a3];
  }

  objc_autoreleasePoolPop(v5);
}

+ (void)addEligibleToggleAlarmIndexesToAcceptedIndexes:(id)indexes currentDate:(id)date disabledAlarms:(id)alarms enabledAlarms:(id)enabledAlarms idx:(unint64_t)idx params:(id)params parameterCombinations:(id)combinations
{
  indexesCopy = indexes;
  dateCopy = date;
  alarmsCopy = alarms;
  enabledAlarmsCopy = enabledAlarms;
  paramsCopy = params;
  combinationsCopy = combinations;
  if ([paramsCopy containsObject:@"state"])
  {
    if ([paramsCopy containsObject:@"alarm"])
    {
      v20 = [combinationsCopy objectForKeyedSubscript:@"alarm"];
      v21 = [v20 valueForKey:@"dateComponents"];

      if (v21)
      {
        v22 = [combinationsCopy objectForKeyedSubscript:@"state"];
        intValue = [v22 intValue];

        v24 = [combinationsCopy objectForKeyedSubscript:@"alarm"];
        v25 = [v24 valueForKey:@"dateComponents"];

        v26 = [ATXActionPredictionsProcessor hourAndMinuteComponentsFromDateComponents:v25];
        if (intValue == 1 && ([enabledAlarmsCopy containsObject:v26] & 1) == 0 && objc_msgSend(alarmsCopy, "containsObject:", v26) && +[ATXActionPredictionsProcessor validTimeToSuggestAlarmForAlarmComponents:currentDate:](ATXActionPredictionsProcessor, "validTimeToSuggestAlarmForAlarmComponents:currentDate:", v26, dateCopy))
        {
          [indexesCopy addIndex:idx];
        }

        else
        {
          v27 = __atxlog_handle_action_prediction();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *v28 = 0;
            _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "Suppressing MTToggleAlarmIntent because it is not toggling on an alarm that is disabled or the alarm time is over 12 hours away.", v28, 2u);
          }
        }
      }
    }
  }
}

+ (void)addEligibleCreateAlarmIndexesToAcceptedIndexes:(id)indexes currentDate:(id)date enabledAlarms:(id)alarms idx:(unint64_t)idx params:(id)params parameterCombinations:(id)combinations
{
  indexesCopy = indexes;
  dateCopy = date;
  alarmsCopy = alarms;
  combinationsCopy = combinations;
  if ([params containsObject:@"dateComponents"])
  {
    v17 = [combinationsCopy objectForKeyedSubscript:@"dateComponents"];
    v18 = [ATXActionPredictionsProcessor hourAndMinuteComponentsFromDateComponents:v17];
    if (([alarmsCopy containsObject:v18] & 1) != 0 || !+[ATXActionPredictionsProcessor validTimeToSuggestAlarmForAlarmComponents:currentDate:](ATXActionPredictionsProcessor, "validTimeToSuggestAlarmForAlarmComponents:currentDate:", v18, dateCopy))
    {
      v19 = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "Suppressing MTCreateAlarmIntent because there already exists an enabled alarm for the same time or the alarm time is over 12 hours away.", v20, 2u);
      }
    }

    else
    {
      [indexesCopy addIndex:idx];
    }
  }
}

+ (id)hourAndMinuteComponentsFromDateComponents:(id)components
{
  componentsCopy = components;
  v4 = objc_opt_new();
  [v4 setHour:{objc_msgSend(componentsCopy, "hour")}];
  minute = [componentsCopy minute];

  [v4 setMinute:minute];

  return v4;
}

+ (BOOL)validTimeToSuggestAlarmForAlarmComponents:(id)components currentDate:(id)date
{
  v5 = MEMORY[0x277CBEA80];
  dateCopy = date;
  componentsCopy = components;
  currentCalendar = [v5 currentCalendar];
  v9 = [currentCalendar components:96 fromDate:dateCopy];

  v10 = [currentCalendar dateFromComponents:v9];
  v11 = [currentCalendar dateFromComponents:componentsCopy];

  [v11 timeIntervalSinceDate:v10];
  if (v12 <= 0.0)
  {
    v12 = v12 + 86400.0;
  }

  v13 = v12 <= 43200.0;

  return v13;
}

uint64_t __67__ATXActionPredictionsProcessor_removeActionsMatchingARegexFilter___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 scoredAction];
  v3 = [v2 predictedItem];

  v4 = [MEMORY[0x277CEB648] sharedInstance];
  v5 = [v4 shouldFilterOutAction:v3];

  return v5 ^ 1u;
}

void __76__ATXActionPredictionsProcessor_removeMissingOrBlockedRecipientPredictions___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 scoredAction];
  v2 = [v1 predictedItem];
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v3, v4, "Suppressing predicted action %@ due to blocked contact referenced by intent.", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void __76__ATXActionPredictionsProcessor_removeMissingOrBlockedRecipientPredictions___block_invoke_cold_2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 scoredAction];
  v2 = [v1 predictedItem];
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v3, v4, "Suppressing predicted action %@ due to missing contact referenced by intent.", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void __76__ATXActionPredictionsProcessor_removeMissingOrBlockedRecipientPredictions___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isBlockedEmailAddressContainedInAddresses:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CMFItemRef atx_CMFItemCreateWithEmailAddress(CFStringRef)"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionPredictionsProcessor.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)isBlockedPhoneNumberContainedInNumbers:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CMFItemRef atx_CMFItemCreateWithPhoneNumber(CFPhoneNumberRef)"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionPredictionsProcessor.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)userAlarms
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*self + 40);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end