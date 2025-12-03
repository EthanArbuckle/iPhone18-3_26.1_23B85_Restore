@interface BKMinifiedAssetPresenter
+ (void)minimizedPresenterWithLibraryAsset:(id)asset options:(id)options presenter:(id)presenter completion:(id)completion;
- (AEAssetAudiobookStatus)minifiedAssetStatus;
- (BCFutureValue)minifiedAssetPresenterAssetViewControllerFuture;
- (BKMinifiedAssetPresenter)initWithAssetID:(id)d helper:(id)helper minifiedController:(id)controller options:(id)options presenter:(id)presenter;
- (BKMinifiedPresenting)minifiedPresenter;
- (BOOL)minifiedAssetPresenterShouldAnimateFromMinibar;
- (double)minifiedAssetPresenterMinibarCornerRadius;
- (double)minifiedAssetPresenterMinibarFloatingHorizontalOffset;
- (double)minifiedAssetPresenterMinibarFloatingVerticalOffset;
- (double)minifiedAssetPresenterMinibarHeight;
- (double)minifiedAssetPresenterMinibarMaxWidth;
- (id)_futureViewControllerWithAssetID:(id)d options:(id)options;
- (id)_futureViewControllerWithAssetViewController:(id)controller;
- (id)minifiedAssetPresenterLoadAssetBlock;
- (void)_unloadAssetViewController;
- (void)dealloc;
- (void)minifiedAssetPresenterDidCloseAssetFully;
- (void)minifiedAssetPresenterDidCloseAssetMinified;
- (void)minifiedAssetPresenterDidOpenAssetFully;
- (void)minifiedAssetPresenterDidReloadAssetViewController:(id)controller;
- (void)minifiedAssetPresenterPausePlayback;
- (void)minifiedAssetPresenterSaveStateClosing:(BOOL)closing;
- (void)minifiedAssetPresenterWillOpenAssetMinified;
- (void)minifiedControllerRequestClose:(id)close error:(id)error;
@end

@implementation BKMinifiedAssetPresenter

- (id)_futureViewControllerWithAssetID:(id)d options:(id)options
{
  dCopy = d;
  optionsCopy = options;
  v8 = objc_opt_new();
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100152D90;
  v16[3] = &unk_100A08740;
  objc_copyWeak(&v18, &location);
  v9 = v8;
  v17 = v9;
  [BKAssetLookup assetLookupWithID:dCopy options:optionsCopy completion:v16];
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

- (id)_futureViewControllerWithAssetViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [[BCMutableFutureValue alloc] initWithValue:controllerCopy];
  minifiedController = [(BKMinifiedAssetPresenter *)self minifiedController];
  [minifiedController setMinifiedControllerLoadedAssetViewController:controllerCopy];

  return v5;
}

- (BKMinifiedAssetPresenter)initWithAssetID:(id)d helper:(id)helper minifiedController:(id)controller options:(id)options presenter:(id)presenter
{
  dCopy = d;
  helperCopy = helper;
  controllerCopy = controller;
  optionsCopy = options;
  presenterCopy = presenter;
  v30.receiver = self;
  v30.super_class = BKMinifiedAssetPresenter;
  v17 = [(BKMinifiedAssetPresenter *)&v30 init];
  if (v17)
  {
    minifiedControllerMinibarViewController = [controllerCopy minifiedControllerMinibarViewController];
    objc_storeStrong(&v17->_helper, helper);
    v19 = [dCopy copy];
    minifiedAssetPresenterAssetID = v17->_minifiedAssetPresenterAssetID;
    v17->_minifiedAssetPresenterAssetID = v19;

    v21 = [optionsCopy copy];
    options = v17->_options;
    v17->_options = v21;

    objc_storeStrong(&v17->_minifiedController, controller);
    [(AEAssetMinifiedController *)v17->_minifiedController setMinifiedControllerDelegate:v17];
    objc_storeStrong(&v17->_minibarViewController, minifiedControllerMinibarViewController);
    objc_storeWeak(&v17->_minifiedPresenter, presenterCopy);
    minibarViewController = [(BKMinifiedAssetPresenter *)v17 minibarViewController];
    [minibarViewController setMinibarViewControllerDelegate:v17];

    minifiedController = [(BKMinifiedAssetPresenter *)v17 minifiedController];
    minifiedControllerShouldPreloadAssetViewController = [minifiedController minifiedControllerShouldPreloadAssetViewController];

    if (minifiedControllerShouldPreloadAssetViewController)
    {
      v26 = [(BKMinifiedAssetPresenter *)v17 _futureViewControllerWithAssetID:dCopy options:optionsCopy];
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
    minifiedAssetPresenterAssetID = [(BKMinifiedAssetPresenter *)self minifiedAssetPresenterAssetID];
    *buf = 136446722;
    v7 = "[BKMinifiedAssetPresenter dealloc]";
    v8 = 2112;
    selfCopy = self;
    v10 = 2112;
    v11 = minifiedAssetPresenterAssetID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}s:[%@] assetID=%@", buf, 0x20u);
  }

  [(BKMinifiedAssetPresenter *)self _unloadAssetViewController];
  v5.receiver = self;
  v5.super_class = BKMinifiedAssetPresenter;
  [(BKMinifiedAssetPresenter *)&v5 dealloc];
}

+ (void)minimizedPresenterWithLibraryAsset:(id)asset options:(id)options presenter:(id)presenter completion:(id)completion
{
  assetCopy = asset;
  optionsCopy = options;
  presenterCopy = presenter;
  completionCopy = completion;
  assetID = [assetCopy assetID];
  assetLogID = [assetCopy assetLogID];
  dataSourceIdentifier = [assetCopy dataSourceIdentifier];
  if ([dataSourceIdentifier isEqual:@"com.apple.ibooks.datasource.ubiquity"])
  {
    v17 = [assetCopy state] == 3;
  }

  else
  {
    v17 = 0;
  }

  v18 = +[BKAppDelegate delegate];
  libraryAssetProvider = [v18 libraryAssetProvider];

  if (libraryAssetProvider)
  {
    v32 = v17;
    v33 = completionCopy;
    v34 = presenterCopy;
    selfCopy = self;
    v21 = assetID;
    v22 = optionsCopy;
    isAudiobook = [assetCopy isAudiobook];
    streamable = [assetCopy streamable];
    isSupplementalContent = [assetCopy isSupplementalContent];
    supplementalContentAssets = [assetCopy supplementalContentAssets];
    v26 = [supplementalContentAssets count];

    v27 = sub_100152B5C();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v48 = assetLogID;
      v49 = 2048;
      v50 = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "minimizedPresenterWithLibraryAsset logID:%{public}@ supplemental content count=%lu", buf, 0x16u);
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1001535D4;
    v35[3] = &unk_100A08790;
    v36 = assetLogID;
    v43 = streamable;
    optionsCopy = v22;
    v37 = v22;
    assetID = v21;
    v38 = v21;
    v42 = selfCopy;
    v39 = assetCopy;
    presenterCopy = v34;
    v40 = v34;
    v44 = isAudiobook;
    v45 = isSupplementalContent;
    v46 = v32;
    completionCopy = v33;
    v41 = v33;
    [libraryAssetProvider assetForLibraryAsset:v39 completion:v35];

    v28 = v36;
  }

  else
  {
    v29 = _AEBookPluginsLifeCycleLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v48 = assetLogID;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "minimizedPresenterWithLibraryAsset no libraryAssetProvider for logID:%{public}@", buf, 0xCu);
    }

    v30 = objc_retainBlock(completionCopy);
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
  assetViewControllerFuture = [(BKMinifiedAssetPresenter *)self assetViewControllerFuture];

  if (!assetViewControllerFuture)
  {
    minifiedAssetPresenterAssetID = [(BKMinifiedAssetPresenter *)self minifiedAssetPresenterAssetID];
    options = [(BKMinifiedAssetPresenter *)self options];
    v7 = [(BKMinifiedAssetPresenter *)self _futureViewControllerWithAssetID:minifiedAssetPresenterAssetID options:options];
    [(BKMinifiedAssetPresenter *)self setAssetViewControllerFuture:v7];
  }

  assetViewControllerFuture2 = [(BKMinifiedAssetPresenter *)self assetViewControllerFuture];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100153D04;
  v11[3] = &unk_100A08670;
  v9 = v3;
  v12 = v9;
  [assetViewControllerFuture2 get:v11];

  return v9;
}

- (void)minifiedAssetPresenterDidReloadAssetViewController:(id)controller
{
  controllerCopy = controller;
  minifiedAssetPresenterAssetID = [(BKMinifiedAssetPresenter *)self minifiedAssetPresenterAssetID];
  asset = [controllerCopy asset];
  assetID = [asset assetID];
  v7 = [minifiedAssetPresenterAssetID isEqualToString:assetID];

  if ((v7 & 1) == 0)
  {
    sub_100791160();
  }

  assetViewControllerFuture = [(BKMinifiedAssetPresenter *)self assetViewControllerFuture];

  v9 = controllerCopy;
  if (assetViewControllerFuture)
  {
    v10 = [(BKMinifiedAssetPresenter *)self _futureViewControllerWithAssetViewController:controllerCopy];
    [(BKMinifiedAssetPresenter *)self setAssetViewControllerFuture:v10];

    v9 = controllerCopy;
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
  minibarViewController = [(BKMinifiedAssetPresenter *)self minibarViewController];
  [minibarViewController minifiedViewControllerMinibarHeight];
  v4 = v3;

  return v4;
}

- (double)minifiedAssetPresenterMinibarMaxWidth
{
  minibarViewController = [(BKMinifiedAssetPresenter *)self minibarViewController];
  [minibarViewController minifiedViewControllerMinibarMaxWidth];
  v4 = v3;

  return v4;
}

- (double)minifiedAssetPresenterMinibarFloatingHorizontalOffset
{
  minibarViewController = [(BKMinifiedAssetPresenter *)self minibarViewController];
  [minibarViewController minifiedViewControllerMinibarFloatingHorizontalOffset];
  v4 = v3;

  return v4;
}

- (double)minifiedAssetPresenterMinibarFloatingVerticalOffset
{
  minibarViewController = [(BKMinifiedAssetPresenter *)self minibarViewController];
  [minibarViewController minifiedViewControllerMinibarFloatingVerticalOffset];
  v4 = v3;

  return v4;
}

- (double)minifiedAssetPresenterMinibarCornerRadius
{
  minibarViewController = [(BKMinifiedAssetPresenter *)self minibarViewController];
  [minibarViewController minifiedViewControllerMinibarCornerRadius];
  v4 = v3;

  return v4;
}

- (AEAssetAudiobookStatus)minifiedAssetStatus
{
  minifiedAssetPresenterMinifiedController = [(BKMinifiedAssetPresenter *)self minifiedAssetPresenterMinifiedController];
  v3 = [minifiedAssetPresenterMinifiedController minifiedControllerStateConforminigToProtocol:&OBJC_PROTOCOL___AEAssetAudiobookStatus];

  return v3;
}

- (void)minifiedAssetPresenterWillOpenAssetMinified
{
  minifiedController = [(BKMinifiedAssetPresenter *)self minifiedController];
  [minifiedController minifiedControllerWillOpenAsset];
}

- (void)minifiedAssetPresenterDidCloseAssetMinified
{
  minifiedController = [(BKMinifiedAssetPresenter *)self minifiedController];
  [minifiedController minifiedControllerDidCloseAsset];
}

- (void)minifiedAssetPresenterDidOpenAssetFully
{
  minifiedController = [(BKMinifiedAssetPresenter *)self minifiedController];
  [minifiedController minifiedControllerDidOpenAssetFully];
}

- (BOOL)minifiedAssetPresenterShouldAnimateFromMinibar
{
  minifiedController = [(BKMinifiedAssetPresenter *)self minifiedController];
  minifiedControllerAnimateFromMinibarIfPossible = [minifiedController minifiedControllerAnimateFromMinibarIfPossible];

  return minifiedControllerAnimateFromMinibarIfPossible;
}

- (void)minifiedAssetPresenterDidCloseAssetFully
{
  minifiedController = [(BKMinifiedAssetPresenter *)self minifiedController];
  [minifiedController minifiedControllerDidCloseAssetFully];

  minifiedController2 = [(BKMinifiedAssetPresenter *)self minifiedController];
  minifiedControllerShouldUnloadAssetViewController = [minifiedController2 minifiedControllerShouldUnloadAssetViewController];

  if (minifiedControllerShouldUnloadAssetViewController)
  {

    [(BKMinifiedAssetPresenter *)self _unloadAssetViewController];
  }
}

- (void)_unloadAssetViewController
{
  assetViewControllerFuture = [(BKMinifiedAssetPresenter *)self assetViewControllerFuture];
  [assetViewControllerFuture cancel];

  [(BKMinifiedAssetPresenter *)self setAssetViewControllerFuture:0];
  minifiedController = [(BKMinifiedAssetPresenter *)self minifiedController];
  minifiedControllerLoadedAssetViewController = [minifiedController minifiedControllerLoadedAssetViewController];

  if (minifiedControllerLoadedAssetViewController)
  {
    [minifiedController minifiedControllerWillUnloadAsset];
    [minifiedController setMinifiedControllerLoadedAssetViewController:0];
  }
}

- (void)minifiedAssetPresenterSaveStateClosing:(BOOL)closing
{
  minifiedController = [(BKMinifiedAssetPresenter *)self minifiedController];
  [minifiedController minifiedControllerSaveState];
}

- (void)minifiedAssetPresenterPausePlayback
{
  minifiedController = [(BKMinifiedAssetPresenter *)self minifiedController];
  [minifiedController minifiedAssetPresenterPausePlayback];
}

- (void)minifiedControllerRequestClose:(id)close error:(id)error
{
  errorCopy = error;
  minifiedPresenter = [(BKMinifiedAssetPresenter *)self minifiedPresenter];
  objc_opt_class();
  options = [(BKMinifiedAssetPresenter *)self options];
  v7 = [options objectForKeyedSubscript:@"BKAudiobookOptionsIsRetryKey"];
  v8 = BUDynamicCast();
  [minifiedPresenter minifiedPresenterClose:self error:errorCopy isRetry:{objc_msgSend(v8, "BOOLValue")}];
}

- (BKMinifiedPresenting)minifiedPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_minifiedPresenter);

  return WeakRetained;
}

@end