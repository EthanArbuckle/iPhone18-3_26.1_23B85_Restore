@interface FullSheetOverlayPageViewController
- (UINavigationItem)navigationItem;
- (_TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)dismissButtonPressed:(id)a3;
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

@implementation FullSheetOverlayPageViewController

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = sub_A72CC();

  return v3;
}

- (void)loadView
{
  v2 = self;
  sub_A7394();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_A746C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  sub_A76A4();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = self;
  sub_A778C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  sub_A7884();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_A7968(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_A7B00();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_A7BA8();
}

- (void)didReceiveMemoryWarning
{
  v2 = self;
  sub_A7CB8();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_A7D94(a3);
}

- (void)dismissButtonPressed:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_13BF54();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_A8894();

  sub_928C(v6, &unk_1A06F0);
}

- (_TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_13BB84();
  }

  v5 = a4;
  sub_A8CBC();
}

@end