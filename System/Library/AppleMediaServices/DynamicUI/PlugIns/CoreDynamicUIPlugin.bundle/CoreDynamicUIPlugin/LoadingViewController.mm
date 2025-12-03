@interface LoadingViewController
- (UINavigationItem)navigationItem;
- (_TtC19CoreDynamicUIPlugin21LoadingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation LoadingViewController

- (UINavigationItem)navigationItem
{
  selfCopy = self;
  v3 = sub_4C730();

  return v3;
}

- (void)loadView
{
  selfCopy = self;
  sub_4C7F4();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_4C908();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_4C988();
}

- (_TtC19CoreDynamicUIPlugin21LoadingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_8F5F4();
  }

  bundleCopy = bundle;
  sub_4CFA0();
}

@end