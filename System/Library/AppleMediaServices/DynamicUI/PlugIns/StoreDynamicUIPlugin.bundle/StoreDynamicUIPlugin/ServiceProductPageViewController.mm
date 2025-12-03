@interface ServiceProductPageViewController
- (UINavigationItem)navigationItem;
- (_TtC20StoreDynamicUIPlugin32ServiceProductPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation ServiceProductPageViewController

- (UINavigationItem)navigationItem
{
  selfCopy = self;
  v3 = sub_1118F8();

  return v3;
}

- (void)loadView
{
  selfCopy = self;
  sub_1119C0();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_111AA4();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_111CDC();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_111DC4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_111EBC();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_111FA0(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_112140();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1121E8();
}

- (void)didReceiveMemoryWarning
{
  selfCopy = self;
  sub_1123C8();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1124A4(change);
}

- (_TtC20StoreDynamicUIPlugin32ServiceProductPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_13BB84();
  }

  bundleCopy = bundle;
  sub_113698();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1138E0();
}

@end