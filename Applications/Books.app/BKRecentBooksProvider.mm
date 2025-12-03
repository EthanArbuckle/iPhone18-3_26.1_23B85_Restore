@interface BKRecentBooksProvider
+ (id)getInstance:(int64_t)instance;
+ (void)recentBooksAssetIDs:(id)ds;
- (BKRecentBooksProvider)initWithLimit:(unint64_t)limit;
- (void)libraryProvider:(id)provider contentDidChange:(id)change;
- (void)libraryProvider:(id)provider contentDidLoad:(id)load;
@end

@implementation BKRecentBooksProvider

+ (void)recentBooksAssetIDs:(id)ds
{
  dsCopy = ds;
  v4 = +[BKLibraryManager defaultManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009A4F8;
  v6[3] = &unk_100A05968;
  v7 = dsCopy;
  v5 = dsCopy;
  [v4 performBlockOnWorkerQueue:v6];
}

+ (id)getInstance:(int64_t)instance
{
  v5 = +[BCJSConfiguration sharedInstance];
  v12 = BCJSNumberOfBooksInRecentsKey;
  v6 = [NSNumber numberWithInteger:instance];
  v13 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v5 updateConfiguration:v7];

  v8 = [self alloc];
  numberOfBooksAllowedInRecentsList = [v5 numberOfBooksAllowedInRecentsList];
  v10 = [v8 initWithLimit:{objc_msgSend(numberOfBooksAllowedInRecentsList, "integerValue")}];

  return v10;
}

- (BKRecentBooksProvider)initWithLimit:(unint64_t)limit
{
  v5 = +[BKLibraryManager fetchRequestForRecentlyEngaged];
  [v5 setFetchLimit:limit];
  v6 = +[BSUIAsset propertiesNeededFromBKLibraryAsset];
  [v5 setPropertiesToFetch:v6];

  v7 = BCCurrentBookLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    limitCopy = limit;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Initializing recent books provider with limit %ld", buf, 0xCu);
  }

  v12.receiver = self;
  v12.super_class = BKRecentBooksProvider;
  v8 = [(BKLibraryProvider *)&v12 initWithFetchRequest:v5 name:@"recents"];
  v9 = v8;
  if (v8)
  {
    [(BKLibraryProvider *)v8 setDelegate:v8];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009A984;
    block[3] = &unk_100A03560;
    block[4] = limit;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v9;
}

- (void)libraryProvider:(id)provider contentDidLoad:(id)load
{
  loadCopy = load;
  firstObject = [loadCopy firstObject];
  v7 = BCCurrentBookLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    assetID = [firstObject assetID];
    *buf = 138412290;
    v14 = assetID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Setting up with current book: %@", buf, 0xCu);
  }

  [(BKRecentBooksProvider *)self setLastKnownTopMostAsset:firstObject];
  v11 = @"BKRecentBooksProviderAssetsKey";
  v12 = loadCopy;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v10 = +[NSNotificationCenter defaultCenter];

  [v10 postNotificationName:@"BKRecentBooksProviderDidChangeNotification" object:0 userInfo:v9];
}

- (void)libraryProvider:(id)provider contentDidChange:(id)change
{
  changeCopy = change;
  firstObject = [changeCopy firstObject];
  lastKnownTopMostAsset = [(BKRecentBooksProvider *)self lastKnownTopMostAsset];
  assetID = [lastKnownTopMostAsset assetID];

  assetID2 = [firstObject assetID];
  if ([assetID2 isEqualToString:assetID])
  {
    isLocal = [firstObject isLocal];
    lastKnownTopMostAsset2 = [(BKRecentBooksProvider *)self lastKnownTopMostAsset];
    isLocal2 = [lastKnownTopMostAsset2 isLocal];

    if (isLocal == isLocal2)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v13 = BCCurrentBookLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    assetID3 = [firstObject assetID];
    *buf = 138412546;
    v20 = assetID3;
    v21 = 2112;
    v22 = assetID;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "New current book from a change in the FRC: %@ (was %@)", buf, 0x16u);
  }

  [(BKRecentBooksProvider *)self setLastKnownTopMostAsset:firstObject];
  v17 = @"BKRecentBooksProviderAssetsKey";
  v18 = changeCopy;
  v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v16 = +[NSNotificationCenter defaultCenter];
  [v16 postNotificationName:@"BKRecentBooksProviderDidChangeNotification" object:0 userInfo:v15];

LABEL_8:
}

@end