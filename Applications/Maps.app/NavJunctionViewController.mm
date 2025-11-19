@interface NavJunctionViewController
+ (void)updateJunctionImageSizeForScreenSize:(CGSize)a3;
- (NavJunctionViewController)init;
- (NavJunctionViewControllerDelegate)delegate;
- (double)calculateAvailableHeight;
- (void)_pressedJunctionView;
- (void)fitImageForHeight:(double)a3;
- (void)lightLevelController:(id)a3 didUpdateLightLevel:(int64_t)a4;
- (void)setJunctionImage:(id)a3;
- (void)setJunctionViewInfo:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateSkyColor;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NavJunctionViewController

- (NavJunctionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)lightLevelController:(id)a3 didUpdateLightLevel:(int64_t)a4
{
  if (![(NavJunctionViewController *)self lightModeSource:a3])
  {
    v8 = +[MapsLightLevelController sharedController];
    v5 = [v8 shouldUseNightMode];
    junctionViewInfo = self->_junctionViewInfo;
    if (v5)
    {
      [(NavJunctionViewInfo *)junctionViewInfo junctionViewDarkenedImage];
    }

    else
    {
      [(NavJunctionViewInfo *)junctionViewInfo junctionViewImage];
    }
    v7 = ;
    [(NavJunctionViewController *)self setJunctionImage:v7];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NavJunctionViewController;
  [(NavJunctionViewController *)&v13 traitCollectionDidChange:v4];
  if ([(NavJunctionViewController *)self lightModeSource]== 1)
  {
    v5 = [(NavJunctionViewController *)self traitCollection];
    v6 = [v5 userInterfaceStyle];
    v7 = [v4 userInterfaceStyle];

    if (v6 != v7)
    {
      v8 = [(NavJunctionViewController *)self traitCollection];
      v9 = [v8 userInterfaceStyle];
      v10 = [(NavJunctionViewController *)self junctionViewInfo];
      v11 = v10;
      if (v9 == 2)
      {
        [v10 junctionViewDarkenedImage];
      }

      else
      {
        [v10 junctionViewImage];
      }
      v12 = ;
      [(NavJunctionViewController *)self setJunctionImage:v12];
    }
  }
}

- (void)updateSkyColor
{
  v4 = [(NavJunctionViewController *)self lightModeSource];
  if (v4)
  {
    if ([(NavJunctionViewController *)self lightModeSource]!= 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = +[MapsLightLevelController sharedController];
    if ([v2 shouldUseNightMode])
    {

      goto LABEL_10;
    }

    if ([(NavJunctionViewController *)self lightModeSource]!= 1)
    {

LABEL_12:
      v7 = [UIColor colorWithRed:0.709803922 green:0.866666667 blue:0.929411765 alpha:1.0];
      v12 = [v7 CGColor];
      v8 = [UIColor colorWithRed:0.929411765 green:0.929411765 blue:0.929411765 alpha:1.0];
      v9 = &v12;
      goto LABEL_13;
    }
  }

  v5 = [(NavJunctionViewController *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (!v4)
  {
  }

  if (v6 != 2)
  {
    goto LABEL_12;
  }

LABEL_10:
  v7 = [UIColor colorWithRed:0.137254902 green:0.298039216 blue:0.478431373 alpha:1.0];
  v13 = [v7 CGColor];
  v8 = [UIColor colorWithRed:0.337254902 green:0.42745098 blue:0.647058824 alpha:1.0];
  v9 = &v13;
LABEL_13:
  v9[1] = [v8 CGColor];
  v10 = [NSArray arrayWithObjects:v9 count:2];
  v11 = [(NavJunctionViewController *)self skyGradientLayer];
  [v11 setColors:v10];
}

- (void)_pressedJunctionView
{
  v2 = [(NavJunctionViewController *)self delegate];
  [v2 hideJunctionViewTemporarily];
}

- (void)setJunctionViewInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_junctionViewInfo != v4)
  {
    v6 = +[NavigationFeedbackCollector sharedFeedbackCollector];
    v7 = [(NavJunctionViewInfo *)v5 junctionViewId];
    [v6 setJunctionViewDisplayed:v7];
  }

  junctionViewInfo = self->_junctionViewInfo;
  self->_junctionViewInfo = v5;
  v9 = v5;

  v11 = [(NavJunctionViewController *)self traitCollection];
  if ([v11 userInterfaceStyle] == 2)
  {
    [(NavJunctionViewInfo *)v9 junctionViewDarkenedImage];
  }

  else
  {
    [(NavJunctionViewInfo *)v9 junctionViewImage];
  }
  v10 = ;

  [(NavJunctionViewController *)self setJunctionImage:v10];
}

- (void)setJunctionImage:(id)a3
{
  v8 = a3;
  [(NavJunctionViewController *)self loadViewIfNeeded];
  objc_storeStrong(&self->_junctionImage, a3);
  [(UIImage *)self->_junctionImage setAccessibilityIdentifier:@"NavJunctionImage"];
  v5 = [(NavJunctionViewController *)self junctionView];
  [v5 setImage:v8];

  if (v8 && ([v8 size], v6 > 0.0))
  {
    [(NavJunctionViewController *)self calculateAvailableHeight];
    [(NavJunctionViewController *)self setAvailableHeight:?];
  }

  else
  {
    v7 = [(NavJunctionViewController *)self heightConstraint];
    [v7 setConstant:0.0];
  }

  [(NavJunctionViewController *)self updateSkyColor];
}

- (void)fitImageForHeight:(double)a3
{
  v5 = [(NavJunctionViewController *)self junctionImage];
  [v5 size];
  v7 = v6;

  v8 = 0.0;
  if (v7 != 0.0 && a3 != 0.0)
  {
    v9 = [(NavJunctionViewController *)self junctionImage];
    [v9 size];
    v10 = 0.0;
    if (v11 > 0.0)
    {
      v12 = [(NavJunctionViewController *)self junctionImage];
      [v12 size];
      v14 = v13;
      v15 = [(NavJunctionViewController *)self view];
      [v15 frame];
      v17 = v16 * v14;
      v18 = [(NavJunctionViewController *)self junctionImage];
      [v18 size];
      v10 = floor(v17 / v19);
    }

    if (v10 <= a3)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = (v10 - a3) * 0.600000024;
    }

    v8 = fmin(v10, a3);
    v21 = [(NavJunctionViewController *)self junctionViewBottomConstraint];
    [v21 setConstant:v20];

    v22 = [(NavJunctionViewController *)self junctionViewHeightConstraint];
    [v22 setConstant:v10];
  }

  v23 = [(NavJunctionViewController *)self heightConstraint];
  [v23 setConstant:v8];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = NavJunctionViewController;
  [(NavJunctionViewController *)&v13 viewDidLayoutSubviews];
  v3 = [(NavJunctionViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(NavJunctionViewController *)self skyGradientLayer];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (double)calculateAvailableHeight
{
  v3 = [(NavJunctionViewController *)self delegate];
  v4 = [(NavJunctionViewController *)self heightConstraint];
  [v4 constant];
  [v3 maxAvailableHeightForJunctionView:?];
  v6 = v5;

  return v6;
}

- (void)viewDidLoad
{
  v49.receiver = self;
  v49.super_class = NavJunctionViewController;
  [(NavJunctionViewController *)&v49 viewDidLoad];
  v3 = [(NavJunctionViewController *)self view];
  v4 = [v3 layer];
  [v4 setMasksToBounds:1];

  v5 = [(NavJunctionViewController *)self view];
  [v5 setClipsToBounds:1];

  v6 = objc_opt_new();
  [(NavJunctionViewController *)self setSkyGradientLayer:v6];

  v7 = [(NavJunctionViewController *)self skyGradientLayer];
  [v7 setLocations:&off_1016ED178];

  v8 = [(NavJunctionViewController *)self skyGradientLayer];
  [v8 setStartPoint:{0.5, 0.0}];

  v9 = [(NavJunctionViewController *)self skyGradientLayer];
  [v9 setEndPoint:{0.5, 1.0}];

  v10 = [(NavJunctionViewController *)self view];
  v11 = [v10 layer];
  v12 = [(NavJunctionViewController *)self skyGradientLayer];
  [v11 addSublayer:v12];

  v13 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(NavJunctionViewController *)self setJunctionView:v13];

  v14 = [(NavJunctionViewController *)self junctionView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(NavJunctionViewController *)self junctionView];
  [v15 setContentMode:2];

  v16 = [(NavJunctionViewController *)self junctionView];
  [v16 setUserInteractionEnabled:1];

  v17 = [(NavJunctionViewController *)self junctionView];
  [v17 setAccessibilityIdentifier:@"NavJunctionView"];

  v18 = [(NavJunctionViewController *)self junctionView];
  v19 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_pressedJunctionView"];
  [v18 addGestureRecognizer:v19];

  v20 = [(NavJunctionViewController *)self view];
  v21 = [(NavJunctionViewController *)self junctionView];
  [v20 addSubview:v21];

  v22 = [(NavJunctionViewController *)self junctionView];
  v23 = [v22 bottomAnchor];
  v24 = [(NavJunctionViewController *)self view];
  v25 = [v24 bottomAnchor];
  v26 = [v23 constraintEqualToAnchor:v25 constant:0.0];
  [(NavJunctionViewController *)self setJunctionViewBottomConstraint:v26];

  v27 = [(NavJunctionViewController *)self junctionView];
  v28 = [v27 heightAnchor];
  v29 = [v28 constraintEqualToConstant:0.0];
  [(NavJunctionViewController *)self setJunctionViewHeightConstraint:v29];

  v30 = [(NavJunctionViewController *)self view];
  v31 = [v30 heightAnchor];
  LODWORD(v32) = 1148846080;
  v33 = [v31 constraintEqualToConstant:0.0 priority:v32];
  [(NavJunctionViewController *)self setHeightConstraint:v33];

  v48 = [(NavJunctionViewController *)self junctionView];
  v46 = [v48 widthAnchor];
  v47 = [(NavJunctionViewController *)self view];
  v45 = [v47 widthAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v50[0] = v44;
  v34 = [(NavJunctionViewController *)self junctionView];
  v35 = [v34 centerXAnchor];
  v36 = [(NavJunctionViewController *)self view];
  v37 = [v36 centerXAnchor];
  v38 = [v35 constraintEqualToAnchor:v37];
  v50[1] = v38;
  v39 = [(NavJunctionViewController *)self junctionViewBottomConstraint];
  v50[2] = v39;
  v40 = [(NavJunctionViewController *)self junctionViewHeightConstraint];
  v50[3] = v40;
  v41 = [(NavJunctionViewController *)self heightConstraint];
  v50[4] = v41;
  v42 = [NSArray arrayWithObjects:v50 count:5];
  [NSLayoutConstraint activateConstraints:v42];

  v43 = +[MapsLightLevelController sharedController];
  [v43 addObserver:self];
}

- (NavJunctionViewController)init
{
  v5.receiver = self;
  v5.super_class = NavJunctionViewController;
  v2 = [(NavJunctionViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NavJunctionViewController *)v2 setLightModeSource:1];
  }

  return v3;
}

+ (void)updateJunctionImageSizeForScreenSize:(CGSize)a3
{
  if (a3.width != 0.0)
  {
    height = a3.height;
    if (a3.height != 0.0)
    {
      width = a3.width;
LABEL_6:
      if (width >= height)
      {
        v10 = 0.00120772947;
      }

      else
      {
        v10 = 0.00240963855;
      }

      v11 = trunc(width * v10) + 1.0;
      goto LABEL_10;
    }
  }

  v5 = +[UIScreen mainScreen];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 currentMode];
    [v7 size];
    width = v8;
    height = v9;

    goto LABEL_6;
  }

  v11 = 2.0;
LABEL_10:
  v12 = +[MNNavigationService sharedService];
  [v12 setJunctionViewImageWidth:v11 * 414.0 height:v11 * 292.0];
}

@end