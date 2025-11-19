@interface ShelfPageViewController
- (NSString)title;
- (UINavigationItem)navigationItem;
- (_TtC19CoreDynamicUIPlugin23ShelfPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation ShelfPageViewController

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = sub_7B970();

  return v3;
}

- (NSString)title
{
  v2 = self;
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

- (void)setTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_8F5F4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_7BC14(v4, v6);
}

- (void)loadView
{
  v2 = self;
  sub_7BD28();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_7BE08(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_7BEDC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_7BFA8(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_7C090(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_7C188(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_7C2B0(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_7C458();
}

- (_TtC19CoreDynamicUIPlugin23ShelfPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_8F5F4();
  }

  v5 = a4;
  sub_7F728();
}

@end