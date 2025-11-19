@interface HeartPromotionAvailability
- (_TtC5Heart26HeartPromotionAvailability)init;
- (void)dealloc;
- (void)heartRhythmAvailabilityDidUpdate;
@end

@implementation HeartPromotionAvailability

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_heartRhythmAvailability);
  v3 = self;
  [v2 removeHeartRhythmAvailabilityObserver_];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for HeartPromotionAvailability();
  [(HeartPromotionAvailability *)&v4 dealloc];
}

- (_TtC5Heart26HeartPromotionAvailability)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)heartRhythmAvailabilityDidUpdate
{
  v2 = self;
  sub_29D8856E8();
}

@end