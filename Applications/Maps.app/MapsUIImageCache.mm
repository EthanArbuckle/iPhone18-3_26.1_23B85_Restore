@interface MapsUIImageCache
+ (id)sharedCache;
+ (id)sharedCarCache;
- (MapsUIImageCache)initWithCarPlay:(BOOL)play;
- (MapsUIImageCacheUserInterfaceDelegate)userInterfaceDelegate;
- (UIImage)searchImage;
- (double)screenScale;
- (void)dealloc;
- (void)fetchImageForKey:(id)key completion:(id)completion;
- (void)getImageForAppIcon:(id)icon format:(int)format completion:(id)completion;
- (void)getImageForCarSmallWidget:(id)widget completion:(id)completion;
- (void)getImageForCategory:(id)category completion:(id)completion;
- (void)getImageForContact:(id)contact style:(int64_t)style tintColor:(id)color size:(double)size completion:(id)completion;
- (void)getImageForInvertedStyleAttributes:(id)attributes completion:(id)completion;
- (void)getImageForInvertedSuggestion:(id)suggestion completion:(id)completion;
- (void)getImageForMapItem:(id)item completion:(id)completion;
- (void)getImageForMarkerTransparent:(BOOL)transparent completion:(id)completion;
- (void)getImageForPublisherWithIconIdentifier:(unsigned int)identifier completion:(id)completion;
- (void)getImageForRowFavorite:(id)favorite inverted:(BOOL)inverted completion:(id)completion;
- (void)getImageForRowSuggestion:(id)suggestion inverted:(BOOL)inverted completion:(id)completion;
- (void)getImageForSearchResult:(id)result completion:(id)completion;
- (void)getImageForSpec:(id)spec completion:(id)completion;
- (void)getImageForSpec:(id)spec loadImageOnBackgroundQueue:(BOOL)queue completion:(id)completion;
- (void)getImageForStyleAttributes:(id)attributes completion:(id)completion;
- (void)getImageForSuggestion:(id)suggestion completion:(id)completion;
- (void)getImageForTransparentStyleAttributes:(id)attributes completion:(id)completion;
- (void)handleMemoryWarning:(id)warning;
- (void)loadImageForKey:(id)key loadImageOnBackgroundQueue:(BOOL)queue withBlock:(id)block;
- (void)setImage:(id)image forKey:(id)key;
@end

@implementation MapsUIImageCache

+ (id)sharedCache
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B484;
  block[3] = &unk_1016611D0;
  block[4] = self;
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
    screenTraitCollection = [v2 screenTraitCollection];
    [screenTraitCollection displayScale];
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

- (void)fetchImageForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v8 = completionCopy;
  if (keyCopy)
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
    v12 = keyCopy;
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
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)setImage:(id)image forKey:(id)key
{
  imageCopy = image;
  keyCopy = key;
  if (keyCopy)
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
    v9 = imageCopy;
    v18 = v9;
    selfCopy = self;
    v20 = keyCopy;
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

- (void)loadImageForKey:(id)key loadImageOnBackgroundQueue:(BOOL)queue withBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v10 = blockCopy;
  if (keyCopy && blockCopy)
  {
    lock = self->_lock;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100B15420;
    v13[3] = &unk_101661068;
    v13[4] = self;
    v14 = keyCopy;
    queueCopy = queue;
    v12 = v10;
    v15 = v12;
    dispatch_sync(lock, v13);
    if (!queue)
    {
      v12[2](v12);
    }
  }
}

- (void)getImageForSpec:(id)spec loadImageOnBackgroundQueue:(BOOL)queue completion:(id)completion
{
  queueCopy = queue;
  specCopy = spec;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_userInterfaceDelegate);
  [specCopy setNightMode:{objc_msgSend(WeakRetained, "isNightMode")}];

  [specCopy setIsRTL:MKApplicationLayoutDirectionIsRightToLeft()];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100B156C4;
  v18[3] = &unk_101661A90;
  v11 = specCopy;
  v19 = v11;
  selfCopy = self;
  [(MapsUIImageCache *)self loadImageForKey:v11 loadImageOnBackgroundQueue:queueCopy withBlock:v18];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100B15740;
  v14[3] = &unk_101638330;
  v15 = v11;
  selfCopy2 = self;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = v11;
  [(MapsUIImageCache *)self fetchImageForKey:v13 completion:v14];
}

- (void)getImageForSpec:(id)spec completion:(id)completion
{
  completionCopy = completion;
  specCopy = spec;
  objc_opt_class();
  [(MapsUIImageCache *)self getImageForSpec:specCopy loadImageOnBackgroundQueue:(objc_opt_isKindOfClass() & 1) == 0 completion:completionCopy];
}

- (void)getImageForAppIcon:(id)icon format:(int)format completion:(id)completion
{
  v5 = *&format;
  completionCopy = completion;
  iconCopy = icon;
  v10 = [[MapsUIImageAppIconSpec alloc] initWithBundleIdentifier:iconCopy format:v5];

  [(MapsUIImageCache *)self getImageForSpec:v10 completion:completionCopy];
}

- (void)getImageForPublisherWithIconIdentifier:(unsigned int)identifier completion:(id)completion
{
  v4 = *&identifier;
  completionCopy = completion;
  v7 = [[MapsUIImagePublisherSpec alloc] initWithIconIdentifier:v4];
  [(MapsUIImageCache *)self getImageForSpec:v7 completion:completionCopy];
}

- (void)getImageForRowFavorite:(id)favorite inverted:(BOOL)inverted completion:(id)completion
{
  invertedCopy = inverted;
  completionCopy = completion;
  favoriteCopy = favorite;
  v10 = [[MapsUIImageSuggestionSpec alloc] initWithFavorite:favoriteCopy];

  [(MapsUIImageSuggestionSpec *)v10 setInverted:invertedCopy];
  [(MapsUIImageCache *)self getImageForSpec:v10 completion:completionCopy];
}

- (void)getImageForRowSuggestion:(id)suggestion inverted:(BOOL)inverted completion:(id)completion
{
  invertedCopy = inverted;
  completionCopy = completion;
  suggestionCopy = suggestion;
  v10 = [[MapsUIImageSuggestionSpec alloc] initWithSuggestion:suggestionCopy];

  [(MapsUIImageSuggestionSpec *)v10 setInverted:invertedCopy];
  [(MapsUIImageCache *)self getImageForSpec:v10 completion:completionCopy];
}

- (void)getImageForCarSmallWidget:(id)widget completion:(id)completion
{
  completionCopy = completion;
  widgetCopy = widget;
  v7 = [[MapsUIImageSuggestionSpec alloc] initWithSuggestion:widgetCopy];

  suggestionType = [(MapsUIImageSuggestionSpec *)v7 suggestionType];
  if (suggestionType <= 0xC && ((1 << suggestionType) & 0x1308) != 0)
  {
    [(MapsUIImageSuggestionSpec *)v7 setIsDashboardWidget:1];
  }

  [(MapsUIImageCache *)self getImageForSpec:v7 completion:completionCopy];
}

- (void)getImageForInvertedSuggestion:(id)suggestion completion:(id)completion
{
  completionCopy = completion;
  suggestionCopy = suggestion;
  v8 = [[MapsUIImageSuggestionSpec alloc] initWithSuggestion:suggestionCopy];

  [(MapsUIImageSuggestionSpec *)v8 setInverted:1];
  [(MapsUIImageCache *)self getImageForSpec:v8 completion:completionCopy];
}

- (void)getImageForSuggestion:(id)suggestion completion:(id)completion
{
  completionCopy = completion;
  suggestionCopy = suggestion;
  v8 = [[MapsUIImageSuggestionSpec alloc] initWithSuggestion:suggestionCopy];

  [(MapsUIImageCache *)self getImageForSpec:v8 completion:completionCopy];
}

- (void)getImageForTransparentStyleAttributes:(id)attributes completion:(id)completion
{
  completionCopy = completion;
  attributesCopy = attributes;
  v8 = objc_opt_new();
  [v8 setStyle:attributesCopy];

  [v8 setTransparent:1];
  [(MapsUIImageCache *)self getImageForSpec:v8 completion:completionCopy];
}

- (void)getImageForStyleAttributes:(id)attributes completion:(id)completion
{
  completionCopy = completion;
  attributesCopy = attributes;
  v8 = objc_opt_new();
  [v8 setStyle:attributesCopy];

  [(MapsUIImageCache *)self getImageForSpec:v8 completion:completionCopy];
}

- (void)getImageForInvertedStyleAttributes:(id)attributes completion:(id)completion
{
  completionCopy = completion;
  attributesCopy = attributes;
  v8 = objc_opt_new();
  [v8 setStyle:attributesCopy];

  [v8 setInverted:1];
  [(MapsUIImageCache *)self getImageForSpec:v8 completion:completionCopy];
}

- (void)getImageForMarkerTransparent:(BOOL)transparent completion:(id)completion
{
  transparentCopy = transparent;
  completionCopy = completion;
  v7 = objc_opt_new();
  [v7 setTransparent:transparentCopy];
  [(MapsUIImageCache *)self getImageForSpec:v7 completion:completionCopy];
}

- (void)getImageForContact:(id)contact style:(int64_t)style tintColor:(id)color size:(double)size completion:(id)completion
{
  contactCopy = contact;
  colorCopy = color;
  completionCopy = completion;
  if (contactCopy)
  {
    v14 = objc_opt_new();
    [v14 setContact:contactCopy];
    [v14 setStyle:style];
    [v14 setTintColor:colorCopy];
    if (size > 0.0)
    {
      [v14 setSize:size];
    }

    [(MapsUIImageCache *)self getImageForSpec:v14 completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)getImageForCategory:(id)category completion:(id)completion
{
  completionCopy = completion;
  categoryCopy = category;
  v9 = objc_opt_new();
  [v9 setMarkerFallback:0];
  styleAttributes = [categoryCopy styleAttributes];

  [v9 setStyle:styleAttributes];
  [(MapsUIImageCache *)self getImageForSpec:v9 completion:completionCopy];
}

- (void)getImageForSearchResult:(id)result completion:(id)completion
{
  completionCopy = completion;
  resultCopy = result;
  v9 = objc_opt_new();
  v8 = [GEOFeatureStyleAttributes styleAttributesForSearchResult:resultCopy];

  [v9 setStyle:v8];
  [(MapsUIImageCache *)self getImageForSpec:v9 completion:completionCopy];
}

- (void)getImageForMapItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  v9 = objc_opt_new();
  _styleAttributes = [itemCopy _styleAttributes];

  [v9 setStyle:_styleAttributes];
  [(MapsUIImageCache *)self getImageForSpec:v9 completion:completionCopy];
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

- (void)handleMemoryWarning:(id)warning
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

- (MapsUIImageCache)initWithCarPlay:(BOOL)play
{
  v20.receiver = self;
  v20.super_class = MapsUIImageCache;
  v4 = [(MapsUIImageCache *)&v20 init];
  v5 = v4;
  if (v4)
  {
    v4->_isCarPlay = play;
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
    uTF8String = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(uTF8String, v15);
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
  block[4] = self;
  if (qword_10195E6A8 != -1)
  {
    dispatch_once(&qword_10195E6A8, block);
  }

  v2 = qword_10195E6A0;

  return v2;
}

@end