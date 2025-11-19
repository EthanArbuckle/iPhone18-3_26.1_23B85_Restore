@interface ASCAuthorizationTrafficController
+ (ASCAuthorizationTrafficController)sharedInstance;
+ (BOOL)_appWithAppIdentifierIsWebBrowser:(id)a3;
- (ASCAuthorizationTrafficController)init;
- (void)beginAuthorizationForApplicationIdentifier:(id)a3 token:(id)a4 withClearanceHandler:(id)a5;
- (void)cancelAuthorizationForAppIdentifierIfNecessary:(id)a3 token:(id)a4;
- (void)endAuthorizationForAppIdentifier:(id)a3 token:(id)a4 clearanceHandler:(id)a5;
@end

@implementation ASCAuthorizationTrafficController

+ (ASCAuthorizationTrafficController)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ASCAuthorizationTrafficController sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __51__ASCAuthorizationTrafficController_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(ASCAuthorizationTrafficController);

  return MEMORY[0x1EEE66BB8]();
}

- (ASCAuthorizationTrafficController)init
{
  v13.receiver = self;
  v13.super_class = ASCAuthorizationTrafficController;
  v2 = [(ASCAuthorizationTrafficController *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    appsWithActiveRequests = v2->_appsWithActiveRequests;
    v2->_appsWithActiveRequests = v3;

    v5 = dispatch_queue_create("com.apple.AuthenticationServicesCore.AuthorizationClearanceQueue", 0);
    clearanceQueue = v2->_clearanceQueue;
    v2->_clearanceQueue = v5;

    v7 = dispatch_queue_create("com.apple.AuthenticationServicesCore.AuthorizationTrafficQueue", 0);
    trafficQueue = v2->_trafficQueue;
    v2->_trafficQueue = v7;

    v9 = [[_TtC26AuthenticationServicesCore27ASProgressiveBackoffManager alloc] initWithNumberOfOperationsBeforeTriggeringBackoff:1 minimumCooldownDurationSeconds:10.0];
    backoffManager = v2->_backoffManager;
    v2->_backoffManager = v9;

    v11 = v2;
  }

  return v2;
}

+ (BOOL)_appWithAppIdentifierIsWebBrowser:(id)a3
{
  v9 = 0;
  v3 = [MEMORY[0x1E6963620] bundleRecordWithApplicationIdentifier:a3 error:&v9];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 entitlements];
    v6 = [v5 objectForKey:@"com.apple.developer.web-browser" ofClass:objc_opt_class()];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)beginAuthorizationForApplicationIdentifier:(id)a3 token:(id)a4 withClearanceHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__0;
  v21[4] = __Block_byref_object_dispose__0;
  v22 = 0;
  trafficQueue = self->_trafficQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__ASCAuthorizationTrafficController_beginAuthorizationForApplicationIdentifier_token_withClearanceHandler___block_invoke;
  block[3] = &unk_1E81601D0;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v20 = v21;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(trafficQueue, block);

  _Block_object_dispose(v21, 8);
}

void __107__ASCAuthorizationTrafficController_beginAuthorizationForApplicationIdentifier_token_withClearanceHandler___block_invoke(uint64_t a1)
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (([MEMORY[0x1E696AAE8] safari_isSafariFamilyBundleIdentifier:?] & 1) != 0 || +[ASCAuthorizationTrafficController _appWithAppIdentifierIsWebBrowser:](ASCAuthorizationTrafficController, "_appWithAppIdentifierIsWebBrowser:", *(a1 + 32)))
    {
      v2 = 0;
    }

    else
    {
      v14 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:*(a1 + 32)];
      v15 = [v14 count];

      if (v15)
      {
        v16 = MEMORY[0x1E696ABC0];
        v31 = *MEMORY[0x1E696A588];
        v32 = @"Request already in progress for specified application identifier.";
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v18 = [v16 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v17];
        v19 = *(*(a1 + 64) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;

        v4 = 0;
        goto LABEL_15;
      }

      v2 = 1;
    }

    v3 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:*(a1 + 32)];
    if (!v3)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [*(*(a1 + 40) + 8) setObject:v3 forKeyedSubscript:*(a1 + 32)];
    }

    [v3 addObject:*(a1 + 48)];

    if (!v2)
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = *(v10 + 32);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __107__ASCAuthorizationTrafficController_beginAuthorizationForApplicationIdentifier_token_withClearanceHandler___block_invoke_2;
      v25[3] = &unk_1E8160138;
      v25[4] = v10;
      v26 = *(a1 + 56);
      [v12 performAfterBackoffForContext:v11 completionHandler:v25];
      v13 = v26;
LABEL_16:

      goto LABEL_17;
    }

    v4 = 1;
LABEL_15:
    v21 = *(*(a1 + 40) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __107__ASCAuthorizationTrafficController_beginAuthorizationForApplicationIdentifier_token_withClearanceHandler___block_invoke_24;
    block[3] = &unk_1E81601A8;
    v22 = *(a1 + 56);
    v30 = v4;
    v23 = *(a1 + 64);
    v28 = v22;
    v29 = v23;
    dispatch_async(v21, block);
    v13 = v28;
    goto LABEL_16;
  }

  v5 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    __107__ASCAuthorizationTrafficController_beginAuthorizationForApplicationIdentifier_token_withClearanceHandler___block_invoke_cold_1(v5);
  }

  v6 = *(a1 + 56);
  v7 = MEMORY[0x1E696ABC0];
  v33 = *MEMORY[0x1E696A588];
  v34[0] = @"No application identifier specified for authorization request.";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v9 = [v7 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v8];
  (*(v6 + 16))(v6, 0, v9);

LABEL_17:
  v24 = *MEMORY[0x1E69E9840];
}

void __107__ASCAuthorizationTrafficController_beginAuthorizationForApplicationIdentifier_token_withClearanceHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__ASCAuthorizationTrafficController_beginAuthorizationForApplicationIdentifier_token_withClearanceHandler___block_invoke_3;
  block[3] = &unk_1E815FD50;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)endAuthorizationForAppIdentifier:(id)a3 token:(id)a4 clearanceHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  trafficQueue = self->_trafficQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__ASCAuthorizationTrafficController_endAuthorizationForAppIdentifier_token_clearanceHandler___block_invoke;
  v15[3] = &unk_1E81601F8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(trafficQueue, v15);
}

void __93__ASCAuthorizationTrafficController_endAuthorizationForAppIdentifier_token_clearanceHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  if ([v2 containsObject:*(a1 + 48)])
  {
    [v2 removeObject:*(a1 + 48)];
    if (![v2 count])
    {
      [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:*(a1 + 40)];
    }
  }

  v3 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__ASCAuthorizationTrafficController_endAuthorizationForAppIdentifier_token_clearanceHandler___block_invoke_2;
  block[3] = &unk_1E815FD50;
  v5 = *(a1 + 56);
  dispatch_async(v3, block);
}

- (void)cancelAuthorizationForAppIdentifierIfNecessary:(id)a3 token:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    trafficQueue = self->_trafficQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__ASCAuthorizationTrafficController_cancelAuthorizationForAppIdentifierIfNecessary_token___block_invoke;
    block[3] = &unk_1E815FEC0;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(trafficQueue, block);
  }
}

void __90__ASCAuthorizationTrafficController_cancelAuthorizationForAppIdentifierIfNecessary_token___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  if ([v2 containsObject:a1[6]])
  {
    [v2 removeObject:a1[6]];
    if (![v2 count])
    {
      [*(a1[4] + 8) setObject:0 forKeyedSubscript:a1[5]];
    }
  }
}

@end