@interface CarPlayDataManager
- (_TtC5Books18CarPlayDataManager)init;
- (void)dealloc;
- (void)player:(id)a3 audiobookDidChange:(id)a4;
- (void)player:(id)a3 failedWithError:(id)a4;
- (void)player:(id)a3 playbackRateDidChange:(float)a4;
- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5;
@end

@implementation CarPlayDataManager

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Books18CarPlayDataManager_player);
  v3 = self;
  [v2 removeObserver:v3];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for CarPlayDataManager();
  [(CarPlayDataManager *)&v4 dealloc];
}

- (_TtC5Books18CarPlayDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)player:(id)a3 audiobookDidChange:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  CarPlayDataManager.player(_:audiobookDidChange:)(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5
{
  if (a5 == 2)
  {
    v6 = self;
    sub_1006080B4();
  }
}

- (void)player:(id)a3 playbackRateDidChange:(float)a4
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
    v9 = self;
    v7 = [a3 precisionRates];
    sub_10000A7C4(0, &qword_100AD6750);
    v8 = sub_1007A25E4();

    sub_100308498(v8, a4);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

- (void)player:(id)a3 failedWithError:(id)a4
{
  v5 = (&self->super.isa + OBJC_IVAR____TtC5Books18CarPlayDataManager_lastBookAssetID);
  *v5 = 0;
  v5[1] = 0;
  v6 = a4;
  v7 = self;

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100308670();
    swift_unknownObjectRelease();
  }
}

@end