@interface LoadingViewController
- (UINavigationItem)navigationItem;
- (_TtC20StoreDynamicUIPlugin21LoadingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation LoadingViewController

- (UINavigationItem)navigationItem
{
  selfCopy = self;
  v3 = sub_BBF60();

  return v3;
}

- (void)loadView
{
  selfCopy = self;
  sub_BC024();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_BC138();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_BC1B8();
}

- (_TtC20StoreDynamicUIPlugin21LoadingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_13BB84();
  }

  bundleCopy = bundle;
  sub_BC7D0();
}

@end