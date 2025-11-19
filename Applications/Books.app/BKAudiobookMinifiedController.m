@interface BKAudiobookMinifiedController
- (AEAssetMinifiedControllerDelegate)minifiedControllerDelegate;
- (BKAudiobookMinifiedController)initWithHelper:(id)a3;
- (void)_recordMetricsForBuyButtonWithAssetID:(id)a3 actionDetails:(id)a4 offerType:(id)a5;
- (void)assetAudiobookStatusTogglePlayPause;
- (void)assetViewControllerRequestToBuy:(id)a3 completion:(id)a4;
- (void)audiobookNowPlayingViewController:(id)a3 shouldStream:(BOOL)a4;
- (void)audiobookNowPlayingViewControllerRequestBuy:(id)a3 completion:(id)a4;
- (void)audiobookNowPlayingViewControllerRequestCloseMinified:(id)a3 error:(id)a4;
- (void)audiobookNowPlayingViewControllerWillDisappear:(id)a3;
- (void)minifiedAssetPresenterPausePlayback;
- (void)minifiedControllerDidLoadAsset;
- (void)minifiedControllerSaveState;
- (void)minifiedControllerWillUnloadAsset;
- (void)player:(id)a3 currentPositionDidChange:(double)a4 inChapter:(unint64_t)a5 absolutePosition:(double)a6;
- (void)player:(id)a3 failedWithError:(id)a4;
- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5;
@end

@implementation BKAudiobookMinifiedController

- (BKAudiobookMinifiedController)initWithHelper:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = BKAudiobookMinifiedController;
  v6 = [(BKAudiobookMinifiedController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_helper, a3);
    v8 = +[BKAudiobookPlayer sharedInstance];
    [v8 addObserver:v7];
  }

  return v7;
}

- (void)minifiedControllerDidLoadAsset
{
  objc_opt_class();
  v3 = [(BKAudiobookMinifiedController *)self minifiedControllerLoadedAssetViewController];
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
  v2 = [(BKAudiobookMinifiedController *)self minifiedControllerLoadedAssetViewController];
  [v2 saveStateClosing:0];
}

- (void)minifiedAssetPresenterPausePlayback
{
  v2 = +[BKAudiobookPlayer sharedInstance];
  [v2 pause];
}

- (void)player:(id)a3 currentPositionDidChange:(double)a4 inChapter:(unint64_t)a5 absolutePosition:(double)a6
{
  v8 = [a3 currentChapter];
  [v8 duration];
  v10 = v9;

  v11 = a4 / v10;
  if (a4 <= 0.0)
  {
    v11 = 1.0;
  }

  [(BKAudiobookMinifiedController *)self setAssetAudiobookStatusTrackProgress:v11];
  v12 = v10 - a4;
  if (v10 - a4 < 0.0)
  {
    v12 = 0.0;
  }

  [(BKAudiobookMinifiedController *)self setAssetAudiobookStatusTrackTimeRemaining:v12];
}

- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5
{
  v6 = [a3 isPlaying];

  [(BKAudiobookMinifiedController *)self setAssetAudiobookStatusPlaying:v6];
}

- (void)player:(id)a3 failedWithError:(id)a4
{
  [(BKAudiobookMinifiedController *)self setAssetAudiobookStatusPlaying:0, a4];
  [(BKAudiobookMinifiedController *)self setAssetAudiobookStatusTrackProgress:1.0];

  [(BKAudiobookMinifiedController *)self setAssetAudiobookStatusTrackTimeRemaining:0.0];
}

- (void)assetViewControllerRequestToBuy:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  (*(a4 + 2))(v5, 1, v6);
}

- (void)audiobookNowPlayingViewControllerRequestCloseMinified:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = [(BKAudiobookMinifiedController *)self minifiedControllerDelegate];
  [v6 minifiedControllerRequestClose:self error:v5];
}

- (void)audiobookNowPlayingViewControllerWillDisappear:(id)a3
{
  v4 = [(BKAudiobookMinifiedController *)self nowPlayingViewController];
  -[BKAudiobookMinifiedController setAssetAudiobookStatusPlaying:](self, "setAssetAudiobookStatusPlaying:", [v4 isPlaying]);
}

- (void)audiobookNowPlayingViewController:(id)a3 shouldStream:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(AEAudioHelper *)self->_helper isStreaming];
  if (v7 != v4)
  {
    v8 = v7;
    v9 = _AEBookPluginsAudiobookLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v19[0] = 67109376;
      v19[1] = v8;
      v20 = 1024;
      v21 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Minified controller switching from streaming=%d to streaming=%d", v19, 0xEu);
    }

    objc_opt_class();
    v10 = BUDynamicCast();
    v11 = [BKMLAudiobookHelper alloc];
    v12 = [v10 albumTitle];
    v13 = [MPMediaItem bk_audioBookAssetURLWithAlbumTitle:v12 isCloudItem:v4];
    v14 = [v10 options];
    v15 = [(BKMLAudiobookHelper *)v11 initWithAssetUrl:v13 options:v14];

    helper = self->_helper;
    self->_helper = v15;
    v17 = v15;

    v18 = [(BKAudiobookMinifiedController *)self minifiedControllerDelegate];
    [v18 minifiedController:self updatedHelper:v17];

    [v6 setHelper:v17 completion:&stru_100A08070];
  }
}

- (void)audiobookNowPlayingViewControllerRequestBuy:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = BUDynamicCast();
  v9 = v8;
  if (v8)
  {
    v10 = [v8 mAsset];
    v33 = [v10 buyParams];
    v11 = [v10 offer];
    v32 = [v11 objectForKeyedSubscript:@"type"];

    objc_opt_class();
    v12 = [(BKAudiobookMinifiedController *)self helper];
    v13 = [v12 helperMetadataForKey:AEHelperStringMetadataAssetIDKey needsCoordination:0];
    v14 = BUDynamicCast();

    v15 = [v6 ba_effectiveAnalyticsTracker];
    v16 = objc_opt_new();
    v34 = v15;
    v17 = [v15 chainWithName:@"AudiobookMiniPlayer"];
    [v16 setObject:v17 forKeyedSubscript:@"BATracker"];

    if (_os_feature_enabled_impl())
    {
      v30 = v7;
      v31 = v6;
      v29 = +[BAAppAnalyticsAdditionalData supportsUnifiedProductPageKey];
      v43[0] = v29;
      v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 supportsUnifiedProductPage]);
      v44[0] = v18;
      v19 = +[BAAppAnalyticsAdditionalData editionKindKey];
      v43[1] = v19;
      v20 = [v10 editionKind];
      if (v20)
      {
        [v10 editionKind];
      }

      else
      {
        +[NSNull null];
      }
      v23 = ;
      v44[1] = v23;
      v24 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
      [v16 setObject:v24 forKeyedSubscript:BAAppAnalyticsAdditionalDataKey];

      v7 = v30;
      v6 = v31;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100133104;
    block[3] = &unk_100A08098;
    block[4] = self;
    v36 = v14;
    v37 = v33;
    v38 = v32;
    v39 = v16;
    v40 = v6;
    v41 = v9;
    v42 = v7;
    v25 = v16;
    v26 = v32;
    v27 = v33;
    v28 = v14;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v21 = objc_retainBlock(v7);
    v22 = v21;
    if (v21)
    {
      (*(v21 + 2))(v21, 0, 0);
    }
  }
}

- (void)_recordMetricsForBuyButtonWithAssetID:(id)a3 actionDetails:(id)a4 offerType:(id)a5
{
  v11 = a3;
  v7 = a4;
  v8 = a5;
  v9 = objc_opt_new();
  [v9 setObject:JSARecordEventTypeClick forKeyedSubscript:JSARecordKeyEventType];
  [v9 setObject:@"AudiobookPreview" forKeyedSubscript:JSARecordKeyActionContext];
  [v9 setObject:@"buy" forKeyedSubscript:JSARecordKeyActionType];
  if (v7)
  {
    [v9 setObject:v7 forKeyedSubscript:JSARecordKeyActionDetails];
  }

  if (v8)
  {
    v10 = [v8 description];
    [v9 setObject:v10 forKeyedSubscript:JSARecordKeyOfferType];
  }

  [v9 setObject:v11 forKeyedSubscript:JSARecordKeyTargetId];
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