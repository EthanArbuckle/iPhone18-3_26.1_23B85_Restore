@interface NSFileManager(RPExtensions)
- (id)_srGetCreationDateForFile:()RPExtensions;
- (id)dateSuffix;
- (id)outputPath:()RPExtensions bundleID:;
- (id)trimmedOutputPath:()RPExtensions;
- (uint64_t)_srDeleteFilesOlderThanTimeToLiveInSeconds:()RPExtensions deleteSystemFiles:;
- (uint64_t)_srDeviceFreeDiskSpace;
- (uint64_t)_srSizeOfTempDir:()RPExtensions;
- (void)_srDeleteFilesWithPrefix:()RPExtensions;
- (void)_srMoveFileFromURL:()RPExtensions toURL:completion:;
- (void)_srRemoveFile:()RPExtensions completion:;
- (void)_srSetupTempDirectory;
@end

@implementation NSFileManager(RPExtensions)

- (void)_srSetupTempDirectory
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "_srSetupTempDirectory", buf, 2u);
  }

  v2 = [a1 _srTempPath];
  v3 = [a1 fileExistsAtPath:v2 isDirectory:0];

  if (v3)
  {
    [a1 _srDeleteAllAndSystemTempFiles];
  }

  else
  {
    v4 = [a1 _srTempPath];
    v6 = 0;
    [a1 createDirectoryAtPath:v4 withIntermediateDirectories:0 attributes:0 error:&v6];
    v5 = v6;

    if (v5)
    {
      NSLog(&cfstr_Error.isa, v5);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [NSFileManager(RPExtensions) _srSetupTempDirectory];
      }
    }
  }
}

- (id)dateSuffix
{
  v0 = [MEMORY[0x277CBEAA8] date];
  v1 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v1 setDateFormat:@"MM-dd-yyyy HH:mm:ss"];
  v2 = [v1 stringFromDate:v0];
  v3 = [v2 stringByReplacingOccurrencesOfString:@":" withString:@"-"];

  return v3;
}

- (id)outputPath:()RPExtensions bundleID:
{
  v6 = a4;
  v7 = [a1 dateSuffix];
  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 _srTempPath];
  v11 = v10;
  switch(a3)
  {
    case 1:
      [v8 stringWithFormat:@"%@/ClipRecording_%@.mp4", v10, v7];
      goto LABEL_7;
    case 3:
      [v8 stringWithFormat:@"%@/LocalCapture_%@.mp4", v10, v7];
      goto LABEL_7;
    case 2:
      [v8 stringWithFormat:@"%@/ScreenRecording_%@.mp4", v10, v7];
      v12 = LABEL_7:;
      goto LABEL_9;
  }

  v13 = [MEMORY[0x277CCA8D8] _rpLocalizedAppNameFromBundleID:v6];
  v12 = [v8 stringWithFormat:@"%@/%@_%@.mp4", v11, v13, v7];

LABEL_9:

  return v12;
}

- (id)trimmedOutputPath:()RPExtensions
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CCAA00];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [v6 _srTempPath];
  v8 = [MEMORY[0x277CCA8D8] _rpLocalizedAppNameFromBundleID:v5];

  v9 = [v3 stringWithFormat:@"%@/%@_trimmed.mp4", v7, v8];

  return v9;
}

- (uint64_t)_srSizeOfTempDir:()RPExtensions
{
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [a1 _srTempPath];
  v7 = [v5 attributesOfItemAtPath:v6 error:a3];

  v8 = [v7 fileSize];
  return v8;
}

- (uint64_t)_srDeleteFilesOlderThanTimeToLiveInSeconds:()RPExtensions deleteSystemFiles:
{
  v45 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v44 = a2;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "_srDeleteFilesOlderThanTimeToLiveInSeconds: %i", buf, 8u);
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [a1 _srTempPath];
  v41 = 0;
  v9 = [v7 contentsOfDirectoryAtPath:v8 error:&v41];
  v10 = v41;

  __92__NSFileManager_RPExtensions___srDeleteFilesOlderThanTimeToLiveInSeconds_deleteSystemFiles___block_invoke(v11, v10);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v34 = 0;
    v14 = *v38;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        if ((a4 & 1) != 0 || ([*(*(&v37 + 1) + 8 * i) containsString:@"ScreenRecording_"] & 1) == 0)
        {
          v17 = MEMORY[0x277CCACA8];
          v18 = [a1 _srTempPath];
          v19 = [v17 stringWithFormat:@"%@/%@", v18, v16];

          v36 = v10;
          v20 = [a1 attributesOfItemAtPath:v19 error:&v36];
          v21 = v36;

          __92__NSFileManager_RPExtensions___srDeleteFilesOlderThanTimeToLiveInSeconds_deleteSystemFiles___block_invoke(v22, v21);
          v23 = [MEMORY[0x277CBEAA8] date];
          v24 = [v20 fileModificationDate];
          [v23 timeIntervalSinceDate:v24];
          v26 = v25;

          v27 = [v20 fileSize];
          if (a2 == 0.0 || v26 > a2)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "deleting old file", buf, 2u);
            }

            v35 = v21;
            [a1 removeItemAtPath:v19 error:&v35];
            v28 = v35;

            __92__NSFileManager_RPExtensions___srDeleteFilesOlderThanTimeToLiveInSeconds_deleteSystemFiles___block_invoke(v29, v28);
            if (v28)
            {
              v30 = 0;
            }

            else
            {
              v30 = v27;
            }

            v34 += v30;
            v21 = v28;
          }

          v10 = v21;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v13);
  }

  else
  {
    v34 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v34;
}

- (void)_srRemoveFile:()RPExtensions completion:
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(-32768, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NSFileManager_RPExtensions___srRemoveFile_completion___block_invoke;
  block[3] = &unk_278B61E60;
  v12 = v6;
  v13 = a1;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_srMoveFileFromURL:()RPExtensions toURL:completion:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__NSFileManager_RPExtensions___srMoveFileFromURL_toURL_completion___block_invoke;
  v15[3] = &unk_278B62058;
  v15[4] = a1;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)_srDeleteFilesWithPrefix:()RPExtensions
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__NSFileManager_RPExtensions___srDeleteFilesWithPrefix___block_invoke;
  v7[3] = &unk_278B61C60;
  v7[4] = a1;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)_srGetCreationDateForFile:()RPExtensions
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v4 path];

  v7 = [v5 attributesOfItemAtPath:v6 error:0];

  v8 = [v7 objectForKey:*MEMORY[0x277CCA108]];

  return v8;
}

- (uint64_t)_srDeviceFreeDiskSpace
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [a1 _srTempPath];
  v4 = [v2 attributesOfFileSystemForPath:v3 error:0];

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA1D0]];
  v6 = [v5 unsignedLongValue];

  return v6;
}

@end