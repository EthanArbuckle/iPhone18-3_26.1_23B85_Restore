@interface MTShowsPreferencesDataStore
+ (id)sharedInstance;
- (id)_stringForSortType:(int64_t)type;
- (id)sortDescriptors;
- (int64_t)_sortTypeForString:(id)string;
- (int64_t)sortOrder;
- (void)setSortOrder:(int64_t)order;
@end

@implementation MTShowsPreferencesDataStore

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1488;
  block[3] = &unk_1C730;
  block[4] = self;
  if (qword_22F78 != -1)
  {
    dispatch_once(&qword_22F78, block);
  }

  v2 = qword_22F70;

  return v2;
}

- (id)sortDescriptors
{
  sortOrder = [(MTShowsPreferencesDataStore *)self sortOrder];

  return [MTPodcast sortDescriptorsForSortType:sortOrder];
}

- (int64_t)sortOrder
{
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v4 = [v3 stringForKey:kMTShowsSortOrderKey];

  v5 = [(MTShowsPreferencesDataStore *)self _sortTypeForString:v4];
  return v5;
}

- (void)setSortOrder:(int64_t)order
{
  v5 = [(MTShowsPreferencesDataStore *)self _stringForSortType:order];
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v3 setObject:v5 forKey:kMTShowsSortOrderKey];

  v4 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v4 synchronize];
}

- (int64_t)_sortTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"added"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"addedAscending"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"manual"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"title"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"titleAscending"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"updated"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"updatedAscending"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_stringForSortType:(int64_t)type
{
  if (type > 6)
  {
    return @"title";
  }

  else
  {
    return *(&off_1C750 + type);
  }
}

@end