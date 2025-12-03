@interface CarPlayDataManager
- (_TtC5Books18CarPlayDataManager)init;
- (void)dealloc;
- (void)player:(id)player audiobookDidChange:(id)change;
- (void)player:(id)player failedWithError:(id)error;
- (void)player:(id)player playbackRateDidChange:(float)change;
- (void)player:(id)player stateDidChangeFrom:(int64_t)from to:(int64_t)to;
@end

@implementation CarPlayDataManager

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Books18CarPlayDataManager_player);
  selfCopy = self;
  [v2 removeObserver:selfCopy];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for CarPlayDataManager();
  [(CarPlayDataManager *)&v4 dealloc];
}

- (_TtC5Books18CarPlayDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)player:(id)player audiobookDidChange:(id)change
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  CarPlayDataManager.player(_:audiobookDidChange:)(player, change);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)player:(id)player stateDidChangeFrom:(int64_t)from to:(int64_t)to
{
  if (to == 2)
  {
    selfCopy = self;
    sub_1006080B4();
  }
}

- (void)player:(id)player playbackRateDidChange:(float)change
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
    selfCopy = self;
    precisionRates = [player precisionRates];
    sub_10000A7C4(0, &qword_100AD6750);
    v8 = sub_1007A25E4();

    sub_100308498(v8, change);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

- (void)player:(id)player failedWithError:(id)error
{
  v5 = (&self->super.isa + OBJC_IVAR____TtC5Books18CarPlayDataManager_lastBookAssetID);
  *v5 = 0;
  v5[1] = 0;
  errorCopy = error;
  selfCopy = self;

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100308670();
    swift_unknownObjectRelease();
  }
}

@end