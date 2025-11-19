@interface SidebarPopover
- (_TtC17ContinuityDisplay14SidebarPopover)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SidebarPopover

- (void)loadView
{
  v2 = self;
  sub_10001F708();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10001FCB0(a3);
}

- (_TtC17ContinuityDisplay14SidebarPopover)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_100057A50();
  }

  v5 = a4;
  sub_10001FDC8();
}

@end