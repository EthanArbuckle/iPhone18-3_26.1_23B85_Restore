@interface VenueCategoryItem
- (BOOL)isEqual:(id)equal;
- (VenueCategoryItem)initWithSearchCategory:(id)category venueIdentifier:(id)identifier displayMode:(int)mode isAutoCompleteCategory:(BOOL)completeCategory shouldFrameMapViewport:(BOOL)viewport;
@end

@implementation VenueCategoryItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      searchCategory = [(VenueCategoryItem *)self searchCategory];
      searchCategory2 = [(VenueCategoryItem *)v5 searchCategory];
      if ([searchCategory isEqual:searchCategory2])
      {
        venueIdentifier = [(VenueCategoryItem *)self venueIdentifier];
        venueIdentifier2 = [(VenueCategoryItem *)v5 venueIdentifier];
        if ([venueIdentifier isEqual:venueIdentifier2] && (v10 = -[VenueCategoryItem displayMode](self, "displayMode"), v10 == -[VenueCategoryItem displayMode](v5, "displayMode")) && (v11 = -[VenueCategoryItem isAutoCompleteCategory](self, "isAutoCompleteCategory"), v11 == -[VenueCategoryItem isAutoCompleteCategory](v5, "isAutoCompleteCategory")))
        {
          shouldFrameMapViewport = [(VenueCategoryItem *)self shouldFrameMapViewport];
          v12 = shouldFrameMapViewport ^ [(VenueCategoryItem *)v5 shouldFrameMapViewport]^ 1;
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

- (VenueCategoryItem)initWithSearchCategory:(id)category venueIdentifier:(id)identifier displayMode:(int)mode isAutoCompleteCategory:(BOOL)completeCategory shouldFrameMapViewport:(BOOL)viewport
{
  categoryCopy = category;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = VenueCategoryItem;
  v15 = [(VenueCategoryItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_searchCategory, category);
    objc_storeStrong(&v16->_venueIdentifier, identifier);
    v16->_displayMode = mode;
    v16->_isAutoCompleteCategory = completeCategory;
    v16->_shouldFrameMapViewport = viewport;
  }

  return v16;
}

@end