@interface BGSystemTaskCheckpoints
+ (BOOL)reportCustomCheckpoint:(unint64_t)a3 forTask:(id)a4 error:(id *)a5;
+ (BOOL)reportFeatureCheckpoint:(unint64_t)a3 forFeature:(unint64_t)a4 atDate:(id)a5 error:(id *)a6;
+ (BOOL)validateFeatureCheckpoint:(unint64_t)a3;
+ (id)logger;
+ (id)sharedInstance;
- (BGSystemTaskCheckpoints)init;
- (BOOL)reportProgressForTaskWithName:(id)a3 withGlobalTarget:(unint64_t)a4 completed:(unint64_t)a5 atDate:(id)a6 category:(unint64_t)a7 subCategory:(id)a8 error:(id *)a9;
@end

@implementation BGSystemTaskCheckpoints

+ (id)logger
{
  if (logger_onceToken_0 != -1)
  {
    +[BGSystemTaskCheckpoints logger];
  }

  v3 = logger_log_0;

  return v3;
}

uint64_t __33__BGSystemTaskCheckpoints_logger__block_invoke()
{
  logger_log_0 = os_log_create("com.apple.BackgroundSystemTasks", "BGSTFramework");

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)reportFeatureCheckpoint:(unint64_t)a3 forFeature:(unint64_t)a4 atDate:(id)a5 error:(id *)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = +[BGSystemTaskCheckpoints logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v24 = a3;
    v25 = 2048;
    v26 = a4;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_1B236A000, v10, OS_LOG_TYPE_DEFAULT, "Received feature checkpoint %lu for feature %lu at: %@", buf, 0x20u);
  }

  if ([BGSystemTaskCheckpoints validateFeatureCheckpoint:a3])
  {
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E695DF00] now];
    }

    v15 = v11;
    v17 = [MEMORY[0x1E699A4B8] sharedScheduler];
    v22 = 0;
    v16 = [v17 reportFeatureCheckpoint:a3 forFeature:a4 atDate:v15 error:&v22];
    v13 = v22;

    if ((v16 & 1) == 0)
    {
      v18 = +[BGSystemTaskCheckpoints logger];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v24 = v13;
        v25 = 2048;
        v26 = a3;
        v27 = 2048;
        v28 = a4;
        v29 = 2112;
        v30 = v15;
        _os_log_error_impl(&dword_1B236A000, v18, OS_LOG_TYPE_ERROR, "Error: %@ feature checkpoint %lu for feature %lu at %@", buf, 0x2Au);
      }

      if (a6)
      {
        v19 = v13;
        *a6 = v13;
      }
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:100 userInfo:0];
    v13 = v12;
    if (a6)
    {
      v14 = v12;
      *a6 = v13;
    }

    v15 = +[BGSystemTaskCheckpoints logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BGSystemTaskCheckpoints reportFeatureCheckpoint:v13 forFeature:a3 atDate:v15 error:?];
    }

    v16 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (BOOL)reportCustomCheckpoint:(unint64_t)a3 forTask:(id)a4 error:(id *)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = +[BGSystemTaskCheckpoints logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v18 = a3;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_1B236A000, v8, OS_LOG_TYPE_DEFAULT, "Received custom checkpoint %lu for task %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x1E699A4B8] sharedScheduler];
  v16 = 0;
  v10 = [v9 reportCustomCheckpoint:a3 forTask:v7 error:&v16];
  v11 = v16;

  if ((v10 & 1) == 0)
  {
    v12 = +[BGSystemTaskCheckpoints logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v18 = v11;
      v19 = 2048;
      v20 = a3;
      v21 = 2112;
      v22 = v7;
      _os_log_error_impl(&dword_1B236A000, v12, OS_LOG_TYPE_ERROR, "Error: %@ custom checkpoint %lu for task %@", buf, 0x20u);
    }

    if (a5)
    {
      v13 = v11;
      *a5 = v11;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__BGSystemTaskCheckpoints_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __41__BGSystemTaskCheckpoints_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (BGSystemTaskCheckpoints)init
{
  v8.receiver = self;
  v8.super_class = BGSystemTaskCheckpoints;
  v2 = [(BGSystemTaskCheckpoints *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
    v5 = dispatch_queue_create("com.apple.bgst.taskCheckpoints", v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (BOOL)reportProgressForTaskWithName:(id)a3 withGlobalTarget:(unint64_t)a4 completed:(unint64_t)a5 atDate:(id)a6 category:(unint64_t)a7 subCategory:(id)a8 error:(id *)a9
{
  v58 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a6;
  v17 = a8;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 1;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  queue = self->_queue;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __118__BGSystemTaskCheckpoints_reportProgressForTaskWithName_withGlobalTarget_completed_atDate_category_subCategory_error___block_invoke;
  v29 = &unk_1E7B24078;
  v33 = &v38;
  v34 = &v44;
  v35 = a5;
  v36 = a4;
  v37 = a7;
  v19 = v17;
  v30 = v19;
  v31 = self;
  v20 = v15;
  v32 = v20;
  dispatch_sync(queue, &v26);
  if ((v45[3] & 1) == 0)
  {
    v21 = [BGSystemTaskCheckpoints logger:v26];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v25 = v39[5];
      *buf = 138413314;
      v49 = v25;
      v50 = 2048;
      v51 = a5;
      v52 = 2048;
      v53 = a4;
      v54 = 2048;
      v55 = a7;
      v56 = 2112;
      v57 = v19;
      _os_log_error_impl(&dword_1B236A000, v21, OS_LOG_TYPE_ERROR, "Error: %@ Completed %lu [Target:%lu] for workload %lu, subcategory %@", buf, 0x34u);
    }

    if (a9)
    {
      *a9 = v39[5];
    }
  }

  v22 = *(v45 + 24);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  v23 = *MEMORY[0x1E69E9840];
  return v22 & 1;
}

void __118__BGSystemTaskCheckpoints_reportProgressForTaskWithName_withGlobalTarget_completed_atDate_category_subCategory_error___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) < 0x65uLL)
  {
    v5 = +[BGSystemTaskCheckpoints logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 72);
      v7 = *(a1 + 80);
      v8 = *(a1 + 88);
      v9 = *(a1 + 32);
      *buf = 134218754;
      v62 = v6;
      v63 = 2048;
      v64 = v7;
      v65 = 2048;
      v66 = v8;
      v67 = 2112;
      v68 = v9;
      _os_log_impl(&dword_1B236A000, v5, OS_LOG_TYPE_DEFAULT, "Completed %lu [Target:%lu] for workload %lu, subcategory %@", buf, 0x2Au);
    }

    v10 = [*(a1 + 40) taskToProgressMap];

    if (!v10)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
      [*(a1 + 40) setTaskToProgressMap:v11];
    }

    v12 = MEMORY[0x1E696AEC0];
    v13 = *(a1 + 48);
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 88)];
    v15 = [v12 stringWithFormat:@"%@-%@-%@", v13, v14, *(a1 + 32)];

    v16 = [*(a1 + 40) taskToProgressMap];
    v17 = [v16 objectForKeyedSubscript:v15];

    if (!v17)
    {
      v18 = [MEMORY[0x1E695DF90] dictionary];
      v19 = [*(a1 + 40) taskToProgressMap];
      [v19 setObject:v18 forKeyedSubscript:v15];
    }

    v20 = [*(a1 + 40) taskToProgressMap];
    v21 = [v20 objectForKeyedSubscript:v15];
    v22 = [v21 objectForKeyedSubscript:@"progress"];

    if (v22)
    {
      v23 = [v22 unsignedIntegerValue];
    }

    else
    {
      v23 = 0;
    }

    v24 = [*(a1 + 40) taskToProgressMap];
    v25 = [v24 objectForKeyedSubscript:v15];
    v26 = [v25 objectForKeyedSubscript:@"target"];

    if (v26)
    {
      v27 = [v26 unsignedIntegerValue];
    }

    else
    {
      v27 = 0;
    }

    v28 = [*(a1 + 40) taskToProgressMap];
    v29 = [v28 objectForKeyedSubscript:v15];
    v30 = [v29 objectForKeyedSubscript:@"date"];

    if (v30)
    {
      v31 = [MEMORY[0x1E695DF00] now];
      [v31 timeIntervalSinceDate:v30];
      v33 = v32 < 86400.0;
    }

    else
    {
      v33 = 1;
    }

    if (v27 == *(a1 + 80) && (v34 = *(a1 + 72), v35 = v34 >= v23, v36 = v34 - v23, v35) && v36 < 5 && v33)
    {
      v37 = +[BGSystemTaskCheckpoints logger];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v56 = *(a1 + 72);
        v57 = *(a1 + 80);
        *buf = 134218752;
        v62 = v56;
        v63 = 2048;
        v64 = v23;
        v65 = 2048;
        v66 = v27;
        v67 = 2048;
        v68 = v57;
        _os_log_debug_impl(&dword_1B236A000, v37, OS_LOG_TYPE_DEBUG, "No significant change since last progress report. Caching the result. Completed %lu [Past :%lu] Target %lu [Past :%lu]", buf, 0x2Au);
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    else
    {
      v38 = [MEMORY[0x1E699A4B8] sharedScheduler];
      v39 = *(a1 + 48);
      v41 = *(a1 + 72);
      v40 = *(a1 + 80);
      v42 = *(a1 + 88);
      v43 = *(a1 + 32);
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __118__BGSystemTaskCheckpoints_reportProgressForTaskWithName_withGlobalTarget_completed_atDate_category_subCategory_error___block_invoke_23;
      v58[3] = &unk_1E7B24050;
      v60 = *(a1 + 64);
      v59 = v39;
      [v38 reportTaskWorkloadProgress:v59 target:v40 completed:v41 category:v42 subCategory:v43 completionHandler:v58];

      if (*(*(*(a1 + 64) + 8) + 24))
      {
        v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
        v45 = [*(a1 + 40) taskToProgressMap];
        v46 = [v45 objectForKeyedSubscript:v15];
        [v46 setObject:v44 forKeyedSubscript:@"progress"];

        v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
        v48 = [*(a1 + 40) taskToProgressMap];
        v49 = [v48 objectForKeyedSubscript:v15];
        [v49 setObject:v47 forKeyedSubscript:@"target"];

        v50 = [MEMORY[0x1E695DF00] now];
        v51 = [*(a1 + 40) taskToProgressMap];
        v52 = [v51 objectForKeyedSubscript:v15];
        [v52 setObject:v50 forKeyedSubscript:@"date"];
      }

      else
      {
        v53 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:3 userInfo:0];
        v54 = *(*(a1 + 56) + 8);
        v50 = *(v54 + 40);
        *(v54 + 40) = v53;
      }
    }
  }

  else
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:4 userInfo:0];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v55 = *MEMORY[0x1E69E9840];
}

void __118__BGSystemTaskCheckpoints_reportProgressForTaskWithName_withGlobalTarget_completed_atDate_category_subCategory_error___block_invoke_23(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 40) + 8);
  if (a2)
  {
    *(v3 + 24) = 1;
    v4 = +[BGSystemTaskCheckpoints logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1B236A000, v4, OS_LOG_TYPE_DEFAULT, "Successfully reported task workload progress for %@", &v7, 0xCu);
    }
  }

  else
  {
    *(v3 + 24) = 0;
    v4 = +[BGSystemTaskCheckpoints logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __118__BGSystemTaskCheckpoints_reportProgressForTaskWithName_withGlobalTarget_completed_atDate_category_subCategory_error___block_invoke_23_cold_1(a1, v4);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (BOOL)validateFeatureCheckpoint:(unint64_t)a3
{
  result = 1;
  if (a3 - 8 > 0x3E || ((1 << (a3 - 8)) & 0x4010040100401007) == 0)
  {
    return a3 - 1 < 4;
  }

  return result;
}

+ (void)reportFeatureCheckpoint:(os_log_t)log forFeature:atDate:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_1B236A000, log, OS_LOG_TYPE_ERROR, "%@ %lu is not a valid feature checkpoint", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __118__BGSystemTaskCheckpoints_reportProgressForTaskWithName_withGlobalTarget_completed_atDate_category_subCategory_error___block_invoke_23_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1B236A000, a2, OS_LOG_TYPE_ERROR, "reportTaskWorkloadProgress: failed for %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end