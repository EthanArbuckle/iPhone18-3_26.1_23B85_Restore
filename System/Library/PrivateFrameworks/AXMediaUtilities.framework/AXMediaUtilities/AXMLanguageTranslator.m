@interface AXMLanguageTranslator
+ (id)allowedTargetLocalesForTranslation;
- (AXMLanguageTranslator)init;
- (_LTTranslator)translator;
- (id)_canonicalLocaleForLocale:(id)a3;
- (id)_canonicalLocalesForLocales:(id)a3;
- (id)_descriptionForLocales:(id)a3;
- (id)_filteredLocalesToInstallFromAvailableLocales:(id)a3 requestedLocales:(id)a4 fallBackToBaseLanguageIfNeeded:(BOOL)a5;
- (id)_proposedTranslationLocaleForLocale:(id)a3;
- (id)translateText:(id)a3 toLocale:(id)a4 respectAllowList:(BOOL)a5 metrics:(id)a6 error:(id *)a7;
- (void)availableTranslationLocales:(id)a3;
- (void)installOfflineTranslationModelForLanguageCodeIfNeeded:(id)a3 progress:(id)a4 completion:(id)a5;
- (void)installOfflineTranslationModelForLocales:(id)a3 fallBackToBaseLanguageIfNeeded:(BOOL)a4 forceReinstall:(BOOL)a5 progress:(id)a6 completion:(id)a7;
- (void)installedTranslationLocales:(id)a3;
- (void)translateText:(id)a3 toLocale:(id)a4 respectAllowList:(BOOL)a5 completion:(id)a6;
- (void)userSelectableTranslationLocales:(id)a3;
@end

@implementation AXMLanguageTranslator

- (AXMLanguageTranslator)init
{
  v3.receiver = self;
  v3.super_class = AXMLanguageTranslator;
  result = [(AXMLanguageTranslator *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)allowedTargetLocalesForTranslation
{
  v15[11] = *MEMORY[0x1E69E9840];
  v14 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"zh_CN"];
  v15[0] = v14;
  v13 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  v15[1] = v13;
  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"it_IT"];
  v15[2] = v2;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"ja_JP"];
  v15[3] = v3;
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"ar_AE"];
  v15[4] = v4;
  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"de_DE"];
  v15[5] = v5;
  v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"es_ES"];
  v15[6] = v6;
  v7 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"fr_FR"];
  v15[7] = v7;
  v8 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"ru_RU"];
  v15[8] = v8;
  v9 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"pt_BR"];
  v15[9] = v9;
  v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"ko_KR"];
  v15[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:11];

  return v11;
}

- (id)_proposedTranslationLocaleForLocale:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[AXMLanguageTranslator allowedTargetLocalesForTranslation];
  if ([v4 containsObject:v3])
  {
    v5 = v3;
  }

  else
  {
    v6 = +[AXMLocSupport sharedInstance];
    v5 = [v6 localeMatchingBaseLanguageOfLocale:v3 fromLocales:v4];
  }

  v7 = AXMediaLogLanguageTranslation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v3 localeIdentifier];
    v9 = [v5 localeIdentifier];
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_1AE37B000, v7, OS_LOG_TYPE_DEFAULT, "inLocale: '%@' proposed: '%@'", &v11, 0x16u);
  }

  return v5;
}

- (void)availableTranslationLocales:(id)a3
{
  v4 = a3;
  v5 = AXMediaLogLanguageTranslation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE37B000, v5, OS_LOG_TYPE_DEFAULT, "Requesting available translation locales", buf, 2u);
  }

  *buf = 0;
  v12 = buf;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  location[1] = MEMORY[0x1E69E9820];
  location[2] = 3221225472;
  location[3] = __53__AXMLanguageTranslator_availableTranslationLocales___block_invoke;
  location[4] = &unk_1E7A1CAE8;
  location[5] = self;
  location[6] = buf;
  AX_PERFORM_WITH_LOCK();
  if ([*(v12 + 5) count])
  {
    v4[2](v4, *(v12 + 5));
  }

  else
  {
    objc_initWeak(location, self);
    LTTranslatorClass = get_LTTranslatorClass();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__AXMLanguageTranslator_availableTranslationLocales___block_invoke_2;
    v7[3] = &unk_1E7A1D338;
    objc_copyWeak(&v9, location);
    v8 = v4;
    [LTTranslatorClass availableLocalePairsForTask:1 completion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  _Block_object_dispose(buf, 8);
}

void __53__AXMLanguageTranslator_availableTranslationLocales___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __53__AXMLanguageTranslator_availableTranslationLocales___block_invoke_2(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v27 = +[AXMLanguageTranslator allowedTargetLocalesForTranslation];
  v24 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = MEMORY[0x1E695DFA8];
  v5 = +[AXMLocSupport sharedInstance];
  v6 = [v5 en_USLocale];
  v26 = [v4 setWithObject:v6];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = [v12 sourceLocale];
        v14 = +[AXMLocSupport sharedInstance];
        v15 = [v14 en_USLocale];
        v16 = [v13 isEquivalentTo:v15];

        if (v16)
        {
          v17 = [v12 targetLocale];
          if (v17)
          {
            if ([v27 containsObject:v17])
            {
              [v26 addObject:v17];
            }

            else
            {
              v18 = AXMediaLogLanguageTranslation();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v19 = [v17 localeIdentifier];
                *buf = 138412290;
                v33 = v19;
                _os_log_impl(&dword_1AE37B000, v18, OS_LOG_TYPE_INFO, "Filtering available locale. Not allowed: %@", buf, 0xCu);
              }
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v9);
  }

  v20 = [v26 allObjects];
  v21 = AXMediaLogLanguageTranslation();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [WeakRetained _descriptionForLocales:v20];
    *buf = 138412290;
    v33 = v22;
    _os_log_impl(&dword_1AE37B000, v21, OS_LOG_TYPE_DEFAULT, "Available translation locales: %@", buf, 0xCu);
  }

  v23 = v20;
  AX_PERFORM_WITH_LOCK();
  (*(*(v24 + 32) + 16))();
}

void __53__AXMLanguageTranslator_availableTranslationLocales___block_invoke_63(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

- (void)userSelectableTranslationLocales:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__AXMLanguageTranslator_userSelectableTranslationLocales___block_invoke;
  v6[3] = &unk_1E7A1D380;
  v7 = v4;
  v5 = v4;
  [(AXMLanguageTranslator *)self availableTranslationLocales:v6];
}

void __58__AXMLanguageTranslator_userSelectableTranslationLocales___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 ax_filteredArrayUsingBlock:&__block_literal_global_9];
  (*(*(a1 + 32) + 16))();
}

uint64_t __58__AXMLanguageTranslator_userSelectableTranslationLocales___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[AXMLocSupport sharedInstance];
  v4 = [v3 en_USLocale];
  v5 = [v2 isEquivalentTo:v4];

  return v5 ^ 1u;
}

- (void)installedTranslationLocales:(id)a3
{
  v4 = a3;
  v5 = AXMediaLogLanguageTranslation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE37B000, v5, OS_LOG_TYPE_DEFAULT, "Requesting installed translation locales", buf, 2u);
  }

  LTTranslatorClass = get_LTTranslatorClass();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__AXMLanguageTranslator_installedTranslationLocales___block_invoke;
  v8[3] = &unk_1E7A1D3A8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [LTTranslatorClass installedLocales:v8];
}

void __53__AXMLanguageTranslator_installedTranslationLocales___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _descriptionForLocales:v3];
  v5 = AXMediaLogLanguageTranslation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_1AE37B000, v5, OS_LOG_TYPE_DEFAULT, "Installed translation locales: %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E69881B8] store];
  v13[0] = v4;
  v7 = [MEMORY[0x1E695DF00] date];
  v13[1] = v7;
  v12[2] = @"process";
  v8 = [MEMORY[0x1E696AE30] processInfo];
  v9 = [v8 processName];
  v13[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v6 setValue:v10 forKey:@"InstalledTranslationLocales" forAssetType:*MEMORY[0x1E69881E8]];

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }
}

- (void)installOfflineTranslationModelForLocales:(id)a3 fallBackToBaseLanguageIfNeeded:(BOOL)a4 forceReinstall:(BOOL)a5 progress:(id)a6 completion:(id)a7
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = AXMediaLogLanguageTranslation();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(AXMLanguageTranslator *)self _descriptionForLocales:v11];
    *buf = 138412290;
    v25 = v15;
    _os_log_impl(&dword_1AE37B000, v14, OS_LOG_TYPE_DEFAULT, "Requesting installation of translation assets: %@", buf, 0xCu);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __132__AXMLanguageTranslator_installOfflineTranslationModelForLocales_fallBackToBaseLanguageIfNeeded_forceReinstall_progress_completion___block_invoke;
  v19[3] = &unk_1E7A1D448;
  v19[4] = self;
  v20 = v11;
  v23 = a4;
  v21 = v13;
  v22 = v12;
  v16 = v12;
  v17 = v13;
  v18 = v11;
  [(AXMLanguageTranslator *)self availableTranslationLocales:v19];
}

void __132__AXMLanguageTranslator_installOfflineTranslationModelForLocales_fallBackToBaseLanguageIfNeeded_forceReinstall_progress_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) _filteredLocalesToInstallFromAvailableLocales:a2 requestedLocales:*(a1 + 40) fallBackToBaseLanguageIfNeeded:*(a1 + 64)];
  v4 = [v3 mutableCopy];

  if ([v4 count])
  {
    v5 = +[AXMLocSupport sharedInstance];
    v6 = [v5 en_USLocale];
    v7 = [v4 containsObject:v6];

    if ((v7 & 1) == 0)
    {
      v8 = +[AXMLocSupport sharedInstance];
      v9 = [v8 en_USLocale];
      [v4 addObject:v9];
    }

    v10 = AXMediaLogLanguageTranslation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) _descriptionForLocales:v4];
      *buf = 138412290;
      v30 = v11;
      _os_log_impl(&dword_1AE37B000, v10, OS_LOG_TYPE_DEFAULT, "Requesting installation of translation assets after processing: %@", buf, 0xCu);
    }

    v12 = *(a1 + 32);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __132__AXMLanguageTranslator_installOfflineTranslationModelForLocales_fallBackToBaseLanguageIfNeeded_forceReinstall_progress_completion___block_invoke_85;
    v24[3] = &unk_1E7A1D420;
    v13 = v4;
    v14 = *(a1 + 32);
    v25 = v13;
    v26 = v14;
    v27 = *(a1 + 56);
    v28 = *(a1 + 48);
    [v12 installedTranslationLocales:v24];
  }

  else
  {
    v15 = *(a1 + 48);
    v16 = [*(a1 + 32) _descriptionForLocales:*(a1 + 40)];
    v23 = _AXMMakeError(0, @"Requested locales '%@' not available to install", v17, v18, v19, v20, v21, v22, v16);
    (*(v15 + 16))(v15, v23);
  }
}

void __132__AXMLanguageTranslator_installOfflineTranslationModelForLocales_fallBackToBaseLanguageIfNeeded_forceReinstall_progress_completion___block_invoke_85(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DFA8] set];
  if ([v3 count])
  {
    [v4 addObjectsFromArray:v3];
  }

  [v4 addObjectsFromArray:*(a1 + 32)];
  v5 = [v4 allObjects];
  v6 = AXMediaLogLanguageTranslation();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 40) _descriptionForLocales:v5];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1AE37B000, v6, OS_LOG_TYPE_DEFAULT, "Requesting installation of translation assets after combining with currently installed: %@", &buf, 0xCu);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v8 = get_LTInstallRequestClass_softClass;
  v20 = get_LTInstallRequestClass_softClass;
  if (!get_LTInstallRequestClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v22 = __get_LTInstallRequestClass_block_invoke;
    v23 = &unk_1E7A1C700;
    v24 = &v17;
    __get_LTInstallRequestClass_block_invoke(&buf);
    v8 = v18[3];
  }

  v9 = v8;
  _Block_object_dispose(&v17, 8);
  v10 = [v8 alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __132__AXMLanguageTranslator_installOfflineTranslationModelForLocales_fallBackToBaseLanguageIfNeeded_forceReinstall_progress_completion___block_invoke_86;
  v15[3] = &unk_1E7A1D3D0;
  v16 = *(a1 + 48);
  v11 = [v10 initWithLocales:v5 useCellular:0 progressHandler:v15];
  LTTranslatorClass = get_LTTranslatorClass();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __132__AXMLanguageTranslator_installOfflineTranslationModelForLocales_fallBackToBaseLanguageIfNeeded_forceReinstall_progress_completion___block_invoke_2;
  v13[3] = &unk_1E7A1D3F8;
  v14 = *(a1 + 56);
  [LTTranslatorClass installOfflineLocales:v11 completion:v13];
}

void __132__AXMLanguageTranslator_installOfflineTranslationModelForLocales_fallBackToBaseLanguageIfNeeded_forceReinstall_progress_completion___block_invoke_86(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 32))
  {
    v19 = v6;
    v8 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = objc_alloc_init(AXMTranslationModelInstallStatus);
          v16 = [v14 localeIdentifier];
          [(AXMTranslationModelInstallStatus *)v15 setLocaleIdentifier:v16];

          v17 = [v14 progress];
          [v17 fractionCompleted];
          [(AXMTranslationModelInstallStatus *)v15 setProgress:v18];

          -[AXMTranslationModelInstallStatus setState:](v15, "setState:", [v14 offlineState]);
          [v8 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v7 = v19;
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __132__AXMLanguageTranslator_installOfflineTranslationModelForLocales_fallBackToBaseLanguageIfNeeded_forceReinstall_progress_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_filteredLocalesToInstallFromAvailableLocales:(id)a3 requestedLocales:(id)a4 fallBackToBaseLanguageIfNeeded:(BOOL)a5
{
  v5 = a5;
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v27;
    *&v12 = 138412290;
    v25 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        if ([v7 containsObject:{v16, v25, v26}])
        {
          [v9 addObject:v16];
        }

        else
        {
          if (!v5)
          {
            goto LABEL_15;
          }

          v17 = AXMediaLogLanguageTranslation();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v16 localeIdentifier];
            *buf = v25;
            v31 = v18;
            _os_log_impl(&dword_1AE37B000, v17, OS_LOG_TYPE_DEFAULT, "No exact match for translation asset matching '%@'. falling back to base language", buf, 0xCu);
          }

          v19 = +[AXMLocSupport sharedInstance];
          v20 = [v19 localeMatchingBaseLanguageOfLocale:v16 fromLocales:v7];

          if (v20)
          {
            v21 = AXMediaLogLanguageTranslation();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v20 localeIdentifier];
              *buf = v25;
              v31 = v22;
              _os_log_impl(&dword_1AE37B000, v21, OS_LOG_TYPE_DEFAULT, "Found fallback locale: %@", buf, 0xCu);
            }

            [v9 addObject:v20];
          }

          else
          {
LABEL_15:
            v20 = AXMediaLogLanguageTranslation();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v16 localeIdentifier];
              *buf = v25;
              v31 = v23;
              _os_log_impl(&dword_1AE37B000, v20, OS_LOG_TYPE_DEFAULT, "Cannot install requested translation locale '%@'. Not available", buf, 0xCu);
            }
          }
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v13);
  }

  return v9;
}

- (void)installOfflineTranslationModelForLanguageCodeIfNeeded:(id)a3 progress:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AXMediaLogLanguageTranslation();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v8;
    _os_log_impl(&dword_1AE37B000, v11, OS_LOG_TYPE_DEFAULT, "Requesting install of translation asset for languageCode: %@", buf, 0xCu);
  }

  v12 = +[AXMLocSupport sharedInstance];
  v13 = [v12 localeForLanguageCode:v8];

  if (v13)
  {
    v20 = +[AXMLocSupport sharedInstance];
    v21 = [v20 localeBaseLanguageIsEnglish:v13];

    if (v21)
    {
      v22 = AXMediaLogLanguageTranslation();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE37B000, v22, OS_LOG_TYPE_DEFAULT, "Locale base language is English. no download required", buf, 2u);
      }

      if (v10)
      {
        v10[2](v10, 0);
      }
    }

    else
    {
      v25 = v13;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      [(AXMLanguageTranslator *)self installOfflineTranslationModelForLocales:v24 fallBackToBaseLanguageIfNeeded:1 forceReinstall:0 progress:v9 completion:v10];
    }
  }

  else if (v10)
  {
    v23 = _AXMMakeError(0, @"No locale produced for language code: %@", v14, v15, v16, v17, v18, v19, v8);
    (v10)[2](v10, v23);
  }
}

- (void)translateText:(id)a3 toLocale:(id)a4 respectAllowList:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v51 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v11)
  {
    if (!v7)
    {
      v13 = v11;
      goto LABEL_9;
    }

    v13 = [(AXMLanguageTranslator *)self _proposedTranslationLocaleForLocale:v11];
    if (v13)
    {

LABEL_9:
      v21 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
      v44 = 0;
      v45 = &v44;
      v46 = 0x2050000000;
      v22 = get_LTTextTranslationRequestClass_softClass;
      v47 = get_LTTextTranslationRequestClass_softClass;
      if (!get_LTTextTranslationRequestClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __get_LTTextTranslationRequestClass_block_invoke;
        v49 = &unk_1E7A1C700;
        v50 = &v44;
        __get_LTTextTranslationRequestClass_block_invoke(buf);
        v22 = v45[3];
      }

      v23 = v22;
      _Block_object_dispose(&v44, 8);
      v24 = [[v22 alloc] initWithSourceLocale:v21 targetLocale:v13];
      [v24 setTaskHint:1];
      [v24 setCensorSpeech:0];
      [v24 setForcedOfflineTranslation:1];
      v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10];
      [v24 setText:v25];

      v26 = AXMediaLogLanguageTranslation();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v21 localeIdentifier];
        v28 = [v13 localeIdentifier];
        *buf = 138412802;
        *&buf[4] = v27;
        *&buf[12] = 2112;
        *&buf[14] = v28;
        *&buf[22] = 2112;
        v49 = v10;
        _os_log_impl(&dword_1AE37B000, v26, OS_LOG_TYPE_DEFAULT, "Will translate from: '%@' to '%@' : %@", buf, 0x20u);
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __76__AXMLanguageTranslator_translateText_toLocale_respectAllowList_completion___block_invoke;
      v42[3] = &unk_1E7A1D470;
      v43 = v12;
      [v24 setTextTranslationHandler:v42];
      v29 = [(AXMLanguageTranslator *)self translator];
      [v29 translate:v24];

      v11 = v13;
      goto LABEL_14;
    }

    v30 = MEMORY[0x1E696AEC0];
    v31 = [v11 localeIdentifier];
    v32 = [v30 stringWithFormat:@"No suitable proposed locale for given target: %@", v31];

    v33 = AXMediaLogLanguageTranslation();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v32;
      _os_log_impl(&dword_1AE37B000, v33, OS_LOG_TYPE_DEFAULT, "Will not perform translation. %@", buf, 0xCu);
    }

    v40 = _AXMMakeError(0, @"%@", v34, v35, v36, v37, v38, v39, v32);
    (*(v12 + 2))(v12, 0, v40);
  }

  else
  {
    v14 = AXMediaLogLanguageTranslation();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE37B000, v14, OS_LOG_TYPE_DEFAULT, "Will not perform translation. No target locale was provided", buf, 2u);
    }

    v11 = _AXMMakeError(0, @"No target locale was provided", v15, v16, v17, v18, v19, v20, v41);
    (*(v12 + 2))(v12, 0, v11);
  }

LABEL_14:
}

void __76__AXMLanguageTranslator_translateText_toLocale_respectAllowList_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AXMediaLogLanguageTranslation();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 138412802;
    *&v22[4] = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_1AE37B000, v10, OS_LOG_TYPE_DEFAULT, "Did finish translation. Translation text: '%@'. result: '%@'. Error?: '%@'", v22, 0x20u);
  }

  if (v9)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11 = [v8 translations];
    v12 = [v11 firstObject];

    if (v12)
    {
      v19 = objc_alloc_init(AXMTranslatedText);
      v20 = [v12 formattedString];
      [(AXMTranslatedText *)v19 setText:v20];

      [v12 confidence];
      [(AXMTranslatedText *)v19 setConfidence:?];
      -[AXMTranslatedText setLowConfidence:](v19, "setLowConfidence:", [v12 isLowConfidence]);
      v21 = [v8 locale];
      [(AXMTranslatedText *)v19 setTargetLocale:v21];
    }

    else
    {
      v19 = _AXMMakeError(0, @"Could not produce translation", v13, v14, v15, v16, v17, v18, *v22);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (id)translateText:(id)a3 toLocale:(id)a4 respectAllowList:(BOOL)a5 metrics:(id)a6 error:(id *)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__4;
  v38 = __Block_byref_object_dispose__4;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = 0;
  v15 = dispatch_semaphore_create(0);
  v16 = [v14 startMeasure:@"Translate text"];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __79__AXMLanguageTranslator_translateText_toLocale_respectAllowList_metrics_error___block_invoke;
  v24 = &unk_1E7A1D498;
  v26 = &v34;
  v27 = &v28;
  v17 = v15;
  v25 = v17;
  [(AXMLanguageTranslator *)self translateText:v12 toLocale:v13 respectAllowList:v9 completion:&v21];
  v18 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v17, v18);
  [v16 endMeasurement];
  if (a7)
  {
    *a7 = v29[5];
  }

  v19 = v35[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v19;
}

void __79__AXMLanguageTranslator_translateText_toLocale_respectAllowList_metrics_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (_LTTranslator)translator
{
  translator = self->_translator;
  if (!translator)
  {
    v4 = objc_alloc_init(get_LTTranslatorClass());
    v5 = self->_translator;
    self->_translator = v4;

    translator = self->_translator;
  }

  return translator;
}

- (id)_descriptionForLocales:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXMLanguageTranslator *)self _localeIdentifiersForLocales:a3];
  v5 = [v4 componentsJoinedByString:@" "];
  v6 = [v3 stringWithFormat:@"[%@]", v5];

  return v6;
}

- (id)_canonicalLocaleForLocale:(id)a3
{
  v3 = a3;
  v4 = [v3 localeIdentifier];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  if ([v4 isEqual:v5])
  {
    v6 = v3;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v5];
  }

  v7 = v6;

  return v7;
}

- (id)_canonicalLocalesForLocales:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__AXMLanguageTranslator__canonicalLocalesForLocales___block_invoke;
  v5[3] = &unk_1E7A1D4E0;
  v5[4] = self;
  v3 = [a3 ax_flatMappedArrayUsingBlock:v5];

  return v3;
}

@end