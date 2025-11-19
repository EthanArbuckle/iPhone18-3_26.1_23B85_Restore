@interface AVPlayerItemSampleBufferOutput
- (AVPlayerItemSampleBufferOutput)initWithConfiguration:(id)a3;
- (opaqueCMSampleBuffer)copyNextSampleBufferForTrackID:(int)a3 flags:(unsigned int *)a4;
- (void)_addFigPlaybackItemListeners;
- (void)_attachToPlayerItemTrack:(id)a3 figPlaybackItem:(OpaqueFigPlaybackItem *)a4;
- (void)_detachFromPlayerItemTrack;
- (void)_figPlaybackItemTrackOutputSequenceWasFlushedForTrackID:(int)a3 extractionID:(int)a4;
- (void)_figPlaybackItemTrackSampleBufferDidBecomeAvailableForTrackID:(int)a3 extractionID:(int)a4;
- (void)_removeFigPlaybackItemListeners;
- (void)_setFigPlaybackItem:(OpaqueFigPlaybackItem *)a3;
- (void)dealloc;
- (void)setDelegate:(id)a3 queue:(id)a4;
@end

@implementation AVPlayerItemSampleBufferOutput

- (AVPlayerItemSampleBufferOutput)initWithConfiguration:(id)a3
{
  v7.receiver = self;
  v7.super_class = AVPlayerItemSampleBufferOutput;
  v4 = [(AVPlayerItemOutput *)&v7 init];
  if (v4)
  {
    v4->_stateQueue = dispatch_queue_create("AVPlayerItemSampleBufferOutput state", 0);
    v4->_weakReference = [[AVWeakReference alloc] initWithReferencedObject:v4];
    v4->_delegateStorage = objc_alloc_init(AVWeakReferencingDelegateStorage);
    [a3 advanceIntervalForDataAvailability];
    v4->_advanceInterval = v5;
  }

  return v4;
}

- (void)dealloc
{
  if (self->_figPlaybackItem)
  {
    [(AVPlayerItemSampleBufferOutput *)self _removeFigPlaybackItemListeners];
    CFRelease(self->_figPlaybackItem);
  }

  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
  }

  v4.receiver = self;
  v4.super_class = AVPlayerItemSampleBufferOutput;
  [(AVPlayerItemOutput *)&v4 dealloc];
}

- (void)_addFigPlaybackItemListeners
{
  if (self->_figPlaybackItem)
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v4 = [(AVPlayerItemSampleBufferOutput *)self _weakReference];
    CFRetain(v4);
    [v3 addListenerWithWeakReference:v4 callback:figPlaybackItemTrackSampleBufferDidBecomeAvailable name:*MEMORY[0x1E69725A0] object:self->_figPlaybackItem flags:0];
    v5 = *MEMORY[0x1E6972598];
    figPlaybackItem = self->_figPlaybackItem;

    [v3 addListenerWithWeakReference:v4 callback:figPlaybackItemTrackResetSampleBufferExtraction name:v5 object:figPlaybackItem flags:0];
  }
}

- (void)_removeFigPlaybackItemListeners
{
  if (self->_figPlaybackItem)
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v4 = [(AVPlayerItemSampleBufferOutput *)self _weakReference];
    [v3 removeListenerWithWeakReference:v4 callback:figPlaybackItemTrackSampleBufferDidBecomeAvailable name:*MEMORY[0x1E69725A0] object:self->_figPlaybackItem];
    [v3 removeListenerWithWeakReference:v4 callback:figPlaybackItemTrackResetSampleBufferExtraction name:*MEMORY[0x1E6972598] object:self->_figPlaybackItem];
    weakReference = self->_weakReference;

    CFRelease(weakReference);
  }
}

- (void)_setFigPlaybackItem:(OpaqueFigPlaybackItem *)a3
{
  figPlaybackItem = self->_figPlaybackItem;
  if (figPlaybackItem != a3)
  {
    if (figPlaybackItem)
    {
      [(AVPlayerItemSampleBufferOutput *)self _removeFigPlaybackItemListeners];
      CFRelease(self->_figPlaybackItem);
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->_figPlaybackItem = v6;

    [(AVPlayerItemSampleBufferOutput *)self _addFigPlaybackItemListeners];
  }
}

- (opaqueCMSampleBuffer)copyNextSampleBufferForTrackID:(int)a3 flags:(unsigned int *)a4
{
  if (self->_trackID != a3)
  {
    return 0;
  }

  v13[5] = v4;
  v13[6] = v5;
  v13[0] = 0;
  v8 = [(AVPlayerItemSampleBufferOutput *)self _figPlaybackItem];
  v9 = [(AVPlayerItemSampleBufferOutput *)self _trackID];
  v10 = [(AVPlayerItemSampleBufferOutput *)self _extractionID];
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (v11)
  {
    v11(v8, v9, v10, v13);
  }

  if (a4)
  {
    *a4 = 0;
  }

  return v13[0];
}

- (void)_figPlaybackItemTrackSampleBufferDidBecomeAvailableForTrackID:(int)a3 extractionID:(int)a4
{
  v7 = objc_autoreleasePoolPush();
  if (*&self->_trackID == __PAIR64__(a4, a3))
  {
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __109__AVPlayerItemSampleBufferOutput__figPlaybackItemTrackSampleBufferDidBecomeAvailableForTrackID_extractionID___block_invoke;
    block[3] = &unk_1E7460C00;
    block[4] = self;
    dispatch_sync(stateQueue, block);
  }

  objc_autoreleasePoolPop(v7);
}

uint64_t __109__AVPlayerItemSampleBufferOutput__figPlaybackItemTrackSampleBufferDidBecomeAvailableForTrackID_extractionID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __109__AVPlayerItemSampleBufferOutput__figPlaybackItemTrackSampleBufferDidBecomeAvailableForTrackID_extractionID___block_invoke_2;
  v4[3] = &unk_1E7463C50;
  v4[4] = v1;
  return [v2 invokeDelegateCallbackWithBlock:v4];
}

uint64_t __109__AVPlayerItemSampleBufferOutput__figPlaybackItemTrackSampleBufferDidBecomeAvailableForTrackID_extractionID___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {

      return [a2 outputMediaDataAvailable:? trackID:?];
    }
  }

  return result;
}

- (void)_figPlaybackItemTrackOutputSequenceWasFlushedForTrackID:(int)a3 extractionID:(int)a4
{
  if (self->_trackID == a3 && self->_extractionID == a4)
  {
    block[5] = v4;
    block[6] = v5;
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__AVPlayerItemSampleBufferOutput__figPlaybackItemTrackOutputSequenceWasFlushedForTrackID_extractionID___block_invoke;
    block[3] = &unk_1E7460C00;
    block[4] = self;
    dispatch_sync(stateQueue, block);
  }
}

uint64_t __103__AVPlayerItemSampleBufferOutput__figPlaybackItemTrackOutputSequenceWasFlushedForTrackID_extractionID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __103__AVPlayerItemSampleBufferOutput__figPlaybackItemTrackOutputSequenceWasFlushedForTrackID_extractionID___block_invoke_2;
  v4[3] = &unk_1E7463C50;
  v4[4] = v1;
  return [v2 invokeDelegateCallbackWithBlock:v4];
}

uint64_t __103__AVPlayerItemSampleBufferOutput__figPlaybackItemTrackOutputSequenceWasFlushedForTrackID_extractionID___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {

      return [a2 outputSequenceWasFlushed:? trackID:?];
    }
  }

  return result;
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  if (a4)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3 == 0;
  }

  if (!v8)
  {
    a4 = MEMORY[0x1E69E96A0];
  }

  if (a3)
  {
    if (!a4)
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D940];
      v11 = "newDelegateQueue != NULL";
      goto LABEL_14;
    }
  }

  else if (a4)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = "newDelegateQueue == NULL";
LABEL_14:
    v13 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", a4, v4, v5, v6, v7, v11), 0}];
    objc_exception_throw(v13);
  }

  delegateStorage = self->_delegateStorage;

  [AVWeakReferencingDelegateStorage setDelegate:"setDelegate:queue:" queue:?];
}

- (void)_attachToPlayerItemTrack:(id)a3 figPlaybackItem:(OpaqueFigPlaybackItem *)a4
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__AVPlayerItemSampleBufferOutput_AVPlayerItemSampleBufferOutput_Internal___attachToPlayerItemTrack_figPlaybackItem___block_invoke;
  block[3] = &unk_1E7460FF0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(stateQueue, block);
}

uint64_t __116__AVPlayerItemSampleBufferOutput_AVPlayerItemSampleBufferOutput_Internal___attachToPlayerItemTrack_figPlaybackItem___block_invoke(void *a1)
{
  *(a1[4] + 32) = [[AVWeakReference alloc] initWithReferencedObject:a1[5]];
  v2 = a1[4];
  v3 = a1[6];

  return [v2 _setFigPlaybackItem:v3];
}

- (void)_detachFromPlayerItemTrack
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__AVPlayerItemSampleBufferOutput_AVPlayerItemSampleBufferOutput_Internal___detachFromPlayerItemTrack__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

uint64_t __101__AVPlayerItemSampleBufferOutput_AVPlayerItemSampleBufferOutput_Internal___detachFromPlayerItemTrack__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 0;
  v2 = *(a1 + 32);

  return [v2 _setFigPlaybackItem:0];
}

@end