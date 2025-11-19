@interface AUEQViewControllerBase
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AUEQViewControllerBase

- (void)viewDidLoad
{
  v2 = self;
  sub_237132240();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_237132664();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  sub_237133650();
}

@end