@interface SFRequestDesktopSiteQuirksSnapshot
@end

@implementation SFRequestDesktopSiteQuirksSnapshot

void __66___SFRequestDesktopSiteQuirksSnapshot_initWithSnapshotData_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __66___SFRequestDesktopSiteQuirksSnapshot_initWithSnapshotData_error___block_invoke_cold_1(v12, v8, v7);
    }

    goto LABEL_7;
  }

  v9 = [v8 unsignedIntegerValue];
  if (v9 >= 2)
  {
    v10 = v9;
    v11 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __66___SFRequestDesktopSiteQuirksSnapshot_initWithSnapshotData_error___block_invoke_cold_2(v7, v10, v11);
    }

LABEL_7:
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
    v14 = *(*(a1 + 32) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __66___SFRequestDesktopSiteQuirksSnapshot_initWithSnapshotData_error___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = 138412546;
  v6 = objc_opt_class();
  v7 = 2112;
  v8 = a3;
  _os_log_error_impl(&dword_1D4644000, v4, OS_LOG_TYPE_ERROR, "Unexpected value %@ for key %@ in request desktop site quirks", &v5, 0x16u);
}

void __66___SFRequestDesktopSiteQuirksSnapshot_initWithSnapshotData_error___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1D4644000, log, OS_LOG_TYPE_ERROR, "Invalied value %lu for key %@ in request desktop site quirks", &v3, 0x16u);
}

@end