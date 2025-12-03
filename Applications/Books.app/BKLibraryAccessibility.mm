@interface BKLibraryAccessibility
+ (id)bkaxdefaultManager;
- (id)_bkaxUiChildContext;
- (id)bkaxLibraryAssetOnMainQueueWithAssetID:(id)d;
- (unint64_t)bkaxCountOfSeriesLibraryAssetsWithSeriesID:(id)d total:(unint64_t *)total;
@end

@implementation BKLibraryAccessibility

+ (id)bkaxdefaultManager
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_100027440;
  v8 = sub_100027658;
  v9 = 0;
  if (__IMAccessibilityPerformSafeBlock())
  {
    abort();
  }

  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (id)bkaxLibraryAssetOnMainQueueWithAssetID:(id)d
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100027440;
  v10 = sub_100027658;
  v11 = 0;
  dCopy = d;
  if (__IMAccessibilityPerformSafeBlock())
  {
    abort();
  }

  v4 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v4;
}

- (unint64_t)bkaxCountOfSeriesLibraryAssetsWithSeriesID:(id)d total:(unint64_t *)total
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  dCopy = d;
  if (__IMAccessibilityPerformSafeBlock())
  {
    abort();
  }

  if (total)
  {
    *total = v13[3];
  }

  v6 = v9[3];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);

  return v6;
}

- (id)_bkaxUiChildContext
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_100027440;
  v8 = sub_100027658;
  v9 = 0;
  if (__IMAccessibilityPerformSafeBlock())
  {
    abort();
  }

  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

@end