@interface VenueCategoryDataSource
- (NSArray)filterBarTitles;
- (VenueCategoryDataSource)initWithTableView:(id)a3 searchCategory:(id)a4;
- (id)filterBarTitlesWithBuildings;
- (id)filterBarTitlesWithSubcategories;
- (id)placeSummaryTemplateForSearchResult:(id)a3 indexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)venueIdentifier;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_cacheEVChargersTemplates;
- (void)dealloc;
- (void)iterateThroughIndexPathsAndExecuteBlock:(id)a3;
- (void)refreshEVChargers:(id)a3;
- (void)resetCache;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setBuildingsWithMapItem:(id)a3;
- (void)setMapItem:(id)a3;
- (void)setSearchResults:(id)a3 labelContext:(unint64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
@end

@implementation VenueCategoryDataSource

- (id)filterBarTitlesWithBuildings
{
  v3 = [(VenueCategoryDataSource *)self buildings];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [NSMutableArray alloc];
    v6 = [(VenueCategoryDataSource *)self buildings];
    v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(VenueCategoryDataSource *)self buildings];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v17 + 1) + 8 * i) label];
          v14 = [v13 name];
          [v7 addObject:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v15 = [v7 copy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)filterBarTitlesWithSubcategories
{
  v3 = [(VenueCategoryDataSource *)self subcategories];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [NSMutableArray alloc];
    v6 = [(VenueCategoryDataSource *)self subcategories];
    v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(VenueCategoryDataSource *)self subcategories];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) displayString];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v14 = [v7 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSArray)filterBarTitles
{
  v3 = [(VenueCategoryDataSource *)self subcategoriesType];
  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      v3 = [(VenueCategoryDataSource *)self filterBarTitlesWithBuildings];
    }
  }

  else
  {
    v3 = [(VenueCategoryDataSource *)self filterBarTitlesWithSubcategories];
  }

  return v3;
}

- (void)setSearchResults:(id)a3 labelContext:(unint64_t)a4
{
  v6 = a3;
  v13 = [[AlphabeticallyOrderedDataSource alloc] initWithAlphabeticallySortableObject:v6];

  self->_numberOfSectionsNotEmpty = [(AlphabeticallyOrderedDataSource *)v13 numberOfSectionsNotEmpty];
  v7 = [(AlphabeticallyOrderedDataSource *)v13 sectionIndexTitles];
  sectionIndexTitles = self->_sectionIndexTitles;
  self->_sectionIndexTitles = v7;

  self->_searchResultLabelContext = a4;
  v9 = [[SearchResultsDataSourceContent alloc] initWithOrderedDataSource:v13];
  content = self->_content;
  self->_content = v9;

  v11 = [(VenueCategoryDataSource *)self placeSummaryTemplateViewModels];

  if (v11)
  {
    v12 = [(VenueCategoryDataSource *)self placeSummaryTemplateViewModels];
    [v12 removeAllObjects];
  }

  [(VenueCategoryDataSource *)self _cacheEVChargersTemplates];
}

- (void)refreshEVChargers:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 mapItem];
        v11 = [v10 _identifier];

        v12 = [(NSMutableDictionary *)self->_mapitemTemplates objectForKeyedSubscript:v11];

        if (v12)
        {
          evChargerDownloader = self->_evChargerDownloader;
          v14 = [(NSMutableDictionary *)self->_mapitemTemplates objectForKeyedSubscript:v11];
          v15 = [v9 mapItem];
          [(PlaceSummaryEVChargerDownloader *)evChargerDownloader refreshResultForForTemplate:v14 mapItem:v15];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)setBuildingsWithMapItem:(id)a3
{
  v4 = [a3 _venueInfo];
  v15 = [v4 filters];

  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v15, "count") + 1}];
  v6 = [VenueAllBuildings alloc];
  v7 = [(VenueCategoryDataSource *)self mapItem];
  v8 = [v7 _venueInfo];
  v9 = [v8 venueIdentifier];
  v10 = [(VenueAllBuildings *)v6 initWithVenueIdentifier:v9];
  [v5 addObject:v10];

  v11 = [[AlphabeticallyOrderedDataSource alloc] initWithObjects:v15];
  v12 = [(AlphabeticallyOrderedDataSource *)v11 orderedObjects];
  [v5 addObjectsFromArray:v12];

  v13 = [v5 copy];
  buildings = self->_buildings;
  self->_buildings = v13;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v14 = a3;
  v9 = [(DataSource *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(DataSource *)self delegate];
    [v11 scrollViewWillEndDragging:v14 withVelocity:a5 targetContentOffset:{x, y}];
  }

  if (y <= 0.0)
  {
    v12 = 7;
  }

  else
  {
    v12 = 8;
  }

  v13 = +[MKMapService sharedService];
  [v13 captureUserAction:v12 onTarget:106 eventValue:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VenueCategoryDataSource *)self content];
  v10 = [v8 objectAtIndexPath:v6];

  [(DataSource *)self sendAnalyticsForDataAtIndexPath:v6 object:v10 action:2007];
  v9 = [(DataSource *)self delegate];
  [v9 dataSource:self itemTapped:v10];

  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v13 = a3;
  v7 = [a4 nextFocusedItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v13 indexPathForCell:v7], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [(DataSource *)self delegate];
    v11 = [(VenueCategoryDataSource *)self content];
    v12 = [v11 objectAtIndexPath:v9];
    [v10 dataSource:self itemFocused:v12];
  }

  else
  {
    v9 = [(DataSource *)self delegate];
    [v9 dataSource:self itemFocused:0];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(VenueCategoryDataSource *)self content];
  v4 = [v3 numberOfSections];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(VenueCategoryDataSource *)self content];
  v6 = [v5 numberOfRowsInSection:a4];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VenueCategoryDataSource *)self content];
  v9 = [v8 objectAtIndexPath:v6];

  v10 = [(VenueCategoryDataSource *)self placeSummaryTemplateForSearchResult:v9 indexPath:v6];

  v11 = +[_TtC4Maps25PlaceSummaryTableViewCell reuseIdentifier];
  v12 = [v7 dequeueReusableCellWithIdentifier:v11];

  [v12 setViewModel:v10 delegate:self asyncDataManager:self->_placeSummaryAsyncDataManager];

  return v12;
}

- (id)venueIdentifier
{
  v2 = [(VenueCategoryDataSource *)self mapItem];
  v3 = [v2 _venueInfo];
  v4 = [v3 venueIdentifier];

  return v4;
}

- (id)placeSummaryTemplateForSearchResult:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VenueCategoryDataSource *)self placeSummaryTemplateViewModels];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    v9 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory venueViewModelWithSearchResult:v6 metadata:0 labelContext:self->_searchResultLabelContext];
    v10 = [[_TtC4Maps19PlaceSummaryMetrics alloc] initWithLeadingMargin:0 trailingMargin:0 topMargin:0.0 bottomMargin:0.0 topLeadingCornerRadius:0.0 topTrailingCornerRadius:0.0 bottomLeadingCornerRadius:0.0 bottomTrailingCornerRadius:0.0 showsDivider:0.0 showPlatter:0.0];
    [v9 setMetrics:v10];

    v11 = [(VenueCategoryDataSource *)self placeSummaryTemplateViewModels];
    [v11 setObject:v9 forKey:v7];
  }

  v12 = v9;

  return v12;
}

- (void)iterateThroughIndexPathsAndExecuteBlock:(id)a3
{
  v11 = a3;
  v4 = [(VenueCategoryDataSource *)self content];
  v5 = [v4 numberOfSections];

  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = [(VenueCategoryDataSource *)self content];
      v8 = [v7 numberOfRowsInSection:i];

      if (v8 >= 1)
      {
        for (j = 0; j != v8; ++j)
        {
          v10 = [NSIndexPath indexPathForRow:j inSection:i];
          v11[2](v11, v10);
        }
      }
    }
  }
}

- (void)_cacheEVChargersTemplates
{
  v3 = [(SearchResultsDataSourceContent *)self->_content objects];
  v4 = [v3 count];

  if (v4)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100F5D7E0;
    v5[3] = &unk_10165E380;
    v5[4] = self;
    [(VenueCategoryDataSource *)self iterateThroughIndexPathsAndExecuteBlock:v5];
  }
}

- (void)setMapItem:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_mapItem, a3);
  [(VenueCategoryDataSource *)self setBuildingsWithMapItem:self->_mapItem];
  v5 = [(VenueCategoryDataSource *)self content];

  if (v5)
  {
    v6 = [(DataSource *)self tableView];
    [v6 reloadData];
  }
}

- (void)resetCache
{
  if (self->_placeSummaryTemplateViewModels)
  {
    v3 = [(VenueCategoryDataSource *)self placeSummaryTemplateViewModels];
    [v3 removeAllObjects];

    [(VenueCategoryDataSource *)self setPlaceSummaryTemplateViewModels:0];
  }

  evChargerDownloader = self->_evChargerDownloader;
  if (evChargerDownloader)
  {
    self->_evChargerDownloader = 0;
  }
}

- (void)dealloc
{
  [(VenueCategoryDataSource *)self resetCache];
  v3.receiver = self;
  v3.super_class = VenueCategoryDataSource;
  [(VenueCategoryDataSource *)&v3 dealloc];
}

- (VenueCategoryDataSource)initWithTableView:(id)a3 searchCategory:(id)a4
{
  v7 = a4;
  v26.receiver = self;
  v26.super_class = VenueCategoryDataSource;
  v8 = [(DataSource *)&v26 initWithTableView:a3 updateLocation:0];
  v9 = v8;
  if (v8)
  {
    v10 = [(DataSource *)v8 tableView];
    [v10 setDelegate:v9];

    v11 = [(DataSource *)v9 tableView];
    [v11 setDataSource:v9];

    v12 = [(DataSource *)v9 tableView];
    v13 = objc_opt_class();
    v14 = +[_TtC4Maps25PlaceSummaryTableViewCell reuseIdentifier];
    [v12 registerClass:v13 forCellReuseIdentifier:v14];

    UInteger = GEOConfigGetUInteger();
    v16 = [(DataSource *)v9 tableView];
    [v16 setSectionIndexMinimumDisplayRowCount:UInteger];

    objc_storeStrong(&v9->_searchCategory, a4);
    v9->_searchResultLabelContext = 1;
    v17 = objc_alloc_init(_TtC4Maps28PlaceSummaryAsyncDataManager);
    placeSummaryAsyncDataManager = v9->_placeSummaryAsyncDataManager;
    v9->_placeSummaryAsyncDataManager = v17;

    v19 = objc_alloc_init(_TtC4Maps31PlaceSummaryEVChargerDownloader);
    evChargerDownloader = v9->_evChargerDownloader;
    v9->_evChargerDownloader = v19;

    v21 = objc_alloc_init(NSCache);
    placeSummaryTemplateViewModels = v9->_placeSummaryTemplateViewModels;
    v9->_placeSummaryTemplateViewModels = v21;

    v23 = +[NSMutableDictionary dictionary];
    mapitemTemplates = v9->_mapitemTemplates;
    v9->_mapitemTemplates = v23;
  }

  return v9;
}

@end