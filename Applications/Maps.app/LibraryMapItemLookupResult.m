@interface LibraryMapItemLookupResult
- (LibraryMapItemLookupResult)initWithPlaceItem:(id)a3 collectionHandler:(id)a4;
@end

@implementation LibraryMapItemLookupResult

- (LibraryMapItemLookupResult)initWithPlaceItem:(id)a3 collectionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LibraryMapItemLookupResult;
  v9 = [(LibraryMapItemLookupResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placeItem, a3);
    objc_storeStrong(&v10->_collectionHandler, a4);
  }

  return v10;
}

@end