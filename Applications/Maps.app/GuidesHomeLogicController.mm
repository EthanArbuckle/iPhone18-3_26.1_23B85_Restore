@interface GuidesHomeLogicController
- (GuidesHomeLogicController)initWithGuidesHomeResult:(id)result maxWidth:(double)width traitEnvironment:(id)environment guideFetcher:(id)fetcher guideConsumer:(id)consumer guideLocation:(id)location;
- (MKPlaceBatchConsumer)guideConsumer;
- (MKPlaceBatchFetcher)guideFetcher;
- (id)allSections;
- (id)filterValueAtIndex:(unint64_t)index;
- (id)itemsForSectionAtIndex:(unint64_t)index;
- (id)routeToSelectedGuidesHomeFilterAtIndexPath:(id)path;
- (id)sectionAtIndex:(unint64_t)index;
- (id)selectedFilterIndexPath;
- (void)appendBatchOfCollections:(id)collections;
- (void)initializeFonts;
- (void)initializeSectionsUsingMaxWidth:(double)width traitEnvironment:(id)environment;
- (void)updateFilteredCollectionsFromResults:(id)results collectionIds:(id)ids;
- (void)willDisplayCellAtIndexpath:(id)indexpath;
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

- (id)routeToSelectedGuidesHomeFilterAtIndexPath:(id)path
{
  pathCopy = path;
  filterLogicController = [(GuidesHomeLogicController *)self filterLogicController];
  v6 = [filterLogicController routeToSelectedGuidesHomeFilterAtIndexPath:pathCopy];

  if (pathCopy)
  {
    v7 = [GuidesHomeSection alloc];
    [(GuidesHomeLogicController *)self maxWidth];
    v9 = v8;
    traitEnvironment = [(GuidesHomeLogicController *)self traitEnvironment];
    v11 = [(GuidesHomeSection *)v7 initWithSectionKind:7 usingMaxWidth:traitEnvironment usingTraitEnvironment:1 count:v9];
    [(GuidesHomeLogicController *)self setLoadingSection:v11];
  }

  else
  {
    [(GuidesHomeLogicController *)self setLoadingSection:0];
    [(GuidesHomeLogicController *)self setFilteredGuidesSection:0];
  }

  [(GuidesHomeLogicController *)self maxWidth];
  v13 = v12;
  traitEnvironment2 = [(GuidesHomeLogicController *)self traitEnvironment];
  [(GuidesHomeLogicController *)self initializeSectionsUsingMaxWidth:traitEnvironment2 traitEnvironment:v13];

  return v6;
}

- (id)selectedFilterIndexPath
{
  filterLogicController = [(GuidesHomeLogicController *)self filterLogicController];
  selectedFilterIndexPath = [filterLogicController selectedFilterIndexPath];

  return selectedFilterIndexPath;
}

- (void)initializeSectionsUsingMaxWidth:(double)width traitEnvironment:(id)environment
{
  environmentCopy = environment;
  v7 = objc_alloc_init(NSMutableArray);
  sections = self->_sections;
  self->_sections = v7;

  v9 = objc_alloc_init(NSMutableDictionary);
  collectionLogicControllers = self->_collectionLogicControllers;
  self->_collectionLogicControllers = v9;

  v11 = objc_alloc_init(NSMutableDictionary);
  compactCollectionLogicControllers = self->_compactCollectionLogicControllers;
  self->_compactCollectionLogicControllers = v11;

  result = [(GuidesHomeLogicController *)self result];
  featuredGuidesSection = [result featuredGuidesSection];
  featuredGuides = [featuredGuidesSection featuredGuides];
  firstObject = [featuredGuides firstObject];
  collection = [firstObject collection];

  if (collection)
  {
    v18 = [[GuidesHomeSection alloc] initWithSectionKind:0 usingMaxWidth:environmentCopy usingTraitEnvironment:1 count:width];
    v19 = [GuidesHomeHeaderViewModel alloc];
    guideLocation = [(GuidesHomeLogicController *)self guideLocation];
    result2 = [(GuidesHomeLogicController *)self result];
    featuredGuidesSection2 = [result2 featuredGuidesSection];
    title = [featuredGuidesSection2 title];
    v24 = [(GuidesHomeHeaderViewModel *)v19 initWithGuideLocation:guideLocation featuredGuide:collection sectionTitle:title];
    [(GuidesHomeLogicController *)self setFeaturedGuideViewModel:v24];

    sections = [(GuidesHomeLogicController *)self sections];
    [sections addObject:v18];
  }

  result3 = [(GuidesHomeLogicController *)self result];
  filtersSection = [result3 filtersSection];

  if (filtersSection)
  {
    filters = [filtersSection filters];
    if (![filters count])
    {
      loadingSection2 = sub_1007982D8();
      if (os_log_type_enabled(loadingSection2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, loadingSection2, OS_LOG_TYPE_ERROR, "Guides Home section for Filters couldn't build any objects to display in section", buf, 2u);
      }

      goto LABEL_8;
    }

    v29 = [CollectionsFilterLogicController alloc];
    selectedFilterIndexPath = [(GuidesHomeLogicController *)self selectedFilterIndexPath];
    v31 = [(CollectionsFilterLogicController *)v29 initForGuidesHomeViewUsingFilters:filters withSelectedFilterIndexPath:selectedFilterIndexPath traitEnvironment:environmentCopy];
    [(GuidesHomeLogicController *)self setFilterLogicController:v31];

    v32 = -[GuidesHomeSection initWithSectionKind:usingMaxWidth:usingTraitEnvironment:count:]([GuidesHomeSection alloc], "initWithSectionKind:usingMaxWidth:usingTraitEnvironment:count:", 1, environmentCopy, [filters count], width);
    title2 = [filtersSection title];
    [(GuidesHomeSection *)v32 setSectionTitle:title2];

    sections2 = [(GuidesHomeLogicController *)self sections];
    [sections2 addObject:v32];
  }

  loadingSection = [(GuidesHomeLogicController *)self loadingSection];

  if (loadingSection)
  {
    filters = [(GuidesHomeLogicController *)self sections];
    loadingSection2 = [(GuidesHomeLogicController *)self loadingSection];
    [filters addObject:loadingSection2];
LABEL_8:

    goto LABEL_11;
  }

  filteredGuidesSection = [(GuidesHomeLogicController *)self filteredGuidesSection];

  if (!filteredGuidesSection)
  {
    result4 = [(GuidesHomeLogicController *)self result];
    repeatableSections = [result4 repeatableSections];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100B882C4;
    v51[3] = &unk_10163B940;
    widthCopy = width;
    v52 = environmentCopy;
    selfCopy = self;
    [repeatableSections enumerateObjectsUsingBlock:v51];

    goto LABEL_12;
  }

  v38 = [MKPlaceCollectionsLogicController alloc];
  recentCollectionFromCollectionResults = [(GuidesHomeLogicController *)self recentCollectionFromCollectionResults];
  batchCollectionIds = [(GuidesHomeLogicController *)self batchCollectionIds];
  guideFetcher = [(GuidesHomeLogicController *)self guideFetcher];
  guideConsumer = [(GuidesHomeLogicController *)self guideConsumer];
  v43 = +[CuratedCollectionSyncManager sharedManager];
  filters = [v38 initWithCollectionView:0 withPlaceCollections:recentCollectionFromCollectionResults usingCollectionIds:batchCollectionIds usingCollectionFetcher:guideFetcher usingGuideConsumer:guideConsumer usingSyncCoordinator:v43 inContext:9 usingBatchSize:10];

  collectionLogicControllers = [(GuidesHomeLogicController *)self collectionLogicControllers];
  filteredGuidesSection2 = [(GuidesHomeLogicController *)self filteredGuidesSection];
  sectionIdentifier = [filteredGuidesSection2 sectionIdentifier];
  [collectionLogicControllers setObject:filters forKey:sectionIdentifier];

  sections3 = [(GuidesHomeLogicController *)self sections];
  filteredGuidesSection3 = [(GuidesHomeLogicController *)self filteredGuidesSection];
  [sections3 addObject:filteredGuidesSection3];

LABEL_11:
LABEL_12:
}

- (id)itemsForSectionAtIndex:(unint64_t)index
{
  sections = [(GuidesHomeLogicController *)self sections];
  v6 = [sections count];

  if (v6 <= index)
  {
    sections2 = &__NSArray0__struct;
    goto LABEL_29;
  }

  sections2 = [(GuidesHomeLogicController *)self sections];
  v8 = [sections2 objectAtIndex:index];

  if (!v8)
  {
    v26 = 0u;
    v27 = 0u;
LABEL_10:
    v11 = [(GuidesHomeLogicController *)self featuredGuideViewModel:v26];

    if (v11)
    {
      featuredGuideViewModel = [(GuidesHomeLogicController *)self featuredGuideViewModel];
      v29 = featuredGuideViewModel;
      v12 = &v29;
LABEL_12:
      filterViewModels = [NSArray arrayWithObjects:v12 count:1];
      goto LABEL_13;
    }

LABEL_27:
    sections2 = &__NSArray0__struct;
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

        featuredGuideViewModel = +[MKCollectionBatchCell reuseIdentifier];
        v28 = featuredGuideViewModel;
        v12 = &v28;
        goto LABEL_12;
      }
    }

    else if (v27 != 4)
    {
      sections2 = [(GuidesHomeLogicController *)self publishers];
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      compactCollectionLogicControllers = [(GuidesHomeLogicController *)self compactCollectionLogicControllers];
      sectionIdentifier = [v8 sectionIdentifier];
      v22 = [compactCollectionLogicControllers objectForKey:sectionIdentifier];

      if (!v22)
      {
        goto LABEL_27;
      }

      compactCollectionLogicControllers2 = [(GuidesHomeLogicController *)self compactCollectionLogicControllers];
      sectionIdentifier2 = [v8 sectionIdentifier];
      v18 = [compactCollectionLogicControllers2 objectForKey:sectionIdentifier2];

      collections = [v18 compactCollectionsInSection:0];
      goto LABEL_26;
    }

LABEL_22:
    collectionLogicControllers = [(GuidesHomeLogicController *)self collectionLogicControllers];
    sectionIdentifier3 = [v8 sectionIdentifier];
    v15 = [collectionLogicControllers objectForKey:sectionIdentifier3];

    if (!v15)
    {
      goto LABEL_27;
    }

    collectionLogicControllers2 = [(GuidesHomeLogicController *)self collectionLogicControllers];
    sectionIdentifier4 = [v8 sectionIdentifier];
    v18 = [collectionLogicControllers2 objectForKey:sectionIdentifier4];

    collections = [v18 collections];
LABEL_26:
    sections2 = collections;

    goto LABEL_28;
  }

  if (!v27)
  {
    goto LABEL_10;
  }

  if (v27 == 1)
  {
    featuredGuideViewModel = [(GuidesHomeLogicController *)self filterLogicController];
    filterViewModels = [featuredGuideViewModel filterViewModels];
LABEL_13:
    sections2 = filterViewModels;
  }

LABEL_28:

LABEL_29:

  return sections2;
}

- (id)filterValueAtIndex:(unint64_t)index
{
  filterLogicController = [(GuidesHomeLogicController *)self filterLogicController];
  filterViewModels = [filterLogicController filterViewModels];

  if ([filterViewModels count] <= index)
  {
    filterTitle = 0;
  }

  else
  {
    v6 = [filterViewModels objectAtIndex:index];
    filterTitle = [v6 filterTitle];
  }

  return filterTitle;
}

- (id)sectionAtIndex:(unint64_t)index
{
  sections = [(GuidesHomeLogicController *)self sections];
  v6 = [sections count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    sections2 = [(GuidesHomeLogicController *)self sections];
    v8 = [sections2 objectAtIndex:index];
  }

  return v8;
}

- (id)allSections
{
  sections = [(GuidesHomeLogicController *)self sections];
  v3 = [sections copy];

  return v3;
}

- (void)appendBatchOfCollections:(id)collections
{
  collectionsCopy = collections;
  filteredGuidesSection = [(GuidesHomeLogicController *)self filteredGuidesSection];

  if (filteredGuidesSection)
  {
    collectionLogicControllers = [(GuidesHomeLogicController *)self collectionLogicControllers];
    filteredGuidesSection2 = [(GuidesHomeLogicController *)self filteredGuidesSection];
    sectionIdentifier = [filteredGuidesSection2 sectionIdentifier];
    v8 = [collectionLogicControllers objectForKey:sectionIdentifier];

    [v8 appendBatchOfCollections:collectionsCopy];
  }
}

- (void)updateFilteredCollectionsFromResults:(id)results collectionIds:(id)ids
{
  resultsCopy = results;
  idsCopy = ids;
  if (!resultsCopy)
  {
    [(GuidesHomeLogicController *)self setRecentCollectionFromCollectionResults:0];
    [(GuidesHomeLogicController *)self setBatchCollectionIds:idsCopy];
    [(GuidesHomeLogicController *)self setFilteredGuidesSection:0];
    [(GuidesHomeLogicController *)self maxWidth];
    v22 = v21;
    traitEnvironment = [(GuidesHomeLogicController *)self traitEnvironment];
    [(GuidesHomeLogicController *)self initializeSectionsUsingMaxWidth:traitEnvironment traitEnvironment:v22];
    goto LABEL_7;
  }

  filteredGuidesSection = [(GuidesHomeLogicController *)self filteredGuidesSection];

  if (filteredGuidesSection)
  {
LABEL_5:
    [(GuidesHomeLogicController *)self setLoadingSection:0];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100B893B4;
    v24[3] = &unk_10165D7E0;
    v25 = objc_alloc_init(NSMutableArray);
    traitEnvironment = v25;
    [resultsCopy enumerateObjectsUsingBlock:v24];
    v17 = [traitEnvironment copy];
    [(GuidesHomeLogicController *)self setRecentCollectionFromCollectionResults:v17];

    [(GuidesHomeLogicController *)self setBatchCollectionIds:idsCopy];
    [(GuidesHomeLogicController *)self maxWidth];
    v19 = v18;
    traitEnvironment2 = [(GuidesHomeLogicController *)self traitEnvironment];
    [(GuidesHomeLogicController *)self initializeSectionsUsingMaxWidth:traitEnvironment2 traitEnvironment:v19];

LABEL_7:
    goto LABEL_8;
  }

  if ([resultsCopy count])
  {
    v9 = [GuidesHomeSection alloc];
    [(GuidesHomeLogicController *)self maxWidth];
    v11 = v10;
    traitEnvironment3 = [(GuidesHomeLogicController *)self traitEnvironment];
    v13 = -[GuidesHomeSection initWithSectionKind:usingMaxWidth:usingTraitEnvironment:count:](v9, "initWithSectionKind:usingMaxWidth:usingTraitEnvironment:count:", 6, traitEnvironment3, [resultsCopy count], v11);
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

- (void)willDisplayCellAtIndexpath:(id)indexpath
{
  indexpathCopy = indexpath;
  v4 = -[GuidesHomeLogicController sectionAtIndex:](self, "sectionAtIndex:", [indexpathCopy section]);
  if ([v4 kind] == 6)
  {
    collectionLogicControllers = [(GuidesHomeLogicController *)self collectionLogicControllers];
    sectionIdentifier = [v4 sectionIdentifier];
    v7 = [collectionLogicControllers objectForKey:sectionIdentifier];

    [v7 willDisplayCellAtIndexpath:indexpathCopy];
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

- (GuidesHomeLogicController)initWithGuidesHomeResult:(id)result maxWidth:(double)width traitEnvironment:(id)environment guideFetcher:(id)fetcher guideConsumer:(id)consumer guideLocation:(id)location
{
  resultCopy = result;
  environmentCopy = environment;
  fetcherCopy = fetcher;
  consumerCopy = consumer;
  locationCopy = location;
  v23.receiver = self;
  v23.super_class = GuidesHomeLogicController;
  v20 = [(GuidesHomeLogicController *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_result, result);
    v21->_maxWidth = width;
    objc_storeStrong(&v21->_traitEnvironment, environment);
    objc_storeWeak(&v21->_guideFetcher, fetcherCopy);
    objc_storeWeak(&v21->_guideConsumer, consumerCopy);
    objc_storeStrong(&v21->_guideLocation, location);
    [(GuidesHomeLogicController *)v21 initializeFonts];
    [(GuidesHomeLogicController *)v21 initializeSectionsUsingMaxWidth:environmentCopy traitEnvironment:width];
  }

  return v21;
}

@end