@interface ASUIRootViewController
- (_TtC16AccessorySetupUI22ASUIRootViewController)initWithCoder:(id)a3;
- (_TtC16AccessorySetupUI22ASUIRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation ASUIRootViewController

- (_TtC16AccessorySetupUI22ASUIRootViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_pickingSession) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ASUIRootViewController();
  [(ASUIRootViewController *)&v2 viewDidLoad];
}

- (_TtC16AccessorySetupUI22ASUIRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end