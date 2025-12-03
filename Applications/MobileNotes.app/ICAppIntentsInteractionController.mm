@interface ICAppIntentsInteractionController
- (ICWindow)window;
- (_TtC11MobileNotes33ICAppIntentsInteractionController)init;
- (void)rootViewControllerDidChange:(id)change;
- (void)setWindow:(id)window;
@end

@implementation ICAppIntentsInteractionController

- (_TtC11MobileNotes33ICAppIntentsInteractionController)init
{
  ObjectType = swift_getObjectType();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100456854(_swiftEmptyArrayStorage);
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  *(self + OBJC_IVAR____TtC11MobileNotes33ICAppIntentsInteractionController_interactions) = v4;
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ICAppIntentsInteractionController *)&v6 init];
}

- (void)setWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_10000D3C0(window);
}

- (void)rootViewControllerDidChange:(id)change
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10001F848();

  (*(v5 + 8))(v7, v4);
}

- (ICWindow)window
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

@end