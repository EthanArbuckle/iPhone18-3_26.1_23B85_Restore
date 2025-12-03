@interface BICImageSetStore
- (BICImageSetStore)initWithLevelID:(signed __int16)d comparator:(id)comparator dataStore:(id)store;
- (id)_imageEntryLocationMatchingDescription:(id)description;
- (id)imageMatchingDescription:(id)description forRequest:(id)request;
- (int64_t)costFor:(signed __int16)for;
- (signed)storingMedium;
- (void)_clean:(id)_clean;
- (void)_inventoryLevel:(signed __int16)level addLevelID:(BOOL)d completion:(id)completion;
- (void)addDescribedImages:(id)images forRequest:(id)request completion:(id)completion;
- (void)fetchImagesFromImageEntry:(id)entry matchingDescription:(id)description forRequest:(id)request completion:(id)completion;
- (void)gatherPrunableItemsForMedium:(signed __int16)medium level:(signed __int16)level withCompletion:(id)completion;
- (void)gatherPrunableItemsWithIdentifier:(id)identifier forMedium:(signed __int16)medium level:(signed __int16)level withCompletion:(id)completion;
- (void)getSortedBestMatchOf:(id)of completion:(id)completion;
- (void)incrementVersionForIdentifier:(id)identifier;
- (void)incrementVersionForIdentifiers:(id)identifiers;
- (void)pruneItems:(id)items forMedium:(signed __int16)medium withCompletion:(id)completion;
- (void)removeDescribedImages:(id)images completion:(id)completion;
@end

@implementation BICImageSetStore

- (BICImageSetStore)initWithLevelID:(signed __int16)d comparator:(id)comparator dataStore:(id)store
{
  comparatorCopy = comparator;
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = BICImageSetStore;
  v11 = [(BICImageSetStore *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_accessLock._os_unfair_lock_opaque = 0;
    v13 = +[NSMutableSet set];
    imagesInCacheSinceLaunch = v12->_imagesInCacheSinceLaunch;
    v12->_imagesInCacheSinceLaunch = v13;

    v12->_levelID = d;
    objc_storeStrong(&v12->_comparator, comparator);
    objc_storeStrong(&v12->_dataStore, store);
  }

  return v12;
}

- (id)imageMatchingDescription:(id)description forRequest:(id)request
{
  requestCopy = request;
  v7 = [(BICImageSetStore *)self _imageEntryLocationMatchingDescription:description];
  if (v7)
  {
    dataStore = [(BICImageSetStore *)self dataStore];
    v9 = [dataStore imageForEntryLocation:v7];
  }

  else
  {
    v9 = 0;
  }

  requestOptions = [requestCopy requestOptions];
  quality = [v9 quality];
  if ((requestOptions & 0x80) != 0 && quality == 101 || (requestOptions & 0x30) == 0 && quality == 3)
  {

    [BICCacheStats logOperation:BICCacheStatsOperationIgnoringLowQualityImageEntry[0] forRequest:requestCopy];
    v9 = 0;
  }

  v12 = BICCacheStatsOperationSyncFetchExactSuccess;
  if (!v9)
  {
    v12 = BICCacheStatsOperationSyncFetchExactFail;
  }

  [BICCacheStats logOperation:*v12 forRequest:requestCopy];
  [BICCacheStats logDescribedImage:v9 withComment:@"ImageSetStoreLoadMatchedImage"];

  return v9;
}

- (void)incrementVersionForIdentifiers:(id)identifiers
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_6856C;
  v5[3] = &unk_2C7BE8;
  identifiersCopy = identifiers;
  selfCopy = self;
  v4 = identifiersCopy;
  os_unfair_lock_lock(&self->_accessLock);
  sub_6856C(v5);
  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)getSortedBestMatchOf:(id)of completion:(id)completion
{
  ofCopy = of;
  completionCopy = completion;
  identifier = [ofCopy identifier];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_689AC;
  v24 = sub_689BC;
  v25 = 0;
  if ([identifier length])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v14 = sub_689C4;
    v15 = &unk_2C96F0;
    selfCopy = self;
    v17 = identifier;
    v19 = &v20;
    v18 = ofCopy;
    v9 = v13;
    os_unfair_lock_lock(&self->_accessLock);
    v14(v9);
    os_unfair_lock_unlock(&self->_accessLock);
  }

  else
  {
    v10 = v21[5];
    v21[5] = &__NSArray0__struct;
  }

  v11 = objc_retainBlock(completionCopy);
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v21[5]);
  }

  _Block_object_dispose(&v20, 8);
}

- (void)fetchImagesFromImageEntry:(id)entry matchingDescription:(id)description forRequest:(id)request completion:(id)completion
{
  v6 = objc_retainBlock(completion);
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))(v6, 0);
    v6 = v7;
  }
}

- (void)addDescribedImages:(id)images forRequest:(id)request completion:(id)completion
{
  imagesCopy = images;
  requestCopy = request;
  completionCopy = completion;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = [imagesCopy countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(imagesCopy);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        dataStore = [(BICImageSetStore *)self dataStore];
        v15 = [dataStore canStoreDescribedImage:v13];

        if (v15)
        {
          v16 = [v13 entryLocationForLevelID:{-[BICImageSetStore levelID](self, "levelID")}];
          dataStore2 = [(BICImageSetStore *)self dataStore];
          v18 = [dataStore2 imageForEntryLocation:v16];

          LODWORD(dataStore2) = [v13 quality];
          if (dataStore2 > [v18 quality])
          {
            v26[0] = _NSConcreteStackBlock;
            v26[1] = 3221225472;
            v27 = sub_68E5C;
            v28 = &unk_2C7BE8;
            selfCopy = self;
            v19 = v16;
            v30 = v19;
            os_unfair_lock_lock(&self->_accessLock);
            v27(v26);
            os_unfair_lock_unlock(&self->_accessLock);
            [(BICImageSetStore *)self dataStore];
            v21 = v20 = imagesCopy;
            [v21 storeImage:v13 forRequest:requestCopy forEntryLocation:v19];

            imagesCopy = v20;
          }
        }
      }

      v10 = [imagesCopy countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  v22 = objc_retainBlock(completionCopy);
  v23 = v22;
  if (v22)
  {
    (*(v22 + 2))(v22);
  }
}

- (void)removeDescribedImages:(id)images completion:(id)completion
{
  imagesCopy = images;
  completionCopy = completion;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [imagesCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(imagesCopy);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        dataStore = [(BICImageSetStore *)self dataStore];
        v13 = [dataStore canStoreDescribedImage:v11];

        if (v13)
        {
          v14 = [v11 entryLocationForLevelID:{-[BICImageSetStore levelID](self, "levelID")}];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v21 = sub_690C4;
          v22 = &unk_2C7BE8;
          selfCopy = self;
          v24 = v14;
          v15 = v14;
          os_unfair_lock_lock(&self->_accessLock);
          v21(v20);
          os_unfair_lock_unlock(&self->_accessLock);
          dataStore2 = [(BICImageSetStore *)self dataStore];
          [dataStore2 deleteImageForEntryLocation:v15];
        }
      }

      v8 = [imagesCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v17 = objc_retainBlock(completionCopy);
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17, imagesCopy);
  }
}

- (void)incrementVersionForIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [NSSet setWithObject:?];
    [(BICImageSetStore *)self incrementVersionForIdentifiers:v4];
  }
}

- (id)_imageEntryLocationMatchingDescription:(id)description
{
  descriptionCopy = description;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_689AC;
  v27 = sub_689BC;
  v28 = 0;
  if (([descriptionCopy requestOptions] & 0x30) != 0)
  {
    [descriptionCopy identifier];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v17 = sub_693A8;
    v18 = &unk_2C96C8;
    v5 = v19 = self;
    v20 = v5;
    v21 = descriptionCopy;
    v22 = &v23;
    v6 = v16;
    os_unfair_lock_lock(&self->_accessLock);
    v17(v6);
    v7 = &v20;
    os_unfair_lock_unlock(&self->_accessLock);

    v8 = v21;
  }

  else
  {
    [descriptionCopy entryLocationForLevelID:{-[BICImageSetStore levelID](self, "levelID")}];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v12 = sub_69508;
    v13 = &unk_2C8838;
    v5 = v14 = self;
    v15[0] = v5;
    v15[1] = &v23;
    v8 = v11;
    os_unfair_lock_lock(&self->_accessLock);
    v12(v8);
    v7 = v15;
    os_unfair_lock_unlock(&self->_accessLock);
  }

  v9 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v9;
}

- (void)gatherPrunableItemsForMedium:(signed __int16)medium level:(signed __int16)level withCompletion:(id)completion
{
  mediumCopy = medium;
  completionCopy = completion;
  v25 = +[NSMutableArray array];
  dataStore = [(BICImageSetStore *)self dataStore];
  storingMedium = [dataStore storingMedium];

  if (storingMedium == mediumCopy)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_689AC;
    v41 = sub_689BC;
    v42 = 0;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v33 = sub_698E4;
    v34 = &unk_2C7AE0;
    selfCopy = self;
    v36 = &v37;
    v7 = v32;
    os_unfair_lock_lock(&self->_accessLock);
    v33(v7);
    os_unfair_lock_unlock(&self->_accessLock);

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v38[5];
    v8 = [obj countByEnumeratingWithState:&v28 objects:v43 count:16];
    selfCopy3 = self;
    if (v8)
    {
      v10 = *v29;
      do
      {
        v11 = 0;
        do
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v28 + 1) + 8 * v11);
          dataStore2 = [(BICImageSetStore *)selfCopy3 dataStore];
          v14 = [dataStore2 imageForEntryLocation:v12];

          v15 = [v14 costFor:mediumCopy];
          lastUsed = [v14 lastUsed];
          [v14 imageSize];
          v19 = +[BICPruneableItem pruneScoreFrom:lastUsedDate:oldVersion:expired:processed:](BICPruneableItem, "pruneScoreFrom:lastUsedDate:oldVersion:expired:processed:", lastUsed, [v14 isOldVersion], 0, objc_msgSend(v14, "processingOptions") != 0, v17, v18);
          if ((v19 & 0x8000000000000000) == 0)
          {
            v20 = [BICPruneableItem pruneableItemFromEntryLocation:v12 cost:v15 pruneScore:v19];
            [v25 addObject:v20];
          }

          v11 = v11 + 1;
          selfCopy3 = self;
        }

        while (v8 != v11);
        v8 = [obj countByEnumeratingWithState:&v28 objects:v43 count:16];
      }

      while (v8);
    }

    _Block_object_dispose(&v37, 8);
  }

  v21 = objc_retainBlock(completionCopy);
  v22 = v21;
  if (v21)
  {
    (*(v21 + 2))(v21, v25);
  }
}

- (void)gatherPrunableItemsWithIdentifier:(id)identifier forMedium:(signed __int16)medium level:(signed __int16)level withCompletion:(id)completion
{
  mediumCopy = medium;
  identifierCopy = identifier;
  completionCopy = completion;
  v28 = +[NSMutableArray array];
  dataStore = [(BICImageSetStore *)self dataStore];
  storingMedium = [dataStore storingMedium];

  if (storingMedium == mediumCopy)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = sub_689AC;
    v45 = sub_689BC;
    v46 = 0;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v36 = sub_69CD8;
    v37 = &unk_2C7BC0;
    v40 = &v41;
    selfCopy = self;
    v39 = identifierCopy;
    v9 = v35;
    os_unfair_lock_lock(&self->_accessLock);
    v36(v9);
    os_unfair_lock_unlock(&self->_accessLock);

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v42[5];
    v10 = [obj countByEnumeratingWithState:&v31 objects:v47 count:16];
    selfCopy3 = self;
    if (v10)
    {
      v12 = *v32;
      do
      {
        v13 = 0;
        do
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v31 + 1) + 8 * v13);
          dataStore2 = [(BICImageSetStore *)selfCopy3 dataStore];
          v16 = [dataStore2 imageForEntryLocation:v14];

          v17 = [v16 costFor:mediumCopy];
          lastUsed = [v16 lastUsed];
          [v16 imageSize];
          v21 = +[BICPruneableItem pruneScoreFrom:lastUsedDate:oldVersion:expired:processed:](BICPruneableItem, "pruneScoreFrom:lastUsedDate:oldVersion:expired:processed:", lastUsed, [v16 isOldVersion], 0, objc_msgSend(v16, "processingOptions") != 0, v19, v20);
          if ((v21 & 0x8000000000000000) == 0)
          {
            v22 = [BICPruneableItem pruneableItemFromEntryLocation:v14 cost:v17 pruneScore:v21];
            [v28 addObject:v22];
          }

          v13 = v13 + 1;
          selfCopy3 = self;
        }

        while (v10 != v13);
        v10 = [obj countByEnumeratingWithState:&v31 objects:v47 count:16];
      }

      while (v10);
    }

    _Block_object_dispose(&v41, 8);
  }

  v23 = objc_retainBlock(completionCopy);
  v24 = v23;
  if (v23)
  {
    (*(v23 + 2))(v23, v28);
  }
}

- (void)pruneItems:(id)items forMedium:(signed __int16)medium withCompletion:(id)completion
{
  mediumCopy = medium;
  itemsCopy = items;
  completionCopy = completion;
  dataStore = [(BICImageSetStore *)self dataStore];
  storingMedium = [dataStore storingMedium];

  if (storingMedium == mediumCopy)
  {
    v22 = completionCopy;
    v23 = itemsCopy;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = itemsCopy;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        v16 = 0;
        do
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          entryLocation = [*(*(&v29 + 1) + 8 * v16) entryLocation];
          dataStore2 = [(BICImageSetStore *)self dataStore];
          [dataStore2 deleteImageForEntryLocation:entryLocation];

          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v25 = sub_69F8C;
          v26 = &unk_2C7BE8;
          selfCopy = self;
          v28 = entryLocation;
          v19 = entryLocation;
          os_unfair_lock_lock(&self->_accessLock);
          v25(v24);
          os_unfair_lock_unlock(&self->_accessLock);

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }

    completionCopy = v22;
    itemsCopy = v23;
  }

  v20 = objc_retainBlock(completionCopy);
  v21 = v20;
  if (v20)
  {
    (*(v20 + 2))(v20, 0);
  }
}

- (int64_t)costFor:(signed __int16)for
{
  forCopy = for;
  dataStore = [(BICImageSetStore *)self dataStore];
  v5 = [dataStore costFor:forCopy];

  return v5;
}

- (signed)storingMedium
{
  dataStore = [(BICImageSetStore *)self dataStore];
  storingMedium = [dataStore storingMedium];

  return storingMedium;
}

- (void)_inventoryLevel:(signed __int16)level addLevelID:(BOOL)d completion:(id)completion
{
  dCopy = d;
  levelCopy = level;
  completionCopy = completion;
  dataStore = [(BICImageSetStore *)self dataStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_6A11C;
  v11[3] = &unk_2CA210;
  v12 = completionCopy;
  v10 = completionCopy;
  [dataStore _inventoryLevel:levelCopy addLevelID:dCopy completion:v11];
}

- (void)_clean:(id)_clean
{
  _cleanCopy = _clean;
  dataStore = [(BICImageSetStore *)self dataStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6A234;
  v7[3] = &unk_2C8398;
  v8 = _cleanCopy;
  v6 = _cleanCopy;
  [dataStore _clean:v7];
}

@end