@interface MapsUIImageCache
+ (id)sharedCache;
+ (id)sharedCarCache;
- (MapsUIImageCache)initWithCarPlay:(BOOL)a3;
- (MapsUIImageCacheUserInterfaceDelegate)userInterfaceDelegate;
- (UIImage)searchImage;
- (double)screenScale;
- (void)dealloc;
- (void)fetchImageForKey:(id)a3 completion:(id)a4;
- (void)getImageForAppIcon:(id)a3 format:(int)a4 completion:(id)a5;
- (void)getImageForCarSmallWidget:(id)a3 completion:(id)a4;
- (void)getImageForCategory:(id)a3 completion:(id)a4;
- (void)getImageForContact:(id)a3 style:(int64_t)a4 tintColor:(id)a5 size:(double)a6 completion:(id)a7;
- (void)getImageForInvertedStyleAttributes:(id)a3 completion:(id)a4;
- (void)getImageForInvertedSuggestion:(id)a3 completion:(id)a4;
- (void)getImageForMapItem:(id)a3 completion:(id)a4;
- (void)getImageForMarkerTransparent:(BOOL)a3 completion:(id)a4;
- (void)getImageForPublisherWithIconIdentifier:(unsigned int)a3 completion:(id)a4;
- (void)getImageForRowFavorite:(id)a3 inverted:(BOOL)a4 completion:(id)a5;
- (void)getImageForRowSuggestion:(id)a3 inverted:(BOOL)a4 completion:(id)a5;
- (void)getImageForSearchResult:(id)a3 completion:(id)a4;
- (void)getImageForSpec:(id)a3 completion:(id)a4;
- (void)getImageForSpec:(id)a3 loadImageOnBackgroundQueue:(BOOL)a4 completion:(id)a5;
- (void)getImageForStyleAttributes:(id)a3 completion:(id)a4;
- (void)getImageForSuggestion:(id)a3 completion:(id)a4;
- (void)getImageForTransparentStyleAttributes:(id)a3 completion:(id)a4;
- (void)handleMemoryWarning:(id)a3;
- (void)loadImageForKey:(id)a3 loadImageOnBackgroundQueue:(BOOL)a4 withBlock:(id)a5;
- (void)setImage:(id)a3 forKey:(id)a4;
@end

@implementation MapsUIImageCache

+ (id)sharedCache
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B484;
  block[3] = &unk_1016611D0;
  block[4] = a1;
  if (qword_10195E698 != -1)
  {
    dispatch_once(&qword_10195E698, block);
  }

  v2 = qword_10195E690;

  return v2;
}

- (double)screenScale
{
  if ([(MapsUIImageCache *)self isCarPlay])
  {
    v2 = +[CarDisplayController sharedInstance];
    v3 = [v2 screenTraitCollection];
    [v3 displayScale];
    v5 = v4;
  }

  else
  {
    v2 = +[MKSystemController sharedInstance];
    [v2 screenScale];
    v5 = v6;
  }

  return v5;
}

- (MapsUIImageCacheUserInterfaceDelegate)userInterfaceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_userInterfaceDelegate);

  return WeakRetained;
}

- (void)fetchImageForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100B14ECC;
    v19 = sub_100B14EDC;
    v20 = 0;
    lock = self->_lock;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100B14EE4;
    v11[3] = &unk_101638358;
    v14 = &v15;
    v11[4] = self;
    v12 = v6;
    v10 = v8;
    v13 = v10;
    dispatch_sync(lock, v11);
    if (v16[5])
    {
      v10[2](v10);
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)setImage:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = sub_100B14ECC;
    v22[4] = sub_100B14EDC;
    v23 = 0;
    lock = self->_lock;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B15194;
    block[3] = &unk_10165CFA8;
    v9 = v6;
    v18 = v9;
    v19 = self;
    v20 = v7;
    v21 = v22;
    dispatch_sync(lock, block);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100B15228;
    v14 = &unk_101661600;
    v16 = v22;
    v15 = v9;
    v10 = objc_retainBlock(&v11);
    if ([NSThread isMainThread:v11])
    {
      (v10[2])(v10);
    }

    else
    {
      dispatch_async(&_dispatch_main_q, v10);
    }

    _Block_object_dispose(v22, 8);
  }
}

- (void)loadImageForKey:(id)a3 loadImageOnBackgroundQueue:(BOOL)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8 && v9)
  {
    lock = self->_lock;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100B15420;
    v13[3] = &unk_101661068;
    v13[4] = self;
    v14 = v8;
    v16 = a4;
    v12 = v10;
    v15 = v12;
    dispatch_sync(lock, v13);
    if (!a4)
    {
      v12[2](v12);
    }
  }
}

- (void)getImageForSpec:(id)a3 loadImageOnBackgroundQueue:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_userInterfaceDelegate);
  [v8 setNightMode:{objc_msgSend(WeakRetained, "isNightMode")}];

  [v8 setIsRTL:MKApplicationLayoutDirectionIsRightToLeft()];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100B156C4;
  v18[3] = &unk_101661A90;
  v11 = v8;
  v19 = v11;
  v20 = self;
  [(MapsUIImageCache *)self loadImageForKey:v11 loadImageOnBackgroundQueue:v6 withBlock:v18];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100B15740;
  v14[3] = &unk_101638330;
  v15 = v11;
  v16 = self;
  v17 = v9;
  v12 = v9;
  v13 = v11;
  [(MapsUIImageCache *)self fetchImageForKey:v13 completion:v14];
}

- (void)getImageForSpec:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  [(MapsUIImageCache *)self getImageForSpec:v7 loadImageOnBackgroundQueue:(objc_opt_isKindOfClass() & 1) == 0 completion:v6];
}

- (void)getImageForAppIcon:(id)a3 format:(int)a4 completion:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v9 = a3;
  v10 = [[MapsUIImageAppIconSpec alloc] initWithBundleIdentifier:v9 format:v5];

  [(MapsUIImageCache *)self getImageForSpec:v10 completion:v8];
}

- (void)getImageForPublisherWithIconIdentifier:(unsigned int)a3 completion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [[MapsUIImagePublisherSpec alloc] initWithIconIdentifier:v4];
  [(MapsUIImageCache *)self getImageForSpec:v7 completion:v6];
}

- (void)getImageForRowFavorite:(id)a3 inverted:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [[MapsUIImageSuggestionSpec alloc] initWithFavorite:v9];

  [(MapsUIImageSuggestionSpec *)v10 setInverted:v5];
  [(MapsUIImageCache *)self getImageForSpec:v10 completion:v8];
}

- (void)getImageForRowSuggestion:(id)a3 inverted:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [[MapsUIImageSuggestionSpec alloc] initWithSuggestion:v9];

  [(MapsUIImageSuggestionSpec *)v10 setInverted:v5];
  [(MapsUIImageCache *)self getImageForSpec:v10 completion:v8];
}

- (void)getImageForCarSmallWidget:(id)a3 completion:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [[MapsUIImageSuggestionSpec alloc] initWithSuggestion:v6];

  v8 = [(MapsUIImageSuggestionSpec *)v7 suggestionType];
  if (v8 <= 0xC && ((1 << v8) & 0x1308) != 0)
  {
    [(MapsUIImageSuggestionSpec *)v7 setIsDashboardWidget:1];
  }

  [(MapsUIImageCache *)self getImageForSpec:v7 completion:v10];
}

- (void)getImageForInvertedSuggestion:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[MapsUIImageSuggestionSpec alloc] initWithSuggestion:v7];

  [(MapsUIImageSuggestionSpec *)v8 setInverted:1];
  [(MapsUIImageCache *)self getImageForSpec:v8 completion:v6];
}

- (void)getImageForSuggestion:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[MapsUIImageSuggestionSpec alloc] initWithSuggestion:v7];

  [(MapsUIImageCache *)self getImageForSpec:v8 completion:v6];
}

- (void)getImageForTransparentStyleAttributes:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setStyle:v7];

  [v8 setTransparent:1];
  [(MapsUIImageCache *)self getImageForSpec:v8 completion:v6];
}

- (void)getImageForStyleAttributes:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setStyle:v7];

  [(MapsUIImageCache *)self getImageForSpec:v8 completion:v6];
}

- (void)getImageForInvertedStyleAttributes:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setStyle:v7];

  [v8 setInverted:1];
  [(MapsUIImageCache *)self getImageForSpec:v8 completion:v6];
}

- (void)getImageForMarkerTransparent:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setTransparent:v4];
  [(MapsUIImageCache *)self getImageForSpec:v7 completion:v6];
}

- (void)getImageForContact:(id)a3 style:(int64_t)a4 tintColor:(id)a5 size:(double)a6 completion:(id)a7
{
  v15 = a3;
  v12 = a5;
  v13 = a7;
  if (v15)
  {
    v14 = objc_opt_new();
    [v14 setContact:v15];
    [v14 setStyle:a4];
    [v14 setTintColor:v12];
    if (a6 > 0.0)
    {
      [v14 setSize:a6];
    }

    [(MapsUIImageCache *)self getImageForSpec:v14 completion:v13];
  }

  else
  {
    v13[2](v13, 0);
  }
}

- (void)getImageForCategory:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = objc_opt_new();
  [v9 setMarkerFallback:0];
  v8 = [v7 styleAttributes];

  [v9 setStyle:v8];
  [(MapsUIImageCache *)self getImageForSpec:v9 completion:v6];
}

- (void)getImageForSearchResult:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = objc_opt_new();
  v8 = [GEOFeatureStyleAttributes styleAttributesForSearchResult:v7];

  [v9 setStyle:v8];
  [(MapsUIImageCache *)self getImageForSpec:v9 completion:v6];
}

- (void)getImageForMapItem:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = objc_opt_new();
  v8 = [v7 _styleAttributes];

  [v9 setStyle:v8];
  [(MapsUIImageCache *)self getImageForSpec:v9 completion:v6];
}

- (UIImage)searchImage
{
  searchImage = self->_searchImage;
  if (!searchImage)
  {
    if ([(MapsUIImageCache *)self isCarPlay])
    {
      [UIImage _mapsCar_systemImageNamed:@"magnifyingglass"];
    }

    else
    {
      [UIImage imageNamed:@"search"];
    }
    v4 = ;
    v5 = self->_searchImage;
    self->_searchImage = v4;

    searchImage = self->_searchImage;
  }

  return searchImage;
}

- (void)handleMemoryWarning:(id)a3
{
  lock = self->_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B162DC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(lock, block);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MapsUIImageCache;
  [(MapsUIImageCache *)&v4 dealloc];
}

- (MapsUIImageCache)initWithCarPlay:(BOOL)a3
{
  v20.receiver = self;
  v20.super_class = MapsUIImageCache;
  v4 = [(MapsUIImageCache *)&v20 init];
  v5 = v4;
  if (v4)
  {
    v4->_isCarPlay = a3;
    v6 = objc_alloc_init(NSCache);
    imageCache = v5->_imageCache;
    v5->_imageCache = v6;

    [(NSCache *)v5->_imageCache setCountLimit:25];
    v8 = objc_alloc_init(NSMutableSet);
    loadingKeys = v5->_loadingKeys;
    v5->_loadingKeys = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    fetchBlocks = v5->_fetchBlocks;
    v5->_fetchBlocks = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(v14, v15);
    lock = v5->_lock;
    v5->_lock = v16;

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v5 selector:"handleMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];
  }

  return v5;
}

+ (id)sharedCarCache
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B1656C;
  block[3] = &unk_1016611D0;
  block[4] = a1;
  if (qword_10195E6A8 != -1)
  {
    dispatch_once(&qword_10195E6A8, block);
  }

  v2 = qword_10195E6A0;

  return v2;
}

@end