@interface NavJunctionViewController
+ (void)updateJunctionImageSizeForScreenSize:(CGSize)size;
- (NavJunctionViewController)init;
- (NavJunctionViewControllerDelegate)delegate;
- (double)calculateAvailableHeight;
- (void)_pressedJunctionView;
- (void)fitImageForHeight:(double)height;
- (void)lightLevelController:(id)controller didUpdateLightLevel:(int64_t)level;
- (void)setJunctionImage:(id)image;
- (void)setJunctionViewInfo:(id)info;
- (void)traitCollectionDidChange:(id)change;
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

- (void)lightLevelController:(id)controller didUpdateLightLevel:(int64_t)level
{
  if (![(NavJunctionViewController *)self lightModeSource:controller])
  {
    v8 = +[MapsLightLevelController sharedController];
    shouldUseNightMode = [v8 shouldUseNightMode];
    junctionViewInfo = self->_junctionViewInfo;
    if (shouldUseNightMode)
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = NavJunctionViewController;
  [(NavJunctionViewController *)&v13 traitCollectionDidChange:changeCopy];
  if ([(NavJunctionViewController *)self lightModeSource]== 1)
  {
    traitCollection = [(NavJunctionViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    userInterfaceStyle2 = [changeCopy userInterfaceStyle];

    if (userInterfaceStyle != userInterfaceStyle2)
    {
      traitCollection2 = [(NavJunctionViewController *)self traitCollection];
      userInterfaceStyle3 = [traitCollection2 userInterfaceStyle];
      junctionViewInfo = [(NavJunctionViewController *)self junctionViewInfo];
      v11 = junctionViewInfo;
      if (userInterfaceStyle3 == 2)
      {
        [junctionViewInfo junctionViewDarkenedImage];
      }

      else
      {
        [junctionViewInfo junctionViewImage];
      }
      v12 = ;
      [(NavJunctionViewController *)self setJunctionImage:v12];
    }
  }
}

- (void)updateSkyColor
{
  lightModeSource = [(NavJunctionViewController *)self lightModeSource];
  if (lightModeSource)
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
      cGColor = [v7 CGColor];
      v8 = [UIColor colorWithRed:0.929411765 green:0.929411765 blue:0.929411765 alpha:1.0];
      v9 = &cGColor;
      goto LABEL_13;
    }
  }

  traitCollection = [(NavJunctionViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (!lightModeSource)
  {
  }

  if (userInterfaceStyle != 2)
  {
    goto LABEL_12;
  }

LABEL_10:
  v7 = [UIColor colorWithRed:0.137254902 green:0.298039216 blue:0.478431373 alpha:1.0];
  cGColor2 = [v7 CGColor];
  v8 = [UIColor colorWithRed:0.337254902 green:0.42745098 blue:0.647058824 alpha:1.0];
  v9 = &cGColor2;
LABEL_13:
  v9[1] = [v8 CGColor];
  v10 = [NSArray arrayWithObjects:v9 count:2];
  skyGradientLayer = [(NavJunctionViewController *)self skyGradientLayer];
  [skyGradientLayer setColors:v10];
}

- (void)_pressedJunctionView
{
  delegate = [(NavJunctionViewController *)self delegate];
  [delegate hideJunctionViewTemporarily];
}

- (void)setJunctionViewInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy && self->_junctionViewInfo != infoCopy)
  {
    v6 = +[NavigationFeedbackCollector sharedFeedbackCollector];
    junctionViewId = [(NavJunctionViewInfo *)v5 junctionViewId];
    [v6 setJunctionViewDisplayed:junctionViewId];
  }

  junctionViewInfo = self->_junctionViewInfo;
  self->_junctionViewInfo = v5;
  v9 = v5;

  traitCollection = [(NavJunctionViewController *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
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

- (void)setJunctionImage:(id)image
{
  imageCopy = image;
  [(NavJunctionViewController *)self loadViewIfNeeded];
  objc_storeStrong(&self->_junctionImage, image);
  [(UIImage *)self->_junctionImage setAccessibilityIdentifier:@"NavJunctionImage"];
  junctionView = [(NavJunctionViewController *)self junctionView];
  [junctionView setImage:imageCopy];

  if (imageCopy && ([imageCopy size], v6 > 0.0))
  {
    [(NavJunctionViewController *)self calculateAvailableHeight];
    [(NavJunctionViewController *)self setAvailableHeight:?];
  }

  else
  {
    heightConstraint = [(NavJunctionViewController *)self heightConstraint];
    [heightConstraint setConstant:0.0];
  }

  [(NavJunctionViewController *)self updateSkyColor];
}

- (void)fitImageForHeight:(double)height
{
  junctionImage = [(NavJunctionViewController *)self junctionImage];
  [junctionImage size];
  v7 = v6;

  v8 = 0.0;
  if (v7 != 0.0 && height != 0.0)
  {
    junctionImage2 = [(NavJunctionViewController *)self junctionImage];
    [junctionImage2 size];
    v10 = 0.0;
    if (v11 > 0.0)
    {
      junctionImage3 = [(NavJunctionViewController *)self junctionImage];
      [junctionImage3 size];
      v14 = v13;
      view = [(NavJunctionViewController *)self view];
      [view frame];
      v17 = v16 * v14;
      junctionImage4 = [(NavJunctionViewController *)self junctionImage];
      [junctionImage4 size];
      v10 = floor(v17 / v19);
    }

    if (v10 <= height)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = (v10 - height) * 0.600000024;
    }

    v8 = fmin(v10, height);
    junctionViewBottomConstraint = [(NavJunctionViewController *)self junctionViewBottomConstraint];
    [junctionViewBottomConstraint setConstant:v20];

    junctionViewHeightConstraint = [(NavJunctionViewController *)self junctionViewHeightConstraint];
    [junctionViewHeightConstraint setConstant:v10];
  }

  heightConstraint = [(NavJunctionViewController *)self heightConstraint];
  [heightConstraint setConstant:v8];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = NavJunctionViewController;
  [(NavJunctionViewController *)&v13 viewDidLayoutSubviews];
  view = [(NavJunctionViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  skyGradientLayer = [(NavJunctionViewController *)self skyGradientLayer];
  [skyGradientLayer setFrame:{v5, v7, v9, v11}];
}

- (double)calculateAvailableHeight
{
  delegate = [(NavJunctionViewController *)self delegate];
  heightConstraint = [(NavJunctionViewController *)self heightConstraint];
  [heightConstraint constant];
  [delegate maxAvailableHeightForJunctionView:?];
  v6 = v5;

  return v6;
}

- (void)viewDidLoad
{
  v49.receiver = self;
  v49.super_class = NavJunctionViewController;
  [(NavJunctionViewController *)&v49 viewDidLoad];
  view = [(NavJunctionViewController *)self view];
  layer = [view layer];
  [layer setMasksToBounds:1];

  view2 = [(NavJunctionViewController *)self view];
  [view2 setClipsToBounds:1];

  v6 = objc_opt_new();
  [(NavJunctionViewController *)self setSkyGradientLayer:v6];

  skyGradientLayer = [(NavJunctionViewController *)self skyGradientLayer];
  [skyGradientLayer setLocations:&off_1016ED178];

  skyGradientLayer2 = [(NavJunctionViewController *)self skyGradientLayer];
  [skyGradientLayer2 setStartPoint:{0.5, 0.0}];

  skyGradientLayer3 = [(NavJunctionViewController *)self skyGradientLayer];
  [skyGradientLayer3 setEndPoint:{0.5, 1.0}];

  view3 = [(NavJunctionViewController *)self view];
  layer2 = [view3 layer];
  skyGradientLayer4 = [(NavJunctionViewController *)self skyGradientLayer];
  [layer2 addSublayer:skyGradientLayer4];

  v13 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(NavJunctionViewController *)self setJunctionView:v13];

  junctionView = [(NavJunctionViewController *)self junctionView];
  [junctionView setTranslatesAutoresizingMaskIntoConstraints:0];

  junctionView2 = [(NavJunctionViewController *)self junctionView];
  [junctionView2 setContentMode:2];

  junctionView3 = [(NavJunctionViewController *)self junctionView];
  [junctionView3 setUserInteractionEnabled:1];

  junctionView4 = [(NavJunctionViewController *)self junctionView];
  [junctionView4 setAccessibilityIdentifier:@"NavJunctionView"];

  junctionView5 = [(NavJunctionViewController *)self junctionView];
  v19 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_pressedJunctionView"];
  [junctionView5 addGestureRecognizer:v19];

  view4 = [(NavJunctionViewController *)self view];
  junctionView6 = [(NavJunctionViewController *)self junctionView];
  [view4 addSubview:junctionView6];

  junctionView7 = [(NavJunctionViewController *)self junctionView];
  bottomAnchor = [junctionView7 bottomAnchor];
  view5 = [(NavJunctionViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  [(NavJunctionViewController *)self setJunctionViewBottomConstraint:v26];

  junctionView8 = [(NavJunctionViewController *)self junctionView];
  heightAnchor = [junctionView8 heightAnchor];
  v29 = [heightAnchor constraintEqualToConstant:0.0];
  [(NavJunctionViewController *)self setJunctionViewHeightConstraint:v29];

  view6 = [(NavJunctionViewController *)self view];
  heightAnchor2 = [view6 heightAnchor];
  LODWORD(v32) = 1148846080;
  v33 = [heightAnchor2 constraintEqualToConstant:0.0 priority:v32];
  [(NavJunctionViewController *)self setHeightConstraint:v33];

  junctionView9 = [(NavJunctionViewController *)self junctionView];
  widthAnchor = [junctionView9 widthAnchor];
  view7 = [(NavJunctionViewController *)self view];
  widthAnchor2 = [view7 widthAnchor];
  v44 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v50[0] = v44;
  junctionView10 = [(NavJunctionViewController *)self junctionView];
  centerXAnchor = [junctionView10 centerXAnchor];
  view8 = [(NavJunctionViewController *)self view];
  centerXAnchor2 = [view8 centerXAnchor];
  v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v50[1] = v38;
  junctionViewBottomConstraint = [(NavJunctionViewController *)self junctionViewBottomConstraint];
  v50[2] = junctionViewBottomConstraint;
  junctionViewHeightConstraint = [(NavJunctionViewController *)self junctionViewHeightConstraint];
  v50[3] = junctionViewHeightConstraint;
  heightConstraint = [(NavJunctionViewController *)self heightConstraint];
  v50[4] = heightConstraint;
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

+ (void)updateJunctionImageSizeForScreenSize:(CGSize)size
{
  if (size.width != 0.0)
  {
    height = size.height;
    if (size.height != 0.0)
    {
      width = size.width;
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
    currentMode = [v5 currentMode];
    [currentMode size];
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