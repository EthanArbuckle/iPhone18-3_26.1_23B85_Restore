@interface EnclosingViewController
- (BOOL)hasBlackBackground;
- (BOOL)usesWhiteBackButton;
- (_TtC5Setup23EnclosingViewController)initWithCoder:(id)coder;
- (_TtC5Setup23EnclosingViewController)initWithEnclosedViewController:(id)controller spinnerDelegate:(id)delegate overrideBackButton:(BOOL)button;
- (_TtC5Setup23EnclosingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)customDescription;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation EnclosingViewController

- (_TtC5Setup23EnclosingViewController)initWithEnclosedViewController:(id)controller spinnerDelegate:(id)delegate overrideBackButton:(BOOL)button
{
  swift_getObjectType();
  controllerCopy = controller;
  swift_unknownObjectRetain();
  v10 = sub_100068AA0(controllerCopy, delegate, button, self);

  swift_unknownObjectRelease();
  return v10;
}

- (_TtC5Setup23EnclosingViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000681BC();
}

- (BOOL)hasBlackBackground
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    hasBlackBackground = [Strong hasBlackBackground];
    swift_unknownObjectRelease();
    LOBYTE(Strong) = hasBlackBackground;
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
    usesWhiteBackButton = [v3 usesWhiteBackButton];
  }

  else
  {
    usesWhiteBackButton = 0;
  }

  swift_unknownObjectRelease();
  return usesWhiteBackButton;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000687BC(appear);
}

- (id)customDescription
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Setup23EnclosingViewController_enclosedViewController);
  selfCopy = self;
  v4 = [v2 description];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  return v4;
}

- (_TtC5Setup23EnclosingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end