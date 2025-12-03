@interface BKContinueReadingBooksProvider
+ (id)getInstance:(int64_t)instance;
- (BKContinueReadingBooksProvider)initWithLimit:(unint64_t)limit;
@end

@implementation BKContinueReadingBooksProvider

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

- (BKContinueReadingBooksProvider)initWithLimit:(unint64_t)limit
{
  v5 = +[BKLibraryManager fetchRequestForContinueReading];
  [v5 setFetchLimit:limit];
  v6 = +[BSUIAsset propertiesNeededFromBKLibraryAsset];
  [v5 setPropertiesToFetch:v6];

  v7 = BCCurrentBookLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    limitCopy = limit;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Initializing continue reading books provider with limit %ld", buf, 0xCu);
  }

  v11.receiver = self;
  v11.super_class = BKContinueReadingBooksProvider;
  v8 = [(BKLibraryProvider *)&v11 initWithFetchRequest:v5 name:@"continueReading"];
  if (v8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001192CC;
    block[3] = &unk_100A03560;
    block[4] = limit;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v8;
}

@end