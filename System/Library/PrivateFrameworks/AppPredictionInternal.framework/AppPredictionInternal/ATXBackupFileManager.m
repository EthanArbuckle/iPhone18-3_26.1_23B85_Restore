@interface ATXBackupFileManager
- (ATXBackupDataProviderDelegate)dataProviderDelegate;
- (ATXBackupFileManager)initWithBackupDirectory:(id)a3 dataProviderDelegate:(id)a4;
- (BOOL)commitWithContainerIdentifier:(id)a3;
- (BOOL)compareBackupIDFromBackupWithPath:(id)a3 toMarkerWithPath:(id)a4;
- (BOOL)isD2DRestoreNeeded;
- (BOOL)isMobileBackupRestoreNeeded;
- (BOOL)isRestoreNeeded;
- (BOOL)restoreFromBackup:(id)a3;
- (BOOL)restoreFromD2D;
- (BOOL)restoreFromMobileBackup;
- (BOOL)writeBackupFileForD2D;
- (BOOL)writeBackupMarkers:(const char *)a3;
- (BOOL)writeChunk:(id)a3 withFilename:(id)a4 toBackupFile:(__sFILE *)a5;
- (BOOL)writeContainerID:(id)a3;
- (BOOL)writeData:(id)a3 toPath:(id)a4;
- (BOOL)writeDeviceID:(id)a3;
- (NSString)deviceID;
- (__sFILE)openBackupFileForWriting:(id)a3;
- (id)containerIDForCloudKitRestore;
- (id)pathForFile:(id)a3;
- (id)readBackupData:(id)a3;
- (id)writeBackupData:(id)a3 toPath:(id)a4;
- (void)restoreFromD2D;
@end

@implementation ATXBackupFileManager

- (ATXBackupFileManager)initWithBackupDirectory:(id)a3 dataProviderDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXBackupFileManager;
  v9 = [(ATXBackupFileManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backupDirectory, a3);
    objc_storeWeak(&v10->_dataProviderDelegate, v8);
  }

  return v10;
}

- (BOOL)commitWithContainerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(ATXBackupFileManager *)self pathForFile:@"/Backups/ATXBackupData"];
  [v5 removeItemAtPath:v6 error:0];

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [(ATXBackupFileManager *)self pathForFile:@"Backups"];
  [v7 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];

  v9 = [(ATXBackupFileManager *)self writeBackupMarkers:&self->_hdr]&& [(ATXBackupFileManager *)self writeDeviceID:self->_deviceID]&& [(ATXBackupFileManager *)self writeContainerID:v4];
  return v9;
}

- (NSString)deviceID
{
  v2 = [(ATXBackupFileManager *)self pathForFile:@"/Backups/deviceID"];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v2 encoding:4 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)restoreFromBackup:(id)a3
{
  v4 = a3;
  v5 = [(ATXBackupFileManager *)self pathForFile:@"ATXLastBackupVersion"];
  v6 = [(ATXBackupFileManager *)self pathForFile:@"/Backups/backupID"];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  [v7 removeItemAtPath:v5 error:0];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  [v8 copyItemAtPath:v6 toPath:v5 error:&v14];
  v9 = v14;

  if (v9)
  {
    v10 = __atxlog_handle_backup();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ATXBackupFileManager *)v9 restoreFromBackup:v10];
    }
  }

  else
  {
    if (!v4)
    {
      v11 = 0;
      goto LABEL_6;
    }

    v10 = [(ATXBackupFileManager *)self readBackupData:v4];
    if (v10)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataProviderDelegate);
      v11 = [WeakRetained restoreFromBackup:v10];

      goto LABEL_5;
    }
  }

  v11 = 0;
LABEL_5:

LABEL_6:
  return v11;
}

- (BOOL)isRestoreNeeded
{
  v3 = [(ATXBackupFileManager *)self pathForFile:@"/Backups/backupID"];
  v4 = [(ATXBackupFileManager *)self pathForFile:@"ATXLastBackupVersion"];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v3];

  if ((v6 & 1) == 0)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXBackupFileManager isRestoreNeeded];
    }

    goto LABEL_8;
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 fileExistsAtPath:v4];

  if (v8)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v9 contentsEqualAtPath:v3 andPath:v4];

    if (v10)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_9;
    }
  }

  v11 = 1;
LABEL_9:

  return v11;
}

- (id)containerIDForCloudKitRestore
{
  v2 = [(ATXBackupFileManager *)self pathForFile:@"/Backups/containerID"];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v2 encoding:4 error:0];
  }

  else
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ATXBackupFileManager containerIDForCloudKitRestore];
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)writeBackupFileForD2D
{
  v3 = os_transaction_create();
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [(ATXBackupFileManager *)self pathForFile:@"D2DBackups"];
  [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];

  v6 = [(ATXBackupFileManager *)self dataProviderDelegate];
  v7 = [v6 filenamesAndDataForBackupShouldPareDown:0 transport:1];

  v8 = [(ATXBackupFileManager *)self writeBackupData:v7 toPath:@"/D2DBackups/ATXBackupData"];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_hdr length:16];
    v10 = [(ATXBackupFileManager *)self pathForFile:@"ATXD2DLastBackupVersion"];
    v11 = [(ATXBackupFileManager *)self writeData:v9 toPath:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)restoreFromD2D
{
  v17 = *MEMORY[0x277D85DE8];
  LODWORD(v16) = 0;
  v3 = [(ATXBackupFileManager *)self pathForFile:@"/D2DBackups/ATXBackupData", 0, 0, v16, v17];
  v4 = fopen([v3 UTF8String], "r");

  if (!v4)
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXBackupFileManager restoreFromD2D];
    }

    goto LABEL_11;
  }

  if (fread(&v15, 0x14uLL, 1uLL, v4) != 1)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXBackupFileManager restoreFromD2D];
    }

    fclose(v4);
LABEL_11:
    v10 = 0;
    goto LABEL_14;
  }

  fclose(v4);
  v5 = [(ATXBackupFileManager *)self pathForFile:@"ATXD2DLastBackupVersion"];
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v15 length:16];
  [(ATXBackupFileManager *)self writeData:v6 toPath:v5];
  v7 = [(ATXBackupFileManager *)self pathForFile:@"/D2DBackups/ATXBackupData"];
  v8 = [(ATXBackupFileManager *)self readBackupData:v7];
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataProviderDelegate);
    v10 = [WeakRetained restoreFromBackup:v8];
  }

  else
  {
    v10 = 0;
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isD2DRestoreNeeded
{
  v2 = self;
  v3 = [(ATXBackupFileManager *)self pathForFile:@"/D2DBackups/ATXBackupData"];
  v4 = [(ATXBackupFileManager *)v2 pathForFile:@"ATXD2DLastBackupVersion"];
  LOBYTE(v2) = [(ATXBackupFileManager *)v2 compareBackupIDFromBackupWithPath:v3 toMarkerWithPath:v4];

  return v2;
}

- (BOOL)restoreFromMobileBackup
{
  v17 = *MEMORY[0x277D85DE8];
  LODWORD(v16) = 0;
  v3 = [(ATXBackupFileManager *)self pathForFile:@"/Backups/ATXBackupData", 0, 0, v16, v17];
  v4 = fopen([v3 UTF8String], "r");

  if (!v4)
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXBackupFileManager restoreFromD2D];
    }

    goto LABEL_11;
  }

  if (fread(&v15, 0x14uLL, 1uLL, v4) != 1)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXBackupFileManager restoreFromD2D];
    }

    fclose(v4);
LABEL_11:
    v10 = 0;
    goto LABEL_14;
  }

  fclose(v4);
  v5 = [(ATXBackupFileManager *)self pathForFile:@"ATXLastBackupVersion"];
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v15 length:16];
  [(ATXBackupFileManager *)self writeData:v6 toPath:v5];
  v7 = [(ATXBackupFileManager *)self pathForFile:@"/Backups/ATXBackupData"];
  v8 = [(ATXBackupFileManager *)self readBackupData:v7];
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataProviderDelegate);
    v10 = [WeakRetained restoreFromBackup:v8];
  }

  else
  {
    v10 = 0;
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isMobileBackupRestoreNeeded
{
  v2 = self;
  v3 = [(ATXBackupFileManager *)self pathForFile:@"/Backups/ATXBackupData"];
  v4 = [(ATXBackupFileManager *)v2 pathForFile:@"ATXLastBackupVersion"];
  LOBYTE(v2) = [(ATXBackupFileManager *)v2 compareBackupIDFromBackupWithPath:v3 toMarkerWithPath:v4];

  return v2;
}

- (BOOL)writeBackupMarkers:(const char *)a3
{
  v5 = [(ATXBackupFileManager *)self pathForFile:@"ATXLastBackupVersion"];
  v6 = [(ATXBackupFileManager *)self pathForFile:@"/Backups/backupID"];
  v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a3 length:16];
  if ([(ATXBackupFileManager *)self writeData:v7 toPath:v5])
  {
    v8 = [(ATXBackupFileManager *)self writeData:v7 toPath:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)writeDeviceID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(ATXBackupFileManager *)self pathForFile:@"/Backups/deviceID"];
    v6 = [v4 dataUsingEncoding:4];
    v7 = [(ATXBackupFileManager *)self writeData:v6 toPath:v5];
  }

  else
  {
    v8 = __atxlog_handle_backup();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXBackupFileManager writeDeviceID:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)writeContainerID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ATXBackupFileManager *)self pathForFile:@"/Backups/containerID"];
    v6 = [v4 dataUsingEncoding:4];
    v7 = [(ATXBackupFileManager *)self writeData:v6 toPath:v5];
  }

  else
  {
    v8 = __atxlog_handle_backup();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXBackupFileManager writeContainerID:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)compareBackupIDFromBackupWithPath:(id)a3 toMarkerWithPath:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = fopen([a3 UTF8String], "r");
  if (v6)
  {
    v7 = v6;
    __ptr = 0;
    v19 = 0;
    v20 = 0;
    v17 = 0;
    v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v5 options:0 error:&v17];
    v9 = v17;
    if (fread(&__ptr, 0x14uLL, 1uLL, v7) == 1)
    {
      if (!v8)
      {
LABEL_9:
        v12 = 1;
LABEL_22:
        fclose(v7);

LABEL_23:
        goto LABEL_24;
      }

      if ([v8 length] == 16)
      {
        v10 = [v8 bytes];
        if (*v10 != __ptr || v10[1] != v19)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v14 = __atxlog_handle_default();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [ATXBackupFileManager compareBackupIDFromBackupWithPath:toMarkerWithPath:];
        }

        unlink([v5 UTF8String]);
      }
    }

    else
    {
      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXBackupFileManager restoreFromD2D];
      }
    }

    v12 = 0;
    goto LABEL_22;
  }

  if (*__error() != 2)
  {
    v9 = __atxlog_handle_backup();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXBackupFileManager compareBackupIDFromBackupWithPath:toMarkerWithPath:];
    }

    v12 = 0;
    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)writeBackupData:(id)a3 toPath:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    arc4random_buf(&self->_hdr, 0x10uLL);
    self->_hdr.chunkCount = [v6 count];
    v8 = [(ATXBackupFileManager *)self pathForFile:v7];
    v9 = [(ATXBackupFileManager *)self openBackupFileForWriting:v8];
    if (v9)
    {
      v10 = v9;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __47__ATXBackupFileManager_writeBackupData_toPath___block_invoke;
      aBlock[3] = &unk_278598278;
      v39 = v9;
      v11 = v8;
      v38 = v11;
      v12 = _Block_copy(aBlock);
      if (fwrite(&self->_hdr, 0x14uLL, 1uLL, v10) == 1)
      {
        v30 = v11;
        v31 = v12;
        v32 = v8;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v13 = [v6 allKeys];
        v14 = [v13 sortedArrayUsingSelector:sel_compare_];

        v15 = [v14 countByEnumeratingWithState:&v33 objects:v40 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v34;
          while (2)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v34 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v33 + 1) + 8 * i);
              v20 = [v6 objectForKeyedSubscript:v19];
              LOBYTE(v19) = [(ATXBackupFileManager *)self writeChunk:v20 withFilename:v19 toBackupFile:v10];

              if ((v19 & 1) == 0)
              {
                v27 = __atxlog_handle_backup();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  [ATXBackupFileManager writeBackupData:toPath:];
                }

                v12 = v31;
                v31[2](v31);

                v25 = 0;
                v8 = v32;
                goto LABEL_21;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v33 objects:v40 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        fclose(v10);
        v21 = [MEMORY[0x277CCAA00] defaultManager];
        v22 = [(ATXBackupFileManager *)self pathForFile:@"Backups/AppPredictionExpert"];
        [v21 removeItemAtPath:v22 error:0];

        v23 = [MEMORY[0x277CCAA00] defaultManager];
        v24 = [(ATXBackupFileManager *)self pathForFile:@"Backups/backup_version"];
        [v23 removeItemAtPath:v24 error:0];

        v25 = v30;
        v12 = v31;
        v8 = v32;
      }

      else
      {
        v26 = __atxlog_handle_backup();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [ATXBackupFileManager writeBackupData:toPath:];
        }

        v12[2](v12);
        v25 = 0;
      }

LABEL_21:
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __47__ATXBackupFileManager_writeBackupData_toPath___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    fclose(v2);
  }

  v3 = [*(a1 + 32) UTF8String];

  return unlink(v3);
}

- (BOOL)writeChunk:(id)a3 withFilename:(id)a4 toBackupFile:(__sFILE *)a5
{
  v7 = a3;
  v8 = [a4 UTF8String];
  __ptr = strlen(v8);
  if (fwrite(&__ptr, 4uLL, 1uLL, a5) == 1 && fwrite(v8, __ptr, 1uLL, a5) == 1)
  {
    v9 = [MEMORY[0x277D42570] compress:v7 lowMemory:1];
    __ptr = [v9 length];
    if (fwrite(&__ptr, 4uLL, 1uLL, a5) == 1)
    {
      v10 = [v9 bytes];
      v11 = fwrite(v10, __ptr, 1uLL, a5) == 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (__sFILE)openBackupFileForWriting:(id)a3
{
  v3 = open_dprotected_np([a3 UTF8String], 1537, 3, 0, 384);
  v4 = fdopen(v3, "w");
  if (!v4)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ATXBackupFileManager openBackupFileForWriting:];
    }

    close(v3);
  }

  return v4;
}

- (id)readBackupData:(id)a3
{
  v4 = a3;
  v5 = fopen([v4 UTF8String], "r");
  if (v5)
  {
    v6 = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __39__ATXBackupFileManager_readBackupData___block_invoke;
    aBlock[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
    aBlock[4] = v5;
    v7 = _Block_copy(aBlock);
    if (fread(&self->_hdr, 0x14uLL, 1uLL, v6) == 1)
    {
      v24 = v7;
      v8 = [MEMORY[0x277CBEC10] mutableCopy];
      if (self->_hdr.chunkCount)
      {
        v9 = 0;
        while (1)
        {
          v10 = objc_autoreleasePoolPush();
          __ptr = 0;
          if (fread(&__ptr, 4uLL, 1uLL, v6) != 1)
          {
            goto LABEL_16;
          }

          v11 = __ptr;
          v12 = malloc_type_calloc(__ptr + 1, 1uLL, 0x100004077774924uLL);
          v13 = v12;
          if (!v12 || fread(v12, v11, 1uLL, v6) != 1)
          {
            free(v13);
LABEL_16:
            v7 = v24;
            v22 = v24[2](v24);
            goto LABEL_19;
          }

          v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v13 length:v11 encoding:4 freeWhenDone:1];
          if (fread(&__ptr, 4uLL, 1uLL, v6) != 1)
          {
            goto LABEL_18;
          }

          v15 = v8;
          v16 = __ptr;
          v17 = malloc_type_malloc(__ptr, 0x36118B9DuLL);
          v18 = v17;
          if (!v17 || fread(v17, v16, 1uLL, v6) != 1)
          {
            break;
          }

          v19 = MEMORY[0x277D42570];
          v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v18 length:v16];
          v21 = [v19 decompress:v20];

          v8 = v15;
          [v15 setObject:v21 forKeyedSubscript:v14];

          objc_autoreleasePoolPop(v10);
          if (++v9 >= self->_hdr.chunkCount)
          {
            goto LABEL_12;
          }
        }

        free(v18);
        v8 = v15;
LABEL_18:
        v7 = v24;
        v22 = v24[2](v24);

LABEL_19:
        objc_autoreleasePoolPop(v10);
      }

      else
      {
LABEL_12:
        fclose(v6);
        v22 = v8;
        v7 = v24;
      }
    }

    else
    {
      v22 = v7[2](v7);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t __39__ATXBackupFileManager_readBackupData___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    fclose(v1);
  }

  v2 = __atxlog_handle_backup();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [ATXBackupFileManager restoreFromD2D];
  }

  return 0;
}

- (BOOL)writeData:(id)a3 toPath:(id)a4
{
  v8 = 0;
  v4 = [a3 writeToFile:a4 options:0 error:&v8];
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v6 = __atxlog_handle_backup();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ATXBackupFileManager writeData:v5 toPath:v6];
    }
  }

  return v4;
}

- (id)pathForFile:(id)a3
{
  v4 = a3;
  v5 = [(ATXBackupFileManager *)self backupDirectory];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (ATXBackupDataProviderDelegate)dataProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProviderDelegate);

  return WeakRetained;
}

- (void)restoreFromBackup:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Error occurred while writing marker file: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)restoreFromD2D
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_14(&dword_2263AA000, v2, v3, "Error opening backup file [%i]: %s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)compareBackupIDFromBackupWithPath:toMarkerWithPath:.cold.3()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_14(&dword_2263AA000, v2, v3, "Error opening backup file %i: %s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)writeBackupData:toPath:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_14(&dword_2263AA000, v2, v3, "Error writing to backup file [%i]: %s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)openBackupFileForWriting:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_1_14(&dword_2263AA000, v2, v3, "Could not fdopen backup fd [%i]: %s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)writeData:(uint64_t)a1 toPath:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Could not write data to file: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end