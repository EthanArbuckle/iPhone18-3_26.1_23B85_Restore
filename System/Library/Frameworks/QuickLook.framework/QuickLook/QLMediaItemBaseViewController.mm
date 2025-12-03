@interface QLMediaItemBaseViewController
- (AVPlayer)player;
- (BOOL)_assetIsDecodable:(id)decodable;
- (BOOL)endOfMediaReached;
- (BOOL)pause;
- (BOOL)play;
- (BOOL)togglePlayback;
- (CGSize)imageSize;
- (double)mediaDuration;
- (id)playbackObserverBlock;
- (id)setupPlayerViewWithPlayer:(id)player;
- (id)toolbarButtonsForTraitCollection:(id)collection;
- (void)_updateExternalPlayback;
- (void)_updatePlayingStatus;
- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)dealloc;
- (void)hostApplicationDidBecomeActive;
- (void)hostApplicationDidEnterBackground:(id)background;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)previewIsAppearingWithProgress:(double)progress;
- (void)resetToBeginningAndPlay;
- (void)setMediaVolume:(double)volume;
- (void)stop;
@end

@implementation QLMediaItemBaseViewController

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contentsCopy = contents;
  contextCopy = context;
  handlerCopy = handler;
  v12 = contentsCopy;
  objc_storeStrong(&self->_mediaAsset, contents);
  v16 = contextCopy;
  v17 = handlerCopy;
  v13 = contextCopy;
  v14 = v12;
  v15 = handlerCopy;
  QLRunInBackgroundThread();
}

void __93__QLMediaItemBaseViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(id *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    [MEMORY[0x277CB83F8] primarySession];
  }

  else
  {
    [MEMORY[0x277CB83F8] auxiliarySession];
  }
  v2 = ;
  v3 = v2;
  if (v2)
  {
    v27 = 0;
    [v2 setParticipatesInNowPlayingAppPolicy:1 error:&v27];
    v4 = v27;
    v5 = MEMORY[0x277D43EF8];
    if (v4)
    {
      v6 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v4;
        _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_ERROR, "Could not set participatesInNowPlayingAppPolicy: %@ #Media", buf, 0xCu);
      }
    }

    v7 = [a1[4] player];
    [v7 setAudioSession:v3];

    v8 = *MEMORY[0x277CB8030];
    v9 = [a1[4] player];
    v10 = [v9 audioSession];
    v26 = 0;
    [v10 setCategory:v8 error:&v26];
    v11 = v26;

    if (v11)
    {
      v12 = *v5;
      if (!*v5)
      {
        QLSInitLogging();
        v12 = *v5;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v29 = v8;
        v30 = 2112;
        v31 = v11;
        _os_log_impl(&dword_23A714000, v12, OS_LOG_TYPE_ERROR, "Could not set category (%@): %@ #Media", buf, 0x16u);
      }
    }

    v13 = [a1[4] player];
    v14 = [v13 currentItem];
    v15 = v14;
    if (v14)
    {
      [v14 duration];
    }

    [a1[5] isPlayable];
    v19 = a1[5];
    v20 = a1[4];
    v24 = v19;
    v21 = a1[7];
    *&v22 = a1[6];
    *(&v22 + 1) = v21;
    v25 = v22;
    QLRunInMainThread();
  }

  else
  {
    v16 = MEMORY[0x277D43EF8];
    v17 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v17 = *v16;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23A714000, v17, OS_LOG_TYPE_ERROR, "Could not create audio session #Media", buf, 2u);
    }

    v18 = a1[7];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.mediaItemAggregatedViewController" code:1000 userInfo:0];
    v18[2](v18, v4);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __93__QLMediaItemBaseViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_4(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hasProtectedContent];
  *(*(a1 + 40) + 1216) = [*(a1 + 40) _assetIsDecodable:*(a1 + 32)] & (v2 ^ 1);
  v3 = [*(a1 + 40) playable];
  v4 = *(a1 + 40);
  if (v3)
  {
    [v4 setupPlayerWithMediaAsset:*(a1 + 32)];
    v5 = *(a1 + 40);
    v6 = [v5 player];
    v7 = [v5 setupPlayerViewWithPlayer:v6];
    v8 = *(a1 + 40);
    v9 = *(v8 + 1224);
    *(v8 + 1224) = v7;

    v10 = [*(a1 + 40) player];
    v11 = *(a1 + 40);
    v12 = [v11 player];
    [v10 addObserver:v11 forKeyPath:@"rate" options:1 context:v12];

    v13 = [*(a1 + 40) player];
    v14 = *(a1 + 40);
    v15 = [v14 player];
    [v13 addObserver:v14 forKeyPath:@"status" options:1 context:v15];

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = *(a1 + 40);
    v18 = *MEMORY[0x277CE60C0];
    v19 = [v17 player];
    v20 = [v19 currentItem];
    [v16 addObserver:v17 selector:sel_playerItemDidReachEnd_ name:v18 object:v20];

    memset(&v47, 0, sizeof(v47));
    [*(a1 + 40) playerTimeObservationInterval];
    CMTimeMakeWithSeconds(&v47, v21, 1000000000);
    v22 = [*(a1 + 40) player];
    v23 = [*(a1 + 40) playbackObserverBlock];
    buf = v47;
    v24 = [v22 addPeriodicTimeObserverForInterval:&buf queue:0 usingBlock:v23];
    v25 = *(a1 + 40);
    v26 = *(v25 + 1176);
    *(v25 + 1176) = v24;

    *(*(a1 + 40) + 1272) = 0;
    v27 = _Block_copy(*(a1 + 56));
    v28 = *(a1 + 40);
    v29 = *(v28 + 1192);
    *(v28 + 1192) = v27;

    [*(a1 + 40) _updatePlayingStatus];
    [*(a1 + 40) _updateExternalPlayback];
    if ([*(a1 + 48) processIdentifier] >= 1)
    {
      v30 = [MEMORY[0x277D26E58] sharedAVSystemController];
      v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 48), "processIdentifier")}];
      v32 = *MEMORY[0x277D26C40];
      v45 = 0;
      [v30 setAttribute:v31 forKey:v32 error:&v45];
      v33 = v45;

      if (v33)
      {
        v34 = MEMORY[0x277D43EF8];
        v35 = *MEMORY[0x277D43EF8];
        if (!*MEMORY[0x277D43EF8])
        {
          QLSInitLogging();
          v35 = *v34;
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.value) = 138412290;
          *(&buf.value + 4) = v33;
          _os_log_impl(&dword_23A714000, v35, OS_LOG_TYPE_ERROR, "Error setting the PID to inherit the state from: %@ #Media", &buf, 0xCu);
        }
      }
    }
  }

  else
  {
    [v4 willChangeValueForKey:@"playingStatus"];
    *(*(a1 + 40) + 1272) = 3;
    [*(a1 + 40) didChangeValueForKey:@"playingStatus"];
    [*(a1 + 40) didChangePlayingStatus];
    v36 = MEMORY[0x277D43EF8];
    if (v2)
    {
      v37 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v37 = *v36;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = *(a1 + 32);
        v39 = *(a1 + 40);
        LODWORD(v47.value) = 138412546;
        *(&v47.value + 4) = v38;
        LOWORD(v47.flags) = 2112;
        *(&v47.flags + 2) = v39;
        _os_log_impl(&dword_23A714000, v37, OS_LOG_TYPE_ERROR, "Can't play AVAsset with protected content: %@. %@ #Media", &v47, 0x16u);
      }
    }

    v40 = *v36;
    if (!*v36)
    {
      QLSInitLogging();
      v40 = *v36;
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = *(a1 + 32);
      v42 = *(a1 + 40);
      LODWORD(v47.value) = 138412546;
      *(&v47.value + 4) = v41;
      LOWORD(v47.flags) = 2112;
      *(&v47.flags + 2) = v42;
      _os_log_impl(&dword_23A714000, v40, OS_LOG_TYPE_ERROR, "Asset is not playable: %@. %@ #Media", &v47, 0x16u);
    }

    v43 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.mediaItemAggregatedViewController" code:1 userInfo:0];
    (*(*(a1 + 56) + 16))();
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (id)setupPlayerViewWithPlayer:(id)player
{
  playerCopy = player;
  v5 = objc_opt_new();
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  [(QLMediaItemBaseViewController *)self imageSize];
  [v5 setFrame:{v6, v7, v8, v9}];
  v10 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:playerCopy];

  playerLayer = self->_playerLayer;
  self->_playerLayer = v10;

  [v5 bounds];
  [(AVPlayerLayer *)self->_playerLayer setFrame:?];
  layer = [v5 layer];
  [layer addSublayer:self->_playerLayer];

  [(QLScrollableContentItemViewController *)self setContentView:v5];

  return v5;
}

- (void)previewIsAppearingWithProgress:(double)progress
{
  v6.receiver = self;
  v6.super_class = QLMediaItemBaseViewController;
  [(QLItemViewController *)&v6 previewIsAppearingWithProgress:?];
  v5 = progress * 1.5;
  if (progress * 1.5 > 1.0)
  {
    v5 = 1.0;
  }

  [(QLMediaItemBaseViewController *)self setMediaVolume:v5];
}

- (void)dealloc
{
  if ([(QLMediaItemBaseViewController *)self playable])
  {
    player = [(QLMediaItemBaseViewController *)self player];
    [player removeObserver:self forKeyPath:@"rate"];

    player2 = [(QLMediaItemBaseViewController *)self player];
    [player2 removeObserver:self forKeyPath:@"status"];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];
  }

  v6.receiver = self;
  v6.super_class = QLMediaItemBaseViewController;
  [(QLMediaItemBaseViewController *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  player = [(QLMediaItemBaseViewController *)self player];

  if (player == context)
  {
    if (([pathCopy isEqualToString:@"rate"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"status"))
    {
      [(QLMediaItemBaseViewController *)self _updatePlayingStatus];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = QLMediaItemBaseViewController;
    [(QLMediaItemBaseViewController *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)_updateExternalPlayback
{
  isVisible = self->_isVisible;
  player = [(QLMediaItemBaseViewController *)self player];
  [player setAllowsExternalPlayback:isVisible];
}

- (void)_updatePlayingStatus
{
  player = [(QLMediaItemBaseViewController *)self player];
  error = [player error];
  [(QLMediaItemBaseViewController *)self setError:error];

  player2 = [(QLMediaItemBaseViewController *)self player];
  status = [player2 status];

  if (status == 1)
  {
    player3 = [(QLMediaItemBaseViewController *)self player];
    if (player3)
    {
      player4 = [(QLMediaItemBaseViewController *)self player];
      [player4 rate];
      if (v10 == 0.0)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    if (status != 2)
    {
      v8 = 0;
      goto LABEL_12;
    }

    player3 = [(QLMediaItemBaseViewController *)self error];
    [(QLItemViewController *)self notifyDelegatesDidFailWithError:player3];
    v8 = 3;
  }

LABEL_12:
  if (v8 != self->_playingStatus)
  {
    [(QLMediaItemBaseViewController *)self willChangeValueForKey:@"playingStatus"];
    playingStatus = self->_playingStatus;
    self->_playingStatus = v8;
    if (!playingStatus)
    {
      player5 = [(QLMediaItemBaseViewController *)self player];
      status2 = [player5 status];

      if (status2 == 1)
      {
        appearance = [(QLItemViewController *)self appearance];
        presentationMode = [appearance presentationMode];

        if (presentationMode == 4)
        {
          [(QLMediaItemBaseViewController *)self play];
        }
      }

      previewItemLoadingBlock = self->_previewItemLoadingBlock;
      if (previewItemLoadingBlock)
      {
        player6 = [(QLMediaItemBaseViewController *)self player];
        error2 = [player6 error];
        previewItemLoadingBlock[2](previewItemLoadingBlock, error2);

        v19 = self->_previewItemLoadingBlock;
        self->_previewItemLoadingBlock = 0;
      }
    }

    [(QLMediaItemBaseViewController *)self didChangeValueForKey:@"playingStatus"];
    [(QLMediaItemBaseViewController *)self didChangePlayingStatus];
    delegate = [(QLItemViewController *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      delegate2 = [(QLItemViewController *)self delegate];
      [delegate2 previewItemViewControllerWantsUpdateOverlay:self animated:0];
    }
  }
}

- (AVPlayer)player
{
  player = self->_player;
  if (!player)
  {
    if (self->_mediaAsset)
    {
      v4 = MEMORY[0x277CE6598];
      v5 = [MEMORY[0x277CE65B0] playerItemWithAsset:?];
      v6 = [v4 playerWithPlayerItem:v5];
      v7 = self->_player;
      self->_player = v6;

      player = self->_player;
    }

    else
    {
      player = 0;
    }
  }

  return player;
}

- (id)toolbarButtonsForTraitCollection:(id)collection
{
  v11[1] = *MEMORY[0x277D85DE8];
  if ([(QLMediaItemBaseViewController *)self shouldDisplayPlayButtonInNavigationBar]&& [(QLMediaItemBaseViewController *)self playable])
  {
    v4 = [objc_alloc(MEMORY[0x277D43FB0]) initWithIdentifier:@"togglePlay"];
    [v4 setPlacement:0];
    playingStatus = [(QLMediaItemBaseViewController *)self playingStatus];
    if (playingStatus == 1)
    {
      v6 = 18;
    }

    else
    {
      v6 = 17;
    }

    if (playingStatus == 1)
    {
      v7 = QLMediaItemViewControllerBarPlayButtonPausedAccessibilityIdentifier;
    }

    else
    {
      v7 = QLMediaItemViewControllerBarPlayButtonPlayingAccessibilityIdentifier;
    }

    [v4 setSystemItem:v6];
    [v4 setAccessibilityIdentifier:*v7];
    v11[0] = v4;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (CGSize)imageSize
{
  p_imageSize = &self->_imageSize;
  if (self->_imageSize.width == *MEMORY[0x277CBF3A8] && self->_imageSize.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    player = [(QLMediaItemBaseViewController *)self player];

    if (player)
    {
      player2 = [(QLMediaItemBaseViewController *)self player];
      currentItem = [player2 currentItem];
      asset = [currentItem asset];
      [asset ql_imageSizeOfFirstVideoTrack];
      p_imageSize->width = v9;
      p_imageSize->height = v10;
    }
  }

  width = p_imageSize->width;
  height = p_imageSize->height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)endOfMediaReached
{
  player = [(QLMediaItemBaseViewController *)self player];
  v4 = player;
  if (player)
  {
    [player currentTime];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  player2 = [(QLMediaItemBaseViewController *)self player];
  currentItem = [player2 currentItem];
  asset = [currentItem asset];
  v8 = asset;
  if (asset)
  {
    [asset duration];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  v9 = CMTimeCompare(&time1, &v11) == 0;

  return v9;
}

- (id)playbackObserverBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__QLMediaItemBaseViewController_playbackObserverBlock__block_invoke;
  v4[3] = &unk_278B58868;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __54__QLMediaItemBaseViewController_playbackObserverBlock__block_invoke(uint64_t a1, CMTime *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17 = *a2;
  [WeakRetained observePlayingTime:&v17];

  v17 = *a2;
  v5 = round(CMTimeGetSeconds(&v17));
  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setElapsedTime:v5];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 player];
  v9 = [v8 currentItem];
  v10 = [v9 asset];
  v11 = v10;
  if (v10)
  {
    [v10 duration];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  v12 = round(CMTimeGetSeconds(&v17));
  v13 = objc_loadWeakRetained((a1 + 32));
  [v13 elapsedTime];
  v15 = v12 - v14;
  v16 = objc_loadWeakRetained((a1 + 32));
  [v16 setRemainingTime:v15];
}

- (BOOL)play
{
  if (!self->_isVisible)
  {
    return 0;
  }

  player = [(QLMediaItemBaseViewController *)self player];
  status = [player status];

  if (status != 1)
  {
    return 0;
  }

  if ([(QLMediaItemBaseViewController *)self endOfMediaReached])
  {
    [(QLMediaItemBaseViewController *)self resetToBeginningAndPlay];
  }

  else
  {
    player2 = [(QLMediaItemBaseViewController *)self player];
    [player2 play];
  }

  return 1;
}

- (BOOL)pause
{
  player = [(QLMediaItemBaseViewController *)self player];
  [player pause];

  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  [mEMORY[0x277CB83F8] silenceOutput:1 error:0];

  return 1;
}

- (void)stop
{
  [(QLMediaItemBaseViewController *)self pause];
  player = [(QLMediaItemBaseViewController *)self player];
  v8 = *MEMORY[0x277CC08F0];
  v9 = *(MEMORY[0x277CC08F0] + 16);
  v6 = v8;
  v7 = v9;
  v4 = v8;
  v5 = v9;
  [player seekToTime:&v8 toleranceBefore:&v6 toleranceAfter:&v4];
}

- (BOOL)togglePlayback
{
  if ([(QLMediaItemBaseViewController *)self playingStatus]== 1)
  {

    return [(QLMediaItemBaseViewController *)self pause];
  }

  else
  {

    return [(QLMediaItemBaseViewController *)self play];
  }
}

- (double)mediaDuration
{
  player = [(QLMediaItemBaseViewController *)self player];
  if (player)
  {
    player2 = [(QLMediaItemBaseViewController *)self player];
    currentItem = [player2 currentItem];
    asset = [currentItem asset];
    v7 = asset;
    if (asset)
    {
      [asset duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
  }

  else
  {
    Seconds = 0.0;
  }

  return Seconds;
}

- (void)setMediaVolume:(double)volume
{
  volumeCopy = volume;
  player = [(QLMediaItemBaseViewController *)self player];
  *&v4 = volumeCopy;
  [player setVolume:v4];
}

- (void)resetToBeginningAndPlay
{
  objc_initWeak(&location, self);
  player = [(QLMediaItemBaseViewController *)self player];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__QLMediaItemBaseViewController_resetToBeginningAndPlay__block_invoke;
  v10[3] = &unk_278B58890;
  objc_copyWeak(&v11, &location);
  v8 = *MEMORY[0x277CC08F0];
  v9 = *(MEMORY[0x277CC08F0] + 16);
  v6 = v8;
  v7 = v9;
  v4 = v8;
  v5 = v9;
  [player seekToTime:&v8 toleranceBefore:&v6 toleranceAfter:&v4 completionHandler:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __56__QLMediaItemBaseViewController_resetToBeginningAndPlay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained player];
    [v2 play];

    WeakRetained = v3;
  }
}

- (void)hostApplicationDidEnterBackground:(id)background
{
  if (([background BOOLValue] & 1) == 0)
  {
    self->_mediaWasPausedOnResignActive = [(QLMediaItemBaseViewController *)self playingStatus]== 1;

    [(QLMediaItemBaseViewController *)self pause];
  }
}

- (void)hostApplicationDidBecomeActive
{
  if (self->_mediaWasPausedOnResignActive && self->_isVisible && [(QLMediaItemBaseViewController *)self playingStatus]!= 1)
  {
    [(QLMediaItemBaseViewController *)self play];
  }

  self->_mediaWasPausedOnResignActive = 0;
}

- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([identifier isEqualToString:@"togglePlay"])
  {
    [(QLMediaItemBaseViewController *)self togglePlayback];
  }

  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v6 = handlerCopy;
  }
}

- (BOOL)_assetIsDecodable:(id)decodable
{
  tracks = [decodable tracks];
  firstObject = [tracks firstObject];

  LOBYTE(tracks) = [firstObject isDecodable];
  return tracks;
}

@end