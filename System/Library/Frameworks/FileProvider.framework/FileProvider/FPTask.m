@interface FPTask
+ (BOOL)exec:(id)a3 error:(id *)a4;
+ (BOOL)exec:(id)a3 stdoutString:(id *)a4 stderrString:(id *)a5 error:(id *)a6;
+ (id)sanitizeStringForFilename:(id)a3;
+ (id)simulatorRoot;
+ (id)taskWithArguments:(id)a3;
+ (id)taskWithCommand:(id)a3;
+ (id)taskWithCommandWithArguments:(id)a3;
+ (id)taskWithRedirectedOutputAndCommand:(id)a3;
- (FPTask)init;
- (const)newPreparedArgvArray;
- (int)_prepareRedirections:(void *)a3;
- (int)exec;
- (int)execAsync;
- (void)exec;
- (void)execAsync;
- (void)resetRedirect;
- (void)setCommand:(id)a3;
- (void)setCommandWithArguments:(id)a3;
@end

@implementation FPTask

+ (id)simulatorRoot
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 environment];

  v4 = [v3 objectForKeyedSubscript:@"SIMULATOR_ROOT"];

  return v4;
}

- (FPTask)init
{
  v7.receiver = self;
  v7.super_class = FPTask;
  v2 = [(FPTask *)&v7 init];
  v3 = v2;
  if (v2)
  {
    standardOutput = v2->_standardOutput;
    v2->_standardOutput = 0;

    standardError = v3->_standardError;
    v3->_standardError = 0;
  }

  return v3;
}

+ (id)taskWithRedirectedOutputAndCommand:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v12];

  v7 = [a1 taskWithCommandWithArguments:v6];

  v8 = [MEMORY[0x1E696AC00] fileHandleWithStandardError];
  [v7 setStandardError:v8];

  v9 = [MEMORY[0x1E696AC00] fileHandleWithStandardOutput];
  [v7 setStandardOutput:v9];

  return v7;
}

+ (id)taskWithCommand:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v10];

  v7 = [a1 taskWithCommandWithArguments:v6];

  return v7;
}

+ (id)taskWithCommandWithArguments:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(FPTask);
  [(FPTask *)v4 setCommandWithArguments:v3];

  return v4;
}

+ (id)taskWithArguments:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setArgv:v4];

  return v5;
}

+ (id)sanitizeStringForFilename:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    v5 = [v3 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

    v6 = [v5 stringByReplacingOccurrencesOfString:@" withString:@"'""];
    v7 = ;

    v8 = [v7 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

    if (![(__CFString *)v8 length])
    {

      v8 = @"empty-string";
    }
  }

  else
  {
    v8 = @"nil";
  }

  return v8;
}

- (void)setCommand:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(FPTask *)self setCommandWithArguments:v6];
}

- (void)setCommandWithArguments:(id)a3
{
  v19 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  if (![v19 length])
  {
    goto LABEL_22;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v10 = 1;
  do
  {
    v11 = [v19 characterAtIndex:v6];
    if (v11 != 39 || (v8 & 1) != 0)
    {
      if ((v11 != 34) | v5 & 1)
      {
        v13 = v11 != 32;
        v12 = v19;
        if ((v13 | v5 | v8))
        {
          goto LABEL_18;
        }
      }

      else
      {
        v12 = v19;
        if ((v8 & 1) == 0)
        {
          v5 = 0;
          v8 = 1;
          goto LABEL_17;
        }
      }
    }

    else
    {
      v12 = v19;
      if ((v5 & 1) == 0)
      {
        v8 = 0;
        v5 = 1;
LABEL_17:
        v9 = v6;
LABEL_18:
        v17 = v10;
        goto LABEL_19;
      }
    }

    if (v10 != 1)
    {
      v14 = [v12 substringWithRange:{v7, v10 - 1}];
      v15 = v14;
      if (v9 != -1)
      {
        v16 = [v14 stringByReplacingCharactersInRange:v9 - v7 withString:{1, &stru_1F1F94B20}];

        v15 = v16;
      }

      [v4 addObject:v15];

      v12 = v19;
    }

    v5 = 0;
    v8 = 0;
    v17 = 0;
    v7 += v10;
    v9 = -1;
LABEL_19:
    v10 = v17 + 1;
    ++v6;
  }

  while (v6 < [v12 length]);
  if (v17)
  {
    v18 = [v19 substringWithRange:{v7, v17}];
    [v4 addObject:v18];
  }

LABEL_22:
  [(FPTask *)self setArgv:v4];
}

- (int)_prepareRedirections:(void *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [(FPTask *)self standardOutput];

  if (v5)
  {
    v6 = [(FPTask *)self standardOutput];
    LODWORD(v7) = posix_spawn_file_actions_adddup2(a3, [v6 fileDescriptor], 1);

    if (v7)
    {
      v8 = fp_current_or_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }
  }

  v7 = [(FPTask *)self standardError];

  if (v7)
  {
    v9 = [(FPTask *)self standardError];
    LODWORD(v7) = posix_spawn_file_actions_adddup2(a3, [v9 fileDescriptor], 2);

    if (v7)
    {
      v8 = fp_current_or_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:
        v12 = 136315138;
        v13 = strerror(v7);
        _os_log_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to perform spawn action (%s).", &v12, 0xCu);
      }

LABEL_9:
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (const)newPreparedArgvArray
{
  v3 = [(FPTask *)self argv];
  v4 = malloc_type_malloc(8 * [v3 count] + 8, 0x50040EE9192B6uLL);

  v5 = [(FPTask *)self argv];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [(FPTask *)self argv];
      v9 = [v8 objectAtIndexedSubscript:v7];

      if ([v9 hasPrefix:@"~"])
      {
        v10 = [v9 stringByExpandingTildeInPath];
        v4[v7] = [v10 fileSystemRepresentation];
      }

      else
      {
        v4[v7] = [v9 UTF8String];
      }

      ++v7;
      v11 = [(FPTask *)self argv];
      v12 = [v11 count];
    }

    while (v7 < v12);
  }

  v13 = [(FPTask *)self argv];
  v4[[v13 count]] = 0;

  return v4;
}

- (int)execAsync
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(FPTask *)self argv];
  if (![v3 count])
  {
    [FPTask execAsync];
  }

  v26 = 0;

  v4 = [(FPTask *)self newPreparedArgvArray];
  v25 = 0;
  v5 = posix_spawn_file_actions_init(&v25);
  if (v5)
  {
    v6 = v5;
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = strerror(v6);
      *buf = 136315138;
      v28 = v8;
      v9 = "[WARNING] Unable to initialize the file actions properly (%s).";
LABEL_8:
      _os_log_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v10 = [(FPTask *)self _prepareRedirections:&v25];
  v11 = fp_current_or_default_log();
  v7 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = strerror(v10);
      *buf = 136315138;
      v28 = v12;
      v9 = "[WARNING] Unable to setup redirections properly (%s).";
      goto LABEL_8;
    }

LABEL_9:

    v13 = 0;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(FPTask *)self execAsync];
  }

  v20 = posix_spawnp(&v26, *v4, &v25, 0, v4, *MEMORY[0x1E69E97E8]);
  if (v20)
  {
    v21 = v20;
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(FPTask *)self argv];
      v23 = [v22 componentsJoinedByString:{@", "}];
      v24 = strerror(v21);
      *buf = 138412546;
      v28 = v23;
      v29 = 2080;
      v30 = v24;
      _os_log_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to spawn a new process (argv: [%@], error: %s).", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v13 = 1;
LABEL_10:
  free(v4);
  v14 = posix_spawn_file_actions_destroy(&v25);
  if (v14)
  {
    v15 = v14;
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = strerror(v15);
      *buf = 136315138;
      v28 = v17;
      _os_log_impl(&dword_1AAAE1000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to destroy the file actions properly (%s).", buf, 0xCu);
    }
  }

  if (v13)
  {
    result = v26;
  }

  else
  {
    result = -1;
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)exec
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(FPTask *)self argv];
  if (![v3 count])
  {
    [FPTask exec];
  }

  v4 = [(FPTask *)self newPreparedArgvArray];
  v34 = 0;
  v5 = posix_spawn_file_actions_init(&v34);
  if (v5)
  {
    v6 = v5;
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = strerror(v6);
      *buf = 136315138;
      v36 = v8;
      _os_log_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to initialize the file actions properly (%s).", buf, 0xCu);
    }
  }

  v9 = [(FPTask *)self _prepareRedirections:&v34];
  if (v9)
  {
    v10 = v9;
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = strerror(v10);
      *buf = 136315138;
      v36 = v12;
      _os_log_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to setup redirections properly (%s).", buf, 0xCu);
    }
  }

  else
  {
    v32 = 0;
    v13 = signal(20, 0);
    v33 = 2;
    pthread_sigmask(1, &v33, 0);
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(FPTask *)self execAsync];
    }

    v15 = posix_spawnp(&v32, *v4, &v34, 0, v4, *MEMORY[0x1E69E97E8]);
    if (v15)
    {
      v10 = v15;
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(FPTask *)self argv];
        v18 = [v17 componentsJoinedByString:{@", "}];
        v19 = strerror(v10);
        *buf = 138412546;
        v36 = v18;
        v37 = 2080;
        v38 = v19;
        _os_log_impl(&dword_1AAAE1000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to spawn a new process (argv: [%@], error: %s).", buf, 0x16u);
      }

      self->_waitStatus = 0;
    }

    else
    {
      v20 = dispatch_get_global_queue(0, 0);
      v21 = dispatch_source_create(MEMORY[0x1E69E9700], 2uLL, 0, v20);

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __14__FPTask_exec__block_invoke;
      v30[3] = &unk_1E793DE38;
      v31 = v32;
      v30[4] = self;
      dispatch_source_set_event_handler(v21, v30);
      dispatch_resume(v21);
      while (waitpid(v32, &self->_waitStatus, 0) < 0)
      {
        if (*__error() != 4)
        {
          v22 = fp_current_or_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [FPTask exec];
          }

          break;
        }
      }

      waitStatus = self->_waitStatus;
      if ((waitStatus & 0x7F) != 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = BYTE1(waitStatus);
      }

      dispatch_source_cancel(v21);
    }

    pthread_sigmask(2, &v33, 0);
    if (v13 != -1)
    {
      signal(20, v13);
    }
  }

  free(v4);
  v24 = posix_spawn_file_actions_destroy(&v34);
  if (v24)
  {
    v25 = v24;
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = strerror(v25);
      *buf = 136315138;
      v36 = v27;
      _os_log_impl(&dword_1AAAE1000, v26, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to destroy the file actions properly (%s).", buf, 0xCu);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v10;
}

void __14__FPTask_exec__block_invoke(uint64_t a1)
{
  fwrite("\b\b", 2uLL, 1uLL, *MEMORY[0x1E69E9848]);
  kill(*(a1 + 40), 9);
  v2 = [*(a1 + 32) standardError];

  if (v2)
  {
    v3 = [*(a1 + 32) standardError];
    dprintf([v3 fileDescriptor], "\n\n === Aborted by user");
  }
}

+ (BOOL)exec:(id)a3 stdoutString:(id *)a4 stderrString:(id *)a5 error:(id *)a6
{
  v65[1] = *MEMORY[0x1E69E9840];
  v38 = a3;
  v8 = [MEMORY[0x1E696AE00] pipe];
  v9 = [MEMORY[0x1E696AE00] pipe];
  v10 = [FPTask taskWithCommandWithArguments:v38];
  v11 = [v8 fileHandleForWriting];
  [v10 setStandardOutput:v11];

  v12 = [v9 fileHandleForWriting];
  [v10 setStandardError:v12];

  v13 = [v10 execAsync];
  v14 = [v8 fileHandleForWriting];
  [v14 closeFile];

  v15 = [v9 fileHandleForWriting];
  [v15 closeFile];

  if ((v13 & 0x80000000) == 0)
  {
    v16 = dispatch_queue_create("queue for reading the task output and error streams concurrently", MEMORY[0x1E69E96A8]);
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__24;
    v56 = __Block_byref_object_dispose__24;
    v57 = 0;
    if (a4)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__FPTask_exec_stdoutString_stderrString_error___block_invoke;
      block[3] = &unk_1E793AA20;
      v51 = &v52;
      v50 = v8;
      dispatch_async(v16, block);
    }

    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__24;
    v47 = __Block_byref_object_dispose__24;
    v48 = 0;
    if (a5)
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __47__FPTask_exec_stdoutString_stderrString_error___block_invoke_53;
      v40[3] = &unk_1E793AA20;
      v42 = &v43;
      v41 = v9;
      dispatch_async(v16, v40);
    }

    dispatch_barrier_sync(v16, &__block_literal_global_47);
    if (a4)
    {
      v17 = objc_alloc(MEMORY[0x1E696AEC0]);
      *a4 = [v17 initWithData:v53[5] encoding:4];
    }

    if (a5)
    {
      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      *a5 = [v18 initWithData:v44[5] encoding:4];
    }

    v39 = 0;
    while (waitpid(v13, &v39, 0) < 0)
    {
      if (*__error() != 4)
      {
        v19 = fp_current_or_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *__error();
          v21 = __error();
          v22 = strerror(*v21);
          [FPTask exec:v22 stdoutString:buf stderrString:v20 error:v19];
        }

        if (a6)
        {
          [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
          *a6 = v23 = 0;
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    v25 = v39 & 0x7F;
    if (v25 == 127)
    {
      v25 = (v39 >> 8);
    }

    else if ((v39 & 0x7F) == 0)
    {
      v26 = BYTE1(v39);
      if (a6 && BYTE1(v39))
      {
        v60 = *MEMORY[0x1E696A578];
        v35 = BYTE1(v39);
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Task finished with exit code %d", BYTE1(v39)];
        v61 = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v36 = [v28 mutableCopy];

        if (a4)
        {
          [v36 setObject:*a4 forKeyedSubscript:@"stdout"];
        }

        if (a5)
        {
          [v36 setObject:*a5 forKeyedSubscript:@"stderr"];
        }

        *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FPTaskErrorDomain" code:2 userInfo:v36];

        v26 = v35;
      }

      v23 = v26 == 0;
LABEL_36:
      _Block_object_dispose(&v43, 8);

      _Block_object_dispose(&v52, 8);
      goto LABEL_37;
    }

    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v63 = v25;
      _os_log_impl(&dword_1AAAE1000, v29, OS_LOG_TYPE_INFO, "[INFO] command terminated due to signal %d", buf, 8u);
    }

    if (a6)
    {
      v30 = MEMORY[0x1E696ABC0];
      v58 = *MEMORY[0x1E696A578];
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Task terminated due to signal %d", v25];
      v59 = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      *a6 = [v30 errorWithDomain:@"FPTaskErrorDomain" code:3 userInfo:v32];
    }

LABEL_35:
    v23 = 0;
    goto LABEL_36;
  }

  if (a6)
  {
    v24 = MEMORY[0x1E696ABC0];
    v64 = *MEMORY[0x1E696A578];
    v65[0] = @"Failed to spawn task";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
    [v24 errorWithDomain:@"FPTaskErrorDomain" code:-1 userInfo:v16];
    *a6 = v23 = 0;
LABEL_37:

    goto LABEL_38;
  }

  v23 = 0;
LABEL_38:

  v33 = *MEMORY[0x1E69E9840];
  return v23;
}

void __47__FPTask_exec_stdoutString_stderrString_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fileHandleForReading];
  v8 = 0;
  v3 = [v2 readDataToEndOfFileAndReturnError:&v8];
  v4 = v8;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (v4)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__FPTask_exec_stdoutString_stderrString_error___block_invoke_cold_1(v4);
    }
  }
}

void __47__FPTask_exec_stdoutString_stderrString_error___block_invoke_53(uint64_t a1)
{
  v2 = [*(a1 + 32) fileHandleForReading];
  v8 = 0;
  v3 = [v2 readDataToEndOfFileAndReturnError:&v8];
  v4 = v8;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (v4)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__FPTask_exec_stdoutString_stderrString_error___block_invoke_53_cold_1(v4);
    }
  }
}

+ (BOOL)exec:(id)a3 error:(id *)a4
{
  v6 = 0;
  v7 = 0;
  v4 = [FPTask exec:a3 stdoutString:&v7 stderrString:&v6 error:a4];

  return v4;
}

- (void)resetRedirect
{
  [(FPTask *)self setStandardOutput:0];

  [(FPTask *)self setStandardError:0];
}

- (void)execAsync
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 argv];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9(&dword_1AAAE1000, v2, v3, "[DEBUG] Spawning FPTask with command '%@'", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)exec
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)exec:(uint64_t)a1 stdoutString:(uint8_t *)buf stderrString:(int)a3 error:(os_log_t)log .cold.1(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a3;
  *(buf + 4) = 2080;
  *(buf + 10) = a1;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] waitpid() failed with errno %d, %s", buf, 0x12u);
}

void __47__FPTask_exec_stdoutString_stderrString_error___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __47__FPTask_exec_stdoutString_stderrString_error___block_invoke_53_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end