@interface SLSheetNavigationController
- (SLSheetNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)setDefaultNavigationBarStyle;
- (void)setSheetNavigationBarStyle;
- (void)viewDidLoad;
@end

@implementation SLSheetNavigationController

- (SLSheetNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SLSheetNavigationController;
  v4 = [(SLSheetNavigationController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(SLSheetNavigationController *)v4 _setPreferredNavigationBarPosition:2];
  }

  return v5;
}

- (void)loadView
{
  v20.receiver = self;
  v20.super_class = SLSheetNavigationController;
  [(SLSheetNavigationController *)&v20 loadView];
  view = [(SLSheetNavigationController *)self view];
  [view setOpaque:0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view2 = [(SLSheetNavigationController *)self view];
  [view2 setBackgroundColor:clearColor];

  view3 = [(SLSheetNavigationController *)self view];
  layer = [view3 layer];
  [layer setMasksToBounds:1];

  view4 = [(SLSheetNavigationController *)self view];
  layer2 = [view4 layer];
  [layer2 setCornerRadius:7.0];

  v10 = [objc_alloc(MEMORY[0x1E69DD370]) initWithStyle:2];
  v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v11 setOpaque:0];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v13 = [systemBackgroundColor colorWithAlphaComponent:0.6];
  [v11 setBackgroundColor:v13];

  view5 = [(SLSheetNavigationController *)self view];
  [view5 bounds];
  [v11 setFrame:?];

  [v11 setAutoresizingMask:18];
  view6 = [(SLSheetNavigationController *)self view];
  [view6 addSubview:v11];

  view7 = [(SLSheetNavigationController *)self view];
  [view7 sendSubviewToBack:v11];

  view8 = [(SLSheetNavigationController *)self view];
  [view8 bounds];
  [v10 setFrame:?];

  [v10 setAutoresizingMask:18];
  view9 = [(SLSheetNavigationController *)self view];
  [view9 addSubview:v10];

  view10 = [(SLSheetNavigationController *)self view];
  [view10 sendSubviewToBack:v10];

  [(SLSheetNavigationController *)self setSheetNavigationBarStyle];
}

- (void)setSheetNavigationBarStyle
{
  v12[1] = *MEMORY[0x1E69E9840];
  navigationBar = [(SLSheetNavigationController *)self navigationBar];
  v4 = [MEMORY[0x1E69DCAB8] socialFrameworkImageNamed:@"SLSheetNavBarBackgroundDefault"];
  [navigationBar setBackgroundImage:v4 forBarMetrics:0];

  navigationBar2 = [(SLSheetNavigationController *)self navigationBar];
  v6 = [MEMORY[0x1E69DCAB8] socialFrameworkImageNamed:@"SLSheetNavBarBackgroundLandscapeiPhone"];
  [navigationBar2 setBackgroundImage:v6 forBarMetrics:1];

  navigationBar3 = [(SLSheetNavigationController *)self navigationBar];
  [navigationBar3 setTranslucent:1];

  v11 = *MEMORY[0x1E69DB650];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v12[0] = labelColor;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  navigationBar4 = [(SLSheetNavigationController *)self navigationBar];
  [navigationBar4 setTitleTextAttributes:v9];
}

- (void)setDefaultNavigationBarStyle
{
  navigationBar = [(SLSheetNavigationController *)self navigationBar];
  [navigationBar setBackgroundImage:0 forBarMetrics:0];

  navigationBar2 = [(SLSheetNavigationController *)self navigationBar];
  [navigationBar2 setBackgroundImage:0 forBarMetrics:1];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = SLSheetNavigationController;
  [(SLSheetNavigationController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = SLSheetNavigationController;
  [(SLSheetNavigationController *)&v2 didReceiveMemoryWarning];
}

@end