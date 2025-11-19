@interface ErrorViewController
- (UINavigationItem)navigationItem;
- (_TtC19CoreDynamicUIPlugin19ErrorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)airplaneModeInquiryDidObserveChange:(id)a3;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ErrorViewController

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = sub_3DE94();

  return v3;
}

- (void)loadView
{
  v2 = self;
  sub_3DF6C();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_3E7D4();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_3E858();
}

- (_TtC19CoreDynamicUIPlugin19ErrorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_8F5F4();
  }

  v5 = a4;
  sub_40458();
}

- (void)airplaneModeInquiryDidObserveChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_404D4();
}

@end