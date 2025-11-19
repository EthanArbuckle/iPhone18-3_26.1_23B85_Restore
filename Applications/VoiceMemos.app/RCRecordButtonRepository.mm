@interface RCRecordButtonRepository
- (BOOL)animationsAreDisabled;
- (BOOL)isEnabled;
- (_TtC10VoiceMemos24RCRecordButtonRepository)init;
- (int64_t)state;
- (unint64_t)trackState;
- (void)setAnimationsAreDisabled:(BOOL)a3;
- (void)setIsEnabled:(BOOL)a3;
- (void)setState:(int64_t)a3;
- (void)setTrackState:(unint64_t)a3;
@end

@implementation RCRecordButtonRepository

- (_TtC10VoiceMemos24RCRecordButtonRepository)init
{
  v5 = 0;
  v6 = 0;
  v7 = 1;
  sub_1000C773C(&qword_1002CFD90);
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos24RCRecordButtonRepository_modelSubject) = CurrentValueSubject.init(_:)();
  LOBYTE(v5) = 0;
  sub_1000C773C(&qword_1002CFD98);
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos24RCRecordButtonRepository_animationsAreDisabledSubject) = CurrentValueSubject.init(_:)();
  v4.receiver = self;
  v4.super_class = type metadata accessor for RCRecordButtonRepository();
  return [(RCRecordButtonRepository *)&v4 init];
}

- (void)setState:(int64_t)a3
{
  v3 = self;
  CurrentValueSubject.value.getter();
  CurrentValueSubject.value.setter();
}

- (void)setIsEnabled:(BOOL)a3
{
  v3 = self;
  CurrentValueSubject.value.getter();
  CurrentValueSubject.value.setter();
}

- (int64_t)state
{
  v2 = self;
  CurrentValueSubject.value.getter();

  return v4;
}

- (unint64_t)trackState
{
  v2 = self;
  CurrentValueSubject.value.getter();

  return v4;
}

- (void)setTrackState:(unint64_t)a3
{
  v3 = self;
  CurrentValueSubject.value.getter();
  CurrentValueSubject.value.setter();
}

- (BOOL)isEnabled
{
  v2 = self;
  CurrentValueSubject.value.getter();

  return v4;
}

- (BOOL)animationsAreDisabled
{
  v2 = self;
  CurrentValueSubject.value.getter();

  return v4;
}

- (void)setAnimationsAreDisabled:(BOOL)a3
{
  v3 = self;
  CurrentValueSubject.value.setter();
}

@end