@interface FREditorialItemCreator
- (FREditorialItemCreator)init;
- (FREditorialItemCreator)initWithThumbnailCreator:(id)creator;
- (id)createEditorialItemFromCachedEntry:(id)entry;
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

- (FREditorialItemCreator)initWithThumbnailCreator:(id)creator
{
  creatorCopy = creator;
  if (!creatorCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006B2B4();
  }

  v9.receiver = self;
  v9.super_class = FREditorialItemCreator;
  v6 = [(FREditorialItemCreator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_thumbnailCreator, creator);
  }

  return v7;
}

- (id)createEditorialItemFromCachedEntry:(id)entry
{
  entryCopy = entry;
  v5 = entryCopy;
  if (entryCopy)
  {
    image = [entryCopy image];

    if (image)
    {
      thumbnailCreator = [(FREditorialItemCreator *)self thumbnailCreator];
      image2 = [v5 image];
      v9 = [thumbnailCreator editorialThumbnailImageWith:image2];
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
    editorialItemID = [v5 editorialItemID];
    title = [v5 title];
    subtitle = [v5 subtitle];
    subtitleColorString = [v5 subtitleColorString];
    actionUrlString = [v5 actionUrlString];
    v19 = [NSURL URLWithString:actionUrlString];
    v10 = [v13 initWithIdentifier:editorialItemID title:title subtitle:subtitle subtitleColor:subtitleColorString attributes:v11 actionURL:v19 thumbnailImage:v9 backingTag:0 headline:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end