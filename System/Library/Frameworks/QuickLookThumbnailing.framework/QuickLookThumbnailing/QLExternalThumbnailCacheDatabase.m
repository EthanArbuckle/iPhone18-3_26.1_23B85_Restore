@interface QLExternalThumbnailCacheDatabase
- (BOOL)deleteOldestThumbnail;
- (BOOL)insertOrReplaceThumbnailRepresentingFPItem:(id)a3 size:(unint64_t)a4 modificationDate:(id)a5 fileExtension:(id)a6 error:(id *)a7;
- (BOOL)open;
- (BOOL)removeAllThumbnails:(id *)a3;
- (QLExternalThumbnailCacheDatabase)initWithURL:(id)a3;
- (id)_createDatabaseIfNeededAtURL:(id)a3 error:(id *)a4;
- (id)_openDatabaseAtURL:(id)a3;
- (id)_setupDatabaseTablesIfNeeded:(id)a3 error:(id *)a4;
- (id)deleteOldestThumbnailsToFreeAtLeastSpace:(unint64_t)a3 error:(id *)a4;
- (id)oldestThumbnailsToFreeAtLeastSpace:(unint64_t)a3 error:(id *)a4;
- (id)pathExtensionForItem:(id)a3 error:(id *)a4;
- (id)whereClauseForItem:(id)a3;
- (unint64_t)totalThumbnailCount;
- (unint64_t)totalThumbnailsSize;
- (void)_closeDatabaseOnItsQueue:(id)a3;
- (void)close;
- (void)deleteOldestThumbnail;
- (void)logError:(id)a3 onDB:(id)a4 statement:(id)a5;
- (void)open;
- (void)totalThumbnailCount;
- (void)totalThumbnailsSize;
@end

@implementation QLExternalThumbnailCacheDatabase

- (QLExternalThumbnailCacheDatabase)initWithURL:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = QLExternalThumbnailCacheDatabase;
    v6 = [(QLExternalThumbnailCacheDatabase *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_databaseURL, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)open
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_db)
  {
    v3 = _log_1();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [QLExternalThumbnailCacheDatabase open];
    }

    v4 = 1;
  }

  else
  {
    v5 = [(QLExternalThumbnailCacheDatabase *)v2 _openDatabaseAtURL:v2->_databaseURL];
    if (v5)
    {
      objc_storeStrong(&v2->_db, v5);
    }

    v4 = v2->_db != 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)_openDatabaseAtURL:(id)a3
{
  v4 = a3;
  v21 = 0;
  v5 = [(QLExternalThumbnailCacheDatabase *)self _createDatabaseIfNeededAtURL:v4 error:&v21];
  v6 = v21;
  if (!v5)
  {
    v7 = _log_1();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCacheDatabase _openDatabaseAtURL:];
    }

    v8 = [v6 code];
    if (v8 > 0x1A || ((1 << v8) & 0x5000800) == 0)
    {
      goto LABEL_18;
    }

    v10 = _log_1();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCacheDatabase _openDatabaseAtURL:];
    }

    v11 = [MEMORY[0x1E696AC08] defaultManager];
    [v11 removeItemAtURL:v4 error:0];

    v20 = v6;
    v5 = [(QLExternalThumbnailCacheDatabase *)self _createDatabaseIfNeededAtURL:v4 error:&v20];
    v12 = v20;

    v6 = v12;
    if (!v5)
    {
LABEL_18:
      v17 = _log_1();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [QLExternalThumbnailCacheDatabase _openDatabaseAtURL:];
      }

      goto LABEL_21;
    }
  }

  v13 = v6;
  v19 = v6;
  v14 = [(QLExternalThumbnailCacheDatabase *)self _setupDatabaseTablesIfNeeded:v5 error:&v19];
  v6 = v19;

  v15 = _log_1();
  v16 = v15;
  if (!v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCacheDatabase _openDatabaseAtURL:];
    }

LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [QLExternalThumbnailCacheDatabase _openDatabaseAtURL:];
  }

  [v14 useSerialQueue];
LABEL_22:

  return v14;
}

- (id)_createDatabaseIfNeededAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = _log_1();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [QLExternalThumbnailCacheDatabase _createDatabaseIfNeededAtURL:error:];
  }

  if ([v6 checkResourceIsReachableAndReturnError:0])
  {
LABEL_7:
    v11 = objc_alloc_init(MEMORY[0x1E69E5930]);
    [v11 setShouldUseWALJournalMode:0];
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v25[3] = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __71__QLExternalThumbnailCacheDatabase__createDatabaseIfNeededAtURL_error___block_invoke;
    v24[3] = &unk_1E8369EF0;
    v24[4] = self;
    v24[5] = v25;
    [v11 setSqliteErrorHandler:v24];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__QLExternalThumbnailCacheDatabase__createDatabaseIfNeededAtURL_error___block_invoke_2;
    aBlock[3] = &unk_1E8369F18;
    v23 = a4;
    v8 = v11;
    v21 = v8;
    v22 = v25;
    v12 = _Block_copy(aBlock);
    [v8 setLabel:@"External thumbnail cache"];
    if ([v8 openAtURL:v6 sharedCache:0 error:a4])
    {
      if ([v8 setupPragmas])
      {
        [v8 setSynchronousMode:1];
        v13 = [v8 lastError];

        if (!v13)
        {
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __71__QLExternalThumbnailCacheDatabase__createDatabaseIfNeededAtURL_error___block_invoke_78;
          v19[3] = &unk_1E8369F40;
          v19[4] = self;
          [v8 setSqliteErrorHandler:v19];
          v18 = _log_1();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [QLExternalThumbnailCacheDatabase _createDatabaseIfNeededAtURL:error:];
          }

          v15 = v8;
          goto LABEL_15;
        }
      }

      v12[2](v12);
    }

    else
    {
      v14 = _log_1();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [QLExternalThumbnailCacheDatabase _createDatabaseIfNeededAtURL:a4 error:?];
      }
    }

    [v8 close:0];
    v15 = 0;
LABEL_15:

    _Block_object_dispose(v25, 8);
    goto LABEL_16;
  }

  v8 = [v6 URLByDeletingLastPathComponent];
  if ([v8 checkResourceIsReachableAndReturnError:0] & 1) != 0 || (objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v8, 0, 0, a4), v9, (v10))
  {

    goto LABEL_7;
  }

  v17 = _log_1();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [QLExternalThumbnailCacheDatabase _createDatabaseIfNeededAtURL:a4 error:?];
  }

  v15 = 0;
LABEL_16:

  return v15;
}

void __71__QLExternalThumbnailCacheDatabase__createDatabaseIfNeededAtURL_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  [v7 logError:v8 onDB:a2 statement:a3];
  v9 = [v8 code];

  *(*(*(a1 + 40) + 8) + 24) = v9;
}

void __71__QLExternalThumbnailCacheDatabase__createDatabaseIfNeededAtURL_error___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) lastError];
    if (!v2)
    {
      v3 = _log_1();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __71__QLExternalThumbnailCacheDatabase__createDatabaseIfNeededAtURL_error___block_invoke_2_cold_1(a1);
      }

      v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E5948] code:*(*(*(a1 + 40) + 8) + 24) userInfo:0];
    }

    v4 = v2;
    **(a1 + 48) = v4;
  }
}

- (id)_setupDatabaseTablesIfNeeded:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _log_1();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [QLExternalThumbnailCacheDatabase _setupDatabaseTablesIfNeeded:error:];
  }

  v7 = [v5 userVersion];
  v8 = v7;
  if (v7)
  {
    if ([v7 unsignedIntValue])
    {
      v9 = _log_1();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [QLExternalThumbnailCacheDatabase _setupDatabaseTablesIfNeeded:error:];
      }

      v10 = 1;
    }

    else
    {
      v13 = _log_1();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [QLExternalThumbnailCacheDatabase _setupDatabaseTablesIfNeeded:error:];
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __71__QLExternalThumbnailCacheDatabase__setupDatabaseTablesIfNeeded_error___block_invoke;
      v22[3] = &__block_descriptor_44_e23_B16__0__PQLConnection_8l;
      v23 = 0;
      v22[4] = a4;
      v10 = [v5 performWithFlags:10 action:v22];
      v14 = [v5 userVersion];
      v15 = [v14 unsignedIntValue];

      if (v15 == 1)
      {
        goto LABEL_19;
      }

      v9 = _log_1();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v20 = [v5 userVersion];
        v21 = [v20 unsignedIntValue];
        *buf = 67109376;
        v25 = v21;
        v26 = 1024;
        v27 = 1;
        _os_log_error_impl(&dword_1CA1E7000, v9, OS_LOG_TYPE_ERROR, "database is at version %u instead of %d", buf, 0xEu);
      }
    }

LABEL_19:
    v16 = [v5 userVersion];
    v17 = [v16 unsignedIntValue];
    if (v10 && !v17)
    {
      [QLExternalThumbnailCacheDatabase _setupDatabaseTablesIfNeeded:error:];
    }

    if ((v10 & 1) == 0)
    {
      [v5 close:0];

      v5 = 0;
    }

    v5 = v5;
    v12 = v5;
    goto LABEL_24;
  }

  if (a4)
  {
    *a4 = [v5 lastError];
  }

  v11 = _log_1();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [QLExternalThumbnailCacheDatabase _setupDatabaseTablesIfNeeded:v5 error:v11];
  }

  [v5 close:0];
  v12 = 0;
LABEL_24:

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t __71__QLExternalThumbnailCacheDatabase__setupDatabaseTablesIfNeeded_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = 0;
  v3 = ql_external_thumbnail_cache_create_tables_initial(a2, &v8);
  v4 = v8;
  if ((v3 & 1) == 0)
  {
    v5 = _log_1();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__QLExternalThumbnailCacheDatabase__setupDatabaseTablesIfNeeded_error___block_invoke_cold_1((a1 + 40));
    }

    if (*(a1 + 32))
    {
      v6 = v4;
      **(a1 + 32) = v4;
    }
  }

  return v3;
}

- (void)_closeDatabaseOnItsQueue:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [(PQLConnection *)v4 close:&v9];
  v6 = v9;
  if ((v5 & 1) == 0)
  {
    v7 = _log_1();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCacheDatabase _closeDatabaseOnItsQueue:];
    }
  }

  db = self->_db;
  if (db == v4)
  {
    self->_db = 0;
  }
}

- (void)close
{
  v3 = [(PQLConnection *)self->_db serialQueue];

  if (v3)
  {
    v4 = [(PQLConnection *)self->_db serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__QLExternalThumbnailCacheDatabase_close__block_invoke;
    block[3] = &unk_1E8369F88;
    block[4] = self;
    dispatch_sync(v4, block);
  }
}

void __41__QLExternalThumbnailCacheDatabase_close__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 db];
  [v1 _closeDatabaseOnItsQueue:v2];
}

- (void)logError:(id)a3 onDB:(id)a4 statement:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _log_1();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    if (v11)
    {
      v13 = 138412802;
      v14 = v9;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v7;
      _os_log_error_impl(&dword_1CA1E7000, v10, OS_LOG_TYPE_ERROR, "Sqlite request %@ failed on %@ with error [%@]", &v13, 0x20u);
    }
  }

  else if (v11)
  {
    [QLExternalThumbnailCacheDatabase logError:onDB:statement:];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)insertOrReplaceThumbnailRepresentingFPItem:(id)a3 size:(unint64_t)a4 modificationDate:(id)a5 fileExtension:(id)a6 error:(id *)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  db = self->_db;
  if (db)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v16 = [(PQLConnection *)db serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__QLExternalThumbnailCacheDatabase_insertOrReplaceThumbnailRepresentingFPItem_size_modificationDate_fileExtension_error___block_invoke;
    block[3] = &unk_1E8369FB0;
    v28 = &v30;
    block[4] = self;
    v17 = v12;
    v26 = v17;
    v29 = a4;
    v27 = v14;
    dispatch_sync(v16, block);

    if (*(v31 + 24) == 1)
    {
      v18 = _log_1();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v35 = v17;
        v36 = 2048;
        v37 = a4;
        v38 = 2112;
        v39 = v13;
        _os_log_debug_impl(&dword_1CA1E7000, v18, OS_LOG_TYPE_DEBUG, "Successfully inserted or updated thumbnail for FPItem: %@, size: %lu, date: %@.", buf, 0x20u);
      }
    }

    else
    {
      v21 = _log_1();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [(PQLConnection *)self->_db lastError];
        [QLExternalThumbnailCacheDatabase insertOrReplaceThumbnailRepresentingFPItem:v17 size:v22 modificationDate:buf fileExtension:v21 error:?];
      }

      if (a7)
      {
        *a7 = [(PQLConnection *)self->_db lastError];
      }
    }

    v20 = *(v31 + 24);

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v19 = _log_1();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCacheDatabase insertOrReplaceThumbnailRepresentingFPItem:size:modificationDate:fileExtension:error:];
    }

    v20 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v20 & 1;
}

void __121__QLExternalThumbnailCacheDatabase_insertOrReplaceThumbnailRepresentingFPItem_size_modificationDate_fileExtension_error___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) db];
  v2 = [*(a1 + 40) itemIdentifier];
  v3 = [*(a1 + 40) versionIdentifier];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = *(a1 + 64);
  *(*(*(a1 + 56) + 8) + 24) = [v6 execute:{@"INSERT OR REPLACE INTO thumbnails(fpitemId, versionId, last_hit_date, size, file_extension) VALUES (%@, %@, %@, %llu, %@)", v2, v3, v4, v5, *(a1 + 48)}];
}

- (id)deleteOldestThumbnailsToFreeAtLeastSpace:(unint64_t)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = [QLExternalThumbnailCacheDatabase oldestThumbnailsToFreeAtLeastSpace:"oldestThumbnailsToFreeAtLeastSpace:error:" error:?];
  v8 = v7;
  if (self->_db)
  {
    v9 = v7 == 0;
    v10 = _log_1();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CA1E7000, v11, OS_LOG_TYPE_INFO, "Won't delete thumbnails from database because an error occured.", buf, 2u);
      }

      v8 = 0;
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [QLExternalThumbnailCacheDatabase deleteOldestThumbnailsToFreeAtLeastSpace:v8 error:a3];
      }

      *buf = 0;
      v24 = buf;
      v25 = 0x2020000000;
      v26 = 0;
      v12 = [(PQLConnection *)self->_db serialQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __83__QLExternalThumbnailCacheDatabase_deleteOldestThumbnailsToFreeAtLeastSpace_error___block_invoke;
      block[3] = &unk_1E8369D88;
      v22 = buf;
      block[4] = self;
      v13 = v8;
      v21 = v13;
      dispatch_sync(v12, block);

      if ((v24[24] & 1) == 0)
      {
        if (a4)
        {
          *a4 = [(PQLConnection *)self->_db lastError];
        }

        v14 = _log_1();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = [(PQLConnection *)self->_db lastError];
          [(QLExternalThumbnailCacheDatabase *)v15 deleteOldestThumbnailsToFreeAtLeastSpace:v27 error:v14];
        }

        v13 = 0;
      }

      v16 = v21;
      v8 = v13;

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v17 = _log_1();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCacheDatabase deleteOldestThumbnailsToFreeAtLeastSpace:error:];
    }

    if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLExternalThumbnailCacheDatabaseErrorDomain" code:1 userInfo:0];
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v8;
}

void __83__QLExternalThumbnailCacheDatabase_deleteOldestThumbnailsToFreeAtLeastSpace_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  *(*(*(a1 + 48) + 8) + 24) = [v2 execute:{@"DELETE FROM thumbnails ORDER BY last_hit_date LIMIT %llu", objc_msgSend(*(a1 + 40), "count")}];
}

- (BOOL)deleteOldestThumbnail
{
  db = self->_db;
  v4 = _log_1();
  v5 = v4;
  if (db)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [QLExternalThumbnailCacheDatabase deleteOldestThumbnail];
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v6 = [(PQLConnection *)self->_db serialQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__QLExternalThumbnailCacheDatabase_deleteOldestThumbnail__block_invoke;
    v9[3] = &unk_1E8369DB0;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v6, v9);

    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCacheDatabase deleteOldestThumbnail];
    }

    v7 = 0;
  }

  return v7 & 1;
}

void __57__QLExternalThumbnailCacheDatabase_deleteOldestThumbnail__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  *(*(*(a1 + 40) + 8) + 24) = [v2 execute:@"DELETE FROM thumbnails ORDER BY last_hit_date LIMIT 1"];
}

- (unint64_t)totalThumbnailsSize
{
  db = self->_db;
  if (db)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v4 = [(PQLConnection *)db serialQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__QLExternalThumbnailCacheDatabase_totalThumbnailsSize__block_invoke;
    v8[3] = &unk_1E8369FD8;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(v4, v8);

    v5 = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = _log_1();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCacheDatabase totalThumbnailsSize];
    }

    return 0;
  }

  return v5;
}

void __55__QLExternalThumbnailCacheDatabase_totalThumbnailsSize__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v3 = [v2 fetchObjectOfClass:objc_opt_class() sql:@"SELECT SUM(size) FROM thumbnails"];

  *(*(*(a1 + 40) + 8) + 24) = [v3 longLongValue];
}

- (unint64_t)totalThumbnailCount
{
  db = self->_db;
  if (db)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v4 = [(PQLConnection *)db serialQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__QLExternalThumbnailCacheDatabase_totalThumbnailCount__block_invoke;
    v8[3] = &unk_1E8369FD8;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(v4, v8);

    v5 = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = _log_1();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCacheDatabase totalThumbnailCount];
    }

    return 0;
  }

  return v5;
}

void __55__QLExternalThumbnailCacheDatabase_totalThumbnailCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v3 = [v2 fetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(*) FROM thumbnails"];

  *(*(*(a1 + 40) + 8) + 24) = [v3 longLongValue];
}

- (id)pathExtensionForItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  db = self->_db;
  if (db)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__1;
    v27 = __Block_byref_object_dispose__1;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__1;
    v21 = __Block_byref_object_dispose__1;
    v22 = 0;
    v8 = [(PQLConnection *)db serialQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__QLExternalThumbnailCacheDatabase_pathExtensionForItem_error___block_invoke;
    v13[3] = &unk_1E836A000;
    v13[4] = self;
    v14 = v6;
    v15 = &v17;
    v16 = &v23;
    dispatch_sync(v8, v13);

    if (a4)
    {
      v9 = v18[5];
      if (v9)
      {
        *a4 = v9;
      }
    }

    v10 = v24[5];

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLExternalThumbnailCacheDatabaseErrorDomain" code:1 userInfo:0];
    }

    v11 = _log_1();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCacheDatabase pathExtensionForItem:error:];
    }

    v10 = 0;
  }

  return v10;
}

void __63__QLExternalThumbnailCacheDatabase_pathExtensionForItem_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v3 = [*(a1 + 32) whereClauseForItem:*(a1 + 40)];
  v4 = [v2 fetch:{@"SELECT file_extension FROM thumbnails WHERE %@", v3}];

  v5 = [v4 error];

  if (v5)
  {
    v6 = _log_1();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __63__QLExternalThumbnailCacheDatabase_pathExtensionForItem_error___block_invoke_cold_1(v4, v6);
    }

    v7 = [v4 error];
    v8 = *(a1 + 48);
    goto LABEL_7;
  }

  if ([v4 next])
  {
    v7 = [v4 stringAtIndex:0];
    v8 = *(a1 + 56);
LABEL_7:
    v9 = *(v8 + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;
  }
}

- (id)oldestThumbnailsToFreeAtLeastSpace:(unint64_t)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  if (!self->_db)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLExternalThumbnailCacheDatabaseErrorDomain" code:1 userInfo:0];
    }

    v7 = _log_1();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCacheDatabase pathExtensionForItem:error:];
    }

    goto LABEL_12;
  }

  if ([(QLExternalThumbnailCacheDatabase *)self totalThumbnailsSize]< a3)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLExternalThumbnailCacheDatabaseErrorDomain" code:0 userInfo:0];
    }

    v7 = _log_1();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a3;
      _os_log_impl(&dword_1CA1E7000, v7, OS_LOG_TYPE_INFO, "Can't free space (%lu) because less than this space is stored in the DB.", &buf, 0xCu);
    }

LABEL_12:

    v8 = 0;
    goto LABEL_17;
  }

  v9 = [(QLExternalThumbnailCacheDatabase *)self totalThumbnailCount];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v10 = [(PQLConnection *)self->_db serialQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__QLExternalThumbnailCacheDatabase_oldestThumbnailsToFreeAtLeastSpace_error___block_invoke;
  v14[3] = &unk_1E836A028;
  v14[4] = self;
  v14[5] = &v15;
  v14[8] = v9;
  v14[9] = vcvtpd_u64_f64(v9 * 10.0 / 100.0);
  v14[6] = &buf;
  v14[7] = a3;
  dispatch_sync(v10, v14);

  if (a4)
  {
    v11 = *(*(&buf + 1) + 40);
    if (v11)
    {
      *a4 = v11;
    }
  }

  v8 = v16[5];
  _Block_object_dispose(&buf, 8);

LABEL_17:
  _Block_object_dispose(&v15, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

void __77__QLExternalThumbnailCacheDatabase_oldestThumbnailsToFreeAtLeastSpace_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56))
  {
    v2 = 0;
    while ([*(*(*(a1 + 40) + 8) + 40) count] < *(a1 + 64))
    {
      v3 = [*(a1 + 32) db];
      v4 = [v3 fetch:{@"SELECT fpItemId, versionId, file_extension, size FROM thumbnails ORDER BY last_hit_date LIMIT %llu OFFSET %llu", *(a1 + 72), objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "count")}];

      v5 = [v4 error];

      if (v5)
      {
        v16 = [v4 error];
        v17 = *(*(a1 + 48) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;

        v19 = _log_1();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          __77__QLExternalThumbnailCacheDatabase_oldestThumbnailsToFreeAtLeastSpace_error___block_invoke_cold_1();
        }

        break;
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = [v4 enumerateObjectsOfClass:objc_opt_class()];
      v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v22;
        do
        {
          v10 = 0;
          do
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v21 + 1) + 8 * v10);
            v12 = *(*(*(a1 + 40) + 8) + 40);
            if (!v12)
            {
              v13 = [MEMORY[0x1E695DF70] array];
              v14 = *(*(a1 + 40) + 8);
              v15 = *(v14 + 40);
              *(v14 + 40) = v13;

              v12 = *(*(*(a1 + 40) + 8) + 40);
            }

            [v12 addObject:v11];
            v2 += [v11 size];
            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v8);
      }

      if (v2 >= *(a1 + 56))
      {
        break;
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)removeAllThumbnails:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = self->_db == 0;
  v6 = _log_1();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [QLExternalThumbnailCacheDatabase removeAllThumbnails:];
    }

    if (a3)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"QLExternalThumbnailCacheDatabaseErrorDomain" code:1 userInfo:0];
      *a3 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [QLExternalThumbnailCacheDatabase removeAllThumbnails:];
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v8 = [(PQLConnection *)self->_db serialQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__QLExternalThumbnailCacheDatabase_removeAllThumbnails___block_invoke;
    v14[3] = &unk_1E8369DB0;
    v14[4] = self;
    v14[5] = &v15;
    dispatch_sync(v8, v14);

    if ((v16[3] & 1) == 0)
    {
      v9 = _log_1();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [(PQLConnection *)self->_db lastError];
        [(QLExternalThumbnailCacheDatabase *)v10 removeAllThumbnails:buf, v9];
      }

      if (a3)
      {
        *a3 = [(PQLConnection *)self->_db lastError];
      }
    }

    v11 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

void __56__QLExternalThumbnailCacheDatabase_removeAllThumbnails___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  *(*(*(a1 + 40) + 8) + 24) = [v2 execute:@"DELETE FROM thumbnails"];
}

- (id)whereClauseForItem:(id)a3
{
  v3 = a3;
  v4 = _log_1();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(QLExternalThumbnailCacheDatabase *)v3 whereClauseForItem:v4];
  }

  v5 = MEMORY[0x1E69E5938];
  v6 = [v3 itemIdentifier];
  v7 = [v3 versionIdentifier];
  v8 = [v5 formatInjection:{@"fpItemId = %@ AND versionId = %@", v6, v7}];

  return v8;
}

- (void)open
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_openDatabaseAtURL:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_openDatabaseAtURL:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_openDatabaseAtURL:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_openDatabaseAtURL:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_openDatabaseAtURL:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_createDatabaseIfNeededAtURL:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_createDatabaseIfNeededAtURL:(uint64_t *)a1 error:.cold.2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_createDatabaseIfNeededAtURL:(uint64_t *)a1 error:.cold.3(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_createDatabaseIfNeededAtURL:error:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __71__QLExternalThumbnailCacheDatabase__createDatabaseIfNeededAtURL_error___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(*(*(a1 + 40) + 8) + 24);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_setupDatabaseTablesIfNeeded:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_setupDatabaseTablesIfNeeded:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x14u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_setupDatabaseTablesIfNeeded:error:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_setupDatabaseTablesIfNeeded:(void *)a1 error:(NSObject *)a2 .cold.5(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [a1 lastError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  v7 = a1;
  _os_log_error_impl(&dword_1CA1E7000, a2, OS_LOG_TYPE_ERROR, "Hit error %@, closing db %@", v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

void __71__QLExternalThumbnailCacheDatabase__setupDatabaseTablesIfNeeded_error___block_invoke_cold_1(int *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_closeDatabaseOnItsQueue:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)logError:onDB:statement:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)insertOrReplaceThumbnailRepresentingFPItem:(uint8_t *)buf size:(os_log_t)log modificationDate:fileExtension:error:.cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1CA1E7000, log, OS_LOG_TYPE_ERROR, "Could not insert or replace thumbnail for FPItem:, %@. Error: %@", buf, 0x16u);
}

- (void)insertOrReplaceThumbnailRepresentingFPItem:size:modificationDate:fileExtension:error:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deleteOldestThumbnailsToFreeAtLeastSpace:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = 134218242;
  v6 = a2;
  OUTLINED_FUNCTION_5();
  v7 = v2;
  _os_log_debug_impl(&dword_1CA1E7000, v3, OS_LOG_TYPE_DEBUG, "Removing oldest thumbnails to free space (%lu). Removing thumbnails: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)deleteOldestThumbnailsToFreeAtLeastSpace:(os_log_t)log error:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1CA1E7000, log, OS_LOG_TYPE_ERROR, "Could not delete thumbnails from DB to free space. Error: %@", buf, 0xCu);
}

- (void)deleteOldestThumbnailsToFreeAtLeastSpace:error:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deleteOldestThumbnail
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)totalThumbnailsSize
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)totalThumbnailCount
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)pathExtensionForItem:error:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__QLExternalThumbnailCacheDatabase_pathExtensionForItem_error___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 error];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1CA1E7000, a2, OS_LOG_TYPE_ERROR, "Can't get path extension for item identifier because of database error: %@.", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __77__QLExternalThumbnailCacheDatabase_oldestThumbnailsToFreeAtLeastSpace_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeAllThumbnails:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeAllThumbnails:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1CA1E7000, log, OS_LOG_TYPE_ERROR, "Could not delete all thumbnails from database. Error: %@", buf, 0xCu);
}

- (void)removeAllThumbnails:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)whereClauseForItem:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 itemIdentifier];
  v5 = [a1 versionIdentifier];
  v8 = 138412546;
  v9 = v4;
  OUTLINED_FUNCTION_5();
  v10 = v6;
  _os_log_debug_impl(&dword_1CA1E7000, a2, OS_LOG_TYPE_DEBUG, "Using fpItemId=%@ and versionId=%@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end