@interface ArticleContainerViewController
- (UIViewController)childViewControllerForStatusBarHidden;
- (_TtC20ProductPageExtension30ArticleContainerViewController)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension30ArticleContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation ArticleContainerViewController

- (_TtC20ProductPageExtension30ArticleContainerViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_allowTraitCollectionOverrides) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_previousShouldOverrideTraitCollections) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1005BA830();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1005BABBC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(ArticleContainerViewController *)&v6 traitCollectionDidChange:v4];
  sub_1005BA960();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(ArticleContainerViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (UIViewController)childViewControllerForStatusBarHidden
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_wrapperViewController) topViewController];

  return v2;
}

- (_TtC20ProductPageExtension30ArticleContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end