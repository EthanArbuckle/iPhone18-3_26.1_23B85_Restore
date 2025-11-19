@interface AVCoordinatedPlaybackSuspension
- (AVCoordinatedPlaybackSuspension)initWithCoordinator:(id)a3 reason:(id)a4;
- (OpaqueFigTimelineCoordinatorSuspension)_figSuspension;
- (void)_removeSuspension;
- (void)dealloc;
- (void)end;
- (void)endProposingNewTime:(CMTime *)time;
@end

@implementation AVCoordinatedPlaybackSuspension

- (AVCoordinatedPlaybackSuspension)initWithCoordinator:(id)a3 reason:(id)a4
{
  v8.receiver = self;
  v8.super_class = AVCoordinatedPlaybackSuspension;
  v6 = [(AVCoordinatedPlaybackSuspension *)&v8 init];
  if (v6)
  {
    if (!a4)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot initialize AVCoordinatedPlaybackSuspension with nil reason." userInfo:0]);
    }

    v6->_reason = [a4 copy];
    v6->_coordinator = a3;
    v6->_beginDate = objc_alloc_init(MEMORY[0x1E695DF00]);
    v6->_interstitialSuspension = 0;
    AVPlaybackCoordinatorFigSuspensionReasonForAVFReason(a4);
    if (FigTimelineCoordinatorSuspensionCreate() || !v6->_figSuspension)
    {

      return 0;
    }

    else
    {
      v6->_iVarMutex = FigSimpleMutexCreate();
    }
  }

  return v6;
}

- (void)dealloc
{
  if (self->_figSuspension)
  {
    [(AVPlaybackCoordinator *)self->_coordinator _endSuspension:?];
  }

  FigSimpleMutexDestroy();
  figSuspension = self->_figSuspension;
  if (figSuspension)
  {
    CFRelease(figSuspension);
  }

  v4.receiver = self;
  v4.super_class = AVCoordinatedPlaybackSuspension;
  [(AVCoordinatedPlaybackSuspension *)&v4 dealloc];
}

- (OpaqueFigTimelineCoordinatorSuspension)_figSuspension
{
  FigSimpleMutexLock();
  figSuspension = self->_figSuspension;
  FigSimpleMutexUnlock();
  return figSuspension;
}

- (void)end
{
  FigSimpleMutexLock();
  figSuspension = self->_figSuspension;
  self->_figSuspension = 0;
  FigSimpleMutexUnlock();
  if (figSuspension)
  {
    [(AVPlaybackCoordinator *)self->_coordinator _endSuspension:figSuspension];
    CFRelease(figSuspension);
  }

  interstitialSuspension = self->_interstitialSuspension;
  if (interstitialSuspension)
  {

    [(AVCoordinatedPlaybackSuspension *)interstitialSuspension end];
  }
}

- (void)endProposingNewTime:(CMTime *)time
{
  FigSimpleMutexLock();
  figSuspension = self->_figSuspension;
  self->_figSuspension = 0;
  FigSimpleMutexUnlock();
  if (figSuspension)
  {
    coordinator = self->_coordinator;
    v8 = *&time->value;
    epoch = time->epoch;
    [(AVPlaybackCoordinator *)coordinator _endSuspension:figSuspension proposingNewTime:&v8];
    CFRelease(figSuspension);
  }

  interstitialSuspension = self->_interstitialSuspension;
  if (interstitialSuspension)
  {
    v8 = *&time->value;
    epoch = time->epoch;
    [(AVCoordinatedPlaybackSuspension *)interstitialSuspension endProposingNewTime:&v8];
  }
}

- (void)_removeSuspension
{
  FigSimpleMutexLock();
  figSuspension = self->_figSuspension;
  self->_figSuspension = 0;
  FigSimpleMutexUnlock();
  if (figSuspension)
  {
    [(AVPlaybackCoordinator *)self->_coordinator _removeSuspension:figSuspension];
    CFRelease(figSuspension);
  }

  interstitialSuspension = self->_interstitialSuspension;
  if (interstitialSuspension)
  {

    [(AVCoordinatedPlaybackSuspension *)interstitialSuspension _removeSuspension];
  }
}

@end