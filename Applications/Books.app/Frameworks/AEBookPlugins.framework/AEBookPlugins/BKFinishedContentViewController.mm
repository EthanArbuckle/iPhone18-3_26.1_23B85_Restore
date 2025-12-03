@interface BKFinishedContentViewController
- (BKFinishedContentViewController)init;
- (BKFinishedContentViewController)initWithCoder:(id)coder;
- (BKFinishedContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CGRect)cachedRectForAnnotation:(id)annotation;
- (CGRect)cachedVisibleRectForAnnotation:(id)annotation;
- (CGSize)contentSize;
- (id)currentLocation;
- (id)styleManager;
- (void)_didChangeStyle:(id)style;
- (void)dealloc;
- (void)finishedPressed:(id)pressed;
- (void)releaseViews;
- (void)setContentScale:(double)scale;
- (void)setTheme:(id)theme force:(BOOL)force;
- (void)updateAppearance;
- (void)updateButtonAppearance;
- (void)updateButtonTitle;
- (void)updateFonts;
- (void)updateViewConstraints;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation BKFinishedContentViewController

- (BKFinishedContentViewController)init
{
  v5.receiver = self;
  v5.super_class = BKFinishedContentViewController;
  v2 = [(BKContentViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    sub_137EC4(v2);
  }

  return v3;
}

- (BKFinishedContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = BKFinishedContentViewController;
  v4 = [(BKViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    sub_137EC4(v4);
  }

  return v5;
}

- (BKFinishedContentViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BKFinishedContentViewController;
  v3 = [(BKFinishedContentViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    sub_137EC4(v3);
  }

  return v4;
}

- (void)dealloc
{
  [(BKFinishedContentViewController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = BKFinishedContentViewController;
  [(BKContentViewController *)&v3 dealloc];
}

- (void)releaseViews
{
  checkmarkImageView = self->_checkmarkImageView;
  self->_checkmarkImageView = 0;

  titleLabel = self->_titleLabel;
  self->_titleLabel = 0;

  bodyLabel = self->_bodyLabel;
  self->_bodyLabel = 0;

  finishedButton = self->_finishedButton;
  self->_finishedButton = 0;

  v7.receiver = self;
  v7.super_class = BKFinishedContentViewController;
  [(BKContentViewController *)&v7 releaseViews];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = BKFinishedContentViewController;
  [(BKContentViewController *)&v6 viewDidLoad];
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:103.0];
  v4 = [UIImage systemImageNamed:@"checkmark.circle.fill" withConfiguration:v3];
  checkmarkImageView = [(BKFinishedContentViewController *)self checkmarkImageView];
  [checkmarkImageView setImage:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v26.receiver = self;
  v26.super_class = BKFinishedContentViewController;
  [(BKFinishedContentViewController *)&v26 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = BKStyleManagerDidChangeStyleNotification[0];
  styleManager = [(BKFinishedContentViewController *)self styleManager];
  [v4 addObserver:self selector:"_didChangeStyle:" name:v5 object:styleManager];

  [(BKFinishedContentViewController *)self updateFonts];
  [(BKFinishedContentViewController *)self updateAppearance];
  view = [(BKFinishedContentViewController *)self view];
  [view layoutIfNeeded];

  [(BKFinishedContentViewController *)self updateButtonAppearance];
  view2 = [(BKFinishedContentViewController *)self view];
  bodyLabel = [(BKFinishedContentViewController *)self bodyLabel];
  leadingAnchor = [bodyLabel leadingAnchor];
  leadingAnchor2 = [view2 leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:45.0];
  v27[0] = v22;
  bodyLabel2 = [(BKFinishedContentViewController *)self bodyLabel];
  trailingAnchor = [bodyLabel2 trailingAnchor];
  trailingAnchor2 = [view2 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-45.0];
  v27[1] = v18;
  titleLabel = [(BKFinishedContentViewController *)self titleLabel];
  leadingAnchor3 = [titleLabel leadingAnchor];
  leadingAnchor4 = [view2 leadingAnchor];
  v12 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:45.0];
  v27[2] = v12;
  titleLabel2 = [(BKFinishedContentViewController *)self titleLabel];
  trailingAnchor3 = [titleLabel2 trailingAnchor];
  trailingAnchor4 = [view2 trailingAnchor];
  v16 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-45.0];
  v27[3] = v16;
  v17 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = BKFinishedContentViewController;
  [(BKContentViewController *)&v7 viewDidDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = BKStyleManagerDidChangeStyleNotification[0];
  styleManager = [(BKFinishedContentViewController *)self styleManager];
  [v4 removeObserver:self name:v5 object:styleManager];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BKFinishedContentViewController;
  [(BKFinishedContentViewController *)&v3 viewWillLayoutSubviews];
  [(BKFinishedContentViewController *)self updateButtonTitle];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BKFinishedContentViewController;
  [(BKFinishedContentViewController *)&v3 viewDidLayoutSubviews];
  [(BKFinishedContentViewController *)self updateButtonAppearance];
}

- (void)finishedPressed:(id)pressed
{
  delegate = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    book = [(BKContentViewController *)self book];
    assetID = [book assetID];

    [delegate contentViewController:self setFinishedAndCloseForAssetID:assetID];
  }
}

- (void)updateButtonTitle
{
  im_isCompactWidth = [(BKFinishedContentViewController *)self im_isCompactWidth];
  v4 = AEBundle();
  v5 = v4;
  if (im_isCompactWidth)
  {
    v6 = @"Finished";
  }

  else
  {
    v6 = @"Mark as Finished";
  }

  v8 = [v4 localizedStringForKey:v6 value:&stru_1E7188 table:0];

  finishedButton = [(BKFinishedContentViewController *)self finishedButton];
  [finishedButton setTitle:v8 forState:0];
}

- (void)updateButtonAppearance
{
  finishedButton = [(BKFinishedContentViewController *)self finishedButton];
  [(BKFinishedContentViewController *)self contentScale];
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

  [finishedButton setContentEdgeInsets:{v7, v4, v7, v4}];
  [finishedButton frame];
  v8 = CGRectGetHeight(v12) * 0.5;
  layer = [finishedButton layer];
  [layer setCornerRadius:v8];
}

- (void)updateViewConstraints
{
  v39.receiver = self;
  v39.super_class = BKFinishedContentViewController;
  [(BKFinishedContentViewController *)&v39 updateViewConstraints];
  traitCollection = [(BKFinishedContentViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  traitCollection2 = [(BKFinishedContentViewController *)self traitCollection];
  verticalSizeClass = [traitCollection2 verticalSizeClass];

  if (horizontalSizeClass == &dword_0 + 1)
  {
    if (verticalSizeClass == &dword_0 + 1)
    {
      delegate = [(BKContentViewController *)self delegate];
      if (objc_opt_respondsToSelector() & 1) != 0 && ([delegate hasSpreadPagesForContentViewController:self])
      {
        v8 = 24.0;
        v9 = 16.0;
        v10 = 16.0;
      }

      else
      {
        v18 = +[UIDevice currentDevice];
        v19 = [v18 orientation] - 1;

        if (v19 >= 2)
        {
          view = [(BKFinishedContentViewController *)self view];
          [view bounds];
          Height = CGRectGetHeight(v41);

          v22 = Height > 320.0;
          if (Height <= 320.0)
          {
            v9 = 12.0;
          }

          else
          {
            v9 = 16.0;
          }

          if (v22)
          {
            v8 = 24.0;
          }

          else
          {
            v8 = 20.0;
          }

          v10 = v9;
        }

        else
        {
          v10 = 20.0;
          v9 = 24.0;
          v8 = 32.0;
        }
      }

      v14 = 44.0;
    }

    else
    {
      view2 = [(BKFinishedContentViewController *)self view];
      [view2 bounds];
      Width = CGRectGetWidth(v40);

      v17 = Width > 320.0;
      if (Width <= 320.0)
      {
        v9 = 16.0;
      }

      else
      {
        v9 = 32.0;
      }

      if (v17)
      {
        v10 = 24.0;
      }

      else
      {
        v10 = 16.0;
      }

      if (v17)
      {
        v8 = 47.0;
      }

      else
      {
        v8 = 24.0;
      }

      v11 = 44.0;
      v12 = 96.0;
      if (v17)
      {
        v14 = 96.0;
      }

      else
      {
        v14 = 44.0;
      }
    }
  }

  else
  {
    v11 = 24.0;
    v12 = 120.0;
    v13 = 47.0;
    if (verticalSizeClass == &dword_0 + 1)
    {
      v9 = 16.0;
    }

    else
    {
      v9 = 32.0;
    }

    if (verticalSizeClass == &dword_0 + 1)
    {
      v10 = 16.0;
    }

    else
    {
      v10 = 24.0;
    }

    if (verticalSizeClass == &dword_0 + 1)
    {
      v8 = 24.0;
    }

    else
    {
      v8 = 47.0;
    }

    if (verticalSizeClass == &dword_0 + 1)
    {
      v14 = 44.0;
    }

    else
    {
      v14 = 120.0;
    }
  }

  [(BKFinishedContentViewController *)self contentScale:v11];
  v24 = v23 <= 0.0;
  v25 = v14 * v23;
  v26 = v8 * v23;
  v27 = v10 * v23;
  v28 = v23 * 4.0;
  if (v24)
  {
    v29 = 4.0;
  }

  else
  {
    v29 = v28;
  }

  if (!v24)
  {
    v10 = v27;
    v8 = v26;
    v14 = v25;
  }

  checkmarkWidthConstraint = [(BKFinishedContentViewController *)self checkmarkWidthConstraint];
  [checkmarkWidthConstraint setConstant:v14];

  checkmarkHeightConstraint = [(BKFinishedContentViewController *)self checkmarkHeightConstraint];
  [checkmarkHeightConstraint setConstant:v14];

  checkmarkTopConstraint = [(BKFinishedContentViewController *)self checkmarkTopConstraint];
  [checkmarkTopConstraint setConstant:v29];

  titleTopConstraint = [(BKFinishedContentViewController *)self titleTopConstraint];
  [titleTopConstraint setConstant:v8];

  bodyTopConstraint = [(BKFinishedContentViewController *)self bodyTopConstraint];
  [bodyTopConstraint setConstant:v10];

  finishedButtonTopConstraint = [(BKFinishedContentViewController *)self finishedButtonTopConstraint];
  [finishedButtonTopConstraint setConstant:v9];

  finishedButtonBottomConstraint = [(BKFinishedContentViewController *)self finishedButtonBottomConstraint];
  [finishedButtonBottomConstraint setConstant:30.0];

  finishedButtonLeadingConstraint = [(BKFinishedContentViewController *)self finishedButtonLeadingConstraint];
  [finishedButtonLeadingConstraint setConstant:v29];

  finishedButtonTrailingConstraint = [(BKFinishedContentViewController *)self finishedButtonTrailingConstraint];
  [finishedButtonTrailingConstraint setConstant:v29];
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
  if (![(BKFinishedContentViewController *)self fixedLayout])
  {
    styleManager = [(BKFinishedContentViewController *)self styleManager];
    [styleManager fontSize];
    v6 = v5;

    if (v6 > 0.0)
    {
      im_isCompactWidth = [(BKFinishedContentViewController *)self im_isCompactWidth];
      LODWORD(v8) = 1.5;
      if (im_isCompactWidth)
      {
        im_isCompactHeight = [(BKFinishedContentViewController *)self im_isCompactHeight];
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

  [(BKFinishedContentViewController *)self contentScale];
  if (v11 <= 0.0)
  {
    v12 = v3;
  }

  else
  {
    v12 = v3 * v11;
  }

  titleLabel = [(BKFinishedContentViewController *)self titleLabel];
  v13 = [TUIFontSpec fontSpecWithPostscriptName:@"BooksSerif-Heavy" size:v12 * 24.0];
  font = [v13 font];
  [titleLabel setFont:font];

  bodyLabel = [(BKFinishedContentViewController *)self bodyLabel];
  v16 = [UIFont systemFontOfSize:v12 * 13.0];
  [bodyLabel setFont:v16];

  finishedButton = [(BKFinishedContentViewController *)self finishedButton];
  v18 = [UIFont boldSystemFontOfSize:v12 * 15.0];
  titleLabel2 = [finishedButton titleLabel];
  [titleLabel2 setFont:v18];

  view = [(BKFinishedContentViewController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)_didChangeStyle:(id)style
{
  if (!+[NSThread isMainThread])
  {
    sub_137F38();
  }

  [(BKFinishedContentViewController *)self updateFonts];
  view = [(BKFinishedContentViewController *)self view];
  [view layoutIfNeeded];

  [(BKFinishedContentViewController *)self updateButtonAppearance];
}

- (void)updateAppearance
{
  if ([(BKFinishedContentViewController *)self isViewLoaded])
  {
    themePage = [(BKFinishedContentViewController *)self themePage];
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

    view = [(BKFinishedContentViewController *)self view];
    [view setBackgroundColor:v6];

    finishedCheckmarkColor = [themePage finishedCheckmarkColor];
    checkmarkImageView = [(BKFinishedContentViewController *)self checkmarkImageView];
    [checkmarkImageView setTintColor:finishedCheckmarkColor];

    contentTextColor = [themePage contentTextColor];
    v11 = contentTextColor;
    if (contentTextColor)
    {
      v12 = contentTextColor;
    }

    else
    {
      v12 = +[UIColor blackColor];
    }

    v13 = v12;

    titleLabel = [(BKFinishedContentViewController *)self titleLabel];
    [titleLabel setTextColor:v13];

    bodyLabel = [(BKFinishedContentViewController *)self bodyLabel];
    [bodyLabel setTextColor:v13];

    buttonColor = [themePage buttonColor];
    v17 = buttonColor;
    if (buttonColor)
    {
      v18 = buttonColor;
    }

    else
    {
      v18 = +[UIColor blackColor];
    }

    v19 = v18;

    v20 = +[UIColor whiteColor];
    finishedButton = [(BKFinishedContentViewController *)self finishedButton];
    [finishedButton setFrameWidth:0.0];
    [finishedButton setFrameColor:v19];
    [finishedButton setNormalBackgroundColor:v19];
    [finishedButton setHighlightBackgroundColor:v6];
    [finishedButton setTitleColor:v20 forState:0];
    [finishedButton setTitleColor:v19 forState:1];
  }
}

- (void)setTheme:(id)theme force:(BOOL)force
{
  forceCopy = force;
  themeCopy = theme;
  theme = [(BKFinishedContentViewController *)self theme];
  v8 = [themeCopy isEqual:theme];

  if (!v8 || forceCopy)
  {
    v9.receiver = self;
    v9.super_class = BKFinishedContentViewController;
    [(BKContentViewController *)&v9 setTheme:themeCopy force:forceCopy];
    [(BKFinishedContentViewController *)self updateAppearance];
  }
}

- (void)setContentScale:(double)scale
{
  if (self->_contentScale != scale)
  {
    self->_contentScale = scale;
    [(BKFinishedContentViewController *)self updateFonts];
    view = [(BKFinishedContentViewController *)self view];
    [view layoutIfNeeded];

    [(BKFinishedContentViewController *)self updateButtonAppearance];
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

- (CGSize)contentSize
{
  width = self->contentSize.width;
  height = self->contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end