@interface AVPlayerItemSampleBufferOutput
- (AVPlayerItemSampleBufferOutput)initWithConfiguration:(id)configuration;
- (opaqueCMSampleBuffer)copyNextSampleBufferForTrackID:(int)d flags:(unsigned int *)flags;
- (void)_addFigPlaybackItemListeners;
- (void)_attachToPlayerItemTrack:(id)track figPlaybackItem:(OpaqueFigPlaybackItem *)item;
- (void)_detachFromPlayerItemTrack;
- (void)_figPlaybackItemTrackOutputSequenceWasFlushedForTrackID:(int)d extractionID:(int)iD;
- (void)_figPlaybackItemTrackSampleBufferDidBecomeAvailableForTrackID:(int)d extractionID:(int)iD;
- (void)_removeFigPlaybackItemListeners;
- (void)_setFigPlaybackItem:(OpaqueFigPlaybackItem *)item;
- (void)dealloc;
- (void)setDelegate:(id)delegate queue:(id)queue;
@end

@implementation AVPlayerItemSampleBufferOutput

- (AVPlayerItemSampleBufferOutput)initWithConfiguration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = AVPlayerItemSampleBufferOutput;
  v4 = [(AVPlayerItemOutput *)&v7 init];
  if (v4)
  {
    v4->_stateQueue = dispatch_queue_create("AVPlayerItemSampleBufferOutput state", 0);
    v4->_weakReference = [[AVWeakReference alloc] initWithReferencedObject:v4];
    v4->_delegateStorage = objc_alloc_init(AVWeakReferencingDelegateStorage);
    [configuration advanceIntervalForDataAvailability];
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
    _weakReference = [(AVPlayerItemSampleBufferOutput *)self _weakReference];
    CFRetain(_weakReference);
    [v3 addListenerWithWeakReference:_weakReference callback:figPlaybackItemTrackSampleBufferDidBecomeAvailable name:*MEMORY[0x1E69725A0] object:self->_figPlaybackItem flags:0];
    v5 = *MEMORY[0x1E6972598];
    figPlaybackItem = self->_figPlaybackItem;

    [v3 addListenerWithWeakReference:_weakReference callback:figPlaybackItemTrackResetSampleBufferExtraction name:v5 object:figPlaybackItem flags:0];
  }
}

- (void)_removeFigPlaybackItemListeners
{
  if (self->_figPlaybackItem)
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    _weakReference = [(AVPlayerItemSampleBufferOutput *)self _weakReference];
    [v3 removeListenerWithWeakReference:_weakReference callback:figPlaybackItemTrackSampleBufferDidBecomeAvailable name:*MEMORY[0x1E69725A0] object:self->_figPlaybackItem];
    [v3 removeListenerWithWeakReference:_weakReference callback:figPlaybackItemTrackResetSampleBufferExtraction name:*MEMORY[0x1E6972598] object:self->_figPlaybackItem];
    weakReference = self->_weakReference;

    CFRelease(weakReference);
  }
}

- (void)_setFigPlaybackItem:(OpaqueFigPlaybackItem *)item
{
  figPlaybackItem = self->_figPlaybackItem;
  if (figPlaybackItem != item)
  {
    if (figPlaybackItem)
    {
      [(AVPlayerItemSampleBufferOutput *)self _removeFigPlaybackItemListeners];
      CFRelease(self->_figPlaybackItem);
    }

    if (item)
    {
      v6 = CFRetain(item);
    }

    else
    {
      v6 = 0;
    }

    self->_figPlaybackItem = v6;

    [(AVPlayerItemSampleBufferOutput *)self _addFigPlaybackItemListeners];
  }
}

- (opaqueCMSampleBuffer)copyNextSampleBufferForTrackID:(int)d flags:(unsigned int *)flags
{
  if (self->_trackID != d)
  {
    return 0;
  }

  v13[5] = v4;
  v13[6] = v5;
  v13[0] = 0;
  _figPlaybackItem = [(AVPlayerItemSampleBufferOutput *)self _figPlaybackItem];
  _trackID = [(AVPlayerItemSampleBufferOutput *)self _trackID];
  _extractionID = [(AVPlayerItemSampleBufferOutput *)self _extractionID];
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (v11)
  {
    v11(_figPlaybackItem, _trackID, _extractionID, v13);
  }

  if (flags)
  {
    *flags = 0;
  }

  return v13[0];
}

- (void)_figPlaybackItemTrackSampleBufferDidBecomeAvailableForTrackID:(int)d extractionID:(int)iD
{
  v7 = objc_autoreleasePoolPush();
  if (*&self->_trackID == __PAIR64__(iD, d))
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

- (void)_figPlaybackItemTrackOutputSequenceWasFlushedForTrackID:(int)d extractionID:(int)iD
{
  if (self->_trackID == d && self->_extractionID == iD)
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

- (void)setDelegate:(id)delegate queue:(id)queue
{
  if (queue)
  {
    v8 = 1;
  }

  else
  {
    v8 = delegate == 0;
  }

  if (!v8)
  {
    queue = MEMORY[0x1E69E96A0];
  }

  if (delegate)
  {
    if (!queue)
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D940];
      v11 = "newDelegateQueue != NULL";
      goto LABEL_14;
    }
  }

  else if (queue)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = "newDelegateQueue == NULL";
LABEL_14:
    v13 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", queue, v4, v5, v6, v7, v11), 0}];
    objc_exception_throw(v13);
  }

  delegateStorage = self->_delegateStorage;

  [AVWeakReferencingDelegateStorage setDelegate:"setDelegate:queue:" queue:?];
}

- (void)_attachToPlayerItemTrack:(id)track figPlaybackItem:(OpaqueFigPlaybackItem *)item
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__AVPlayerItemSampleBufferOutput_AVPlayerItemSampleBufferOutput_Internal___attachToPlayerItemTrack_figPlaybackItem___block_invoke;
  block[3] = &unk_1E7460FF0;
  block[4] = self;
  block[5] = track;
  block[6] = item;
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