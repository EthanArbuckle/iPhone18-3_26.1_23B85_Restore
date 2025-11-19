@interface RAPRecordManager
+ (id)_sharedInstance;
+ (void)addRAPRecord:(id)a3 completion:(id)a4;
+ (void)addTrafficIncidentReport:(id)a3 completion:(id)a4;
+ (void)editStatusOfRAPRecordWithReportID:(id)a3 status:(signed __int16)a4 completion:(id)a5;
+ (void)fetchAllRAPRecordsWithCompletion:(id)a3;
+ (void)fetchAllTrafficIncidentReportsWithCompletion:(id)a3;
+ (void)fetchRAPRecordsMatchingProblemId:(id)a3 completion:(id)a4;
- (RAPRecordManager)initWithSyncedCache:(id)a3;
- (void)_addRAPRecord:(id)a3 completion:(id)a4;
- (void)_addTrafficIncidentReport:(id)a3 completion:(id)a4;
- (void)_editStatusOfRAPRecordWithReportID:(id)a3 status:(signed __int16)a4 completion:(id)a5;
- (void)_fetchAllRAPRecordsWithCompletion:(id)a3;
- (void)_fetchAllTrafficIncidentReportsWithCompletion:(id)a3;
- (void)_fetchRAPRecordsMatchingProblemId:(id)a3 completion:(id)a4;
- (void)_fetchRAPRecordsMatchingProblemIdV2:(id)a3 completion:(id)a4;
@end

@implementation RAPRecordManager

- (void)_fetchAllTrafficIncidentReportsWithCompletion:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v10 = v8;
  [(RAPRecordMapsSync *)syncedCache fetchAllTrafficIncidentReportsWithCompletion:v9];

  _Block_object_dispose(&v12, 8);
}

- (void)_addTrafficIncidentReport:(id)a3 completion:(id)a4
{
  v6 = a4;
  syncedCache = self->_syncedCache;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A3588C;
  v9[3] = &unk_1016610B8;
  v10 = v6;
  v8 = v6;
  [(RAPRecordMapsSync *)syncedCache addTrafficIncidentReport:a3 completion:v9];
}

- (void)_editStatusOfRAPRecordWithReportID:(id)a3 status:(signed __int16)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  syncedCache = self->_syncedCache;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100A35A84;
  v11[3] = &unk_1016610B8;
  v12 = v8;
  v10 = v8;
  [(RAPRecordMapsSync *)syncedCache editStatusOfRAPRecordWithReportID:a3 toStatus:v5 completion:v11];
}

- (void)_fetchRAPRecordsMatchingProblemIdV2:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v13 = v7;
  v14 = v15;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(mapsSyncQueue, block);

  _Block_object_dispose(v15, 8);
}

- (void)_fetchRAPRecordsMatchingProblemId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v9 = v7;
  v11 = v9;
  [(RAPRecordMapsSync *)syncedCache fetchRAPHistoryWithReportId:v6 completion:v10];

  _Block_object_dispose(v13, 8);
}

- (void)_fetchAllRAPRecordsWithCompletion:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v10 = v8;
  [(RAPRecordMapsSync *)syncedCache fetchAllRAPHistoryObjectsWithCompletion:v9];

  _Block_object_dispose(&v12, 8);
}

- (void)_addRAPRecord:(id)a3 completion:(id)a4
{
  v6 = a4;
  syncedCache = self->_syncedCache;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A36B40;
  v9[3] = &unk_1016610B8;
  v10 = v6;
  v8 = v6;
  [(RAPRecordMapsSync *)syncedCache addRAPRecord:a3 completion:v9];
}

- (RAPRecordManager)initWithSyncedCache:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = RAPRecordManager;
  v6 = [(RAPRecordManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_syncedCache, a3);
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

+ (void)fetchAllTrafficIncidentReportsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [a1 _sharedInstance];
  [v5 _fetchAllTrafficIncidentReportsWithCompletion:v4];
}

+ (void)addTrafficIncidentReport:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _sharedInstance];
  [v8 _addTrafficIncidentReport:v7 completion:v6];
}

+ (void)editStatusOfRAPRecordWithReportID:(id)a3 status:(signed __int16)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [a1 _sharedInstance];
  [v10 _editStatusOfRAPRecordWithReportID:v9 status:v5 completion:v8];
}

+ (void)fetchRAPRecordsMatchingProblemId:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _sharedInstance];
  [v8 _fetchRAPRecordsMatchingProblemId:v7 completion:v6];
}

+ (void)fetchAllRAPRecordsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [a1 _sharedInstance];
  [v5 _fetchAllRAPRecordsWithCompletion:v4];
}

+ (void)addRAPRecord:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _sharedInstance];
  [v8 _addRAPRecord:v7 completion:v6];
}

@end