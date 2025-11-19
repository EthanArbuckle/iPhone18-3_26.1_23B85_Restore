@interface ICAppStoreRatingController
- (ICAppStoreRatingController)init;
- (NSArray)launchDates;
- (NSDate)lastRequestDate;
- (UIWindowScene)windowScene;
- (void)didEdit;
- (void)didInteract;
- (void)didLaunch;
- (void)didStopInteracting;
- (void)setDidRequestRating:(BOOL)a3;
- (void)setLastRequestDate:(id)a3;
- (void)updateTotalNoteCount:(int64_t)a3;
@end

@implementation ICAppStoreRatingController

- (UIWindowScene)windowScene
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDidRequestRating:(BOOL)a3
{
  v3 = a3;
  v5 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  *(self + OBJC_IVAR___ICAppStoreRatingController_didRequestRating) = v3;
  if (v3)
  {
    v8 = self;
    static Date.now.getter();
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
    sub_10049CBD8(v7);
  }
}

- (NSArray)launchDates
{
  v2 = self;
  sub_10049CDBC();

  type metadata accessor for Date();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSDate)lastRequestDate
{
  v3 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = self;
  sub_10049D030(v5);

  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (void)setLastRequestDate:(id)a3
{
  v5 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = self;
  sub_10049CBD8(v7);
}

- (void)didLaunch
{
  v2 = self;
  sub_10049C728();
}

- (void)didEdit
{
  v2 = self;
  sub_10049C48C();
}

- (void)didInteract
{
  v3 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = self;
  static Date.now.getter();
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = OBJC_IVAR___ICAppStoreRatingController_lastInteractionDate;
  swift_beginAccess();
  sub_10023A078(v5, v6 + v8);
  swift_endAccess();
  v9 = sub_10049D57C();
  [v9 requestFire];
}

- (void)updateTotalNoteCount:(int64_t)a3
{
  v4 = self;
  sub_10049C304(a3);
}

- (void)didStopInteracting
{
  v2 = self;
  sub_10049DE28();
}

- (ICAppStoreRatingController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end