@interface CNFavoritesLegacyStore
- (BOOL)_saveEntries:(id)a3;
- (BOOL)_savePropertyListData:(id)a3 toPath:(id)a4 entriesCount:(int64_t)a5;
- (BOOL)shouldSimulateCrashReportForError:(id)a3;
- (CNFavoritesLegacyStore)initWithContactStore:(id)a3;
- (id)XPCDataMapper;
- (id)_entryDictionaries;
- (id)_fetchEntries;
@end

@implementation CNFavoritesLegacyStore

- (CNFavoritesLegacyStore)initWithContactStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNFavoritesLegacyStore;
  v6 = [(CNFavoritesLegacyStore *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
    v8 = v7;
  }

  return v7;
}

- (id)_fetchEntries
{
  v3 = [(CNFavoritesLegacyStore *)self _entryDictionaries];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__CNFavoritesLegacyStore__fetchEntries__block_invoke;
  v6[3] = &unk_1E7417C78;
  v6[4] = self;
  v4 = [v3 _cn_map:v6];

  return v4;
}

CNFavoritesEntry *__39__CNFavoritesLegacyStore__fetchEntries__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CNFavoritesEntry alloc];
  v5 = [*(a1 + 32) contactStore];
  v6 = [(CNFavoritesEntry *)v4 initWithDictionaryRepresentation:v3 store:v5];

  return v6;
}

- (id)_entryDictionaries
{
  v3 = +[CNFavorites favoritesPath];
  v4 = [(CNFavoritesLegacyStore *)self XPCDataMapper];
  v5 = v4;
  if (v4)
  {
    v14 = 0;
    v6 = [v4 favoritesEntryDictionariesAtPath:v3 error:&v14];
    v7 = v14;
    v8 = [(CNFavoritesLegacyStore *)self logger];
    v9 = v8;
    if (v6)
    {
      [v8 finishedReadingRemoteFavorites];
    }

    else
    {
      [v8 failedToReadRemoteFavorites:v7 willRetry:0];
    }
  }

  else
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:0];
    v13 = 0;
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithContentsOfURL:v9 error:&v13];
    v7 = v13;
    if (v6)
    {
      v10 = [(CNFavoritesLegacyStore *)self logger];
      [v10 finishedReadingFavoritesFromPath:v3 entriesCount:{objc_msgSend(v6, "count")}];
    }

    else
    {
      v11 = [(CNFavoritesLegacyStore *)self shouldSimulateCrashReportForError:v7];
      v10 = [(CNFavoritesLegacyStore *)self logger];
      [v10 failedToReadFavoritesFromPath:v3 error:v7 simulateCrashReport:v11];
    }
  }

  return v6;
}

- (BOOL)_saveEntries:(id)a3
{
  v4 = a3;
  v5 = [v4 _cn_map:&__block_literal_global_14_3];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = +[CNFavorites favoritesPath];
  v25 = 0;
  v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:200 options:0 error:&v25];
  v11 = *MEMORY[0x1E6996540];
  v12 = *(*MEMORY[0x1E6996540] + 16);
  v13 = v25;
  if (v12(v11, v10))
  {
    v14 = [(CNFavoritesLegacyStore *)self logger];
    [v14 failedToConvertFavoritesToPropertyList:v13];
    v15 = 0;
  }

  else
  {
    v16 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__CNFavoritesLegacyStore__saveEntries___block_invoke_2;
    block[3] = &unk_1E7415B78;
    v17 = v10;
    v21 = v17;
    v22 = v8;
    v23 = self;
    v18 = v4;
    v24 = v18;
    dispatch_async(v16, block);

    v15 = -[CNFavoritesLegacyStore _savePropertyListData:toPath:entriesCount:](self, "_savePropertyListData:toPath:entriesCount:", v17, v9, [v18 count]);
    v14 = v21;
  }

  return v15;
}

void __39__CNFavoritesLegacyStore__saveEntries___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [MEMORY[0x1E696AE40] propertyListWithData:v2 options:0 format:0 error:&v6];
  v4 = v6;
  if (([*(a1 + 40) isEqualToArray:v3] & 1) == 0)
  {
    v5 = [*(a1 + 48) logger];
    [v5 failedToVerifyFavorites:*(a1 + 56) withPropertyListFavorites:v3 error:v4];
  }
}

- (BOOL)_savePropertyListData:(id)a3 toPath:(id)a4 entriesCount:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CNFavoritesLegacyStore *)self XPCDataMapper];
  v11 = v10;
  if (v10)
  {
    v22 = 0;
    LODWORD(v12) = [v10 writeFavoritesPropertyListData:v9 toPath:v8 error:&v22];

    v13 = v22;
    v14 = [(CNFavoritesLegacyStore *)self logger];
    v15 = v14;
    if (v12)
    {
      [v14 finishedWritingRemoteFavorites];
    }

    else
    {
      [v14 failedToWriteRemoteFavorites:v13 willRetry:0];
    }
  }

  else
  {
    v21 = 0;
    v16 = [v9 writeToFile:v8 options:1073741825 error:&v21];

    v13 = v21;
    if (v16)
    {
      v17 = [MEMORY[0x1E696AC08] defaultManager];
      v18 = [v17 fileExistsAtPath:v8];

      v19 = [(CNFavoritesLegacyStore *)self logger];
      v15 = v19;
      if (v18)
      {
        [v19 finishedWritingFavoritesToPath:v8 entriesCount:a5];
      }

      else
      {
        [v19 failedToVerifyWrittenFavoritesExistsAtPath:v8];
      }

      LOBYTE(v12) = 1;
    }

    else
    {
      v12 = [(CNFavoritesLegacyStore *)self shouldSimulateCrashReportForError:v13];
      v15 = [(CNFavoritesLegacyStore *)self logger];
      [v15 failedToWriteFavoritesToPath:v8 error:v13 simulateCrashReport:v12];
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (id)XPCDataMapper
{
  objc_opt_class();
  v3 = [(CNFavoritesLegacyStore *)self contactStore];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    [v5 XPCDataMapperStore];
  }

  else
  {
    [(CNFavoritesLegacyStore *)self contactStore];
  }
  v6 = ;
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  objc_opt_class();
  v10 = [v9 mapper];

  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (BOOL)shouldSimulateCrashReportForError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = *MEMORY[0x1E696A250];
    if ([v5 isEqualToString:*MEMORY[0x1E696A250]] && objc_msgSend(v4, "code") == 260)
    {
      v7 = 0;
    }

    else
    {
      v8 = [v4 domain];
      if ([v8 isEqualToString:v6] && objc_msgSend(v4, "code") == 257)
      {
        v7 = 0;
      }

      else
      {
        v9 = [v4 domain];
        if ([v9 isEqualToString:v6] && objc_msgSend(v4, "code") == 513)
        {
          v7 = 0;
        }

        else
        {
          v10 = [v4 domain];
          if ([v10 isEqualToString:v6])
          {
            v7 = [v4 code] != 259;
          }

          else
          {
            v7 = 1;
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end