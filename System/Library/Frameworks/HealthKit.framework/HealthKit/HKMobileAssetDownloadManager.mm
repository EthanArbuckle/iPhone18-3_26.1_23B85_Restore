@interface HKMobileAssetDownloadManager
@end

@implementation HKMobileAssetDownloadManager

void __63___HKMobileAssetDownloadManager_downloadAssetsWithQueryParams___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)])
  {
    _HKInitializeLogging();
    v2 = HKLogMobileAsset;
    if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v9 = 138543618;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Load requested for queryParams already in progress: %@", &v9, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 32), *(a1 + 32));
    _HKInitializeLogging();
    v5 = HKLogMobileAsset;
    if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = 138543618;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning load for queryParams: %@", &v9, 0x16u);
    }

    [*(a1 + 32) _queue_fetchAssetsWithLocalInformation:*(*(a1 + 32) + 40) shouldRequery:1 queryParams:*(a1 + 40) returnTypes:*(*(a1 + 32) + 72)];
    [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __93___HKMobileAssetDownloadManager_fetchAssetsWithQueryParams_onlyLocal_returnTypes_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _generateAssetQueryFromQueryParams:*(a1 + 40) returnTypes:*(a1 + 56)];
  _HKInitializeLogging();
  v3 = HKLogMobileAsset;
  if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138543618;
    v7 = v4;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning non-downloading fetch for query: %@", &v6, 0x16u);
  }

  [*(a1 + 32) _queue_fetchAssetsWithQuery:v2 onlyLocal:*(a1 + 64) completion:*(a1 + 48)];

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __65___HKMobileAssetDownloadManager_downloadMobileAssets_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v2 = HKLogMobileAsset;
  if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v8 = 138543618;
    v9 = v4;
    v10 = 2048;
    v11 = [v3 count];
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning download operation for %ld assets", &v8, 0x16u);
  }

  result = [*(a1 + 32) _queue_downloadAssets:*(a1 + 40) completion:*(a1 + 48)];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke(void *a1, void *a2)
{
  v4 = a2;
  dispatch_assert_queue_V2(*(a1[4] + 24));
  if (!*(*(a1[6] + 8) + 24))
  {
    v3 = a1[5];
    if (v3)
    {
      (*(v3 + 16))(v3, *(*(a1[7] + 8) + 24), v4);
    }
  }
}

void __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_303(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v17;
      do
      {
        v6 = 0;
        do
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v16 + 1) + 8 * v6);
          if ([v7 state] == 2 || objc_msgSend(v7, "state") == 3 || objc_msgSend(v7, "state") == 6)
          {
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v13[2] = __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_2;
            v13[3] = &unk_1E7384AB8;
            v15 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
            v8 = *(a1 + 48);
            v13[4] = *(a1 + 40);
            v13[5] = v7;
            v14 = v8;
            [v7 purge:v13];
          }

          else
          {
            --*(*(*(a1 + 56) + 8) + 24);
            (*(*(a1 + 48) + 16))();
          }

          ++v6;
        }

        while (v4 != v6);
        v9 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v4 = v9;
      }

      while (v9);
    }

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = *(*(a1 + 48) + 16);
    v12 = *MEMORY[0x1E69E9840];

    v11();
  }
}

void __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) _errorWithDomain:@"MAPurgeResult" code:a2];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) &= v3 == 0;
  --*(*(*(a1 + 64) + 8) + 24);
  _HKInitializeLogging();
  v4 = HKLogMobileAsset;
  if (v3)
  {
    if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_ERROR))
    {
      __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_2_cold_1(v3, a1, v4);
    }
  }

  else if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEBUG))
  {
    __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_2_cold_2(a1, v4);
  }

  v5 = *(*(a1 + 32) + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_304;
  v8[3] = &unk_1E7376AC0;
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) _errorWithDomain:@"MADownloadResult" code:a2];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke_2(uint64_t a1)
{
  v3 = (a1 + 56);
  v2 = *(a1 + 56);
  if (*(*(v2 + 8) + 40))
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_ERROR))
    {
      __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke_2_cold_1(a1, v3);
    }

    v2 = *v3;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke_307;
  v5[3] = &unk_1E7384B58;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v8 = v2;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v4 queryMetaData:v5];
}

void __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke_307(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke_2_308;
  block[3] = &unk_1E7384B30;
  v10 = a2;
  block[4] = v3;
  v6 = *(a1 + 48);
  v5 = v6;
  v9 = v6;
  v8 = *(a1 + 40);
  dispatch_async(v4, block);
}

void __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke_2_308(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = [*(a1 + 32) _errorWithDomain:@"MAQueryResult" code:?];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) results];
  (*(v5 + 16))(v5, v6, *(*(*(a1 + 56) + 8) + 40));
}

void __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) _errorWithDomain:@"MADownloadResult" code:a2];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_2(uint64_t a1)
{
  v2 = a1 + 48;
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4[2] removeObject:*(a1 + 40)];
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_ERROR))
    {
      __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_2_cold_1(v5, v2);
    }

    [*v5 _callErrorHandlerWithError:*(*(*v2 + 8) + 40)];
  }

  else
  {
    v6 = [v4 _generateAssetQueryFromQueryParams:*(a1 + 40) returnTypes:*(a1 + 56)];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_309;
    v10[3] = &unk_1E7384BF8;
    v10[4] = *(a1 + 32);
    v11 = v6;
    v14 = *(a1 + 64);
    v9 = *(a1 + 40);
    v7 = v9;
    v12 = v9;
    v13 = *(a1 + 56);
    v8 = v6;
    [v8 queryMetaData:v10];
  }
}

void __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_309(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v3 = *(a1 + 56);
  v7 = *(a1 + 32);
  v4 = *(v7 + 24);
  block[2] = __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_2_310;
  block[3] = &unk_1E7384BD0;
  v11 = a2;
  v5 = *(&v7 + 1);
  v13 = *(a1 + 72);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v3;
  v9 = v7;
  v10 = v6;
  v12 = *(a1 + 64);
  dispatch_async(v4, block);
}

void __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_2_310(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    v2 = (a1 + 32);
    v3 = [*(a1 + 32) _errorWithDomain:@"MAQueryResult" code:?];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_ERROR))
    {
      __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_2_310_cold_1((a1 + 32), a1 + 56);
    }

    [*v2 _callErrorHandlerWithError:*(*(*(a1 + 56) + 8) + 40)];
  }

  v6 = [*(a1 + 40) results];
  if (v6)
  {

    goto LABEL_14;
  }

  if (*(a1 + 80) != 1)
  {
LABEL_14:
    v9 = *(a1 + 32);
    v10 = v9[41];
    v11 = [*(a1 + 40) results];
    if (v10 == 1)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_317;
      v13[3] = &unk_1E7384BA8;
      v13[4] = *(a1 + 32);
      v14 = *(a1 + 48);
      [v9 _queue_downloadAssets:v11 completion:v13];
    }

    else
    {
      [v9 _callDownloadCompletionHandlerWithAssets:v11 queryParams:*(a1 + 48)];
    }

    goto LABEL_17;
  }

  _HKInitializeLogging();
  v7 = HKLogMobileAsset;
  if (os_log_type_enabled(HKLogMobileAsset, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 81))
    {
      v8 = @"remote";
    }

    else
    {
      v8 = @"local";
    }

    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "Unable to fetch assets, fetching %{public}@ results.", buf, 0xCu);
  }

  [*(a1 + 32) _queue_fetchAssetsWithLocalInformation:(*(a1 + 81) & 1) == 0 shouldRequery:0 queryParams:*(a1 + 48) returnTypes:*(a1 + 72)];
LABEL_17:
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __66___HKMobileAssetDownloadManager__queue_downloadAssets_completion___block_invoke(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 24))
  {
    v1 = result;
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))(result, *(*(*(v1 + 48) + 8) + 40), *(*(*(v1 + 56) + 8) + 40));
    }
  }

  return result;
}

void __66___HKMobileAssetDownloadManager__queue_downloadAssets_completion___block_invoke_2(void *a1, uint64_t a2, int a3, void *a4)
{
  v17 = a4;
  [*(a1[4] + 8) removeObject:a2];
  if (a3)
  {
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = v9;
      v11 = *(v8 + 40);
      *(v8 + 40) = v10;
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v13 = *(a1[7] + 8);
      v11 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    [*(*(a1[7] + 8) + 40) addObject:a1[5]];
  }

  --*(*(a1[8] + 8) + 24);
  v14 = *(a1[9] + 8);
  v16 = *(v14 + 40);
  v15 = (v14 + 40);
  if (!v16)
  {
    objc_storeStrong(v15, a4);
  }

  (*(a1[6] + 16))();
}

void __86___HKMobileAssetDownloadManager__callDownloadCompletionHandlerWithAssets_queryParams___block_invoke(void *a1)
{
  [*(a1[4] + 16) removeObject:a1[5]];
  v2 = _Block_copy(*(a1[4] + 88));
  v5 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, a1[6]);
  }

  if (![*(a1[4] + 8) count])
  {
    v3 = a1[4];
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }
}

void __60___HKMobileAssetDownloadManager__callErrorHandlerWithError___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 64));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 40));
    v2 = v3;
  }
}

void __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = *(a2 + 40);
  OUTLINED_FUNCTION_1(&dword_19197B000, a2, a3, "Failed to purge asset with error: %{public}@\n(%@)", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void __63___HKMobileAssetDownloadManager_removeMobileAssets_completion___block_invoke_2_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_19197B000, a2, OS_LOG_TYPE_DEBUG, "Purged asset (%@)", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __82___HKMobileAssetDownloadManager__queue_fetchAssetsWithQuery_onlyLocal_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_2_12(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v3, v4, "%{public}@: Error querying remote assets: %{public}@, returning local assets.");
  v5 = *MEMORY[0x1E69E9840];
}

void __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_2_cold_1(uint64_t *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  OUTLINED_FUNCTION_2_12(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v3, v4, "%{public}@: Error downloading catalog: %{public}@");
  v5 = *MEMORY[0x1E69E9840];
}

void __110___HKMobileAssetDownloadManager__queue_fetchAssetsWithLocalInformation_shouldRequery_queryParams_returnTypes___block_invoke_2_310_cold_1(uint64_t *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  OUTLINED_FUNCTION_2_12(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v3, v4, "%{public}@: Error querying metadata: %{public}@");
  v5 = *MEMORY[0x1E69E9840];
}

@end