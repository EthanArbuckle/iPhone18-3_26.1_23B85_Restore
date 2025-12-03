@interface BKLibraryDataSourcePlistUntetheredBooks
- (BKLibraryDataSourcePlistUntetheredBooks)initWithPlistKind:(int64_t)kind identifier:(id)identifier assetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache;
- (BOOL)isEligibleLocalBookToBeMadeUbiquitous:(id)ubiquitous;
- (BOOL)wantsPlistEntry:(id)entry;
- (void)fetchAllLocalBooksEligibleToBeMadeUbiquitousWithCompletion:(id)completion;
- (void)fetchLocalAssetWithID:(id)d completion:(id)completion;
- (void)makeBooksLocal:(id)local completion:(id)completion;
- (void)q_updateUniqueIDIfNeededInMutableEntry:(id)entry withOriginalBookEntry:(id)bookEntry;
@end

@implementation BKLibraryDataSourcePlistUntetheredBooks

- (BKLibraryDataSourcePlistUntetheredBooks)initWithPlistKind:(int64_t)kind identifier:(id)identifier assetMetadataProvider:(id)provider coverImageHelper:(id)helper assetMetadataCache:(id)cache
{
  v11.receiver = self;
  v11.super_class = BKLibraryDataSourcePlistUntetheredBooks;
  v7 = [(BKLibraryDataSourcePlist *)&v11 initWithPlistKind:kind identifier:identifier assetMetadataProvider:provider coverImageHelper:helper assetMetadataCache:cache];
  if (v7)
  {
    v8 = dispatch_queue_create("BKLibraryDataSourcePlist.moveUbiquitousBooksToLocalSerialQueue", 0);
    moveUbiquitousBooksToLocalSerialQueue = v7->_moveUbiquitousBooksToLocalSerialQueue;
    v7->_moveUbiquitousBooksToLocalSerialQueue = v8;
  }

  return v7;
}

- (BOOL)isEligibleLocalBookToBeMadeUbiquitous:(id)ubiquitous
{
  ubiquitousCopy = ubiquitous;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5 && (-[BKLibraryDataSourcePlist identifier](self, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), [v5 dataSourceIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToString:", v7), v7, v6, v8))
  {
    if ([v5 isSupplementalContent])
    {
      v9 = [v5 contentType] == 3;
    }

    else
    {
      v9 = 0;
    }

    storeID = [v5 storeID];
    if (!storeID || v9)
    {
      permlink = [v5 permlink];
      if (permlink)
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        v9 = [v5 isRestoring] ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)fetchAllLocalBooksEligibleToBeMadeUbiquitousWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100123EAC;
  v4[3] = &unk_100A05E68;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(BKLibraryDataSourcePlist *)selfCopy fetchAssetIDsWithCompletion:v4];
}

- (void)fetchLocalAssetWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = completionCopy;
  if (dCopy)
  {
    v14 = dCopy;
    v9 = [NSArray arrayWithObjects:&v14 count:1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001242A4;
    v12[3] = &unk_100A06300;
    v13 = v8;
    [(BKLibraryDataSourcePlist *)self fetchAssetsWithIDs:v9 completion:v12];
  }

  else
  {
    v10 = objc_retainBlock(completionCopy);
    if (v10)
    {
      v11 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorInvalidAssetError userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)makeBooksLocal:(id)local completion:(id)completion
{
  localCopy = local;
  completionCopy = completion;
  if ([localCopy count])
  {
    v8 = objc_opt_new();
    moveUbiquitousBooksToLocalSerialQueue = [(BKLibraryDataSourcePlistUntetheredBooks *)self moveUbiquitousBooksToLocalSerialQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001244A0;
    v12[3] = &unk_100A04FE8;
    v13 = localCopy;
    selfCopy = self;
    v15 = v8;
    v16 = completionCopy;
    v10 = v8;
    dispatch_async(moveUbiquitousBooksToLocalSerialQueue, v12);
  }

  else
  {
    v11 = objc_retainBlock(completionCopy);
    v10 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0, 0);
    }
  }
}

- (BOOL)wantsPlistEntry:(id)entry
{
  v3 = [IMLibraryPlist isSampleFromPlistEntry:entry];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue ^ 1;
}

- (void)q_updateUniqueIDIfNeededInMutableEntry:(id)entry withOriginalBookEntry:(id)bookEntry
{
  entryCopy = entry;
  bookEntryCopy = bookEntry;
  if ([(BKLibraryDataSourcePlist *)self _isSupplementalPDFFromPlistEntry:bookEntryCopy]|| ([IMLibraryPlist storeIdFromPlistEntry:bookEntryCopy], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [IMLibraryPlist uniqueIdFromPlistEntry:bookEntryCopy];
  }

  v9 = [IMLibraryPlist permlinkFromPlistEntry:bookEntryCopy];
  v10 = [bookEntryCopy valueForKey:@"Inserted-By-iBooks"];
  bOOLValue = [v10 BOOLValue];

  if (!v8)
  {
    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = bOOLValue;
    }

    if (v12)
    {
      v8 = 0;
      goto LABEL_19;
    }

    v13 = [entryCopy objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
    if (v13)
    {
      fullPathToAssetID = [(BKLibraryDataSourcePlist *)self fullPathToAssetID];
      v8 = [fullPathToAssetID objectForKey:v13];

      if (v8)
      {
LABEL_17:
        v17 = +[IMLibraryPlist keyNameForUniqueId];
        [entryCopy setValue:v8 forKey:v17];

        goto LABEL_18;
      }

      v18 = 0;
      v8 = [BLLibraryUtility identifierFromBookPath:v13 error:&v18];
      v15 = v18;
      if (v8 && !v15)
      {
        fullPathToAssetID2 = [(BKLibraryDataSourcePlist *)self fullPathToAssetID];
        [fullPathToAssetID2 setObject:v8 forKey:v13];

        goto LABEL_17;
      }

      if (v8)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_18:
  }

LABEL_19:
}

@end