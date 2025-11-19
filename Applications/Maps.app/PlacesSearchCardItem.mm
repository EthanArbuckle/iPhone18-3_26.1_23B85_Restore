@interface PlacesSearchCardItem
- (PlacesSearchCardItem)initWithMapItem:(id)a3 searchCategory:(id)a4;
@end

@implementation PlacesSearchCardItem

- (PlacesSearchCardItem)initWithMapItem:(id)a3 searchCategory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PlacesSearchCardItem;
  v9 = [(PlacesSearchCardItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapItem, a3);
    objc_storeStrong(&v10->_searchCategory, a4);
  }

  return v10;
}

@end