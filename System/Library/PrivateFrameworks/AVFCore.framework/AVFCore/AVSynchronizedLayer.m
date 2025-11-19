@interface AVSynchronizedLayer
+ (AVSynchronizedLayer)synchronizedLayerWithPlayerItem:(AVPlayerItem *)playerItem;
+ (void)initialize;
- (AVPlayerItem)playerItem;
- (AVSynchronizedLayer)init;
- (BOOL)_isVisible;
- (id)_popAllOldPlayerItems;
- (void)_removeSelfFromPlayerItem:(id)a3;
- (void)_updatePlayerItemState;
- (void)dealloc;
- (void)layerDidBecomeVisible:(BOOL)a3;
- (void)setPlayerItem:(AVPlayerItem *)playerItem;
@end

@implementation AVSynchronizedLayer

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

+ (AVSynchronizedLayer)synchronizedLayerWithPlayerItem:(AVPlayerItem *)playerItem
{
  v4 = objc_alloc_init(AVSynchronizedLayer);
  [(AVSynchronizedLayer *)v4 setPlayerItem:playerItem];
  return v4;
}

- (AVSynchronizedLayer)init
{
  v6.receiver = self;
  v6.super_class = AVSynchronizedLayer;
  v2 = [(AVSynchronizedLayer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVSynchronizedLayerInternal);
    v2->_syncLayer = v3;
    if (v3)
    {
      CFRetain(v3);
      v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v2->_syncLayer->serialQueue = dispatch_queue_create("AVSynchronizedLayerQueue", v4);
      v2->_syncLayer->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avsynchronizedlayer.ivars");
      v2->_syncLayer->oldPlayerItems = [MEMORY[0x1E695DFA8] set];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (AVPlayerItem)playerItem
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__15;
  syncLayer = self->_syncLayer;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  ivarAccessQueue = syncLayer->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__AVSynchronizedLayer_playerItem__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __33__AVSynchronizedLayer_playerItem__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 48) + 24);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)_isVisible
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  syncLayer = self->_syncLayer;
  v10 = 0;
  ivarAccessQueue = syncLayer->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__AVSynchronizedLayer__isVisible__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)_popAllOldPlayerItems
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__15;
  syncLayer = self->_syncLayer;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  ivarAccessQueue = syncLayer->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AVSynchronizedLayer__popAllOldPlayerItems__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __44__AVSynchronizedLayer__popAllOldPlayerItems__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(*(a1 + 32) + 48) + 32) copy];
  v2 = *(*(*(a1 + 32) + 48) + 32);

  return [v2 removeAllObjects];
}

- (void)_removeSelfFromPlayerItem:(id)a3
{
  if (a3)
  {
    [a3 _removeSyncLayer:self];

    [(AVSynchronizedLayer *)self setInheritsTiming:1];
  }
}

- (void)_updatePlayerItemState
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__AVSynchronizedLayer__updatePlayerItemState__block_invoke;
  v2[3] = &unk_1E7460C00;
  v2[4] = self;
  AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v2);
}

uint64_t __45__AVSynchronizedLayer__updatePlayerItemState__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) playerItem];
  v3 = [*(a1 + 32) _popAllOldPlayerItems];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(*(&v9 + 1) + 8 * i) != v2)
        {
          [*(a1 + 32) _removeSelfFromPlayerItem:?];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  if ([*(a1 + 32) _isVisible])
  {
    return [v2 _addSyncLayer:*(a1 + 32)];
  }

  else
  {
    return [*(a1 + 32) _removeSelfFromPlayerItem:v2];
  }
}

- (void)setPlayerItem:(AVPlayerItem *)playerItem
{
  ivarAccessQueue = self->_syncLayer->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AVSynchronizedLayer_setPlayerItem___block_invoke;
  v5[3] = &unk_1E7460DF0;
  v5[4] = self;
  v5[5] = playerItem;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVSynchronizedLayer *)self _updatePlayerItemState];
}

void *__37__AVSynchronizedLayer_setPlayerItem___block_invoke(void *result)
{
  v1 = *(result[4] + 48);
  v2 = *(v1 + 24);
  if (v2 != result[5])
  {
    v3 = result;
    if (v2)
    {
      [*(v1 + 32) addObject:?];
      v4 = *(*(v3[4] + 48) + 24);
    }

    else
    {
      v4 = 0;
    }

    result = v3[5];
    *(*(v3[4] + 48) + 24) = result;
  }

  return result;
}

- (void)layerDidBecomeVisible:(BOOL)a3
{
  ivarAccessQueue = self->_syncLayer->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__AVSynchronizedLayer_layerDidBecomeVisible___block_invoke;
  v6[3] = &unk_1E7460E40;
  v6[4] = self;
  v7 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AVSynchronizedLayer_layerDidBecomeVisible___block_invoke_2;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)dealloc
{
  syncLayer = self->_syncLayer;
  if (syncLayer)
  {
    serialQueue = syncLayer->serialQueue;
    if (serialQueue)
    {
      playerItem = syncLayer->playerItem;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __30__AVSynchronizedLayer_dealloc__block_invoke;
      block[3] = &unk_1E7460C00;
      block[4] = playerItem;
      dispatch_async(serialQueue, block);
      dispatch_release(self->_syncLayer->serialQueue);
      syncLayer = self->_syncLayer;
    }

    v6 = self->_syncLayer;
    ivarAccessQueue = v6->ivarAccessQueue;
    if (ivarAccessQueue)
    {
      dispatch_release(ivarAccessQueue);
      v6 = self->_syncLayer;
    }

    CFRelease(self->_syncLayer);
  }

  v8.receiver = self;
  v8.super_class = AVSynchronizedLayer;
  [(AVSynchronizedLayer *)&v8 dealloc];
}

@end