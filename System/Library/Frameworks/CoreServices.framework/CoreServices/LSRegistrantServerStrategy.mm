@interface LSRegistrantServerStrategy
- (id)preUnregistrationContextForBundleIdentifier:(id)a3;
- (void)enumerateSystemEXExtensionPoints:(id)a3;
- (void)runSyncBlockInWriteContext:(id)a3;
@end

@implementation LSRegistrantServerStrategy

- (id)preUnregistrationContextForBundleIdentifier:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[_LSInstallProgressService sharedInstance];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = [v4 _prepareApplicationProxiesForNotification:0 identifiers:v5 withPlugins:0];
  v7 = [v6 firstObject];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)runSyncBlockInWriteContext:(id)a3
{
  v3 = a3;
  v4 = +[LSDBExecutionContext sharedServerInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__LSRegistrantServerStrategy_runSyncBlockInWriteContext___block_invoke;
  v6[3] = &unk_1E6A1A660;
  v5 = v3;
  v7 = v5;
  [(LSDBExecutionContext *)v4 syncWrite:v6];
}

void __57__LSRegistrantServerStrategy_runSyncBlockInWriteContext___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(LSMIResultRegistrantServerDatabaseContextProviding);
  (*(*(a1 + 32) + 16))();
}

- (void)enumerateSystemEXExtensionPoints:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [getEXEnumeratorClass() extensionPointDefinitionEnumerator];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v4 = v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      v10 = 0;
      v3[2](v3, v8, &v10);
      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end