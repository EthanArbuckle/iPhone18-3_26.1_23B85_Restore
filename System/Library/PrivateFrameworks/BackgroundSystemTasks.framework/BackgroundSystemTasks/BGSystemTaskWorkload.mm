@interface BGSystemTaskWorkload
+ (BOOL)reportSystemWorkload:(unint64_t)workload ofCategory:(unint64_t)category error:(id *)error;
+ (id)logger;
@end

@implementation BGSystemTaskWorkload

+ (id)logger
{
  if (logger_onceToken != -1)
  {
    +[BGSystemTaskWorkload logger];
  }

  v3 = logger_log;

  return v3;
}

uint64_t __30__BGSystemTaskWorkload_logger__block_invoke()
{
  logger_log = os_log_create("com.apple.BackgroundSystemTasks", "BGSTFramework");

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)reportSystemWorkload:(unint64_t)workload ofCategory:(unint64_t)category error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = +[BGSystemTaskWorkload logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218240;
    workloadCopy = workload;
    v17 = 2048;
    workloadCopy2 = category;
    _os_log_impl(&dword_1B236A000, v8, OS_LOG_TYPE_DEFAULT, "Received system workload %lu for category %lu", &v15, 0x16u);
  }

  mEMORY[0x1E699A4B8] = [MEMORY[0x1E699A4B8] sharedScheduler];
  v10 = [mEMORY[0x1E699A4B8] reportSystemWorkload:workload ofCategory:category error:error];

  if (error && *error)
  {
    v11 = +[BGSystemTaskWorkload logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = *error;
      v15 = 138412802;
      workloadCopy = v14;
      v17 = 2048;
      workloadCopy2 = workload;
      v19 = 2048;
      categoryCopy2 = category;
      _os_log_error_impl(&dword_1B236A000, v11, OS_LOG_TYPE_ERROR, "Error:%@ reporting system workload %lu for category %lu", &v15, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

@end