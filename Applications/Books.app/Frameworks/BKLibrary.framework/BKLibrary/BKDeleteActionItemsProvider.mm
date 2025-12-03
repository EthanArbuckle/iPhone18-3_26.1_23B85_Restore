@interface BKDeleteActionItemsProvider
- (BKCollection)collection;
- (BKDeleteActionItemsProvider)initWithBooks:(id)books currentCollectionId:(id)id;
- (BOOL)canDeleteFromAllDevices;
- (BOOL)canRemoveFromCollection;
- (NSArray)actionItems;
- (id)_assetPurchasedDSIDForLibraryAsset:(id)asset;
- (int64_t)localOnlyBookCount;
- (unint64_t)countForActionItem:(int64_t)item;
- (void)computeCounts;
@end

@implementation BKDeleteActionItemsProvider

- (BKDeleteActionItemsProvider)initWithBooks:(id)books currentCollectionId:(id)id
{
  booksCopy = books;
  idCopy = id;
  v14.receiver = self;
  v14.super_class = BKDeleteActionItemsProvider;
  v9 = [(BKDeleteActionItemsProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_booksToDelete, books);
    v11 = [idCopy copy];
    collectionId = v10->_collectionId;
    v10->_collectionId = v11;

    [(BKDeleteActionItemsProvider *)v10 computeCounts];
  }

  return v10;
}

- (void)computeCounts
{
  v3 = +[BUAccountsProvider sharedProvider];
  isUserSignedInToiCloud = [v3 isUserSignedInToiCloud];

  v4 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v4 activeStoreAccount];
  ams_DSID = [activeStoreAccount ams_DSID];
  stringValue = [ams_DSID stringValue];

  booksToDelete = [(BKDeleteActionItemsProvider *)self booksToDelete];
  v58 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [booksToDelete count]);

  collectionId = [(BKDeleteActionItemsProvider *)self collectionId];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  selfCopy = self;
  obj = [(BKDeleteActionItemsProvider *)self booksToDelete];
  v81 = [obj countByEnumeratingWithState:&v87 objects:v92 count:16];
  if (v81)
  {
    v66 = 0;
    v67 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v77 = 0;
    v78 = 0;
    v71 = 0;
    v72 = 0;
    v9 = 0;
    v76 = 0;
    v10 = 0;
    v69 = 0;
    v70 = 0;
    v64 = 0;
    v65 = 0;
    v73 = 0;
    v74 = 0;
    v57 = 0;
    v68 = 0;
    v79 = *v88;
    do
    {
      for (i = 0; i != v81; i = i + 1)
      {
        if (*v88 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v87 + 1) + 8 * i);
        isInSamples = [v12 isInSamples];
        if ([v12 iTunesU])
        {
          if ([v12 isLocal])
          {
            ++v73;
          }

          else
          {
            v74 += [v12 isCloud];
          }
        }

        else
        {
          storeID = [v12 storeID];
          longLongValue = [storeID longLongValue];

          if (longLongValue)
          {
            if ([v12 isCloud])
            {
              ++v68;
            }

            else if (isInSamples & 1 | (([v12 isStoreItem] & 1) == 0))
            {
              if ([v12 isDownloading])
              {
                ++v64;
              }

              else if ([v12 isSample])
              {
                ++v63;
              }

              else if ([v12 isNonLocalSample])
              {
                ++v62;
              }

              else if ([v12 isSeriesItem])
              {
                ++v61;
              }

              else if ([v12 isContainer])
              {
                ++v60;
              }

              else
              {
                if (stringValue && [v12 isBook])
                {
                  v16 = [(BKDeleteActionItemsProvider *)selfCopy _assetPurchasedDSIDForLibraryAsset:v12];
                  v57 += [v16 isEqualToString:stringValue];
                }

                storeID2 = [v12 storeID];
                [v58 addObject:storeID2];
              }
            }

            else
            {
              ++v67;
            }
          }

          else
          {
            ++v72;
            if ([v12 canRedownload])
            {
              if ([v12 isLocal])
              {
                ++v65;
              }

              else
              {
                v66 += [v12 isCloud];
              }
            }
          }
        }

        if ([v12 isAudiobook])
        {
          storeID3 = [v12 storeID];
          longLongValue2 = [storeID3 longLongValue];

          if (longLongValue2)
          {
            if ([v12 isCloud])
            {
              ++v70;
            }

            else
            {
              v69 += [v12 isLocal];
            }
          }

          else
          {
            ++v71;
          }
        }

        if (isUserSignedInToiCloud)
        {
          v20 = +[BKLibraryAssetStatusController sharedController];
          permanentOrTemporaryAssetID = [v12 permanentOrTemporaryAssetID];
          v22 = [v20 statusForAssetID:permanentOrTemporaryAssetID];

          if (v22)
          {
            state = [v22 state];
            v24 = v77;
            if (state == &dword_8 + 2)
            {
              v24 = v77 + 1;
            }

            v77 = v24;
          }
        }

        if ([v12 contentType] == 3)
        {
          ++v9;
        }

        if ([v12 isTrackedAsRecent] && (!objc_msgSend(v12, "isStoreItem") || (objc_msgSend(v12, "isAudiobook") & 1) == 0))
        {
          ++v78;
        }

        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        collectionMembers = [v12 collectionMembers];
        v26 = [collectionMembers countByEnumeratingWithState:&v83 objects:v91 count:16];
        if (v26)
        {
          v27 = v26;
          v82 = i;
          v28 = isInSamples;
          v29 = v10;
          v30 = v9;
          v31 = *v84;
          while (2)
          {
            for (j = 0; j != v27; j = j + 1)
            {
              if (*v84 != v31)
              {
                objc_enumerationMutation(collectionMembers);
              }

              collection = [*(*(&v83 + 1) + 8 * j) collection];
              collectionID = [collection collectionID];

              if (collectionID && ([collectionId isEqualToString:collectionID] & 1) == 0 && +[BKCollection allowsManualAdditionToCollectionWithID:](BKCollection, "allowsManualAdditionToCollectionWithID:", collectionID))
              {

                v76 = 1;
                goto LABEL_63;
              }
            }

            v27 = [collectionMembers countByEnumeratingWithState:&v83 objects:v91 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }

LABEL_63:
          v9 = v30;
          v10 = v29;
          isInSamples = v28;
          i = v82;
        }

        v10 |= isInSamples;
      }

      v81 = [obj countByEnumeratingWithState:&v87 objects:v92 count:16];
    }

    while (v81);
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v77 = 0;
    v78 = 0;
    v71 = 0;
    v72 = 0;
    v9 = 0;
    v76 = 0;
    LOBYTE(v10) = 0;
    v69 = 0;
    v70 = 0;
    v64 = 0;
    v65 = 0;
    v73 = 0;
    v74 = 0;
    v57 = 0;
    v68 = 0;
  }

  if ([v58 count])
  {
    v35 = +[BKLibraryManager defaultManager];
    v36 = [v35 assetIDsInDataSourceWithIdentifier:@"com.apple.ibooks.datasource.jalisco.purchases" intersectingWithAssetIDs:v58];

    v37 = v57;
    if ([v36 count])
    {
      v37 = [v36 count];
    }

    v39 = v60;
    v38 = v61;
    v40 = v66;
    v41 = v67;
    v43 = v62;
    v42 = v63;
    v45 = v71;
    v44 = v72;
    v47 = v77;
    v46 = v78;
    v48 = v76;
    v50 = v69;
    v49 = v70;
    v51 = v64;
    v52 = v65;
    v54 = v73;
    v53 = v74;
    v55 = v68;
  }

  else
  {
    v39 = v60;
    v38 = v61;
    v40 = v66;
    v41 = v67;
    v43 = v62;
    v42 = v63;
    v45 = v71;
    v44 = v72;
    v47 = v77;
    v46 = v78;
    v48 = v76;
    v50 = v69;
    v49 = v70;
    v51 = v64;
    v52 = v65;
    v54 = v73;
    v53 = v74;
    v55 = v68;
    v37 = v57;
  }

  selfCopy->_ghostBookCount = v55;
  selfCopy->_localJaliscoBooksOnlyCount = v37;
  selfCopy->_localUbiquityCount = v52;
  selfCopy->_nonlocalUbiquityCount = v40;
  selfCopy->_localiTunesUCount = v54;
  selfCopy->_nonlocaliTunesUCount = v53;
  selfCopy->_downloadingCount = v51;
  selfCopy->_localITSAudiobookCount = v50;
  selfCopy->_cloudITSAudiobookCount = v49;
  selfCopy->_nonStoreAudiobookCount = v45;
  selfCopy->_ubiquityErrorCount = v47;
  selfCopy->_pdfCount = v9;
  selfCopy->_storeItemCount = v41;
  selfCopy->_localSampleCount = v42;
  selfCopy->_nonLocalSampleCount = v43;
  selfCopy->_recentBooksCount = v46;
  selfCopy->_memberOfOtherManualCollection = v48 & 1;
  selfCopy->_memberOfSampleCollection = v10 & 1;
  selfCopy->_seriesItemCount = v38;
  selfCopy->_seriesStackCount = v39;
  selfCopy->_sideloadedItemCount = v44;
}

- (int64_t)localOnlyBookCount
{
  booksToDelete = [(BKDeleteActionItemsProvider *)self booksToDelete];
  v15 = [booksToDelete count];
  ghostBookCount = [(BKDeleteActionItemsProvider *)self ghostBookCount];
  localJaliscoBooksOnlyCount = [(BKDeleteActionItemsProvider *)self localJaliscoBooksOnlyCount];
  localITSAudiobookCount = [(BKDeleteActionItemsProvider *)self localITSAudiobookCount];
  ubiquityCount = [(BKDeleteActionItemsProvider *)self ubiquityCount];
  iTunesUCount = [(BKDeleteActionItemsProvider *)self iTunesUCount];
  downloadingCount = [(BKDeleteActionItemsProvider *)self downloadingCount];
  storeItemCount = [(BKDeleteActionItemsProvider *)self storeItemCount];
  sampleCount = [(BKDeleteActionItemsProvider *)self sampleCount];
  seriesItemCount = [(BKDeleteActionItemsProvider *)self seriesItemCount];
  v12 = v15 - ([(BKDeleteActionItemsProvider *)self seriesStackCount]+ sampleCount + seriesItemCount);

  return v12 - (ghostBookCount + localJaliscoBooksOnlyCount + localITSAudiobookCount + ubiquityCount + iTunesUCount + downloadingCount + storeItemCount);
}

- (BOOL)canDeleteFromAllDevices
{
  v3 = (![(BKDeleteActionItemsProvider *)self localOnlyBookCount]|| [(BKDeleteActionItemsProvider *)self ubiquityCount]|| [(BKDeleteActionItemsProvider *)self iTunesUCount]) && ![(BKDeleteActionItemsProvider *)self ghostBookCount]&& ![(BKDeleteActionItemsProvider *)self localJaliscoBooksOnlyCount]&& ![(BKDeleteActionItemsProvider *)self localITSAudiobookCount]&& [(BKDeleteActionItemsProvider *)self seriesStackCount]== 0;
  if (![(BKDeleteActionItemsProvider *)self ubiquityCount]&& ![(BKDeleteActionItemsProvider *)self iTunesUCount])
  {
    collectionId = [(BKDeleteActionItemsProvider *)self collectionId];
    if ([collectionId isEqualToString:kBKCollectionDefaultAll])
    {

      return 0;
    }

    collection = [(BKDeleteActionItemsProvider *)self collection];
    isSeriesCollection = [collection isSeriesCollection];

    if (isSeriesCollection)
    {
      return 0;
    }
  }

  return v3;
}

- (BOOL)canRemoveFromCollection
{
  collection = [(BKDeleteActionItemsProvider *)self collection];
  deleteRemovesFromCollection = [collection deleteRemovesFromCollection];

  return deleteRemovesFromCollection;
}

- (BKCollection)collection
{
  collectionId = [(BKDeleteActionItemsProvider *)self collectionId];

  if (collectionId)
  {
    objc_opt_class();
    v4 = +[BKLibraryManager defaultManager];
    collectionProvider = [v4 collectionProvider];
    collectionId2 = [(BKDeleteActionItemsProvider *)self collectionId];
    v7 = [collectionProvider collectionOnMainQueueWithCollectionID:collectionId2 error:0];
    v8 = BUDynamicCast();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)actionItems
{
  v3 = +[BUAccountsProvider sharedProvider];
  isUserSignedInToiCloud = [v3 isUserSignedInToiCloud];

  canRemoveFromCollection = [(BKDeleteActionItemsProvider *)self canRemoveFromCollection];
  canDeleteFromAllDevices = [(BKDeleteActionItemsProvider *)self canDeleteFromAllDevices];
  if (isUserSignedInToiCloud)
  {
    memberOfOtherManualCollection = canDeleteFromAllDevices;
    if ([(BKDeleteActionItemsProvider *)self localUbiquityCount]|| [(BKDeleteActionItemsProvider *)self localiTunesUCount])
    {
      v8 = 0;
      v9 = 0;
LABEL_15:
      v10 = 1;
      goto LABEL_16;
    }

    if (memberOfOtherManualCollection && ([(BKDeleteActionItemsProvider *)self nonlocalUbiquityCount]|| [(BKDeleteActionItemsProvider *)self nonlocaliTunesUCount]))
    {
      v10 = 0;
      v8 = 0;
      v9 = 0;
      memberOfOtherManualCollection = 1;
      goto LABEL_16;
    }

    if ([(BKDeleteActionItemsProvider *)self ubiquityErrorCount])
    {
      goto LABEL_44;
    }
  }

  if ([(BKDeleteActionItemsProvider *)self localOnlyBookCount]>= 1 && ![(BKDeleteActionItemsProvider *)self sampleCount])
  {
LABEL_44:
    v10 = 0;
    v8 = 0;
    memberOfOtherManualCollection = 0;
    v9 = 1;
  }

  else
  {
    if ([(BKDeleteActionItemsProvider *)self localJaliscoBooksOnlyCount]|| [(BKDeleteActionItemsProvider *)self localITSAudiobookCount])
    {
      v8 = 0;
      v9 = 0;
      memberOfOtherManualCollection = 0;
      goto LABEL_15;
    }

    if ([(BKDeleteActionItemsProvider *)self sampleCount])
    {
      if ([(BKDeleteActionItemsProvider *)self localSampleCount]&& ([(NSString *)self->_collectionId isEqualToString:kBKCollectionDefaultAll]|| [(NSString *)self->_collectionId isEqualToString:kBKCollectionDefaultIDSamples]|| [(NSString *)self->_collectionId isEqualToString:kBKCollectionDefaultIDDownloaded]))
      {
        v9 = 0;
        memberOfOtherManualCollection = 0;
        v10 = 1;
      }

      else
      {
        v10 = 0;
        v9 = 0;
        memberOfOtherManualCollection = 0;
      }

      v8 = 1;
    }

    else if ([(BKDeleteActionItemsProvider *)self storeItemCount])
    {
      memberOfOtherManualCollection = [(BKDeleteActionItemsProvider *)self memberOfOtherManualCollection];
      v10 = 0;
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v10 = 0;
      v8 = 0;
      v9 = 0;
      memberOfOtherManualCollection = 0;
    }
  }

LABEL_16:
  if ([(BKDeleteActionItemsProvider *)self sideloadedItemCount])
  {
    v11 = 0;
  }

  else
  {
    v11 = [(BKDeleteActionItemsProvider *)self countForActionItem:7]!= 0;
  }

  if ([(BKDeleteActionItemsProvider *)self downloadingCount])
  {
    v12 = 1;
  }

  else
  {
    v12 = v10;
  }

  memberOfSampleCollection = [(BKDeleteActionItemsProvider *)self memberOfSampleCollection];
  if ([(BKDeleteActionItemsProvider *)self storeItemCount])
  {
    collectionId = [(BKDeleteActionItemsProvider *)self collectionId];
    v15 = (collectionId != 0) & (canRemoveFromCollection ^ 1);
  }

  else
  {
    v15 = 0;
  }

  v16 = [NSMutableArray arrayWithCapacity:3];
  v17 = v16;
  if (canRemoveFromCollection)
  {
    [v16 addObject:&off_DDFE8];
  }

  if ([(BKDeleteActionItemsProvider *)self memberOfSampleCollection])
  {
    collectionId2 = [(BKDeleteActionItemsProvider *)self collectionId];
    v19 = [collectionId2 isEqualToString:kBKCollectionDefaultIDSamples];

    if ((v19 & 1) == 0)
    {
      [v17 addObject:&off_DE000];
    }
  }

  v20 = +[UIApplication sharedApplication];
  isRunningInStoreDemoMode = [objc_opt_class() isRunningInStoreDemoMode];

  if ((isRunningInStoreDemoMode & 1) == 0)
  {
    if (v12)
    {
      [v17 addObject:&off_DE018];
    }

    if (v11)
    {
      [v17 addObject:&off_DE030];
    }

    if (v9 | v15)
    {
      [v17 addObject:&off_DE048];
    }

    if (memberOfOtherManualCollection)
    {
      [v17 addObject:&off_DE060];
    }

    if (v8 | memberOfSampleCollection & !v11 & (memberOfOtherManualCollection ^ 1))
    {
      [v17 addObject:&off_DE078];
    }
  }

  v22 = [v17 copy];

  return v22;
}

- (unint64_t)countForActionItem:(int64_t)item
{
  if (item == 7)
  {
    if ((+[BLLibraryUtility _isMultiUser]& 1) == 0)
    {
      v8 = +[BURestrictionsProvider sharedInstance];
      isAccountModificationAllowed = [v8 isAccountModificationAllowed];

      if (isAccountModificationAllowed)
      {
        localJaliscoBooksOnlyCount = [(BKDeleteActionItemsProvider *)self localJaliscoBooksOnlyCount];
        v11 = [(BKDeleteActionItemsProvider *)self localITSAudiobookCount]+ localJaliscoBooksOnlyCount;
        return [(BKDeleteActionItemsProvider *)self ghostBookCount]+ v11;
      }
    }

    return 0;
  }

  if (item != 2)
  {
    return 0;
  }

  v4 = +[BUAccountsProvider sharedProvider];
  isUserSignedInToiCloud = [v4 isUserSignedInToiCloud];

  if (isUserSignedInToiCloud)
  {
    localUbiquityCount = [(BKDeleteActionItemsProvider *)self localUbiquityCount];
    localiTunesUCount = [(BKDeleteActionItemsProvider *)self localiTunesUCount];
  }

  else
  {
    localUbiquityCount = 0;
    localiTunesUCount = 0;
  }

  localJaliscoBooksOnlyCount2 = [(BKDeleteActionItemsProvider *)self localJaliscoBooksOnlyCount];
  localITSAudiobookCount = [(BKDeleteActionItemsProvider *)self localITSAudiobookCount];
  return [(BKDeleteActionItemsProvider *)self localSampleCount]+ localITSAudiobookCount + localiTunesUCount + localUbiquityCount + localJaliscoBooksOnlyCount2;
}

- (id)_assetPurchasedDSIDForLibraryAsset:(id)asset
{
  assetCopy = asset;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_507D8;
  v16 = sub_507E8;
  v17 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = +[BKLibraryManager defaultManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_507F0;
  v9[3] = &unk_D6E78;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [v5 assetAccountIdentifiersForAsset:assetCopy completion:v9];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

@end