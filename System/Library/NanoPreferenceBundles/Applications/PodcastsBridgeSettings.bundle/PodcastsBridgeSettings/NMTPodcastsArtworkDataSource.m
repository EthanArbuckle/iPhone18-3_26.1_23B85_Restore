@interface NMTPodcastsArtworkDataSource
+ (id)_backgroundColorFromCatalog:(id)a3;
+ (id)_keyFromCatalog:(id)a3;
+ (id)imageURLSharedDataSource;
+ (id)uuidSharedDataSource;
- (id)_cacheKeyForSize:(CGSize)a3 withBaseKey:(id)a4;
- (id)_initWithIsImageURLKey:(BOOL)a3;
- (id)existingArtworkEffectResultForEffectType:(int64_t)a3 catalog:(id)a4 options:(id)a5;
- (id)existingRepresentationForArtworkCatalog:(id)a3;
- (id)visualIdenticalityIdentifierForCatalog:(id)a3;
- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4;
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

- (id)_initWithIsImageURLKey:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NMTPodcastsArtworkDataSource;
  result = [(NMTPodcastsArtworkDataSource *)&v5 init];
  if (result)
  {
    *(result + 8) = a3;
  }

  return result;
}

- (id)existingRepresentationForArtworkCatalog:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _keyFromCatalog:v4];
  [v4 scaledFittingSize];
  v7 = v6;
  v9 = v8;
  v10 = [(NMTPodcastsArtworkDataSource *)self _cacheKeyForSize:v5 withBaseKey:?];
  v11 = [v4 cache];
  v12 = [v11 objectForKey:v10];

  if (v12)
  {
    v13 = v12;
    goto LABEL_14;
  }

  if (([v4 renderHint] & 8) != 0)
  {
    goto LABEL_13;
  }

  [v4 fittingSize];
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
    v25 = [v4 cache];
    [v25 setObject:v13 forKey:v10];

    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:

  return v13;
}

- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() _keyFromCatalog:v6];
  [v6 scaledFittingSize];
  v10 = v9;
  v12 = v11;
  [v6 fittingSize];
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
  v43 = self;
  v23 = v6;
  v44 = v23;
  v24 = v7;
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
    v37 = self;
    v28 = v22;
    v38 = v28;
    v40 = v24;
    v29 = objc_retainBlock(&v33);
    if (self->_isImageURLKey)
    {
      v30 = [_TtC18PodcastsFoundation22DownloadableURLOptions alloc];
      v31 = [v30 init:v28 nonAppInitiated:{0, v33, v34, v35, v36, v37, v38, v39}];
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

- (id)visualIdenticalityIdentifierForCatalog:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _keyFromCatalog:v3];

  v5 = [[PFStaticArtworkVisualIdenticality alloc] initWithArtworkIdentifier:v4];

  return v5;
}

- (id)existingArtworkEffectResultForEffectType:(int64_t)a3 catalog:(id)a4 options:(id)a5
{
  if (a3 == 1)
  {
    v5 = a4;
    v6 = [objc_opt_class() _backgroundColorFromCatalog:v5];

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

- (id)_cacheKeyForSize:(CGSize)a3 withBaseKey:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = v6;
  if (width == MPArtworkCatalogOriginalSize[0] && height == MPArtworkCatalogOriginalSize[1])
  {
    v9 = v6;
  }

  else
  {
    v9 = [NSString stringWithFormat:@"%@-{%f, %f}", v6, *&width, *&height];
  }

  v10 = v9;

  return v10;
}

+ (id)_keyFromCatalog:(id)a3
{
  v3 = [a3 token];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 key];
  }

  v5 = v4;

  return v5;
}

+ (id)_backgroundColorFromCatalog:(id)a3
{
  v3 = [a3 token];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (v4 = [v3 backgroundColor]) == 0)
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