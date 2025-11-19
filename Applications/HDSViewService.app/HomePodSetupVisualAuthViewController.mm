@interface HomePodSetupVisualAuthViewController
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HomePodSetupVisualAuthViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10006D280();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10006D980(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10006E0B8(a3);
}

@end