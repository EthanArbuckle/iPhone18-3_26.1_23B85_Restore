@interface QLLoopingMediaItemViewController
- (BOOL)pause;
- (BOOL)play;
- (id)player;
- (void)dealloc;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setupPlayerWithMediaAsset:(id)asset;
- (void)startObservingItem;
- (void)stopObservingItem;
@end

@implementation QLLoopingMediaItemViewController

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__QLLoopingMediaItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke;
  v11[3] = &unk_278B57B90;
  v11[4] = self;
  v12 = handlerCopy;
  v10.receiver = self;
  v10.super_class = QLLoopingMediaItemViewController;
  v9 = handlerCopy;
  [(QLMediaItemBaseViewController *)&v10 loadPreviewControllerWithContents:contents context:context completionHandler:v11];
}

void __96__QLLoopingMediaItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) setShouldFit:1];
  [*(a1 + 32) imageSize];
  [*(a1 + 32) setPreferredContentSize:?];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v30 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (context == &AVLoopPlayerCurrentItemObservationContext)
  {
    v14 = objectCopy;
    items = [v14 items];
    v16 = [items count];

    if (!v16)
    {
      v24 = MEMORY[0x277D43EF8];
      v25 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v25 = *v24;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23A714000, v25, OS_LOG_TYPE_DEBUG, "Play queue emptied out due to bad player item. End looping. #Media", buf, 2u);
      }

      [(QLLoopingMediaItemViewController *)self pause];
      goto LABEL_20;
    }

    v17 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *buf = *MEMORY[0x277CC08F0];
      v29 = *(MEMORY[0x277CC08F0] + 16);
      [v17 seekToTime:buf completionHandler:0];
      [(QLLoopingMediaItemViewController *)self stopObservingItem];
      [v14 insertItem:v17 afterItem:0];
      [(QLLoopingMediaItemViewController *)self startObservingItem];
    }

    goto LABEL_14;
  }

  if (context == &AVLoopPlayerCurrentItemStatusObservationContext)
  {
    v14 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    null = [MEMORY[0x277CBEB68] null];

    if (v14 == null || [v14 unsignedIntegerValue] != 2)
    {
      goto LABEL_20;
    }

    v17 = objectCopy;
    v19 = MEMORY[0x277D43EF8];
    v20 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      currentItem = [v17 currentItem];
      error = [currentItem error];
      *buf = 138412290;
      *&buf[4] = error;
      _os_log_impl(&dword_23A714000, v21, OS_LOG_TYPE_ERROR, "End looping since player item has failed with error %@ #Media", buf, 0xCu);
    }

    [(QLLoopingMediaItemViewController *)self pause];
LABEL_14:

LABEL_20:
    goto LABEL_21;
  }

  v27.receiver = self;
  v27.super_class = QLLoopingMediaItemViewController;
  [(QLMediaItemBaseViewController *)&v27 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_21:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(QLLoopingMediaItemViewController *)self stopObservingItem];
  v3.receiver = self;
  v3.super_class = QLLoopingMediaItemViewController;
  [(QLMediaItemBaseViewController *)&v3 dealloc];
}

- (BOOL)play
{
  [(QLLoopingMediaItemViewController *)self startObservingItem];
  v6.receiver = self;
  v6.super_class = QLLoopingMediaItemViewController;
  play = [(QLMediaItemBaseViewController *)&v6 play];
  if (play)
  {
    delegate = [(QLItemViewController *)self delegate];
    [delegate previewItemViewController:self wantsFullScreen:1];
  }

  return play;
}

- (BOOL)pause
{
  v5.receiver = self;
  v5.super_class = QLLoopingMediaItemViewController;
  pause = [(QLMediaItemBaseViewController *)&v5 pause];
  [(QLLoopingMediaItemViewController *)self stopObservingItem];
  return pause;
}

- (void)setupPlayerWithMediaAsset:(id)asset
{
  v18 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v5 = assetCopy;
  memset(&v16[1], 0, sizeof(CMTime));
  if (assetCopy)
  {
    [assetCopy duration];
  }

  CMTimeMake(&time2, 1, 100);
  v16[0] = v16[1];
  if (CMTimeCompare(v16, &time2) < 0 || ![(QLMediaItemBaseViewController *)self playable])
  {
    v9 = MEMORY[0x277D43EF8];
    v10 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      time2 = v16[1];
      v11 = v10;
      Seconds = CMTimeGetSeconds(&time2);
      playable = [(QLMediaItemBaseViewController *)self playable];
      v14 = "NO";
      if (playable)
      {
        v14 = "YES";
      }

      LODWORD(time2.value) = 134218242;
      *(&time2.value + 4) = Seconds;
      LOWORD(time2.flags) = 2080;
      *(&time2.flags + 2) = v14;
      _os_log_impl(&dword_23A714000, v11, OS_LOG_TYPE_ERROR, "Can't loop. Asset duration too short (%1.3f sec) or not playable(isPlayable: %s) #Media", &time2, 0x16u);
    }
  }

  else
  {
    time2 = v16[1];
    for (i = (1.0 / CMTimeGetSeconds(&time2) + 2.0); i; --i)
    {
      v7 = [MEMORY[0x277CE65B0] playerItemWithAsset:v5];
      if (v7)
      {
        player = [(QLLoopingMediaItemViewController *)self player];
        [player insertItem:v7 afterItem:0];
      }
    }

    [(QLLoopingMediaItemViewController *)self startObservingItem];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startObservingItem
{
  if (!self->_addedObservers)
  {
    [(AVQueuePlayer *)self->_queuePlayer addObserver:self forKeyPath:@"currentItem" options:2 context:&AVLoopPlayerCurrentItemObservationContext];
    [(AVQueuePlayer *)self->_queuePlayer addObserver:self forKeyPath:@"currentItem.status" options:1 context:&AVLoopPlayerCurrentItemStatusObservationContext];
    self->_addedObservers = 1;
  }
}

- (void)stopObservingItem
{
  if (self->_addedObservers)
  {
    [(AVQueuePlayer *)self->_queuePlayer removeObserver:self forKeyPath:@"currentItem" context:&AVLoopPlayerCurrentItemObservationContext];
    [(AVQueuePlayer *)self->_queuePlayer removeObserver:self forKeyPath:@"currentItem.status" context:&AVLoopPlayerCurrentItemStatusObservationContext];
    self->_addedObservers = 0;
  }
}

- (id)player
{
  queuePlayer = self->_queuePlayer;
  if (!queuePlayer)
  {
    v4 = objc_opt_new();
    v5 = self->_queuePlayer;
    self->_queuePlayer = v4;

    queuePlayer = self->_queuePlayer;
  }

  return queuePlayer;
}

@end