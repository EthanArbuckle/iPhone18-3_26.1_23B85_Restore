@interface _MKMapItemAttributionProviderLogoImageCache
+ (id)sharedInstance;
- (_MKMapItemAttributionProviderLogoImageCache)init;
- (void)setImage:(id)image forKey:(id)key;
@end

@implementation _MKMapItemAttributionProviderLogoImageCache

- (void)setImage:(id)image forKey:(id)key
{
  if (image)
  {
    [(NSCache *)self->_cache setObject:image forKey:key];
  }
}

- (_MKMapItemAttributionProviderLogoImageCache)init
{
  v6.receiver = self;
  v6.super_class = _MKMapItemAttributionProviderLogoImageCache;
  v2 = [(_MKMapItemAttributionProviderLogoImageCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___MKMapItemAttributionProviderLogoImageCache_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

@end