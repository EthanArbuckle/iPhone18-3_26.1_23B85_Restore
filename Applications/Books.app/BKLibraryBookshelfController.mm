@interface BKLibraryBookshelfController
+ (id)libraryViewControllerWithIdentifier:(id)a3;
+ (id)setupBookshelfWithConfig:(id)a3;
+ (id)supplementalContentPDFPickerWithPlaylistID:(id)a3 fromActionMenu:(BOOL)a4;
@end

@implementation BKLibraryBookshelfController

+ (id)setupBookshelfWithConfig:(id)a3
{
  v3 = a3;
  kdebug_trace();
  v4 = [v3 collection];
  v5 = v4;
  if (v4 && ([v4 isDefaultCollection] & 1) == 0)
  {
    v75 = [v5 isSeriesCollection] ^ 1;
  }

  else
  {
    v75 = 0;
  }

  v6 = objc_alloc_init(BKLibraryBookshelfCollectionViewController);
  [(BKLibraryBookshelfCollectionViewController *)v6 setCollection:v5];
  v7 = [v3 collectionID];
  [(BKLibraryBookshelfCollectionViewController *)v6 setCollectionID:v7];

  v76 = objc_alloc_init(BKLibraryActionHandler);
  [(BKLibraryActionHandler *)v76 setBookshelfCVC:v6];
  v8 = objc_alloc_init(BKLibraryBookshelfSupplementaryDataSource);
  v9 = [v3 sortControlConfig];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setSortControlConfig:v9];

  if (v5)
  {
    v10 = [v5 resolvedSortMode];
  }

  else
  {
    v10 = [v3 initialSortMode];
  }

  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setSortMode:v10];
  -[BKLibraryBookshelfSupplementaryDataSource setViewMode:](v8, "setViewMode:", [v3 initialViewMode]);
  -[BKLibraryBookshelfSupplementaryDataSource setCanChangeViewMode:](v8, "setCanChangeViewMode:", [v3 canChangeViewMode]);
  v11 = [v3 readingListButtonText];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setReadingListButtonText:v11];

  v12 = [v3 collection];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setCollection:v12];

  v13 = [v3 viewTitle];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setCollectionTitle:v13];

  v14 = [v3 viewDescription];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setCollectionDescription:v14];

  v15 = [v3 collectionDescriptionPlaceholderText];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setCollectionDescriptionPlaceHolder:v15];

  v16 = [v3 seriesID];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setSeriesID:v16];

  v17 = [v3 noBooksDescription];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setNoBooksDescription:v17];

  v18 = [v3 noBooksDescriptionHeader];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setNoBooksDescriptionHeader:v18];

  v19 = [v3 cloudDownloadImageName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setCloudDownloadImageName:v19];

  v20 = [v3 cloudUploadingImageName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setCloudUploadingImageName:v20];

  v21 = [v3 cloudErrorImageName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setCloudErrorImageName:v21];

  v22 = [v3 actionMenuImageName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setActionMenuImageName:v22];

  v23 = [v3 reviewBackgroundName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setReviewBackgroundName:v23];

  v24 = [v3 dragBarName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setDragBarName:v24];

  v25 = [v3 selectedCheckmarkName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setSelectedCheckmarkName:v25];

  v26 = [v3 unselectedCheckmarkName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setUnselectedCheckmarkName:v26];

  v27 = [v3 infoBarDownloading];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarDownloading:v27];

  v28 = [v3 infoBarDownloadWaiting];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarDownloadWaiting:v28];

  v29 = [v3 infoBarDownloadPaused];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarDownloadPaused:v29];

  v30 = [v3 infoBarNew];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarNew:v30];

  v31 = [v3 infoBarNext];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarNext:v31];

  v32 = [v3 infoBarProof];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarProof:v32];

  v33 = [v3 infoBarPreOrderable];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarPreOrderable:v33];

  v34 = [v3 infoBarPreOrdered];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarPreOrdered:v34];

  v35 = [v3 infoBarSample];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarSample:v35];

  v36 = [v3 infoBarBuy];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarBuy:v36];

  v37 = [v3 infoExpectedDateString];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoExpectedDateString:v37];

  v38 = [v3 moreText];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setMoreText:v38];

  v39 = [v3 infoBarAudiobookImageName];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setInfoBarAudiobookImageName:v39];

  -[BKLibraryBookshelfSupplementaryDataSource setHideTopSeparatorLine:](v8, "setHideTopSeparatorLine:", [v3 hideTopSeparatorLine]);
  -[BKLibraryBookshelfSupplementaryDataSource setShowCancelNavigationBarItem:](v8, "setShowCancelNavigationBarItem:", [v3 showCancelNavigationBarItem]);
  v40 = [v3 supplementalContentPDFTitle];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setSupplementalContentPDFPickerTitle:v40];

  -[BKLibraryBookshelfSupplementaryDataSource setSupplementalContentPDFPicker:](v8, "setSupplementalContentPDFPicker:", [v3 supplementalContentPDFPicker]);
  v41 = [v3 supplementalContentStorePlaylistID];
  [(BKLibraryBookshelfSupplementaryDataSource *)v8 setSupplementalContentStorePlaylistID:v41];

  -[BKLibraryBookshelfSupplementaryDataSource setFromActionMenu:](v8, "setFromActionMenu:", [v3 fromActionMenu]);
  v42 = [BKLibraryBookshelfBooksDataSource alloc];
  v43 = [(BKLibraryBookshelfSupplementaryDataSource *)v8 seriesID];
  v44 = [v3 providesReviewData];
  v45 = [v3 providesProductInfoData];
  v46 = [v3 productInfoFilter];
  v47 = [(BKLibraryBookshelfBooksDataSource *)v42 initWithSortModeProvider:v8 isSeries:v43 != 0 providesReviewData:v44 providesProductInfoData:v45 productInfoFilter:v46];

  v48 = objc_alloc_init(BKLibraryBookshelfLayout);
  [(BKLibraryBookshelfCollectionViewController *)v6 setLayout:v48];

  v49 = [v3 includeCollectionInfo];
  v50 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [v50 setIncludeCollectionInfo:v49];

  v51 = [v3 supportsReadingListsButton];
  v52 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [v52 setSupportsReadingListsButton:v51];

  v53 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [v53 setEditableCollection:v75];

  v54 = [v3 stackedSortControl];
  v55 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [v55 setWantsStackedSortControl:v54];

  v56 = [v3 showsSortControl];
  v57 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [v57 setWantsSortControl:v56];

  v58 = [(BKLibraryBookshelfSupplementaryDataSource *)v8 sortMode]== 6;
  v59 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [v59 setReorderableCollection:v58];

  v60 = [v3 collectionType];
  v61 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [v61 setCollectionType:v60];

  v62 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [v62 setDelegate:v6];

  v63 = [[BKLibraryBookshelfMetrics alloc] initWithObserver:v6];
  v64 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [v64 setMetrics:v63];

  v65 = [(BKLibraryBookshelfSupplementaryDataSource *)v8 viewMode];
  v66 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [v66 setViewMode:v65];

  v67 = [[BKLibraryDataSourceAdaptor alloc] initWithBooksDataSource:v47 supplementaryDataSource:v8];
  [(BKLibraryBookshelfCollectionViewController *)v6 setDataSourceAdaptor:v67];

  v68 = [(BKLibraryBookshelfCollectionViewController *)v6 dataSourceAdaptor];
  [v68 setActionHandler:v76];

  v69 = [(BKLibraryBookshelfCollectionViewController *)v6 dataSourceAdaptor];
  [v69 setCoverEffectsEnvironment:v6];

  v70 = [(BKLibraryBookshelfCollectionViewController *)v6 dataSourceAdaptor];
  v71 = [(BKLibraryBookshelfCollectionViewController *)v6 layout];
  [v71 setMeasuring:v70];

  v72 = [[BKLibraryBookshelfDragDelegate alloc] initWithBookDataSource:v47];
  [(BKLibraryBookshelfCollectionViewController *)v6 setDragDelegate:v72];
  v73 = objc_alloc_init(BKLibraryBookshelfDropDelegate);
  [(BKLibraryBookshelfCollectionViewController *)v6 setDropDelegate:v73];
  kdebug_trace();

  return v6;
}

+ (id)libraryViewControllerWithIdentifier:(id)a3
{
  v3 = a3;
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

  if (v3)
  {
    v10 = [v9 objectForKeyedSubscript:v3];
    v11 = [BKRootBarItemsProvider customCollectionIDFromItemIdentifier:v3];
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
    v15 = [v14 collectionController];
    v16 = +[BKLibraryManager defaultManager];
    v17 = [v16 uiChildContext];
    v13 = [v15 mutableCollectionWithCollectionID:v13 inManagedObjectContext:v17 error:0];

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
        if ([v3 isEqualToString:v28])
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
    v31 = [(BKLibraryBookshelfLibraryCollectionViewConfiguration *)v18 viewTitle];
    [v30 setTitle:v31];
  }

LABEL_26:
  kdebug_trace();

  return v30;
}

+ (id)supplementalContentPDFPickerWithPlaylistID:(id)a3 fromActionMenu:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  kdebug_trace();
  v7 = kBKCollectionDefaultIDPDFs;
  v8 = +[BKLibraryManager defaultManager];
  v9 = [v8 collectionController];
  v10 = +[BKLibraryManager defaultManager];
  v11 = [v10 uiChildContext];
  v12 = [v9 mutableCollectionWithCollectionID:v7 inManagedObjectContext:v11 error:0];

  v13 = [[BKLibraryBookshelfSupplementalPDFPickerCollectionViewConfiguration alloc] initWithCollection:v12 storePlaylistID:v6 fromActionMenu:v4];
  v14 = [a1 setupBookshelfWithConfig:v13];
  v15 = [[UINavigationController alloc] initWithRootViewController:v14];
  kdebug_trace();

  return v15;
}

@end