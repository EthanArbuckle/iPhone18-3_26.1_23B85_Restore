@interface ServiceProductBadgedPageViewController
- (_TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation ServiceProductBadgedPageViewController

- (void)loadView
{
  v2 = self;
  sub_FC95C();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_FCA40();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  sub_FCC78();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = self;
  sub_FCFA0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  sub_FD084();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_FD168(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_FD308();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_FD3B0();
}

- (void)didReceiveMemoryWarning
{
  v2 = self;
  sub_FD518();
}

- (_TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_13BB84();
  }

  v5 = a4;
  sub_FDD4C();
}

@end