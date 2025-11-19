@interface BKPreviouslyReadBooksProvider
+ (id)getInstance;
- (BKPreviouslyReadBooksProvider)init;
@end

@implementation BKPreviouslyReadBooksProvider

+ (id)getInstance
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (BKPreviouslyReadBooksProvider)init
{
  v3 = +[BKLibraryManager fetchRequestForPreviouslyRead];
  v4 = +[BSUIAsset propertiesNeededFromBKLibraryAsset];
  [v3 setPropertiesToFetch:v4];

  v5 = BCCurrentBookLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Initializing previously read books provider", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = BKPreviouslyReadBooksProvider;
  v6 = [(BKLibraryProvider *)&v8 initWithFetchRequest:v3 name:@"previouslyRead"];

  return v6;
}

@end