@interface BKDeleteActionItemsProvider
- (BKCollection)collection;
- (BKDeleteActionItemsProvider)initWithBooks:(id)a3 currentCollectionId:(id)a4;
- (BOOL)canDeleteFromAllDevices;
- (BOOL)canRemoveFromCollection;
- (NSArray)actionItems;
- (id)_assetPurchasedDSIDForLibraryAsset:(id)a3;
- (int64_t)localOnlyBookCount;
- (unint64_t)countForActionItem:(int64_t)a3;
- (void)computeCounts;
@end

@implementation BKDeleteActionItemsProvider

- (BKDeleteActionItemsProvider)initWithBooks:(id)a3 currentCollectionId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BKDeleteActionItemsProvider;
  v9 = [(BKDeleteActionItemsProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_booksToDelete, a3);
    v11 = [v8 copy];
    collectionId = v10->_collectionId;
    v10->_collectionId = v11;

    [(BKDeleteActionItemsProvider *)v10 computeCounts];
  }

  return v10;
}

- (void)computeCounts
{
  v3 = +[BUAccountsProvider sharedProvider];
  v80 = [v3 isUserSignedInToiCloud];

  v4 = +[BUAccountsProvider sharedProvider];
  v5 = [v4 activeStoreAccount];
  v6 = [v5 ams_DSID];
  v59 = [v6 stringValue];

  v7 = [(BKDeleteActionItemsProvider *)self booksToDelete];
  v58 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v7 count]);

  v8 = [(BKDeleteActionItemsProvider *)self collectionId];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v56 = self;
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
        v13 = [v12 isInSamples];
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
          v14 = [v12 storeID];
          v15 = [v14 longLongValue];

          if (v15)
          {
            if ([v12 isCloud])
            {
              ++v68;
            }

            else if (v13 & 1 | (([v12 isStoreItem] & 1) == 0))
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
                if (v59 && [v12 isBook])
                {
                  v16 = [(BKDeleteActionItemsProvider *)v56 _assetPurchasedDSIDForLibraryAsset:v12];
                  v57 += [v16 isEqualToString:v59];
                }

                v17 = [v12 storeID];
                [v58 addObject:v17];
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
          v18 = [v12 storeID];
          v19 = [v18 longLongValue];

          if (v19)
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

        if (v80)
        {
          v20 = +[BKLibraryAssetStatusController sharedController];
          v21 = [v12 permanentOrTemporaryAssetID];
          v22 = [v20 statusForAssetID:v21];

          if (v22)
          {
            v23 = [v22 state];
            v24 = v77;
            if (v23 == &dword_8 + 2)
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
        v25 = [v12 collectionMembers];
        v26 = [v25 countByEnumeratingWithState:&v83 objects:v91 count:16];
        if (v26)
        {
          v27 = v26;
          v82 = i;
          v28 = v13;
          v29 = v10;
          v30 = v9;
          v31 = *v84;
          while (2)
          {
            for (j = 0; j != v27; j = j + 1)
            {
              if (*v84 != v31)
              {
                objc_enumerationMutation(v25);
              }

              v33 = [*(*(&v83 + 1) + 8 * j) collection];
              v34 = [v33 collectionID];

              if (v34 && ([v8 isEqualToString:v34] & 1) == 0 && +[BKCollection allowsManualAdditionToCollectionWithID:](BKCollection, "allowsManualAdditionToCollectionWithID:", v34))
              {

                v76 = 1;
                goto LABEL_63;
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v83 objects:v91 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }

LABEL_63:
          v9 = v30;
          v10 = v29;
          v13 = v28;
          i = v82;
        }

        v10 |= v13;
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

  v56->_ghostBookCount = v55;
  v56->_localJaliscoBooksOnlyCount = v37;
  v56->_localUbiquityCount = v52;
  v56->_nonlocalUbiquityCount = v40;
  v56->_localiTunesUCount = v54;
  v56->_nonlocaliTunesUCount = v53;
  v56->_downloadingCount = v51;
  v56->_localITSAudiobookCount = v50;
  v56->_cloudITSAudiobookCount = v49;
  v56->_nonStoreAudiobookCount = v45;
  v56->_ubiquityErrorCount = v47;
  v56->_pdfCount = v9;
  v56->_storeItemCount = v41;
  v56->_localSampleCount = v42;
  v56->_nonLocalSampleCount = v43;
  v56->_recentBooksCount = v46;
  v56->_memberOfOtherManualCollection = v48 & 1;
  v56->_memberOfSampleCollection = v10 & 1;
  v56->_seriesItemCount = v38;
  v56->_seriesStackCount = v39;
  v56->_sideloadedItemCount = v44;
}

- (int64_t)localOnlyBookCount
{
  v3 = [(BKDeleteActionItemsProvider *)self booksToDelete];
  v15 = [v3 count];
  v14 = [(BKDeleteActionItemsProvider *)self ghostBookCount];
  v4 = [(BKDeleteActionItemsProvider *)self localJaliscoBooksOnlyCount];
  v5 = [(BKDeleteActionItemsProvider *)self localITSAudiobookCount];
  v6 = [(BKDeleteActionItemsProvider *)self ubiquityCount];
  v7 = [(BKDeleteActionItemsProvider *)self iTunesUCount];
  v8 = [(BKDeleteActionItemsProvider *)self downloadingCount];
  v9 = [(BKDeleteActionItemsProvider *)self storeItemCount];
  v10 = [(BKDeleteActionItemsProvider *)self sampleCount];
  v11 = [(BKDeleteActionItemsProvider *)self seriesItemCount];
  v12 = v15 - ([(BKDeleteActionItemsProvider *)self seriesStackCount]+ v10 + v11);

  return v12 - (v14 + v4 + v5 + v6 + v7 + v8 + v9);
}

- (BOOL)canDeleteFromAllDevices
{
  v3 = (![(BKDeleteActionItemsProvider *)self localOnlyBookCount]|| [(BKDeleteActionItemsProvider *)self ubiquityCount]|| [(BKDeleteActionItemsProvider *)self iTunesUCount]) && ![(BKDeleteActionItemsProvider *)self ghostBookCount]&& ![(BKDeleteActionItemsProvider *)self localJaliscoBooksOnlyCount]&& ![(BKDeleteActionItemsProvider *)self localITSAudiobookCount]&& [(BKDeleteActionItemsProvider *)self seriesStackCount]== 0;
  if (![(BKDeleteActionItemsProvider *)self ubiquityCount]&& ![(BKDeleteActionItemsProvider *)self iTunesUCount])
  {
    v4 = [(BKDeleteActionItemsProvider *)self collectionId];
    if ([v4 isEqualToString:kBKCollectionDefaultAll])
    {

      return 0;
    }

    v5 = [(BKDeleteActionItemsProvider *)self collection];
    v6 = [v5 isSeriesCollection];

    if (v6)
    {
      return 0;
    }
  }

  return v3;
}

- (BOOL)canRemoveFromCollection
{
  v2 = [(BKDeleteActionItemsProvider *)self collection];
  v3 = [v2 deleteRemovesFromCollection];

  return v3;
}

- (BKCollection)collection
{
  v3 = [(BKDeleteActionItemsProvider *)self collectionId];

  if (v3)
  {
    objc_opt_class();
    v4 = +[BKLibraryManager defaultManager];
    v5 = [v4 collectionProvider];
    v6 = [(BKDeleteActionItemsProvider *)self collectionId];
    v7 = [v5 collectionOnMainQueueWithCollectionID:v6 error:0];
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
  v4 = [v3 isUserSignedInToiCloud];

  v5 = [(BKDeleteActionItemsProvider *)self canRemoveFromCollection];
  v6 = [(BKDeleteActionItemsProvider *)self canDeleteFromAllDevices];
  if (v4)
  {
    v7 = v6;
    if ([(BKDeleteActionItemsProvider *)self localUbiquityCount]|| [(BKDeleteActionItemsProvider *)self localiTunesUCount])
    {
      v8 = 0;
      v9 = 0;
LABEL_15:
      v10 = 1;
      goto LABEL_16;
    }

    if (v7 && ([(BKDeleteActionItemsProvider *)self nonlocalUbiquityCount]|| [(BKDeleteActionItemsProvider *)self nonlocaliTunesUCount]))
    {
      v10 = 0;
      v8 = 0;
      v9 = 0;
      v7 = 1;
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
    v7 = 0;
    v9 = 1;
  }

  else
  {
    if ([(BKDeleteActionItemsProvider *)self localJaliscoBooksOnlyCount]|| [(BKDeleteActionItemsProvider *)self localITSAudiobookCount])
    {
      v8 = 0;
      v9 = 0;
      v7 = 0;
      goto LABEL_15;
    }

    if ([(BKDeleteActionItemsProvider *)self sampleCount])
    {
      if ([(BKDeleteActionItemsProvider *)self localSampleCount]&& ([(NSString *)self->_collectionId isEqualToString:kBKCollectionDefaultAll]|| [(NSString *)self->_collectionId isEqualToString:kBKCollectionDefaultIDSamples]|| [(NSString *)self->_collectionId isEqualToString:kBKCollectionDefaultIDDownloaded]))
      {
        v9 = 0;
        v7 = 0;
        v10 = 1;
      }

      else
      {
        v10 = 0;
        v9 = 0;
        v7 = 0;
      }

      v8 = 1;
    }

    else if ([(BKDeleteActionItemsProvider *)self storeItemCount])
    {
      v7 = [(BKDeleteActionItemsProvider *)self memberOfOtherManualCollection];
      v10 = 0;
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v10 = 0;
      v8 = 0;
      v9 = 0;
      v7 = 0;
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

  v13 = [(BKDeleteActionItemsProvider *)self memberOfSampleCollection];
  if ([(BKDeleteActionItemsProvider *)self storeItemCount])
  {
    v14 = [(BKDeleteActionItemsProvider *)self collectionId];
    v15 = (v14 != 0) & (v5 ^ 1);
  }

  else
  {
    v15 = 0;
  }

  v16 = [NSMutableArray arrayWithCapacity:3];
  v17 = v16;
  if (v5)
  {
    [v16 addObject:&off_DDFE8];
  }

  if ([(BKDeleteActionItemsProvider *)self memberOfSampleCollection])
  {
    v18 = [(BKDeleteActionItemsProvider *)self collectionId];
    v19 = [v18 isEqualToString:kBKCollectionDefaultIDSamples];

    if ((v19 & 1) == 0)
    {
      [v17 addObject:&off_DE000];
    }
  }

  v20 = +[UIApplication sharedApplication];
  v21 = [objc_opt_class() isRunningInStoreDemoMode];

  if ((v21 & 1) == 0)
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

    if (v7)
    {
      [v17 addObject:&off_DE060];
    }

    if (v8 | v13 & !v11 & (v7 ^ 1))
    {
      [v17 addObject:&off_DE078];
    }
  }

  v22 = [v17 copy];

  return v22;
}

- (unint64_t)countForActionItem:(int64_t)a3
{
  if (a3 == 7)
  {
    if ((+[BLLibraryUtility _isMultiUser]& 1) == 0)
    {
      v8 = +[BURestrictionsProvider sharedInstance];
      v9 = [v8 isAccountModificationAllowed];

      if (v9)
      {
        v10 = [(BKDeleteActionItemsProvider *)self localJaliscoBooksOnlyCount];
        v11 = [(BKDeleteActionItemsProvider *)self localITSAudiobookCount]+ v10;
        return [(BKDeleteActionItemsProvider *)self ghostBookCount]+ v11;
      }
    }

    return 0;
  }

  if (a3 != 2)
  {
    return 0;
  }

  v4 = +[BUAccountsProvider sharedProvider];
  v5 = [v4 isUserSignedInToiCloud];

  if (v5)
  {
    v6 = [(BKDeleteActionItemsProvider *)self localUbiquityCount];
    v7 = [(BKDeleteActionItemsProvider *)self localiTunesUCount];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v13 = [(BKDeleteActionItemsProvider *)self localJaliscoBooksOnlyCount];
  v14 = [(BKDeleteActionItemsProvider *)self localITSAudiobookCount];
  return [(BKDeleteActionItemsProvider *)self localSampleCount]+ v14 + v7 + v6 + v13;
}

- (id)_assetPurchasedDSIDForLibraryAsset:(id)a3
{
  v3 = a3;
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
  [v5 assetAccountIdentifiersForAsset:v3 completion:v9];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

@end