@interface MSPHistoryRAPStorage
- (MSPHistoryContainer)historyContainer;
- (MSPHistoryRAPStorage)init;
- (MSPHistoryRAPStorage)initWithStorageDirectoryURL:(id)l;
- (void)editRecordingForHistoryEntryWithStorageIdentifier:(id)identifier usingBlock:(id)block;
- (void)garbageCollectRAPStorageIfNeeded;
- (void)historyContainerPerformMaintenanceForValidIdentifiers:(id)identifiers completion:(id)completion;
- (void)loadAllRecordingsWithConcurrentBlock:(id)block;
- (void)saveHistoryEntry:(id)entry origin:(int64_t)origin searchTicket:(id)ticket;
- (void)saveRecording:(id)recording forHistoryEntryWithStorageIdentifier:(id)identifier completion:(id)completion;
- (void)setHistoryContainer:(id)container;
@end

@implementation MSPHistoryRAPStorage

- (void)saveHistoryEntry:(id)entry origin:(int64_t)origin searchTicket:(id)ticket
{
  ticketCopy = ticket;
  storageIdentifier = [entry storageIdentifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1007E39F8;
  v11[3] = &unk_10162AB98;
  v12 = ticketCopy;
  originCopy = origin;
  v10 = ticketCopy;
  [(MSPHistoryRAPStorage *)self editRecordingForHistoryEntryWithStorageIdentifier:storageIdentifier usingBlock:v11];
}

- (MSPHistoryContainer)historyContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_historyContainer);

  return WeakRetained;
}

- (void)garbageCollectRAPStorageIfNeeded
{
  underlyingStorage = [(MSPHistoryRAPStorage *)self underlyingStorage];
  [underlyingStorage garbageCollectIfNeeded];
}

- (void)saveRecording:(id)recording forHistoryEntryWithStorageIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  recordingCopy = recording;
  underlyingStorage = [(MSPHistoryRAPStorage *)self underlyingStorage];
  data = [recordingCopy data];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100FA3D6C;
  v14[3] = &unk_1016610B8;
  v15 = completionCopy;
  v13 = completionCopy;
  [underlyingStorage saveItemWithData:data forIdentifier:identifierCopy completion:v14];
}

- (void)editRecordingForHistoryEntryWithStorageIdentifier:(id)identifier usingBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  underlyingStorage = [(MSPHistoryRAPStorage *)self underlyingStorage];
  v9 = [underlyingStorage dataForItemWithIdentifier:identifierCopy error:0];

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
  v16 = identifierCopy;
  v11 = blockCopy[2];
  v12 = identifierCopy;
  v13 = v10;
  v11(blockCopy, v13, v14);
}

- (void)loadAllRecordingsWithConcurrentBlock:(id)block
{
  blockCopy = block;
  underlyingStorage = [(MSPHistoryRAPStorage *)self underlyingStorage];
  allItemIdentifiersByDescendingCreationDate = [underlyingStorage allItemIdentifiersByDescendingCreationDate];

  if ([allItemIdentifiersByDescendingCreationDate count])
  {
    v21 = allItemIdentifiersByDescendingCreationDate;
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
    v17 = allItemIdentifiersByDescendingCreationDate;
    selfCopy = self;
    v19 = blockCopy;
    [v13 fetchWithOptions:v12 completionHandler:v16];
  }

  else
  {
    v14 = objc_opt_new();
    v15 = objc_opt_new();
    (*(blockCopy + 2))(blockCopy, v14, v15);
  }
}

- (void)historyContainerPerformMaintenanceForValidIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  underlyingStorage = [(MSPHistoryRAPStorage *)self underlyingStorage];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100FA44B0;
  v10[3] = &unk_10165FB00;
  v11 = identifiersCopy;
  v9 = identifiersCopy;
  [underlyingStorage removeItemsPassingTest:v10];

  completionCopy[2](completionCopy, 0);
}

- (void)setHistoryContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeWeak(&selfCopy->_historyContainer, containerCopy);
  if (containerCopy)
  {
    v6 = objc_alloc_init(MSHistoryItemRequest);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100FA45B0;
    v7[3] = &unk_101660FB0;
    v7[4] = selfCopy;
    [v6 fetchWithCompletionHandler:v7];
  }

  objc_sync_exit(selfCopy);
}

- (MSPHistoryRAPStorage)initWithStorageDirectoryURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = MSPHistoryRAPStorage;
  v5 = [(MSPHistoryRAPStorage *)&v9 init];
  if (v5)
  {
    v6 = [[RAPStorage alloc] initWithStorageDirectoryURL:lCopy];
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