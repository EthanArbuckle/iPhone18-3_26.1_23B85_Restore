@interface BKSInsecureDrawingAction
- (BKSInsecureDrawingAction)initWithPidToContextIdsDictionary:(id)a3;
- (BKSInsecureDrawingAction)initWithSecureModeViolations:(id)a3;
- (NSArray)processIds;
- (NSArray)secureModeViolations;
- (NSDictionary)pidToContextInfoDictionary;
- (id)_initWithPidToContextInfoDictionary:(id)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
@end

@implementation BKSInsecureDrawingAction

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    v5 = @"pidToContextInfoDictionary";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = BKSInsecureDrawingAction;
    v5 = [(BKSInsecureDrawingAction *)&v7 keyDescriptionForSetting:?];
  }

  return v5;
}

- (NSArray)processIds
{
  v2 = [(BKSInsecureDrawingAction *)self pidToContextInfoDictionary];
  v3 = [v2 allKeys];

  return v3;
}

- (NSDictionary)pidToContextInfoDictionary
{
  v2 = [(BKSInsecureDrawingAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (NSArray)secureModeViolations
{
  v3 = objc_opt_new();
  v4 = [(BKSInsecureDrawingAction *)self pidToContextInfoDictionary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__BKSInsecureDrawingAction_secureModeViolations__block_invoke;
  v7[3] = &unk_1E6F47488;
  v5 = v3;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __48__BKSInsecureDrawingAction_secureModeViolations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [BKSSecureModeViolation alloc];
  v8 = [v6 allKeys];
  v9 = [(BKSSecureModeViolation *)v7 initWithProcessId:v5 contextIds:v8];

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__BKSInsecureDrawingAction_secureModeViolations__block_invoke_2;
  v10[3] = &unk_1E6F47460;
  v10[4] = &v11;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];
  if (*(v12 + 24) == 1)
  {
    [(BKSSecureModeViolation *)v9 setLayerNamesByContext:v6];
  }

  [*(a1 + 32) addObject:v9];
  _Block_object_dispose(&v11, 8);
}

uint64_t __48__BKSInsecureDrawingAction_secureModeViolations__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 count];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (id)_initWithPidToContextInfoDictionary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"BKSInsecureDrawingAction.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"pidToContextInfoDictionary"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v6 setObject:v5 forSetting:1];
  v10.receiver = self;
  v10.super_class = BKSInsecureDrawingAction;
  v7 = [(BKSInsecureDrawingAction *)&v10 initWithInfo:v6 responder:0];

  return v7;
}

- (BKSInsecureDrawingAction)initWithSecureModeViolations:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"BKSInsecureDrawingAction.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"secureModeViolations"}];
  }

  v22 = self;
  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5;
  v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v26)
  {
    v24 = *v34;
    do
    {
      v6 = 0;
      do
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v6;
        v7 = *(*(&v33 + 1) + 8 * v6);
        v27 = [v7 processId];
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v9 = [v7 layerNamesByContext];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v10 = [v7 contextIds];
        v11 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v30;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v29 + 1) + 8 * i);
              v16 = [v9 objectForKeyedSubscript:v15];
              if (v16)
              {
                [v8 setObject:v16 forKeyedSubscript:v15];
              }

              else
              {
                v17 = objc_alloc_init(MEMORY[0x1E695DFD8]);
                [v8 setObject:v17 forKeyedSubscript:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v12);
        }

        [v25 setObject:v8 forKeyedSubscript:v27];
        v6 = v28 + 1;
      }

      while (v28 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v26);
  }

  v18 = [(BKSInsecureDrawingAction *)v22 _initWithPidToContextInfoDictionary:v25];
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BKSInsecureDrawingAction)initWithPidToContextIdsDictionary:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"BKSInsecureDrawingAction.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"pidToContextIdsDictionary"}];
  }

  v22 = self;
  v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v6 = [MEMORY[0x1E695DFD8] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v23 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v13 = [v7 objectForKeyedSubscript:v11];
        v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v26;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [v12 setObject:v6 forKeyedSubscript:*(*(&v25 + 1) + 8 * j)];
            }

            v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v15);
        }

        [v24 setObject:v12 forKeyedSubscript:v11];
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  v18 = [(BKSInsecureDrawingAction *)v22 _initWithPidToContextInfoDictionary:v24];
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

@end