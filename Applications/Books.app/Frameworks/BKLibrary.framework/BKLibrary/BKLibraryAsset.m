@interface BKLibraryAsset
+ (BOOL)hasBookReachedReadThreshold:(id)a3;
+ (id)actualAuthorFromMetedata:(id)a3;
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
- (id)_dateFinishedForYearOnly:(id)a3;
- (id)assetDetailRepresentation;
- (id)managedObjectContext;
- (id)readingNowDetailRepresentation;
- (id)seriesStackAssetIDs;
- (signed)seriesType;
- (void)_setFinishedStates:(BOOL)a3;
- (void)cleanupDateFinished;
- (void)configureFromAssetDetail:(id)a3;
- (void)configureFromReadingNowDetail:(id)a3;
- (void)didChangeValueForKey:(id)a3;
- (void)nonUserUpdateLastOpenDateTo:(id)a3;
- (void)setCreationDateToNow;
- (void)setFinishedStateAddToFinishedCollection;
- (void)setFinishedStateAssetRead;
- (void)setFinishedStateRemoveFromFinishedCollection;
- (void)setFinishedStateUserSetsFinished:(BOOL)a3 userInfo:(id)a4;
- (void)setFinishedStateUserSetsUnfinished;
- (void)setLastOpenDate:(id)a3;
- (void)unsetFinishedDate;
- (void)willSave;
@end

@implementation BKLibraryAsset

- (BOOL)hasSpecifiedFinishedDate
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(BKLibraryAsset *)self dateFinished];
    if (v3)
    {
      v4 = [(BKLibraryAsset *)self dateFinished];
      v5 = +[NSDate distantPast];
      v6 = [v4 isEqualToDate:v5] ^ 1;
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
  v3 = [(BKLibraryAsset *)self isFinished];
  if (v3)
  {
    LOBYTE(v3) = [(BKLibraryAsset *)self notFinished]^ 1;
  }

  return v3;
}

- (void)_setFinishedStates:(BOOL)a3
{
  v3 = a3;
  [(BKLibraryAsset *)self setIsFinished:?];

  [(BKLibraryAsset *)self setNotFinished:!v3];
}

- (id)_dateFinishedForYearOnly:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = objc_alloc_init(NSDateComponents);
  [v5 setCalendar:v4];
  v6 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v5 setTimeZone:v6];

  [v5 setEra:{objc_msgSend(v4, "component:fromDate:", 2, v3)}];
  [v5 setYear:{objc_msgSend(v4, "component:fromDate:", 4, v3)}];
  v7 = [v4 dateFromComponents:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  v10 = v9;

  return v9;
}

- (void)cleanupDateFinished
{
  v3 = [(BKLibraryAsset *)self dateFinished];
  if (v3)
  {
    v4 = v3;
    v5 = [(BKLibraryAsset *)self finishedDateKind];

    if (v5 == 2)
    {
      return;
    }
  }

  v24 = +[NSDate date];
  v6 = [(BKLibraryAsset *)self lastEngagedDate];
  if (v6)
  {
    v7 = v6;
    v8 = [(BKLibraryAsset *)self lastEngagedDate];
    v9 = +[NSDate distantPast];
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v21 = [(BKLibraryAsset *)self lastEngagedDate];
      goto LABEL_12;
    }
  }

  v11 = [(BKLibraryAsset *)self lastOpenDate];
  if (v11)
  {
    v12 = v11;
    v13 = [(BKLibraryAsset *)self lastOpenDate];
    v14 = +[NSDate distantPast];
    v15 = [v13 isEqual:v14];

    if ((v15 & 1) == 0)
    {
      v21 = [(BKLibraryAsset *)self lastOpenDate];
      goto LABEL_12;
    }
  }

  v16 = [(BKLibraryAsset *)self purchaseDate];
  if (v16)
  {
    v17 = v16;
    v18 = [(BKLibraryAsset *)self purchaseDate];
    v19 = +[NSDate distantPast];
    v20 = [v18 isEqual:v19];

    if ((v20 & 1) == 0)
    {
      v21 = [(BKLibraryAsset *)self purchaseDate];
LABEL_12:
      v22 = v21;

      v24 = v22;
    }
  }

  v23 = [(BKLibraryAsset *)self assetDetailsModificationDate];
  [(BKLibraryAsset *)self setDifferentDate:v24 forKey:@"dateFinished"];
  [(BKLibraryAsset *)self setFinishedDateKind:1];
  [(BKLibraryAsset *)self setAssetDetailsModificationDate:v23];
}

- (void)unsetFinishedDate
{
  v3 = +[NSDate distantPast];
  [(BKLibraryAsset *)self userUpdateDateFinished:v3 ofKind:0];
}

- (void)setFinishedStateUserSetsFinished:(BOOL)a3 userInfo:(id)a4
{
  v6 = a4;
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
  if (a3 || ([(BKLibraryAsset *)self dateFinished], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
  {
    [(BKLibraryAsset *)self userUpdateDateFinished:0 ofKind:1];
  }

  v19 = BKLibraryUILog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [(BKLibraryAsset *)self dateFinished];
    v22 = 138412546;
    v23 = self;
    v24 = 2112;
    v25 = v20;
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
  if (v6 && [(BKLibraryAsset *)self isFinished])
  {
    v15 = [v6 mutableCopy];
    v16 = [(BKLibraryAsset *)self permanentOrTemporaryAssetID];
    [v15 setObject:v16 forKeyedSubscript:@"BKLibraryAssetIDKey"];

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
      v12 = self;
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
      v12 = self;
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
      v5 = self;
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
    v4 = [(BKLibraryAsset *)self permanentOrTemporaryAssetID];
    if (v4)
    {
      v14 = @"BKLibraryAssetIDKey";
      v5 = [(BKLibraryAsset *)self permanentOrTemporaryAssetID];
      v15 = v5;
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
      v9 = [(BKLibraryAsset *)self dateFinished];
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "setFinishedStateAddToFinishedCollection for asset %@ with date %@", &v10, 0x16u);
    }
  }
}

+ (BOOL)hasBookReachedReadThreshold:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:BCAssetReadingProgressKey];

  v5 = BUDynamicCast();

  [v5 floatValue];
  LOBYTE(v3) = v6 > kAEAnnotationReadingLocationSignificantHighwaterMark;

  return v3;
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

  v3 = [(BKLibraryAsset *)self sortAuthor];
  v4 = [v3 length];

  if (!v4)
  {
    v5 = [(BKLibraryAsset *)self author];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [(BKLibraryAsset *)self author];
      [(BKLibraryAsset *)self setSortAuthor:v7];
    }
  }

  v8 = [(BKLibraryAsset *)self sortAuthor];
  if ([v8 isEqualToString:@"UnknownAuthor"])
  {
    v9 = [(BKLibraryAsset *)self author];
    v10 = [v9 isEqualToString:@"UnknownAuthor"];

    if (v10)
    {
      goto LABEL_11;
    }

    v8 = [(BKLibraryAsset *)self author];
    [(BKLibraryAsset *)self setSortAuthor:v8];
  }

LABEL_11:
  v11 = [(BKLibraryAsset *)self sortTitle];
  v12 = [v11 length];

  if (!v12)
  {
    v13 = [(BKLibraryAsset *)self title];
    v14 = [v13 length];

    if (v14)
    {
      v15 = [(BKLibraryAsset *)self title];
      [(BKLibraryAsset *)self setSortTitle:v15];
    }
  }

  v21 = [(BKLibraryAsset *)self lastOpenDate];
  v16 = +[NSDate distantPast];
  v17 = [(BKLibraryAsset *)self lastOpenDate];
  v18 = [v16 laterDate:v17];

  v19 = [(BKLibraryAsset *)self purchaseDate];
  v20 = [v18 laterDate:v19];

  if (([v21 isEqualToDate:v20] & 1) == 0)
  {
    [(BKLibraryAsset *)self nonUserUpdateLastOpenDateTo:v20];
  }
}

- (void)didChangeValueForKey:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = BKLibraryAsset;
  [(BKLibraryAsset *)&v6 didChangeValueForKey:v4];
  if (([v4 isEqualToString:@"assetDetailsModificationDate"] & 1) == 0 && ((objc_msgSend(v4, "isEqualToString:", @"isFinished") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"notFinished") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"lastOpenDate") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"dateFinished") & 1) != 0 || -[BKLibraryAsset isAudiobook](self, "isAudiobook") && ((objc_msgSend(v4, "isEqualToString:", @"readingProgress") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"bookHighWaterMarkProgress"))))
  {
    v5 = +[NSDate date];
    [(BKLibraryAsset *)self setAssetDetailsModificationDate:v5];
  }
}

- (NSString)permanentOrTemporaryAssetID
{
  v3 = [(BKLibraryAsset *)self assetID];
  if (!v3)
  {
    v3 = [(BKLibraryAsset *)self temporaryAssetID];
  }

  return v3;
}

+ (id)actualAuthorFromMetedata:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UnknownAuthor"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"MultipleAuthors"))
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (NSString)actualAuthor
{
  v2 = [(BKLibraryAsset *)self author];
  v3 = [BKLibraryAsset actualAuthorFromMetedata:v2];

  return v3;
}

- (NSString)displayAuthor
{
  v3 = [(BKLibraryAsset *)self hasTooManyAuthors];
  v4 = [v3 BOOLValue];

  v5 = [(BKLibraryAsset *)self authorNames];
  v6 = [(BKLibraryAsset *)self authorCount];
  v7 = v6;
  if (!v4)
  {
    if ([v6 intValue] == 1 && objc_msgSend(v5, "count"))
    {
      v8 = [v5 objectAtIndexedSubscript:0];
      goto LABEL_21;
    }

    if ([v7 intValue] == 2 && objc_msgSend(v5, "count") >= 2)
    {
      v9 = BKLibraryFrameworkBundle();
      v10 = [v9 localizedStringForKey:@"Library.Item.TwoArtists" value:@"%@ & %@" table:&stru_D8298];

      v11 = [v5 objectAtIndexedSubscript:0];
      v12 = [v5 objectAtIndexedSubscript:1];
      v13 = v12;
    }

    else
    {
      if ([v7 intValue] == 3 && objc_msgSend(v5, "count") >= 3)
      {
        v14 = BKLibraryFrameworkBundle();
        v10 = [v14 localizedStringForKey:@"Library.Item.ThreeArtists" value:@"%@ table:{%@, & %@", &stru_D8298}];

        v11 = [v5 objectAtIndexedSubscript:0];
        v13 = [v5 objectAtIndexedSubscript:1];
        v15 = [v5 objectAtIndexedSubscript:2];
        v16 = [NSString stringWithFormat:v10, v11, v13, v15];

LABEL_16:
        goto LABEL_22;
      }

      if ([v7 intValue] < 4 || objc_msgSend(v5, "count") < 2)
      {
        v19 = [(BKLibraryAsset *)self author];
        v20 = [v19 isEqualToString:@"UnknownAuthor"];

        if (v20)
        {
          v8 = +[BKLibraryAsset unknownAuthor];
          goto LABEL_21;
        }

        v21 = [(BKLibraryAsset *)self author];
        v22 = [v21 isEqualToString:@"MultipleAuthors"];

        if (!v22)
        {
          v8 = [(BKLibraryAsset *)self author];
          goto LABEL_21;
        }

        goto LABEL_2;
      }

      v17 = [v7 intValue] - 2;
      v18 = BKLibraryFrameworkBundle();
      v10 = [v18 localizedStringForKey:@"Library.Item.TwoAndOtherArtists" value:@"%@ table:{%@, & %d others", &stru_D8298}];

      v11 = [v5 objectAtIndexedSubscript:0];
      v12 = [v5 objectAtIndexedSubscript:1];
      v13 = v12;
      v24 = v17;
    }

    v16 = [NSString stringWithFormat:v10, v11, v12, v24];
    goto LABEL_16;
  }

LABEL_2:
  v8 = +[BKLibraryAsset multipleAuthors];
LABEL_21:
  v16 = v8;
LABEL_22:

  return v16;
}

- (BOOL)isStore
{
  v2 = [(BKLibraryAsset *)self storeID];
  v3 = v2 != 0;

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
    v4 = [(BKLibraryAsset *)self isStoreAudiobook];
    if ([v4 BOOLValue])
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
  v3 = [(BKLibraryAsset *)self permlink];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(BKLibraryAsset *)self dataSourceIdentifier];
    if ([v5 isEqualToString:@"com.apple.ibooks.datasource.itunesu"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(BKLibraryAsset *)self dataSourceIdentifier];
      v4 = [v6 isEqualToString:@"com.apple.ibooks.plugin.Bookshelf.platformDataSource.iTunesU"];
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

  v4 = [(BKLibraryAsset *)self seriesID];

  if (!v4)
  {
    return 1;
  }

  v5 = [(BKLibraryAsset *)self sequenceDisplayName];
  if ([v5 length])
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
  v2 = [(BKLibraryAsset *)self collectionMembers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) collection];
        v7 = v6;
        if (v6 && ([v6 isDefaultCollection] & 1) == 0)
        {

          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(BKLibraryAsset *)self collectionMembers];
  v3 = [v2 valueForKey:@"collectionID"];
  v4 = [v3 containsObject:kBKCollectionDefaultIDSamples];

  return v4;
}

- (BOOL)canEditMetadata
{
  v3 = [(BKLibraryAsset *)self isLocal];
  if (v3)
  {
    if ([(BKLibraryAsset *)self isAudiobook]|| ([(BKLibraryAsset *)self isProof]& 1) != 0 || ([(BKLibraryAsset *)self isSample]& 1) != 0 || ([(BKLibraryAsset *)self isHidden]& 1) != 0)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = [(BKLibraryAsset *)self isLocked]^ 1;
    }
  }

  return v3;
}

- (void)setCreationDateToNow
{
  v5 = +[NSDate date];
  [(BKLibraryAsset *)self setCreationDate:v5];
  v3 = [(BKLibraryAsset *)self purchasedAndLocalParent];
  [v3 setCreationDate:v5];

  [(BKLibraryAsset *)self setModificationDate:v5];
  v4 = [(BKLibraryAsset *)self purchasedAndLocalParent];
  [v4 setModificationDate:v5];
}

- (void)nonUserUpdateLastOpenDateTo:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryAsset *)self assetDetailsModificationDate];
  [(BKLibraryAsset *)self setLastOpenDate:v4];

  [(BKLibraryAsset *)self setAssetDetailsModificationDate:v5];
}

- (id)seriesStackAssetIDs
{
  v3 = [(BKLibraryAsset *)self seriesStackIDs];
  if (v3)
  {
    v4 = [(BKLibraryAsset *)self seriesStackIDs];
    v5 = [v4 componentsSeparatedByString:{@", "}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)assetLogID
{
  v3 = [(BKLibraryAsset *)self assetGUID];
  v4 = [v3 length];

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
  v2 = [(BKLibraryAsset *)&v4 managedObjectContext];

  return v2;
}

- (BOOL)isRightToLeft
{
  v3 = [(BKLibraryAsset *)self pageProgressionDirection];
  v4 = [v3 lowercaseString];

  if ([v4 isEqualToString:@"rtl"])
  {
    v5 = 1;
  }

  else if (([v4 isEqualToString:@"default"] & 1) != 0 || !v4 || objc_msgSend(v4, "isEqualToString:", &stru_D8298))
  {
    v6 = [(BKLibraryAsset *)self language];
    if (([IMLanguageUtilities languageIsHebrew:v6]& 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = [IMLanguageUtilities languageIsArabic:v6];
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
  v3 = BLAudiobookStreamingEnabled();
  if (v3)
  {
    if ([(BKLibraryAsset *)self isCloud]|| (v3 = [(BKLibraryAsset *)self isDownloading]) != 0)
    {
      v3 = [(BKLibraryAsset *)self isAudiobook];
      if (v3)
      {
        LOBYTE(v3) = ![(BKLibraryAsset *)self isPreorderBook];
      }
    }
  }

  return v3;
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
  v3 = [(BKLibraryAsset *)self path];
  if (v3)
  {
    if (![(NSString *)self->_cachedAssetPath isEqualToString:v3])
    {
      v5 = +[NSFileManager defaultManager];
      v6 = [NSURL fileURLWithPath:v3];
      self->_cachedUbiquitousState = [v5 isUbiquitousItemAtURL:v6];

      objc_storeStrong(&self->_cachedAssetPath, v3);
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
  v4 = [(BKLibraryAsset *)self assetID];
  v5 = [v3 initWithAssetID:v4];

  [v5 setIsFinished:{-[BKLibraryAsset isFinished](self, "isFinished")}];
  [v5 setNotFinished:{-[BKLibraryAsset notFinished](self, "notFinished")}];
  v6 = [(BKLibraryAsset *)self lastOpenDate];
  [v5 setLastOpenDate:v6];

  v7 = [(BKLibraryAsset *)self dateFinished];
  [v5 setDateFinished:v7];

  [v5 setFinishedDateKind:{-[BKLibraryAsset finishedDateKind](self, "finishedDateKind")}];
  [v5 setTaste:{-[BKLibraryAsset taste](self, "taste")}];
  [v5 setTasteSyncedToStore:{-[BKLibraryAsset tasteSyncedToStore](self, "tasteSyncedToStore")}];
  v8 = [(BKLibraryAsset *)self assetDetailsModificationDate];
  [v5 setModificationDate:v8];

  if ([(BKLibraryAsset *)self isAudiobook])
  {
    [v5 setBookmarkTime:0.0];
    v9 = +[NSDate distantPast];
    [v5 setDatePlaybackTimeUpdated:v9];

    v10 = [(BKLibraryAsset *)self readingProgress];
    [v10 floatValue];
    [v5 setReadingProgress:?];

    v11 = [(BKLibraryAsset *)self bookHighWaterMarkProgress];
    [v11 floatValue];
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

    v7 = [(BKLibraryAsset *)self lastOpenDate];
    if (!v7 || (+[NSDate distantPast](NSDate, "distantPast"), v2 = objc_claimAutoreleasedReturnValue(), -[BKLibraryAsset lastOpenDate](self, "lastOpenDate"), v3 = objc_claimAutoreleasedReturnValue(), [v2 isEqualToDate:v3]))
    {
      v8 = [(BKLibraryAsset *)self dateFinished];
      if (v8)
      {
        v9 = v8;
        v10 = +[NSDate distantPast];
        v11 = [(BKLibraryAsset *)self dateFinished];
        v5 = [v10 isEqualToDate:v11] ^ 1;

        if (!v7)
        {
LABEL_17:

          return v5;
        }
      }

      else
      {
        LOBYTE(v5) = 0;
        if (!v7)
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

- (void)configureFromAssetDetail:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryAsset *)self assetDetailsModificationDate];
  v6 = [v4 modificationDate];
  v7 = v6;
  if (!(v5 | v6))
  {
    v12 = +[BULogUtilities shared];
    v13 = [v12 verboseLoggingEnabled];

    if (!v13)
    {
      goto LABEL_40;
    }

    v14 = BKLibraryAssetDetailsDevelopmentLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v15 = [(BKLibraryAsset *)self title];
    *v54 = 138412290;
    *&v54[4] = v15;
    v16 = "\\configureFromAssetDetail No local modDate, No assetDetail modDate for assetDetail %@\\"";
LABEL_11:
    v17 = v14;
    v18 = 12;
LABEL_38:
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, v16, v54, v18);

    goto LABEL_39;
  }

  if (!v5 && v6)
  {
    v8 = +[BULogUtilities shared];
    v9 = [v8 verboseLoggingEnabled];

    if (v9)
    {
      v10 = BKLibraryAssetDetailsDevelopmentLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(BKLibraryAsset *)self title];
        *v54 = 138412546;
        *&v54[4] = v7;
        *&v54[12] = 2112;
        *&v54[14] = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "\\No local modDate, assetDetail has modDate:%@  for assetDetail %@ \\"", v54, 0x16u);
      }
    }

    goto LABEL_21;
  }

  if (v5 && v6)
  {
    v19 = +[BULogUtilities shared];
    v20 = [v19 verboseLoggingEnabled];

    if (v20)
    {
      v21 = BKLibraryAssetDetailsDevelopmentLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(BKLibraryAsset *)self title];
        *v54 = 138412802;
        *&v54[4] = v5;
        *&v54[12] = 2112;
        *&v54[14] = v7;
        *&v54[22] = 2112;
        v55 = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "\\local has modDate:%@, assetDetail has modDate:%@ for assetDetail %@\\"", v54, 0x20u);
      }
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_40;
    }

    if (!v5)
    {
      goto LABEL_21;
    }
  }

  [v7 timeIntervalSinceReferenceDate];
  v24 = v23;
  [v5 timeIntervalSinceReferenceDate];
  if (v24 <= v25)
  {
    [v7 timeIntervalSinceReferenceDate];
    v52 = v51;
    [v5 timeIntervalSinceReferenceDate];
    if (v52 >= v53)
    {
      goto LABEL_40;
    }

    v14 = BKLibraryAssetDetailsLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v15 = [(BKLibraryAsset *)self assetID];
    *v54 = 138412290;
    *&v54[4] = v15;
    v16 = "BKLibraryAsset Not Taking changes from asset detail as my mod date is > detail mod date for asset: %@";
    goto LABEL_11;
  }

LABEL_21:
  v26 = [(BKLibraryAsset *)self isFinished];
  if (v26 != [v4 isFinished])
  {
    -[BKLibraryAsset setIsFinished:](self, "setIsFinished:", [v4 isFinished]);
  }

  v27 = [(BKLibraryAsset *)self notFinished];
  if (v27 != [v4 notFinished])
  {
    -[BKLibraryAsset setNotFinished:](self, "setNotFinished:", [v4 notFinished]);
  }

  v28 = [v4 dateFinished];
  [(BKLibraryAsset *)self setDifferentDate:v28 forKey:@"dateFinished"];

  LODWORD(v28) = [(BKLibraryAsset *)self finishedDateKind];
  if (v28 != [v4 finishedDateKind])
  {
    -[BKLibraryAsset setFinishedDateKind:](self, "setFinishedDateKind:", [v4 finishedDateKind]);
  }

  v29 = [v4 lastOpenDate];
  [(BKLibraryAsset *)self setDifferentDate:v29 forKey:@"lastOpenDate"];

  LODWORD(v29) = [(BKLibraryAsset *)self taste];
  if (v29 != [v4 taste])
  {
    -[BKLibraryAsset setTaste:](self, "setTaste:", [v4 taste]);
  }

  v30 = [(BKLibraryAsset *)self tasteSyncedToStore];
  if (v30 != [v4 tasteSyncedToStore])
  {
    -[BKLibraryAsset setTasteSyncedToStore:](self, "setTasteSyncedToStore:", [v4 tasteSyncedToStore]);
  }

  if ([(BKLibraryAsset *)self hasChanges])
  {
    [(BKLibraryAsset *)self setAssetDetailsModificationDate:v7];
    v14 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(BKLibraryAsset *)self assetID];
      *v54 = 138412546;
      *&v54[4] = v15;
      *&v54[12] = 2112;
      *&v54[14] = v4;
      v16 = "BKLibraryAsset %@ Configured with changes: %@";
LABEL_37:
      v17 = v14;
      v18 = 22;
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v31 = +[BULogUtilities shared];
  v32 = [v31 verboseLoggingEnabled];

  if (v32)
  {
    v14 = BKLibraryAssetDetailsDevelopmentLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(BKLibraryAsset *)self assetID];
      *v54 = 138412546;
      *&v54[4] = v15;
      *&v54[12] = 2112;
      *&v54[14] = v4;
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

  v33 = [v4 readingPositionLocationUpdateDate];

  if (!v33)
  {
    goto LABEL_54;
  }

  v34 = [(BKLibraryAsset *)self readingProgress];
  [v34 doubleValue];
  v36 = v35;
  [v4 readingProgress];
  v38 = vabdd_f64(v36, v37);

  if (v38 >= 0.00001)
  {
    [v4 readingProgress];
    v39 = [NSNumber numberWithFloat:?];
    [(BKLibraryAsset *)self setReadingProgress:v39];
  }

  v40 = [(BKLibraryAsset *)self bookHighWaterMarkProgress];
  [v40 doubleValue];
  v42 = v41;
  [v4 readingProgressHighWaterMark];
  v44 = vabdd_f64(v42, v43);

  if (v44 >= 0.00001)
  {
    [v4 readingProgressHighWaterMark];
    v50 = [NSNumber numberWithFloat:?];
    [(BKLibraryAsset *)self setBookHighWaterMarkProgress:v50];

LABEL_50:
    v47 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [(BKLibraryAsset *)self assetID];
      *v54 = 138412546;
      *&v54[4] = v48;
      *&v54[12] = 2112;
      *&v54[14] = v4;
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
  v46 = [v45 verboseLoggingEnabled];

  if (v46)
  {
    v47 = BKLibraryAssetDetailsDevelopmentLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [(BKLibraryAsset *)self assetID];
      *v54 = 138412546;
      *&v54[4] = v48;
      *&v54[12] = 2112;
      *&v54[14] = v4;
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
  v4 = [(BKLibraryAsset *)self assetID];
  v5 = [v3 initWithAssetID:v4];

  [v5 setIsTrackedAsRecent:{-[BKLibraryAsset isTrackedAsRecent](self, "isTrackedAsRecent")}];
  v6 = [(BKLibraryAsset *)self lastEngagedDate];
  [v5 setLastEngagedDate:v6];

  v7 = [(BKLibraryAsset *)self cloudAssetType];
  [v5 setCloudAssetType:v7];

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

  v4 = [(BKLibraryAsset *)self lastEngagedDate];
  v3 = v4 != 0;

  return v3;
}

- (void)configureFromReadingNowDetail:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryAsset *)self lastEngagedDate];
  v6 = [v4 lastEngagedDate];
  v7 = [v5 compare:v6];

  if (v7 == &dword_0 + 1)
  {
    v8 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(BKLibraryAsset *)self assetID];
      v19 = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "BKLibraryAsset %@ received unexpected Reading Now changes: %@", &v19, 0x16u);
    }
  }

  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isTrackedAsRecent]);
  [(BKLibraryAsset *)self setDifferentNumber:v10 forKey:@"isTrackedAsRecent"];

  v11 = [v4 lastEngagedDate];
  [(BKLibraryAsset *)self setDifferentDate:v11 forKey:@"lastEngagedDate"];

  if ([(BKLibraryAsset *)self hasChanges])
  {
    v12 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(BKLibraryAsset *)self assetID];
      v19 = 138412546;
      v20 = v13;
      v21 = 2112;
      v22 = v4;
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
  v18 = [v17 verboseLoggingEnabled];

  if (v18)
  {
    v12 = BKLibraryAssetDetailsDevelopmentLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(BKLibraryAsset *)self assetID];
      v19 = 138412546;
      v20 = v13;
      v21 = 2112;
      v22 = v4;
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
    v3 = [(BKLibraryAsset *)self isAudiobook];
    v4 = &BDSCloudAssetTypeStoreEbook;
    v5 = &BDSCloudAssetTypeStoreAudiobook;
  }

  else
  {
    v3 = [(BKLibraryAsset *)self _isUbiquityItem];
    v4 = &BDSCloudAssetTypeSideloadedLocal;
    v5 = &BDSCloudAssetTypeSideloadedUbiquity;
  }

  if (v3)
  {
    v4 = v5;
  }

  v6 = *v4;

  return v6;
}

- (BOOL)_isUbiquityItem
{
  v2 = [(BKLibraryAsset *)self dataSourceIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.ibooks.datasource.ubiquity"];

  return v3;
}

- (BOOL)isAudiobook
{
  v3 = [(BKLibraryAsset *)self dataSourceIdentifier];
  v4 = ([v3 isEqualToString:@"com.apple.ibooks.datasource.audiobooks"] & 1) != 0 || -[BKLibraryAsset contentType](self, "contentType") == 6;

  return v4;
}

- (BOOL)isBook
{
  v3 = [(BKLibraryAsset *)self contentType];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(BKLibraryAsset *)self contentType]== 3 || [(BKLibraryAsset *)self contentType]== 4;
  }

  return v3;
}

- (BOOL)isPreorderBook
{
  v2 = [(BKLibraryAsset *)self expectedDate];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isManagedBook
{
  v2 = [(BKLibraryAsset *)self dataSourceIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.ibooks.plist.managed"];

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

  v4 = [(BKLibraryAsset *)self seriesID];
  if (v4)
  {
    v5 = [(BKLibraryAsset *)self seriesID];
    v3 = [v5 unsignedLongLongValue] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)shortBookTitle
{
  v2 = [(BKLibraryAsset *)self title];
  v3 = [v2 rangeOfString:@": "];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL && (v3 = [v2 rangeOfString:@"; "], v3 == 0x7FFFFFFFFFFFFFFFLL) && (v3 = objc_msgSend(v2, "rangeOfString:", @" / "), v3 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = v2;
  }

  else
  {
    v4 = [v2 substringToIndex:v3];
  }

  v5 = v4;

  return v5;
}

- (void)setLastOpenDate:(id)a3
{
  v18 = a3;
  v4 = [(BKLibraryAsset *)self lastOpenDate];
  v5 = [v4 isEqual:v18];

  if ((v5 & 1) == 0)
  {
    [(BKLibraryAsset *)self willChangeValueForKey:@"lastOpenDate"];
    [(BKLibraryAsset *)self setPrimitiveValue:v18 forKey:@"lastOpenDate"];
    [(BKLibraryAsset *)self didChangeValueForKey:@"lastOpenDate"];
    v6 = [(BKLibraryAsset *)self seriesContainer];
    if (v6)
    {
      v7 = v6;
      v8 = [(BKLibraryAsset *)self isOwned];

      if (v8)
      {
        v9 = [(BKLibraryAsset *)self lastOpenDate];
        [v9 timeIntervalSinceReferenceDate];
        v11 = v10;
        v12 = [(BKLibraryAsset *)self seriesContainer];
        v13 = [v12 lastOpenDate];
        [v13 timeIntervalSinceReferenceDate];
        v15 = v14;

        if (v11 > v15)
        {
          v16 = [(BKLibraryAsset *)self lastOpenDate];
          v17 = [(BKLibraryAsset *)self seriesContainer];
          [v17 setLastOpenDate:v16];
        }
      }
    }
  }
}

- (BOOL)shouldBeInDownloadedCollection
{
  v3 = [(BKLibraryAsset *)self isLocal];
  if (v3)
  {
    if (([(BKLibraryAsset *)self isEphemeral]& 1) != 0)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(BKLibraryAsset *)self isContainer];
    }
  }

  return v3;
}

- (BOOL)shouldBeInMySamplesCollection
{
  v3 = [(BKLibraryAsset *)self isSample];
  if (v3)
  {
    v3 = [(BKLibraryAsset *)self isLocal];
    if (v3)
    {
      if (([(BKLibraryAsset *)self isEphemeral]& 1) != 0)
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        LOBYTE(v3) = ![(BKLibraryAsset *)self isContainer];
      }
    }
  }

  return v3;
}

@end