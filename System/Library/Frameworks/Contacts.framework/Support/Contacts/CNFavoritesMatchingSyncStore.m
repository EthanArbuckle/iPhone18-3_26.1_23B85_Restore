@interface CNFavoritesMatchingSyncStore
- (BOOL)_saveEntries:(id)a3;
- (CNFavoritesMatchingSyncStore)initWithContactStore:(id)a3;
- (id)_entryRepresentations;
- (id)_fetchEntries;
@end

@implementation CNFavoritesMatchingSyncStore

- (CNFavoritesMatchingSyncStore)initWithContactStore:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CNFavoritesMatchingSyncStore;
  v6 = [(CNFavoritesMatchingSyncStore *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
    v8 = +[CNEnvironment currentEnvironment];
    v9 = [v8 featureFlags];
    v10 = [v9 isFeatureEnabled:18];

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
  v3 = [(CNFavoritesMatchingSyncStore *)self favoritesPersistence];

  if (v3)
  {
    v4 = [(CNFavoritesMatchingSyncStore *)self _entryRepresentations];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000C35C;
    v7[3] = &unk_100045748;
    v7[4] = self;
    v5 = [v4 _cn_map:v7];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)_entryRepresentations
{
  v3 = [(CNFavoritesMatchingSyncStore *)self favoritesPersistence];
  v4 = [v3 entries];

  v5 = [(CNFavoritesMatchingSyncStore *)self logger];
  v6 = v5;
  if (v4)
  {
    [v5 finishedReadingFavoritesForMatching];
  }

  else
  {
    [v5 failedToReadFavoritesForMatching:0];
  }

  return v4;
}

- (BOOL)_saveEntries:(id)a3
{
  v4 = a3;
  v5 = [(CNFavoritesMatchingSyncStore *)self favoritesPersistence];

  if (v5)
  {
    v6 = [v4 _cn_map:&stru_100045768];
    v7 = v6;
    v8 = &__NSArray0__struct;
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v10 = [(CNFavoritesMatchingSyncStore *)self favoritesPersistence];
    v17 = 0;
    v11 = [v10 setWithEntries:v9 shouldSync:0 error:&v17];

    v12 = v17;
    v13 = [v11 BOOLValue];

    if (v12)
    {
      v13 = 0;
    }

    v14 = [(CNFavoritesMatchingSyncStore *)self logger];
    v15 = v14;
    if (v13)
    {
      [v14 finishedWritingFavoritesForMatching];
    }

    else
    {
      [v14 failedToWriteFavoritesForMatching:v12];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end