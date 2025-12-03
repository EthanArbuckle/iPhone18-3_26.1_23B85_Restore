@interface LogDumpUtility
+ (BOOL)shouldCleanupFiles;
+ (id)logFilename:(int)filename dumpID:(id)d logNameType:(int)type prefix:(id)prefix suffix:(id)suffix;
+ (id)newLogDumpListSortedByTimestamp:(id)timestamp;
+ (void)removeLogDumpsInDirectory:(id)directory olderThan:(id)than;
+ (void)removeOldFilesInDefaultLogDumpPath;
@end

@implementation LogDumpUtility

+ (id)logFilename:(int)filename dumpID:(id)d logNameType:(int)type prefix:(id)prefix suffix:(id)suffix
{
  v17[3] = *MEMORY[0x1E69E9840];
  if (filename == 2)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v17[0] = 0xAAAAAAAAAAAAAAAALL;
    getDefaultLogDumpPath = @"/var/mobile/tmp/com.apple.audiomxd/AudioCapture/AVC/";
    if (([defaultManager fileExistsAtPath:@"/var/mobile/tmp/com.apple.audiomxd/AudioCapture/AVC/"] & 1) == 0 && (objc_msgSend(defaultManager, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", @"/var/mobile/tmp/com.apple.audiomxd/AudioCapture/AVC/", 1, 0, v17) & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [LogDumpUtility logFilename:v13 dumpID:v17 logNameType:? prefix:? suffix:?];
      }

      getDefaultLogDumpPath = @"/var/mobile/tmp/com.apple.audiomxd/AudioCapture/AVC/";
    }
  }

  else if (filename)
  {
    getDefaultLogDumpPath = &stru_1F570E008;
  }

  else
  {
    getDefaultLogDumpPath = [MEMORY[0x1E6986628] getDefaultLogDumpPath];
  }

  if (type == 1)
  {
    memset(v17, 170, 20);
    VRLogfile_CreateTimeAndDateString(v17, 20);
    suffix = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%@-%@%@", v17, d, prefix, suffix];
  }

  else
  {
    suffix = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@%@", d, prefix, suffix, v16];
  }

  return [(__CFString *)getDefaultLogDumpPath stringByAppendingString:suffix];
}

+ (id)newLogDumpListSortedByTimestamp:(id)timestamp
{
  v37 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v4 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (v21)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v21 localizedDescription];
        *buf = 136316162;
        v28 = v5;
        v29 = 2080;
        v30 = "+[LogDumpUtility newLogDumpListSortedByTimestamp:]";
        v31 = 1024;
        v32 = 438;
        v33 = 2112;
        timestampCopy = timestamp;
        v35 = 2112;
        v36 = localizedDescription;
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d failed to read directory %@ (%@)", buf, 0x30u);
      }
    }
  }

  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v4 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    v20 = *MEMORY[0x1E696A3D8];
    v19 = *MEMORY[0x1E696A3E8];
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        if (v11 && ([objc_msgSend(*(*(&v23 + 1) + 8 * v10) "lowercaseString")] & 1) == 0)
        {
          v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", timestamp, v11];
          v13 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
          if (!v21)
          {
            v14 = v13;
            if ([v13 objectForKeyedSubscript:v20] == v19)
            {
              v15 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v11, v14, 0}];
              [v18 addObject:v15];
            }
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v4 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v8);
  }

  [v18 sortUsingComparator:&__block_literal_global_107];
  return v18;
}

uint64_t __50__LogDumpUtility_newLogDumpListSortedByTimestamp___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 objectAtIndexedSubscript:1];
  v5 = [a3 objectAtIndexedSubscript:1];
  v6 = *MEMORY[0x1E696A350];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A350]];
  v8 = [v5 objectForKeyedSubscript:v6];

  return [v7 compare:v8];
}

+ (void)removeLogDumpsInDirectory:(id)directory olderThan:(id)than
{
  v80 = *MEMORY[0x1E69E9840];
  if (directory)
  {
    v6 = [objc_opt_class() newLogDumpListSortedByTimestamp:directory];
    if (v6)
    {
      v7 = v6;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v55 = v8;
          v56 = 2080;
          v57 = "+[LogDumpUtility removeLogDumpsInDirectory:olderThan:]";
          v58 = 1024;
          v59 = 474;
          v60 = 2112;
          directoryCopy = directory;
          v62 = 2048;
          v63 = [v7 count];
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d directory=%@, fileList.count=%lu", buf, 0x30u);
        }
      }

      directoryCopy2 = directory;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v10 = [v7 countByEnumeratingWithState:&v76 objects:v75 count:16];
      v11 = MEMORY[0x1E696A3B8];
      if (v10)
      {
        v12 = v10;
        v13 = 0;
        v14 = *v77;
        v15 = *MEMORY[0x1E696A3B8];
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v77 != v14)
            {
              objc_enumerationMutation(v7);
            }

            v13 += [objc_msgSend(objc_msgSend(*(*(&v76 + 1) + 8 * i) objectAtIndexedSubscript:{1), "objectForKeyedSubscript:", v15), "integerValue"}];
          }

          v12 = [v7 countByEnumeratingWithState:&v76 objects:v75 count:16];
        }

        while (v12);
      }

      else
      {
        v13 = 0;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v55 = v17;
          v56 = 2080;
          v57 = "+[LogDumpUtility removeLogDumpsInDirectory:olderThan:]";
          v58 = 1024;
          v59 = 480;
          v60 = 2048;
          directoryCopy = v13;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Total size: %llu", buf, 0x26u);
        }
      }

      v53 = 0;
      v49 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"(.*)(\\d{10})(-.*)$" options:0 error:&v53];
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v52 = [v7 countByEnumeratingWithState:&v71 objects:v70 count:16];
      if (v52)
      {
        integerValue = 0;
        v50 = *MEMORY[0x1E696A350];
        v51 = *v72;
        v48 = *v11;
        thanCopy = than;
        do
        {
          for (j = 0; j != v52; ++j)
          {
            v21 = integerValue;
            if (*v72 != v51)
            {
              objc_enumerationMutation(v7);
            }

            v22 = *(*(&v71 + 1) + 8 * j);
            v23 = [v22 objectAtIndexedSubscript:0];
            v24 = [objc_msgSend(v22 objectAtIndexedSubscript:{1), "objectForKeyedSubscript:", v50}];
            v25 = v24;
            if (!than || [v24 compare:than] == -1)
            {
              v29 = [objc_msgSend(objc_msgSend(v22 objectAtIndexedSubscript:{1), "objectForKeyedSubscript:", v48), "integerValue"}];
              v30 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v23];
              [v49 replaceMatchesInString:v30 options:0 range:0 withTemplate:{objc_msgSend(v23, "length"), @"$2"}];
              if (v30)
              {
                integerValue = [v30 integerValue];
              }

              else
              {
                integerValue = 0;
              }

              if (v13 <= 0xF4240 && integerValue && (!v21 || integerValue != v21))
              {
                goto LABEL_53;
              }

              v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", directoryCopy2, v23];
              if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
              {
                v32 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
                ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
                if (v32)
                {
                  if (ErrorLogLevelForModule >= 7)
                  {
                    v34 = VRTraceErrorLogLevelToCSTR();
                    v35 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136316930;
                      v55 = v34;
                      v56 = 2080;
                      v57 = "+[LogDumpUtility removeLogDumpsInDirectory:olderThan:]";
                      v58 = 1024;
                      v59 = 503;
                      v60 = 2112;
                      directoryCopy = v23;
                      v62 = 2112;
                      v63 = v25;
                      v64 = 2048;
                      v65 = v29;
                      v66 = 1024;
                      v67 = integerValue;
                      v68 = 2048;
                      v69 = v13;
                      v36 = v35;
                      v37 = " [%s] %s:%d removed %@ (%@, %llu bytes, dumpID %u) - %llu bytes remaining";
                      v38 = 74;
                      goto LABEL_44;
                    }
                  }
                }

                else if (ErrorLogLevelForModule >= 3)
                {
                  v41 = VRTraceErrorLogLevelToCSTR();
                  v42 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    localizedDescription = [v53 localizedDescription];
                    *buf = 136316162;
                    v55 = v41;
                    v56 = 2080;
                    v57 = "+[LogDumpUtility removeLogDumpsInDirectory:olderThan:]";
                    v58 = 1024;
                    v59 = 505;
                    v60 = 2112;
                    directoryCopy = v31;
                    v62 = 2112;
                    v63 = localizedDescription;
                    _os_log_error_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_ERROR, " [%s] %s:%d failed to remove %@ (%@)", buf, 0x30u);
                  }
                }
              }

              else if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v39 = VRTraceErrorLogLevelToCSTR();
                v40 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  v55 = v39;
                  v56 = 2080;
                  v57 = "+[LogDumpUtility removeLogDumpsInDirectory:olderThan:]";
                  v58 = 1024;
                  v59 = 501;
                  v60 = 2112;
                  directoryCopy = v31;
                  v36 = v40;
                  v37 = " [%s] %s:%d file no longer exists at %@";
                  v38 = 38;
LABEL_44:
                  _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, v38);
                }
              }

              v13 -= v29;
              than = thanCopy;
              continue;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v26 = VRTraceErrorLogLevelToCSTR();
              v27 = *MEMORY[0x1E6986650];
              v28 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136316162;
                  v55 = v26;
                  v56 = 2080;
                  v57 = "+[LogDumpUtility removeLogDumpsInDirectory:olderThan:]";
                  v58 = 1024;
                  v59 = 514;
                  v60 = 2112;
                  directoryCopy = v23;
                  v62 = 2112;
                  v63 = v25;
                  _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipping filename=%@, date=%@", buf, 0x30u);
                }
              }

              else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136316162;
                v55 = v26;
                v56 = 2080;
                v57 = "+[LogDumpUtility removeLogDumpsInDirectory:olderThan:]";
                v58 = 1024;
                v59 = 514;
                v60 = 2112;
                directoryCopy = v23;
                v62 = 2112;
                v63 = v25;
                _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Skipping filename=%@, date=%@", buf, 0x30u);
              }
            }
          }

          v52 = [v7 countByEnumeratingWithState:&v71 objects:v70 count:16];
        }

        while (v52);
      }

LABEL_53:

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v44 = VRTraceErrorLogLevelToCSTR();
        v45 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v55 = v44;
          v56 = 2080;
          v57 = "+[LogDumpUtility removeLogDumpsInDirectory:olderThan:]";
          v58 = 1024;
          v59 = 519;
          v60 = 2048;
          directoryCopy = v13;
          _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Completed: Total size: %llu", buf, 0x26u);
        }
      }
    }
  }
}

+ (BOOL)shouldCleanupFiles
{
  if (shouldCleanupFiles_initOnce != -1)
  {
    +[LogDumpUtility shouldCleanupFiles];
  }

  v2 = atomic_load(&shouldCleanupFiles__lastCleanupTimeCache);
  v3 = micro();
  if ((v3 - v2) < 15)
  {
    return 0;
  }

  v5 = v2;
  atomic_compare_exchange_strong(&shouldCleanupFiles__lastCleanupTimeCache, &v5, v3);
  return v5 == v2;
}

+ (void)removeOldFilesInDefaultLogDumpPath
{
  global_queue = dispatch_get_global_queue(+[LogDumpUtility fileCleanupDispatchQueuePriority], 0);

  dispatch_async(global_queue, &__block_literal_global_50);
}

uint64_t __52__LogDumpUtility_removeOldFilesInDefaultLogDumpPath__block_invoke()
{
  result = +[LogDumpUtility shouldCleanupFiles];
  if (result)
  {
    v1 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v2 setDay:-1];
    v3 = [objc_msgSend(MEMORY[0x1E695DEE8] "currentCalendar")];

    v4 = [MEMORY[0x1E6986628] getDefaultLogDumpPath];

    return [LogDumpUtility removeLogDumpsInDirectory:v4 olderThan:v3];
  }

  return result;
}

+ (void)logFilename:(uint64_t)a1 dumpID:(id *)a2 logNameType:prefix:suffix:.cold.1(uint64_t a1, id *a2)
{
  [@"/var/mobile/tmp/com.apple.audiomxd/AudioCapture/AVC/" UTF8String];
  [objc_msgSend(*a2 "description")];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x30u);
}

@end