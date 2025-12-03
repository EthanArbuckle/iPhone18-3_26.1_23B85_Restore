@interface ASDGatherLogsRequest
+ (void)clearHARFiles;
- (ASDGatherLogsRequest)initWithOptions:(id)options;
- (id)_combineAllLogs;
- (id)_createCombinedHarFile;
- (void)_copyDB:(void *)b fullSourcePath:(void *)path toDir:(void *)dir datbaseBase:(void *)base;
- (void)createHARFileArchiveWithCompletionBlock:(id)block;
- (void)createLogFileArchiveWithCompletionBlock:(id)block;
- (void)gatherLogsWithCompletionBlock:(id)block;
@end

@implementation ASDGatherLogsRequest

- (ASDGatherLogsRequest)initWithOptions:(id)options
{
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = ASDGatherLogsRequest;
  v5 = [(ASDGatherLogsRequest *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appstoredaemonframework.ASDGatherLogsRequest.access", v6);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.appstoredaemonframework.ASDGatherLogsRequest.callout", v9);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v10;

    v12 = [optionsCopy copy];
    options = v5->_options;
    v5->_options = v12;
  }

  return v5;
}

+ (void)clearHARFiles
{
  v20 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  objc_opt_self();
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/var/mobile/Library/Logs/%@/HTTPArchives", @"com.apple.StoreServices"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager contentsOfDirectoryAtPath:v2 error:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (([v10 hasSuffix:@".har.compressed"] & 1) != 0 || objc_msgSend(v10, "hasSuffix:", @".har"))
        {
          v11 = [v2 stringByAppendingPathComponent:v10];
          v14 = v7;
          [defaultManager removeItemAtPath:v11 error:&v14];
          v12 = v14;

          v7 = v12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)createLogFileArchiveWithCompletionBlock:(id)block
{
  v5 = self->_options;
  blockCopy = block;
  if (!blockCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__ASDGatherLogsRequest__sendRequestWithOptions_completionBlock___block_invoke;
  v9[3] = &unk_1E7CDBE48;
  v9[4] = self;
  v8 = blockCopy;
  v10 = v8;
  dispatch_async(accessQueue, v9);
}

- (void)createHARFileArchiveWithCompletionBlock:(id)block
{
  v5 = self->_options;
  blockCopy = block;
  if (!blockCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__ASDGatherLogsRequest__sendHarFileRequestWithOptions_completionBlock___block_invoke;
  v9[3] = &unk_1E7CDBE48;
  v9[4] = self;
  v8 = blockCopy;
  v10 = v8;
  dispatch_async(accessQueue, v9);
}

- (void)gatherLogsWithCompletionBlock:(id)block
{
  v5 = self->_options;
  blockCopy = block;
  if (!blockCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__ASDGatherLogsRequest__sendGatherRequestWithOptions_completionBlock___block_invoke;
  v9[3] = &unk_1E7CDBE48;
  v9[4] = self;
  v8 = blockCopy;
  v10 = v8;
  dispatch_async(accessQueue, v9);
}

void __47__ASDGatherLogsRequest__appstoredContainerPath__block_invoke()
{
  v0 = container_system_path_for_identifier();
  if (v0)
  {
    v1 = v0;
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v0];
    v3 = _MergedGlobals_55;
    _MergedGlobals_55 = v2;

    free(v1);
  }
}

- (id)_combineAllLogs
{
  v50[4] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v1 = [@"/var/mobile/Library/Caches/com.apple.appstored/" stringByAppendingPathComponent:@"scratch"];
    [MEMORY[0x1E696AC08] defaultManager];
    v39 = v42 = 0;
    [v39 removeItemAtPath:v1 error:&v42];
    v2 = @"appstored";
    v3 = v1;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v38 = v3;
    v5 = [v3 stringByAppendingPathComponent:@"appstored"];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.log", @"appstored"];
    v7 = [v5 stringByAppendingPathComponent:v6];

    v44 = 0;
    v40 = v7;
    [defaultManager createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v44];
    v8 = v44;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/var/mobile/Library/Logs/com.apple.%@/", @"appstored"];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.log", @"appstored"];
    v50[0] = v10;
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.1.log", @"appstored"];
    v50[1] = v11;
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.2.log", @"appstored"];
    v50[2] = v12;
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.3.log", @"appstored"];
    v50[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v14;
    v15 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v47;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v47 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v46 + 1) + 8 * i);
          v20 = [v9 stringByAppendingPathComponent:v19];
          if ([defaultManager fileExistsAtPath:v20])
          {
            v21 = [v40 stringByAppendingPathComponent:v19];
            v43 = v8;
            [defaultManager copyItemAtPath:v20 toPath:v21 error:&v43];
            v22 = v43;

            if (v22)
            {
              v23 = *MEMORY[0x1E69E9848];
              localizedDescription = [v22 localizedDescription];
              fprintf(v23, "\nError copying file: %s", [localizedDescription UTF8String]);
            }

            v8 = v22;
          }
        }

        v16 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
      }

      while (v16);
    }

    v25 = [MEMORY[0x1E695DFF8] URLWithString:v38];
    [ASDGatherLogsRequest _copyDB:@"/var/mobile/Media/Downloads/" fullSourcePath:v38 toDir:@"downloads.28" datbaseBase:?];
    if (qword_1ED90D670 != -1)
    {
      dispatch_once(&qword_1ED90D670, &__block_literal_global_30);
    }

    v26 = _MergedGlobals_55;
    v27 = [v26 stringByAppendingPathComponent:@"Documents"];

    [ASDGatherLogsRequest _copyDB:v27 fullSourcePath:v38 toDir:@"appstored" datbaseBase:?];
    [ASDGatherLogsRequest _copyDB:v27 fullSourcePath:v38 toDir:@"updates" datbaseBase:?];
    v28 = v25;
    if (BOMCopierNew())
    {
      initToMemory = [objc_alloc(MEMORY[0x1E695DFC0]) initToMemory];
      [initToMemory open];
      *&v46 = @"createPKZip";
      v30 = [MEMORY[0x1E696AD98] numberWithBool:1];
      *(&v46 + 1) = @"outputStream";
      v45[0] = v30;
      v45[1] = initToMemory;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v46 count:2];

      path = [v28 path];
      [path fileSystemRepresentation];
      v33 = BOMCopierCopyWithOptions();

      if (v33)
      {
        fwrite("Error copying and zipping\n", 0x1AuLL, 1uLL, *MEMORY[0x1E69E9848]);
        v34 = 0;
      }

      else
      {
        v34 = [initToMemory propertyForKey:*MEMORY[0x1E695DA30]];
        BOMCopierFree();
      }
    }

    else
    {
      fwrite("\nCouldn't create BomCopier for zipping", 0x26uLL, 1uLL, *MEMORY[0x1E69E9848]);
      v34 = 0;
    }

    v35 = [@"/var/mobile/Library/Caches/com.apple.appstored/" stringByAppendingPathComponent:@"appstored.zip"];
    [v34 writeToFile:v35 atomically:1];
  }

  else
  {
    v35 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

- (void)_copyDB:(void *)b fullSourcePath:(void *)path toDir:(void *)dir datbaseBase:(void *)base
{
  v44[3] = *MEMORY[0x1E69E9840];
  bCopy = b;
  pathCopy = path;
  dirCopy = dir;
  baseCopy = base;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v33 = dirCopy;
  v34 = bCopy;
  v12 = [dirCopy stringByAppendingPathComponent:bCopy];
  baseCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.sqlitedb", baseCopy];
  v14 = [v12 stringByAppendingPathComponent:baseCopy];

  v42 = 0;
  v35 = v14;
  [defaultManager createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v42];
  v15 = v42;
  baseCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.sqlitedb", baseCopy];
  v44[0] = baseCopy2;
  baseCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.sqlitedb-shm", baseCopy];
  v44[1] = baseCopy3;
  v32 = baseCopy;
  baseCopy4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.sqlitedb-wal", baseCopy];
  v44[2] = baseCopy4;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v19;
  v20 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v38 + 1) + 8 * i);
        v25 = [pathCopy stringByAppendingPathComponent:v24];
        if ([defaultManager fileExistsAtPath:v25])
        {
          v26 = [v35 stringByAppendingPathComponent:v24];
          v37 = v15;
          [defaultManager copyItemAtPath:v25 toPath:v26 error:&v37];
          v27 = v37;

          if (v27)
          {
            v28 = *MEMORY[0x1E69E9848];
            [v27 localizedDescription];
            v30 = v29 = pathCopy;
            fprintf(v28, "\nError copying file: %s", [v30 UTF8String]);

            pathCopy = v29;
          }

          v15 = v27;
        }
      }

      v21 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v21);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)_createCombinedHarFile
{
  v106 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    objc_opt_self();
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/var/mobile/Library/Logs/%@/HTTPArchives", @"com.apple.StoreServices"];
    fileName = [*(selfCopy + 32) fileName];
    v4 = fileName;
    if (fileName)
    {
      v5 = fileName;
    }

    else
    {
      v5 = @"combined.har";
    }

    v61 = [v2 stringByAppendingPathComponent:v5];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [defaultManager contentsOfDirectoryAtPath:v2 error:0];
    if ([*(selfCopy + 32) verbose])
    {
      v7 = objc_opt_class();
      NSLog(&cfstr_CheckingForLdF.isa, v7, [v6 count], v2);
    }

    v63 = v2;
    v76 = objc_opt_new();
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
    v74 = selfCopy;
    if (v8)
    {
      v9 = v8;
      v10 = *v95;
      do
      {
        v11 = 0;
        do
        {
          if (*v95 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v94 + 1) + 8 * v11);
          if (([v12 hasSuffix:@".har.compressed"] & 1) == 0 && !objc_msgSend(v12, "hasSuffix:", @".har"))
          {
            goto LABEL_17;
          }

          if ([v12 isEqualToString:@"combined.har"])
          {
            goto LABEL_17;
          }

          fileName2 = [*(selfCopy + 32) fileName];
          if (fileName2)
          {
            v14 = fileName2;
            fileName3 = [*(selfCopy + 32) fileName];
            v16 = [v12 isEqualToString:fileName3];

            selfCopy = v74;
            if (v16)
            {
LABEL_17:
              verbose = [*(selfCopy + 32) verbose];
              v18 = @"Skipping file: %@";
              if (!verbose)
              {
                goto LABEL_19;
              }

LABEL_18:
              NSLog(&v18->isa, v12);
              goto LABEL_19;
            }
          }

          [v76 addObject:v12];
          verbose2 = [*(selfCopy + 32) verbose];
          v18 = @"Including har file: %@";
          if (verbose2)
          {
            goto LABEL_18;
          }

LABEL_19:
          ++v11;
        }

        while (v9 != v11);
        v20 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
        v9 = v20;
      }

      while (v20);
    }

    v21 = objc_opt_new();
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v22 = v76;
    v23 = 0x1E695D000uLL;
    v62 = v22;
    v68 = [v22 countByEnumeratingWithState:&v90 objects:v104 count:16];
    v24 = 0;
    if (v68)
    {
      v67 = *v91;
      v26 = v63;
      v25 = defaultManager;
      do
      {
        v27 = 0;
        do
        {
          if (*v91 != v67)
          {
            objc_enumerationMutation(v22);
          }

          v72 = v27;
          v28 = [v26 stringByAppendingPathComponent:*(*(&v90 + 1) + 8 * v27)];
          v89 = v24;
          v71 = v28;
          v29 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:? options:? error:?];
          v30 = v89;

          v88 = v30;
          v70 = v29;
          v31 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v29 options:0 error:&v88];
          v69 = v88;

          v32 = *(v23 + 3872);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = [v31 objectForKeyedSubscript:@"log"];
            v34 = [v33 objectForKeyedSubscript:@"entries"];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              urlFilters = [*(selfCopy + 32) urlFilters];

              if (urlFilters)
              {
                v65 = v31;
                v86 = 0u;
                v87 = 0u;
                v84 = 0u;
                v85 = 0u;
                v77 = v34;
                v36 = [v77 countByEnumeratingWithState:&v84 objects:v103 count:16];
                if (v36)
                {
                  v37 = v36;
                  v38 = *v85;
                  v73 = *v85;
                  do
                  {
                    v39 = 0;
                    v75 = v37;
                    do
                    {
                      if (*v85 != v38)
                      {
                        objc_enumerationMutation(v77);
                      }

                      v40 = *(*(&v84 + 1) + 8 * v39);
                      v41 = *(v23 + 3872);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v42 = v34;
                        v43 = v23;
                        v44 = [v40 objectForKeyedSubscript:@"request"];
                        v45 = [v44 objectForKeyedSubscript:@"url"];

                        v82 = 0u;
                        v83 = 0u;
                        v80 = 0u;
                        v81 = 0u;
                        urlFilters2 = [*(v74 + 32) urlFilters];
                        v47 = [urlFilters2 countByEnumeratingWithState:&v80 objects:v102 count:16];
                        if (v47)
                        {
                          v48 = v47;
                          v49 = *v81;
                          do
                          {
                            for (i = 0; i != v48; ++i)
                            {
                              if (*v81 != v49)
                              {
                                objc_enumerationMutation(urlFilters2);
                              }

                              if ([v45 containsString:*(*(&v80 + 1) + 8 * i)])
                              {
                                [v21 addObject:v40];
                              }
                            }

                            v48 = [urlFilters2 countByEnumeratingWithState:&v80 objects:v102 count:16];
                          }

                          while (v48);
                        }

                        v23 = v43;
                        v34 = v42;
                        v38 = v73;
                        v37 = v75;
                      }

                      ++v39;
                    }

                    while (v39 != v37);
                    v37 = [v77 countByEnumeratingWithState:&v84 objects:v103 count:16];
                  }

                  while (v37);
                }

                v26 = v63;
                v25 = defaultManager;
                selfCopy = v74;
                v22 = v62;
                v31 = v65;
              }

              else
              {
                [v21 addObjectsFromArray:v34];
              }
            }
          }

          v79 = v69;
          [v25 removeItemAtPath:v71 error:&v79];
          v51 = v31;
          v24 = v79;

          v27 = v72 + 1;
        }

        while (v72 + 1 != v68);
        v68 = [v22 countByEnumeratingWithState:&v90 objects:v104 count:16];
      }

      while (v68);
    }

    else
    {
      v26 = v63;
    }

    v99[2] = v21;
    v100 = @"log";
    v98[0] = @"version";
    v98[1] = @"creator";
    v99[0] = @"1.2";
    v99[1] = &unk_1F30333A0;
    v98[2] = @"entries";
    v52 = [*(v23 + 3872) dictionaryWithObjects:v99 forKeys:v98 count:3];
    v101 = v52;
    v53 = [*(v23 + 3872) dictionaryWithObjects:&v101 forKeys:&v100 count:1];

    v78 = v24;
    v54 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v53 options:0 error:&v78];
    v55 = v78;

    if (v55)
    {
      v56 = objc_opt_class();
      NSLog(&cfstr_ErrorMergingHa.isa, v56, v55);
      v57 = v61;
    }

    else
    {
      v57 = v61;
      if ([*(selfCopy + 32) verbose])
      {
        v58 = objc_opt_class();
        NSLog(&cfstr_CreatedMergedH.isa, v58, v61);
      }
    }

    [v54 writeToFile:v57 atomically:1];
  }

  else
  {
    v57 = 0;
  }

  v59 = *MEMORY[0x1E69E9840];

  return v57;
}

void __70__ASDGatherLogsRequest__sendGatherRequestWithOptions_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [(ASDGatherLogsRequest *)*(a1 + 32) _combineAllLogs];
  v3 = [(ASDGatherLogsRequest *)*(a1 + 32) _createCombinedHarFile];
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__ASDGatherLogsRequest__sendGatherRequestWithOptions_completionBlock___block_invoke_2;
  block[3] = &unk_1E7CDBAE0;
  v5 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v9 = v2;
  v6 = v3;
  v7 = v2;
  dispatch_async(v4, block);
}

void __64__ASDGatherLogsRequest__sendRequestWithOptions_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [(ASDGatherLogsRequest *)*(a1 + 32) _combineAllLogs];
  v3 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__ASDGatherLogsRequest__sendRequestWithOptions_completionBlock___block_invoke_2;
  v6[3] = &unk_1E7CDB890;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

void __71__ASDGatherLogsRequest__sendHarFileRequestWithOptions_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [(ASDGatherLogsRequest *)*(a1 + 32) _createCombinedHarFile];
  v3 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__ASDGatherLogsRequest__sendHarFileRequestWithOptions_completionBlock___block_invoke_2;
  v6[3] = &unk_1E7CDB890;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

@end