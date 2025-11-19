@interface PersonalizationTransparencyPageViewController
- (_TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation PersonalizationTransparencyPageViewController

- (_TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController_overlayViewController) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(PersonalizationTransparencyPageViewController *)&v3 viewDidLoad];
  sub_75A160();
}

- (_TtC18ASMessagesProvider45PersonalizationTransparencyPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end