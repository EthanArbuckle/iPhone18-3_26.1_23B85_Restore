@interface UGCReviewedPlaceManager
+ (id)_sharedInstance;
+ (id)locallyCachedReviewedPlaceForMUID:(unint64_t)a3;
+ (void)addOrEditReviewedPlace:(id)a3 completion:(id)a4;
+ (void)clearAllUserData;
+ (void)fetchAllHistoryObjectsFromStorageWithCompletion:(id)a3;
+ (void)fetchAllHistoryObjectsWithPhotosFromStorageWithCompletion:(id)a3;
+ (void)fetchReviewedPlaceForMUID:(unint64_t)a3 withIdentifierHistory:(id)a4 completion:(id)a5;
+ (void)removeReviewedPlaceForMUID:(unint64_t)a3 completion:(id)a4;
+ (void)updateLocalCacheWithReviewedPlace:(id)a3 completion:(id)a4;
- (UGCReviewedPlaceManager)initWithSyncedCache:(id)a3 localCache:(id)a4;
- (void)_addOrEditReviewedPlace:(id)a3 completion:(id)a4;
- (void)_clearAllUserData;
- (void)_fetchAllHistoryObjectsFromStorageWithCompletion:(id)a3;
- (void)_fetchAllHistoryObjectsWithPhotosFromStorageWithCompletion:(id)a3;
- (void)_fetchReviewedPlaceForMUID:(unint64_t)a3 withIdentifierHistory:(id)a4 completion:(id)a5;
- (void)_removeReviewedPlaceForMUID:(unint64_t)a3 completion:(id)a4;
- (void)_updateLocalCacheWithReviewedPlace:(id)a3 completion:(id)a4;
@end

@implementation UGCReviewedPlaceManager

- (void)_fetchAllHistoryObjectsWithPhotosFromStorageWithCompletion:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100703A90;
  v16 = sub_100703AA0;
  v17 = 0;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = v13[5];
  v13[5] = v5;

  syncedCache = self->_syncedCache;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100703AA8;
  v9[3] = &unk_101632468;
  v11 = &v12;
  v8 = v4;
  v10 = v8;
  [(UGCReviewedPlaceMapsSync *)syncedCache fetchAllHistoryObjectsFromStorageWithCompletion:v9];

  _Block_object_dispose(&v12, 8);
}

- (void)_fetchAllHistoryObjectsFromStorageWithCompletion:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100703A90;
  v16 = sub_100703AA0;
  v17 = 0;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = v13[5];
  v13[5] = v5;

  syncedCache = self->_syncedCache;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100703E70;
  v9[3] = &unk_101632468;
  v11 = &v12;
  v8 = v4;
  v10 = v8;
  [(UGCReviewedPlaceMapsSync *)syncedCache fetchAllHistoryObjectsFromStorageWithCompletion:v9];

  _Block_object_dispose(&v12, 8);
}

- (void)_updateLocalCacheWithReviewedPlace:(id)a3 completion:(id)a4
{
  v6 = a4;
  localCache = self->_localCache;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100704214;
  v9[3] = &unk_1016610B8;
  v10 = v6;
  v8 = v6;
  [(UGCReviewedPlaceCache *)localCache addOrEditReviewedPlace:a3 completion:v9];
}

- (void)_removeReviewedPlaceForMUID:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  syncedCache = self->_syncedCache;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007043D4;
  v9[3] = &unk_101627440;
  v8 = v6;
  v10 = v8;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  [(UGCReviewedPlaceMapsSync *)syncedCache removeReviewedPlaceWithMUID:a3 completion:v9];
  objc_destroyWeak(v11);

  objc_destroyWeak(&location);
}

- (void)_fetchReviewedPlaceForMUID:(unint64_t)a3 withIdentifierHistory:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = sub_100021DB0(v8, &stru_1016273F0);
  objc_initWeak(&location, self);
  syncedCache = self->_syncedCache;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100704708;
  v13[3] = &unk_101650298;
  v12 = v9;
  v14 = v12;
  objc_copyWeak(&v15, &location);
  [(UGCReviewedPlaceMapsSync *)syncedCache fetchReviewedPlaceForMUID:a3 muidHistory:v10 completion:v13];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
}

- (void)_addOrEditReviewedPlace:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  syncedCache = self->_syncedCache;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100704B00;
  v11[3] = &unk_101660FD8;
  v9 = v7;
  v13 = v9;
  objc_copyWeak(&v14, &location);
  v10 = v6;
  v12 = v10;
  [(UGCReviewedPlaceMapsSync *)syncedCache addOrEditReviewedPlace:v10 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_clearAllUserData
{
  [(UGCReviewedPlaceMapsSync *)self->_syncedCache clearAllUserData];
  localCache = self->_localCache;

  [(UGCReviewedPlaceCache *)localCache clearAllUserData];
}

- (UGCReviewedPlaceManager)initWithSyncedCache:(id)a3 localCache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UGCReviewedPlaceManager;
  v9 = [(UGCReviewedPlaceManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_syncedCache, a3);
    objc_storeStrong(&v10->_localCache, a4);
  }

  return v10;
}

+ (id)_sharedInstance
{
  if (qword_10195D040 != -1)
  {
    dispatch_once(&qword_10195D040, &stru_1016273B0);
  }

  v3 = qword_10195D038;

  return v3;
}

+ (void)fetchAllHistoryObjectsWithPhotosFromStorageWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [a1 _sharedInstance];
  [v5 _fetchAllHistoryObjectsWithPhotosFromStorageWithCompletion:v4];
}

+ (void)fetchAllHistoryObjectsFromStorageWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [a1 _sharedInstance];
  [v5 _fetchAllHistoryObjectsFromStorageWithCompletion:v4];
}

+ (void)updateLocalCacheWithReviewedPlace:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _sharedInstance];
  [v8 _updateLocalCacheWithReviewedPlace:v7 completion:v6];
}

+ (void)removeReviewedPlaceForMUID:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a1 _sharedInstance];
  [v7 _removeReviewedPlaceForMUID:a3 completion:v6];
}

+ (id)locallyCachedReviewedPlaceForMUID:(unint64_t)a3
{
  v4 = [a1 _sharedInstance];
  v5 = [v4 _locallyCachedReviewedPlaceForMUID:a3];

  return v5;
}

+ (void)fetchReviewedPlaceForMUID:(unint64_t)a3 withIdentifierHistory:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 _sharedInstance];
  [v10 _fetchReviewedPlaceForMUID:a3 withIdentifierHistory:v9 completion:v8];
}

+ (void)addOrEditReviewedPlace:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _sharedInstance];
  [v8 _addOrEditReviewedPlace:v7 completion:v6];
}

+ (void)clearAllUserData
{
  v2 = [a1 _sharedInstance];
  [v2 _clearAllUserData];
}

@end