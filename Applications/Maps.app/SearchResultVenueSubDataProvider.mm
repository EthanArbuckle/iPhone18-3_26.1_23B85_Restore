@interface SearchResultVenueSubDataProvider
- (SearchResultVenueSubDataProvider)initWithDelegate:(id)delegate;
- (id)_sortedBuildings;
- (void)performSearchWithActionCoordination:(id)coordination;
- (void)setVenueCardItem:(id)item;
- (void)setVenueContents:(id)contents;
@end

@implementation SearchResultVenueSubDataProvider

- (void)setVenueContents:(id)contents
{
  contentsCopy = contents;
  v9 = [[AlphabeticallyOrderedDataSource alloc] initWithObjects:contentsCopy];

  orderedObjects = [(AlphabeticallyOrderedDataSource *)v9 orderedObjects];
  v6 = orderedObjects;
  if (orderedObjects != self->_venueContents && ([(NSArray *)orderedObjects isEqual:?]& 1) == 0)
  {
    v7 = [(NSArray *)v6 copy];
    venueContents = self->_venueContents;
    self->_venueContents = v7;
  }
}

- (id)_sortedBuildings
{
  venueCardItem = self->_venueCardItem;
  if (venueCardItem)
  {
    venueMapItem = [(VenueCategoryCardItem *)venueCardItem venueMapItem];
    _venueInfo = [venueMapItem _venueInfo];
    filters = [_venueInfo filters];

    v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(filters, "count") + 1}];
    v7 = [VenueAllBuildings alloc];
    _venueInfo2 = [venueMapItem _venueInfo];
    venueIdentifier = [_venueInfo2 venueIdentifier];
    v10 = [(VenueAllBuildings *)v7 initWithVenueIdentifier:venueIdentifier];
    [v6 addObject:v10];

    v11 = [[AlphabeticallyOrderedDataSource alloc] initWithObjects:filters];
    orderedObjects = [(AlphabeticallyOrderedDataSource *)v11 orderedObjects];
    [v6 addObjectsFromArray:orderedObjects];

    v13 = [v6 copy];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  return v13;
}

- (void)performSearchWithActionCoordination:(id)coordination
{
  coordinationCopy = coordination;
  currentCategory = [(SearchResultVenueSubDataProvider *)self currentCategory];
  -[VenueCategoryContentDownloader performSearchWithSearchCategory:subcategoriesType:filter:shouldFrameMapViewport:actionCoordination:](self->_contentDownloader, "performSearchWithSearchCategory:subcategoriesType:filter:shouldFrameMapViewport:actionCoordination:", currentCategory, -[SearchResultVenueSubDataProvider subcategoriesType](self, "subcategoriesType"), 0, [currentCategory isSubCategorySameAsTopLevel] ^ 1, coordinationCopy);
}

- (void)setVenueCardItem:(id)item
{
  itemCopy = item;
  venueCardItem = self->_venueCardItem;
  if (venueCardItem != itemCopy && ([(VenueCategoryCardItem *)venueCardItem isEqual:itemCopy]& 1) == 0)
  {
    v8 = sub_1000410AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = NSStringFromSelector(a2);
      v12 = self->_venueCardItem;
      v30 = 138412802;
      v31 = v9;
      v32 = 2112;
      v33 = v11;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ %@, updates = %@", &v30, 0x20u);
    }

    objc_storeStrong(&self->_venueCardItem, item);
    venueSearchCategory = [(VenueCategoryCardItem *)self->_venueCardItem venueSearchCategory];
    currentCategory = self->_currentCategory;
    self->_currentCategory = venueSearchCategory;

    venueMapItem = [(VenueCategoryCardItem *)self->_venueCardItem venueMapItem];
    _browseCategories = [venueMapItem _browseCategories];
    v17 = [_browseCategories copy];
    browseCategories = self->_browseCategories;
    self->_browseCategories = v17;

    venueSearchCategory2 = [(VenueCategoryCardItem *)self->_venueCardItem venueSearchCategory];
    subcategories = [venueSearchCategory2 subcategories];
    v21 = [subcategories copy];
    subcategories = self->_subcategories;
    self->_subcategories = v21;

    _sortedBuildings = [(SearchResultVenueSubDataProvider *)self _sortedBuildings];
    buildings = self->_buildings;
    self->_buildings = _sortedBuildings;

    venueSearchCategory3 = [(VenueCategoryCardItem *)itemCopy venueSearchCategory];
    self->_subcategoriesType = [venueSearchCategory3 subCategoryType];

    v26 = [VenueCategoryContentDownloader alloc];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v28 = [(VenueCategoryContentDownloader *)v26 initWithDelegate:WeakRetained venueCategoryCardItem:self->_venueCardItem];
    contentDownloader = self->_contentDownloader;
    self->_contentDownloader = v28;
  }
}

- (SearchResultVenueSubDataProvider)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SearchResultVenueSubDataProvider;
  v5 = [(SearchResultVenueSubDataProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

@end