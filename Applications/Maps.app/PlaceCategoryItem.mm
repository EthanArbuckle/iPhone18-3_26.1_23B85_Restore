@interface PlaceCategoryItem
- (PlaceCategoryItem)initWithSearchCategory:(id)category parentMuid:(unint64_t)muid displayMode:(int)mode;
@end

@implementation PlaceCategoryItem

- (PlaceCategoryItem)initWithSearchCategory:(id)category parentMuid:(unint64_t)muid displayMode:(int)mode
{
  categoryCopy = category;
  v13.receiver = self;
  v13.super_class = PlaceCategoryItem;
  v10 = [(PlaceCategoryItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_searchCategory, category);
    v11->_parentMuid = muid;
    v11->_displayMode = mode;
  }

  return v11;
}

@end