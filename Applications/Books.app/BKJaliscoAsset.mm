@interface BKJaliscoAsset
+ (id)newAssetFromServerItem:(id)a3 dataSourceIdentifier:(id)a4;
+ (id)newAssetWithStoreID:(id)a3 dataSourceIdentifier:(id)a4;
@end

@implementation BKJaliscoAsset

+ (id)newAssetFromServerItem:(id)a3 dataSourceIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(BKJaliscoAsset);
  v8 = [v5 isAudiobook];
  v9 = [v8 BOOLValue];

  [(BKJaliscoAsset *)v7 setAccountID:0];
  v10 = [v5 storeID];
  [(BKJaliscoAsset *)v7 setAssetID:v10];

  v11 = [v5 storeID];
  [(BKJaliscoAsset *)v7 setStoreID:v11];

  v12 = [v5 artist];
  [(BKJaliscoAsset *)v7 setAuthor:v12];

  v13 = [v5 title];
  [(BKJaliscoAsset *)v7 setTitle:v13];

  v14 = [v5 sortedTitle];
  [(BKJaliscoAsset *)v7 setSortTitle:v14];

  v15 = [v5 sortedAuthor];
  [(BKJaliscoAsset *)v7 setSortAuthor:v15];

  v16 = [v5 storeID];
  v17 = [NSString stringWithFormat:@"%@://book/%@", @"ibooks-purchases", v16];
  v18 = [NSURL URLWithString:v17];
  [(BKJaliscoAsset *)v7 setUrl:v18];

  v19 = [v5 genre];
  [(BKJaliscoAsset *)v7 setGenre:v19];

  [(BKJaliscoAsset *)v7 setDataSourceIdentifier:v6];
  [(BKJaliscoAsset *)v7 setSample:0];
  [(BKJaliscoAsset *)v7 setProof:0];
  [(BKJaliscoAsset *)v7 setCompressed:0];
  [(BKJaliscoAsset *)v7 setLocked:0];
  [(BKJaliscoAsset *)v7 setGeneration:0x7FFFFFFFFFFFFFFFLL];
  [(BKJaliscoAsset *)v7 setFileSize:0];
  if (v9)
  {
    v20 = 6;
  }

  else
  {
    v20 = 1;
  }

  [(BKJaliscoAsset *)v7 setContentType:v20];
  [(BKJaliscoAsset *)v7 setState:3];
  v21 = [v5 isExplicit];
  [(BKJaliscoAsset *)v7 setIsExplicit:v21];

  v22 = [v5 purchasedAt];
  [(BKJaliscoAsset *)v7 setDataSourceInsertionDate:v22];

  [(BKJaliscoAsset *)v7 setReleaseDate:0];
  v23 = [v5 purchasedAt];
  [(BKJaliscoAsset *)v7 setPurchaseDate:v23];

  v24 = [v5 expectedDate];
  [(BKJaliscoAsset *)v7 setExpectedDate:v24];

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
  if (v9)
  {
    objc_opt_class();
    v25 = [v5 additionalAudiobookInfo];
    v26 = [v25 objectForKeyedSubscript:@"daap.songtime"];
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

+ (id)newAssetWithStoreID:(id)a3 dataSourceIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(BKJaliscoAsset);
  [(BKJaliscoAsset *)v7 setAccountID:0];
  [(BKJaliscoAsset *)v7 setAssetID:v6];
  [(BKJaliscoAsset *)v7 setStoreID:v6];

  [(BKJaliscoAsset *)v7 setAuthor:0];
  [(BKJaliscoAsset *)v7 setTitle:0];
  [(BKJaliscoAsset *)v7 setSortTitle:0];
  [(BKJaliscoAsset *)v7 setUrl:0];
  [(BKJaliscoAsset *)v7 setGenre:0];
  [(BKJaliscoAsset *)v7 setDataSourceIdentifier:v5];

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