@interface STStorageCacheAssetCell
+ (id)specifierForAsset:(id)asset;
- (id)dateStringForAsset:(id)asset;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation STStorageCacheAssetCell

+ (id)specifierForAsset:(id)asset
{
  assetCopy = asset;
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_AD3C8 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v5 = [NSNumber numberWithBool:1];
  [v4 setProperty:v5 forKey:PSEnabledKey];

  if (assetCopy)
  {
    [v4 setProperty:assetCopy forKey:@"stCacheAsset"];
  }

  return v4;
}

- (id)dateStringForAsset:(id)asset
{
  assetCopy = asset;
  consumedDate = [assetCopy consumedDate];
  downloadStartDate = consumedDate;
  if (consumedDate)
  {
    [consumedDate timeIntervalSinceReferenceDate];
    if (v6 != 0.0)
    {
      v7 = STLocalizedString(@"Watched on: %@");
      v8 = STFormattedShortDate();
      v9 = [NSString stringWithFormat:v7, v8];

LABEL_10:
      goto LABEL_11;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_9:
    v9 = STLocalizedString(@"Not yet watched");
    goto LABEL_10;
  }

  lastViewedDate = [assetCopy lastViewedDate];

  if (lastViewedDate)
  {
    v9 = STLocalizedString(@"Partially watched");

    goto LABEL_11;
  }

  downloadCompletionDate = [assetCopy downloadCompletionDate];
  if (downloadCompletionDate)
  {

    downloadStartDate = 0;
    goto LABEL_9;
  }

  downloadStartDate = [assetCopy downloadStartDate];

  if (!downloadStartDate)
  {
    goto LABEL_9;
  }

  v9 = STLocalizedString(@"Partially downloaded");
LABEL_11:

  return v9;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v19.receiver = self;
  v19.super_class = STStorageCacheAssetCell;
  [(STStorageCacheAssetCell *)&v19 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"stCacheAsset"];
  v6 = v5;
  if (v5)
  {
    displayName = [v5 displayName];
    [(STStorageCacheAssetCell *)self setTitle:displayName];

    v8 = [(STStorageCacheAssetCell *)self dateStringForAsset:v6];
    [(STStorageCacheAssetCell *)self setInfo:v8];

    v9 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C;
    block[3] = &unk_AA650;
    v10 = v6;
    v17 = v10;
    selfCopy = self;
    dispatch_async(v9, block);

    v11 = [specifierCopy propertyForKey:@"_hideSize"];
    bOOLValue = [v11 BOOLValue];

    if (bOOLValue)
    {
      [(STStorageCacheAssetCell *)self setSizeString:&stru_AD3C8];
    }

    else
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1017C;
      v13[3] = &unk_AA650;
      v14 = v10;
      selfCopy2 = self;
      dispatch_async(v9, v13);
    }
  }
}

@end