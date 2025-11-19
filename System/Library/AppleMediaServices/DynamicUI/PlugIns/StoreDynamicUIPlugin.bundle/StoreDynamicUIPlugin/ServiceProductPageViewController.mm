@interface ServiceProductPageViewController
- (UINavigationItem)navigationItem;
- (_TtC20StoreDynamicUIPlugin32ServiceProductPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation ServiceProductPageViewController

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = sub_1118F8();

  return v3;
}

- (void)loadView
{
  v2 = self;
  sub_1119C0();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_111AA4();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  sub_111CDC();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = self;
  sub_111DC4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  sub_111EBC();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_111FA0(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_112140();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1121E8();
}

- (void)didReceiveMemoryWarning
{
  v2 = self;
  sub_1123C8();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1124A4(a3);
}

- (_TtC20StoreDynamicUIPlugin32ServiceProductPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_13BB84();
  }

  v5 = a4;
  sub_113698();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1138E0();
}

@end