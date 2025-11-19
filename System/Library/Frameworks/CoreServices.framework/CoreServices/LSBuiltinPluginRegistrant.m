@interface LSBuiltinPluginRegistrant
- (LSBuiltinPluginRegistrant)initWithStrategy:(id)a3 operationUUID:(id)a4 itemInfoDict:(id)a5;
- (void)runWithCompletion:(id)a3;
@end

@implementation LSBuiltinPluginRegistrant

- (LSBuiltinPluginRegistrant)initWithStrategy:(id)a3 operationUUID:(id)a4 itemInfoDict:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = LSBuiltinPluginRegistrant;
  v12 = [(LSBuiltinPluginRegistrant *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_strategy, a3);
    objc_storeStrong(&v13->_uuid, a4);
    v14 = [v11 copy];
    miDict = v13->_miDict;
    v13->_miDict = v14;
  }

  return v13;
}

- (void)runWithCompletion:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = [(NSDictionary *)self->_miDict objectForKey:@"Path"];
  if (v23)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v23 isDirectory:1];
    v22 = [(NSDictionary *)self->_miDict objectForKey:*MEMORY[0x1E695E4F0]];
    v6 = [v5 pathComponents];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:&v39 count:16];
    v10 = v9;
    if (v9)
    {
      v11 = *v32;
      do
      {
        v12 = 0;
        do
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v31 + 1) + 8 * v12);
          v9 = __47__LSBuiltinPluginRegistrant_runWithCompletion___block_invoke(v9, v13);
          if (v9)
          {
            v9 = [v7 addObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v9 = [v8 countByEnumeratingWithState:&v31 objects:&v39 count:16];
        v10 = v9;
      }

      while (v9);
    }

    v14 = [v7 count] == 0;
    if (v14)
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x3032000000;
      v42 = __Block_byref_object_copy__49;
      v43 = __Block_byref_object_dispose__49;
      v44 = 0;
      *&v31 = 0;
      *(&v31 + 1) = &v31;
      *&v32 = 0x3032000000;
      *(&v32 + 1) = __Block_byref_object_copy__49;
      *&v33 = __Block_byref_object_dispose__49;
      *(&v33 + 1) = 0;
      v17 = [FSNode alloc];
      v18 = (v40 + 5);
      obj = v40[5];
      v19 = [(FSNode *)v17 initWithURL:v5 flags:0 error:&obj];
      objc_storeStrong(v18, obj);
      if (v19)
      {
        [(LSRegistrantStrategy *)self->_strategy beginModificationOperation];
        strategy = self->_strategy;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __47__LSBuiltinPluginRegistrant_runWithCompletion___block_invoke_2;
        v24[3] = &unk_1E6A1E418;
        v28 = &v39;
        v24[4] = self;
        v25 = v19;
        v26 = v22;
        v29 = &v31;
        v27 = v5;
        [(LSRegistrantStrategy *)strategy runSyncBlockInWriteContext:v24];
        [(LSRegistrantStrategy *)self->_strategy endModificationOperation];
        if (!*(*(&v31 + 1) + 40))
        {
          [(LSRegistrantStrategy *)self->_strategy flushModificationState];
        }
      }

      v4[2](v4, *(*(&v31 + 1) + 40), v40[5]);
      _Block_object_dispose(&v31, 8);

      _Block_object_dispose(&v39, 8);
    }

    else
    {
      v35 = *MEMORY[0x1E696A278];
      v36 = @"plugin is in an app";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v15, "[LSBuiltinPluginRegistrant runWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 630);
      v4[2](v4, 0, v16);
    }
  }

  else
  {
    v37 = *MEMORY[0x1E696A278];
    v38 = @"Missing path";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v5, "[LSBuiltinPluginRegistrant runWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 622);
    (v4[2])(v4, 0);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __47__LSBuiltinPluginRegistrant_runWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [v2 isEqual:@"app"];

  return v3;
}

void __47__LSBuiltinPluginRegistrant_runWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 64) + 8);
  obj = *(v4 + 40);
  v5 = [v3 databaseContextWithError:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v6 = [*(*(a1 + 32) + 24) mutableCopy];
    v7 = [v5 findPluginAtNode:*(a1 + 40) error:0];
    if (v7)
    {
      v8 = [v5 pluginDataForPlugin:v7];
      if (v8)
      {
        if ((*(v8 + 168) & 8) != 0)
        {
          [v6 setObject:MEMORY[0x1E695E118] forKey:@"LSHasOverride"];
        }
      }
    }

    v25 = *(a1 + 48);
    v26[0] = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 64) + 8);
    v23 = *(v11 + 40);
    v12 = [v5 registerPluginNodeReinitializingContext:v10 installDictionary:v9 existingPlugin:v7 error:&v23];
    objc_storeStrong((v11 + 40), v23);
    if (v12)
    {
      v13 = [[_LSDModificationPendingSaveToken alloc] initWithUUID:*(*(a1 + 32) + 16)];
      v14 = *(*(a1 + 72) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __47__LSBuiltinPluginRegistrant_runWithCompletion___block_invoke_3;
      v19[3] = &unk_1E6A1E350;
      v16 = *(a1 + 56);
      v22 = v12;
      v17 = *(a1 + 72);
      v20 = v16;
      v21 = v17;
      [v3 armSaveTimerIfNecessary:v19];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __47__LSBuiltinPluginRegistrant_runWithCompletion___block_invoke_3(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v14 = 138413058;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    v18 = 1024;
    v19 = a2;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Save after registration for register builtin plugin url %@ (unit %llx) attempted: %d save error: %@", &v14, 0x26u);
  }

  v10 = v6;
  v11 = v10;
  if ((a2 & 1) == 0)
  {
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "[LSBuiltinPluginRegistrant runWithCompletion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 655);

    v11 = v12;
  }

  [*(*(*(a1 + 40) + 8) + 40) saveDidHappen:v11 == 0 error:v11];

  v13 = *MEMORY[0x1E69E9840];
}

@end