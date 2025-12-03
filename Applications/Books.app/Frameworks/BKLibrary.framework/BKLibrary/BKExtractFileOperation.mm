@interface BKExtractFileOperation
- (BKExtractFileOperationDelegate)delegate;
- (BOOL)_ensureBackupAttributeOnItemAtPath:(id)path error:(id *)error;
- (BOOL)_forceFileProtectionOnItemAtPath:(id)path usingFileManager:(id)manager error:(id *)error;
- (double)progress;
- (id)_zipExtractionPathFromSourcePath:(id)path;
- (void)_fixFilePermissions:(id)permissions;
- (void)_initializeProgress;
- (void)_performCopyFromPath:(id)path toPath:(id)toPath;
- (void)_performMoveFromPath:(id)path toPath:(id)toPath;
- (void)_performZipExtractionFromPath:(id)path toPath:(id)toPath;
- (void)_updateProgressWithByteCount:(int64_t)count;
- (void)main;
- (void)setSourceFilePath:(id)path;
@end

@implementation BKExtractFileOperation

- (void)main
{
  v3 = BCIMLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    sourceFileType = [(BKExtractFileOperation *)self sourceFileType];
    sourceFilePath = [(BKExtractFileOperation *)self sourceFilePath];
    *buf = 67109378;
    v29 = sourceFileType;
    v30 = 2112;
    v31 = sourceFilePath;
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
    sourceFilePath2 = [(BKExtractFileOperation *)self sourceFilePath];
    destinationFilePath = [NSURL fileURLWithPath:sourceFilePath2];

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
      [NSURL coordinateWritingItemAtURL:destinationFilePath options:2 error:&v26 byAccessor:v24];
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
      [NSURL coordinateReadingItemAtURL:destinationFilePath options:0 error:&v23 byAccessor:v21];
    }

    sourceFilePath3 = *v10;

    if (sourceFilePath3)
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
    sourceFilePath3 = [(BKExtractFileOperation *)self sourceFilePath];
    destinationFilePath = [(BKExtractFileOperation *)self destinationFilePath];
    (v6[2])(v6, sourceFilePath3, destinationFilePath);
  }

  success = self->_success;
  v14 = BCIMLog();
  v15 = v14;
  if (success)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sourceFileType2 = [(BKExtractFileOperation *)self sourceFileType];
      sourceFilePath4 = [(BKExtractFileOperation *)self sourceFilePath];
      *buf = 67109378;
      v29 = sourceFileType2;
      v30 = 2112;
      v31 = sourceFilePath4;
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

- (void)setSourceFilePath:(id)path
{
  pathCopy = path;
  if (self->_sourceFilePath != pathCopy)
  {
    v6 = pathCopy;
    objc_storeStrong(&self->_sourceFilePath, path);
    [(BKExtractFileOperation *)self _initializeProgress];
    pathCopy = v6;
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

  sourceFilePath = [(BKExtractFileOperation *)self sourceFilePath];
  v5 = [NSURL fileURLWithPath:sourceFilePath];

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

- (void)_updateProgressWithByteCount:(int64_t)count
{
  progressBytes = self->_progressBytes;
  totalBytes = progressBytes + count;
  if (progressBytes + count >= self->_totalBytes)
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

- (BOOL)_forceFileProtectionOnItemAtPath:(id)path usingFileManager:(id)manager error:(id *)error
{
  pathCopy = path;
  managerCopy = manager;
  forcedFileProtection = [(BKExtractFileOperation *)self forcedFileProtection];

  if (forcedFileProtection)
  {
    v14 = NSFileProtectionKey;
    v15 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12 = [managerCopy setAttributes:v11 ofItemAtPath:pathCopy error:error];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)_performCopyFromPath:(id)path toPath:(id)toPath
{
  toPathCopy = toPath;
  pathCopy = path;
  v8 = objc_alloc_init(NSFileManager);
  v17 = 0;
  v9 = [v8 copyItemAtPath:pathCopy toPath:toPathCopy error:&v17];

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
  v12 = [(BKExtractFileOperation *)self _forceFileProtectionOnItemAtPath:toPathCopy usingFileManager:v8 error:&v16];
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

- (void)_performMoveFromPath:(id)path toPath:(id)toPath
{
  toPathCopy = toPath;
  pathCopy = path;
  v8 = objc_alloc_init(NSFileManager);
  v19 = 0;
  v9 = [v8 moveItemAtPath:pathCopy toPath:toPathCopy error:&v19];

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
  v12 = [(BKExtractFileOperation *)self _forceFileProtectionOnItemAtPath:toPathCopy usingFileManager:v8 error:&v18];
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
  v14 = [(BKExtractFileOperation *)self _ensureBackupAttributeOnItemAtPath:toPathCopy error:&v17];
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

- (BOOL)_ensureBackupAttributeOnItemAtPath:(id)path error:(id *)error
{
  v5 = [NSURL fileURLWithPath:path];
  v11 = 0;
  v6 = [v5 getResourceValue:&v11 forKey:NSURLIsExcludedFromBackupKey error:error];
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
      v9 = [v5 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:error];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_fixFilePermissions:(id)permissions
{
  permissionsCopy = permissions;
  v4 = +[NSFileManager defaultManager];
  sub_31E0(v4, permissionsCopy);
  v32[0] = NSURLIsDirectoryKey;
  v32[1] = NSURLIsSymbolicLinkKey;
  [NSArray arrayWithObjects:v32 count:2];
  v17 = v4;
  v16 = v18 = permissionsCopy;
  v5 = [v4 enumeratorAtURL:permissionsCopy includingPropertiesForKeys:? options:? errorHandler:?];
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
            bOOLValue = [v12 BOOLValue];
            if ((bOOLValue & 1) == 0)
            {
              sub_31E0(bOOLValue, v10);
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

- (void)_performZipExtractionFromPath:(id)path toPath:(id)toPath
{
  pathCopy = path;
  toPathCopy = toPath;
  if ([pathCopy length] && objc_msgSend(toPathCopy, "length"))
  {
    v8 = [(BKExtractFileOperation *)self _zipExtractionPathFromSourcePath:pathCopy];
    v9 = [NSURL fileURLWithPath:pathCopy];
    v10 = [NSURL fileURLWithPath:v8];
    v11 = BKLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558786;
      v28 = 1752392040;
      v29 = 2112;
      v30 = pathCopy;
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
        v34 = toPathCopy;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Moving from immediate path %{mask.hash}@ to destination %{mask.hash}@", buf, 0x2Au);
      }

      v24 = 0;
      v19 = [v17 moveItemAtPath:v8 toPath:toPathCopy error:&v24];
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

- (id)_zipExtractionPathFromSourcePath:(id)path
{
  pathCopy = path;
  v4 = +[UIApplication applicationCacheDirectory];
  v5 = [v4 stringByAppendingPathComponent:@"tmp"];
  lastPathComponent = [pathCopy lastPathComponent];

  v7 = [v5 stringByAppendingPathComponent:lastPathComponent];

  return v7;
}

- (BKExtractFileOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end