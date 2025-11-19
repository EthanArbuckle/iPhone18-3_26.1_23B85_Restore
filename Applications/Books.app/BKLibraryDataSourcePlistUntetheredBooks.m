@interface BKLibraryDataSourcePlistUntetheredBooks
- (BKLibraryDataSourcePlistUntetheredBooks)initWithPlistKind:(int64_t)a3 identifier:(id)a4 assetMetadataProvider:(id)a5 coverImageHelper:(id)a6 assetMetadataCache:(id)a7;
- (BOOL)isEligibleLocalBookToBeMadeUbiquitous:(id)a3;
- (BOOL)wantsPlistEntry:(id)a3;
- (void)fetchAllLocalBooksEligibleToBeMadeUbiquitousWithCompletion:(id)a3;
- (void)fetchLocalAssetWithID:(id)a3 completion:(id)a4;
- (void)makeBooksLocal:(id)a3 completion:(id)a4;
- (void)q_updateUniqueIDIfNeededInMutableEntry:(id)a3 withOriginalBookEntry:(id)a4;
@end

@implementation BKLibraryDataSourcePlistUntetheredBooks

- (BKLibraryDataSourcePlistUntetheredBooks)initWithPlistKind:(int64_t)a3 identifier:(id)a4 assetMetadataProvider:(id)a5 coverImageHelper:(id)a6 assetMetadataCache:(id)a7
{
  v11.receiver = self;
  v11.super_class = BKLibraryDataSourcePlistUntetheredBooks;
  v7 = [(BKLibraryDataSourcePlist *)&v11 initWithPlistKind:a3 identifier:a4 assetMetadataProvider:a5 coverImageHelper:a6 assetMetadataCache:a7];
  if (v7)
  {
    v8 = dispatch_queue_create("BKLibraryDataSourcePlist.moveUbiquitousBooksToLocalSerialQueue", 0);
    moveUbiquitousBooksToLocalSerialQueue = v7->_moveUbiquitousBooksToLocalSerialQueue;
    v7->_moveUbiquitousBooksToLocalSerialQueue = v8;
  }

  return v7;
}

- (BOOL)isEligibleLocalBookToBeMadeUbiquitous:(id)a3
{
  v4 = a3;
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

    v10 = [v5 storeID];
    if (!v10 || v9)
    {
      v11 = [v5 permlink];
      if (v11)
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

- (void)fetchAllLocalBooksEligibleToBeMadeUbiquitousWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100123EAC;
  v4[3] = &unk_100A05E68;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(BKLibraryDataSourcePlist *)v5 fetchAssetIDsWithCompletion:v4];
}

- (void)fetchLocalAssetWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v14 = v6;
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
    v10 = objc_retainBlock(v7);
    if (v10)
    {
      v11 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorInvalidAssetError userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)makeBooksLocal:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = objc_opt_new();
    v9 = [(BKLibraryDataSourcePlistUntetheredBooks *)self moveUbiquitousBooksToLocalSerialQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001244A0;
    v12[3] = &unk_100A04FE8;
    v13 = v6;
    v14 = self;
    v15 = v8;
    v16 = v7;
    v10 = v8;
    dispatch_async(v9, v12);
  }

  else
  {
    v11 = objc_retainBlock(v7);
    v10 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0, 0);
    }
  }
}

- (BOOL)wantsPlistEntry:(id)a3
{
  v3 = [IMLibraryPlist isSampleFromPlistEntry:a3];
  v4 = [v3 BOOLValue];

  return v4 ^ 1;
}

- (void)q_updateUniqueIDIfNeededInMutableEntry:(id)a3 withOriginalBookEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BKLibraryDataSourcePlist *)self _isSupplementalPDFFromPlistEntry:v7]|| ([IMLibraryPlist storeIdFromPlistEntry:v7], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [IMLibraryPlist uniqueIdFromPlistEntry:v7];
  }

  v9 = [IMLibraryPlist permlinkFromPlistEntry:v7];
  v10 = [v7 valueForKey:@"Inserted-By-iBooks"];
  v11 = [v10 BOOLValue];

  if (!v8)
  {
    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      v8 = 0;
      goto LABEL_19;
    }

    v13 = [v6 objectForKey:@"BKLibraryDataSourcePlist-FullPath"];
    if (v13)
    {
      v14 = [(BKLibraryDataSourcePlist *)self fullPathToAssetID];
      v8 = [v14 objectForKey:v13];

      if (v8)
      {
LABEL_17:
        v17 = +[IMLibraryPlist keyNameForUniqueId];
        [v6 setValue:v8 forKey:v17];

        goto LABEL_18;
      }

      v18 = 0;
      v8 = [BLLibraryUtility identifierFromBookPath:v13 error:&v18];
      v15 = v18;
      if (v8 && !v15)
      {
        v16 = [(BKLibraryDataSourcePlist *)self fullPathToAssetID];
        [v16 setObject:v8 forKey:v13];

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