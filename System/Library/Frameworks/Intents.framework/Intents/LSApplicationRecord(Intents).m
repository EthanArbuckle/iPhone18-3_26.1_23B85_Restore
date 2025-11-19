@interface LSApplicationRecord(Intents)
- (id)in_counterpartIdentifiers;
- (id)in_documentTypes;
- (id)in_supportedIntents;
@end

@implementation LSApplicationRecord(Intents)

- (id)in_supportedIntents
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [a1 applicationExtensionRecords];
  v3 = [v2 allObjects];
  v4 = [v3 if_objectsPassingTest:&__block_literal_global_104604];
  v5 = [v4 mutableCopy];

  v6 = [a1 bundleIdentifier];
  LOBYTE(v3) = [v6 hasPrefix:@"com.apple.shortcuts"];

  if (v3)
  {
    v7 = @"com.apple.WorkflowKit.ShortcutsIntents";
  }

  else
  {
    v8 = [a1 bundleIdentifier];
    v9 = [v8 isEqualToString:@"com.apple.mobiletimer"];

    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = @"com.apple.mobiletimer-framework.MobileTimerIntents";
  }

  v10 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v7 error:0];
  [v5 if_addObjectIfNonNil:v10];

LABEL_6:
  v29 = [MEMORY[0x1E695DFA8] set];
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = [v17 if_extensionAttributesDictionary];
        v19 = [v18 objectForKeyedSubscript:@"IntentsSupported"];
        if ([v19 count])
        {
          v20 = [v17 extensionPointRecord];
          v21 = [v20 identifier];

          v22 = [MEMORY[0x1E695DFD8] setWithArray:v19];
          [v11 setObject:v22 forKeyedSubscript:v21];

          [v29 addObjectsFromArray:v19];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  v23 = MEMORY[0x1E695DFA8];
  v24 = [v28 supportedIntents];
  v25 = [v23 setWithArray:v24];

  [v25 unionSet:v29];
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)in_counterpartIdentifiers
{
  v2 = [a1 counterpartIdentifiers];

  if (v2)
  {
    v3 = MEMORY[0x1E695DFD8];
    v4 = [a1 counterpartIdentifiers];
    v5 = [v3 setWithArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)in_documentTypes
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.maps.directionsrequest", @"com.appcubby.launchpro.lcpbackup", 0}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a1 claimRecords];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) typeIdentifiers];
        [v2 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [v2 minusSet:v3];
  v10 = *MEMORY[0x1E69E9840];

  return v2;
}

@end