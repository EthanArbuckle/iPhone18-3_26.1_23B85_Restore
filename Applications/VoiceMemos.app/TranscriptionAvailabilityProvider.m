@interface TranscriptionAvailabilityProvider
+ (_TtC10VoiceMemos33TranscriptionAvailabilityProvider)shared;
+ (void)setShared:(id)a3;
- (BOOL)deviceIsSupported;
- (void)registerObserver:(id)a3;
- (void)updateDeviceIsSupported;
@end

@implementation TranscriptionAvailabilityProvider

+ (_TtC10VoiceMemos33TranscriptionAvailabilityProvider)shared
{
  if (qword_1002CDE28 != -1)
  {
    swift_once();
  }

  v3 = qword_1002E8DC0;

  return v3;
}

- (void)updateDeviceIsSupported
{
  sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = self;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_100179578(0, 0, v4, &unk_100247080, v8);
}

- (BOOL)deviceIsSupported
{
  v2 = self;

  CurrentValueSubject.value.getter();

  return v4;
}

- (void)registerObserver:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10000685C(a3);
  swift_unknownObjectRelease();
}

+ (void)setShared:(id)a3
{
  v3 = qword_1002CDE28;
  v4 = a3;
  if (v3 != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  v5 = qword_1002E8DC0;
  qword_1002E8DC0 = v4;
}

@end