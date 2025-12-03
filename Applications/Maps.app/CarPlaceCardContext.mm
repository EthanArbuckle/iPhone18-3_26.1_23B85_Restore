@interface CarPlaceCardContext
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (_TtC4Maps19CarPlaceCardContext)init;
- (id)desiredCards;
- (id)personalizedItemSources;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)configureCard:(id)card forKey:(id)key;
- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)placeItemDidUpdateWithNote:(id)note;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)setPlaceItem:(id)item;
@end

@implementation CarPlaceCardContext

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSArray)carFocusOrderSequences
{
  sub_1000CE6B8(&qword_101908400);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E47B0;
  *(v2 + 32) = [objc_opt_self() defaultSequence];
  sub_100014C84(0, &qword_101926EC0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setPlaceItem:(id)item
{
  v4 = *(self + OBJC_IVAR____TtC4Maps19CarPlaceCardContext_placeItem);
  *(self + OBJC_IVAR____TtC4Maps19CarPlaceCardContext_placeItem) = item;
  itemCopy = item;
  selfCopy = self;

  sub_10055A47C();
}

- (void)placeItemDidUpdateWithNote:(id)note
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10055A7F8();

  (*(v5 + 8))(v7, v4);
}

- (id)desiredCards
{
  sub_1000CE6B8(&qword_101909BF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E1D30;
  *(v2 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v2 + 40) = v3;
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)configureCard:(id)card forKey:(id)key
{
  if (key)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10055AA54(card, v6, v8);
  swift_unknownObjectRelease();
}

- (id)personalizedItemSources
{
  selfCopy = self;
  sub_10055ADB0();

  sub_100014C84(0, &qword_101909CF0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  selfCopy = self;
  sub_10055AF24(controllerCopy, animationCopy);
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = controller;
  v13[4] = sub_10055C290;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100039C64;
  v13[3] = &unk_101621630;
  v9 = _Block_copy(v13);
  controllerCopy = controller;
  animationCopy = animation;
  selfCopy = self;

  [animationCopy addPreparation:v9];
  _Block_release(v9);
}

- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  selfCopy = self;
  sub_10055C174(animationCopy);
}

- (_TtC4Maps19CarPlaceCardContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end