@interface HomePodSetupVisualAuthViewController
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HomePodSetupVisualAuthViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10006D280();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10006D980(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10006E0B8(disappear);
}

@end