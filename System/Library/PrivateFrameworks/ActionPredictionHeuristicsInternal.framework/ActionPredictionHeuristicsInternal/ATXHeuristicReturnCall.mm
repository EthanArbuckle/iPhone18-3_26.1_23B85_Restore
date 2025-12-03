@interface ATXHeuristicReturnCall
- (id)_actionWithCall:(id)call contactDict:(id)dict contactId:(id)id handle:(id)handle service:(id)service;
- (id)_bestContactHandleFromDataSourceWithContact:(id)contact service:(id)service environment:(id)environment;
- (id)_contactsDataSourceWithIdentifiers:(id)identifiers environment:(id)environment;
- (id)_duetInteractionCountFromDataSourceWithHandles:(id)handles date:(id)date environment:(id)environment;
- (id)_interactionCountAfterCall:(id)call contactDict:(id)dict environment:(id)environment;
- (id)_serviceWithCall:(id)call;
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
- (void)_addActionWithContactId:(id)id toActions:(id)actions environment:(id)environment lastCallDict:(id)dict;
@end

@implementation ATXHeuristicReturnCall

- (id)permanentRefreshTriggers
{
  v2 = [[ATXInformationHeuristicRefreshNotitifcationTrigger alloc] initWithNotification:@"com.apple.CallHistoryPluginHelper.launchnotification" type:1];
  v3 = [ATXInformationHeuristicRefreshContextChangeTrigger alloc];
  keyPathForActiveCall = [MEMORY[0x277CFE338] keyPathForActiveCall];
  v5 = [(ATXInformationHeuristicRefreshContextChangeTrigger *)v3 initWithCDContextualKeyPath:keyPathForActiveCall];

  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v2, v5, 0}];
  objc_autoreleasePoolPop(v6);

  return v7;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  v62 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v4 = [ATXCallHistoryDataSource alloc];
  v40 = environmentCopy;
  heuristicDevice = [environmentCopy heuristicDevice];
  v6 = [(ATXCallHistoryDataSource *)v4 initWithDevice:heuristicDevice];

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__15;
  v54 = __Block_byref_object_dispose__15;
  v55 = 0;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __57__ATXHeuristicReturnCall_heuristicResultWithEnvironment___block_invoke;
  v49[3] = &unk_278C3D4D8;
  v49[4] = &v50;
  v37 = v6;
  [(ATXCallHistoryDataSource *)v6 callNewerThan:1 showIncoming:1 showOutgoing:0 missedOnly:v49 callback:3600.0];
  v7 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v51[5] count];
    *buf = 134217984;
    v58 = v8;
    _os_log_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_DEFAULT, "ATXHeuristicReturnCall: heuristicResultWithEnvironment %lu calls", buf, 0xCu);
  }

  v9 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v51[5];
  v10 = [obj countByEnumeratingWithState:&v45 objects:v61 count:16];
  if (v10)
  {
    v11 = *v46;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:@"contactIdentifier"];
        if (v14)
        {
          v15 = [v9 objectForKeyedSubscript:v14];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 objectForKeyedSubscript:@"date"];
            v18 = [v13 objectForKeyedSubscript:@"date"];
            v19 = v18;
            if (v18)
            {
              v20 = v17 == 0;
            }

            else
            {
              v20 = 1;
            }

            if (!v20)
            {
              [v18 doubleValue];
              v22 = v21;
              [v17 doubleValue];
              if (v22 > v23)
              {
                [v9 setValue:v13 forKey:v14];
              }
            }

            v24 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v58 = v14;
              v59 = 2112;
              v60 = v19;
              _os_log_impl(&dword_23E3EA000, v24, OS_LOG_TYPE_DEFAULT, "ATXHeuristicReturnCall: heuristicResultWithEnvironment contactId %@, callDate:%@", buf, 0x16u);
            }
          }

          else
          {
            [v9 setValue:v13 forKey:v14];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v45 objects:v61 count:16];
    }

    while (v10);
  }

  v25 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v26 = v9;
  v27 = [v26 countByEnumeratingWithState:&v41 objects:v56 count:16];
  if (v27)
  {
    v28 = *v42;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(v26);
        }

        [(ATXHeuristicReturnCall *)self _addActionWithContactId:*(*(&v41 + 1) + 8 * j) toActions:v25 environment:v40 lastCallDict:v26];
      }

      v27 = [v26 countByEnumeratingWithState:&v41 objects:v56 count:16];
    }

    while (v27);
  }

  v30 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v25 count];
    *buf = 134217984;
    v58 = v31;
    _os_log_impl(&dword_23E3EA000, v30, OS_LOG_TYPE_DEFAULT, "ATXHeuristicReturnCall: heuristicResultWithEnvironment %lu actions", buf, 0xCu);
  }

  v32 = [v25 _pas_mappedArrayWithTransform:&__block_literal_global_10];
  v33 = objc_opt_new();
  v34 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v32 additionalRefreshTriggers:v33];

  _Block_object_dispose(&v50, 8);
  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)_addActionWithContactId:(id)id toActions:(id)actions environment:(id)environment lastCallDict:(id)dict
{
  v29 = *MEMORY[0x277D85DE8];
  idCopy = id;
  actionsCopy = actions;
  environmentCopy = environment;
  v13 = [dict objectForKeyedSubscript:idCopy];
  v14 = [v13 objectForKeyedSubscript:@"missed"];
  if ([v14 BOOLValue])
  {
    v15 = [v13 objectForKeyedSubscript:@"remoteParticipantHandles"];
    if ([v15 count]== 1)
    {
      firstObject = [v15 firstObject];
      v17 = [firstObject objectForKeyedSubscript:@"value"];

      v18 = [(ATXHeuristicReturnCall *)self _serviceWithCall:v13];
      if ([v18 length])
      {
        v25 = v18;
        v26 = idCopy;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
        v20 = [(ATXHeuristicReturnCall *)self _contactsDataSourceWithIdentifiers:v19 environment:environmentCopy];

        if ([v20 count] == 1)
        {
          firstObject2 = [v20 firstObject];
          v24 = [(ATXHeuristicReturnCall *)self _interactionCountAfterCall:v13 contactDict:firstObject2 environment:environmentCopy];
          if ([v24 integerValue] < 1)
          {
            v22 = [(ATXHeuristicReturnCall *)self _actionWithCall:v13 contactDict:firstObject2 contactId:idCopy handle:v17 service:v25];
            if (v22)
            {
              [actionsCopy addObject:v22];
            }
          }

          else
          {
            v22 = __atxlog_handle_context_heuristic();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v28 = v24;
              _os_log_impl(&dword_23E3EA000, v22, OS_LOG_TYPE_DEFAULT, "Skipping contact that has already been interacted with %@ times after the missed call", buf, 0xCu);
            }
          }
        }

        else
        {
          firstObject2 = __atxlog_handle_context_heuristic();
          if (os_log_type_enabled(firstObject2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v28 = idCopy;
            _os_log_impl(&dword_23E3EA000, firstObject2, OS_LOG_TYPE_DEFAULT, "ATXHeuristicReturnCall: heuristicResultWithEnvironment contactId %@ Could not find exactly 1 CNContact for identifier", buf, 0xCu);
          }
        }

        v18 = v25;
      }
    }

    else
    {
      v17 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = idCopy;
        _os_log_impl(&dword_23E3EA000, v17, OS_LOG_TYPE_DEFAULT, "ATXHeuristicReturnCall: heuristicResultWithEnvironment contactId %@ Cannot find exactly 1 remote participant handle", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = idCopy;
      _os_log_impl(&dword_23E3EA000, v15, OS_LOG_TYPE_DEFAULT, "ATXHeuristicReturnCall: heuristicResultWithEnvironment contactId %@ last call was not missed. Skipping", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_serviceWithCall:(id)call
{
  v3 = [call objectForKeyedSubscript:@"serviceProvider"];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  if (([v3 isEqualToString:@"com.apple.Telephony"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"com.apple.FaceTime"])
    {
      v5 = @"facetime";
      goto LABEL_10;
    }

    v6 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_23E3EA000, v6, OS_LOG_TYPE_DEFAULT, "Suppressing action since third party calls are not supported", v8, 2u);
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v5 = @"phone";
LABEL_10:

  return v5;
}

- (id)_duetInteractionCountFromDataSourceWithHandles:(id)handles date:(id)date environment:(id)environment
{
  handlesCopy = handles;
  dateCopy = date;
  environmentCopy = environment;
  if ([handlesCopy count])
  {
    v10 = [ATXDuetInteractionDataSource alloc];
    heuristicDevice = [environmentCopy heuristicDevice];
    v12 = [(ATXDuetInteractionDataSource *)v10 initWithDevice:heuristicDevice];

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__15;
    v25 = __Block_byref_object_dispose__15;
    v26 = 0;
    v18 = 0;
    v19[0] = &v18;
    v19[1] = 0x3032000000;
    v19[2] = __Block_byref_object_copy__15;
    v19[3] = __Block_byref_object_dispose__15;
    v20 = 0;
    v13 = [MEMORY[0x277CBEB98] setWithArray:handlesCopy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __90__ATXHeuristicReturnCall__duetInteractionCountFromDataSourceWithHandles_date_environment___block_invoke;
    v17[3] = &unk_278C3CDD0;
    v17[4] = &v21;
    v17[5] = &v18;
    [(ATXDuetInteractionDataSource *)v12 duetInteractionCountForHandles:v13 sinceDate:dateCopy callback:v17];

    if (*(v19[0] + 40))
    {
      v14 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ATXHeuristicReturnCall _duetInteractionCountFromDataSourceWithHandles:v12 date:v19 environment:?];
      }

      v15 = 0;
    }

    else
    {
      v15 = v22[5];
    }

    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __90__ATXHeuristicReturnCall__duetInteractionCountFromDataSourceWithHandles_date_environment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)_contactsDataSourceWithIdentifiers:(id)identifiers environment:(id)environment
{
  identifiersCopy = identifiers;
  environmentCopy = environment;
  v7 = [ATXContactsDataSource alloc];
  heuristicDevice = [environmentCopy heuristicDevice];
  v9 = [(ATXContactsDataSource *)v7 initWithDevice:heuristicDevice];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__15;
  v21 = __Block_byref_object_dispose__15;
  v22 = 0;
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x3032000000;
  v15[2] = __Block_byref_object_copy__15;
  v15[3] = __Block_byref_object_dispose__15;
  v16 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__ATXHeuristicReturnCall__contactsDataSourceWithIdentifiers_environment___block_invoke;
  v13[3] = &unk_278C3CDA8;
  v13[4] = &v17;
  v13[5] = &v14;
  [(ATXContactsDataSource *)v9 contactsWithIdentifiers:identifiersCopy callback:v13];
  if (*(v15[0] + 40))
  {
    v10 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicReturnCall _contactsDataSourceWithIdentifiers:v9 environment:v15];
    }

    v11 = 0;
  }

  else
  {
    v11 = v18[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __73__ATXHeuristicReturnCall__contactsDataSourceWithIdentifiers_environment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)_interactionCountAfterCall:(id)call contactDict:(id)dict environment:(id)environment
{
  callCopy = call;
  environmentCopy = environment;
  v10 = [dict objectForKeyedSubscript:@"CNContact"];
  v11 = [(ATXHeuristicReturnCall *)self _bestContactHandleFromDataSourceWithContact:v10 service:*MEMORY[0x277D18698] environment:environmentCopy];
  v12 = [(ATXHeuristicReturnCall *)self _bestContactHandleFromDataSourceWithContact:v10 service:*MEMORY[0x277D18690] environment:environmentCopy];
  v13 = [(ATXHeuristicReturnCall *)self _bestContactHandleFromDataSourceWithContact:v10 service:*MEMORY[0x277D186B0] environment:environmentCopy];
  v14 = objc_opt_new();
  v15 = v14;
  if (v11)
  {
    [v14 addObject:v11];
  }

  if (v12)
  {
    [v15 addObject:v12];
  }

  if (v13)
  {
    [v15 addObject:v13];
  }

  v16 = [callCopy objectForKeyedSubscript:@"date"];
  v17 = MEMORY[0x277CBEAA8];
  [v16 doubleValue];
  v19 = [v17 dateWithTimeIntervalSinceReferenceDate:v18 + 1.0];
  v20 = [(ATXHeuristicReturnCall *)self _duetInteractionCountFromDataSourceWithHandles:v15 date:v19 environment:environmentCopy];

  return v20;
}

- (id)_bestContactHandleFromDataSourceWithContact:(id)contact service:(id)service environment:(id)environment
{
  contactCopy = contact;
  serviceCopy = service;
  environmentCopy = environment;
  if (contactCopy && serviceCopy)
  {
    v10 = [ATXBestContactHandleForServiceDataSource alloc];
    heuristicDevice = [environmentCopy heuristicDevice];
    v12 = [(ATXBestContactHandleForServiceDataSource *)v10 initWithDevice:heuristicDevice];

    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__15;
    v24 = __Block_byref_object_dispose__15;
    v25 = 0;
    v17 = 0;
    v18[0] = &v17;
    v18[1] = 0x3032000000;
    v18[2] = __Block_byref_object_copy__15;
    v18[3] = __Block_byref_object_dispose__15;
    v19 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __90__ATXHeuristicReturnCall__bestContactHandleFromDataSourceWithContact_service_environment___block_invoke;
    v16[3] = &unk_278C3D2D0;
    v16[4] = &v20;
    v16[5] = &v17;
    [v12 bestHandleForContact:contactCopy service:serviceCopy callback:v16];
    if (*(v18[0] + 40))
    {
      v13 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXHeuristicReturnCall _bestContactHandleFromDataSourceWithContact:v12 service:v18 environment:?];
      }

      v14 = 0;
    }

    else
    {
      v14 = v21[5];
    }

    _Block_object_dispose(&v17, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v12 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicReturnCall _bestContactHandleFromDataSourceWithContact:contactCopy service:serviceCopy environment:v12];
    }

    v14 = 0;
  }

  return v14;
}

void __90__ATXHeuristicReturnCall__bestContactHandleFromDataSourceWithContact_service_environment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)_actionWithCall:(id)call contactDict:(id)dict contactId:(id)id handle:(id)handle service:(id)service
{
  v56 = *MEMORY[0x277D85DE8];
  callCopy = call;
  idCopy = id;
  handleCopy = handle;
  serviceCopy = service;
  v15 = MEMORY[0x277CCA8D8];
  dictCopy = dict;
  v17 = [v15 bundleForClass:objc_opt_class()];
  v18 = [dictCopy objectForKeyedSubscript:@"displayName"];

  if ([v18 length])
  {
    v45 = idCopy;
    v19 = MEMORY[0x277CCACA8];
    [v17 localizedStringForKey:@"RETURN_CALL_TITLE" value:&stru_2850AD368 table:0];
    v20 = v47 = callCopy;
    v44 = v18;
    v21 = [v19 localizedStringWithFormat:v20, v18];

    v22 = [v47 objectForKeyedSubscript:@"date"];
    v23 = MEMORY[0x277CBEAA8];
    v43 = v22;
    [v22 doubleValue];
    v24 = [v23 dateWithTimeIntervalSinceReferenceDate:?];
    v25 = [MEMORY[0x277CCA968] localizedStringFromDate:v24 dateStyle:0 timeStyle:1];
    v26 = [ATXHeuristicEventUtilities isEventAtOneWithDate:v24];
    v27 = MEMORY[0x277CCACA8];
    if (v26)
    {
      v28 = @"RETURN_CALL_SUBTITLE_(hour is 1)";
    }

    else
    {
      v28 = @"RETURN_CALL_SUBTITLE";
    }

    v46 = v17;
    v29 = [v17 localizedStringForKey:v28 value:&stru_2850AD368 table:0];
    v42 = v25;
    v30 = [v27 localizedStringWithFormat:v29, v25];

    v31 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413059;
      v49 = handleCopy;
      v50 = 2112;
      v51 = serviceCopy;
      v52 = 2117;
      v53 = v21;
      v54 = 2112;
      v55 = v30;
      _os_log_impl(&dword_23E3EA000, v31, OS_LOG_TYPE_DEFAULT, "Action with handle %@ service %@ title %{sensitive}@, subtitle %@", buf, 0x2Au);
    }

    v32 = MEMORY[0x277CEB2C8];
    v33 = [v47 objectForKeyedSubscript:@"mediaType"];
    v18 = v44;
    v34 = [v32 atx_startCallActionWithTitle:v21 subtitle:v30 recipientName:v44 recipientHandle:handleCopy callService:serviceCopy contactIdentifier:v45 eventIdentifier:0 heuristicName:@"returnCall" mediaType:v33];

    v35 = [v24 dateByAddingTimeInterval:120.0];
    v36 = [v35 dateByAddingTimeInterval:1800.0];
    v37 = v24;
    v38 = v30;
    v39 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:v35 endDate:v36 lockScreenEligible:0 predicate:0];
    [v34 setCriteria:v39];

    idCopy = v45;
    callCopy = v47;

    v17 = v46;
  }

  else
  {
    v21 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v21, OS_LOG_TYPE_DEFAULT, "ATXHeuristicReturnCall _actionWithCall null recipient name dropping action", buf, 2u);
    }

    v34 = 0;
  }

  v40 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)_duetInteractionCountFromDataSourceWithHandles:(uint64_t)a1 date:(uint64_t)a2 environment:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1(&dword_23E3EA000, v2, v3, "_duetInteractionCountFromDataSourceWithHandles error querying data source %@: %@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_contactsDataSourceWithIdentifiers:(uint64_t)a1 environment:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1(&dword_23E3EA000, v2, v3, "_contactsDataSourceWithIdentifiers error querying contacts data source %@: %@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_bestContactHandleFromDataSourceWithContact:(uint64_t)a1 service:(uint64_t)a2 environment:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_23E3EA000, a2, a3, "Contact %@ or service %@ from is invalid", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_bestContactHandleFromDataSourceWithContact:(uint64_t)a1 service:(uint64_t)a2 environment:.cold.2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1(&dword_23E3EA000, v2, v3, "_bestContactHandleFromDataSourceWithContact Error querying data source %@: %@");
  v4 = *MEMORY[0x277D85DE8];
}

@end