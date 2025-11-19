@interface PHChangeHandlingDebugger
- (PHChangeHandlingDebugger)initWithMaxPreviousEvents:(unint64_t)a3;
- (id)beginProcessPendingChanges;
- (id)beginPublishCloudStatusChange;
- (id)formattedStringFromTimestamp:(double)a3;
- (id)stateCaptureDictionary;
@end

@implementation PHChangeHandlingDebugger

- (id)beginProcessPendingChanges
{
  v2 = [(PFStateCaptureEventLog *)self->_eventLog addEvent];
  [v2 startProcessPendingChanges];

  return v2;
}

- (id)formattedStringFromTimestamp:(double)a3
{
  v4 = [MEMORY[0x1E69BDD80] stringFromTimestamp:?];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = [MEMORY[0x1E69BDD80] stringFromRelativeTimeInterval:a3 - v5];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v4, v6];

  return v7;
}

- (id)stateCaptureDictionary
{
  v3 = [(PFStateCaptureEventLog *)self->_eventLog eventDescriptions];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __50__PHChangeHandlingDebugger_stateCaptureDictionary__block_invoke;
  v24 = &unk_1E75AA678;
  v25 = self;
  v26 = &v32;
  v27 = &v28;
  PLRunWithUnfairLock();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12 = MEMORY[0x1E69E9820];
  PLRunWithUnfairLock();
  v4 = [(PHChangeHandlingDebugger *)self formattedStringFromTimestamp:v29[3], v12, 3221225472, __50__PHChangeHandlingDebugger_stateCaptureDictionary__block_invoke_2, &unk_1E75AA678, self, &v17, &v13];
  v5 = [(PHChangeHandlingDebugger *)self formattedStringFromTimestamp:v14[3]];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  [v6 setObject:v3 forKeyedSubscript:@"events"];
  if (*(v33 + 24))
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = v7;
  [v6 setObject:v8 forKeyedSubscript:@"isActive"];

  [v6 setObject:v4 forKeyedSubscript:@"isActiveTimestamp"];
  if (*(v18 + 24))
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v9;
  [v6 setObject:v10 forKeyedSubscript:@"isChangeProcessingPending"];

  [v6 setObject:v5 forKeyedSubscript:@"isChangeProcessingPendingTimestamp"];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v6;
}

double __50__PHChangeHandlingDebugger_stateCaptureDictionary__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 28);
  result = *(a1[4] + 32);
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

double __50__PHChangeHandlingDebugger_stateCaptureDictionary__block_invoke_2(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 44);
  result = *(a1[4] + 48);
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

uint64_t __64__PHChangeHandlingDebugger_processPendingChangesStateDidChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 44) = *(a1 + 40);
  result = [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  *(*(a1 + 32) + 48) = v3;
  return result;
}

uint64_t __63__PHChangeHandlingDebugger_changeHandlingActiveStateDidChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 28) = *(a1 + 40);
  result = [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  *(*(a1 + 32) + 32) = v3;
  return result;
}

- (id)beginPublishCloudStatusChange
{
  v2 = [(PFStateCaptureEventLog *)self->_eventLog addEvent];
  [v2 startPublishCloudStatus];

  return v2;
}

- (PHChangeHandlingDebugger)initWithMaxPreviousEvents:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = PHChangeHandlingDebugger;
  v4 = [(PHChangeHandlingDebugger *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_maxPreviousEvents = a3;
    v6 = [objc_alloc(MEMORY[0x1E69BDD78]) initWithEventClass:objc_opt_class() maxEvents:a3];
    eventLog = v5->_eventLog;
    v5->_eventLog = v6;

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5->_activeLock._os_unfair_lock_opaque = 0;
    v5->_activeLock_isActive = 0;
    v5->_activeLock_isActiveTimestamp = v8;
    v5->_pendingLock_isChangeProcessingPending = 0;
    v5->_pendingLock_isChangeProcessingPendingTimestamp = v8;
    v9 = v5;
  }

  return v5;
}

@end