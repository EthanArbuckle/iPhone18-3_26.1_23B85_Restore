@interface PersonalizationTransparencyPageViewController
- (_TtC20ProductPageExtension45PersonalizationTransparencyPageViewController)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension45PersonalizationTransparencyPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation PersonalizationTransparencyPageViewController

- (_TtC20ProductPageExtension45PersonalizationTransparencyPageViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension45PersonalizationTransparencyPageViewController_overlayViewController) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(PersonalizationTransparencyPageViewController *)&v3 viewDidLoad];
  sub_100760C9C();
}

- (_TtC20ProductPageExtension45PersonalizationTransparencyPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end