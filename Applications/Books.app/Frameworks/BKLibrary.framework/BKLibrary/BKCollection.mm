@interface BKCollection
+ (BKCollection)collectionWithID:(id)a3 inManagedObjectContext:(id)a4;
+ (BOOL)allowsManualAdditionToCollectionWithID:(id)a3;
+ (BOOL)isDefaultCollection:(id)a3;
+ (BOOL)isSelectableDefaultCollectionID:(id)a3;
+ (BOOL)isValidForDeserialization:(id)a3;
+ (BOOL)shouldSyncCollectionID:(id)a3;
+ (id)availableDefaultCollectionIDs;
+ (id)availableDefaultCollectionIDsForOS;
+ (id)availableSelectableDefaultCollectionIDsForOS;
+ (id)contentTypesForDefaultCollectionWithID:(id)a3;
+ (id)insertNewCollectionWithCollectionID:(id)a3 inManagedObjectContext:(id)a4;
+ (id)mapContentTypeToDefaultCollectionIDForOS;
+ (id)predicateForAllDefaultCollections;
+ (id)predicateForDeletedDefaultCollections;
+ (id)predicateForSelectableDefaultCollections;
+ (id)seriesIDFromSeriesCollectionID:(id)a3;
+ (unint64_t)defaultSortModeForCollectionID:(id)a3;
+ (unint64_t)defaultViewModeForCollectionID:(id)a3;
+ (unint64_t)sortModeForSeriesCollections;
+ (void)addCollections:(id)a3 moc:(id)a4;
+ (void)cleanupDefaultCollections:(id)a3;
+ (void)setSortModeForSeriesCollections:(unint64_t)a3;
- (BKLibraryManagedObjectContext)managedObjectContext;
- (BOOL)acceptsContentType:(signed __int16)a3;
- (BOOL)allowsManualAddition;
- (BOOL)canDeleteLibraryAsset:(id)a3;
- (BOOL)deleteRemovesFromCollection;
- (BOOL)isDefaultCollection;
- (BOOL)isEqualToCollection:(id)a3;
- (BOOL)isValidForSerialization;
- (BOOL)shouldSyncCollectionMembers;
- (NSNumber)maxSortKey;
- (NSString)debugDescription;
- (NSString)description;
- (OS_dispatch_queue)sortKeyQueue;
- (id)addCollectionMemberAvoidingDupesWithAsset:(id)a3 assetID:(id)a4 temporaryAssetID:(id)a5 sortKey:(id)a6 forceToTop:(BOOL)a7;
- (id)collectionDetailRepresentation;
- (id)contentTypePredicate;
- (unint64_t)resolvedSortMode;
- (unint64_t)resolvedViewMode;
- (void)addLibraryAssets:(id)a3;
- (void)addLibraryAssets:(id)a3 hideAssets:(BOOL)a4 inManagedObjectContext:(id)a5 forceToTop:(BOOL)a6;
- (void)awakeFromInsert;
- (void)clearMaxSortKey;
- (void)configureFromBackupSummary:(id)a3;
- (void)configureFromCollectionDetail:(id)a3 shouldCompareModificationDate:(BOOL)a4;
- (void)configureFromDictionary:(id)a3;
- (void)mergeWithDictionaryRepresentation:(id)a3;
- (void)setDeletedFlag:(id)a3;
- (void)setHidden:(id)a3;
- (void)setLocalizedTitle:(id)a3;
- (void)setSortKey:(id)a3;
- (void)setSortMode:(id)a3;
- (void)setTitle:(id)a3;
- (void)setViewMode:(id)a3;
- (void)updateLastModification;
- (void)updateMaxSortKeyWithMember:(id)a3;
@end

@implementation BKCollection

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = BKCollection;
  [(BKCollection *)&v4 awakeFromInsert];
  v3 = +[NSDate date];
  [(BKCollection *)self setLastModification:v3];
}

+ (id)insertNewCollectionWithCollectionID:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 libraryManager];
  v8 = [NSEntityDescription insertNewObjectForEntityForName:@"BKCollection" inManagedObjectContext:v6];
  if (!v5)
  {
    v5 = +[NSString UUID];
  }

  v9 = [v7 copyNextCollectionSortKey:v6];
  [v8 setSortKey:v9];
  [v8 setCollectionID:v5];
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 resolvedSortMode]);
  [v8 setSortMode:v10];

  [v8 setLocalModDate:0];

  return v8;
}

+ (unint64_t)sortModeForSeriesCollections
{
  v2 = +[BKLibraryManager defaultManager];
  v3 = [v2 metadataObjectForKey:@"BKCollectionSeriesSortMode"];
  v4 = [v3 intValue];

  if ((v4 - 11) >= 0xFFFFFFFE)
  {
    return v4;
  }

  else
  {
    return 10;
  }
}

+ (void)setSortModeForSeriesCollections:(unint64_t)a3
{
  if (a3 - 9 <= 1)
  {
    v6 = +[BKLibraryManager defaultManager];
    v5 = [NSNumber numberWithUnsignedInteger:a3];
    [v6 setMetadataObject:v5 forKey:@"BKCollectionSeriesSortMode"];

    [v6 saveMetaData];
  }
}

+ (BKCollection)collectionWithID:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollection"];
  [v7 setFetchLimit:1];
  v23 = v5;
  v8 = [NSArray arrayWithObjects:&v23 count:1];
  v9 = [BKCollection predicateForCollectionWithCollectionIDInList:v8];
  [v7 setPredicate:v9];

  v16 = 0;
  v10 = [v6 executeFetchRequest:v7 error:&v16];

  v11 = v16;
  if (v10)
  {
    v12 = [v10 lastObject];
  }

  else
  {
    v13 = BCIMLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "+[BKCollection collectionWithID:inManagedObjectContext:]";
      v19 = 2080;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BKLibrary/Source/BKCollection.m";
      v21 = 1024;
      v22 = 171;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v14 = BCIMLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "@Failed to fetch LibraryAsset with AssetID {%@}{%@}", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)addLibraryAssets:(id)a3 hideAssets:(BOOL)a4 inManagedObjectContext:(id)a5 forceToTop:(BOOL)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(BKCollection *)self collectionID];
  v13 = [v12 isEqualToString:kBKCollectionDefaultIDWantToRead];

  if (v13)
  {
    v14 = +[NSNotificationCenter defaultCenter];
    [v14 postNotificationName:@"BKLibraryAssetAddToWTRCollectionNotification" object:self userInfo:0];
  }

  [v11 setSaveContext:2];
  if (v11 && [v10 count])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_52C40;
    v15[3] = &unk_D69D8;
    v16 = v11;
    v19 = a4;
    v17 = v10;
    v18 = self;
    v20 = a6;
    _os_activity_initiate(&dword_0, "Collection add library assets", OS_ACTIVITY_FLAG_DEFAULT, v15);
  }
}

- (void)addLibraryAssets:(id)a3
{
  v8 = a3;
  v4 = [(BKCollection *)self collectionID];
  v5 = [v4 isEqualToString:kBKCollectionDefaultIDWantToRead];

  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"BKLibraryAssetAddToWTRCollectionNotification" object:self userInfo:0];
  }

  if ([v8 count])
  {
    v7 = [(BKCollection *)self managedObjectContext];
    [(BKCollection *)self addLibraryAssets:v8 hideAssets:0 inManagedObjectContext:v7 forceToTop:0];
    if ([v7 hasChanges])
    {
      [v7 saveLibrary];
    }
  }
}

- (OS_dispatch_queue)sortKeyQueue
{
  if (qword_EFCC8 != -1)
  {
    sub_911A4();
  }

  v3 = qword_EFCC0;

  return v3;
}

- (NSNumber)maxSortKey
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_53280;
  v11 = sub_53290;
  v12 = 0;
  v3 = [(BKCollection *)self sortKeyQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_53298;
  v6[3] = &unk_D6410;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)clearMaxSortKey
{
  v3 = [(BKCollection *)self sortKeyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_534A4;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)updateMaxSortKeyWithMember:(id)a3
{
  v4 = a3;
  v5 = [(BKCollection *)self sortKeyQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_53570;
  v7[3] = &unk_D5420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (id)addCollectionMemberAvoidingDupesWithAsset:(id)a3 assetID:(id)a4 temporaryAssetID:(id)a5 sortKey:(id)a6 forceToTop:(BOOL)a7
{
  v56 = a7;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = +[BULogUtilities shared];
  v16 = [v15 verboseLoggingEnabled];

  if (v16)
  {
    v17 = BKLibraryCollectionDevelopmentLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(BKCollection *)self collectionID];
      v19 = [v11 assetID];
      v20 = self;
      v21 = v19;
      v22 = @"null";
      if (v19)
      {
        v23 = v19;
      }

      else
      {
        v23 = @"null";
      }

      *buf = 138412802;
      v64 = v18;
      v65 = 2112;
      if (v12)
      {
        v22 = v12;
      }

      v66 = v23;
      v67 = 2112;
      v68 = v22;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "\\addCollectionMemberAvoidingDupesWithAsset for collectionID: %@ asset.assetID: %@ assetID: %@\\"", buf, 0x20u);

      self = v20;
    }
  }

  if (![(__CFString *)v12 length])
  {
    v33 = [v11 permlink];
    if ([v33 length])
    {
      v34 = [(__CFString *)v13 length];

      if (v34)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v35 = 0;
    goto LABEL_49;
  }

LABEL_11:
  v57 = v14;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v24 = [(BKCollection *)self members];
  v25 = [v24 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v59;
    v54 = self;
    v55 = v11;
LABEL_13:
    v28 = 0;
    while (1)
    {
      if (*v59 != v27)
      {
        objc_enumerationMutation(v24);
      }

      v29 = *(*(&v58 + 1) + 8 * v28);
      v30 = [v29 assetID];
      if ([v30 isEqualToString:v12])
      {
        break;
      }

      v31 = [v29 temporaryAssetID];
      v32 = [v31 isEqualToString:v13];

      if (v32)
      {
        goto LABEL_25;
      }

      if (v26 == ++v28)
      {
        v26 = [v24 countByEnumeratingWithState:&v58 objects:v62 count:16];
        self = v54;
        v11 = v55;
        if (v26)
        {
          goto LABEL_13;
        }

        goto LABEL_20;
      }
    }

LABEL_25:
    v35 = v29;

    self = v54;
    v11 = v55;
    if (v35)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_20:
  }

  v36 = [(BKCollection *)self managedObjectContext];
  v35 = [NSEntityDescription insertNewObjectForEntityForName:@"BKCollectionMember" inManagedObjectContext:v36];

  [v35 setCollection:self];
  [v35 setAssetID:v12];
  [v35 setTemporaryAssetID:v13];
  v37 = BKLibraryCollectionLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = [(BKCollection *)self collectionID];
    *buf = 138412546;
    v64 = v38;
    v65 = 2112;
    v66 = v12;
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "Collection Member Inserted.  Creating BKCollectionMember for collectionID: %@ assetID: %@", buf, 0x16u);
  }

LABEL_29:
  v39 = [v35 asset];
  if (v39)
  {

    v14 = v57;
    if (!v35)
    {
      goto LABEL_48;
    }

LABEL_40:
    v42 = [v35 sortKey];
    if (!v42 || (v43 = v42, [v35 sortKey], v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "unsignedLongValue"), v44, v43, !v45) || v56)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v14 unsignedLongValue] || v56)
      {
        v46 = [BKUserSortOrderManager nextSortKeyForCollection:self];

        v14 = v46;
      }

      [v35 setDifferentNumber:v14 forKey:@"sortKey"];
    }

    goto LABEL_48;
  }

  v40 = [v35 assetID];
  v14 = v57;
  if (v40)
  {
  }

  else
  {
    v41 = [v35 temporaryAssetID];

    if (!v41)
    {
      goto LABEL_39;
    }
  }

  if (!v11)
  {
    v48 = [(BKCollection *)self managedObjectContext];
    v49 = [v48 libraryManager];
    if (v12)
    {
      v50 = v12;
    }

    else
    {
      v50 = v13;
    }

    [(BKCollection *)self managedObjectContext];
    v52 = v51 = self;
    v53 = [v49 libraryMutableAssetWithPermanentOrTemporaryAssetID:v50 inManagedObjectContext:v52];
    [v35 setAsset:v53];

    self = v51;
    if (!v35)
    {
      goto LABEL_48;
    }

    goto LABEL_40;
  }

  [v35 setAsset:v11];
LABEL_39:
  if (v35)
  {
    goto LABEL_40;
  }

LABEL_48:
  [(BKCollection *)self updateMaxSortKeyWithMember:v35];
LABEL_49:
  [v35 setLocalModDate:0];

  return v35;
}

- (BOOL)acceptsContentType:(signed __int16)a3
{
  v3 = a3;
  v4 = [(BKCollection *)self collectionID];
  if ([v4 isEqualToString:kBKCollectionDefaultIDBooks])
  {
    v6 = v3 == 4 || (v3 - 1) < 2;
  }

  else if ([v4 isEqualToString:kBKCollectionDefaultIDPDFs])
  {
    v6 = v3 == 3;
  }

  else
  {
    v7 = [v4 isEqualToString:kBKCollectionDefaultIDAudiobooks] ^ 1;
    if (v3 == 6)
    {
      v6 = 1;
    }

    else
    {
      v6 = v7;
    }
  }

  return v6;
}

- (BOOL)isEqualToCollection:(id)a3
{
  v4 = a3;
  v5 = [(BKCollection *)self collectionID];
  v6 = [v4 collectionID];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (void)updateLastModification
{
  v3 = +[NSDate date];
  [(BKCollection *)self setLastModification:v3];

  v4 = +[NSDate date];
  [(BKCollection *)self setLocalModDate:v4];
}

+ (id)predicateForAllDefaultCollections
{
  v3 = [a1 availableDefaultCollectionIDsForOS];
  v4 = [a1 predicateForCollectionWithCollectionIDInList:v3];

  return v4;
}

+ (id)predicateForSelectableDefaultCollections
{
  v3 = [a1 availableSelectableDefaultCollectionIDsForOS];
  v4 = [a1 predicateForCollectionWithCollectionIDInList:v3];

  return v4;
}

+ (id)predicateForDeletedDefaultCollections
{
  v2 = [a1 availableDefaultCollectionIDsForOS];
  v3 = [NSPredicate predicateWithFormat:@"(%K in %@) AND %K == 1", @"collectionID", v2, @"deletedFlag"];

  return v3;
}

+ (unint64_t)defaultSortModeForCollectionID:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:kBKCollectionDefaultIDFinished])
  {
    v5 = 8;
  }

  else if ([v4 isEqualToString:kBKCollectionDefaultIDWantToRead] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", kBKCollectionDefaultIDSamples))
  {
    v5 = 6;
  }

  else if ([a1 isSeriesCollectionID:v4])
  {
    v5 = 7;
  }

  else
  {
    v5 = 6;
  }

  return v5;
}

+ (unint64_t)defaultViewModeForCollectionID:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:kBKCollectionDefaultIDFinished] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", kBKCollectionDefaultIDWantToRead) & 1) != 0 || objc_msgSend(v3, "isEqualToString:", kBKCollectionDefaultIDSamples))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setSortKey:(id)a3
{
  v4 = a3;
  [(BKCollection *)self willChangeValueForKey:@"sortKey"];
  [(BKCollection *)self setPrimitiveValue:v4 forKey:@"sortKey"];

  [(BKCollection *)self updateLastModification];

  [(BKCollection *)self didChangeValueForKey:@"sortKey"];
}

- (void)setSortMode:(id)a3
{
  v4 = a3;
  [(BKCollection *)self willChangeValueForKey:@"sortMode"];
  [(BKCollection *)self setPrimitiveValue:v4 forKey:@"sortMode"];

  [(BKCollection *)self updateLastModification];

  [(BKCollection *)self didChangeValueForKey:@"sortMode"];
}

- (void)setViewMode:(id)a3
{
  v4 = a3;
  [(BKCollection *)self willChangeValueForKey:@"viewMode"];
  [(BKCollection *)self setPrimitiveValue:v4 forKey:@"viewMode"];

  [(BKCollection *)self updateLastModification];

  [(BKCollection *)self didChangeValueForKey:@"viewMode"];
}

- (unint64_t)resolvedSortMode
{
  v3 = [(BKCollection *)self sortMode];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v6 = [(BKCollection *)self collectionID];
    v5 = [BKCollection defaultSortModeForCollectionID:v6];
  }

  return v5;
}

- (unint64_t)resolvedViewMode
{
  v3 = [(BKCollection *)self viewMode];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v6 = [(BKCollection *)self collectionID];
    v5 = [BKCollection defaultViewModeForCollectionID:v6];
  }

  return v5;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  [(BKCollection *)self willChangeValueForKey:@"title"];
  [(BKCollection *)self willChangeValueForKey:@"localizedTitle"];
  [(BKCollection *)self setPrimitiveValue:v4 forKey:@"title"];

  [(BKCollection *)self updateLastModification];
  [(BKCollection *)self didChangeValueForKey:@"localizedTitle"];

  [(BKCollection *)self didChangeValueForKey:@"title"];
}

- (void)setDeletedFlag:(id)a3
{
  v4 = a3;
  [(BKCollection *)self willChangeValueForKey:@"deletedFlag"];
  [(BKCollection *)self setPrimitiveValue:v4 forKey:@"deletedFlag"];

  [(BKCollection *)self updateLastModification];

  [(BKCollection *)self didChangeValueForKey:@"deletedFlag"];
}

- (void)setHidden:(id)a3
{
  v4 = a3;
  [(BKCollection *)self willChangeValueForKey:@"hidden"];
  [(BKCollection *)self setPrimitiveValue:v4 forKey:@"hidden"];

  [(BKCollection *)self updateLastModification];

  [(BKCollection *)self didChangeValueForKey:@"hidden"];
}

- (void)setLocalizedTitle:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_545E0;
  v4[3] = &unk_D5420;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  _os_activity_initiate(&dword_0, "Set Collection Title", OS_ACTIVITY_FLAG_DEFAULT, v4);
}

- (BKLibraryManagedObjectContext)managedObjectContext
{
  v4.receiver = self;
  v4.super_class = BKCollection;
  v2 = [(BKCollection *)&v4 managedObjectContext];

  return v2;
}

- (BOOL)isValidForSerialization
{
  v3 = [(BKCollection *)self deletedFlag];
  if ([v3 BOOLValue])
  {
    v4 = [(BKCollection *)self lastModification];
    [v4 timeIntervalSince1970];
    v6 = v5;

    v7 = [IMUserDataCull isTimestampNewerThanMaxDeletedAge:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (BOOL)isDefaultCollection:(id)a3
{
  v3 = [a3 objectForKey:@"serverSyncUniqueId"];
  if (v3)
  {
    v4 = [objc_opt_class() availableDefaultCollectionIDs];
    v5 = [v4 containsObject:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isValidForDeserialization:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKey:@"deletedFlag"];
  v6 = BUDynamicCast();

  if ([v6 BOOLValue])
  {
    v7 = [v4 objectForKey:@"lastModification_Since1970"];
    v8 = [v7 unsignedLongLongValue];

    if ([IMUserDataCull isTimestampNewerThanMaxDeletedAge:v8])
    {
      v9 = [a1 isDefaultCollection:v4] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)mergeWithDictionaryRepresentation:(id)a3
{
  v11 = a3;
  [(BKCollection *)self clearMaxSortKey];
  v4 = [v11 objectForKey:@"lastModification_Since1970"];
  v5 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v4 unsignedLongLongValue]);

  v6 = [v11 objectForKey:@"deletedFlag"];
  v7 = [(BKCollection *)self deletedFlag];
  v8 = [v7 BOOLValue];

  if ((v8 & 1) == 0)
  {
    if ([v6 BOOLValue])
    {
      [BKCollection isDefaultCollection:v11];
    }

    else
    {
      v9 = [(BKCollection *)self lastModification];
      v10 = [v5 compare:v9];

      if (v10 == &dword_0 + 1)
      {
        [(BKCollection *)self configureFromDictionary:v11];
      }
    }
  }
}

+ (void)cleanupDefaultCollections:(id)a3
{
  v3 = a3;
  v4 = +[BKCollection predicateForDeletedDefaultCollections];
  [v3 batchDeleteEntity:@"BKCollection" matching:v4 prefetchRelationships:0];
}

- (void)configureFromDictionary:(id)a3
{
  v9 = a3;
  [(BKCollection *)self configureFromBackupSummary:?];
  v4 = [(BKCollection *)self deletedFlag];
  if ([v4 BOOLValue])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v9 objectForKey:@"databaseKeys"];
  }

  if ([v5 count])
  {
    v6 = [BKCollectionMember collectionMemberDictionariesWithAssetIDs:v5];
    [(BKCollection *)self addCollectionMemberDictionaries:v6 forceToTop:0];
  }

  v7 = [v9 objectForKey:@"lastModification_Since1970"];
  v8 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v7 unsignedLongLongValue]);
  [(BKCollection *)self setLastModification:v8];
}

- (id)collectionDetailRepresentation
{
  v3 = [(BKCollection *)self collectionID];
  v4 = [[BCMutableCollectionDetail alloc] initWithCollectionID:v3];
  v5 = [(BKCollection *)self title];
  [v4 setName:v5];

  v6 = [(BKCollection *)self details];
  [v4 setCollectionDescription:v6];

  v7 = [(BKCollection *)self hidden];
  [v4 setHidden:{objc_msgSend(v7, "BOOLValue")}];

  v8 = [(BKCollection *)self sortKey];
  [v4 setSortOrder:{objc_msgSend(v8, "intValue")}];

  v9 = [NSNumber numberWithUnsignedInteger:[(BKCollection *)self resolvedSortMode]];
  [v4 setSortMode:{objc_msgSend(v9, "intValue")}];

  v10 = [(BKCollection *)self deletedFlag];
  [v4 setDeletedFlag:{objc_msgSend(v10, "BOOLValue")}];

  v11 = [(BKCollection *)self localModDate];
  [v4 setModificationDate:v11];

  return v4;
}

- (void)configureFromCollectionDetail:(id)a3 shouldCompareModificationDate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BKCollection *)self localModDate];
  v8 = [v6 modificationDate];
  v9 = v8;
  if (v7 | v8)
  {
    if (!v7 && v8)
    {
      v10 = +[BULogUtilities shared];
      v11 = [v10 verboseLoggingEnabled];

      if (v11)
      {
        v12 = BKLibraryCollectionDevelopmentLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(BKCollection *)self title];
          *v47 = 138412546;
          *&v47[4] = v9;
          *&v47[12] = 2112;
          *&v47[14] = v13;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "\\No local modDate, collectionDetail has modDate:%@  for collectionDetail %@ \\"", v47, 0x16u);
        }
      }

      goto LABEL_24;
    }

    if (v7 && v8)
    {
      v18 = +[BULogUtilities shared];
      v19 = [v18 verboseLoggingEnabled];

      if (v19)
      {
        v20 = BKLibraryCollectionDevelopmentLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [(BKCollection *)self title];
          *v47 = 138412802;
          *&v47[4] = v7;
          *&v47[12] = 2112;
          *&v47[14] = v9;
          *&v47[22] = 2112;
          v48 = v21;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "\\local has modDate:%@, collectionDetail has modDate:%@ for collectionDetail %@\\"", v47, 0x20u);
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    v14 = +[BULogUtilities shared];
    v15 = [v14 verboseLoggingEnabled];

    if (v15)
    {
      v16 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(BKCollection *)self title];
        *v47 = 138412290;
        *&v47[4] = v17;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "\\configureFromCollectionDetail No local modDate, No collectionDetail modDate for collectionDetail %@\\"", v47, 0xCu);
      }
    }
  }

  if (v4 && !v9)
  {
    goto LABEL_39;
  }

LABEL_21:
  if (v7)
  {
    if (v4)
    {
      [v9 timeIntervalSinceReferenceDate];
      v23 = v22;
      [v7 timeIntervalSinceReferenceDate];
      if (v23 <= v24)
      {
        [v9 timeIntervalSinceReferenceDate];
        v43 = v42;
        [v7 timeIntervalSinceReferenceDate];
        if (v43 >= v44)
        {
          goto LABEL_34;
        }

        v45 = +[BULogUtilities shared];
        v46 = [v45 verboseLoggingEnabled];

        if (!v46)
        {
          goto LABEL_34;
        }

        v34 = BKLibraryCollectionDevelopmentLog();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }

        v35 = [(BKCollection *)self title];
        v36 = [(BKCollection *)self collectionID];
        *v47 = 138412546;
        *&v47[4] = v35;
        *&v47[12] = 2112;
        *&v47[14] = v36;
        v37 = "\\BKCollection Not Taking changes from collectiond detail as my mod date is > detail mod date for collectionTitle: %@ collectionID:%@\\"";
        goto LABEL_31;
      }
    }
  }

LABEL_24:
  v25 = [v6 name];
  [(BKCollection *)self setDifferentString:v25 forKey:@"title"];

  v26 = [v6 collectionDescription];
  [(BKCollection *)self setDifferentString:v26 forKey:@"details"];

  v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 hidden]);
  [(BKCollection *)self setDifferentNumber:v27 forKey:@"hidden"];

  v28 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 sortOrder]);
  [(BKCollection *)self setDifferentNumber:v28 forKey:@"sortKey"];

  v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 sortMode]);
  [(BKCollection *)self setDifferentNumber:v29 forKey:@"sortMode"];

  v30 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 deletedFlag]);
  [(BKCollection *)self setDifferentNumber:v30 forKey:@"deletedFlag"];

  v31 = [(BKCollection *)self hasChanges];
  [(BKCollection *)self setDifferentDate:v9 forKey:@"localModDate"];
  v32 = +[BULogUtilities shared];
  v33 = [v32 verboseLoggingEnabled];

  if (!v31)
  {
    if (!v33)
    {
      goto LABEL_34;
    }

    v34 = BKLibraryCollectionDevelopmentLog();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v35 = [(BKCollection *)self title];
    v36 = [(BKCollection *)self collectionID];
    *v47 = 138412546;
    *&v47[4] = v35;
    *&v47[12] = 2112;
    *&v47[14] = v36;
    v37 = "\\BKCollection No changes besides date for collectionTitle: %@ collectionID:%@\\"";
LABEL_31:
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, v37, v47, 0x16u);

    goto LABEL_32;
  }

  if (v33)
  {
    v34 = BKLibraryCollectionDevelopmentLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [(BKCollection *)self description];
      *v47 = 138412290;
      *&v47[4] = v35;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "\\BKCollection configured with changes: %@\\"", v47, 0xCu);
LABEL_32:
    }

LABEL_33:
  }

LABEL_34:
  v38 = [(BKCollection *)self placeholder:*v47];
  v39 = [v38 BOOLValue];

  if (v39)
  {
    v40 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = [(BKCollection *)self collectionID];
      *v47 = 138412290;
      *&v47[4] = v41;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "Un-hiding user collection BKCollection: %@", v47, 0xCu);
    }
  }

  [(BKCollection *)self setDifferentNumber:&__kCFBooleanFalse forKey:@"placeholder"];
LABEL_39:
}

- (id)contentTypePredicate
{
  v2 = [(BKCollection *)self sortKey];
  v3 = [v2 intValue];

  switch(v3)
  {
    case 0xFFFFFFFC:
      v4 = 6;
      goto LABEL_7;
    case 0xFFFFFFFD:
      v4 = 3;
LABEL_7:
      [NSPredicate predicateWithFormat:@"(%K == %d)", @"contentType", v4, v7, v8];
      goto LABEL_8;
    case 0xFFFFFFFF:
      [NSPredicate predicateWithFormat:@"((%K == %d) OR (%K == %d))", @"contentType", 1, @"contentType", 4];
      v5 = LABEL_8:;
      goto LABEL_10;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (BOOL)isDefaultCollection
{
  v3 = [objc_opt_class() availableDefaultCollectionIDsForOS];
  v4 = [(BKCollection *)self collectionID];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (BOOL)allowsManualAddition
{
  v3 = objc_opt_class();
  v4 = [(BKCollection *)self collectionID];
  LOBYTE(v3) = [v3 allowsManualAdditionToCollectionWithID:v4];

  return v3;
}

+ (BOOL)allowsManualAdditionToCollectionWithID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 availableDefaultCollectionIDs];
    if ([v5 containsObject:v4] && (objc_msgSend(v4, "isEqualToString:", kBKCollectionDefaultIDWantToRead) & 1) == 0)
    {
      v6 = [v4 isEqualToString:kBKCollectionDefaultIDFinished];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldSyncCollectionMembers
{
  v2 = [(BKCollection *)self collectionID];
  v3 = [BKCollection shouldSyncCollectionID:v2];

  return v3;
}

+ (BOOL)shouldSyncCollectionID:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:kBKCollectionDefaultIDDownloaded])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:kBKCollectionDefaultIDFinished] ^ 1;
  }

  return v4;
}

- (BOOL)canDeleteLibraryAsset:(id)a3
{
  v4 = a3;
  v5 = !-[BKCollection isDefaultCollection](self, "isDefaultCollection") || ([v4 isSeriesItem] & 1) == 0 && (!objc_msgSend(v4, "isCloud") || (objc_msgSend(v4, "iTunesU") & 1) != 0 || objc_msgSend(v4, "isUbiquitousBook"));

  return v5;
}

- (BOOL)deleteRemovesFromCollection
{
  if (![(BKCollection *)self isDefaultCollection])
  {
    return 1;
  }

  v3 = [(BKCollection *)self collectionID];
  if ([v3 isEqualToString:kBKCollectionDefaultIDFinished])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(BKCollection *)self collectionID];
    if ([v5 isEqualToString:kBKCollectionDefaultIDWantToRead])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(BKCollection *)self collectionID];
      v4 = [v6 isEqualToString:kBKCollectionDefaultIDSamples];
    }
  }

  return v4;
}

+ (void)addCollections:(id)a3 moc:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = [v6 libraryManager];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([BKCollection isValidForDeserialization:v12])
        {
          v13 = [v12 objectForKeyedSubscript:@"serverSyncUniqueId"];
          v14 = [BKCollection insertNewCollectionWithCollectionID:v13 inManagedObjectContext:v6];
          [v14 configureFromDictionary:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [v15 resetNextCollectionSort];
}

- (void)configureFromBackupSummary:(id)a3
{
  v20 = a3;
  v4 = [v20 objectForKey:@"serverSyncUniqueId"];
  [(BKCollection *)self setCollectionID:v4];
  v5 = [v20 objectForKey:@"title"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_D8298;
  }

  [(BKCollection *)self setTitle:v7];

  v8 = [v20 objectForKey:@"sortKey"];
  [(BKCollection *)self setSortKey:v8];

  v9 = [v20 objectForKey:@"sortMode"];
  if (v9)
  {
    [(BKCollection *)self setSortMode:v9];
  }

  v10 = [v20 objectForKey:@"viewMode"];
  if (v10)
  {
    [(BKCollection *)self setViewMode:v10];
  }

  [(BKCollection *)self clearMaxSortKey];
  v11 = [v20 objectForKey:@"deletedFlag"];
  if (v11)
  {
    [(BKCollection *)self setDeletedFlag:v11];
  }

  else
  {
    v12 = [NSNumber numberWithBool:0];
    [(BKCollection *)self setDeletedFlag:v12];
  }

  v13 = [(BKCollection *)self deletedFlag];
  if ([v13 BOOLValue])
  {
  }

  else
  {
    v14 = [(BKCollection *)self sortKey];

    if (v14)
    {
      goto LABEL_15;
    }
  }

  v15 = [NSNumber numberWithInt:0];
  [(BKCollection *)self setSortKey:v15];

LABEL_15:
  v16 = [(BKCollection *)self title];

  if (!v16)
  {
    [(BKCollection *)self setTitle:&stru_D8298];
  }

  v17 = [v20 objectForKey:@"lastModification"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKCollection *)self setLastModification:v17];
  }

  v18 = [(BKCollection *)self lastModification];

  if (!v18)
  {
    v19 = [NSDate dateWithTimeIntervalSince1970:0.0];
    [(BKCollection *)self setLastModification:v19];
  }
}

+ (BOOL)isSelectableDefaultCollectionID:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [a1 availableSelectableDefaultCollectionIDsForOS];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (id)availableDefaultCollectionIDsForOS
{
  v4[0] = kBKCollectionDefaultAll;
  v4[1] = kBKCollectionDefaultIDBooks;
  v4[2] = kBKCollectionDefaultIDWantToRead;
  v4[3] = kBKCollectionDefaultIDAudiobooks;
  v4[4] = kBKCollectionDefaultIDDownloaded;
  v4[5] = kBKCollectionDefaultIDFinished;
  v4[6] = kBKCollectionDefaultIDSamples;
  v4[7] = kBKCollectionDefaultIDPDFs;
  v2 = [NSArray arrayWithObjects:v4 count:8];

  return v2;
}

+ (id)availableSelectableDefaultCollectionIDsForOS
{
  v4[0] = kBKCollectionDefaultIDBooks;
  v4[1] = kBKCollectionDefaultIDWantToRead;
  v4[2] = kBKCollectionDefaultIDAudiobooks;
  v4[3] = kBKCollectionDefaultIDDownloaded;
  v4[4] = kBKCollectionDefaultIDFinished;
  v4[5] = kBKCollectionDefaultIDSamples;
  v4[6] = kBKCollectionDefaultIDPDFs;
  v2 = [NSArray arrayWithObjects:v4 count:7];

  return v2;
}

+ (id)availableDefaultCollectionIDs
{
  v4[0] = kBKCollectionDefaultAll;
  v4[1] = kBKCollectionDefaultIDBooks;
  v4[2] = kBKCollectionDefaultIDWantToRead;
  v4[3] = kBKCollectionDefaultIDAudiobooks;
  v4[4] = kBKCollectionDefaultIDDownloaded;
  v4[5] = kBKCollectionDefaultIDFinished;
  v4[6] = kBKCollectionDefaultIDSamples;
  v4[7] = kBKCollectionDefaultIDPDFs;
  v2 = [NSArray arrayWithObjects:v4 count:8];

  return v2;
}

+ (id)mapContentTypeToDefaultCollectionIDForOS
{
  if (qword_EFCD0 != -1)
  {
    sub_911B8();
  }

  v3 = qword_EFCD8;

  return v3;
}

+ (id)contentTypesForDefaultCollectionWithID:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:kBKCollectionDefaultIDBooks])
  {
    v4 = &off_DE240;
  }

  else if ([v3 isEqualToString:kBKCollectionDefaultIDPDFs])
  {
    v4 = &off_DE258;
  }

  else if ([v3 isEqualToString:kBKCollectionDefaultIDAudiobooks])
  {
    v4 = &off_DE270;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)seriesIDFromSeriesCollectionID:(id)a3
{
  v3 = a3;
  if ([BKCollection isSeriesCollectionID:v3])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"iBooks_Series_", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  v3 = [(BKCollection *)self collectionID];
  v4 = [(BKCollection *)self title];
  v5 = [NSString stringWithFormat:@"<%@ (%p) collectionID=%@ title=%@>", @"self", self, v3, v4];

  return v5;
}

- (NSString)debugDescription
{
  v19 = [(BKCollection *)self title];
  v18 = [(BKCollection *)self details];
  v20 = [(BKCollection *)self collectionID];
  v17 = [(BKCollection *)self sortKey];
  v3 = [(BKCollection *)self sortMode];
  v4 = [(BKCollection *)self viewMode];
  v5 = [(BKCollection *)self isDefaultCollection];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v16 = v6;
  v7 = [(BKCollection *)self deletedFlag];
  v15 = [(BKCollection *)self hidden];
  v8 = [(BKCollection *)self placeholder];
  v9 = [(BKCollection *)self lastModification];
  v10 = [(BKCollection *)self members];
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 count]);
  v12 = [(BKCollection *)self seriesID];
  v13 = [NSString stringWithFormat:@"   %@ (%p) \n title: %@\n details:%@ collectionID: %@\n sortKey: %@\n sortMode: %@\n viewMode: %@\n isDefault: %@\n deletedFlag: %@\n hidden: %@\n placeholder: %@ lastModification: %@\n member count: %@\n seriesID: %@", @"self", self, v19, v18, v20, v17, v3, v4, v16, v7, v15, v8, v9, v11, v12];

  return v13;
}

@end