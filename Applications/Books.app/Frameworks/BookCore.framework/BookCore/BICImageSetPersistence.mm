@interface BICImageSetPersistence
+ (id)addedEntryWithDescribedImage:(id)a3 imageEntry:(id)a4;
- (BICImageSetPersistence)initWithPersistentStore:(id)a3 comparator:(id)a4;
- (BOOL)_isImagePotentialPrimary:(id)a3;
- (id)_imageSetForIdentifier:(id)a3;
- (id)metadataForIdentifier:(id)a3;
- (void)_addImageEntriesForDescribedImages:(id)a3 inLevelID:(signed __int16)a4 toSet:(id)a5 addedEntries:(id)a6;
- (void)_clean:(id)a3;
- (void)_inventoryLevel:(signed __int16)a3 addLevelID:(BOOL)a4 completion:(id)a5;
- (void)_markAsOldAllNonPrimaryImagesForImageSetIDs:(id)a3 completion:(id)a4;
- (void)_populateEntry:(id)a3 fromImage:(id)a4;
- (void)_removeImageEntriesForDescribedImages:(id)a3 inLevelID:(signed __int16)a4 fromSet:(id)a5 removedEntries:(id)a6;
- (void)_saveIfNeeded;
- (void)_updateAspectRatioForImageSet:(id)a3 size:(CGSize)a4 force:(BOOL)a5;
- (void)_withPrimaryEntryForImageSetID:(id)a3 performBlock:(id)a4;
- (void)addImageEntriesForDescribedImages:(id)a3 inLevelID:(signed __int16)a4 addedEntries:(id)a5;
- (void)deleteEntriesMarkedToBeDeleted:(id)a3 completion:(id)a4;
- (void)fetchMetadataForIdentifier:(id)a3 completion:(id)a4;
- (void)gatherPrunableItemsForLevel:(signed __int16)a3 withCompletion:(id)a4;
- (void)gatherPrunableItemsWithIdentifier:(id)a3 forLevel:(signed __int16)a4 withCompletion:(id)a5;
- (void)imageColorForIdentifier:(id)a3 completion:(id)a4;
- (void)incrementVersionForIdentifier:(id)a3;
- (void)incrementVersionForIdentifiers:(id)a3;
- (void)markEntriesAsStored:(id)a3 notStored:(id)a4 completion:(id)a5;
- (void)pruneItems:(id)a3 forMedium:(signed __int16)a4 prunedEntry:(id)a5 withCompletion:(id)a6;
- (void)removeImageEntriesForDescribedImages:(id)a3 inLevelID:(signed __int16)a4 removedEntries:(id)a5;
- (void)removeImageSets:(id)a3;
- (void)setImageColor:(id)a3 forIdentifier:(id)a4;
- (void)withExistingImageEntryForDescribedImage:(id)a3 inLevelID:(signed __int16)a4 performBlock:(id)a5;
- (void)withExistingImageSetForDescribedImage:(id)a3 performBlock:(id)a4;
@end

@implementation BICImageSetPersistence

+ (id)addedEntryWithDescribedImage:(id)a3 imageEntry:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[BICImageSetPersistingAddedEntry alloc] initWithDescribedImage:v6 imageEntry:v5];

  return v7;
}

- (BICImageSetPersistence)initWithPersistentStore:(id)a3 comparator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BICImageSetPersistence;
  v9 = [(BICImageSetPersistence *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageComparator, a4);
    objc_storeStrong(&v10->_persistentStore, a3);
  }

  return v10;
}

- (id)_imageSetForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BICImageSetPersistence *)self persistentStore];
  v6 = [v5 imageSetForIdentifier:v4];

  return v6;
}

- (void)_withPrimaryEntryForImageSetID:(id)a3 performBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BICImageSetPersistence *)self persistentStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1256A8;
  v11[3] = &unk_2C7B30;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)incrementVersionForIdentifiers:(id)a3
{
  v4 = a3;
  v5 = BCImageCacheLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "BICImageSetPersistence: Increment version for: %@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_125848;
  v7[3] = &unk_2C8200;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(BICImageSetPersistence *)self _markAsOldAllNonPrimaryImagesForImageSetIDs:v6 completion:v7];
}

- (void)incrementVersionForIdentifier:(id)a3
{
  v4 = [NSSet setWithObject:a3];
  [(BICImageSetPersistence *)self incrementVersionForIdentifiers:v4];
}

- (void)_markAsOldAllNonPrimaryImagesForImageSetIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BICImageSetPersistence *)self persistentStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_125A74;
  v11[3] = &unk_2C7B30;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)withExistingImageEntryForDescribedImage:(id)a3 inLevelID:(signed __int16)a4 performBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(BICImageSetPersistence *)self persistentStore];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_125DF8;
  v13[3] = &unk_2CD918;
  v17 = a4;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  [v10 performBlock:v13];
}

- (void)withExistingImageSetForDescribedImage:(id)a3 performBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BICImageSetPersistence *)self persistentStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_126064;
  v11[3] = &unk_2CB128;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [v8 performBlock:v11];
}

- (void)_addImageEntriesForDescribedImages:(id)a3 inLevelID:(signed __int16)a4 toSet:(id)a5 addedEntries:(id)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a5;
  v70 = a6;
  v77 = v10;
  v11 = [v10 imageEntries];
  v66 = [v11 count];

  v78 = [v9 mutableCopy];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v100 objects:v111 count:16];
  v69 = v12;
  v75 = v8;
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
        switch(v8)
        {
          case 3:
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            v18 = [v77 imageEntries];
            v43 = [v18 countByEnumeratingWithState:&v84 objects:v105 count:16];
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
                    objc_enumerationMutation(v18);
                  }

                  if ([*(*(&v84 + 1) + 8 * i) level] == 3)
                  {
                    [v78 removeObjectIdenticalTo:v17];
                    goto LABEL_65;
                  }
                }

                v44 = [v18 countByEnumeratingWithState:&v84 objects:v105 count:16];
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
            v32 = [v77 imageEntries];
            v33 = [v32 countByEnumeratingWithState:&v92 objects:v107 count:16];
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
                    objc_enumerationMutation(v32);
                  }

                  v37 = *(*(&v92 + 1) + 8 * j);
                  if ([v37 state] == 1)
                  {
                    v38 = [v37 entryLocation];
                    v39 = [v31 isEqualToString:v38];

                    if (v39)
                    {
                      [v78 removeObjectIdenticalTo:v17];
                    }
                  }

                  else if ([v37 level] == 2)
                  {
                    v40 = [v37 dataStoreInformation];
                    v41 = [v17 urlString];
                    v42 = [v40 isEqualToString:v41];

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

                v34 = [v32 countByEnumeratingWithState:&v92 objects:v107 count:16];
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
            v18 = obj;
            v47 = [v18 countByEnumeratingWithState:&v88 objects:v106 count:16];
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
                    objc_enumerationMutation(v18);
                  }

                  [*(*(&v88 + 1) + 8 * k) deleteEntry];
                }

                v48 = [v18 countByEnumeratingWithState:&v88 objects:v106 count:16];
              }

              while (v48);
            }

            v8 = v75;
            v14 = v71;
            v16 = v67;
            break;
          case 1:
            v18 = [*(*(&v100 + 1) + 8 * v16) entryLocationForLevelID:1];
            v96 = 0u;
            v97 = 0u;
            v98 = 0u;
            v99 = 0u;
            v19 = [v77 imageEntries];
            v20 = [v19 countByEnumeratingWithState:&v96 objects:v110 count:16];
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
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v96 + 1) + 8 * m);
                  v25 = [v24 entryLocation];
                  v26 = [v25 isEqualToString:v18];

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

                    v28 = [v17 image];
                    if (![v28 CGImage] || (v29 = objc_msgSend(v17, "quality"), v29 <= objc_msgSend(v24, "quality")) && objc_msgSend(v24, "quality") != 3)
                    {

LABEL_54:
                      [v78 removeObjectIdenticalTo:v17];
                      goto LABEL_55;
                    }

                    v30 = [v24 state];

                    if (v30 != 2)
                    {
                      goto LABEL_54;
                    }

                    [v24 deleteEntry];
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v96 objects:v110 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }
            }

LABEL_55:

            v8 = v75;
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
    v79 = 0;
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
        v57 = [v56 entryLocationForLevelID:v8];
        if (([v51 containsObject:v57] & 1) == 0)
        {
          [v51 addObject:v57];
          if ([(BICImageSetPersistence *)self _isImagePotentialPrimary:v56])
          {
            v58 = v79 == 0;
          }

          else
          {
            v58 = 0;
          }

          if (v58)
          {
            if (v72 & 1 | (v66 == 0))
            {
              v79 = 0;
            }

            else
            {
              v79 = [v77 primaryEntry];
              v72 = 1;
            }
          }

          v59 = [(BICImageSetPersistence *)self persistentStore];
          v60 = [v59 addNewImageEntryToSet:v77];

          [v60 setLevel:v75];
          [v60 setState:1];
          [(BICImageSetPersistence *)self _populateEntry:v60 fromImage:v56];
          v8 = v75;
          [v77 errorCheck];
          v61 = [[BICImageSetPersistingAddedEntry alloc] initWithDescribedImage:v56 imageEntry:v60];
          [v70 addObject:v61];
        }
      }

      v53 = [obja countByEnumeratingWithState:&v80 objects:v104 count:16];
    }

    while (v53);
  }

  else
  {
    v72 = 0;
    v79 = 0;
  }

  v62 = [(BICImageSetPersistence *)self persistentStore];
  [v62 processPendingChanges];

  if (v72)
  {
    v63 = [v77 primaryEntry];
    v64 = v63;
    if (v63 && v63 != v79 && v66 >= 1)
    {
      v65 = [v77 identifier];
      [(BICImageSetPersistence *)self incrementVersionForIdentifier:v65];
    }
  }
}

- (void)_removeImageEntriesForDescribedImages:(id)a3 inLevelID:(signed __int16)a4 fromSet:(id)a5 removedEntries:(id)a6
{
  v8 = a4;
  v29 = a3;
  v33 = a6;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [a5 imageEntries];
  v10 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    v28 = v8;
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
        if ([v14 level] == v8)
        {
          v32 = v13;
          v15 = [BICDescribedImage describedImageFromImageEntry:v14];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v16 = v29;
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
                v22 = [(BICImageSetPersistence *)self imageComparator];
                v23 = [v22 isMatching:v21 withCandidateImage:v15 includeQuality:1];

                if (v23)
                {
                  [v14 setState:3];
                  v24 = BCImageCacheLog();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    v25 = [v14 entryLocation];
                    *buf = 138412290;
                    v43 = v25;
                    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "BICImageSetPersistence: Marking for deletion: %@", buf, 0xCu);
                  }

                  v26 = [[BICImageSetPersistingAddedEntry alloc] initWithDescribedImage:v21 imageEntry:v14];
                  [v33 addObject:v26];
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
            }

            while (v18);
          }

          v8 = v28;
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

- (BOOL)_isImagePotentialPrimary:(id)a3
{
  v3 = a3;
  v4 = [v3 adamID];
  v8 = v4 && (([v3 imageSize], v6 == CGSizeZero.width) ? (v7 = v5 == CGSizeZero.height) : (v7 = 0), v7) && objc_msgSend(v3, "quality") == 203;

  v9 = [v3 filePath];
  if (v9)
  {
    v10 = [v3 quality] > 0xC9;
  }

  else
  {
    v11 = [v3 urlString];
    if (v11)
    {
      v10 = [v3 quality] > 0xC9;
    }

    else
    {
      v10 = 0;
    }
  }

  return v8 || v10;
}

- (void)_updateAspectRatioForImageSet:(id)a3 size:(CGSize)a4 force:(BOOL)a5
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  if (a5 || ([v13 widthForAspectRatio], v10 = v9, objc_msgSend(v13, "heightForAspectRatio"), v8 = (v10 * v11), width * height > v8))
  {
    *&v8 = width;
    [v13 setWidthForAspectRatio:v8];
    *&v12 = height;
    [v13 setHeightForAspectRatio:v12];
  }
}

- (void)_populateEntry:(id)a3 fromImage:(id)a4
{
  v28 = a3;
  v6 = a4;
  [v6 nonShadowArea];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v28 setProcessingOptions:{objc_msgSend(v6, "processingOptions")}];
  [v6 imageSize];
  [v28 setImageSize:?];
  [v28 setQuality:{objc_msgSend(v6, "quality")}];
  v15 = [v28 entryLocationFromParameters];
  [v28 setEntryLocation:v15];

  v16 = [v6 expiry];
  [v28 setExpiry:v16];

  [v28 setShadowLeft:v8];
  [v28 setShadowTop:v10];
  [v28 setShadowWidth:v12];
  [v28 setShadowHeight:v14];
  v17 = +[NSDate date];
  [v28 setLastUsed:v17];

  [v6 imageSize];
  v19 = v18;
  Height = v20;
  v22 = [v28 imageSet];
  v23 = [v6 image];
  v24 = [v23 CGImage];

  if (v24 && ![v6 processingOptions])
  {
    Width = CGImageGetWidth(v24);
    -[BICImageSetPersistence _updateAspectRatioForImageSet:size:force:](self, "_updateAspectRatioForImageSet:size:force:", v22, [v22 actualAspectRatio] ^ 1, Width, CGImageGetHeight(v24));
    [v22 setActualAspectRatio:1];
  }

  else if (([v22 actualAspectRatio] & 1) == 0)
  {
    v25 = CGSizeZero.width;
    if (CGSizeZero.width != v19 || (v25 = CGSizeZero.height, v25 != Height))
    {
      v26 = [v6 unknownAspectRatio];
      if (v24 && v26)
      {
        v19 = CGImageGetWidth(v24);
        Height = CGImageGetHeight(v24);
      }

      [(BICImageSetPersistence *)self _updateAspectRatioForImageSet:v22 size:0 force:v19, Height];
    }
  }

  [v28 setPotentialPrimary:{-[BICImageSetPersistence _isImagePotentialPrimary:](self, "_isImagePotentialPrimary:", v6)}];
}

- (void)_saveIfNeeded
{
  v2 = [(BICImageSetPersistence *)self persistentStore];
  [v2 saveIfNeeded];
}

- (void)addImageEntriesForDescribedImages:(id)a3 inLevelID:(signed __int16)a4 addedEntries:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v10 = +[NSMutableArray array];
    v11 = [BICDescribedImage describedImagesToDictionaryOfSets:v8];
    v12 = [v11 allKeys];
    v13 = [(BICImageSetPersistence *)self persistentStore];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1271B8;
    v17[3] = &unk_2CD940;
    v18 = v8;
    v19 = self;
    v20 = v12;
    v21 = v11;
    v24 = a4;
    v22 = v10;
    v23 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    [v13 performBlock:v17];
  }

  else
  {
    (*(v9 + 2))(v9, 0);
  }
}

- (void)removeImageEntriesForDescribedImages:(id)a3 inLevelID:(signed __int16)a4 removedEntries:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(BICImageSetPersistence *)self persistentStore];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_127650;
  v13[3] = &unk_2CD918;
  v14 = v8;
  v15 = self;
  v17 = a4;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  [v10 performBlock:v13];
}

- (void)removeImageSets:(id)a3
{
  v4 = a3;
  v5 = [(BICImageSetPersistence *)self persistentStore];
  [v5 removeImageSets:v4];
}

- (void)markEntriesAsStored:(id)a3 notStored:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] || objc_msgSend(v9, "count"))
  {
    v11 = [(BICImageSetPersistence *)self persistentStore];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1279A0;
    v14[3] = &unk_2C8598;
    v14[4] = self;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    [v11 performBlock:v14];
  }

  else
  {
    v12 = objc_retainBlock(v10);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12);
    }
  }
}

- (void)deleteEntriesMarkedToBeDeleted:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BICImageSetPersistence *)self persistentStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_127D38;
  v11[3] = &unk_2C7B30;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)gatherPrunableItemsForLevel:(signed __int16)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(BICImageSetPersistence *)self persistentStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_128020;
  v9[3] = &unk_2CD968;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 performBlock:v9];
}

- (void)gatherPrunableItemsWithIdentifier:(id)a3 forLevel:(signed __int16)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(BICImageSetPersistence *)self persistentStore];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_128508;
  v13[3] = &unk_2CD918;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [v10 performBlock:v13];
}

- (void)pruneItems:(id)a3 forMedium:(signed __int16)a4 prunedEntry:(id)a5 withCompletion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(BICImageSetPersistence *)self persistentStore];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_128980;
  v16[3] = &unk_2CD990;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  [v12 performBlock:v16];
}

- (void)_inventoryLevel:(signed __int16)a3 addLevelID:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(BICImageSetPersistence *)self persistentStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_128CF4;
  v11[3] = &unk_2CD9B8;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 performBlock:v11];
}

- (void)_clean:(id)a3
{
  v4 = a3;
  v5 = [(BICImageSetPersistence *)self persistentStore];
  [v5 clean:v4];
}

- (id)metadataForIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_129218;
  v16 = sub_129228;
  v17 = 0;
  v5 = [(BICImageSetPersistence *)self persistentStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_129230;
  v9[3] = &unk_2C8838;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 performBlockAndWait:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)fetchMetadataForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BICImageSetPersistence *)self persistentStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_129428;
  v11[3] = &unk_2C7B30;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlockAndWait:v11];
}

- (void)imageColorForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BICImageSetPersistence *)self persistentStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_129664;
  v11[3] = &unk_2C7B30;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)setImageColor:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BICImageSetPersistence *)self persistentStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1297D8;
  v11[3] = &unk_2C89F8;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [v8 performBlock:v11];
}

@end