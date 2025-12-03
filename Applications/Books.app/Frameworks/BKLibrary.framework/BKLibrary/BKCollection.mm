@interface BKCollection
+ (BKCollection)collectionWithID:(id)d inManagedObjectContext:(id)context;
+ (BOOL)allowsManualAdditionToCollectionWithID:(id)d;
+ (BOOL)isDefaultCollection:(id)collection;
+ (BOOL)isSelectableDefaultCollectionID:(id)d;
+ (BOOL)isValidForDeserialization:(id)deserialization;
+ (BOOL)shouldSyncCollectionID:(id)d;
+ (id)availableDefaultCollectionIDs;
+ (id)availableDefaultCollectionIDsForOS;
+ (id)availableSelectableDefaultCollectionIDsForOS;
+ (id)contentTypesForDefaultCollectionWithID:(id)d;
+ (id)insertNewCollectionWithCollectionID:(id)d inManagedObjectContext:(id)context;
+ (id)mapContentTypeToDefaultCollectionIDForOS;
+ (id)predicateForAllDefaultCollections;
+ (id)predicateForDeletedDefaultCollections;
+ (id)predicateForSelectableDefaultCollections;
+ (id)seriesIDFromSeriesCollectionID:(id)d;
+ (unint64_t)defaultSortModeForCollectionID:(id)d;
+ (unint64_t)defaultViewModeForCollectionID:(id)d;
+ (unint64_t)sortModeForSeriesCollections;
+ (void)addCollections:(id)collections moc:(id)moc;
+ (void)cleanupDefaultCollections:(id)collections;
+ (void)setSortModeForSeriesCollections:(unint64_t)collections;
- (BKLibraryManagedObjectContext)managedObjectContext;
- (BOOL)acceptsContentType:(signed __int16)type;
- (BOOL)allowsManualAddition;
- (BOOL)canDeleteLibraryAsset:(id)asset;
- (BOOL)deleteRemovesFromCollection;
- (BOOL)isDefaultCollection;
- (BOOL)isEqualToCollection:(id)collection;
- (BOOL)isValidForSerialization;
- (BOOL)shouldSyncCollectionMembers;
- (NSNumber)maxSortKey;
- (NSString)debugDescription;
- (NSString)description;
- (OS_dispatch_queue)sortKeyQueue;
- (id)addCollectionMemberAvoidingDupesWithAsset:(id)asset assetID:(id)d temporaryAssetID:(id)iD sortKey:(id)key forceToTop:(BOOL)top;
- (id)collectionDetailRepresentation;
- (id)contentTypePredicate;
- (unint64_t)resolvedSortMode;
- (unint64_t)resolvedViewMode;
- (void)addLibraryAssets:(id)assets;
- (void)addLibraryAssets:(id)assets hideAssets:(BOOL)hideAssets inManagedObjectContext:(id)context forceToTop:(BOOL)top;
- (void)awakeFromInsert;
- (void)clearMaxSortKey;
- (void)configureFromBackupSummary:(id)summary;
- (void)configureFromCollectionDetail:(id)detail shouldCompareModificationDate:(BOOL)date;
- (void)configureFromDictionary:(id)dictionary;
- (void)mergeWithDictionaryRepresentation:(id)representation;
- (void)setDeletedFlag:(id)flag;
- (void)setHidden:(id)hidden;
- (void)setLocalizedTitle:(id)title;
- (void)setSortKey:(id)key;
- (void)setSortMode:(id)mode;
- (void)setTitle:(id)title;
- (void)setViewMode:(id)mode;
- (void)updateLastModification;
- (void)updateMaxSortKeyWithMember:(id)member;
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

+ (id)insertNewCollectionWithCollectionID:(id)d inManagedObjectContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  libraryManager = [contextCopy libraryManager];
  v8 = [NSEntityDescription insertNewObjectForEntityForName:@"BKCollection" inManagedObjectContext:contextCopy];
  if (!dCopy)
  {
    dCopy = +[NSString UUID];
  }

  v9 = [libraryManager copyNextCollectionSortKey:contextCopy];
  [v8 setSortKey:v9];
  [v8 setCollectionID:dCopy];
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 resolvedSortMode]);
  [v8 setSortMode:v10];

  [v8 setLocalModDate:0];

  return v8;
}

+ (unint64_t)sortModeForSeriesCollections
{
  v2 = +[BKLibraryManager defaultManager];
  v3 = [v2 metadataObjectForKey:@"BKCollectionSeriesSortMode"];
  intValue = [v3 intValue];

  if ((intValue - 11) >= 0xFFFFFFFE)
  {
    return intValue;
  }

  else
  {
    return 10;
  }
}

+ (void)setSortModeForSeriesCollections:(unint64_t)collections
{
  if (collections - 9 <= 1)
  {
    v6 = +[BKLibraryManager defaultManager];
    v5 = [NSNumber numberWithUnsignedInteger:collections];
    [v6 setMetadataObject:v5 forKey:@"BKCollectionSeriesSortMode"];

    [v6 saveMetaData];
  }
}

+ (BKCollection)collectionWithID:(id)d inManagedObjectContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  v7 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollection"];
  [v7 setFetchLimit:1];
  v23 = dCopy;
  v8 = [NSArray arrayWithObjects:&v23 count:1];
  v9 = [BKCollection predicateForCollectionWithCollectionIDInList:v8];
  [v7 setPredicate:v9];

  v16 = 0;
  v10 = [contextCopy executeFetchRequest:v7 error:&v16];

  v11 = v16;
  if (v10)
  {
    lastObject = [v10 lastObject];
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
      v18 = dCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "@Failed to fetch LibraryAsset with AssetID {%@}{%@}", buf, 0x16u);
    }

    lastObject = 0;
  }

  return lastObject;
}

- (void)addLibraryAssets:(id)assets hideAssets:(BOOL)hideAssets inManagedObjectContext:(id)context forceToTop:(BOOL)top
{
  assetsCopy = assets;
  contextCopy = context;
  collectionID = [(BKCollection *)self collectionID];
  v13 = [collectionID isEqualToString:kBKCollectionDefaultIDWantToRead];

  if (v13)
  {
    v14 = +[NSNotificationCenter defaultCenter];
    [v14 postNotificationName:@"BKLibraryAssetAddToWTRCollectionNotification" object:self userInfo:0];
  }

  [contextCopy setSaveContext:2];
  if (contextCopy && [assetsCopy count])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_52C40;
    v15[3] = &unk_D69D8;
    v16 = contextCopy;
    hideAssetsCopy = hideAssets;
    v17 = assetsCopy;
    selfCopy = self;
    topCopy = top;
    _os_activity_initiate(&dword_0, "Collection add library assets", OS_ACTIVITY_FLAG_DEFAULT, v15);
  }
}

- (void)addLibraryAssets:(id)assets
{
  assetsCopy = assets;
  collectionID = [(BKCollection *)self collectionID];
  v5 = [collectionID isEqualToString:kBKCollectionDefaultIDWantToRead];

  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"BKLibraryAssetAddToWTRCollectionNotification" object:self userInfo:0];
  }

  if ([assetsCopy count])
  {
    managedObjectContext = [(BKCollection *)self managedObjectContext];
    [(BKCollection *)self addLibraryAssets:assetsCopy hideAssets:0 inManagedObjectContext:managedObjectContext forceToTop:0];
    if ([managedObjectContext hasChanges])
    {
      [managedObjectContext saveLibrary];
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
  sortKeyQueue = [(BKCollection *)self sortKeyQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_53298;
  v6[3] = &unk_D6410;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(sortKeyQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)clearMaxSortKey
{
  sortKeyQueue = [(BKCollection *)self sortKeyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_534A4;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_sync(sortKeyQueue, block);
}

- (void)updateMaxSortKeyWithMember:(id)member
{
  memberCopy = member;
  sortKeyQueue = [(BKCollection *)self sortKeyQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_53570;
  v7[3] = &unk_D5420;
  v8 = memberCopy;
  selfCopy = self;
  v6 = memberCopy;
  dispatch_sync(sortKeyQueue, v7);
}

- (id)addCollectionMemberAvoidingDupesWithAsset:(id)asset assetID:(id)d temporaryAssetID:(id)iD sortKey:(id)key forceToTop:(BOOL)top
{
  topCopy = top;
  assetCopy = asset;
  dCopy = d;
  iDCopy = iD;
  keyCopy = key;
  v15 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v15 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v17 = BKLibraryCollectionDevelopmentLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      collectionID = [(BKCollection *)self collectionID];
      assetID = [assetCopy assetID];
      selfCopy = self;
      v21 = assetID;
      v22 = @"null";
      if (assetID)
      {
        v23 = assetID;
      }

      else
      {
        v23 = @"null";
      }

      *buf = 138412802;
      v64 = collectionID;
      v65 = 2112;
      if (dCopy)
      {
        v22 = dCopy;
      }

      v66 = v23;
      v67 = 2112;
      v68 = v22;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "\\addCollectionMemberAvoidingDupesWithAsset for collectionID: %@ asset.assetID: %@ assetID: %@\\"", buf, 0x20u);

      self = selfCopy;
    }
  }

  if (![(__CFString *)dCopy length])
  {
    permlink = [assetCopy permlink];
    if ([permlink length])
    {
      v34 = [(__CFString *)iDCopy length];

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
  v57 = keyCopy;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  members = [(BKCollection *)self members];
  v25 = [members countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v59;
    selfCopy2 = self;
    v55 = assetCopy;
LABEL_13:
    v28 = 0;
    while (1)
    {
      if (*v59 != v27)
      {
        objc_enumerationMutation(members);
      }

      v29 = *(*(&v58 + 1) + 8 * v28);
      assetID2 = [v29 assetID];
      if ([assetID2 isEqualToString:dCopy])
      {
        break;
      }

      temporaryAssetID = [v29 temporaryAssetID];
      v32 = [temporaryAssetID isEqualToString:iDCopy];

      if (v32)
      {
        goto LABEL_25;
      }

      if (v26 == ++v28)
      {
        v26 = [members countByEnumeratingWithState:&v58 objects:v62 count:16];
        self = selfCopy2;
        assetCopy = v55;
        if (v26)
        {
          goto LABEL_13;
        }

        goto LABEL_20;
      }
    }

LABEL_25:
    v35 = v29;

    self = selfCopy2;
    assetCopy = v55;
    if (v35)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_20:
  }

  managedObjectContext = [(BKCollection *)self managedObjectContext];
  v35 = [NSEntityDescription insertNewObjectForEntityForName:@"BKCollectionMember" inManagedObjectContext:managedObjectContext];

  [v35 setCollection:self];
  [v35 setAssetID:dCopy];
  [v35 setTemporaryAssetID:iDCopy];
  v37 = BKLibraryCollectionLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    collectionID2 = [(BKCollection *)self collectionID];
    *buf = 138412546;
    v64 = collectionID2;
    v65 = 2112;
    v66 = dCopy;
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "Collection Member Inserted.  Creating BKCollectionMember for collectionID: %@ assetID: %@", buf, 0x16u);
  }

LABEL_29:
  asset = [v35 asset];
  if (asset)
  {

    keyCopy = v57;
    if (!v35)
    {
      goto LABEL_48;
    }

LABEL_40:
    sortKey = [v35 sortKey];
    if (!sortKey || (v43 = sortKey, [v35 sortKey], v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "unsignedLongValue"), v44, v43, !v45) || topCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![keyCopy unsignedLongValue] || topCopy)
      {
        v46 = [BKUserSortOrderManager nextSortKeyForCollection:self];

        keyCopy = v46;
      }

      [v35 setDifferentNumber:keyCopy forKey:@"sortKey"];
    }

    goto LABEL_48;
  }

  assetID3 = [v35 assetID];
  keyCopy = v57;
  if (assetID3)
  {
  }

  else
  {
    temporaryAssetID2 = [v35 temporaryAssetID];

    if (!temporaryAssetID2)
    {
      goto LABEL_39;
    }
  }

  if (!assetCopy)
  {
    managedObjectContext2 = [(BKCollection *)self managedObjectContext];
    libraryManager = [managedObjectContext2 libraryManager];
    if (dCopy)
    {
      v50 = dCopy;
    }

    else
    {
      v50 = iDCopy;
    }

    [(BKCollection *)self managedObjectContext];
    v52 = v51 = self;
    v53 = [libraryManager libraryMutableAssetWithPermanentOrTemporaryAssetID:v50 inManagedObjectContext:v52];
    [v35 setAsset:v53];

    self = v51;
    if (!v35)
    {
      goto LABEL_48;
    }

    goto LABEL_40;
  }

  [v35 setAsset:assetCopy];
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

- (BOOL)acceptsContentType:(signed __int16)type
{
  typeCopy = type;
  collectionID = [(BKCollection *)self collectionID];
  if ([collectionID isEqualToString:kBKCollectionDefaultIDBooks])
  {
    v6 = typeCopy == 4 || (typeCopy - 1) < 2;
  }

  else if ([collectionID isEqualToString:kBKCollectionDefaultIDPDFs])
  {
    v6 = typeCopy == 3;
  }

  else
  {
    v7 = [collectionID isEqualToString:kBKCollectionDefaultIDAudiobooks] ^ 1;
    if (typeCopy == 6)
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

- (BOOL)isEqualToCollection:(id)collection
{
  collectionCopy = collection;
  collectionID = [(BKCollection *)self collectionID];
  collectionID2 = [collectionCopy collectionID];

  LOBYTE(collectionCopy) = [collectionID isEqualToString:collectionID2];
  return collectionCopy;
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
  availableDefaultCollectionIDsForOS = [self availableDefaultCollectionIDsForOS];
  v4 = [self predicateForCollectionWithCollectionIDInList:availableDefaultCollectionIDsForOS];

  return v4;
}

+ (id)predicateForSelectableDefaultCollections
{
  availableSelectableDefaultCollectionIDsForOS = [self availableSelectableDefaultCollectionIDsForOS];
  v4 = [self predicateForCollectionWithCollectionIDInList:availableSelectableDefaultCollectionIDsForOS];

  return v4;
}

+ (id)predicateForDeletedDefaultCollections
{
  availableDefaultCollectionIDsForOS = [self availableDefaultCollectionIDsForOS];
  v3 = [NSPredicate predicateWithFormat:@"(%K in %@) AND %K == 1", @"collectionID", availableDefaultCollectionIDsForOS, @"deletedFlag"];

  return v3;
}

+ (unint64_t)defaultSortModeForCollectionID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:kBKCollectionDefaultIDFinished])
  {
    v5 = 8;
  }

  else if ([dCopy isEqualToString:kBKCollectionDefaultIDWantToRead] & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", kBKCollectionDefaultIDSamples))
  {
    v5 = 6;
  }

  else if ([self isSeriesCollectionID:dCopy])
  {
    v5 = 7;
  }

  else
  {
    v5 = 6;
  }

  return v5;
}

+ (unint64_t)defaultViewModeForCollectionID:(id)d
{
  dCopy = d;
  if (([dCopy isEqualToString:kBKCollectionDefaultIDFinished] & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", kBKCollectionDefaultIDWantToRead) & 1) != 0 || objc_msgSend(dCopy, "isEqualToString:", kBKCollectionDefaultIDSamples))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setSortKey:(id)key
{
  keyCopy = key;
  [(BKCollection *)self willChangeValueForKey:@"sortKey"];
  [(BKCollection *)self setPrimitiveValue:keyCopy forKey:@"sortKey"];

  [(BKCollection *)self updateLastModification];

  [(BKCollection *)self didChangeValueForKey:@"sortKey"];
}

- (void)setSortMode:(id)mode
{
  modeCopy = mode;
  [(BKCollection *)self willChangeValueForKey:@"sortMode"];
  [(BKCollection *)self setPrimitiveValue:modeCopy forKey:@"sortMode"];

  [(BKCollection *)self updateLastModification];

  [(BKCollection *)self didChangeValueForKey:@"sortMode"];
}

- (void)setViewMode:(id)mode
{
  modeCopy = mode;
  [(BKCollection *)self willChangeValueForKey:@"viewMode"];
  [(BKCollection *)self setPrimitiveValue:modeCopy forKey:@"viewMode"];

  [(BKCollection *)self updateLastModification];

  [(BKCollection *)self didChangeValueForKey:@"viewMode"];
}

- (unint64_t)resolvedSortMode
{
  sortMode = [(BKCollection *)self sortMode];
  v4 = sortMode;
  if (sortMode)
  {
    intValue = [sortMode intValue];
  }

  else
  {
    collectionID = [(BKCollection *)self collectionID];
    intValue = [BKCollection defaultSortModeForCollectionID:collectionID];
  }

  return intValue;
}

- (unint64_t)resolvedViewMode
{
  viewMode = [(BKCollection *)self viewMode];
  v4 = viewMode;
  if (viewMode)
  {
    intValue = [viewMode intValue];
  }

  else
  {
    collectionID = [(BKCollection *)self collectionID];
    intValue = [BKCollection defaultViewModeForCollectionID:collectionID];
  }

  return intValue;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  [(BKCollection *)self willChangeValueForKey:@"title"];
  [(BKCollection *)self willChangeValueForKey:@"localizedTitle"];
  [(BKCollection *)self setPrimitiveValue:titleCopy forKey:@"title"];

  [(BKCollection *)self updateLastModification];
  [(BKCollection *)self didChangeValueForKey:@"localizedTitle"];

  [(BKCollection *)self didChangeValueForKey:@"title"];
}

- (void)setDeletedFlag:(id)flag
{
  flagCopy = flag;
  [(BKCollection *)self willChangeValueForKey:@"deletedFlag"];
  [(BKCollection *)self setPrimitiveValue:flagCopy forKey:@"deletedFlag"];

  [(BKCollection *)self updateLastModification];

  [(BKCollection *)self didChangeValueForKey:@"deletedFlag"];
}

- (void)setHidden:(id)hidden
{
  hiddenCopy = hidden;
  [(BKCollection *)self willChangeValueForKey:@"hidden"];
  [(BKCollection *)self setPrimitiveValue:hiddenCopy forKey:@"hidden"];

  [(BKCollection *)self updateLastModification];

  [(BKCollection *)self didChangeValueForKey:@"hidden"];
}

- (void)setLocalizedTitle:(id)title
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_545E0;
  v4[3] = &unk_D5420;
  v4[4] = self;
  titleCopy = title;
  v3 = titleCopy;
  _os_activity_initiate(&dword_0, "Set Collection Title", OS_ACTIVITY_FLAG_DEFAULT, v4);
}

- (BKLibraryManagedObjectContext)managedObjectContext
{
  v4.receiver = self;
  v4.super_class = BKCollection;
  managedObjectContext = [(BKCollection *)&v4 managedObjectContext];

  return managedObjectContext;
}

- (BOOL)isValidForSerialization
{
  deletedFlag = [(BKCollection *)self deletedFlag];
  if ([deletedFlag BOOLValue])
  {
    lastModification = [(BKCollection *)self lastModification];
    [lastModification timeIntervalSince1970];
    v6 = v5;

    v7 = [IMUserDataCull isTimestampNewerThanMaxDeletedAge:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (BOOL)isDefaultCollection:(id)collection
{
  v3 = [collection objectForKey:@"serverSyncUniqueId"];
  if (v3)
  {
    availableDefaultCollectionIDs = [objc_opt_class() availableDefaultCollectionIDs];
    v5 = [availableDefaultCollectionIDs containsObject:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isValidForDeserialization:(id)deserialization
{
  deserializationCopy = deserialization;
  objc_opt_class();
  v5 = [deserializationCopy objectForKey:@"deletedFlag"];
  v6 = BUDynamicCast();

  if ([v6 BOOLValue])
  {
    v7 = [deserializationCopy objectForKey:@"lastModification_Since1970"];
    unsignedLongLongValue = [v7 unsignedLongLongValue];

    if ([IMUserDataCull isTimestampNewerThanMaxDeletedAge:unsignedLongLongValue])
    {
      v9 = [self isDefaultCollection:deserializationCopy] ^ 1;
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

- (void)mergeWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  [(BKCollection *)self clearMaxSortKey];
  v4 = [representationCopy objectForKey:@"lastModification_Since1970"];
  v5 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v4 unsignedLongLongValue]);

  v6 = [representationCopy objectForKey:@"deletedFlag"];
  deletedFlag = [(BKCollection *)self deletedFlag];
  bOOLValue = [deletedFlag BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    if ([v6 BOOLValue])
    {
      [BKCollection isDefaultCollection:representationCopy];
    }

    else
    {
      lastModification = [(BKCollection *)self lastModification];
      v10 = [v5 compare:lastModification];

      if (v10 == &dword_0 + 1)
      {
        [(BKCollection *)self configureFromDictionary:representationCopy];
      }
    }
  }
}

+ (void)cleanupDefaultCollections:(id)collections
{
  collectionsCopy = collections;
  v4 = +[BKCollection predicateForDeletedDefaultCollections];
  [collectionsCopy batchDeleteEntity:@"BKCollection" matching:v4 prefetchRelationships:0];
}

- (void)configureFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [(BKCollection *)self configureFromBackupSummary:?];
  deletedFlag = [(BKCollection *)self deletedFlag];
  if ([deletedFlag BOOLValue])
  {
    v5 = 0;
  }

  else
  {
    v5 = [dictionaryCopy objectForKey:@"databaseKeys"];
  }

  if ([v5 count])
  {
    v6 = [BKCollectionMember collectionMemberDictionariesWithAssetIDs:v5];
    [(BKCollection *)self addCollectionMemberDictionaries:v6 forceToTop:0];
  }

  v7 = [dictionaryCopy objectForKey:@"lastModification_Since1970"];
  v8 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v7 unsignedLongLongValue]);
  [(BKCollection *)self setLastModification:v8];
}

- (id)collectionDetailRepresentation
{
  collectionID = [(BKCollection *)self collectionID];
  v4 = [[BCMutableCollectionDetail alloc] initWithCollectionID:collectionID];
  title = [(BKCollection *)self title];
  [v4 setName:title];

  details = [(BKCollection *)self details];
  [v4 setCollectionDescription:details];

  hidden = [(BKCollection *)self hidden];
  [v4 setHidden:{objc_msgSend(hidden, "BOOLValue")}];

  sortKey = [(BKCollection *)self sortKey];
  [v4 setSortOrder:{objc_msgSend(sortKey, "intValue")}];

  v9 = [NSNumber numberWithUnsignedInteger:[(BKCollection *)self resolvedSortMode]];
  [v4 setSortMode:{objc_msgSend(v9, "intValue")}];

  deletedFlag = [(BKCollection *)self deletedFlag];
  [v4 setDeletedFlag:{objc_msgSend(deletedFlag, "BOOLValue")}];

  localModDate = [(BKCollection *)self localModDate];
  [v4 setModificationDate:localModDate];

  return v4;
}

- (void)configureFromCollectionDetail:(id)detail shouldCompareModificationDate:(BOOL)date
{
  dateCopy = date;
  detailCopy = detail;
  localModDate = [(BKCollection *)self localModDate];
  modificationDate = [detailCopy modificationDate];
  v9 = modificationDate;
  if (localModDate | modificationDate)
  {
    if (!localModDate && modificationDate)
    {
      v10 = +[BULogUtilities shared];
      verboseLoggingEnabled = [v10 verboseLoggingEnabled];

      if (verboseLoggingEnabled)
      {
        v12 = BKLibraryCollectionDevelopmentLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          title = [(BKCollection *)self title];
          *v47 = 138412546;
          *&v47[4] = v9;
          *&v47[12] = 2112;
          *&v47[14] = title;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "\\No local modDate, collectionDetail has modDate:%@  for collectionDetail %@ \\"", v47, 0x16u);
        }
      }

      goto LABEL_24;
    }

    if (localModDate && modificationDate)
    {
      v18 = +[BULogUtilities shared];
      verboseLoggingEnabled2 = [v18 verboseLoggingEnabled];

      if (verboseLoggingEnabled2)
      {
        v20 = BKLibraryCollectionDevelopmentLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          title2 = [(BKCollection *)self title];
          *v47 = 138412802;
          *&v47[4] = localModDate;
          *&v47[12] = 2112;
          *&v47[14] = v9;
          *&v47[22] = 2112;
          v48 = title2;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "\\local has modDate:%@, collectionDetail has modDate:%@ for collectionDetail %@\\"", v47, 0x20u);
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    v14 = +[BULogUtilities shared];
    verboseLoggingEnabled3 = [v14 verboseLoggingEnabled];

    if (verboseLoggingEnabled3)
    {
      v16 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        title3 = [(BKCollection *)self title];
        *v47 = 138412290;
        *&v47[4] = title3;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "\\configureFromCollectionDetail No local modDate, No collectionDetail modDate for collectionDetail %@\\"", v47, 0xCu);
      }
    }
  }

  if (dateCopy && !v9)
  {
    goto LABEL_39;
  }

LABEL_21:
  if (localModDate)
  {
    if (dateCopy)
    {
      [v9 timeIntervalSinceReferenceDate];
      v23 = v22;
      [localModDate timeIntervalSinceReferenceDate];
      if (v23 <= v24)
      {
        [v9 timeIntervalSinceReferenceDate];
        v43 = v42;
        [localModDate timeIntervalSinceReferenceDate];
        if (v43 >= v44)
        {
          goto LABEL_34;
        }

        v45 = +[BULogUtilities shared];
        verboseLoggingEnabled4 = [v45 verboseLoggingEnabled];

        if (!verboseLoggingEnabled4)
        {
          goto LABEL_34;
        }

        v34 = BKLibraryCollectionDevelopmentLog();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }

        title4 = [(BKCollection *)self title];
        collectionID = [(BKCollection *)self collectionID];
        *v47 = 138412546;
        *&v47[4] = title4;
        *&v47[12] = 2112;
        *&v47[14] = collectionID;
        v37 = "\\BKCollection Not Taking changes from collectiond detail as my mod date is > detail mod date for collectionTitle: %@ collectionID:%@\\"";
        goto LABEL_31;
      }
    }
  }

LABEL_24:
  name = [detailCopy name];
  [(BKCollection *)self setDifferentString:name forKey:@"title"];

  collectionDescription = [detailCopy collectionDescription];
  [(BKCollection *)self setDifferentString:collectionDescription forKey:@"details"];

  v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [detailCopy hidden]);
  [(BKCollection *)self setDifferentNumber:v27 forKey:@"hidden"];

  v28 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [detailCopy sortOrder]);
  [(BKCollection *)self setDifferentNumber:v28 forKey:@"sortKey"];

  v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [detailCopy sortMode]);
  [(BKCollection *)self setDifferentNumber:v29 forKey:@"sortMode"];

  v30 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [detailCopy deletedFlag]);
  [(BKCollection *)self setDifferentNumber:v30 forKey:@"deletedFlag"];

  hasChanges = [(BKCollection *)self hasChanges];
  [(BKCollection *)self setDifferentDate:v9 forKey:@"localModDate"];
  v32 = +[BULogUtilities shared];
  verboseLoggingEnabled5 = [v32 verboseLoggingEnabled];

  if (!hasChanges)
  {
    if (!verboseLoggingEnabled5)
    {
      goto LABEL_34;
    }

    v34 = BKLibraryCollectionDevelopmentLog();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    title4 = [(BKCollection *)self title];
    collectionID = [(BKCollection *)self collectionID];
    *v47 = 138412546;
    *&v47[4] = title4;
    *&v47[12] = 2112;
    *&v47[14] = collectionID;
    v37 = "\\BKCollection No changes besides date for collectionTitle: %@ collectionID:%@\\"";
LABEL_31:
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, v37, v47, 0x16u);

    goto LABEL_32;
  }

  if (verboseLoggingEnabled5)
  {
    v34 = BKLibraryCollectionDevelopmentLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      title4 = [(BKCollection *)self description];
      *v47 = 138412290;
      *&v47[4] = title4;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "\\BKCollection configured with changes: %@\\"", v47, 0xCu);
LABEL_32:
    }

LABEL_33:
  }

LABEL_34:
  v38 = [(BKCollection *)self placeholder:*v47];
  bOOLValue = [v38 BOOLValue];

  if (bOOLValue)
  {
    v40 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      collectionID2 = [(BKCollection *)self collectionID];
      *v47 = 138412290;
      *&v47[4] = collectionID2;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "Un-hiding user collection BKCollection: %@", v47, 0xCu);
    }
  }

  [(BKCollection *)self setDifferentNumber:&__kCFBooleanFalse forKey:@"placeholder"];
LABEL_39:
}

- (id)contentTypePredicate
{
  sortKey = [(BKCollection *)self sortKey];
  intValue = [sortKey intValue];

  switch(intValue)
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
  availableDefaultCollectionIDsForOS = [objc_opt_class() availableDefaultCollectionIDsForOS];
  collectionID = [(BKCollection *)self collectionID];
  v5 = [availableDefaultCollectionIDsForOS containsObject:collectionID];

  return v5;
}

- (BOOL)allowsManualAddition
{
  v3 = objc_opt_class();
  collectionID = [(BKCollection *)self collectionID];
  LOBYTE(v3) = [v3 allowsManualAdditionToCollectionWithID:collectionID];

  return v3;
}

+ (BOOL)allowsManualAdditionToCollectionWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    availableDefaultCollectionIDs = [self availableDefaultCollectionIDs];
    if ([availableDefaultCollectionIDs containsObject:dCopy] && (objc_msgSend(dCopy, "isEqualToString:", kBKCollectionDefaultIDWantToRead) & 1) == 0)
    {
      v6 = [dCopy isEqualToString:kBKCollectionDefaultIDFinished];
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
  collectionID = [(BKCollection *)self collectionID];
  v3 = [BKCollection shouldSyncCollectionID:collectionID];

  return v3;
}

+ (BOOL)shouldSyncCollectionID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:kBKCollectionDefaultIDDownloaded])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [dCopy isEqualToString:kBKCollectionDefaultIDFinished] ^ 1;
  }

  return v4;
}

- (BOOL)canDeleteLibraryAsset:(id)asset
{
  assetCopy = asset;
  v5 = !-[BKCollection isDefaultCollection](self, "isDefaultCollection") || ([assetCopy isSeriesItem] & 1) == 0 && (!objc_msgSend(assetCopy, "isCloud") || (objc_msgSend(assetCopy, "iTunesU") & 1) != 0 || objc_msgSend(assetCopy, "isUbiquitousBook"));

  return v5;
}

- (BOOL)deleteRemovesFromCollection
{
  if (![(BKCollection *)self isDefaultCollection])
  {
    return 1;
  }

  collectionID = [(BKCollection *)self collectionID];
  if ([collectionID isEqualToString:kBKCollectionDefaultIDFinished])
  {
    v4 = 1;
  }

  else
  {
    collectionID2 = [(BKCollection *)self collectionID];
    if ([collectionID2 isEqualToString:kBKCollectionDefaultIDWantToRead])
    {
      v4 = 1;
    }

    else
    {
      collectionID3 = [(BKCollection *)self collectionID];
      v4 = [collectionID3 isEqualToString:kBKCollectionDefaultIDSamples];
    }
  }

  return v4;
}

+ (void)addCollections:(id)collections moc:(id)moc
{
  collectionsCopy = collections;
  mocCopy = moc;
  libraryManager = [mocCopy libraryManager];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = collectionsCopy;
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
          v14 = [BKCollection insertNewCollectionWithCollectionID:v13 inManagedObjectContext:mocCopy];
          [v14 configureFromDictionary:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [libraryManager resetNextCollectionSort];
}

- (void)configureFromBackupSummary:(id)summary
{
  summaryCopy = summary;
  v4 = [summaryCopy objectForKey:@"serverSyncUniqueId"];
  [(BKCollection *)self setCollectionID:v4];
  v5 = [summaryCopy objectForKey:@"title"];
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

  v8 = [summaryCopy objectForKey:@"sortKey"];
  [(BKCollection *)self setSortKey:v8];

  v9 = [summaryCopy objectForKey:@"sortMode"];
  if (v9)
  {
    [(BKCollection *)self setSortMode:v9];
  }

  v10 = [summaryCopy objectForKey:@"viewMode"];
  if (v10)
  {
    [(BKCollection *)self setViewMode:v10];
  }

  [(BKCollection *)self clearMaxSortKey];
  v11 = [summaryCopy objectForKey:@"deletedFlag"];
  if (v11)
  {
    [(BKCollection *)self setDeletedFlag:v11];
  }

  else
  {
    v12 = [NSNumber numberWithBool:0];
    [(BKCollection *)self setDeletedFlag:v12];
  }

  deletedFlag = [(BKCollection *)self deletedFlag];
  if ([deletedFlag BOOLValue])
  {
  }

  else
  {
    sortKey = [(BKCollection *)self sortKey];

    if (sortKey)
    {
      goto LABEL_15;
    }
  }

  v15 = [NSNumber numberWithInt:0];
  [(BKCollection *)self setSortKey:v15];

LABEL_15:
  title = [(BKCollection *)self title];

  if (!title)
  {
    [(BKCollection *)self setTitle:&stru_D8298];
  }

  v17 = [summaryCopy objectForKey:@"lastModification"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BKCollection *)self setLastModification:v17];
  }

  lastModification = [(BKCollection *)self lastModification];

  if (!lastModification)
  {
    v19 = [NSDate dateWithTimeIntervalSince1970:0.0];
    [(BKCollection *)self setLastModification:v19];
  }
}

+ (BOOL)isSelectableDefaultCollectionID:(id)d
{
  if (!d)
  {
    return 0;
  }

  dCopy = d;
  availableSelectableDefaultCollectionIDsForOS = [self availableSelectableDefaultCollectionIDsForOS];
  v6 = [availableSelectableDefaultCollectionIDsForOS containsObject:dCopy];

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

+ (id)contentTypesForDefaultCollectionWithID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:kBKCollectionDefaultIDBooks])
  {
    v4 = &off_DE240;
  }

  else if ([dCopy isEqualToString:kBKCollectionDefaultIDPDFs])
  {
    v4 = &off_DE258;
  }

  else if ([dCopy isEqualToString:kBKCollectionDefaultIDAudiobooks])
  {
    v4 = &off_DE270;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)seriesIDFromSeriesCollectionID:(id)d
{
  dCopy = d;
  if ([BKCollection isSeriesCollectionID:dCopy])
  {
    v4 = [dCopy substringFromIndex:{objc_msgSend(@"iBooks_Series_", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  collectionID = [(BKCollection *)self collectionID];
  title = [(BKCollection *)self title];
  v5 = [NSString stringWithFormat:@"<%@ (%p) collectionID=%@ title=%@>", @"self", self, collectionID, title];

  return v5;
}

- (NSString)debugDescription
{
  title = [(BKCollection *)self title];
  details = [(BKCollection *)self details];
  collectionID = [(BKCollection *)self collectionID];
  sortKey = [(BKCollection *)self sortKey];
  sortMode = [(BKCollection *)self sortMode];
  viewMode = [(BKCollection *)self viewMode];
  isDefaultCollection = [(BKCollection *)self isDefaultCollection];
  v6 = @"NO";
  if (isDefaultCollection)
  {
    v6 = @"YES";
  }

  v16 = v6;
  deletedFlag = [(BKCollection *)self deletedFlag];
  hidden = [(BKCollection *)self hidden];
  placeholder = [(BKCollection *)self placeholder];
  lastModification = [(BKCollection *)self lastModification];
  members = [(BKCollection *)self members];
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [members count]);
  seriesID = [(BKCollection *)self seriesID];
  v13 = [NSString stringWithFormat:@"   %@ (%p) \n title: %@\n details:%@ collectionID: %@\n sortKey: %@\n sortMode: %@\n viewMode: %@\n isDefault: %@\n deletedFlag: %@\n hidden: %@\n placeholder: %@ lastModification: %@\n member count: %@\n seriesID: %@", @"self", self, title, details, collectionID, sortKey, sortMode, viewMode, v16, deletedFlag, hidden, placeholder, lastModification, v11, seriesID];

  return v13;
}

@end