@interface RootNavigationErrorDisplayManager
- (_TtC9MobileCal33RootNavigationErrorDisplayManager)init;
- (_TtC9MobileCal33RootNavigationErrorDisplayManager)initWithDelegate:(id)delegate;
- (_TtP9MobileCal41RootNavigationErrorDisplayManagerDelegate_)delegate;
- (void)appDidBecomeActive;
- (void)appDidEnterBackground;
- (void)dealloc;
- (void)showNextItem;
- (void)start;
- (void)updateContentWith:(id)with;
- (void)updateNoErrorTextTo:(id)to;
@end

@implementation RootNavigationErrorDisplayManager

- (_TtC9MobileCal33RootNavigationErrorDisplayManager)initWithDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  v4 = sub_100004178(delegate);
  swift_unknownObjectRelease();
  return v4;
}

- (void)updateNoErrorTextTo:(id)to
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  RootNavigationErrorDisplayManager.updateNoErrorText(to:)(v8);
}

- (void)updateContentWith:(id)with
{
  sub_10000376C(0, &qword_100251328);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  RootNavigationErrorDisplayManager.updateContent(with:)(v4);
}

- (_TtP9MobileCal41RootNavigationErrorDisplayManagerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)dealloc
{
  selfCopy = self;
  sub_100166FAC();
  sub_100011DC8(0);
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for RootNavigationErrorDisplayManager();
  [(RootNavigationErrorDisplayManager *)&v3 dealloc];
}

- (void)start
{
  selfCopy = self;
  RootNavigationErrorDisplayManager.start()();
}

- (void)showNextItem
{
  selfCopy = self;
  sub_1001662F4();
}

- (void)appDidEnterBackground
{
  selfCopy = self;
  sub_100166C38();
}

- (void)appDidBecomeActive
{
  selfCopy = self;
  sub_100166ED8();
}

- (_TtC9MobileCal33RootNavigationErrorDisplayManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end