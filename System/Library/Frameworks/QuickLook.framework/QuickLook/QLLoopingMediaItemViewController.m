@interface QLLoopingMediaItemViewController
- (BOOL)pause;
- (BOOL)play;
- (id)player;
- (void)dealloc;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setupPlayerWithMediaAsset:(id)a3;
- (void)startObservingItem;
- (void)stopObservingItem;
@end

@implementation QLLoopingMediaItemViewController

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__QLLoopingMediaItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke;
  v11[3] = &unk_278B57B90;
  v11[4] = self;
  v12 = v8;
  v10.receiver = self;
  v10.super_class = QLLoopingMediaItemViewController;
  v9 = v8;
  [(QLMediaItemBaseViewController *)&v10 loadPreviewControllerWithContents:a3 context:a4 completionHandler:v11];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (a6 == &AVLoopPlayerCurrentItemObservationContext)
  {
    v14 = v11;
    v15 = [v14 items];
    v16 = [v15 count];

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

  if (a6 == &AVLoopPlayerCurrentItemStatusObservationContext)
  {
    v14 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
    v18 = [MEMORY[0x277CBEB68] null];

    if (v14 == v18 || [v14 unsignedIntegerValue] != 2)
    {
      goto LABEL_20;
    }

    v17 = v11;
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
      v22 = [v17 currentItem];
      v23 = [v22 error];
      *buf = 138412290;
      *&buf[4] = v23;
      _os_log_impl(&dword_23A714000, v21, OS_LOG_TYPE_ERROR, "End looping since player item has failed with error %@ #Media", buf, 0xCu);
    }

    [(QLLoopingMediaItemViewController *)self pause];
LABEL_14:

LABEL_20:
    goto LABEL_21;
  }

  v27.receiver = self;
  v27.super_class = QLLoopingMediaItemViewController;
  [(QLMediaItemBaseViewController *)&v27 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
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
  v3 = [(QLMediaItemBaseViewController *)&v6 play];
  if (v3)
  {
    v4 = [(QLItemViewController *)self delegate];
    [v4 previewItemViewController:self wantsFullScreen:1];
  }

  return v3;
}

- (BOOL)pause
{
  v5.receiver = self;
  v5.super_class = QLLoopingMediaItemViewController;
  v3 = [(QLMediaItemBaseViewController *)&v5 pause];
  [(QLLoopingMediaItemViewController *)self stopObservingItem];
  return v3;
}

- (void)setupPlayerWithMediaAsset:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  memset(&v16[1], 0, sizeof(CMTime));
  if (v4)
  {
    [v4 duration];
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
      v13 = [(QLMediaItemBaseViewController *)self playable];
      v14 = "NO";
      if (v13)
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
        v8 = [(QLLoopingMediaItemViewController *)self player];
        [v8 insertItem:v7 afterItem:0];
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