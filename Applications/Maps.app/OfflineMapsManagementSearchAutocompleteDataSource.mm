@interface OfflineMapsManagementSearchAutocompleteDataSource
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (OfflineMapsManagementSearchAutocompleteDataSource)initWithCollectionView:(id)view updateLocation:(BOOL)location;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)sectionForSectionIndex:(unint64_t)index;
- (int64_t)numberOfItemsInSection:(id)section;
- (void)_updateContentAnimated:(BOOL)animated;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)commonInit;
- (void)setActive:(BOOL)active;
- (void)updateForSearchQuery:(id)query;
@end

@implementation OfflineMapsManagementSearchAutocompleteDataSource

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectItemAtIndexPath:pathCopy animated:1];
  diffableDataSource = [(OfflineMapsManagementSearchAutocompleteDataSource *)self diffableDataSource];
  v9 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  delegate = [(DataSource *)self delegate];
  [delegate dataSource:self itemTapped:v9];
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  diffableDataSource = [(OfflineMapsManagementSearchAutocompleteDataSource *)self diffableDataSource];
  v7 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = [v7 _supportsOfflineDownload];
LABEL_6:
    v9 = isKindOfClass;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9 & 1;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  diffableDataSource = [(OfflineMapsManagementSearchAutocompleteDataSource *)self diffableDataSource];
  v7 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = [v7 _supportsOfflineDownload];
LABEL_6:
    v9 = isKindOfClass;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9 & 1;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  kindCopy = kind;
  v11 = -[OfflineMapsManagementSearchAutocompleteDataSource sectionForSectionIndex:](self, "sectionForSectionIndex:", [pathCopy section]);
  LODWORD(self) = [kindCopy isEqualToString:UICollectionElementKindSectionHeader];

  if (self)
  {
    headerText = [v11 headerText];
    if ([headerText length])
    {
      v13 = +[SectionHeaderCollectionReusableView reuseIdentifier];
      v14 = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v13 forIndexPath:pathCopy];

      [v14 setTitle:headerText];
      [v14 setShowsBottomHairline:0];
      [v14 setFirstNonEmptySection:1];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = identifierCopy;
    v11 = +[TwoLineCollectionViewListCell identifier];
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

    v13 = [TwoLinesContentViewModelComposer cellModelForOfflineRegionLocalSearchCompletion:v10];

LABEL_8:
    [v12 setViewModel:v13];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = +[TwoLineCollectionViewListCell identifier];
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:pathCopy];

    v15 = [TwoLinesContentViewModelComposer cellModelForOfflineSearchResult:identifierCopy];
LABEL_7:
    v13 = v15;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = +[TwoLineCollectionViewListCell identifier];
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v16 forIndexPath:pathCopy];

    v15 = [TwoLinesContentViewModelComposer cellModelForHistoryEntryRecentsItem:identifierCopy showAutocompleteClientSource:0];
    goto LABEL_7;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (void)_updateContentAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  searchCompleter = [(OfflineMapsManagementSearchAutocompleteDataSource *)self searchCompleter];
  queryFragment = [searchCompleter queryFragment];
  v8 = [queryFragment length];

  v9 = [OfflineMapsManagementSearchAutocompleteSection alloc];
  if (v8)
  {
    v10 = [(OfflineMapsManagementSearchAutocompleteSection *)v9 initWithSectionType:2];
    v29 = v10;
    v11 = [NSArray arrayWithObjects:&v29 count:1];
    [v5 appendSectionsWithIdentifiers:v11];

    searchCompleter2 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self searchCompleter];
    results = [(OfflineMapsManagementSearchAutocompleteSection *)searchCompleter2 results];
    v14 = v5;
    v15 = results;
    v16 = v10;
LABEL_5:
    [v14 appendItemsWithIdentifiers:v15 intoSectionWithIdentifier:v16];

    goto LABEL_6;
  }

  v10 = [(OfflineMapsManagementSearchAutocompleteSection *)v9 initWithSectionType:0];
  v28 = v10;
  v17 = [NSArray arrayWithObjects:&v28 count:1];
  [v5 appendSectionsWithIdentifiers:v17];

  currentLocationSearchResult = [(OfflineMapsManagementSearchAutocompleteDataSource *)self currentLocationSearchResult];
  v27 = currentLocationSearchResult;
  v19 = [NSArray arrayWithObjects:&v27 count:1];
  [v5 appendItemsWithIdentifiers:v19 intoSectionWithIdentifier:v10];

  recentsDataFilter = [(OfflineMapsManagementSearchAutocompleteDataSource *)self recentsDataFilter];
  recentsDataProvider = [(OfflineMapsManagementSearchAutocompleteDataSource *)self recentsDataProvider];
  recents = [recentsDataProvider recents];
  searchCompleter2 = [recentsDataFilter filteredRecents:recents excludingDuplicatesOfEntries:&__NSArray0__struct];

  if ([(OfflineMapsManagementSearchAutocompleteSection *)searchCompleter2 count])
  {
    results = [[OfflineMapsManagementSearchAutocompleteSection alloc] initWithSectionType:1];
    v26 = results;
    v23 = [NSArray arrayWithObjects:&v26 count:1];
    [v5 appendSectionsWithIdentifiers:v23];

    v14 = v5;
    v15 = searchCompleter2;
    v16 = results;
    goto LABEL_5;
  }

LABEL_6:

  sectionIdentifiers = [v5 sectionIdentifiers];
  [(OfflineMapsManagementSearchAutocompleteDataSource *)self setSections:sectionIdentifiers];

  diffableDataSource = [(OfflineMapsManagementSearchAutocompleteDataSource *)self diffableDataSource];
  [diffableDataSource applySnapshot:v5 animatingDifferences:animatedCopy];
}

- (int64_t)numberOfItemsInSection:(id)section
{
  sectionCopy = section;
  diffableDataSource = [(OfflineMapsManagementSearchAutocompleteDataSource *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];
  v7 = [snapshot numberOfItemsInSection:sectionCopy];

  return v7;
}

- (id)sectionForSectionIndex:(unint64_t)index
{
  sections = [(OfflineMapsManagementSearchAutocompleteDataSource *)self sections];
  v6 = [sections count];

  if (v6 >= index)
  {
    sections2 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self sections];
    v7 = [sections2 objectAtIndex:index];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  if ([(DataSource *)self active]!= active)
  {
    v6.receiver = self;
    v6.super_class = OfflineMapsManagementSearchAutocompleteDataSource;
    [(DataSource *)&v6 setActive:activeCopy];
    recentsDataProvider = [(OfflineMapsManagementSearchAutocompleteDataSource *)self recentsDataProvider];
    [recentsDataProvider setActive:activeCopy];

    if (activeCopy)
    {
      [(OfflineMapsManagementSearchAutocompleteDataSource *)self _updateContentAnimated:0];
    }
  }
}

- (void)updateForSearchQuery:(id)query
{
  queryCopy = query;
  searchCompleter = [(OfflineMapsManagementSearchAutocompleteDataSource *)self searchCompleter];
  [searchCompleter setQueryFragment:queryCopy];
}

- (void)commonInit
{
  collectionView = [(DataSource *)self collectionView];
  [collectionView setDelegate:self];

  collectionView2 = [(DataSource *)self collectionView];
  v5 = objc_opt_class();
  v6 = +[TwoLineCollectionViewListCell identifier];
  [collectionView2 registerClass:v5 forCellWithReuseIdentifier:v6];

  collectionView3 = [(DataSource *)self collectionView];
  v8 = objc_opt_class();
  v9 = +[SectionHeaderCollectionReusableView reuseIdentifier];
  [collectionView3 registerClass:v8 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v9];

  v10 = [UICollectionViewDiffableDataSource alloc];
  collectionView4 = [(DataSource *)self collectionView];
  v12 = sub_1007CDFC8(self);
  v13 = [v10 initWithCollectionView:collectionView4 cellProvider:v12];
  [(OfflineMapsManagementSearchAutocompleteDataSource *)self setDiffableDataSource:v13];

  v14 = sub_1007CE178(self);
  diffableDataSource = [(OfflineMapsManagementSearchAutocompleteDataSource *)self diffableDataSource];
  [diffableDataSource setSupplementaryViewProvider:v14];

  v16 = +[SearchResult currentLocationSearchResult];
  [(OfflineMapsManagementSearchAutocompleteDataSource *)self setCurrentLocationSearchResult:v16];

  v17 = +[CustomLocationManager sharedManager];
  currentLocationSearchResult = [(OfflineMapsManagementSearchAutocompleteDataSource *)self currentLocationSearchResult];
  [v17 processSearchResult:currentLocationSearchResult traits:0];

  v26 = [NSPredicate predicateWithBlock:&stru_10165E480];
  v19 = [[RecentsDataFilter alloc] initWithSearchMode:1 filterPredicate:v26];
  [(OfflineMapsManagementSearchAutocompleteDataSource *)self setRecentsDataFilter:v19];

  v20 = objc_alloc_init(RecentsDataProvider);
  [(OfflineMapsManagementSearchAutocompleteDataSource *)self setRecentsDataProvider:v20];

  recentsDataProvider = [(OfflineMapsManagementSearchAutocompleteDataSource *)self recentsDataProvider];
  observers = [recentsDataProvider observers];
  [observers registerObserver:self];

  v23 = objc_alloc_init(MKLocalSearchCompleter);
  [(OfflineMapsManagementSearchAutocompleteDataSource *)self setSearchCompleter:v23];

  searchCompleter = [(OfflineMapsManagementSearchAutocompleteDataSource *)self searchCompleter];
  [searchCompleter setDelegate:self];

  searchCompleter2 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self searchCompleter];
  [searchCompleter2 _setPrivateFilterType:1003];
}

- (OfflineMapsManagementSearchAutocompleteDataSource)initWithCollectionView:(id)view updateLocation:(BOOL)location
{
  v7.receiver = self;
  v7.super_class = OfflineMapsManagementSearchAutocompleteDataSource;
  v4 = [(DataSource *)&v7 initWithCollectionView:view updateLocation:location];
  v5 = v4;
  if (v4)
  {
    [(OfflineMapsManagementSearchAutocompleteDataSource *)v4 commonInit];
  }

  return v5;
}

@end