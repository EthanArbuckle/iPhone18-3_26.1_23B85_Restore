@interface INIntentDeliverer
+ (void)initialize;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)_updateIntent:(id)a3 intentSlotDescription:(id)a4 resolutionResultDataProvider:(id)a5;
- (INIntentDeliverer)initWithQueue:(id)a3 auditToken:(id *)a4;
- (INIntentDeliveringDelegate)delegate;
- (id)_processIntentResponseCompletionHandlerWithIntent:(id)a3 completion:(id)a4;
- (id)_processOptionsForIntent:(id)a3 parameterNamed:(id)a4 completionHandler:(id)a5;
- (id)_processResolutionDataProviderForIntent:(id)a3 intentSlotDescription:(id)a4 updateIntent:(BOOL)a5 completion:(id)a6;
- (void)_deliverIntent:(id)a3 withBlock:(id)a4;
- (void)_invokeIntentHandlerMethodForIntent:(id)a3 intentHandler:(id)a4 parameterNamed:(id)a5 keyForSelectors:(id)a6 executionHandler:(id)a7 unimplementedHandler:(id)a8;
- (void)_processDefaultValue:(id)a3 forIntent:(id)a4 parameterNamed:(id)a5 completionHandler:(id)a6;
- (void)_processIntent:(id)a3 intentResponse:(id)a4 completion:(id)a5;
- (void)_resolveIntentParameter:(id)a3 forIntent:(id)a4 intentHandler:(id)a5 updateIntent:(BOOL)a6 withCompletion:(id)a7;
- (void)_startSendingUpdatesForIntent:(id)a3 toObserver:(id)a4 fromConnection:(id)a5 completionHandler:(id)a6;
- (void)_stopSendingUpdatesForIntent:(id)a3 fromConnection:(id)a4 completionHandler:(id)a5;
- (void)confirmIntent:(id)a3 withCompletion:(id)a4;
- (void)getIntentParameterDefaultValue:(id)a3 forIntent:(id)a4 completionBlock:(id)a5;
- (void)getIntentParameterOptions:(id)a3 forIntent:(id)a4 searchTerm:(id)a5 completionBlock:(id)a6;
- (void)getParameterOptionsForParameterNamed:(id)a3 intent:(id)a4 searchTerm:(id)a5 completionBlock:(id)a6;
- (void)getSupportsParameterOptionsForParameterNamed:(id)a3 intent:(id)a4 completionHandler:(id)a5;
- (void)handleIntent:(id)a3 withCompletion:(id)a4;
- (void)resolveIntentParameter:(id)a3 forIntent:(id)a4 completionBlock:(id)a5;
- (void)resolveIntentParameters:(id)a3 forIntent:(id)a4 completionBlock:(id)a5;
- (void)startSendingUpdatesForIntent:(id)a3 toObserver:(id)a4 completionHandler:(id)a5;
- (void)stopSendingUpdatesForIntent:(id)a3 completionHandler:(id)a4;
@end

@implementation INIntentDeliverer

+ (void)initialize
{
  if (objc_opt_class() == a1 && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

- (INIntentDeliveringDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[6];
  *retstr->var0 = *&self[1].var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)_stopSendingUpdatesForIntent:(id)a3 fromConnection:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__INIntentDeliverer__stopSendingUpdatesForIntent_fromConnection_completionHandler___block_invoke;
  v14[3] = &unk_1E7285940;
  v15 = v8;
  v16 = self;
  v17 = v9;
  v18 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(INIntentDeliverer *)self _deliverIntent:v13 withBlock:v14];
}

void __83__INIntentDeliverer__stopSendingUpdatesForIntent_fromConnection_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 40) getRideStatusObserver];
    [v4 setObserver:0 forConnection:*(a1 + 48)];

    v5 = [*(a1 + 40) getRideStatusObserver];
    v6 = [v5 remoteObservers];
    v7 = [v6 count];

    if (!v7)
    {
      [v14 stopSendingUpdatesForGetRideStatus:*(a1 + 32)];
      [*(a1 + 40) setGetRideStatusObserver:0];
    }
  }

  else
  {
    v8 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v9 = [*(a1 + 40) getCarPowerLevelObserver];
      [v9 setObserver:0 forConnection:*(a1 + 48)];

      v10 = [*(a1 + 40) getCarPowerLevelObserver];
      v11 = [v10 remoteObservers];
      v12 = [v11 count];

      if (!v12)
      {
        [v14 stopSendingUpdatesForGetCarPowerLevelStatus:*(a1 + 32)];
        [*(a1 + 40) setGetCarPowerLevelObserver:0];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [v14 stopSendingUpdatesForIntent:*(a1 + 32) completionHandler:*(a1 + 56)];
    }
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

- (void)_startSendingUpdatesForIntent:(id)a3 toObserver:(id)a4 fromConnection:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v11)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __95__INIntentDeliverer__startSendingUpdatesForIntent_toObserver_fromConnection_completionHandler___block_invoke;
    v15[3] = &unk_1E7285918;
    v16 = v10;
    v17 = v12;
    v18 = self;
    v19 = v11;
    v20 = v14;
    [(INIntentDeliverer *)self _deliverIntent:v16 withBlock:v15];
  }

  else if (v13)
  {
    (*(v13 + 2))(v13);
  }
}

void __95__INIntentDeliverer__startSendingUpdatesForIntent_toObserver_fromConnection_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    if (*(a1 + 40))
    {
      v5 = [*(a1 + 48) getRideStatusObserver];

      v6 = *(a1 + 48);
      if (v5)
      {
        v7 = [*(a1 + 48) getRideStatusObserver];
LABEL_11:
        v11 = v7;
        [v7 setObserver:*(a1 + 56) forConnection:*(a1 + 40)];

        goto LABEL_22;
      }

      v15 = objc_alloc_init(INExtensionContextIntentResponseObserver);
      [v6 setGetRideStatusObserver:v15];

      v16 = [*(a1 + 48) getRideStatusObserver];
      [v16 setObserver:*(a1 + 56) forConnection:*(a1 + 40)];

      v17 = *(a1 + 32);
      v18 = [*(a1 + 48) getRideStatusObserver];
      [v3 startSendingUpdatesForGetRideStatus:v17 toObserver:v18];
LABEL_21:

      goto LABEL_22;
    }

    v13 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    v24 = 136315138;
    v25 = "[INIntentDeliverer _startSendingUpdatesForIntent:toObserver:fromConnection:completionHandler:]_block_invoke";
    v14 = "%s Attemping to start getting ride status update without the caller connection. Request is ignored.";
    goto LABEL_18;
  }

  v8 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    if (*(a1 + 40))
    {
      v9 = [*(a1 + 48) getCarPowerLevelObserver];

      v10 = *(a1 + 48);
      if (v9)
      {
        v7 = [*(a1 + 48) getCarPowerLevelObserver];
        goto LABEL_11;
      }

      v19 = objc_alloc_init(INExtensionContextIntentResponseObserver);
      [v10 setGetCarPowerLevelObserver:v19];

      v20 = [*(a1 + 48) getCarPowerLevelObserver];
      [v20 setObserver:*(a1 + 56) forConnection:*(a1 + 40)];

      v21 = *(a1 + 32);
      v18 = [*(a1 + 48) getCarPowerLevelObserver];
      [v3 startSendingUpdatesForGetCarPowerLevelStatus:v21 toObserver:v18];
      goto LABEL_21;
    }

    v13 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    v24 = 136315138;
    v25 = "[INIntentDeliverer _startSendingUpdatesForIntent:toObserver:fromConnection:completionHandler:]_block_invoke";
    v14 = "%s Attemping to start getting car battery level update without the caller connection. Request is ignored.";
LABEL_18:
    _os_log_fault_impl(&dword_18E991000, v13, OS_LOG_TYPE_FAULT, v14, &v24, 0xCu);
    goto LABEL_22;
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 startSendingUpdatesForIntent:*(a1 + 32) toObserver:*(a1 + 56) completionHandler:*(a1 + 64)];
  }

LABEL_22:
  v22 = *(a1 + 64);
  if (v22)
  {
    (*(v22 + 16))(v22, v12);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_deliverIntent:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__INIntentDeliverer__deliverIntent_withBlock___block_invoke;
    block[3] = &unk_1E72858F0;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(queue, block);
  }
}

void __46__INIntentDeliverer__deliverIntent_withBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 intentDeliverer:*(a1 + 32) deliverIntent:*(a1 + 40) withBlock:*(a1 + 48)];
}

- (void)_processIntent:(id)a3 intentResponse:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    [v9 _intents_prepareResponse];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__INIntentDeliverer__processIntent_intentResponse_completion___block_invoke_2;
    v11[3] = &unk_1E72858C8;
    v12 = v9;
    v13 = v8;
    v14 = self;
    v15 = v10;
    INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler(v12, 0x21u, 1, 0, &__block_literal_global_100458, v11, 180.0, 180.0);
  }
}

void __62__INIntentDeliverer__processIntent_intentResponse_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 32);
      *buf = 136315650;
      *&buf[4] = "[INIntentDeliverer _processIntent:intentResponse:completion:]_block_invoke_2";
      *&buf[12] = 2112;
      *&buf[14] = v32;
      *&buf[22] = 2112;
      *&buf[24] = v6;
      _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Error injecting image proxies into intent response %@: %@", buf, 0x20u);
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = v5;
  if ((isKindOfClass & 1) == 0)
  {
    v9 = *(a1 + 32);
  }

  v10 = v9;
  memset(buf, 0, 32);
  v11 = [*(a1 + 40) _metadata];
  v12 = [v11 auditTokenData];
  v35 = v5;
  v33 = a1;
  if (v12)
  {
    v13 = [*(a1 + 40) _metadata];
    v14 = [v13 auditTokenData];
    v15 = v14;
    if (v14)
    {
      [v14 if_auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }
  }

  else
  {
    v16 = *(a1 + 48);
    if (v16)
    {
      [v16 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }
  }

  v34 = v6;

  v46[0] = *buf;
  v46[1] = *&buf[16];
  INIssueSandboxExtensionsForFileURLEnumerableToProcess(v10, v46);
  v17 = objc_opt_class();
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __62__INIntentDeliverer__processIntent_intentResponse_completion___block_invoke_137;
  v43[3] = &__block_descriptor_64_e15_B16__0__NSURL_8l;
  v44 = *buf;
  v45 = *&buf[16];
  [v10 _intents_enumerateObjectsOfClass:v17 withBlock:v43];
  v18 = +[INCache sharedCache];
  v19 = [MEMORY[0x1E695DFA8] set];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v20 = [v10 _intents_cacheableObjects];
  v21 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v40;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v40 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v39 + 1) + 8 * i);
        v26 = [v25 cacheIdentifier];
        v27 = [v18 cacheableObjectForIdentifier:v26];

        if (v27)
        {
          v28 = v27;
        }

        else
        {
          v28 = v25;
        }

        [v19 addObject:v28];
      }

      v22 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v22);
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __62__INIntentDeliverer__processIntent_intentResponse_completion___block_invoke_2_140;
  v36[3] = &unk_1E7287168;
  v29 = *(v33 + 56);
  v37 = v10;
  v38 = v29;
  v30 = v10;
  [INSerializedCacheItem serializeCacheableObjects:v19 completion:v36];

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t __62__INIntentDeliverer__processIntent_intentResponse_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = a2;
  v4 = [v2 mainBundle];
  v5 = [v4 bundleIdentifier];
  [v3 _setBundleIdentifier:v5];

  return 1;
}

uint64_t __62__INIntentDeliverer__processIntent_intentResponse_completion___block_invoke_137(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isFileURL];
  if (v4)
  {
    v5 = *(a1 + 48);
    v7[0] = *(a1 + 32);
    v7[1] = v5;
    INFileURLSetAssociatedAuditToken(v3, v7);
  }

  return v4;
}

void __62__INIntentDeliverer__processIntent_intentResponse_completion___block_invoke_2_140(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v11 = 136315394;
    v12 = "[INIntentDeliverer _processIntent:intentResponse:completion:]_block_invoke_2";
    v13 = 2048;
    v14 = [v3 count];
    _os_log_impl(&dword_18E991000, v5, OS_LOG_TYPE_INFO, "%s Sending %tu serialized cache items.", &v11, 0x16u);
  }

  v8 = a1 + 32;
  v6 = *(a1 + 32);
  v7 = *(v8 + 8);
  v9 = [MEMORY[0x1E695DFD8] setWithSet:v3];
  (*(v7 + 16))(v7, v6, 0, v9, 0);

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_updateIntent:(id)a3 intentSlotDescription:(id)a4 resolutionResultDataProvider:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = 0;
  if (v7 && v8 && v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v10;
        v25 = [v24 resolutionResultCode];
        if ((v25 - 1) >= 4 && v25 != 6)
        {
          if (v25)
          {
            v26 = 0;
          }

          else
          {
            v26 = [v24 resolvedValue];
          }

LABEL_47:
          v34 = [v8 facadePropertyName];
          v35 = [v7 _intents_setterForPropertyWithName:v34];

          if (v35)
          {
            if (v26 || ![v8 isEnum])
            {
              v37 = [v8 facadePropertyName];
              [v7 setValue:v26 forKey:v37];
            }

            else
            {
              v36 = [v8 facadePropertyName];
              [v7 setValue:&unk_1F02D8410 forKey:v36];

              v26 = 0;
            }

            v11 = 1;
            goto LABEL_56;
          }

          v38 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
          {
            v41 = v38;
            v42 = [v8 facadePropertyName];
            *buf = 136315394;
            v48 = "[INIntentDeliverer _updateIntent:intentSlotDescription:resolutionResultDataProvider:]";
            v49 = 2114;
            v50 = v42;
            _os_log_error_impl(&dword_18E991000, v41, OS_LOG_TYPE_ERROR, "%s Setter for property %{public}@ is not defined or invalid", buf, 0x16u);
          }

LABEL_55:
          v11 = 0;
LABEL_56:

          goto LABEL_57;
        }
      }

      v26 = 0;
      goto LABEL_55;
    }

    v12 = v10;
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v44;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v43 + 1) + 8 * i);
          v20 = [v19 resolutionResultCode];
          if (v20)
          {
            if ((v20 - 1) < 4 || v20 == 6)
            {
              v27 = 0;
              goto LABEL_27;
            }
          }

          else
          {
            v22 = [v19 resolvedValue];

            if (v22)
            {
              v23 = [v19 resolvedValue];
              [v13 addObject:v23];
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v43 objects:v51 count:16];
        v27 = 1;
      }

      while (v16);
    }

    else
    {
      v27 = 1;
    }

LABEL_27:

    v28 = [v8 facadePropertyName];
    if ([v7 _isValidKey:v28])
    {
      v29 = [v8 facadePropertyName];
      v30 = [v7 valueForKey:v29];

      v31 = v30;
      if (v31)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        goto LABEL_34;
      }
    }

    else
    {

      v31 = 0;
    }

    v32 = 0;
LABEL_34:
    v33 = v32;

    if (!v27)
    {
      goto LABEL_42;
    }

    if ([v13 count])
    {
      v26 = [v13 copy];
      goto LABEL_43;
    }

    if (v33 && ![v33 count])
    {
      v26 = MEMORY[0x1E695E0F0];
    }

    else
    {
LABEL_42:
      v26 = 0;
    }

LABEL_43:

    if ((v27 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_47;
  }

LABEL_57:

  v39 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)_processDefaultValue:(id)a3 forIntent:(id)a4 parameterNamed:(id)a5 completionHandler:(id)a6
{
  v77 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v9)
  {
    v14 = [v10 _intentInstanceDescription];
    v15 = [v14 slotByName:v11];

    v69 = v15;
    v16 = [v15 codableAttribute];
    if (!v16)
    {
      v17 = [v10 _codableDescription];
      v16 = [v17 attributeByName:v11];
    }

    v70 = v11;
    v18 = [v16 objectClass];
    v19 = v16;
    if (v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    if (v18 == objc_opt_class() && v21)
    {
      v22 = v21;
      v23 = [v21 codableDescription];
      v24 = [v23 className];
      v25 = objc_opt_class();
      v26 = NSClassFromString(v24);
      if (v26)
      {
        v27 = v26;
        if ([(objc_class *)v26 isSubclassOfClass:v25])
        {
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        v26 = v28;
      }

      v18 = v26;

      v21 = v22;
    }

    if (!v18)
    {
      v54 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_INExtensionContextErrorDomain" code:1000 userInfo:0];
      (v13)[2](v13, 0, v54);

      v55 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Undefined parameter class" userInfo:0];
      objc_exception_throw(v55);
    }

    v29 = objc_alloc_init(INJSONEncoder);
    objc_opt_class();
    v68 = v21;
    if (objc_opt_isKindOfClass())
    {
      v65 = v10;
      v67 = v13;
      v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v66 = v9;
      v31 = v9;
      v32 = [v31 countByEnumeratingWithState:&v72 objects:v76 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v73;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v73 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v72 + 1) + 8 * i);
            if (([v36 isMemberOfClass:v18] & 1) == 0)
            {
              v45 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_INExtensionContextErrorDomain" code:1001 userInfo:0];
              (v67)[2](v67, 0, v45);

              v46 = MEMORY[0x1E695DF30];
              v47 = *MEMORY[0x1E695D930];
              v48 = MEMORY[0x1E696AEC0];
              v49 = objc_opt_class();
              v50 = NSStringFromClass(v49);
              v51 = [v48 stringWithFormat:@"Unexpected class %@", v50];
              v52 = [v46 exceptionWithName:v47 reason:v51 userInfo:0];
              v53 = v52;

              objc_exception_throw(v52);
            }

            v37 = INObjectWithTypedObject(v36, v19);
            if (v37)
            {
              v38 = [(INJSONEncoder *)v29 encodeObject:v37 withCodableAttribute:v19];
              [v30 if_addObjectIfNonNil:v38];
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v72 objects:v76 count:16];
        }

        while (v33);
      }

      if ([v30 count])
      {
        v39 = [v30 copy];
      }

      else
      {
        v39 = 0;
      }

      v13 = v67;
      v41 = v69;
      v11 = v70;

      v10 = v65;
      v9 = v66;
      if (!v39)
      {
LABEL_37:
        v13[2](v13, 0, 0);
        goto LABEL_38;
      }
    }

    else
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v56 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_INExtensionContextErrorDomain" code:1001 userInfo:0];
        (v13)[2](v13, 0, v56);

        v57 = MEMORY[0x1E695DF30];
        v58 = *MEMORY[0x1E695D930];
        v59 = MEMORY[0x1E696AEC0];
        v60 = objc_opt_class();
        v61 = NSStringFromClass(v60);
        v62 = [v59 stringWithFormat:@"Unexpected class %@", v61];
        v63 = [v57 exceptionWithName:v58 reason:v62 userInfo:0];
        v64 = v63;

        objc_exception_throw(v63);
      }

      v40 = INObjectWithTypedObject(v9, v19);
      v39 = [(INJSONEncoder *)v29 encodeObject:v40 withCodableAttribute:v19];

      v41 = v69;
      v11 = v70;
      if (!v39)
      {
        goto LABEL_37;
      }
    }

    v71 = 0;
    v42 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v39 requiringSecureCoding:1 error:&v71];
    v43 = v71;
    (v13)[2](v13, v42, v43);

LABEL_38:
    goto LABEL_39;
  }

  (*(v12 + 2))(v12, 0, 0);
LABEL_39:

  v44 = *MEMORY[0x1E69E9840];
}

- (id)_processOptionsForIntent:(id)a3 parameterNamed:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__INIntentDeliverer__processOptionsForIntent_parameterNamed_completionHandler___block_invoke;
  v15[3] = &unk_1E7285860;
  v18 = v9;
  v19 = v20;
  v16 = v7;
  v17 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v9;
  v13 = MEMORY[0x193AD7780](v15);

  _Block_object_dispose(v20, 8);

  return v13;
}

void __79__INIntentDeliverer__processOptionsForIntent_parameterNamed_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v52 = "[INIntentDeliverer _processOptionsForIntent:parameterNamed:completionHandler:]_block_invoke";
    v53 = 2112;
    v54 = v5;
    v55 = 2112;
    v56 = v6;
    _os_log_impl(&dword_18E991000, v7, OS_LOG_TYPE_INFO, "%s Completion handler called with objectCollection: %@, error: %@", buf, 0x20u);
  }

  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v33 = MEMORY[0x1E695DF30];
    v34 = *MEMORY[0x1E695D930];
    v35 = @"This completion handler should be called only once";
    goto LABEL_31;
  }

  if (!v6)
  {
    if (!v5)
    {
      v10 = *(*(a1 + 48) + 16);
      goto LABEL_16;
    }

    v11 = [*(a1 + 32) _intentInstanceDescription];
    v12 = [v11 slotByName:*(a1 + 40)];

    v13 = [v12 codableAttribute];
    if (!v13)
    {
      v14 = [*(a1 + 32) _codableDescription];
      v13 = [v14 attributeByName:*(a1 + 40)];
    }

    v15 = [v13 objectClass];
    v16 = v13;
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v21 = v17;

    if (v15 == objc_opt_class() && v21)
    {
      v22 = [v21 codableDescription];
      v23 = [v22 className];
      v24 = objc_opt_class();
      v25 = NSClassFromString(v23);
      if (v25)
      {
        v26 = v25;
        if ([(objc_class *)v25 isSubclassOfClass:v24])
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        v25 = v27;
      }

      v15 = v25;
    }

    if (v15)
    {
      v48 = 0;
      v28 = [v5 _untypedObjectCollectionWithItemClass:v15 codableAttribute:v16 error:&v48];
      v29 = v48;
      if (!v28)
      {
        v39 = *(a1 + 48);
        v40 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_INExtensionContextErrorDomain" code:1001 userInfo:0];
        (*(v39 + 16))(v39, 0, v40);

        v41 = MEMORY[0x1E695DF30];
        v42 = *MEMORY[0x1E695D930];
        v43 = [v29 userInfo];
        v44 = [v43 objectForKeyedSubscript:*MEMORY[0x1E696A578]];
        v45 = [v41 exceptionWithName:v42 reason:v44 userInfo:0];
        v46 = v45;

        objc_exception_throw(v45);
      }

      v47 = 0;
      v30 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v28 requiringSecureCoding:1 error:&v47];
      v31 = v47;
      (*(*(a1 + 48) + 16))();
      *(*(*(a1 + 56) + 8) + 24) = 1;

      goto LABEL_29;
    }

    v37 = *(a1 + 48);
    v38 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_INExtensionContextErrorDomain" code:1000 userInfo:0];
    (*(v37 + 16))(v37, 0, v38);

    v33 = MEMORY[0x1E695DF30];
    v34 = *MEMORY[0x1E695D930];
    v35 = @"Undefined parameter class";
LABEL_31:
    v36 = [v33 exceptionWithName:v34 reason:v35 userInfo:0];
    objc_exception_throw(v36);
  }

  v8 = [v6 domain];
  v9 = [v8 isEqualToString:@"_INExtensionContextErrorDomain"];

  if (v9)
  {
    v10 = *(*(a1 + 48) + 16);
LABEL_16:
    v10();
    goto LABEL_29;
  }

  v18 = MEMORY[0x1E696ABC0];
  v49 = *MEMORY[0x1E696AA08];
  v50 = v6;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  v20 = [v18 errorWithDomain:@"_INExtensionContextErrorDomain" code:1004 userInfo:v19];

  (*(*(a1 + 48) + 16))();
LABEL_29:

  v32 = *MEMORY[0x1E69E9840];
}

- (id)_processResolutionDataProviderForIntent:(id)a3 intentSlotDescription:(id)a4 updateIntent:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __107__INIntentDeliverer__processResolutionDataProviderForIntent_intentSlotDescription_updateIntent_completion___block_invoke;
  v18[3] = &unk_1E7285838;
  v22 = v12;
  v23 = v25;
  v19 = v10;
  v20 = v11;
  v24 = a5;
  v21 = self;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  v16 = MEMORY[0x193AD7780](v18);

  _Block_object_dispose(v25, 8);

  return v16;
}

void __107__INIntentDeliverer__processResolutionDataProviderForIntent_intentSlotDescription_updateIntent_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[INIntentDeliverer _processResolutionDataProviderForIntent:intentSlotDescription:updateIntent:completion:]_block_invoke";
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_18E991000, v4, OS_LOG_TYPE_INFO, "%s Completion handler called with %@", buf, 0x16u);
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This completion handler should be called only once" userInfo:0];
    objc_exception_throw(v13);
  }

  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __107__INIntentDeliverer__processResolutionDataProviderForIntent_intentSlotDescription_updateIntent_completion___block_invoke_116;
    v15[3] = &unk_1E7285838;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v19 = *(a1 + 72);
    v14 = *(a1 + 48);
    v9 = *(&v14 + 1);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v16 = v10;
    v17 = v14;
    v18 = *(a1 + 64);
    [v3 transformResolutionResultForIntent:v7 intentSlotDescription:v5 withOptionsProvider:v6 completion:v15];

    v11 = v16;
  }

  else
  {
    v11 = [[INExtensionContextSlotResolutionResult alloc] initWithResult:1 data:0];
    (*(*(a1 + 56) + 16))();
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __107__INIntentDeliverer__processResolutionDataProviderForIntent_intentSlotDescription_updateIntent_completion___block_invoke_116(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v11 = 0;
    v6 = [v3 resolutionResultDataForIntent:v4 intentSlotDescription:v5 error:&v11];
    v7 = v11;
    if (v7)
    {
      v8 = v7;
LABEL_8:
      v9 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 72) != 1)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v9 = [*(a1 + 48) _updateIntent:*(a1 + 32) intentSlotDescription:*(a1 + 40) resolutionResultDataProvider:v3] ^ 1;
LABEL_9:
  v10 = [[INExtensionContextSlotResolutionResult alloc] initWithResult:v9 data:v6];
  (*(*(a1 + 56) + 16))();
  *(*(*(a1 + 64) + 8) + 24) = 1;
}

- (id)_processIntentResponseCompletionHandlerWithIntent:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__INIntentDeliverer__processIntentResponseCompletionHandlerWithIntent_completion___block_invoke;
  v12[3] = &unk_1E7285810;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = v16;
  v8 = v7;
  v9 = v6;
  v10 = MEMORY[0x193AD7780](v12);

  _Block_object_dispose(v16, 8);

  return v10;
}

void __82__INIntentDeliverer__processIntentResponseCompletionHandlerWithIntent_completion___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[INIntentDeliverer _processIntentResponseCompletionHandlerWithIntent:completion:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_18E991000, v4, OS_LOG_TYPE_INFO, "%s Completion handler called with %@", &v10, 0x16u);
  }

  if (*(*(a1[7] + 8) + 24))
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This completion handler should be called only once" userInfo:0];
    objc_exception_throw(v9);
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = INIntentResponseWithTypedIntentResponse(v3);
  [v5 _processIntent:v6 intentResponse:v7 completion:a1[6]];

  *(*(a1[7] + 8) + 24) = 1;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_invokeIntentHandlerMethodForIntent:(id)a3 intentHandler:(id)a4 parameterNamed:(id)a5 keyForSelectors:(id)a6 executionHandler:(id)a7 unimplementedHandler:(id)a8
{
  v41 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = INTypedIntentWithIntent(a3);
  v20 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v21 = v20;
    v22 = [v19 typeName];
    *buf = 136315394;
    v38 = "[INIntentDeliverer _invokeIntentHandlerMethodForIntent:intentHandler:parameterNamed:keyForSelectors:executionHandler:unimplementedHandler:]";
    v39 = 2112;
    v40 = v22;
    _os_log_impl(&dword_18E991000, v21, OS_LOG_TYPE_INFO, "%s _invokeIntentHandlerMethodForIntent %@", buf, 0x16u);
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __140__INIntentDeliverer__invokeIntentHandlerMethodForIntent_intentHandler_parameterNamed_keyForSelectors_executionHandler_unimplementedHandler___block_invoke;
  v31[3] = &unk_1E72857E8;
  v35 = v17;
  v23 = v19;
  v32 = v23;
  v33 = v15;
  v34 = v16;
  v36 = v18;
  v24 = v18;
  v25 = v16;
  v26 = v15;
  v27 = v17;
  v28 = MEMORY[0x193AD7780](v31);
  v29 = v28;
  if (v14)
  {
    (*(v28 + 16))(v28, v14);
  }

  else
  {
    [(INIntentDeliverer *)self _deliverIntent:v23 withBlock:v28];
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __140__INIntentDeliverer__invokeIntentHandlerMethodForIntent_intentHandler_parameterNamed_keyForSelectors_executionHandler_unimplementedHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _intentInstanceDescription];
    v5 = v4;
    if (*(a1 + 40))
    {
      v6 = [v4 slotByName:?];
    }

    else
    {
      v6 = 0;
    }

    v8 = [v6 facadePropertyName];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = [v6 valueForKey:*(a1 + 48)];
    if (v9)
    {
      objc_opt_class();
      v10 = (objc_opt_isKindOfClass() & 1) != 0 ? v9 : 0;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __140__INIntentDeliverer__invokeIntentHandlerMethodForIntent_intentHandler_parameterNamed_keyForSelectors_executionHandler_unimplementedHandler___block_invoke_2;
    v12[3] = &unk_1E72857C0;
    v13 = v3;
    v17 = &v18;
    v16 = *(a1 + 56);
    v14 = *(a1 + 32);
    v15 = v6;
    [v11 enumerateObjectsUsingBlock:v12];

    if ((v19[3] & 1) == 0)
    {
LABEL_13:
      (*(*(a1 + 64) + 16))();
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v7 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __140__INIntentDeliverer__invokeIntentHandlerMethodForIntent_intentHandler_parameterNamed_keyForSelectors_executionHandler_unimplementedHandler___block_invoke_2(void *a1, NSString *aSelectorName, uint64_t a3, _BYTE *a4)
{
  result = NSSelectorFromString(aSelectorName);
  if (result)
  {
    v7 = a1[4];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v8 = a1[4];
      v9 = a1[5];
      v10 = a1[6];
      result = (*(a1[7] + 16))();
      *(*(a1[8] + 8) + 24) = result;
      if (*(*(a1[8] + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }
  }

  return result;
}

- (void)_resolveIntentParameter:(id)a3 forIntent:(id)a4 intentHandler:(id)a5 updateIntent:(BOOL)a6 withCompletion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v15)
  {
    if ([v13 _type] != 2)
    {
LABEL_22:
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __97__INIntentDeliverer__resolveIntentParameter_forIntent_intentHandler_updateIntent_withCompletion___block_invoke;
      v46[3] = &unk_1E7285748;
      v49 = v15;
      v47 = v13;
      v48 = self;
      v50 = a6;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __97__INIntentDeliverer__resolveIntentParameter_forIntent_intentHandler_updateIntent_withCompletion___block_invoke_2;
      v40[3] = &unk_1E7285798;
      v41 = v12;
      v42 = v47;
      v43 = self;
      v44 = v49;
      v45 = a6;
      [(INIntentDeliverer *)self _invokeIntentHandlerMethodForIntent:v42 intentHandler:v14 parameterNamed:v41 keyForSelectors:@"resolveSelectorStrings" executionHandler:v46 unimplementedHandler:v40];

      v17 = v49;
      goto LABEL_23;
    }

    v16 = [v13 _codableDescription];
    v17 = [v16 attributeByName:v12];

    if (![v17 supportsResolution])
    {
LABEL_21:

      goto LABEL_22;
    }

    v18 = [v17 relationship];
    v19 = [v18 parentCodableAttribute];

    if (v17 && v19)
    {
      v20 = [v17 relationship];
      v21 = [v20 relation];

      if (v21)
      {
        v22 = [v19 propertyName];
        v23 = [v13 valueForKey:v22];

        v24 = [v17 relationship];
        v38 = v23;
        LOBYTE(v23) = [v24 compareValue:v23];

        if ((v23 & 1) == 0)
        {
          v33 = [INExtensionContextSlotResolutionResult alloc];
          v34 = +[INIntentResolutionResult _dataForResolutionMethodUnimplemented];
          v35 = [(INExtensionContextSlotResolutionResult *)v33 initWithResult:2 data:v34];
          (*(v15 + 2))(v15, v35, 0);

          goto LABEL_17;
        }
      }
    }

    else if (!v17)
    {
LABEL_20:

      goto LABEL_21;
    }

    if (([v17 supportsDynamicEnumeration] & 1) == 0 && objc_msgSend(v17, "modifier"))
    {
      v51[0] = 0;
      v25 = [v13 _isValueValidForKey:v12 unsupportedReason:v51];
      v26 = v51[0];
      v27 = v26;
      if ((v25 & 1) == 0 && v26)
      {
        v28 = [v13 _intentInstanceDescription];
        if (v12)
        {
          v39 = v28;
          v36 = [v28 slotByName:v12];
          v37 = [v17 unsupportedReasons];
          v29 = +[INIntentResolutionResult unsupportedWithReason:](INIntentResolutionResult, "unsupportedWithReason:", [v37 indexOfObject:v27] + 1);
          v30 = [INExtensionContextSlotResolutionResult alloc];
          v31 = [v29 _dataForIntentSlotDescription:v36];
          v32 = [(INExtensionContextSlotResolutionResult *)v30 initWithResult:1 data:v31];
          (*(v15 + 2))(v15, v32, 0);

LABEL_17:
LABEL_23:

          goto LABEL_24;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_24:
}

BOOL __97__INIntentDeliverer__resolveIntentParameter_forIntent_intentHandler_updateIntent_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = [v9 methodForSelector:a3];
  if (v12)
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __97__INIntentDeliverer__resolveIntentParameter_forIntent_intentHandler_updateIntent_withCompletion___block_invoke_103;
    v25 = &unk_1E7285720;
    v27 = *(a1 + 48);
    v13 = v9;
    v26 = v13;
    v14 = MEMORY[0x193AD7780](&v22);
    v15 = *(a1 + 32);
    v16 = [*(a1 + 40) _processResolutionDataProviderForIntent:v15 intentSlotDescription:v11 updateIntent:*(a1 + 56) completion:{v14, v22, v23, v24, v25}];
    v12(v13, a3, v15, v16);
  }

  else
  {
    v17 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v20 = v17;
      v21 = [v11 facadePropertyName];
      *buf = 136315650;
      v29 = "[INIntentDeliverer _resolveIntentParameter:forIntent:intentHandler:updateIntent:withCompletion:]_block_invoke";
      v30 = 2114;
      v31 = v21;
      v32 = 2112;
      v33 = v10;
      _os_log_error_impl(&dword_18E991000, v20, OS_LOG_TYPE_ERROR, "%s Unable to find implementation of resolution method for facade slot name %{public}@ on intent %@", buf, 0x20u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v12 != 0;
}

void __97__INIntentDeliverer__resolveIntentParameter_forIntent_intentHandler_updateIntent_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [*(a1 + 32) if_ASCIIStringByUppercasingFirstCharacter];
  v9 = [v7 stringWithFormat:@"_intents_resolve%@WithCompletionHandler:", v8];

  v10 = NSSelectorFromString(v9);
  v11 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    v12 = [*(a1 + 40) methodForSelector:v10];
    v13 = *(a1 + 40);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __97__INIntentDeliverer__resolveIntentParameter_forIntent_intentHandler_updateIntent_withCompletion___block_invoke_3;
    v20[3] = &unk_1E7285770;
    v24 = *(a1 + 56);
    v21 = v5;
    v19 = *(a1 + 40);
    v14 = v19.i64[0];
    v22 = vextq_s8(v19, v19, 8uLL);
    v23 = v6;
    v25 = *(a1 + 64);
    v12(v13, v10, v20);
  }

  else
  {
    v15 = *(a1 + 56);
    v16 = [INExtensionContextSlotResolutionResult alloc];
    v17 = +[INIntentResolutionResult _dataForResolutionMethodUnimplemented];
    v18 = [(INExtensionContextSlotResolutionResult *)v16 initWithResult:2 data:v17];
    (*(v15 + 16))(v15, v18, v5);
  }
}

void __97__INIntentDeliverer__resolveIntentParameter_forIntent_intentHandler_updateIntent_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 72);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __97__INIntentDeliverer__resolveIntentParameter_forIntent_intentHandler_updateIntent_withCompletion___block_invoke_4;
    v13[3] = &unk_1E7285720;
    v7 = *(a1 + 56);
    v15 = *(a1 + 64);
    v14 = *(a1 + 32);
    v8 = [v4 _processResolutionDataProviderForIntent:v5 intentSlotDescription:v7 updateIntent:v6 completion:v13];
    (v8)[2](v8, v3);
  }

  else
  {
    v9 = *(a1 + 64);
    v10 = [INExtensionContextSlotResolutionResult alloc];
    v11 = +[INIntentResolutionResult _dataForResolutionMethodUnimplemented];
    v12 = [(INExtensionContextSlotResolutionResult *)v10 initWithResult:2 data:v11];
    (*(v9 + 16))(v9, v12, *(a1 + 32));
  }
}

- (void)getSupportsParameterOptionsForParameterNamed:(id)a3 intent:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__INIntentDeliverer_getSupportsParameterOptionsForParameterNamed_intent_completionHandler___block_invoke;
  v12[3] = &unk_1E72856F8;
  v13 = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__INIntentDeliverer_getSupportsParameterOptionsForParameterNamed_intent_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7285560;
  v11 = v13;
  v9 = v13;
  [(INIntentDeliverer *)self _invokeIntentHandlerMethodForIntent:a4 intentHandler:0 parameterNamed:a3 keyForSelectors:@"provideOptionsSelectorStrings" executionHandler:v12 unimplementedHandler:v10];
}

BOOL __91__INIntentDeliverer_getSupportsParameterOptionsForParameterNamed_intent_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 methodForSelector:?] != 0;
  (*(*(a1 + 32) + 16))();
  return v3;
}

- (void)getParameterOptionsForParameterNamed:(id)a3 intent:(id)a4 searchTerm:(id)a5 completionBlock:(id)a6
{
  v10 = a5;
  v11 = a6;
  if (v11)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __92__INIntentDeliverer_getParameterOptionsForParameterNamed_intent_searchTerm_completionBlock___block_invoke;
    v14[3] = &unk_1E72856D0;
    v15 = v10;
    v16 = v11;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __92__INIntentDeliverer_getParameterOptionsForParameterNamed_intent_searchTerm_completionBlock___block_invoke_2;
    v12[3] = &unk_1E7285560;
    v13 = v16;
    [(INIntentDeliverer *)self _invokeIntentHandlerMethodForIntent:a4 intentHandler:0 parameterNamed:a3 keyForSelectors:@"provideOptionsSelectorStrings" executionHandler:v14 unimplementedHandler:v12];
  }
}

uint64_t __92__INIntentDeliverer_getParameterOptionsForParameterNamed_intent_searchTerm_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = [v9 methodForSelector:a3];
  v13 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  v14 = [v13 numberOfArguments];
  if (v14 == 4)
  {
    if (v12)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __92__INIntentDeliverer_getParameterOptionsForParameterNamed_intent_searchTerm_completionBlock___block_invoke_94;
      v23[3] = &unk_1E72856A8;
      v24 = *(a1 + 40);
      v12(v9, a3, v10, v23);

      goto LABEL_7;
    }

    v20 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v17 = v20;
      v18 = [v11 facadePropertyName];
      *buf = 136315650;
      v26 = "[INIntentDeliverer getParameterOptionsForParameterNamed:intent:searchTerm:completionBlock:]_block_invoke";
      v27 = 2114;
      v28 = v18;
      v29 = 2112;
      v30 = v10;
      v19 = "%s Unable to find implementation of provide options method for facade parameter name %{public}@ on intent %@";
      goto LABEL_14;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  if (v14 != 5)
  {
    goto LABEL_11;
  }

  if (!v12)
  {
    v16 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
      v18 = [v11 facadePropertyName];
      *buf = 136315650;
      v26 = "[INIntentDeliverer getParameterOptionsForParameterNamed:intent:searchTerm:completionBlock:]_block_invoke";
      v27 = 2114;
      v28 = v18;
      v29 = 2112;
      v30 = v10;
      v19 = "%s Unable to find implementation of provide options with search term method for facade parameter name %{public}@ on intent %@";
LABEL_14:
      _os_log_error_impl(&dword_18E991000, v17, OS_LOG_TYPE_ERROR, v19, buf, 0x20u);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  (v12)(v9, a3, v10, *(a1 + 32), *(a1 + 40));
LABEL_7:
  v15 = 1;
LABEL_12:

  v21 = *MEMORY[0x1E69E9840];
  return v15;
}

void __92__INIntentDeliverer_getParameterOptionsForParameterNamed_intent_searchTerm_completionBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_INExtensionContextErrorDomain" code:1002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __92__INIntentDeliverer_getParameterOptionsForParameterNamed_intent_searchTerm_completionBlock___block_invoke_94(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = *(a1 + 32);
    if (isKindOfClass)
    {
      v8 = [[INObjectCollection alloc] initWithItems:v9];
      (*(v7 + 16))(v7, v8, v5);
    }

    else
    {
      (*(v7 + 16))(v7, 0, v5);
    }
  }
}

- (void)stopSendingUpdatesForIntent:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696B0B8] currentConnection];
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__INIntentDeliverer_stopSendingUpdatesForIntent_completionHandler___block_invoke;
  v13[3] = &unk_1E7285680;
  v13[4] = self;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  dispatch_async(queue, v13);
}

- (void)startSendingUpdatesForIntent:(id)a3 toObserver:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696B0B8] currentConnection];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__INIntentDeliverer_startSendingUpdatesForIntent_toObserver_completionHandler___block_invoke;
  block[3] = &unk_1E7285658;
  block[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v11;
  v21 = v10;
  v13 = v10;
  v14 = v11;
  v15 = v9;
  v16 = v8;
  dispatch_async(queue, block);
}

- (void)handleIntent:(id)a3 withCompletion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__INIntentDeliverer_handleIntent_withCompletion___block_invoke;
    v20[3] = &unk_1E72871D0;
    v21 = v7;
    v9 = MEMORY[0x193AD7780](v20);
    v10 = INTypedIntentWithIntent(v6);

    v11 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      v13 = [v10 typeName];
      *buf = 136315394;
      v23 = "[INIntentDeliverer handleIntent:withCompletion:]";
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_18E991000, v12, OS_LOG_TYPE_INFO, "%s handleIntent %@", buf, 0x16u);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __49__INIntentDeliverer_handleIntent_withCompletion___block_invoke_87;
    v16[3] = &unk_1E7285630;
    v6 = v10;
    v18 = self;
    v19 = v9;
    v17 = v6;
    v14 = v9;
    [(INIntentDeliverer *)self _deliverIntent:v6 withBlock:v16];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __49__INIntentDeliverer_handleIntent_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = INSiriLogContextIntents;
  if (v12)
  {
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[INIntentDeliverer handleIntent:withCompletion:]_block_invoke";
      v17 = 2112;
      v18 = v12;
      _os_log_error_impl(&dword_18E991000, v13, OS_LOG_TYPE_ERROR, "%s Returning handle response with error %@", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[INIntentDeliverer handleIntent:withCompletion:]_block_invoke";
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_18E991000, v13, OS_LOG_TYPE_INFO, "%s Returning handle response %@", &v15, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v14 = *MEMORY[0x1E69E9840];
}

void __49__INIntentDeliverer_handleIntent_withCompletion___block_invoke_87(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _intentInstanceDescription];
    v5 = [v4 handleSelector];
    if (v5)
    {
      v6 = v5;
      if (objc_opt_respondsToSelector())
      {
        v7 = [v3 methodForSelector:v6];
        if (v7)
        {
          v8 = v7;
          v9 = *(a1 + 32);
          v10 = [*(a1 + 40) _processIntentResponseCompletionHandlerWithIntent:v9 completion:*(a1 + 48)];
          v8(v3, v6, v9, v10);

          goto LABEL_20;
        }

        v12 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          v21 = *(a1 + 32);
          v22 = 136315394;
          v23 = "[INIntentDeliverer handleIntent:withCompletion:]_block_invoke";
          v24 = 2112;
          v25 = v21;
          _os_log_error_impl(&dword_18E991000, v12, OS_LOG_TYPE_ERROR, "%s Unable to find implementation of handling method for handling intent %@", &v22, 0x16u);
        }
      }
    }

    if ([*(a1 + 32) _type] == 2)
    {
      v13 = [*(a1 + 32) _codableDescription];
      v14 = [v13 isEligibleForWidgets];

      if (v14)
      {
        if (_os_feature_enabled_impl())
        {
          v15 = 4;
        }

        else
        {
          v15 = 2;
        }
      }

      else
      {
        v15 = 5;
      }

      v18 = [[INIntentResponse alloc] _initWithCode:v15 userActivity:0];
    }

    else
    {
      v16 = [v4 responseName];
      v17 = INIntentSchemaGetIntentResponseDescriptionWithName(v16);

      v18 = [objc_alloc(objc_msgSend(v17 "facadeClass"))];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v22 = 136315394;
      v23 = "[INIntentDeliverer handleIntent:withCompletion:]_block_invoke";
      v24 = 2112;
      v25 = v20;
      _os_log_error_impl(&dword_18E991000, v11, OS_LOG_TYPE_ERROR, "%s No handler for intent %@ provided by extension", &v22, 0x16u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"IntentsErrorDomain" code:2003 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }

LABEL_20:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)confirmIntent:(id)a3 withCompletion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __50__INIntentDeliverer_confirmIntent_withCompletion___block_invoke;
    v20[3] = &unk_1E72871D0;
    v21 = v7;
    v9 = MEMORY[0x193AD7780](v20);
    v10 = INTypedIntentWithIntent(v6);

    v11 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      v13 = [v10 typeName];
      *buf = 136315394;
      v23 = "[INIntentDeliverer confirmIntent:withCompletion:]";
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_18E991000, v12, OS_LOG_TYPE_INFO, "%s confirmIntent %@", buf, 0x16u);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__INIntentDeliverer_confirmIntent_withCompletion___block_invoke_84;
    v16[3] = &unk_1E7285630;
    v6 = v10;
    v18 = self;
    v19 = v9;
    v17 = v6;
    v14 = v9;
    [(INIntentDeliverer *)self _deliverIntent:v6 withBlock:v16];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __50__INIntentDeliverer_confirmIntent_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = INSiriLogContextIntents;
  if (v12)
  {
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[INIntentDeliverer confirmIntent:withCompletion:]_block_invoke";
      v17 = 2112;
      v18 = v12;
      _os_log_error_impl(&dword_18E991000, v13, OS_LOG_TYPE_ERROR, "%s Returning confirm response with error %@", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[INIntentDeliverer confirmIntent:withCompletion:]_block_invoke";
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_18E991000, v13, OS_LOG_TYPE_INFO, "%s Returning confirm response %@", &v15, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v14 = *MEMORY[0x1E69E9840];
}

void __50__INIntentDeliverer_confirmIntent_withCompletion___block_invoke_84(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _intentInstanceDescription];
    v5 = [v4 confirmSelector];
    if (v5)
    {
      v6 = v5;
      if (objc_opt_respondsToSelector())
      {
        v7 = [v3 methodForSelector:v6];
        if (v7)
        {
          v8 = v7;
          v9 = *(a1 + 32);
          v10 = [*(a1 + 40) _processIntentResponseCompletionHandlerWithIntent:v9 completion:*(a1 + 48)];
          v8(v3, v6, v9, v10);

          goto LABEL_15;
        }

        v12 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          v18 = *(a1 + 32);
          v19 = 136315394;
          v20 = "[INIntentDeliverer confirmIntent:withCompletion:]_block_invoke";
          v21 = 2112;
          v22 = v18;
          _os_log_error_impl(&dword_18E991000, v12, OS_LOG_TYPE_ERROR, "%s Unable to find implementation of confirmation method for handling intent %@", &v19, 0x16u);
        }
      }
    }

    if ([*(a1 + 32) _type] == 2)
    {
      v13 = [[INIntentResponse alloc] _initWithCode:1 userActivity:0];
    }

    else
    {
      v14 = [v4 responseName];
      v15 = INIntentSchemaGetIntentResponseDescriptionWithName(v14);

      v13 = [objc_alloc(objc_msgSend(v15 "facadeClass"))];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v19 = 136315394;
      v20 = "[INIntentDeliverer confirmIntent:withCompletion:]_block_invoke";
      v21 = 2112;
      v22 = v17;
      _os_log_error_impl(&dword_18E991000, v11, OS_LOG_TYPE_ERROR, "%s No handler for intent %@ provided by extension", &v19, 0x16u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"IntentsErrorDomain" code:2003 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }

LABEL_15:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)resolveIntentParameter:(id)a3 forIntent:(id)a4 completionBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = a3;
    v11 = INTypedIntentWithIntent(v8);

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__INIntentDeliverer_resolveIntentParameter_forIntent_completionBlock___block_invoke;
    v12[3] = &unk_1E7285600;
    v13 = v9;
    [(INIntentDeliverer *)self _resolveIntentParameter:v10 forIntent:v11 intentHandler:0 updateIntent:0 withCompletion:v12];

    v8 = v11;
  }
}

void __70__INIntentDeliverer_resolveIntentParameter_forIntent_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[INIntentDeliverer resolveIntentParameter:forIntent:completionBlock:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_18E991000, v4, OS_LOG_TYPE_INFO, "%s Returning parameter resolution result %@", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = [v3 data];
  (*(v5 + 16))(v5, v6);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)resolveIntentParameters:(id)a3 forIntent:(id)a4 completionBlock:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v20 = a4;
  v7 = a5;
  if (v7)
  {
    v19 = v7;
    v8 = INTypedIntentWithIntent(v20);
    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    queue = dispatch_queue_create("INCExtensionContextBatchSlotResolutionQueue", v18);
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v21, "count")}];
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2020000000;
    v42 = 1;
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = __Block_byref_object_copy__100537;
    v39[4] = __Block_byref_object_dispose__100538;
    v40 = 0;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v21;
    v10 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v10)
    {
      v11 = *v36;
      do
      {
        v12 = 0;
        do
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v35 + 1) + 8 * v12);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __71__INIntentDeliverer_resolveIntentParameters_forIntent_completionBlock___block_invoke;
          block[3] = &unk_1E72855B0;
          v33 = v41;
          block[4] = self;
          block[5] = v13;
          v31 = v8;
          v34 = v39;
          v32 = v9;
          dispatch_async(queue, block);

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v10);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__INIntentDeliverer_resolveIntentParameters_forIntent_completionBlock___block_invoke_3;
    v25[3] = &unk_1E72855D8;
    v14 = v8;
    v26 = v8;
    v27 = v9;
    v28 = v19;
    v29 = v41;
    v15 = v9;
    v16 = v14;
    dispatch_async(queue, v25);

    _Block_object_dispose(v39, 8);
    _Block_object_dispose(v41, 8);

    v7 = v19;
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __71__INIntentDeliverer_resolveIntentParameters_forIntent_completionBlock___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v17 = v1;
    v18 = v2;
    v4 = dispatch_semaphore_create(0);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(*(*(a1 + 72) + 8) + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__INIntentDeliverer_resolveIntentParameters_forIntent_completionBlock___block_invoke_2;
    v12[3] = &unk_1E7285588;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 40);
    v13 = v9;
    v14 = v10;
    v16 = *(a1 + 64);
    v15 = v4;
    v11 = v4;
    [v5 _resolveIntentParameter:v6 forIntent:v8 intentHandler:v7 updateIntent:1 withCompletion:v12];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __71__INIntentDeliverer_resolveIntentParameters_forIntent_completionBlock___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = INIntentWithTypedIntent(*(a1 + 32));
  v3 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v5 = v3;
    v6 = [v2 typeName];
    v11 = 136315650;
    v12 = "[INIntentDeliverer resolveIntentParameters:forIntent:completionBlock:]_block_invoke_3";
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_18E991000, v5, OS_LOG_TYPE_INFO, "%s Returning slot resolution results %@ with updated intent %@", &v11, 0x20u);
  }

  v7 = *(a1 + 48);
  v8 = *(*(*(a1 + 56) + 8) + 24);
  v9 = [*(a1 + 40) copy];
  (*(v7 + 16))(v7, v8, v2, v9);

  v10 = *MEMORY[0x1E69E9840];
}

void __71__INIntentDeliverer_resolveIntentParameters_forIntent_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = v11;
  v7 = v5;
  if (v11)
  {
    [*(a1 + 32) setObject:v11 forKey:*(a1 + 40)];
    v6 = v11;
  }

  if ([v6 result] == 1)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
  v10 = v7;

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)getIntentParameterDefaultValue:(id)a3 forIntent:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__INIntentDeliverer_getIntentParameterDefaultValue_forIntent_completionBlock___block_invoke;
    v12[3] = &unk_1E7285538;
    v12[4] = self;
    v13 = v8;
    v14 = v9;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__INIntentDeliverer_getIntentParameterDefaultValue_forIntent_completionBlock___block_invoke_76;
    v10[3] = &unk_1E7285560;
    v11 = v14;
    [(INIntentDeliverer *)self _invokeIntentHandlerMethodForIntent:a4 intentHandler:0 parameterNamed:v13 keyForSelectors:@"defaultValueSelectorStrings" executionHandler:v12 unimplementedHandler:v10];
  }
}

BOOL __78__INIntentDeliverer_getIntentParameterDefaultValue_forIntent_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = [v9 methodForSelector:a3];
  if (v12)
  {
    v13 = v12(v9, a3, v10);
    [*(a1 + 32) _processDefaultValue:v13 forIntent:v10 parameterNamed:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v14 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v17 = v14;
      v18 = [v11 facadePropertyName];
      v19 = 136315650;
      v20 = "[INIntentDeliverer getIntentParameterDefaultValue:forIntent:completionBlock:]_block_invoke";
      v21 = 2114;
      v22 = v18;
      v23 = 2112;
      v24 = v10;
      _os_log_error_impl(&dword_18E991000, v17, OS_LOG_TYPE_ERROR, "%s Unable to find implementation of default value method for facade slot name %{public}@ on intent %@", &v19, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12 != 0;
}

void __78__INIntentDeliverer_getIntentParameterDefaultValue_forIntent_completionBlock___block_invoke_76(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_INExtensionContextErrorDomain" code:1003 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)getIntentParameterOptions:(id)a3 forIntent:(id)a4 searchTerm:(id)a5 completionBlock:(id)a6
{
  if (a6)
  {
    v10 = a5;
    v11 = a4;
    v12 = a3;
    v13 = [(INIntentDeliverer *)self _processOptionsForIntent:v11 parameterNamed:v12 completionHandler:a6];
    [(INIntentDeliverer *)self getParameterOptionsForParameterNamed:v12 intent:v11 searchTerm:v10 completionBlock:v13];
  }
}

- (INIntentDeliverer)initWithQueue:(id)a3 auditToken:(id *)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = INIntentDeliverer;
  v8 = [(INIntentDeliverer *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a3);
    v10 = *a4->var0;
    *&v9->_auditToken.val[4] = *&a4->var0[4];
    *v9->_auditToken.val = v10;
  }

  return v9;
}

@end