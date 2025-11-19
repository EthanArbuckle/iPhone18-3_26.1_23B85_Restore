@interface BKLibraryDataSourceAdaptor
- (BCUCoverEffectsEnvironment)coverEffectsEnvironment;
- (BKLibraryDataSourceAdaptor)initWithBooksDataSource:(id)a3 supplementaryDataSource:(id)a4;
- (BOOL)collectionView:(id)a3 canMoveItemAtIndexPath:(id)a4;
- (BOOL)isEditable;
- (BOOL)isItemPlayingAtIndexPath:(id)a3;
- (BOOL)shouldDragWithTouch:(id)a3;
- (CGRect)coverRectForLibraryAsset:(id)a3;
- (NSString)dataSourceID;
- (double)bookCellHeightFor:(id)a3 editMode:(BOOL)a4 metrics:(id)a5 clearCache:(BOOL)a6;
- (id)_audioBookStatusForCell:(id)a3;
- (id)_nonContainerAssetsFrom:(id)a3;
- (id)bookImageProviderForLibraryAsset:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)coverAnimationSourceReferenceViewForLibraryAsset:(id)a3;
- (id)coverAnimationSourceViewForLibraryAsset:(id)a3;
- (id)coverImageForLibraryAsset:(id)a3;
- (id)indexPathForRepresentedObject:(id)a3;
- (id)representedObjectForIndexPath:(id)a3;
- (id)retrieveValueForKey:(id)a3 forConsumer:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)coverAnimationSourceAlignment;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)adjustHeight:(id)a3;
- (void)booksDataSource:(id)a3 insertedSections:(id)a4 deletedSections:(id)a5 insertedItems:(id)a6 deletedItems:(id)a7 updatedItems:(id)a8 mayHaveZeroObjects:(BOOL)a9;
- (void)booksDataSourceReloadAssetInfo:(id)a3;
- (void)booksDataSourceReloadAssetInfo:(id)a3 forAssetIDs:(id)a4;
- (void)booksDataSourceReloadAssetReviewData:(id)a3;
- (void)booksDataSourceReloadAssetReviewData:(id)a3 forAssetIDs:(id)a4;
- (void)collectionView:(id)a3 addAssets:(id)a4;
- (void)collectionView:(id)a3 addBookStoreItem:(id)a4;
- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)coverAnimationSourceFinalizeForLibraryAsset:(id)a3;
- (void)coverAnimationSourcePrepareForLibraryAsset:(id)a3;
- (void)invalidateLayoutFor:(id)a3;
- (void)registerClasses;
- (void)reloadData;
- (void)setCollectionView:(id)a3;
- (void)storeValue:(id)a3 forKey:(id)a4 forConsumer:(id)a5;
@end

@implementation BKLibraryDataSourceAdaptor

- (BKLibraryDataSourceAdaptor)initWithBooksDataSource:(id)a3 supplementaryDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = BKLibraryDataSourceAdaptor;
  v8 = [(BKLibraryDataSourceAdaptor *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(BKLibraryDataSourceAdaptor *)v8 setBooksDataSource:v6];
    [(BKLibraryDataSourceAdaptor *)v9 setSupplementaryDataSource:v7];
    v10 = +[NSMutableDictionary dictionary];
    storage = v9->_storage;
    v9->_storage = v10;
  }

  return v9;
}

- (void)setCollectionView:(id)a3
{
  objc_storeStrong(&self->_collectionView, a3);

  [(BKLibraryDataSourceAdaptor *)self registerClasses];
}

- (void)registerClasses
{
  v3 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:off_100ACEF00];

  v4 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:off_100ACEF08];

  v5 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:off_100ACEF10];

  v6 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:off_100ACEF18];

  v7 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [v7 registerClass:objc_opt_class() forSupplementaryViewOfKind:off_100ACEF30 withReuseIdentifier:off_100ACEF20];

  v8 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [v8 registerClass:objc_opt_class() forSupplementaryViewOfKind:off_100ACEF38 withReuseIdentifier:off_100ACEF20];

  v9 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [v9 registerClass:objc_opt_class() forSupplementaryViewOfKind:off_100ACEF40 withReuseIdentifier:off_100ACEF20];

  v10 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [v10 registerClass:objc_opt_class() forSupplementaryViewOfKind:off_100ACEF48 withReuseIdentifier:off_100ACEF20];

  v11 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [v11 registerClass:objc_opt_class() forSupplementaryViewOfKind:off_100ACEF50 withReuseIdentifier:off_100ACEF28];
}

- (void)reloadData
{
  v3 = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  [v3 invalidateFRC];

  v4 = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  [v4 reloadData];
}

- (id)representedObjectForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  v6 = [v5 representedObjectForIndexPath:v4];

  return v6;
}

- (id)indexPathForRepresentedObject:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  v6 = [v5 indexPathForRepresentedObject:v4];

  return v6;
}

- (BOOL)isEditable
{
  v2 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
  v3 = [v2 collection];

  LOBYTE(v2) = [v3 allowsManualAddition];
  return v2;
}

- (NSString)dataSourceID
{
  v2 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
  v3 = [v2 collection];

  v4 = [v3 collectionID];

  return v4;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  v4 = [v3 numberOfSections];

  return v4;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  v6 = [v5 numberOfItemsInSection:a4];

  return v6;
}

- (BOOL)shouldDragWithTouch:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  v11 = [v10 hitTest:0 withEvent:{v7, v9}];

  v12 = BUProtocolCast();
  if (!v12)
  {
    v13 = [v11 superview];
    v12 = BUProtocolCast();
  }

  v14 = [v12 shouldDragWithTouch:v4];

  return v14;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  context = objc_autoreleasePoolPush();
  objc_opt_class();
  v8 = [(BKLibraryDataSourceAdaptor *)self representedObjectForIndexPath:v7];
  v9 = BUDynamicCast();

  objc_opt_class();
  v10 = [v6 layoutAttributesForItemAtIndexPath:v7];
  v11 = BUDynamicCast();

  v12 = v9;
  v45 = v11;
  v13 = [v11 cellMetrics];
  v14 = [v13 cellType];

  if (v14 > 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = *off_100A0A658[v14];
  }

  v47 = v6;
  v44 = v15;
  v16 = [v6 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:v7];
  v17 = BUProtocolCast();
  [v17 setStorageProvider:self];
  v18 = [(BKLibraryDataSourceAdaptor *)self coverEffectsEnvironment];
  [v17 setCoverEffectsEnvironment:v18];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v19 = BUDynamicCast();
    v20 = [(BKLibraryDataSourceAdaptor *)self actionHandler];
    [v19 setActionHandler:v20];

    v21 = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
    [v19 setHasSeriesSequenceLabel:{objc_msgSend(v21, "hasSeriesSequenceLabel")}];
  }

  v22 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
  [v17 setDataSource:v22];

  [v17 setLibraryAsset:v12];
  [v17 setLayoutManager:self];
  v23 = [(BKLibraryDataSourceAdaptor *)self actionHandler];
  [v17 setupMenuWithLibraryAsset:v12 withActionHandler:v23];

  v24 = BUProtocolCast();
  if (v24)
  {
    v25 = [(BKLibraryDataSourceAdaptor *)self _audioBookStatusForCell:v17];
    objc_opt_class();
    v26 = BUClassAndProtocolCast();
    [v24 setAudiobookStatus:{v26, &OBJC_PROTOCOL___AEAssetAudiobookStatus}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v27 = BUDynamicCast();
    v28 = [(BKLibraryDataSourceAdaptor *)self actionHandler];
    [v27 setActionHandler:v28];
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v29 = BUDynamicCast();
    v30 = [(BKLibraryDataSourceAdaptor *)self actionHandler];
    [v29 setActionHandler:v30];

    v27 = [v12 assetID];
    v31 = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1001AEB48;
    v51[3] = &unk_100A0A5B0;
    v52 = v29;
    v53 = self;
    v28 = v29;
    v32 = [v31 assetReviewForAssetID:v27 completion:v51];
    [v28 setAssetReview:v32];

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v42 = BUDynamicCast();
    v43 = [(BKLibraryDataSourceAdaptor *)self actionHandler];
    [v42 setActionHandler:v43];
  }

LABEL_13:
  objc_opt_class();
  v33 = BUClassAndProtocolCast();
  if ([v33 needsAsset])
  {
    v34 = [v12 isAudiobook];
    v35 = [v12 assetID];
    v36 = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1001AEC68;
    v48[3] = &unk_100A0A5D8;
    v49 = v16;
    v50 = v33;
    [v36 resourceForAssetID:v35 type:v34 completion:v48];
  }

  v37 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  v38 = [v37 delegate];
  v39 = BUProtocolCast();
  objc_opt_class();
  v40 = BUDynamicCast();
  [v40 setDelegate:v39];

  objc_autoreleasePoolPop(context);

  return v16;
}

- (BOOL)isItemPlayingAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  v6 = [v5 cellForItemAtIndexPath:v4];

  v7 = BUProtocolCast();

  if (v7)
  {
    v8 = [v7 audiobookStatus];
    v9 = [v8 assetAudiobookStatusIsPlaying];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_audioBookStatusForCell:(id)a3
{
  v4 = a3;
  v5 = [v4 libraryAsset];
  v6 = [v5 isAudiobook];

  if (v6)
  {
    objc_opt_class();
    v7 = [(BKLibraryDataSourceAdaptor *)self collectionView];
    v8 = [v7 delegate];
    v9 = BUDynamicCast();

    v10 = [v9 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKMinifiedPresenting];
    v11 = [v4 libraryAsset];
    v12 = [v11 assetID];
    v13 = [v10 minifiedPresenterAssetCurrentPresenterForAssetID:v12];

    v14 = [v13 minifiedAssetStatus];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:off_100ACEF30] || objc_msgSend(v9, "isEqualToString:", off_100ACEF38) || objc_msgSend(v9, "isEqualToString:", off_100ACEF40))
  {
    v11 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:off_100ACEF20 forIndexPath:v10];
    v12 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
    [v11 setDataSource:v12];

    v13 = [(BKLibraryDataSourceAdaptor *)self actionHandler];
    [v11 setActionHandler:v13];
LABEL_5:
    v14 = v11;
LABEL_6:

    goto LABEL_7;
  }

  if ([v9 isEqualToString:off_100ACEF48])
  {
    v11 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:off_100ACEF20 forIndexPath:v10];
    v13 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
    [v11 setDataSource:v13];
    goto LABEL_5;
  }

  v16 = [v9 isEqualToString:off_100ACEF50];
  v14 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:off_100ACEF28 forIndexPath:v10];
  if (v16)
  {
    objc_opt_class();
    v17 = [(BKLibraryDataSourceAdaptor *)self representedObjectForIndexPath:v10];
    v13 = BUDynamicCast();

    v24 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
    v27 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
    v26 = [v27 currentSortMode];
    v25 = [v26 sectionKeyPathForDisplay];
    v18 = [v25 componentsSeparatedByString:@"."];
    v19 = [v18 lastObject];
    v20 = [v13 valueForKey:v19];
    v11 = [v24 stringFromSectionData:v20];

    [v14 setSectionName:v11];
    v21 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
    v22 = [v21 collection];
    v23 = [v22 collectionID];
    LODWORD(v19) = [v23 isEqualToString:kBKCollectionDefaultIDFinished];

    if (v19)
    {
      [v14 setBottomSeparator:1];
    }

    goto LABEL_6;
  }

LABEL_7:

  return v14;
}

- (BOOL)collectionView:(id)a3 canMoveItemAtIndexPath:(id)a4
{
  v4 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource:a3];
  v5 = [v4 sortMode] == 6;

  return v5;
}

- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  [v9 moveItemAtIndexPath:v8 toIndexPath:v7];
}

- (id)_nonContainerAssetsFrom:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v10 isContainer] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)collectionView:(id)a3 addAssets:(id)a4
{
  v5 = a4;
  if ([v5 count])
  {
    v6 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
    v7 = [v6 collection];
    v8 = [v7 collectionID];
    v9 = [v8 isEqualToString:kBKCollectionDefaultIDFinished];

    if (v9)
    {
      v27 = v5;
      v10 = [(BKLibraryDataSourceAdaptor *)self _nonContainerAssetsFrom:v5];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v29;
        do
        {
          v15 = 0;
          v16 = v13;
          do
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v10);
            }

            objc_opt_class();
            v17 = BUDynamicCast();
            [v17 setFinishedStateAddToFinishedCollection];
            objc_opt_class();
            v18 = [v17 managedObjectContext];
            v13 = BUDynamicCast();

            ++v15;
            v16 = v13;
          }

          while (v12 != v15);
          v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v12);
      }

      else
      {
        v13 = 0;
      }

      [v13 setSaveContext:2];
      if ([v13 hasChanges])
      {
        [v13 saveLibrary];
      }

      v5 = v27;
    }

    else
    {
      v19 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
      v20 = [v19 collection];
      v21 = [v20 collectionID];
      v22 = [v21 isEqualToString:kBKCollectionDefaultIDWantToRead];

      v23 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
      v24 = [v23 collection];
      v25 = v24;
      if (v22)
      {
        v26 = [(BKLibraryDataSourceAdaptor *)self _nonContainerAssetsFrom:v5];
        [v25 addLibraryAssets:v26];
      }

      else
      {
        [v24 addLibraryAssets:v5];
      }
    }
  }
}

- (void)collectionView:(id)a3 addBookStoreItem:(id)a4
{
  v5 = a4;
  v6 = +[BKLibraryManager defaultManager];
  v7 = [v6 collectionController];

  v8 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
  v9 = [v8 collection];
  v10 = [v9 collectionID];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001AF9B4;
  v13[3] = &unk_100A034F8;
  v14 = v5;
  v15 = v10;
  v11 = v10;
  v12 = v5;
  [v7 addStoreID:v12 toCollectionID:v11 forceToTop:1 completion:v13];
}

- (id)bookImageProviderForLibraryAsset:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  v6 = [v5 indexPathForRepresentedObject:v4];

  v7 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  v8 = [v7 cellForItemAtIndexPath:v6];

  objc_opt_class();
  v9 = BUClassAndProtocolCast();

  return v9;
}

- (id)coverImageForLibraryAsset:(id)a3
{
  v3 = [(BKLibraryDataSourceAdaptor *)self bookImageProviderForLibraryAsset:a3];
  v4 = [v3 coverImage];

  return v4;
}

- (id)coverAnimationSourceViewForLibraryAsset:(id)a3
{
  v3 = [(BKLibraryDataSourceAdaptor *)self bookImageProviderForLibraryAsset:a3];
  v4 = [v3 coverView];

  return v4;
}

- (CGRect)coverRectForLibraryAsset:(id)a3
{
  v4 = [(BKLibraryDataSourceAdaptor *)self bookImageProviderForLibraryAsset:a3];
  v5 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  v6 = [v5 superview];
  [v4 coverContainerFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v4 contentView];
  [v6 convertRect:v15 fromView:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (id)coverAnimationSourceReferenceViewForLibraryAsset:(id)a3
{
  v3 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  v4 = [v3 superview];

  return v4;
}

- (void)coverAnimationSourcePrepareForLibraryAsset:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [v5 layoutIfNeeded];

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v6 = [(BKLibraryDataSourceAdaptor *)self collectionView:0];
  v7 = [v6 subviews];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = BUProtocolCast();
        v13 = [v12 libraryAsset];

        if (v13 == v4)
        {
          [v12 setCoverHidden:1];

          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)coverAnimationSourceFinalizeForLibraryAsset:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [v5 layoutIfNeeded];

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v6 = [(BKLibraryDataSourceAdaptor *)self collectionView:0];
  v7 = [v6 subviews];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = BUProtocolCast();
        v13 = [v12 libraryAsset];

        if (v13 == v4)
        {
          [v12 setCoverHidden:0];

          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (int64_t)coverAnimationSourceAlignment
{
  v2 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
  v3 = [v2 viewMode];

  if (v3 == 1)
  {
    return 2;
  }

  else
  {
    return v3 == 2;
  }
}

- (void)adjustHeight:(id)a3
{
  v14 = a3;
  v4 = [v14 representedElementKind];
  v5 = [v4 isEqualToString:off_100ACEF30];

  if (v5)
  {
    v6 = BKLibraryBookshelfTitleHeader;
    goto LABEL_3;
  }

  v8 = [v14 representedElementKind];
  v9 = [v8 isEqualToString:off_100ACEF38];

  if ((v9 & 1) == 0)
  {
    v10 = [v14 representedElementKind];
    v11 = [v10 isEqualToString:off_100ACEF40];

    if (v11)
    {
      v6 = BKLibraryBookshelfCollectionInfoHeader;
    }

    else
    {
      v12 = [v14 representedElementKind];
      v13 = [v12 isEqualToString:off_100ACEF48];

      if (!v13)
      {
        v7 = [v14 representedElementKind];
        [v7 isEqualToString:off_100ACEF50];
        goto LABEL_4;
      }

      v6 = BKLibraryBookshelfNoBooks;
    }

LABEL_3:
    v7 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
    [(__objc2_class *)v6 adjustHeight:v14 withDataSource:v7];
LABEL_4:
  }
}

- (double)bookCellHeightFor:(id)a3 editMode:(BOOL)a4 metrics:(id)a5 clearCache:(BOOL)a6
{
  v7 = a4;
  v10 = a5;
  if (a3)
  {
    v11 = a3;
    objc_opt_class();
    v12 = [(BKLibraryDataSourceAdaptor *)self representedObjectForIndexPath:v11];

    a3 = BUDynamicCast();
  }

  v13 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
  v14 = [v13 currentStoreAccountID];
  v15 = [v14 stringValue];

  v16 = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  v17 = [a3 assetID];
  v18 = [v16 assetReviewForAssetID:v17];

  LOBYTE(v22) = a6;
  [BKLibraryBookshelfFinishedBookCell bookCellHeightFor:a3 assetReview:v18 storeID:v15 editMode:v7 metrics:v10 storageProvider:self clearCache:v22];
  v20 = v19;

  return v20;
}

- (void)storeValue:(id)a3 forKey:(id)a4 forConsumer:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(BKLibraryDataSourceAdaptor *)self storage];
  v11 = [v10 objectForKey:v9];

  if (!v11)
  {
    v11 = +[NSMutableDictionary dictionary];
    v12 = [(BKLibraryDataSourceAdaptor *)self storage];
    [v12 setObject:v11 forKey:v9];
  }

  [v11 setObject:v13 forKey:v8];
}

- (id)retrieveValueForKey:(id)a3 forConsumer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKLibraryDataSourceAdaptor *)self storage];
  v9 = [v8 objectForKey:v6];

  v10 = [v9 objectForKey:v7];

  return v10;
}

- (void)invalidateLayoutFor:(id)a3
{
  v4 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  v3 = [v4 collectionViewLayout];
  [v3 invalidateLayout];
}

- (void)booksDataSource:(id)a3 insertedSections:(id)a4 deletedSections:(id)a5 insertedItems:(id)a6 deletedItems:(id)a7 updatedItems:(id)a8 mayHaveZeroObjects:(BOOL)a9
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_1001B05DC;
  v25 = &unk_100A04B18;
  v17 = v14;
  v26 = v17;
  v18 = v13;
  v27 = v18;
  v19 = v16;
  v28 = v19;
  v20 = v15;
  v31 = a9;
  v29 = v20;
  v30 = self;
  v21 = objc_retainBlock(&v22);
  if ([NSThread isMainThread:v22])
  {
    (v21[2])(v21);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v21);
  }
}

- (void)booksDataSourceReloadAssetInfo:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001B0918;
  v4[3] = &unk_100A033C8;
  v4[4] = self;
  v3 = objc_retainBlock(v4);
  if (+[NSThread isMainThread])
  {
    (v3[2])(v3);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v3);
  }
}

- (void)booksDataSourceReloadAssetInfo:(id)a3 forAssetIDs:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B0A00;
  v5[3] = &unk_100A03440;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
  [UIView animateWithDuration:v5 animations:0.3];
}

- (void)booksDataSourceReloadAssetReviewData:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001B0CA8;
  v4[3] = &unk_100A033C8;
  v4[4] = self;
  v3 = objc_retainBlock(v4);
  if (+[NSThread isMainThread])
  {
    (v3[2])(v3);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v3);
  }
}

- (void)booksDataSourceReloadAssetReviewData:(id)a3 forAssetIDs:(id)a4
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1001B0DC0;
  v10 = &unk_100A03440;
  v11 = self;
  v12 = a4;
  v5 = v12;
  [UIView animateWithDuration:&v7 animations:0.3];
  v6 = [(BKLibraryDataSourceAdaptor *)self collectionView:v7];
  [v6 performBatchUpdates:&stru_100A0A618 completion:&stru_100A0A638];
}

- (BCUCoverEffectsEnvironment)coverEffectsEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_coverEffectsEnvironment);

  return WeakRetained;
}

@end