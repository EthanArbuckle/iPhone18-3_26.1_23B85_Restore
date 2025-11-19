@interface ASWebsiteNameProvider
@end

@implementation ASWebsiteNameProvider

void __33___ASWebsiteNameProvider_prewarm__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v9 = [v3 count];
    _os_log_impl(&dword_1B1C8D000, v4, OS_LOG_TYPE_INFO, "prewarm found %lu entries", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33___ASWebsiteNameProvider_prewarm__block_invoke_95;
  v7[3] = &unk_1E7AF8110;
  v7[4] = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33___ASWebsiteNameProvider_prewarm__block_invoke_2;
  v6[3] = &unk_1E7AF80E8;
  v6[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  v5 = *MEMORY[0x1E69E9840];
}

void __77___ASWebsiteNameProvider_beginLoadingBuiltInAndRemotelyUpdatableWebsiteNames__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77___ASWebsiteNameProvider_beginLoadingBuiltInAndRemotelyUpdatableWebsiteNames__block_invoke_2;
  v5[3] = &unk_1E7AF8160;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __56___ASWebsiteNameProvider__initWithShouldLoadQuirksList___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] as_authenticationServicesBundle];
  v6 = [v2 URLForResource:@"WebsiteNamesForPasswordManager" withExtension:@"sqlite"];

  v3 = [objc_alloc(MEMORY[0x1E69C89E8]) initWithURL:v6 queue:*(*(a1 + 32) + 32)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __77___ASWebsiteNameProvider_beginLoadingBuiltInAndRemotelyUpdatableWebsiteNames__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(*(a1 + 32) + 112);

  return [v2 knownWebsiteNamesDidChange];
}

void __78___ASWebsiteNameProvider_debug_fetchWebsiteNamesForDomains_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = *(WeakRetained + 11);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), WeakRetained);
}

void __54___ASWebsiteNameProvider_debug_deleteAllPersistedData__block_invoke(uint64_t a1, char a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __54___ASWebsiteNameProvider_debug_deleteAllPersistedData__block_invoke_cold_1(a2, v3);
  }
}

uint64_t __56___ASWebsiteNameProvider__bestTitleFromCandidateTitles___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uppercaseString];
  v5 = [v3 isEqualToString:v4];

  v6 = [v3 safari_hasCaseInsensitivePrefix:@"The "];
  v7 = -2;
  if (!v5)
  {
    v7 = -1;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5 << 63 >> 63;
  }

  if (([v3 safari_hasCaseInsensitiveSuffix:@" Website"] & 1) != 0 || objc_msgSend(v3, "safari_hasCaseInsensitiveSuffix:", @"Inc."))
  {
    --v8;
  }

  v9 = [*(a1 + 32) _undesirableCharactersCharacterSet];
  v10 = [v3 rangeOfCharacterFromSet:v9 options:0];

  return v8 - (v10 != 0x7FFFFFFFFFFFFFFFLL);
}

uint64_t __56___ASWebsiteNameProvider__bestTitleFromCandidateTitles___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(*(a1 + 32) + 16))();
  v8 = (*(*(a1 + 32) + 16))();
  v9 = v7 - v8;
  if (v7 == v8)
  {
    v10 = [v5 length];
    v9 = v10 - [v6 length];
  }

  v11 = -1;
  if (v9 >= 1)
  {
    v11 = 1;
  }

  if (v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __70___ASWebsiteNameProvider_fetchWebsiteNameForDomain_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = a1[4];
      v14 = [v5 siteName];
      v15 = [v5 title];
      v16 = [v5 originalTitle];
      v17 = 138740739;
      v18 = v13;
      v19 = 2117;
      v20 = v14;
      v21 = 2117;
      v22 = v15;
      v23 = 2117;
      v24 = v16;
      _os_log_debug_impl(&dword_1B1C8D000, v7, OS_LOG_TYPE_DEBUG, "WebsiteNameProvider got metadata for domain %{sensitive}@: siteName: %{sensitive}@, title: %{sensitive}@, originalTitle: %{sensitive}@", &v17, 0x2Au);
    }

    v8 = a1[6];
    v9 = [objc_opt_class() websiteNameForLinkMetadata:v5];
    v10 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __70___ASWebsiteNameProvider_fetchWebsiteNameForDomain_completionHandler___block_invoke_cold_1(v9, a1, v10);
    }

    (*(a1[5] + 16))();
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __70___ASWebsiteNameProvider_fetchWebsiteNameForDomain_completionHandler___block_invoke_cold_2(a1, v6, v11);
    }

    (*(a1[5] + 16))();
  }

  v12 = *MEMORY[0x1E69E9840];
}

id __66___ASWebsiteNameProvider__trimErrantLeadingAndTrailingCharacters___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 substringFromIndex:1];

  return v2;
}

id __66___ASWebsiteNameProvider__trimErrantLeadingAndTrailingCharacters___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 substringToIndex:{objc_msgSend(v2, "length") - 1}];

  return v3;
}

void __47___ASWebsiteNameProvider__openDatabaseIfNeeded__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v3 = *(v2 + 40);
    v10 = 0;
    v4 = [v3 openWithAccessType:1 error:&v10];
    v5 = v10;
    *(*(a1 + 32) + 24) = v4;
    v6 = *(*(a1 + 32) + 24);
    if ((v6 & 1) == 0)
    {
      v7 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [v5 safari_privacyPreservingDescription];
        __47___ASWebsiteNameProvider__openDatabaseIfNeeded__block_invoke_cold_1(v8, buf, v7);
      }

      v6 = *(*(a1 + 32) + 24);
    }

    *(*(*(a1 + 40) + 8) + 24) = v6;
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __60___ASWebsiteNameProvider_setWebsiteNameConsumer_completion___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 112), *(a1 + 40));
  [*(a1 + 32) _suspendOrResumeWebsiteFetchingOperationQueue];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __52___ASWebsiteNameProvider_knownWebsiteNameForDomain___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 96) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __52___ASWebsiteNameProvider_knownWebsiteNameForDomain___block_invoke_2(void *a1)
{
  v7 = SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&>(*(a1[4] + 40), @"SELECT name FROM websiteNames WHERE domain = ?", a1 + 5);
  v2 = [v7 nextObject];
  v3 = [v2 stringAtIndex:0];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [v7 statement];
  [v6 invalidate];
}

uint64_t __52___ASWebsiteNameProvider_knownWebsiteNameForDomain___block_invoke_3(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __52___ASWebsiteNameProvider_knownWebsiteNameForDomain___block_invoke_4(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __52___ASWebsiteNameProvider_knownWebsiteNameForDomain___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _processMetadataEntryFetchedFromKeychain:v3 forDomain:*(a1 + 40) allowRefreshingDataFromNetwork:{objc_msgSend(MEMORY[0x1E69C8880], "isNetworkFetchingForPasswordsEnabled")}];
}

void __71___ASWebsiteNameProvider_fetchOperation_finishedWithResult_completion___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) domain];
  v4 = [*v2 metadataEntry];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = [v4 websiteNameDateLastRefreshed];
  [v6 _cacheFetchedAndKeychainBackedWebsiteName:v5 forDomain:v3 dateLastRefreshed:v7];

  v8 = *(*(a1 + 48) + 112);
  v14[0] = v3;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v8 knownWebsiteNamesDidChangeOnDomains:v9];

  [v4 updateWebsiteName:v5];
  v10 = *(*(a1 + 48) + 56);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71___ASWebsiteNameProvider_fetchOperation_finishedWithResult_completion___block_invoke_2;
  v12[3] = &unk_1E7AF8370;
  v13 = *(a1 + 56);
  [v10 saveMetadataEntry:v4 forDomain:v3 completionHandler:v12];

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __68___ASWebsiteNameProvider__fetchDataForDomainIfNeeded_metadataEntry___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFinished])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 domain];
    v4 = [v5 isEqualToString:*(a1 + 32)];
  }

  return v4;
}

void __68___ASWebsiteNameProvider__cacheDatabaseBackedWebsiteName_forDomain___block_invoke(uint64_t *a1)
{
  if ([a1[4] length])
  {
    v2 = a1[4];
    v3 = *(a1[5] + 96);
    v4 = a1[6];

    [v3 setObject:v2 forKeyedSubscript:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = a1[6];
    v7 = v5;
    [*(a1[5] + 96) setObject:? forKeyedSubscript:?];
  }
}

uint64_t __96___ASWebsiteNameProvider__cacheFetchedAndKeychainBackedWebsiteName_forDomain_dateLastRefreshed___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    [*(*(a1 + 40) + 88) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 48)];
  }

  else
  {
    v2 = [MEMORY[0x1E695DFB0] null];
    [*(*(a1 + 40) + 88) setObject:v2 forKeyedSubscript:*(a1 + 48)];
  }

  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(*(a1 + 40) + 80);

  return [v5 setObject:v3 forKeyedSubscript:v4];
}

void __54___ASWebsiteNameProvider_debug_deleteAllPersistedData__block_invoke_cold_1(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_1B1C8D000, a2, OS_LOG_TYPE_DEBUG, "Deleting all persisted data with success: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void __70___ASWebsiteNameProvider_fetchWebsiteNameForDomain_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v5 = 138740227;
  v6 = a1;
  v7 = 2117;
  v8 = v3;
  _os_log_debug_impl(&dword_1B1C8D000, log, OS_LOG_TYPE_DEBUG, "WebsiteNameProvider found %{sensitive}@ as a website name for domain %{sensitive}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __70___ASWebsiteNameProvider_fetchWebsiteNameForDomain_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138740227;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1B1C8D000, log, OS_LOG_TYPE_ERROR, "Fetch for %{sensitive}@ failed with error %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __47___ASWebsiteNameProvider__openDatabaseIfNeeded__block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B1C8D000, log, OS_LOG_TYPE_ERROR, "Failed to open database: %{public}@", buf, 0xCu);
}

@end