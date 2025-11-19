@interface AVAssetTrackPlanExecutor
+ (id)executorForTrackPlan:(id)a3 segmentWritingCallbackBlock:(id)a4;
- (AVAssetTrackPlanExecutor)initWithTrackPlan:(id)a3 segmentWritingCallbackBlock:(id)a4;
- (id)makeFreshState:(id)a3;
- (id)makeSegmentURLFromBaseURL:(id)a3 trackID:(int)a4 segmentIndex:(int64_t)a5;
- (void)callWritingSegmentCallbackForTrack:(int)a3 segmentState:(id)a4 isFirstSegment:(BOOL)a5 isLastSegment:(BOOL)a6 initialHDRMetadataState:(id)a7 finalHDRMetadataGenerationStateOut:(id *)a8 error:(id *)a9;
- (void)dealloc;
@end

@implementation AVAssetTrackPlanExecutor

- (AVAssetTrackPlanExecutor)initWithTrackPlan:(id)a3 segmentWritingCallbackBlock:(id)a4
{
  v8.receiver = self;
  v8.super_class = AVAssetTrackPlanExecutor;
  v6 = [(AVAssetTrackPlanExecutor *)&v8 init];
  if (v6)
  {
    v6->_trackPlan = [a3 copy];
    v6->_writingSegmentCallbackBlock = [a4 copy];
    v6->_writingSemaphore = dispatch_semaphore_create(0);
  }

  return v6;
}

+ (id)executorForTrackPlan:(id)a3 segmentWritingCallbackBlock:(id)a4
{
  v4 = [[AVAssetTrackPlanExecutor alloc] initWithTrackPlan:a3 segmentWritingCallbackBlock:a4];

  return v4;
}

- (void)dealloc
{
  writingSemaphore = self->_writingSemaphore;
  if (writingSemaphore)
  {
    dispatch_release(writingSemaphore);
  }

  v4.receiver = self;
  v4.super_class = AVAssetTrackPlanExecutor;
  [(AVAssetTrackPlanExecutor *)&v4 dealloc];
}

- (id)makeSegmentURLFromBaseURL:(id)a3 trackID:(int)a4 segmentIndex:(int64_t)a5
{
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Track_%d_incremental_segment_%ld.mov", -[AVAssetTrackPlanExecutor assemblyTrackID](self, "assemblyTrackID", a3, *&a4), a5];

  return [a3 URLByAppendingPathComponent:v6];
}

- (id)makeFreshState:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(AVAssetPlannerTrackState);
  v6 = [MEMORY[0x1E695DF70] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AVAssetPlannerTrackState *)v5 setVideoCodecType:[(AVAssetTrackPlan *)self->_trackPlan videoCodecType]];
  }

  [(AVAssetPlannerTrackState *)v5 setAssemblyTrackID:[(AVAssetTrackPlan *)self->_trackPlan assemblyTrackID]];
  [(AVAssetPlannerTrackState *)v5 setMediaType:[(AVAssetTrackPlan *)self->_trackPlan mediaType]];
  v18 = v5;
  [(AVAssetPlannerTrackState *)v5 setRequiresVideoCompression:[(AVAssetTrackPlan *)self->_trackPlan requiresVideoCompression]];
  v7 = *MEMORY[0x1E6960CC0];
  v27.epoch = *(MEMORY[0x1E6960CC0] + 16);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  *&v27.value = v7;
  v8 = [(AVAssetTrackPlan *)self->_trackPlan segmentConfigurations];
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = +[AVAssetPlannerTrackSegmentState emptyState];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v14)
          {
            [v14 duration];
          }

          else
          {
            memset(&v21, 0, 24);
          }

          v22 = v21.start;
          v16 = [v14 frameCount];
        }

        else
        {
          if (v14)
          {
            [v14 duration];
          }

          else
          {
            memset(&v21, 0, 24);
          }

          v16 = 0;
          v22 = v21.start;
        }

        [v15 setSegmentURL:{-[AVAssetTrackPlanExecutor makeSegmentURLFromBaseURL:trackID:segmentIndex:](self, "makeSegmentURLFromBaseURL:trackID:segmentIndex:", a3, -[AVAssetTrackPlan assemblyTrackID](self->_trackPlan, "assemblyTrackID"), v11)}];
        start = v27;
        duration = v22;
        CMTimeRangeMake(&v21, &start, &duration);
        [v15 setTimeRange:&v21];
        [v15 setRequiresFrameCount:{-[AVAssetTrackPlan requiresVideoCompression](self->_trackPlan, "requiresVideoCompression")}];
        [v15 setFrameCount:v16];
        [v15 setHasCompleted:0];
        [v6 addObject:v15];
        ++v11;
        v21.start = v27;
        start = v22;
        CMTimeAdd(&v27, &v21.start, &start);
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  [(AVAssetPlannerTrackState *)v18 setSegmentStates:v6];
  return v18;
}

- (void)callWritingSegmentCallbackForTrack:(int)a3 segmentState:(id)a4 isFirstSegment:(BOOL)a5 isLastSegment:(BOOL)a6 initialHDRMetadataState:(id)a7 finalHDRMetadataGenerationStateOut:(id *)a8 error:(id *)a9
{
  v11 = a6;
  v12 = a5;
  v14 = *&a3;
  v40[3] = *MEMORY[0x1E69E9840];
  writingSemaphore = self->_writingSemaphore;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3052000000;
  v34 = __Block_byref_object_copy__10;
  v35 = __Block_byref_object_dispose__10;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  if ([(AVAssetTrackPlan *)self->_trackPlan requiresVideoCompression])
  {
    v17 = MEMORY[0x1E695DF90];
    v39[0] = *MEMORY[0x1E6983820];
    v40[0] = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a4, "frameCount")}];
    v39[1] = *MEMORY[0x1E6983738];
    v40[1] = [MEMORY[0x1E696AD98] numberWithBool:!v12];
    v39[2] = *MEMORY[0x1E6983730];
    v40[2] = [MEMORY[0x1E696AD98] numberWithBool:!v11];
    v18 = [v17 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v40, v39, 3)}];
    v19 = v18;
    if (a7)
    {
      [v18 setObject:a7 forKey:*MEMORY[0x1E69836B0]];
    }

    v37 = @"AVVideoCompressionPropertiesKey";
    v38 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v14 = v14;
  }

  else
  {
    v20 = 0;
  }

  v21 = [a4 segmentURL];
  if (a4)
  {
    [a4 timeRange];
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __170__AVAssetTrackPlanExecutor_callWritingSegmentCallbackForTrack_segmentState_isFirstSegment_isLastSegment_initialHDRMetadataState_finalHDRMetadataGenerationStateOut_error___block_invoke;
  v23[3] = &unk_1E7463698;
  v23[5] = &v31;
  v23[6] = &v25;
  v23[4] = writingSemaphore;
  [AVPlannedSegmentWritingRequest requestWithSegmentFileOutputURL:v21 assemblyTrackID:v14 timeRange:v24 outputSettings:v20 finishBlock:v23];
  (*(self->_writingSegmentCallbackBlock + 2))();
  dispatch_semaphore_wait(writingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v22 = v26[5];
  if (a8)
  {
    *a8 = v26[5];
  }

  *a9 = v32[5];
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

intptr_t __170__AVAssetTrackPlanExecutor_callWritingSegmentCallbackForTrack_segmentState_isFirstSegment_isLastSegment_initialHDRMetadataState_finalHDRMetadataGenerationStateOut_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a3;
  *(*(a1[6] + 8) + 40) = a2;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

@end