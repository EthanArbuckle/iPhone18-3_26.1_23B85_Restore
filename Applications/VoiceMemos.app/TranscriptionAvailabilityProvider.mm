@interface TranscriptionAvailabilityProvider
+ (_TtC10VoiceMemos33TranscriptionAvailabilityProvider)shared;
+ (void)setShared:(id)shared;
- (BOOL)deviceIsSupported;
- (void)registerObserver:(id)observer;
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
  selfCopy = self;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = selfCopy;
  sub_100179578(0, 0, v4, &unk_100247080, v8);
}

- (BOOL)deviceIsSupported
{
  selfCopy = self;

  CurrentValueSubject.value.getter();

  return v4;
}

- (void)registerObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10000685C(observer);
  swift_unknownObjectRelease();
}

+ (void)setShared:(id)shared
{
  v3 = qword_1002CDE28;
  sharedCopy = shared;
  if (v3 != -1)
  {
    v6 = sharedCopy;
    swift_once();
    sharedCopy = v6;
  }

  v5 = qword_1002E8DC0;
  qword_1002E8DC0 = sharedCopy;
}

@end