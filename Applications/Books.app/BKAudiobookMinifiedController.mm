@interface BKAudiobookMinifiedController
- (AEAssetMinifiedControllerDelegate)minifiedControllerDelegate;
- (BKAudiobookMinifiedController)initWithHelper:(id)helper;
- (void)_recordMetricsForBuyButtonWithAssetID:(id)d actionDetails:(id)details offerType:(id)type;
- (void)assetAudiobookStatusTogglePlayPause;
- (void)assetViewControllerRequestToBuy:(id)buy completion:(id)completion;
- (void)audiobookNowPlayingViewController:(id)controller shouldStream:(BOOL)stream;
- (void)audiobookNowPlayingViewControllerRequestBuy:(id)buy completion:(id)completion;
- (void)audiobookNowPlayingViewControllerRequestCloseMinified:(id)minified error:(id)error;
- (void)audiobookNowPlayingViewControllerWillDisappear:(id)disappear;
- (void)minifiedAssetPresenterPausePlayback;
- (void)minifiedControllerDidLoadAsset;
- (void)minifiedControllerSaveState;
- (void)minifiedControllerWillUnloadAsset;
- (void)player:(id)player currentPositionDidChange:(double)change inChapter:(unint64_t)chapter absolutePosition:(double)position;
- (void)player:(id)player failedWithError:(id)error;
- (void)player:(id)player stateDidChangeFrom:(int64_t)from to:(int64_t)to;
@end

@implementation BKAudiobookMinifiedController

- (BKAudiobookMinifiedController)initWithHelper:(id)helper
{
  helperCopy = helper;
  v10.receiver = self;
  v10.super_class = BKAudiobookMinifiedController;
  v6 = [(BKAudiobookMinifiedController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_helper, helper);
    v8 = +[BKAudiobookPlayer sharedInstance];
    [v8 addObserver:v7];
  }

  return v7;
}

- (void)minifiedControllerDidLoadAsset
{
  objc_opt_class();
  minifiedControllerLoadedAssetViewController = [(BKAudiobookMinifiedController *)self minifiedControllerLoadedAssetViewController];
  v4 = BUDynamicCast();
  nowPlayingViewController = self->_nowPlayingViewController;
  self->_nowPlayingViewController = v4;

  v6 = self->_nowPlayingViewController;

  [(BKAudiobookNowPlayingTouchViewController *)v6 setDelegate:self];
}

- (void)minifiedControllerWillUnloadAsset
{
  if (objc_opt_respondsToSelector())
  {
    [(BKAudiobookNowPlayingTouchViewController *)self->_nowPlayingViewController assetViewControllerWillUnload];
  }

  [(BKAudiobookNowPlayingTouchViewController *)self->_nowPlayingViewController setDelegate:0];
  nowPlayingViewController = self->_nowPlayingViewController;
  self->_nowPlayingViewController = 0;
}

- (void)minifiedControllerSaveState
{
  minifiedControllerLoadedAssetViewController = [(BKAudiobookMinifiedController *)self minifiedControllerLoadedAssetViewController];
  [minifiedControllerLoadedAssetViewController saveStateClosing:0];
}

- (void)minifiedAssetPresenterPausePlayback
{
  v2 = +[BKAudiobookPlayer sharedInstance];
  [v2 pause];
}

- (void)player:(id)player currentPositionDidChange:(double)change inChapter:(unint64_t)chapter absolutePosition:(double)position
{
  currentChapter = [player currentChapter];
  [currentChapter duration];
  v10 = v9;

  v11 = change / v10;
  if (change <= 0.0)
  {
    v11 = 1.0;
  }

  [(BKAudiobookMinifiedController *)self setAssetAudiobookStatusTrackProgress:v11];
  v12 = v10 - change;
  if (v10 - change < 0.0)
  {
    v12 = 0.0;
  }

  [(BKAudiobookMinifiedController *)self setAssetAudiobookStatusTrackTimeRemaining:v12];
}

- (void)player:(id)player stateDidChangeFrom:(int64_t)from to:(int64_t)to
{
  isPlaying = [player isPlaying];

  [(BKAudiobookMinifiedController *)self setAssetAudiobookStatusPlaying:isPlaying];
}

- (void)player:(id)player failedWithError:(id)error
{
  [(BKAudiobookMinifiedController *)self setAssetAudiobookStatusPlaying:0, error];
  [(BKAudiobookMinifiedController *)self setAssetAudiobookStatusTrackProgress:1.0];

  [(BKAudiobookMinifiedController *)self setAssetAudiobookStatusTrackTimeRemaining:0.0];
}

- (void)assetViewControllerRequestToBuy:(id)buy completion:(id)completion
{
  completionCopy = completion;
  v6 = objc_opt_new();
  (*(completion + 2))(completionCopy, 1, v6);
}

- (void)audiobookNowPlayingViewControllerRequestCloseMinified:(id)minified error:(id)error
{
  errorCopy = error;
  minifiedControllerDelegate = [(BKAudiobookMinifiedController *)self minifiedControllerDelegate];
  [minifiedControllerDelegate minifiedControllerRequestClose:self error:errorCopy];
}

- (void)audiobookNowPlayingViewControllerWillDisappear:(id)disappear
{
  nowPlayingViewController = [(BKAudiobookMinifiedController *)self nowPlayingViewController];
  -[BKAudiobookMinifiedController setAssetAudiobookStatusPlaying:](self, "setAssetAudiobookStatusPlaying:", [nowPlayingViewController isPlaying]);
}

- (void)audiobookNowPlayingViewController:(id)controller shouldStream:(BOOL)stream
{
  streamCopy = stream;
  controllerCopy = controller;
  isStreaming = [(AEAudioHelper *)self->_helper isStreaming];
  if (isStreaming != streamCopy)
  {
    v8 = isStreaming;
    v9 = _AEBookPluginsAudiobookLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v19[0] = 67109376;
      v19[1] = v8;
      v20 = 1024;
      v21 = streamCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Minified controller switching from streaming=%d to streaming=%d", v19, 0xEu);
    }

    objc_opt_class();
    v10 = BUDynamicCast();
    v11 = [BKMLAudiobookHelper alloc];
    albumTitle = [v10 albumTitle];
    v13 = [MPMediaItem bk_audioBookAssetURLWithAlbumTitle:albumTitle isCloudItem:streamCopy];
    options = [v10 options];
    v15 = [(BKMLAudiobookHelper *)v11 initWithAssetUrl:v13 options:options];

    helper = self->_helper;
    self->_helper = v15;
    v17 = v15;

    minifiedControllerDelegate = [(BKAudiobookMinifiedController *)self minifiedControllerDelegate];
    [minifiedControllerDelegate minifiedController:self updatedHelper:v17];

    [controllerCopy setHelper:v17 completion:&stru_100A08070];
  }
}

- (void)audiobookNowPlayingViewControllerRequestBuy:(id)buy completion:(id)completion
{
  buyCopy = buy;
  completionCopy = completion;
  objc_opt_class();
  v8 = BUDynamicCast();
  v9 = v8;
  if (v8)
  {
    mAsset = [v8 mAsset];
    buyParams = [mAsset buyParams];
    offer = [mAsset offer];
    v32 = [offer objectForKeyedSubscript:@"type"];

    objc_opt_class();
    helper = [(BKAudiobookMinifiedController *)self helper];
    v13 = [helper helperMetadataForKey:AEHelperStringMetadataAssetIDKey needsCoordination:0];
    v14 = BUDynamicCast();

    ba_effectiveAnalyticsTracker = [buyCopy ba_effectiveAnalyticsTracker];
    v16 = objc_opt_new();
    v34 = ba_effectiveAnalyticsTracker;
    v17 = [ba_effectiveAnalyticsTracker chainWithName:@"AudiobookMiniPlayer"];
    [v16 setObject:v17 forKeyedSubscript:@"BATracker"];

    if (_os_feature_enabled_impl())
    {
      v30 = completionCopy;
      v31 = buyCopy;
      v29 = +[BAAppAnalyticsAdditionalData supportsUnifiedProductPageKey];
      v43[0] = v29;
      v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [mAsset supportsUnifiedProductPage]);
      v44[0] = v18;
      v19 = +[BAAppAnalyticsAdditionalData editionKindKey];
      v43[1] = v19;
      editionKind = [mAsset editionKind];
      if (editionKind)
      {
        [mAsset editionKind];
      }

      else
      {
        +[NSNull null];
      }
      v23 = ;
      v44[1] = v23;
      v24 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
      [v16 setObject:v24 forKeyedSubscript:BAAppAnalyticsAdditionalDataKey];

      completionCopy = v30;
      buyCopy = v31;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100133104;
    block[3] = &unk_100A08098;
    block[4] = self;
    v36 = v14;
    v37 = buyParams;
    v38 = v32;
    v39 = v16;
    v40 = buyCopy;
    v41 = v9;
    v42 = completionCopy;
    v25 = v16;
    v26 = v32;
    v27 = buyParams;
    v28 = v14;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v21 = objc_retainBlock(completionCopy);
    v22 = v21;
    if (v21)
    {
      (*(v21 + 2))(v21, 0, 0);
    }
  }
}

- (void)_recordMetricsForBuyButtonWithAssetID:(id)d actionDetails:(id)details offerType:(id)type
{
  dCopy = d;
  detailsCopy = details;
  typeCopy = type;
  v9 = objc_opt_new();
  [v9 setObject:JSARecordEventTypeClick forKeyedSubscript:JSARecordKeyEventType];
  [v9 setObject:@"AudiobookPreview" forKeyedSubscript:JSARecordKeyActionContext];
  [v9 setObject:@"buy" forKeyedSubscript:JSARecordKeyActionType];
  if (detailsCopy)
  {
    [v9 setObject:detailsCopy forKeyedSubscript:JSARecordKeyActionDetails];
  }

  if (typeCopy)
  {
    v10 = [typeCopy description];
    [v9 setObject:v10 forKeyedSubscript:JSARecordKeyOfferType];
  }

  [v9 setObject:dCopy forKeyedSubscript:JSARecordKeyTargetId];
  [v9 setObject:JSARecordTargetTypeButton forKeyedSubscript:JSARecordKeyTargetType];
  [JSAApplication recordNativeEvent:v9];
}

- (void)assetAudiobookStatusTogglePlayPause
{
  v2 = +[BKAudiobookPlayer sharedInstance];
  [v2 togglePlayPause];
}

- (AEAssetMinifiedControllerDelegate)minifiedControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_minifiedControllerDelegate);

  return WeakRetained;
}

@end