@interface BICCacheLevel
- (BICCacheLevel)initWithLevelID:(signed __int16)d highPriorityTargetQueue:(id)queue backgroundTargetQueue:(id)targetQueue imageSetStore:(id)store comparator:(id)comparator nextCacheLevel:(id)level;
- (id)imageMatchingDescription:(id)description forRequest:(id)request;
- (int64_t)costFor:(signed __int16)for;
- (void)_clean:(id)_clean;
- (void)_getSortedBestMatchesOf:(id)of forRequest:(id)request completion:(id)completion;
- (void)_inventoryLevelOnly:(BOOL)only addLevelID:(BOOL)d completion:(id)completion;
- (void)addDescribedImages:(id)images forRequest:(id)request completion:(id)completion;
- (void)fetchImagesFromImageSet:(id)set matchingDescription:(id)description forRequest:(id)request completion:(id)completion;
- (void)fetchImagesMatchingDescription:(id)description forRequest:(id)request completion:(id)completion;
- (void)gatherPrunableItemsForMedium:(signed __int16)medium withCompletion:(id)completion;
- (void)gatherPrunableItemsWithIdentifier:(id)identifier forMedium:(signed __int16)medium withCompletion:(id)completion;
- (void)getPrimaryImageForRequest:(id)request completion:(id)completion;
- (void)getSortedBestMatchesOf:(id)of forRequest:(id)request completion:(id)completion;
- (void)incrementVersionForIdentifier:(id)identifier;
- (void)incrementVersionForIdentifiers:(id)identifiers;
- (void)pruneItems:(id)items forMedium:(signed __int16)medium withCompletion:(id)completion;
- (void)removeDescribedImages:(id)images forRequest:(id)request completion:(id)completion;
@end

@implementation BICCacheLevel

- (BICCacheLevel)initWithLevelID:(signed __int16)d highPriorityTargetQueue:(id)queue backgroundTargetQueue:(id)targetQueue imageSetStore:(id)store comparator:(id)comparator nextCacheLevel:(id)level
{
  queueCopy = queue;
  targetQueueCopy = targetQueue;
  storeCopy = store;
  comparatorCopy = comparator;
  levelCopy = level;
  v23.receiver = self;
  v23.super_class = BICCacheLevel;
  v18 = [(BICCacheLevel *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_levelID = d;
    objc_storeStrong(&v18->_lowPriorityWorkQ, targetQueue);
    objc_storeStrong(&v19->_highPriorityWorkQ, queue);
    if ([storeCopy conformsToProtocol:{&OBJC_PROTOCOL___BICImageSetStoring, targetQueueCopy, queueCopy}])
    {
      objc_storeStrong(&v19->_imageSetStore, store);
    }

    if ([comparatorCopy conformsToProtocol:&OBJC_PROTOCOL___BICDescribedImageComparing])
    {
      objc_storeStrong(&v19->_imageComparator, comparator);
    }

    if ([levelCopy conformsToProtocol:&OBJC_PROTOCOL___BICLevelCaching])
    {
      objc_storeStrong(&v19->_nextCacheLevel, level);
    }
  }

  return v19;
}

- (id)imageMatchingDescription:(id)description forRequest:(id)request
{
  requestCopy = request;
  descriptionCopy = description;
  imageSetStore = [(BICCacheLevel *)self imageSetStore];
  v9 = [imageSetStore imageMatchingDescription:descriptionCopy forRequest:requestCopy];

  return v9;
}

- (void)fetchImagesMatchingDescription:(id)description forRequest:(id)request completion:(id)completion
{
  descriptionCopy = description;
  requestCopy = request;
  completionCopy = completion;
  imageSetStore = [(BICCacheLevel *)self imageSetStore];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_196EC;
  v15[3] = &unk_2C8320;
  v15[4] = self;
  v16 = descriptionCopy;
  v17 = requestCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = requestCopy;
  v14 = descriptionCopy;
  [imageSetStore withImageSetForDescribedImage:v14 performBlock:v15];
}

- (void)fetchImagesFromImageSet:(id)set matchingDescription:(id)description forRequest:(id)request completion:(id)completion
{
  setCopy = set;
  descriptionCopy = description;
  requestCopy = request;
  completionCopy = completion;
  imageSetStore = [(BICCacheLevel *)self imageSetStore];
  v15 = [imageSetStore fetchEntryFromImageSet:setCopy matchingDescription:descriptionCopy forRequest:requestCopy];

  if (!v15)
  {
    nextCacheLevel = [(BICCacheLevel *)self nextCacheLevel];

    if (!nextCacheLevel)
    {
      [BICCacheStats incrementCounter:kBICCacheStatsCounterL4Miss[0]];
      v21 = objc_retainBlock(completionCopy);
      nextCacheLevel2 = v21;
      if (v21)
      {
        (*(v21 + 2))(v21, 0);
      }

      goto LABEL_14;
    }

    levelID = [(BICCacheLevel *)self levelID];
    if (levelID == 1)
    {
      v20 = kBICCacheStatsCounterL2Miss;
    }

    else
    {
      if (levelID != 2)
      {
LABEL_13:
        nextCacheLevel2 = [(BICCacheLevel *)self nextCacheLevel];
        [nextCacheLevel2 fetchImagesFromImageSet:setCopy matchingDescription:descriptionCopy forRequest:requestCopy completion:completionCopy];
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
  imageSetStore2 = [(BICCacheLevel *)self imageSetStore];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_19A60;
  v23[3] = &unk_2C8348;
  objc_copyWeak(&v27, &location);
  v24 = requestCopy;
  v26 = completionCopy;
  v25 = descriptionCopy;
  [imageSetStore2 fetchImagesFromImageEntry:v15 matchingDescription:v25 forRequest:v24 completion:v23];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
LABEL_15:
}

- (void)getPrimaryImageForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = BCImageCacheLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109378;
    HIDWORD(buf) = [(BICCacheLevel *)self levelID];
    v17 = 2112;
    v18 = requestCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "BICCacheLevel: Getting primary image for level: %hd for request: %@", &buf, 0x12u);
  }

  objc_initWeak(&buf, self);
  imageSetStore = [(BICCacheLevel *)self imageSetStore];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_19D40;
  v12[3] = &unk_2C8370;
  objc_copyWeak(&v15, &buf);
  v10 = completionCopy;
  v14 = v10;
  v11 = requestCopy;
  v13 = v11;
  [imageSetStore getPrimaryImageForRequest:v11 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&buf);
}

- (void)addDescribedImages:(id)images forRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  imagesCopy = images;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  nextCacheLevel = [(BICCacheLevel *)self nextCacheLevel];

  if (nextCacheLevel)
  {
    dispatch_group_enter(v11);
  }

  imageSetStore = [(BICCacheLevel *)self imageSetStore];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1A09C;
  v23[3] = &unk_2C7D40;
  v14 = v11;
  v24 = v14;
  [imageSetStore addDescribedImages:imagesCopy forRequest:requestCopy completion:v23];

  nextCacheLevel2 = [(BICCacheLevel *)self nextCacheLevel];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1A0A4;
  v21[3] = &unk_2C7D40;
  v22 = v14;
  v16 = v14;
  [nextCacheLevel2 addDescribedImages:imagesCopy forRequest:requestCopy completion:v21];

  highPriorityWorkQ = [(BICCacheLevel *)self highPriorityWorkQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1A0AC;
  block[3] = &unk_2C8398;
  v20 = completionCopy;
  v18 = completionCopy;
  dispatch_group_notify(v16, highPriorityWorkQ, block);
}

- (void)removeDescribedImages:(id)images forRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  imagesCopy = images;
  imageSetStore = [(BICCacheLevel *)self imageSetStore];
  [imageSetStore removeDescribedImages:imagesCopy completion:completionCopy];

  nextCacheLevel = [(BICCacheLevel *)self nextCacheLevel];
  [nextCacheLevel removeDescribedImages:imagesCopy forRequest:requestCopy completion:completionCopy];
}

- (void)getSortedBestMatchesOf:(id)of forRequest:(id)request completion:(id)completion
{
  v8 = BICCacheStatsOperationAsyncFetchBestAttempt[0];
  completionCopy = completion;
  requestCopy = request;
  ofCopy = of;
  [BICCacheStats logOperation:v8 forRequest:requestCopy];
  [(BICCacheLevel *)self _getSortedBestMatchesOf:ofCopy forRequest:requestCopy completion:completionCopy];
}

- (void)_getSortedBestMatchesOf:(id)of forRequest:(id)request completion:(id)completion
{
  ofCopy = of;
  requestCopy = request;
  completionCopy = completion;
  imageSetStore = [(BICCacheLevel *)self imageSetStore];
  supportsImageSets = [imageSetStore supportsImageSets];

  imageSetStore2 = [(BICCacheLevel *)self imageSetStore];
  v14 = imageSetStore2;
  if (supportsImageSets)
  {
    [imageSetStore2 getSortedBestMatchOf:ofCopy completion:completionCopy];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1A398;
    v15[3] = &unk_2C83C0;
    v15[4] = self;
    v16 = ofCopy;
    v17 = requestCopy;
    v18 = completionCopy;
    [v14 getSortedBestMatchOf:v16 completion:v15];
  }
}

- (void)incrementVersionForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  imageSetStore = [(BICCacheLevel *)self imageSetStore];
  [imageSetStore incrementVersionForIdentifiers:identifiersCopy];

  nextCacheLevel = [(BICCacheLevel *)self nextCacheLevel];
  [nextCacheLevel incrementVersionForIdentifiers:identifiersCopy];
}

- (void)incrementVersionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  imageSetStore = [(BICCacheLevel *)self imageSetStore];
  [imageSetStore incrementVersionForIdentifier:identifierCopy];

  nextCacheLevel = [(BICCacheLevel *)self nextCacheLevel];
  [nextCacheLevel incrementVersionForIdentifier:identifierCopy];
}

- (int64_t)costFor:(signed __int16)for
{
  forCopy = for;
  nextCacheLevel = [(BICCacheLevel *)self nextCacheLevel];
  v6 = [nextCacheLevel costFor:forCopy];

  imageSetStore = [(BICCacheLevel *)self imageSetStore];
  v8 = [imageSetStore costFor:forCopy];

  return v6 + v8;
}

- (void)gatherPrunableItemsForMedium:(signed __int16)medium withCompletion:(id)completion
{
  mediumCopy = medium;
  completionCopy = completion;
  imageSetStore = [(BICCacheLevel *)self imageSetStore];
  levelID = [(BICCacheLevel *)self levelID];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1A7AC;
  v10[3] = &unk_2C8410;
  v12 = mediumCopy;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [imageSetStore gatherPrunableItemsForMedium:mediumCopy level:levelID withCompletion:v10];
}

- (void)gatherPrunableItemsWithIdentifier:(id)identifier forMedium:(signed __int16)medium withCompletion:(id)completion
{
  mediumCopy = medium;
  identifierCopy = identifier;
  completionCopy = completion;
  imageSetStore = [(BICCacheLevel *)self imageSetStore];
  levelID = [(BICCacheLevel *)self levelID];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1AB14;
  v14[3] = &unk_2C8438;
  v14[4] = self;
  v15 = identifierCopy;
  v17 = mediumCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  [imageSetStore gatherPrunableItemsWithIdentifier:v13 forMedium:mediumCopy level:levelID withCompletion:v14];
}

- (void)pruneItems:(id)items forMedium:(signed __int16)medium withCompletion:(id)completion
{
  mediumCopy = medium;
  itemsCopy = items;
  completionCopy = completion;
  imageSetStore = [(BICCacheLevel *)self imageSetStore];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1AE78;
  v13[3] = &unk_2C8438;
  v13[4] = self;
  v14 = itemsCopy;
  v16 = mediumCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = itemsCopy;
  [imageSetStore pruneItems:v12 forMedium:mediumCopy withCompletion:v13];
}

- (void)_inventoryLevelOnly:(BOOL)only addLevelID:(BOOL)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  imageSetStore = [(BICCacheLevel *)self imageSetStore];
  levelID = [(BICCacheLevel *)self levelID];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1B1CC;
  v12[3] = &unk_2C8410;
  onlyCopy = only;
  v15 = dCopy;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [imageSetStore _inventoryLevel:levelID addLevelID:dCopy completion:v12];
}

- (void)_clean:(id)_clean
{
  _cleanCopy = _clean;
  imageSetStore = [(BICCacheLevel *)self imageSetStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1B438;
  v7[3] = &unk_2C8488;
  v7[4] = self;
  v8 = _cleanCopy;
  v6 = _cleanCopy;
  [imageSetStore _clean:v7];
}

@end