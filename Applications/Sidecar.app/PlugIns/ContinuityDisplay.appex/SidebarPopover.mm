@interface SidebarPopover
- (_TtC17ContinuityDisplay14SidebarPopover)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SidebarPopover

- (void)loadView
{
  selfCopy = self;
  sub_10001F708();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10001FCB0(appear);
}

- (_TtC17ContinuityDisplay14SidebarPopover)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_100057A50();
  }

  bundleCopy = bundle;
  sub_10001FDC8();
}

@end