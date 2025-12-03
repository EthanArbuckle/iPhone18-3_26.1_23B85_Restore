@interface BradycardiaFeatureStatusAvailability
- (void)heartRhythmAvailabilityDidUpdate;
- (void)wristDetectionSettingManagerDidObserveWristDetectChange:(id)change;
@end

@implementation BradycardiaFeatureStatusAvailability

- (void)heartRhythmAvailabilityDidUpdate
{
  sub_29D6D278C(0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v11 - v9;

  sub_29D9314F0(v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D700C8C(v10, v7);
  sub_29D9383D8();
  sub_29D700CF0(v10);
}

- (void)wristDetectionSettingManagerDidObserveWristDetectChange:(id)change
{
  sub_29D6D278C(0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v12 - v10;

  sub_29D9314F0(v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D700C8C(v11, v8);
  sub_29D9383D8();
  sub_29D700CF0(v11);
}

@end