@interface AVAssetReaderOutput
+ (id)_figAssetReaderVideoScalingPropertiesFromVideoSettings:(id)settings withFormatDescription:(id)description;
- (AVAssetReaderOutput)init;
- (AVMediaType)mediaType;
- (BOOL)_enableTrackExtractionReturningError:(id *)error;
- (BOOL)_prepareForReadingReturningError:(id *)error;
- (BOOL)_updateTimeRangesOnFigAssetReaderReturningError:(id *)error;
- (CMSampleBufferRef)copyNextSampleBuffer;
- (NSDictionary)_figAssetReaderExtractionOptions;
- (id)_asset;
- (int64_t)_status;
- (void)_attachToWeakReferenceToAssetReader:(id)reader;
- (void)_figAssetReaderDecodeError;
- (void)_figAssetReaderFailed;
- (void)_figAssetReaderSampleBufferDidBecomeAvailableForExtractionID:(int)d;
- (void)_figAssetReaderServerConnectionDied;
- (void)_markAsFinished;
- (void)_setFigAssetReader:(OpaqueFigAssetReader *)reader;
- (void)dealloc;
- (void)markConfigurationAsFinal;
- (void)resetForReadingTimeRanges:(NSArray *)timeRanges;
- (void)setAlwaysCopiesSampleData:(BOOL)alwaysCopiesSampleData;
- (void)setDisablesMultithreadedAndAsyncVideoDecompression:(BOOL)decompression;
- (void)setMaximizePowerEfficiency:(BOOL)efficiency;
- (void)setSupportsRandomAccess:(BOOL)supportsRandomAccess;
@end

@implementation AVAssetReaderOutput

- (AVAssetReaderOutput)init
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = AVAssetReaderOutput;
  v3 = [(AVAssetReaderOutput *)&v11 init];
  v4 = objc_opt_class();
  AVRequireConcreteObject(v3, a2, v4);
  if (v3)
  {
    v5 = objc_alloc_init(AVAssetReaderOutputInternal);
    v3->_internal = v5;
    if (v5)
    {
      CFRetain(v5);
      v3->_internal->weakReference = [[AVWeakReference alloc] initWithReferencedObject:v3];
      v6 = MEMORY[0x1E696B098];
      start = **&MEMORY[0x1E6960CC0];
      v8 = **&MEMORY[0x1E6960C88];
      CMTimeRangeMake(&v10, &start, &v8);
      v12[0] = [v6 valueWithCMTimeRange:&v10];
      v3->_internal->currentTimeRanges = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      v3->_internal->sampleBufferAvailabilityCondition = objc_alloc_init(AVRunLoopCondition);
      v3->_internal->alwaysCopiesSampleData = 1;
      v3->_internal->maximizePowerEfficiency = 0;
      v3->_internal->disablesMultithreadedAndAsyncVideoDecompression = 0;
    }

    else
    {

      return 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
    if (internal->figAssetReader)
    {
      v4 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
      [v4 removeListenerWithWeakReference:self->_internal->weakReference callback:figAssetReaderSampleBufferDidBecomeAvailable name:*MEMORY[0x1E69713C0] object:self->_internal->figAssetReader];
      [v4 removeListenerWithWeakReference:self->_internal->weakReference callback:figAssetReaderDecodeError name:*MEMORY[0x1E69713B0] object:self->_internal->figAssetReader];
      [v4 removeListenerWithWeakReference:self->_internal->weakReference callback:figAssetReaderFailed name:*MEMORY[0x1E69713B8] object:self->_internal->figAssetReader];
      [v4 removeListenerWithWeakReference:self->_internal->weakReference callback:figAssetReaderServerConnectionDied name:*MEMORY[0x1E69713C8] object:self->_internal->figAssetReader];
      [v4 removeListenerWithWeakReference:self->_internal->weakReference callback:figAssetReaderServerConnectionDied name:*MEMORY[0x1E69628A8] object:self->_internal->figAssetReader];
      CFRelease(self->_internal->weakReference);
      CFRelease(self->_internal->figAssetReader);
      internal = self->_internal;
    }

    CFRelease(self->_internal);
  }

  v5.receiver = self;
  v5.super_class = AVAssetReaderOutput;
  [(AVAssetReaderOutput *)&v5 dealloc];
}

- (AVMediaType)mediaType
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (void)setAlwaysCopiesSampleData:(BOOL)alwaysCopiesSampleData
{
  v3 = alwaysCopiesSampleData;
  if ([(AVAssetReaderOutput *)self _status]>= 1)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = @"cannot be called after reading has started";
    goto LABEL_7;
  }

  internal = self->_internal;
  if (v3 && internal->hasProvider)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = @"cannot be set to YES when using an AVAssetReaderOutput.Provider";
LABEL_7:
    v15 = [v12 exceptionWithName:v13 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v14, v6, v7, v8, v9, v10, v16), 0}];
    objc_exception_throw(v15);
  }

  internal->alwaysCopiesSampleData = v3;
}

- (void)setMaximizePowerEfficiency:(BOOL)efficiency
{
  if ([(AVAssetReaderOutput *)self _status]>= 1)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"cannot be called after reading has started", v6, v7, v8, v9, v10, v12), 0}];
    objc_exception_throw(v11);
  }

  self->_internal->maximizePowerEfficiency = efficiency;
}

- (void)setDisablesMultithreadedAndAsyncVideoDecompression:(BOOL)decompression
{
  if (![(NSString *)[(AVAssetReaderOutput *)self mediaType] isEqualToString:@"vide"])
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"cannot use disablesMultithreadedAndAsyncVideoDecompression for non video media type";
    goto LABEL_6;
  }

  if ([(AVAssetReaderOutput *)self _status]>= 1)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = @"cannot be called after reading has started";
LABEL_6:
    v14 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v13, v6, v7, v8, v9, v10, v15), 0}];
    objc_exception_throw(v14);
  }

  self->_internal->disablesMultithreadedAndAsyncVideoDecompression = decompression;
}

- (void)setSupportsRandomAccess:(BOOL)supportsRandomAccess
{
  if ([(AVAssetReaderOutput *)self _status]>= 1)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = @"cannot be called after reading has started";
    goto LABEL_6;
  }

  internal = self->_internal;
  if (internal->hasProvider)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = @"cannot be called when using an AVAssetReaderOutput.Provider";
LABEL_6:
    v15 = [v12 exceptionWithName:v13 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v14, v6, v7, v8, v9, v10, v16), 0}];
    objc_exception_throw(v15);
  }

  internal->supportsRandomAccess = supportsRandomAccess;
}

- (id)_asset
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (void)_setFigAssetReader:(OpaqueFigAssetReader *)reader
{
  if (self->_internal->figAssetReader != reader)
  {
    v5 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v6 = v5;
    internal = self->_internal;
    v8 = MEMORY[0x1E69713C0];
    v9 = MEMORY[0x1E69713B0];
    v10 = MEMORY[0x1E69713B8];
    v11 = MEMORY[0x1E69713C8];
    v12 = MEMORY[0x1E69628A8];
    if (internal->figAssetReader)
    {
      [v5 removeListenerWithWeakReference:internal->weakReference callback:figAssetReaderSampleBufferDidBecomeAvailable name:*MEMORY[0x1E69713C0] object:?];
      [v6 removeListenerWithWeakReference:self->_internal->weakReference callback:figAssetReaderDecodeError name:*v9 object:self->_internal->figAssetReader];
      [v6 removeListenerWithWeakReference:self->_internal->weakReference callback:figAssetReaderFailed name:*v10 object:self->_internal->figAssetReader];
      [v6 removeListenerWithWeakReference:self->_internal->weakReference callback:figAssetReaderServerConnectionDied name:*v11 object:self->_internal->figAssetReader];
      [v6 removeListenerWithWeakReference:self->_internal->weakReference callback:figAssetReaderServerConnectionDied name:*v12 object:self->_internal->figAssetReader];
      CFRelease(self->_internal->weakReference);
      CFRelease(self->_internal->figAssetReader);
      internal = self->_internal;
    }

    internal->figAssetReader = reader;
    figAssetReader = self->_internal->figAssetReader;
    if (figAssetReader)
    {
      CFRetain(figAssetReader);
      CFRetain(self->_internal->weakReference);
      [v6 addListenerWithWeakReference:self->_internal->weakReference callback:figAssetReaderSampleBufferDidBecomeAvailable name:*v8 object:self->_internal->figAssetReader flags:0];
      [v6 addListenerWithWeakReference:self->_internal->weakReference callback:figAssetReaderDecodeError name:*v9 object:self->_internal->figAssetReader flags:0];
      [v6 addListenerWithWeakReference:self->_internal->weakReference callback:figAssetReaderFailed name:*v10 object:self->_internal->figAssetReader flags:0];
      [v6 addListenerWithWeakReference:self->_internal->weakReference callback:figAssetReaderServerConnectionDied name:*v11 object:self->_internal->figAssetReader flags:0];
      v14 = self->_internal;
      weakReference = v14->weakReference;
      v16 = *v12;
      v17 = v14->figAssetReader;

      [v6 addListenerWithWeakReference:weakReference callback:figAssetReaderServerConnectionDied name:v16 object:v17 flags:0];
    }
  }
}

- (void)_attachToWeakReferenceToAssetReader:(id)reader
{
  if (self->_internal->weakReferenceToAssetReader)
  {
    [(AVAssetReaderOutput *)a2 _attachToWeakReferenceToAssetReader:?];
  }

  self->_internal->weakReferenceToAssetReader = reader;
  v5 = [-[AVWeakReference referencedObject](self->_internal->weakReferenceToAssetReader "referencedObject")];

  [(AVAssetReaderOutput *)self _setFigAssetReader:v5];
}

- (int64_t)_status
{
  result = [(AVWeakReference *)[(AVAssetReaderOutput *)self _weakReferenceToAssetReader] referencedObject];
  if (result)
  {

    return [result status];
  }

  return result;
}

- (NSDictionary)_figAssetReaderExtractionOptions
{
  _trimsSampleDurations = [(AVAssetReaderOutput *)self _trimsSampleDurations];
  supportsRandomAccess = [(AVAssetReaderOutput *)self supportsRandomAccess];
  v15 = MEMORY[0x1E695DF20];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:_trimsSampleDurations];
  v6 = *MEMORY[0x1E6971380];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[AVAssetReaderOutput alwaysCopiesSampleData](self, "alwaysCopiesSampleData")}];
  v8 = *MEMORY[0x1E6971340];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:supportsRandomAccess];
  v10 = *MEMORY[0x1E69735B0];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[AVAssetReaderOutput maximizePowerEfficiency](self, "maximizePowerEfficiency")}];
  v12 = *MEMORY[0x1E6971378];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[AVAssetReaderOutput disablesMultithreadedAndAsyncVideoDecompression](self, "disablesMultithreadedAndAsyncVideoDecompression")}];
  return [v15 dictionaryWithObjectsAndKeys:{v5, v6, v7, v8, v9, v10, v11, v12, v13, *MEMORY[0x1E6971350], 0}];
}

+ (id)_figAssetReaderVideoScalingPropertiesFromVideoSettings:(id)settings withFormatDescription:(id)description
{
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(settings, "videoScalingProperties")}];
  [settings colorPropertiesConsideringFormatDescriptions:description colorPrimaries:&v10 transferFunction:&v9 ycbcrMatrix:&v8];
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6983DC0]];
  }

  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6983DE0]];
  }

  if (v9)
  {
    [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6983DD8]];
  }

  return v6;
}

- (BOOL)_updateTimeRangesOnFigAssetReaderReturningError:(id *)error
{
  currentTimeRanges = [(AVAssetReaderOutput *)self currentTimeRanges];
  _figAssetReader = [(AVAssetReaderOutput *)self _figAssetReader];
  if (!_figAssetReader)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v7 = [currentTimeRanges count];
  v8 = malloc_type_calloc(v7, 0x30uLL, 0x1000040EED21634uLL);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__AVAssetReaderOutput__updateTimeRangesOnFigAssetReaderReturningError___block_invoke;
  v12[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
  v12[4] = v8;
  [currentTimeRanges enumerateObjectsUsingBlock:v12];
  self->_internal->extractionCompleteForCurrentConfiguration = 0;
  _extractionID = [(AVAssetReaderOutput *)self _extractionID];
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v10)
  {
    _figAssetReader = v10(_figAssetReader, _extractionID, v8, v7);
    if (!error)
    {
      goto LABEL_9;
    }
  }

  else
  {
    _figAssetReader = 4294954514;
    if (!error)
    {
      goto LABEL_9;
    }
  }

  if (_figAssetReader)
  {
    *error = [(AVAssetReaderOutput *)self _errorForOSStatus:_figAssetReader];
    LODWORD(_figAssetReader) = 1;
  }

LABEL_9:
  free(v8);
  return _figAssetReader == 0;
}

__n128 __71__AVAssetReaderOutput__updateTimeRangesOnFigAssetReaderReturningError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    [a2 CMTimeRangeValue];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  v5 = (v4 + 48 * a3);
  result = v7;
  v5[1] = v8;
  v5[2] = v9;
  *v5 = v7;
  return result;
}

- (BOOL)_prepareForReadingReturningError:(id *)error
{
  if (![(AVAssetReaderOutput *)self supportsRandomAccess])
  {
    self->_internal->currentConfigurationIsFinal = 1;
  }

  return [(AVAssetReaderOutput *)self _enableTrackExtractionReturningError:error];
}

- (BOOL)_enableTrackExtractionReturningError:(id *)error
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  return 0;
}

- (void)_markAsFinished
{
  [(AVAssetReaderOutput *)self willChangeValueForKey:@"finished"];
  FigAtomicIncrement32();

  [(AVAssetReaderOutput *)self didChangeValueForKey:@"finished"];
}

- (CMSampleBufferRef)copyNextSampleBuffer
{
  _status = [(AVAssetReaderOutput *)self _status];
  if (_status > 1)
  {
    return 0;
  }

  if (!_status)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"cannot copy next sample buffer before adding this output to an instance of AVAssetReader (using -addOutput:) and calling -startReading on that asset reader", v5, v6, v7, v8, v9, v18), 0}];
    objc_exception_throw(v17);
  }

  v19 = 0;
  HIBYTE(v18) = 0;
  [(NSCondition *)self->_internal->sampleBufferAvailabilityCondition lock];
  for (i = *MEMORY[0x1E6961580]; ; [(AVRunLoopCondition *)sampleBufferAvailabilityCondition waitInMode:i])
  {
    _figAssetReader = [(AVAssetReaderOutput *)self _figAssetReader];
    _extractionID = [(AVAssetReaderOutput *)self _extractionID];
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    v15 = v14 ? v14(_figAssetReader, _extractionID, 0, &v18 + 7, &v19) : 4294954514;
    sampleBufferAvailabilityCondition = self->_internal->sampleBufferAvailabilityCondition;
    if (v15 || v19 || HIBYTE(v18))
    {
      break;
    }
  }

  [(NSCondition *)sampleBufferAvailabilityCondition unlock];
  if (v15)
  {
    [-[AVWeakReference referencedObject](-[AVAssetReaderOutput _weakReferenceToAssetReader](self "_weakReferenceToAssetReader")];
  }

  else if (HIBYTE(v18))
  {
    self->_internal->extractionCompleteForCurrentConfiguration = 1;
    if (self->_internal->currentConfigurationIsFinal)
    {
      [(AVAssetReaderOutput *)self _markAsFinished];
    }
  }

  if (HIBYTE(v18))
  {
    return 0;
  }

  else
  {
    return v19;
  }
}

- (void)_figAssetReaderSampleBufferDidBecomeAvailableForExtractionID:(int)d
{
  internal = self->_internal;
  if (internal->extractionID == d)
  {
    [(NSCondition *)internal->sampleBufferAvailabilityCondition lock];
    [(AVRunLoopCondition *)self->_internal->sampleBufferAvailabilityCondition signal];
    sampleBufferAvailabilityCondition = self->_internal->sampleBufferAvailabilityCondition;

    [(NSCondition *)sampleBufferAvailabilityCondition unlock];
  }
}

- (void)resetForReadingTimeRanges:(NSArray *)timeRanges
{
  v37 = *MEMORY[0x1E69E9840];
  if (!timeRanges)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v25 = "timeRanges != nil";
    v20 = @"invalid parameter not satisfying: %s";
    goto LABEL_26;
  }

  v9 = *MEMORY[0x1E6960C80];
  v35.epoch = *(MEMORY[0x1E6960C80] + 16);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  *&v35.value = v9;
  v10 = [(NSArray *)timeRanges countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = v10;
  v12 = *v32;
  v13 = MEMORY[0x1E6960CC0];
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v32 != v12)
      {
        objc_enumerationMutation(timeRanges);
      }

      v15 = *(*(&v31 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = MEMORY[0x1E695DF30];
        v19 = *MEMORY[0x1E695D940];
        v21 = objc_opt_class();
        v25 = NSStringFromClass(v21);
        v20 = @"Each entry in timeRanges must be an instance of %@";
        goto LABEL_26;
      }

      memset(&v30, 0, sizeof(v30));
      if (!v15 || ([v15 CMTimeRangeValue], (v30.start.flags & 0x1D) != 1))
      {
        v18 = MEMORY[0x1E695DF30];
        v19 = *MEMORY[0x1E695D940];
        v20 = @"Start time of each time range must be numeric - see CMTIME_IS_NUMERIC";
        goto LABEL_26;
      }

      flags = v30.duration.flags;
      if ((v30.duration.flags & 0x1D) == 1)
      {
        time1.start = v30.duration;
        time2 = *v13;
        if ((CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        flags = v30.duration.flags;
      }

      if ((~flags & 5) != 0)
      {
        v18 = MEMORY[0x1E695DF30];
        v19 = *MEMORY[0x1E695D940];
        v20 = @"Duration of each time range must be nonnegative & numeric or positive infinity - see CMTIME_IS_NUMERIC";
        goto LABEL_26;
      }

LABEL_14:
      *&time1.start.value = *&v30.start.value;
      time1.start.epoch = v30.start.epoch;
      time2 = v35;
      if (CMTimeCompare(&time1.start, &time2) < 0)
      {
        v18 = MEMORY[0x1E695DF30];
        v19 = *MEMORY[0x1E695D940];
        v20 = @"Start time of each time range must be greater than or equal to the end time of the previous time range";
LABEL_26:
        selfCopy2 = self;
        goto LABEL_27;
      }

      time1 = v30;
      CMTimeRangeGetEnd(&v35, &time1);
    }

    v11 = [(NSArray *)timeRanges countByEnumeratingWithState:&v31 objects:v36 count:16];
  }

  while (v11);
LABEL_17:
  if ([(AVAssetReaderOutput *)self _status]<= 0)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D930];
    v20 = @"cannot be called before reading has started";
LABEL_34:
    selfCopy2 = self;
LABEL_27:
    v23 = [v18 exceptionWithName:v19 reason:AVMethodExceptionReasonWithObjectAndSelector(selfCopy2 userInfo:{a2, v20, v3, v4, v5, v6, v7, v25), 0}];
    objc_exception_throw(v23);
  }

  if (!self->_internal->extractionCompleteForCurrentConfiguration)
  {
    _status = [(AVAssetReaderOutput *)self _status];
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D930];
    if (_status == 3)
    {
      v20 = @"cannot be called after the asset reader has entered a failure state";
    }

    else
    {
      v25 = NSStringFromSelector(sel_copyNextSampleBuffer);
      v20 = @"cannot be called until all samples have been read (i.e. %@ returns NULL)";
    }

    goto LABEL_26;
  }

  if (![(AVAssetReaderOutput *)self supportsRandomAccess])
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D930];
    v25 = NSStringFromSelector(sel_supportsRandomAccess);
    v20 = @"cannot be called without setting %@ to YES";
    goto LABEL_34;
  }

  internal = self->_internal;
  if (internal->currentConfigurationIsFinal)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D930];
    v25 = NSStringFromSelector(sel_markConfigurationAsFinal);
    v20 = @"cannot be called after calling %@";
    goto LABEL_34;
  }

  self->_internal->currentTimeRanges = [(NSArray *)timeRanges copy];
  [(AVAssetReaderOutput *)self _updateTimeRangesOnFigAssetReaderReturningError:0];
}

- (void)markConfigurationAsFinal
{
  self->_internal->currentConfigurationIsFinal = 1;
  if (self->_internal->extractionCompleteForCurrentConfiguration)
  {
    [(AVAssetReaderOutput *)self _markAsFinished];
  }
}

- (void)_figAssetReaderDecodeError
{
  [(NSCondition *)self->_internal->sampleBufferAvailabilityCondition lock];
  [(AVRunLoopCondition *)self->_internal->sampleBufferAvailabilityCondition signal];
  sampleBufferAvailabilityCondition = self->_internal->sampleBufferAvailabilityCondition;

  [(NSCondition *)sampleBufferAvailabilityCondition unlock];
}

- (void)_figAssetReaderFailed
{
  [(NSCondition *)self->_internal->sampleBufferAvailabilityCondition lock];
  [(AVRunLoopCondition *)self->_internal->sampleBufferAvailabilityCondition signal];
  sampleBufferAvailabilityCondition = self->_internal->sampleBufferAvailabilityCondition;

  [(NSCondition *)sampleBufferAvailabilityCondition unlock];
}

- (void)_figAssetReaderServerConnectionDied
{
  [(NSCondition *)self->_internal->sampleBufferAvailabilityCondition lock];
  [(AVRunLoopCondition *)self->_internal->sampleBufferAvailabilityCondition signal];
  sampleBufferAvailabilityCondition = self->_internal->sampleBufferAvailabilityCondition;

  [(NSCondition *)sampleBufferAvailabilityCondition unlock];
}

- (uint64_t)_attachToWeakReferenceToAssetReader:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"AVAssetReaderOutput.m" lineNumber:982 description:@"The receiver cannot already be attached to an AVAssetReader."];
}

@end