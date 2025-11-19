@interface THiOSFlowToCTableViewController
- (THiOSFlowToCTableViewController)initWithFlowTOCViewController:(id)a3 asset:(id)a4;
- (void)setTheme:(id)a3;
- (void)th_addChildViewController:(id)a3 withFrame:(CGRect)a4;
- (void)th_determineLeftFrame:(CGRect *)a3 rightFrame:(CGRect *)a4;
- (void)th_updateColorsForTheme;
- (void)viewDidLoad;
@end

@implementation THiOSFlowToCTableViewController

- (THiOSFlowToCTableViewController)initWithFlowTOCViewController:(id)a3 asset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = THiOSFlowToCTableViewController;
  v9 = [(THiOSFlowToCTableViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_flowToCViewController, a3);
    v11 = objc_alloc_init(THBookCoverViewController);
    coverViewController = v10->_coverViewController;
    v10->_coverViewController = v11;

    [(THBookCoverViewController *)v10->_coverViewController setAsset:v8];
  }

  return v10;
}

- (void)viewDidLoad
{
  v41.receiver = self;
  v41.super_class = THiOSFlowToCTableViewController;
  [(THiOSFlowToCTableViewController *)&v41 viewDidLoad];
  v3 = [(THBookCoverViewController *)self->_coverViewController view];
  v4 = [(THFlowTOCViewController *)self->_flowToCViewController view];
  v5 = [(THiOSFlowToCTableViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v40 = size;
  v37 = origin;
  v38 = size;
  [(THiOSFlowToCTableViewController *)self th_determineLeftFrame:&origin rightFrame:&v37];
  [(THiOSFlowToCTableViewController *)self th_addChildViewController:self->_coverViewController withFrame:origin, v40];
  [(THiOSFlowToCTableViewController *)self th_addChildViewController:self->_flowToCViewController withFrame:v37, v38];
  v7 = v5;
  v36 = v5;
  v8 = [v5 safeAreaLayoutGuide];
  v9 = [v7 centerXAnchor];
  v35 = [v3 leftAnchor];
  v34 = [v8 leftAnchor];
  v32 = [v35 constraintEqualToAnchor:v34];
  v42[0] = v32;
  v31 = [v3 rightAnchor];
  v28 = v9;
  v30 = [v31 constraintEqualToAnchor:v9];
  v42[1] = v30;
  v33 = v3;
  v29 = [v3 topAnchor];
  v27 = [v8 topAnchor];
  v26 = [v29 constraintEqualToAnchor:v27];
  v42[2] = v26;
  v25 = [v3 bottomAnchor];
  v23 = [v8 bottomAnchor];
  v22 = [v25 constraintEqualToAnchor:v23];
  v42[3] = v22;
  v21 = [v4 leftAnchor];
  v20 = [v21 constraintEqualToAnchor:v9];
  v42[4] = v20;
  v19 = [v4 rightAnchor];
  v18 = [v8 rightAnchor];
  v10 = [v19 constraintEqualToAnchor:v18];
  v42[5] = v10;
  v24 = v4;
  v11 = [v4 topAnchor];
  v12 = [v8 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v42[6] = v13;
  v14 = [v4 bottomAnchor];
  v15 = [v8 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v42[7] = v16;
  v17 = [NSArray arrayWithObjects:v42 count:8];
  [NSLayoutConstraint activateConstraints:v17];

  [(THiOSFlowToCTableViewController *)self th_updateColorsForTheme];
}

- (void)setTheme:(id)a3
{
  objc_storeStrong(&self->_theme, a3);
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
  v4 = [(THiOSFlowToCTableViewController *)self viewIfLoaded];
  [v4 setBackgroundColor:v10];

  v5 = [(THBookCoverViewController *)self->_coverViewController view];
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

  v9 = [v5 layer];
  [v9 setFilters:v8];
}

- (void)th_determineLeftFrame:(CGRect *)a3 rightFrame:(CGRect *)a4
{
  v6 = [(THiOSFlowToCTableViewController *)self view];
  [v6 bounds];
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
  if (a3)
  {
    a3->origin.x = 0.0;
    a3->origin.y = 0.0;
    a3->size.width = v15;
    a3->size.height = Height;
  }

  if (a4)
  {
    a4->origin.x = MaxX;
    a4->origin.y = 0.0;
    a4->size.width = v15;
    a4->size.height = Height;
  }
}

- (void)th_addChildViewController:(id)a3 withFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v11 = [v9 view];
  [v9 willMoveToParentViewController:0];
  [v11 removeFromSuperview];
  [v9 removeFromParentViewController];
  [(THiOSFlowToCTableViewController *)self addChildViewController:v9];
  [v11 setFrame:{x, y, width, height}];
  v10 = [(THiOSFlowToCTableViewController *)self view];
  [v10 addSubview:v11];

  [v9 didMoveToParentViewController:self];
}

@end