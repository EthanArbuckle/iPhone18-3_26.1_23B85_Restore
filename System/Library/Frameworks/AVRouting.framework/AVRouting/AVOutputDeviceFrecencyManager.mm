@interface AVOutputDeviceFrecencyManager
+ (AVOutputDeviceFrecentsReader)_frecentsReaderAfterMigrationIfNecessary;
+ (AVOutputDeviceFrecentsWriter)_frecentsWriter;
+ (BOOL)_migrateFrecentsFromCFPreferencesToFrecentsFilePath:(id)a3;
+ (double)frecencyScoreForDeviceID:(id)a3;
+ (id)_applicationSupportPath;
+ (id)_frecentsContainerPath;
+ (id)_frecentsFilePath;
+ (id)_frecentsReaderAfterMigrationIfNecessary;
+ (id)_frecentsWriter;
+ (void)updateFrecencyListForDeviceID:(id)a3;
@end

@implementation AVOutputDeviceFrecencyManager

void __73__AVOutputDeviceFrecencyManager__frecentsReaderAfterMigrationIfNecessary__block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v1 = *MEMORY[0x1E69E9840];
}

+ (id)_frecentsReaderAfterMigrationIfNecessary
{
  if ([objc_msgSend(+[AVExecutionEnvironment sharedExecutionEnvironment](AVExecutionEnvironment "sharedExecutionEnvironment")])
  {
    +[(AVOutputDeviceFrecencyManager *)a1];
    return v4;
  }

  else
  {
    if (_frecentsReaderAfterMigrationIfNecessary_loggingOnce != -1)
    {
      +[AVOutputDeviceFrecencyManager _frecentsReaderAfterMigrationIfNecessary];
    }

    return +[AVOutputDeviceLegacyFrecentsReader defaultFrecentsReader];
  }
}

+ (double)frecencyScoreForDeviceID:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 _frecentsReaderAfterMigrationIfNecessary];
  if (!a3 || !v4 || (v5 = [v4 frecencyInfoForDeviceWithID:a3]) == 0)
  {
LABEL_10:
    v10 = *MEMORY[0x1E69E9840];
    return 0.0;
  }

  v6 = [v5 objectForKeyedSubscript:@"FrecencyScore"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_10;
  }

  v7 = *MEMORY[0x1E69E9840];

  [v6 doubleValue];
  return result;
}

uint64_t __50__AVOutputDeviceFrecencyManager__frecentsFilePath__block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)_frecentsWriter
{
  if ([objc_msgSend(+[AVExecutionEnvironment sharedExecutionEnvironment](AVExecutionEnvironment "sharedExecutionEnvironment")])
  {
    +[(AVOutputDeviceFrecencyManager *)a1];
    return v4;
  }

  else
  {

    return +[AVOutputDeviceLegacyFrecentsWriter defaultFrecentsWriter];
  }
}

+ (void)updateFrecencyListForDeviceID:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [a1 _frecentsReaderAfterMigrationIfNecessary];
  v39 = [a1 _frecentsWriter];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(v6, "deviceIDs")}];
    if (([v7 containsObject:a3] & 1) == 0)
    {
      [v7 addObject:a3];
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v38 = *v44;
      v11 = 0.0;
      v36 = a3;
      obj = v7;
      while (1)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v43 + 1) + 8 * i);
          v14 = [v6 frecencyInfoForDeviceWithID:v13];
          v15 = 1.0;
          if (!v14)
          {
LABEL_26:
            v18 = 0;
            goto LABEL_28;
          }

          v16 = v14;
          v17 = [v14 objectForKey:@"FrecencyScore"];
          v18 = [v16 objectForKey:@"LastUsedTimestamp"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v17 doubleValue];
              v20 = v19;
              [v5 timeIntervalSinceDate:v18];
              v15 = v20 * exp2(v21 / 86400.0 * -0.5) + 1.0;
              goto LABEL_28;
            }

            if (!dword_1ED6F6B68)
            {
              goto LABEL_26;
            }

            OUTLINED_FUNCTION_4_1();
            v25 = OUTLINED_FUNCTION_2_1();
            if (os_log_type_enabled(v25, type))
            {
              v26 = v42;
            }

            else
            {
              v26 = v42 & 0xFFFFFFFE;
            }

            if (v26)
            {
              v47 = 136315651;
              OUTLINED_FUNCTION_3_1();
              v48 = v17;
              v49 = v27;
              v50 = v13;
              OUTLINED_FUNCTION_1_3();
              goto LABEL_25;
            }
          }

          else
          {
            if (!dword_1ED6F6B68)
            {
              goto LABEL_26;
            }

            OUTLINED_FUNCTION_4_1();
            v22 = OUTLINED_FUNCTION_2_1();
            if (os_log_type_enabled(v22, type))
            {
              v23 = v42;
            }

            else
            {
              v23 = v42 & 0xFFFFFFFE;
            }

            if (v23)
            {
              v47 = 136315651;
              OUTLINED_FUNCTION_3_1();
              v48 = v18;
              v49 = v24;
              v50 = v13;
              OUTLINED_FUNCTION_1_3();
LABEL_25:
              _os_log_send_and_compose_impl();
            }
          }

          OUTLINED_FUNCTION_1_1();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v18 = 0;
          a3 = v36;
LABEL_28:
          v28 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
          if (v11 == 0.0)
          {
            v10 = v13;
            v11 = v15;
          }

          v29 = [v13 isEqualToString:a3];
          if (v11 > v15)
          {
            v30 = v13;
          }

          else
          {
            v30 = v10;
          }

          if (v11 > v15)
          {
            v31 = v15;
          }

          else
          {
            v31 = v11;
          }

          if (v29)
          {
            v32 = v5;
          }

          else
          {
            v32 = v18;
          }

          if ((v29 & 1) == 0)
          {
            v10 = v30;
            v11 = v31;
          }

          if (v32)
          {
            [v39 setFrecencyInfo:objc_msgSend(MEMORY[0x1E695DF20] forDeviceID:{"dictionaryWithObjectsAndKeys:", v28, v31, @"FrecencyScore", v32, @"LastUsedTimestamp", 0), v13}];
          }

          else
          {
            if (dword_1ED6F6B68)
            {
              OUTLINED_FUNCTION_4_1();
              v33 = OUTLINED_FUNCTION_2_1();
              if (os_log_type_enabled(v33, type))
              {
                v34 = v42;
              }

              else
              {
                v34 = v42 & 0xFFFFFFFE;
              }

              if (v34)
              {
                v47 = 136315395;
                OUTLINED_FUNCTION_3_1();
                v48 = v13;
                OUTLINED_FUNCTION_1_3();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_1_1();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              a3 = v36;
            }

            [v39 removeFrecencyInfoForDeviceID:{v13, v31}];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (!v9)
        {
          goto LABEL_55;
        }
      }
    }

    v10 = 0;
LABEL_55:
    if ([v39 numberOfKeysToBeSet] >= 51 && (objc_msgSend(v10, "isEqualToString:", a3) & 1) == 0 && v10)
    {
      [v39 removeFrecencyInfoForDeviceID:v10];
    }

    v40 = 0;
    [v39 persistToDiskReturningError:&v40];
  }

  v35 = *MEMORY[0x1E69E9840];
}

+ (id)_applicationSupportPath
{
  v6 = *MEMORY[0x1E69E9840];
  started = sysdir_start_search_path_enumeration_private();
  if (MEMORY[0x1AC59FE00](started, v5))
  {
    result = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:30];
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)_frecentsContainerPath
{
  result = [a1 _applicationSupportPath];
  if (result)
  {
    v3 = [objc_msgSend(result stringByAppendingPathComponent:{@"com.apple.avfoundation", "stringByAppendingPathComponent:", @"Frecents"}];
    v4 = 0;
    if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (id)_frecentsFilePath
{
  v2 = [a1 _frecentsContainerPath];
  if (v2)
  {
    v2 = [v2 stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.plist", @"com.apple.avfoundation.frecents"}];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__AVOutputDeviceFrecencyManager__frecentsFilePath__block_invoke;
    block[3] = &unk_1E794ED28;
    block[4] = v2;
    if (_frecentsFilePath_pathLoggingOnce != -1)
    {
      dispatch_once(&_frecentsFilePath_pathLoggingOnce, block);
    }
  }

  return v2;
}

+ (BOOL)_migrateFrecentsFromCFPreferencesToFrecentsFilePath:(id)a3
{
  v32[16] = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    OUTLINED_FUNCTION_4_1();
    v4 = OUTLINED_FUNCTION_2_1();
    if (os_log_type_enabled(v4, type))
    {
      v5 = v26;
    }

    else
    {
      v5 = v26 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v28 = 136315394;
      v29 = "+[AVOutputDeviceFrecencyManager _migrateFrecentsFromCFPreferencesToFrecentsFilePath:]";
      v30 = 2114;
      v31 = [a3 stringByAbbreviatingWithTildeInPath];
      LODWORD(v19) = 22;
      v18 = &v28;
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1_1();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = [AVOutputDeviceLegacyFrecentsReader defaultFrecentsReader:v18];
  v7 = +[AVOutputDeviceLegacyFrecentsWriter defaultFrecentsWriter];
  v8 = [[AVOutputDeviceFrecentsWriter alloc] initWithFrecentsFilePath:a3];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [v6 deviceIDs];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        -[AVOutputDeviceFrecentsWriter setFrecencyInfo:forDeviceID:](v8, "setFrecencyInfo:forDeviceID:", [v6 frecencyInfoForDeviceWithID:v14], v14);
        [v7 removeFrecencyInfoForDeviceID:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v11);
  }

  v32[0] = 0;
  if ([(AVOutputDeviceFrecentsWriter *)v8 persistToDiskReturningError:v32])
  {
    v20 = 0;
    v15 = [v7 persistToDiskReturningError:&v20];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (AVOutputDeviceFrecentsReader)_frecentsReaderAfterMigrationIfNecessary
{
  v4 = [a1 _frecentsFilePath];
  if (v4)
  {
    v5 = v4;
    v9 = 0;
    v4 = [[AVOutputDeviceFrecentsReader alloc] initWithFrecentsFilePath:v4 error:&v9];
    if (!v4)
    {
      v6 = v9;
      if (v9 && (v7 = [v9 domain], (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E696A250]) & 1) != 0) && objc_msgSend(v6, "code") == 260 && (objc_msgSend(a1, "_migrateFrecentsFromCFPreferencesToFrecentsFilePath:", v5) & 1) != 0)
      {
        v4 = [[AVOutputDeviceFrecentsReader alloc] initWithFrecentsFilePath:v5 error:&v9];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  result = v4;
  *a2 = result;
  return result;
}

+ (AVOutputDeviceFrecentsWriter)_frecentsWriter
{
  v3 = [a1 _frecentsFilePath];
  if (v3)
  {
    v3 = [[AVOutputDeviceFrecentsWriter alloc] initWithFrecentsFilePath:v3];
  }

  result = v3;
  *a2 = result;
  return result;
}

@end