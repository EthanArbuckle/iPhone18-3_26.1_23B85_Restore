@interface BICImageSetPersistence
+ (id)addedEntryWithDescribedImage:(id)image imageEntry:(id)entry;
- (BICImageSetPersistence)initWithPersistentStore:(id)store comparator:(id)comparator;
- (BOOL)_isImagePotentialPrimary:(id)primary;
- (id)_imageSetForIdentifier:(id)identifier;
- (id)metadataForIdentifier:(id)identifier;
- (void)_addImageEntriesForDescribedImages:(id)images inLevelID:(signed __int16)d toSet:(id)set addedEntries:(id)entries;
- (void)_clean:(id)_clean;
- (void)_inventoryLevel:(signed __int16)level addLevelID:(BOOL)d completion:(id)completion;
- (void)_markAsOldAllNonPrimaryImagesForImageSetIDs:(id)ds completion:(id)completion;
- (void)_populateEntry:(id)entry fromImage:(id)image;
- (void)_removeImageEntriesForDescribedImages:(id)images inLevelID:(signed __int16)d fromSet:(id)set removedEntries:(id)entries;
- (void)_saveIfNeeded;
- (void)_updateAspectRatioForImageSet:(id)set size:(CGSize)size force:(BOOL)force;
- (void)_withPrimaryEntryForImageSetID:(id)d performBlock:(id)block;
- (void)addImageEntriesForDescribedImages:(id)images inLevelID:(signed __int16)d addedEntries:(id)entries;
- (void)deleteEntriesMarkedToBeDeleted:(id)deleted completion:(id)completion;
- (void)fetchMetadataForIdentifier:(id)identifier completion:(id)completion;
- (void)gatherPrunableItemsForLevel:(signed __int16)level withCompletion:(id)completion;
- (void)gatherPrunableItemsWithIdentifier:(id)identifier forLevel:(signed __int16)level withCompletion:(id)completion;
- (void)imageColorForIdentifier:(id)identifier completion:(id)completion;
- (void)incrementVersionForIdentifier:(id)identifier;
- (void)incrementVersionForIdentifiers:(id)identifiers;
- (void)markEntriesAsStored:(id)stored notStored:(id)notStored completion:(id)completion;
- (void)pruneItems:(id)items forMedium:(signed __int16)medium prunedEntry:(id)entry withCompletion:(id)completion;
- (void)removeImageEntriesForDescribedImages:(id)images inLevelID:(signed __int16)d removedEntries:(id)entries;
- (void)removeImageSets:(id)sets;
- (void)setImageColor:(id)color forIdentifier:(id)identifier;
- (void)withExistingImageEntryForDescribedImage:(id)image inLevelID:(signed __int16)d performBlock:(id)block;
- (void)withExistingImageSetForDescribedImage:(id)image performBlock:(id)block;
@end

@implementation BICImageSetPersistence

+ (id)addedEntryWithDescribedImage:(id)image imageEntry:(id)entry
{
  entryCopy = entry;
  imageCopy = image;
  v7 = [[BICImageSetPersistingAddedEntry alloc] initWithDescribedImage:imageCopy imageEntry:entryCopy];

  return v7;
}

- (BICImageSetPersistence)initWithPersistentStore:(id)store comparator:(id)comparator
{
  storeCopy = store;
  comparatorCopy = comparator;
  v12.receiver = self;
  v12.super_class = BICImageSetPersistence;
  v9 = [(BICImageSetPersistence *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageComparator, comparator);
    objc_storeStrong(&v10->_persistentStore, store);
  }

  return v10;
}

- (id)_imageSetForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  v6 = [persistentStore imageSetForIdentifier:identifierCopy];

  return v6;
}

- (void)_withPrimaryEntryForImageSetID:(id)d performBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1256A8;
  v11[3] = &unk_2C7B30;
  v11[4] = self;
  v12 = dCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = dCopy;
  [persistentStore performBlock:v11];
}

- (void)incrementVersionForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = BCImageCacheLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = identifiersCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "BICImageSetPersistence: Increment version for: %@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_125848;
  v7[3] = &unk_2C8200;
  v8 = identifiersCopy;
  selfCopy = self;
  v6 = identifiersCopy;
  [(BICImageSetPersistence *)self _markAsOldAllNonPrimaryImagesForImageSetIDs:v6 completion:v7];
}

- (void)incrementVersionForIdentifier:(id)identifier
{
  v4 = [NSSet setWithObject:identifier];
  [(BICImageSetPersistence *)self incrementVersionForIdentifiers:v4];
}

- (void)_markAsOldAllNonPrimaryImagesForImageSetIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_125A74;
  v11[3] = &unk_2C7B30;
  v12 = dsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  [persistentStore performBlock:v11];
}

- (void)withExistingImageEntryForDescribedImage:(id)image inLevelID:(signed __int16)d performBlock:(id)block
{
  imageCopy = image;
  blockCopy = block;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_125DF8;
  v13[3] = &unk_2CD918;
  dCopy = d;
  v14 = imageCopy;
  selfCopy = self;
  v16 = blockCopy;
  v11 = blockCopy;
  v12 = imageCopy;
  [persistentStore performBlock:v13];
}

- (void)withExistingImageSetForDescribedImage:(id)image performBlock:(id)block
{
  imageCopy = image;
  blockCopy = block;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_126064;
  v11[3] = &unk_2CB128;
  v12 = imageCopy;
  v13 = blockCopy;
  v11[4] = self;
  v9 = imageCopy;
  v10 = blockCopy;
  [persistentStore performBlock:v11];
}

- (void)_addImageEntriesForDescribedImages:(id)images inLevelID:(signed __int16)d toSet:(id)set addedEntries:(id)entries
{
  dCopy = d;
  imagesCopy = images;
  setCopy = set;
  entriesCopy = entries;
  v77 = setCopy;
  imageEntries = [setCopy imageEntries];
  v66 = [imageEntries count];

  v78 = [imagesCopy mutableCopy];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v12 = imagesCopy;
  v13 = [v12 countByEnumeratingWithState:&v100 objects:v111 count:16];
  v69 = v12;
  v75 = dCopy;
  if (v13)
  {
    v14 = v13;
    v15 = *v101;
    v68 = *v101;
    do
    {
      v16 = 0;
      v71 = v14;
      do
      {
        if (*v101 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v100 + 1) + 8 * v16);
        switch(dCopy)
        {
          case 3:
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            imageEntries2 = [v77 imageEntries];
            v43 = [imageEntries2 countByEnumeratingWithState:&v84 objects:v105 count:16];
            if (v43)
            {
              v44 = v43;
              v45 = *v85;
              while (2)
              {
                for (i = 0; i != v44; i = i + 1)
                {
                  if (*v85 != v45)
                  {
                    objc_enumerationMutation(imageEntries2);
                  }

                  if ([*(*(&v84 + 1) + 8 * i) level] == 3)
                  {
                    [v78 removeObjectIdenticalTo:v17];
                    goto LABEL_65;
                  }
                }

                v44 = [imageEntries2 countByEnumeratingWithState:&v84 objects:v105 count:16];
                if (v44)
                {
                  continue;
                }

                break;
              }
            }

            break;
          case 2:
            v67 = v16;
            obj = +[NSMutableArray array];
            v31 = [v17 entryLocationForLevelID:2];
            v92 = 0u;
            v93 = 0u;
            v94 = 0u;
            v95 = 0u;
            imageEntries3 = [v77 imageEntries];
            v33 = [imageEntries3 countByEnumeratingWithState:&v92 objects:v107 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v93;
              while (2)
              {
                for (j = 0; j != v34; j = j + 1)
                {
                  if (*v93 != v35)
                  {
                    objc_enumerationMutation(imageEntries3);
                  }

                  v37 = *(*(&v92 + 1) + 8 * j);
                  if ([v37 state] == 1)
                  {
                    entryLocation = [v37 entryLocation];
                    v39 = [v31 isEqualToString:entryLocation];

                    if (v39)
                    {
                      [v78 removeObjectIdenticalTo:v17];
                    }
                  }

                  else if ([v37 level] == 2)
                  {
                    dataStoreInformation = [v37 dataStoreInformation];
                    urlString = [v17 urlString];
                    v42 = [dataStoreInformation isEqualToString:urlString];

                    if (v42)
                    {
                      if (([v37 isExpired] & 1) != 0 || objc_msgSend(v37, "quality") == 3)
                      {
                        [obj addObject:v37];
                      }

                      else
                      {
                        [v78 removeObjectIdenticalTo:v17];
                      }

                      goto LABEL_57;
                    }
                  }
                }

                v34 = [imageEntries3 countByEnumeratingWithState:&v92 objects:v107 count:16];
                if (v34)
                {
                  continue;
                }

                break;
              }
            }

LABEL_57:

            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            imageEntries2 = obj;
            v47 = [imageEntries2 countByEnumeratingWithState:&v88 objects:v106 count:16];
            v15 = v68;
            v12 = v69;
            if (v47)
            {
              v48 = v47;
              v49 = *v89;
              do
              {
                for (k = 0; k != v48; k = k + 1)
                {
                  if (*v89 != v49)
                  {
                    objc_enumerationMutation(imageEntries2);
                  }

                  [*(*(&v88 + 1) + 8 * k) deleteEntry];
                }

                v48 = [imageEntries2 countByEnumeratingWithState:&v88 objects:v106 count:16];
              }

              while (v48);
            }

            dCopy = v75;
            v14 = v71;
            v16 = v67;
            break;
          case 1:
            imageEntries2 = [*(*(&v100 + 1) + 8 * v16) entryLocationForLevelID:1];
            v96 = 0u;
            v97 = 0u;
            v98 = 0u;
            v99 = 0u;
            imageEntries4 = [v77 imageEntries];
            v20 = [imageEntries4 countByEnumeratingWithState:&v96 objects:v110 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v97;
              while (2)
              {
                for (m = 0; m != v21; m = m + 1)
                {
                  if (*v97 != v22)
                  {
                    objc_enumerationMutation(imageEntries4);
                  }

                  v24 = *(*(&v96 + 1) + 8 * m);
                  entryLocation2 = [v24 entryLocation];
                  v26 = [entryLocation2 isEqualToString:imageEntries2];

                  if (v26)
                  {
                    if ([v24 state] == 3)
                    {
                      v27 = BCImageCacheLog();
                      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                      {
                        sub_1EA44C(v108, v24, &v109, v27);
                      }
                    }

                    image = [v17 image];
                    if (![image CGImage] || (v29 = objc_msgSend(v17, "quality"), v29 <= objc_msgSend(v24, "quality")) && objc_msgSend(v24, "quality") != 3)
                    {

LABEL_54:
                      [v78 removeObjectIdenticalTo:v17];
                      goto LABEL_55;
                    }

                    state = [v24 state];

                    if (state != 2)
                    {
                      goto LABEL_54;
                    }

                    [v24 deleteEntry];
                  }
                }

                v21 = [imageEntries4 countByEnumeratingWithState:&v96 objects:v110 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }
            }

LABEL_55:

            dCopy = v75;
            v15 = v68;
            v12 = v69;
            v14 = v71;
            break;
          default:
            goto LABEL_66;
        }

LABEL_65:

LABEL_66:
        v16 = v16 + 1;
      }

      while (v16 != v14);
      v14 = [v12 countByEnumeratingWithState:&v100 objects:v111 count:16];
    }

    while (v14);
  }

  v51 = +[NSMutableSet set];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obja = v78;
  v52 = [obja countByEnumeratingWithState:&v80 objects:v104 count:16];
  if (v52)
  {
    v53 = v52;
    v72 = 0;
    primaryEntry = 0;
    v54 = *v81;
    do
    {
      for (n = 0; n != v53; n = n + 1)
      {
        if (*v81 != v54)
        {
          objc_enumerationMutation(obja);
        }

        v56 = *(*(&v80 + 1) + 8 * n);
        v57 = [v56 entryLocationForLevelID:dCopy];
        if (([v51 containsObject:v57] & 1) == 0)
        {
          [v51 addObject:v57];
          if ([(BICImageSetPersistence *)self _isImagePotentialPrimary:v56])
          {
            v58 = primaryEntry == 0;
          }

          else
          {
            v58 = 0;
          }

          if (v58)
          {
            if (v72 & 1 | (v66 == 0))
            {
              primaryEntry = 0;
            }

            else
            {
              primaryEntry = [v77 primaryEntry];
              v72 = 1;
            }
          }

          persistentStore = [(BICImageSetPersistence *)self persistentStore];
          v60 = [persistentStore addNewImageEntryToSet:v77];

          [v60 setLevel:v75];
          [v60 setState:1];
          [(BICImageSetPersistence *)self _populateEntry:v60 fromImage:v56];
          dCopy = v75;
          [v77 errorCheck];
          v61 = [[BICImageSetPersistingAddedEntry alloc] initWithDescribedImage:v56 imageEntry:v60];
          [entriesCopy addObject:v61];
        }
      }

      v53 = [obja countByEnumeratingWithState:&v80 objects:v104 count:16];
    }

    while (v53);
  }

  else
  {
    v72 = 0;
    primaryEntry = 0;
  }

  persistentStore2 = [(BICImageSetPersistence *)self persistentStore];
  [persistentStore2 processPendingChanges];

  if (v72)
  {
    primaryEntry2 = [v77 primaryEntry];
    v64 = primaryEntry2;
    if (primaryEntry2 && primaryEntry2 != primaryEntry && v66 >= 1)
    {
      identifier = [v77 identifier];
      [(BICImageSetPersistence *)self incrementVersionForIdentifier:identifier];
    }
  }
}

- (void)_removeImageEntriesForDescribedImages:(id)images inLevelID:(signed __int16)d fromSet:(id)set removedEntries:(id)entries
{
  dCopy = d;
  imagesCopy = images;
  entriesCopy = entries;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [set imageEntries];
  v10 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    v28 = dCopy;
    v27 = *v39;
    do
    {
      v13 = 0;
      v30 = v11;
      do
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * v13);
        if ([v14 level] == dCopy)
        {
          v32 = v13;
          v15 = [BICDescribedImage describedImageFromImageEntry:v14];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v16 = imagesCopy;
          v17 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v35;
            do
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v35 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v34 + 1) + 8 * i);
                imageComparator = [(BICImageSetPersistence *)self imageComparator];
                v23 = [imageComparator isMatching:v21 withCandidateImage:v15 includeQuality:1];

                if (v23)
                {
                  [v14 setState:3];
                  v24 = BCImageCacheLog();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    entryLocation = [v14 entryLocation];
                    *buf = 138412290;
                    v43 = entryLocation;
                    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "BICImageSetPersistence: Marking for deletion: %@", buf, 0xCu);
                  }

                  v26 = [[BICImageSetPersistingAddedEntry alloc] initWithDescribedImage:v21 imageEntry:v14];
                  [entriesCopy addObject:v26];
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
            }

            while (v18);
          }

          dCopy = v28;
          v12 = v27;
          v11 = v30;
          v13 = v32;
        }

        v13 = v13 + 1;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v11);
  }
}

- (BOOL)_isImagePotentialPrimary:(id)primary
{
  primaryCopy = primary;
  adamID = [primaryCopy adamID];
  v8 = adamID && (([primaryCopy imageSize], v6 == CGSizeZero.width) ? (v7 = v5 == CGSizeZero.height) : (v7 = 0), v7) && objc_msgSend(primaryCopy, "quality") == 203;

  filePath = [primaryCopy filePath];
  if (filePath)
  {
    v10 = [primaryCopy quality] > 0xC9;
  }

  else
  {
    urlString = [primaryCopy urlString];
    if (urlString)
    {
      v10 = [primaryCopy quality] > 0xC9;
    }

    else
    {
      v10 = 0;
    }
  }

  return v8 || v10;
}

- (void)_updateAspectRatioForImageSet:(id)set size:(CGSize)size force:(BOOL)force
{
  height = size.height;
  width = size.width;
  setCopy = set;
  if (force || ([setCopy widthForAspectRatio], v10 = v9, objc_msgSend(setCopy, "heightForAspectRatio"), v8 = (v10 * v11), width * height > v8))
  {
    *&v8 = width;
    [setCopy setWidthForAspectRatio:v8];
    *&v12 = height;
    [setCopy setHeightForAspectRatio:v12];
  }
}

- (void)_populateEntry:(id)entry fromImage:(id)image
{
  entryCopy = entry;
  imageCopy = image;
  [imageCopy nonShadowArea];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [entryCopy setProcessingOptions:{objc_msgSend(imageCopy, "processingOptions")}];
  [imageCopy imageSize];
  [entryCopy setImageSize:?];
  [entryCopy setQuality:{objc_msgSend(imageCopy, "quality")}];
  entryLocationFromParameters = [entryCopy entryLocationFromParameters];
  [entryCopy setEntryLocation:entryLocationFromParameters];

  expiry = [imageCopy expiry];
  [entryCopy setExpiry:expiry];

  [entryCopy setShadowLeft:v8];
  [entryCopy setShadowTop:v10];
  [entryCopy setShadowWidth:v12];
  [entryCopy setShadowHeight:v14];
  v17 = +[NSDate date];
  [entryCopy setLastUsed:v17];

  [imageCopy imageSize];
  v19 = v18;
  Height = v20;
  imageSet = [entryCopy imageSet];
  image = [imageCopy image];
  cGImage = [image CGImage];

  if (cGImage && ![imageCopy processingOptions])
  {
    Width = CGImageGetWidth(cGImage);
    -[BICImageSetPersistence _updateAspectRatioForImageSet:size:force:](self, "_updateAspectRatioForImageSet:size:force:", imageSet, [imageSet actualAspectRatio] ^ 1, Width, CGImageGetHeight(cGImage));
    [imageSet setActualAspectRatio:1];
  }

  else if (([imageSet actualAspectRatio] & 1) == 0)
  {
    v25 = CGSizeZero.width;
    if (CGSizeZero.width != v19 || (v25 = CGSizeZero.height, v25 != Height))
    {
      unknownAspectRatio = [imageCopy unknownAspectRatio];
      if (cGImage && unknownAspectRatio)
      {
        v19 = CGImageGetWidth(cGImage);
        Height = CGImageGetHeight(cGImage);
      }

      [(BICImageSetPersistence *)self _updateAspectRatioForImageSet:imageSet size:0 force:v19, Height];
    }
  }

  [entryCopy setPotentialPrimary:{-[BICImageSetPersistence _isImagePotentialPrimary:](self, "_isImagePotentialPrimary:", imageCopy)}];
}

- (void)_saveIfNeeded
{
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  [persistentStore saveIfNeeded];
}

- (void)addImageEntriesForDescribedImages:(id)images inLevelID:(signed __int16)d addedEntries:(id)entries
{
  imagesCopy = images;
  entriesCopy = entries;
  if ([imagesCopy count])
  {
    v10 = +[NSMutableArray array];
    v11 = [BICDescribedImage describedImagesToDictionaryOfSets:imagesCopy];
    allKeys = [v11 allKeys];
    persistentStore = [(BICImageSetPersistence *)self persistentStore];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1271B8;
    v17[3] = &unk_2CD940;
    v18 = imagesCopy;
    selfCopy = self;
    v20 = allKeys;
    v21 = v11;
    dCopy = d;
    v22 = v10;
    v23 = entriesCopy;
    v14 = v10;
    v15 = v11;
    v16 = allKeys;
    [persistentStore performBlock:v17];
  }

  else
  {
    (*(entriesCopy + 2))(entriesCopy, 0);
  }
}

- (void)removeImageEntriesForDescribedImages:(id)images inLevelID:(signed __int16)d removedEntries:(id)entries
{
  imagesCopy = images;
  entriesCopy = entries;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_127650;
  v13[3] = &unk_2CD918;
  v14 = imagesCopy;
  selfCopy = self;
  dCopy = d;
  v16 = entriesCopy;
  v11 = entriesCopy;
  v12 = imagesCopy;
  [persistentStore performBlock:v13];
}

- (void)removeImageSets:(id)sets
{
  setsCopy = sets;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  [persistentStore removeImageSets:setsCopy];
}

- (void)markEntriesAsStored:(id)stored notStored:(id)notStored completion:(id)completion
{
  storedCopy = stored;
  notStoredCopy = notStored;
  completionCopy = completion;
  if ([storedCopy count] || objc_msgSend(notStoredCopy, "count"))
  {
    persistentStore = [(BICImageSetPersistence *)self persistentStore];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1279A0;
    v14[3] = &unk_2C8598;
    v14[4] = self;
    v15 = storedCopy;
    v16 = notStoredCopy;
    v17 = completionCopy;
    [persistentStore performBlock:v14];
  }

  else
  {
    v12 = objc_retainBlock(completionCopy);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12);
    }
  }
}

- (void)deleteEntriesMarkedToBeDeleted:(id)deleted completion:(id)completion
{
  deletedCopy = deleted;
  completionCopy = completion;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_127D38;
  v11[3] = &unk_2C7B30;
  v11[4] = self;
  v12 = deletedCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = deletedCopy;
  [persistentStore performBlock:v11];
}

- (void)gatherPrunableItemsForLevel:(signed __int16)level withCompletion:(id)completion
{
  completionCopy = completion;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_128020;
  v9[3] = &unk_2CD968;
  levelCopy = level;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [persistentStore performBlock:v9];
}

- (void)gatherPrunableItemsWithIdentifier:(id)identifier forLevel:(signed __int16)level withCompletion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_128508;
  v13[3] = &unk_2CD918;
  v13[4] = self;
  v14 = identifierCopy;
  levelCopy = level;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = identifierCopy;
  [persistentStore performBlock:v13];
}

- (void)pruneItems:(id)items forMedium:(signed __int16)medium prunedEntry:(id)entry withCompletion:(id)completion
{
  itemsCopy = items;
  entryCopy = entry;
  completionCopy = completion;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_128980;
  v16[3] = &unk_2CD990;
  v17 = itemsCopy;
  selfCopy = self;
  v19 = entryCopy;
  v20 = completionCopy;
  v13 = completionCopy;
  v14 = entryCopy;
  v15 = itemsCopy;
  [persistentStore performBlock:v16];
}

- (void)_inventoryLevel:(signed __int16)level addLevelID:(BOOL)d completion:(id)completion
{
  completionCopy = completion;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_128CF4;
  v11[3] = &unk_2CD9B8;
  levelCopy = level;
  dCopy = d;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [persistentStore performBlock:v11];
}

- (void)_clean:(id)_clean
{
  _cleanCopy = _clean;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  [persistentStore clean:_cleanCopy];
}

- (id)metadataForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_129218;
  v16 = sub_129228;
  v17 = 0;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_129230;
  v9[3] = &unk_2C8838;
  v9[4] = self;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [persistentStore performBlockAndWait:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)fetchMetadataForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_129428;
  v11[3] = &unk_2C7B30;
  v11[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  [persistentStore performBlockAndWait:v11];
}

- (void)imageColorForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_129664;
  v11[3] = &unk_2C7B30;
  v11[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  [persistentStore performBlock:v11];
}

- (void)setImageColor:(id)color forIdentifier:(id)identifier
{
  colorCopy = color;
  identifierCopy = identifier;
  persistentStore = [(BICImageSetPersistence *)self persistentStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1297D8;
  v11[3] = &unk_2C89F8;
  v11[4] = self;
  v12 = identifierCopy;
  v13 = colorCopy;
  v9 = colorCopy;
  v10 = identifierCopy;
  [persistentStore performBlock:v11];
}

@end