@interface CNFavoritesSyncStore
- (BOOL)_saveEntries:(id)a3;
- (CNFavoritesSyncStore)initWithContactStore:(id)a3;
- (id)_entryRepresentations;
- (id)_fetchEntries;
@end

@implementation CNFavoritesSyncStore

- (CNFavoritesSyncStore)initWithContactStore:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CNFavoritesSyncStore;
  v6 = [(CNFavoritesSyncStore *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
    v8 = +[CNXPCContactsSupport sharedInstance];
    contactsSupport = v7->_contactsSupport;
    v7->_contactsSupport = v8;

    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7->_wantsRetryAfterMessageFailure = [v10 BOOLForKey:@"FavoritesServerRetryDisabled"] ^ 1;

    v11 = v7;
  }

  return v7;
}

- (id)_fetchEntries
{
  v3 = [(CNFavoritesSyncStore *)self _entryRepresentations];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__CNFavoritesSyncStore__fetchEntries__block_invoke;
  v6[3] = &unk_1E74176E8;
  v6[4] = self;
  v4 = [v3 _cn_map:v6];

  return v4;
}

CNFavoritesEntry *__37__CNFavoritesSyncStore__fetchEntries__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CNFavoritesEntry alloc];
  v5 = [*(a1 + 32) contactStore];
  v6 = [(CNFavoritesEntry *)v4 initWithEntryRepresentation:v3 store:v5];

  return v6;
}

- (id)_entryRepresentations
{
  v3 = [(CNFavoritesSyncStore *)self contactsSupport];
  v13 = 0;
  v4 = [v3 favoritesEntriesWithError:&v13];
  v5 = v13;

  if ((!v4 || v5) && [(CNFavoritesSyncStore *)self wantsRetryAfterMessageFailure])
  {
    v6 = [(CNFavoritesSyncStore *)self logger];
    [v6 failedToReadRemoteFavorites:v5 willRetry:1];

    v7 = [(CNFavoritesSyncStore *)self contactsSupport];
    v12 = 0;
    v8 = [v7 favoritesEntriesWithError:&v12];
    v5 = v12;

    v4 = v8;
  }

  v9 = [(CNFavoritesSyncStore *)self logger];
  v10 = v9;
  if (!v4 || v5)
  {
    [v9 failedToReadRemoteFavorites:v5 willRetry:0];
  }

  else
  {
    [v9 finishedReadingRemoteFavorites];
  }

  return v4;
}

- (BOOL)_saveEntries:(id)a3
{
  v4 = [a3 _cn_map:&__block_literal_global_144];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [(CNFavoritesSyncStore *)self contactsSupport];
  v17 = 0;
  LODWORD(v9) = [v8 setFavoritesEntries:v7 error:&v17];
  v10 = v17;

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v10 = 0;
    LOBYTE(v9) = 1;
  }

  else if ([(CNFavoritesSyncStore *)self wantsRetryAfterMessageFailure])
  {
    v9 = [(CNFavoritesSyncStore *)self logger];
    [v9 failedToWriteRemoteFavorites:v10 willRetry:1];

    v12 = [(CNFavoritesSyncStore *)self contactsSupport];
    v16 = 0;
    LOBYTE(v9) = [v12 setFavoritesEntries:v7 error:&v16];
    v10 = v16;
  }

  if (v10)
  {
    LOBYTE(v9) = 0;
  }

  v13 = [(CNFavoritesSyncStore *)self logger];
  v14 = v13;
  if (v9)
  {
    [v13 finishedWritingRemoteFavorites];
  }

  else
  {
    [v13 failedToWriteRemoteFavorites:v10 willRetry:0];
  }

  return v9;
}

@end