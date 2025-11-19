@interface IntentPerformer
- (_TtC8Announce15IntentPerformer)init;
@end

@implementation IntentPerformer

- (_TtC8Announce15IntentPerformer)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8Announce15IntentPerformer_localPlaybackSession) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8Announce15IntentPerformer____lazy_storage___playbackSessionDelegate) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8Announce15IntentPerformer_announce) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8Announce15IntentPerformer____lazy_storage___announceDelegate) = 0;
  v3 = OBJC_IVAR____TtC8Announce15IntentPerformer____lazy_storage___logger;
  v4 = sub_223800FA0();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for IntentPerformer();
  return [(IntentPerformer *)&v6 init];
}

@end