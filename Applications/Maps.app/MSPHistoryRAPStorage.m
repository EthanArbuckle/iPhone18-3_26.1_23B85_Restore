@interface MSPHistoryRAPStorage
- (MSPHistoryContainer)historyContainer;
- (MSPHistoryRAPStorage)init;
- (MSPHistoryRAPStorage)initWithStorageDirectoryURL:(id)a3;
- (void)editRecordingForHistoryEntryWithStorageIdentifier:(id)a3 usingBlock:(id)a4;
- (void)garbageCollectRAPStorageIfNeeded;
- (void)historyContainerPerformMaintenanceForValidIdentifiers:(id)a3 completion:(id)a4;
- (void)loadAllRecordingsWithConcurrentBlock:(id)a3;
- (void)saveHistoryEntry:(id)a3 origin:(int64_t)a4 searchTicket:(id)a5;
- (void)saveRecording:(id)a3 forHistoryEntryWithStorageIdentifier:(id)a4 completion:(id)a5;
- (void)setHistoryContainer:(id)a3;
@end

@implementation MSPHistoryRAPStorage

- (void)saveHistoryEntry:(id)a3 origin:(int64_t)a4 searchTicket:(id)a5
{
  v8 = a5;
  v9 = [a3 storageIdentifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1007E39F8;
  v11[3] = &unk_10162AB98;
  v12 = v8;
  v13 = a4;
  v10 = v8;
  [(MSPHistoryRAPStorage *)self editRecordingForHistoryEntryWithStorageIdentifier:v9 usingBlock:v11];
}

- (MSPHistoryContainer)historyContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_historyContainer);

  return WeakRetained;
}

- (void)garbageCollectRAPStorageIfNeeded
{
  v2 = [(MSPHistoryRAPStorage *)self underlyingStorage];
  [v2 garbageCollectIfNeeded];
}

- (void)saveRecording:(id)a3 forHistoryEntryWithStorageIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MSPHistoryRAPStorage *)self underlyingStorage];
  v12 = [v10 data];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100FA3D6C;
  v14[3] = &unk_1016610B8;
  v15 = v8;
  v13 = v8;
  [v11 saveItemWithData:v12 forIdentifier:v9 completion:v14];
}

- (void)editRecordingForHistoryEntryWithStorageIdentifier:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSPHistoryRAPStorage *)self underlyingStorage];
  v9 = [v8 dataForItemWithIdentifier:v6 error:0];

  if (!v9 || (v10 = [objc_alloc(objc_msgSend(objc_opt_class() "recordingClass"))]) == 0)
  {
    v10 = objc_alloc_init([objc_opt_class() recordingClass]);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100FA3ECC;
  v14[3] = &unk_101661A40;
  v14[4] = self;
  v15 = v10;
  v16 = v6;
  v11 = v7[2];
  v12 = v6;
  v13 = v10;
  v11(v7, v13, v14);
}

- (void)loadAllRecordingsWithConcurrentBlock:(id)a3
{
  v4 = a3;
  v5 = [(MSPHistoryRAPStorage *)self underlyingStorage];
  v6 = [v5 allItemIdentifiersByDescendingCreationDate];

  if ([v6 count])
  {
    v21 = v6;
    v7 = [NSArray arrayWithObjects:&v21 count:1];
    v8 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"identifier IN %@" argumentArray:v7];

    v9 = [_TtC8MapsSync20MapsSyncQueryOptions alloc];
    v10 = [[NSSortDescriptor alloc] initWithKey:@"createTime" ascending:0];
    v20 = v10;
    v11 = [NSArray arrayWithObjects:&v20 count:1];
    v12 = [v9 initWithPredicate:v8 sortDescriptors:v11 range:0];

    v13 = objc_alloc_init(MSHistoryItemRequest);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100FA4110;
    v16[3] = &unk_10165FB28;
    v17 = v6;
    v18 = self;
    v19 = v4;
    [v13 fetchWithOptions:v12 completionHandler:v16];
  }

  else
  {
    v14 = objc_opt_new();
    v15 = objc_opt_new();
    (*(v4 + 2))(v4, v14, v15);
  }
}

- (void)historyContainerPerformMaintenanceForValidIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSPHistoryRAPStorage *)self underlyingStorage];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100FA44B0;
  v10[3] = &unk_10165FB00;
  v11 = v6;
  v9 = v6;
  [v8 removeItemsPassingTest:v10];

  v7[2](v7, 0);
}

- (void)setHistoryContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  objc_storeWeak(&v5->_historyContainer, v4);
  if (v4)
  {
    v6 = objc_alloc_init(MSHistoryItemRequest);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100FA45B0;
    v7[3] = &unk_101660FB0;
    v7[4] = v5;
    [v6 fetchWithCompletionHandler:v7];
  }

  objc_sync_exit(v5);
}

- (MSPHistoryRAPStorage)initWithStorageDirectoryURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MSPHistoryRAPStorage;
  v5 = [(MSPHistoryRAPStorage *)&v9 init];
  if (v5)
  {
    v6 = [[RAPStorage alloc] initWithStorageDirectoryURL:v4];
    underlyingStorage = v5->_underlyingStorage;
    v5->_underlyingStorage = v6;

    +[RAPStorage standardTimeToLive];
    [(RAPStorage *)v5->_underlyingStorage setItemTimeToLive:?];
  }

  return v5;
}

- (MSPHistoryRAPStorage)init
{
  result = [NSException raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end