@interface VenueCategoryDataSource
- (NSArray)filterBarTitles;
- (VenueCategoryDataSource)initWithTableView:(id)view searchCategory:(id)category;
- (id)filterBarTitlesWithBuildings;
- (id)filterBarTitlesWithSubcategories;
- (id)placeSummaryTemplateForSearchResult:(id)result indexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)venueIdentifier;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_cacheEVChargersTemplates;
- (void)dealloc;
- (void)iterateThroughIndexPathsAndExecuteBlock:(id)block;
- (void)refreshEVChargers:(id)chargers;
- (void)resetCache;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setBuildingsWithMapItem:(id)item;
- (void)setMapItem:(id)item;
- (void)setSearchResults:(id)results labelContext:(unint64_t)context;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation VenueCategoryDataSource

- (id)filterBarTitlesWithBuildings
{
  buildings = [(VenueCategoryDataSource *)self buildings];
  v4 = [buildings count];

  if (v4)
  {
    v5 = [NSMutableArray alloc];
    buildings2 = [(VenueCategoryDataSource *)self buildings];
    v7 = [v5 initWithCapacity:{objc_msgSend(buildings2, "count")}];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    buildings3 = [(VenueCategoryDataSource *)self buildings];
    v9 = [buildings3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(buildings3);
          }

          label = [*(*(&v17 + 1) + 8 * i) label];
          name = [label name];
          [v7 addObject:name];
        }

        v10 = [buildings3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  subcategories = [(VenueCategoryDataSource *)self subcategories];
  v4 = [subcategories count];

  if (v4)
  {
    v5 = [NSMutableArray alloc];
    subcategories2 = [(VenueCategoryDataSource *)self subcategories];
    v7 = [v5 initWithCapacity:{objc_msgSend(subcategories2, "count")}];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    subcategories3 = [(VenueCategoryDataSource *)self subcategories];
    v9 = [subcategories3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(subcategories3);
          }

          displayString = [*(*(&v16 + 1) + 8 * i) displayString];
          [v7 addObject:displayString];
        }

        v10 = [subcategories3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  subcategoriesType = [(VenueCategoryDataSource *)self subcategoriesType];
  if (subcategoriesType >= 2)
  {
    if (subcategoriesType == 2)
    {
      subcategoriesType = [(VenueCategoryDataSource *)self filterBarTitlesWithBuildings];
    }
  }

  else
  {
    subcategoriesType = [(VenueCategoryDataSource *)self filterBarTitlesWithSubcategories];
  }

  return subcategoriesType;
}

- (void)setSearchResults:(id)results labelContext:(unint64_t)context
{
  resultsCopy = results;
  v13 = [[AlphabeticallyOrderedDataSource alloc] initWithAlphabeticallySortableObject:resultsCopy];

  self->_numberOfSectionsNotEmpty = [(AlphabeticallyOrderedDataSource *)v13 numberOfSectionsNotEmpty];
  sectionIndexTitles = [(AlphabeticallyOrderedDataSource *)v13 sectionIndexTitles];
  sectionIndexTitles = self->_sectionIndexTitles;
  self->_sectionIndexTitles = sectionIndexTitles;

  self->_searchResultLabelContext = context;
  v9 = [[SearchResultsDataSourceContent alloc] initWithOrderedDataSource:v13];
  content = self->_content;
  self->_content = v9;

  placeSummaryTemplateViewModels = [(VenueCategoryDataSource *)self placeSummaryTemplateViewModels];

  if (placeSummaryTemplateViewModels)
  {
    placeSummaryTemplateViewModels2 = [(VenueCategoryDataSource *)self placeSummaryTemplateViewModels];
    [placeSummaryTemplateViewModels2 removeAllObjects];
  }

  [(VenueCategoryDataSource *)self _cacheEVChargersTemplates];
}

- (void)refreshEVChargers:(id)chargers
{
  chargersCopy = chargers;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [chargersCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(chargersCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        mapItem = [v9 mapItem];
        _identifier = [mapItem _identifier];

        v12 = [(NSMutableDictionary *)self->_mapitemTemplates objectForKeyedSubscript:_identifier];

        if (v12)
        {
          evChargerDownloader = self->_evChargerDownloader;
          v14 = [(NSMutableDictionary *)self->_mapitemTemplates objectForKeyedSubscript:_identifier];
          mapItem2 = [v9 mapItem];
          [(PlaceSummaryEVChargerDownloader *)evChargerDownloader refreshResultForForTemplate:v14 mapItem:mapItem2];
        }
      }

      v6 = [chargersCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)setBuildingsWithMapItem:(id)item
{
  _venueInfo = [item _venueInfo];
  filters = [_venueInfo filters];

  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(filters, "count") + 1}];
  v6 = [VenueAllBuildings alloc];
  mapItem = [(VenueCategoryDataSource *)self mapItem];
  _venueInfo2 = [mapItem _venueInfo];
  venueIdentifier = [_venueInfo2 venueIdentifier];
  v10 = [(VenueAllBuildings *)v6 initWithVenueIdentifier:venueIdentifier];
  [v5 addObject:v10];

  v11 = [[AlphabeticallyOrderedDataSource alloc] initWithObjects:filters];
  orderedObjects = [(AlphabeticallyOrderedDataSource *)v11 orderedObjects];
  [v5 addObjectsFromArray:orderedObjects];

  v13 = [v5 copy];
  buildings = self->_buildings;
  self->_buildings = v13;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  delegate = [(DataSource *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  content = [(VenueCategoryDataSource *)self content];
  v10 = [content objectAtIndexPath:pathCopy];

  [(DataSource *)self sendAnalyticsForDataAtIndexPath:pathCopy object:v10 action:2007];
  delegate = [(DataSource *)self delegate];
  [delegate dataSource:self itemTapped:v10];

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  nextFocusedItem = [context nextFocusedItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([viewCopy indexPathForCell:nextFocusedItem], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    delegate2 = v8;
    delegate = [(DataSource *)self delegate];
    content = [(VenueCategoryDataSource *)self content];
    v12 = [content objectAtIndexPath:delegate2];
    [delegate dataSource:self itemFocused:v12];
  }

  else
  {
    delegate2 = [(DataSource *)self delegate];
    [delegate2 dataSource:self itemFocused:0];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  content = [(VenueCategoryDataSource *)self content];
  numberOfSections = [content numberOfSections];

  return numberOfSections;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  content = [(VenueCategoryDataSource *)self content];
  v6 = [content numberOfRowsInSection:section];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  content = [(VenueCategoryDataSource *)self content];
  v9 = [content objectAtIndexPath:pathCopy];

  v10 = [(VenueCategoryDataSource *)self placeSummaryTemplateForSearchResult:v9 indexPath:pathCopy];

  v11 = +[_TtC4Maps25PlaceSummaryTableViewCell reuseIdentifier];
  v12 = [viewCopy dequeueReusableCellWithIdentifier:v11];

  [v12 setViewModel:v10 delegate:self asyncDataManager:self->_placeSummaryAsyncDataManager];

  return v12;
}

- (id)venueIdentifier
{
  mapItem = [(VenueCategoryDataSource *)self mapItem];
  _venueInfo = [mapItem _venueInfo];
  venueIdentifier = [_venueInfo venueIdentifier];

  return venueIdentifier;
}

- (id)placeSummaryTemplateForSearchResult:(id)result indexPath:(id)path
{
  resultCopy = result;
  pathCopy = path;
  placeSummaryTemplateViewModels = [(VenueCategoryDataSource *)self placeSummaryTemplateViewModels];
  v9 = [placeSummaryTemplateViewModels objectForKey:pathCopy];

  if (!v9)
  {
    v9 = [_TtC4Maps36PlaceSummaryViewModelTemplateFactory venueViewModelWithSearchResult:resultCopy metadata:0 labelContext:self->_searchResultLabelContext];
    v10 = [[_TtC4Maps19PlaceSummaryMetrics alloc] initWithLeadingMargin:0 trailingMargin:0 topMargin:0.0 bottomMargin:0.0 topLeadingCornerRadius:0.0 topTrailingCornerRadius:0.0 bottomLeadingCornerRadius:0.0 bottomTrailingCornerRadius:0.0 showsDivider:0.0 showPlatter:0.0];
    [v9 setMetrics:v10];

    placeSummaryTemplateViewModels2 = [(VenueCategoryDataSource *)self placeSummaryTemplateViewModels];
    [placeSummaryTemplateViewModels2 setObject:v9 forKey:pathCopy];
  }

  v12 = v9;

  return v12;
}

- (void)iterateThroughIndexPathsAndExecuteBlock:(id)block
{
  blockCopy = block;
  content = [(VenueCategoryDataSource *)self content];
  numberOfSections = [content numberOfSections];

  if (numberOfSections >= 1)
  {
    for (i = 0; i != numberOfSections; ++i)
    {
      content2 = [(VenueCategoryDataSource *)self content];
      v8 = [content2 numberOfRowsInSection:i];

      if (v8 >= 1)
      {
        for (j = 0; j != v8; ++j)
        {
          v10 = [NSIndexPath indexPathForRow:j inSection:i];
          blockCopy[2](blockCopy, v10);
        }
      }
    }
  }
}

- (void)_cacheEVChargersTemplates
{
  objects = [(SearchResultsDataSourceContent *)self->_content objects];
  v4 = [objects count];

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

- (void)setMapItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_mapItem, item);
  [(VenueCategoryDataSource *)self setBuildingsWithMapItem:self->_mapItem];
  content = [(VenueCategoryDataSource *)self content];

  if (content)
  {
    tableView = [(DataSource *)self tableView];
    [tableView reloadData];
  }
}

- (void)resetCache
{
  if (self->_placeSummaryTemplateViewModels)
  {
    placeSummaryTemplateViewModels = [(VenueCategoryDataSource *)self placeSummaryTemplateViewModels];
    [placeSummaryTemplateViewModels removeAllObjects];

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

- (VenueCategoryDataSource)initWithTableView:(id)view searchCategory:(id)category
{
  categoryCopy = category;
  v26.receiver = self;
  v26.super_class = VenueCategoryDataSource;
  v8 = [(DataSource *)&v26 initWithTableView:view updateLocation:0];
  v9 = v8;
  if (v8)
  {
    tableView = [(DataSource *)v8 tableView];
    [tableView setDelegate:v9];

    tableView2 = [(DataSource *)v9 tableView];
    [tableView2 setDataSource:v9];

    tableView3 = [(DataSource *)v9 tableView];
    v13 = objc_opt_class();
    v14 = +[_TtC4Maps25PlaceSummaryTableViewCell reuseIdentifier];
    [tableView3 registerClass:v13 forCellReuseIdentifier:v14];

    UInteger = GEOConfigGetUInteger();
    tableView4 = [(DataSource *)v9 tableView];
    [tableView4 setSectionIndexMinimumDisplayRowCount:UInteger];

    objc_storeStrong(&v9->_searchCategory, category);
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