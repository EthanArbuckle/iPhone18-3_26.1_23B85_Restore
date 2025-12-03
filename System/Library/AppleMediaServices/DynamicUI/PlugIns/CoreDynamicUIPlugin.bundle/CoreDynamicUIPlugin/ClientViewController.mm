@interface ClientViewController
- (UINavigationItem)navigationItem;
- (_TtC19CoreDynamicUIPlugin20ClientViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancelButtonAction;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ClientViewController

- (UINavigationItem)navigationItem
{
  selfCopy = self;
  v3 = sub_28034();

  return v3;
}

- (void)loadView
{
  selfCopy = self;
  sub_28100();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_281E0();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_28260();
}

- (void)cancelButtonAction
{
  selfCopy = self;
  sub_28DBC();
}

- (_TtC19CoreDynamicUIPlugin20ClientViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_8F5F4();
  }

  bundleCopy = bundle;
  sub_294EC();
}

@end