@interface AXFeatureOverrideSessionManager
+ (AXFeatureOverrideSessionManager)sharedInstance;
- (AXFeatureOverrideSessionManager)init;
- (BOOL)endOverrideSession:(id)a3 error:(id *)a4;
- (id)beginOverrideSessionEnablingOptions:(unint64_t)a3 disablingOptions:(unint64_t)a4 error:(id *)a5;
@end

@implementation AXFeatureOverrideSessionManager

+ (AXFeatureOverrideSessionManager)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXFeatureOverrideSessionManager sharedInstance];
  }

  v3 = sharedInstance__shared;

  return v3;
}

uint64_t __49__AXFeatureOverrideSessionManager_sharedInstance__block_invoke()
{
  sharedInstance__shared = objc_alloc_init(AXFeatureOverrideSessionManager);

  return MEMORY[0x1EEE66BB8]();
}

- (AXFeatureOverrideSessionManager)init
{
  v8.receiver = self;
  v8.super_class = AXFeatureOverrideSessionManager;
  v2 = [(AXFeatureOverrideSessionManager *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getAXUIClientClass_softClass_0;
    v13 = getAXUIClientClass_softClass_0;
    if (!getAXUIClientClass_softClass_0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getAXUIClientClass_block_invoke_0;
      v9[3] = &unk_1E7B2CF78;
      v9[4] = &v10;
      __getAXUIClientClass_block_invoke_0(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = [[v3 alloc] initWithIdentifier:@"AXFeatureOverrideServer" serviceBundleName:@"AXFeatureOverrideServer"];
    serverClient = v2->_serverClient;
    v2->_serverClient = v5;
  }

  return v2;
}

- (id)beginOverrideSessionEnablingOptions:(unint64_t)a3 disablingOptions:(unint64_t)a4 error:(id *)a5
{
  v40[3] = *MEMORY[0x1E69E9840];
  v9 = [AXFeatureOverrideSession alloc];
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [(AXFeatureOverrideSession *)v9 initWithUUID:v10];

  v12 = objc_alloc(MEMORY[0x1E695DF20]);
  v13 = [(AXFeatureOverrideSession *)v11 uuid];
  v14 = [v13 UUIDString];
  v40[0] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v40[1] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v40[2] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
  v18 = [v12 initWithObjects:v17 forKeys:&unk_1F29D9B58];

  serverClient = self->_serverClient;
  v33 = 0;
  v20 = [(AXUIClient *)serverClient sendSynchronousMessage:v18 withIdentifier:1 error:&v33];
  v21 = v33;
  if (v21)
  {
    if (!a5)
    {
      goto LABEL_12;
    }

    v22 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v23 = AXLocalizedString(@"FEATURE_OVERRIDE_ERROR_APP_NOT_ENTITLED");
    v35 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v25 = v22;
    v26 = 1;
    goto LABEL_4;
  }

  if ([v20 count])
  {
    v27 = [v20 objectForKeyedSubscript:@"result"];
    v28 = [v27 integerValue];

    if (v28 == 1)
    {
      if (a5)
      {
        v29 = MEMORY[0x1E696ABC0];
        v38 = *MEMORY[0x1E696A578];
        v23 = AXLocalizedString(@"FEATURE_OVERRIDE_ERROR_OVERRIDE_IS_ALREADY_ACTIVE");
        v39 = v23;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v25 = v29;
        v26 = 2;
LABEL_4:
        *a5 = [v25 errorWithDomain:@"AXFeatureOverrideSessionErrorDomain" code:v26 userInfo:v24];

        a5 = 0;
      }
    }

    else if (a5)
    {
      v30 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E696A578];
      v23 = AXLocalizedString(@"FEATURE_OVERRIDE_ERROR_INTERNAL_ERROR");
      v37 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v25 = v30;
      v26 = 0;
      goto LABEL_4;
    }
  }

  else
  {
    a5 = v11;
  }

LABEL_12:

  v31 = *MEMORY[0x1E69E9840];

  return a5;
}

- (BOOL)endOverrideSession:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF20];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [v7 uuid];

  v10 = [v9 UUIDString];
  v32[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v12 = [v8 initWithObjects:v11 forKeys:&unk_1F29D9B70];

  serverClient = self->_serverClient;
  v27 = 0;
  v14 = [(AXUIClient *)serverClient sendSynchronousMessage:v12 withIdentifier:2 error:&v27];
  v15 = v27;
  if (v15)
  {
    if (!a4)
    {
LABEL_9:
      v23 = 0;
      goto LABEL_10;
    }

    v16 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v17 = AXLocalizedString(@"FEATURE_OVERRIDE_ERROR_APP_NOT_ENTITLED");
    v29 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v19 = v16;
    v20 = 1;
LABEL_8:
    *a4 = [v19 errorWithDomain:@"AXFeatureOverrideSessionErrorDomain" code:v20 userInfo:v18];

    goto LABEL_9;
  }

  if (![v14 count])
  {
    v23 = 1;
    goto LABEL_10;
  }

  v21 = [v14 objectForKeyedSubscript:@"result"];
  v22 = [v21 integerValue];

  v23 = 0;
  if (a4 && v22 == 2)
  {
    v24 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v17 = AXLocalizedString(@"FEATURE_OVERRIDE_ERROR_OVERRIDE_NOT_FOUND_FOR_UUID");
    v31 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v19 = v24;
    v20 = 3;
    goto LABEL_8;
  }

LABEL_10:

  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

@end