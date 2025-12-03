@interface FullSheetOverlayPageViewController
- (UINavigationItem)navigationItem;
- (_TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveMemoryWarning;
- (void)dismissButtonPressed:(id)pressed;
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

@implementation FullSheetOverlayPageViewController

- (UINavigationItem)navigationItem
{
  selfCopy = self;
  v3 = sub_A72CC();

  return v3;
}

- (void)loadView
{
  selfCopy = self;
  sub_A7394();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_A746C();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_A76A4();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_A778C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_A7884();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_A7968(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_A7B00();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_A7BA8();
}

- (void)didReceiveMemoryWarning
{
  selfCopy = self;
  sub_A7CB8();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_A7D94(change);
}

- (void)dismissButtonPressed:(id)pressed
{
  if (pressed)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_13BF54();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_A8894();

  sub_928C(v6, &unk_1A06F0);
}

- (_TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_13BB84();
  }

  bundleCopy = bundle;
  sub_A8CBC();
}

@end