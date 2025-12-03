@interface CNFavoritesMigrateLegacyStore
- (BOOL)_saveEntries:(id)entries;
- (BOOL)_savePropertyListData:(id)data toPath:(id)path entriesCount:(int64_t)count;
- (CNFavoritesMigrateLegacyStore)initWithContactStore:(id)store;
- (id)_entryDictionaries;
- (id)_fetchEntries;
@end

@implementation CNFavoritesMigrateLegacyStore

- (CNFavoritesMigrateLegacyStore)initWithContactStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = CNFavoritesMigrateLegacyStore;
  v6 = [(CNFavoritesMigrateLegacyStore *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
    v8 = v7;
  }

  return v7;
}

- (id)_fetchEntries
{
  _entryDictionaries = [(CNFavoritesMigrateLegacyStore *)self _entryDictionaries];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000BC30;
  v6[3] = &unk_1000456B8;
  v6[4] = self;
  v4 = [_entryDictionaries _cn_map:v6];

  return v4;
}

- (id)_entryDictionaries
{
  v3 = +[CNFavorites favoritesPath];
  v4 = [NSURL fileURLWithPath:v3 isDirectory:0];
  v10 = 0;
  v5 = [[NSArray alloc] initWithContentsOfURL:v4 error:&v10];
  v6 = v10;
  logger = [(CNFavoritesMigrateLegacyStore *)self logger];
  v8 = logger;
  if (v5)
  {
    [logger finishedReadingFavoritesFromPath:v3 entriesCount:{objc_msgSend(v5, "count")}];
  }

  else
  {
    [logger failedToReadFavoritesFromPath:v3 error:v6 simulateCrashReport:0];
  }

  return v5;
}

- (BOOL)_saveEntries:(id)entries
{
  entriesCopy = entries;
  v5 = [entriesCopy _cn_map:&stru_1000456F8];
  v6 = v5;
  v7 = &__NSArray0__struct;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = +[CNFavorites favoritesPath];
  v25 = 0;
  v10 = [NSPropertyListSerialization dataWithPropertyList:v8 format:200 options:0 error:&v25];
  v11 = CNIsDataEmpty;
  v12 = *(CNIsDataEmpty + 16);
  v13 = v25;
  if (v12(v11, v10))
  {
    logger = [(CNFavoritesMigrateLegacyStore *)self logger];
    [logger failedToConvertFavoritesToPropertyList:v13];
    v15 = 0;
  }

  else
  {
    v16 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000BF9C;
    block[3] = &unk_100045720;
    v17 = v10;
    v21 = v17;
    v22 = v8;
    selfCopy = self;
    v18 = entriesCopy;
    v24 = v18;
    dispatch_async(v16, block);

    v15 = -[CNFavoritesMigrateLegacyStore _savePropertyListData:toPath:entriesCount:](self, "_savePropertyListData:toPath:entriesCount:", v17, v9, [v18 count]);
    logger = v21;
  }

  return v15;
}

- (BOOL)_savePropertyListData:(id)data toPath:(id)path entriesCount:(int64_t)count
{
  pathCopy = path;
  v16 = 0;
  v9 = [data writeToFile:pathCopy options:1073741825 error:&v16];
  v10 = v16;
  if (v9)
  {
    v11 = +[NSFileManager defaultManager];
    v12 = [v11 fileExistsAtPath:pathCopy];

    logger = [(CNFavoritesMigrateLegacyStore *)self logger];
    logger2 = logger;
    if (v12)
    {
      [logger finishedWritingFavoritesToPath:pathCopy entriesCount:count];
    }

    else
    {
      [logger failedToVerifyWrittenFavoritesExistsAtPath:pathCopy];
    }
  }

  else
  {
    logger2 = [(CNFavoritesMigrateLegacyStore *)self logger];
    [logger2 failedToWriteFavoritesToPath:pathCopy error:v10 simulateCrashReport:0];
  }

  return v9;
}

@end