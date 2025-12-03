@interface DockableEventContainerNavigationWrapper
- (_TtC9MobileCal39DockableEventContainerNavigationWrapper)initWithCoder:(id)coder;
- (_TtC9MobileCal39DockableEventContainerNavigationWrapper)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC9MobileCal39DockableEventContainerNavigationWrapper)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9MobileCal39DockableEventContainerNavigationWrapper)initWithRootViewController:(id)controller;
- (id)actionButtonSymbol;
- (id)eventForDockedView;
@end

@implementation DockableEventContainerNavigationWrapper

- (_TtC9MobileCal39DockableEventContainerNavigationWrapper)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)eventForDockedView
{
  eventForDockedView = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9MobileCal39DockableEventContainerNavigationWrapper_fullViewController) eventForDockedView];

  return eventForDockedView;
}

- (id)actionButtonSymbol
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9MobileCal39DockableEventContainerNavigationWrapper_fullViewController);
  selfCopy = self;
  actionButtonSymbol = [v2 actionButtonSymbol];
  if (!actionButtonSymbol)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    actionButtonSymbol = String._bridgeToObjectiveC()();
  }

  return actionButtonSymbol;
}

- (_TtC9MobileCal39DockableEventContainerNavigationWrapper)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9MobileCal39DockableEventContainerNavigationWrapper)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9MobileCal39DockableEventContainerNavigationWrapper)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end