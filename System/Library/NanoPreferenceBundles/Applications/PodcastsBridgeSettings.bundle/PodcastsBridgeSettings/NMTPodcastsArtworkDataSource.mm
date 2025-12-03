@interface NMTPodcastsArtworkDataSource
+ (id)_backgroundColorFromCatalog:(id)catalog;
+ (id)_keyFromCatalog:(id)catalog;
+ (id)imageURLSharedDataSource;
+ (id)uuidSharedDataSource;
- (id)_cacheKeyForSize:(CGSize)size withBaseKey:(id)key;
- (id)_initWithIsImageURLKey:(BOOL)key;
- (id)existingArtworkEffectResultForEffectType:(int64_t)type catalog:(id)catalog options:(id)options;
- (id)existingRepresentationForArtworkCatalog:(id)catalog;
- (id)visualIdenticalityIdentifierForCatalog:(id)catalog;
- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler;
@end

@implementation NMTPodcastsArtworkDataSource

+ (id)uuidSharedDataSource
{
  if (qword_22F88 != -1)
  {
    sub_FC70();
  }

  v3 = qword_22F80;

  return v3;
}

+ (id)imageURLSharedDataSource
{
  if (qword_22F98 != -1)
  {
    sub_FC84();
  }

  v3 = qword_22F90;

  return v3;
}

- (id)_initWithIsImageURLKey:(BOOL)key
{
  v5.receiver = self;
  v5.super_class = NMTPodcastsArtworkDataSource;
  result = [(NMTPodcastsArtworkDataSource *)&v5 init];
  if (result)
  {
    *(result + 8) = key;
  }

  return result;
}

- (id)existingRepresentationForArtworkCatalog:(id)catalog
{
  catalogCopy = catalog;
  v5 = [objc_opt_class() _keyFromCatalog:catalogCopy];
  [catalogCopy scaledFittingSize];
  v7 = v6;
  v9 = v8;
  v10 = [(NMTPodcastsArtworkDataSource *)self _cacheKeyForSize:v5 withBaseKey:?];
  cache = [catalogCopy cache];
  v12 = [cache objectForKey:v10];

  if (v12)
  {
    v13 = v12;
    goto LABEL_14;
  }

  if (([catalogCopy renderHint] & 8) != 0)
  {
    goto LABEL_13;
  }

  [catalogCopy fittingSize];
  v15 = v14;
  v17 = v16;
  if (v7 == MPArtworkCatalogOriginalSize[0] && v9 == MPArtworkCatalogOriginalSize[1])
  {
    v21 = +[MTImageStore defaultStore];
    v22 = [v21 imageForKey:v5];
  }

  else
  {
    v19 = +[MTImageStore defaultStore];
    v20 = [v19 hasItemForKey:v5 size:{v15, v17}];

    if (!v20)
    {
      goto LABEL_13;
    }

    v21 = +[MTImageStore defaultStore];
    v22 = [v21 imageForKey:v5 size:{v15, v17}];
  }

  v23 = v22;

  if (v23)
  {
    v24 = [[PFStaticArtworkVisualIdenticality alloc] initWithArtworkIdentifier:v10];
    v13 = [MPArtworkRepresentation representationForVisualIdentity:v24 withSize:v23 image:v7, v9];
    cache2 = [catalogCopy cache];
    [cache2 setObject:v13 forKey:v10];

    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:

  return v13;
}

- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler
{
  catalogCopy = catalog;
  handlerCopy = handler;
  v8 = [objc_opt_class() _keyFromCatalog:catalogCopy];
  [catalogCopy scaledFittingSize];
  v10 = v9;
  v12 = v11;
  [catalogCopy fittingSize];
  v14 = v13;
  v16 = v15;
  if (self->_isImageURLKey)
  {
    v17 = +[UIScreen mainScreen];
    [v17 scale];
    v19 = (v12 * v18);

    v20 = +[MTResizedArtworkURLProvider sharedInstance];
    v21 = [v20 resizedArtworkURLString:v8 withDimension:v19];

    v8 = v21;
  }

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_2408;
  v41[3] = &unk_1C818;
  v22 = v8;
  v46 = v14;
  v47 = v16;
  v48 = v10;
  v49 = v12;
  v42 = v22;
  selfCopy = self;
  v23 = catalogCopy;
  v44 = v23;
  v24 = handlerCopy;
  v45 = v24;
  v25 = objc_retainBlock(v41);
  v26 = +[MTImageStore defaultStore];
  v27 = [v26 hasItemForKey:v22];

  if (v27)
  {
    (v25[2])(v25);
  }

  else
  {
    v33 = _NSConcreteStackBlock;
    v34 = 3221225472;
    v35 = sub_26C8;
    v36 = &unk_1C840;
    v39 = v25;
    selfCopy2 = self;
    v28 = v22;
    v38 = v28;
    v40 = v24;
    v29 = objc_retainBlock(&v33);
    if (self->_isImageURLKey)
    {
      v30 = [_TtC18PodcastsFoundation22DownloadableURLOptions alloc];
      v31 = [v30 init:v28 nonAppInitiated:{0, v33, v34, v35, v36, selfCopy2, v38, v39}];
      v32 = +[MTImageDownloader sharedInstance];
      [v32 downloadImageUrl:v31 cacheKey:v28 userInitiated:1 callback:v29];
    }

    else
    {
      v31 = [MTImageDownloader sharedInstance:v33];
      [v31 downloadImageForPodcastUuid:v28 userInitiated:1 backgroundFetch:0 callback:v29];
    }
  }
}

- (id)visualIdenticalityIdentifierForCatalog:(id)catalog
{
  catalogCopy = catalog;
  v4 = [objc_opt_class() _keyFromCatalog:catalogCopy];

  v5 = [[PFStaticArtworkVisualIdenticality alloc] initWithArtworkIdentifier:v4];

  return v5;
}

- (id)existingArtworkEffectResultForEffectType:(int64_t)type catalog:(id)catalog options:(id)options
{
  if (type == 1)
  {
    catalogCopy = catalog;
    v6 = [objc_opt_class() _backgroundColorFromCatalog:catalogCopy];

    if (v6)
    {
      v7 = objc_alloc_init(MPMutableArtworkColorAnalysis);
      [v7 setBackgroundColor:v6];
      v8 = [v7 copy];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_cacheKeyForSize:(CGSize)size withBaseKey:(id)key
{
  height = size.height;
  width = size.width;
  keyCopy = key;
  v7 = keyCopy;
  if (width == MPArtworkCatalogOriginalSize[0] && height == MPArtworkCatalogOriginalSize[1])
  {
    v9 = keyCopy;
  }

  else
  {
    v9 = [NSString stringWithFormat:@"%@-{%f, %f}", keyCopy, *&width, *&height];
  }

  v10 = v9;

  return v10;
}

+ (id)_keyFromCatalog:(id)catalog
{
  token = [catalog token];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = token;
  }

  else
  {
    v4 = [token key];
  }

  v5 = v4;

  return v5;
}

+ (id)_backgroundColorFromCatalog:(id)catalog
{
  token = [catalog token];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (v4 = [token backgroundColor]) == 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [UIColor colorWithCGColor:v4];
  }

  return v5;
}

@end