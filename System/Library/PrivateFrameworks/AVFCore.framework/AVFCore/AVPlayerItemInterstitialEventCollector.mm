@interface AVPlayerItemInterstitialEventCollector
- (AVPlayerItemInterstitialEventCollector)initWithCoordinatorGenerator:(id)generator;
- (BOOL)_attachToPlayerItem:(id)item;
- (void)_detatchFromPlayerItem;
- (void)_updateTaggedRangeMetadataArray:(id)array;
- (void)dealloc;
@end

@implementation AVPlayerItemInterstitialEventCollector

- (AVPlayerItemInterstitialEventCollector)initWithCoordinatorGenerator:(id)generator
{
  if (!generator)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "obtainCoordinator != nil"), 0}];
    objc_exception_throw(v11);
  }

  v12.receiver = self;
  v12.super_class = AVPlayerItemInterstitialEventCollector;
  v9 = [(AVPlayerItemMediaDataCollector *)&v12 init];
  if (v9)
  {
    v9->_ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avplayeriteminterstitialeventcollector.ivars");
    v9->_obtainCoordinator = _Block_copy(generator);
  }

  return v9;
}

- (void)dealloc
{
  objc_storeWeak(&self->_weakReferenceToPlayerItem, 0);
  ivarAccessQueue = self->_ivarAccessQueue;
  if (ivarAccessQueue)
  {
    dispatch_release(ivarAccessQueue);
  }

  _Block_release(self->_obtainCoordinator);
  v4.receiver = self;
  v4.super_class = AVPlayerItemInterstitialEventCollector;
  [(AVPlayerItemMediaDataCollector *)&v4 dealloc];
}

- (BOOL)_attachToPlayerItem:(id)item
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (!item)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "playerItem != nil"), 0}];
    objc_exception_throw(v11);
  }

  ivarAccessQueue = self->_ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__AVPlayerItemInterstitialEventCollector_AVPlayerItemMediaDataCollector_Internal___attachToPlayerItem___block_invoke;
  v12[3] = &unk_1E7461068;
  v12[5] = item;
  v12[6] = &v13;
  v12[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  v9 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return (v9 & 1) == 0;
}

id __103__AVPlayerItemInterstitialEventCollector_AVPlayerItemMediaDataCollector_Internal___attachToPlayerItem___block_invoke(void *a1)
{
  result = objc_loadWeak((a1[4] + 32));
  *(*(a1[6] + 8) + 24) = result != 0;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v3 = a1[5];
    v4 = (a1[4] + 32);

    return objc_storeWeak(v4, v3);
  }

  return result;
}

- (void)_detatchFromPlayerItem
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __105__AVPlayerItemInterstitialEventCollector_AVPlayerItemMediaDataCollector_Internal___detatchFromPlayerItem__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v3);
}

- (void)_updateTaggedRangeMetadataArray:(id)array
{
  if ([array count])
  {
    objc_loadWeak(&self->_weakReferenceToPlayerItem);
    FigPlayerInterstitialEventsCreateFromTaggedRangeMetadata();
    FigPlayerInterstitialPreloadsCreateFromTaggedRangeMetadata();
  }
}

@end