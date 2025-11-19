@interface GuidesHomeLogicController
- (GuidesHomeLogicController)initWithGuidesHomeResult:(id)a3 maxWidth:(double)a4 traitEnvironment:(id)a5 guideFetcher:(id)a6 guideConsumer:(id)a7 guideLocation:(id)a8;
- (MKPlaceBatchConsumer)guideConsumer;
- (MKPlaceBatchFetcher)guideFetcher;
- (id)allSections;
- (id)filterValueAtIndex:(unint64_t)a3;
- (id)itemsForSectionAtIndex:(unint64_t)a3;
- (id)routeToSelectedGuidesHomeFilterAtIndexPath:(id)a3;
- (id)sectionAtIndex:(unint64_t)a3;
- (id)selectedFilterIndexPath;
- (void)appendBatchOfCollections:(id)a3;
- (void)initializeFonts;
- (void)initializeSectionsUsingMaxWidth:(double)a3 traitEnvironment:(id)a4;
- (void)updateFilteredCollectionsFromResults:(id)a3 collectionIds:(id)a4;
- (void)willDisplayCellAtIndexpath:(id)a3;
@end

@implementation GuidesHomeLogicController

- (MKPlaceBatchConsumer)guideConsumer
{
  WeakRetained = objc_loadWeakRetained(&self->_guideConsumer);

  return WeakRetained;
}

- (MKPlaceBatchFetcher)guideFetcher
{
  WeakRetained = objc_loadWeakRetained(&self->_guideFetcher);

  return WeakRetained;
}

- (id)routeToSelectedGuidesHomeFilterAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(GuidesHomeLogicController *)self filterLogicController];
  v6 = [v5 routeToSelectedGuidesHomeFilterAtIndexPath:v4];

  if (v4)
  {
    v7 = [GuidesHomeSection alloc];
    [(GuidesHomeLogicController *)self maxWidth];
    v9 = v8;
    v10 = [(GuidesHomeLogicController *)self traitEnvironment];
    v11 = [(GuidesHomeSection *)v7 initWithSectionKind:7 usingMaxWidth:v10 usingTraitEnvironment:1 count:v9];
    [(GuidesHomeLogicController *)self setLoadingSection:v11];
  }

  else
  {
    [(GuidesHomeLogicController *)self setLoadingSection:0];
    [(GuidesHomeLogicController *)self setFilteredGuidesSection:0];
  }

  [(GuidesHomeLogicController *)self maxWidth];
  v13 = v12;
  v14 = [(GuidesHomeLogicController *)self traitEnvironment];
  [(GuidesHomeLogicController *)self initializeSectionsUsingMaxWidth:v14 traitEnvironment:v13];

  return v6;
}

- (id)selectedFilterIndexPath
{
  v2 = [(GuidesHomeLogicController *)self filterLogicController];
  v3 = [v2 selectedFilterIndexPath];

  return v3;
}

- (void)initializeSectionsUsingMaxWidth:(double)a3 traitEnvironment:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  sections = self->_sections;
  self->_sections = v7;

  v9 = objc_alloc_init(NSMutableDictionary);
  collectionLogicControllers = self->_collectionLogicControllers;
  self->_collectionLogicControllers = v9;

  v11 = objc_alloc_init(NSMutableDictionary);
  compactCollectionLogicControllers = self->_compactCollectionLogicControllers;
  self->_compactCollectionLogicControllers = v11;

  v13 = [(GuidesHomeLogicController *)self result];
  v14 = [v13 featuredGuidesSection];
  v15 = [v14 featuredGuides];
  v16 = [v15 firstObject];
  v17 = [v16 collection];

  if (v17)
  {
    v18 = [[GuidesHomeSection alloc] initWithSectionKind:0 usingMaxWidth:v6 usingTraitEnvironment:1 count:a3];
    v19 = [GuidesHomeHeaderViewModel alloc];
    v20 = [(GuidesHomeLogicController *)self guideLocation];
    v21 = [(GuidesHomeLogicController *)self result];
    v22 = [v21 featuredGuidesSection];
    v23 = [v22 title];
    v24 = [(GuidesHomeHeaderViewModel *)v19 initWithGuideLocation:v20 featuredGuide:v17 sectionTitle:v23];
    [(GuidesHomeLogicController *)self setFeaturedGuideViewModel:v24];

    v25 = [(GuidesHomeLogicController *)self sections];
    [v25 addObject:v18];
  }

  v26 = [(GuidesHomeLogicController *)self result];
  v27 = [v26 filtersSection];

  if (v27)
  {
    v28 = [v27 filters];
    if (![v28 count])
    {
      v36 = sub_1007982D8();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Guides Home section for Filters couldn't build any objects to display in section", buf, 2u);
      }

      goto LABEL_8;
    }

    v29 = [CollectionsFilterLogicController alloc];
    v30 = [(GuidesHomeLogicController *)self selectedFilterIndexPath];
    v31 = [(CollectionsFilterLogicController *)v29 initForGuidesHomeViewUsingFilters:v28 withSelectedFilterIndexPath:v30 traitEnvironment:v6];
    [(GuidesHomeLogicController *)self setFilterLogicController:v31];

    v32 = -[GuidesHomeSection initWithSectionKind:usingMaxWidth:usingTraitEnvironment:count:]([GuidesHomeSection alloc], "initWithSectionKind:usingMaxWidth:usingTraitEnvironment:count:", 1, v6, [v28 count], a3);
    v33 = [v27 title];
    [(GuidesHomeSection *)v32 setSectionTitle:v33];

    v34 = [(GuidesHomeLogicController *)self sections];
    [v34 addObject:v32];
  }

  v35 = [(GuidesHomeLogicController *)self loadingSection];

  if (v35)
  {
    v28 = [(GuidesHomeLogicController *)self sections];
    v36 = [(GuidesHomeLogicController *)self loadingSection];
    [v28 addObject:v36];
LABEL_8:

    goto LABEL_11;
  }

  v37 = [(GuidesHomeLogicController *)self filteredGuidesSection];

  if (!v37)
  {
    v49 = [(GuidesHomeLogicController *)self result];
    v50 = [v49 repeatableSections];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100B882C4;
    v51[3] = &unk_10163B940;
    v54 = a3;
    v52 = v6;
    v53 = self;
    [v50 enumerateObjectsUsingBlock:v51];

    goto LABEL_12;
  }

  v38 = [MKPlaceCollectionsLogicController alloc];
  v39 = [(GuidesHomeLogicController *)self recentCollectionFromCollectionResults];
  v40 = [(GuidesHomeLogicController *)self batchCollectionIds];
  v41 = [(GuidesHomeLogicController *)self guideFetcher];
  v42 = [(GuidesHomeLogicController *)self guideConsumer];
  v43 = +[CuratedCollectionSyncManager sharedManager];
  v28 = [v38 initWithCollectionView:0 withPlaceCollections:v39 usingCollectionIds:v40 usingCollectionFetcher:v41 usingGuideConsumer:v42 usingSyncCoordinator:v43 inContext:9 usingBatchSize:10];

  v44 = [(GuidesHomeLogicController *)self collectionLogicControllers];
  v45 = [(GuidesHomeLogicController *)self filteredGuidesSection];
  v46 = [v45 sectionIdentifier];
  [v44 setObject:v28 forKey:v46];

  v47 = [(GuidesHomeLogicController *)self sections];
  v48 = [(GuidesHomeLogicController *)self filteredGuidesSection];
  [v47 addObject:v48];

LABEL_11:
LABEL_12:
}

- (id)itemsForSectionAtIndex:(unint64_t)a3
{
  v5 = [(GuidesHomeLogicController *)self sections];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v7 = &__NSArray0__struct;
    goto LABEL_29;
  }

  v7 = [(GuidesHomeLogicController *)self sections];
  v8 = [v7 objectAtIndex:a3];

  if (!v8)
  {
    v26 = 0u;
    v27 = 0u;
LABEL_10:
    v11 = [(GuidesHomeLogicController *)self featuredGuideViewModel:v26];

    if (v11)
    {
      v9 = [(GuidesHomeLogicController *)self featuredGuideViewModel];
      v29 = v9;
      v12 = &v29;
LABEL_12:
      v10 = [NSArray arrayWithObjects:v12 count:1];
      goto LABEL_13;
    }

LABEL_27:
    v7 = &__NSArray0__struct;
    goto LABEL_28;
  }

  [v8 configuration];

  if (v27 > 3)
  {
    if (v27 > 5)
    {
      if (v27 != 6)
      {
        if (v27 != 7)
        {
          goto LABEL_28;
        }

        v9 = +[MKCollectionBatchCell reuseIdentifier];
        v28 = v9;
        v12 = &v28;
        goto LABEL_12;
      }
    }

    else if (v27 != 4)
    {
      v7 = [(GuidesHomeLogicController *)self publishers];
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      v20 = [(GuidesHomeLogicController *)self compactCollectionLogicControllers];
      v21 = [v8 sectionIdentifier];
      v22 = [v20 objectForKey:v21];

      if (!v22)
      {
        goto LABEL_27;
      }

      v23 = [(GuidesHomeLogicController *)self compactCollectionLogicControllers];
      v24 = [v8 sectionIdentifier];
      v18 = [v23 objectForKey:v24];

      v19 = [v18 compactCollectionsInSection:0];
      goto LABEL_26;
    }

LABEL_22:
    v13 = [(GuidesHomeLogicController *)self collectionLogicControllers];
    v14 = [v8 sectionIdentifier];
    v15 = [v13 objectForKey:v14];

    if (!v15)
    {
      goto LABEL_27;
    }

    v16 = [(GuidesHomeLogicController *)self collectionLogicControllers];
    v17 = [v8 sectionIdentifier];
    v18 = [v16 objectForKey:v17];

    v19 = [v18 collections];
LABEL_26:
    v7 = v19;

    goto LABEL_28;
  }

  if (!v27)
  {
    goto LABEL_10;
  }

  if (v27 == 1)
  {
    v9 = [(GuidesHomeLogicController *)self filterLogicController];
    v10 = [v9 filterViewModels];
LABEL_13:
    v7 = v10;
  }

LABEL_28:

LABEL_29:

  return v7;
}

- (id)filterValueAtIndex:(unint64_t)a3
{
  v4 = [(GuidesHomeLogicController *)self filterLogicController];
  v5 = [v4 filterViewModels];

  if ([v5 count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:a3];
    v7 = [v6 filterTitle];
  }

  return v7;
}

- (id)sectionAtIndex:(unint64_t)a3
{
  v5 = [(GuidesHomeLogicController *)self sections];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(GuidesHomeLogicController *)self sections];
    v8 = [v7 objectAtIndex:a3];
  }

  return v8;
}

- (id)allSections
{
  v2 = [(GuidesHomeLogicController *)self sections];
  v3 = [v2 copy];

  return v3;
}

- (void)appendBatchOfCollections:(id)a3
{
  v9 = a3;
  v4 = [(GuidesHomeLogicController *)self filteredGuidesSection];

  if (v4)
  {
    v5 = [(GuidesHomeLogicController *)self collectionLogicControllers];
    v6 = [(GuidesHomeLogicController *)self filteredGuidesSection];
    v7 = [v6 sectionIdentifier];
    v8 = [v5 objectForKey:v7];

    [v8 appendBatchOfCollections:v9];
  }
}

- (void)updateFilteredCollectionsFromResults:(id)a3 collectionIds:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [(GuidesHomeLogicController *)self setRecentCollectionFromCollectionResults:0];
    [(GuidesHomeLogicController *)self setBatchCollectionIds:v7];
    [(GuidesHomeLogicController *)self setFilteredGuidesSection:0];
    [(GuidesHomeLogicController *)self maxWidth];
    v22 = v21;
    v16 = [(GuidesHomeLogicController *)self traitEnvironment];
    [(GuidesHomeLogicController *)self initializeSectionsUsingMaxWidth:v16 traitEnvironment:v22];
    goto LABEL_7;
  }

  v8 = [(GuidesHomeLogicController *)self filteredGuidesSection];

  if (v8)
  {
LABEL_5:
    [(GuidesHomeLogicController *)self setLoadingSection:0];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100B893B4;
    v24[3] = &unk_10165D7E0;
    v25 = objc_alloc_init(NSMutableArray);
    v16 = v25;
    [v6 enumerateObjectsUsingBlock:v24];
    v17 = [v16 copy];
    [(GuidesHomeLogicController *)self setRecentCollectionFromCollectionResults:v17];

    [(GuidesHomeLogicController *)self setBatchCollectionIds:v7];
    [(GuidesHomeLogicController *)self maxWidth];
    v19 = v18;
    v20 = [(GuidesHomeLogicController *)self traitEnvironment];
    [(GuidesHomeLogicController *)self initializeSectionsUsingMaxWidth:v20 traitEnvironment:v19];

LABEL_7:
    goto LABEL_8;
  }

  if ([v6 count])
  {
    v9 = [GuidesHomeSection alloc];
    [(GuidesHomeLogicController *)self maxWidth];
    v11 = v10;
    v12 = [(GuidesHomeLogicController *)self traitEnvironment];
    v13 = -[GuidesHomeSection initWithSectionKind:usingMaxWidth:usingTraitEnvironment:count:](v9, "initWithSectionKind:usingMaxWidth:usingTraitEnvironment:count:", 6, v12, [v6 count], v11);
    [(GuidesHomeLogicController *)self setFilteredGuidesSection:v13];

    v14 = objc_alloc_init(NSArray);
    [(GuidesHomeLogicController *)self setRecentCollectionFromCollectionResults:v14];

    v15 = objc_alloc_init(NSArray);
    [(GuidesHomeLogicController *)self setBatchCollectionIds:v15];

    goto LABEL_5;
  }

  v23 = sub_1007982D8();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Guides Home section for filteredGuidesSection couldn't build any objects to display in section", buf, 2u);
  }

LABEL_8:
}

- (void)willDisplayCellAtIndexpath:(id)a3
{
  v8 = a3;
  v4 = -[GuidesHomeLogicController sectionAtIndex:](self, "sectionAtIndex:", [v8 section]);
  if ([v4 kind] == 6)
  {
    v5 = [(GuidesHomeLogicController *)self collectionLogicControllers];
    v6 = [v4 sectionIdentifier];
    v7 = [v5 objectForKey:v6];

    [v7 willDisplayCellAtIndexpath:v8];
  }
}

- (void)initializeFonts
{
  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle3];
  [v6 _mapkit_scaledValueForValue:22.0];
  UIFontForLanguage = CTFontCreateUIFontForLanguage(0xA9u, v3, 0);
  CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
  CFRelease(UIFontForLanguage);
  [(GuidesHomeLogicController *)self setTitleFont:CopyOfSystemUIFontWithGrade];
}

- (GuidesHomeLogicController)initWithGuidesHomeResult:(id)a3 maxWidth:(double)a4 traitEnvironment:(id)a5 guideFetcher:(id)a6 guideConsumer:(id)a7 guideLocation:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v23.receiver = self;
  v23.super_class = GuidesHomeLogicController;
  v20 = [(GuidesHomeLogicController *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_result, a3);
    v21->_maxWidth = a4;
    objc_storeStrong(&v21->_traitEnvironment, a5);
    objc_storeWeak(&v21->_guideFetcher, v17);
    objc_storeWeak(&v21->_guideConsumer, v18);
    objc_storeStrong(&v21->_guideLocation, a8);
    [(GuidesHomeLogicController *)v21 initializeFonts];
    [(GuidesHomeLogicController *)v21 initializeSectionsUsingMaxWidth:v16 traitEnvironment:a4];
  }

  return v21;
}

@end