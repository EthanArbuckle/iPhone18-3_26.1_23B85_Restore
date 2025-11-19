@interface AVTAssetResourceCache
- (AVTAssetResourceCache)init;
- (id)resourceForAsset:(id)a3;
- (void)releaseAsset:(id)a3;
@end

@implementation AVTAssetResourceCache

- (AVTAssetResourceCache)init
{
  v7.receiver = self;
  v7.super_class = AVTAssetResourceCache;
  v2 = [(AVTAssetResourceCache *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_policy = 0;
    v4 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:0];
    resources = v3->_resources;
    v3->_resources = v4;
  }

  return v3;
}

- (void)releaseAsset:(id)a3
{
  resources = self->_resources;
  v4 = a3;
  [(NSMapTable *)resources removeObjectForKey:v4];
  [v4 decrUseCount];
}

- (id)resourceForAsset:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_resources objectForKey:v4];
  if (!v5)
  {
    v5 = [v4 resourceByCachingIfNeeded:self->_policy != 1];
    [(NSMapTable *)self->_resources setObject:v5 forKey:v4];
  }

  return v5;
}

@end