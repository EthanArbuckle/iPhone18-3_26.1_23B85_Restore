@interface BKMinifiedAssetPresenter
+ (void)minimizedPresenterWithLibraryAsset:(id)a3 options:(id)a4 presenter:(id)a5 completion:(id)a6;
- (AEAssetAudiobookStatus)minifiedAssetStatus;
- (BCFutureValue)minifiedAssetPresenterAssetViewControllerFuture;
- (BKMinifiedAssetPresenter)initWithAssetID:(id)a3 helper:(id)a4 minifiedController:(id)a5 options:(id)a6 presenter:(id)a7;
- (BKMinifiedPresenting)minifiedPresenter;
- (BOOL)minifiedAssetPresenterShouldAnimateFromMinibar;
- (double)minifiedAssetPresenterMinibarCornerRadius;
- (double)minifiedAssetPresenterMinibarFloatingHorizontalOffset;
- (double)minifiedAssetPresenterMinibarFloatingVerticalOffset;
- (double)minifiedAssetPresenterMinibarHeight;
- (double)minifiedAssetPresenterMinibarMaxWidth;
- (id)_futureViewControllerWithAssetID:(id)a3 options:(id)a4;
- (id)_futureViewControllerWithAssetViewController:(id)a3;
- (id)minifiedAssetPresenterLoadAssetBlock;
- (void)_unloadAssetViewController;
- (void)dealloc;
- (void)minifiedAssetPresenterDidCloseAssetFully;
- (void)minifiedAssetPresenterDidCloseAssetMinified;
- (void)minifiedAssetPresenterDidOpenAssetFully;
- (void)minifiedAssetPresenterDidReloadAssetViewController:(id)a3;
- (void)minifiedAssetPresenterPausePlayback;
- (void)minifiedAssetPresenterSaveStateClosing:(BOOL)a3;
- (void)minifiedAssetPresenterWillOpenAssetMinified;
- (void)minifiedControllerRequestClose:(id)a3 error:(id)a4;
@end

@implementation BKMinifiedAssetPresenter

- (id)_futureViewControllerWithAssetID:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100152D90;
  v16[3] = &unk_100A08740;
  objc_copyWeak(&v18, &location);
  v9 = v8;
  v17 = v9;
  [BKAssetLookup assetLookupWithID:v6 options:v7 completion:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100152E48;
  v10 = v14[3] = &unk_100A04008;
  v15 = v10;
  [v9 get:v14];
  v11 = v15;
  v12 = v9;

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v12;
}

- (id)_futureViewControllerWithAssetViewController:(id)a3
{
  v4 = a3;
  v5 = [[BCMutableFutureValue alloc] initWithValue:v4];
  v6 = [(BKMinifiedAssetPresenter *)self minifiedController];
  [v6 setMinifiedControllerLoadedAssetViewController:v4];

  return v5;
}

- (BKMinifiedAssetPresenter)initWithAssetID:(id)a3 helper:(id)a4 minifiedController:(id)a5 options:(id)a6 presenter:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30.receiver = self;
  v30.super_class = BKMinifiedAssetPresenter;
  v17 = [(BKMinifiedAssetPresenter *)&v30 init];
  if (v17)
  {
    v18 = [v14 minifiedControllerMinibarViewController];
    objc_storeStrong(&v17->_helper, a4);
    v19 = [v12 copy];
    minifiedAssetPresenterAssetID = v17->_minifiedAssetPresenterAssetID;
    v17->_minifiedAssetPresenterAssetID = v19;

    v21 = [v15 copy];
    options = v17->_options;
    v17->_options = v21;

    objc_storeStrong(&v17->_minifiedController, a5);
    [(AEAssetMinifiedController *)v17->_minifiedController setMinifiedControllerDelegate:v17];
    objc_storeStrong(&v17->_minibarViewController, v18);
    objc_storeWeak(&v17->_minifiedPresenter, v16);
    v23 = [(BKMinifiedAssetPresenter *)v17 minibarViewController];
    [v23 setMinibarViewControllerDelegate:v17];

    v24 = [(BKMinifiedAssetPresenter *)v17 minifiedController];
    v25 = [v24 minifiedControllerShouldPreloadAssetViewController];

    if (v25)
    {
      v26 = [(BKMinifiedAssetPresenter *)v17 _futureViewControllerWithAssetID:v12 options:v15];
      [(BKMinifiedAssetPresenter *)v17 setAssetViewControllerFuture:v26];
    }

    v27 = BCSceneLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = v17->_minifiedAssetPresenterAssetID;
      *buf = 136446722;
      v32 = "[BKMinifiedAssetPresenter initWithAssetID:helper:minifiedController:options:presenter:]";
      v33 = 2112;
      v34 = v17;
      v35 = 2112;
      v36 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%{public}s:[%@] assetID=%@", buf, 0x20u);
    }
  }

  return v17;
}

- (void)dealloc
{
  v3 = BCSceneLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(BKMinifiedAssetPresenter *)self minifiedAssetPresenterAssetID];
    *buf = 136446722;
    v7 = "[BKMinifiedAssetPresenter dealloc]";
    v8 = 2112;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}s:[%@] assetID=%@", buf, 0x20u);
  }

  [(BKMinifiedAssetPresenter *)self _unloadAssetViewController];
  v5.receiver = self;
  v5.super_class = BKMinifiedAssetPresenter;
  [(BKMinifiedAssetPresenter *)&v5 dealloc];
}

+ (void)minimizedPresenterWithLibraryAsset:(id)a3 options:(id)a4 presenter:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 assetID];
  v15 = [v10 assetLogID];
  v16 = [v10 dataSourceIdentifier];
  if ([v16 isEqual:@"com.apple.ibooks.datasource.ubiquity"])
  {
    v17 = [v10 state] == 3;
  }

  else
  {
    v17 = 0;
  }

  v18 = +[BKAppDelegate delegate];
  v19 = [v18 libraryAssetProvider];

  if (v19)
  {
    v32 = v17;
    v33 = v13;
    v34 = v12;
    v20 = a1;
    v21 = v14;
    v22 = v11;
    v31 = [v10 isAudiobook];
    v23 = [v10 streamable];
    v24 = [v10 isSupplementalContent];
    v25 = [v10 supplementalContentAssets];
    v26 = [v25 count];

    v27 = sub_100152B5C();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v48 = v15;
      v49 = 2048;
      v50 = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "minimizedPresenterWithLibraryAsset logID:%{public}@ supplemental content count=%lu", buf, 0x16u);
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1001535D4;
    v35[3] = &unk_100A08790;
    v36 = v15;
    v43 = v23;
    v11 = v22;
    v37 = v22;
    v14 = v21;
    v38 = v21;
    v42 = v20;
    v39 = v10;
    v12 = v34;
    v40 = v34;
    v44 = v31;
    v45 = v24;
    v46 = v32;
    v13 = v33;
    v41 = v33;
    [v19 assetForLibraryAsset:v39 completion:v35];

    v28 = v36;
  }

  else
  {
    v29 = _AEBookPluginsLifeCycleLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v48 = v15;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "minimizedPresenterWithLibraryAsset no libraryAssetProvider for logID:%{public}@", buf, 0xCu);
    }

    v30 = objc_retainBlock(v13);
    v28 = v30;
    if (v30)
    {
      (*(v30 + 2))(v30, 0);
    }
  }
}

- (BCFutureValue)minifiedAssetPresenterAssetViewControllerFuture
{
  v3 = objc_opt_new();
  v4 = [(BKMinifiedAssetPresenter *)self assetViewControllerFuture];

  if (!v4)
  {
    v5 = [(BKMinifiedAssetPresenter *)self minifiedAssetPresenterAssetID];
    v6 = [(BKMinifiedAssetPresenter *)self options];
    v7 = [(BKMinifiedAssetPresenter *)self _futureViewControllerWithAssetID:v5 options:v6];
    [(BKMinifiedAssetPresenter *)self setAssetViewControllerFuture:v7];
  }

  v8 = [(BKMinifiedAssetPresenter *)self assetViewControllerFuture];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100153D04;
  v11[3] = &unk_100A08670;
  v9 = v3;
  v12 = v9;
  [v8 get:v11];

  return v9;
}

- (void)minifiedAssetPresenterDidReloadAssetViewController:(id)a3
{
  v11 = a3;
  v4 = [(BKMinifiedAssetPresenter *)self minifiedAssetPresenterAssetID];
  v5 = [v11 asset];
  v6 = [v5 assetID];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    sub_100791160();
  }

  v8 = [(BKMinifiedAssetPresenter *)self assetViewControllerFuture];

  v9 = v11;
  if (v8)
  {
    v10 = [(BKMinifiedAssetPresenter *)self _futureViewControllerWithAssetViewController:v11];
    [(BKMinifiedAssetPresenter *)self setAssetViewControllerFuture:v10];

    v9 = v11;
  }
}

- (id)minifiedAssetPresenterLoadAssetBlock
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100153EC8;
  v4[3] = &unk_100A086C0;
  objc_copyWeak(&v5, &location);
  v2 = [v4 copy];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (double)minifiedAssetPresenterMinibarHeight
{
  v2 = [(BKMinifiedAssetPresenter *)self minibarViewController];
  [v2 minifiedViewControllerMinibarHeight];
  v4 = v3;

  return v4;
}

- (double)minifiedAssetPresenterMinibarMaxWidth
{
  v2 = [(BKMinifiedAssetPresenter *)self minibarViewController];
  [v2 minifiedViewControllerMinibarMaxWidth];
  v4 = v3;

  return v4;
}

- (double)minifiedAssetPresenterMinibarFloatingHorizontalOffset
{
  v2 = [(BKMinifiedAssetPresenter *)self minibarViewController];
  [v2 minifiedViewControllerMinibarFloatingHorizontalOffset];
  v4 = v3;

  return v4;
}

- (double)minifiedAssetPresenterMinibarFloatingVerticalOffset
{
  v2 = [(BKMinifiedAssetPresenter *)self minibarViewController];
  [v2 minifiedViewControllerMinibarFloatingVerticalOffset];
  v4 = v3;

  return v4;
}

- (double)minifiedAssetPresenterMinibarCornerRadius
{
  v2 = [(BKMinifiedAssetPresenter *)self minibarViewController];
  [v2 minifiedViewControllerMinibarCornerRadius];
  v4 = v3;

  return v4;
}

- (AEAssetAudiobookStatus)minifiedAssetStatus
{
  v2 = [(BKMinifiedAssetPresenter *)self minifiedAssetPresenterMinifiedController];
  v3 = [v2 minifiedControllerStateConforminigToProtocol:&OBJC_PROTOCOL___AEAssetAudiobookStatus];

  return v3;
}

- (void)minifiedAssetPresenterWillOpenAssetMinified
{
  v2 = [(BKMinifiedAssetPresenter *)self minifiedController];
  [v2 minifiedControllerWillOpenAsset];
}

- (void)minifiedAssetPresenterDidCloseAssetMinified
{
  v2 = [(BKMinifiedAssetPresenter *)self minifiedController];
  [v2 minifiedControllerDidCloseAsset];
}

- (void)minifiedAssetPresenterDidOpenAssetFully
{
  v2 = [(BKMinifiedAssetPresenter *)self minifiedController];
  [v2 minifiedControllerDidOpenAssetFully];
}

- (BOOL)minifiedAssetPresenterShouldAnimateFromMinibar
{
  v2 = [(BKMinifiedAssetPresenter *)self minifiedController];
  v3 = [v2 minifiedControllerAnimateFromMinibarIfPossible];

  return v3;
}

- (void)minifiedAssetPresenterDidCloseAssetFully
{
  v3 = [(BKMinifiedAssetPresenter *)self minifiedController];
  [v3 minifiedControllerDidCloseAssetFully];

  v4 = [(BKMinifiedAssetPresenter *)self minifiedController];
  v5 = [v4 minifiedControllerShouldUnloadAssetViewController];

  if (v5)
  {

    [(BKMinifiedAssetPresenter *)self _unloadAssetViewController];
  }
}

- (void)_unloadAssetViewController
{
  v3 = [(BKMinifiedAssetPresenter *)self assetViewControllerFuture];
  [v3 cancel];

  [(BKMinifiedAssetPresenter *)self setAssetViewControllerFuture:0];
  v5 = [(BKMinifiedAssetPresenter *)self minifiedController];
  v4 = [v5 minifiedControllerLoadedAssetViewController];

  if (v4)
  {
    [v5 minifiedControllerWillUnloadAsset];
    [v5 setMinifiedControllerLoadedAssetViewController:0];
  }
}

- (void)minifiedAssetPresenterSaveStateClosing:(BOOL)a3
{
  v3 = [(BKMinifiedAssetPresenter *)self minifiedController];
  [v3 minifiedControllerSaveState];
}

- (void)minifiedAssetPresenterPausePlayback
{
  v2 = [(BKMinifiedAssetPresenter *)self minifiedController];
  [v2 minifiedAssetPresenterPausePlayback];
}

- (void)minifiedControllerRequestClose:(id)a3 error:(id)a4
{
  v5 = a4;
  v9 = [(BKMinifiedAssetPresenter *)self minifiedPresenter];
  objc_opt_class();
  v6 = [(BKMinifiedAssetPresenter *)self options];
  v7 = [v6 objectForKeyedSubscript:@"BKAudiobookOptionsIsRetryKey"];
  v8 = BUDynamicCast();
  [v9 minifiedPresenterClose:self error:v5 isRetry:{objc_msgSend(v8, "BOOLValue")}];
}

- (BKMinifiedPresenting)minifiedPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_minifiedPresenter);

  return WeakRetained;
}

@end