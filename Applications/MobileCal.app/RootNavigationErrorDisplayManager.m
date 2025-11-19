@interface RootNavigationErrorDisplayManager
- (_TtC9MobileCal33RootNavigationErrorDisplayManager)init;
- (_TtC9MobileCal33RootNavigationErrorDisplayManager)initWithDelegate:(id)a3;
- (_TtP9MobileCal41RootNavigationErrorDisplayManagerDelegate_)delegate;
- (void)appDidBecomeActive;
- (void)appDidEnterBackground;
- (void)dealloc;
- (void)showNextItem;
- (void)start;
- (void)updateContentWith:(id)a3;
- (void)updateNoErrorTextTo:(id)a3;
@end

@implementation RootNavigationErrorDisplayManager

- (_TtC9MobileCal33RootNavigationErrorDisplayManager)initWithDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_100004178(a3);
  swift_unknownObjectRelease();
  return v4;
}

- (void)updateNoErrorTextTo:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  RootNavigationErrorDisplayManager.updateNoErrorText(to:)(v8);
}

- (void)updateContentWith:(id)a3
{
  sub_10000376C(0, &qword_100251328);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
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
  v2 = self;
  sub_100166FAC();
  sub_100011DC8(0);
  v3.receiver = v2;
  v3.super_class = type metadata accessor for RootNavigationErrorDisplayManager();
  [(RootNavigationErrorDisplayManager *)&v3 dealloc];
}

- (void)start
{
  v2 = self;
  RootNavigationErrorDisplayManager.start()();
}

- (void)showNextItem
{
  v2 = self;
  sub_1001662F4();
}

- (void)appDidEnterBackground
{
  v2 = self;
  sub_100166C38();
}

- (void)appDidBecomeActive
{
  v2 = self;
  sub_100166ED8();
}

- (_TtC9MobileCal33RootNavigationErrorDisplayManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end