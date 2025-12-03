@interface CNFavoritesLegacyStore
- (BOOL)_saveEntries:(id)entries;
- (BOOL)_savePropertyListData:(id)data toPath:(id)path entriesCount:(int64_t)count;
- (BOOL)shouldSimulateCrashReportForError:(id)error;
- (CNFavoritesLegacyStore)initWithContactStore:(id)store;
- (id)XPCDataMapper;
- (id)_entryDictionaries;
- (id)_fetchEntries;
@end

@implementation CNFavoritesLegacyStore

- (CNFavoritesLegacyStore)initWithContactStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = CNFavoritesLegacyStore;
  v6 = [(CNFavoritesLegacyStore *)&v10 init];
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
  _entryDictionaries = [(CNFavoritesLegacyStore *)self _entryDictionaries];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__CNFavoritesLegacyStore__fetchEntries__block_invoke;
  v6[3] = &unk_1E7417C78;
  v6[4] = self;
  v4 = [_entryDictionaries _cn_map:v6];

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
  xPCDataMapper = [(CNFavoritesLegacyStore *)self XPCDataMapper];
  v5 = xPCDataMapper;
  if (xPCDataMapper)
  {
    v14 = 0;
    v6 = [xPCDataMapper favoritesEntryDictionariesAtPath:v3 error:&v14];
    v7 = v14;
    logger = [(CNFavoritesLegacyStore *)self logger];
    v9 = logger;
    if (v6)
    {
      [logger finishedReadingRemoteFavorites];
    }

    else
    {
      [logger failedToReadRemoteFavorites:v7 willRetry:0];
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
      logger2 = [(CNFavoritesLegacyStore *)self logger];
      [logger2 finishedReadingFavoritesFromPath:v3 entriesCount:{objc_msgSend(v6, "count")}];
    }

    else
    {
      v11 = [(CNFavoritesLegacyStore *)self shouldSimulateCrashReportForError:v7];
      logger2 = [(CNFavoritesLegacyStore *)self logger];
      [logger2 failedToReadFavoritesFromPath:v3 error:v7 simulateCrashReport:v11];
    }
  }

  return v6;
}

- (BOOL)_saveEntries:(id)entries
{
  entriesCopy = entries;
  v5 = [entriesCopy _cn_map:&__block_literal_global_14_3];
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
    logger = [(CNFavoritesLegacyStore *)self logger];
    [logger failedToConvertFavoritesToPropertyList:v13];
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
    selfCopy = self;
    v18 = entriesCopy;
    v24 = v18;
    dispatch_async(v16, block);

    v15 = -[CNFavoritesLegacyStore _savePropertyListData:toPath:entriesCount:](self, "_savePropertyListData:toPath:entriesCount:", v17, v9, [v18 count]);
    logger = v21;
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

- (BOOL)_savePropertyListData:(id)data toPath:(id)path entriesCount:(int64_t)count
{
  pathCopy = path;
  dataCopy = data;
  xPCDataMapper = [(CNFavoritesLegacyStore *)self XPCDataMapper];
  v11 = xPCDataMapper;
  if (xPCDataMapper)
  {
    v22 = 0;
    LODWORD(v12) = [xPCDataMapper writeFavoritesPropertyListData:dataCopy toPath:pathCopy error:&v22];

    v13 = v22;
    logger = [(CNFavoritesLegacyStore *)self logger];
    logger3 = logger;
    if (v12)
    {
      [logger finishedWritingRemoteFavorites];
    }

    else
    {
      [logger failedToWriteRemoteFavorites:v13 willRetry:0];
    }
  }

  else
  {
    v21 = 0;
    v16 = [dataCopy writeToFile:pathCopy options:1073741825 error:&v21];

    v13 = v21;
    if (v16)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v18 = [defaultManager fileExistsAtPath:pathCopy];

      logger2 = [(CNFavoritesLegacyStore *)self logger];
      logger3 = logger2;
      if (v18)
      {
        [logger2 finishedWritingFavoritesToPath:pathCopy entriesCount:count];
      }

      else
      {
        [logger2 failedToVerifyWrittenFavoritesExistsAtPath:pathCopy];
      }

      LOBYTE(v12) = 1;
    }

    else
    {
      v12 = [(CNFavoritesLegacyStore *)self shouldSimulateCrashReportForError:v13];
      logger3 = [(CNFavoritesLegacyStore *)self logger];
      [logger3 failedToWriteFavoritesToPath:pathCopy error:v13 simulateCrashReport:v12];
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (id)XPCDataMapper
{
  objc_opt_class();
  contactStore = [(CNFavoritesLegacyStore *)self contactStore];
  if (objc_opt_isKindOfClass())
  {
    v4 = contactStore;
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
  mapper = [v9 mapper];

  if (objc_opt_isKindOfClass())
  {
    v11 = mapper;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (BOOL)shouldSimulateCrashReportForError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v6 = *MEMORY[0x1E696A250];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]] && objc_msgSend(v4, "code") == 260)
    {
      v7 = 0;
    }

    else
    {
      domain2 = [v4 domain];
      if ([domain2 isEqualToString:v6] && objc_msgSend(v4, "code") == 257)
      {
        v7 = 0;
      }

      else
      {
        domain3 = [v4 domain];
        if ([domain3 isEqualToString:v6] && objc_msgSend(v4, "code") == 513)
        {
          v7 = 0;
        }

        else
        {
          domain4 = [v4 domain];
          if ([domain4 isEqualToString:v6])
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