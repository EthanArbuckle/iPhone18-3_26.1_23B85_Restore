@interface _UIOverlayWelcomeViewController
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation _UIOverlayWelcomeViewController

- (void)loadView
{
  v3 = [[_UIOverlayWelcomeView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(_UIOverlayWelcomeViewController *)self setWelcomeView:v3];

  v4 = [(_UIOverlayWelcomeViewController *)self welcomeView];
  [(_UIOverlayWelcomeViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = _UIOverlayWelcomeViewController;
  [(_UIOverlayWelcomeViewController *)&v7 viewDidLoad];
  v3 = [(_UIOverlayWelcomeViewController *)self welcomeView];
  v4 = [v3 dismissButton];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001EFC;
  v6[3] = &unk_100008388;
  v6[4] = self;
  v5 = [UIAction actionWithHandler:v6];
  [v4 addAction:v5 forControlEvents:0x2000];
}

@end