@interface ANEDaemonConnection
@end

@implementation ANEDaemonConnection

void __51___ANEDaemonConnection_beginRealTimeTaskWithReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_ANELog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = 89;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1AD246000, v4, OS_LOG_TYPE_INFO, "%@: errorHandler %d: %@", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __49___ANEDaemonConnection_endRealTimeTaskWithReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_ANELog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = 105;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1AD246000, v4, OS_LOG_TYPE_INFO, "%@: errorHandler %d: %@", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __39___ANEDaemonConnection_echo_withReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_ANELog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = 121;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1AD246000, v4, OS_LOG_TYPE_INFO, "%@: errorHandler %d: %@", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __76___ANEDaemonConnection_compileModel_sandboxExtension_options_qos_withReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_ANELog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = 149;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1AD246000, v4, OS_LOG_TYPE_INFO, "%@: errorHandler %d: %@", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __76___ANEDaemonConnection_compileModel_sandboxExtension_options_qos_withReply___block_invoke_11(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = +[_ANELog framework];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14[0] = 67109890;
    v14[1] = a2;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_debug_impl(&dword_1AD246000, v12, OS_LOG_TYPE_DEBUG, "[proxy compileModel:...] returned success=%d : attr=%@ : cacheURLIdentifier=%@ : error=%@", v14, 0x26u);
  }

  (*(*(a1 + 32) + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

void __73___ANEDaemonConnection_loadModel_sandboxExtension_options_qos_withReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_ANELog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = 181;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1AD246000, v4, OS_LOG_TYPE_INFO, "%@: errorHandler %d: %@", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __73___ANEDaemonConnection_loadModel_sandboxExtension_options_qos_withReply___block_invoke_13(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a8;
  v14 = a7;
  v15 = +[_ANELog framework];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17[0] = 67109634;
    v17[1] = a2;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    _os_log_debug_impl(&dword_1AD246000, v15, OS_LOG_TYPE_DEBUG, "[proxy loadModel:...] returned success=%d : attr=%@ : error=%@", v17, 0x1Cu);
  }

  (*(*(a1 + 32) + 16))();
  v16 = *MEMORY[0x1E69E9840];
}

void __83___ANEDaemonConnection_loadModelNewInstance_options_modelInstParams_qos_withReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_ANELog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = 219;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1AD246000, v4, OS_LOG_TYPE_INFO, "%@: errorHandler %d: %@", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __83___ANEDaemonConnection_loadModelNewInstance_options_modelInstParams_qos_withReply___block_invoke_15(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a8;
  v14 = a7;
  v15 = +[_ANELog framework];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17[0] = 67109634;
    v17[1] = a2;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    _os_log_debug_impl(&dword_1AD246000, v15, OS_LOG_TYPE_DEBUG, "[proxy loadModelNewInstance:...] returned success=%d : attr=%@ : error=%@", v17, 0x1Cu);
  }

  (*(*(a1 + 32) + 16))();
  v16 = *MEMORY[0x1E69E9840];
}

void __58___ANEDaemonConnection_unloadModel_options_qos_withReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_ANELog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = 258;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1AD246000, v4, OS_LOG_TYPE_INFO, "%@: errorHandler %d: %@", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __58___ANEDaemonConnection_unloadModel_options_qos_withReply___block_invoke_16(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[_ANELog framework];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1AD246000, v6, OS_LOG_TYPE_INFO, "[proxy unloadModel:...] returned success = %d with error = %@", v8, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x1E69E9840];
}

void __54___ANEDaemonConnection_reportTelemetryToPPS_playload___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_ANELog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = 277;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1AD246000, v4, OS_LOG_TYPE_INFO, "%@: errorHandler %d: %@", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __57___ANEDaemonConnection_compiledModelExistsFor_withReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_ANELog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = 287;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1AD246000, v4, OS_LOG_TYPE_INFO, "%@: errorHandler %d: %@", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __57___ANEDaemonConnection_compiledModelExistsFor_withReply___block_invoke_17(uint64_t a1, int a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[_ANELog framework];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11[0] = 67109634;
    v11[1] = a2;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_debug_impl(&dword_1AD246000, v9, OS_LOG_TYPE_DEBUG, "[proxy compiledModelExistsFor:...] returned success = %d : cacheURLIdentifier = %@ : with error = %@", v11, 0x1Cu);
  }

  (*(*(a1 + 32) + 16))();
  v10 = *MEMORY[0x1E69E9840];
}

void __53___ANEDaemonConnection_purgeCompiledModel_withReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_ANELog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = 302;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1AD246000, v4, OS_LOG_TYPE_INFO, "%@: errorHandler %d: %@", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __53___ANEDaemonConnection_purgeCompiledModel_withReply___block_invoke_19(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[_ANELog framework];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __53___ANEDaemonConnection_purgeCompiledModel_withReply___block_invoke_19_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __83___ANEDaemonConnection_prepareChainingWithModel_options_chainingReq_qos_withReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_ANELog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = 331;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1AD246000, v4, OS_LOG_TYPE_INFO, "%@: errorHandler %d: %@", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __83___ANEDaemonConnection_prepareChainingWithModel_options_chainingReq_qos_withReply___block_invoke_20(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[_ANELog framework];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __83___ANEDaemonConnection_prepareChainingWithModel_options_chainingReq_qos_withReply___block_invoke_20_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __66___ANEDaemonConnection_compiledModelExistsMatchingHash_withReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_ANELog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = 352;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1AD246000, v4, OS_LOG_TYPE_INFO, "%@: errorHandler %d: %@", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __66___ANEDaemonConnection_compiledModelExistsMatchingHash_withReply___block_invoke_21(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[_ANELog framework];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __66___ANEDaemonConnection_compiledModelExistsMatchingHash_withReply___block_invoke_21_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __65___ANEDaemonConnection_purgeCompiledModelMatchingHash_withReply___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_ANELog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = 367;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1AD246000, v4, OS_LOG_TYPE_INFO, "%@: errorHandler %d: %@", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __65___ANEDaemonConnection_purgeCompiledModelMatchingHash_withReply___block_invoke_22(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[_ANELog framework];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __65___ANEDaemonConnection_purgeCompiledModelMatchingHash_withReply___block_invoke_22_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __53___ANEDaemonConnection_purgeCompiledModel_withReply___block_invoke_19_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5(&dword_1AD246000, v0, v1, "[proxy purgeCompiledModel:...] returned success = %d with error = %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __83___ANEDaemonConnection_prepareChainingWithModel_options_chainingReq_qos_withReply___block_invoke_20_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5(&dword_1AD246000, v0, v1, "[proxy prepareChaining:...] returned success = %d with error = %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __66___ANEDaemonConnection_compiledModelExistsMatchingHash_withReply___block_invoke_21_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5(&dword_1AD246000, v0, v1, "[proxy compiledModelExistsMatchingHash:...] returned success = %d with error = %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __65___ANEDaemonConnection_purgeCompiledModelMatchingHash_withReply___block_invoke_22_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5(&dword_1AD246000, v0, v1, "[proxy purgeCompiledModelMatchingHash:...] returned success = %d with error = %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end