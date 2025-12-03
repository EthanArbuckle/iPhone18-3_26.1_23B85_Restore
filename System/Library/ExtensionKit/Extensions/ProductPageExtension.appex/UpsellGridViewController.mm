@interface UpsellGridViewController
- (_TtC20ProductPageExtension24UpsellGridViewController)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension24UpsellGridViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation UpsellGridViewController

- (_TtC20ProductPageExtension24UpsellGridViewController)initWithCoder:(id)coder
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  if (([(UpsellGridViewController *)selfCopy isViewLoaded]& 1) == 0)
  {
    [(UpsellGridViewController *)selfCopy setView:*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension24UpsellGridViewController_gridView)];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(UpsellGridViewController *)&v5 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    sub_100760C9C();
  }

  else
  {
    __break(1u);
  }
}

- (_TtC20ProductPageExtension24UpsellGridViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end