@interface RAPAppStateCreator
- (RAPAppStateCreator)initWithSceneDelegate:(id)delegate;
- (id)createReportAProblemAppState;
- (void)_saveDirectionRecordingsIfNeededWithCompletion:(id)completion;
- (void)createCuratedCollectionReportAProblemAppStateWithContext:(id)context completion:(id)completion;
- (void)createLookAroundReportAProblemAppStateWithLookAroundContext:(id)context completion:(id)completion;
- (void)createPlacecardImageryReportAProblemAppStateWithContext:(id)context completion:(id)completion;
- (void)createReportAProblemAppStateAndPrefetchShortcutsWithCompletion:(id)completion;
- (void)createReportAProblemAppStateWithCompletion:(id)completion;
@end

@implementation RAPAppStateCreator

- (void)createPlacecardImageryReportAProblemAppStateWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v7 = [RAPAppState alloc];
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
  chromeViewController = [WeakRetained chromeViewController];
  currentTraits = [chromeViewController currentTraits];
  v11 = [(RAPAppState *)v7 initWithTraits:currentTraits placecardImageryContext:contextCopy];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11, 0);
  }
}

- (void)_saveDirectionRecordingsIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
  platformController = [WeakRetained platformController];
  sessionStack = [platformController sessionStack];

  v8 = [sessionStack countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(sessionStack);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [sessionStack countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  reportAProblemRecorder = [v8 reportAProblemRecorder];

  if (reportAProblemRecorder)
  {
    reportAProblemRecorder2 = [v8 reportAProblemRecorder];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1007C544C;
    v14[3] = &unk_10162ABE0;
    v15 = completionCopy;
    [reportAProblemRecorder2 savePartialRecordingWithCompletion:v14];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)createCuratedCollectionReportAProblemAppStateWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
  chromeViewController = [WeakRetained chromeViewController];
  currentTraits = [chromeViewController currentTraits];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1007C5608;
  v12[3] = &unk_10162A330;
  v13 = completionCopy;
  v11 = completionCopy;
  [RAPAppStateFactory createAppStateWithTraits:currentTraits curatedCollectionContext:contextCopy completion:v12];
}

- (id)createReportAProblemAppState
{
  v3 = [RAPAppState alloc];
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
  chromeViewController = [WeakRetained chromeViewController];
  mapView = [chromeViewController mapView];
  v7 = objc_loadWeakRetained(&self->_sceneDelegate);
  chromeViewController2 = [v7 chromeViewController];
  currentTraits = [chromeViewController2 currentTraits];
  v10 = [(RAPAppState *)v3 initWithMapView:mapView traits:currentTraits searchHistory:&__NSArray0__struct directionHistory:&__NSArray0__struct place:0 searchDataSource:0 directionsDataSource:0 currentlyConnectedAuxiliaryControls:0];

  return v10;
}

- (void)createReportAProblemAppStateAndPrefetchShortcutsWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007C57A8;
  v4[3] = &unk_10165E240;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(RAPAppStateCreator *)selfCopy _saveDirectionRecordingsIfNeededWithCompletion:v4];
}

- (void)createLookAroundReportAProblemAppStateWithLookAroundContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
  chromeViewController = [WeakRetained chromeViewController];
  mapView = [chromeViewController mapView];
  v11 = objc_loadWeakRetained(&self->_sceneDelegate);
  chromeViewController2 = [v11 chromeViewController];
  currentTraits = [chromeViewController2 currentTraits];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1007C5AC0;
  v15[3] = &unk_10162A330;
  v16 = completionCopy;
  v14 = completionCopy;
  [RAPAppStateFactory createAppStateWithMapView:mapView lookAroundContext:contextCopy traits:currentTraits completion:v15];
}

- (void)createReportAProblemAppStateWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007C5B70;
  v4[3] = &unk_10165E240;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(RAPAppStateCreator *)selfCopy _saveDirectionRecordingsIfNeededWithCompletion:v4];
}

- (RAPAppStateCreator)initWithSceneDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = RAPAppStateCreator;
  v5 = [(RAPAppStateCreator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sceneDelegate, delegateCopy);
  }

  return v6;
}

@end