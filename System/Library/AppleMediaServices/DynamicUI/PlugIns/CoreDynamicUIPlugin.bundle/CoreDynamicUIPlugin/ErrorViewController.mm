@interface ErrorViewController
- (UINavigationItem)navigationItem;
- (_TtC19CoreDynamicUIPlugin19ErrorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)airplaneModeInquiryDidObserveChange:(id)change;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ErrorViewController

- (UINavigationItem)navigationItem
{
  selfCopy = self;
  v3 = sub_3DE94();

  return v3;
}

- (void)loadView
{
  selfCopy = self;
  sub_3DF6C();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_3E7D4();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_3E858();
}

- (_TtC19CoreDynamicUIPlugin19ErrorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_8F5F4();
  }

  bundleCopy = bundle;
  sub_40458();
}

- (void)airplaneModeInquiryDidObserveChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_404D4();
}

@end