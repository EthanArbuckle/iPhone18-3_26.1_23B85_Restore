@interface BKLibraryBookshelfController
+ (id)libraryViewControllerWithIdentifier:(id)identifier;
+ (id)setupBookshelfWithConfig:(id)config;
+ (id)supplementalContentPDFPickerWithPlaylistID:(id)d fromActionMenu:(BOOL)menu;
@end

@implementation BKLibraryBookshelfController

+ (id)setupBookshelfWithConfig:(id)config
{
  configCopy = config;
  kdebug_trace();
  collection = [configCopy collection];
  v5 = collection;
  if (collection && ([collection isDefaultCollection] & 1) == 0)
  {
    v75 = [v5 isSeriesCollection] ^ 1;
  }

  else
  {
    v75 = 0;
  }

  v6 = objc_alloc_init(BKLibraryBookshelfCollectionViewController);
  [(BKLibraryBookshelfCollectionViewController *)v6 setCollection:v5];
  collectionID = [configCopy collectionID];
  [(BKLibraryBookshelfCollectionViewController *)v6 setCollectionID:collectionID];

  v76 = objc_alloc_init(BKLibraryActionHandler);
  [(BKLibraryActionHandler *)v76 setBookshelfCVC:v6];
  v8 = objc_alloc_init(BKLibraryBookshelfSupplementaryDataSource);
  sortControlConfig = [configCopy sortControlConfig];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setSortControlConfig:sortControlConfig];

  if (v5)
  {
    resolvedSortMode = [v5 resolvedSortMode];
  }

  else
  {
    resolvedSortMode = [configCopy initialSortMode];
  }

  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setSortMode:resolvedSortMode];
  -[BKLibraryBookshelfSupplementaryDataSource setViewMode:](v8, "setViewMode:", [configCopy initialViewMode]);
  -[BKLibraryBookshelfSupplementaryDataSource setCanChangeViewMode:](v8, "setCanChangeViewMode:", [configCopy canChangeViewMode]);
  readingListButtonText = [configCopy readingListButtonText];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setReadingListButtonText:readingListButtonText];

  collection2 = [configCopy collection];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setCollection:collection2];

  viewTitle = [configCopy viewTitle];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setCollectionTitle:viewTitle];

  viewDescription = [configCopy viewDescription];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setCollectionDescription:viewDescription];

  collectionDescriptionPlaceholderText = [configCopy collectionDescriptionPlaceholderText];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setCollectionDescriptionPlaceHolder:collectionDescriptionPlaceholderText];

  seriesID = [configCopy seriesID];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setSeriesID:seriesID];

  noBooksDescription = [configCopy noBooksDescription];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setNoBooksDescription:noBooksDescription];

  noBooksDescriptionHeader = [configCopy noBooksDescriptionHeader];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setNoBooksDescriptionHeader:noBooksDescriptionHeader];

  cloudDownloadImageName = [configCopy cloudDownloadImageName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setCloudDownloadImageName:cloudDownloadImageName];

  cloudUploadingImageName = [configCopy cloudUploadingImageName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setCloudUploadingImageName:cloudUploadingImageName];

  cloudErrorImageName = [configCopy cloudErrorImageName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setCloudErrorImageName:cloudErrorImageName];

  actionMenuImageName = [configCopy actionMenuImageName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setActionMenuImageName:actionMenuImageName];

  reviewBackgroundName = [configCopy reviewBackgroundName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setReviewBackgroundName:reviewBackgroundName];

  dragBarName = [configCopy dragBarName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setDragBarName:dragBarName];

  selectedCheckmarkName = [configCopy selectedCheckmarkName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setSelectedCheckmarkName:selectedCheckmarkName];

  unselectedCheckmarkName = [configCopy unselectedCheckmarkName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setUnselectedCheckmarkName:unselectedCheckmarkName];

  infoBarDownloading = [configCopy infoBarDownloading];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarDownloading:infoBarDownloading];

  infoBarDownloadWaiting = [configCopy infoBarDownloadWaiting];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarDownloadWaiting:infoBarDownloadWaiting];

  infoBarDownloadPaused = [configCopy infoBarDownloadPaused];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarDownloadPaused:infoBarDownloadPaused];

  infoBarNew = [configCopy infoBarNew];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarNew:infoBarNew];

  infoBarNext = [configCopy infoBarNext];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarNext:infoBarNext];

  infoBarProof = [configCopy infoBarProof];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarProof:infoBarProof];

  infoBarPreOrderable = [configCopy infoBarPreOrderable];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarPreOrderable:infoBarPreOrderable];

  infoBarPreOrdered = [configCopy infoBarPreOrdered];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarPreOrdered:infoBarPreOrdered];

  infoBarSample = [configCopy infoBarSample];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarSample:infoBarSample];

  infoBarBuy = [configCopy infoBarBuy];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarBuy:infoBarBuy];

  infoExpectedDateString = [configCopy infoExpectedDateString];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoExpectedDateString:infoExpectedDateString];

  moreText = [configCopy moreText];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setMoreText:moreText];

  infoBarAudiobookImageName = [configCopy infoBarAudiobookImageName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarAudiobookImageName:infoBarAudiobookImageName];

  -[BKLibraryBookshelfSupplementaryDataSource setHideTopSeparatorLine:](v8, "setHideTopSeparatorLine:", [configCopy hideTopSeparatorLine]);
  -[BKLibraryBookshelfSupplementaryDataSource setShowCancelNavigationBarItem:](v8, "setShowCancelNavigationBarItem:", [configCopy showCancelNavigationBarItem]);
  supplementalContentPDFTitle = [configCopy supplementalContentPDFTitle];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setSupplementalContentPDFPickerTitle:supplementalContentPDFTitle];

  -[BKLibraryBookshelfSupplementaryDataSource setSupplementalContentPDFPicker:](v8, "setSupplementalContentPDFPicker:", [configCopy supplementalContentPDFPicker]);
  supplementalContentStorePlaylistID = [configCopy supplementalContentStorePlaylistID];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setSupplementalContentStorePlaylistID:supplementalContentStorePlaylistID];

  -[BKLibraryBookshelfSupplementaryDataSource setFromActionMenu:](v8, "setFromActionMenu:", [configCopy fromActionMenu]);
  v42 = [BKLibraryBookshelfBooksDataSource alloc];
  seriesID2 = [(BKLibraryBookshelfSupplementaryDataSource *)v8 seriesID];
  providesReviewData = [configCopy providesReviewData];
  providesProductInfoData = [configCopy providesProductInfoData];
  productInfoFilter = [configCopy productInfoFilter];
  v47 = [(BKLibraryBookshelfBooksDataSource *)v42 initWithSortModeProvider:v8 isSeries:seriesID2 != 0 providesReviewData:providesReviewData providesProductInfoData:providesProductInfoData productInfoFilter:productInfoFilter];

  v48 = objc_alloc_init(BKLibraryBookshelfLayout);
  [(BKLibraryBookshelfCollectionViewController *)v6 setLayout:v48];

  includeCollectionInfo = [configCopy includeCollectionInfo];
  layout = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [layout setIncludeCollectionInfo:includeCollectionInfo];

  supportsReadingListsButton = [configCopy supportsReadingListsButton];
  layout2 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [layout2 setSupportsReadingListsButton:supportsReadingListsButton];

  layout3 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [layout3 setEditableCollection:v75];

  stackedSortControl = [configCopy stackedSortControl];
  layout4 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [layout4 setWantsStackedSortControl:stackedSortControl];

  showsSortControl = [configCopy showsSortControl];
  layout5 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [layout5 setWantsSortControl:showsSortControl];

  v58 = [(BKLibraryBookshelfSupplementaryDataSource *)v8 sortMode]== 6;
  layout6 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [layout6 setReorderableCollection:v58];

  collectionType = [configCopy collectionType];
  layout7 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [layout7 setCollectionType:collectionType];

  layout8 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [layout8 setDelegate:v6];

  v63 = [[BKLibraryBookshelfMetrics alloc] initWithObserver:v6];
  layout9 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [layout9 setMetrics:v63];

  viewMode = [(BKLibraryBookshelfSupplementaryDataSource *)v8 viewMode];
  layout10 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [layout10 setViewMode:viewMode];

  v67 = [[BKLibraryDataSourceAdaptor alloc] initWithBooksDataSource:v47 supplementaryDataSource:v8];
  [(BKLibraryBookshelfCollectionViewController *)v6 setDataSourceAdaptor:v67];

  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)v6 dataSourceAdaptor];
  [dataSourceAdaptor setActionHandler:v76];

  dataSourceAdaptor2 = [(BKLibraryBookshelfCollectionViewController *)v6 dataSourceAdaptor];
  [dataSourceAdaptor2 setCoverEffectsEnvironment:v6];

  dataSourceAdaptor3 = [(BKLibraryBookshelfCollectionViewController *)v6 dataSourceAdaptor];
  layout11 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [layout11 setMeasuring:dataSourceAdaptor3];

  v72 = [[BKLibraryBookshelfDragDelegate alloc] initWithBookDataSource:v47];
  [(BKLibraryBookshelfCollectionViewController *)v6 setDragDelegate:v72];
  v73 = objc_alloc_init(BKLibraryBookshelfDropDelegate);
  [(BKLibraryBookshelfCollectionViewController *)v6 setDropDelegate:v73];
  kdebug_trace();

  return v6;
}

+ (id)libraryViewControllerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  kdebug_trace();
  v4 = +[BKRootBarItemsProvider LibraryAllIdentifier];
  v43[0] = v4;
  v44[0] = kBKCollectionDefaultAll;
  v5 = +[BKRootBarItemsProvider LibraryBooksIdentifier];
  v43[1] = v5;
  v44[1] = kBKCollectionDefaultIDBooks;
  v6 = +[BKRootBarItemsProvider LibraryAudiobooksIdentifier];
  v43[2] = v6;
  v44[2] = kBKCollectionDefaultIDAudiobooks;
  v7 = +[BKRootBarItemsProvider LibraryPDFIdentifier];
  v43[3] = v7;
  v44[3] = kBKCollectionDefaultIDPDFs;
  v8 = +[BKRootBarItemsProvider LibraryDownloadedIdentifier];
  v43[4] = v8;
  v44[4] = kBKCollectionDefaultIDDownloaded;
  v9 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:5];

  if (identifierCopy)
  {
    v10 = [v9 objectForKeyedSubscript:identifierCopy];
    v11 = [BKRootBarItemsProvider customCollectionIDFromItemIdentifier:identifierCopy];
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v35 = v9;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12;
  v33 = v13;
  if (v13)
  {
    v14 = [BKLibraryManager defaultManager:v13];
    collectionController = [v14 collectionController];
    v16 = +[BKLibraryManager defaultManager];
    uiChildContext = [v16 uiChildContext];
    v13 = [collectionController mutableCollectionWithCollectionID:v13 inManagedObjectContext:uiChildContext error:0];

    v18 = [[BKLibraryBookshelfLibraryCollectionViewConfiguration alloc] initWithCollection:v13];
  }

  else
  {
    v18 = 0;
  }

  v19 = +[BKRootBarItemsProvider LibraryWantToReadIdentifier];
  v41[0] = v19;
  v42[0] = objc_opt_class();
  v20 = +[BKRootBarItemsProvider LibraryFinishedIdentifier];
  v41[1] = v20;
  v42[1] = objc_opt_class();
  v21 = +[BKRootBarItemsProvider LibraryMySamplesIdentifier];
  v41[2] = v21;
  v42[2] = objc_opt_class();
  v22 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v37;
    while (2)
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v36 + 1) + 8 * i);
        if ([identifierCopy isEqualToString:v28])
        {
          v29 = objc_alloc_init([v23 objectForKeyedSubscript:v28]);

          v18 = v29;
          goto LABEL_20;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  if (v18)
  {
    v30 = [BKLibraryBookshelfController setupBookshelfWithConfig:v18];
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v30 = 0;
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  if (v13)
  {
    viewTitle = [(BKLibraryBookshelfLibraryCollectionViewConfiguration *)v18 viewTitle];
    [v30 setTitle:viewTitle];
  }

LABEL_26:
  kdebug_trace();

  return v30;
}

+ (id)supplementalContentPDFPickerWithPlaylistID:(id)d fromActionMenu:(BOOL)menu
{
  menuCopy = menu;
  dCopy = d;
  kdebug_trace();
  v7 = kBKCollectionDefaultIDPDFs;
  v8 = +[BKLibraryManager defaultManager];
  collectionController = [v8 collectionController];
  v10 = +[BKLibraryManager defaultManager];
  uiChildContext = [v10 uiChildContext];
  v12 = [collectionController mutableCollectionWithCollectionID:v7 inManagedObjectContext:uiChildContext error:0];

  v13 = [[BKLibraryBookshelfSupplementalPDFPickerCollectionViewConfiguration alloc] initWithCollection:v12 storePlaylistID:dCopy fromActionMenu:menuCopy];
  v14 = [self setupBookshelfWithConfig:v13];
  v15 = [[UINavigationController alloc] initWithRootViewController:v14];
  kdebug_trace();

  return v15;
}

@end