@interface THiOSFlowToCTableViewController
- (THiOSFlowToCTableViewController)initWithFlowTOCViewController:(id)controller asset:(id)asset;
- (void)setTheme:(id)theme;
- (void)th_addChildViewController:(id)controller withFrame:(CGRect)frame;
- (void)th_determineLeftFrame:(CGRect *)frame rightFrame:(CGRect *)rightFrame;
- (void)th_updateColorsForTheme;
- (void)viewDidLoad;
@end

@implementation THiOSFlowToCTableViewController

- (THiOSFlowToCTableViewController)initWithFlowTOCViewController:(id)controller asset:(id)asset
{
  controllerCopy = controller;
  assetCopy = asset;
  v14.receiver = self;
  v14.super_class = THiOSFlowToCTableViewController;
  v9 = [(THiOSFlowToCTableViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_flowToCViewController, controller);
    v11 = objc_alloc_init(THBookCoverViewController);
    coverViewController = v10->_coverViewController;
    v10->_coverViewController = v11;

    [(THBookCoverViewController *)v10->_coverViewController setAsset:assetCopy];
  }

  return v10;
}

- (void)viewDidLoad
{
  v41.receiver = self;
  v41.super_class = THiOSFlowToCTableViewController;
  [(THiOSFlowToCTableViewController *)&v41 viewDidLoad];
  view = [(THBookCoverViewController *)self->_coverViewController view];
  view2 = [(THFlowTOCViewController *)self->_flowToCViewController view];
  view3 = [(THiOSFlowToCTableViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v40 = size;
  v37 = origin;
  v38 = size;
  [(THiOSFlowToCTableViewController *)self th_determineLeftFrame:&origin rightFrame:&v37];
  [(THiOSFlowToCTableViewController *)self th_addChildViewController:self->_coverViewController withFrame:origin, v40];
  [(THiOSFlowToCTableViewController *)self th_addChildViewController:self->_flowToCViewController withFrame:v37, v38];
  v7 = view3;
  v36 = view3;
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  centerXAnchor = [v7 centerXAnchor];
  leftAnchor = [view leftAnchor];
  leftAnchor2 = [safeAreaLayoutGuide leftAnchor];
  v32 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v42[0] = v32;
  rightAnchor = [view rightAnchor];
  v28 = centerXAnchor;
  v30 = [rightAnchor constraintEqualToAnchor:centerXAnchor];
  v42[1] = v30;
  v33 = view;
  topAnchor = [view topAnchor];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v42[2] = v26;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v42[3] = v22;
  leftAnchor3 = [view2 leftAnchor];
  v20 = [leftAnchor3 constraintEqualToAnchor:centerXAnchor];
  v42[4] = v20;
  rightAnchor2 = [view2 rightAnchor];
  rightAnchor3 = [safeAreaLayoutGuide rightAnchor];
  v10 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3];
  v42[5] = v10;
  v24 = view2;
  topAnchor3 = [view2 topAnchor];
  topAnchor4 = [safeAreaLayoutGuide topAnchor];
  v13 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v42[6] = v13;
  bottomAnchor3 = [view2 bottomAnchor];
  bottomAnchor4 = [safeAreaLayoutGuide bottomAnchor];
  v16 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v42[7] = v16;
  v17 = [NSArray arrayWithObjects:v42 count:8];
  [NSLayoutConstraint activateConstraints:v17];

  [(THiOSFlowToCTableViewController *)self th_updateColorsForTheme];
}

- (void)setTheme:(id)theme
{
  objc_storeStrong(&self->_theme, theme);
  [(THiOSFlowToCTableViewController *)self th_updateColorsForTheme];

  [(THiOSFlowToCTableViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)th_updateColorsForTheme
{
  v10 = [(THTheme *)self->_theme backgroundColorForTraitEnvironment:self];
  if ([(THTheme *)self->_theme isNight:self])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(THiOSFlowToCTableViewController *)self setOverrideUserInterfaceStyle:v3];
  viewIfLoaded = [(THiOSFlowToCTableViewController *)self viewIfLoaded];
  [viewIfLoaded setBackgroundColor:v10];

  view = [(THBookCoverViewController *)self->_coverViewController view];
  if ([(THTheme *)self->_theme overlayContentBackgroundColor])
  {
    v6 = [CAFilter alloc];
    v7 = [v6 initWithType:kCAFilterMultiplyColor];
    [v7 setValue:objc_msgSend(v10 forKeyPath:{"CGColor"), @"inputColor"}];
    v8 = [NSArray arrayWithObject:v7];
  }

  else
  {
    v8 = 0;
  }

  layer = [view layer];
  [layer setFilters:v8];
}

- (void)th_determineLeftFrame:(CGRect *)frame rightFrame:(CGRect *)rightFrame
{
  view = [(THiOSFlowToCTableViewController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v18.origin.x = v8;
  v18.origin.y = v10;
  v18.size.width = v12;
  v18.size.height = v14;
  v15 = fmax(CGRectGetWidth(v18) + -10.0, 0.0) * 0.5;
  v19.origin.x = v8;
  v19.origin.y = v10;
  v19.size.width = v12;
  v19.size.height = v14;
  Height = CGRectGetHeight(v19);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v15;
  v20.size.height = Height;
  MaxX = CGRectGetMaxX(v20);
  if (frame)
  {
    frame->origin.x = 0.0;
    frame->origin.y = 0.0;
    frame->size.width = v15;
    frame->size.height = Height;
  }

  if (rightFrame)
  {
    rightFrame->origin.x = MaxX;
    rightFrame->origin.y = 0.0;
    rightFrame->size.width = v15;
    rightFrame->size.height = Height;
  }
}

- (void)th_addChildViewController:(id)controller withFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  controllerCopy = controller;
  view = [controllerCopy view];
  [controllerCopy willMoveToParentViewController:0];
  [view removeFromSuperview];
  [controllerCopy removeFromParentViewController];
  [(THiOSFlowToCTableViewController *)self addChildViewController:controllerCopy];
  [view setFrame:{x, y, width, height}];
  view2 = [(THiOSFlowToCTableViewController *)self view];
  [view2 addSubview:view];

  [controllerCopy didMoveToParentViewController:self];
}

@end