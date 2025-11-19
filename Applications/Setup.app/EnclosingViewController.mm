@interface EnclosingViewController
- (BOOL)hasBlackBackground;
- (BOOL)usesWhiteBackButton;
- (_TtC5Setup23EnclosingViewController)initWithCoder:(id)a3;
- (_TtC5Setup23EnclosingViewController)initWithEnclosedViewController:(id)a3 spinnerDelegate:(id)a4 overrideBackButton:(BOOL)a5;
- (_TtC5Setup23EnclosingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)customDescription;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation EnclosingViewController

- (_TtC5Setup23EnclosingViewController)initWithEnclosedViewController:(id)a3 spinnerDelegate:(id)a4 overrideBackButton:(BOOL)a5
{
  swift_getObjectType();
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = sub_100068AA0(v9, a4, a5, self);

  swift_unknownObjectRelease();
  return v10;
}

- (_TtC5Setup23EnclosingViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000681BC();
}

- (BOOL)hasBlackBackground
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong hasBlackBackground];
    swift_unknownObjectRelease();
    LOBYTE(Strong) = v3;
  }

  return Strong;
}

- (BOOL)usesWhiteBackButton
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  if ([Strong respondsToSelector:"usesWhiteBackButton"])
  {
    v4 = [v3 usesWhiteBackButton];
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000687BC(a3);
}

- (id)customDescription
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Setup23EnclosingViewController_enclosedViewController);
  v3 = self;
  v4 = [v2 description];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  return v4;
}

- (_TtC5Setup23EnclosingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end