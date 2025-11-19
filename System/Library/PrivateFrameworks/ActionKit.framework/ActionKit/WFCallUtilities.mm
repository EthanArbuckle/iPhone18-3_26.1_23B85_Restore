@interface WFCallUtilities
- (void)getFavoriteContactsWithLimit:(int64_t)a3 completion:(id)a4;
- (void)getRecentsCallWithTelephony:(BOOL)a3 limit:(int64_t)a4 completion:(id)a5;
@end

@implementation WFCallUtilities

- (void)getFavoriteContactsWithLimit:(int64_t)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CBDAF8] sharedInstance];
  v7 = _WFCallUtilitiesContactsProcessingQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__WFCallUtilities_getFavoriteContactsWithLimit_completion___block_invoke;
  block[3] = &unk_278C20110;
  v12 = v5;
  v13 = a3;
  v11 = v6;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __59__WFCallUtilities_getFavoriteContactsWithLimit_completion___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v54 = a1;
  obj = [*(a1 + 32) entries];
  v53 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (!v53)
  {
    goto LABEL_22;
  }

  v52 = *v60;
  v51 = *MEMORY[0x277CFC640];
  v50 = *MEMORY[0x277CBCF68];
  v49 = *MEMORY[0x277CBCF58];
  v45 = *MEMORY[0x277CBCF70];
  v44 = *MEMORY[0x277CBCF80];
  v43 = *MEMORY[0x277CFC648];
  v47 = *MEMORY[0x277CFC638];
  v48 = v2;
  while (2)
  {
    for (i = 0; i != v53; ++i)
    {
      if (*v60 != v52)
      {
        objc_enumerationMutation(obj);
      }

      v4 = *(*(&v59 + 1) + 8 * i);
      v5 = objc_autoreleasePoolPush();
      if ([v2 count] == *(v54 + 48))
      {
        objc_autoreleasePoolPop(v5);
        goto LABEL_22;
      }

      v6 = v51;
      v7 = [v4 bundleIdentifier];
      v8 = [v7 isEqualToString:v50];

      if (v8)
      {
        v58 = v5;
        v9 = v47;
        v10 = @"Audio";
        v11 = 1;
      }

      else
      {
        v36 = [v4 bundleIdentifier];
        if ([v36 isEqualToString:v49])
        {
          v37 = [v4 actionType];
          v38 = [v37 isEqualToString:v45];

          if (v38)
          {
            v58 = v5;
            v9 = v47;
            v10 = @"Audio";
            v11 = 3;
            goto LABEL_9;
          }
        }

        else
        {
        }

        v15 = [v4 bundleIdentifier];
        if (![v15 isEqualToString:v49])
        {
          goto LABEL_17;
        }

        v39 = [v4 actionType];
        v40 = [v39 isEqualToString:v44];

        if (!v40)
        {
          goto LABEL_18;
        }

        v58 = v5;
        v9 = v43;
        v10 = @"Video";
        v11 = 2;
      }

LABEL_9:
      v57 = v11;
      v55 = v9;

      v12 = MEMORY[0x277CFC278];
      v13 = [v4 contactProperty];
      v14 = [v13 contact];
      v15 = [v12 contactWithCNContact:v14];

      v56 = [objc_alloc(MEMORY[0x277CFC2C0]) initWithContact:v15];
      v16 = objc_alloc(MEMORY[0x277D7C680]);
      v17 = [MEMORY[0x277CCAD78] UUID];
      v18 = [v16 initWithIdentity:v17 parameterState:v56];

      v19 = objc_alloc(MEMORY[0x277D7C2A8]);
      v63 = v18;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
      v21 = [v19 initWithValue:v20];

      v22 = objc_alloc(MEMORY[0x277CFC2A8]);
      v23 = [v4 bundleIdentifier];
      v24 = [v22 initWithBundleIdentifier:v23 type:v55];
      [v21 setCommunicationMethod:v24];

      v25 = [objc_alloc(MEMORY[0x277D7C928]) initWithValue:v10];
      v26 = objc_alloc(MEMORY[0x277CD3E90]);
      v27 = [v4 contactProperty];
      v28 = [v27 contact];
      v29 = [v4 value];
      v30 = [v26 initWithContact:v28 handle:v29];

      v31 = objc_alloc(MEMORY[0x277D79ED0]);
      v32 = [v4 value];
      v33 = [v25 serializedRepresentation];
      v34 = [v21 serializedRepresentation];
      v35 = [v31 initWithHandle:v32 callType:v57 person:v30 callTypeSerializedRepresentation:v33 personSerializedRepresentation:v34];

      v2 = v48;
      [v48 addObject:v35];

      v6 = v55;
      v5 = v58;
LABEL_17:

LABEL_18:
      objc_autoreleasePoolPop(v5);
    }

    v53 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v53)
    {
      continue;
    }

    break;
  }

LABEL_22:

  if (v2)
  {
    v41 = v2;
  }

  else
  {
    v41 = MEMORY[0x277CBEBF8];
  }

  (*(*(v54 + 40) + 16))(*(v54 + 40), v41, 0);

  v42 = *MEMORY[0x277D85DE8];
}

- (void)getRecentsCallWithTelephony:(BOOL)a3 limit:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  if ([MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] == 3)
  {
    v8 = _WFCallUtilitiesContactsProcessingQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__WFCallUtilities_getRecentsCallWithTelephony_limit_completion___block_invoke;
    block[3] = &unk_278C19E90;
    v13 = a3;
    v12 = a4;
    v11 = v7;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1011 reason:@"Contact Access was denied"];
    (*(v7 + 2))(v7, 0, v9);
  }
}

void __64__WFCallUtilities_getRecentsCallWithTelephony_limit_completion___block_invoke(uint64_t a1)
{
  v38[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7DC0]];
  v38[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7DB8]];
  v38[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];

  if (*(a1 + 48) == 1)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7DC8]];
    v6 = [v4 arrayByAddingObject:v5];

    v4 = v6;
  }

  v7 = objc_opt_new();
  v33 = [MEMORY[0x277CCAC30] predicateWithFormat:@"callType IN %@", v4];
  v8 = [v7 recentCallsWithPredicate:?];
  v9 = *(a1 + 40);
  v10 = [v8 count];
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = [v8 subarrayWithRange:{0, v11}];

  v13 = [v12 if_flatMap:&__block_literal_global_6538];
  v14 = objc_alloc(MEMORY[0x277CBDA70]);
  v15 = [MEMORY[0x277CD3E90] expectedCNContactKeys];
  v16 = *MEMORY[0x277CBD028];
  v37[0] = *MEMORY[0x277CBD020];
  v37[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v18 = [v15 arrayByAddingObjectsFromArray:v17];
  v19 = [v14 initWithKeysToFetch:v18];

  v20 = [MEMORY[0x277CBDA58] predicateForContactsMatchingHandleStrings:v13];
  [v19 setPredicate:v20];

  v21 = objc_opt_new();
  v36 = 0;
  v22 = [v21 executeFetchRequest:v19 error:&v36];
  v23 = v36;
  v24 = [v22 value];

  if (v24)
  {
    v25 = [v22 value];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __64__WFCallUtilities_getRecentsCallWithTelephony_limit_completion___block_invoke_4;
    v34[3] = &unk_278C19E68;
    v35 = v25;
    v26 = v25;
    v27 = [v12 if_compactMap:v34];
    v28 = a1;
    v29 = v7;
    v30 = v27;
    if (v27)
    {
      v31 = v27;
    }

    else
    {
      v31 = MEMORY[0x277CBEBF8];
    }

    (*(*(v28 + 32) + 16))(*(v28 + 32), v31, 0);

    v7 = v29;
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v32 = *MEMORY[0x277D85DE8];
}

id __64__WFCallUtilities_getRecentsCallWithTelephony_limit_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__6542;
  v47 = __Block_byref_object_dispose__6543;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__6542;
  v41 = __Block_byref_object_dispose__6543;
  v42 = 0;
  v4 = [v3 remoteParticipantHandles];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __64__WFCallUtilities_getRecentsCallWithTelephony_limit_completion___block_invoke_196;
  v33 = &unk_278C19E40;
  v35 = &v43;
  v34 = *(a1 + 32);
  v36 = &v37;
  [v4 enumerateObjectsUsingBlock:&v30];

  if (v44[5])
  {
    v5 = [MEMORY[0x277CFC278] contactWithCNContact:?];
    v6 = [objc_alloc(MEMORY[0x277CFC2C0]) initWithContact:v5];
    v29 = v5;
    v7 = objc_alloc(MEMORY[0x277D7C680]);
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v7 initWithIdentity:v8 parameterState:v6];
    v28 = v6;

    v10 = objc_alloc(MEMORY[0x277D7C2A8]);
    v49[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
    v12 = [v10 initWithValue:v11];

    v13 = objc_alloc(MEMORY[0x277CD3E90]);
    v14 = v44[5];
    v15 = [v38[5] value];
    v16 = [v13 initWithContact:v14 handle:v15];

    v17 = [v3 serviceProvider];
    LOBYTE(v15) = [v17 isEqualToString:@"com.apple.Telephony"];

    if (v15)
    {
      v18 = @"Audio";
      v19 = 1;
    }

    else if ([v3 mediaType] == 1)
    {
      v18 = @"Audio";
      v19 = 3;
    }

    else
    {
      if ([v3 mediaType] == 2)
      {
        v18 = @"Video";
      }

      else
      {
        v18 = 0;
      }

      v19 = 2;
    }

    v21 = [objc_alloc(MEMORY[0x277D7C928]) initWithValue:v18];
    v22 = objc_alloc(MEMORY[0x277D79ED0]);
    v23 = [v38[5] value];
    v24 = [v21 serializedRepresentation];
    v25 = [v12 serializedRepresentation];
    v20 = [v22 initWithHandle:v23 callType:v19 person:v16 callTypeSerializedRepresentation:v24 personSerializedRepresentation:v25];
  }

  else
  {
    v20 = 0;
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  v26 = *MEMORY[0x277D85DE8];

  return v20;
}

void __64__WFCallUtilities_getRecentsCallWithTelephony_limit_completion___block_invoke_196(void *a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = a1[4];
  v13 = v6;
  v8 = [v6 value];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 firstObject];
  v11 = *(a1[5] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(a1[5] + 8) + 40))
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a3 = 1;
  }
}

void *__64__WFCallUtilities_getRecentsCallWithTelephony_limit_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 remoteParticipantHandles];
  v3 = [v2 allObjects];
  v4 = [v3 if_map:&__block_literal_global_192];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  return v6;
}

@end