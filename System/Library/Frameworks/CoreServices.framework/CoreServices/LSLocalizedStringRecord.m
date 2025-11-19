@interface LSLocalizedStringRecord
@end

@implementation LSLocalizedStringRecord

void __46___LSLocalizedStringRecord_defaultStringValue__block_invoke(uint64_t a1, _LSDatabase **a2, int a3, int a4, LaunchServices::LocalizedString *this)
{
  v6 = LaunchServices::LocalizedString::getDefaultValueUnsafely(this, *a2);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __66___LSLocalizedStringRecord_stringValueWithPreferredLocalizations___block_invoke(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = LaunchServices::LocalizedString::localizeUnsafely(a5, *a2, *(a1 + 32));
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __66___LSLocalizedStringRecord_stringValueWithPreferredLocalizations___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _resolvedPropertyValueForGetter:sel__allUnsanitizedStringValues];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_18;
  }

  v4 = [v2 allKeys];
  v5 = [*(a1 + 32) _resolvedPropertyValueForGetter:sel__missingBundleLocs];
  if (v5)
  {
    v6 = [v4 arrayByAddingObjectsFromArray:v5];

    v4 = v6;
  }

  else
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName(*(a1 + 56));
      __66___LSLocalizedStringRecord_stringValueWithPreferredLocalizations___block_invoke_2_cold_1(Name, buf, v7);
    }
  }

  if (v4)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = [__LSDefaultsGetSharedInstance() preferredLocalizations];
      if (!v10)
      {
        if ([__LSDefaultsGetSharedInstance() isServer])
        {
          v10 = 0;
        }

        else
        {
          if (_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::onceToken != -1)
          {
            __66___LSLocalizedStringRecord_stringValueWithPreferredLocalizations___block_invoke_2_cold_2();
          }

          os_unfair_lock_lock(&_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::cacheLock);
          if (!_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::cache || mach_absolute_time() - _LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::cacheTime > _LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::maxCacheTimeAbsolute)
          {
            v31 = 0;
            v32[0] = &v31;
            v32[1] = 0x3032000000;
            v32[2] = __Block_byref_object_copy__35;
            v32[3] = __Block_byref_object_dispose__35;
            v33 = 0;
            v25 = 0;
            v26 = &v25;
            v27 = 0x3032000000;
            v28 = __Block_byref_object_copy__35;
            v29 = __Block_byref_object_dispose__35;
            v30 = 0;
            v20 = 11;
            while (1)
            {
              v21 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
              v24[0] = MEMORY[0x1E69E9820];
              v24[1] = 3221225472;
              v24[2] = ___ZL78_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcessesv_block_invoke_43;
              v24[3] = &unk_1E6A1D2F0;
              v24[4] = &v25;
              v24[5] = &v31;
              [v21 getSessionLanguagesForImproperlyLocalizedProcessWithCompletionHandler:v24];
              if (v26[5] || !_LSNSErrorIsXPCConnectionInterrupted(*(v32[0] + 40)))
              {
                break;
              }

              if (--v20 <= 1)
              {
                goto LABEL_31;
              }
            }

LABEL_31:
            v22 = v26[5];
            if (!v22)
            {
              v23 = _LSDefaultLog();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                __66___LSLocalizedStringRecord_stringValueWithPreferredLocalizations___block_invoke_2_cold_3(v32, v23);
              }

              v22 = v26[5];
            }

            objc_storeStrong(&_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::cache, v22);
            _LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::cacheTime = mach_absolute_time();
            _Block_object_dispose(&v25, 8);

            _Block_object_dispose(&v31, 8);
          }

          v10 = _LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::cache;
          os_unfair_lock_unlock(&_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::cacheLock);
          if (v10)
          {
            goto LABEL_11;
          }
        }

        v11 = 0;
        goto LABEL_12;
      }
    }

LABEL_11:
    v11 = CFBundleCopyLocalizationsForPreferences(v4, v10);
LABEL_12:
    if ([(__CFArray *)v11 count])
    {
      v12 = [(__CFArray *)v11 objectAtIndexedSubscript:0];
      v13 = [v3 objectForKeyedSubscript:v12];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v16 = [v3 objectForKeyedSubscript:@"LSDefaultLocalizedValue"];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

LABEL_18:
  v19 = *MEMORY[0x1E69E9840];
}

void __43___LSLocalizedStringRecord_allStringValues__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) sanitizeString:?];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __46___LSLocalizedStringRecord_defaultStringValue__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _resolvedPropertyValueForGetter:sel__allUnsanitizedStringValues];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 objectForKeyedSubscript:@"LSDefaultLocalizedValue"];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

void __66___LSLocalizedStringRecord_stringValueWithPreferredLocalizations___block_invoke_2_cold_1(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Could not find missing localizations computing string value in %s... resulting locale may be unexpected!", buf, 0xCu);
}

void __66___LSLocalizedStringRecord_stringValueWithPreferredLocalizations___block_invoke_2_cold_3(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "could not fetch preferred locales for LSLocalizedStringRecord: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end