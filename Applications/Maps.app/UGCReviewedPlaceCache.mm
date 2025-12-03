@interface UGCReviewedPlaceCache
+ (id)baseFilePath:(id *)path;
+ (id)oldFilePath:(id *)path;
- (UGCReviewedPlaceCache)init;
- (UGCReviewedPlaceCache)initWithURL:(id)l;
- (id)locallyCachedReviewedPlaceForMUID:(unint64_t)d;
- (void)_commonInitWithURL:(id)l;
- (void)addOrEditReviewedPlace:(id)place completion:(id)completion;
- (void)clearAllUserData;
- (void)fetchReviewedPlaceForMUID:(unint64_t)d completion:(id)completion;
- (void)fetchWithMUID:(unint64_t)d andReplaceIfNeededWithNewMUID:(unint64_t)iD completion:(id)completion;
- (void)moveCacheIfNeeded;
- (void)removeReviewedPlaceWithMUID:(unint64_t)d completion:(id)completion;
@end

@implementation UGCReviewedPlaceCache

- (void)clearAllUserData
{
  db = self->_db;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006F0388;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [(GEOSQLiteDB *)db executeSync:v3];
}

- (void)addOrEditReviewedPlace:(id)place completion:(id)completion
{
  placeCopy = place;
  completionCopy = completion;
  db = self->_db;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1006F0570;
  v11[3] = &unk_1016605F8;
  v11[4] = self;
  v12 = placeCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = placeCopy;
  [(GEOSQLiteDB *)db executeAsync:v11];
}

- (void)removeReviewedPlaceWithMUID:(unint64_t)d completion:(id)completion
{
  completionCopy = completion;
  db = self->_db;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006F09AC;
  v9[3] = &unk_1016589F8;
  v10 = completionCopy;
  dCopy = d;
  v9[4] = self;
  v8 = completionCopy;
  [(GEOSQLiteDB *)db executeAsync:v9];
}

- (id)locallyCachedReviewedPlaceForMUID:(unint64_t)d
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1006F07F8;
  v11 = sub_1006F0808;
  v12 = 0;
  db = self->_db;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006F0D4C;
  v6[3] = &unk_10165E540;
  v6[5] = &v7;
  v6[6] = d;
  v6[4] = self;
  [(GEOSQLiteDB *)db executeSync:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)fetchReviewedPlaceForMUID:(unint64_t)d completion:(id)completion
{
  completionCopy = completion;
  db = self->_db;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006F130C;
  v9[3] = &unk_1016589F8;
  v10 = completionCopy;
  dCopy = d;
  v9[4] = self;
  v8 = completionCopy;
  [(GEOSQLiteDB *)db executeAsync:v9];
}

- (void)fetchWithMUID:(unint64_t)d andReplaceIfNeededWithNewMUID:(unint64_t)iD completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1006F1720;
  v10[3] = &unk_101626F38;
  v9 = completionCopy;
  v11 = v9;
  v12[1] = d;
  v12[2] = iD;
  objc_copyWeak(v12, &location);
  [(UGCReviewedPlaceCache *)self fetchReviewedPlaceForMUID:d completion:v10];
  objc_destroyWeak(v12);

  objc_destroyWeak(&location);
}

- (void)moveCacheIfNeeded
{
  v2 = [objc_opt_class() oldFilePath:0];
  v3 = +[NSFileManager defaultManager];
  path = [v2 path];
  v5 = [v3 fileExistsAtPath:path];

  if (v5)
  {
    v6 = [objc_opt_class() baseFilePath:0];
    v7 = sub_100799818();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      path2 = [v2 path];
      path3 = [v6 path];
      v12 = 138412546;
      v13 = path2;
      v14 = 2112;
      v15 = path3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Migrate DB files from: %@ to %@", &v12, 0x16u);
    }

    path4 = [v2 path];
    path5 = [v6 path];
    [GEOSQLiteDB migrateAllDBFilesFrom:path4 to:path5];
  }

  else
  {
    v6 = sub_100799818();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Cache files not exists, we don't need to migrate them", &v12, 2u);
    }
  }
}

- (void)_commonInitWithURL:(id)l
{
  lCopy = l;
  v5 = [GEOSQLiteDB alloc];
  v6 = sub_100799818();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006F1C5C;
  v9[3] = &unk_101626EE8;
  v9[4] = self;
  v7 = [v5 initWithQueueName:"com.apple.maps.cachedreviewedplace.db" log:v6 databaseFileURL:lCopy sqliteFlags:0x100000 pragmas:0 setupBlock:v9];

  db = self->_db;
  self->_db = v7;
}

- (UGCReviewedPlaceCache)initWithURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = UGCReviewedPlaceCache;
  v5 = [(UGCReviewedPlaceCache *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UGCReviewedPlaceCache *)v5 _commonInitWithURL:lCopy];
  }

  return v6;
}

- (UGCReviewedPlaceCache)init
{
  v5.receiver = self;
  v5.super_class = UGCReviewedPlaceCache;
  v2 = [(UGCReviewedPlaceCache *)&v5 init];
  if (v2)
  {
    v3 = [objc_opt_class() baseFilePath:0];
    [(UGCReviewedPlaceCache *)v2 _commonInitWithURL:v3];
  }

  return v2;
}

+ (id)baseFilePath:(id *)path
{
  v4 = objc_opt_class();

  return [v4 oldFilePath:path];
}

+ (id)oldFilePath:(id *)path
{
  v4 = +[NSFileManager defaultManager];
  v11 = 0;
  v5 = [v4 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v11];
  v6 = v11;

  if (!path || v5)
  {
    if (v5)
    {
      v9 = [v5 URLByAppendingPathComponent:@"com.apple.Maps" isDirectory:1];
      v8 = [v9 URLByAppendingPathComponent:@"ReviewedPlaceCache" isDirectory:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = v6;
    v8 = 0;
    *path = v6;
  }

  return v8;
}

@end