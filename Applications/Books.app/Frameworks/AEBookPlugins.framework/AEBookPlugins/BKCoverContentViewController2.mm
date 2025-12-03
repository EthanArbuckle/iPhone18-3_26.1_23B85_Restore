@interface BKCoverContentViewController2
- (BKCoverContentViewController2)init;
- (BOOL)contentNeedsFilter;
- (CGRect)cachedRectForAnnotation:(id)annotation;
- (CGRect)cachedVisibleRectForAnnotation:(id)annotation;
- (id)_getURLToLoad;
- (id)currentLocation;
- (void)_forceWebContentBackgroundColor;
- (void)loadViewUIImage;
- (void)navigationHandler:(id)handler didFinishLoadOfURL:(id)l;
- (void)releaseViews;
- (void)setActivityIndicatorVisible:(BOOL)visible animated:(BOOL)animated afterDelay:(double)delay;
- (void)setCoverImage:(id)image isUndesirable:(BOOL)undesirable;
- (void)setTheme:(id)theme;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BKCoverContentViewController2

- (BKCoverContentViewController2)init
{
  v10.receiver = self;
  v10.super_class = BKCoverContentViewController2;
  v2 = [(BKContentViewController *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->super._ordinal = [(BKCoverContentViewController2 *)v2 ordinal];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.iBooks.BKContentCoverViewController2", v4);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v5;

    v7 = +[UITraitCollection bc_allAPITraits];
    v8 = [(BKCoverContentViewController2 *)v3 registerForTraitChanges:v7 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v3;
}

- (void)releaseViews
{
  coverWebView = self->_coverWebView;
  self->_coverWebView = 0;

  [(BKCoverContentViewController2 *)self setCoverImage:0];
  [(BKCoverContentViewController2 *)self setActivityIndicator:0];
  v4.receiver = self;
  v4.super_class = BKCoverContentViewController2;
  [(BKContentViewController *)&v4 releaseViews];
}

- (BOOL)contentNeedsFilter
{
  coverImage = [(BKCoverContentViewController2 *)self coverImage];

  return coverImage == 0;
}

- (id)currentLocation
{
  v2 = [[BKLocation alloc] initWithOrdinal:-101];

  return v2;
}

- (CGRect)cachedRectForAnnotation:(id)annotation
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cachedVisibleRectForAnnotation:(id)annotation
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setCoverImage:(id)image isUndesirable:(BOOL)undesirable
{
  undesirableCopy = undesirable;
  imageCopy = image;
  if (!imageCopy)
  {
    configuration = [(BKContentViewController *)self configuration];
    [configuration layoutSize];

    book = [(BKContentViewController *)self book];
    pageProgressionDirection = [book pageProgressionDirection];
    [pageProgressionDirection isEqualToString:AEHelperStringMetadataPageProgressionRightToLeftValue];

    bookLanguage = [book bookLanguage];
    coverWritingModeString = [book coverWritingModeString];
    [coverWritingModeString imIsVerticalWritingMode];
    BKGenericBookCoverLayoutFromLanguageAndVerticality();

    v14 = +[UIScreen mainScreen];
    [v14 scale];

    CGSizeScale();
    genericCoverTemplate = [book genericCoverTemplate];
    v16 = BKGenericBookCoverTemplateNameValid();

    shortBookTitle = [book shortBookTitle];
    bookAuthor = [book bookAuthor];
    if (v16)
    {
      genericCoverTemplate2 = [book genericCoverTemplate];
      ImageWithTemplate = BKGenericBookCoverCreateImageWithTemplate();
    }

    else
    {
      genericCoverTemplate2 = [book databaseKey];
      ImageWithTemplate = BKGenericBookCoverCreateImageWithItemIDAndLayout();
    }

    v21 = ImageWithTemplate;

    if (v21)
    {
      v26 = [UIImage imageWithCGImage:v21];
      CFRelease(v21);
      if (!undesirableCopy)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v26 = 0;
      if (!undesirableCopy)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    book2 = [(BKContentViewController *)self book];
    embeddedArtHrefRejected = [book2 embeddedArtHrefRejected];

    if (!embeddedArtHrefRejected)
    {
      book3 = [(BKContentViewController *)self book];
      [book3 setEmbeddedArtHrefRejected:&__kCFBooleanTrue];
    }

    goto LABEL_13;
  }

  v26 = imageCopy;
  book4 = [(BKContentViewController *)self book];
  embeddedArtHrefRejected2 = [book4 embeddedArtHrefRejected];

  if (embeddedArtHrefRejected2)
  {
    goto LABEL_15;
  }

  book = [(BKContentViewController *)self book];
  [book setEmbeddedArtHrefRejected:&__kCFBooleanFalse];
LABEL_14:

LABEL_15:
  coverImage = [(BKCoverContentViewController2 *)self coverImage];
  [coverImage setImage:v26];

  [(BKContentViewController *)self contentReady];
}

- (void)loadViewUIImage
{
  coverImage = [(BKCoverContentViewController2 *)self coverImage];

  if (!coverImage)
  {
    v4 = [UIImageView alloc];
    view = [(BKCoverContentViewController2 *)self view];
    [view bounds];
    v6 = [v4 initWithFrame:?];
    [(BKCoverContentViewController2 *)self setCoverImage:v6];
  }

  v7 = +[UIColor clearColor];
  coverImage2 = [(BKCoverContentViewController2 *)self coverImage];
  [coverImage2 setBackgroundColor:v7];

  coverImage3 = [(BKCoverContentViewController2 *)self coverImage];
  [coverImage3 setOpaque:0];

  coverImage4 = [(BKCoverContentViewController2 *)self coverImage];
  [coverImage4 setContentMode:1];

  coverImage5 = [(BKCoverContentViewController2 *)self coverImage];
  [coverImage5 setAutoresizingMask:18];

  view2 = [(BKCoverContentViewController2 *)self view];
  coverImage6 = [(BKCoverContentViewController2 *)self coverImage];
  [view2 addSubview:coverImage6];

  _getURLToLoad = [(BKCoverContentViewController2 *)self _getURLToLoad];
  objc_initWeak(&location, self);
  dispatchQueue = self->_dispatchQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_38F3C;
  v17[3] = &unk_1E37F8;
  objc_copyWeak(&v20, &location);
  v18 = _getURLToLoad;
  selfCopy = self;
  v16 = _getURLToLoad;
  dispatch_async(dispatchQueue, v17);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (id)_getURLToLoad
{
  book = [(BKContentViewController *)self book];
  embeddedArtHrefMinusSubpath = [book embeddedArtHrefMinusSubpath];

  book2 = [(BKContentViewController *)self book];
  baseURL = [book2 baseURL];

  v7 = 0;
  if (embeddedArtHrefMinusSubpath && baseURL)
  {
    v8 = [NSURL URLWithString:embeddedArtHrefMinusSubpath relativeToURL:baseURL];
    v7 = BEURLHandleriBooksImgUrlFromiBooksURL();
  }

  return v7;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(BKCoverContentViewController2 *)self setActivityIndicatorVisible:0 animated:disappear afterDelay:0.0];
  v5.receiver = self;
  v5.super_class = BKCoverContentViewController2;
  [(BKContentViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewDidLoad
{
  v58.receiver = self;
  v58.super_class = BKCoverContentViewController2;
  [(BKContentViewController *)&v58 viewDidLoad];
  _getURLToLoad = [(BKCoverContentViewController2 *)self _getURLToLoad];
  v4 = [BKActivityIndicatorOverlayView alloc];
  theme = [(BKCoverContentViewController2 *)self theme];
  contentTextColor = [theme contentTextColor];
  v7 = [contentTextColor colorWithAlphaComponent:0.7];
  theme2 = [(BKCoverContentViewController2 *)self theme];
  v9 = [theme2 backgroundColorForTraitEnvironment:self];
  v10 = [(BKActivityIndicatorOverlayView *)v4 initWithBackgroundColor:v7 foregroundColor:v9];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v10;

  if (_getURLToLoad && !BEDoesURLPointToAnImageFile())
  {
    configuration = [(BKContentViewController *)self configuration];
    [configuration layoutSize];
    v14 = v13;

    book = [(BKContentViewController *)self book];
    v16 = [BEWebViewFactoryPaginationOptions alloc];
    obeyPageBreaks = [book obeyPageBreaks];
    configuration2 = [(BKContentViewController *)self configuration];
    [configuration2 gutterWidth];
    v55 = [v16 initWithMode:0 usePaginationLineGrid:0 respectPageBreaks:obeyPageBreaks isHorizontalScroll:0 contentLayoutSize:objc_msgSend(book gapBetweenPages:"shouldAllowRemoteInspection") viewportWidth:CGSizeZero.width fixedLayoutSize:CGSizeZero.height pageLength:v19 fontSize:v14 developerExtrasEnabled:{CGSizeZero.width, CGSizeZero.height, v14, 0.0}];

    v20 = [BECFIUtilitiesJSOptions alloc];
    v56 = book;
    assetID = [book assetID];
    ordinal = [(BKCoverContentViewController2 *)self ordinal];
    spineIndexInPackage = [book spineIndexInPackage];
    v54 = [v20 initWithManifestId:0 assetId:assetID chapterIndex:ordinal spineIndex:{objc_msgSend(spineIndexInPackage, "unsignedIntegerValue")}];

    view = [(BKCoverContentViewController2 *)self view];
    [view bounds];
    v26 = v25;
    view2 = [(BKCoverContentViewController2 *)self view];
    [view2 bounds];
    v29 = v28;
    book2 = [(BKContentViewController *)self book];
    assetID2 = [book2 assetID];
    book3 = [(BKContentViewController *)self book];
    [book3 cacheItem];
    v33 = v57 = _getURLToLoad;
    v34 = [BEWebViewFactory viewConfiguredForCoverContent:assetID2 bookID:v33 protocolCacheItem:v55 paginationOptions:v54 cfiOptions:0.0, 0.0, v26, v29];
    coverWebView = self->_coverWebView;
    self->_coverWebView = v34;

    be_navigationHandler = [(WKWebView *)self->_coverWebView be_navigationHandler];
    [be_navigationHandler setDelegate:self];

    [(WKWebView *)self->_coverWebView setTranslatesAutoresizingMaskIntoConstraints:0];
    view3 = [(BKCoverContentViewController2 *)self view];
    [view3 addSubview:self->_coverWebView];
    leftAnchor = [(WKWebView *)self->_coverWebView leftAnchor];
    leftAnchor2 = [view3 leftAnchor];
    v51 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v59[0] = v51;
    rightAnchor = [(WKWebView *)self->_coverWebView rightAnchor];
    rightAnchor2 = [view3 rightAnchor];
    v48 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v59[1] = v48;
    topAnchor = [(WKWebView *)self->_coverWebView topAnchor];
    topAnchor2 = [view3 topAnchor];
    v40 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v59[2] = v40;
    bottomAnchor = [(WKWebView *)self->_coverWebView bottomAnchor];
    bottomAnchor2 = [view3 bottomAnchor];
    v43 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v59[3] = v43;
    v44 = [NSArray arrayWithObjects:v59 count:4];
    [NSLayoutConstraint activateConstraints:v44];

    _getURLToLoad = v57;
    v45 = self->_coverWebView;
    v46 = [NSURLRequest requestWithURL:v57];
    v47 = [(WKWebView *)v45 loadRequest:v46];
  }

  else
  {
    [(BKCoverContentViewController2 *)self loadViewUIImage];
  }
}

- (void)_forceWebContentBackgroundColor
{
  themePage = [(BKCoverContentViewController2 *)self themePage];
  view = [(BKCoverContentViewController2 *)self view];
  v5 = [themePage backgroundColorForTraitEnvironment:view];
  bc_rgbaHexValue = [v5 bc_rgbaHexValue];

  v6 = [NSString stringWithFormat:@"document.body.style.backgroundColor = #%@", bc_rgbaHexValue];
  coverWebView = [(BKCoverContentViewController2 *)self coverWebView];
  [coverWebView evaluateJavaScript:v6 completionHandler:0];
}

- (void)setTheme:(id)theme
{
  v4.receiver = self;
  v4.super_class = BKCoverContentViewController2;
  [(BKContentViewController *)&v4 setTheme:theme];
  [(BKCoverContentViewController2 *)self _forceWebContentBackgroundColor];
}

- (void)setActivityIndicatorVisible:(BOOL)visible animated:(BOOL)animated afterDelay:(double)delay
{
  animatedCopy = animated;
  activityIndicator = self->_activityIndicator;
  if (visible)
  {
    view = [(BKCoverContentViewController2 *)self view];
    [(BKActivityIndicatorOverlayView *)activityIndicator showIndicatorCenteredInView:view animated:animatedCopy animationDelay:delay];
  }

  else
  {
    v8 = self->_activityIndicator;

    [(BKActivityIndicatorOverlayView *)v8 hideIndicatorAnimated:animated animationDelay:?];
  }
}

- (void)navigationHandler:(id)handler didFinishLoadOfURL:(id)l
{
  [(BKCoverContentViewController2 *)self stopActivityIndicator:1, l];

  [(BKCoverContentViewController2 *)self _forceWebContentBackgroundColor];
}

@end