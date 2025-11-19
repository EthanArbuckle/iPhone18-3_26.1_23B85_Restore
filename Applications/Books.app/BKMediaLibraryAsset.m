@interface BKMediaLibraryAsset
+ (id)newAssetFromRepresentativeMediaItem:(id)a3 withDataSourceIdentifier:(id)a4;
- (BKMediaLibraryAsset)initWithRepresentativeMediaItem:(id)a3 assetID:(id)a4 dataSourceIdentifier:(id)a5;
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
- (double)clampedBookmarkTime:(double)a3 duration:(double)a4;
- (id)localAndCloudCollection;
- (int64_t)fileSize;
- (int64_t)rating;
- (signed)state;
@end

@implementation BKMediaLibraryAsset

+ (id)newAssetFromRepresentativeMediaItem:(id)a3 withDataSourceIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 bk_assetID];
  if ([v7 length])
  {
    v8 = [[BKMediaLibraryAsset alloc] initWithRepresentativeMediaItem:v5 assetID:v7 dataSourceIdentifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BKMediaLibraryAsset)initWithRepresentativeMediaItem:(id)a3 assetID:(id)a4 dataSourceIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = BKMediaLibraryAsset;
  v12 = [(BKMediaLibraryAsset *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_representativeItem, a3);
    objc_storeStrong(&v13->_assetID, a4);
    objc_storeStrong(&v13->_dataSourceIdentifier, a5);
    v14 = [(MPMediaItem *)v13->_representativeItem releaseDate];
    dataSourceInsertionDate = v13->_dataSourceInsertionDate;
    v13->_dataSourceInsertionDate = v14;

    v16 = [(MPMediaItem *)v13->_representativeItem bk_isJaliscoAsset];
    v13->_cloudAsset = v16;
    if ((v16 & 1) == 0)
    {
      v17 = [v9 bk_storePlaylistID];
      if (v17)
      {
        v18 = objc_alloc_init(BLMetadataStore);
        v19 = [v17 longLongValue];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100122AE4;
        v21[3] = &unk_100A07EE0;
        v22 = v13;
        [v18 racGUIDForStoreID:v19 result:v21];
      }
    }
  }

  return v13;
}

- (MPMediaItemCollection)collection
{
  v3 = +[MPMediaQuery bk_audiobooksQuery];
  objc_opt_class();
  v4 = [(BKMediaLibraryAsset *)self representativeItem];
  v5 = [v4 valueForProperty:MPMediaItemPropertyAlbumPersistentID];
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

    v10 = [v3 collections];
    v8 = [v10 firstObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)localAndCloudCollection
{
  v3 = +[MPMediaQuery bk_audiobooksQuery];
  objc_opt_class();
  v4 = [(BKMediaLibraryAsset *)self representativeItem];
  v5 = [v4 valueForProperty:MPMediaItemPropertyAlbumPersistentID];
  v6 = BUDynamicCast();

  if (v6)
  {
    [v3 setIgnoreSystemFilterPredicates:1];
    v7 = [MPMediaPropertyPredicate predicateWithValue:v6 forProperty:MPMediaItemPropertyAlbumPersistentID];
    [v3 addFilterPredicate:v7];

    v8 = [v3 collections];
    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)clampedBookmarkTime:(double)a3 duration:(double)a4
{
  if (a3 <= a4)
  {
    if (a3 < 0.0)
    {
      return 0.0;
    }

    else
    {
      return a3;
    }
  }

  else
  {
    v5 = a4;
    v7 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [(BKMediaLibraryAsset *)self title];
      v10 = [(BKMediaLibraryAsset *)self author];
      v11 = 134218754;
      v12 = a3;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2048;
      v18 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "bookmark time %lf for asset %@ by %@ is greater than duration %lf", &v11, 0x2Au);
    }
  }

  return v5;
}

- (NSNumber)localReadPercent
{
  v3 = [(BKMediaLibraryAsset *)self collection];
  [v3 bk_localBookmarkTime];
  v5 = v4;
  [v3 bk_localDuration];
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
  v3 = [(BKMediaLibraryAsset *)self collection];
  [v3 bk_cloudBookmarkTime];
  v5 = v4;
  [v3 bk_cloudDuration];
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
  v2 = [(BKMediaLibraryAsset *)self localAndCloudCollection];
  v3 = [v2 bk_mostRecentListeningProgress];

  return v3;
}

- (BOOL)hasBeenPlayed
{
  v3 = [(BKMediaLibraryAsset *)self collection];
  if ([(BKMediaLibraryAsset *)self isCloudAsset])
  {
    v4 = [v3 bk_cloudHasBeenPlayed];
  }

  else
  {
    v4 = [v3 bk_localHasBeenPlayed];
  }

  v5 = v4;

  return v5;
}

- (NSString)accountID
{
  v2 = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [v2 valueForProperty:MPMediaItemPropertyStoreAccountID];

  if ([v3 longLongValue])
  {
    v4 = [v3 stringValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)storeID
{
  v2 = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [v2 bk_storeID];
  v4 = [v3 stringValue];

  return v4;
}

- (NSString)storeRedownloadParameters
{
  v2 = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [v2 bk_storeRedownloadParameters];

  return v3;
}

- (NSString)author
{
  v2 = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [v2 effectiveAlbumArtist];

  return v3;
}

- (NSString)sortAuthor
{
  v3 = [(BKMediaLibraryAsset *)self representativeItem];
  v4 = [v3 valueForProperty:MPMediaItemPropertySortAlbumArtist];

  if (![v4 length])
  {
    v5 = [(BKMediaLibraryAsset *)self representativeItem];
    v6 = [v5 valueForProperty:MPMediaItemPropertySortArtist];

    v4 = v6;
  }

  return v4;
}

- (NSString)title
{
  v3 = [(BKMediaLibraryAsset *)self representativeItem];
  v4 = [v3 valueForProperty:MPMediaItemPropertyAlbumTitle];

  v5 = [(BKMediaLibraryAsset *)self representativeItem];
  v6 = [v5 valueForProperty:MPMediaItemPropertyPurchaseHistoryID];

  if (![v4 length] && objc_msgSend(v6, "longLongValue"))
  {
    v7 = [(BKMediaLibraryAsset *)self representativeItem];
    v8 = [v7 valueForProperty:MPMediaItemPropertyTitle];

    v4 = v8;
  }

  return v4;
}

- (NSString)sortTitle
{
  v3 = [(BKMediaLibraryAsset *)self representativeItem];
  v4 = [v3 valueForProperty:MPMediaItemPropertySortAlbumTitle];

  if (![v4 length])
  {
    v5 = [(BKMediaLibraryAsset *)self representativeItem];
    v6 = [v5 valueForProperty:MPMediaItemPropertySortTitle];

    v4 = v6;
  }

  if (![v4 length])
  {
    v7 = [(BKMediaLibraryAsset *)self title];

    v4 = v7;
  }

  return v4;
}

- (NSURL)url
{
  v3 = [(BKMediaLibraryAsset *)self title];
  v4 = [MPMediaItem bk_audioBookAssetURLWithAlbumTitle:v3 isCloudItem:[(BKMediaLibraryAsset *)self isCloudAsset]];

  return v4;
}

- (NSString)genre
{
  v2 = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [v2 valueForProperty:MPMediaItemPropertyGenre];

  return v3;
}

- (int64_t)fileSize
{
  v2 = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [v2 valueForProperty:MPMediaItemPropertyFileSize];
  v4 = [v3 longLongValue];

  return v4;
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
  v2 = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [v2 valueForProperty:MPMediaItemPropertyIsExplicit];

  return v3;
}

- (NSDate)releaseDate
{
  v2 = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [v2 valueForProperty:MPMediaItemPropertyReleaseDate];

  objc_opt_class();
  v4 = BUDynamicCast();

  return v4;
}

- (NSDate)purchaseDate
{
  v2 = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [v2 valueForProperty:MPMediaItemPropertyStoreDatePurchased];

  objc_opt_class();
  v4 = BUDynamicCast();

  return v4;
}

- (NSDate)expectedDate
{
  v3 = [(BKMediaLibraryAsset *)self representativeItem];
  v4 = [v3 isPreorder];

  if (v4)
  {
    v5 = [(BKMediaLibraryAsset *)self releaseDate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)rating
{
  v2 = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [v2 valueForProperty:MPMediaItemPropertyRating];
  v4 = [v3 longLongValue];

  return v4;
}

- (NSString)bookDescription
{
  v3 = [(BKMediaLibraryAsset *)self representativeItem];
  v4 = [v3 valueForProperty:MPMediaItemPropertyShortDescriptionInfo];

  if (![v4 length])
  {
    v5 = [(BKMediaLibraryAsset *)self representativeItem];
    v6 = [v5 valueForProperty:MPMediaItemPropertyDescriptionInfo];

    v4 = v6;
  }

  return v4;
}

- (NSString)comments
{
  v2 = [(BKMediaLibraryAsset *)self representativeItem];
  v3 = [v2 valueForProperty:MPMediaItemPropertyComments];

  return v3;
}

- (NSDictionary)options
{
  v3 = [(BKMediaLibraryAsset *)self storeID];
  if (v3)
  {
    v7 = @"storeID";
    v4 = [(BKMediaLibraryAsset *)self storeID];
    v8 = v4;
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

  v6 = [(BKMediaLibraryAsset *)self storeID];
  v7 = [(BKMediaLibraryAsset *)self assetID];
  v8 = [(BKMediaLibraryAsset *)self title];
  v9 = [(BKMediaLibraryAsset *)self author];
  v10 = [(BKMediaLibraryAsset *)self storeRedownloadParameters];
  v11 = [NSString stringWithFormat:@"<%@(%p) isCloud=%@ storeID=%@ assetID=%@ title=%@ author=%@ storeRedownloadParameters=%@>", v4, self, v5, v6, v7, v8, v9, v10];

  return v11;
}

@end