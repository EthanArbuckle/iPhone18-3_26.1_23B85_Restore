@interface LSCopyStoreFromServer
@end

@implementation LSCopyStoreFromServer

void ___LSCopyStoreFromServer_block_invoke(void *a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = *(a1[4] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v11;
  v27 = v11;

  v17 = *(a1[5] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v12;
  v19 = v12;

  v20 = *(a1[6] + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v13;
  v22 = v13;

  *(*(a1[7] + 8) + 24) = a5;
  v23 = *(a1[8] + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v14;
  v25 = v14;

  v26 = *(*(a1[4] + 8) + 40);
  if (v26)
  {
    LOBYTE(v26) = *(*(a1[5] + 8) + 40) != 0;
  }

  *(*(a1[9] + 8) + 24) = v26;
}

void ___LSCopyStoreFromServer_block_invoke_72(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LSDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ___LSCopyStoreFromServer_block_invoke_72_cold_1(v2, v3);
  }
}

uint64_t ___LSCopyStoreFromServer_block_invoke_2_75()
{
  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(__LAUNCH_SERVICES_IS_WAITING_ON_THE_MAIN_QUEUE_DUE_TO_A_MANUAL_REBUILD__);
  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(__LAUNCH_SERVICES_WAS_ASKED_TO_PERFORM_BLOCKING_IO_ON_THE_MAIN_QUEUE__);
  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(__LAUNCH_SERVICES_IS_RESEEDING_ITS_DATABASE_DUE_TO_A_MANUAL_REBUILD_AND_MAY_BLOCK__);

  return std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(__LAUNCH_SERVICES_IS_RESEEDING_ITS_DATABASE_AND_MAY_BLOCK__);
}

void ___LSCopyStoreFromServer_block_invoke_72_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "error on blocking retry to fetch database: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end