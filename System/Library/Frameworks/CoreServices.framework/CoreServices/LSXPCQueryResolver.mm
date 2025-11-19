@interface LSXPCQueryResolver
@end

@implementation LSXPCQueryResolver

void __59___LSXPCQueryResolver__resolveQueries_XPCConnection_error___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59___LSXPCQueryResolver__resolveQueries_XPCConnection_error___block_invoke_2;
  v7[3] = &unk_1E6A18DF0;
  v7[4] = *(a1 + 40);
  v2 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v7];
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59___LSXPCQueryResolver__resolveQueries_XPCConnection_error___block_invoke_137;
  v5[3] = &unk_1E6A1DB10;
  v6 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  [v2 resolveQueries:v3 legacySPI:v4 completionHandler:v5];
}

void __59___LSXPCQueryResolver__resolveQueries_XPCConnection_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  objc_storeStrong((*(v6 + 8) + 40), a2);
  v7 = _LSDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __59___LSXPCQueryResolver__resolveQueries_XPCConnection_error___block_invoke_2_cold_1(v5, v7, v8, v9, v10, v11, v12, v13);
  }
}

void __59___LSXPCQueryResolver__resolveQueries_XPCConnection_error___block_invoke_137(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    if (![*(*(*(a1 + 32) + 8) + 40) count])
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      goto LABEL_8;
    }

    v8 = [v6 mutableCopy];
    [v8 addEntriesFromDictionary:*(*(*(a1 + 32) + 8) + 40)];
    v9 = [v8 copy];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __59___LSXPCQueryResolver__resolveQueries_XPCConnection_error___block_invoke_137_cold_1(v7, v8);
    }
  }

LABEL_8:
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;
  v14 = v6;

  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v7;
}

void __80___LSXPCQueryResolver__enumerateResolvedResultsOfQuery_XPCConnection_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v3);
}

void __59___LSXPCQueryResolver__resolveQueries_XPCConnection_error___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(*(*a1 + 8) + 40));
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a2, a3, "Error fetching database info from lsd: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __59___LSXPCQueryResolver__resolveQueries_XPCConnection_error___block_invoke_137_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "Error resolving queries: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end