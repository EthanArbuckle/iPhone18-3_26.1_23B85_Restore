@interface ANEClient
@end

@implementation ANEClient

uint64_t __30___ANEClient_sharedConnection__block_invoke()
{
  sharedConnection_client = [[_ANEClient alloc] initWithRestrictedAccessAllowed:0];

  return MEMORY[0x1EEE66BB8]();
}

void __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke(uint64_t a1)
{
  v2 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_cold_1(a1, v2);
  }
}

void __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_6(uint64_t a1)
{
  v2 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_6_cold_1(a1, v2);
  }
}

void __33___ANEClient_fastConnWithoutLock__block_invoke(uint64_t a1)
{
  v2 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_cold_1(a1, v2);
  }
}

void __33___ANEClient_fastConnWithoutLock__block_invoke_10(uint64_t a1)
{
  v2 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_6_cold_1(a1, v2);
  }
}

void __48___ANEClient_connectionForLoadingModel_options___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  if ([a3 containsObject:*(a1 + 32)])
  {
    v7 = [*(a1 + 40) connections];
    v8 = [v7 objectForKeyedSubscript:v11];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

void __44___ANEClient_connectionUsedForLoadingModel___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  if ([a3 containsObject:*(a1 + 32)])
  {
    v7 = [*(a1 + 40) connections];
    v8 = [v7 objectForKeyedSubscript:v11];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

void __45___ANEClient_compileModel_options_qos_error___block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = *(*(a1 + 56) + 8);
  v21 = *(v4 + 40);
  v5 = [_ANESandboxingHelper issueSandboxExtensionForModel:v2 error:&v21];
  objc_storeStrong((v4 + 40), v21);
  if (*(*(v3[3] + 8) + 40))
  {
    v6 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      __45___ANEClient_compileModel_options_qos_error___block_invoke_cold_1(a1, v6, v3);
    }
  }

  else
  {
    v7 = [*(a1 + 40) conn];
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(a1 + 88);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45___ANEClient_compileModel_options_qos_error___block_invoke_2;
    v14[3] = &unk_1E79BA4F8;
    v11 = *(a1 + 64);
    v18 = *(a1 + 72);
    v16 = v11;
    v12 = v8;
    v13 = *(a1 + 56);
    v15 = v12;
    v17 = v13;
    v20 = *(a1 + 88);
    v19 = *(a1 + 80);
    [v7 compileModel:v12 sandboxExtension:v5 options:v9 qos:v10 withReply:v14];
  }
}

void __45___ANEClient_compileModel_options_qos_error___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 56);
    v24 = v12;
    v25 = NSStringFromSelector(v23);
    v26 = 138413058;
    *v27 = v25;
    *&v27[8] = 1024;
    *v28 = a2;
    *&v28[4] = 2112;
    *&v28[6] = v10;
    v29 = 2112;
    v30 = v11;
    _os_log_debug_impl(&dword_1AD246000, v24, OS_LOG_TYPE_DEBUG, "%@: success=%d : cacheURLIdentifier=%@ : err=%@", &v26, 0x26u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (a2)
  {
    [*(a1 + 32) updateModelAttributes:v9 state:2];
    [*(a1 + 32) setCacheURLIdentifier:v10];
  }

  if (v11)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  }

  v13 = *(*(*(a1 + 40) + 8) + 24);
  v14 = *(a1 + 72);
  [*(a1 + 32) string_id];
  kdebug_trace();
  v15 = gLogger_1;
  v16 = v15;
  v17 = *(a1 + 64);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v18 = *(a1 + 32);
    v19 = *(*(*(a1 + 40) + 8) + 24);
    v20 = *(a1 + 72);
    v21 = [v18 string_id];
    v26 = 67109632;
    *v27 = v19;
    *&v27[4] = 1024;
    *&v27[6] = v20;
    *v28 = 2048;
    *&v28[2] = v21;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v16, OS_SIGNPOST_EVENT, v17, "_ANEF_MODEL_COMPILE", "ok:%u qos:%u model.string_id:%llu", &v26, 0x18u);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __46___ANEClient_doUnloadModel_options_qos_error___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 88);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46___ANEClient_doUnloadModel_options_qos_error___block_invoke_2;
  v8[3] = &unk_1E79BA548;
  v11 = *(a1 + 72);
  v10 = *(a1 + 56);
  v13 = v5;
  v6 = v2;
  v7 = *(a1 + 80);
  v9 = v6;
  v12 = v7;
  [v3 unloadModel:v6 options:v4 qos:v5 withReply:v8];
}

void __46___ANEClient_doUnloadModel_options_qos_error___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 56);
    v9 = v7;
    v10 = NSStringFromSelector(v8);
    v21 = 138412802;
    *v22 = v10;
    *&v22[8] = 1024;
    v23[0] = a2;
    LOWORD(v23[1]) = 2112;
    *(&v23[1] + 2) = v6;
    _os_log_impl(&dword_1AD246000, v9, OS_LOG_TYPE_INFO, "%@: success=%d : err=%@", &v21, 0x1Cu);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  v11 = *(*(*(a1 + 40) + 8) + 24);
  v12 = *(a1 + 72);
  [*(a1 + 32) string_id];
  kdebug_trace();
  v13 = gLogger_1;
  v14 = v13;
  v15 = *(a1 + 64);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v16 = *(a1 + 32);
    v17 = *(*(*(a1 + 40) + 8) + 24);
    v18 = *(a1 + 72);
    v19 = [v16 string_id];
    v21 = 67109632;
    *v22 = v17;
    *&v22[4] = 1024;
    *&v22[6] = v18;
    LOWORD(v23[0]) = 2048;
    *(v23 + 2) = v19;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v14, OS_SIGNPOST_EVENT, v15, "_ANEF_MODEL_UNLOAD", "ok:%u qos:%u model.string_id:%llu", &v21, 0x18u);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __37___ANEClient_compiledModelExistsFor___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 56);
    v16 = v9;
    v17 = NSStringFromSelector(v15);
    v18 = 138413058;
    v19 = v17;
    v20 = 1024;
    v21 = a2;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    _os_log_debug_impl(&dword_1AD246000, v16, OS_LOG_TYPE_DEBUG, "%@: success=%d : cacheURLIdentifier=%@ : err=%@", &v18, 0x26u);
  }

  [*(a1 + 32) setCacheURLIdentifier:v7];
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  }

  [*(a1 + 32) string_id];
  kdebug_trace();
  v10 = gLogger_1;
  v11 = v10;
  v12 = *(a1 + 64);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = [*(a1 + 32) string_id];
    v18 = 134218240;
    v19 = v13;
    v20 = 1024;
    v21 = a2;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v11, OS_SIGNPOST_EVENT, v12, "_ANEF_COMPILED_MODEL_EXISTS", "model.string_id:%llu success:%u", &v18, 0x12u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __33___ANEClient_purgeCompiledModel___block_invoke(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 56);
    v16 = v7;
    v17 = NSStringFromSelector(v15);
    v18 = 138412802;
    v19 = v17;
    v20 = 1024;
    v21 = a2;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_1AD246000, v16, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", &v18, 0x1Cu);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  [*(a1 + 32) string_id];
  v8 = *(*(*(a1 + 40) + 8) + 24);
  kdebug_trace();
  v9 = gLogger_1;
  v10 = v9;
  v11 = *(a1 + 64);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = [*(a1 + 32) string_id];
    v13 = *(*(*(a1 + 40) + 8) + 24);
    v18 = 134218240;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v10, OS_SIGNPOST_EVENT, v11, "_ANEF_PURGE_COMPILED_MODEL", "model.string_id:%llu ok:%u", &v18, 0x12u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __46___ANEClient_compiledModelExistsMatchingHash___block_invoke(void *a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[6];
    v13 = v7;
    v14 = NSStringFromSelector(v12);
    v15 = 138412802;
    *v16 = v14;
    *&v16[8] = 1024;
    v17 = a2;
    v18 = 2112;
    v19 = v6;
    _os_log_debug_impl(&dword_1AD246000, v13, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", &v15, 0x1Cu);
  }

  *(*(a1[4] + 8) + 24) = a2;
  if (v6)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  kdebug_trace();
  v8 = gLogger_1;
  v9 = v8;
  v10 = a1[7];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v15 = 67109376;
    *v16 = 0;
    *&v16[4] = 1024;
    *&v16[6] = a2;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v9, OS_SIGNPOST_EVENT, v10, "_ANEF_COMPILED_MODEL_EXISTS", "%u success:%u", &v15, 0xEu);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __45___ANEClient_purgeCompiledModelMatchingHash___block_invoke(void *a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v14 = a1[6];
    v15 = v7;
    v16 = NSStringFromSelector(v14);
    v17 = 138412802;
    *v18 = v16;
    *&v18[8] = 1024;
    v19 = a2;
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_1AD246000, v15, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", &v17, 0x1Cu);
  }

  *(*(a1[4] + 8) + 24) = a2;
  if (v6)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  v8 = *(*(a1[4] + 8) + 24);
  kdebug_trace();
  v9 = gLogger_1;
  v10 = v9;
  v11 = a1[7];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = *(*(a1[4] + 8) + 24);
    v17 = 67109376;
    *v18 = 0;
    *&v18[4] = 1024;
    *&v18[6] = v12;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v10, OS_SIGNPOST_EVENT, v11, "_ANEF_PURGE_COMPILED_MODEL", "%u ok:%u", &v17, 0xEu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __37___ANEClient_sharedPrivateConnection__block_invoke()
{
  sharedPrivateConnection_client = [[_ANEClient alloc] initWithRestrictedAccessAllowed:1];

  return MEMORY[0x1EEE66BB8]();
}

void __31___ANEClient_beginRealTimeTask__block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v6 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 40);
    v9 = v6;
    v10 = NSStringFromSelector(v8);
    v11 = 138412802;
    v12 = v10;
    v13 = 1024;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_1AD246000, v9, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", &v11, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __29___ANEClient_endRealTimeTask__block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v6 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 40);
    v9 = v6;
    v10 = NSStringFromSelector(v8);
    v11 = 138412802;
    v12 = v10;
    v13 = 1024;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_1AD246000, v9, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", &v11, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __44___ANEClient_doLoadModel_options_qos_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:kANEFModelHasCacheURLIdentifierKey[0]];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = 0;
LABEL_6:
    v8 = [*(a1 + 48) connectionForLoadingModel:*(a1 + 40) options:*(a1 + 32)];
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 88);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44___ANEClient_doLoadModel_options_qos_error___block_invoke_2;
    v12[3] = &unk_1E79BA638;
    v15 = *(a1 + 72);
    v13 = v9;
    v14 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
    v17 = *(a1 + 88);
    v16 = *(a1 + 80);
    [v8 loadModel:v13 sandboxExtension:v4 options:v10 qos:v11 withReply:v12];

    goto LABEL_7;
  }

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  v18 = *(v6 + 40);
  v4 = [_ANESandboxingHelper issueSandboxExtensionForModel:v5 error:&v18];
  objc_storeStrong((v6 + 40), v18);
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    goto LABEL_6;
  }

  v7 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
  {
    __45___ANEClient_compileModel_options_qos_error___block_invoke_cold_1(a1, v7, (a1 + 40));
  }

LABEL_7:
}

void __44___ANEClient_doLoadModel_options_qos_error___block_invoke_2(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v54 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v39 = a7;
  v16 = a8;
  v17 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    aSelectora = *(a1 + 56);
    v35 = v17;
    aSelector = NSStringFromSelector(aSelectora);
    v36 = *(a1 + 32);
    *buf = 138414082;
    *v41 = aSelector;
    *&v41[8] = 2048;
    *v42 = v36;
    *&v42[8] = 1024;
    v43 = a2;
    v44 = 2048;
    v45 = a4;
    v46 = 2048;
    v47 = a5;
    v48 = 1024;
    v49 = a6;
    v50 = 2112;
    v51 = v39;
    v52 = 2112;
    v53 = v16;
    _os_log_debug_impl(&dword_1AD246000, v35, OS_LOG_TYPE_DEBUG, "%@: model[%p] : success=%d : progamHandle=0x%llx : intermediateBufferHandle=%llu : queueDepth=%d : modelCacheIdentifier=%@ : err=%@", buf, 0x4Au);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v19 = (a1 + 32);
  v18 = *(a1 + 32);
  if (!a2)
  {
    [v18 updateModelAttributes:v15 state:5];
    if (!v16)
    {
      goto LABEL_12;
    }

LABEL_11:
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a8);
    goto LABEL_12;
  }

  [v18 updateModelAttributes:v15 state:3 programHandle:a4 intermediateBufferHandle:a5 queueDepth:a6];
  [*v19 setCacheURLIdentifier:v39];
  v20 = [_ANEDeviceController controllerWithProgramHandle:a4];
  v21 = [_ANEProgramForEvaluation programWithController:v20 intermediateBufferHandle:a5 queueDepth:a6];
  [*v19 setProgram:v21];

  v22 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    __44___ANEClient_doLoadModel_options_qos_error___block_invoke_2_cold_1((a1 + 32), v22);
  }

  v23 = [_ANEProgramIOSurfacesMapper mapperWithController:v20, aSelector];
  [*v19 setMapper:v23];

  v24 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    __44___ANEClient_doLoadModel_options_qos_error___block_invoke_2_cold_2((a1 + 32), v24);
  }

  if (v16)
  {
    goto LABEL_11;
  }

LABEL_12:
  v25 = *(*(*(a1 + 40) + 8) + 24);
  v26 = *(a1 + 72);
  [*(a1 + 32) string_id];
  kdebug_trace();
  v27 = gLogger_1;
  v28 = v27;
  v29 = *(a1 + 64);
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    v30 = *(a1 + 32);
    v31 = *(*(*(a1 + 40) + 8) + 24);
    v32 = *(a1 + 72);
    v33 = [v30 string_id];
    *buf = 67109632;
    *v41 = v31;
    *&v41[4] = 1024;
    *&v41[6] = v32;
    *v42 = 2048;
    *&v42[2] = v33;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v28, OS_SIGNPOST_EVENT, v29, "_ANEF_MODEL_LOAD", "ok:%u qos:%u model.string_id:%llu", buf, 0x18u);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __71___ANEClient_doLoadModelNewInstance_options_modelInstParams_qos_error___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:kANEFBaseModelIdentifierKey[0]];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v3 = [*(a1 + 40) procedureArray];
  v26 = [v3 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v26)
  {
    v4 = *v42;
    v28 = v3;
    v29 = v2;
    v25 = *v42;
    do
    {
      v5 = 0;
      do
      {
        if (*v42 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v27 = v5;
        v6 = *(*(&v41 + 1) + 8 * v5);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v7 = [v6 weightArray];
        v8 = [v7 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v38;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v38 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v37 + 1) + 8 * i);
              v13 = [v12 weightURL];
              v14 = [v13 path];
              v15 = *(*(a1 + 64) + 8);
              obj = *(v15 + 40);
              v16 = [_ANESandboxingHelper issueSandboxExtensionForPath:v14 error:&obj];
              objc_storeStrong((v15 + 40), obj);
              [v12 setSandboxExtension:v16];

              if (*(*(*(a1 + 64) + 8) + 40))
              {
                v17 = gLogger_1;
                if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
                {
                  __71___ANEClient_doLoadModelNewInstance_options_modelInstParams_qos_error___block_invoke_cold_1(a1, v17, a1 + 64);
                }

                v3 = v28;
                v2 = v29;
                goto LABEL_20;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v5 = v27 + 1;
        v3 = v28;
        v2 = v29;
        v4 = v25;
      }

      while (v27 + 1 != v26);
      v26 = [v28 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v26);
  }

LABEL_20:

  if (v2 || !*(*(*(a1 + 64) + 8) + 40))
  {
    v18 = [*(a1 + 48) connectionForLoadingModel:*(a1 + 56) options:*(a1 + 32)];
    v19 = *(a1 + 56);
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v22 = *(a1 + 96);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __71___ANEClient_doLoadModelNewInstance_options_modelInstParams_qos_error___block_invoke_29;
    v30[3] = &unk_1E79BA638;
    v33 = *(a1 + 80);
    v31 = v19;
    v32 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
    v35 = *(a1 + 96);
    v34 = *(a1 + 88);
    [v18 loadModelNewInstance:v31 options:v20 modelInstParams:v21 qos:v22 withReply:v30];
  }

  else
  {
    v23 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      __71___ANEClient_doLoadModelNewInstance_options_modelInstParams_qos_error___block_invoke_cold_2(a1, v23);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __71___ANEClient_doLoadModelNewInstance_options_modelInstParams_qos_error___block_invoke_29(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v54 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v39 = a7;
  v16 = a8;
  v17 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    aSelectora = *(a1 + 56);
    v35 = v17;
    aSelector = NSStringFromSelector(aSelectora);
    v36 = *(a1 + 32);
    *buf = 138414082;
    *v41 = aSelector;
    *&v41[8] = 2048;
    *v42 = v36;
    *&v42[8] = 1024;
    v43 = a2;
    v44 = 2048;
    v45 = a4;
    v46 = 2048;
    v47 = a5;
    v48 = 1024;
    v49 = a6;
    v50 = 2112;
    v51 = v39;
    v52 = 2112;
    v53 = v16;
    _os_log_debug_impl(&dword_1AD246000, v35, OS_LOG_TYPE_DEBUG, "%@: model[%p] : success=%d : progamHandle=0x%llx : intermediateBufferHandle=%llu : queueDepth=%d : modelCacheIdentifier=%@ : err=%@", buf, 0x4Au);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v19 = (a1 + 32);
  v18 = *(a1 + 32);
  if (!a2)
  {
    [v18 updateModelAttributes:v15 state:5];
    if (!v16)
    {
      goto LABEL_12;
    }

LABEL_11:
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a8);
    goto LABEL_12;
  }

  [v18 updateModelAttributes:v15 state:3 programHandle:a4 intermediateBufferHandle:a5 queueDepth:a6];
  [*v19 setCacheURLIdentifier:v39];
  v20 = [_ANEDeviceController controllerWithProgramHandle:a4];
  v21 = [_ANEProgramForEvaluation programWithController:v20 intermediateBufferHandle:a5 queueDepth:a6];
  [*v19 setProgram:v21];

  v22 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    __44___ANEClient_doLoadModel_options_qos_error___block_invoke_2_cold_1((a1 + 32), v22);
  }

  v23 = [_ANEProgramIOSurfacesMapper mapperWithController:v20, aSelector];
  [*v19 setMapper:v23];

  v24 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    __44___ANEClient_doLoadModel_options_qos_error___block_invoke_2_cold_2((a1 + 32), v24);
  }

  if (v16)
  {
    goto LABEL_11;
  }

LABEL_12:
  v25 = *(*(*(a1 + 40) + 8) + 24);
  v26 = *(a1 + 72);
  [*(a1 + 32) string_id];
  kdebug_trace();
  v27 = gLogger_1;
  v28 = v27;
  v29 = *(a1 + 64);
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    v30 = *(a1 + 32);
    v31 = *(*(*(a1 + 40) + 8) + 24);
    v32 = *(a1 + 72);
    v33 = [v30 string_id];
    *buf = 67109632;
    *v41 = v31;
    *&v41[4] = 1024;
    *&v41[6] = v32;
    *v42 = 2048;
    *&v42[2] = v33;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v28, OS_SIGNPOST_EVENT, v29, "_ANEF_ADAPTER_LOAD", "ok:%u qos:%u model.string_id:%llu", buf, 0x18u);
  }

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t __71___ANEClient_doPrepareChainingWithModel_options_chainingReq_qos_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 96);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71___ANEClient_doPrepareChainingWithModel_options_chainingReq_qos_error___block_invoke_2;
  v8[3] = &unk_1E79BA5E8;
  v9 = *(a1 + 64);
  v6 = *(a1 + 88);
  v10 = *(a1 + 80);
  v11 = v6;
  return [v2 prepareChainingWithModel:v1 options:v3 chainingReq:v4 qos:v5 withReply:v8];
}

void __71___ANEClient_doPrepareChainingWithModel_options_chainingReq_qos_error___block_invoke_2(void *a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v14 = a1[6];
    v15 = v7;
    v16 = NSStringFromSelector(v14);
    v17 = 138412802;
    v18 = v16;
    v19 = 1024;
    v20 = a2;
    v21 = 2112;
    v22 = v6;
    _os_log_debug_impl(&dword_1AD246000, v15, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", &v17, 0x1Cu);
  }

  *(*(a1[4] + 8) + 24) = a2;
  if (v6)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  v8 = *(*(a1[4] + 8) + 24);
  kdebug_trace();
  v9 = gLogger_1;
  v10 = v9;
  v11 = a1[7];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = *(*(a1[4] + 8) + 24);
    v17 = 67109120;
    LODWORD(v18) = v12;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v10, OS_SIGNPOST_EVENT, v11, "_ANEF_PREPARE_CHAINING", "ok:%u", &v17, 8u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __19___ANEClient_echo___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v6 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 40);
    v9 = v6;
    v10 = NSStringFromSelector(v8);
    v11 = 138412802;
    v12 = v10;
    v13 = 1024;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_1AD246000, v9, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", &v11, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_17_0(a1, a2);
  v4 = OUTLINED_FUNCTION_8_0();
  v5 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_4(&dword_1AD246000, v6, v7, "%@: interruptHandler", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_6_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_17_0(a1, a2);
  v4 = OUTLINED_FUNCTION_8_0();
  v5 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_4(&dword_1AD246000, v6, v7, "%@: invalidationHandler", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __45___ANEClient_compileModel_options_qos_error___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 72);
  v6 = a2;
  v7 = OUTLINED_FUNCTION_4_0();
  v8 = NSStringFromSelector(v7);
  v9 = *a3;
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_7(&dword_1AD246000, v10, v11, "%@: Failed to issue sandbox extension model=%@", v12, v13, v14, v15, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void __44___ANEClient_doLoadModel_options_qos_error___block_invoke_2_cold_1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_18(a1, a2);
  v4 = [OUTLINED_FUNCTION_8_0() program];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_4(&dword_1AD246000, v5, v6, "evaluateOnlyProgramForModel p=%@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __44___ANEClient_doLoadModel_options_qos_error___block_invoke_2_cold_2(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_18(a1, a2);
  v4 = [OUTLINED_FUNCTION_8_0() mapper];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_4(&dword_1AD246000, v5, v6, "mapperForModel p=%@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __71___ANEClient_doLoadModelNewInstance_options_modelInstParams_qos_error___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 80);
  v6 = a2;
  v7 = OUTLINED_FUNCTION_4_0();
  v8 = NSStringFromSelector(v7);
  v9 = *(*(*a3 + 8) + 40);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_7(&dword_1AD246000, v10, v11, "%@: issueSandboxExtensionForPath error=%@", v12, v13, v14, v15, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void __71___ANEClient_doLoadModelNewInstance_options_modelInstParams_qos_error___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 80);
  v5 = a2;
  v6 = OUTLINED_FUNCTION_4_0();
  v7 = NSStringFromSelector(v6);
  v8 = *(a1 + 56);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_7(&dword_1AD246000, v9, v10, "%@: Failed to issue sandbox extension model=%@", v11, v12, v13, v14, v16);

  v15 = *MEMORY[0x1E69E9840];
}

@end