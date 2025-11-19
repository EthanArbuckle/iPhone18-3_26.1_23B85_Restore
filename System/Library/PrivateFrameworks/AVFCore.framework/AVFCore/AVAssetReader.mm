@interface AVAssetReader
+ (AVAssetReader)assetReaderWithAsset:(AVAsset *)asset error:(NSError *)outError;
+ (id)_errorForOSStatus:(int)a3;
+ (void)initialize;
- (AVAssetReader)initWithAsset:(AVAsset *)asset error:(NSError *)outError;
- (AVAssetReader)initWithAsset:(id)a3 options:(id)a4 error:(id *)a5;
- (AVAssetReaderStatus)status;
- (BOOL)_canAddOutput:(id)a3 exceptionReason:(id *)a4;
- (BOOL)canAddOutput:(AVAssetReaderOutput *)output;
- (BOOL)isDefunct;
- (BOOL)startReading;
- (CMTimeRange)timeRange;
- (NSError)error;
- (NSString)description;
- (id)_commonInitWithAsset:(id)a3 options:(id)a4 error:(id *)a5;
- (void)_handleServerDiedNotification;
- (void)_outputDidFinish:(id)a3;
- (void)_setReadSingleSample:(BOOL)a3;
- (void)_tearDownFigAssetReader;
- (void)_transitionToStatus:(int64_t)a3 failureError:(id)a4;
- (void)addOutput:(AVAssetReaderOutput *)output;
- (void)cancelReading;
- (void)dealloc;
- (void)setPreparesMediaDataForRealTimeConsumption:(BOOL)a3;
- (void)setTimeRange:(CMTimeRange *)timeRange;
@end

@implementation AVAssetReader

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    MEMORY[0x1EEDBE8E8]();
  }
}

+ (AVAssetReader)assetReaderWithAsset:(AVAsset *)asset error:(NSError *)outError
{
  v4 = [objc_alloc(objc_opt_class()) initWithAsset:asset error:outError];

  return v4;
}

- (AVAssetReader)initWithAsset:(AVAsset *)asset error:(NSError *)outError
{
  v7.receiver = self;
  v7.super_class = AVAssetReader;
  result = [(AVAssetReader *)&v7 init];
  if (result)
  {
    return [(AVAssetReader *)result _commonInitWithAsset:asset options:0 error:outError];
  }

  return result;
}

- (AVAssetReader)initWithAsset:(id)a3 options:(id)a4 error:(id *)a5
{
  v9.receiver = self;
  v9.super_class = AVAssetReader;
  result = [(AVAssetReader *)&v9 init];
  if (result)
  {
    return [(AVAssetReader *)result _commonInitWithAsset:a3 options:a4 error:a5];
  }

  return result;
}

- (id)_commonInitWithAsset:(id)a3 options:(id)a4 error:(id *)a5
{
  v5 = self;
  v41[1] = *MEMORY[0x1E69E9840];
  v39 = 0;
  if (!a3)
  {
    v28 = self;
    v34 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, @"invalid parameter not satisfying: %s", v29, v30, v31, v32, v33, "asset != nil"), 0}];
    objc_exception_throw(v34);
  }

  if (!self)
  {
LABEL_20:
    v19 = 0;
    if (!a5)
    {
      goto LABEL_28;
    }

LABEL_27:
    *a5 = v39;
    goto LABEL_28;
  }

  v9 = objc_alloc_init(AVAssetReaderInternal);
  v5->_priv = v9;
  if (!v9)
  {
LABEL_19:

    v5 = 0;
    goto LABEL_20;
  }

  CFRetain(v9);
  v5->_priv->weakReference = [[AVWeakReference alloc] initWithReferencedObject:v5];
  v5->_priv->outputFinishedCallbackInvokers = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5->_priv->asset = a3;
  v5->_priv->outputs = objc_alloc_init(MEMORY[0x1E695DF70]);
  priv = v5->_priv;
  start = **&MEMORY[0x1E6960CC0];
  duration = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&v38, &start, &duration);
  v12 = *&v38.start.epoch;
  v11 = *&v38.duration.timescale;
  *&priv->timeRange.start.value = *&v38.start.value;
  *&priv->timeRange.start.epoch = v12;
  *&priv->timeRange.duration.timescale = v11;
  v5->_priv->status = 0;
  v35.receiver = v5;
  v35.super_class = AVAssetReader;
  v13 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@ status read/write queue", -[AVAssetReader description](&v35, sel_description)), "UTF8String"];
  v5->_priv->statusReadWriteQueue = av_readwrite_dispatch_queue_create(v13);
  v5->_priv->realTime = 0;
  v14 = [a3 _absoluteURL];
  v15 = [(AVAsset *)v5->_priv->asset _requiresInProcessOperation];
  v16 = *MEMORY[0x1E695E4D0];
  if (v15)
  {
    v17 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v17 = *MEMORY[0x1E695E4C0];
  }

  v18 = [MEMORY[0x1E695DF90] dictionaryWithObject:v17 forKey:*MEMORY[0x1E6971338]];
  if (([a3 _hasResourceLoaderDelegate] & 1) != 0 || objc_msgSend(objc_msgSend(a4, "valueForKey:", @"AssetReaderOption_PermitNonLocalURL"), "BOOLValue"))
  {
    [v18 setObject:v16 forKey:*MEMORY[0x1E6971328]];
    goto LABEL_10;
  }

  if (v14 && !FigCFURLIsLocalResource())
  {
    v40 = *MEMORY[0x1E695E618];
    v22 = MEMORY[0x1E696AEC0];
    v23 = objc_opt_class();
    v41[0] = [v22 stringWithFormat:@"Cannot initialize an instance of %@ with an asset at non-local URL '%@'", NSStringFromClass(v23), v14];
    v39 = AVLocalizedError(@"AVFoundationErrorDomain", -11838, [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1]);
    goto LABEL_19;
  }

LABEL_10:
  v19 = [a3 _copyFormatReader];
  if ([a3 statusOfValueForKey:@"formatReader" error:&v39] == 3 || !v19)
  {
    if (v39)
    {
      goto LABEL_26;
    }

    v21 = AVLocalizedError(@"AVFoundationErrorDomain", -11838, 0);
LABEL_25:
    v39 = v21;
LABEL_26:

    v5 = 0;
    if (!a5)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  CFRunLoopGetCurrent();
  if (v15)
  {
    v20 = FigAssetReaderCreateWithURLAndFormatReader();
  }

  else
  {
    v20 = FigAssetReaderRemoteCreateWithURLAndFormatReader();
  }

  if (v20 || (v25 = v5->_priv, !v25->figAssetReader))
  {
    v21 = [AVAssetReader _errorForOSStatus:v20];
    goto LABEL_25;
  }

  CFRetain(v25->weakReference);
  v26 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v26 addListenerWithWeakReference:v5->_priv->weakReference callback:AVAssetReaderHandleServerDiedNotification name:*MEMORY[0x1E69713C8] object:v5->_priv->figAssetReader flags:0];
  [v26 addListenerWithWeakReference:v5->_priv->weakReference callback:AVAssetReaderHandleServerDiedNotification name:*MEMORY[0x1E69628A8] object:v5->_priv->figAssetReader flags:0];
  if (a5)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v19)
  {
    CFRelease(v19);
  }

  return v5;
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {

    [(AVAssetReader *)self _tearDownFigAssetReader];
    v4 = self->_priv;
    statusReadWriteQueue = v4->statusReadWriteQueue;
    if (statusReadWriteQueue)
    {
      dispatch_release(statusReadWriteQueue);
      v4 = self->_priv;
    }

    CFRelease(self->_priv);
  }

  v6.receiver = self;
  v6.super_class = AVAssetReader;
  [(AVAssetReader *)&v6 dealloc];
}

- (void)_tearDownFigAssetReader
{
  if (self->_priv->figAssetReader)
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    [v3 removeListenerWithWeakReference:self->_priv->weakReference callback:AVAssetReaderHandleServerDiedNotification name:*MEMORY[0x1E69713C8] object:self->_priv->figAssetReader];
    [v3 removeListenerWithWeakReference:self->_priv->weakReference callback:AVAssetReaderHandleServerDiedNotification name:*MEMORY[0x1E69628A8] object:self->_priv->figAssetReader];
    FigBaseObject = FigAssetReaderGetFigBaseObject();
    if (FigBaseObject)
    {
      v5 = FigBaseObject;
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v6)
      {
        v6(v5);
      }
    }

    CFRelease(self->_priv->weakReference);
    CFRelease(self->_priv->figAssetReader);
    self->_priv->figAssetReader = 0;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, asset = %@, outputs = %@>", NSStringFromClass(v4), self, -[AVAssetReader asset](self, "asset"), -[AVAssetReader outputs](self, "outputs")];
}

- (AVAssetReaderStatus)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  statusReadWriteQueue = self->_priv->statusReadWriteQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__AVAssetReader_status__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(statusReadWriteQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (id)_errorForOSStatus:(int)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3 == -12785)
  {
    return AVLocalizedError(@"AVFoundationErrorDomain", -11847, 0);
  }

  return AVLocalizedErrorWithUnderlyingOSStatus(a3, 0);
}

- (void)_transitionToStatus:(int64_t)a3 failureError:(id)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  [(AVAssetReader *)self willChangeValueForKey:@"status"];
  [(AVAssetReader *)self willChangeValueForKey:@"error"];
  statusReadWriteQueue = self->_priv->statusReadWriteQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__AVAssetReader__transitionToStatus_failureError___block_invoke;
  v8[3] = &unk_1E7463540;
  v8[4] = self;
  v8[5] = a4;
  v8[6] = &v13;
  v8[7] = &v9;
  v8[8] = a3;
  av_readwrite_dispatch_queue_write(statusReadWriteQueue, v8);
  [(AVAssetReader *)self didChangeValueForKey:@"error"];
  [(AVAssetReader *)self didChangeValueForKey:@"status"];
  if (v14[3] <= 1 && v10[3] >= 2)
  {
    [(AVAssetReader *)self _tearDownFigAssetReader];
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
}

uint64_t __50__AVAssetReader__transitionToStatus_failureError___block_invoke(uint64_t result)
{
  v1 = result;
  *(*(*(result + 48) + 8) + 24) = *(*(*(result + 32) + 8) + 104);
  v2 = *(result + 64);
  v3 = *(*(*(result + 48) + 8) + 24);
  if (v2 != v3 && v3 <= 1)
  {
    v5 = *(*(result + 32) + 8);
    v6 = *(v5 + 120);
    if (v2 != 3 || v3)
    {
      if (v6)
      {
        *(v5 + 104) = 3;
        result = [*(*(*(result + 32) + 8) + 120) copy];
      }

      else
      {
        *(v5 + 104) = v2;
        result = *(result + 32);
        if (*(*(result + 8) + 112))
        {
          goto LABEL_14;
        }

        result = [*(v1 + 40) copyWithZone:{objc_msgSend(result, "zone")}];
      }

      v7 = 112;
    }

    else
    {
      if (v6)
      {
        goto LABEL_14;
      }

      result = [*(result + 40) copy];
      v7 = 120;
    }

    *(*(*(v1 + 32) + 8) + v7) = result;
  }

LABEL_14:
  *(*(*(v1 + 56) + 8) + 24) = *(*(*(v1 + 32) + 8) + 104);
  return result;
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = 0;
  statusReadWriteQueue = self->_priv->statusReadWriteQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__AVAssetReader_error__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(statusReadWriteQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __22__AVAssetReader_error__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 112);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (CMTimeRange)timeRange
{
  v3 = *&self->start.timescale;
  v4 = v3[3];
  *&retstr->start.value = v3[2];
  *&retstr->start.epoch = v4;
  *&retstr->duration.timescale = v3[4];
  return self;
}

- (void)setTimeRange:(CMTimeRange *)timeRange
{
  if ([(AVAssetReader *)self status]>= AVAssetReaderStatusReading)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"cannot be called after reading has started", v6, v7, v8, v9, v10, v15), 0}];
    objc_exception_throw(v14);
  }

  priv = self->_priv;
  v12 = *&timeRange->start.value;
  v13 = *&timeRange->duration.timescale;
  *&priv->timeRange.start.epoch = *&timeRange->start.epoch;
  *&priv->timeRange.duration.timescale = v13;
  *&priv->timeRange.start.value = v12;
}

- (void)_setReadSingleSample:(BOOL)a3
{
  if ([(AVAssetReader *)self status]>= AVAssetReaderStatusReading)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"cannot be called after reading has started", v6, v7, v8, v9, v10, v12), 0}];
    objc_exception_throw(v11);
  }

  self->_priv->readSingleSample = a3;
}

- (BOOL)_canAddOutput:(id)a3 exceptionReason:(id *)a4
{
  v7 = [(NSArray *)[(AVAssetReader *)self outputs] containsObject:a3];
  v8 = [(AVAssetReader *)self status];
  v9 = -[AVAsset isEqual:](-[AVAssetReader asset](self, "asset"), "isEqual:", [a3 _asset]);
  if (a4)
  {
    v10 = @"cannot add an output that has already been added to the receiver";
    if (!v7)
    {
      v10 = 0;
    }

    if (v8 >= AVAssetReaderStatusReading)
    {
      v10 = @"cannot add an output after reading has started";
    }

    if (!v9)
    {
      v10 = @"cannot add an output that has already been added to another AVAssetReader";
    }

    *a4 = v10;
  }

  v11 = v8 < AVAssetReaderStatusReading && v9;
  return v11 && !v7;
}

- (BOOL)canAddOutput:(AVAssetReaderOutput *)output
{
  if (!output)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "output != nil"), 0}];
    objc_exception_throw(v10);
  }

  return [AVAssetReader _canAddOutput:"_canAddOutput:exceptionReason:" exceptionReason:?];
}

- (void)addOutput:(AVAssetReaderOutput *)output
{
  if (!output)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "output != nil");
    goto LABEL_6;
  }

  v22 = 0;
  if (![(AVAssetReader *)self _canAddOutput:output exceptionReason:&v22])
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D930];
    v19 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, v22, v11, v12, v13, v14, v15, v20);
LABEL_6:
    objc_exception_throw([v17 exceptionWithName:v18 reason:v19 userInfo:0]);
  }

  [(AVAssetReaderOutput *)output _attachToWeakReferenceToAssetReader:self->_priv->weakReference];
  [(NSMutableArray *)self->_priv->outputs addObject:output];
  v16 = +[AVKVODispatcher sharedKVODispatcher];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __27__AVAssetReader_addOutput___block_invoke;
  v21[3] = &unk_1E7463568;
  v21[4] = output;
  -[NSMutableSet addObject:](self->_priv->outputFinishedCallbackInvokers, "addObject:", [v16 startObservingValueAtKeyPath:@"finished" ofObject:output options:0 usingBlock:{+[AVObservationBlockFactory observationBlockForWeakObserver:passedToBlock:](AVObservationBlockFactory, "observationBlockForWeakObserver:passedToBlock:", self, v21)}]);
}

- (void)_outputDidFinish:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(AVAssetReader *)self outputs:a3];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = *v11;
  v8 = 1;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v8 &= [*(*(&v10 + 1) + 8 * i) _isFinished];
    }

    v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v6);
  if (v8)
  {
LABEL_9:
    [(AVAssetReader *)self _transitionToStatus:2 failureError:0];
  }
}

- (BOOL)startReading
{
  v34 = *MEMORY[0x1E69E9840];
  v31 = 0;
  if ([(AVAssetReader *)self status]>= AVAssetReaderStatusReading)
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"cannot be called again after reading has already started", v4, v5, v6, v7, v8, v22), 0}];
    objc_exception_throw(v21);
  }

  memset(&v30, 0, sizeof(v30));
  if (self)
  {
    [(AVAssetReader *)self timeRange];
  }

  v9 = [(AVAssetReader *)self outputs];
  if (![(NSArray *)v9 count])
  {
    [(AVAssetReader *)self _transitionToStatus:2 failureError:0];
    return 1;
  }

  [(AVAssetReader *)self _transitionToStatus:1 failureError:0];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (![*(*(&v26 + 1) + 8 * i) _prepareForReadingReturningError:&v31])
        {
          v18 = v31;
          goto LABEL_22;
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v26 objects:v33 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = [(AVAssetReader *)self _readSingleSample];
  figAssetReader = self->_priv->figAssetReader;
  if (v14)
  {
    start = v30.start;
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (!v16)
    {
      goto LABEL_21;
    }

    range.start = start;
    v17 = v16(figAssetReader, &range);
  }

  else
  {
    range = v30;
    CMTimeRangeGetEnd(&v25, &range);
    v22 = *&v30.start.value;
    epoch = v30.start.epoch;
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (!v20)
    {
      goto LABEL_21;
    }

    *&range.start.value = v22;
    range.start.epoch = epoch;
    start = v25;
    v17 = v20(figAssetReader, &range, &start);
  }

  if (v17)
  {
LABEL_21:
    v18 = [AVAssetReader _errorForOSStatus:v22];
    v31 = v18;
LABEL_22:
    [(AVAssetReader *)self _transitionToStatus:3 failureError:v18];
  }

  return [(AVAssetReader *)self status]!= AVAssetReaderStatusFailed;
}

- (void)cancelReading
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(AVAssetReader *)self outputs];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) _cancelReading];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(AVAssetReader *)self _transitionToStatus:4 failureError:0];
}

- (void)_handleServerDiedNotification
{
  v3 = AVLocalizedError(@"AVFoundationErrorDomain", -11819, 0);

  [(AVAssetReader *)self _transitionToStatus:3 failureError:v3];
}

- (void)setPreparesMediaDataForRealTimeConsumption:(BOOL)a3
{
  if ([(AVAssetReader *)self status]>= AVAssetReaderStatusReading)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"cannot be called after reading has started", v6, v7, v8, v9, v10, v17), 0}];
    objc_exception_throw(v16);
  }

  self->_priv->realTime = a3;
  if (self->_priv->realTime)
  {
    v11 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v11 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigAssetReaderGetFigBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v13)
  {
    v14 = *MEMORY[0x1E69713D0];
    v15 = *v11;

    v13(FigBaseObject, v14, v15);
  }
}

- (BOOL)isDefunct
{
  v8 = 0;
  v2 = [(AVAssetReader *)self _figAssetReader];
  v3 = *(CMBaseObjectGetVTable() + 8);
  if (*v3 < 5uLL)
  {
    v5 = 0;
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = v3[11];
    if (v4)
    {
      LOBYTE(v4) = v4(v2, &v8) == 0;
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v5)
  {
    v5 = v6;
  }

  return v5 == 1;
}

@end