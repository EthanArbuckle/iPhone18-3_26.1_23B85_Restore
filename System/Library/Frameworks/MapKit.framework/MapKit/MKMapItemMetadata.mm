@interface MKMapItemMetadata
- (MKMapItemMetadata)initWithBusiness:(id)a3;
- (NSMutableDictionary)imageCache;
- (id)description;
- (id)imageForURL:(id)a3;
- (void)addImage:(id)a3 forURL:(id)a4;
@end

@implementation MKMapItemMetadata

- (id)imageForURL:(id)a3
{
  v4 = a3;
  v5 = [(MKMapItemMetadata *)self imageCache];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)addImage:(id)a3 forURL:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(MKMapItemMetadata *)self imageCache];
    [v8 setObject:v7 forKey:v6];
  }
}

- (NSMutableDictionary)imageCache
{
  imageCache = self->_imageCache;
  if (!imageCache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_imageCache;
    self->_imageCache = v4;

    imageCache = self->_imageCache;
  }

  return imageCache;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MKMapItemMetadata;
  v4 = [(MKMapItemMetadata *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: business: %@ imageCache: %@", v4, self->_business, self->_imageCache];

  return v5;
}

- (MKMapItemMetadata)initWithBusiness:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MKMapItemMetadata;
  v6 = [(MKMapItemMetadata *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_business, a3);
    v8 = v7;
  }

  return v7;
}

@end