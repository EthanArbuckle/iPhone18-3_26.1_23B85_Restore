@interface SnoozeDurationViewModel
- (_TtC11MobileTimer23SnoozeDurationViewModel)init;
- (int64_t)maxSnoozeDurationInMinutes;
- (int64_t)minSnoozeDurationInMinutes;
- (int64_t)selectedDuration;
- (void)setIsEnabled:(BOOL)a3;
- (void)setIsPickerShown:(BOOL)a3;
- (void)setMaxSnoozeDurationInMinutes:(int64_t)a3;
- (void)setMinSnoozeDurationInMinutes:(int64_t)a3;
- (void)setSelectedDuration:(int64_t)a3;
@end

@implementation SnoozeDurationViewModel

- (int64_t)selectedDuration
{
  swift_getKeyPath();
  sub_100063BC0();
  v3 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel__selectedDuration;
  swift_beginAccess();
  v5 = *(&v3->super.isa + v4);

  return v5;
}

- (void)setSelectedDuration:(int64_t)a3
{
  v4 = self;
  sub_100063AC8(a3);
}

- (void)setIsEnabled:(BOOL)a3
{
  v4 = self;
  sub_10006431C(a3, &OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel__isEnabled);
}

- (void)setIsPickerShown:(BOOL)a3
{
  v4 = self;
  sub_10006431C(a3, &OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel__isPickerShown);
}

- (int64_t)maxSnoozeDurationInMinutes
{
  v3 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_maxSnoozeDurationInMinutes;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setMaxSnoozeDurationInMinutes:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_maxSnoozeDurationInMinutes;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)minSnoozeDurationInMinutes
{
  v3 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_minSnoozeDurationInMinutes;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setMinSnoozeDurationInMinutes:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC11MobileTimer23SnoozeDurationViewModel_minSnoozeDurationInMinutes;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (_TtC11MobileTimer23SnoozeDurationViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end