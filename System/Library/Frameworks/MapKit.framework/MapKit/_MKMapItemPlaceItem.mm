@interface _MKMapItemPlaceItem
+ (id)placeItemWithMapItem:(id)item options:(unint64_t)options;
+ (id)placeItemWithMapItem:(id)item options:(unint64_t)options isIntermediateMapItem:(BOOL)mapItem preferredName:(id)name preferredSecondaryName:(id)secondaryName;
- (NSString)name;
- (void)setIsSuggestedFavorite:(BOOL)favorite;
@end

@implementation _MKMapItemPlaceItem

+ (id)placeItemWithMapItem:(id)item options:(unint64_t)options isIntermediateMapItem:(BOOL)mapItem preferredName:(id)name preferredSecondaryName:(id)secondaryName
{
  itemCopy = item;
  nameCopy = name;
  secondaryNameCopy = secondaryName;
  v16 = objc_alloc_init(self);
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(v16 + 1, item);
    v17[2] = options;
    *(v17 + 24) = mapItem;
    objc_storeStrong(v17 + 4, name);
    v18 = [secondaryNameCopy length];
    if (v18)
    {
      v18 = secondaryNameCopy;
    }

    v19 = v17[5];
    v17[5] = v18;
  }

  return v17;
}

+ (id)placeItemWithMapItem:(id)item options:(unint64_t)options
{
  itemCopy = item;
  v8 = objc_alloc_init(self);
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 1, item);
    v9[2] = options;
  }

  return v9;
}

- (void)setIsSuggestedFavorite:(BOOL)favorite
{
  v3 = 4;
  if (!favorite)
  {
    v3 = 0;
  }

  self->_options = self->_options & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (NSString)name
{
  if ([(NSString *)self->_preferredName length])
  {
    name = self->_preferredName;
  }

  else
  {
    name = [(MKMapItem *)self->_mapItem name];
  }

  return name;
}

@end