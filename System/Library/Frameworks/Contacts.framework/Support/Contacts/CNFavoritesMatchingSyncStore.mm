@interface CNFavoritesMatchingSyncStore
- (BOOL)_saveEntries:(id)entries;
- (CNFavoritesMatchingSyncStore)initWithContactStore:(id)store;
- (id)_entryRepresentations;
- (id)_fetchEntries;
@end

@implementation CNFavoritesMatchingSyncStore

- (CNFavoritesMatchingSyncStore)initWithContactStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = CNFavoritesMatchingSyncStore;
  v6 = [(CNFavoritesMatchingSyncStore *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
    v8 = +[CNEnvironment currentEnvironment];
    featureFlags = [v8 featureFlags];
    v10 = [featureFlags isFeatureEnabled:18];

    if (v10)
    {
      v11 = +[FavoritesPersistenceServiceWrapper sharedInstance];
      [(CNFavoritesMatchingSyncStore *)v7 setFavoritesPersistence:v11];
    }

    v12 = v7;
  }

  return v7;
}

- (id)_fetchEntries
{
  favoritesPersistence = [(CNFavoritesMatchingSyncStore *)self favoritesPersistence];

  if (favoritesPersistence)
  {
    _entryRepresentations = [(CNFavoritesMatchingSyncStore *)self _entryRepresentations];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000C35C;
    v7[3] = &unk_100045748;
    v7[4] = self;
    v5 = [_entryRepresentations _cn_map:v7];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)_entryRepresentations
{
  favoritesPersistence = [(CNFavoritesMatchingSyncStore *)self favoritesPersistence];
  entries = [favoritesPersistence entries];

  logger = [(CNFavoritesMatchingSyncStore *)self logger];
  v6 = logger;
  if (entries)
  {
    [logger finishedReadingFavoritesForMatching];
  }

  else
  {
    [logger failedToReadFavoritesForMatching:0];
  }

  return entries;
}

- (BOOL)_saveEntries:(id)entries
{
  entriesCopy = entries;
  favoritesPersistence = [(CNFavoritesMatchingSyncStore *)self favoritesPersistence];

  if (favoritesPersistence)
  {
    v6 = [entriesCopy _cn_map:&stru_100045768];
    v7 = v6;
    v8 = &__NSArray0__struct;
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    favoritesPersistence2 = [(CNFavoritesMatchingSyncStore *)self favoritesPersistence];
    v17 = 0;
    v11 = [favoritesPersistence2 setWithEntries:v9 shouldSync:0 error:&v17];

    v12 = v17;
    bOOLValue = [v11 BOOLValue];

    if (v12)
    {
      bOOLValue = 0;
    }

    logger = [(CNFavoritesMatchingSyncStore *)self logger];
    v15 = logger;
    if (bOOLValue)
    {
      [logger finishedWritingFavoritesForMatching];
    }

    else
    {
      [logger failedToWriteFavoritesForMatching:v12];
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end