@interface DockableEventContainerNavigationWrapper
- (_TtC9MobileCal39DockableEventContainerNavigationWrapper)initWithCoder:(id)a3;
- (_TtC9MobileCal39DockableEventContainerNavigationWrapper)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC9MobileCal39DockableEventContainerNavigationWrapper)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9MobileCal39DockableEventContainerNavigationWrapper)initWithRootViewController:(id)a3;
- (id)actionButtonSymbol;
- (id)eventForDockedView;
@end

@implementation DockableEventContainerNavigationWrapper

- (_TtC9MobileCal39DockableEventContainerNavigationWrapper)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)eventForDockedView
{
  v2 = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9MobileCal39DockableEventContainerNavigationWrapper_fullViewController) eventForDockedView];

  return v2;
}

- (id)actionButtonSymbol
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9MobileCal39DockableEventContainerNavigationWrapper_fullViewController);
  v3 = self;
  v4 = [v2 actionButtonSymbol];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  return v4;
}

- (_TtC9MobileCal39DockableEventContainerNavigationWrapper)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9MobileCal39DockableEventContainerNavigationWrapper)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9MobileCal39DockableEventContainerNavigationWrapper)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end