@interface LibraryMapItemLookupResult
- (LibraryMapItemLookupResult)initWithPlaceItem:(id)item collectionHandler:(id)handler;
@end

@implementation LibraryMapItemLookupResult

- (LibraryMapItemLookupResult)initWithPlaceItem:(id)item collectionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = LibraryMapItemLookupResult;
  v9 = [(LibraryMapItemLookupResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placeItem, item);
    objc_storeStrong(&v10->_collectionHandler, handler);
  }

  return v10;
}

@end