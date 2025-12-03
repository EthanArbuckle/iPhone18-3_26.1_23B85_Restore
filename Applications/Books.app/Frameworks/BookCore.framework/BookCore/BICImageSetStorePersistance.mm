@interface BICImageSetStorePersistance
- (BICImageSetStorePersistance)initWithLevelID:(signed __int16)d comparator:(id)comparator dataStore:(id)store;
- (BICImageSetStorePersistance)initWithLevelID:(signed __int16)d imageSetPersistence:(id)persistence comparator:(id)comparator dataStore:(id)store;
- (id)fetchEntryFromImageSet:(id)set matchingDescription:(id)description forRequest:(id)request;
- (int64_t)costFor:(signed __int16)for;
- (signed)storingMedium;
- (void)_afterAllStoreOperationsCompletedForDescribedImage:(id)image performBlock:(id)block;
- (void)_clean:(id)_clean;
- (void)_inventoryLevel:(signed __int16)level addLevelID:(BOOL)d completion:(id)completion;
- (void)addDescribedImages:(id)images forRequest:(id)request completion:(id)completion;
- (void)fetchImagesFromImageEntry:(id)entry matchingDescription:(id)description forRequest:(id)request completion:(id)completion;
- (void)gatherPrunableItemsForMedium:(signed __int16)medium level:(signed __int16)level withCompletion:(id)completion;
- (void)gatherPrunableItemsWithIdentifier:(id)identifier forMedium:(signed __int16)medium level:(signed __int16)level withCompletion:(id)completion;
- (void)getPrimaryImageForRequest:(id)request completion:(id)completion;
- (void)getSortedBestMatchOf:(id)of completion:(id)completion;
- (void)incrementVersionForIdentifier:(id)identifier;
- (void)incrementVersionForIdentifiers:(id)identifiers;
- (void)pruneItems:(id)items forMedium:(signed __int16)medium withCompletion:(id)completion;
- (void)removeDescribedImages:(id)images completion:(id)completion;
- (void)withImageSetForDescribedImage:(id)image performBlock:(id)block;
@end

@implementation BICImageSetStorePersistance

- (BICImageSetStorePersistance)initWithLevelID:(signed __int16)d comparator:(id)comparator dataStore:(id)store
{
  comparatorCopy = comparator;
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = BICImageSetStorePersistance;
  v11 = [(BICImageSetStorePersistance *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_levelID = d;
    objc_storeStrong(&v11->_dataStore, store);
    objc_storeStrong(&v12->_comparator, comparator);
  }

  return v12;
}

- (BICImageSetStorePersistance)initWithLevelID:(signed __int16)d imageSetPersistence:(id)persistence comparator:(id)comparator dataStore:(id)store
{
  persistenceCopy = persistence;
  comparatorCopy = comparator;
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = BICImageSetStorePersistance;
  v14 = [(BICImageSetStorePersistance *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_levelID = d;
    objc_storeStrong(&v14->_imageSetPersistence, persistence);
    objc_storeStrong(&v15->_dataStore, store);
    objc_storeStrong(&v15->_comparator, comparator);
  }

  return v15;
}

- (void)withImageSetForDescribedImage:(id)image performBlock:(id)block
{
  imageCopy = image;
  blockCopy = block;
  imageSetPersistence = [(BICImageSetStorePersistance *)self imageSetPersistence];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_180B94;
  v11[3] = &unk_2CF040;
  v11[4] = self;
  v12 = imageCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = imageCopy;
  [imageSetPersistence withExistingImageSetForDescribedImage:v10 performBlock:v11];
}

- (void)getSortedBestMatchOf:(id)of completion:(id)completion
{
  ofCopy = of;
  completionCopy = completion;
  imageSetPersistence = [(BICImageSetStorePersistance *)self imageSetPersistence];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_180E84;
  v11[3] = &unk_2CF040;
  v11[4] = self;
  v12 = ofCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = ofCopy;
  [imageSetPersistence withExistingImageSetForDescribedImage:v10 performBlock:v11];
}

- (void)_afterAllStoreOperationsCompletedForDescribedImage:(id)image performBlock:(id)block
{
  blockCopy = block;
  dataStore = [(BICImageSetStorePersistance *)self dataStore];
  [dataStore afterAllStoreOperationsCompletedPerformBlock:blockCopy];
}

- (id)fetchEntryFromImageSet:(id)set matchingDescription:(id)description forRequest:(id)request
{
  setCopy = set;
  descriptionCopy = description;
  requestCopy = request;
  requestOptions = [requestCopy requestOptions];
  requestOptions2 = [requestCopy requestOptions];
  v13 = [descriptionCopy entryLocationForLevelID:{-[BICImageSetStorePersistance levelID](self, "levelID")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  imageEntries = [setCopy imageEntries];
  v15 = [imageEntries countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v26 = setCopy;
    LODWORD(v25) = requestOptions2 & 0x30;
    HIDWORD(v25) = requestOptions;
    v17 = *v28;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v28 != v17)
      {
        objc_enumerationMutation(imageEntries);
      }

      v19 = *(*(&v27 + 1) + 8 * v18);
      entryLocation = [v19 entryLocation];
      v21 = [entryLocation isEqualToString:v13];

      if (v21)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [imageEntries countByEnumeratingWithState:&v27 objects:v31 count:16];
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
      setCopy = v26;
      goto LABEL_20;
    }

    setCopy = v26;
    if ([v19 isExpired])
    {
      goto LABEL_17;
    }

    if ((v25 & 0x8000000000) != 0 && [v19 quality] == 101 || !v25 && objc_msgSend(v19, "quality") == 3)
    {
      [BICCacheStats logOperation:BICCacheStatsOperationIgnoringLowQualityImageEntry[0] forRequest:requestCopy];
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

- (void)fetchImagesFromImageEntry:(id)entry matchingDescription:(id)description forRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  entryCopy = entry;
  dataStore = [(BICImageSetStorePersistance *)self dataStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_181444;
  v14[3] = &unk_2CA210;
  v15 = completionCopy;
  v13 = completionCopy;
  [dataStore fetchImagesForEntry:entryCopy forRequest:requestCopy completion:v14];
}

- (void)getPrimaryImageForRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  imageSetPersistence = [(BICImageSetStorePersistance *)self imageSetPersistence];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_181578;
  v10[3] = &unk_2CF068;
  v11 = completionCopy;
  v9 = completionCopy;
  [imageSetPersistence withExistingImageSetForDescribedImage:requestCopy performBlock:v10];
}

- (void)addDescribedImages:(id)images forRequest:(id)request completion:(id)completion
{
  imagesCopy = images;
  requestCopy = request;
  completionCopy = completion;
  v11 = objc_opt_new();
  dataStore = [(BICImageSetStorePersistance *)self dataStore];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = imagesCopy;
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
        if ([dataStore canStoreDescribedImage:v17])
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
    imageSetPersistence = [(BICImageSetStorePersistance *)self imageSetPersistence];
    levelID = [(BICImageSetStorePersistance *)self levelID];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_18195C;
    v22[3] = &unk_2CB6C8;
    objc_copyWeak(&v25, &location);
    v23 = requestCopy;
    v24 = completionCopy;
    [imageSetPersistence addImageEntriesForDescribedImages:v11 inLevelID:levelID addedEntries:v22];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = objc_retainBlock(completionCopy);
    v21 = v20;
    if (v20)
    {
      (*(v20 + 2))(v20);
    }
  }
}

- (void)incrementVersionForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  imageSetPersistence = [(BICImageSetStorePersistance *)self imageSetPersistence];
  [imageSetPersistence incrementVersionForIdentifiers:identifiersCopy];
}

- (void)incrementVersionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  imageSetPersistence = [(BICImageSetStorePersistance *)self imageSetPersistence];
  [imageSetPersistence incrementVersionForIdentifier:identifierCopy];
}

- (void)removeDescribedImages:(id)images completion:(id)completion
{
  imagesCopy = images;
  completionCopy = completion;
  v8 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = imagesCopy;
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
        dataStore = [(BICImageSetStorePersistance *)self dataStore];
        v16 = [dataStore canStoreDescribedImage:v14];

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
    imageSetPersistence = [(BICImageSetStorePersistance *)self imageSetPersistence];
    levelID = [(BICImageSetStorePersistance *)self levelID];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_181E60;
    v21[3] = &unk_2C8460;
    v21[4] = self;
    v22 = completionCopy;
    [imageSetPersistence removeImageEntriesForDescribedImages:v8 inLevelID:levelID removedEntries:v21];
  }

  else
  {
    v19 = objc_retainBlock(completionCopy);
    v20 = v19;
    if (v19)
    {
      (*(v19 + 2))(v19, 0);
    }
  }
}

- (void)gatherPrunableItemsForMedium:(signed __int16)medium level:(signed __int16)level withCompletion:(id)completion
{
  levelCopy = level;
  mediumCopy = medium;
  completionCopy = completion;
  dataStore = [(BICImageSetStorePersistance *)self dataStore];
  storingMedium = [dataStore storingMedium];

  if (storingMedium == mediumCopy)
  {
    imageSetPersistence = [(BICImageSetStorePersistance *)self imageSetPersistence];
    [imageSetPersistence gatherPrunableItemsForLevel:levelCopy withCompletion:completionCopy];
  }

  else
  {
    v11 = objc_retainBlock(completionCopy);
    imageSetPersistence = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, &__NSArray0__struct);
    }
  }
}

- (void)gatherPrunableItemsWithIdentifier:(id)identifier forMedium:(signed __int16)medium level:(signed __int16)level withCompletion:(id)completion
{
  levelCopy = level;
  mediumCopy = medium;
  identifierCopy = identifier;
  completionCopy = completion;
  dataStore = [(BICImageSetStorePersistance *)self dataStore];
  storingMedium = [dataStore storingMedium];

  if (storingMedium == mediumCopy)
  {
    imageSetPersistence = [(BICImageSetStorePersistance *)self imageSetPersistence];
    [imageSetPersistence gatherPrunableItemsWithIdentifier:identifierCopy forLevel:levelCopy withCompletion:completionCopy];
  }

  else
  {
    v14 = objc_retainBlock(completionCopy);
    imageSetPersistence = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, &__NSArray0__struct);
    }
  }
}

- (void)pruneItems:(id)items forMedium:(signed __int16)medium withCompletion:(id)completion
{
  mediumCopy = medium;
  itemsCopy = items;
  completionCopy = completion;
  dataStore = [(BICImageSetStorePersistance *)self dataStore];
  storingMedium = [dataStore storingMedium];

  if (storingMedium == mediumCopy)
  {
    imageSetPersistence = [(BICImageSetStorePersistance *)self imageSetPersistence];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_182330;
    v15[3] = &unk_2CB1A0;
    v15[4] = self;
    [imageSetPersistence pruneItems:itemsCopy forMedium:mediumCopy prunedEntry:v15 withCompletion:completionCopy];
  }

  else
  {
    v13 = objc_retainBlock(completionCopy);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, &__NSArray0__struct);
    }
  }
}

- (int64_t)costFor:(signed __int16)for
{
  forCopy = for;
  dataStore = [(BICImageSetStorePersistance *)self dataStore];
  v5 = [dataStore costFor:forCopy];

  return v5;
}

- (signed)storingMedium
{
  dataStore = [(BICImageSetStorePersistance *)self dataStore];
  storingMedium = [dataStore storingMedium];

  return storingMedium;
}

- (void)_inventoryLevel:(signed __int16)level addLevelID:(BOOL)d completion:(id)completion
{
  dCopy = d;
  levelCopy = level;
  completionCopy = completion;
  imageSetPersistence = [(BICImageSetStorePersistance *)self imageSetPersistence];
  [imageSetPersistence _inventoryLevel:levelCopy addLevelID:dCopy completion:completionCopy];
}

- (void)_clean:(id)_clean
{
  _cleanCopy = _clean;
  imageSetPersistence = [(BICImageSetStorePersistance *)self imageSetPersistence];
  [imageSetPersistence _clean:_cleanCopy];
}

@end