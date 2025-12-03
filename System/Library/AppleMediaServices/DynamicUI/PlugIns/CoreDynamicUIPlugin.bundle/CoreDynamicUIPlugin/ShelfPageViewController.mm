@interface ShelfPageViewController
- (NSString)title;
- (UINavigationItem)navigationItem;
- (_TtC19CoreDynamicUIPlugin23ShelfPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation ShelfPageViewController

- (UINavigationItem)navigationItem
{
  selfCopy = self;
  v3 = sub_7B970();

  return v3;
}

- (NSString)title
{
  selfCopy = self;
  sub_7BAA8();
  v4 = v3;

  if (v4)
  {
    v5 = sub_8F5C4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setTitle:(id)title
{
  if (title)
  {
    v4 = sub_8F5F4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_7BC14(v4, v6);
}

- (void)loadView
{
  selfCopy = self;
  sub_7BD28();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_7BE08(change);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_7BEDC();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_7BFA8(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_7C090(disappear);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_7C188(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_7C2B0(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_7C458();
}

- (_TtC19CoreDynamicUIPlugin23ShelfPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_8F5F4();
  }

  bundleCopy = bundle;
  sub_7F728();
}

@end