@interface NSExtension(Intents)
+ (id)_extensionMatchingDictionaryForIntentClassNames:()Intents extensionPointName:launchId:;
+ (void)_findAppsWithAnyIntentsExtensionCheckingSiriEnabledUseFilter:()Intents completion:;
+ (void)_intents_findAppsWithAnIntentsServiceExtension:()Intents;
+ (void)_intents_findSiriEntitledAppsContainingAnIntentsExtensionWithCompletion:()Intents;
+ (void)_intents_matchSiriUIExtensionsForIntent:()Intents completion:;
+ (void)_intents_matchSiriUISnippetExtensionsWithCompletion:()Intents;
+ (void)_intents_matchUIExtensionsForIntent:()Intents completion:;
+ (void)_matchExtensionsForIntent:()Intents extensionPointName:shouldCheckForSiriEnabled:shouldIgnoreLaunchId:requireTrustCheck:completion:;
+ (void)_matchExtensionsWithAttributes:()Intents extensionPointName:requireTrustCheck:completion:;
+ (void)_matchSnippetExtensionsWithExtensionPointName:()Intents completion:;
- (BOOL)_intents_extensionSupportsAtLeastOneSiriIntent;
- (id)_intents_intentsRestrictedWhileProtectedDataUnavailable;
@end

@implementation NSExtension(Intents)

- (BOOL)_intents_extensionSupportsAtLeastOneSiriIntent
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = 0;
  if (INThisProcessCanMapLSDatabase(0))
  {
    v3 = objc_alloc(MEMORY[0x1E69635D0]);
    v4 = [a1 _extensionBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [v3 initWithBundleIdentifier:v5 error:0];

    if (v6)
    {
      v7 = [v6 compatibilityObject];
      v12[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      v9 = _INSupportedIntentsByExtensions(1, v8, 0);
    }

    else
    {
      v9 = 0;
    }

    v2 = [v9 count] != 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

- (id)_intents_intentsRestrictedWhileProtectedDataUnavailable
{
  v1 = MEMORY[0x1E695DFD8];
  v2 = [a1 attributes];
  v3 = [v2 objectForKey:@"IntentsRestrictedWhileProtectedDataUnavailable"];
  v4 = [v1 setWithArray:v3];

  return v4;
}

+ (void)_findAppsWithAnyIntentsExtensionCheckingSiriEnabledUseFilter:()Intents completion:
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v14 = *MEMORY[0x1E696A2F8];
    v15[0] = @"com.apple.intents-service";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v8 = MEMORY[0x1E696ABD0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __96__NSExtension_Intents___findAppsWithAnyIntentsExtensionCheckingSiriEnabledUseFilter_completion___block_invoke;
    v10[3] = &unk_1E7285408;
    v12 = a3;
    v13 = a1;
    v11 = v6;
    [v8 extensionsWithMatchingAttributes:v7 completion:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)_intents_findSiriEntitledAppsContainingAnIntentsExtensionWithCompletion:()Intents
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __96__NSExtension_Intents___intents_findSiriEntitledAppsContainingAnIntentsExtensionWithCompletion___block_invoke;
  v6[3] = &unk_1E7285360;
  v7 = v4;
  v5 = v4;
  [a1 _findAppsWithAnyIntentsExtensionCheckingSiriEnabledUseFilter:1 completion:v6];
}

+ (void)_intents_findAppsWithAnIntentsServiceExtension:()Intents
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__NSExtension_Intents___intents_findAppsWithAnIntentsServiceExtension___block_invoke;
  v6[3] = &unk_1E7285360;
  v7 = v4;
  v5 = v4;
  [a1 _findAppsWithAnyIntentsExtensionCheckingSiriEnabledUseFilter:10 completion:v6];
}

+ (id)_extensionMatchingDictionaryForIntentClassNames:()Intents extensionPointName:launchId:
{
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v18[0] = *MEMORY[0x1E696A2F8];
  v18[1] = @"IntentsSupported";
  v19[0] = v8;
  v19[1] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v11 = [v10 mutableCopy];

  if (v9)
  {
    v17 = 0;
    INExtractAppInfoFromSiriLaunchId(v9, 0, &v17);
    v12 = v17;
    if (v12)
    {
      v13 = v12;
      [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69C4AB0]];
    }
  }

  v14 = [v11 copy];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (void)_matchExtensionsWithAttributes:()Intents extensionPointName:requireTrustCheck:completion:
{
  v9 = a4;
  v10 = a6;
  v11 = MEMORY[0x1E696ABD0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __103__NSExtension_Intents___matchExtensionsWithAttributes_extensionPointName_requireTrustCheck_completion___block_invoke;
  v14[3] = &unk_1E72853D8;
  v17 = a5;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 extensionsWithMatchingAttributes:a3 completion:v14];
}

+ (void)_matchSnippetExtensionsWithExtensionPointName:()Intents completion:
{
  v15[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = *MEMORY[0x1E696A2F8];
      v14[1] = @"IntentsSupported";
      v15[0] = v6;
      v13 = @"SiriUISnippetExtensionIntent";
      v14[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      v15[1] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

      [a1 _matchExtensionsWithAttributes:v10 extensionPointName:v6 requireTrustCheck:1 completion:v7];
    }

    else
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"INExtensionMatchingErrorDomain" code:3004 userInfo:0];
      v7[2](v7, 0, v11);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)_matchExtensionsForIntent:()Intents extensionPointName:shouldCheckForSiriEnabled:shouldIgnoreLaunchId:requireTrustCheck:completion:
{
  v53 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a8;
  if (v16)
  {
    if (v14)
    {
      if (v15)
      {
        v36 = a5;
        v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v18 = [v14 extensionBundleId];
        if (v18)
        {
          [v17 addObject:v18];
        }

        v38 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.SiriViewService"];
        if ([v38 BOOLForKey:@"kEnableEnhancedSiriUI"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = INSiriLogContextIntents;
            if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v50 = "+[NSExtension(Intents) _matchExtensionsForIntent:extensionPointName:shouldCheckForSiriEnabled:shouldIgnoreLaunchId:requireTrustCheck:completion:]";
              _os_log_impl(&dword_18E991000, v19, OS_LOG_TYPE_INFO, "%s Setting UIExtensionBundleID to MessagesAssistantUIExtension", buf, 0xCu);
            }

            [v14 _setUiExtensionBundleId:@"com.apple.MobileSMS.MessagesAssistantUIExtension"];
          }
        }

        v20 = [v14 _uiExtensionBundleId];
        if ([v15 isEqualToString:@"com.apple.intents-ui-service"] && v20)
        {
          [v17 insertObject:v20 atIndex:0];
        }

        v37 = v20;
        if ([v17 count])
        {
          v21 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v50 = "+[NSExtension(Intents) _matchExtensionsForIntent:extensionPointName:shouldCheckForSiriEnabled:shouldIgnoreLaunchId:requireTrustCheck:completion:]";
            v51 = 2112;
            v52 = v17;
            _os_log_impl(&dword_18E991000, v21, OS_LOG_TYPE_INFO, "%s Considering possible extension bundle id candidates for direct lookup: %@", buf, 0x16u);
          }

          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __145__NSExtension_Intents___matchExtensionsForIntent_extensionPointName_shouldCheckForSiriEnabled_shouldIgnoreLaunchId_requireTrustCheck_completion___block_invoke;
          v44[3] = &unk_1E7285388;
          v45 = v17;
          v47 = v16;
          v46 = v14;
          [v45 enumerateObjectsUsingBlock:v44];

          v22 = v45;
        }

        else
        {
          v25 = [v14 _intents_launchIdForCurrentPlatform];
          v22 = [v14 _className];
          v35 = a7;
          v26 = v18;
          v27 = v17;
          v28 = [v25 hasPrefix:@"com.apple.shortcuts"] | a6;
          v48 = v22;
          v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
          v30 = v28 == 0;
          v17 = v27;
          v18 = v26;
          if (v30)
          {
            v31 = v25;
          }

          else
          {
            v31 = 0;
          }

          v32 = [a1 _extensionMatchingDictionaryForIntentClassNames:v29 extensionPointName:v15 launchId:v31];

          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __145__NSExtension_Intents___matchExtensionsForIntent_extensionPointName_shouldCheckForSiriEnabled_shouldIgnoreLaunchId_requireTrustCheck_completion___block_invoke_43;
          v39[3] = &unk_1E72853B0;
          v43 = v36;
          v40 = v25;
          v42 = a1;
          v41 = v16;
          v33 = v25;
          [a1 _matchExtensionsWithAttributes:v32 extensionPointName:v15 requireTrustCheck:v35 completion:v39];
        }

        goto LABEL_26;
      }

      v23 = MEMORY[0x1E696ABC0];
      v24 = 3004;
    }

    else
    {
      v23 = MEMORY[0x1E696ABC0];
      v24 = 3003;
    }

    v17 = [v23 errorWithDomain:@"INExtensionMatchingErrorDomain" code:v24 userInfo:0];
    (*(v16 + 2))(v16, 0, v17);
LABEL_26:
  }

  v34 = *MEMORY[0x1E69E9840];
}

+ (void)_intents_matchSiriUISnippetExtensionsWithCompletion:()Intents
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__NSExtension_Intents___intents_matchSiriUISnippetExtensionsWithCompletion___block_invoke;
  v6[3] = &unk_1E7285360;
  v7 = v4;
  v5 = v4;
  [a1 _matchSnippetExtensionsWithExtensionPointName:@"com.apple.intents-ui-service" completion:v6];
}

+ (void)_intents_matchSiriUIExtensionsForIntent:()Intents completion:
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__NSExtension_Intents___intents_matchSiriUIExtensionsForIntent_completion___block_invoke;
  v8[3] = &unk_1E7285360;
  v9 = v6;
  v7 = v6;
  [a1 _matchExtensionsForIntent:a3 extensionPointName:@"com.apple.intents-ui-service" shouldCheckForSiriEnabled:1 requireTrustCheck:1 completion:v8];
}

+ (void)_intents_matchUIExtensionsForIntent:()Intents completion:
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__NSExtension_Intents___intents_matchUIExtensionsForIntent_completion___block_invoke;
  v8[3] = &unk_1E7285360;
  v9 = v6;
  v7 = v6;
  [a1 _matchExtensionsForIntent:a3 extensionPointName:@"com.apple.intents-ui-service" shouldCheckForSiriEnabled:0 requireTrustCheck:1 completion:v8];
}

@end