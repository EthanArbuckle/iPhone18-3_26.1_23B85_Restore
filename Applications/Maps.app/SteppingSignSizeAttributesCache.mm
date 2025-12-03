@interface SteppingSignSizeAttributesCache
- (SteppingSignSizeAttributesCache)init;
- (id)sizeAttributesForSignAtIndex:(int64_t)index fittingSize:(CGSize)size;
- (void)invalidateSizeAttributesForSignAtIndex:(int64_t)index;
- (void)setSizeAttributes:(id)attributes forSignAtIndex:(int64_t)index fittingSize:(CGSize)size;
@end

@implementation SteppingSignSizeAttributesCache

- (void)invalidateSizeAttributesForSignAtIndex:(int64_t)index
{
  attributesCache = self->_attributesCache;
  v4 = [NSNumber numberWithInteger:index];
  [(NSMutableDictionary *)attributesCache removeObjectForKey:v4];
}

- (void)setSizeAttributes:(id)attributes forSignAtIndex:(int64_t)index fittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  attributesCache = self->_attributesCache;
  attributesCopy = attributes;
  v11 = [NSNumber numberWithInteger:index];
  v15 = [(NSMutableDictionary *)attributesCache objectForKey:v11];

  if (!v15)
  {
    v15 = objc_alloc_init(NSMutableDictionary);
    v12 = self->_attributesCache;
    v13 = [NSNumber numberWithInteger:index];
    [(NSMutableDictionary *)v12 setObject:v15 forKey:v13];
  }

  v17.width = width;
  v17.height = height;
  v14 = NSStringFromCGSize(v17);
  [v15 setObject:attributesCopy forKey:v14];
}

- (id)sizeAttributesForSignAtIndex:(int64_t)index fittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  attributesCache = self->_attributesCache;
  v7 = [NSNumber numberWithInteger:index];
  v8 = [(NSMutableDictionary *)attributesCache objectForKey:v7];

  v13.width = width;
  v13.height = height;
  v9 = NSStringFromCGSize(v13);
  v10 = [v8 objectForKey:v9];

  return v10;
}

- (SteppingSignSizeAttributesCache)init
{
  v6.receiver = self;
  v6.super_class = SteppingSignSizeAttributesCache;
  v2 = [(SteppingSignSizeAttributesCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    attributesCache = v2->_attributesCache;
    v2->_attributesCache = v3;
  }

  return v2;
}

@end