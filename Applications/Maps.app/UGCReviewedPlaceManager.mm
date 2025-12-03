@interface UGCReviewedPlaceManager
+ (id)_sharedInstance;
+ (id)locallyCachedReviewedPlaceForMUID:(unint64_t)d;
+ (void)addOrEditReviewedPlace:(id)place completion:(id)completion;
+ (void)clearAllUserData;
+ (void)fetchAllHistoryObjectsFromStorageWithCompletion:(id)completion;
+ (void)fetchAllHistoryObjectsWithPhotosFromStorageWithCompletion:(id)completion;
+ (void)fetchReviewedPlaceForMUID:(unint64_t)d withIdentifierHistory:(id)history completion:(id)completion;
+ (void)removeReviewedPlaceForMUID:(unint64_t)d completion:(id)completion;
+ (void)updateLocalCacheWithReviewedPlace:(id)place completion:(id)completion;
- (UGCReviewedPlaceManager)initWithSyncedCache:(id)cache localCache:(id)localCache;
- (void)_addOrEditReviewedPlace:(id)place completion:(id)completion;
- (void)_clearAllUserData;
- (void)_fetchAllHistoryObjectsFromStorageWithCompletion:(id)completion;
- (void)_fetchAllHistoryObjectsWithPhotosFromStorageWithCompletion:(id)completion;
- (void)_fetchReviewedPlaceForMUID:(unint64_t)d withIdentifierHistory:(id)history completion:(id)completion;
- (void)_removeReviewedPlaceForMUID:(unint64_t)d completion:(id)completion;
- (void)_updateLocalCacheWithReviewedPlace:(id)place completion:(id)completion;
@end

@implementation UGCReviewedPlaceManager

- (void)_fetchAllHistoryObjectsWithPhotosFromStorageWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v8 = completionCopy;
  v10 = v8;
  [(UGCReviewedPlaceMapsSync *)syncedCache fetchAllHistoryObjectsFromStorageWithCompletion:v9];

  _Block_object_dispose(&v12, 8);
}

- (void)_fetchAllHistoryObjectsFromStorageWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v8 = completionCopy;
  v10 = v8;
  [(UGCReviewedPlaceMapsSync *)syncedCache fetchAllHistoryObjectsFromStorageWithCompletion:v9];

  _Block_object_dispose(&v12, 8);
}

- (void)_updateLocalCacheWithReviewedPlace:(id)place completion:(id)completion
{
  completionCopy = completion;
  localCache = self->_localCache;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100704214;
  v9[3] = &unk_1016610B8;
  v10 = completionCopy;
  v8 = completionCopy;
  [(UGCReviewedPlaceCache *)localCache addOrEditReviewedPlace:place completion:v9];
}

- (void)_removeReviewedPlaceForMUID:(unint64_t)d completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  syncedCache = self->_syncedCache;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007043D4;
  v9[3] = &unk_101627440;
  v8 = completionCopy;
  v10 = v8;
  objc_copyWeak(v11, &location);
  v11[1] = d;
  [(UGCReviewedPlaceMapsSync *)syncedCache removeReviewedPlaceWithMUID:d completion:v9];
  objc_destroyWeak(v11);

  objc_destroyWeak(&location);
}

- (void)_fetchReviewedPlaceForMUID:(unint64_t)d withIdentifierHistory:(id)history completion:(id)completion
{
  historyCopy = history;
  completionCopy = completion;
  v10 = sub_100021DB0(historyCopy, &stru_1016273F0);
  objc_initWeak(&location, self);
  syncedCache = self->_syncedCache;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100704708;
  v13[3] = &unk_101650298;
  v12 = completionCopy;
  v14 = v12;
  objc_copyWeak(&v15, &location);
  [(UGCReviewedPlaceMapsSync *)syncedCache fetchReviewedPlaceForMUID:d muidHistory:v10 completion:v13];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
}

- (void)_addOrEditReviewedPlace:(id)place completion:(id)completion
{
  placeCopy = place;
  completionCopy = completion;
  objc_initWeak(&location, self);
  syncedCache = self->_syncedCache;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100704B00;
  v11[3] = &unk_101660FD8;
  v9 = completionCopy;
  v13 = v9;
  objc_copyWeak(&v14, &location);
  v10 = placeCopy;
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

- (UGCReviewedPlaceManager)initWithSyncedCache:(id)cache localCache:(id)localCache
{
  cacheCopy = cache;
  localCacheCopy = localCache;
  v12.receiver = self;
  v12.super_class = UGCReviewedPlaceManager;
  v9 = [(UGCReviewedPlaceManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_syncedCache, cache);
    objc_storeStrong(&v10->_localCache, localCache);
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

+ (void)fetchAllHistoryObjectsWithPhotosFromStorageWithCompletion:(id)completion
{
  completionCopy = completion;
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _fetchAllHistoryObjectsWithPhotosFromStorageWithCompletion:completionCopy];
}

+ (void)fetchAllHistoryObjectsFromStorageWithCompletion:(id)completion
{
  completionCopy = completion;
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _fetchAllHistoryObjectsFromStorageWithCompletion:completionCopy];
}

+ (void)updateLocalCacheWithReviewedPlace:(id)place completion:(id)completion
{
  completionCopy = completion;
  placeCopy = place;
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _updateLocalCacheWithReviewedPlace:placeCopy completion:completionCopy];
}

+ (void)removeReviewedPlaceForMUID:(unint64_t)d completion:(id)completion
{
  completionCopy = completion;
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _removeReviewedPlaceForMUID:d completion:completionCopy];
}

+ (id)locallyCachedReviewedPlaceForMUID:(unint64_t)d
{
  _sharedInstance = [self _sharedInstance];
  v5 = [_sharedInstance _locallyCachedReviewedPlaceForMUID:d];

  return v5;
}

+ (void)fetchReviewedPlaceForMUID:(unint64_t)d withIdentifierHistory:(id)history completion:(id)completion
{
  completionCopy = completion;
  historyCopy = history;
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _fetchReviewedPlaceForMUID:d withIdentifierHistory:historyCopy completion:completionCopy];
}

+ (void)addOrEditReviewedPlace:(id)place completion:(id)completion
{
  completionCopy = completion;
  placeCopy = place;
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _addOrEditReviewedPlace:placeCopy completion:completionCopy];
}

+ (void)clearAllUserData
{
  _sharedInstance = [self _sharedInstance];
  [_sharedInstance _clearAllUserData];
}

@end