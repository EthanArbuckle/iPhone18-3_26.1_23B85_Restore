@interface STStorageCacheAssetCell
+ (id)specifierForAsset:(id)a3;
- (id)dateStringForAsset:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation STStorageCacheAssetCell

+ (id)specifierForAsset:(id)a3
{
  v3 = a3;
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_2D2D0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v5 = [NSNumber numberWithBool:1];
  [v4 setProperty:v5 forKey:PSEnabledKey];

  if (v3)
  {
    [v4 setProperty:v3 forKey:@"stCacheAsset"];
  }

  return v4;
}

- (id)dateStringForAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 consumedDate];
  v5 = v4;
  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
    if (v6 != 0.0)
    {
      v7 = STStorageLocStr(@"VIEWED_FMT");
      v8 = STFormattedShortDate();
      v9 = [NSString stringWithFormat:v7, v8];

LABEL_10:
      goto LABEL_11;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_9:
    v9 = STStorageLocStr(@"NEVER_VIEWED");
    goto LABEL_10;
  }

  v10 = [v3 lastViewedDate];

  if (v10)
  {
    v9 = STStorageLocStr(@"PARTIALLY_VIEWED");

    goto LABEL_11;
  }

  v11 = [v3 downloadCompletionDate];
  if (v11)
  {

    v5 = 0;
    goto LABEL_9;
  }

  v5 = [v3 downloadStartDate];

  if (!v5)
  {
    goto LABEL_9;
  }

  v9 = STStorageLocStr(@"PARTIAL_DOWNLOAD");
LABEL_11:

  return v9;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = STStorageCacheAssetCell;
  [(STStorageCacheAssetCell *)&v19 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:@"stCacheAsset"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 displayName];
    [(STStorageCacheAssetCell *)self setTitle:v7];

    v8 = [(STStorageCacheAssetCell *)self dateStringForAsset:v6];
    [(STStorageCacheAssetCell *)self setInfo:v8];

    v9 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_FBB0;
    block[3] = &unk_2CA38;
    v10 = v6;
    v17 = v10;
    v18 = self;
    dispatch_async(v9, block);

    v11 = [v4 propertyForKey:@"_hideSize"];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      [(STStorageCacheAssetCell *)self setSizeString:&stru_2D2D0];
    }

    else
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_FD10;
      v13[3] = &unk_2CA38;
      v14 = v10;
      v15 = self;
      dispatch_async(v9, v13);
    }
  }
}

@end