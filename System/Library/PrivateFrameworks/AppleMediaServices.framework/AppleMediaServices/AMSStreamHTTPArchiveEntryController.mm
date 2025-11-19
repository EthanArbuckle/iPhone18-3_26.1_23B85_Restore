@interface AMSStreamHTTPArchiveEntryController
+ (AMSCircularBuffer)buffer;
+ (BOOL)_shouldWriteEntryDirectlyToDiskForURLString:(id)a3;
+ (BOOL)_writeData:(id)a3 enumeratingBytesToStream:(id)a4;
+ (BOOL)_writeFooterToStream:(id)a3;
+ (BOOL)_writeHeaderToStream:(id)a3;
+ (id)_createNewFileNameForCombining:(BOOL)a3 extension:(id)a4;
+ (id)_createNewFileWithFileName:(id)a3 outputDirectory:(id)a4 error:(id *)a5;
+ (id)_footerData;
+ (id)_harFileURLsInPath:(id)a3;
+ (id)_headerData;
+ (id)ams_combineEntriesForPath:(id)a3 error:(id *)a4;
+ (void)_moveTemporaryFileURL:(id)a3 toFinalFileURL:(id)a4;
+ (void)_performCombiningFiles:(id)a3 toStream:(id)a4;
+ (void)_periodicCleanup;
+ (void)_streamToDiskWithEntries:(id)a3;
+ (void)_updateMaxBufferSize;
+ (void)_writeEntries:(id)a3 toStream:(id)a4;
+ (void)ams_addEntriesForTaskInfo:(id)a3;
+ (void)ams_streamEntriesToDisk;
+ (void)initialize;
@end

@implementation AMSStreamHTTPArchiveEntryController

+ (AMSCircularBuffer)buffer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AMSStreamHTTPArchiveEntryController_buffer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED6E3108 != -1)
  {
    dispatch_once(&qword_1ED6E3108, block);
  }

  v2 = _MergedGlobals_148;

  return v2;
}

+ (void)ams_streamEntriesToDisk
{
  v15 = *MEMORY[0x1E69E9840];
  if (+[AMSHTTPArchiveController _disabled])
  {
    v3 = +[AMSLogConfig sharedHARLoggingConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      *buf = 138543618;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error adding HAR, disabled", buf, 0x16u);
    }
  }

  else
  {
    v7 = [a1 buffer];
    v8 = [v7 count];

    if (v8 >= 5)
    {
      v9 = [a1 buffer];
      v10 = [v9 flush];

      [a1 _streamToDiskWithEntries:v10];
    }
  }
}

+ (void)initialize
{
  v4 = [[AMSObserver alloc] initWithResultBlock:&__block_literal_global_132];
  [AMSMemoryPressure subscribe:v4];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, _AMSHTTPArchiveControllerShouldSaveToDisk, @"SSHTTPArchiveShouldSaveToDiskNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, _AMSHTTPArchiveControllerShouldSaveToDiskDecompressed, @"SSHTTPArchiveShouldSaveToDiskDecompressedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void __45__AMSStreamHTTPArchiveEntryController_buffer__block_invoke(uint64_t a1)
{
  v2 = [[AMSCircularBuffer alloc] initWithMaxSize:0];
  v3 = _MergedGlobals_148;
  _MergedGlobals_148 = v2;

  v4 = dispatch_get_global_queue(-32768, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AMSStreamHTTPArchiveEntryController_buffer__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

+ (void)ams_addEntriesForTaskInfo:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!+[AMSHTTPArchiveController _disabled])
  {
    v5 = AMSSetLogKeyIfNeeded();
    v6 = [[AMSStreamHTTPArchiveEntry alloc] initWithHTTPArchiveTaskInfo:v4];
    v9 = [(AMSStreamHTTPArchiveEntry *)v6 entries];
    v10 = [v9 count];

    if (!v10)
    {
      v35 = +[AMSUnitTests isRunningUnitTests];
      v36 = +[AMSLogConfig sharedHARLoggingConfig];
      v13 = v36;
      if (v35)
      {
        if (!v36)
        {
          v13 = +[AMSLogConfig sharedConfig];
        }

        v37 = [v13 OSLogObject];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_opt_class();
          v39 = [(AMSStreamHTTPArchiveEntry *)v6 urlString];
          *buf = 138543874;
          v44 = v38;
          v45 = 2114;
          v46 = v5;
          v47 = 2114;
          v48 = v39;
          _os_log_impl(&dword_192869000, v37, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Found empty entries array for url: %{public}@", buf, 0x20u);
        }

        v13 = [MEMORY[0x1E696AD88] defaultCenter];
        v24 = +[AMSLogConfig sharedHARLoggingConfig];
        [v13 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v24 userInfo:0];
      }

      else
      {
        if (!v36)
        {
          v13 = +[AMSLogConfig sharedConfig];
        }

        v24 = [v13 OSLogObject];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          v40 = objc_opt_class();
          v41 = [(AMSStreamHTTPArchiveEntry *)v6 urlString];
          *buf = 138543874;
          v44 = v40;
          v45 = 2114;
          v46 = v5;
          v47 = 2114;
          v48 = v41;
          _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] Found empty entries array for url: %{public}@", buf, 0x20u);
        }
      }

      goto LABEL_34;
    }

    v11 = MEMORY[0x1E695DFF8];
    v12 = [(AMSStreamHTTPArchiveEntry *)v6 urlString];
    v13 = [v11 URLWithString:v12];

    v14 = +[AMSHTTPArchiveController harURLFilters];
    if (v14)
    {
      v15 = v14;
      v16 = +[AMSHTTPArchiveController harURLFilters];
      v17 = [v16 count];

      if (v17)
      {
        v18 = [(AMSStreamHTTPArchiveEntry *)v6 urlString];
        v19 = [a1 _shouldWriteEntryDirectlyToDiskForURLString:v18];

        if (v19)
        {
          v20 = +[AMSLogConfig sharedHARLoggingConfig];
          if (!v20)
          {
            v20 = +[AMSLogConfig sharedConfig];
          }

          v21 = [v20 OSLogObject];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = objc_opt_class();
            v23 = AMSLogableURL(v13);
            *buf = 138543874;
            v44 = v22;
            v45 = 2114;
            v46 = v5;
            v47 = 2114;
            v48 = v23;
            _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Writing filtered HAR entries to disk for URL string: %{public}@", buf, 0x20u);
          }

          v42 = v6;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
          [a1 _streamToDiskWithEntries:v24];
          goto LABEL_34;
        }
      }
    }

    v25 = +[AMSLogConfig sharedHARLoggingConfig];
    if (!v25)
    {
      v25 = +[AMSLogConfig sharedConfig];
    }

    v26 = [v25 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v28 = AMSLogableURL(v13);
      *buf = 138543874;
      v44 = v27;
      v45 = 2114;
      v46 = v5;
      v47 = 2114;
      v48 = v28;
      _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Write HTTP Stream Entry to buffer for URL string: %{public}@", buf, 0x20u);
    }

    v29 = [a1 buffer];
    if ([v29 count] >= 6)
    {
      v30 = [a1 buffer];
      v31 = [v30 count];
      v32 = [a1 buffer];
      v33 = [v32 maxSize] - 3;

      if (v31 < v33)
      {
LABEL_23:
        v24 = [a1 buffer];
        [v24 addObject:v6];
LABEL_34:

        goto LABEL_35;
      }

      v34 = [a1 buffer];
      v29 = [v34 flush];

      [a1 _streamToDiskWithEntries:v29];
    }

    goto LABEL_23;
  }

  v5 = +[AMSLogConfig sharedHARLoggingConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543618;
    v44 = v7;
    v45 = 2114;
    v46 = v8;
    _os_log_impl(&dword_192869000, &v6->super, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Error adding HAR, disabled", buf, 0x16u);
  }

LABEL_35:
}

+ (id)ams_combineEntriesForPath:(id)a3 error:(id *)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 _harFileURLsInPath:v6];
  v8 = [a1 _createNewFileNameForCombining:1 extension:@".har"];
  v48 = 0;
  v9 = [a1 _createNewFileWithFileName:v8 outputDirectory:v6 error:&v48];

  v10 = v48;
  v11 = +[AMSLogConfig sharedHARLoggingConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    AMSLogKey();
    v45 = v8;
    v15 = v14 = v7;
    AMSLogableURL(v9);
    v16 = a4;
    v17 = v10;
    v19 = v18 = v9;
    *buf = 138543874;
    v50 = v13;
    v51 = 2114;
    v52 = v15;
    v53 = 2114;
    v54 = v19;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Combining HAR entries to fileURL: %{public}@", buf, 0x20u);

    v9 = v18;
    v10 = v17;
    a4 = v16;

    v7 = v14;
    v8 = v45;
  }

  if (v10)
  {
    v20 = +[AMSLogConfig sharedHARLoggingConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      *buf = 138543618;
      v50 = v22;
      v51 = 2114;
      v52 = v10;
      v23 = v9;
      v24 = v22;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create a new HAR file. error = %{public}@", buf, 0x16u);

      v9 = v23;
    }

    if (a4)
    {
      v25 = v10;
      v26 = 0;
      *a4 = v10;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v27 = [MEMORY[0x1E695DFC0] outputStreamWithURL:v9 append:0];
    [v27 open];
    if ([a1 _writeHeaderToStream:v27])
    {
      [a1 _performCombiningFiles:v7 toStream:v27];
      if ([a1 _writeFooterToStream:v27])
      {
        [v27 close];
        v26 = v7;
      }

      else
      {
        v36 = v9;
        v37 = +[AMSLogConfig sharedHARLoggingConfig];
        if (!v37)
        {
          v37 = +[AMSLogConfig sharedConfig];
        }

        v38 = [v37 OSLogObject];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = objc_opt_class();
          v47 = v39;
          AMSLogableURL(v36);
          v40 = a4;
          v41 = v8;
          v43 = v42 = v7;
          *buf = 138543618;
          v50 = v39;
          v51 = 2114;
          v52 = v43;
          _os_log_impl(&dword_192869000, v38, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create footer for new fileURL: %{public}@", buf, 0x16u);

          v7 = v42;
          v8 = v41;
          a4 = v40;
        }

        v26 = 0;
        if (a4)
        {
          *a4 = 0;
        }

        v9 = v36;
      }
    }

    else
    {
      v28 = +[AMSLogConfig sharedHARLoggingConfig];
      if (!v28)
      {
        v28 = +[AMSLogConfig sharedConfig];
      }

      v29 = [v28 OSLogObject];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = a4;
        v31 = v9;
        v32 = objc_opt_class();
        v46 = v32;
        AMSLogableURL(v31);
        v33 = v8;
        v35 = v34 = v7;
        *buf = 138543618;
        v50 = v32;
        v9 = v31;
        a4 = v30;
        v51 = 2114;
        v52 = v35;
        _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create header for new fileURL: %{public}@", buf, 0x16u);

        v7 = v34;
        v8 = v33;
      }

      v26 = 0;
      if (a4)
      {
        *a4 = 0;
      }
    }
  }

  return v26;
}

+ (BOOL)_shouldWriteEntryDirectlyToDiskForURLString:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = +[AMSHTTPArchiveController harURLFilters];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if ([v3 containsString:*(*(&v9 + 1) + 8 * i)])
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

+ (void)_streamToDiskWithEntries:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!+[AMSHTTPArchiveController _disabled])
  {
    v5 = [a1 _createNewFileNameForCombining:0 extension:@".temp"];
    v6 = +[AMSHTTPArchive directory];
    v37 = a1;
    v39 = 0;
    v7 = [a1 _createNewFileWithFileName:v5 outputDirectory:v6 error:&v39];
    v8 = v39;

    v9 = [v5 stringByReplacingOccurrencesOfString:@".temp" withString:@".har"];
    v10 = MEMORY[0x1E695DFF8];
    v11 = +[AMSHTTPArchive directory];
    v12 = [v10 fileURLWithPath:v11];
    v13 = [v12 URLByAppendingPathComponent:v9];

    v14 = +[AMSLogConfig sharedHARLoggingConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v13;
      v16 = v9;
      v17 = v5;
      v18 = v4;
      v19 = v8;
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      v22 = AMSLogableURL(v7);
      *buf = 138543874;
      v41 = v20;
      v8 = v19;
      v4 = v18;
      v5 = v17;
      v9 = v16;
      v13 = v36;
      v42 = 2114;
      v43 = v21;
      v44 = 2114;
      v45 = v22;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Writing HAR entries to temporary fileURL: %{public}@", buf, 0x20u);
    }

    if (v8)
    {
      v23 = +[AMSLogConfig sharedHARLoggingConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v23 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        *buf = 138543618;
        v41 = v25;
        v42 = 2114;
        v43 = v8;
        v26 = v25;
        _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create a new HAR file. error = %{public}@", buf, 0x16u);
      }

      goto LABEL_25;
    }

    v23 = [MEMORY[0x1E695DFC0] outputStreamWithURL:v7 append:0];
    [v23 open];
    if ([v37 _writeHeaderToStream:v23])
    {
      [v37 _writeEntries:v4 toStream:v23];
      if ([v37 _writeFooterToStream:v23])
      {
        [v23 close];
        [v37 _moveTemporaryFileURL:v7 toFinalFileURL:v13];
        [v37 _periodicCleanup];
LABEL_25:

        goto LABEL_26;
      }

      v27 = v7;
      v28 = +[AMSLogConfig sharedHARLoggingConfig];
      if (!v28)
      {
        v28 = +[AMSLogConfig sharedConfig];
      }

      v29 = [v28 OSLogObject];
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
LABEL_24:

        v7 = v27;
        goto LABEL_25;
      }

      v35 = objc_opt_class();
      v38 = v9;
      v31 = v35;
      AMSLogableURL(v27);
      v33 = v32 = v13;
      *buf = 138543618;
      v41 = v35;
      v42 = 2114;
      v43 = v33;
      v34 = "%{public}@: Failed to create footer for temporary fileURL: %{public}@";
    }

    else
    {
      v27 = v7;
      v28 = +[AMSLogConfig sharedHARLoggingConfig];
      if (!v28)
      {
        v28 = +[AMSLogConfig sharedConfig];
      }

      v29 = [v28 OSLogObject];
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v30 = objc_opt_class();
      v38 = v9;
      v31 = v30;
      AMSLogableURL(v27);
      v33 = v32 = v13;
      *buf = 138543618;
      v41 = v30;
      v42 = 2114;
      v43 = v33;
      v34 = "%{public}@: Failed to create header for temporary fileURL: %{public}@";
    }

    _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_ERROR, v34, buf, 0x16u);

    v13 = v32;
    v8 = 0;
    v9 = v38;
    goto LABEL_24;
  }

LABEL_26:
}

+ (void)_moveTemporaryFileURL:(id)a3 toFinalFileURL:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v5 absoluteString];
  v9 = [v7 fileExistsAtPath:v8];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v18 = 0;
    v12 = [v11 moveItemAtURL:v5 toURL:v6 error:&v18];
    v10 = v18;

    if ((v12 & 1) == 0)
    {
      v13 = +[AMSLogConfig sharedHARLoggingConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = v15;
        v17 = [v10 localizedDescription];
        *buf = 138543874;
        v20 = v15;
        v21 = 2114;
        v22 = v6;
        v23 = 2114;
        v24 = v17;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to move temporary har file to final path: %{public}@, error: %{public}@", buf, 0x20u);
      }
    }
  }
}

+ (id)_createNewFileNameForCombining:(BOOL)a3 extension:(id)a4
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = [v6 date];
  [v8 timeIntervalSinceReferenceDate];
  v10 = &stru_1F071BA78;
  if (v4)
  {
    v10 = @"_amscombined";
  }

  v11 = [v5 stringWithFormat:@"%@_%f_streamwrite%@%@", @"amstoold", v9, v10, v7];

  return v11;
}

+ (id)_createNewFileWithFileName:(id)a3 outputDirectory:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  if (v10)
  {
    v11 = 0;
LABEL_4:
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
    v15 = [v14 URLByAppendingPathComponent:v7];

    goto LABEL_5;
  }

  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v18 = 0;
  v13 = [v12 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v18];
  v11 = v18;

  if (v13)
  {
    goto LABEL_4;
  }

  if (a5)
  {
    v17 = v11;
    v15 = 0;
    *a5 = v11;
  }

  else
  {
    v15 = 0;
  }

LABEL_5:

  return v15;
}

+ (void)_writeEntries:(id)a3 toStream:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v9 = 0;
    *&v8 = 138543362;
    v26 = v8;
    v27 = v6;
    while (1)
    {
      v28 = v9;
      v10 = [v6 objectAtIndexedSubscript:{v9, v26}];
      v11 = [v10 entries];
      v12 = [v11 count];

      if (v12)
      {
        break;
      }

LABEL_15:

      v6 = v27;
      v9 = v28 + 1;
      if (v28 + 1 >= [v27 count])
      {
        goto LABEL_16;
      }
    }

    v13 = 0;
    while (1)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [v10 entries];
      v16 = [v15 objectAtIndexedSubscript:v13];

      v17 = [v16 ams_decompressedData];
      if ([a1 _writeData:v17 enumeratingBytesToStream:v7])
      {
        if (v28 == [v27 count] - 1)
        {
          v18 = [v10 entries];
          v19 = [v18 count] - 1;

          if (v13 == v19)
          {
            goto LABEL_14;
          }
        }

        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@", "];
        v21 = [v20 dataUsingEncoding:4];
        [a1 _writeData:v21 enumeratingBytesToStream:v7];
      }

      else
      {
        v20 = +[AMSLogConfig sharedHARLoggingConfig];
        if (!v20)
        {
          v20 = +[AMSLogConfig sharedConfig];
        }

        v21 = [v20 OSLogObject];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = objc_opt_class();
          *buf = v26;
          v30 = v22;
          v23 = v22;
          _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Failed to write entry to the har logging stream.", buf, 0xCu);
        }
      }

LABEL_14:
      objc_autoreleasePoolPop(v14);
      ++v13;
      v24 = [v10 entries];
      v25 = [v24 count];

      if (v13 >= v25)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_16:
}

+ (BOOL)_writeHeaderToStream:(id)a3
{
  v4 = a3;
  v5 = [a1 _headerData];
  LOBYTE(a1) = [a1 _writeData:v5 enumeratingBytesToStream:v4];

  return a1;
}

+ (id)_headerData
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{name:AppleMediaServices, version:2.0}"];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{creator:%@", v2];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{log:%@, entries:[", v3];
  v5 = [v4 dataUsingEncoding:4];

  return v5;
}

+ (BOOL)_writeFooterToStream:(id)a3
{
  v4 = a3;
  v5 = [a1 _footerData];
  LOBYTE(a1) = [a1 _writeData:v5 enumeratingBytesToStream:v4];

  return a1;
}

+ (id)_footerData
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"], version:1.2}}"];
  v3 = [v2 dataUsingEncoding:4];

  return v3;
}

+ (BOOL)_writeData:(id)a3 enumeratingBytesToStream:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__AMSStreamHTTPArchiveEntryController__writeData_enumeratingBytesToStream___block_invoke;
  v10[3] = &unk_1E73BC588;
  v7 = v6;
  v11 = v7;
  v12 = &v13;
  [v5 enumerateByteRangesUsingBlock:v10];
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t __75__AMSStreamHTTPArchiveEntryController__writeData_enumeratingBytesToStream___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) write:a2 maxLength:?];
  if (!result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

+ (void)_updateMaxBufferSize
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = +[AMSMemoryPressure lastKnownStatus];
  if ([v3 isEqualToString:0])
  {
    v4 = +[AMSLogConfig sharedHARLoggingConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 25;
      goto LABEL_15;
    }

    v6 = objc_opt_class();
    v7 = 25;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:25];
    *v11 = 138543618;
    *&v11[4] = v6;
    *&v11[12] = 2112;
    *&v11[14] = v8;
LABEL_11:
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Received memory warning, writing to disk to flush the buffer. Current max: %@", v11, 0x16u);

LABEL_15:
    [a1 ams_streamEntriesToDisk];
    goto LABEL_16;
  }

  if ([v3 isEqualToString:0])
  {
    v4 = +[AMSLogConfig sharedHARLoggingConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 12;
      goto LABEL_15;
    }

    v9 = objc_opt_class();
    v7 = 12;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:12];
    *v11 = 138543618;
    *&v11[4] = v9;
    *&v11[12] = 2112;
    *&v11[14] = v8;
    goto LABEL_11;
  }

  v7 = 50;
LABEL_16:
  v10 = [a1 buffer];
  [v10 setMaxSize:v7];
}

+ (void)_periodicCleanup
{
  v2 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v2, &__block_literal_global_60_1);
}

void __55__AMSStreamHTTPArchiveEntryController__periodicCleanup__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DF00] date];
  v1 = [v0 dateByAddingTimeInterval:-86400.0];

  [AMSHTTPArchive removeHTTPArchiveFilesOlderThanDate:v1];
}

+ (id)_harFileURLsInPath:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v26 = AMSSetLogKeyIfNeeded();
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v25 = [MEMORY[0x1E695E0F0] mutableCopy];
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [v6 enumeratorAtPath:v3];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v24 = v3;
      v11 = *v28;
      do
      {
        v12 = 0;
        do
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v27 + 1) + 8 * v12);
          if (![v13 containsString:{@"_streamwrite.har", v24}] || (objc_msgSend(v13, "containsString:", @"_amscombined") & 1) != 0 || objc_msgSend(v13, "containsString:", @".temp"))
          {
            v14 = +[AMSLogConfig sharedHARLoggingConfig];
            if (!v14)
            {
              v14 = +[AMSLogConfig sharedConfig];
            }

            v15 = [v14 OSLogObject];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = objc_opt_class();
              *buf = 138543874;
              v32 = v16;
              v33 = 2114;
              v34 = v26;
              v35 = 2114;
              v36 = v13;
              _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping HAR combining for: %{public}@.", buf, 0x20u);
            }
          }

          else
          {
            v17 = +[AMSLogConfig sharedHARLoggingConfig];
            if (!v17)
            {
              v17 = +[AMSLogConfig sharedConfig];
            }

            v18 = [v17 OSLogObject];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = objc_opt_class();
              *buf = 138543874;
              v32 = v19;
              v33 = 2114;
              v34 = v26;
              v35 = 2114;
              v36 = v13;
              _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Logging HAR for fileName: %{public}@.", buf, 0x20u);
            }

            v14 = [v24 stringByAppendingPathComponent:v13];
            [v25 addObject:v14];
          }

          ++v12;
        }

        while (v10 != v12);
        v20 = [v8 countByEnumeratingWithState:&v27 objects:v37 count:16];
        v10 = v20;
      }

      while (v20);
      v21 = v8;
      v3 = v24;
    }

    else
    {
      v21 = v8;
    }
  }

  else
  {
    v21 = +[AMSLogConfig sharedHARLoggingConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v21 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v32 = objc_opt_class();
      v33 = 2114;
      v34 = v26;
      v22 = v32;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Directory containing HAR files does not exist.", buf, 0x16u);
    }

    v25 = 0;
  }

  return v25;
}

+ (void)_performCombiningFiles:(id)a3 toStream:(id)a4
{
  v81 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v58 = AMSSetLogKeyIfNeeded();
  v8 = [a1 _headerData];
  v9 = [v8 length];

  v59 = a1;
  v10 = [a1 _footerData];
  v11 = [v10 length];

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v6;
  v51 = [obj countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (v51)
  {
    v12 = 0;
    v47 = -(v9 + v11);
    v48 = *v69;
    v49 = v11;
    v50 = v9;
    v57 = v7;
    do
    {
      v13 = 0;
      do
      {
        if (*v69 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v68 + 1) + 8 * v13);
        v67 = 0;
        v53 = v14;
        v54 = v13;
        v15 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:?];
        v66 = 0;
        [v15 seekToEndReturningOffset:&v67 error:&v66];
        v16 = v66;

        v17 = v67;
        v18 = v67 - v11;
        v65 = 0;
        v61 = v15;
        [v15 seekToOffset:v9 error:&v65];
        v19 = v65;

        v20 = objc_autoreleasePoolPush();
        v60 = v18;
        if (v9 < v18)
        {
          v21 = v47 + v17;
          v22 = v9;
          v23 = v59;
          while (1)
          {
            if (v21 >= 0x400)
            {
              v24 = 1024;
            }

            else
            {
              v24 = v21;
            }

            v64 = 0;
            v25 = [v61 readDataUpToLength:v24 error:&v64];
            v26 = v64;

            if (!v25 || v26)
            {
              v27 = +[AMSLogConfig sharedHARLoggingConfig];
              if (!v27)
              {
                v27 = +[AMSLogConfig sharedConfig];
              }

              v28 = [v27 OSLogObject];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = objc_opt_class();
                v30 = [v26 localizedDescription];
                if (v30)
                {
                  v56 = [v26 localizedDescription];
                  v31 = v56;
                }

                else
                {
                  v31 = @"readDataUpToLength returned nil";
                }

                *buf = 138544130;
                v73 = v29;
                v74 = 2114;
                v75 = v58;
                v76 = 2048;
                v77 = v24;
                v78 = 2114;
                v79 = v31;
                _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Fault while reading bytes up to length: %lu, error: %{public}@", buf, 0x2Au);
                if (v30)
                {
                }

                v23 = v59;
              }

              v7 = v57;
            }

            [v23 _writeData:v25 enumeratingBytesToStream:v7];
            if (v21 < 0x401)
            {
              break;
            }

            v22 += 1024;
            v63 = 0;
            v32 = [v61 seekToOffset:v22 error:&v63];
            v19 = v63;

            if (!v32 || v19)
            {
              v33 = +[AMSLogConfig sharedHARLoggingConfig];
              if (!v33)
              {
                v33 = +[AMSLogConfig sharedConfig];
              }

              v34 = [v33 OSLogObject];
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                v35 = objc_opt_class();
                v36 = [v19 localizedDescription];
                if (v36)
                {
                  v55 = [v19 localizedDescription];
                  v37 = v55;
                }

                else
                {
                  v37 = @"seekToOffset not successful";
                }

                *buf = 138544130;
                v73 = v35;
                v74 = 2114;
                v75 = v58;
                v76 = 2048;
                v77 = v22;
                v78 = 2114;
                v79 = v37;
                _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Fault while seeking to offset to: %llu, error: %{public}@", buf, 0x2Au);
                if (v36)
                {
                }

                v23 = v59;
              }
            }

            objc_autoreleasePoolPop(v20);
            v20 = objc_autoreleasePoolPush();
            v21 -= 1024;
            if (v22 >= v60)
            {
              goto LABEL_40;
            }
          }

          v19 = v26;
        }

LABEL_40:
        objc_autoreleasePoolPop(v20);
        v38 = [MEMORY[0x1E696AC08] defaultManager];
        v62 = v19;
        [v38 removeItemAtPath:v53 error:&v62];
        v12 = v62;

        if (v12)
        {
          v39 = +[AMSLogConfig sharedHARLoggingConfig];
          if (!v39)
          {
            v39 = +[AMSLogConfig sharedConfig];
          }

          v40 = [v39 OSLogObject];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = objc_opt_class();
            v42 = v41;
            v43 = [v12 localizedDescription];
            *buf = 138544130;
            v73 = v41;
            v74 = 2114;
            v75 = v58;
            v76 = 2114;
            v77 = v53;
            v78 = 2114;
            v79 = v43;
            _os_log_impl(&dword_192869000, v40, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Fault while removing item at path: %{public}@, error: %{public}@", buf, 0x2Au);
          }
        }

        v44 = [obj lastObject];

        if (v53 != v44)
        {
          v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@", "];
          v46 = [v45 dataUsingEncoding:4];
          [v59 _writeData:v46 enumeratingBytesToStream:v7];
        }

        v13 = v54 + 1;
        v9 = v50;
        v11 = v49;
      }

      while (v54 + 1 != v51);
      v51 = [obj countByEnumeratingWithState:&v68 objects:v80 count:16];
    }

    while (v51);
  }
}

@end