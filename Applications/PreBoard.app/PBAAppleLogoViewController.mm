@interface PBAAppleLogoViewController
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation PBAAppleLogoViewController

- (void)loadView
{
  v3 = [[SBUIAppleLogoView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(PBAAppleLogoViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PBAAppleLogoViewController;
  [(PBAAppleLogoViewController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = PBAAppleLogoViewController;
  [(PBAAppleLogoViewController *)&v2 didReceiveMemoryWarning];
}

@end