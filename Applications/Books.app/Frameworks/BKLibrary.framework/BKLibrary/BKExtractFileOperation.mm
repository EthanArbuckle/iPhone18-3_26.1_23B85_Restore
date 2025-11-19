@interface BKExtractFileOperation
- (BKExtractFileOperationDelegate)delegate;
- (BOOL)_ensureBackupAttributeOnItemAtPath:(id)a3 error:(id *)a4;
- (BOOL)_forceFileProtectionOnItemAtPath:(id)a3 usingFileManager:(id)a4 error:(id *)a5;
- (double)progress;
- (id)_zipExtractionPathFromSourcePath:(id)a3;
- (void)_fixFilePermissions:(id)a3;
- (void)_initializeProgress;
- (void)_performCopyFromPath:(id)a3 toPath:(id)a4;
- (void)_performMoveFromPath:(id)a3 toPath:(id)a4;
- (void)_performZipExtractionFromPath:(id)a3 toPath:(id)a4;
- (void)_updateProgressWithByteCount:(int64_t)a3;
- (void)main;
- (void)setSourceFilePath:(id)a3;
@end

@implementation BKExtractFileOperation

- (void)main
{
  v3 = BCIMLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(BKExtractFileOperation *)self sourceFileType];
    v5 = [(BKExtractFileOperation *)self sourceFilePath];
    *buf = 67109378;
    v29 = v4;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "BKExtractFileOperation main: Starting operation: (type: %d, path: %@)", buf, 0x12u);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_2558;
  v27[3] = &unk_D5390;
  v27[4] = self;
  v6 = objc_retainBlock(v27);
  if ([(BKExtractFileOperation *)self useFileCoordination])
  {
    v7 = [(BKExtractFileOperation *)self sourceFilePath];
    v8 = [NSURL fileURLWithPath:v7];

    if ([(BKExtractFileOperation *)self sourceFileType]== 2)
    {
      v26 = 0;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_2710;
      v24[3] = &unk_D53B8;
      v9 = &v25;
      v24[4] = self;
      v25 = v6;
      v10 = &v26;
      [NSURL coordinateWritingItemAtURL:v8 options:2 error:&v26 byAccessor:v24];
    }

    else
    {
      v23 = 0;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_278C;
      v21[3] = &unk_D53B8;
      v9 = &v22;
      v21[4] = self;
      v22 = v6;
      v10 = &v23;
      [NSURL coordinateReadingItemAtURL:v8 options:0 error:&v23 byAccessor:v21];
    }

    v11 = *v10;

    if (v11)
    {
      v12 = BCIMLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_8C9C4(self);
      }
    }
  }

  else
  {
    v11 = [(BKExtractFileOperation *)self sourceFilePath];
    v8 = [(BKExtractFileOperation *)self destinationFilePath];
    (v6[2])(v6, v11, v8);
  }

  success = self->_success;
  v14 = BCIMLog();
  v15 = v14;
  if (success)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(BKExtractFileOperation *)self sourceFileType];
      v17 = [(BKExtractFileOperation *)self sourceFilePath];
      *buf = 67109378;
      v29 = v16;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "BKExtractFileOperation main: Success: (type: %d, path: %@)", buf, 0x12u);
    }

    if ([(BKExtractFileOperation *)self _reportingProgress])
    {
      self->_progressBytes = self->_totalBytes;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained performSelectorOnMainThread:"extractOperationDidUpdateProgress:" withObject:self waitUntilDone:1];
    }

    v19 = &selRef_extractOperationDidFinish_;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_8CA84(self);
    }

    v19 = &selRef_extractOperationDidFail_;
  }

  v20 = objc_loadWeakRetained(&self->_delegate);
  [v20 performSelectorOnMainThread:*v19 withObject:self waitUntilDone:1];
}

- (void)setSourceFilePath:(id)a3
{
  v5 = a3;
  if (self->_sourceFilePath != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_sourceFilePath, a3);
    [(BKExtractFileOperation *)self _initializeProgress];
    v5 = v6;
  }
}

- (void)_initializeProgress
{
  v10 = 0;
  v3 = 0;
  if ([(BKExtractFileOperation *)self sourceFileType]!= 1)
  {
LABEL_9:
    self->_totalBytes = 0;
    goto LABEL_10;
  }

  v4 = [(BKExtractFileOperation *)self sourceFilePath];
  v5 = [NSURL fileURLWithPath:v4];

  v9 = 0;
  v6 = [[BUUnarchivingFileCopier alloc] initWithURL:v5 options:5 error:&v9];
  v3 = v9;
  if (!v6)
  {
    v8 = BKLibraryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_8CBB4();
    }

    goto LABEL_9;
  }

  [v6 countTotalFileSize:&v10 totalFileCount:0];
  v7 = BKLibraryLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_8CB38(&v10, v7);
  }

  self->_totalBytes = v10;
  self->_progressBytes = 0;
  self->_lastSnapshotTime = -1.79769313e308;

LABEL_10:
}

- (double)progress
{
  totalBytes = self->_totalBytes;
  if (totalBytes)
  {
    result = self->_progressBytes / totalBytes;
  }

  else
  {
    result = 0.0;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (void)_updateProgressWithByteCount:(int64_t)a3
{
  progressBytes = self->_progressBytes;
  totalBytes = progressBytes + a3;
  if (progressBytes + a3 >= self->_totalBytes)
  {
    totalBytes = self->_totalBytes;
  }

  if (totalBytes != progressBytes)
  {
    self->_progressBytes = totalBytes;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (self->_lastSnapshotTime + 0.2 < Current)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained performSelectorOnMainThread:"extractOperationDidUpdateProgress:" withObject:self waitUntilDone:1];

    self->_lastSnapshotTime = Current;
  }
}

- (BOOL)_forceFileProtectionOnItemAtPath:(id)a3 usingFileManager:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(BKExtractFileOperation *)self forcedFileProtection];

  if (v10)
  {
    v14 = NSFileProtectionKey;
    v15 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12 = [v9 setAttributes:v11 ofItemAtPath:v8 error:a5];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)_performCopyFromPath:(id)a3 toPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSFileManager);
  v17 = 0;
  v9 = [v8 copyItemAtPath:v7 toPath:v6 error:&v17];

  v10 = v17;
  v11 = v10;
  if (!v9)
  {
    v15 = BCIMLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_8CC24(v11, v15);
    }

    v13 = v11;
    goto LABEL_9;
  }

  v16 = v10;
  v12 = [(BKExtractFileOperation *)self _forceFileProtectionOnItemAtPath:v6 usingFileManager:v8 error:&v16];
  v13 = v16;

  if ((v12 & 1) == 0)
  {
    v15 = BCIMLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_8CC9C();
    }

LABEL_9:

    v14 = 0;
    goto LABEL_10;
  }

  v14 = 1;
LABEL_10:
  self->_success = v14;
}

- (void)_performMoveFromPath:(id)a3 toPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSFileManager);
  v19 = 0;
  v9 = [v8 moveItemAtPath:v7 toPath:v6 error:&v19];

  v10 = v19;
  v11 = v10;
  if (!v9)
  {
    v16 = BCIMLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_8CD0C(v11, v16);
    }

    goto LABEL_12;
  }

  v18 = v10;
  v12 = [(BKExtractFileOperation *)self _forceFileProtectionOnItemAtPath:v6 usingFileManager:v8 error:&v18];
  v13 = v18;

  if (!v12)
  {
    v16 = BCIMLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_8CD84();
    }

    v11 = v13;
    goto LABEL_12;
  }

  v17 = v13;
  v14 = [(BKExtractFileOperation *)self _ensureBackupAttributeOnItemAtPath:v6 error:&v17];
  v11 = v17;

  if ((v14 & 1) == 0)
  {
    v16 = BCIMLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_8CDF4();
    }

LABEL_12:

    v15 = 0;
    goto LABEL_13;
  }

  v15 = 1;
LABEL_13:
  self->_success = v15;
}

- (BOOL)_ensureBackupAttributeOnItemAtPath:(id)a3 error:(id *)a4
{
  v5 = [NSURL fileURLWithPath:a3];
  v11 = 0;
  v6 = [v5 getResourceValue:&v11 forKey:NSURLIsExcludedFromBackupKey error:a4];
  v7 = v11;
  v8 = v7;
  if (v6)
  {
    if (v7 && ![v7 BOOLValue])
    {
      v9 = 1;
    }

    else
    {
      v9 = [v5 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:a4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_fixFilePermissions:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  sub_31E0(v4, v3);
  v32[0] = NSURLIsDirectoryKey;
  v32[1] = NSURLIsSymbolicLinkKey;
  [NSArray arrayWithObjects:v32 count:2];
  v17 = v4;
  v16 = v18 = v3;
  v5 = [v4 enumeratorAtURL:v3 includingPropertiesForKeys:? options:? errorHandler:?];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v19 = 0;
        v20 = 0;
        v11 = [v10 getResourceValue:&v20 forKey:NSURLIsSymbolicLinkKey error:&v19];
        v12 = v20;
        v13 = v19;
        if (v11)
        {
          if (v12)
          {
            v14 = [v12 BOOLValue];
            if ((v14 & 1) == 0)
            {
              sub_31E0(v14, v10);
            }
          }
        }

        else
        {
          v15 = BCIMLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 141558530;
            v26 = 1752392040;
            v27 = 2112;
            v28 = v10;
            v29 = 2112;
            v30 = v13;
            _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "BKExtractFileOperation _fixFilePermissions: getResourceValue failed. key: NSURLIsSymbolicLinkKey url: %{mask.hash}@ error: %@", buf, 0x20u);
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v7);
  }
}

- (void)_performZipExtractionFromPath:(id)a3 toPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    v8 = [(BKExtractFileOperation *)self _zipExtractionPathFromSourcePath:v6];
    v9 = [NSURL fileURLWithPath:v6];
    v10 = [NSURL fileURLWithPath:v8];
    v11 = BKLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558786;
      v28 = 1752392040;
      v29 = 2112;
      v30 = v6;
      v31 = 2160;
      v32 = 1752392040;
      v33 = 2112;
      v34 = v8;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Extracting %{mask.hash}@ to immediate path %{mask.hash}@", buf, 0x2Au);
    }

    self->_skipCleanupDestinationFile = 1;
    v26 = 0;
    v12 = [[BUUnarchivingFileCopier alloc] initWithURL:v9 options:5 error:&v26];
    v13 = v26;
    [v12 setDelegate:self];
    self->_skipCleanupDestinationFile = 0;
    if (v13)
    {
      v14 = BKLibraryLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_8CF9C();
      }
    }

    else
    {
      v25 = 0;
      v15 = [v12 copyToURL:v10 error:&v25];
      v13 = v25;
      self->_success = v15;
    }

    v16 = objc_alloc_init(NSFileManager);
    v17 = v16;
    if (self->_success)
    {
      v18 = BKLibraryLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558786;
        v28 = 1752392040;
        v29 = 2112;
        v30 = v8;
        v31 = 2160;
        v32 = 1752392040;
        v33 = 2112;
        v34 = v7;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Moving from immediate path %{mask.hash}@ to destination %{mask.hash}@", buf, 0x2Au);
      }

      v24 = 0;
      v19 = [v17 moveItemAtPath:v8 toPath:v7 error:&v24];
      v20 = v24;
      self->_success = v19;
      if (v19)
      {
        goto LABEL_23;
      }

      v21 = BCIMLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_8D0EC();
      }
    }

    else
    {
      if (![v16 fileExistsAtPath:v8])
      {
        v20 = 0;
        goto LABEL_23;
      }

      v23 = 0;
      v22 = [v17 removeItemAtPath:v8 error:&v23];
      v20 = v23;
      if (v22)
      {
LABEL_23:

        goto LABEL_24;
      }

      v21 = BCIMLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_8D07C();
      }
    }

    goto LABEL_23;
  }

  self->_success = 0;
LABEL_24:
}

- (id)_zipExtractionPathFromSourcePath:(id)a3
{
  v3 = a3;
  v4 = +[UIApplication applicationCacheDirectory];
  v5 = [v4 stringByAppendingPathComponent:@"tmp"];
  v6 = [v3 lastPathComponent];

  v7 = [v5 stringByAppendingPathComponent:v6];

  return v7;
}

- (BKExtractFileOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end