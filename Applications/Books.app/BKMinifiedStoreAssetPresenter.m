@interface BKMinifiedStoreAssetPresenter
+ (void)minimizedPresenterWithAsset:(id)a3 options:(id)a4 presenter:(id)a5 completion:(id)a6;
- (AEAssetAudiobookStatus)minifiedAssetStatus;
- (BCFutureValue)minifiedAssetPresenterAssetViewControllerFuture;
- (BKMinifiedPresenting)minifiedPresenter;
- (BKMinifiedStoreAssetPresenter)initWithAsset:(id)a3 libraryAsset:(id)a4 options:(id)a5 presenter:(id)a6;
- (id)_futureViewControllerWithAssetID:(id)a3 options:(id)a4;
- (id)minifiedAssetPresenterLoadAssetBlock;
- (id)touchVC;
- (void)_unloadAssetViewController;
- (void)dealloc;
- (void)minifiedAssetPresenterDidOpenAssetMinified;
- (void)minifiedAssetPresenterPausePlayback;
- (void)minifiedAssetPresenterTogglePlayback;
- (void)minifiedAssetPresenterWillCloseAssetMinified;
- (void)minifiedControllerRequestClose:(id)a3 error:(id)a4;
@end

@implementation BKMinifiedStoreAssetPresenter

- (id)touchVC
{
  objc_opt_class();

  return BUDynamicCast();
}

- (BKMinifiedStoreAssetPresenter)initWithAsset:(id)a3 libraryAsset:(id)a4 options:(id)a5 presenter:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = BKMinifiedStoreAssetPresenter;
  v15 = [(BKMinifiedStoreAssetPresenter *)&v24 init];
  if (v15)
  {
    v16 = [v11 id];
    v17 = [v16 copy];
    minifiedAssetPresenterAssetID = v15->_minifiedAssetPresenterAssetID;
    v15->_minifiedAssetPresenterAssetID = v17;

    v19 = [v13 copy];
    options = v15->_options;
    v15->_options = v19;

    objc_storeStrong(&v15->_asset, a3);
    objc_storeStrong(&v15->_libraryAsset, a4);
    v21 = +[BKAudiobookNowPlayingModuleFactory fetchOrCreateMiniPlayer];
    playerViewController = v15->_playerViewController;
    v15->_playerViewController = v21;

    objc_storeWeak(&v15->_minifiedPresenter, v14);
  }

  return v15;
}

- (void)dealloc
{
  v3 = [(BKMinifiedStoreAssetPresenter *)self assetViewControllerFuture];
  [v3 cancel];

  [(BKMinifiedStoreAssetPresenter *)self _unloadAssetViewController];
  v4.receiver = self;
  v4.super_class = BKMinifiedStoreAssetPresenter;
  [(BKMinifiedStoreAssetPresenter *)&v4 dealloc];
}

+ (void)minimizedPresenterWithAsset:(id)a3 options:(id)a4 presenter:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = +[BKAppDelegate delegate];
  v15 = [v14 libraryAssetProvider];

  if (v15)
  {
    v16 = [v10 id];
    v17 = [v15 libraryAssetOnMainQueueWithAssetID:v16];
  }

  else
  {
    v17 = 0;
  }

  v18 = [[a1 alloc] initWithAsset:v10 libraryAsset:v17 options:v11 presenter:v13];

  v19 = [v10 id];
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
    v27 = v10;
    v28 = v18;
    v30 = v12;
    v29 = v11;
    [v21 lockupProfilesForStoreIDs:v22 completion:v25];
  }

  else
  {
    v23 = objc_retainBlock(v12);
    v24 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, v18);
    }
  }
}

- (id)_futureViewControllerWithAssetID:(id)a3 options:(id)a4
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
  v4 = [(BKMinifiedStoreAssetPresenter *)self assetViewControllerFuture];

  if (!v4)
  {
    v5 = [(BKMinifiedStoreAssetPresenter *)self minifiedAssetPresenterAssetID];
    v6 = [(BKMinifiedStoreAssetPresenter *)self options];
    v7 = [(BKMinifiedStoreAssetPresenter *)self _futureViewControllerWithAssetID:v5 options:v6];
    [(BKMinifiedStoreAssetPresenter *)self setAssetViewControllerFuture:v7];
  }

  v8 = [(BKMinifiedStoreAssetPresenter *)self assetViewControllerFuture];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100149DE0;
  v11[3] = &unk_100A08670;
  v9 = v3;
  v12 = v9;
  [v8 get:v11];

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
  v2 = [(BKMinifiedStoreAssetPresenter *)self minifiedAssetPresenterMinifiedController];
  v3 = [v2 minifiedControllerStateConforminigToProtocol:&OBJC_PROTOCOL___AEAssetAudiobookStatus];

  return v3;
}

- (void)minifiedAssetPresenterDidOpenAssetMinified
{
  v2 = [(BKMinifiedStoreAssetPresenter *)self touchVC];
  [v2 play];
}

- (void)minifiedAssetPresenterWillCloseAssetMinified
{
  v4 = [(BKMinifiedStoreAssetPresenter *)self touchVC];
  v3 = [(BKMinifiedStoreAssetPresenter *)self minifiedAssetPresenterAssetID];
  [v4 ensureAudiobookNotPlayingWithAssetID:v3];
}

- (void)minifiedAssetPresenterPausePlayback
{
  v2 = [(BKMinifiedStoreAssetPresenter *)self touchVC];
  [v2 pause];
}

- (void)minifiedAssetPresenterTogglePlayback
{
  v2 = [(BKMinifiedStoreAssetPresenter *)self touchVC];
  [v2 togglePlayPause];
}

- (void)_unloadAssetViewController
{
  v3 = [(BKMinifiedStoreAssetPresenter *)self assetViewControllerFuture];
  [v3 cancel];

  [(BKMinifiedStoreAssetPresenter *)self setAssetViewControllerFuture:0];
}

- (void)minifiedControllerRequestClose:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = [(BKMinifiedStoreAssetPresenter *)self minifiedPresenter];
  [v6 minifiedPresenterClose:self error:v5 isRetry:0];
}

- (BKMinifiedPresenting)minifiedPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_minifiedPresenter);

  return WeakRetained;
}

@end