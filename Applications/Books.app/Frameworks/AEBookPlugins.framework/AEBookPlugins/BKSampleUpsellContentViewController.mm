@interface BKSampleUpsellContentViewController
- (BKSampleUpsellContentViewController)init;
- (BKUpsellBuyDelegate)buyDelegate;
- (BOOL)wasPreordered;
- (CGRect)cachedRectForAnnotation:(id)annotation;
- (CGRect)cachedVisibleRectForAnnotation:(id)annotation;
- (CGSize)contentSize;
- (double)_calculateLineNumbersForLabel:(id)label withFont:(id)font;
- (id)currentLocation;
- (id)styleManager;
- (void)_didChangeStyle:(id)style;
- (void)buyButton:(id)button initialBuy:(id)buy completion:(id)completion;
- (void)configureWithProfile:(id)profile;
- (void)dealloc;
- (void)releaseViews;
- (void)setContentScale:(double)scale;
- (void)setTheme:(id)theme;
- (void)setTheme:(id)theme force:(BOOL)force;
- (void)updateAppearance;
- (void)updateButtonAppearance;
- (void)updateFonts;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BKSampleUpsellContentViewController

- (BKSampleUpsellContentViewController)init
{
  v5.receiver = self;
  v5.super_class = BKSampleUpsellContentViewController;
  v2 = [(BKContentViewController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"reachabilityChanged:" name:@"kNetworkReachabilityChangedNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  [(BKSampleUpsellContentViewController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = BKSampleUpsellContentViewController;
  [(BKContentViewController *)&v3 dealloc];
}

- (void)releaseViews
{
  continueLabel = self->_continueLabel;
  self->_continueLabel = 0;

  bookTitleLabel = self->_bookTitleLabel;
  self->_bookTitleLabel = 0;

  bookAuthorLabel = self->_bookAuthorLabel;
  self->_bookAuthorLabel = 0;

  buyButton = self->_buyButton;
  self->_buyButton = 0;

  v7.receiver = self;
  v7.super_class = BKSampleUpsellContentViewController;
  [(BKContentViewController *)&v7 releaseViews];
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = BKSampleUpsellContentViewController;
  [(BKContentViewController *)&v28 viewDidLoad];
  buyButton = [(BKSampleUpsellContentViewController *)self buyButton];
  [buyButton setDelegate:self];
  profileFuture = [(BKSampleUpsellContentViewController *)self profileFuture];
  v23 = [profileFuture getNonBlockingError:0];

  [(BKSampleUpsellContentViewController *)self configureWithProfile:v23];
  objc_initWeak(&location, self);
  profileFuture2 = [(BKSampleUpsellContentViewController *)self profileFuture];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_2EBC4;
  v25[3] = &unk_1E3720;
  objc_copyWeak(&v26, &location);
  [profileFuture2 get:v25];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
  [(BKSampleUpsellContentViewController *)self updateAppearance];
  view = [(BKSampleUpsellContentViewController *)self view];
  bookTitleLabel = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
  leadingAnchor = [bookTitleLabel leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:45.0];
  v29[0] = v19;
  bookTitleLabel2 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
  trailingAnchor = [bookTitleLabel2 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-45.0];
  v29[1] = v15;
  bookAuthorLabel = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
  leadingAnchor3 = [bookAuthorLabel leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v9 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:45.0];
  v29[2] = v9;
  bookAuthorLabel2 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
  trailingAnchor3 = [bookAuthorLabel2 trailingAnchor];
  trailingAnchor4 = [view trailingAnchor];
  v13 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-45.0];
  v29[3] = v13;
  v14 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = BKSampleUpsellContentViewController;
  [(BKSampleUpsellContentViewController *)&v9 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = BKStyleManagerDidChangeStyleNotification[0];
  styleManager = [(BKSampleUpsellContentViewController *)self styleManager];
  [v4 addObserver:self selector:"_didChangeStyle:" name:v5 object:styleManager];

  [(BKSampleUpsellContentViewController *)self updateFonts];
  [(BKSampleUpsellContentViewController *)self updateAppearance];
  view = [(BKSampleUpsellContentViewController *)self view];
  [view layoutIfNeeded];

  [(BKSampleUpsellContentViewController *)self updateButtonAppearance];
  buyButton = [(BKSampleUpsellContentViewController *)self buyButton];
  [buyButton resetButtonState];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BKSampleUpsellContentViewController;
  [(BKSampleUpsellContentViewController *)&v3 viewDidLayoutSubviews];
  [(BKSampleUpsellContentViewController *)self updateButtonAppearance];
}

- (void)updateButtonAppearance
{
  buyButton = [(BKSampleUpsellContentViewController *)self buyButton];
  [(BKSampleUpsellContentViewController *)self contentScale];
  v4 = 40.0;
  v5 = v3 * 40.0;
  v6 = v3 <= 0.0;
  if (v3 <= 0.0)
  {
    v7 = 12.0;
  }

  else
  {
    v7 = v3 * 12.0;
  }

  if (!v6)
  {
    v4 = v5;
  }

  [buyButton setContentEdgeInsets:{v7, v4, v7, v4}];
}

- (void)updateViewConstraints
{
  v31.receiver = self;
  v31.super_class = BKSampleUpsellContentViewController;
  [(BKSampleUpsellContentViewController *)&v31 updateViewConstraints];
  bookTitleLabel = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
  bookTitleLabel2 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
  font = [bookTitleLabel2 font];
  [(BKSampleUpsellContentViewController *)self _calculateLineNumbersForLabel:bookTitleLabel withFont:font];
  v7 = v6;

  bookAuthorLabel = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
  bookAuthorLabel2 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
  font2 = [bookAuthorLabel2 font];
  [(BKSampleUpsellContentViewController *)self _calculateLineNumbersForLabel:bookAuthorLabel withFont:font2];
  v12 = v11;

  if (![(BKSampleUpsellContentViewController *)self im_isCompactWidth])
  {
    bookAuthorLabel3 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
    if (v12 >= [bookAuthorLabel3 numberOfLines])
    {
      bookTitleLabel3 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
      numberOfLines = [bookTitleLabel3 numberOfLines];

      if (v7 < numberOfLines)
      {
        v17 = 12.0;
      }

      else
      {
        v17 = 4.0;
      }

      if (v7 < numberOfLines)
      {
        v18 = 28.0;
      }

      else
      {
        v18 = 6.0;
      }

      goto LABEL_30;
    }

LABEL_12:
    v18 = 28.0;
    v17 = 12.0;
    goto LABEL_30;
  }

  if (![(BKSampleUpsellContentViewController *)self im_isCompactHeight])
  {
    goto LABEL_12;
  }

  v13 = +[UIDevice currentDevice];
  v14 = [v13 orientation] - 1;

  delegate = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v16 = [delegate hasSpreadPagesForContentViewController:self];
    if (v16)
    {
      v17 = 10.0;
    }

    else
    {
      v17 = 12.0;
    }

    if (v16)
    {
      v18 = 14.0;
    }

    else
    {
      v18 = 28.0;
    }
  }

  else
  {
    v18 = 28.0;
    v17 = 12.0;
  }

  if (v14 >= 2)
  {
    bookAuthorLabel4 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
    if (v12 >= [bookAuthorLabel4 numberOfLines])
    {
      bookTitleLabel4 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
      numberOfLines2 = [bookTitleLabel4 numberOfLines];

      if (v7 < numberOfLines2)
      {
        v17 = 10.0;
      }

      else
      {
        v17 = 4.0;
      }

      if (v7 < numberOfLines2)
      {
        v18 = 14.0;
      }

      else
      {
        v18 = 6.0;
      }
    }

    else
    {

      v18 = 14.0;
      v17 = 10.0;
    }
  }

LABEL_30:
  [(BKSampleUpsellContentViewController *)self contentScale];
  if (v25 <= 0.0)
  {
    v26 = v18;
  }

  else
  {
    v26 = v18 * v25;
  }

  if (v25 <= 0.0)
  {
    v27 = v17;
  }

  else
  {
    v27 = v17 * v25;
  }

  bookTitleTopConstraint = [(BKSampleUpsellContentViewController *)self bookTitleTopConstraint];
  [bookTitleTopConstraint setConstant:v26];

  bookAuthorTopConstraint = [(BKSampleUpsellContentViewController *)self bookAuthorTopConstraint];
  [bookAuthorTopConstraint setConstant:v27];

  buyButtonTopConstraint = [(BKSampleUpsellContentViewController *)self buyButtonTopConstraint];
  [buyButtonTopConstraint setConstant:v26];
}

- (double)_calculateLineNumbersForLabel:(id)label withFont:(id)font
{
  fontCopy = font;
  labelCopy = label;
  text = [labelCopy text];
  [labelCopy frame];
  v9 = v8;

  v17 = NSFontAttributeName;
  v18 = fontCopy;
  v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [text boundingRectWithSize:1 options:v10 attributes:0 context:{v9, 1.79769313e308}];
  v12 = v11;

  [fontCopy lineHeight];
  v14 = v13;

  v15 = v12 / v14;
  return ceilf(v15);
}

- (id)styleManager
{
  book = [(BKContentViewController *)self book];
  styleManager = [book styleManager];

  return styleManager;
}

- (void)updateFonts
{
  v3 = 1.0;
  if (![(BKSampleUpsellContentViewController *)self fixedLayout])
  {
    styleManager = [(BKSampleUpsellContentViewController *)self styleManager];
    [styleManager fontSize];
    v6 = v5;

    if (v6 > 0.0)
    {
      im_isCompactWidth = [(BKSampleUpsellContentViewController *)self im_isCompactWidth];
      LODWORD(v8) = 1.25;
      if ((im_isCompactWidth & 1) == 0)
      {
        im_isCompactHeight = [(BKSampleUpsellContentViewController *)self im_isCompactHeight];
        LODWORD(v8) = 1.5;
        if (im_isCompactHeight)
        {
          *&v8 = 1.25;
        }
      }

      v10 = fmaxf(v6, 0.1);
      if (*&v8 > v10)
      {
        *&v8 = v10;
      }

      v3 = *&v8;
    }
  }

  [(BKSampleUpsellContentViewController *)self contentScale];
  if (v11 <= 0.0)
  {
    v12 = v3;
  }

  else
  {
    v12 = v3 * v11;
  }

  continueLabel = [(BKSampleUpsellContentViewController *)self continueLabel];
  v13 = [UIFont systemFontOfSize:v12 * 13.0];
  [continueLabel setFont:v13];

  bookTitleLabel = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
  bookAuthorLabel = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
  v16 = [TUIFontSpec fontSpecWithPostscriptName:@"BooksSerif-Heavy" size:v12 * 26.0];
  font = [v16 font];
  [bookTitleLabel setFont:font];

  v18 = [UIFont systemFontOfSize:v12 * 18.0];
  [bookAuthorLabel setFont:v18];

  bookTitleLabel2 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
  v20 = [TUIFontSpec fontSpecWithPostscriptName:@"BooksSerif-Heavy" size:v12 * 26.0];
  font2 = [v20 font];
  [(BKSampleUpsellContentViewController *)self _calculateLineNumbersForLabel:bookTitleLabel2 withFont:font2];
  v23 = v22;

  bookAuthorLabel2 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
  v25 = [UIFont systemFontOfSize:v12 * 18.0];
  [(BKSampleUpsellContentViewController *)self _calculateLineNumbersForLabel:bookAuthorLabel2 withFont:v25];
  v27 = v26;

  v28 = +[UIDevice currentDevice];
  orientation = [v28 orientation];

  delegate = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([delegate hasSpreadPagesForContentViewController:self])
  {
    v31 = 16.0;
    v32 = 24.0;
LABEL_19:
    v36 = [TUIFontSpec fontSpecWithPostscriptName:@"BooksSerif-Heavy" size:v12 * v32];
    font3 = [v36 font];
    [bookTitleLabel setFont:font3];

    bookTitleLabel3 = [UIFont systemFontOfSize:v12 * v31];
    [bookAuthorLabel setFont:bookTitleLabel3];
    goto LABEL_20;
  }

  bookTitleLabel3 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
  if (v23 < [bookTitleLabel3 numberOfLines])
  {
LABEL_20:

    goto LABEL_21;
  }

  bookAuthorLabel3 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
  numberOfLines = [bookAuthorLabel3 numberOfLines];

  if (v27 >= numberOfLines && (orientation - 1) >= 2)
  {
    v31 = 14.0;
    v32 = 20.0;
    goto LABEL_19;
  }

LABEL_21:
  buyButton = [(BKSampleUpsellContentViewController *)self buyButton];
  v39 = [UIFont boldSystemFontOfSize:v12 * 15.0];
  [buyButton setButtonFont:v39];

  view = [(BKSampleUpsellContentViewController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)_didChangeStyle:(id)style
{
  if (!+[NSThread isMainThread])
  {
    sub_136DFC();
  }

  [(BKSampleUpsellContentViewController *)self updateFonts];
  view = [(BKSampleUpsellContentViewController *)self view];
  [view layoutIfNeeded];

  [(BKSampleUpsellContentViewController *)self updateButtonAppearance];
}

- (void)updateAppearance
{
  if ([(BKSampleUpsellContentViewController *)self isViewLoaded])
  {
    themePage = [(BKSampleUpsellContentViewController *)self themePage];
    v3 = [themePage backgroundColorForTraitEnvironment:self];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = +[UIColor whiteColor];
    }

    v6 = v5;

    view = [(BKSampleUpsellContentViewController *)self view];
    [view setBackgroundColor:v6];

    contentTextColor = [themePage contentTextColor];
    v9 = contentTextColor;
    if (contentTextColor)
    {
      v10 = contentTextColor;
    }

    else
    {
      v10 = +[UIColor blackColor];
    }

    v11 = v10;

    continueLabel = [(BKSampleUpsellContentViewController *)self continueLabel];
    [continueLabel setTextColor:v11];

    bookTitleLabel = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
    [bookTitleLabel setTextColor:v11];

    bookAuthorLabel = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
    [bookAuthorLabel setTextColor:v11];

    buyButton = [(BKSampleUpsellContentViewController *)self buyButton];
    finishedButtonBackgroundColor = [themePage finishedButtonBackgroundColor];
    v17 = finishedButtonBackgroundColor;
    if (finishedButtonBackgroundColor)
    {
      v18 = finishedButtonBackgroundColor;
    }

    else
    {
      v18 = +[UIColor blackColor];
    }

    v19 = v18;

    [buyButton setBackgroundFillColor:v19];
    finishedButtonDisabledBackgroundColor = [themePage finishedButtonDisabledBackgroundColor];
    v21 = [finishedButtonDisabledBackgroundColor colorWithAlphaComponent:0.4];
    [buyButton setDisabledBackgroundFillColor:v21];

    [buyButton setFrameColor:v19];
    v22 = +[UIColor whiteColor];
    [buyButton setTextColor:v22];

    v23 = +[UIColor whiteColor];
    v24 = [v23 colorWithAlphaComponent:0.4];
    [buyButton setDisabledTextColor:v24];

    [buyButton setTextHilightColor:v19];
    [buyButton setBackgroundFillHighlightColor:v6];
    buyButtonColor = [themePage buyButtonColor];
    v26 = buyButtonColor;
    if (buyButtonColor)
    {
      v27 = buyButtonColor;
    }

    else
    {
      v27 = +[UIColor bc_booksGreen];
    }

    v28 = v27;

    [buyButton setBuyStateTextColor:v28];
    [buyButton setBuyStateBackgroundFillColor:v6];
    [buyButton setBuyStateFrameColor:v28];
    [buyButton setFrameWidth:0.0];
    [buyButton updateButton];
  }
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  theme = [(BKSampleUpsellContentViewController *)self theme];
  v6 = [themeCopy isEqual:theme];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = BKSampleUpsellContentViewController;
    [(BKContentViewController *)&v7 setTheme:themeCopy];
    [(BKSampleUpsellContentViewController *)self updateAppearance];
  }
}

- (void)setTheme:(id)theme force:(BOOL)force
{
  v5.receiver = self;
  v5.super_class = BKSampleUpsellContentViewController;
  [(BKContentViewController *)&v5 setTheme:theme force:force];
  [(BKSampleUpsellContentViewController *)self updateAppearance];
}

- (void)setContentScale:(double)scale
{
  if (self->_contentScale != scale)
  {
    self->_contentScale = scale;
    [(BKSampleUpsellContentViewController *)self updateFonts];
    view = [(BKSampleUpsellContentViewController *)self view];
    [view layoutIfNeeded];

    [(BKSampleUpsellContentViewController *)self updateButtonAppearance];
  }
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

- (id)currentLocation
{
  v2 = [[BKLocation alloc] initWithOrdinal:[(BKContentViewController *)self ordinal]];

  return v2;
}

- (void)configureWithProfile:(id)profile
{
  profileCopy = profile;
  title = [profileCopy title];
  bookTitle = title;
  if (!title)
  {
    book = [(BKContentViewController *)self book];
    bookTitle = [book bookTitle];
  }

  bookTitleLabel = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
  [bookTitleLabel setText:bookTitle];

  if (!title)
  {
  }

  author = [profileCopy author];
  bookAuthor = author;
  if (!author)
  {
    book = [(BKContentViewController *)self book];
    bookAuthor = [book bookAuthor];
  }

  bookAuthorLabel = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
  [bookAuthorLabel setText:bookAuthor];

  if (!author)
  {
  }

  buyButton = [(BKSampleUpsellContentViewController *)self buyButton];
  [buyButton setProductProfile:profileCopy];
}

- (void)buyButton:(id)button initialBuy:(id)buy completion:(id)completion
{
  buttonCopy = button;
  completionCopy = completion;
  buyDelegate = [(BKSampleUpsellContentViewController *)self buyDelegate];
  if (buyDelegate)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2FE00;
    v12[3] = &unk_1E3748;
    v13 = buttonCopy;
    v14 = completionCopy;
    [buyDelegate buyWithCompletion:v12];
  }

  else
  {
    v10 = objc_retainBlock(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (BOOL)wasPreordered
{
  book = [(BKContentViewController *)self book];
  isPreorder = [book isPreorder];
  bOOLValue = [isPreorder BOOLValue];

  return bOOLValue;
}

- (CGSize)contentSize
{
  width = self->contentSize.width;
  height = self->contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BKUpsellBuyDelegate)buyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buyDelegate);

  return WeakRetained;
}

@end