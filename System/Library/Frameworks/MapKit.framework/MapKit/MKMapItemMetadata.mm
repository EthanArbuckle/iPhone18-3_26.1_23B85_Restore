@interface MKMapItemMetadata
- (MKMapItemMetadata)initWithBusiness:(id)business;
- (NSMutableDictionary)imageCache;
- (id)description;
- (id)imageForURL:(id)l;
- (void)addImage:(id)image forURL:(id)l;
@end

@implementation MKMapItemMetadata

- (id)imageForURL:(id)l
{
  lCopy = l;
  imageCache = [(MKMapItemMetadata *)self imageCache];
  v6 = [imageCache objectForKey:lCopy];

  return v6;
}

- (void)addImage:(id)image forURL:(id)l
{
  if (image)
  {
    lCopy = l;
    imageCopy = image;
    imageCache = [(MKMapItemMetadata *)self imageCache];
    [imageCache setObject:imageCopy forKey:lCopy];
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

- (MKMapItemMetadata)initWithBusiness:(id)business
{
  businessCopy = business;
  v10.receiver = self;
  v10.super_class = MKMapItemMetadata;
  v6 = [(MKMapItemMetadata *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_business, business);
    v8 = v7;
  }

  return v7;
}

@end