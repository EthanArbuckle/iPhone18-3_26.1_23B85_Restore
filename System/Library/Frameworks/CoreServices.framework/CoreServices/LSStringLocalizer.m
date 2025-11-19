@interface LSStringLocalizer
@end

@implementation LSStringLocalizer

void __40___LSStringLocalizer_coreTypesLocalizer__block_invoke()
{
  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/System/Library/CoreServices/MobileCoreTypes.bundle" isDirectory:1];
  if (v4)
  {
    v0 = [[_LSStringLocalizer alloc] initWithBundleURL:v4 stringsFile:@"InfoPlist" checkMainBundle:0 legacyLocalizationList:0];
    v1 = +[_LSStringLocalizer coreTypesLocalizer]::result;
    +[_LSStringLocalizer coreTypesLocalizer]::result = v0;
  }

  if (!+[_LSStringLocalizer coreTypesLocalizer]::result)
  {
    v2 = objc_alloc_init(_LSStringLocalizer);
    v3 = +[_LSStringLocalizer coreTypesLocalizer]::result;
    +[_LSStringLocalizer coreTypesLocalizer]::result = v2;
  }
}

void __52___LSStringLocalizer_missingLocalizationPlaceholder__block_invoke()
{
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v0 = [v2 UUIDString];
  v1 = +[_LSStringLocalizer missingLocalizationPlaceholder]::result;
  +[_LSStringLocalizer missingLocalizationPlaceholder]::result = v0;
}

void __137___LSStringLocalizer_gatherLocalizedStringsForLSBundleProvider_infoDictionary_domains_delegatesMightBeMainBundle_legacyLocalizationList___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if ([v5 isEqual:&stru_1EEF65710])
  {
    v8 = *(a1 + 32);
  }

  else
  {
    v9 = [*(a1 + 40) objectForKeyedSubscript:@"_LSBundleLibraryPath"];
    if (v9)
    {
      v10 = *(*(*(a1 + 64) + 8) + 40);
      if (!v10)
      {
        v11 = [*(a1 + 48) bundleURL];
        v12 = *(*(a1 + 64) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        v10 = *(*(*(a1 + 64) + 8) + 40);
      }

      v14 = [v10 URLByAppendingPathComponent:v9 isDirectory:1];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 URLByAppendingPathComponent:v5 isDirectory:1];
        if (v16)
        {
          v8 = [objc_alloc(*(a1 + 72)) initWithBundleURL:v16 stringsFile:@"InfoPlist" checkMainBundle:*(a1 + 80) legacyLocalizationList:*(a1 + 81)];
          _LSStringLocalizerPrewarmAllLocalizations(v8);
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __137___LSStringLocalizer_gatherLocalizedStringsForLSBundleProvider_infoDictionary_domains_delegatesMightBeMainBundle_legacyLocalizationList___block_invoke_3;
  v19[3] = &unk_1E6A1E198;
  v20 = *(a1 + 56);
  v17 = v5;
  v18 = *(a1 + 72);
  v21 = v17;
  v22 = v18;
  [(_LSStringLocalizer *)v8 enumerateLocalizedStringsForKeys:v6 usingBlock:v19];

  objc_autoreleasePoolPop(v7);
}

void __137___LSStringLocalizer_gatherLocalizedStringsForLSBundleProvider_infoDictionary_domains_delegatesMightBeMainBundle_legacyLocalizationList___block_invoke_3(id *a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v20 = a3;
  v8 = a4;
  v9 = [a1[4] objectForKeyedSubscript:v7];
  if (!v9 || (v10 = [a1[5] isEqual:&stru_1EEF65710], v9, (v10 & 1) != 0))
  {
    if ([v8 count])
    {
      v11 = [v20 mutableCopy];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = *v22;
        do
        {
          v15 = 0;
          do
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v21 + 1) + 8 * v15);
            v17 = [a1[6] missingLocalizationPlaceholder];
            [v11 setObject:v17 forKeyedSubscript:v16];

            ++v15;
          }

          while (v13 != v15);
          v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v13);
      }

      v18 = [v11 copy];
      [a1[4] setObject:v18 forKeyedSubscript:v7];
    }

    else
    {
      [a1[4] setObject:v20 forKeyedSubscript:v7];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __129___LSStringLocalizer_gatherLocalizedStringsForCFBundle_infoDictionary_domains_delegatesMightBeMainBundle_legacyLocalizationList___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if ([v5 isEqual:&stru_1EEF65710])
  {
    v8 = *(a1 + 32);
  }

  else
  {
    v9 = [*(a1 + 40) objectForKeyedSubscript:@"_LSBundleLibraryPath"];
    if (v9)
    {
      v10 = *(*(*(a1 + 56) + 8) + 40);
      if (!v10)
      {
        v11 = CFBundleCopyBundleURL(*(a1 + 64));
        v12 = *(*(a1 + 56) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        v10 = *(*(*(a1 + 56) + 8) + 40);
      }

      v14 = [v10 URLByAppendingPathComponent:v9 isDirectory:1];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 URLByAppendingPathComponent:v5 isDirectory:1];
        if (v16)
        {
          v8 = [objc_alloc(*(a1 + 72)) initWithBundleURL:v16 stringsFile:@"InfoPlist" checkMainBundle:*(a1 + 80) legacyLocalizationList:*(a1 + 81)];
          _LSStringLocalizerPrewarmAllLocalizations(v8);
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __129___LSStringLocalizer_gatherLocalizedStringsForCFBundle_infoDictionary_domains_delegatesMightBeMainBundle_legacyLocalizationList___block_invoke_3;
  v19[3] = &unk_1E6A1E198;
  v20 = *(a1 + 48);
  v17 = v5;
  v18 = *(a1 + 72);
  v21 = v17;
  v22 = v18;
  [(_LSStringLocalizer *)v8 enumerateLocalizedStringsForKeys:v6 usingBlock:v19];

  objc_autoreleasePoolPop(v7);
}

void __129___LSStringLocalizer_gatherLocalizedStringsForCFBundle_infoDictionary_domains_delegatesMightBeMainBundle_legacyLocalizationList___block_invoke_3(id *a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v20 = a3;
  v8 = a4;
  v9 = [a1[4] objectForKeyedSubscript:v7];
  if (!v9 || (v10 = [a1[5] isEqual:&stru_1EEF65710], v9, (v10 & 1) != 0))
  {
    if ([v8 count])
    {
      v11 = [v20 mutableCopy];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = *v22;
        do
        {
          v15 = 0;
          do
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v21 + 1) + 8 * v15);
            v17 = [a1[6] missingLocalizationPlaceholder];
            [v11 setObject:v17 forKeyedSubscript:v16];

            ++v15;
          }

          while (v13 != v15);
          v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v13);
      }

      v18 = [v11 copy];
      [a1[4] setObject:v18 forKeyedSubscript:v7];
    }

    else
    {
      [a1[4] setObject:v20 forKeyedSubscript:v7];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end