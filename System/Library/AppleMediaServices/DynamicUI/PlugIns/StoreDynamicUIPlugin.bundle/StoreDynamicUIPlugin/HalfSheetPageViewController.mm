@interface HalfSheetPageViewController
- (UINavigationItem)navigationItem;
- (_TtC20StoreDynamicUIPlugin27HalfSheetPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation HalfSheetPageViewController

- (UINavigationItem)navigationItem
{
  selfCopy = self;
  v3 = sub_B18A4();

  return v3;
}

- (void)loadView
{
  selfCopy = self;
  sub_B196C();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_B1A50();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_B20AC();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_B2180();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_B2264();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_B2348(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_B24E8();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_B2590();
}

- (void)didReceiveMemoryWarning
{
  selfCopy = self;
  sub_B26E8();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_B27C4();
}

- (_TtC20StoreDynamicUIPlugin27HalfSheetPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_13BB84();
  }

  bundleCopy = bundle;
  sub_B31A0();
}

@end