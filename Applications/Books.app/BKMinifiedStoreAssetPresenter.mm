@interface BKMinifiedStoreAssetPresenter
+ (void)minimizedPresenterWithAsset:(id)asset options:(id)options presenter:(id)presenter completion:(id)completion;
- (AEAssetAudiobookStatus)minifiedAssetStatus;
- (BCFutureValue)minifiedAssetPresenterAssetViewControllerFuture;
- (BKMinifiedPresenting)minifiedPresenter;
- (BKMinifiedStoreAssetPresenter)initWithAsset:(id)asset libraryAsset:(id)libraryAsset options:(id)options presenter:(id)presenter;
- (id)_futureViewControllerWithAssetID:(id)d options:(id)options;
- (id)minifiedAssetPresenterLoadAssetBlock;
- (id)touchVC;
- (void)_unloadAssetViewController;
- (void)dealloc;
- (void)minifiedAssetPresenterDidOpenAssetMinified;
- (void)minifiedAssetPresenterPausePlayback;
- (void)minifiedAssetPresenterTogglePlayback;
- (void)minifiedAssetPresenterWillCloseAssetMinified;
- (void)minifiedControllerRequestClose:(id)close error:(id)error;
@end

@implementation BKMinifiedStoreAssetPresenter

- (id)touchVC
{
  objc_opt_class();

  return BUDynamicCast();
}

- (BKMinifiedStoreAssetPresenter)initWithAsset:(id)asset libraryAsset:(id)libraryAsset options:(id)options presenter:(id)presenter
{
  assetCopy = asset;
  libraryAssetCopy = libraryAsset;
  optionsCopy = options;
  presenterCopy = presenter;
  v24.receiver = self;
  v24.super_class = BKMinifiedStoreAssetPresenter;
  v15 = [(BKMinifiedStoreAssetPresenter *)&v24 init];
  if (v15)
  {
    v16 = [assetCopy id];
    v17 = [v16 copy];
    minifiedAssetPresenterAssetID = v15->_minifiedAssetPresenterAssetID;
    v15->_minifiedAssetPresenterAssetID = v17;

    v19 = [optionsCopy copy];
    options = v15->_options;
    v15->_options = v19;

    objc_storeStrong(&v15->_asset, asset);
    objc_storeStrong(&v15->_libraryAsset, libraryAsset);
    v21 = +[BKAudiobookNowPlayingModuleFactory fetchOrCreateMiniPlayer];
    playerViewController = v15->_playerViewController;
    v15->_playerViewController = v21;

    objc_storeWeak(&v15->_minifiedPresenter, presenterCopy);
  }

  return v15;
}

- (void)dealloc
{
  assetViewControllerFuture = [(BKMinifiedStoreAssetPresenter *)self assetViewControllerFuture];
  [assetViewControllerFuture cancel];

  [(BKMinifiedStoreAssetPresenter *)self _unloadAssetViewController];
  v4.receiver = self;
  v4.super_class = BKMinifiedStoreAssetPresenter;
  [(BKMinifiedStoreAssetPresenter *)&v4 dealloc];
}

+ (void)minimizedPresenterWithAsset:(id)asset options:(id)options presenter:(id)presenter completion:(id)completion
{
  assetCopy = asset;
  optionsCopy = options;
  completionCopy = completion;
  presenterCopy = presenter;
  v14 = +[BKAppDelegate delegate];
  libraryAssetProvider = [v14 libraryAssetProvider];

  if (libraryAssetProvider)
  {
    v16 = [assetCopy id];
    v17 = [libraryAssetProvider libraryAssetOnMainQueueWithAssetID:v16];
  }

  else
  {
    v17 = 0;
  }

  v18 = [[self alloc] initWithAsset:assetCopy libraryAsset:v17 options:optionsCopy presenter:presenterCopy];

  v19 = [assetCopy id];
  v20 = v19;
  if (v18 && [v19 length])
  {
    v21 = +[AEUserPublishing sharedInstance];
    v31 = v20;
    v22 = [NSArray arrayWithObjects:&v31 count:1];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100149768;
    v25[3] = &unk_100A08608;
    v26 = v20;
    v27 = assetCopy;
    v28 = v18;
    v30 = completionCopy;
    v29 = optionsCopy;
    [v21 lockupProfilesForStoreIDs:v22 completion:v25];
  }

  else
  {
    v23 = objc_retainBlock(completionCopy);
    v24 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, v18);
    }
  }
}

- (id)_futureViewControllerWithAssetID:(id)d options:(id)options
{
  v4 = objc_opt_new();
  v5 = [NSError errorWithDomain:@"com.apple.iBooks" code:0 userInfo:&off_100A43CF0];
  [v4 set:0 error:v5];
  [v4 get:&stru_100A08648];

  return v4;
}

- (BCFutureValue)minifiedAssetPresenterAssetViewControllerFuture
{
  v3 = objc_opt_new();
  assetViewControllerFuture = [(BKMinifiedStoreAssetPresenter *)self assetViewControllerFuture];

  if (!assetViewControllerFuture)
  {
    minifiedAssetPresenterAssetID = [(BKMinifiedStoreAssetPresenter *)self minifiedAssetPresenterAssetID];
    options = [(BKMinifiedStoreAssetPresenter *)self options];
    v7 = [(BKMinifiedStoreAssetPresenter *)self _futureViewControllerWithAssetID:minifiedAssetPresenterAssetID options:options];
    [(BKMinifiedStoreAssetPresenter *)self setAssetViewControllerFuture:v7];
  }

  assetViewControllerFuture2 = [(BKMinifiedStoreAssetPresenter *)self assetViewControllerFuture];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100149DE0;
  v11[3] = &unk_100A08670;
  v9 = v3;
  v12 = v9;
  [assetViewControllerFuture2 get:v11];

  return v9;
}

- (id)minifiedAssetPresenterLoadAssetBlock
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100149EBC;
  v4[3] = &unk_100A086C0;
  objc_copyWeak(&v5, &location);
  v2 = [v4 copy];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (AEAssetAudiobookStatus)minifiedAssetStatus
{
  minifiedAssetPresenterMinifiedController = [(BKMinifiedStoreAssetPresenter *)self minifiedAssetPresenterMinifiedController];
  v3 = [minifiedAssetPresenterMinifiedController minifiedControllerStateConforminigToProtocol:&OBJC_PROTOCOL___AEAssetAudiobookStatus];

  return v3;
}

- (void)minifiedAssetPresenterDidOpenAssetMinified
{
  touchVC = [(BKMinifiedStoreAssetPresenter *)self touchVC];
  [touchVC play];
}

- (void)minifiedAssetPresenterWillCloseAssetMinified
{
  touchVC = [(BKMinifiedStoreAssetPresenter *)self touchVC];
  minifiedAssetPresenterAssetID = [(BKMinifiedStoreAssetPresenter *)self minifiedAssetPresenterAssetID];
  [touchVC ensureAudiobookNotPlayingWithAssetID:minifiedAssetPresenterAssetID];
}

- (void)minifiedAssetPresenterPausePlayback
{
  touchVC = [(BKMinifiedStoreAssetPresenter *)self touchVC];
  [touchVC pause];
}

- (void)minifiedAssetPresenterTogglePlayback
{
  touchVC = [(BKMinifiedStoreAssetPresenter *)self touchVC];
  [touchVC togglePlayPause];
}

- (void)_unloadAssetViewController
{
  assetViewControllerFuture = [(BKMinifiedStoreAssetPresenter *)self assetViewControllerFuture];
  [assetViewControllerFuture cancel];

  [(BKMinifiedStoreAssetPresenter *)self setAssetViewControllerFuture:0];
}

- (void)minifiedControllerRequestClose:(id)close error:(id)error
{
  errorCopy = error;
  minifiedPresenter = [(BKMinifiedStoreAssetPresenter *)self minifiedPresenter];
  [minifiedPresenter minifiedPresenterClose:self error:errorCopy isRetry:0];
}

- (BKMinifiedPresenting)minifiedPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_minifiedPresenter);

  return WeakRetained;
}

@end