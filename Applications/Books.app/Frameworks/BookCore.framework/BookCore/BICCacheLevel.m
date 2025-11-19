@interface BICCacheLevel
- (BICCacheLevel)initWithLevelID:(signed __int16)a3 highPriorityTargetQueue:(id)a4 backgroundTargetQueue:(id)a5 imageSetStore:(id)a6 comparator:(id)a7 nextCacheLevel:(id)a8;
- (id)imageMatchingDescription:(id)a3 forRequest:(id)a4;
- (int64_t)costFor:(signed __int16)a3;
- (void)_clean:(id)a3;
- (void)_getSortedBestMatchesOf:(id)a3 forRequest:(id)a4 completion:(id)a5;
- (void)_inventoryLevelOnly:(BOOL)a3 addLevelID:(BOOL)a4 completion:(id)a5;
- (void)addDescribedImages:(id)a3 forRequest:(id)a4 completion:(id)a5;
- (void)fetchImagesFromImageSet:(id)a3 matchingDescription:(id)a4 forRequest:(id)a5 completion:(id)a6;
- (void)fetchImagesMatchingDescription:(id)a3 forRequest:(id)a4 completion:(id)a5;
- (void)gatherPrunableItemsForMedium:(signed __int16)a3 withCompletion:(id)a4;
- (void)gatherPrunableItemsWithIdentifier:(id)a3 forMedium:(signed __int16)a4 withCompletion:(id)a5;
- (void)getPrimaryImageForRequest:(id)a3 completion:(id)a4;
- (void)getSortedBestMatchesOf:(id)a3 forRequest:(id)a4 completion:(id)a5;
- (void)incrementVersionForIdentifier:(id)a3;
- (void)incrementVersionForIdentifiers:(id)a3;
- (void)pruneItems:(id)a3 forMedium:(signed __int16)a4 withCompletion:(id)a5;
- (void)removeDescribedImages:(id)a3 forRequest:(id)a4 completion:(id)a5;
@end

@implementation BICCacheLevel

- (BICCacheLevel)initWithLevelID:(signed __int16)a3 highPriorityTargetQueue:(id)a4 backgroundTargetQueue:(id)a5 imageSetStore:(id)a6 comparator:(id)a7 nextCacheLevel:(id)a8
{
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = BICCacheLevel;
  v18 = [(BICCacheLevel *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_levelID = a3;
    objc_storeStrong(&v18->_lowPriorityWorkQ, a5);
    objc_storeStrong(&v19->_highPriorityWorkQ, a4);
    if ([v15 conformsToProtocol:{&OBJC_PROTOCOL___BICImageSetStoring, v21, v22}])
    {
      objc_storeStrong(&v19->_imageSetStore, a6);
    }

    if ([v16 conformsToProtocol:&OBJC_PROTOCOL___BICDescribedImageComparing])
    {
      objc_storeStrong(&v19->_imageComparator, a7);
    }

    if ([v17 conformsToProtocol:&OBJC_PROTOCOL___BICLevelCaching])
    {
      objc_storeStrong(&v19->_nextCacheLevel, a8);
    }
  }

  return v19;
}

- (id)imageMatchingDescription:(id)a3 forRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BICCacheLevel *)self imageSetStore];
  v9 = [v8 imageMatchingDescription:v7 forRequest:v6];

  return v9;
}

- (void)fetchImagesMatchingDescription:(id)a3 forRequest:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BICCacheLevel *)self imageSetStore];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_196EC;
  v15[3] = &unk_2C8320;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 withImageSetForDescribedImage:v14 performBlock:v15];
}

- (void)fetchImagesFromImageSet:(id)a3 matchingDescription:(id)a4 forRequest:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(BICCacheLevel *)self imageSetStore];
  v15 = [v14 fetchEntryFromImageSet:v10 matchingDescription:v11 forRequest:v12];

  if (!v15)
  {
    v18 = [(BICCacheLevel *)self nextCacheLevel];

    if (!v18)
    {
      [BICCacheStats incrementCounter:kBICCacheStatsCounterL4Miss[0]];
      v21 = objc_retainBlock(v13);
      v22 = v21;
      if (v21)
      {
        (*(v21 + 2))(v21, 0);
      }

      goto LABEL_14;
    }

    v19 = [(BICCacheLevel *)self levelID];
    if (v19 == 1)
    {
      v20 = kBICCacheStatsCounterL2Miss;
    }

    else
    {
      if (v19 != 2)
      {
LABEL_13:
        v22 = [(BICCacheLevel *)self nextCacheLevel];
        [v22 fetchImagesFromImageSet:v10 matchingDescription:v11 forRequest:v12 completion:v13];
LABEL_14:

        goto LABEL_15;
      }

      v20 = kBICCacheStatsCounterL3Miss;
    }

    [BICCacheStats incrementCounter:*v20];
    goto LABEL_13;
  }

  v16 = [(BICCacheLevel *)self levelID]- 1;
  if (v16 <= 2)
  {
    [BICCacheStats incrementCounter:*off_2C84A8[v16]];
  }

  objc_initWeak(&location, self);
  v17 = [(BICCacheLevel *)self imageSetStore];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_19A60;
  v23[3] = &unk_2C8348;
  objc_copyWeak(&v27, &location);
  v24 = v12;
  v26 = v13;
  v25 = v11;
  [v17 fetchImagesFromImageEntry:v15 matchingDescription:v25 forRequest:v24 completion:v23];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
LABEL_15:
}

- (void)getPrimaryImageForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BCImageCacheLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109378;
    HIDWORD(buf) = [(BICCacheLevel *)self levelID];
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "BICCacheLevel: Getting primary image for level: %hd for request: %@", &buf, 0x12u);
  }

  objc_initWeak(&buf, self);
  v9 = [(BICCacheLevel *)self imageSetStore];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_19D40;
  v12[3] = &unk_2C8370;
  objc_copyWeak(&v15, &buf);
  v10 = v7;
  v14 = v10;
  v11 = v6;
  v13 = v11;
  [v9 getPrimaryImageForRequest:v11 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&buf);
}

- (void)addDescribedImages:(id)a3 forRequest:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = [(BICCacheLevel *)self nextCacheLevel];

  if (v12)
  {
    dispatch_group_enter(v11);
  }

  v13 = [(BICCacheLevel *)self imageSetStore];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1A09C;
  v23[3] = &unk_2C7D40;
  v14 = v11;
  v24 = v14;
  [v13 addDescribedImages:v10 forRequest:v9 completion:v23];

  v15 = [(BICCacheLevel *)self nextCacheLevel];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1A0A4;
  v21[3] = &unk_2C7D40;
  v22 = v14;
  v16 = v14;
  [v15 addDescribedImages:v10 forRequest:v9 completion:v21];

  v17 = [(BICCacheLevel *)self highPriorityWorkQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1A0AC;
  block[3] = &unk_2C8398;
  v20 = v8;
  v18 = v8;
  dispatch_group_notify(v16, v17, block);
}

- (void)removeDescribedImages:(id)a3 forRequest:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BICCacheLevel *)self imageSetStore];
  [v11 removeDescribedImages:v10 completion:v8];

  v12 = [(BICCacheLevel *)self nextCacheLevel];
  [v12 removeDescribedImages:v10 forRequest:v9 completion:v8];
}

- (void)getSortedBestMatchesOf:(id)a3 forRequest:(id)a4 completion:(id)a5
{
  v8 = BICCacheStatsOperationAsyncFetchBestAttempt[0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  [BICCacheStats logOperation:v8 forRequest:v10];
  [(BICCacheLevel *)self _getSortedBestMatchesOf:v11 forRequest:v10 completion:v9];
}

- (void)_getSortedBestMatchesOf:(id)a3 forRequest:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BICCacheLevel *)self imageSetStore];
  v12 = [v11 supportsImageSets];

  v13 = [(BICCacheLevel *)self imageSetStore];
  v14 = v13;
  if (v12)
  {
    [v13 getSortedBestMatchOf:v8 completion:v10];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1A398;
    v15[3] = &unk_2C83C0;
    v15[4] = self;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    [v14 getSortedBestMatchOf:v16 completion:v15];
  }
}

- (void)incrementVersionForIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(BICCacheLevel *)self imageSetStore];
  [v5 incrementVersionForIdentifiers:v4];

  v6 = [(BICCacheLevel *)self nextCacheLevel];
  [v6 incrementVersionForIdentifiers:v4];
}

- (void)incrementVersionForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BICCacheLevel *)self imageSetStore];
  [v5 incrementVersionForIdentifier:v4];

  v6 = [(BICCacheLevel *)self nextCacheLevel];
  [v6 incrementVersionForIdentifier:v4];
}

- (int64_t)costFor:(signed __int16)a3
{
  v3 = a3;
  v5 = [(BICCacheLevel *)self nextCacheLevel];
  v6 = [v5 costFor:v3];

  v7 = [(BICCacheLevel *)self imageSetStore];
  v8 = [v7 costFor:v3];

  return v6 + v8;
}

- (void)gatherPrunableItemsForMedium:(signed __int16)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(BICCacheLevel *)self imageSetStore];
  v8 = [(BICCacheLevel *)self levelID];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1A7AC;
  v10[3] = &unk_2C8410;
  v12 = v4;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v7 gatherPrunableItemsForMedium:v4 level:v8 withCompletion:v10];
}

- (void)gatherPrunableItemsWithIdentifier:(id)a3 forMedium:(signed __int16)a4 withCompletion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(BICCacheLevel *)self imageSetStore];
  v11 = [(BICCacheLevel *)self levelID];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1AB14;
  v14[3] = &unk_2C8438;
  v14[4] = self;
  v15 = v8;
  v17 = v6;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [v10 gatherPrunableItemsWithIdentifier:v13 forMedium:v6 level:v11 withCompletion:v14];
}

- (void)pruneItems:(id)a3 forMedium:(signed __int16)a4 withCompletion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(BICCacheLevel *)self imageSetStore];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1AE78;
  v13[3] = &unk_2C8438;
  v13[4] = self;
  v14 = v8;
  v16 = v6;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [v10 pruneItems:v12 forMedium:v6 withCompletion:v13];
}

- (void)_inventoryLevelOnly:(BOOL)a3 addLevelID:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(BICCacheLevel *)self imageSetStore];
  v10 = [(BICCacheLevel *)self levelID];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1B1CC;
  v12[3] = &unk_2C8410;
  v14 = a3;
  v15 = v5;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v9 _inventoryLevel:v10 addLevelID:v5 completion:v12];
}

- (void)_clean:(id)a3
{
  v4 = a3;
  v5 = [(BICCacheLevel *)self imageSetStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1B438;
  v7[3] = &unk_2C8488;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 _clean:v7];
}

@end