@interface PlaceCategoryItem
- (PlaceCategoryItem)initWithSearchCategory:(id)a3 parentMuid:(unint64_t)a4 displayMode:(int)a5;
@end

@implementation PlaceCategoryItem

- (PlaceCategoryItem)initWithSearchCategory:(id)a3 parentMuid:(unint64_t)a4 displayMode:(int)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = PlaceCategoryItem;
  v10 = [(PlaceCategoryItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_searchCategory, a3);
    v11->_parentMuid = a4;
    v11->_displayMode = a5;
  }

  return v11;
}

@end