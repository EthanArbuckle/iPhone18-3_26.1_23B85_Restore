@interface BKFinishedContentViewController
- (BKFinishedContentViewController)init;
- (BKFinishedContentViewController)initWithCoder:(id)a3;
- (BKFinishedContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CGRect)cachedRectForAnnotation:(id)a3;
- (CGRect)cachedVisibleRectForAnnotation:(id)a3;
- (CGSize)contentSize;
- (id)currentLocation;
- (id)styleManager;
- (void)_didChangeStyle:(id)a3;
- (void)dealloc;
- (void)finishedPressed:(id)a3;
- (void)releaseViews;
- (void)setContentScale:(double)a3;
- (void)setTheme:(id)a3 force:(BOOL)a4;
- (void)updateAppearance;
- (void)updateButtonAppearance;
- (void)updateButtonTitle;
- (void)updateFonts;
- (void)updateViewConstraints;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

- (BKFinishedContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = BKFinishedContentViewController;
  v4 = [(BKViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    sub_137EC4(v4);
  }

  return v5;
}

- (BKFinishedContentViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BKFinishedContentViewController;
  v3 = [(BKFinishedContentViewController *)&v6 initWithCoder:a3];
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
  v5 = [(BKFinishedContentViewController *)self checkmarkImageView];
  [v5 setImage:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v26.receiver = self;
  v26.super_class = BKFinishedContentViewController;
  [(BKFinishedContentViewController *)&v26 viewWillAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = BKStyleManagerDidChangeStyleNotification[0];
  v6 = [(BKFinishedContentViewController *)self styleManager];
  [v4 addObserver:self selector:"_didChangeStyle:" name:v5 object:v6];

  [(BKFinishedContentViewController *)self updateFonts];
  [(BKFinishedContentViewController *)self updateAppearance];
  v7 = [(BKFinishedContentViewController *)self view];
  [v7 layoutIfNeeded];

  [(BKFinishedContentViewController *)self updateButtonAppearance];
  v8 = [(BKFinishedContentViewController *)self view];
  v25 = [(BKFinishedContentViewController *)self bodyLabel];
  v24 = [v25 leadingAnchor];
  v23 = [v8 leadingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23 constant:45.0];
  v27[0] = v22;
  v21 = [(BKFinishedContentViewController *)self bodyLabel];
  v20 = [v21 trailingAnchor];
  v19 = [v8 trailingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19 constant:-45.0];
  v27[1] = v18;
  v9 = [(BKFinishedContentViewController *)self titleLabel];
  v10 = [v9 leadingAnchor];
  v11 = [v8 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:45.0];
  v27[2] = v12;
  v13 = [(BKFinishedContentViewController *)self titleLabel];
  v14 = [v13 trailingAnchor];
  v15 = [v8 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-45.0];
  v27[3] = v16;
  v17 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = BKFinishedContentViewController;
  [(BKContentViewController *)&v7 viewDidDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = BKStyleManagerDidChangeStyleNotification[0];
  v6 = [(BKFinishedContentViewController *)self styleManager];
  [v4 removeObserver:self name:v5 object:v6];
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

- (void)finishedPressed:(id)a3
{
  v6 = [(BKContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(BKContentViewController *)self book];
    v5 = [v4 assetID];

    [v6 contentViewController:self setFinishedAndCloseForAssetID:v5];
  }
}

- (void)updateButtonTitle
{
  v3 = [(BKFinishedContentViewController *)self im_isCompactWidth];
  v4 = AEBundle();
  v5 = v4;
  if (v3)
  {
    v6 = @"Finished";
  }

  else
  {
    v6 = @"Mark as Finished";
  }

  v8 = [v4 localizedStringForKey:v6 value:&stru_1E7188 table:0];

  v7 = [(BKFinishedContentViewController *)self finishedButton];
  [v7 setTitle:v8 forState:0];
}

- (void)updateButtonAppearance
{
  v10 = [(BKFinishedContentViewController *)self finishedButton];
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

  [v10 setContentEdgeInsets:{v7, v4, v7, v4}];
  [v10 frame];
  v8 = CGRectGetHeight(v12) * 0.5;
  v9 = [v10 layer];
  [v9 setCornerRadius:v8];
}

- (void)updateViewConstraints
{
  v39.receiver = self;
  v39.super_class = BKFinishedContentViewController;
  [(BKFinishedContentViewController *)&v39 updateViewConstraints];
  v3 = [(BKFinishedContentViewController *)self traitCollection];
  v4 = [v3 horizontalSizeClass];

  v5 = [(BKFinishedContentViewController *)self traitCollection];
  v6 = [v5 verticalSizeClass];

  if (v4 == &dword_0 + 1)
  {
    if (v6 == &dword_0 + 1)
    {
      v7 = [(BKContentViewController *)self delegate];
      if (objc_opt_respondsToSelector() & 1) != 0 && ([v7 hasSpreadPagesForContentViewController:self])
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
          v20 = [(BKFinishedContentViewController *)self view];
          [v20 bounds];
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
      v15 = [(BKFinishedContentViewController *)self view];
      [v15 bounds];
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
    if (v6 == &dword_0 + 1)
    {
      v9 = 16.0;
    }

    else
    {
      v9 = 32.0;
    }

    if (v6 == &dword_0 + 1)
    {
      v10 = 16.0;
    }

    else
    {
      v10 = 24.0;
    }

    if (v6 == &dword_0 + 1)
    {
      v8 = 24.0;
    }

    else
    {
      v8 = 47.0;
    }

    if (v6 == &dword_0 + 1)
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

  v30 = [(BKFinishedContentViewController *)self checkmarkWidthConstraint];
  [v30 setConstant:v14];

  v31 = [(BKFinishedContentViewController *)self checkmarkHeightConstraint];
  [v31 setConstant:v14];

  v32 = [(BKFinishedContentViewController *)self checkmarkTopConstraint];
  [v32 setConstant:v29];

  v33 = [(BKFinishedContentViewController *)self titleTopConstraint];
  [v33 setConstant:v8];

  v34 = [(BKFinishedContentViewController *)self bodyTopConstraint];
  [v34 setConstant:v10];

  v35 = [(BKFinishedContentViewController *)self finishedButtonTopConstraint];
  [v35 setConstant:v9];

  v36 = [(BKFinishedContentViewController *)self finishedButtonBottomConstraint];
  [v36 setConstant:30.0];

  v37 = [(BKFinishedContentViewController *)self finishedButtonLeadingConstraint];
  [v37 setConstant:v29];

  v38 = [(BKFinishedContentViewController *)self finishedButtonTrailingConstraint];
  [v38 setConstant:v29];
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
  if (![(BKFinishedContentViewController *)self fixedLayout])
  {
    v4 = [(BKFinishedContentViewController *)self styleManager];
    [v4 fontSize];
    v6 = v5;

    if (v6 > 0.0)
    {
      v7 = [(BKFinishedContentViewController *)self im_isCompactWidth];
      LODWORD(v8) = 1.5;
      if (v7)
      {
        v9 = [(BKFinishedContentViewController *)self im_isCompactHeight];
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

  [(BKFinishedContentViewController *)self contentScale];
  if (v11 <= 0.0)
  {
    v12 = v3;
  }

  else
  {
    v12 = v3 * v11;
  }

  v21 = [(BKFinishedContentViewController *)self titleLabel];
  v13 = [TUIFontSpec fontSpecWithPostscriptName:@"BooksSerif-Heavy" size:v12 * 24.0];
  v14 = [v13 font];
  [v21 setFont:v14];

  v15 = [(BKFinishedContentViewController *)self bodyLabel];
  v16 = [UIFont systemFontOfSize:v12 * 13.0];
  [v15 setFont:v16];

  v17 = [(BKFinishedContentViewController *)self finishedButton];
  v18 = [UIFont boldSystemFontOfSize:v12 * 15.0];
  v19 = [v17 titleLabel];
  [v19 setFont:v18];

  v20 = [(BKFinishedContentViewController *)self view];
  [v20 setNeedsUpdateConstraints];
}

- (void)_didChangeStyle:(id)a3
{
  if (!+[NSThread isMainThread])
  {
    sub_137F38();
  }

  [(BKFinishedContentViewController *)self updateFonts];
  v4 = [(BKFinishedContentViewController *)self view];
  [v4 layoutIfNeeded];

  [(BKFinishedContentViewController *)self updateButtonAppearance];
}

- (void)updateAppearance
{
  if ([(BKFinishedContentViewController *)self isViewLoaded])
  {
    v22 = [(BKFinishedContentViewController *)self themePage];
    v3 = [v22 backgroundColorForTraitEnvironment:self];
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

    v7 = [(BKFinishedContentViewController *)self view];
    [v7 setBackgroundColor:v6];

    v8 = [v22 finishedCheckmarkColor];
    v9 = [(BKFinishedContentViewController *)self checkmarkImageView];
    [v9 setTintColor:v8];

    v10 = [v22 contentTextColor];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = +[UIColor blackColor];
    }

    v13 = v12;

    v14 = [(BKFinishedContentViewController *)self titleLabel];
    [v14 setTextColor:v13];

    v15 = [(BKFinishedContentViewController *)self bodyLabel];
    [v15 setTextColor:v13];

    v16 = [v22 buttonColor];
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

    v20 = +[UIColor whiteColor];
    v21 = [(BKFinishedContentViewController *)self finishedButton];
    [v21 setFrameWidth:0.0];
    [v21 setFrameColor:v19];
    [v21 setNormalBackgroundColor:v19];
    [v21 setHighlightBackgroundColor:v6];
    [v21 setTitleColor:v20 forState:0];
    [v21 setTitleColor:v19 forState:1];
  }
}

- (void)setTheme:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BKFinishedContentViewController *)self theme];
  v8 = [v6 isEqual:v7];

  if (!v8 || v4)
  {
    v9.receiver = self;
    v9.super_class = BKFinishedContentViewController;
    [(BKContentViewController *)&v9 setTheme:v6 force:v4];
    [(BKFinishedContentViewController *)self updateAppearance];
  }
}

- (void)setContentScale:(double)a3
{
  if (self->_contentScale != a3)
  {
    self->_contentScale = a3;
    [(BKFinishedContentViewController *)self updateFonts];
    v5 = [(BKFinishedContentViewController *)self view];
    [v5 layoutIfNeeded];

    [(BKFinishedContentViewController *)self updateButtonAppearance];
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

- (CGSize)contentSize
{
  width = self->contentSize.width;
  height = self->contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end