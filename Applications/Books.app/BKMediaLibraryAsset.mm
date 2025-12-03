@interface BKMediaLibraryAsset
+ (id)newAssetFromRepresentativeMediaItem:(id)item withDataSourceIdentifier:(id)identifier;
- (BKMediaLibraryAsset)initWithRepresentativeMediaItem:(id)item assetID:(id)d dataSourceIdentifier:(id)identifier;
- (BOOL)hasBeenPlayed;
- (MPMediaItemCollection)collection;
- (NSDate)expectedDate;
- (NSDate)purchaseDate;
- (NSDate)releaseDate;
- (NSDictionary)options;
- (NSNumber)cloudReadPercent;
- (NSNumber)isExplicit;
- (NSNumber)localReadPercent;
- (NSNumber)readPercent;
- (NSString)accountID;
- (NSString)author;
- (NSString)bookDescription;
- (NSString)comments;
- (NSString)description;
- (NSString)genre;
- (NSString)sortAuthor;
- (NSString)sortTitle;
- (NSString)storeID;
- (NSString)storeRedownloadParameters;
- (NSString)title;
- (NSURL)url;
- (double)clampedBookmarkTime:(double)time duration:(double)duration;
- (id)localAndCloudCollection;
- (int64_t)fileSize;
- (int64_t)rating;
- (signed)state;
@end

@implementation BKMediaLibraryAsset

+ (id)newAssetFromRepresentativeMediaItem:(id)item withDataSourceIdentifier:(id)identifier
{
  itemCopy = item;
  identifierCopy = identifier;
  bk_assetID = [itemCopy bk_assetID];
  if ([bk_assetID length])
  {
    v8 = [[BKMediaLibraryAsset alloc] initWithRepresentativeMediaItem:itemCopy assetID:bk_assetID dataSourceIdentifier:identifierCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BKMediaLibraryAsset)initWithRepresentativeMediaItem:(id)item assetID:(id)d dataSourceIdentifier:(id)identifier
{
  itemCopy = item;
  dCopy = d;
  identifierCopy = identifier;
  v23.receiver = self;
  v23.super_class = BKMediaLibraryAsset;
  v12 = [(BKMediaLibraryAsset *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_representativeItem, item);
    objc_storeStrong(&v13->_assetID, d);
    objc_storeStrong(&v13->_dataSourceIdentifier, identifier);
    releaseDate = [(MPMediaItem *)v13->_representativeItem releaseDate];
    dataSourceInsertionDate = v13->_dataSourceInsertionDate;
    v13->_dataSourceInsertionDate = releaseDate;

    bk_isJaliscoAsset = [(MPMediaItem *)v13->_representativeItem bk_isJaliscoAsset];
    v13->_cloudAsset = bk_isJaliscoAsset;
    if ((bk_isJaliscoAsset & 1) == 0)
    {
      bk_storePlaylistID = [itemCopy bk_storePlaylistID];
      if (bk_storePlaylistID)
      {
        v18 = objc_alloc_init(BLMetadataStore);
        longLongValue = [bk_storePlaylistID longLongValue];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100122AE4;
        v21[3] = &unk_100A07EE0;
        v22 = v13;
        [v18 racGUIDForStoreID:longLongValue result:v21];
      }
    }
  }

  return v13;
}

- (MPMediaItemCollection)collection
{
  v3 = +[MPMediaQuery bk_audiobooksQuery];
  objc_opt_class();
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  v5 = [representativeItem valueForProperty:MPMediaItemPropertyAlbumPersistentID];
  v6 = BUDynamicCast();

  if (v6)
  {
    v7 = [MPMediaPropertyPredicate predicateWithValue:v6 forProperty:MPMediaItemPropertyAlbumPersistentID];
    [v3 addFilterPredicate:v7];

    if ([(BKMediaLibraryAsset *)self isCloudAsset])
    {
      [v3 setIgnoreSystemFilterPredicates:1];
      [MPMediaPropertyPredicate predicateWithValue:&off_100A435C0 forProperty:MPMediaItemPropertyPurchaseHistoryID comparisonType:100];
    }

    else
    {
      [MPMediaPropertyPredicate predicateWithValue:&off_100A435C0 forProperty:MPMediaItemPropertyPurchaseHistoryID];
    }
    v9 = ;
    [v3 addFilterPredicate:v9];

    collections = [v3 collections];
    firstObject = [collections firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)localAndCloudCollection
{
  v3 = +[MPMediaQuery bk_audiobooksQuery];
  objc_opt_class();
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  v5 = [representativeItem valueForProperty:MPMediaItemPropertyAlbumPersistentID];
  v6 = BUDynamicCast();

  if (v6)
  {
    [v3 setIgnoreSystemFilterPredicates:1];
    v7 = [MPMediaPropertyPredicate predicateWithValue:v6 forProperty:MPMediaItemPropertyAlbumPersistentID];
    [v3 addFilterPredicate:v7];

    collections = [v3 collections];
    firstObject = [collections firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (double)clampedBookmarkTime:(double)time duration:(double)duration
{
  if (time <= duration)
  {
    if (time < 0.0)
    {
      return 0.0;
    }

    else
    {
      return time;
    }
  }

  else
  {
    durationCopy = duration;
    v7 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      title = [(BKMediaLibraryAsset *)self title];
      author = [(BKMediaLibraryAsset *)self author];
      v11 = 134218754;
      timeCopy = time;
      v13 = 2112;
      v14 = title;
      v15 = 2112;
      v16 = author;
      v17 = 2048;
      v18 = durationCopy;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "bookmark time %lf for asset %@ by %@ is greater than duration %lf", &v11, 0x2Au);
    }
  }

  return durationCopy;
}

- (NSNumber)localReadPercent
{
  collection = [(BKMediaLibraryAsset *)self collection];
  [collection bk_localBookmarkTime];
  v5 = v4;
  [collection bk_localDuration];
  v7 = v6;
  [(BKMediaLibraryAsset *)self clampedBookmarkTime:v5 duration:v6];
  if (v7 <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = [NSNumber numberWithDouble:v8 / v7];
  }

  return v9;
}

- (NSNumber)cloudReadPercent
{
  collection = [(BKMediaLibraryAsset *)self collection];
  [collection bk_cloudBookmarkTime];
  v5 = v4;
  [collection bk_cloudDuration];
  v7 = v6;
  [(BKMediaLibraryAsset *)self clampedBookmarkTime:v5 duration:v6];
  if (v7 <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = [NSNumber numberWithDouble:v8 / v7];
  }

  return v9;
}

- (NSNumber)readPercent
{
  localAndCloudCollection = [(BKMediaLibraryAsset *)self localAndCloudCollection];
  bk_mostRecentListeningProgress = [localAndCloudCollection bk_mostRecentListeningProgress];

  return bk_mostRecentListeningProgress;
}

- (BOOL)hasBeenPlayed
{
  collection = [(BKMediaLibraryAsset *)self collection];
  if ([(BKMediaLibraryAsset *)self isCloudAsset])
  {
    bk_cloudHasBeenPlayed = [collection bk_cloudHasBeenPlayed];
  }

  else
  {
    bk_cloudHasBeenPlayed = [collection bk_localHasBeenPlayed];
  }

  v5 = bk_cloudHasBeenPlayed;

  return v5;
}

- (NSString)accountID
{
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [representativeItem valueForProperty:MPMediaItemPropertyStoreAccountID];

  if ([v3 longLongValue])
  {
    stringValue = [v3 stringValue];
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
}

- (NSString)storeID
{
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  bk_storeID = [representativeItem bk_storeID];
  stringValue = [bk_storeID stringValue];

  return stringValue;
}

- (NSString)storeRedownloadParameters
{
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  bk_storeRedownloadParameters = [representativeItem bk_storeRedownloadParameters];

  return bk_storeRedownloadParameters;
}

- (NSString)author
{
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  effectiveAlbumArtist = [representativeItem effectiveAlbumArtist];

  return effectiveAlbumArtist;
}

- (NSString)sortAuthor
{
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  v4 = [representativeItem valueForProperty:MPMediaItemPropertySortAlbumArtist];

  if (![v4 length])
  {
    representativeItem2 = [(BKMediaLibraryAsset *)self representativeItem];
    v6 = [representativeItem2 valueForProperty:MPMediaItemPropertySortArtist];

    v4 = v6;
  }

  return v4;
}

- (NSString)title
{
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  v4 = [representativeItem valueForProperty:MPMediaItemPropertyAlbumTitle];

  representativeItem2 = [(BKMediaLibraryAsset *)self representativeItem];
  v6 = [representativeItem2 valueForProperty:MPMediaItemPropertyPurchaseHistoryID];

  if (![v4 length] && objc_msgSend(v6, "longLongValue"))
  {
    representativeItem3 = [(BKMediaLibraryAsset *)self representativeItem];
    v8 = [representativeItem3 valueForProperty:MPMediaItemPropertyTitle];

    v4 = v8;
  }

  return v4;
}

- (NSString)sortTitle
{
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  v4 = [representativeItem valueForProperty:MPMediaItemPropertySortAlbumTitle];

  if (![v4 length])
  {
    representativeItem2 = [(BKMediaLibraryAsset *)self representativeItem];
    v6 = [representativeItem2 valueForProperty:MPMediaItemPropertySortTitle];

    v4 = v6;
  }

  if (![v4 length])
  {
    title = [(BKMediaLibraryAsset *)self title];

    v4 = title;
  }

  return v4;
}

- (NSURL)url
{
  title = [(BKMediaLibraryAsset *)self title];
  v4 = [MPMediaItem bk_audioBookAssetURLWithAlbumTitle:title isCloudItem:[(BKMediaLibraryAsset *)self isCloudAsset]];

  return v4;
}

- (NSString)genre
{
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [representativeItem valueForProperty:MPMediaItemPropertyGenre];

  return v3;
}

- (int64_t)fileSize
{
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [representativeItem valueForProperty:MPMediaItemPropertyFileSize];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (signed)state
{
  if ([(BKMediaLibraryAsset *)self isCloudAsset])
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (NSNumber)isExplicit
{
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [representativeItem valueForProperty:MPMediaItemPropertyIsExplicit];

  return v3;
}

- (NSDate)releaseDate
{
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [representativeItem valueForProperty:MPMediaItemPropertyReleaseDate];

  objc_opt_class();
  v4 = BUDynamicCast();

  return v4;
}

- (NSDate)purchaseDate
{
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [representativeItem valueForProperty:MPMediaItemPropertyStoreDatePurchased];

  objc_opt_class();
  v4 = BUDynamicCast();

  return v4;
}

- (NSDate)expectedDate
{
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  isPreorder = [representativeItem isPreorder];

  if (isPreorder)
  {
    releaseDate = [(BKMediaLibraryAsset *)self releaseDate];
  }

  else
  {
    releaseDate = 0;
  }

  return releaseDate;
}

- (int64_t)rating
{
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [representativeItem valueForProperty:MPMediaItemPropertyRating];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (NSString)bookDescription
{
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  v4 = [representativeItem valueForProperty:MPMediaItemPropertyShortDescriptionInfo];

  if (![v4 length])
  {
    representativeItem2 = [(BKMediaLibraryAsset *)self representativeItem];
    v6 = [representativeItem2 valueForProperty:MPMediaItemPropertyDescriptionInfo];

    v4 = v6;
  }

  return v4;
}

- (NSString)comments
{
  representativeItem = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [representativeItem valueForProperty:MPMediaItemPropertyComments];

  return v3;
}

- (NSDictionary)options
{
  storeID = [(BKMediaLibraryAsset *)self storeID];
  if (storeID)
  {
    v7 = @"storeID";
    storeID2 = [(BKMediaLibraryAsset *)self storeID];
    v8 = storeID2;
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if ([(BKMediaLibraryAsset *)self isCloudAsset])
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  storeID = [(BKMediaLibraryAsset *)self storeID];
  assetID = [(BKMediaLibraryAsset *)self assetID];
  title = [(BKMediaLibraryAsset *)self title];
  author = [(BKMediaLibraryAsset *)self author];
  storeRedownloadParameters = [(BKMediaLibraryAsset *)self storeRedownloadParameters];
  v11 = [NSString stringWithFormat:@"<%@(%p) isCloud=%@ storeID=%@ assetID=%@ title=%@ author=%@ storeRedownloadParameters=%@>", v4, self, v5, storeID, assetID, title, author, storeRedownloadParameters];

  return v11;
}

@end