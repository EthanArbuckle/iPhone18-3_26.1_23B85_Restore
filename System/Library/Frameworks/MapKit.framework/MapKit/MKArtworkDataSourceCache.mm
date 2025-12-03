@interface MKArtworkDataSourceCache
+ (MKArtworkDataSourceCache)sharedInstance;
- (MKArtworkDataSourceCache)initWithArtworkManager:(id)manager;
- (id)imageForArtwork:(id)artwork size:(int64_t)size featureType:(unint64_t)type scale:(double)scale nightMode:(BOOL)mode widthPaddingMultiple:(double)multiple;
- (id)imageForSizedArtwork:(id)artwork scale:(double)scale nightMode:(BOOL)mode;
- (void)purge;
@end

@implementation MKArtworkDataSourceCache

- (id)imageForArtwork:(id)artwork size:(int64_t)size featureType:(unint64_t)type scale:(double)scale nightMode:(BOOL)mode widthPaddingMultiple:(double)multiple
{
  modeCopy = mode;
  artworkCopy = artwork;
  shieldDataSource = [artworkCopy shieldDataSource];
  ShouldBeFlipped = ImageForShieldDataSourceTypeShouldBeFlipped([shieldDataSource shieldType]);

  v17 = MKKeyForTransitArtwork(artworkCopy, size, type, ShouldBeFlipped, modeCopy, multiple, scale);
  v18 = [(MKArtworkDataSourceCache *)self _lookupArtworkInCacheWithKey:v17];
  if (!v18)
  {
    artworkManager = [(MKArtworkDataSourceCache *)self artworkManager];
    v18 = [artworkManager transitArtworkImageWithDataSource:artworkCopy size:size featureType:type scale:modeCopy nightMode:scale withWidthPaddingMultiple:multiple];

    if (ShouldBeFlipped)
    {
      imageFlippedForRightToLeftLayoutDirection = [v18 imageFlippedForRightToLeftLayoutDirection];

      v18 = imageFlippedForRightToLeftLayoutDirection;
    }

    if (v18)
    {
      [(MKArtworkDataSourceCache *)self _setArtworkImageInCache:v18 forKey:v17];
    }
  }

  return v18;
}

- (id)imageForSizedArtwork:(id)artwork scale:(double)scale nightMode:(BOOL)mode
{
  modeCopy = mode;
  artworkCopy = artwork;
  artwork = [artworkCopy artwork];
  v10 = -[MKArtworkDataSourceCache imageForArtwork:size:featureType:scale:nightMode:](self, "imageForArtwork:size:featureType:scale:nightMode:", artwork, [artworkCopy shieldSize], 2, modeCopy, scale);

  if (!v10)
  {
    fallbackShieldSize = [artworkCopy fallbackShieldSize];
    if (fallbackShieldSize == [artworkCopy shieldSize])
    {
      v10 = 0;
    }

    else
    {
      artwork2 = [artworkCopy artwork];
      v10 = -[MKArtworkDataSourceCache imageForArtwork:size:featureType:scale:nightMode:](self, "imageForArtwork:size:featureType:scale:nightMode:", artwork2, [artworkCopy fallbackShieldSize], 2, modeCopy, scale);
    }
  }

  return v10;
}

- (void)purge
{
  artworkManager = [(MKArtworkDataSourceCache *)self artworkManager];
  [artworkManager purge];

  artworkImageCache = self->_artworkImageCache;

  [(NSCache *)artworkImageCache removeAllObjects];
}

- (MKArtworkDataSourceCache)initWithArtworkManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = MKArtworkDataSourceCache;
  v6 = [(MKArtworkDataSourceCache *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_artworkManager, manager);
    v8 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    artworkImageCache = v7->_artworkImageCache;
    v7->_artworkImageCache = v8;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__shieldPackDidUpdate name:*MEMORY[0x1E69A1970] object:0];
  }

  return v7;
}

+ (MKArtworkDataSourceCache)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MKArtworkDataSourceCache_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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