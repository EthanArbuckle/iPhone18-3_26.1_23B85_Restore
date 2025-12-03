@interface RAPAppStateFactory
+ (void)createAppStateWithMapView:(id)view lookAroundContext:(id)context traits:(id)traits completion:(id)completion;
+ (void)createAppStateWithMapView:(id)view traits:(id)traits place:(id)place searchDataSource:(id)source directionsDataSource:(id)dataSource shouldLoadHomeWorkShortcuts:(BOOL)shortcuts completion:(id)completion;
+ (void)createAppStateWithTraits:(id)traits curatedCollectionContext:(id)context completion:(id)completion;
@end

@implementation RAPAppStateFactory

+ (void)createAppStateWithTraits:(id)traits curatedCollectionContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  traitsCopy = traits;
  v10 = [[RAPAppState alloc] initWithTraits:traitsCopy curatedCollectionContext:contextCopy];

  completionCopy[2](completionCopy, v10);
}

+ (void)createAppStateWithMapView:(id)view lookAroundContext:(id)context traits:(id)traits completion:(id)completion
{
  completionCopy = completion;
  traitsCopy = traits;
  contextCopy = context;
  viewCopy = view;
  v13 = [[RAPAppState alloc] initWithMapView:viewCopy lookAroundContext:contextCopy traits:traitsCopy];

  completionCopy[2](completionCopy, v13);
}

+ (void)createAppStateWithMapView:(id)view traits:(id)traits place:(id)place searchDataSource:(id)source directionsDataSource:(id)dataSource shouldLoadHomeWorkShortcuts:(BOOL)shortcuts completion:(id)completion
{
  shortcutsCopy = shortcuts;
  viewCopy = view;
  traitsCopy = traits;
  placeCopy = place;
  sourceCopy = source;
  dataSourceCopy = dataSource;
  completionCopy = completion;
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x3032000000;
  v72[3] = sub_100E62FA4;
  v72[4] = sub_100E62FB4;
  v73 = 0;
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x3032000000;
  v70[3] = sub_100E62FA4;
  v70[4] = sub_100E62FB4;
  v71 = 0;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = sub_100E62FA4;
  v68[4] = sub_100E62FB4;
  v69 = 0;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = sub_100E62FA4;
  v66[4] = sub_100E62FB4;
  v67 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = sub_100E62FA4;
  v64[4] = sub_100E62FB4;
  v65 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = sub_100E62FA4;
  v62[4] = sub_100E62FB4;
  v63 = 0;
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = +[RAPStorageHistoryContainer searchRecordingStorage];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_100E62FBC;
  v59[3] = &unk_1016565A8;
  v61 = v72;
  v19 = v17;
  v60 = v19;
  [HistoryRAPUserSearch loadAllSearchesFromStorage:v18 completion:v59];

  dispatch_group_enter(v19);
  v20 = +[RAPStorageHistoryContainer directionsRecordingStorage];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100E6301C;
  v56[3] = &unk_1016565A8;
  v58 = v70;
  v21 = v19;
  v57 = v21;
  [HistoryRAPUserDirectionRequest loadAllRequestsFromStorage:v20 completion:v56];

  dispatch_group_enter(v21);
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100E6307C;
  v53[3] = &unk_1016565D0;
  v55 = v68;
  v22 = v21;
  v54 = v22;
  [RAPAuxiliaryControlsRecorder fetchCurrentlyConnectedControlsWithCompletion:v53];
  if (shortcutsCopy)
  {
    dispatch_group_enter(v22);
    v23 = MapsSuggestionsResourceDepotForMapsProcess();
    oneFavorites = [v23 oneFavorites];

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100E630DC;
    v48[3] = &unk_1016565F8;
    v50 = v66;
    v51 = v64;
    v52 = v62;
    v49 = v22;
    [oneFavorites loadAllShortcutsWithHandler:v48];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E632D0;
  block[3] = &unk_101656648;
  v47 = shortcutsCopy;
  v35 = viewCopy;
  v36 = traitsCopy;
  v41 = v72;
  v42 = v70;
  v37 = placeCopy;
  v38 = sourceCopy;
  v43 = v68;
  v44 = v66;
  v45 = v64;
  v46 = v62;
  v39 = dataSourceCopy;
  v40 = completionCopy;
  v25 = completionCopy;
  v26 = dataSourceCopy;
  v27 = sourceCopy;
  v28 = placeCopy;
  v29 = traitsCopy;
  v30 = viewCopy;
  dispatch_group_notify(v22, &_dispatch_main_q, block);

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(v64, 8);

  _Block_object_dispose(v66, 8);
  _Block_object_dispose(v68, 8);

  _Block_object_dispose(v70, 8);
  _Block_object_dispose(v72, 8);
}

@end