@interface LSCanOpenURLManager
@end

@implementation LSCanOpenURLManager

void __37___LSCanOpenURLManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(_LSCanOpenURLManager);
  v1 = +[_LSCanOpenURLManager sharedManager]::result;
  +[_LSCanOpenURLManager sharedManager]::result = v0;
}

void __74___LSCanOpenURLManager_resetSchemeQueryLimitForApplicationWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];

  if (v2)
  {
    [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
    [*(a1 + 32) writeSchemesMap];
  }

  JUMPOUT(0x1865D7C50);
}

void __62___LSCanOpenURLManager_PrivateSchemeChecking__writeSchemesMap__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v13 = 0;
  v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:v2 format:200 options:0 error:&v13];
  v4 = v13;
  if (v3)
  {
    v5 = [__LSDefaultsGetSharedInstance() queriedSchemesMapFileURL];
    if (!v5)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"LSCanOpenURLManager.mm" lineNumber:172 description:@"Failed to get URL for lsd-schemes file"];
    }

    v12 = v4;
    v6 = [v3 writeToURL:v5 options:268435457 error:&v12];
    v7 = v12;

    if ((v6 & 1) == 0)
    {
      v8 = _LSDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v5 path];
        __62___LSCanOpenURLManager_PrivateSchemeChecking__writeSchemesMap__block_invoke_cold_1(v9, v7, buf, v8);
      }
    }
  }

  else
  {
    v5 = _LSDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62___LSCanOpenURLManager_PrivateSchemeChecking__writeSchemesMap__block_invoke_cold_2();
    }

    v7 = v4;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __111___LSCanOpenURLManager_PrivateSchemeChecking__legacy_isBundleID_bundleData_context_allowedToCheckScheme_error___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __111___LSCanOpenURLManager_PrivateSchemeChecking__legacy_isBundleID_bundleData_context_allowedToCheckScheme_error___block_invoke_74(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 arrayByAddingObject:*(a1 + 48)];

    v5 = v4;
  }

  else
  {
    v7[0] = *(a1 + 48);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  [*(*(a1 + 32) + 8) setObject:v5 forKeyedSubscript:*(a1 + 40)];
  MEMORY[0x1865D7C50]([*(a1 + 32) writeSchemesMap]);

  v6 = *MEMORY[0x1E69E9840];
}

void __62___LSCanOpenURLManager_PrivateSchemeChecking__writeSchemesMap__block_invoke_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Could not store lsd-schemes file at %@: %@", buf, 0x16u);
}

void __62___LSCanOpenURLManager_PrivateSchemeChecking__writeSchemesMap__block_invoke_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(&dword_18162D000, v0, OS_LOG_TYPE_ERROR, "Could not serialize lsd-schemes file: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end