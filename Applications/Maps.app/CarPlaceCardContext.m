@interface CarPlaceCardContext
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (_TtC4Maps19CarPlaceCardContext)init;
- (id)desiredCards;
- (id)personalizedItemSources;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)placeItemDidUpdateWithNote:(id)a3;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)setPlaceItem:(id)a3;
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

- (void)setPlaceItem:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps19CarPlaceCardContext_placeItem);
  *(self + OBJC_IVAR____TtC4Maps19CarPlaceCardContext_placeItem) = a3;
  v5 = a3;
  v6 = self;

  sub_10055A47C();
}

- (void)placeItemDidUpdateWithNote:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
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

- (void)configureCard:(id)a3 forKey:(id)a4
{
  if (a4)
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
  v9 = self;
  sub_10055AA54(a3, v6, v8);
  swift_unknownObjectRelease();
}

- (id)personalizedItemSources
{
  v2 = self;
  sub_10055ADB0();

  sub_100014C84(0, &qword_101909CF0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10055AF24(v6, v7);
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a3;
  v13[4] = sub_10055C290;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100039C64;
  v13[3] = &unk_101621630;
  v9 = _Block_copy(v13);
  v10 = a3;
  v11 = a4;
  v12 = self;

  [v11 addPreparation:v9];
  _Block_release(v9);
}

- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10055C174(v7);
}

- (_TtC4Maps19CarPlaceCardContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end