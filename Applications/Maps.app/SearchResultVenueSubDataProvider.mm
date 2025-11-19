@interface SearchResultVenueSubDataProvider
- (SearchResultVenueSubDataProvider)initWithDelegate:(id)a3;
- (id)_sortedBuildings;
- (void)performSearchWithActionCoordination:(id)a3;
- (void)setVenueCardItem:(id)a3;
- (void)setVenueContents:(id)a3;
@end

@implementation SearchResultVenueSubDataProvider

- (void)setVenueContents:(id)a3
{
  v4 = a3;
  v9 = [[AlphabeticallyOrderedDataSource alloc] initWithObjects:v4];

  v5 = [(AlphabeticallyOrderedDataSource *)v9 orderedObjects];
  v6 = v5;
  if (v5 != self->_venueContents && ([(NSArray *)v5 isEqual:?]& 1) == 0)
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
    v3 = [(VenueCategoryCardItem *)venueCardItem venueMapItem];
    v4 = [v3 _venueInfo];
    v5 = [v4 filters];

    v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count") + 1}];
    v7 = [VenueAllBuildings alloc];
    v8 = [v3 _venueInfo];
    v9 = [v8 venueIdentifier];
    v10 = [(VenueAllBuildings *)v7 initWithVenueIdentifier:v9];
    [v6 addObject:v10];

    v11 = [[AlphabeticallyOrderedDataSource alloc] initWithObjects:v5];
    v12 = [(AlphabeticallyOrderedDataSource *)v11 orderedObjects];
    [v6 addObjectsFromArray:v12];

    v13 = [v6 copy];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  return v13;
}

- (void)performSearchWithActionCoordination:(id)a3
{
  v4 = a3;
  v5 = [(SearchResultVenueSubDataProvider *)self currentCategory];
  -[VenueCategoryContentDownloader performSearchWithSearchCategory:subcategoriesType:filter:shouldFrameMapViewport:actionCoordination:](self->_contentDownloader, "performSearchWithSearchCategory:subcategoriesType:filter:shouldFrameMapViewport:actionCoordination:", v5, -[SearchResultVenueSubDataProvider subcategoriesType](self, "subcategoriesType"), 0, [v5 isSubCategorySameAsTopLevel] ^ 1, v4);
}

- (void)setVenueCardItem:(id)a3
{
  v6 = a3;
  venueCardItem = self->_venueCardItem;
  if (venueCardItem != v6 && ([(VenueCategoryCardItem *)venueCardItem isEqual:v6]& 1) == 0)
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

    objc_storeStrong(&self->_venueCardItem, a3);
    v13 = [(VenueCategoryCardItem *)self->_venueCardItem venueSearchCategory];
    currentCategory = self->_currentCategory;
    self->_currentCategory = v13;

    v15 = [(VenueCategoryCardItem *)self->_venueCardItem venueMapItem];
    v16 = [v15 _browseCategories];
    v17 = [v16 copy];
    browseCategories = self->_browseCategories;
    self->_browseCategories = v17;

    v19 = [(VenueCategoryCardItem *)self->_venueCardItem venueSearchCategory];
    v20 = [v19 subcategories];
    v21 = [v20 copy];
    subcategories = self->_subcategories;
    self->_subcategories = v21;

    v23 = [(SearchResultVenueSubDataProvider *)self _sortedBuildings];
    buildings = self->_buildings;
    self->_buildings = v23;

    v25 = [(VenueCategoryCardItem *)v6 venueSearchCategory];
    self->_subcategoriesType = [v25 subCategoryType];

    v26 = [VenueCategoryContentDownloader alloc];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v28 = [(VenueCategoryContentDownloader *)v26 initWithDelegate:WeakRetained venueCategoryCardItem:self->_venueCardItem];
    contentDownloader = self->_contentDownloader;
    self->_contentDownloader = v28;
  }
}

- (SearchResultVenueSubDataProvider)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SearchResultVenueSubDataProvider;
  v5 = [(SearchResultVenueSubDataProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

@end