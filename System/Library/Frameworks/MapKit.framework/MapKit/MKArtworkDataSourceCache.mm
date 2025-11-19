@interface MKArtworkDataSourceCache
+ (MKArtworkDataSourceCache)sharedInstance;
- (MKArtworkDataSourceCache)initWithArtworkManager:(id)a3;
- (id)imageForArtwork:(id)a3 size:(int64_t)a4 featureType:(unint64_t)a5 scale:(double)a6 nightMode:(BOOL)a7 widthPaddingMultiple:(double)a8;
- (id)imageForSizedArtwork:(id)a3 scale:(double)a4 nightMode:(BOOL)a5;
- (void)purge;
@end

@implementation MKArtworkDataSourceCache

- (id)imageForArtwork:(id)a3 size:(int64_t)a4 featureType:(unint64_t)a5 scale:(double)a6 nightMode:(BOOL)a7 widthPaddingMultiple:(double)a8
{
  v9 = a7;
  v14 = a3;
  v15 = [v14 shieldDataSource];
  ShouldBeFlipped = ImageForShieldDataSourceTypeShouldBeFlipped([v15 shieldType]);

  v17 = MKKeyForTransitArtwork(v14, a4, a5, ShouldBeFlipped, v9, a8, a6);
  v18 = [(MKArtworkDataSourceCache *)self _lookupArtworkInCacheWithKey:v17];
  if (!v18)
  {
    v19 = [(MKArtworkDataSourceCache *)self artworkManager];
    v18 = [v19 transitArtworkImageWithDataSource:v14 size:a4 featureType:a5 scale:v9 nightMode:a6 withWidthPaddingMultiple:a8];

    if (ShouldBeFlipped)
    {
      v20 = [v18 imageFlippedForRightToLeftLayoutDirection];

      v18 = v20;
    }

    if (v18)
    {
      [(MKArtworkDataSourceCache *)self _setArtworkImageInCache:v18 forKey:v17];
    }
  }

  return v18;
}

- (id)imageForSizedArtwork:(id)a3 scale:(double)a4 nightMode:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [v8 artwork];
  v10 = -[MKArtworkDataSourceCache imageForArtwork:size:featureType:scale:nightMode:](self, "imageForArtwork:size:featureType:scale:nightMode:", v9, [v8 shieldSize], 2, v5, a4);

  if (!v10)
  {
    v11 = [v8 fallbackShieldSize];
    if (v11 == [v8 shieldSize])
    {
      v10 = 0;
    }

    else
    {
      v12 = [v8 artwork];
      v10 = -[MKArtworkDataSourceCache imageForArtwork:size:featureType:scale:nightMode:](self, "imageForArtwork:size:featureType:scale:nightMode:", v12, [v8 fallbackShieldSize], 2, v5, a4);
    }
  }

  return v10;
}

- (void)purge
{
  v3 = [(MKArtworkDataSourceCache *)self artworkManager];
  [v3 purge];

  artworkImageCache = self->_artworkImageCache;

  [(NSCache *)artworkImageCache removeAllObjects];
}

- (MKArtworkDataSourceCache)initWithArtworkManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MKArtworkDataSourceCache;
  v6 = [(MKArtworkDataSourceCache *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_artworkManager, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    artworkImageCache = v7->_artworkImageCache;
    v7->_artworkImageCache = v8;

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v7 selector:sel__shieldPackDidUpdate name:*MEMORY[0x1E69A1970] object:0];
  }

  return v7;
}

+ (MKArtworkDataSourceCache)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MKArtworkDataSourceCache_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_7628 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_7628, block);
  }

  v2 = sharedInstance__sharedInstance_7629;

  return v2;
}

void __42__MKArtworkDataSourceCache_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = +[MKTransitArtworkManager sharedInstance];
  v2 = [v1 initWithArtworkManager:v4];
  v3 = sharedInstance__sharedInstance_7629;
  sharedInstance__sharedInstance_7629 = v2;
}

@end