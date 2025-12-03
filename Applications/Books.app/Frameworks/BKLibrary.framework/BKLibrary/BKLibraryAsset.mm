@interface BKLibraryAsset
+ (BOOL)hasBookReachedReadThreshold:(id)threshold;
+ (id)actualAuthorFromMetedata:(id)metedata;
+ (id)multipleAuthors;
+ (id)unknownAuthor;
+ (id)unknownTitle;
- (BOOL)_isUbiquityItem;
- (BOOL)_validateIsState1;
- (BOOL)_validateIsState2;
- (BOOL)_validateIsState3;
- (BOOL)canEditMetadata;
- (BOOL)canOpen;
- (BOOL)hasImportantAssetDetails;
- (BOOL)hasImportantReadingNowDetails;
- (BOOL)hasSpecifiedFinishedDate;
- (BOOL)iTunesU;
- (BOOL)isAudiobook;
- (BOOL)isAudiobookPreview;
- (BOOL)isBook;
- (BOOL)isDeletable;
- (BOOL)isInSamples;
- (BOOL)isManagedBook;
- (BOOL)isMemberOfCustomCollection;
- (BOOL)isNonLocalSample;
- (BOOL)isOwned;
- (BOOL)isPartOfSeries;
- (BOOL)isPreorderBook;
- (BOOL)isRightToLeft;
- (BOOL)isStore;
- (BOOL)isStoreOrSeriesItem;
- (BOOL)isUbiquitousBook;
- (BOOL)needsGlobalAnnotation;
- (BOOL)shouldBeInDownloadedCollection;
- (BOOL)shouldBeInMySamplesCollection;
- (BOOL)streamable;
- (NSString)actualAuthor;
- (NSString)assetLogID;
- (NSString)cloudAssetType;
- (NSString)displayAuthor;
- (NSString)finishedCollectionSectionName;
- (NSString)permanentOrTemporaryAssetID;
- (NSString)shortBookTitle;
- (id)_dateFinishedForYearOnly:(id)only;
- (id)assetDetailRepresentation;
- (id)managedObjectContext;
- (id)readingNowDetailRepresentation;
- (id)seriesStackAssetIDs;
- (signed)seriesType;
- (void)_setFinishedStates:(BOOL)states;
- (void)cleanupDateFinished;
- (void)configureFromAssetDetail:(id)detail;
- (void)configureFromReadingNowDetail:(id)detail;
- (void)didChangeValueForKey:(id)key;
- (void)nonUserUpdateLastOpenDateTo:(id)to;
- (void)setCreationDateToNow;
- (void)setFinishedStateAddToFinishedCollection;
- (void)setFinishedStateAssetRead;
- (void)setFinishedStateRemoveFromFinishedCollection;
- (void)setFinishedStateUserSetsFinished:(BOOL)finished userInfo:(id)info;
- (void)setFinishedStateUserSetsUnfinished;
- (void)setLastOpenDate:(id)date;
- (void)unsetFinishedDate;
- (void)willSave;
@end

@implementation BKLibraryAsset

- (BOOL)hasSpecifiedFinishedDate
{
  if (_os_feature_enabled_impl())
  {
    dateFinished = [(BKLibraryAsset *)self dateFinished];
    if (dateFinished)
    {
      dateFinished2 = [(BKLibraryAsset *)self dateFinished];
      v5 = +[NSDate distantPast];
      v6 = [dateFinished2 isEqualToDate:v5] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (NSString)finishedCollectionSectionName
{
  if ([(BKLibraryAsset *)self hasSpecifiedFinishedDate])
  {
    v2 = 0;
  }

  else
  {
    v3 = BKLibraryFrameworkBundle();
    v2 = [v3 localizedStringForKey:@"Date Not Set" value:&stru_D8298 table:&stru_D8298];
  }

  return v2;
}

- (BOOL)_validateIsState1
{
  if (([(BKLibraryAsset *)self isFinished]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return [(BKLibraryAsset *)self notFinished]^ 1;
  }
}

- (BOOL)_validateIsState2
{
  if (([(BKLibraryAsset *)self isFinished]& 1) != 0)
  {
    return 0;
  }

  return [(BKLibraryAsset *)self notFinished];
}

- (BOOL)_validateIsState3
{
  isFinished = [(BKLibraryAsset *)self isFinished];
  if (isFinished)
  {
    LOBYTE(isFinished) = [(BKLibraryAsset *)self notFinished]^ 1;
  }

  return isFinished;
}

- (void)_setFinishedStates:(BOOL)states
{
  statesCopy = states;
  [(BKLibraryAsset *)self setIsFinished:?];

  [(BKLibraryAsset *)self setNotFinished:!statesCopy];
}

- (id)_dateFinishedForYearOnly:(id)only
{
  onlyCopy = only;
  v4 = +[NSCalendar currentCalendar];
  v5 = objc_alloc_init(NSDateComponents);
  [v5 setCalendar:v4];
  v6 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v5 setTimeZone:v6];

  [v5 setEra:{objc_msgSend(v4, "component:fromDate:", 2, onlyCopy)}];
  [v5 setYear:{objc_msgSend(v4, "component:fromDate:", 4, onlyCopy)}];
  v7 = [v4 dateFromComponents:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = onlyCopy;
  }

  v10 = v9;

  return v9;
}

- (void)cleanupDateFinished
{
  dateFinished = [(BKLibraryAsset *)self dateFinished];
  if (dateFinished)
  {
    v4 = dateFinished;
    finishedDateKind = [(BKLibraryAsset *)self finishedDateKind];

    if (finishedDateKind == 2)
    {
      return;
    }
  }

  v24 = +[NSDate date];
  lastEngagedDate = [(BKLibraryAsset *)self lastEngagedDate];
  if (lastEngagedDate)
  {
    v7 = lastEngagedDate;
    lastEngagedDate2 = [(BKLibraryAsset *)self lastEngagedDate];
    v9 = +[NSDate distantPast];
    v10 = [lastEngagedDate2 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      lastEngagedDate3 = [(BKLibraryAsset *)self lastEngagedDate];
      goto LABEL_12;
    }
  }

  lastOpenDate = [(BKLibraryAsset *)self lastOpenDate];
  if (lastOpenDate)
  {
    v12 = lastOpenDate;
    lastOpenDate2 = [(BKLibraryAsset *)self lastOpenDate];
    v14 = +[NSDate distantPast];
    v15 = [lastOpenDate2 isEqual:v14];

    if ((v15 & 1) == 0)
    {
      lastEngagedDate3 = [(BKLibraryAsset *)self lastOpenDate];
      goto LABEL_12;
    }
  }

  purchaseDate = [(BKLibraryAsset *)self purchaseDate];
  if (purchaseDate)
  {
    v17 = purchaseDate;
    purchaseDate2 = [(BKLibraryAsset *)self purchaseDate];
    v19 = +[NSDate distantPast];
    v20 = [purchaseDate2 isEqual:v19];

    if ((v20 & 1) == 0)
    {
      lastEngagedDate3 = [(BKLibraryAsset *)self purchaseDate];
LABEL_12:
      v22 = lastEngagedDate3;

      v24 = v22;
    }
  }

  assetDetailsModificationDate = [(BKLibraryAsset *)self assetDetailsModificationDate];
  [(BKLibraryAsset *)self setDifferentDate:v24 forKey:@"dateFinished"];
  [(BKLibraryAsset *)self setFinishedDateKind:1];
  [(BKLibraryAsset *)self setAssetDetailsModificationDate:assetDetailsModificationDate];
}

- (void)unsetFinishedDate
{
  v3 = +[NSDate distantPast];
  [(BKLibraryAsset *)self userUpdateDateFinished:v3 ofKind:0];
}

- (void)setFinishedStateUserSetsFinished:(BOOL)finished userInfo:(id)info
{
  infoCopy = info;
  if ([(BKLibraryAsset *)self isContainer])
  {
    v7 = BKLibraryUILog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_8D194(self, v7);
    }

LABEL_7:

    goto LABEL_8;
  }

  if ([(BKLibraryAsset *)self _validateIsState3])
  {
    v7 = BKLibraryUILog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_8D15C(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    goto LABEL_7;
  }

  [(BKLibraryAsset *)self _setFinishedStates:1];
  if (finished || ([(BKLibraryAsset *)self dateFinished], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
  {
    [(BKLibraryAsset *)self userUpdateDateFinished:0 ofKind:1];
  }

  v19 = BKLibraryUILog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    dateFinished = [(BKLibraryAsset *)self dateFinished];
    v22 = 138412546;
    selfCopy = self;
    v24 = 2112;
    v25 = dateFinished;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "setFinishedStateUserSetsFinished: for asset %@ with date %@", &v22, 0x16u);
  }

  if ([(BKLibraryAsset *)self isTrackedAsRecent]&& [(BKLibraryAsset *)self hasSpecifiedFinishedDate])
  {
    v21 = +[NSDate now];
    [(BKLibraryAsset *)self setDifferentDate:v21 forKey:@"lastEngagedDate"];

    v7 = BKLibraryUILog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "userUpdateDateFinished: lastEngagedDate updated", &v22, 2u);
    }

    goto LABEL_7;
  }

LABEL_8:
  if (infoCopy && [(BKLibraryAsset *)self isFinished])
  {
    v15 = [infoCopy mutableCopy];
    permanentOrTemporaryAssetID = [(BKLibraryAsset *)self permanentOrTemporaryAssetID];
    [v15 setObject:permanentOrTemporaryAssetID forKeyedSubscript:@"BKLibraryAssetIDKey"];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 postNotificationName:@"BKLibraryAssetMarkedAsFinishedNotification" object:self userInfo:v15];
  }
}

- (void)setFinishedStateUserSetsUnfinished
{
  if ([(BKLibraryAsset *)self _validateIsState2])
  {
    v3 = BKLibraryUILog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_8D20C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    [(BKLibraryAsset *)self _setFinishedStates:0];
    [(BKLibraryAsset *)self setDateFinished:0];
    [(BKLibraryAsset *)self setFinishedDateKind:0];
    v3 = BKLibraryUILog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "setFinishedStateUserSetsUnfinished for asset %@", &v11, 0xCu);
    }
  }
}

- (void)setFinishedStateRemoveFromFinishedCollection
{
  if ([(BKLibraryAsset *)self _validateIsState2])
  {
    v3 = BKLibraryUILog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_8D244(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    [(BKLibraryAsset *)self _setFinishedStates:0];
    [(BKLibraryAsset *)self setDateFinished:0];
    [(BKLibraryAsset *)self setFinishedDateKind:0];
    v3 = BKLibraryUILog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "setFinishedStateRemoveFromFinishedCollection for asset %@", &v11, 0xCu);
    }
  }
}

- (void)setFinishedStateAssetRead
{
  if ([(BKLibraryAsset *)self _validateIsState2])
  {
    [(BKLibraryAsset *)self setIsFinished:0];
    [(BKLibraryAsset *)self setNotFinished:0];
    v3 = BKLibraryUILog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "setFinishedStateAssetRead for asset %@", &v4, 0xCu);
    }
  }
}

- (void)setFinishedStateAddToFinishedCollection
{
  if ([(BKLibraryAsset *)self isContainer])
  {
    v3 = BKLibraryUILog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_8D27C(self, v3);
    }
  }

  else
  {
    if (([(BKLibraryAsset *)self isFinished]& 1) != 0)
    {
      return;
    }

    [(BKLibraryAsset *)self _setFinishedStates:1];
    [(BKLibraryAsset *)self userUpdateDateFinished:0 ofKind:1];
    permanentOrTemporaryAssetID = [(BKLibraryAsset *)self permanentOrTemporaryAssetID];
    if (permanentOrTemporaryAssetID)
    {
      v14 = @"BKLibraryAssetIDKey";
      permanentOrTemporaryAssetID2 = [(BKLibraryAsset *)self permanentOrTemporaryAssetID];
      v15 = permanentOrTemporaryAssetID2;
      v6 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v3 = [v6 mutableCopy];
    }

    else
    {
      v3 = [&__NSDictionary0__struct mutableCopy];
    }

    [v3 setObject:BALocationTypeFromAddToFinishCollection forKeyedSubscript:@"BKLibraryAssetMarkedLocation"];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"BKLibraryAssetMarkedAsFinishedNotification" object:self userInfo:v3];

    v8 = BKLibraryUILog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      dateFinished = [(BKLibraryAsset *)self dateFinished];
      v10 = 138412546;
      selfCopy = self;
      v12 = 2112;
      v13 = dateFinished;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "setFinishedStateAddToFinishedCollection for asset %@ with date %@", &v10, 0x16u);
    }
  }
}

+ (BOOL)hasBookReachedReadThreshold:(id)threshold
{
  thresholdCopy = threshold;
  objc_opt_class();
  v4 = [thresholdCopy objectForKeyedSubscript:BCAssetReadingProgressKey];

  v5 = BUDynamicCast();

  [v5 floatValue];
  LOBYTE(thresholdCopy) = v6 > kAEAnnotationReadingLocationSignificantHighwaterMark;

  return thresholdCopy;
}

+ (id)unknownAuthor
{
  if (qword_EFC98 != -1)
  {
    sub_8FF0C();
  }

  v3 = gUnknownAuthor;

  return v3;
}

+ (id)unknownTitle
{
  if (qword_EFCA0 != -1)
  {
    sub_8FF20();
  }

  v3 = gUnknownTitle;

  return v3;
}

+ (id)multipleAuthors
{
  if (qword_EFCA8 != -1)
  {
    sub_8FF34();
  }

  v3 = gMultipleAuthors;

  return v3;
}

- (void)willSave
{
  if (([(BKLibraryAsset *)self isFault]& 1) != 0 || ([(BKLibraryAsset *)self isDeleted]& 1) != 0)
  {
    return;
  }

  sortAuthor = [(BKLibraryAsset *)self sortAuthor];
  v4 = [sortAuthor length];

  if (!v4)
  {
    author = [(BKLibraryAsset *)self author];
    v6 = [author length];

    if (v6)
    {
      author2 = [(BKLibraryAsset *)self author];
      [(BKLibraryAsset *)self setSortAuthor:author2];
    }
  }

  sortAuthor2 = [(BKLibraryAsset *)self sortAuthor];
  if ([sortAuthor2 isEqualToString:@"UnknownAuthor"])
  {
    author3 = [(BKLibraryAsset *)self author];
    v10 = [author3 isEqualToString:@"UnknownAuthor"];

    if (v10)
    {
      goto LABEL_11;
    }

    sortAuthor2 = [(BKLibraryAsset *)self author];
    [(BKLibraryAsset *)self setSortAuthor:sortAuthor2];
  }

LABEL_11:
  sortTitle = [(BKLibraryAsset *)self sortTitle];
  v12 = [sortTitle length];

  if (!v12)
  {
    title = [(BKLibraryAsset *)self title];
    v14 = [title length];

    if (v14)
    {
      title2 = [(BKLibraryAsset *)self title];
      [(BKLibraryAsset *)self setSortTitle:title2];
    }
  }

  lastOpenDate = [(BKLibraryAsset *)self lastOpenDate];
  v16 = +[NSDate distantPast];
  lastOpenDate2 = [(BKLibraryAsset *)self lastOpenDate];
  v18 = [v16 laterDate:lastOpenDate2];

  purchaseDate = [(BKLibraryAsset *)self purchaseDate];
  v20 = [v18 laterDate:purchaseDate];

  if (([lastOpenDate isEqualToDate:v20] & 1) == 0)
  {
    [(BKLibraryAsset *)self nonUserUpdateLastOpenDateTo:v20];
  }
}

- (void)didChangeValueForKey:(id)key
{
  keyCopy = key;
  v6.receiver = self;
  v6.super_class = BKLibraryAsset;
  [(BKLibraryAsset *)&v6 didChangeValueForKey:keyCopy];
  if (([keyCopy isEqualToString:@"assetDetailsModificationDate"] & 1) == 0 && ((objc_msgSend(keyCopy, "isEqualToString:", @"isFinished") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"notFinished") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"lastOpenDate") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"dateFinished") & 1) != 0 || -[BKLibraryAsset isAudiobook](self, "isAudiobook") && ((objc_msgSend(keyCopy, "isEqualToString:", @"readingProgress") & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"bookHighWaterMarkProgress"))))
  {
    v5 = +[NSDate date];
    [(BKLibraryAsset *)self setAssetDetailsModificationDate:v5];
  }
}

- (NSString)permanentOrTemporaryAssetID
{
  assetID = [(BKLibraryAsset *)self assetID];
  if (!assetID)
  {
    assetID = [(BKLibraryAsset *)self temporaryAssetID];
  }

  return assetID;
}

+ (id)actualAuthorFromMetedata:(id)metedata
{
  metedataCopy = metedata;
  if ([metedataCopy isEqualToString:@"UnknownAuthor"] & 1) != 0 || (objc_msgSend(metedataCopy, "isEqualToString:", @"MultipleAuthors"))
  {
    v4 = 0;
  }

  else
  {
    v4 = metedataCopy;
  }

  return v4;
}

- (NSString)actualAuthor
{
  author = [(BKLibraryAsset *)self author];
  v3 = [BKLibraryAsset actualAuthorFromMetedata:author];

  return v3;
}

- (NSString)displayAuthor
{
  hasTooManyAuthors = [(BKLibraryAsset *)self hasTooManyAuthors];
  bOOLValue = [hasTooManyAuthors BOOLValue];

  authorNames = [(BKLibraryAsset *)self authorNames];
  authorCount = [(BKLibraryAsset *)self authorCount];
  v7 = authorCount;
  if (!bOOLValue)
  {
    if ([authorCount intValue] == 1 && objc_msgSend(authorNames, "count"))
    {
      author3 = [authorNames objectAtIndexedSubscript:0];
      goto LABEL_21;
    }

    if ([v7 intValue] == 2 && objc_msgSend(authorNames, "count") >= 2)
    {
      v9 = BKLibraryFrameworkBundle();
      v10 = [v9 localizedStringForKey:@"Library.Item.TwoArtists" value:@"%@ & %@" table:&stru_D8298];

      v11 = [authorNames objectAtIndexedSubscript:0];
      v12 = [authorNames objectAtIndexedSubscript:1];
      v13 = v12;
    }

    else
    {
      if ([v7 intValue] == 3 && objc_msgSend(authorNames, "count") >= 3)
      {
        v14 = BKLibraryFrameworkBundle();
        v10 = [v14 localizedStringForKey:@"Library.Item.ThreeArtists" value:@"%@ table:{%@, & %@", &stru_D8298}];

        v11 = [authorNames objectAtIndexedSubscript:0];
        v13 = [authorNames objectAtIndexedSubscript:1];
        v15 = [authorNames objectAtIndexedSubscript:2];
        v16 = [NSString stringWithFormat:v10, v11, v13, v15];

LABEL_16:
        goto LABEL_22;
      }

      if ([v7 intValue] < 4 || objc_msgSend(authorNames, "count") < 2)
      {
        author = [(BKLibraryAsset *)self author];
        v20 = [author isEqualToString:@"UnknownAuthor"];

        if (v20)
        {
          author3 = +[BKLibraryAsset unknownAuthor];
          goto LABEL_21;
        }

        author2 = [(BKLibraryAsset *)self author];
        v22 = [author2 isEqualToString:@"MultipleAuthors"];

        if (!v22)
        {
          author3 = [(BKLibraryAsset *)self author];
          goto LABEL_21;
        }

        goto LABEL_2;
      }

      v17 = [v7 intValue] - 2;
      v18 = BKLibraryFrameworkBundle();
      v10 = [v18 localizedStringForKey:@"Library.Item.TwoAndOtherArtists" value:@"%@ table:{%@, & %d others", &stru_D8298}];

      v11 = [authorNames objectAtIndexedSubscript:0];
      v12 = [authorNames objectAtIndexedSubscript:1];
      v13 = v12;
      v24 = v17;
    }

    v16 = [NSString stringWithFormat:v10, v11, v12, v24];
    goto LABEL_16;
  }

LABEL_2:
  author3 = +[BKLibraryAsset multipleAuthors];
LABEL_21:
  v16 = author3;
LABEL_22:

  return v16;
}

- (BOOL)isStore
{
  storeID = [(BKLibraryAsset *)self storeID];
  v3 = storeID != 0;

  return v3;
}

- (BOOL)isNonLocalSample
{
  if (([(BKLibraryAsset *)self isSample]& 1) != 0 || [(BKLibraryAsset *)self isLocal])
  {
    return 0;
  }

  return [(BKLibraryAsset *)self isInSamples];
}

- (BOOL)isAudiobookPreview
{
  if (([(BKLibraryAsset *)self isSample]& 1) != 0 || [(BKLibraryAsset *)self isLocal])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    isStoreAudiobook = [(BKLibraryAsset *)self isStoreAudiobook];
    if ([isStoreAudiobook BOOLValue])
    {
      v3 = ![(BKLibraryAsset *)self isOwned];
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)iTunesU
{
  permlink = [(BKLibraryAsset *)self permlink];
  if (permlink)
  {
    v4 = 1;
  }

  else
  {
    dataSourceIdentifier = [(BKLibraryAsset *)self dataSourceIdentifier];
    if ([dataSourceIdentifier isEqualToString:@"com.apple.ibooks.datasource.itunesu"])
    {
      v4 = 1;
    }

    else
    {
      dataSourceIdentifier2 = [(BKLibraryAsset *)self dataSourceIdentifier];
      v4 = [dataSourceIdentifier2 isEqualToString:@"com.apple.ibooks.plugin.Bookshelf.platformDataSource.iTunesU"];
    }
  }

  return v4;
}

- (signed)seriesType
{
  if ([(BKLibraryAsset *)self contentType]== 5)
  {
    return 0;
  }

  seriesID = [(BKLibraryAsset *)self seriesID];

  if (!seriesID)
  {
    return 1;
  }

  sequenceDisplayName = [(BKLibraryAsset *)self sequenceDisplayName];
  if ([sequenceDisplayName length])
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  return v3;
}

- (BOOL)needsGlobalAnnotation
{
  if ([(BKLibraryAsset *)self state]== 5)
  {
    return 0;
  }

  else
  {
    return ![(BKLibraryAsset *)self isStoreItem];
  }
}

- (BOOL)isStoreOrSeriesItem
{
  if ([(BKLibraryAsset *)self isStoreItem])
  {
    return 1;
  }

  return [(BKLibraryAsset *)self isSeriesItem];
}

- (BOOL)isOwned
{
  if (([(BKLibraryAsset *)self isSample]& 1) != 0 || [(BKLibraryAsset *)self isStoreItem]|| [(BKLibraryAsset *)self isSeriesItem]|| [(BKLibraryAsset *)self isContainer])
  {
    return 0;
  }

  else
  {
    return ![(BKLibraryAsset *)self isPreorderBook];
  }
}

- (BOOL)isMemberOfCustomCollection
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  collectionMembers = [(BKLibraryAsset *)self collectionMembers];
  v3 = [collectionMembers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(collectionMembers);
        }

        collection = [*(*(&v9 + 1) + 8 * i) collection];
        v7 = collection;
        if (collection && ([collection isDefaultCollection] & 1) == 0)
        {

          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [collectionMembers countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)isInSamples
{
  collectionMembers = [(BKLibraryAsset *)self collectionMembers];
  v3 = [collectionMembers valueForKey:@"collectionID"];
  v4 = [v3 containsObject:kBKCollectionDefaultIDSamples];

  return v4;
}

- (BOOL)canEditMetadata
{
  isLocal = [(BKLibraryAsset *)self isLocal];
  if (isLocal)
  {
    if ([(BKLibraryAsset *)self isAudiobook]|| ([(BKLibraryAsset *)self isProof]& 1) != 0 || ([(BKLibraryAsset *)self isSample]& 1) != 0 || ([(BKLibraryAsset *)self isHidden]& 1) != 0)
    {
      LOBYTE(isLocal) = 0;
    }

    else
    {
      LOBYTE(isLocal) = [(BKLibraryAsset *)self isLocked]^ 1;
    }
  }

  return isLocal;
}

- (void)setCreationDateToNow
{
  v5 = +[NSDate date];
  [(BKLibraryAsset *)self setCreationDate:v5];
  purchasedAndLocalParent = [(BKLibraryAsset *)self purchasedAndLocalParent];
  [purchasedAndLocalParent setCreationDate:v5];

  [(BKLibraryAsset *)self setModificationDate:v5];
  purchasedAndLocalParent2 = [(BKLibraryAsset *)self purchasedAndLocalParent];
  [purchasedAndLocalParent2 setModificationDate:v5];
}

- (void)nonUserUpdateLastOpenDateTo:(id)to
{
  toCopy = to;
  assetDetailsModificationDate = [(BKLibraryAsset *)self assetDetailsModificationDate];
  [(BKLibraryAsset *)self setLastOpenDate:toCopy];

  [(BKLibraryAsset *)self setAssetDetailsModificationDate:assetDetailsModificationDate];
}

- (id)seriesStackAssetIDs
{
  seriesStackIDs = [(BKLibraryAsset *)self seriesStackIDs];
  if (seriesStackIDs)
  {
    seriesStackIDs2 = [(BKLibraryAsset *)self seriesStackIDs];
    v5 = [seriesStackIDs2 componentsSeparatedByString:{@", "}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)assetLogID
{
  assetGUID = [(BKLibraryAsset *)self assetGUID];
  v4 = [assetGUID length];

  if (!v4)
  {
    [(BKLibraryAsset *)self willChangeValueForKey:@"assetGUID"];
    v5 = +[NSString UUID];
    [(BKLibraryAsset *)self setPrimitiveValue:v5 forKey:@"assetGUID"];

    [(BKLibraryAsset *)self didChangeValueForKey:@"assetGUID"];
  }

  return [(BKLibraryAsset *)self assetGUID];
}

- (id)managedObjectContext
{
  v4.receiver = self;
  v4.super_class = BKLibraryAsset;
  managedObjectContext = [(BKLibraryAsset *)&v4 managedObjectContext];

  return managedObjectContext;
}

- (BOOL)isRightToLeft
{
  pageProgressionDirection = [(BKLibraryAsset *)self pageProgressionDirection];
  lowercaseString = [pageProgressionDirection lowercaseString];

  if ([lowercaseString isEqualToString:@"rtl"])
  {
    v5 = 1;
  }

  else if (([lowercaseString isEqualToString:@"default"] & 1) != 0 || !lowercaseString || objc_msgSend(lowercaseString, "isEqualToString:", &stru_D8298))
  {
    language = [(BKLibraryAsset *)self language];
    if (([IMLanguageUtilities languageIsHebrew:language]& 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = [IMLanguageUtilities languageIsArabic:language];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)streamable
{
  isAudiobook = BLAudiobookStreamingEnabled();
  if (isAudiobook)
  {
    if ([(BKLibraryAsset *)self isCloud]|| (isAudiobook = [(BKLibraryAsset *)self isDownloading]) != 0)
    {
      isAudiobook = [(BKLibraryAsset *)self isAudiobook];
      if (isAudiobook)
      {
        LOBYTE(isAudiobook) = ![(BKLibraryAsset *)self isPreorderBook];
      }
    }
  }

  return isAudiobook;
}

- (BOOL)canOpen
{
  if ([(BKLibraryAsset *)self isLocal])
  {
    return 1;
  }

  return [(BKLibraryAsset *)self streamable];
}

- (BOOL)isUbiquitousBook
{
  path = [(BKLibraryAsset *)self path];
  if (path)
  {
    if (![(NSString *)self->_cachedAssetPath isEqualToString:path])
    {
      v5 = +[NSFileManager defaultManager];
      v6 = [NSURL fileURLWithPath:path];
      self->_cachedUbiquitousState = [v5 isUbiquitousItemAtURL:v6];

      objc_storeStrong(&self->_cachedAssetPath, path);
    }

    cachedUbiquitousState = self->_cachedUbiquitousState;
  }

  else
  {
    cachedUbiquitousState = 0;
  }

  return cachedUbiquitousState;
}

- (id)assetDetailRepresentation
{
  v3 = [BCMutableAssetDetail alloc];
  assetID = [(BKLibraryAsset *)self assetID];
  v5 = [v3 initWithAssetID:assetID];

  [v5 setIsFinished:{-[BKLibraryAsset isFinished](self, "isFinished")}];
  [v5 setNotFinished:{-[BKLibraryAsset notFinished](self, "notFinished")}];
  lastOpenDate = [(BKLibraryAsset *)self lastOpenDate];
  [v5 setLastOpenDate:lastOpenDate];

  dateFinished = [(BKLibraryAsset *)self dateFinished];
  [v5 setDateFinished:dateFinished];

  [v5 setFinishedDateKind:{-[BKLibraryAsset finishedDateKind](self, "finishedDateKind")}];
  [v5 setTaste:{-[BKLibraryAsset taste](self, "taste")}];
  [v5 setTasteSyncedToStore:{-[BKLibraryAsset tasteSyncedToStore](self, "tasteSyncedToStore")}];
  assetDetailsModificationDate = [(BKLibraryAsset *)self assetDetailsModificationDate];
  [v5 setModificationDate:assetDetailsModificationDate];

  if ([(BKLibraryAsset *)self isAudiobook])
  {
    [v5 setBookmarkTime:0.0];
    v9 = +[NSDate distantPast];
    [v5 setDatePlaybackTimeUpdated:v9];

    readingProgress = [(BKLibraryAsset *)self readingProgress];
    [readingProgress floatValue];
    [v5 setReadingProgress:?];

    bookHighWaterMarkProgress = [(BKLibraryAsset *)self bookHighWaterMarkProgress];
    [bookHighWaterMarkProgress floatValue];
    [v5 setReadingProgressHighWaterMark:?];
  }

  return v5;
}

- (BOOL)hasImportantAssetDetails
{
  if (([(BKLibraryAsset *)self isFinished]& 1) == 0 && ([(BKLibraryAsset *)self notFinished]& 1) == 0 && ![(BKLibraryAsset *)self taste]&& ![(BKLibraryAsset *)self tasteSyncedToStore]&& ![(BKLibraryAsset *)self isAudiobook])
  {
    if ([(BKLibraryAsset *)self isDownloading]|| [(BKLibraryAsset *)self isSeriesItem])
    {
      LOBYTE(v5) = 0;
      return v5;
    }

    lastOpenDate = [(BKLibraryAsset *)self lastOpenDate];
    if (!lastOpenDate || (+[NSDate distantPast](NSDate, "distantPast"), v2 = objc_claimAutoreleasedReturnValue(), -[BKLibraryAsset lastOpenDate](self, "lastOpenDate"), v3 = objc_claimAutoreleasedReturnValue(), [v2 isEqualToDate:v3]))
    {
      dateFinished = [(BKLibraryAsset *)self dateFinished];
      if (dateFinished)
      {
        v9 = dateFinished;
        v10 = +[NSDate distantPast];
        dateFinished2 = [(BKLibraryAsset *)self dateFinished];
        v5 = [v10 isEqualToDate:dateFinished2] ^ 1;

        if (!lastOpenDate)
        {
LABEL_17:

          return v5;
        }
      }

      else
      {
        LOBYTE(v5) = 0;
        if (!lastOpenDate)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      LOBYTE(v5) = 1;
    }

    goto LABEL_17;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (void)configureFromAssetDetail:(id)detail
{
  detailCopy = detail;
  assetDetailsModificationDate = [(BKLibraryAsset *)self assetDetailsModificationDate];
  modificationDate = [detailCopy modificationDate];
  v7 = modificationDate;
  if (!(assetDetailsModificationDate | modificationDate))
  {
    v12 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v12 verboseLoggingEnabled];

    if (!verboseLoggingEnabled)
    {
      goto LABEL_40;
    }

    v14 = BKLibraryAssetDetailsDevelopmentLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    title = [(BKLibraryAsset *)self title];
    *v54 = 138412290;
    *&v54[4] = title;
    v16 = "\\configureFromAssetDetail No local modDate, No assetDetail modDate for assetDetail %@\\"";
LABEL_11:
    v17 = v14;
    v18 = 12;
LABEL_38:
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, v16, v54, v18);

    goto LABEL_39;
  }

  if (!assetDetailsModificationDate && modificationDate)
  {
    v8 = +[BULogUtilities shared];
    verboseLoggingEnabled2 = [v8 verboseLoggingEnabled];

    if (verboseLoggingEnabled2)
    {
      v10 = BKLibraryAssetDetailsDevelopmentLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        title2 = [(BKLibraryAsset *)self title];
        *v54 = 138412546;
        *&v54[4] = v7;
        *&v54[12] = 2112;
        *&v54[14] = title2;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "\\No local modDate, assetDetail has modDate:%@  for assetDetail %@ \\"", v54, 0x16u);
      }
    }

    goto LABEL_21;
  }

  if (assetDetailsModificationDate && modificationDate)
  {
    v19 = +[BULogUtilities shared];
    verboseLoggingEnabled3 = [v19 verboseLoggingEnabled];

    if (verboseLoggingEnabled3)
    {
      v21 = BKLibraryAssetDetailsDevelopmentLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        title3 = [(BKLibraryAsset *)self title];
        *v54 = 138412802;
        *&v54[4] = assetDetailsModificationDate;
        *&v54[12] = 2112;
        *&v54[14] = v7;
        *&v54[22] = 2112;
        v55 = title3;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "\\local has modDate:%@, assetDetail has modDate:%@ for assetDetail %@\\"", v54, 0x20u);
      }
    }
  }

  else
  {
    if (!modificationDate)
    {
      goto LABEL_40;
    }

    if (!assetDetailsModificationDate)
    {
      goto LABEL_21;
    }
  }

  [v7 timeIntervalSinceReferenceDate];
  v24 = v23;
  [assetDetailsModificationDate timeIntervalSinceReferenceDate];
  if (v24 <= v25)
  {
    [v7 timeIntervalSinceReferenceDate];
    v52 = v51;
    [assetDetailsModificationDate timeIntervalSinceReferenceDate];
    if (v52 >= v53)
    {
      goto LABEL_40;
    }

    v14 = BKLibraryAssetDetailsLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    title = [(BKLibraryAsset *)self assetID];
    *v54 = 138412290;
    *&v54[4] = title;
    v16 = "BKLibraryAsset Not Taking changes from asset detail as my mod date is > detail mod date for asset: %@";
    goto LABEL_11;
  }

LABEL_21:
  isFinished = [(BKLibraryAsset *)self isFinished];
  if (isFinished != [detailCopy isFinished])
  {
    -[BKLibraryAsset setIsFinished:](self, "setIsFinished:", [detailCopy isFinished]);
  }

  notFinished = [(BKLibraryAsset *)self notFinished];
  if (notFinished != [detailCopy notFinished])
  {
    -[BKLibraryAsset setNotFinished:](self, "setNotFinished:", [detailCopy notFinished]);
  }

  dateFinished = [detailCopy dateFinished];
  [(BKLibraryAsset *)self setDifferentDate:dateFinished forKey:@"dateFinished"];

  LODWORD(dateFinished) = [(BKLibraryAsset *)self finishedDateKind];
  if (dateFinished != [detailCopy finishedDateKind])
  {
    -[BKLibraryAsset setFinishedDateKind:](self, "setFinishedDateKind:", [detailCopy finishedDateKind]);
  }

  lastOpenDate = [detailCopy lastOpenDate];
  [(BKLibraryAsset *)self setDifferentDate:lastOpenDate forKey:@"lastOpenDate"];

  LODWORD(lastOpenDate) = [(BKLibraryAsset *)self taste];
  if (lastOpenDate != [detailCopy taste])
  {
    -[BKLibraryAsset setTaste:](self, "setTaste:", [detailCopy taste]);
  }

  tasteSyncedToStore = [(BKLibraryAsset *)self tasteSyncedToStore];
  if (tasteSyncedToStore != [detailCopy tasteSyncedToStore])
  {
    -[BKLibraryAsset setTasteSyncedToStore:](self, "setTasteSyncedToStore:", [detailCopy tasteSyncedToStore]);
  }

  if ([(BKLibraryAsset *)self hasChanges])
  {
    [(BKLibraryAsset *)self setAssetDetailsModificationDate:v7];
    v14 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      title = [(BKLibraryAsset *)self assetID];
      *v54 = 138412546;
      *&v54[4] = title;
      *&v54[12] = 2112;
      *&v54[14] = detailCopy;
      v16 = "BKLibraryAsset %@ Configured with changes: %@";
LABEL_37:
      v17 = v14;
      v18 = 22;
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v31 = +[BULogUtilities shared];
  verboseLoggingEnabled4 = [v31 verboseLoggingEnabled];

  if (verboseLoggingEnabled4)
  {
    v14 = BKLibraryAssetDetailsDevelopmentLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      title = [(BKLibraryAsset *)self assetID];
      *v54 = 138412546;
      *&v54[4] = title;
      *&v54[12] = 2112;
      *&v54[14] = detailCopy;
      v16 = "\\BKLibraryAsset %@ Configure - No changes for libraryAsset from assetDetail %@\\"";
      goto LABEL_37;
    }

LABEL_39:
  }

LABEL_40:
  if (![(BKLibraryAsset *)self isAudiobook:*v54])
  {
    goto LABEL_54;
  }

  readingPositionLocationUpdateDate = [detailCopy readingPositionLocationUpdateDate];

  if (!readingPositionLocationUpdateDate)
  {
    goto LABEL_54;
  }

  readingProgress = [(BKLibraryAsset *)self readingProgress];
  [readingProgress doubleValue];
  v36 = v35;
  [detailCopy readingProgress];
  v38 = vabdd_f64(v36, v37);

  if (v38 >= 0.00001)
  {
    [detailCopy readingProgress];
    v39 = [NSNumber numberWithFloat:?];
    [(BKLibraryAsset *)self setReadingProgress:v39];
  }

  bookHighWaterMarkProgress = [(BKLibraryAsset *)self bookHighWaterMarkProgress];
  [bookHighWaterMarkProgress doubleValue];
  v42 = v41;
  [detailCopy readingProgressHighWaterMark];
  v44 = vabdd_f64(v42, v43);

  if (v44 >= 0.00001)
  {
    [detailCopy readingProgressHighWaterMark];
    v50 = [NSNumber numberWithFloat:?];
    [(BKLibraryAsset *)self setBookHighWaterMarkProgress:v50];

LABEL_50:
    v47 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      assetID = [(BKLibraryAsset *)self assetID];
      *v54 = 138412546;
      *&v54[4] = assetID;
      *&v54[12] = 2112;
      *&v54[14] = detailCopy;
      v49 = "BKLibraryAsset %@ Configured with reading progress changes: %@";
      goto LABEL_52;
    }

LABEL_53:

    goto LABEL_54;
  }

  if (v38 >= 0.00001)
  {
    goto LABEL_50;
  }

  v45 = +[BULogUtilities shared];
  verboseLoggingEnabled5 = [v45 verboseLoggingEnabled];

  if (verboseLoggingEnabled5)
  {
    v47 = BKLibraryAssetDetailsDevelopmentLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      assetID = [(BKLibraryAsset *)self assetID];
      *v54 = 138412546;
      *&v54[4] = assetID;
      *&v54[12] = 2112;
      *&v54[14] = detailCopy;
      v49 = "\\BKLibraryAsset %@ Configure - No reading progress changes for libraryAsset from assetDetail %@\\"";
LABEL_52:
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, v49, v54, 0x16u);

      goto LABEL_53;
    }

    goto LABEL_53;
  }

LABEL_54:
}

- (id)readingNowDetailRepresentation
{
  v3 = [BCMutableReadingNowDetail alloc];
  assetID = [(BKLibraryAsset *)self assetID];
  v5 = [v3 initWithAssetID:assetID];

  [v5 setIsTrackedAsRecent:{-[BKLibraryAsset isTrackedAsRecent](self, "isTrackedAsRecent")}];
  lastEngagedDate = [(BKLibraryAsset *)self lastEngagedDate];
  [v5 setLastEngagedDate:lastEngagedDate];

  cloudAssetType = [(BKLibraryAsset *)self cloudAssetType];
  [v5 setCloudAssetType:cloudAssetType];

  v8 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_8FF48(self, v5, v8);
  }

  return v5;
}

- (BOOL)hasImportantReadingNowDetails
{
  if (([(BKLibraryAsset *)self isTrackedAsRecent]& 1) != 0)
  {
    return 1;
  }

  lastEngagedDate = [(BKLibraryAsset *)self lastEngagedDate];
  v3 = lastEngagedDate != 0;

  return v3;
}

- (void)configureFromReadingNowDetail:(id)detail
{
  detailCopy = detail;
  lastEngagedDate = [(BKLibraryAsset *)self lastEngagedDate];
  lastEngagedDate2 = [detailCopy lastEngagedDate];
  v7 = [lastEngagedDate compare:lastEngagedDate2];

  if (v7 == &dword_0 + 1)
  {
    v8 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      assetID = [(BKLibraryAsset *)self assetID];
      v19 = 138412546;
      v20 = assetID;
      v21 = 2112;
      v22 = detailCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "BKLibraryAsset %@ received unexpected Reading Now changes: %@", &v19, 0x16u);
    }
  }

  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [detailCopy isTrackedAsRecent]);
  [(BKLibraryAsset *)self setDifferentNumber:v10 forKey:@"isTrackedAsRecent"];

  lastEngagedDate3 = [detailCopy lastEngagedDate];
  [(BKLibraryAsset *)self setDifferentDate:lastEngagedDate3 forKey:@"lastEngagedDate"];

  if ([(BKLibraryAsset *)self hasChanges])
  {
    v12 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      assetID2 = [(BKLibraryAsset *)self assetID];
      v19 = 138412546;
      v20 = assetID2;
      v21 = 2112;
      v22 = detailCopy;
      v14 = "BKLibraryAsset %@ Configured with Reading Now changes: %@";
      v15 = v12;
      v16 = OS_LOG_TYPE_INFO;
LABEL_11:
      _os_log_impl(&dword_0, v15, v16, v14, &v19, 0x16u);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v17 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v17 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v12 = BKLibraryAssetDetailsDevelopmentLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      assetID2 = [(BKLibraryAsset *)self assetID];
      v19 = 138412546;
      v20 = assetID2;
      v21 = 2112;
      v22 = detailCopy;
      v14 = "\\BKLibraryAsset %@ Configure - No changes for libraryAsset from Reading Now %@\\"";
      v15 = v12;
      v16 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_11;
    }

LABEL_12:
  }
}

- (NSString)cloudAssetType
{
  if ([(BKLibraryAsset *)self isStore])
  {
    isAudiobook = [(BKLibraryAsset *)self isAudiobook];
    v4 = &BDSCloudAssetTypeStoreEbook;
    v5 = &BDSCloudAssetTypeStoreAudiobook;
  }

  else
  {
    isAudiobook = [(BKLibraryAsset *)self _isUbiquityItem];
    v4 = &BDSCloudAssetTypeSideloadedLocal;
    v5 = &BDSCloudAssetTypeSideloadedUbiquity;
  }

  if (isAudiobook)
  {
    v4 = v5;
  }

  v6 = *v4;

  return v6;
}

- (BOOL)_isUbiquityItem
{
  dataSourceIdentifier = [(BKLibraryAsset *)self dataSourceIdentifier];
  v3 = [dataSourceIdentifier isEqualToString:@"com.apple.ibooks.datasource.ubiquity"];

  return v3;
}

- (BOOL)isAudiobook
{
  dataSourceIdentifier = [(BKLibraryAsset *)self dataSourceIdentifier];
  v4 = ([dataSourceIdentifier isEqualToString:@"com.apple.ibooks.datasource.audiobooks"] & 1) != 0 || -[BKLibraryAsset contentType](self, "contentType") == 6;

  return v4;
}

- (BOOL)isBook
{
  contentType = [(BKLibraryAsset *)self contentType];
  if (contentType != 1)
  {
    LOBYTE(contentType) = [(BKLibraryAsset *)self contentType]== 3 || [(BKLibraryAsset *)self contentType]== 4;
  }

  return contentType;
}

- (BOOL)isPreorderBook
{
  expectedDate = [(BKLibraryAsset *)self expectedDate];
  v3 = expectedDate != 0;

  return v3;
}

- (BOOL)isManagedBook
{
  dataSourceIdentifier = [(BKLibraryAsset *)self dataSourceIdentifier];
  v3 = [dataSourceIdentifier isEqualToString:@"com.apple.ibooks.plist.managed"];

  return v3;
}

- (BOOL)isDeletable
{
  if ([(BKLibraryAsset *)self currentlyDownloading]|| [(BKLibraryAsset *)self isSeriesItem])
  {
    return 0;
  }

  else
  {
    return ![(BKLibraryAsset *)self isContainer];
  }
}

- (BOOL)isPartOfSeries
{
  if ([(BKLibraryAsset *)self isContainer])
  {
    return 0;
  }

  seriesID = [(BKLibraryAsset *)self seriesID];
  if (seriesID)
  {
    seriesID2 = [(BKLibraryAsset *)self seriesID];
    v3 = [seriesID2 unsignedLongLongValue] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)shortBookTitle
{
  title = [(BKLibraryAsset *)self title];
  v3 = [title rangeOfString:@": "];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL && (v3 = [title rangeOfString:@"; "], v3 == 0x7FFFFFFFFFFFFFFFLL) && (v3 = objc_msgSend(title, "rangeOfString:", @" / "), v3 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = title;
  }

  else
  {
    v4 = [title substringToIndex:v3];
  }

  v5 = v4;

  return v5;
}

- (void)setLastOpenDate:(id)date
{
  dateCopy = date;
  lastOpenDate = [(BKLibraryAsset *)self lastOpenDate];
  v5 = [lastOpenDate isEqual:dateCopy];

  if ((v5 & 1) == 0)
  {
    [(BKLibraryAsset *)self willChangeValueForKey:@"lastOpenDate"];
    [(BKLibraryAsset *)self setPrimitiveValue:dateCopy forKey:@"lastOpenDate"];
    [(BKLibraryAsset *)self didChangeValueForKey:@"lastOpenDate"];
    seriesContainer = [(BKLibraryAsset *)self seriesContainer];
    if (seriesContainer)
    {
      v7 = seriesContainer;
      isOwned = [(BKLibraryAsset *)self isOwned];

      if (isOwned)
      {
        lastOpenDate2 = [(BKLibraryAsset *)self lastOpenDate];
        [lastOpenDate2 timeIntervalSinceReferenceDate];
        v11 = v10;
        seriesContainer2 = [(BKLibraryAsset *)self seriesContainer];
        lastOpenDate3 = [seriesContainer2 lastOpenDate];
        [lastOpenDate3 timeIntervalSinceReferenceDate];
        v15 = v14;

        if (v11 > v15)
        {
          lastOpenDate4 = [(BKLibraryAsset *)self lastOpenDate];
          seriesContainer3 = [(BKLibraryAsset *)self seriesContainer];
          [seriesContainer3 setLastOpenDate:lastOpenDate4];
        }
      }
    }
  }
}

- (BOOL)shouldBeInDownloadedCollection
{
  isLocal = [(BKLibraryAsset *)self isLocal];
  if (isLocal)
  {
    if (([(BKLibraryAsset *)self isEphemeral]& 1) != 0)
    {
      LOBYTE(isLocal) = 0;
    }

    else
    {
      LOBYTE(isLocal) = ![(BKLibraryAsset *)self isContainer];
    }
  }

  return isLocal;
}

- (BOOL)shouldBeInMySamplesCollection
{
  isSample = [(BKLibraryAsset *)self isSample];
  if (isSample)
  {
    isSample = [(BKLibraryAsset *)self isLocal];
    if (isSample)
    {
      if (([(BKLibraryAsset *)self isEphemeral]& 1) != 0)
      {
        LOBYTE(isSample) = 0;
      }

      else
      {
        LOBYTE(isSample) = ![(BKLibraryAsset *)self isContainer];
      }
    }
  }

  return isSample;
}

@end