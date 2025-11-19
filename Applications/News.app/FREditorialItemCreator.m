@interface FREditorialItemCreator
- (FREditorialItemCreator)init;
- (FREditorialItemCreator)initWithThumbnailCreator:(id)a3;
- (id)createEditorialItemFromCachedEntry:(id)a3;
@end

@implementation FREditorialItemCreator

- (FREditorialItemCreator)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FREditorialItemCreator init]";
    v8 = 2080;
    v9 = "FREditorialItemCreator.m";
    v10 = 1024;
    v11 = 27;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FREditorialItemCreator init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FREditorialItemCreator)initWithThumbnailCreator:(id)a3
{
  v5 = a3;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006B2B4();
  }

  v9.receiver = self;
  v9.super_class = FREditorialItemCreator;
  v6 = [(FREditorialItemCreator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_thumbnailCreator, a3);
  }

  return v7;
}

- (id)createEditorialItemFromCachedEntry:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 image];

    if (v6)
    {
      v7 = [(FREditorialItemCreator *)self thumbnailCreator];
      v8 = [v5 image];
      v9 = [v7 editorialThumbnailImageWith:v8];
    }

    else
    {
      v9 = 0;
    }

    v11 = +[NSMutableArray array];
    if ([v5 showBadge])
    {
      v12 = [NSNumber numberWithInteger:0];
      [v11 addObject:v12];
    }

    v13 = [TSEditorialItem alloc];
    v14 = [v5 editorialItemID];
    v15 = [v5 title];
    v16 = [v5 subtitle];
    v17 = [v5 subtitleColorString];
    v18 = [v5 actionUrlString];
    v19 = [NSURL URLWithString:v18];
    v10 = [v13 initWithIdentifier:v14 title:v15 subtitle:v16 subtitleColor:v17 attributes:v11 actionURL:v19 thumbnailImage:v9 backingTag:0 headline:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end