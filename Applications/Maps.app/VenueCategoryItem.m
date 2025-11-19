@interface VenueCategoryItem
- (BOOL)isEqual:(id)a3;
- (VenueCategoryItem)initWithSearchCategory:(id)a3 venueIdentifier:(id)a4 displayMode:(int)a5 isAutoCompleteCategory:(BOOL)a6 shouldFrameMapViewport:(BOOL)a7;
@end

@implementation VenueCategoryItem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VenueCategoryItem *)self searchCategory];
      v7 = [(VenueCategoryItem *)v5 searchCategory];
      if ([v6 isEqual:v7])
      {
        v8 = [(VenueCategoryItem *)self venueIdentifier];
        v9 = [(VenueCategoryItem *)v5 venueIdentifier];
        if ([v8 isEqual:v9] && (v10 = -[VenueCategoryItem displayMode](self, "displayMode"), v10 == -[VenueCategoryItem displayMode](v5, "displayMode")) && (v11 = -[VenueCategoryItem isAutoCompleteCategory](self, "isAutoCompleteCategory"), v11 == -[VenueCategoryItem isAutoCompleteCategory](v5, "isAutoCompleteCategory")))
        {
          v14 = [(VenueCategoryItem *)self shouldFrameMapViewport];
          v12 = v14 ^ [(VenueCategoryItem *)v5 shouldFrameMapViewport]^ 1;
        }

        else
        {
          LOBYTE(v12) = 0;
        }
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (VenueCategoryItem)initWithSearchCategory:(id)a3 venueIdentifier:(id)a4 displayMode:(int)a5 isAutoCompleteCategory:(BOOL)a6 shouldFrameMapViewport:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = VenueCategoryItem;
  v15 = [(VenueCategoryItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_searchCategory, a3);
    objc_storeStrong(&v16->_venueIdentifier, a4);
    v16->_displayMode = a5;
    v16->_isAutoCompleteCategory = a6;
    v16->_shouldFrameMapViewport = a7;
  }

  return v16;
}

@end