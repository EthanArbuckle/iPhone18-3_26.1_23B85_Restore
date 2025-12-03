@interface AVCaptureDataOutputSynchronizer
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_earliestFollowerSynchronizedDataQueueTimestamp;
- (AVCaptureDataOutputSynchronizer)initWithDataOutputs:(NSArray *)dataOutputs;
- (BOOL)_allFollowerSynchronizedDataOutputsContainTimestampEqualToOrGreaterThanLeaderTimestamp:(id *)timestamp;
- (int)_computedLeaderSynchronizedDataQueueMaxDepthForDataOutputs:(id)outputs;
- (void)_adjustSynchronizedDataTimestamps;
- (void)_appendSynchronizedData:(id)data forCaptureOutput:(id)output;
- (void)_assignTimestampAdjustmentQueueToDataOutputStorageWithCommonProvenance;
- (void)_dispatchRipenedSynchronizedData;
- (void)_dispatchSynchronizedDataWithTimestamp:(id *)timestamp;
- (void)_overrideDataOutputDelegatesForDelegateCallbackQueue:(id)queue;
- (void)cameraCalibrationDataOutput:(id)output didDropCameraCalibrationDataAtTimestamp:(id *)timestamp connection:(id)connection reason:(int64_t)reason;
- (void)cameraCalibrationDataOutput:(id)output didOutputCameraCalibrationData:(id)data timestamp:(id *)timestamp connection:(id)connection;
- (void)captureOutput:(id)output didDropSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)captureOutput:(id)output didOutputMetadataObjectCollections:(id)collections fromConnection:(id)connection;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)dealloc;
- (void)depthDataOutput:(id)output didDropDepthData:(id)data timestamp:(id *)timestamp connection:(id)connection reason:(int64_t)reason;
- (void)depthDataOutput:(id)output didOutputDepthData:(id)data timestamp:(id *)timestamp connection:(id)connection;
- (void)pointCloudDataOutput:(id)output didDropPointCloudData:(id)data timestamp:(id *)timestamp connection:(id)connection reason:(int64_t)reason;
- (void)pointCloudDataOutput:(id)output didOutputPointCloudData:(id)data timestamp:(id *)timestamp connection:(id)connection;
- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)delegateCallbackQueue;
- (void)visionDataOutput:(id)output didDropVisionDataPixelBufferForTimestamp:(id *)timestamp connection:(id)connection reason:(int64_t)reason;
- (void)visionDataOutput:(id)output didOutputVisionDataPixelBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp connection:(id)connection;
@end

@implementation AVCaptureDataOutputSynchronizer

- (AVCaptureDataOutputSynchronizer)initWithDataOutputs:(NSArray *)dataOutputs
{
  if (!dataOutputs)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
LABEL_45:
    v26 = [v23 exceptionWithName:v24 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v26);
    }

    NSLog(&cfstr_SuppressingExc.isa, v26);
    return 0;
  }

  if (![(NSArray *)dataOutputs count])
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    goto LABEL_45;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [(NSArray *)dataOutputs countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v37;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(dataOutputs);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v23 = MEMORY[0x1E695DF30];
                      v24 = *MEMORY[0x1E695D940];
                      goto LABEL_45;
                    }
                  }
                }
              }
            }
          }
        }

        session = [v10 session];
        if (v7)
        {
          if (session != v7)
          {
            v23 = MEMORY[0x1E695DF30];
            v24 = *MEMORY[0x1E695D940];
            goto LABEL_45;
          }
        }

        else
        {
          v7 = session;
          if (!session)
          {
            v23 = MEMORY[0x1E695DF30];
            v24 = *MEMORY[0x1E695D940];
            goto LABEL_45;
          }
        }

        if (![objc_msgSend(v10 "connections")])
        {
          v23 = MEMORY[0x1E695DF30];
          v24 = *MEMORY[0x1E695D940];
          goto LABEL_45;
        }

        if (([v10 conformsToProtocol:&unk_1F1CEF568] & 1) == 0)
        {
          v23 = MEMORY[0x1E695DF30];
          v24 = *MEMORY[0x1E695D940];
          goto LABEL_45;
        }
      }

      v6 = [(NSArray *)dataOutputs countByEnumeratingWithState:&v36 objects:v35 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v34.receiver = self;
  v34.super_class = AVCaptureDataOutputSynchronizer;
  v12 = [(AVCaptureDataOutputSynchronizer *)&v34 init];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = objc_alloc_init(AVCaptureDataOutputSynchronizerInternal);
  v13->_internal = v14;
  if (!v14)
  {

    return 0;
  }

  v13->_internal->delegateCallbackHelper = [[AVCaptureDataOutputDelegateCallbackHelper alloc] initWithQueueName:@"com.apple.avfoundation.dataoutputsynchronizer.queue" canSetClientDelegateCallbackQueueWhenRunningInsideMediaserverd:1];
  v13->_internal->weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v13];
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](dataOutputs, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = dataOutputs;
  v17 = [(NSArray *)dataOutputs countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v28 = 0;
    v20 = *v31;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(dataOutputs);
        }

        v22 = [[AVCDOSDataOutputStorage alloc] initWithDataOutput:*(*(&v30 + 1) + 8 * j)];
        [(NSArray *)v15 addObject:v22];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = 1;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            LOBYTE(v28) = 1;
          }

          else
          {
            objc_opt_class();
            HIDWORD(v28) |= objc_opt_isKindOfClass();
          }
        }
      }

      v18 = [(NSArray *)dataOutputs countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
    v28 = 0;
  }

  v25 = v13;
  v13->_internal->dataOutputsStorage = v15;
  v13->_internal->dataOutputs = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v16];
  v13->_internal->leaderSynchronizedDataQueueMaxDepth = [(AVCaptureDataOutputSynchronizer *)v13 _computedLeaderSynchronizedDataQueueMaxDepthForDataOutputs:v16];
  v13->_internal->dataOutputsStorageMutex = FigSimpleMutexCreate();
  [(AVCaptureDataOutputSynchronizer *)v13 _assignTimestampAdjustmentQueueToDataOutputStorageWithCommonProvenance];
  v13->_internal->synchronizingVideoAndDepth = v19 & v28 & 1;
  v13->_internal->synchronizingVideoAndVisionData = v19 & BYTE4(v28) & 1;
  return v25;
}

- (void)dealloc
{
  if (self->_internal)
  {
    [(AVCaptureDataOutputSynchronizer *)self setDelegate:0 queue:0];

    FigSimpleMutexDestroy();
  }

  v3.receiver = self;
  v3.super_class = AVCaptureDataOutputSynchronizer;
  [(AVCaptureDataOutputSynchronizer *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)delegateCallbackQueue
{
  [(AVCaptureDataOutputSynchronizer *)self willChangeValueForKey:@"delegate"];
  v8 = 0;
  if ([(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper setClientDelegate:delegate clientCallbackQueue:delegateCallbackQueue exceptionReason:&v8])
  {
    [(AVCaptureDataOutputSynchronizer *)self _overrideDataOutputDelegatesForDelegateCallbackQueue:delegateCallbackQueue];
    [(AVCaptureDataOutputSynchronizer *)self didChangeValueForKey:@"delegate"];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    [(AVCaptureDataOutputSynchronizer *)self didChangeValueForKey:@"delegate"];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  v7 = [[AVCaptureSynchronizedSampleBufferData alloc] _initWithSampleBuffer:buffer sampleBufferWasDropped:0];
  [(AVCaptureDataOutputSynchronizer *)self _appendSynchronizedData:v7 forCaptureOutput:output];
}

- (void)captureOutput:(id)output didDropSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  v7 = [[AVCaptureSynchronizedSampleBufferData alloc] _initWithSampleBuffer:buffer sampleBufferWasDropped:1];
  [(AVCaptureDataOutputSynchronizer *)self _appendSynchronizedData:v7 forCaptureOutput:output];
}

- (void)captureOutput:(id)output didOutputMetadataObjectCollections:(id)collections fromConnection:(id)connection
{
  v7 = [collections sortedArrayUsingComparator:&__block_literal_global_155];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [[AVCaptureSynchronizedMetadataObjectData alloc] _initWithMetadataObjectCollection:*(*(&v14 + 1) + 8 * v11)];
        [(AVCaptureDataOutputSynchronizer *)self _appendSynchronizedData:v12 forCaptureOutput:output];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v9);
  }
}

uint64_t __99__AVCaptureDataOutputSynchronizer_captureOutput_didOutputMetadataObjectCollections_fromConnection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    memset(&time1, 0, sizeof(time1));
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v5, 0, sizeof(v5));
    return CMTimeCompare(&time1, &v5);
  }

  [a2 time];
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  [a3 time];
  return CMTimeCompare(&time1, &v5);
}

- (void)depthDataOutput:(id)output didOutputDepthData:(id)data timestamp:(id *)timestamp connection:(id)connection
{
  v10 = [AVCaptureSynchronizedDepthData alloc];
  v12 = *timestamp;
  v11 = [(AVCaptureSynchronizedDepthData *)v10 _initWithDepthData:data timestamp:&v12 depthDataWasDropped:0 droppedReason:0];
  [(AVCaptureDataOutputSynchronizer *)self _appendSynchronizedData:v11 forCaptureOutput:output];
}

- (void)depthDataOutput:(id)output didDropDepthData:(id)data timestamp:(id *)timestamp connection:(id)connection reason:(int64_t)reason
{
  v12 = [AVCaptureSynchronizedDepthData alloc];
  v14 = *timestamp;
  v13 = [(AVCaptureSynchronizedDepthData *)v12 _initWithDepthData:data timestamp:&v14 depthDataWasDropped:1 droppedReason:reason];
  [(AVCaptureDataOutputSynchronizer *)self _appendSynchronizedData:v13 forCaptureOutput:output];
}

- (void)visionDataOutput:(id)output didOutputVisionDataPixelBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp connection:(id)connection
{
  v10 = [AVCaptureSynchronizedVisionData alloc];
  v12 = *timestamp;
  v11 = [(AVCaptureSynchronizedVisionData *)v10 _initWithVisionDataPixelBuffer:buffer timestamp:&v12 visionDataWasDropped:0 droppedReason:0];
  [(AVCaptureDataOutputSynchronizer *)self _appendSynchronizedData:v11 forCaptureOutput:output];
}

- (void)visionDataOutput:(id)output didDropVisionDataPixelBufferForTimestamp:(id *)timestamp connection:(id)connection reason:(int64_t)reason
{
  v10 = [AVCaptureSynchronizedVisionData alloc];
  v12 = *timestamp;
  v11 = [(AVCaptureSynchronizedVisionData *)v10 _initWithVisionDataPixelBuffer:0 timestamp:&v12 visionDataWasDropped:1 droppedReason:reason];
  [(AVCaptureDataOutputSynchronizer *)self _appendSynchronizedData:v11 forCaptureOutput:output];
}

- (void)pointCloudDataOutput:(id)output didOutputPointCloudData:(id)data timestamp:(id *)timestamp connection:(id)connection
{
  v10 = [AVCaptureSynchronizedPointCloudData alloc];
  v12 = *timestamp;
  v11 = [(AVCaptureSynchronizedPointCloudData *)v10 _initWithPointCloudDataBuffer:data timestamp:&v12 pointCloudDataWasDropped:0 droppedReason:0];
  [(AVCaptureDataOutputSynchronizer *)self _appendSynchronizedData:v11 forCaptureOutput:output];
}

- (void)pointCloudDataOutput:(id)output didDropPointCloudData:(id)data timestamp:(id *)timestamp connection:(id)connection reason:(int64_t)reason
{
  v12 = [AVCaptureSynchronizedPointCloudData alloc];
  v14 = *timestamp;
  v13 = [(AVCaptureSynchronizedPointCloudData *)v12 _initWithPointCloudDataBuffer:data timestamp:&v14 pointCloudDataWasDropped:1 droppedReason:reason];
  [(AVCaptureDataOutputSynchronizer *)self _appendSynchronizedData:v13 forCaptureOutput:output];
}

- (void)cameraCalibrationDataOutput:(id)output didOutputCameraCalibrationData:(id)data timestamp:(id *)timestamp connection:(id)connection
{
  v10 = [AVCaptureSynchronizedCameraCalibrationData alloc];
  v12 = *timestamp;
  v11 = [(AVCaptureSynchronizedCameraCalibrationData *)v10 _initWithCameraCalibrationData:data timestamp:&v12 cameraCalibrationDataWasDropped:0 droppedReason:0];
  [(AVCaptureDataOutputSynchronizer *)self _appendSynchronizedData:v11 forCaptureOutput:output];
}

- (void)cameraCalibrationDataOutput:(id)output didDropCameraCalibrationDataAtTimestamp:(id *)timestamp connection:(id)connection reason:(int64_t)reason
{
  v10 = [AVCaptureSynchronizedCameraCalibrationData alloc];
  v12 = *timestamp;
  v11 = [(AVCaptureSynchronizedCameraCalibrationData *)v10 _initWithCameraCalibrationData:0 timestamp:&v12 cameraCalibrationDataWasDropped:1 droppedReason:reason];
  [(AVCaptureDataOutputSynchronizer *)self _appendSynchronizedData:v11 forCaptureOutput:output];
}

- (int)_computedLeaderSynchronizedDataQueueMaxDepthForDataOutputs:(id)outputs
{
  if ([outputs count] == 1)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (void)_assignTimestampAdjustmentQueueToDataOutputStorageWithCommonProvenance
{
  v3 = [(NSArray *)self->_internal->dataOutputsStorage count];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v3];
  v5 = v4;
  if (v3)
  {
    v6 = 0;
    v21 = v4;
    do
    {
      v7 = [(NSArray *)self->_internal->dataOutputsStorage objectAtIndexedSubscript:v6];
      v8 = [objc_msgSend(objc_msgSend(objc_msgSend(v7 "dataOutput")];
      if ([v5 containsObject:v8])
      {
        ++v6;
      }

      else
      {
        [v5 addObject:v8];
        v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v3 - v6];
        [v9 addObject:v7];
        [v7 dataOutput];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v6;
        }

        else
        {
          v10 = -1;
        }

        [v7 dataOutput];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v6;
        }

        else
        {
          v11 = -1;
        }

        v12 = ++v6;
        if (v6 < v3)
        {
          do
          {
            v13 = [(NSArray *)self->_internal->dataOutputsStorage objectAtIndexedSubscript:v12];
            if (v8 == [objc_msgSend(objc_msgSend(objc_msgSend(v13 "dataOutput")])
            {
              [v9 addObject:v13];
              if (v10 == -1 && ([v13 dataOutput], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v10 = v12;
              }

              else if (v11 == -1)
              {
                [v13 dataOutput];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v11 = v12;
                }

                else
                {
                  v11 = -1;
                }
              }
            }

            ++v12;
          }

          while (v3 != v12);
        }

        if (v10 == -1)
        {
          v14 = v11;
        }

        else
        {
          v14 = v10;
        }

        if (v14 != -1)
        {
          v15 = [(NSArray *)self->_internal->dataOutputsStorage objectAtIndexedSubscript:?];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v16 = [v9 countByEnumeratingWithState:&v23 objects:v22 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v24;
            do
            {
              v19 = 0;
              do
              {
                if (*v24 != v18)
                {
                  objc_enumerationMutation(v9);
                }

                v20 = *(*(&v23 + 1) + 8 * v19);
                if (v20 != v15)
                {
                  [v20 setTimestampAdjustmentsDataQueue:{objc_msgSend(v15, "synchronizedDataQueue")}];
                }

                ++v19;
              }

              while (v17 != v19);
              v17 = [v9 countByEnumeratingWithState:&v23 objects:v22 count:16];
            }

            while (v17);
          }
        }

        v5 = v21;
      }
    }

    while (v6 != v3);
  }
}

- (void)_overrideDataOutputDelegatesForDelegateCallbackQueue:(id)queue
{
  if (queue)
  {
    qos_class = dispatch_queue_get_qos_class(queue, 0);
  }

  else
  {
    qos_class = 21;
  }

  FigSimpleMutexLock();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  dataOutputsStorage = self->_internal->dataOutputsStorage;
  v7 = [(NSArray *)dataOutputsStorage countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(dataOutputsStorage);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (queue)
        {
          if (qos_class >= 0x16)
          {
            [*(*(&v14 + 1) + 8 * i) updateDelegateOverrideCallbackQueueQOSClass:qos_class];
          }

          [objc_msgSend(v11 "dataOutput")];
        }

        else
        {
          v12 = [objc_msgSend(*(*(&v14 + 1) + 8 * i) "dataOutput")];
          if (v12 == [v11 delegateOverrideCallbackQueue])
          {
            [objc_msgSend(v11 "dataOutput")];
          }

          [objc_msgSend(v11 "synchronizedDataQueue")];
        }
      }

      v8 = [(NSArray *)dataOutputsStorage countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }

  FigSimpleMutexUnlock();
}

- (void)_appendSynchronizedData:(id)data forCaptureOutput:(id)output
{
  FigSimpleMutexLock();
  v7 = [(NSArray *)self->_internal->dataOutputs indexOfObject:output];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [objc_msgSend(-[NSArray objectAtIndexedSubscript:](self->_internal->dataOutputsStorage objectAtIndexedSubscript:{v7), "synchronizedDataQueue"), "addObject:", data}];
    [(AVCaptureDataOutputSynchronizer *)self _dispatchRipenedSynchronizedData];
  }

  FigSimpleMutexUnlock();
}

- (void)_adjustSynchronizedDataTimestamps
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = self->_internal->dataOutputsStorage;
  v25 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v52 count:16];
  if (v25)
  {
    v24 = *v54;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v54 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v53 + 1) + 8 * i);
        if ([v4 timestampAdjustmentsDataQueue])
        {
          v26 = i;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          synchronizedDataQueue = [v4 synchronizedDataQueue];
          v5 = [synchronizedDataQueue countByEnumeratingWithState:&v48 objects:v47 count:16];
          if (!v5)
          {
            goto LABEL_61;
          }

          v6 = v5;
          v28 = *v49;
          while (1)
          {
            for (j = 0; j != v6; ++j)
            {
              if (*v49 != v28)
              {
                objc_enumerationMutation(synchronizedDataQueue);
              }

              v8 = *(*(&v48 + 1) + 8 * j);
              if (v8)
              {
                [*(*(&v48 + 1) + 8 * j) adjustedTimestamp];
                if ((v45 & 0x100000000) != 0)
                {
                  continue;
                }
              }

              else
              {
                v44 = 0;
                v45 = 0;
                v46 = 0;
              }

              v9 = *MEMORY[0x1E6960C80];
              v43.epoch = *(MEMORY[0x1E6960C80] + 16);
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              *&v43.value = v9;
              timestampAdjustmentsDataQueue = [v4 timestampAdjustmentsDataQueue];
              v11 = [timestampAdjustmentsDataQueue countByEnumeratingWithState:&v39 objects:v38 count:16];
              if (!v11)
              {
                continue;
              }

              v12 = v11;
              v13 = *v40;
              while (2)
              {
                for (k = 0; k != v12; ++k)
                {
                  if (*v40 != v13)
                  {
                    objc_enumerationMutation(timestampAdjustmentsDataQueue);
                  }

                  v15 = *(*(&v39 + 1) + 8 * k);
                  if (v15)
                  {
                    [*(*(&v39 + 1) + 8 * k) timestamp];
                    if (v8)
                    {
                      goto LABEL_23;
                    }
                  }

                  else
                  {
                    memset(&time1, 0, sizeof(time1));
                    if (v8)
                    {
LABEL_23:
                      [v8 timestamp];
                      goto LABEL_26;
                    }
                  }

                  memset(&time2, 0, sizeof(time2));
LABEL_26:
                  if (!CMTimeCompare(&time1, &time2))
                  {
                    if (v15)
                    {
                      [v15 timestamp];
                    }

                    else
                    {
                      memset(&v35, 0, sizeof(v35));
                    }

                    time1 = v35;
                    p_time1 = &time1;
                    goto LABEL_58;
                  }

                  if (v15)
                  {
                    [v15 timestamp];
                    if (v8)
                    {
                      goto LABEL_29;
                    }
                  }

                  else
                  {
                    memset(&time1, 0, sizeof(time1));
                    if (v8)
                    {
LABEL_29:
                      [v8 timestamp];
                      goto LABEL_32;
                    }
                  }

                  memset(&time2, 0, sizeof(time2));
LABEL_32:
                  if (CMTimeCompare(&time1, &time2) >= 1)
                  {
                    memset(&time1, 0, sizeof(time1));
                    if (v8)
                    {
                      [v8 timestamp];
                    }

                    else
                    {
                      memset(&time2, 0, sizeof(time2));
                    }

                    rhs = v43;
                    CMTimeSubtract(&time1, &time2, &rhs);
                    memset(&time2, 0, sizeof(time2));
                    if (v15)
                    {
                      [v15 timestamp];
                      if (v8)
                      {
                        goto LABEL_48;
                      }

LABEL_50:
                      memset(&v33, 0, sizeof(v33));
                    }

                    else
                    {
                      memset(&rhs, 0, sizeof(rhs));
                      if (!v8)
                      {
                        goto LABEL_50;
                      }

LABEL_48:
                      [v8 timestamp];
                    }

                    CMTimeSubtract(&time2, &rhs, &v33);
                    rhs = time2;
                    v33 = time1;
                    if (CMTimeCompare(&rhs, &v33) < 0)
                    {
                      if (v15)
                      {
                        [v15 timestamp];
                      }

                      else
                      {
                        v31 = 0uLL;
                        v32 = 0;
                      }

                      *&rhs.value = v31;
                      epoch = v32;
                    }

                    else
                    {
                      *&rhs.value = *&v43.value;
                      epoch = v43.epoch;
                    }

                    rhs.epoch = epoch;
                    p_time1 = &rhs;
LABEL_58:
                    [v8 setAdjustedTimestamp:p_time1];
                    goto LABEL_59;
                  }

                  if (v15)
                  {
                    [v15 timestamp];
                  }

                  else
                  {
                    memset(&time1, 0, sizeof(time1));
                  }

                  v43 = time1;
                }

                v12 = [timestampAdjustmentsDataQueue countByEnumeratingWithState:&v39 objects:v38 count:16];
                if (v12)
                {
                  continue;
                }

                break;
              }

LABEL_59:
              ;
            }

            v6 = [synchronizedDataQueue countByEnumeratingWithState:&v48 objects:v47 count:16];
            if (!v6)
            {
LABEL_61:
              [v4 dataOutput];
              objc_opt_class();
              i = v26;
              if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(v4 "synchronizedDataQueue")] >= 2)
              {
                v18 = 0;
                do
                {
                  v19 = [objc_msgSend(v4 "synchronizedDataQueue")];
                  if (v18 < [objc_msgSend(v4 "synchronizedDataQueue")])
                  {
                    v20 = v18;
                    do
                    {
                      v21 = [objc_msgSend(v4 "synchronizedDataQueue")];
                      if (v19)
                      {
                        v22 = v21;
                        [v19 adjustedTimestamp];
                        if (v30)
                        {
                          if (v22)
                          {
                            [v22 adjustedTimestamp];
                            if (v29)
                            {
                              [v19 adjustedTimestamp];
                              [v22 adjustedTimestamp];
                              if (!CMTimeCompare(&v43, &time1))
                              {
                                [v19 addSynchronizedData:v22];
                                [objc_msgSend(v4 "synchronizedDataQueue")];
                              }
                            }
                          }

                          else
                          {
                            v29 = 0;
                          }
                        }
                      }

                      else
                      {
                        v30 = 0;
                      }

                      ++v20;
                    }

                    while (v20 < [objc_msgSend(v4 "synchronizedDataQueue")]);
                  }
                }

                while (v18 < [objc_msgSend(v4 "synchronizedDataQueue")] - 1);
              }

              break;
            }
          }
        }
      }

      v25 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v52 count:16];
    }

    while (v25);
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_earliestFollowerSynchronizedDataQueueTimestamp
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  result = [(NSArray *)self->_internal->dataOutputsStorage count];
  if (result > 1)
  {
    v7 = result;
    v8 = MEMORY[0x1E6960C88];
    *&retstr->var0 = *MEMORY[0x1E6960C88];
    retstr->var3 = *(v8 + 16);
    v9 = 1;
    while (1)
    {
      v10 = [(NSArray *)self->_internal->dataOutputsStorage objectAtIndexedSubscript:v9];
      result = [objc_msgSend(v10 "synchronizedDataQueue")];
      if (result)
      {
        break;
      }

LABEL_12:
      if (v7 == ++v9)
      {
        return result;
      }
    }

    v11 = [objc_msgSend(v10 "synchronizedDataQueue")];
    memset(&v15, 0, sizeof(v15));
    if (v11)
    {
      v12 = v11;
      [v11 adjustedTimestamp];
      if (v15.flags)
      {
        goto LABEL_10;
      }

      [v12 timestamp];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v15 = time1;
LABEL_10:
    time1 = v15;
    v13 = *retstr;
    result = CMTimeCompare(&time1, &v13);
    if ((result & 0x80000000) != 0)
    {
      *retstr = v15;
    }

    goto LABEL_12;
  }

  v6 = MEMORY[0x1E6960C70];
  *&retstr->var0 = *MEMORY[0x1E6960C70];
  retstr->var3 = *(v6 + 16);
  return result;
}

- (void)_dispatchSynchronizedDataWithTimestamp:(id *)timestamp
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  v5 = self->_internal->weakReference;
  v6 = [[AVCaptureSynchronizedDataCollection alloc] _initWithPossibleDataOutputs:self->_internal->dataOutputs];
  v7 = [(NSArray *)self->_internal->dataOutputsStorage count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v10 = [(NSArray *)self->_internal->dataOutputsStorage objectAtIndexedSubscript:v9];
      if ([objc_msgSend(v10 "synchronizedDataQueue")])
      {
        break;
      }

LABEL_12:
      if (v8 == ++v9)
      {
        goto LABEL_13;
      }
    }

    v11 = [objc_msgSend(v10 "synchronizedDataQueue")];
    v12 = v11;
    memset(&v18, 0, sizeof(v18));
    if (v11)
    {
      [v11 adjustedTimestamp];
      if (v18.flags)
      {
        goto LABEL_9;
      }

      [v12 timestamp];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v18 = time1;
LABEL_9:
    time1 = *timestamp;
    time2 = v18;
    if (CMTimeCompare(&time1, &time2))
    {
      memset(&time1, 0, sizeof(time1));
      time2 = *timestamp;
      rhs = v18;
      CMTimeSubtract(&time1, &time2, &rhs);
    }

    else
    {
      [v6 _setSynchronizedData:v12 forCaptureOutput:{objc_msgSend(v10, "dataOutput")}];
      [objc_msgSend(v10 "synchronizedDataQueue")];
    }

    goto LABEL_12;
  }

LABEL_13:
  activeCallbackQueue = [(AVCaptureDataOutputDelegateCallbackHelper *)self->_internal->delegateCallbackHelper activeCallbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__AVCaptureDataOutputSynchronizer__dispatchSynchronizedDataWithTimestamp___block_invoke;
  block[3] = &unk_1E786EFD0;
  block[4] = v5;
  block[5] = self;
  block[6] = v6;
  dispatch_async(activeCallbackQueue, block);
}

void __74__AVCaptureDataOutputSynchronizer__dispatchSynchronizedDataWithTimestamp___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) referencedObject];
  if (v3)
  {
    [objc_msgSend(*(*(*(a1 + 40) + 8) + 8) "activeDelegate")];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_dispatchRipenedSynchronizedData
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  [(AVCaptureDataOutputSynchronizer *)self _adjustSynchronizedDataTimestamps];
  v3 = [-[NSArray objectAtIndexedSubscript:](self->_internal->dataOutputsStorage objectAtIndexedSubscript:{0), "synchronizedDataQueue"}];
  if ([v3 count])
  {
    memset(&v30, 0, sizeof(v30));
    v4 = [v3 objectAtIndexedSubscript:0];
    if (v4)
    {
      [v4 timestamp];
    }

    else
    {
      memset(&v30, 0, sizeof(v30));
    }

    memset(&v29, 0, sizeof(v29));
    [(AVCaptureDataOutputSynchronizer *)self _earliestFollowerSynchronizedDataQueueTimestamp];
    *&time1.value = 0uLL;
    for (i = 0; ; i = time1.epoch)
    {
      time1.epoch = i;
      v26 = v30;
      if ((CMTimeCompare(&time1, &v26) & 0x80000000) == 0)
      {
        break;
      }

      time1 = v29;
      [(AVCaptureDataOutputSynchronizer *)self _dispatchSynchronizedDataWithTimestamp:&time1];
      [(AVCaptureDataOutputSynchronizer *)self _earliestFollowerSynchronizedDataQueueTimestamp];
      v29 = time1;
    }

    if ([OUTLINED_FUNCTION_0_6() _allFollowerSynchronizedDataOutputsContainTimestampEqualToOrGreaterThanLeaderTimestamp:?])
    {
      while (1)
      {
        [OUTLINED_FUNCTION_0_6() _dispatchSynchronizedDataWithTimestamp:?];
        if (![v3 count])
        {
          break;
        }

        timestamp = [v3 objectAtIndexedSubscript:0];
        if (timestamp)
        {
          timestamp = [timestamp timestamp];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        *&time1.value = OUTLINED_FUNCTION_1_9(timestamp, v8, v9, v10, v11, v12, v13, v14, v26.value, *&v26.timescale, v26.epoch, v27, v15, time1.value);
        time1.epoch = v16;
        if (![(AVCaptureDataOutputSynchronizer *)self _allFollowerSynchronizedDataOutputsContainTimestampEqualToOrGreaterThanLeaderTimestamp:&time1])
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:
      while ([v3 count] > self->_internal->leaderSynchronizedDataQueueMaxDepth)
      {
        [OUTLINED_FUNCTION_0_6() _dispatchSynchronizedDataWithTimestamp:?];
        if (![v3 count])
        {
          break;
        }

        timestamp2 = [v3 objectAtIndexedSubscript:0];
        if (timestamp2)
        {
          timestamp2 = [timestamp2 timestamp];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        *&v6 = OUTLINED_FUNCTION_1_9(timestamp2, v18, v19, v20, v21, v22, v23, v24, v26.value, *&v26.timescale, v26.epoch, v27, v25, time1.value).n128_u64[0];
      }
    }
  }
}

- (BOOL)_allFollowerSynchronizedDataOutputsContainTimestampEqualToOrGreaterThanLeaderTimestamp:(id *)timestamp
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  v5 = [(NSArray *)self->_internal->dataOutputsStorage count];
  v6 = v5;
  internal = self->_internal;
  v8 = internal->synchronizingVideoAndDepth || internal->synchronizingVideoAndVisionData;
  v9 = 0;
  if ((v8 & 1) != 0 && v5 >= 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = [(NSArray *)self->_internal->dataOutputsStorage objectAtIndexedSubscript:v10];
      [v11 dataOutput];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([objc_msgSend(v11 "synchronizedDataQueue")])
        {
          break;
        }
      }

      if (v6 == ++v10)
      {
        v9 = 0;
        goto LABEL_12;
      }
    }

    v9 = [objc_msgSend(v11 "synchronizedDataQueue")];
  }

LABEL_12:
  if (v6 > 1)
  {
    v12 = 0;
    for (i = 1; i != v6; v12 = i >= v6)
    {
      v14 = [(NSArray *)self->_internal->dataOutputsStorage objectAtIndexedSubscript:i];
      if ([v14 isLive])
      {
        if (!self->_internal->synchronizingVideoAndDepth || ([v14 dataOutput], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v9 || objc_msgSend(v9, "hasCorrespondingDepthData"))
        {
          if (!self->_internal->synchronizingVideoAndVisionData || ([v14 dataOutput], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v9 || objc_msgSend(v9, "hasCorrespondingVisionData"))
          {
            v16 = *&timestamp->var0;
            var3 = timestamp->var3;
            if (![v14 hasAllExpectedSynchronizedDataForLeaderTimestamp:&v16])
            {
              break;
            }
          }
        }
      }

      ++i;
    }
  }

  else
  {
    return 1;
  }

  return v12;
}

@end