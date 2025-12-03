@interface BICMemoryDataStore
- (BICMemoryDataStore)initWithCachePath:(id)path;
- (BOOL)canStoreDescribedImage:(id)image;
- (id)_imageSetIDFromImageEntryLocation:(id)location;
- (id)imageForEntryLocation:(id)location;
- (int64_t)costFor:(signed __int16)for;
- (void)_clean:(id)_clean;
- (void)_inventoryLevel:(signed __int16)level addLevelID:(BOOL)d completion:(id)completion;
- (void)afterAllStoreOperationsCompletedPerformBlock:(id)block;
- (void)deleteImageForEntryLocation:(id)location;
- (void)deleteRemovedEntries:(id)entries deletingCompletedHandler:(id)handler;
- (void)fetchImagesForEntry:(id)entry forRequest:(id)request completion:(id)completion;
- (void)markAsOldImageForEntryLocation:(id)location;
- (void)storeAddedEntries:(id)entries forRequest:(id)request storingCompletedHandler:(id)handler;
- (void)storeImage:(id)image forRequest:(id)request forEntryLocation:(id)location;
@end

@implementation BICMemoryDataStore

- (BICMemoryDataStore)initWithCachePath:(id)path
{
  v7.receiver = self;
  v7.super_class = BICMemoryDataStore;
  v3 = [(BICMemoryDataStore *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v3->_accessLock._os_unfair_lock_opaque = 0;
    v5 = +[NSMutableDictionary dictionary];
    [(BICMemoryDataStore *)v4 setImageSetStorage:v5];
  }

  return v4;
}

- (BOOL)canStoreDescribedImage:(id)image
{
  image = [image image];
  v4 = image != 0;

  return v4;
}

- (void)storeImage:(id)image forRequest:(id)request forEntryLocation:(id)location
{
  imageCopy = image;
  requestCopy = request;
  locationCopy = location;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v15 = sub_43814;
  v16 = &unk_2C96C8;
  selfCopy = self;
  v11 = imageCopy;
  v18 = v11;
  v12 = locationCopy;
  v19 = v12;
  v20 = v21;
  v13 = v14;
  os_unfair_lock_lock(&self->_accessLock);
  v15(v13);
  os_unfair_lock_unlock(&self->_accessLock);

  _Block_object_dispose(v21, 8);
}

- (void)deleteImageForEntryLocation:(id)location
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_43A48;
  v5[3] = &unk_2C7BE8;
  selfCopy = self;
  locationCopy = location;
  v4 = locationCopy;
  os_unfair_lock_lock(&selfCopy->_accessLock);
  sub_43A48(v5);
  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)markAsOldImageForEntryLocation:(id)location
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_43C80;
  v5[3] = &unk_2C7BE8;
  selfCopy = self;
  locationCopy = location;
  v4 = locationCopy;
  os_unfair_lock_lock(&selfCopy->_accessLock);
  sub_43C80(v5);
  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)storeAddedEntries:(id)entries forRequest:(id)request storingCompletedHandler:(id)handler
{
  entriesCopy = entries;
  requestCopy = request;
  handlerCopy = handler;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [entriesCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        entryLocation = [v14 entryLocation];
        if (entryLocation)
        {
          v16 = entryLocation;
          imageDescription = [v14 imageDescription];
          image = [imageDescription image];

          if (image)
          {
            imageDescription2 = [v14 imageDescription];
            entryLocation2 = [v14 entryLocation];
            [(BICMemoryDataStore *)self storeImage:imageDescription2 forRequest:requestCopy forEntryLocation:entryLocation2];
          }
        }
      }

      v11 = [entriesCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  handlerCopy[2](handlerCopy, entriesCopy, &__NSArray0__struct);
}

- (void)deleteRemovedEntries:(id)entries deletingCompletedHandler:(id)handler
{
  entriesCopy = entries;
  handlerCopy = handler;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [entriesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        entryLocation = [v12 entryLocation];

        if (entryLocation)
        {
          entryLocation2 = [v12 entryLocation];
          [(BICMemoryDataStore *)self deleteImageForEntryLocation:entryLocation2];
        }
      }

      v9 = [entriesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  handlerCopy[2](handlerCopy, entriesCopy);
}

- (id)imageForEntryLocation:(id)location
{
  locationCopy = location;
  v5 = [locationCopy componentsSeparatedByString:@"|"];
  [v5 firstObject];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_4427C;
  v23 = sub_4428C;
  v24 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_44294;
  v14 = &unk_2C96F0;
  v6 = v15 = self;
  v16 = v6;
  v18 = &v19;
  v7 = locationCopy;
  v17 = v7;
  v8 = &v11;
  os_unfair_lock_lock(&self->_accessLock);
  v13(v8);
  os_unfair_lock_unlock(&self->_accessLock);

  if (v20[5])
  {
    [BICCacheStats incrementCounter:kBICCacheStatsCounterL1Hit[0], v11, v12];
  }

  else
  {
    [(BICMemoryDataStore *)self deleteImageForEntryLocation:v7, v11, v12];
  }

  v9 = [v20[5] copy];

  _Block_object_dispose(&v19, 8);

  return v9;
}

- (void)afterAllStoreOperationsCompletedPerformBlock:(id)block
{
  v3 = objc_retainBlock(block);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)fetchImagesForEntry:(id)entry forRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  entryCopy = entry;
  entryLocation = [entryCopy entryLocation];
  v10 = [(BICMemoryDataStore *)self imageForEntryLocation:entryLocation];

  quality = [entryCopy quality];
  [v10 setQuality:quality];
  [BICCacheStats logDescribedImage:v10 withComment:@"MemoryDataStoreLoadImage"];
  v12 = objc_retainBlock(completionCopy);

  if (v12)
  {
    if (v10)
    {
      v14 = v10;
      v13 = [NSArray arrayWithObjects:&v14 count:1];
      v12[2](v12, v13);
    }

    else
    {
      v12[2](v12, 0);
    }
  }
}

- (int64_t)costFor:(signed __int16)for
{
  v3 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (!for)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v8 = sub_445C4;
    v9 = &unk_2C7AE0;
    selfCopy = self;
    v11 = &v12;
    v5 = v7;
    os_unfair_lock_lock(&self->_accessLock);
    v8(v5);
    os_unfair_lock_unlock(&self->_accessLock);

    v3 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  return v3;
}

- (void)_inventoryLevel:(signed __int16)level addLevelID:(BOOL)d completion:(id)completion
{
  dCopy = d;
  levelCopy = level;
  completionCopy = completion;
  v7 = +[NSMutableArray array];
  +[NSMutableArray array];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_44864;
  v27[3] = &unk_2C7BE8;
  v8 = v27[4] = self;
  v28 = v8;
  os_unfair_lock_lock(&self->_accessLock);
  sub_44864(v27);
  os_unfair_lock_unlock(&self->_accessLock);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(BICMemoryDataStore *)self imageForEntryLocation:*(*(&v23 + 1) + 8 * i)];
        identifier = [v14 identifier];
        v16 = [identifier length];

        if (v16)
        {
          if (dCopy)
          {
            identifier2 = [v14 identifier];
            levelCopy = [NSString stringWithFormat:@"%@-Level:%d", identifier2, levelCopy];
            [v14 setIdentifier:levelCopy];
          }

          [v7 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v11);
  }

  v19 = objc_retainBlock(completionCopy);
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19, v7);
  }
}

- (void)_clean:(id)_clean
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_44A54;
  v6[3] = &unk_2C7D40;
  v6[4] = self;
  _cleanCopy = _clean;
  os_unfair_lock_lock(&self->_accessLock);
  sub_44A54(v6);
  os_unfair_lock_unlock(&self->_accessLock);
  v5 = objc_retainBlock(_cleanCopy);

  if (v5)
  {
    v5[2](v5);
  }
}

- (id)_imageSetIDFromImageEntryLocation:(id)location
{
  v3 = [location componentsSeparatedByString:@"|"];
  firstObject = [v3 firstObject];

  return firstObject;
}

@end