@interface ARFaceTrackingInternalTechnique
- (ARFaceTrackingInternalTechnique)initWithMaximumNumberOfTrackedFaces:(int64_t)a3 options:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)processData:(id)a3;
- (id)resultDataClasses;
- (void)_enqueueImageForFaceTrackingNonBlocking:(id)a3;
- (void)_processImageDataInBackgound:(id)a3;
- (void)prepare:(BOOL)a3;
@end

@implementation ARFaceTrackingInternalTechnique

- (ARFaceTrackingInternalTechnique)initWithMaximumNumberOfTrackedFaces:(int64_t)a3 options:(id)a4
{
  v6 = a4;
  if (+[ARFaceTrackingManager isSupported])
  {
    v17.receiver = self;
    v17.super_class = ARFaceTrackingInternalTechnique;
    v7 = [(ARImageBasedTechnique *)&v17 init];
    v8 = v7;
    if (v7)
    {
      v7->_maximumNumberOfTrackedFaces = a3;
      v9 = [[ARFaceTrackingManager alloc] initWithMaximumNumberOfTrackedFaces:a3 options:v6];
      faceTrackingManger = v8->_faceTrackingManger;
      v8->_faceTrackingManger = v9;

      if (!v8->_faceTrackingManger)
      {
        v15 = 0;
        self = v8;
        goto LABEL_7;
      }

      v11 = ARCreateNonFixedPriorityDispatchQueue("com.apple.arkit.technique.faceTracking");
      processDataQueue = v8->_processDataQueue;
      v8->_processDataQueue = v11;

      v13 = dispatch_semaphore_create(1);
      detectionSemaphore = v8->_detectionSemaphore;
      v8->_detectionSemaphore = v13;
    }

    self = v8;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

LABEL_7:

  return v15;
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)processData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = ARFaceTrackingInternalTechnique;
    v5 = [(ARImageBasedTechnique *)&v7 processData:v4];
    [(ARFaceTrackingInternalTechnique *)self _enqueueImageForFaceTrackingNonBlocking:v4];
    if (self->_deterministicMode)
    {
      dispatch_sync(self->_processDataQueue, &__block_literal_global_15);
    }
  }

  return v4;
}

- (void)_enqueueImageForFaceTrackingNonBlocking:(id)a3
{
  v4 = a3;
  v5 = self->_detectionSemaphore;
  if (!dispatch_semaphore_wait(v5, 0))
  {
    objc_initWeak(&location, self);
    processDataQueue = self->_processDataQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__ARFaceTrackingInternalTechnique__enqueueImageForFaceTrackingNonBlocking___block_invoke;
    v7[3] = &unk_1E817C350;
    objc_copyWeak(&v10, &location);
    v8 = v4;
    v9 = v5;
    dispatch_async(processDataQueue, v7);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

intptr_t __75__ARFaceTrackingInternalTechnique__enqueueImageForFaceTrackingNonBlocking___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _processImageDataInBackgound:*(a1 + 32)];

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

- (void)_processImageDataInBackgound:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_processDataQueue);
  v5 = [(ARFaceTrackingManager *)self->_faceTrackingManger processData:v4];
  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v4 timestamp];
  [(ARImageBasedTechnique *)self pushResultData:v6 forTimestamp:?];
}

- (void)prepare:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ARFaceTrackingInternalTechnique;
  [(ARTechnique *)&v5 prepare:?];
  self->_deterministicMode = a3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ARFaceTrackingInternalTechnique;
  if ([(ARTechnique *)&v9 isEqual:v4])
  {
    v5 = v4;
    v6 = [(ARFaceTrackingInternalTechnique *)self maximumNumberOfTrackedFaces];
    v7 = v6 == [v5 maximumNumberOfTrackedFaces];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end