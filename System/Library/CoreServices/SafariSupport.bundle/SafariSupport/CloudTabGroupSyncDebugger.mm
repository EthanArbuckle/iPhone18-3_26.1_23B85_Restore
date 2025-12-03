@interface CloudTabGroupSyncDebugger
+ (BOOL)isEnabled;
- (CloudTabGroupSyncDebugger)init;
- (id)createAuxiliaryRecordDeletionEvent;
- (id)createSyncDownEvent;
- (id)createSyncUpEvent;
- (id)dictionaryRepresentationForRecord:(id)record withCoordinator:(id)coordinator;
- (id)fileURL;
- (id)symbolNameForRecordType:(id)type;
- (void)appendEvent:(id)event;
- (void)persistEvents;
- (void)syncCoordinator:(id)coordinator didBeginSyncDownWithConfigurations:(id)configurations;
- (void)syncCoordinator:(id)coordinator didFetchRecord:(id)record localBookmarkUUID:(id)d localBookmarkWasCreated:(BOOL)created;
- (void)syncCoordinator:(id)coordinator didSendRecordBatch:(id)batch deletedRecordIDBatch:(id)dBatch;
- (void)syncCoordinatorDidBeginDeletingAuxiliaryRecords:(id)records;
- (void)syncCoordinatorDidBeginSyncUp:(id)up;
- (void)syncCoordinatorDidFinishDeletingAuxiliaryRecords:(id)records;
- (void)syncCoordinatorDidFinishSyncDown:(id)down;
- (void)syncCoordinatorDidFinishSyncUp:(id)up;
@end

@implementation CloudTabGroupSyncDebugger

+ (BOOL)isEnabled
{
  if (qword_100154020 != -1)
  {
    sub_10007E914();
  }

  return byte_100154018;
}

- (CloudTabGroupSyncDebugger)init
{
  v19.receiver = self;
  v19.super_class = CloudTabGroupSyncDebugger;
  v2 = [(CloudTabGroupSyncDebugger *)&v19 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    events = v2->_events;
    v2->_events = v3;

    fileURL = [(CloudTabGroupSyncDebugger *)v2 fileURL];
    v18 = 0;
    v6 = [NSData dataWithContentsOfURL:fileURL options:8 error:&v18];
    v7 = v18;

    if (v6)
    {
      v17 = 0;
      v8 = [NSPropertyListSerialization propertyListWithData:v6 options:0 format:0 error:&v17];
      v9 = v17;
      if (v8)
      {
        v10 = [v8 safari_mapObjectsUsingBlock:&stru_1001350E0];
        v11 = [v10 mutableCopy];
        v12 = v2->_events;
        v2->_events = v11;
      }

      else
      {
        v14 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10007E928(v9, v14);
        }
      }
    }

    else
    {
      v13 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10007E9A0(v7, v13);
      }
    }

    v15 = v2;
  }

  return v2;
}

- (id)fileURL
{
  v2 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Safari"];
  v3 = [v2 stringByAppendingPathComponent:@"TabGroupSyncDebugger.plist"];

  v4 = [NSURL fileURLWithPath:v3 isDirectory:0];

  return v4;
}

- (void)appendEvent:(id)event
{
  if (event)
  {
    [(NSMutableArray *)self->_events addObject:?];
    if ([(NSMutableArray *)self->_events count]>= 0x15)
    {
      [(NSMutableArray *)self->_events removeObjectAtIndex:0];
    }

    [(CloudTabGroupSyncDebugger *)self persistEvents];
  }
}

- (id)createSyncUpEvent
{
  v2 = objc_alloc_init(CloudTabGroupSyncEvent);
  [(CloudTabGroupSyncEvent *)v2 setTitle:@"Sync Up"];
  [(CloudTabGroupSyncEvent *)v2 setSymbolName:@"icloud.and.arrow.up"];
  v3 = +[NSDate now];
  [(CloudTabGroupSyncEvent *)v2 setBeginDate:v3];

  return v2;
}

- (id)createSyncDownEvent
{
  v2 = objc_alloc_init(CloudTabGroupSyncEvent);
  [(CloudTabGroupSyncEvent *)v2 setTitle:@"Sync Down"];
  [(CloudTabGroupSyncEvent *)v2 setSymbolName:@"icloud.and.arrow.down"];
  v3 = +[NSDate now];
  [(CloudTabGroupSyncEvent *)v2 setBeginDate:v3];

  return v2;
}

- (id)createAuxiliaryRecordDeletionEvent
{
  v2 = objc_alloc_init(CloudTabGroupSyncEvent);
  [(CloudTabGroupSyncEvent *)v2 setTitle:@"Auxiliary Record Deletion"];
  [(CloudTabGroupSyncEvent *)v2 setSymbolName:@"bolt.horizontal.icloud"];
  v3 = +[NSDate now];
  [(CloudTabGroupSyncEvent *)v2 setBeginDate:v3];

  return v2;
}

- (id)dictionaryRepresentationForRecord:(id)record withCoordinator:(id)coordinator
{
  recordCopy = record;
  coordinatorCopy = coordinator;
  v7 = +[NSMutableDictionary dictionary];
  recordChangeTag = [recordCopy recordChangeTag];
  [v7 setObject:recordChangeTag forKeyedSubscript:@"Change Tag"];

  recordID = [recordCopy recordID];
  ckShortDescription = [recordID ckShortDescription];
  [v7 setObject:ckShortDescription forKeyedSubscript:@"Record ID"];

  recordType = [recordCopy recordType];
  v12 = v7;
  [v7 setObject:recordType forKeyedSubscript:@"Record Type"];

  v13 = coordinatorCopy;
  v14 = [coordinatorCopy _configurationForRecord:recordCopy];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = recordCopy;
  obj = [recordCopy allKeys];
  v16 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        v21 = [v13 _valueForKey:v20 ofType:objc_opt_class() fromRecord:v15 withConfiguration:v14];
        v22 = [v21 description];
        [v12 setObject:v22 forKeyedSubscript:v20];
      }

      v17 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  return v12;
}

- (id)symbolNameForRecordType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqual:@"TabGroup"])
  {
    v4 = @"square.on.square";
  }

  else if ([typeCopy isEqual:@"TabGroupTab"])
  {
    v4 = @"square.text.square";
  }

  else if ([typeCopy isEqual:@"TabGroupScopedBookmarkList"])
  {
    v4 = @"folder";
  }

  else if ([typeCopy isEqual:@"TabGroupScopedBookmarkLeaf"])
  {
    v4 = @"bookmark";
  }

  else if ([typeCopy isEqual:@"TabGroupTabParticipantPresence"])
  {
    v4 = @"person.crop.circle";
  }

  else
  {
    v4 = @"record.circle";
  }

  return v4;
}

- (void)persistEvents
{
  if ([objc_opt_class() isEnabled])
  {
    v3 = [(NSMutableArray *)self->_events safari_mapObjectsUsingBlock:&stru_100135120];
    v9 = 0;
    v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:&v9];
    v5 = v9;
    if (v4)
    {
      fileURL = [(CloudTabGroupSyncDebugger *)self fileURL];
      v8 = v5;
      [v4 writeToURL:fileURL options:0 error:&v8];
      v7 = v8;

      v5 = v7;
    }
  }
}

- (void)syncCoordinatorDidBeginSyncUp:(id)up
{
  createSyncUpEvent = [(CloudTabGroupSyncDebugger *)self createSyncUpEvent];
  currentSyncUpEvent = self->_currentSyncUpEvent;
  self->_currentSyncUpEvent = createSyncUpEvent;
}

- (void)syncCoordinatorDidFinishSyncUp:(id)up
{
  v4 = +[NSDate now];
  [(CloudTabGroupSyncEvent *)self->_currentSyncUpEvent setEndDate:v4];

  [(CloudTabGroupSyncDebugger *)self appendEvent:self->_currentSyncUpEvent];
  currentSyncUpEvent = self->_currentSyncUpEvent;
  self->_currentSyncUpEvent = 0;
}

- (void)syncCoordinator:(id)coordinator didBeginSyncDownWithConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  createSyncDownEvent = [(CloudTabGroupSyncDebugger *)self createSyncDownEvent];
  currentSyncDownEvent = self->_currentSyncDownEvent;
  self->_currentSyncDownEvent = createSyncDownEvent;

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007E080;
  v8[3] = &unk_100135148;
  v8[4] = self;
  [configurationsCopy enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)syncCoordinatorDidFinishSyncDown:(id)down
{
  if (self->_currentSyncDownEvent)
  {
    v4 = +[NSDate now];
    [(CloudTabGroupSyncEvent *)self->_currentSyncDownEvent setEndDate:v4];

    [(CloudTabGroupSyncDebugger *)self appendEvent:self->_currentSyncDownEvent];
    currentSyncDownEvent = self->_currentSyncDownEvent;
    self->_currentSyncDownEvent = 0;
  }
}

- (void)syncCoordinatorDidBeginDeletingAuxiliaryRecords:(id)records
{
  createAuxiliaryRecordDeletionEvent = [(CloudTabGroupSyncDebugger *)self createAuxiliaryRecordDeletionEvent];
  currentSyncUpEvent = self->_currentSyncUpEvent;
  self->_currentSyncUpEvent = createAuxiliaryRecordDeletionEvent;
}

- (void)syncCoordinatorDidFinishDeletingAuxiliaryRecords:(id)records
{
  v4 = +[NSDate now];
  [(CloudTabGroupSyncEvent *)self->_currentSyncUpEvent setEndDate:v4];

  [(CloudTabGroupSyncDebugger *)self appendEvent:self->_currentSyncUpEvent];
  currentSyncUpEvent = self->_currentSyncUpEvent;
  self->_currentSyncUpEvent = 0;
}

- (void)syncCoordinator:(id)coordinator didSendRecordBatch:(id)batch deletedRecordIDBatch:(id)dBatch
{
  coordinatorCopy = coordinator;
  batchCopy = batch;
  dBatchCopy = dBatch;
  v9 = objc_alloc_init(CloudTabGroupSyncEvent);
  [(CloudTabGroupSyncEvent *)v9 setTitle:@"Send Batch"];
  [(CloudTabGroupSyncEvent *)v9 setSymbolName:@"paperplane"];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = batchCopy;
  v10 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      v13 = 0;
      do
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * v13);
        v15 = objc_alloc_init(CloudTabGroupSyncEvent);
        [(CloudTabGroupSyncEvent *)v15 setTitle:@"Save Record"];
        recordID = [v14 recordID];
        ckShortDescription = [recordID ckShortDescription];
        [(CloudTabGroupSyncEvent *)v15 setSubtitle:ckShortDescription];

        recordType = [v14 recordType];
        v19 = [(CloudTabGroupSyncDebugger *)self symbolNameForRecordType:recordType];
        [(CloudTabGroupSyncEvent *)v15 setSymbolName:v19];

        v20 = [(CloudTabGroupSyncDebugger *)self dictionaryRepresentationForRecord:v14 withCoordinator:coordinatorCopy];
        [(CloudTabGroupSyncEvent *)v15 setMetadata:v20];

        [(CloudTabGroupSyncEvent *)v9 addChildEvent:v15];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v11);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v31 = dBatchCopy;
  v21 = [v31 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v31);
        }

        v25 = *(*(&v34 + 1) + 8 * v24);
        v26 = objc_alloc_init(CloudTabGroupSyncEvent);
        [(CloudTabGroupSyncEvent *)v26 setTitle:@"Delete Record"];
        ckShortDescription2 = [v25 ckShortDescription];
        [(CloudTabGroupSyncEvent *)v26 setSubtitle:ckShortDescription2];

        [(CloudTabGroupSyncEvent *)v26 setSymbolName:@"trash.circle"];
        v42 = @"Record ID";
        ckShortDescription3 = [v25 ckShortDescription];
        v43 = ckShortDescription3;
        v29 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        [(CloudTabGroupSyncEvent *)v26 setMetadata:v29];

        [(CloudTabGroupSyncEvent *)v9 addChildEvent:v26];
        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [v31 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v22);
  }

  [(CloudTabGroupSyncEvent *)self->_currentSyncUpEvent addChildEvent:v9];
}

- (void)syncCoordinator:(id)coordinator didFetchRecord:(id)record localBookmarkUUID:(id)d localBookmarkWasCreated:(BOOL)created
{
  recordCopy = record;
  if (self->_currentSyncDownEvent)
  {
    coordinatorCopy = coordinator;
    v10 = objc_alloc_init(CloudTabGroupSyncEvent);
    [(CloudTabGroupSyncEvent *)v10 setTitle:@"Fetched Record"];
    recordID = [recordCopy recordID];
    ckShortDescription = [recordID ckShortDescription];
    [(CloudTabGroupSyncEvent *)v10 setSubtitle:ckShortDescription];

    recordType = [recordCopy recordType];
    v14 = [(CloudTabGroupSyncDebugger *)self symbolNameForRecordType:recordType];
    [(CloudTabGroupSyncEvent *)v10 setSymbolName:v14];

    v15 = [(CloudTabGroupSyncDebugger *)self dictionaryRepresentationForRecord:recordCopy withCoordinator:coordinatorCopy];

    [(CloudTabGroupSyncEvent *)v10 setMetadata:v15];
    childEvents = [(CloudTabGroupSyncEvent *)self->_currentSyncDownEvent childEvents];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10007E838;
    v18[3] = &unk_100135170;
    v19 = recordCopy;
    v17 = [childEvents safari_firstObjectPassingTest:v18];

    [v17 addChildEvent:v10];
  }
}

@end