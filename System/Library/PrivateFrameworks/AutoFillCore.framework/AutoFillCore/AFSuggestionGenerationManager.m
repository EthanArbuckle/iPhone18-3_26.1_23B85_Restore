@interface AFSuggestionGenerationManager
+ (id)sharedInstance;
- (BOOL)shouldAuthenticateToAcceptAutoFill;
- (id)_makeQueue;
- (id)generateSuggestionsForContactAutoFill:(id)a3 textPrefix:(id)a4;
- (id)initPrivate;
- (uint64_t)shouldAuthenticateToAcceptAutoFill;
- (void)authenticateIfNecessaryForCreditCardSuggestion:(id)a3 withPayload:(id)a4 documentTraits:(id)a5 completionHandler:(id)a6;
- (void)authenticateIfNecessaryForSuggestion:(id)a3 documentTraits:(id)a4 completionHandler:(id)a5;
- (void)generateAutoFillSuggestionsWithAutoFillMode:(unint64_t)a3 textPrefix:(id)a4 documentTraits:(id)a5 externalizedContext:(id)a6 completionHandler:(id)a7;
- (void)generateContactAutoFillSuggestionsWithTextPrefix:(id)a3 documentTraits:(id)a4 completionHandler:(id)a5;
- (void)generateCreditCardAutoFillWithCompletionHandler:(id)a3 externalizedContext:(id)a4;
@end

@implementation AFSuggestionGenerationManager

+ (id)sharedInstance
{
  v2 = instance;
  if (!instance)
  {
    if (sharedInstance_onceToken != -1)
    {
      +[AFSuggestionGenerationManager sharedInstance];
    }

    v2 = instance;
  }

  return v2;
}

uint64_t __47__AFSuggestionGenerationManager_sharedInstance__block_invoke()
{
  instance = [[AFSuggestionGenerationManager alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v13.receiver = self;
  v13.super_class = AFSuggestionGenerationManager;
  v2 = [(AFSuggestionGenerationManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(AFSuggestionGenerationManager *)v2 _makeQueue];
    queue = v3->_queue;
    v3->_queue = v4;

    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v6 = get_ICInputContextFactoryClass_softClass;
    v18 = get_ICInputContextFactoryClass_softClass;
    if (!get_ICInputContextFactoryClass_softClass)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __get_ICInputContextFactoryClass_block_invoke;
      v14[3] = &unk_278CF6A18;
      v14[4] = &v15;
      __get_ICInputContextFactoryClass_block_invoke(v14);
      v6 = v16[3];
    }

    v7 = v6;
    _Block_object_dispose(&v15, 8);
    v8 = [v6 predictionManager];
    inputContextPredictionManager = v3->_inputContextPredictionManager;
    v3->_inputContextPredictionManager = v8;

    v10 = [[AFLocalizationManager alloc] initForLocalizedStrings];
    localizationManager = v3->_localizationManager;
    v3->_localizationManager = v10;
  }

  return v3;
}

- (id)_makeQueue
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v3 = dispatch_queue_create("com.apple.AutoFillCore.AFSuggestionGenerationManager", v2);

  return v3;
}

- (void)generateAutoFillSuggestionsWithAutoFillMode:(unint64_t)a3 textPrefix:(id)a4 documentTraits:(id)a5 externalizedContext:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __141__AFSuggestionGenerationManager_generateAutoFillSuggestionsWithAutoFillMode_textPrefix_documentTraits_externalizedContext_completionHandler___block_invoke;
  v33 = &unk_278CF68B0;
  v16 = v13;
  v34 = v16;
  v17 = v15;
  v35 = v17;
  v18 = MEMORY[0x245CF1A60](&v30);
  if (a3 != 1)
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v21 = [AFCredentialManager sharedInstance:v30];
      [v21 generateSignupAutoFillWithAutoFillMode:a3 documentTraits:v16 completionHandler:v17];
LABEL_5:

      goto LABEL_21;
    }

    if (a3 == 9)
    {
      [(AFSuggestionGenerationManager *)self generateCreditCardAutoFillWithCompletionHandler:v17 externalizedContext:v14, v30, v31, v32, v33, v34];
      goto LABEL_21;
    }

    if (![(AFSuggestionGenerationManager *)self needContactAutofill:a3, v30, v31, v32, v33, v34])
    {
      if (a3 != 8)
      {
        (*(v17 + 2))(v17, 0);
        goto LABEL_21;
      }

      v21 = +[AFCredentialManager sharedInstance];
      [v21 generateOneTimeCodeAutoFillSuggestionsWithDocumentTraits:v16 completionHandler:v17];
      goto LABEL_5;
    }

    v22 = [v16 textInputTraits];
    v23 = [v22 textContentType];
    v24 = v23;
    if (v23 != @"email")
    {

LABEL_11:
      v25 = self;
      v26 = v12;
      v27 = v16;
      v28 = v17;
LABEL_20:
      [(AFSuggestionGenerationManager *)v25 generateContactAutoFillSuggestionsWithTextPrefix:v26 documentTraits:v27 completionHandler:v28];
      goto LABEL_21;
    }

    if (v12)
    {
      v29 = [v12 length];

      if (v29)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v25 = self;
    v26 = v12;
    v27 = v16;
    v28 = v18;
    goto LABEL_20;
  }

  v19 = [AFCredentialManager sharedInstance:v30];
  v20 = [v19 generateLoginAutoFillWithDocumentTraits:v16];

  (*(v17 + 2))(v17, v20);
LABEL_21:
}

void __141__AFSuggestionGenerationManager_generateAutoFillSuggestionsWithAutoFillMode_textPrefix_documentTraits_externalizedContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy_;
  v9[4] = __Block_byref_object_dispose_;
  v10 = [v3 copy];
  v4 = +[AFCredentialManager sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __141__AFSuggestionGenerationManager_generateAutoFillSuggestionsWithAutoFillMode_textPrefix_documentTraits_externalizedContext_completionHandler___block_invoke_56;
  v6[3] = &unk_278CF6888;
  v8 = v9;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v4 generateHideMyEmailAutoFillWithRenderTraits:v5 completionHandler:v6];

  _Block_object_dispose(v9, 8);
}

void __141__AFSuggestionGenerationManager_generateAutoFillSuggestionsWithAutoFillMode_textPrefix_documentTraits_externalizedContext_completionHandler___block_invoke_56(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) arrayByAddingObject:a2];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __141__AFSuggestionGenerationManager_generateAutoFillSuggestionsWithAutoFillMode_textPrefix_documentTraits_externalizedContext_completionHandler___block_invoke_2;
  v8[3] = &unk_278CF6860;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = v6;
  v10 = v7;
  AFDispatchAsync(MEMORY[0x277D85CD0], v8);
}

- (void)generateCreditCardAutoFillWithCompletionHandler:(id)a3 externalizedContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = dispatch_group_create();
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v9 = getPKAutoFillCardManagerClass_softClass;
  v29 = getPKAutoFillCardManagerClass_softClass;
  if (!getPKAutoFillCardManagerClass_softClass)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __getPKAutoFillCardManagerClass_block_invoke;
    v25[3] = &unk_278CF6A18;
    v25[4] = &v26;
    __getPKAutoFillCardManagerClass_block_invoke(v25);
    v9 = v27[3];
  }

  v10 = v9;
  _Block_object_dispose(&v26, 8);
  v11 = objc_alloc_init(v9);
  v12 = [MEMORY[0x277CBEB98] setWithArray:&unk_28537C510];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__AFSuggestionGenerationManager_generateCreditCardAutoFillWithCompletionHandler_externalizedContext___block_invoke;
  v18[3] = &unk_278CF6928;
  v19 = v8;
  v20 = v11;
  v21 = v6;
  v22 = v7;
  v23 = v5;
  v24 = 7;
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v16 = v11;
  v17 = v8;
  [v16 activeFPANCardsWithOptions:7 allowedCardTypes:v12 completion:v18];
}

void __101__AFSuggestionGenerationManager_generateCreditCardAutoFillWithCompletionHandler_externalizedContext___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          dispatch_group_enter(*(a1 + 32));
          v10 = *(a1 + 40);
          v11 = *(a1 + 48);
          v12 = *(a1 + 72);
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __101__AFSuggestionGenerationManager_generateCreditCardAutoFillWithCompletionHandler_externalizedContext___block_invoke_2;
          v18[3] = &unk_278CF68D8;
          v18[4] = v9;
          v19 = *(a1 + 56);
          v20 = *(a1 + 32);
          [v10 credentialForFPANCard:v9 authorization:v11 options:v12 merchantHost:0 completion:v18];
        }

        v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);
    }

    v13 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__AFSuggestionGenerationManager_generateCreditCardAutoFillWithCompletionHandler_externalizedContext___block_invoke_3;
    block[3] = &unk_278CF6900;
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    dispatch_group_notify(v13, MEMORY[0x277D85CD0], block);
  }

  else
  {
    NSLog(&cfstr_NoActiveCardsF.isa);
    (*(*(a1 + 64) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __101__AFSuggestionGenerationManager_generateCreditCardAutoFillWithCompletionHandler_externalizedContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  if (v24 && ([v24 primaryAccountNumber], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = [*(a1 + 32) credentialType];
    v10 = [*(a1 + 32) artwork];
    v11 = [v24 primaryAccountNumber];
    v12 = [*(a1 + 32) displayableLastFour];
    v13 = [v24 expirationDate];
    v14 = [v24 cardholderName];
    v15 = [v24 securityCode];
    if (v9)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
      [v8 setObject:v16 forKey:@"cc-type"];
    }

    if (v10)
    {
      [v8 setObject:v10 forKey:@"cc-art"];
    }

    if (v11)
    {
      [v8 setObject:v11 forKey:@"cc-number"];
    }

    if (v13)
    {
      [v8 setObject:v13 forKey:@"cc-exp"];
    }

    if (v14)
    {
      [v8 setObject:v14 forKey:@"cc-name"];
    }

    v23 = v11;
    if (v15)
    {
      [v8 setObject:v15 forKey:@"cc-csc"];
    }

    v17 = [*(a1 + 32) cardNickname];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = @"Credit Card";
    }

    v20 = v12;
    v21 = v19;
    v22 = [[AFSuggestion alloc] initWithTitle:v21 subTitle:v20 creditCardPayload:v8 customInfoType:13];

    [*(a1 + 40) addObject:v22];
  }

  else
  {
    v8 = [v5 localizedDescription];
    NSLog(&cfstr_FailedToRetrie.isa, v8);
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __101__AFSuggestionGenerationManager_generateCreditCardAutoFillWithCompletionHandler_externalizedContext___block_invoke_3(uint64_t a1)
{
  v2 = AFSuggestionGenerationManagerOSLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __101__AFSuggestionGenerationManager_generateCreditCardAutoFillWithCompletionHandler_externalizedContext___block_invoke_3_cold_1(a1);
  }

  v3 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

- (void)generateContactAutoFillSuggestionsWithTextPrefix:(id)a3 documentTraits:(id)a4 completionHandler:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v11 = [MEMORY[0x277CBEAA8] date];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = [MEMORY[0x277CBEB18] array];
  if (_os_feature_enabled_impl())
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2050000000;
    v12 = get_ICProactiveTriggerClass_softClass;
    v46 = get_ICProactiveTriggerClass_softClass;
    if (!get_ICProactiveTriggerClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v48 = 3221225472;
      v49 = __get_ICProactiveTriggerClass_block_invoke;
      v50 = &unk_278CF6A18;
      v51 = &v43;
      __get_ICProactiveTriggerClass_block_invoke(buf);
      v12 = v44[3];
    }

    v13 = v12;
    _Block_object_dispose(&v43, 8);
    v14 = [v12 alloc];
    v15 = [v9 textInputTraits];
    v16 = [v15 textContentType];
    v17 = [v14 initWithContext:v8 inputContextHistory:0 contentType:v16];

    [v38[5] addObject:v17];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __115__AFSuggestionGenerationManager_generateContactAutoFillSuggestionsWithTextPrefix_documentTraits_completionHandler___block_invoke;
    v32[3] = &unk_278CF6950;
    v33 = v11;
    v36 = v10;
    v34 = self;
    v35 = v8;
    v18 = MEMORY[0x245CF1A60](v32);
    if (_os_feature_enabled_impl())
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __115__AFSuggestionGenerationManager_generateContactAutoFillSuggestionsWithTextPrefix_documentTraits_completionHandler___block_invoke_98;
    block[3] = &unk_278CF69A0;
    block[4] = self;
    v29 = &v37;
    v30 = 0;
    v31 = v19;
    v27 = v9;
    v28 = v18;
    v21 = v18;
    v22 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    AFDispatchAsync(queue, v22);
  }

  else
  {
    v23 = AFSuggestionGenerationManagerOSLogFacility();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Proactive Quicktype 2 feature flag not enabled", "-[AFSuggestionGenerationManager generateContactAutoFillSuggestionsWithTextPrefix:documentTraits:completionHandler:]"];
      [AFSuggestionGenerationManager generateContactAutoFillSuggestionsWithTextPrefix:v24 documentTraits:buf completionHandler:v23];
    }

    (*(v10 + 2))(v10, 0);
  }

  _Block_object_dispose(&v37, 8);

  v25 = *MEMORY[0x277D85DE8];
}

void __115__AFSuggestionGenerationManager_generateContactAutoFillSuggestionsWithTextPrefix_documentTraits_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [*(a1 + 32) timeIntervalSinceNow];
  if (v6)
  {
    v8 = v7;
    v9 = AFSuggestionGenerationManagerOSLogFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __115__AFSuggestionGenerationManager_generateContactAutoFillSuggestionsWithTextPrefix_documentTraits_completionHandler___block_invoke_cold_1(v6, -v8);
    }
  }

  else
  {
    if ([v5 count] >= 1)
    {
      v10 = [*(a1 + 40) generateSuggestionsForContactAutoFill:v5 textPrefix:*(a1 + 48)];
      v11 = [v10 mutableCopy];

      (*(*(a1 + 56) + 16))();
      goto LABEL_7;
    }

    v9 = AFSuggestionGenerationManagerOSLogFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __115__AFSuggestionGenerationManager_generateContactAutoFillSuggestionsWithTextPrefix_documentTraits_completionHandler___block_invoke_cold_2();
    }
  }

  (*(*(a1 + 56) + 16))();
LABEL_7:
}

void __115__AFSuggestionGenerationManager_generateContactAutoFillSuggestionsWithTextPrefix_documentTraits_completionHandler___block_invoke_98(uint64_t a1)
{
  v2 = [*(a1 + 32) inputContextPredictionManager];
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = [*(a1 + 40) appId];
  v5 = [*(a1 + 40) recipientId];
  v6 = [*(*(a1 + 32) + 24) localeIdentifier];
  v7 = *(a1 + 64);
  v8 = *(a1 + 68);
  v18 = 0;
  v9 = [v2 searchWithTriggers:v3 application:v4 recipient:v5 localeIdentifier:v6 isResponseDenyListed:0 shouldDisableAutoCaps:1 timeoutInMilliseconds:__PAIR64__(v8 resultLimit:v7) error:&v18];
  v10 = v18;

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __115__AFSuggestionGenerationManager_generateContactAutoFillSuggestionsWithTextPrefix_documentTraits_completionHandler___block_invoke_2;
  v14[3] = &unk_278CF6978;
  v11 = *(a1 + 48);
  v16 = v10;
  v17 = v11;
  v15 = v9;
  v12 = v10;
  v13 = v9;
  AFDispatchAsync(MEMORY[0x277D85CD0], v14);
}

- (id)generateSuggestionsForContactAutoFill:(id)a3 textPrefix:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v62 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  if ([v4 count] >= 2)
  {
    v5 = 1;
    do
    {
      v6 = [v4 objectAtIndexedSubscript:v5 - 1];
      v7 = [v6 identifier];
      v8 = [v4 objectAtIndexedSubscript:v5];
      v9 = [v8 identifier];
      v10 = [v7 isEqualToString:v9];

      v60 = v10;
      if ((v10 & 1) == 0)
      {
        break;
      }

      ++v5;
    }

    while (v5 < [v4 count]);
  }

  else
  {
    v60 = 1;
  }

  v59 = [(AFLocalizationManager *)self->_localizationManager _truncationSentinel];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v4;
  v63 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (v63)
  {
    v61 = *v69;
    do
    {
      v11 = 0;
      do
      {
        if (*v69 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v68 + 1) + 8 * v11);
        v13 = [v12 operationData];
        v14 = &stru_28537ABC8;
        if (!v13)
        {
          v14 = [v12 value];
        }

        v15 = [v12 label];
        if (v15)
        {
          v16 = v15;
          v17 = [v12 shouldAggregate];

          if (v17)
          {
            v18 = [(AFLocalizationManager *)self->_localizationManager localizedStringForKey:@"LOCATION_AGGREGATED_NAME_AND_ADDRESS"];
            v19 = MEMORY[0x277CCACA8];
            v67 = 0;
            v20 = [v12 label];
            v21 = [v12 value];
            v22 = [v19 stringWithValidatedFormat:v18 validFormatSpecifiers:@"%@%@" error:&v67, v20, v21];
            v23 = v67;
            v24 = &stru_28537ABC8;
            if (v22)
            {
              v24 = v22;
            }

            v25 = v24;

            if (v23)
            {
              v26 = AFSuggestionGenerationManagerOSLogFacility();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                [AFSuggestionGenerationManager generateSuggestionsForContactAutoFill:textPrefix:];
              }
            }

            v14 = v25;
          }
        }

        v27 = AFSuggestionGenerationManagerOSLogFacility();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [AFSuggestionGenerationManager generateSuggestionsForContactAutoFill:textPrefix:];
        }

        v28 = [(AFLocalizationManager *)self->_localizationManager localizedStringForKey:@"PARENTHESIZED_LABEL"];
        v29 = [obj count];
        v30 = [v12 flags];
        v31 = [v12 label];
        if ([v31 length])
        {
          if (v29 > 1)
          {
            v32 = v60;
          }

          else
          {
            v32 = 0;
          }

          v33 = [v12 label];
          v34 = [v33 isEqualToString:@"unlabeled"];

          v35 = 0;
          v36 = 0;
          if (((v32 | v30) & 1) != 0 && (v34 & 1) == 0)
          {
            v37 = [v12 label];
            v35 = v37;
            v36 = v37 != 0;
            if (v30)
            {
              if (v37)
              {
                v38 = v37;
                v35 = v38;
                goto LABEL_48;
              }
            }
          }
        }

        else
        {

          v36 = 0;
          v35 = 0;
        }

        v39 = [v12 name];

        if (v39 && v36)
        {
          v40 = MEMORY[0x277CCACA8];
          v66 = 0;
          v41 = [v12 name];
          v42 = [v41 stringByAppendingString:v59];
          v43 = [v40 stringWithValidatedFormat:v28 validFormatSpecifiers:@"%@%@" error:&v66, v42, v35];
          v44 = v66;
          v45 = &stru_28537ABC8;
          if (v43)
          {
            v45 = v43;
          }

          v38 = v45;

          if (v44)
          {
            v46 = AFSuggestionGenerationManagerOSLogFacility();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              [AFSuggestionGenerationManager generateSuggestionsForContactAutoFill:textPrefix:];
            }
          }

LABEL_48:
          v50 = [v12 value];
          v51 = [(__CFString *)v38 isEqualToString:v50];

          if (!v51)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        v47 = [v12 name];

        if (v47)
        {
          v48 = [v12 name];
        }

        else
        {
          v49 = [v12 label];

          if (!v49)
          {
            v38 = 0;
            goto LABEL_49;
          }

          v48 = [v12 label];
        }

        v38 = v48;
        if (v48)
        {
          goto LABEL_48;
        }

LABEL_49:

        v38 = &stru_28537ABC8;
LABEL_50:
        v52 = [v12 value];
        if (([v12 flags] & 4) != 0)
        {
          v53 = [v12 label];

          v54 = [v12 name];

          v38 = v53;
          v52 = v54;
        }

        v55 = [[AFSuggestion alloc] initWithTitle:v38 subTitle:v14 usernameAndPasswordPayload:0 leadingImage:0 trailingImage:0 customInfoType:0];
        [v62 addObject:v55];

        ++v11;
      }

      while (v63 != v11);
      v56 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
      v63 = v56;
    }

    while (v56);
  }

  v57 = *MEMORY[0x277D85DE8];

  return v62;
}

- (void)authenticateIfNecessaryForSuggestion:(id)a3 documentTraits:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __103__AFSuggestionGenerationManager_authenticateIfNecessaryForSuggestion_documentTraits_completionHandler___block_invoke;
  v23[3] = &unk_278CF69C8;
  v11 = v10;
  v24 = v11;
  v12 = MEMORY[0x245CF1A60](v23);
  v13 = [v8 usernameAndPasswordPayload];
  v14 = [v13 count];

  if (v14)
  {
    v15 = +[AFCredentialManager sharedInstance];
    v16 = [v8 usernameAndPasswordPayload];
LABEL_5:
    v19 = v16;
    [v15 shouldAcceptAutoFill:v8 withPayload:v16 documentTraits:v9 completionHandler:v12];

    goto LABEL_6;
  }

  v17 = [v8 oneTimeCodePayload];
  v18 = [v17 count];

  if (v18)
  {
    v15 = +[AFCredentialManager sharedInstance];
    v16 = [v8 oneTimeCodePayload];
    goto LABEL_5;
  }

  v20 = [v8 creditCardPayload];
  v21 = [v20 count];

  if (v21)
  {
    v22 = [v8 creditCardPayload];
    [(AFSuggestionGenerationManager *)self authenticateIfNecessaryForCreditCardSuggestion:v8 withPayload:v22 documentTraits:v9 completionHandler:v11];
  }

  else
  {
    (*(v11 + 2))(v11, 1, 0);
  }

LABEL_6:
}

- (BOOL)shouldAuthenticateToAcceptAutoFill
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v2 = getMCProfileConnectionClass_softClass;
  v19 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __getMCProfileConnectionClass_block_invoke;
    v14 = &unk_278CF6A18;
    v15 = &v16;
    __getMCProfileConnectionClass_block_invoke(&v11);
    v2 = v17[3];
  }

  v3 = v2;
  _Block_object_dispose(&v16, 8);
  v4 = [v2 sharedConnection];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v5 = getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr;
  v19 = getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr;
  if (!getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_block_invoke;
    v14 = &unk_278CF6A18;
    v15 = &v16;
    v6 = ManagedConfigurationLibrary();
    v7 = dlsym(v6, "MCFeatureAuthenticationBeforeAutoFillRequired");
    *(v15[1] + 24) = v7;
    getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr = *(v15[1] + 24);
    v5 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v5)
  {
    v10 = [AFSuggestionGenerationManager shouldAuthenticateToAcceptAutoFill];
    _Block_object_dispose(&v16, 8);
    _Unwind_Resume(v10);
  }

  v8 = [v4 effectiveBoolValueForSetting:*v5] == 1;

  return v8;
}

- (void)authenticateIfNecessaryForCreditCardSuggestion:(id)a3 withPayload:(id)a4 documentTraits:(id)a5 completionHandler:(id)a6
{
  v51[4] = *MEMORY[0x277D85DE8];
  v38 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    if ([(AFSuggestionGenerationManager *)self shouldAuthenticateToAcceptAutoFill])
    {
      v44 = 0;
      v45 = &v44;
      v46 = 0x2050000000;
      v13 = getLAContextClass_softClass;
      v47 = getLAContextClass_softClass;
      if (!getLAContextClass_softClass)
      {
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __getLAContextClass_block_invoke;
        v43[3] = &unk_278CF6A18;
        v43[4] = &v44;
        __getLAContextClass_block_invoke(v43);
        v13 = v45[3];
      }

      v14 = v13;
      _Block_object_dispose(&v44, 8);
      v15 = objc_alloc_init(v13);
      [(AFSuggestionGenerationManager *)self setLaContext:v15];

      v36 = MGCopyAnswer();
      v16 = MEMORY[0x277CCACA8];
      v17 = +[AFSuggestionGenerationManager sharedInstance];
      v18 = [v17 localizationManager];
      v19 = [v18 localizedStringForKey:@"CREDIT_CARD_AUTH_PASSCODE_TITLE"];
      v42 = 0;
      v20 = [v16 stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:&v42, v36];
      v37 = v42;
      v21 = &stru_28537ABC8;
      if (v20)
      {
        v21 = v20;
      }

      v35 = v21;

      v22 = +[AFSuggestionGenerationManager sharedInstance];
      v23 = [v22 localizationManager];
      v24 = [v23 localizedStringForKey:@"CREDIT_CARD_AUTH_ALERT_TITLE"];

      if (v37)
      {
        v25 = AFCredentialManagerOSLogFacility();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [AFSuggestionGenerationManager authenticateIfNecessaryForCreditCardSuggestion:v37 withPayload:? documentTraits:? completionHandler:?];
        }
      }

      if (!v24)
      {
        [AFSuggestionGenerationManager authenticateIfNecessaryForCreditCardSuggestion:withPayload:documentTraits:completionHandler:];
      }

      if ([v11 processId])
      {
        v50[0] = &unk_28537C450;
        v50[1] = &unk_28537C468;
        v51[0] = v24;
        v51[1] = v35;
        v51[2] = MEMORY[0x277CBEC38];
        v50[2] = &unk_28537C480;
        v50[3] = &unk_28537C498;
        v26 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "processId")}];
        v51[3] = v26;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:4];
      }

      else
      {
        v48[0] = &unk_28537C450;
        v48[1] = &unk_28537C468;
        v49[0] = v24;
        v49[1] = v35;
        v48[2] = &unk_28537C480;
        v49[2] = MEMORY[0x277CBEC38];
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
      }

      v28 = [(AFSuggestionGenerationManager *)self laContext];
      v41 = 0;
      v29 = [v28 canEvaluatePolicy:2 error:&v41];
      v30 = v41;

      [(AFSuggestionGenerationManager *)self laContext];
      if (v29)
        v31 = {;
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __125__AFSuggestionGenerationManager_authenticateIfNecessaryForCreditCardSuggestion_withPayload_documentTraits_completionHandler___block_invoke;
        v39[3] = &unk_278CF69F0;
        v39[4] = self;
        v40 = v12;
        [v31 evaluatePolicy:2 options:v27 reply:v39];

        v32 = v40;
      }

      else
        v32 = {;
        v33 = [v32 externalizedContext];
        (*(v12 + 2))(v12, 1, v33);
      }
    }

    else
    {
      (*(v12 + 2))(v12, 1, 0);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __125__AFSuggestionGenerationManager_authenticateIfNecessaryForCreditCardSuggestion_withPayload_documentTraits_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __125__AFSuggestionGenerationManager_authenticateIfNecessaryForCreditCardSuggestion_withPayload_documentTraits_completionHandler___block_invoke_2;
  v7[3] = &unk_278CF6978;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v10 = v4;
  v6 = v3;
  AFDispatchAsync(MEMORY[0x277D85CD0], v7);
}

void __125__AFSuggestionGenerationManager_authenticateIfNecessaryForCreditCardSuggestion_withPayload_documentTraits_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32) != 0;
  v4 = [*(a1 + 40) laContext];
  v3 = [v4 externalizedContext];
  (*(v1 + 16))(v1, v2, v3);
}

void __101__AFSuggestionGenerationManager_generateCreditCardAutoFillWithCompletionHandler_externalizedContext___block_invoke_3_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCACA8];
  v10 = [*(a1 + 32) count];
  v2 = [v1 stringWithFormat:@"%s Generated %lu credit card suggestions"];
  OUTLINED_FUNCTION_2(&dword_2418BE000, v3, v4, "%@", v5, v6, v7, v8, "[AFSuggestionGenerationManager generateCreditCardAutoFillWithCompletionHandler:externalizedContext:]_block_invoke_3", v10, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)generateContactAutoFillSuggestionsWithTextPrefix:(void *)a1 documentTraits:(uint8_t *)buf completionHandler:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_2418BE000, log, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
}

void __115__AFSuggestionGenerationManager_generateContactAutoFillSuggestionsWithTextPrefix_documentTraits_completionHandler___block_invoke_cold_1(uint64_t a1, double a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Error returned from InputContext: %@, response time = %lf seconds", "-[AFSuggestionGenerationManager generateContactAutoFillSuggestionsWithTextPrefix:documentTraits:completionHandler:]_block_invoke", a1, *&a2];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __115__AFSuggestionGenerationManager_generateContactAutoFillSuggestionsWithTextPrefix_documentTraits_completionHandler___block_invoke_cold_2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s There were no prediction results."];
  OUTLINED_FUNCTION_2(&dword_2418BE000, v1, v2, "%@", v3, v4, v5, v6, "[AFSuggestionGenerationManager generateContactAutoFillSuggestionsWithTextPrefix:documentTraits:completionHandler:]_block_invoke", v8, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)generateSuggestionsForContactAutoFill:textPrefix:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ERROR: invalid localized format for key LOCATION_AGGREGATED_NAME_AND_ADDRESS: %@", "-[AFSuggestionGenerationManager generateSuggestionsForContactAutoFill:textPrefix:]", v2];
  *v1 = 138412290;
  *v0 = v3;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v1, 0xCu);
}

- (void)generateSuggestionsForContactAutoFill:textPrefix:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v3 = MEMORY[0x277CCACA8];
  v5 = [v4 value];
  v6 = [v3 stringWithFormat:@"%s Rendering results with value= %@", "-[AFSuggestionGenerationManager generateSuggestionsForContactAutoFill:textPrefix:]", v5];
  *v2 = 138412290;
  *v1 = v6;
  _os_log_debug_impl(&dword_2418BE000, v0, OS_LOG_TYPE_DEBUG, "%@", v2, 0xCu);
}

- (void)generateSuggestionsForContactAutoFill:textPrefix:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ERROR: invalid localized format for key PARENTHESIZED_LABEL: %@", "-[AFSuggestionGenerationManager generateSuggestionsForContactAutoFill:textPrefix:]", v2];
  *v1 = 138412290;
  *v0 = v3;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v1, 0xCu);
}

- (uint64_t)shouldAuthenticateToAcceptAutoFill
{
  dlerror();
  v0 = abort_report_np();
  return [AFSuggestionGenerationManager authenticateIfNecessaryForCreditCardSuggestion:v0 withPayload:? documentTraits:? completionHandler:?];
}

- (void)authenticateIfNecessaryForCreditCardSuggestion:(uint64_t)a1 withPayload:documentTraits:completionHandler:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s invalid localized format for key CREDIT_CARD_AUTH_PASSCODE_TITLE: %@", "-[AFSuggestionGenerationManager authenticateIfNecessaryForCreditCardSuggestion:withPayload:documentTraits:completionHandler:]", a1];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end