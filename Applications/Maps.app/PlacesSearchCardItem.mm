@interface PlacesSearchCardItem
- (PlacesSearchCardItem)initWithMapItem:(id)item searchCategory:(id)category;
@end

@implementation PlacesSearchCardItem

- (PlacesSearchCardItem)initWithMapItem:(id)item searchCategory:(id)category
{
  itemCopy = item;
  categoryCopy = category;
  v12.receiver = self;
  v12.super_class = PlacesSearchCardItem;
  v9 = [(PlacesSearchCardItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapItem, item);
    objc_storeStrong(&v10->_searchCategory, category);
  }

  return v10;
}

@end