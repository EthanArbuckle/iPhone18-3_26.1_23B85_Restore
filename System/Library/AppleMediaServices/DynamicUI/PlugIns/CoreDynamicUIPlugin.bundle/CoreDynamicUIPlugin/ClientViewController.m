@interface ClientViewController
- (UINavigationItem)navigationItem;
- (_TtC19CoreDynamicUIPlugin20ClientViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancelButtonAction;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ClientViewController

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = sub_28034();

  return v3;
}

- (void)loadView
{
  v2 = self;
  sub_28100();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_281E0();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_28260();
}

- (void)cancelButtonAction
{
  v2 = self;
  sub_28DBC();
}

- (_TtC19CoreDynamicUIPlugin20ClientViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_8F5F4();
  }

  v5 = a4;
  sub_294EC();
}

@end