@interface NSFileManager
@end

@implementation NSFileManager

void __92__NSFileManager_RPExtensions___srDeleteFilesOlderThanTimeToLiveInSeconds_deleteSystemFiles___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __92__NSFileManager_RPExtensions___srDeleteFilesOlderThanTimeToLiveInSeconds_deleteSystemFiles___block_invoke_cold_1(v2);
    }

    NSLog(&cfstr_Error_0.isa, v2);
  }
}

void __56__NSFileManager_RPExtensions___srRemoveFile_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) path];
  if ([*(a1 + 40) fileExistsAtPath:v2])
  {
    v3 = *(a1 + 40);
    v7 = 0;
    v4 = [v3 removeItemAtPath:v2 error:&v7];
    v5 = v7;
    if ((v4 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __56__NSFileManager_RPExtensions___srRemoveFile_completion___block_invoke_cold_1(v5);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void __67__NSFileManager_RPExtensions___srMoveFileFromURL_toURL_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) path];
  LODWORD(v2) = [v2 fileExistsAtPath:v3];

  if (v2)
  {
    [*(a1 + 32) removeItemAtURL:*(a1 + 40) error:0];
  }

  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);
  v16 = 0;
  [v6 moveItemAtURL:v4 toURL:v5 error:&v16];
  v7 = v16;
  if (v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __67__NSFileManager_RPExtensions___srMoveFileFromURL_toURL_completion___block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    (*(v15 + 16))(v15, v7);
  }
}

void __56__NSFileManager_RPExtensions___srDeleteFilesWithPrefix___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) _srTempPath];
  v26 = 0;
  v4 = [v2 contentsOfDirectoryAtPath:v3 error:&v26];
  v5 = v26;

  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self BEGINSWITH[cd] %@", *(a1 + 40)];
  v19 = v4;
  v7 = [v4 filteredArrayUsingPredicate:v6];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        v12 = v5;
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __56__NSFileManager_RPExtensions___srDeleteFilesWithPrefix___block_invoke_cold_1(buf, v5, v28);
        }

        v14 = *(a1 + 32);
        v15 = MEMORY[0x277CCACA8];
        v16 = [v14 _srTempPath];
        v17 = [v15 stringWithFormat:@"%@/%@", v16, v13];
        v21 = v12;
        [v14 removeItemAtPath:v17 error:&v21];
        v5 = v21;
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __92__NSFileManager_RPExtensions___srDeleteFilesOlderThanTimeToLiveInSeconds_deleteSystemFiles___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_0_0(&dword_23A863000, MEMORY[0x277D86220], v1, "error in _rkRemoveFile_srDeleteFilesOlderThanTimeToLiveInSeconds, error code: %i", v2, v3, v4, v5, 0);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__NSFileManager_RPExtensions___srRemoveFile_completion___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_0_0(&dword_23A863000, MEMORY[0x277D86220], v1, "_rkRemoveFile error: %i", v2, v3, v4, v5, 0);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__NSFileManager_RPExtensions___srMoveFileFromURL_toURL_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_23A863000, MEMORY[0x277D86220], a3, "_rkMoveFileFromURL error: %i", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void __56__NSFileManager_RPExtensions___srDeleteFilesWithPrefix___block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "_rkDeleteFilesWithPrefix error: %i", buf, 8u);
}

@end