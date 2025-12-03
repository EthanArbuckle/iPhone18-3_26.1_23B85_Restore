@interface ACHWorkoutIterator
- (ACHWorkoutIterator)initWithHealthStore:(id)store;
- (ACHWorkoutIterator)initWithHealthStore:(id)store batchSize:(unint64_t)size;
- (void)_runQueryForDateInterval:(id)interval lastCursor:(id)cursor completion:(id)completion;
- (void)enumerateWorkoutsForDateInterval:(id)interval handler:(id)handler errorHandler:(id)errorHandler;
@end

@implementation ACHWorkoutIterator

- (ACHWorkoutIterator)initWithHealthStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = ACHWorkoutIterator;
  v6 = [(ACHWorkoutIterator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v7->_batchSize = 128;
  }

  return v7;
}

- (ACHWorkoutIterator)initWithHealthStore:(id)store batchSize:(unint64_t)size
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = ACHWorkoutIterator;
  v8 = [(ACHWorkoutIterator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_healthStore, store);
    v9->_batchSize = size;
  }

  return v9;
}

- (void)enumerateWorkoutsForDateInterval:(id)interval handler:(id)handler errorHandler:(id)errorHandler
{
  *(&v62[1] + 4) = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__14;
  v56 = __Block_byref_object_dispose__14;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__14;
  v50 = __Block_byref_object_dispose__14;
  v51 = 0;
  errorHandlerCopy = errorHandler;
  v27 = *MEMORY[0x277CCA450];
  do
  {
    v8 = dispatch_semaphore_create(0);
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__14;
    v44 = __Block_byref_object_dispose__14;
    v45 = MEMORY[0x277CBEBF8];
    v9 = v47[5];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __76__ACHWorkoutIterator_enumerateWorkoutsForDateInterval_handler_errorHandler___block_invoke;
    v35[3] = &unk_278491B20;
    v37 = &v40;
    v38 = &v52;
    v39 = &v46;
    v10 = v8;
    v36 = v10;
    [(ACHWorkoutIterator *)self _runQueryForDateInterval:intervalCopy lastCursor:v9 completion:v35];
    v11 = dispatch_time(0, 60000000000);
    v12 = dispatch_semaphore_wait(v10, v11);
    v13 = v53[5] | v12;
    v14 = v13 == 0;
    if (v13)
    {
      if (v12)
      {
        v19 = ACHLogWorkouts();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [ACHWorkoutIterator enumerateWorkoutsForDateInterval:buf handler:v62 errorHandler:v19];
        }

        v20 = MEMORY[0x277CCA9B8];
        v59 = v27;
        v60 = @"Semaphore wait timeout in workout iterator";
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v22 = [v20 errorWithDomain:@"com.apple.ActivityAchievements.WorkoutIterator" code:10 userInfo:v21];
        v23 = v53[5];
        v53[5] = v22;
      }

      v24 = v47[5];
      v47[5] = 0;

      errorHandlerCopy[2](errorHandlerCopy, v53[5]);
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v15 = v41[5];
      v16 = [v15 countByEnumeratingWithState:&v31 objects:v58 count:16];
      if (v16)
      {
        v17 = *v32;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v15);
            }

            if ((handlerCopy[2](handlerCopy, *(*(&v31 + 1) + 8 * i)) & 1) == 0)
            {
              v25 = v47[5];
              v47[5] = 0;

              goto LABEL_18;
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v31 objects:v58 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }

    _Block_object_dispose(&v40, 8);
  }

  while (v14 && v47[5]);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
  v26 = *MEMORY[0x277D85DE8];
}

void __76__ACHWorkoutIterator_enumerateWorkoutsForDateInterval_handler_errorHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
  v16 = a2;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;
  v12 = v8;

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v7;
  v15 = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_runQueryForDateInterval:(id)interval lastCursor:(id)cursor completion:(id)completion
{
  v33[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  cursorCopy = cursor;
  completionCopy = completion;
  context = objc_autoreleasePoolPush();
  v11 = MEMORY[0x277CCD838];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  v27 = [v11 predicateForSamplesWithStartDate:startDate endDate:endDate options:1];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__ACHWorkoutIterator__runQueryForDateInterval_lastCursor_completion___block_invoke;
  aBlock[3] = &unk_278491B48;
  objc_copyWeak(&v30, &location);
  v14 = completionCopy;
  v29 = v14;
  v15 = _Block_copy(aBlock);
  if (cursorCopy)
  {
    v16 = [objc_alloc(MEMORY[0x277CCD8B8]) initWithQueryCursor:cursorCopy limit:-[ACHWorkoutIterator batchSize](self resultsHandler:{"batchSize"), v15}];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x277CCD848]);
    workoutType = [MEMORY[0x277CCD8D8] workoutType];
    v19 = [v17 initWithSampleType:workoutType predicate:v27];

    v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    v21 = objc_alloc(MEMORY[0x277CCD8B8]);
    v33[0] = v19;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v32 = v20;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    v16 = [v21 initWithQueryDescriptors:v22 sortDescriptors:v23 followingAnchor:0 upToAndIncludingAnchor:0 distinctByKeyPaths:0 limit:-[ACHWorkoutIterator batchSize](self resultsHandler:{"batchSize"), v15}];
  }

  healthStore = [(ACHWorkoutIterator *)self healthStore];
  [healthStore executeQuery:v16];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(context);
  v25 = *MEMORY[0x277D85DE8];
}

void __69__ACHWorkoutIterator__runQueryForDateInterval_lastCursor_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v14 = a3;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = [WeakRetained healthStore];
  [v13 stopQuery:v11];

  (*(*(a1 + 32) + 16))();
}

- (void)enumerateWorkoutsForDateInterval:(uint8_t *)buf handler:(void *)a2 errorHandler:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 138412290;
  *a2 = @"Semaphore wait timeout in workout iterator";
  _os_log_error_impl(&dword_221DDC000, log, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
}

@end