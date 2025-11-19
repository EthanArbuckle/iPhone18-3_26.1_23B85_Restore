@interface OfflineMapsManagementSearchAutocompleteDataSource
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (OfflineMapsManagementSearchAutocompleteDataSource)initWithCollectionView:(id)a3 updateLocation:(BOOL)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)sectionForSectionIndex:(unint64_t)a3;
- (int64_t)numberOfItemsInSection:(id)a3;
- (void)_updateContentAnimated:(BOOL)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)commonInit;
- (void)setActive:(BOOL)a3;
- (void)updateForSearchQuery:(id)a3;
@end

@implementation OfflineMapsManagementSearchAutocompleteDataSource

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectItemAtIndexPath:v6 animated:1];
  v7 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self diffableDataSource];
  v9 = [v7 itemIdentifierForIndexPath:v6];

  v8 = [(DataSource *)self delegate];
  [v8 dataSource:self itemTapped:v9];
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self diffableDataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

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

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self diffableDataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

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

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = -[OfflineMapsManagementSearchAutocompleteDataSource sectionForSectionIndex:](self, "sectionForSectionIndex:", [v9 section]);
  LODWORD(self) = [v10 isEqualToString:UICollectionElementKindSectionHeader];

  if (self)
  {
    v12 = [v11 headerText];
    if ([v12 length])
    {
      v13 = +[SectionHeaderCollectionReusableView reuseIdentifier];
      v14 = [v8 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v13 forIndexPath:v9];

      [v14 setTitle:v12];
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = +[TwoLineCollectionViewListCell identifier];
    v12 = [v7 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v8];

    v13 = [TwoLinesContentViewModelComposer cellModelForOfflineRegionLocalSearchCompletion:v10];

LABEL_8:
    [v12 setViewModel:v13];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = +[TwoLineCollectionViewListCell identifier];
    v12 = [v7 dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:v8];

    v15 = [TwoLinesContentViewModelComposer cellModelForOfflineSearchResult:v9];
LABEL_7:
    v13 = v15;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = +[TwoLineCollectionViewListCell identifier];
    v12 = [v7 dequeueReusableCellWithReuseIdentifier:v16 forIndexPath:v8];

    v15 = [TwoLinesContentViewModelComposer cellModelForHistoryEntryRecentsItem:v9 showAutocompleteClientSource:0];
    goto LABEL_7;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (void)_updateContentAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  v6 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self searchCompleter];
  v7 = [v6 queryFragment];
  v8 = [v7 length];

  v9 = [OfflineMapsManagementSearchAutocompleteSection alloc];
  if (v8)
  {
    v10 = [(OfflineMapsManagementSearchAutocompleteSection *)v9 initWithSectionType:2];
    v29 = v10;
    v11 = [NSArray arrayWithObjects:&v29 count:1];
    [v5 appendSectionsWithIdentifiers:v11];

    v12 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self searchCompleter];
    v13 = [(OfflineMapsManagementSearchAutocompleteSection *)v12 results];
    v14 = v5;
    v15 = v13;
    v16 = v10;
LABEL_5:
    [v14 appendItemsWithIdentifiers:v15 intoSectionWithIdentifier:v16];

    goto LABEL_6;
  }

  v10 = [(OfflineMapsManagementSearchAutocompleteSection *)v9 initWithSectionType:0];
  v28 = v10;
  v17 = [NSArray arrayWithObjects:&v28 count:1];
  [v5 appendSectionsWithIdentifiers:v17];

  v18 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self currentLocationSearchResult];
  v27 = v18;
  v19 = [NSArray arrayWithObjects:&v27 count:1];
  [v5 appendItemsWithIdentifiers:v19 intoSectionWithIdentifier:v10];

  v20 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self recentsDataFilter];
  v21 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self recentsDataProvider];
  v22 = [v21 recents];
  v12 = [v20 filteredRecents:v22 excludingDuplicatesOfEntries:&__NSArray0__struct];

  if ([(OfflineMapsManagementSearchAutocompleteSection *)v12 count])
  {
    v13 = [[OfflineMapsManagementSearchAutocompleteSection alloc] initWithSectionType:1];
    v26 = v13;
    v23 = [NSArray arrayWithObjects:&v26 count:1];
    [v5 appendSectionsWithIdentifiers:v23];

    v14 = v5;
    v15 = v12;
    v16 = v13;
    goto LABEL_5;
  }

LABEL_6:

  v24 = [v5 sectionIdentifiers];
  [(OfflineMapsManagementSearchAutocompleteDataSource *)self setSections:v24];

  v25 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self diffableDataSource];
  [v25 applySnapshot:v5 animatingDifferences:v3];
}

- (int64_t)numberOfItemsInSection:(id)a3
{
  v4 = a3;
  v5 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self diffableDataSource];
  v6 = [v5 snapshot];
  v7 = [v6 numberOfItemsInSection:v4];

  return v7;
}

- (id)sectionForSectionIndex:(unint64_t)a3
{
  v5 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self sections];
  v6 = [v5 count];

  if (v6 >= a3)
  {
    v8 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self sections];
    v7 = [v8 objectAtIndex:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  if ([(DataSource *)self active]!= a3)
  {
    v6.receiver = self;
    v6.super_class = OfflineMapsManagementSearchAutocompleteDataSource;
    [(DataSource *)&v6 setActive:v3];
    v5 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self recentsDataProvider];
    [v5 setActive:v3];

    if (v3)
    {
      [(OfflineMapsManagementSearchAutocompleteDataSource *)self _updateContentAnimated:0];
    }
  }
}

- (void)updateForSearchQuery:(id)a3
{
  v4 = a3;
  v5 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self searchCompleter];
  [v5 setQueryFragment:v4];
}

- (void)commonInit
{
  v3 = [(DataSource *)self collectionView];
  [v3 setDelegate:self];

  v4 = [(DataSource *)self collectionView];
  v5 = objc_opt_class();
  v6 = +[TwoLineCollectionViewListCell identifier];
  [v4 registerClass:v5 forCellWithReuseIdentifier:v6];

  v7 = [(DataSource *)self collectionView];
  v8 = objc_opt_class();
  v9 = +[SectionHeaderCollectionReusableView reuseIdentifier];
  [v7 registerClass:v8 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v9];

  v10 = [UICollectionViewDiffableDataSource alloc];
  v11 = [(DataSource *)self collectionView];
  v12 = sub_1007CDFC8(self);
  v13 = [v10 initWithCollectionView:v11 cellProvider:v12];
  [(OfflineMapsManagementSearchAutocompleteDataSource *)self setDiffableDataSource:v13];

  v14 = sub_1007CE178(self);
  v15 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self diffableDataSource];
  [v15 setSupplementaryViewProvider:v14];

  v16 = +[SearchResult currentLocationSearchResult];
  [(OfflineMapsManagementSearchAutocompleteDataSource *)self setCurrentLocationSearchResult:v16];

  v17 = +[CustomLocationManager sharedManager];
  v18 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self currentLocationSearchResult];
  [v17 processSearchResult:v18 traits:0];

  v26 = [NSPredicate predicateWithBlock:&stru_10165E480];
  v19 = [[RecentsDataFilter alloc] initWithSearchMode:1 filterPredicate:v26];
  [(OfflineMapsManagementSearchAutocompleteDataSource *)self setRecentsDataFilter:v19];

  v20 = objc_alloc_init(RecentsDataProvider);
  [(OfflineMapsManagementSearchAutocompleteDataSource *)self setRecentsDataProvider:v20];

  v21 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self recentsDataProvider];
  v22 = [v21 observers];
  [v22 registerObserver:self];

  v23 = objc_alloc_init(MKLocalSearchCompleter);
  [(OfflineMapsManagementSearchAutocompleteDataSource *)self setSearchCompleter:v23];

  v24 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self searchCompleter];
  [v24 setDelegate:self];

  v25 = [(OfflineMapsManagementSearchAutocompleteDataSource *)self searchCompleter];
  [v25 _setPrivateFilterType:1003];
}

- (OfflineMapsManagementSearchAutocompleteDataSource)initWithCollectionView:(id)a3 updateLocation:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = OfflineMapsManagementSearchAutocompleteDataSource;
  v4 = [(DataSource *)&v7 initWithCollectionView:a3 updateLocation:a4];
  v5 = v4;
  if (v4)
  {
    [(OfflineMapsManagementSearchAutocompleteDataSource *)v4 commonInit];
  }

  return v5;
}

@end