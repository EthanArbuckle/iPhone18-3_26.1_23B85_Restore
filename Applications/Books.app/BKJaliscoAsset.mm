@interface BKJaliscoAsset
+ (id)newAssetFromServerItem:(id)item dataSourceIdentifier:(id)identifier;
+ (id)newAssetWithStoreID:(id)d dataSourceIdentifier:(id)identifier;
@end

@implementation BKJaliscoAsset

+ (id)newAssetFromServerItem:(id)item dataSourceIdentifier:(id)identifier
{
  itemCopy = item;
  identifierCopy = identifier;
  v7 = objc_alloc_init(BKJaliscoAsset);
  isAudiobook = [itemCopy isAudiobook];
  bOOLValue = [isAudiobook BOOLValue];

  [(BKJaliscoAsset *)v7 setAccountID:0];
  storeID = [itemCopy storeID];
  [(BKJaliscoAsset *)v7 setAssetID:storeID];

  storeID2 = [itemCopy storeID];
  [(BKJaliscoAsset *)v7 setStoreID:storeID2];

  artist = [itemCopy artist];
  [(BKJaliscoAsset *)v7 setAuthor:artist];

  title = [itemCopy title];
  [(BKJaliscoAsset *)v7 setTitle:title];

  sortedTitle = [itemCopy sortedTitle];
  [(BKJaliscoAsset *)v7 setSortTitle:sortedTitle];

  sortedAuthor = [itemCopy sortedAuthor];
  [(BKJaliscoAsset *)v7 setSortAuthor:sortedAuthor];

  storeID3 = [itemCopy storeID];
  v17 = [NSString stringWithFormat:@"%@://book/%@", @"ibooks-purchases", storeID3];
  v18 = [NSURL URLWithString:v17];
  [(BKJaliscoAsset *)v7 setUrl:v18];

  genre = [itemCopy genre];
  [(BKJaliscoAsset *)v7 setGenre:genre];

  [(BKJaliscoAsset *)v7 setDataSourceIdentifier:identifierCopy];
  [(BKJaliscoAsset *)v7 setSample:0];
  [(BKJaliscoAsset *)v7 setProof:0];
  [(BKJaliscoAsset *)v7 setCompressed:0];
  [(BKJaliscoAsset *)v7 setLocked:0];
  [(BKJaliscoAsset *)v7 setGeneration:0x7FFFFFFFFFFFFFFFLL];
  [(BKJaliscoAsset *)v7 setFileSize:0];
  if (bOOLValue)
  {
    v20 = 6;
  }

  else
  {
    v20 = 1;
  }

  [(BKJaliscoAsset *)v7 setContentType:v20];
  [(BKJaliscoAsset *)v7 setState:3];
  isExplicit = [itemCopy isExplicit];
  [(BKJaliscoAsset *)v7 setIsExplicit:isExplicit];

  purchasedAt = [itemCopy purchasedAt];
  [(BKJaliscoAsset *)v7 setDataSourceInsertionDate:purchasedAt];

  [(BKJaliscoAsset *)v7 setReleaseDate:0];
  purchasedAt2 = [itemCopy purchasedAt];
  [(BKJaliscoAsset *)v7 setPurchaseDate:purchasedAt2];

  expectedDate = [itemCopy expectedDate];
  [(BKJaliscoAsset *)v7 setExpectedDate:expectedDate];

  [(BKJaliscoAsset *)v7 setShouldDisableOptimizeSpeed:0];
  [(BKJaliscoAsset *)v7 setShouldDisableTouchEmulation:0];
  [(BKJaliscoAsset *)v7 setDesktopSupportLevel:0];
  [(BKJaliscoAsset *)v7 setPageProgressionDirection:0];
  [(BKJaliscoAsset *)v7 setPageCount:0];
  [(BKJaliscoAsset *)v7 setRating:0];
  [(BKJaliscoAsset *)v7 setUpdateDate:0];
  [(BKJaliscoAsset *)v7 setVersionNumber:0];
  [(BKJaliscoAsset *)v7 setKind:0];
  [(BKJaliscoAsset *)v7 setYear:0];
  [(BKJaliscoAsset *)v7 setGrouping:0];
  [(BKJaliscoAsset *)v7 setComputedRating:0];
  [(BKJaliscoAsset *)v7 setMetadataMigrationVersion:0];
  if (bOOLValue)
  {
    objc_opt_class();
    additionalAudiobookInfo = [itemCopy additionalAudiobookInfo];
    v26 = [additionalAudiobookInfo objectForKeyedSubscript:@"daap.songtime"];
    v27 = BUDynamicCast();

    if (!v27)
    {
      v28 = BKLibraryDataSourceJaliscoLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1007910B4(v7, v28);
      }
    }

    [v27 doubleValue];
    v30 = [NSNumber numberWithDouble:v29 / 1000.0];
    [(BKJaliscoAsset *)v7 setDuration:v30];
  }

  return v7;
}

+ (id)newAssetWithStoreID:(id)d dataSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dCopy = d;
  v7 = objc_alloc_init(BKJaliscoAsset);
  [(BKJaliscoAsset *)v7 setAccountID:0];
  [(BKJaliscoAsset *)v7 setAssetID:dCopy];
  [(BKJaliscoAsset *)v7 setStoreID:dCopy];

  [(BKJaliscoAsset *)v7 setAuthor:0];
  [(BKJaliscoAsset *)v7 setTitle:0];
  [(BKJaliscoAsset *)v7 setSortTitle:0];
  [(BKJaliscoAsset *)v7 setUrl:0];
  [(BKJaliscoAsset *)v7 setGenre:0];
  [(BKJaliscoAsset *)v7 setDataSourceIdentifier:identifierCopy];

  [(BKJaliscoAsset *)v7 setSample:0];
  [(BKJaliscoAsset *)v7 setProof:0];
  [(BKJaliscoAsset *)v7 setCompressed:0];
  [(BKJaliscoAsset *)v7 setLocked:0];
  [(BKJaliscoAsset *)v7 setGeneration:0x7FFFFFFFFFFFFFFFLL];
  [(BKJaliscoAsset *)v7 setFileSize:0];
  [(BKJaliscoAsset *)v7 setContentType:0];
  [(BKJaliscoAsset *)v7 setState:0];
  [(BKJaliscoAsset *)v7 setIsExplicit:0];
  [(BKJaliscoAsset *)v7 setDataSourceInsertionDate:0];
  [(BKJaliscoAsset *)v7 setReleaseDate:0];
  [(BKJaliscoAsset *)v7 setPurchaseDate:0];
  [(BKJaliscoAsset *)v7 setExpectedDate:0];
  [(BKJaliscoAsset *)v7 setShouldDisableOptimizeSpeed:0];
  [(BKJaliscoAsset *)v7 setShouldDisableTouchEmulation:0];
  [(BKJaliscoAsset *)v7 setDesktopSupportLevel:0];
  [(BKJaliscoAsset *)v7 setPageProgressionDirection:0];
  [(BKJaliscoAsset *)v7 setPageCount:0];
  [(BKJaliscoAsset *)v7 setRating:0];
  [(BKJaliscoAsset *)v7 setUpdateDate:0];
  [(BKJaliscoAsset *)v7 setVersionNumber:0];
  [(BKJaliscoAsset *)v7 setKind:0];
  [(BKJaliscoAsset *)v7 setYear:0];
  [(BKJaliscoAsset *)v7 setGrouping:0];
  [(BKJaliscoAsset *)v7 setComputedRating:0];
  [(BKJaliscoAsset *)v7 setMetadataMigrationVersion:0];
  return v7;
}

@end