@interface DeferredPageViewController
- (UINavigationItem)navigationItem;
- (_TtC27AppleMediaServicesUIDynamic26DeferredPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancelButtonAction;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DeferredPageViewController

- (UINavigationItem)navigationItem
{
  selfCopy = self;
  v3 = sub_1CA13365C();

  return v3;
}

- (void)loadView
{
  selfCopy = self;
  sub_1CA13372C();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1CA1338EC();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1CA133970();
}

- (void)cancelButtonAction
{
  selfCopy = self;
  sub_1CA134C54();
}

- (_TtC27AppleMediaServicesUIDynamic26DeferredPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1CA19C118();
  }

  bundleCopy = bundle;
  sub_1CA135380();
}

@end