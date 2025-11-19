@interface BKCoverContentViewController2
- (BKCoverContentViewController2)init;
- (BOOL)contentNeedsFilter;
- (CGRect)cachedRectForAnnotation:(id)a3;
- (CGRect)cachedVisibleRectForAnnotation:(id)a3;
- (id)_getURLToLoad;
- (id)currentLocation;
- (void)_forceWebContentBackgroundColor;
- (void)loadViewUIImage;
- (void)navigationHandler:(id)a3 didFinishLoadOfURL:(id)a4;
- (void)releaseViews;
- (void)setActivityIndicatorVisible:(BOOL)a3 animated:(BOOL)a4 afterDelay:(double)a5;
- (void)setCoverImage:(id)a3 isUndesirable:(BOOL)a4;
- (void)setTheme:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
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
  v2 = [(BKCoverContentViewController2 *)self coverImage];

  return v2 == 0;
}

- (id)currentLocation
{
  v2 = [[BKLocation alloc] initWithOrdinal:-101];

  return v2;
}

- (CGRect)cachedRectForAnnotation:(id)a3
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

- (CGRect)cachedVisibleRectForAnnotation:(id)a3
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

- (void)setCoverImage:(id)a3 isUndesirable:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    v10 = [(BKContentViewController *)self configuration];
    [v10 layoutSize];

    v9 = [(BKContentViewController *)self book];
    v11 = [v9 pageProgressionDirection];
    [v11 isEqualToString:AEHelperStringMetadataPageProgressionRightToLeftValue];

    v12 = [v9 bookLanguage];
    v13 = [v9 coverWritingModeString];
    [v13 imIsVerticalWritingMode];
    BKGenericBookCoverLayoutFromLanguageAndVerticality();

    v14 = +[UIScreen mainScreen];
    [v14 scale];

    CGSizeScale();
    v15 = [v9 genericCoverTemplate];
    v16 = BKGenericBookCoverTemplateNameValid();

    v17 = [v9 shortBookTitle];
    v18 = [v9 bookAuthor];
    if (v16)
    {
      v19 = [v9 genericCoverTemplate];
      ImageWithTemplate = BKGenericBookCoverCreateImageWithTemplate();
    }

    else
    {
      v19 = [v9 databaseKey];
      ImageWithTemplate = BKGenericBookCoverCreateImageWithItemIDAndLayout();
    }

    v21 = ImageWithTemplate;

    if (v21)
    {
      v26 = [UIImage imageWithCGImage:v21];
      CFRelease(v21);
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v26 = 0;
      if (!v4)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    v22 = [(BKContentViewController *)self book];
    v23 = [v22 embeddedArtHrefRejected];

    if (!v23)
    {
      v24 = [(BKContentViewController *)self book];
      [v24 setEmbeddedArtHrefRejected:&__kCFBooleanTrue];
    }

    goto LABEL_13;
  }

  v26 = v6;
  v7 = [(BKContentViewController *)self book];
  v8 = [v7 embeddedArtHrefRejected];

  if (v8)
  {
    goto LABEL_15;
  }

  v9 = [(BKContentViewController *)self book];
  [v9 setEmbeddedArtHrefRejected:&__kCFBooleanFalse];
LABEL_14:

LABEL_15:
  v25 = [(BKCoverContentViewController2 *)self coverImage];
  [v25 setImage:v26];

  [(BKContentViewController *)self contentReady];
}

- (void)loadViewUIImage
{
  v3 = [(BKCoverContentViewController2 *)self coverImage];

  if (!v3)
  {
    v4 = [UIImageView alloc];
    v5 = [(BKCoverContentViewController2 *)self view];
    [v5 bounds];
    v6 = [v4 initWithFrame:?];
    [(BKCoverContentViewController2 *)self setCoverImage:v6];
  }

  v7 = +[UIColor clearColor];
  v8 = [(BKCoverContentViewController2 *)self coverImage];
  [v8 setBackgroundColor:v7];

  v9 = [(BKCoverContentViewController2 *)self coverImage];
  [v9 setOpaque:0];

  v10 = [(BKCoverContentViewController2 *)self coverImage];
  [v10 setContentMode:1];

  v11 = [(BKCoverContentViewController2 *)self coverImage];
  [v11 setAutoresizingMask:18];

  v12 = [(BKCoverContentViewController2 *)self view];
  v13 = [(BKCoverContentViewController2 *)self coverImage];
  [v12 addSubview:v13];

  v14 = [(BKCoverContentViewController2 *)self _getURLToLoad];
  objc_initWeak(&location, self);
  dispatchQueue = self->_dispatchQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_38F3C;
  v17[3] = &unk_1E37F8;
  objc_copyWeak(&v20, &location);
  v18 = v14;
  v19 = self;
  v16 = v14;
  dispatch_async(dispatchQueue, v17);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (id)_getURLToLoad
{
  v3 = [(BKContentViewController *)self book];
  v4 = [v3 embeddedArtHrefMinusSubpath];

  v5 = [(BKContentViewController *)self book];
  v6 = [v5 baseURL];

  v7 = 0;
  if (v4 && v6)
  {
    v8 = [NSURL URLWithString:v4 relativeToURL:v6];
    v7 = BEURLHandleriBooksImgUrlFromiBooksURL();
  }

  return v7;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(BKCoverContentViewController2 *)self setActivityIndicatorVisible:0 animated:a3 afterDelay:0.0];
  v5.receiver = self;
  v5.super_class = BKCoverContentViewController2;
  [(BKContentViewController *)&v5 viewWillDisappear:v3];
}

- (void)viewDidLoad
{
  v58.receiver = self;
  v58.super_class = BKCoverContentViewController2;
  [(BKContentViewController *)&v58 viewDidLoad];
  v3 = [(BKCoverContentViewController2 *)self _getURLToLoad];
  v4 = [BKActivityIndicatorOverlayView alloc];
  v5 = [(BKCoverContentViewController2 *)self theme];
  v6 = [v5 contentTextColor];
  v7 = [v6 colorWithAlphaComponent:0.7];
  v8 = [(BKCoverContentViewController2 *)self theme];
  v9 = [v8 backgroundColorForTraitEnvironment:self];
  v10 = [(BKActivityIndicatorOverlayView *)v4 initWithBackgroundColor:v7 foregroundColor:v9];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v10;

  if (v3 && !BEDoesURLPointToAnImageFile())
  {
    v12 = [(BKContentViewController *)self configuration];
    [v12 layoutSize];
    v14 = v13;

    v15 = [(BKContentViewController *)self book];
    v16 = [BEWebViewFactoryPaginationOptions alloc];
    v17 = [v15 obeyPageBreaks];
    v18 = [(BKContentViewController *)self configuration];
    [v18 gutterWidth];
    v55 = [v16 initWithMode:0 usePaginationLineGrid:0 respectPageBreaks:v17 isHorizontalScroll:0 contentLayoutSize:objc_msgSend(v15 gapBetweenPages:"shouldAllowRemoteInspection") viewportWidth:CGSizeZero.width fixedLayoutSize:CGSizeZero.height pageLength:v19 fontSize:v14 developerExtrasEnabled:{CGSizeZero.width, CGSizeZero.height, v14, 0.0}];

    v20 = [BECFIUtilitiesJSOptions alloc];
    v56 = v15;
    v21 = [v15 assetID];
    v22 = [(BKCoverContentViewController2 *)self ordinal];
    v23 = [v15 spineIndexInPackage];
    v54 = [v20 initWithManifestId:0 assetId:v21 chapterIndex:v22 spineIndex:{objc_msgSend(v23, "unsignedIntegerValue")}];

    v24 = [(BKCoverContentViewController2 *)self view];
    [v24 bounds];
    v26 = v25;
    v27 = [(BKCoverContentViewController2 *)self view];
    [v27 bounds];
    v29 = v28;
    v30 = [(BKContentViewController *)self book];
    v31 = [v30 assetID];
    v32 = [(BKContentViewController *)self book];
    [v32 cacheItem];
    v33 = v57 = v3;
    v34 = [BEWebViewFactory viewConfiguredForCoverContent:v31 bookID:v33 protocolCacheItem:v55 paginationOptions:v54 cfiOptions:0.0, 0.0, v26, v29];
    coverWebView = self->_coverWebView;
    self->_coverWebView = v34;

    v36 = [(WKWebView *)self->_coverWebView be_navigationHandler];
    [v36 setDelegate:self];

    [(WKWebView *)self->_coverWebView setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [(BKCoverContentViewController2 *)self view];
    [v37 addSubview:self->_coverWebView];
    v53 = [(WKWebView *)self->_coverWebView leftAnchor];
    v52 = [v37 leftAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v59[0] = v51;
    v50 = [(WKWebView *)self->_coverWebView rightAnchor];
    v49 = [v37 rightAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v59[1] = v48;
    v38 = [(WKWebView *)self->_coverWebView topAnchor];
    v39 = [v37 topAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v59[2] = v40;
    v41 = [(WKWebView *)self->_coverWebView bottomAnchor];
    v42 = [v37 bottomAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    v59[3] = v43;
    v44 = [NSArray arrayWithObjects:v59 count:4];
    [NSLayoutConstraint activateConstraints:v44];

    v3 = v57;
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
  v3 = [(BKCoverContentViewController2 *)self themePage];
  v4 = [(BKCoverContentViewController2 *)self view];
  v5 = [v3 backgroundColorForTraitEnvironment:v4];
  v8 = [v5 bc_rgbaHexValue];

  v6 = [NSString stringWithFormat:@"document.body.style.backgroundColor = #%@", v8];
  v7 = [(BKCoverContentViewController2 *)self coverWebView];
  [v7 evaluateJavaScript:v6 completionHandler:0];
}

- (void)setTheme:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKCoverContentViewController2;
  [(BKContentViewController *)&v4 setTheme:a3];
  [(BKCoverContentViewController2 *)self _forceWebContentBackgroundColor];
}

- (void)setActivityIndicatorVisible:(BOOL)a3 animated:(BOOL)a4 afterDelay:(double)a5
{
  v6 = a4;
  activityIndicator = self->_activityIndicator;
  if (a3)
  {
    v9 = [(BKCoverContentViewController2 *)self view];
    [(BKActivityIndicatorOverlayView *)activityIndicator showIndicatorCenteredInView:v9 animated:v6 animationDelay:a5];
  }

  else
  {
    v8 = self->_activityIndicator;

    [(BKActivityIndicatorOverlayView *)v8 hideIndicatorAnimated:a4 animationDelay:?];
  }
}

- (void)navigationHandler:(id)a3 didFinishLoadOfURL:(id)a4
{
  [(BKCoverContentViewController2 *)self stopActivityIndicator:1, a4];

  [(BKCoverContentViewController2 *)self _forceWebContentBackgroundColor];
}

@end