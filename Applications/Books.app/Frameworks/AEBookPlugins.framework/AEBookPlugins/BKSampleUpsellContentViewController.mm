@interface BKSampleUpsellContentViewController
- (BKSampleUpsellContentViewController)init;
- (BKUpsellBuyDelegate)buyDelegate;
- (BOOL)wasPreordered;
- (CGRect)cachedRectForAnnotation:(id)a3;
- (CGRect)cachedVisibleRectForAnnotation:(id)a3;
- (CGSize)contentSize;
- (double)_calculateLineNumbersForLabel:(id)a3 withFont:(id)a4;
- (id)currentLocation;
- (id)styleManager;
- (void)_didChangeStyle:(id)a3;
- (void)buyButton:(id)a3 initialBuy:(id)a4 completion:(id)a5;
- (void)configureWithProfile:(id)a3;
- (void)dealloc;
- (void)releaseViews;
- (void)setContentScale:(double)a3;
- (void)setTheme:(id)a3;
- (void)setTheme:(id)a3 force:(BOOL)a4;
- (void)updateAppearance;
- (void)updateButtonAppearance;
- (void)updateFonts;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
  v24 = [(BKSampleUpsellContentViewController *)self buyButton];
  [v24 setDelegate:self];
  v3 = [(BKSampleUpsellContentViewController *)self profileFuture];
  v23 = [v3 getNonBlockingError:0];

  [(BKSampleUpsellContentViewController *)self configureWithProfile:v23];
  objc_initWeak(&location, self);
  v4 = [(BKSampleUpsellContentViewController *)self profileFuture];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_2EBC4;
  v25[3] = &unk_1E3720;
  objc_copyWeak(&v26, &location);
  [v4 get:v25];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
  [(BKSampleUpsellContentViewController *)self updateAppearance];
  v5 = [(BKSampleUpsellContentViewController *)self view];
  v22 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
  v21 = [v22 leadingAnchor];
  v20 = [v5 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:45.0];
  v29[0] = v19;
  v18 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
  v17 = [v18 trailingAnchor];
  v16 = [v5 trailingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16 constant:-45.0];
  v29[1] = v15;
  v6 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
  v7 = [v6 leadingAnchor];
  v8 = [v5 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:45.0];
  v29[2] = v9;
  v10 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
  v11 = [v10 trailingAnchor];
  v12 = [v5 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-45.0];
  v29[3] = v13;
  v14 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = BKSampleUpsellContentViewController;
  [(BKSampleUpsellContentViewController *)&v9 viewWillAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = BKStyleManagerDidChangeStyleNotification[0];
  v6 = [(BKSampleUpsellContentViewController *)self styleManager];
  [v4 addObserver:self selector:"_didChangeStyle:" name:v5 object:v6];

  [(BKSampleUpsellContentViewController *)self updateFonts];
  [(BKSampleUpsellContentViewController *)self updateAppearance];
  v7 = [(BKSampleUpsellContentViewController *)self view];
  [v7 layoutIfNeeded];

  [(BKSampleUpsellContentViewController *)self updateButtonAppearance];
  v8 = [(BKSampleUpsellContentViewController *)self buyButton];
  [v8 resetButtonState];
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
  v8 = [(BKSampleUpsellContentViewController *)self buyButton];
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

  [v8 setContentEdgeInsets:{v7, v4, v7, v4}];
}

- (void)updateViewConstraints
{
  v31.receiver = self;
  v31.super_class = BKSampleUpsellContentViewController;
  [(BKSampleUpsellContentViewController *)&v31 updateViewConstraints];
  v3 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
  v4 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
  v5 = [v4 font];
  [(BKSampleUpsellContentViewController *)self _calculateLineNumbersForLabel:v3 withFont:v5];
  v7 = v6;

  v8 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
  v9 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
  v10 = [v9 font];
  [(BKSampleUpsellContentViewController *)self _calculateLineNumbersForLabel:v8 withFont:v10];
  v12 = v11;

  if (![(BKSampleUpsellContentViewController *)self im_isCompactWidth])
  {
    v19 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
    if (v12 >= [v19 numberOfLines])
    {
      v20 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
      v21 = [v20 numberOfLines];

      if (v7 < v21)
      {
        v17 = 12.0;
      }

      else
      {
        v17 = 4.0;
      }

      if (v7 < v21)
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

  v15 = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v16 = [v15 hasSpreadPagesForContentViewController:self];
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
    v22 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
    if (v12 >= [v22 numberOfLines])
    {
      v23 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
      v24 = [v23 numberOfLines];

      if (v7 < v24)
      {
        v17 = 10.0;
      }

      else
      {
        v17 = 4.0;
      }

      if (v7 < v24)
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

  v28 = [(BKSampleUpsellContentViewController *)self bookTitleTopConstraint];
  [v28 setConstant:v26];

  v29 = [(BKSampleUpsellContentViewController *)self bookAuthorTopConstraint];
  [v29 setConstant:v27];

  v30 = [(BKSampleUpsellContentViewController *)self buyButtonTopConstraint];
  [v30 setConstant:v26];
}

- (double)_calculateLineNumbersForLabel:(id)a3 withFont:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 text];
  [v6 frame];
  v9 = v8;

  v17 = NSFontAttributeName;
  v18 = v5;
  v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v7 boundingRectWithSize:1 options:v10 attributes:0 context:{v9, 1.79769313e308}];
  v12 = v11;

  [v5 lineHeight];
  v14 = v13;

  v15 = v12 / v14;
  return ceilf(v15);
}

- (id)styleManager
{
  v2 = [(BKContentViewController *)self book];
  v3 = [v2 styleManager];

  return v3;
}

- (void)updateFonts
{
  v3 = 1.0;
  if (![(BKSampleUpsellContentViewController *)self fixedLayout])
  {
    v4 = [(BKSampleUpsellContentViewController *)self styleManager];
    [v4 fontSize];
    v6 = v5;

    if (v6 > 0.0)
    {
      v7 = [(BKSampleUpsellContentViewController *)self im_isCompactWidth];
      LODWORD(v8) = 1.25;
      if ((v7 & 1) == 0)
      {
        v9 = [(BKSampleUpsellContentViewController *)self im_isCompactHeight];
        LODWORD(v8) = 1.5;
        if (v9)
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

  v41 = [(BKSampleUpsellContentViewController *)self continueLabel];
  v13 = [UIFont systemFontOfSize:v12 * 13.0];
  [v41 setFont:v13];

  v14 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
  v15 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
  v16 = [TUIFontSpec fontSpecWithPostscriptName:@"BooksSerif-Heavy" size:v12 * 26.0];
  v17 = [v16 font];
  [v14 setFont:v17];

  v18 = [UIFont systemFontOfSize:v12 * 18.0];
  [v15 setFont:v18];

  v19 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
  v20 = [TUIFontSpec fontSpecWithPostscriptName:@"BooksSerif-Heavy" size:v12 * 26.0];
  v21 = [v20 font];
  [(BKSampleUpsellContentViewController *)self _calculateLineNumbersForLabel:v19 withFont:v21];
  v23 = v22;

  v24 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
  v25 = [UIFont systemFontOfSize:v12 * 18.0];
  [(BKSampleUpsellContentViewController *)self _calculateLineNumbersForLabel:v24 withFont:v25];
  v27 = v26;

  v28 = +[UIDevice currentDevice];
  v29 = [v28 orientation];

  v30 = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v30 hasSpreadPagesForContentViewController:self])
  {
    v31 = 16.0;
    v32 = 24.0;
LABEL_19:
    v36 = [TUIFontSpec fontSpecWithPostscriptName:@"BooksSerif-Heavy" size:v12 * v32];
    v37 = [v36 font];
    [v14 setFont:v37];

    v33 = [UIFont systemFontOfSize:v12 * v31];
    [v15 setFont:v33];
    goto LABEL_20;
  }

  v33 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
  if (v23 < [v33 numberOfLines])
  {
LABEL_20:

    goto LABEL_21;
  }

  v34 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
  v35 = [v34 numberOfLines];

  if (v27 >= v35 && (v29 - 1) >= 2)
  {
    v31 = 14.0;
    v32 = 20.0;
    goto LABEL_19;
  }

LABEL_21:
  v38 = [(BKSampleUpsellContentViewController *)self buyButton];
  v39 = [UIFont boldSystemFontOfSize:v12 * 15.0];
  [v38 setButtonFont:v39];

  v40 = [(BKSampleUpsellContentViewController *)self view];
  [v40 setNeedsUpdateConstraints];
}

- (void)_didChangeStyle:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    sub_136DFC();
  }

  [(BKSampleUpsellContentViewController *)self updateFonts];
  v4 = [(BKSampleUpsellContentViewController *)self view];
  [v4 layoutIfNeeded];

  [(BKSampleUpsellContentViewController *)self updateButtonAppearance];
}

- (void)updateAppearance
{
  if ([(BKSampleUpsellContentViewController *)self isViewLoaded])
  {
    v29 = [(BKSampleUpsellContentViewController *)self themePage];
    v3 = [v29 backgroundColorForTraitEnvironment:self];
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

    v7 = [(BKSampleUpsellContentViewController *)self view];
    [v7 setBackgroundColor:v6];

    v8 = [v29 contentTextColor];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = +[UIColor blackColor];
    }

    v11 = v10;

    v12 = [(BKSampleUpsellContentViewController *)self continueLabel];
    [v12 setTextColor:v11];

    v13 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
    [v13 setTextColor:v11];

    v14 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
    [v14 setTextColor:v11];

    v15 = [(BKSampleUpsellContentViewController *)self buyButton];
    v16 = [v29 finishedButtonBackgroundColor];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = +[UIColor blackColor];
    }

    v19 = v18;

    [v15 setBackgroundFillColor:v19];
    v20 = [v29 finishedButtonDisabledBackgroundColor];
    v21 = [v20 colorWithAlphaComponent:0.4];
    [v15 setDisabledBackgroundFillColor:v21];

    [v15 setFrameColor:v19];
    v22 = +[UIColor whiteColor];
    [v15 setTextColor:v22];

    v23 = +[UIColor whiteColor];
    v24 = [v23 colorWithAlphaComponent:0.4];
    [v15 setDisabledTextColor:v24];

    [v15 setTextHilightColor:v19];
    [v15 setBackgroundFillHighlightColor:v6];
    v25 = [v29 buyButtonColor];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = +[UIColor bc_booksGreen];
    }

    v28 = v27;

    [v15 setBuyStateTextColor:v28];
    [v15 setBuyStateBackgroundFillColor:v6];
    [v15 setBuyStateFrameColor:v28];
    [v15 setFrameWidth:0.0];
    [v15 updateButton];
  }
}

- (void)setTheme:(id)a3
{
  v4 = a3;
  v5 = [(BKSampleUpsellContentViewController *)self theme];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = BKSampleUpsellContentViewController;
    [(BKContentViewController *)&v7 setTheme:v4];
    [(BKSampleUpsellContentViewController *)self updateAppearance];
  }
}

- (void)setTheme:(id)a3 force:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = BKSampleUpsellContentViewController;
  [(BKContentViewController *)&v5 setTheme:a3 force:a4];
  [(BKSampleUpsellContentViewController *)self updateAppearance];
}

- (void)setContentScale:(double)a3
{
  if (self->_contentScale != a3)
  {
    self->_contentScale = a3;
    [(BKSampleUpsellContentViewController *)self updateFonts];
    v5 = [(BKSampleUpsellContentViewController *)self view];
    [v5 layoutIfNeeded];

    [(BKSampleUpsellContentViewController *)self updateButtonAppearance];
  }
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

- (id)currentLocation
{
  v2 = [[BKLocation alloc] initWithOrdinal:[(BKContentViewController *)self ordinal]];

  return v2;
}

- (void)configureWithProfile:(id)a3
{
  v12 = a3;
  v5 = [v12 title];
  v6 = v5;
  if (!v5)
  {
    v3 = [(BKContentViewController *)self book];
    v6 = [v3 bookTitle];
  }

  v7 = [(BKSampleUpsellContentViewController *)self bookTitleLabel];
  [v7 setText:v6];

  if (!v5)
  {
  }

  v8 = [v12 author];
  v9 = v8;
  if (!v8)
  {
    v3 = [(BKContentViewController *)self book];
    v9 = [v3 bookAuthor];
  }

  v10 = [(BKSampleUpsellContentViewController *)self bookAuthorLabel];
  [v10 setText:v9];

  if (!v8)
  {
  }

  v11 = [(BKSampleUpsellContentViewController *)self buyButton];
  [v11 setProductProfile:v12];
}

- (void)buyButton:(id)a3 initialBuy:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(BKSampleUpsellContentViewController *)self buyDelegate];
  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2FE00;
    v12[3] = &unk_1E3748;
    v13 = v7;
    v14 = v8;
    [v9 buyWithCompletion:v12];
  }

  else
  {
    v10 = objc_retainBlock(v8);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (BOOL)wasPreordered
{
  v2 = [(BKContentViewController *)self book];
  v3 = [v2 isPreorder];
  v4 = [v3 BOOLValue];

  return v4;
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