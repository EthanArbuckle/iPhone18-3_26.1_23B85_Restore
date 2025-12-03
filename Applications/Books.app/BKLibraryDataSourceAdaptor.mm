@interface BKLibraryDataSourceAdaptor
- (BCUCoverEffectsEnvironment)coverEffectsEnvironment;
- (BKLibraryDataSourceAdaptor)initWithBooksDataSource:(id)source supplementaryDataSource:(id)dataSource;
- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path;
- (BOOL)isEditable;
- (BOOL)isItemPlayingAtIndexPath:(id)path;
- (BOOL)shouldDragWithTouch:(id)touch;
- (CGRect)coverRectForLibraryAsset:(id)asset;
- (NSString)dataSourceID;
- (double)bookCellHeightFor:(id)for editMode:(BOOL)mode metrics:(id)metrics clearCache:(BOOL)cache;
- (id)_audioBookStatusForCell:(id)cell;
- (id)_nonContainerAssetsFrom:(id)from;
- (id)bookImageProviderForLibraryAsset:(id)asset;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)coverAnimationSourceReferenceViewForLibraryAsset:(id)asset;
- (id)coverAnimationSourceViewForLibraryAsset:(id)asset;
- (id)coverImageForLibraryAsset:(id)asset;
- (id)indexPathForRepresentedObject:(id)object;
- (id)representedObjectForIndexPath:(id)path;
- (id)retrieveValueForKey:(id)key forConsumer:(id)consumer;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)coverAnimationSourceAlignment;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)adjustHeight:(id)height;
- (void)booksDataSource:(id)source insertedSections:(id)sections deletedSections:(id)deletedSections insertedItems:(id)items deletedItems:(id)deletedItems updatedItems:(id)updatedItems mayHaveZeroObjects:(BOOL)objects;
- (void)booksDataSourceReloadAssetInfo:(id)info;
- (void)booksDataSourceReloadAssetInfo:(id)info forAssetIDs:(id)ds;
- (void)booksDataSourceReloadAssetReviewData:(id)data;
- (void)booksDataSourceReloadAssetReviewData:(id)data forAssetIDs:(id)ds;
- (void)collectionView:(id)view addAssets:(id)assets;
- (void)collectionView:(id)view addBookStoreItem:(id)item;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)coverAnimationSourceFinalizeForLibraryAsset:(id)asset;
- (void)coverAnimationSourcePrepareForLibraryAsset:(id)asset;
- (void)invalidateLayoutFor:(id)for;
- (void)registerClasses;
- (void)reloadData;
- (void)setCollectionView:(id)view;
- (void)storeValue:(id)value forKey:(id)key forConsumer:(id)consumer;
@end

@implementation BKLibraryDataSourceAdaptor

- (BKLibraryDataSourceAdaptor)initWithBooksDataSource:(id)source supplementaryDataSource:(id)dataSource
{
  sourceCopy = source;
  dataSourceCopy = dataSource;
  v13.receiver = self;
  v13.super_class = BKLibraryDataSourceAdaptor;
  v8 = [(BKLibraryDataSourceAdaptor *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(BKLibraryDataSourceAdaptor *)v8 setBooksDataSource:sourceCopy];
    [(BKLibraryDataSourceAdaptor *)v9 setSupplementaryDataSource:dataSourceCopy];
    v10 = +[NSMutableDictionary dictionary];
    storage = v9->_storage;
    v9->_storage = v10;
  }

  return v9;
}

- (void)setCollectionView:(id)view
{
  objc_storeStrong(&self->_collectionView, view);

  [(BKLibraryDataSourceAdaptor *)self registerClasses];
}

- (void)registerClasses
{
  collectionView = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:off_100ACEF00];

  collectionView2 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [collectionView2 registerClass:objc_opt_class() forCellWithReuseIdentifier:off_100ACEF08];

  collectionView3 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [collectionView3 registerClass:objc_opt_class() forCellWithReuseIdentifier:off_100ACEF10];

  collectionView4 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [collectionView4 registerClass:objc_opt_class() forCellWithReuseIdentifier:off_100ACEF18];

  collectionView5 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [collectionView5 registerClass:objc_opt_class() forSupplementaryViewOfKind:off_100ACEF30 withReuseIdentifier:off_100ACEF20];

  collectionView6 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [collectionView6 registerClass:objc_opt_class() forSupplementaryViewOfKind:off_100ACEF38 withReuseIdentifier:off_100ACEF20];

  collectionView7 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [collectionView7 registerClass:objc_opt_class() forSupplementaryViewOfKind:off_100ACEF40 withReuseIdentifier:off_100ACEF20];

  collectionView8 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [collectionView8 registerClass:objc_opt_class() forSupplementaryViewOfKind:off_100ACEF48 withReuseIdentifier:off_100ACEF20];

  collectionView9 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [collectionView9 registerClass:objc_opt_class() forSupplementaryViewOfKind:off_100ACEF50 withReuseIdentifier:off_100ACEF28];
}

- (void)reloadData
{
  booksDataSource = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  [booksDataSource invalidateFRC];

  booksDataSource2 = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  [booksDataSource2 reloadData];
}

- (id)representedObjectForIndexPath:(id)path
{
  pathCopy = path;
  booksDataSource = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  v6 = [booksDataSource representedObjectForIndexPath:pathCopy];

  return v6;
}

- (id)indexPathForRepresentedObject:(id)object
{
  objectCopy = object;
  booksDataSource = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  v6 = [booksDataSource indexPathForRepresentedObject:objectCopy];

  return v6;
}

- (BOOL)isEditable
{
  supplementaryDataSource = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
  collection = [supplementaryDataSource collection];

  LOBYTE(supplementaryDataSource) = [collection allowsManualAddition];
  return supplementaryDataSource;
}

- (NSString)dataSourceID
{
  supplementaryDataSource = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
  collection = [supplementaryDataSource collection];

  collectionID = [collection collectionID];

  return collectionID;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  booksDataSource = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  numberOfSections = [booksDataSource numberOfSections];

  return numberOfSections;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  booksDataSource = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  v6 = [booksDataSource numberOfItemsInSection:section];

  return v6;
}

- (BOOL)shouldDragWithTouch:(id)touch
{
  touchCopy = touch;
  collectionView = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [touchCopy locationInView:collectionView];
  v7 = v6;
  v9 = v8;

  collectionView2 = [(BKLibraryDataSourceAdaptor *)self collectionView];
  v11 = [collectionView2 hitTest:0 withEvent:{v7, v9}];

  v12 = BUProtocolCast();
  if (!v12)
  {
    superview = [v11 superview];
    v12 = BUProtocolCast();
  }

  v14 = [v12 shouldDragWithTouch:touchCopy];

  return v14;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  context = objc_autoreleasePoolPush();
  objc_opt_class();
  v8 = [(BKLibraryDataSourceAdaptor *)self representedObjectForIndexPath:pathCopy];
  v9 = BUDynamicCast();

  objc_opt_class();
  v10 = [viewCopy layoutAttributesForItemAtIndexPath:pathCopy];
  v11 = BUDynamicCast();

  v12 = v9;
  v45 = v11;
  cellMetrics = [v11 cellMetrics];
  cellType = [cellMetrics cellType];

  if (cellType > 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = *off_100A0A658[cellType];
  }

  v47 = viewCopy;
  v44 = v15;
  v16 = [viewCopy dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:pathCopy];
  v17 = BUProtocolCast();
  [v17 setStorageProvider:self];
  coverEffectsEnvironment = [(BKLibraryDataSourceAdaptor *)self coverEffectsEnvironment];
  [v17 setCoverEffectsEnvironment:coverEffectsEnvironment];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v19 = BUDynamicCast();
    actionHandler = [(BKLibraryDataSourceAdaptor *)self actionHandler];
    [v19 setActionHandler:actionHandler];

    booksDataSource = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
    [v19 setHasSeriesSequenceLabel:{objc_msgSend(booksDataSource, "hasSeriesSequenceLabel")}];
  }

  supplementaryDataSource = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
  [v17 setDataSource:supplementaryDataSource];

  [v17 setLibraryAsset:v12];
  [v17 setLayoutManager:self];
  actionHandler2 = [(BKLibraryDataSourceAdaptor *)self actionHandler];
  [v17 setupMenuWithLibraryAsset:v12 withActionHandler:actionHandler2];

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
    assetID = BUDynamicCast();
    actionHandler3 = [(BKLibraryDataSourceAdaptor *)self actionHandler];
    [assetID setActionHandler:actionHandler3];
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v29 = BUDynamicCast();
    actionHandler4 = [(BKLibraryDataSourceAdaptor *)self actionHandler];
    [v29 setActionHandler:actionHandler4];

    assetID = [v12 assetID];
    booksDataSource2 = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1001AEB48;
    v51[3] = &unk_100A0A5B0;
    v52 = v29;
    selfCopy = self;
    actionHandler3 = v29;
    v32 = [booksDataSource2 assetReviewForAssetID:assetID completion:v51];
    [actionHandler3 setAssetReview:v32];

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v42 = BUDynamicCast();
    actionHandler5 = [(BKLibraryDataSourceAdaptor *)self actionHandler];
    [v42 setActionHandler:actionHandler5];
  }

LABEL_13:
  objc_opt_class();
  v33 = BUClassAndProtocolCast();
  if ([v33 needsAsset])
  {
    isAudiobook = [v12 isAudiobook];
    assetID2 = [v12 assetID];
    booksDataSource3 = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1001AEC68;
    v48[3] = &unk_100A0A5D8;
    v49 = v16;
    v50 = v33;
    [booksDataSource3 resourceForAssetID:assetID2 type:isAudiobook completion:v48];
  }

  collectionView = [(BKLibraryDataSourceAdaptor *)self collectionView];
  delegate = [collectionView delegate];
  v39 = BUProtocolCast();
  objc_opt_class();
  v40 = BUDynamicCast();
  [v40 setDelegate:v39];

  objc_autoreleasePoolPop(context);

  return v16;
}

- (BOOL)isItemPlayingAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(BKLibraryDataSourceAdaptor *)self collectionView];
  v6 = [collectionView cellForItemAtIndexPath:pathCopy];

  v7 = BUProtocolCast();

  if (v7)
  {
    audiobookStatus = [v7 audiobookStatus];
    assetAudiobookStatusIsPlaying = [audiobookStatus assetAudiobookStatusIsPlaying];
  }

  else
  {
    assetAudiobookStatusIsPlaying = 0;
  }

  return assetAudiobookStatusIsPlaying;
}

- (id)_audioBookStatusForCell:(id)cell
{
  cellCopy = cell;
  libraryAsset = [cellCopy libraryAsset];
  isAudiobook = [libraryAsset isAudiobook];

  if (isAudiobook)
  {
    objc_opt_class();
    collectionView = [(BKLibraryDataSourceAdaptor *)self collectionView];
    delegate = [collectionView delegate];
    v9 = BUDynamicCast();

    v10 = [v9 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKMinifiedPresenting];
    libraryAsset2 = [cellCopy libraryAsset];
    assetID = [libraryAsset2 assetID];
    v13 = [v10 minifiedPresenterAssetCurrentPresenterForAssetID:assetID];

    minifiedAssetStatus = [v13 minifiedAssetStatus];
  }

  else
  {
    minifiedAssetStatus = 0;
  }

  return minifiedAssetStatus;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:off_100ACEF30] || objc_msgSend(kindCopy, "isEqualToString:", off_100ACEF38) || objc_msgSend(kindCopy, "isEqualToString:", off_100ACEF40))
  {
    v11 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:off_100ACEF20 forIndexPath:pathCopy];
    supplementaryDataSource = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
    [v11 setDataSource:supplementaryDataSource];

    actionHandler = [(BKLibraryDataSourceAdaptor *)self actionHandler];
    [v11 setActionHandler:actionHandler];
LABEL_5:
    v14 = v11;
LABEL_6:

    goto LABEL_7;
  }

  if ([kindCopy isEqualToString:off_100ACEF48])
  {
    v11 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:off_100ACEF20 forIndexPath:pathCopy];
    actionHandler = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
    [v11 setDataSource:actionHandler];
    goto LABEL_5;
  }

  v16 = [kindCopy isEqualToString:off_100ACEF50];
  v14 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:off_100ACEF28 forIndexPath:pathCopy];
  if (v16)
  {
    objc_opt_class();
    v17 = [(BKLibraryDataSourceAdaptor *)self representedObjectForIndexPath:pathCopy];
    actionHandler = BUDynamicCast();

    supplementaryDataSource2 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
    supplementaryDataSource3 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
    currentSortMode = [supplementaryDataSource3 currentSortMode];
    sectionKeyPathForDisplay = [currentSortMode sectionKeyPathForDisplay];
    v18 = [sectionKeyPathForDisplay componentsSeparatedByString:@"."];
    lastObject = [v18 lastObject];
    v20 = [actionHandler valueForKey:lastObject];
    v11 = [supplementaryDataSource2 stringFromSectionData:v20];

    [v14 setSectionName:v11];
    supplementaryDataSource4 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
    collection = [supplementaryDataSource4 collection];
    collectionID = [collection collectionID];
    LODWORD(lastObject) = [collectionID isEqualToString:kBKCollectionDefaultIDFinished];

    if (lastObject)
    {
      [v14 setBottomSeparator:1];
    }

    goto LABEL_6;
  }

LABEL_7:

  return v14;
}

- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path
{
  v4 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource:view];
  v5 = [v4 sortMode] == 6;

  return v5;
}

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  booksDataSource = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  [booksDataSource moveItemAtIndexPath:pathCopy toIndexPath:indexPathCopy];
}

- (id)_nonContainerAssetsFrom:(id)from
{
  fromCopy = from;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = fromCopy;
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

- (void)collectionView:(id)view addAssets:(id)assets
{
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    supplementaryDataSource = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
    collection = [supplementaryDataSource collection];
    collectionID = [collection collectionID];
    v9 = [collectionID isEqualToString:kBKCollectionDefaultIDFinished];

    if (v9)
    {
      v27 = assetsCopy;
      v10 = [(BKLibraryDataSourceAdaptor *)self _nonContainerAssetsFrom:assetsCopy];
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
            managedObjectContext = [v17 managedObjectContext];
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

      assetsCopy = v27;
    }

    else
    {
      supplementaryDataSource2 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
      collection2 = [supplementaryDataSource2 collection];
      collectionID2 = [collection2 collectionID];
      v22 = [collectionID2 isEqualToString:kBKCollectionDefaultIDWantToRead];

      supplementaryDataSource3 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
      collection3 = [supplementaryDataSource3 collection];
      v25 = collection3;
      if (v22)
      {
        v26 = [(BKLibraryDataSourceAdaptor *)self _nonContainerAssetsFrom:assetsCopy];
        [v25 addLibraryAssets:v26];
      }

      else
      {
        [collection3 addLibraryAssets:assetsCopy];
      }
    }
  }
}

- (void)collectionView:(id)view addBookStoreItem:(id)item
{
  itemCopy = item;
  v6 = +[BKLibraryManager defaultManager];
  collectionController = [v6 collectionController];

  supplementaryDataSource = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
  collection = [supplementaryDataSource collection];
  collectionID = [collection collectionID];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001AF9B4;
  v13[3] = &unk_100A034F8;
  v14 = itemCopy;
  v15 = collectionID;
  v11 = collectionID;
  v12 = itemCopy;
  [collectionController addStoreID:v12 toCollectionID:v11 forceToTop:1 completion:v13];
}

- (id)bookImageProviderForLibraryAsset:(id)asset
{
  assetCopy = asset;
  booksDataSource = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  v6 = [booksDataSource indexPathForRepresentedObject:assetCopy];

  collectionView = [(BKLibraryDataSourceAdaptor *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:v6];

  objc_opt_class();
  v9 = BUClassAndProtocolCast();

  return v9;
}

- (id)coverImageForLibraryAsset:(id)asset
{
  v3 = [(BKLibraryDataSourceAdaptor *)self bookImageProviderForLibraryAsset:asset];
  coverImage = [v3 coverImage];

  return coverImage;
}

- (id)coverAnimationSourceViewForLibraryAsset:(id)asset
{
  v3 = [(BKLibraryDataSourceAdaptor *)self bookImageProviderForLibraryAsset:asset];
  coverView = [v3 coverView];

  return coverView;
}

- (CGRect)coverRectForLibraryAsset:(id)asset
{
  v4 = [(BKLibraryDataSourceAdaptor *)self bookImageProviderForLibraryAsset:asset];
  collectionView = [(BKLibraryDataSourceAdaptor *)self collectionView];
  superview = [collectionView superview];
  [v4 coverContainerFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  contentView = [v4 contentView];
  [superview convertRect:contentView fromView:{v8, v10, v12, v14}];
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

- (id)coverAnimationSourceReferenceViewForLibraryAsset:(id)asset
{
  collectionView = [(BKLibraryDataSourceAdaptor *)self collectionView];
  superview = [collectionView superview];

  return superview;
}

- (void)coverAnimationSourcePrepareForLibraryAsset:(id)asset
{
  assetCopy = asset;
  collectionView = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [collectionView layoutIfNeeded];

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v6 = [(BKLibraryDataSourceAdaptor *)self collectionView:0];
  subviews = [v6 subviews];

  v8 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v12 = BUProtocolCast();
        libraryAsset = [v12 libraryAsset];

        if (libraryAsset == assetCopy)
        {
          [v12 setCoverHidden:1];

          goto LABEL_11;
        }
      }

      v9 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)coverAnimationSourceFinalizeForLibraryAsset:(id)asset
{
  assetCopy = asset;
  collectionView = [(BKLibraryDataSourceAdaptor *)self collectionView];
  [collectionView layoutIfNeeded];

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v6 = [(BKLibraryDataSourceAdaptor *)self collectionView:0];
  subviews = [v6 subviews];

  v8 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v12 = BUProtocolCast();
        libraryAsset = [v12 libraryAsset];

        if (libraryAsset == assetCopy)
        {
          [v12 setCoverHidden:0];

          goto LABEL_11;
        }
      }

      v9 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  supplementaryDataSource = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
  viewMode = [supplementaryDataSource viewMode];

  if (viewMode == 1)
  {
    return 2;
  }

  else
  {
    return viewMode == 2;
  }
}

- (void)adjustHeight:(id)height
{
  heightCopy = height;
  representedElementKind = [heightCopy representedElementKind];
  v5 = [representedElementKind isEqualToString:off_100ACEF30];

  if (v5)
  {
    v6 = BKLibraryBookshelfTitleHeader;
    goto LABEL_3;
  }

  representedElementKind2 = [heightCopy representedElementKind];
  v9 = [representedElementKind2 isEqualToString:off_100ACEF38];

  if ((v9 & 1) == 0)
  {
    representedElementKind3 = [heightCopy representedElementKind];
    v11 = [representedElementKind3 isEqualToString:off_100ACEF40];

    if (v11)
    {
      v6 = BKLibraryBookshelfCollectionInfoHeader;
    }

    else
    {
      representedElementKind4 = [heightCopy representedElementKind];
      v13 = [representedElementKind4 isEqualToString:off_100ACEF48];

      if (!v13)
      {
        representedElementKind5 = [heightCopy representedElementKind];
        [representedElementKind5 isEqualToString:off_100ACEF50];
        goto LABEL_4;
      }

      v6 = BKLibraryBookshelfNoBooks;
    }

LABEL_3:
    representedElementKind5 = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
    [(__objc2_class *)v6 adjustHeight:heightCopy withDataSource:representedElementKind5];
LABEL_4:
  }
}

- (double)bookCellHeightFor:(id)for editMode:(BOOL)mode metrics:(id)metrics clearCache:(BOOL)cache
{
  modeCopy = mode;
  metricsCopy = metrics;
  if (for)
  {
    forCopy = for;
    objc_opt_class();
    v12 = [(BKLibraryDataSourceAdaptor *)self representedObjectForIndexPath:forCopy];

    for = BUDynamicCast();
  }

  supplementaryDataSource = [(BKLibraryDataSourceAdaptor *)self supplementaryDataSource];
  currentStoreAccountID = [supplementaryDataSource currentStoreAccountID];
  stringValue = [currentStoreAccountID stringValue];

  booksDataSource = [(BKLibraryDataSourceAdaptor *)self booksDataSource];
  assetID = [for assetID];
  v18 = [booksDataSource assetReviewForAssetID:assetID];

  LOBYTE(v22) = cache;
  [BKLibraryBookshelfFinishedBookCell bookCellHeightFor:for assetReview:v18 storeID:stringValue editMode:modeCopy metrics:metricsCopy storageProvider:self clearCache:v22];
  v20 = v19;

  return v20;
}

- (void)storeValue:(id)value forKey:(id)key forConsumer:(id)consumer
{
  valueCopy = value;
  keyCopy = key;
  consumerCopy = consumer;
  storage = [(BKLibraryDataSourceAdaptor *)self storage];
  v11 = [storage objectForKey:consumerCopy];

  if (!v11)
  {
    v11 = +[NSMutableDictionary dictionary];
    storage2 = [(BKLibraryDataSourceAdaptor *)self storage];
    [storage2 setObject:v11 forKey:consumerCopy];
  }

  [v11 setObject:valueCopy forKey:keyCopy];
}

- (id)retrieveValueForKey:(id)key forConsumer:(id)consumer
{
  consumerCopy = consumer;
  keyCopy = key;
  storage = [(BKLibraryDataSourceAdaptor *)self storage];
  v9 = [storage objectForKey:consumerCopy];

  v10 = [v9 objectForKey:keyCopy];

  return v10;
}

- (void)invalidateLayoutFor:(id)for
{
  collectionView = [(BKLibraryDataSourceAdaptor *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)booksDataSource:(id)source insertedSections:(id)sections deletedSections:(id)deletedSections insertedItems:(id)items deletedItems:(id)deletedItems updatedItems:(id)updatedItems mayHaveZeroObjects:(BOOL)objects
{
  sectionsCopy = sections;
  deletedSectionsCopy = deletedSections;
  itemsCopy = items;
  deletedItemsCopy = deletedItems;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_1001B05DC;
  v25 = &unk_100A04B18;
  v17 = deletedSectionsCopy;
  v26 = v17;
  v18 = sectionsCopy;
  v27 = v18;
  v19 = deletedItemsCopy;
  v28 = v19;
  v20 = itemsCopy;
  objectsCopy = objects;
  v29 = v20;
  selfCopy = self;
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

- (void)booksDataSourceReloadAssetInfo:(id)info
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

- (void)booksDataSourceReloadAssetInfo:(id)info forAssetIDs:(id)ds
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B0A00;
  v5[3] = &unk_100A03440;
  v5[4] = self;
  dsCopy = ds;
  v4 = dsCopy;
  [UIView animateWithDuration:v5 animations:0.3];
}

- (void)booksDataSourceReloadAssetReviewData:(id)data
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

- (void)booksDataSourceReloadAssetReviewData:(id)data forAssetIDs:(id)ds
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1001B0DC0;
  v10 = &unk_100A03440;
  selfCopy = self;
  dsCopy = ds;
  v5 = dsCopy;
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