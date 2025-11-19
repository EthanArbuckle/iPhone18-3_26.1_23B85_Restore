@interface AVAssetPlanner
+ ($82E0105DD906C456CCB81C580993A964)segmentBoundaryGuidelinesForVideoCodecType:(SEL)a3 videoEncoderSpecification:(id)a4;
+ (BOOL)validateIntermediateFileDirectory:(id)a3 forSessionName:(id)a4 failureReason:(id *)a5;
- (AVAssetPlanner)initWithIntermediateFileDirectory:(id)a3 sessionName:(id)a4;
- (BOOL)hasTrackPlanExecutorForTrack:(int)a3;
- (BOOL)planTrack:(id)a3 withSegmentsGeneratedBy:(id)a4;
- (id)buildAssemblyComposition:(id *)a3;
- (id)makeFreshIncrementalState;
- (id)makeIncrementalStateByResumptionOrStartFresh:(id *)a3;
- (void)dealloc;
- (void)executePlanWithCompletionHandler:(id)a3;
- (void)saveIncrementalState:(id *)a3;
- (void)writeSegmentsInTracks;
@end

@implementation AVAssetPlanner

- (AVAssetPlanner)initWithIntermediateFileDirectory:(id)a3 sessionName:(id)a4
{
  v10 = 0;
  if (![AVAssetPlanner validateIntermediateFileDirectory:a3 forSessionName:a4 failureReason:&v10])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0]);
  }

  v9.receiver = self;
  v9.super_class = AVAssetPlanner;
  v7 = [(AVAssetPlanner *)&v9 init];
  if (v7)
  {
    v7->_sessionSegmentFileDirectory = [a3 copy];
    v7->_sessionName = [a4 copy];
    v7->_sessionMutex = FigSimpleMutexCreate();
    v7->_writingSessionStarted = 0;
  }

  return v7;
}

- (void)dealloc
{
  workQueue = self->_workQueue;
  if (workQueue)
  {
    dispatch_release(workQueue);
  }

  FigSimpleMutexDestroy();
  v4.receiver = self;
  v4.super_class = AVAssetPlanner;
  [(AVAssetPlanner *)&v4 dealloc];
}

- (BOOL)hasTrackPlanExecutorForTrack:(int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  trackPlanExecutors = self->_trackPlanExecutors;
  v5 = [(NSMutableArray *)trackPlanExecutors countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(trackPlanExecutors);
        }

        if ([*(*(&v10 + 1) + 8 * v8) assemblyTrackID] == a3)
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [(NSMutableArray *)trackPlanExecutors countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (BOOL)planTrack:(id)a3 withSegmentsGeneratedBy:(id)a4
{
  FigSimpleMutexLock();
  if (self->_writingSessionStarted)
  {
    [AVAssetPlanner planTrack:? withSegmentsGeneratedBy:?];
    v7 = v10;
  }

  else if (-[AVAssetPlanner hasTrackPlanExecutorForTrack:](self, "hasTrackPlanExecutorForTrack:", [a3 assemblyTrackID]))
  {
    [AVAssetPlanner planTrack:? withSegmentsGeneratedBy:?];
    v7 = v9;
  }

  else
  {
    if (!self->_trackPlanExecutors)
    {
      self->_trackPlanExecutors = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    [(NSMutableArray *)self->_trackPlanExecutors addObject:[AVAssetTrackPlanExecutor executorForTrackPlan:a3 segmentWritingCallbackBlock:a4]];
    v7 = 0;
  }

  FigSimpleMutexUnlock();
  return v7 == 0;
}

- (void)executePlanWithCompletionHandler:(id)a3
{
  v11 = 0;
  FigSimpleMutexLock();
  if (self->_writingSessionStarted)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = -11913;
LABEL_10:
    v11 = [v5 errorWithDomain:@"AVFoundationErrorDomain" code:v6 userInfo:0];
    goto LABEL_11;
  }

  if (![(NSMutableArray *)self->_trackPlanExecutors count])
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = -11919;
    goto LABEL_10;
  }

  objc_initWeak(&location, self);
  self->_completionHandlerBlock = [a3 copy];
  self->_writingSessionStarted = 1;
  self->_incrementalState = [(AVAssetPlanner *)self makeIncrementalStateByResumptionOrStartFresh:&v11];
  if (!v11)
  {
    workQueue = self->_workQueue;
    if (!workQueue)
    {
      workQueue = FigDispatchQueueCreateWithPriority();
      self->_workQueue = workQueue;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__AVAssetPlanner_executePlanWithCompletionHandler___block_invoke;
    block[3] = &unk_1E74636C0;
    objc_copyWeak(&v9, &location);
    dispatch_async(workQueue, block);
    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
LABEL_11:
  FigSimpleMutexUnlock();
  if (v11)
  {
    (*(a3 + 2))(a3, 0);
  }
}

uint64_t __51__AVAssetPlanner_executePlanWithCompletionHandler___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak writeSegmentsInTracks];
}

- (void)writeSegmentsInTracks
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  trackPlanExecutors = self->_trackPlanExecutors;
  v15 = [(NSMutableArray *)trackPlanExecutors countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v15)
  {
    v4 = *v26;
    v13 = *v26;
    v14 = trackPlanExecutors;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v26 != v4)
        {
          objc_enumerationMutation(trackPlanExecutors);
        }

        v16 = v5;
        v6 = *(*(&v25 + 1) + 8 * v5);
        v7 = -[AVAssetPlannerIncrementalState trackIncrementalStateForTrack:](self->_incrementalState, "trackIncrementalStateForTrack:", [v6 assemblyTrackID]);
        v18 = [objc_msgSend(v7 "segmentStates")];
        v17 = [objc_msgSend(v7 "segmentStates")];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        obj = [v7 segmentStates];
        v8 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v22;
LABEL_8:
          v11 = 0;
          while (1)
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v21 + 1) + 8 * v11);
            if (([v12 hasCompleted] & 1) == 0)
            {
              v20 = 0;
              [v6 callWritingSegmentCallbackForTrack:objc_msgSend(v6 segmentState:"assemblyTrackID") isFirstSegment:v12 isLastSegment:v12 == v18 initialHDRMetadataState:v12 == v17 finalHDRMetadataGenerationStateOut:objc_msgSend(v7 error:{"lastCompletedSegmentFinalHDRMetadataGenerationState"), &v20, &v29}];
              if (v29)
              {
                goto LABEL_19;
              }

              [v12 setHasCompleted:1];
              [v7 setLastCompletedSegmentFinalHDRMetadataGenerationState:v20];
              [(AVAssetPlanner *)self saveIncrementalState:&v29];
              if (v29)
              {
                goto LABEL_19;
              }
            }

            if (v9 == ++v11)
            {
              v9 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
              if (v9)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }

        v5 = v16 + 1;
        v4 = v13;
        trackPlanExecutors = v14;
      }

      while (v16 + 1 != v15);
      v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  [(AVAssetPlanner *)self buildAssemblyComposition:&v29];
LABEL_19:
  (*(self->_completionHandlerBlock + 2))();

  self->_completionHandlerBlock = 0;
  self->_trackPlanExecutors = 0;
}

- (id)buildAssemblyComposition:(id *)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v58 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3052000000;
  v55 = __Block_byref_object_copy__10;
  v56 = __Block_byref_object_dispose__10;
  v57 = 0;
  v28 = +[AVMutableComposition composition];
  v5 = dispatch_group_create();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = [(AVAssetPlannerIncrementalState *)self->_incrementalState trackStates];
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v48 objects:v60 count:16];
  obj = v6;
  if (v7)
  {
    v26 = *v49;
    v8 = MEMORY[0x1E6960CC0];
    v23 = a3;
    do
    {
      v9 = 0;
      v25 = v7;
      do
      {
        if (*v49 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v48 + 1) + 8 * v9);
        v11 = -[AVMutableComposition addMutableTrackWithMediaType:preferredTrackID:](v28, "addMutableTrackWithMediaType:preferredTrackID:", [v10 mediaType], objc_msgSend(v10, "assemblyTrackID"));
        v12 = [v10 segmentStates];
        v27 = v9;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v29 = v12;
        v13 = [v12 countByEnumeratingWithState:&v44 objects:v59 count:16];
        if (v13)
        {
          v14 = *v45;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v45 != v14)
              {
                objc_enumerationMutation(v29);
              }

              v16 = *(*(&v44 + 1) + 8 * i);
              v17 = [v16 segmentURL];
              memset(&v43, 0, sizeof(v43));
              if (v16)
              {
                [v16 timeRange];
              }

              else
              {
                memset(v42, 0, sizeof(v42));
                v41 = 0uLL;
              }

              duration = *(v42 + 8);
              *&start.start.value = *v8;
              start.start.epoch = *(v8 + 16);
              CMTimeRangeMake(&v43, &start.start, &duration);
              v18 = [AVAsset assetWithURL:v17];
              duration.value = 0;
              *&duration.timescale = &duration;
              duration.epoch = 0x3052000000;
              v38 = __Block_byref_object_copy__10;
              v39 = __Block_byref_object_dispose__10;
              v40 = 0;
              dispatch_group_enter(v5);
              v19 = [v10 mediaType];
              v36[0] = MEMORY[0x1E69E9820];
              v36[1] = 3221225472;
              v36[2] = __43__AVAssetPlanner_buildAssemblyComposition___block_invoke;
              v36[3] = &unk_1E74636E8;
              v36[6] = &duration;
              v36[4] = v5;
              v36[5] = &v52;
              [(AVAsset *)v18 loadTracksWithMediaType:v19 completionHandler:v36];
              dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
              v58 = v53[5];
              v20 = *(*&duration.timescale + 40);
              if (v58 || (v21 = *(*&duration.timescale + 40)) == 0)
              {
                _Block_object_dispose(&duration, 8);
                a3 = v23;
                goto LABEL_25;
              }

              if (v16)
              {
                [v16 timeRange];
              }

              else
              {
                v32 = 0u;
                v33 = 0u;
                v31 = 0u;
              }

              v34 = v31;
              v35 = v32;
              start = v43;
              [(AVMutableCompositionTrack *)v11 insertTimeRange:&start ofTrack:v21 atTime:&v34 error:&v58];
              _Block_object_dispose(&duration, 8);
            }

            v13 = [v29 countByEnumeratingWithState:&v44 objects:v59 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v9 = v27 + 1;
      }

      while (v27 + 1 != v25);
      v7 = [(NSArray *)obj countByEnumeratingWithState:&v48 objects:v60 count:16];
      a3 = v23;
    }

    while (v7);
  }

LABEL_25:
  if (v5)
  {
    dispatch_release(v5);
  }

  if (a3 && v58)
  {
    v28 = 0;
    *a3 = v58;
  }

  _Block_object_dispose(&v52, 8);
  return v28;
}

void __43__AVAssetPlanner_buildAssemblyComposition___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a3;
  if ([a2 count] == 1)
  {
    *(*(a1[6] + 8) + 40) = [a2 firstObject];
  }

  else
  {
    [a2 count];
  }

  v5 = a1[4];

  dispatch_group_leave(v5);
}

- (id)makeFreshIncrementalState
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = +[AVAssetPlannerIncrementalState emptyState];
  v4 = [MEMORY[0x1E695DF70] array];
  [v3 setSessionName:self->_sessionName];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  trackPlanExecutors = self->_trackPlanExecutors;
  v6 = [(NSMutableArray *)trackPlanExecutors countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(trackPlanExecutors);
        }

        [v4 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * i), "makeFreshState:", self->_sessionSegmentFileDirectory)}];
      }

      v7 = [(NSMutableArray *)trackPlanExecutors countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [v3 setTrackStates:v4];
  return v3;
}

- (id)makeIncrementalStateByResumptionOrStartFresh:(id *)a3
{
  v11 = 0;
  v5 = [(AVAssetPlanner *)self makeFreshIncrementalState];
  v6 = [(NSURL *)self->_sessionSegmentFileDirectory URLByAppendingPathComponent:@"AVAssetPlannerState.plist"];
  v7 = +[AVAssetPlannerIncrementalState fromDictionary:error:](AVAssetPlannerIncrementalState, "fromDictionary:error:", [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v6], &v11);
  v8 = v11;
  if (v11)
  {
    goto LABEL_5;
  }

  v9 = v7;
  if (!v7)
  {
    return v5;
  }

  if (([v5 resumableBy:v7] & 1) == 0)
  {
    [AVAssetPlanner makeIncrementalStateByResumptionOrStartFresh:?];
    v8 = v12;
LABEL_5:
    v9 = 0;
    *a3 = v8;
  }

  return v9;
}

- (void)saveIncrementalState:(id *)a3
{
  v12 = 0;
  v5 = [(NSURL *)self->_sessionSegmentFileDirectory URLByAppendingPathComponent:@"AVAssetPlannerState.plist"];
  v6 = [(NSURL *)self->_sessionSegmentFileDirectory URLByAppendingPathComponent:@"AVAssetPlannerState.shadow.plist"];
  FigSimpleMutexLock();
  v7 = [-[AVAssetPlannerIncrementalState toDictionary](self->_incrementalState "toDictionary")];
  v8 = v12;
  if (v7)
  {
    v9 = v12 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9 || ((v10 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")], v8 = v12, v10) ? (v11 = v12 == 0) : (v11 = 0), !v11))
  {
    *a3 = v8;
  }

  FigSimpleMutexUnlock();
}

+ (BOOL)validateIntermediateFileDirectory:(id)a3 forSessionName:(id)a4 failureReason:(id *)a5
{
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v18 = 0;
  v9 = [v8 fileExistsAtPath:objc_msgSend(a3 isDirectory:{"path"), &v18}];
  v10 = [v8 isWritableFileAtPath:{objc_msgSend(a3, "path")}];
  v11 = @"intermediate file directory is nil";
  if (a3)
  {
    v11 = @"intermediate file directory does not exists";
    if (v9)
    {
      v11 = v18 ? @"intermediate file directory is not a writable" : @"intermediate file directory is not a directory";
      if ((v18 & v10) == 1)
      {
        v12 = [a3 URLByAppendingPathComponent:@"AVAssetPlannerState.plist"];
        v17 = 0;
        if ([v8 fileExistsAtPath:objc_msgSend(v12 isDirectory:{"path"), &v17}])
        {
          if (v17)
          {
            v11 = @"planner incremental state file is a directory";
            goto LABEL_13;
          }

          v13 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v12];
          if (v13)
          {
            v16 = 0;
            v14 = [AVAssetPlannerIncrementalState fromDictionary:v13 error:&v16];
            if (v16)
            {
              v11 = @"intermediate file directory has a corrupted planner incremental state file";
              goto LABEL_13;
            }

            if (([a4 isEqual:{objc_msgSend(v14, "sessionName")}] & 1) == 0)
            {
              v11 = @"intermediate file directory has a planner incremental state file with a different session name";
              goto LABEL_13;
            }
          }
        }

        v11 = 0;
      }
    }
  }

LABEL_13:
  *a5 = v11;
  return v11 == 0;
}

+ ($82E0105DD906C456CCB81C580993A964)segmentBoundaryGuidelinesForVideoCodecType:(SEL)a3 videoEncoderSpecification:(id)a4
{
  v7 = AVOSTypeForString(a4);
  v9 = 0;
  retstr->var0 = 0;
  retstr->var1 = **&MEMORY[0x1E6960C88];
  if (!VTCompressionSessionCreate(0, 1920, 1080, v7, a5, 0, 0, 0, 0, &v9))
  {
    if (!VTCompressionSessionCopyProperty())
    {
      retstr->var0 = FigCFNumberGetSInt32();
    }

    if (!VTCompressionSessionCopyProperty())
    {
      CMTimeMakeFromDictionary(&retstr->var1, 0);
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return 0;
}

- (uint64_t)planTrack:(_DWORD *)a1 withSegmentsGeneratedBy:.cold.1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)planTrack:(_DWORD *)a1 withSegmentsGeneratedBy:.cold.2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)makeIncrementalStateByResumptionOrStartFresh:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  result = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVFoundationErrorDomain" code:-11918 userInfo:0];
  *a1 = result;
  return result;
}

@end