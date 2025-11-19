@interface AVCapturePhotoOutputReadinessCoordinator
+ (BOOL)_isOverlappingCaptureSupportedForPhotoSettings:(id)a3 autoDeferredPhotoDeliveryEnabled:(BOOL)a4 responsiveCaptureEnabled:(BOOL)a5;
+ (int64_t)_captureReadinessFromReadinessState:(AVCapturePhotoOutputCaptureReadinessState *)a3;
- (AVCapturePhotoOutputReadinessCoordinator)initWithPhotoOutput:(AVCapturePhotoOutput *)photoOutput;
- (void)_invokeDelegateCallbackWithBlock:(id)a3;
- (void)_photoOutputDidUpdateCaptureReadinessState:(AVCapturePhotoOutputCaptureReadinessState *)a3;
- (void)_setDelegate:(id)a3 queue:(id)a4;
- (void)_updateCaptureReadinessWithDelegate:(id)a3;
- (void)dealloc;
- (void)startTrackingCaptureRequestUsingPhotoSettings:(AVCapturePhotoSettings *)settings;
- (void)stopTrackingCaptureRequestUsingPhotoSettingsUniqueID:(int64_t)settingsUniqueID;
@end

@implementation AVCapturePhotoOutputReadinessCoordinator

- (AVCapturePhotoOutputReadinessCoordinator)initWithPhotoOutput:(AVCapturePhotoOutput *)photoOutput
{
  if (photoOutput)
  {
    v6.receiver = self;
    v6.super_class = AVCapturePhotoOutputReadinessCoordinator;
    v4 = [(AVCapturePhotoOutputReadinessCoordinator *)&v6 init];
    if (v4)
    {
      v4->_delegateStorage = objc_alloc_init(MEMORY[0x1E69881A0]);
      v4->_trackedPhotoSettingsArray = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(AVCapturePhotoOutput *)photoOutput _addReadinessCoordinator:v4];
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCapturePhotoOutputReadinessCoordinator;
  [(AVCapturePhotoOutputReadinessCoordinator *)&v3 dealloc];
}

- (void)startTrackingCaptureRequestUsingPhotoSettings:(AVCapturePhotoSettings *)settings
{
  v8 = 0;
  if (po_photoSettingsAreValid(settings, 0, 0, 0, &v8))
  {
    v5 = [(AVCapturePhotoSettings *)settings copy];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __90__AVCapturePhotoOutputReadinessCoordinator_startTrackingCaptureRequestUsingPhotoSettings___block_invoke;
    v7[3] = &unk_1E7876268;
    v7[4] = self;
    v7[5] = v5;
    [(AVCapturePhotoOutputReadinessCoordinator *)self _invokeDelegateCallbackWithBlock:v7];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

uint64_t __90__AVCapturePhotoOutputReadinessCoordinator_startTrackingCaptureRequestUsingPhotoSettings___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 64) addObject:*(a1 + 40)];
  v4 = *(a1 + 32);

  return [v4 _updateCaptureReadinessWithDelegate:a2];
}

- (void)stopTrackingCaptureRequestUsingPhotoSettingsUniqueID:(int64_t)settingsUniqueID
{
  if (settingsUniqueID <= 0)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __97__AVCapturePhotoOutputReadinessCoordinator_stopTrackingCaptureRequestUsingPhotoSettingsUniqueID___block_invoke;
    v4[3] = &unk_1E78762B0;
    v4[4] = self;
    v4[5] = settingsUniqueID;
    [(AVCapturePhotoOutputReadinessCoordinator *)self _invokeDelegateCallbackWithBlock:v4];
  }
}

uint64_t __97__AVCapturePhotoOutputReadinessCoordinator_stopTrackingCaptureRequestUsingPhotoSettingsUniqueID___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__AVCapturePhotoOutputReadinessCoordinator_stopTrackingCaptureRequestUsingPhotoSettingsUniqueID___block_invoke_2;
  v7[3] = &__block_descriptor_40_e39_B32__0__AVCapturePhotoSettings_8Q16_B24l;
  v7[4] = *(a1 + 40);
  v5 = [v4 indexesOfObjectsPassingTest:v7];
  result = [v5 count];
  if (result)
  {
    [*(*(a1 + 32) + 64) removeObjectsAtIndexes:v5];
    return [*(a1 + 32) _updateCaptureReadinessWithDelegate:a2];
  }

  return result;
}

- (void)_setDelegate:(id)a3 queue:(id)a4
{
  delegateStorage = self->_delegateStorage;
  if (a3)
  {
    v8 = [(AVWeakReferencingDelegateStorage *)delegateStorage delegate];
    [(AVWeakReferencingDelegateStorage *)self->_delegateStorage setDelegate:a3 queue:a4];
    if (v8 != a3)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __63__AVCapturePhotoOutputReadinessCoordinator__setDelegate_queue___block_invoke;
      v9[3] = &unk_1E78762D8;
      v9[4] = self;
      [(AVCapturePhotoOutputReadinessCoordinator *)self _invokeDelegateCallbackWithBlock:v9];
    }
  }

  else
  {

    [AVWeakReferencingDelegateStorage setDelegate:"setDelegate:queue:" queue:?];
  }
}

uint64_t __63__AVCapturePhotoOutputReadinessCoordinator__setDelegate_queue___block_invoke(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [a2 readinessCoordinator:? captureReadinessDidChange:?];
  }

  return result;
}

- (void)_photoOutputDidUpdateCaptureReadinessState:(AVCapturePhotoOutputCaptureReadinessState *)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v3 = *&a3->inflightNonOverlappingCaptureUniqueID;
  v5 = *&a3->sessionIsRunning;
  v4[2] = __87__AVCapturePhotoOutputReadinessCoordinator__photoOutputDidUpdateCaptureReadinessState___block_invoke;
  v4[3] = &unk_1E7876320;
  v4[4] = self;
  v6 = v3;
  inflightUniqueIDWaitingForProcessing = a3->inflightUniqueIDWaitingForProcessing;
  [(AVCapturePhotoOutputReadinessCoordinator *)self _invokeDelegateCallbackWithBlock:v4];
}

uint64_t __87__AVCapturePhotoOutputReadinessCoordinator__photoOutputDidUpdateCaptureReadinessState___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *(v4 + 56) = *(a1 + 72);
  *(v4 + 40) = v6;
  *(v4 + 24) = v5;
  v7 = *(*(a1 + 32) + 64);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__AVCapturePhotoOutputReadinessCoordinator__photoOutputDidUpdateCaptureReadinessState___block_invoke_2;
  v11[3] = &__block_descriptor_72_e39_B32__0__AVCapturePhotoSettings_8Q16_B24l;
  v8 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v8;
  v14 = *(a1 + 72);
  v9 = [v7 indexesOfObjectsPassingTest:v11];
  if ([v9 count])
  {
    [*(*(a1 + 32) + 64) removeObjectsAtIndexes:v9];
  }

  return [*(a1 + 32) _updateCaptureReadinessWithDelegate:a2];
}

+ (int64_t)_captureReadinessFromReadinessState:(AVCapturePhotoOutputCaptureReadinessState *)a3
{
  if (a3->sessionIsRunning)
  {
    numberOfPhotoCapturesInflight = a3->numberOfPhotoCapturesInflight;
    v4 = 1;
    if (numberOfPhotoCapturesInflight > 1)
    {
      v4 = 2;
    }

    if (a3->inflightNonOverlappingCaptureUniqueID < 1 || numberOfPhotoCapturesInflight <= 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    numberOfPhotoCapturesInflight = a3->numberOfPhotoCapturesInflight;
    v6 = 2 * (numberOfPhotoCapturesInflight > 0);
  }

  if (a3->inflightUniqueIDWaitingForCapture >= 1 && numberOfPhotoCapturesInflight > 0)
  {
    return 3;
  }

  if (numberOfPhotoCapturesInflight <= 0 || a3->inflightUniqueIDWaitingForProcessing <= 0)
  {
    return v6;
  }

  else
  {
    return 4;
  }
}

+ (BOOL)_isOverlappingCaptureSupportedForPhotoSettings:(id)a3 autoDeferredPhotoDeliveryEnabled:(BOOL)a4 responsiveCaptureEnabled:(BOOL)a5
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 digitalFlashMode] > 0 || objc_msgSend(a3, "flashMode") == 1)
  {
    return 0;
  }

  v9 = [a3 maxPhotoDimensions];
  v10 = ([a3 maxPhotoDimensions] >> 32) * v9;
  result = v10 < 48000000;
  if (!a4 && !a5 && v10 <= 47999999)
  {
    return [a3 photoQualityPrioritization] != 3;
  }

  return result;
}

- (void)_invokeDelegateCallbackWithBlock:(id)a3
{
  if (pthread_main_np())
  {
    v5 = MEMORY[0x1E69E96A0];
  }

  else
  {
    v5 = 0;
  }

  delegateStorage = self->_delegateStorage;

  [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:a3 synchronouslyIfDelegateQueueIsQueue:v5];
}

- (void)_updateCaptureReadinessWithDelegate:(id)a3
{
  autoDeferredPhotoDeliveryEnabled = self->_captureReadinessState.autoDeferredPhotoDeliveryEnabled;
  responsiveCaptureEnabled = self->_captureReadinessState.responsiveCaptureEnabled;
  v20 = *(&self->_captureReadinessState.responsiveCaptureEnabled + 1);
  sessionIsRunning = self->_captureReadinessState.sessionIsRunning;
  numberOfPhotoCapturesInflight = self->_captureReadinessState.numberOfPhotoCapturesInflight;
  inflightNonOverlappingCaptureUniqueID = self->_captureReadinessState.inflightNonOverlappingCaptureUniqueID;
  latestCaptureUniqueID = self->_captureReadinessState.latestCaptureUniqueID;
  v8 = *&self->_captureReadinessState.inflightUniqueIDWaitingForCapture;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = v8;
  trackedPhotoSettingsArray = self->_trackedPhotoSettingsArray;
  v10 = [(NSMutableArray *)trackedPhotoSettingsArray countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(trackedPhotoSettingsArray);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if (([objc_opt_class() _isOverlappingCaptureSupportedForPhotoSettings:v14 autoDeferredPhotoDeliveryEnabled:autoDeferredPhotoDeliveryEnabled responsiveCaptureEnabled:responsiveCaptureEnabled] & 1) == 0)
        {
          inflightNonOverlappingCaptureUniqueID = [v14 uniqueID];
        }
      }

      numberOfPhotoCapturesInflight += v11;
      v11 = [(NSMutableArray *)trackedPhotoSettingsArray countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v11);
  }

  v15 = objc_opt_class();
  v22[0] = sessionIsRunning;
  v22[1] = autoDeferredPhotoDeliveryEnabled;
  v22[2] = responsiveCaptureEnabled;
  v22[3] = v20;
  v23 = numberOfPhotoCapturesInflight;
  v24 = latestCaptureUniqueID;
  v25 = inflightNonOverlappingCaptureUniqueID;
  v26 = v32;
  v16 = [v15 _captureReadinessFromReadinessState:v22];
  if (v16 != self->_captureReadiness)
  {
    v17 = v16;
    [(AVCapturePhotoOutputReadinessCoordinator *)self willChangeValueForKey:@"captureReadiness"];
    self->_captureReadiness = v17;
    [(AVCapturePhotoOutputReadinessCoordinator *)self didChangeValueForKey:@"captureReadiness"];
    if (objc_opt_respondsToSelector())
    {
      [a3 readinessCoordinator:self captureReadinessDidChange:v17];
    }
  }
}

@end