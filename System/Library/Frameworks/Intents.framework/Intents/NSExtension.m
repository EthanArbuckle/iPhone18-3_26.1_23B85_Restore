@interface NSExtension
@end

@implementation NSExtension

void __96__NSExtension_Intents___findAppsWithAnyIntentsExtensionCheckingSiriEnabledUseFilter_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v22 = a3;
  if (v4)
  {
    v5 = [v4 count];
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v5];
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
  }

  else
  {
    v6 = 0;
    v23 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        v13 = [v12 _plugIn];
        v14 = [v13 containingUrl];

        if (v14 && ([v6 containsObject:v14] & 1) == 0)
        {
          v15 = [MEMORY[0x1E69635E0] applicationProxyForBundleURL:v14];
          if (v15)
          {
            [v6 addObject:v14];
            v16 = [v15 bundleIdentifier];
            v17 = *(a1 + 40);
            if (v17 > 1)
            {
              if (v17 != 2)
              {
                if (v17 != 10)
                {
                  goto LABEL_20;
                }

                goto LABEL_19;
              }

              if ([v12 _intents_extensionSupportsAtLeastOneSiriIntent])
              {
                v18 = [v15 entitlementValueForKey:@"com.apple.developer.siri" ofClass:objc_opt_class()];
                v19 = [v18 BOOLValue];

                if (v19)
                {
LABEL_19:
                  [v23 addObject:v15];
                }
              }
            }

            else
            {
              if (v17)
              {
                if (v17 != 1 || ([v12 _intents_extensionSupportsAtLeastOneSiriIntent] & 1) == 0)
                {
                  goto LABEL_20;
                }

                goto LABEL_19;
              }

              if ([v12 _intents_extensionSupportsAtLeastOneSiriIntent] && ((objc_msgSend(*(a1 + 48), "appAllowedToTalkToSiri:", v16) & 1) != 0 || !+[_INSiriAuthorizationManager _siriAuthorizationStatusForAppID:](_INSiriAuthorizationManager, "_siriAuthorizationStatusForAppID:", v16)))
              {
                goto LABEL_19;
              }
            }

LABEL_20:
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v20 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v9 = v20;
    }

    while (v20);
  }

  (*(*(a1 + 32) + 16))();
  v21 = *MEMORY[0x1E69E9840];
}

void __96__NSExtension_Intents___intents_findSiriEntitledAppsContainingAnIntentsExtensionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v23 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DFA8]);
  v24 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v25 = [v5 initWithArray:{v6, a1}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = *v27;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v27 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v26 + 1) + 8 * i);
      v13 = [v12 supportedIntents];
      if ([v13 count])
      {
        v14 = [v12 entitlements];
        v15 = [v14 objectForKey:@"com.apple.developer.siri" ofClass:objc_opt_class()];
        v16 = [v15 BOOLValue];

        if (!v16)
        {
          continue;
        }

        v13 = [v12 compatibilityObject];
        [v25 addObject:v13];
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v9);
LABEL_15:

  v17 = *(v22 + 32);
  v18 = [v25 allObjects];
  if ([v25 count])
  {
    v19 = 0;
  }

  else
  {
    v19 = v23;
  }

  (*(v17 + 16))(v17, v18, v19);

  v20 = *MEMORY[0x1E69E9840];
}

void __71__NSExtension_Intents___intents_findAppsWithAnIntentsServiceExtension___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E695DFA8]);
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = [v6 initWithArray:v7];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v14 supportedIntents];
        v16 = [v15 count];

        if (v16)
        {
          v17 = [v14 compatibilityObject];
          [v8 addObject:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v18 = *(a1 + 32);
  v19 = [v8 allObjects];
  if ([v8 count])
  {
    v20 = 0;
  }

  else
  {
    v20 = v5;
  }

  (*(v18 + 16))(v18, v19, v20);

  v21 = *MEMORY[0x1E69E9840];
}

void __103__NSExtension_Intents___matchExtensionsWithAttributes_extensionPointName_requireTrustCheck_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (!v6 && v7 && *(a1 + 48) == 1)
  {
    v8 = [INAppTrust extensionsTrustedForLaunch:v5];

    v5 = v8;
  }

  v9 = [v5 count];
  if (!v6 && !v9)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *(a1 + 32);
    v12 = *MEMORY[0x1E696A578];
    v15[0] = @"ExtensionPointName";
    v15[1] = v12;
    v16[0] = v11;
    v16[1] = @"Unable to find an extension to run this intent. Is your intent listed in IntentsSupported in the extension Info.plist?";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v6 = [v10 errorWithDomain:@"INExtensionMatchingErrorDomain" code:3001 userInfo:v13];
  }

  (*(*(a1 + 40) + 16))();

  v14 = *MEMORY[0x1E69E9840];
}

void __145__NSExtension_Intents___matchExtensionsForIntent_extensionPointName_shouldCheckForSiriEnabled_shouldIgnoreLaunchId_requireTrustCheck_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [*(a1 + 32) count];
  v9 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "+[NSExtension(Intents) _matchExtensionsForIntent:extensionPointName:shouldCheckForSiriEnabled:shouldIgnoreLaunchId:requireTrustCheck:completion:]_block_invoke";
    v31 = 2112;
    v32 = v7;
    _os_log_impl(&dword_18E991000, v9, OS_LOG_TYPE_INFO, "%s Attempting to retrieve specified extension with identifier: %@", buf, 0x16u);
  }

  v10 = a3 + 1;
  v27 = *MEMORY[0x1E696A2E0];
  v28 = v7;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v25 = 0;
  v12 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v11 error:&v25];
  v13 = v25;
  v14 = [v12 firstObject];

  if (v13)
  {
    v15 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "+[NSExtension(Intents) _matchExtensionsForIntent:extensionPointName:shouldCheckForSiriEnabled:shouldIgnoreLaunchId:requireTrustCheck:completion:]_block_invoke";
      v31 = 2112;
      v32 = v13;
      _os_log_error_impl(&dword_18E991000, v15, OS_LOG_TYPE_ERROR, "%s Could not retrieve specified extension: %@", buf, 0x16u);
    }
  }

  else
  {
    if (v14)
    {
      v18 = *(a1 + 48);
      v26 = v14;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      (*(v18 + 16))(v18, v19, 0);

      *a4 = 1;
      goto LABEL_10;
    }

    v21 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 40);
      v23 = v21;
      v24 = [v22 extensionBundleId];
      *buf = 136315394;
      v30 = "+[NSExtension(Intents) _matchExtensionsForIntent:extensionPointName:shouldCheckForSiriEnabled:shouldIgnoreLaunchId:requireTrustCheck:completion:]_block_invoke";
      v31 = 2112;
      v32 = v24;
      _os_log_error_impl(&dword_18E991000, v23, OS_LOG_TYPE_ERROR, "%s extensionWithIdentifier returned nil for identifier: %@", buf, 0x16u);
    }
  }

  if (v10 == v8)
  {
    v16 = *(a1 + 48);
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"INExtensionMatchingErrorDomain" code:3001 userInfo:0];
    (*(v16 + 16))(v16, 0, v17);
  }

LABEL_10:

  v20 = *MEMORY[0x1E69E9840];
}

void __145__NSExtension_Intents___matchExtensionsForIntent_extensionPointName_shouldCheckForSiriEnabled_shouldIgnoreLaunchId_requireTrustCheck_completion___block_invoke_43(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count] && *(a1 + 56) == 1 && objc_msgSend(*(a1 + 32), "length"))
  {
    v7 = *(a1 + 32);
    v11 = 0;
    INExtractAppInfoFromSiriLaunchId(v7, &v11, 0);
    v8 = v11;
    if (([*(a1 + 48) appAllowedToTalkToSiri:v8] & 1) == 0)
    {
      v9 = *(a1 + 40);
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"INExtensionMatchingErrorDomain" code:3005 userInfo:0];
      (*(v9 + 16))(v9, 0, v10);

      goto LABEL_7;
    }
  }

  (*(*(a1 + 40) + 16))();
LABEL_7:
}

void __76__NSExtension_Intents___intents_matchSiriUISnippetExtensionsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__NSExtension_Intents___intents_matchSiriUISnippetExtensionsWithCompletion___block_invoke_2;
  block[3] = &unk_1E72858F0;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __76__NSExtension_Intents___intents_matchSiriUISnippetExtensionsWithCompletion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void __75__NSExtension_Intents___intents_matchSiriUIExtensionsForIntent_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__NSExtension_Intents___intents_matchSiriUIExtensionsForIntent_completion___block_invoke_2;
  block[3] = &unk_1E72858F0;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __75__NSExtension_Intents___intents_matchSiriUIExtensionsForIntent_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void __71__NSExtension_Intents___intents_matchUIExtensionsForIntent_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__NSExtension_Intents___intents_matchUIExtensionsForIntent_completion___block_invoke_2;
  block[3] = &unk_1E72858F0;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __71__NSExtension_Intents___intents_matchUIExtensionsForIntent_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

@end