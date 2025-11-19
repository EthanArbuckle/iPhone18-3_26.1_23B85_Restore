@interface RAPAppStateCreator
- (RAPAppStateCreator)initWithSceneDelegate:(id)a3;
- (id)createReportAProblemAppState;
- (void)_saveDirectionRecordingsIfNeededWithCompletion:(id)a3;
- (void)createCuratedCollectionReportAProblemAppStateWithContext:(id)a3 completion:(id)a4;
- (void)createLookAroundReportAProblemAppStateWithLookAroundContext:(id)a3 completion:(id)a4;
- (void)createPlacecardImageryReportAProblemAppStateWithContext:(id)a3 completion:(id)a4;
- (void)createReportAProblemAppStateAndPrefetchShortcutsWithCompletion:(id)a3;
- (void)createReportAProblemAppStateWithCompletion:(id)a3;
@end

@implementation RAPAppStateCreator

- (void)createPlacecardImageryReportAProblemAppStateWithContext:(id)a3 completion:(id)a4
{
  v12 = a4;
  v6 = a3;
  v7 = [RAPAppState alloc];
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
  v9 = [WeakRetained chromeViewController];
  v10 = [v9 currentTraits];
  v11 = [(RAPAppState *)v7 initWithTraits:v10 placecardImageryContext:v6];

  if (v12)
  {
    v12[2](v12, v11, 0);
  }
}

- (void)_saveDirectionRecordingsIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
  v6 = [WeakRetained platformController];
  v7 = [v6 sessionStack];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = [v8 reportAProblemRecorder];

  if (v12)
  {
    v13 = [v8 reportAProblemRecorder];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1007C544C;
    v14[3] = &unk_10162ABE0;
    v15 = v4;
    [v13 savePartialRecordingWithCompletion:v14];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)createCuratedCollectionReportAProblemAppStateWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
  v9 = [WeakRetained chromeViewController];
  v10 = [v9 currentTraits];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1007C5608;
  v12[3] = &unk_10162A330;
  v13 = v6;
  v11 = v6;
  [RAPAppStateFactory createAppStateWithTraits:v10 curatedCollectionContext:v7 completion:v12];
}

- (id)createReportAProblemAppState
{
  v3 = [RAPAppState alloc];
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
  v5 = [WeakRetained chromeViewController];
  v6 = [v5 mapView];
  v7 = objc_loadWeakRetained(&self->_sceneDelegate);
  v8 = [v7 chromeViewController];
  v9 = [v8 currentTraits];
  v10 = [(RAPAppState *)v3 initWithMapView:v6 traits:v9 searchHistory:&__NSArray0__struct directionHistory:&__NSArray0__struct place:0 searchDataSource:0 directionsDataSource:0 currentlyConnectedAuxiliaryControls:0];

  return v10;
}

- (void)createReportAProblemAppStateAndPrefetchShortcutsWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007C57A8;
  v4[3] = &unk_10165E240;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(RAPAppStateCreator *)v5 _saveDirectionRecordingsIfNeededWithCompletion:v4];
}

- (void)createLookAroundReportAProblemAppStateWithLookAroundContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
  v9 = [WeakRetained chromeViewController];
  v10 = [v9 mapView];
  v11 = objc_loadWeakRetained(&self->_sceneDelegate);
  v12 = [v11 chromeViewController];
  v13 = [v12 currentTraits];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1007C5AC0;
  v15[3] = &unk_10162A330;
  v16 = v6;
  v14 = v6;
  [RAPAppStateFactory createAppStateWithMapView:v10 lookAroundContext:v7 traits:v13 completion:v15];
}

- (void)createReportAProblemAppStateWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007C5B70;
  v4[3] = &unk_10165E240;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(RAPAppStateCreator *)v5 _saveDirectionRecordingsIfNeededWithCompletion:v4];
}

- (RAPAppStateCreator)initWithSceneDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RAPAppStateCreator;
  v5 = [(RAPAppStateCreator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sceneDelegate, v4);
  }

  return v6;
}

@end