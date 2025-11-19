@interface ANEProgramIOSurfacesMapper
@end

@implementation ANEProgramIOSurfacesMapper

void __41___ANEProgramIOSurfacesMapper_initialize__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.ane.programIOSurfacesMapper", v2);
  v1 = gANEMemoryMapperQueue;
  gANEMemoryMapperQueue = v0;
}

void __83___ANEProgramIOSurfacesMapper_mapIOSurfacesWithModel_request_cacheInference_error___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) controller];
  v3 = [v2 device];
  if (v3 && *v3)
  {
    v4 = (*(*v3 + 56))(v3, *(a1 + 64), *(a1 + 80));
  }

  else
  {
    v4 = 2;
  }

  v5 = +[_ANELog common];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromSelector(*(a1 + 72));
    v13 = 138412546;
    v14 = v6;
    v15 = 1024;
    v16 = v4;
    _os_log_impl(&dword_1AD246000, v5, OS_LOG_TYPE_INFO, "-----> %@: ANEProgramMemoryMapRequest() ret=0x%x ", &v13, 0x12u);
  }

  *(*(*(a1 + 48) + 8) + 24) = v4 == 0;
  if (*(*(*(a1 + 48) + 8) + 24) != 1)
  {
    v8 = NSStringFromSelector(*(a1 + 72));
    v9 = [_ANEErrors programIOSurfacesMapErrorForMethod:v8 code:v4];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

LABEL_13:
    goto LABEL_14;
  }

  v7 = *(a1 + 80);
  if (v7 == 1)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(a1 + 64) + 3088)];
  }

  else
  {
    v8 = 0;
  }

  [*(a1 + 40) setTransactionHandle:v8];
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
}

void __70___ANEProgramIOSurfacesMapper_unmapIOSurfacesWithModel_request_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) controller];
  v3 = [v2 device];
  if (v3 && *v3)
  {
    v4 = (*(*v3 + 64))(v3, *(a1 + 56));
  }

  else
  {
    v4 = 2;
  }

  v5 = +[_ANELog common];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromSelector(*(a1 + 64));
    v12 = 138412546;
    v13 = v6;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_1AD246000, v5, OS_LOG_TYPE_INFO, "-----> %@: ANEProgramMemoryUnMapRequest() ret=0x%x ", &v12, 0x12u);
  }

  *(*(*(a1 + 40) + 8) + 24) = v4 == 0;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v7 = NSStringFromSelector(*(a1 + 64));
    v8 = [_ANEErrors programIOSurfacesUnmapErrorForMethod:v7 code:v4];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end