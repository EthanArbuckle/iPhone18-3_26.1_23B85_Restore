@interface MTShowsPreferencesDataStore
+ (id)sharedInstance;
- (id)_stringForSortType:(int64_t)a3;
- (id)sortDescriptors;
- (int64_t)_sortTypeForString:(id)a3;
- (int64_t)sortOrder;
- (void)setSortOrder:(int64_t)a3;
@end

@implementation MTShowsPreferencesDataStore

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012AEC;
  block[3] = &unk_10002CB38;
  block[4] = a1;
  if (qword_100036830 != -1)
  {
    dispatch_once(&qword_100036830, block);
  }

  v2 = qword_100036828;

  return v2;
}

- (id)sortDescriptors
{
  v2 = [(MTShowsPreferencesDataStore *)self sortOrder];

  return [MTPodcast sortDescriptorsForSortType:v2];
}

- (int64_t)sortOrder
{
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v4 = [v3 stringForKey:kMTShowsSortOrderKey];

  v5 = [(MTShowsPreferencesDataStore *)self _sortTypeForString:v4];
  return v5;
}

- (void)setSortOrder:(int64_t)a3
{
  v5 = [(MTShowsPreferencesDataStore *)self _stringForSortType:a3];
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v3 setObject:v5 forKey:kMTShowsSortOrderKey];

  v4 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v4 synchronize];
}

- (int64_t)_sortTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"added"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"addedAscending"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"manual"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"title"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"titleAscending"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"updated"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"updatedAscending"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_stringForSortType:(int64_t)a3
{
  if (a3 > 6)
  {
    return @"title";
  }

  else
  {
    return *(&off_10002D040 + a3);
  }
}

@end