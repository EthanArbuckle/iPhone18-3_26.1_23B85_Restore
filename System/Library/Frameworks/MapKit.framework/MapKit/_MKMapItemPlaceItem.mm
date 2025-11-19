@interface _MKMapItemPlaceItem
+ (id)placeItemWithMapItem:(id)a3 options:(unint64_t)a4;
+ (id)placeItemWithMapItem:(id)a3 options:(unint64_t)a4 isIntermediateMapItem:(BOOL)a5 preferredName:(id)a6 preferredSecondaryName:(id)a7;
- (NSString)name;
- (void)setIsSuggestedFavorite:(BOOL)a3;
@end

@implementation _MKMapItemPlaceItem

+ (id)placeItemWithMapItem:(id)a3 options:(unint64_t)a4 isIntermediateMapItem:(BOOL)a5 preferredName:(id)a6 preferredSecondaryName:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc_init(a1);
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(v16 + 1, a3);
    v17[2] = a4;
    *(v17 + 24) = a5;
    objc_storeStrong(v17 + 4, a6);
    v18 = [v15 length];
    if (v18)
    {
      v18 = v15;
    }

    v19 = v17[5];
    v17[5] = v18;
  }

  return v17;
}

+ (id)placeItemWithMapItem:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v8 = objc_alloc_init(a1);
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 1, a3);
    v9[2] = a4;
  }

  return v9;
}

- (void)setIsSuggestedFavorite:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_options = self->_options & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (NSString)name
{
  if ([(NSString *)self->_preferredName length])
  {
    v3 = self->_preferredName;
  }

  else
  {
    v3 = [(MKMapItem *)self->_mapItem name];
  }

  return v3;
}

@end