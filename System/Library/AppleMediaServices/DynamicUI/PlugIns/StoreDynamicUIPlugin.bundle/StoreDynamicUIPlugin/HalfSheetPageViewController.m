@interface HalfSheetPageViewController
- (UINavigationItem)navigationItem;
- (_TtC20StoreDynamicUIPlugin27HalfSheetPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation HalfSheetPageViewController

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = sub_B18A4();

  return v3;
}

- (void)loadView
{
  v2 = self;
  sub_B196C();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_B1A50();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  sub_B20AC();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = self;
  sub_B2180();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  sub_B2264();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_B2348(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_B24E8();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_B2590();
}

- (void)didReceiveMemoryWarning
{
  v2 = self;
  sub_B26E8();
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_B27C4();
}

- (_TtC20StoreDynamicUIPlugin27HalfSheetPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_13BB84();
  }

  v5 = a4;
  sub_B31A0();
}

@end