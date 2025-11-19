@interface BICImageSetStorePersistance
- (BICImageSetStorePersistance)initWithLevelID:(signed __int16)a3 comparator:(id)a4 dataStore:(id)a5;
- (BICImageSetStorePersistance)initWithLevelID:(signed __int16)a3 imageSetPersistence:(id)a4 comparator:(id)a5 dataStore:(id)a6;
- (id)fetchEntryFromImageSet:(id)a3 matchingDescription:(id)a4 forRequest:(id)a5;
- (int64_t)costFor:(signed __int16)a3;
- (signed)storingMedium;
- (void)_afterAllStoreOperationsCompletedForDescribedImage:(id)a3 performBlock:(id)a4;
- (void)_clean:(id)a3;
- (void)_inventoryLevel:(signed __int16)a3 addLevelID:(BOOL)a4 completion:(id)a5;
- (void)addDescribedImages:(id)a3 forRequest:(id)a4 completion:(id)a5;
- (void)fetchImagesFromImageEntry:(id)a3 matchingDescription:(id)a4 forRequest:(id)a5 completion:(id)a6;
- (void)gatherPrunableItemsForMedium:(signed __int16)a3 level:(signed __int16)a4 withCompletion:(id)a5;
- (void)gatherPrunableItemsWithIdentifier:(id)a3 forMedium:(signed __int16)a4 level:(signed __int16)a5 withCompletion:(id)a6;
- (void)getPrimaryImageForRequest:(id)a3 completion:(id)a4;
- (void)getSortedBestMatchOf:(id)a3 completion:(id)a4;
- (void)incrementVersionForIdentifier:(id)a3;
- (void)incrementVersionForIdentifiers:(id)a3;
- (void)pruneItems:(id)a3 forMedium:(signed __int16)a4 withCompletion:(id)a5;
- (void)removeDescribedImages:(id)a3 completion:(id)a4;
- (void)withImageSetForDescribedImage:(id)a3 performBlock:(id)a4;
@end

@implementation BICImageSetStorePersistance

- (BICImageSetStorePersistance)initWithLevelID:(signed __int16)a3 comparator:(id)a4 dataStore:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BICImageSetStorePersistance;
  v11 = [(BICImageSetStorePersistance *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_levelID = a3;
    objc_storeStrong(&v11->_dataStore, a5);
    objc_storeStrong(&v12->_comparator, a4);
  }

  return v12;
}

- (BICImageSetStorePersistance)initWithLevelID:(signed __int16)a3 imageSetPersistence:(id)a4 comparator:(id)a5 dataStore:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = BICImageSetStorePersistance;
  v14 = [(BICImageSetStorePersistance *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_levelID = a3;
    objc_storeStrong(&v14->_imageSetPersistence, a4);
    objc_storeStrong(&v15->_dataStore, a6);
    objc_storeStrong(&v15->_comparator, a5);
  }

  return v15;
}

- (void)withImageSetForDescribedImage:(id)a3 performBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BICImageSetStorePersistance *)self imageSetPersistence];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_180B94;
  v11[3] = &unk_2CF040;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 withExistingImageSetForDescribedImage:v10 performBlock:v11];
}

- (void)getSortedBestMatchOf:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BICImageSetStorePersistance *)self imageSetPersistence];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_180E84;
  v11[3] = &unk_2CF040;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 withExistingImageSetForDescribedImage:v10 performBlock:v11];
}

- (void)_afterAllStoreOperationsCompletedForDescribedImage:(id)a3 performBlock:(id)a4
{
  v5 = a4;
  v6 = [(BICImageSetStorePersistance *)self dataStore];
  [v6 afterAllStoreOperationsCompletedPerformBlock:v5];
}

- (id)fetchEntryFromImageSet:(id)a3 matchingDescription:(id)a4 forRequest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 requestOptions];
  v12 = [v10 requestOptions];
  v13 = [v9 entryLocationForLevelID:{-[BICImageSetStorePersistance levelID](self, "levelID")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = [v8 imageEntries];
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v26 = v8;
    LODWORD(v25) = v12 & 0x30;
    HIDWORD(v25) = v11;
    v17 = *v28;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v28 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v27 + 1) + 8 * v18);
      v20 = [v19 entryLocation];
      v21 = [v20 isEqualToString:v13];

      if (v21)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v16)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    if ([v19 state] != 2)
    {
LABEL_18:
      v22 = 0;
      v8 = v26;
      goto LABEL_20;
    }

    v8 = v26;
    if ([v19 isExpired])
    {
      goto LABEL_17;
    }

    if ((v25 & 0x8000000000) != 0 && [v19 quality] == 101 || !v25 && objc_msgSend(v19, "quality") == 3)
    {
      [BICCacheStats logOperation:BICCacheStatsOperationIgnoringLowQualityImageEntry[0] forRequest:v10];
      goto LABEL_17;
    }

    v23 = +[NSDate date];
    [v19 setLastUsed:v23];

    v22 = v19;
  }

  else
  {
LABEL_17:
    v22 = 0;
  }

LABEL_20:

  return v22;
}

- (void)fetchImagesFromImageEntry:(id)a3 matchingDescription:(id)a4 forRequest:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [(BICImageSetStorePersistance *)self dataStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_181444;
  v14[3] = &unk_2CA210;
  v15 = v9;
  v13 = v9;
  [v12 fetchImagesForEntry:v11 forRequest:v10 completion:v14];
}

- (void)getPrimaryImageForRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BICImageSetStorePersistance *)self imageSetPersistence];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_181578;
  v10[3] = &unk_2CF068;
  v11 = v6;
  v9 = v6;
  [v8 withExistingImageSetForDescribedImage:v7 performBlock:v10];
}

- (void)addDescribedImages:(id)a3 forRequest:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = [(BICImageSetStorePersistance *)self dataStore];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        if ([v12 canStoreDescribedImage:v17])
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    objc_initWeak(&location, self);
    v18 = [(BICImageSetStorePersistance *)self imageSetPersistence];
    v19 = [(BICImageSetStorePersistance *)self levelID];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_18195C;
    v22[3] = &unk_2CB6C8;
    objc_copyWeak(&v25, &location);
    v23 = v9;
    v24 = v10;
    [v18 addImageEntriesForDescribedImages:v11 inLevelID:v19 addedEntries:v22];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = objc_retainBlock(v10);
    v21 = v20;
    if (v20)
    {
      (*(v20 + 2))(v20);
    }
  }
}

- (void)incrementVersionForIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(BICImageSetStorePersistance *)self imageSetPersistence];
  [v5 incrementVersionForIdentifiers:v4];
}

- (void)incrementVersionForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BICImageSetStorePersistance *)self imageSetPersistence];
  [v5 incrementVersionForIdentifier:v4];
}

- (void)removeDescribedImages:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = [(BICImageSetStorePersistance *)self dataStore];
        v16 = [v15 canStoreDescribedImage:v14];

        if (v16)
        {
          [v8 addObject:v14];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v17 = [(BICImageSetStorePersistance *)self imageSetPersistence];
    v18 = [(BICImageSetStorePersistance *)self levelID];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_181E60;
    v21[3] = &unk_2C8460;
    v21[4] = self;
    v22 = v7;
    [v17 removeImageEntriesForDescribedImages:v8 inLevelID:v18 removedEntries:v21];
  }

  else
  {
    v19 = objc_retainBlock(v7);
    v20 = v19;
    if (v19)
    {
      (*(v19 + 2))(v19, 0);
    }
  }
}

- (void)gatherPrunableItemsForMedium:(signed __int16)a3 level:(signed __int16)a4 withCompletion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v12 = a5;
  v8 = [(BICImageSetStorePersistance *)self dataStore];
  v9 = [v8 storingMedium];

  if (v9 == v6)
  {
    v10 = [(BICImageSetStorePersistance *)self imageSetPersistence];
    [v10 gatherPrunableItemsForLevel:v5 withCompletion:v12];
  }

  else
  {
    v11 = objc_retainBlock(v12);
    v10 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, &__NSArray0__struct);
    }
  }
}

- (void)gatherPrunableItemsWithIdentifier:(id)a3 forMedium:(signed __int16)a4 level:(signed __int16)a5 withCompletion:(id)a6
{
  v7 = a5;
  v8 = a4;
  v15 = a3;
  v10 = a6;
  v11 = [(BICImageSetStorePersistance *)self dataStore];
  v12 = [v11 storingMedium];

  if (v12 == v8)
  {
    v13 = [(BICImageSetStorePersistance *)self imageSetPersistence];
    [v13 gatherPrunableItemsWithIdentifier:v15 forLevel:v7 withCompletion:v10];
  }

  else
  {
    v14 = objc_retainBlock(v10);
    v13 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, &__NSArray0__struct);
    }
  }
}

- (void)pruneItems:(id)a3 forMedium:(signed __int16)a4 withCompletion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(BICImageSetStorePersistance *)self dataStore];
  v11 = [v10 storingMedium];

  if (v11 == v6)
  {
    v12 = [(BICImageSetStorePersistance *)self imageSetPersistence];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_182330;
    v15[3] = &unk_2CB1A0;
    v15[4] = self;
    [v12 pruneItems:v8 forMedium:v6 prunedEntry:v15 withCompletion:v9];
  }

  else
  {
    v13 = objc_retainBlock(v9);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, &__NSArray0__struct);
    }
  }
}

- (int64_t)costFor:(signed __int16)a3
{
  v3 = a3;
  v4 = [(BICImageSetStorePersistance *)self dataStore];
  v5 = [v4 costFor:v3];

  return v5;
}

- (signed)storingMedium
{
  v2 = [(BICImageSetStorePersistance *)self dataStore];
  v3 = [v2 storingMedium];

  return v3;
}

- (void)_inventoryLevel:(signed __int16)a3 addLevelID:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(BICImageSetStorePersistance *)self imageSetPersistence];
  [v9 _inventoryLevel:v6 addLevelID:v5 completion:v8];
}

- (void)_clean:(id)a3
{
  v4 = a3;
  v5 = [(BICImageSetStorePersistance *)self imageSetPersistence];
  [v5 _clean:v4];
}

@end