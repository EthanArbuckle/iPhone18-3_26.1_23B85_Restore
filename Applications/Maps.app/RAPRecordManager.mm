@interface RAPRecordManager
+ (id)_sharedInstance;
+ (void)addRAPRecord:(id)record completion:(id)completion;
+ (void)addTrafficIncidentReport:(id)report completion:(id)completion;
+ (void)editStatusOfRAPRecordWithReportID:(id)d status:(signed __int16)status completion:(id)completion;
+ (void)fetchAllRAPRecordsWithCompletion:(id)completion;
+ (void)fetchAllTrafficIncidentReportsWithCompletion:(id)completion;
+ (void)fetchRAPRecordsMatchingProblemId:(id)id completion:(id)completion;
- (RAPRecordManager)initWithSyncedCache:(id)cache;
- (void)_addRAPRecord:(id)record completion:(id)completion;
- (void)_addTrafficIncidentReport:(id)report completion:(id)completion;
- (void)_editStatusOfRAPRecordWithReportID:(id)d status:(signed __int16)status completion:(id)completion;
- (void)_fetchAllRAPRecordsWithCompletion:(id)completion;
- (void)_fetchAllTrafficIncidentReportsWithCompletion:(id)completion;
- (void)_fetchRAPRecordsMatchingProblemId:(id)id completion:(id)completion;
- (void)_fetchRAPRecordsMatchingProblemIdV2:(id)v2 completion:(id)completion;
@end

@implementation RAPRecordManager

- (void)_fetchAllTrafficIncidentReportsWithCompletion:(id)completion
{
  completionCopy = completion;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100A355A8;
  v16 = sub_100A355B8;
  v17 = 0;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = v13[5];
  v13[5] = v5;

  syncedCache = self->_syncedCache;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A355C0;
  v9[3] = &unk_101632468;
  v11 = &v12;
  v8 = completionCopy;
  v10 = v8;
  [(RAPRecordMapsSync *)syncedCache fetchAllTrafficIncidentReportsWithCompletion:v9];

  _Block_object_dispose(&v12, 8);
}

- (void)_addTrafficIncidentReport:(id)report completion:(id)completion
{
  completionCopy = completion;
  syncedCache = self->_syncedCache;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A3588C;
  v9[3] = &unk_1016610B8;
  v10 = completionCopy;
  v8 = completionCopy;
  [(RAPRecordMapsSync *)syncedCache addTrafficIncidentReport:report completion:v9];
}

- (void)_editStatusOfRAPRecordWithReportID:(id)d status:(signed __int16)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  syncedCache = self->_syncedCache;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100A35A84;
  v11[3] = &unk_1016610B8;
  v12 = completionCopy;
  v10 = completionCopy;
  [(RAPRecordMapsSync *)syncedCache editStatusOfRAPRecordWithReportID:d toStatus:statusCopy completion:v11];
}

- (void)_fetchRAPRecordsMatchingProblemIdV2:(id)v2 completion:(id)completion
{
  v2Copy = v2;
  completionCopy = completion;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_100A355A8;
  v15[4] = sub_100A355B8;
  v16 = objc_alloc_init(NSMutableArray);
  mapsSyncQueue = self->_mapsSyncQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A35C74;
  block[3] = &unk_1016562F0;
  v13 = completionCopy;
  v14 = v15;
  v12 = v2Copy;
  v9 = completionCopy;
  v10 = v2Copy;
  dispatch_async(mapsSyncQueue, block);

  _Block_object_dispose(v15, 8);
}

- (void)_fetchRAPRecordsMatchingProblemId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_100A355A8;
  v13[4] = sub_100A355B8;
  v14 = objc_alloc_init(NSMutableArray);
  syncedCache = self->_syncedCache;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100A3624C;
  v10[3] = &unk_101632468;
  v12 = v13;
  v9 = completionCopy;
  v11 = v9;
  [(RAPRecordMapsSync *)syncedCache fetchRAPHistoryWithReportId:idCopy completion:v10];

  _Block_object_dispose(v13, 8);
}

- (void)_fetchAllRAPRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100A355A8;
  v16 = sub_100A355B8;
  v17 = 0;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = v13[5];
  v13[5] = v5;

  syncedCache = self->_syncedCache;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A36708;
  v9[3] = &unk_101632468;
  v11 = &v12;
  v8 = completionCopy;
  v10 = v8;
  [(RAPRecordMapsSync *)syncedCache fetchAllRAPHistoryObjectsWithCompletion:v9];

  _Block_object_dispose(&v12, 8);
}

- (void)_addRAPRecord:(id)record completion:(id)completion
{
  completionCopy = completion;
  syncedCache = self->_syncedCache;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A36B40;
  v9[3] = &unk_1016610B8;
  v10 = completionCopy;
  v8 = completionCopy;
  [(RAPRecordMapsSync *)syncedCache addRAPRecord:record completion:v9];
}

- (RAPRecordManager)initWithSyncedCache:(id)cache
{
  cacheCopy = cache;
  v12.receiver = self;
  v12.super_class = RAPRecordManager;
  v6 = [(RAPRecordManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_syncedCache, cache);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.Maps.RAPRecordManager.mapsSyncQueue", v8);
    mapsSyncQueue = v7->_mapsSyncQueue;
    v7->_mapsSyncQueue = v9;
  }

  return v7;
}

+ (id)_sharedInstance
{
  if (qword_10195E230 != -1)
  {
    dispatch_once(&qword_10195E230, &stru_101632440);
  }

  v3 = qword_10195E228;

  return v3;
}

+ (void)fetchAllTrafficIncidentReportsWithCompletion:(id)completion
{
  completionCopy = completion;
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _fetchAllTrafficIncidentReportsWithCompletion:completionCopy];
}

+ (void)addTrafficIncidentReport:(id)report completion:(id)completion
{
  completionCopy = completion;
  reportCopy = report;
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _addTrafficIncidentReport:reportCopy completion:completionCopy];
}

+ (void)editStatusOfRAPRecordWithReportID:(id)d status:(signed __int16)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  dCopy = d;
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _editStatusOfRAPRecordWithReportID:dCopy status:statusCopy completion:completionCopy];
}

+ (void)fetchRAPRecordsMatchingProblemId:(id)id completion:(id)completion
{
  completionCopy = completion;
  idCopy = id;
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _fetchRAPRecordsMatchingProblemId:idCopy completion:completionCopy];
}

+ (void)fetchAllRAPRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _fetchAllRAPRecordsWithCompletion:completionCopy];
}

+ (void)addRAPRecord:(id)record completion:(id)completion
{
  completionCopy = completion;
  recordCopy = record;
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _addRAPRecord:recordCopy completion:completionCopy];
}

@end