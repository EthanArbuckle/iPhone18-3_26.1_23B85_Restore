@interface NoiseAvailability
- (_TtC16HearingAppPlugin17NoiseAvailability)init;
- (void)dealloc;
- (void)pairedDevicesDidUpdate;
@end

@implementation NoiseAvailability

- (void)dealloc
{
  v2 = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, v2);

  v4.receiver = v2;
  v4.super_class = type metadata accessor for NoiseAvailability();
  [(NoiseAvailability *)&v4 dealloc];
}

- (void)pairedDevicesDidUpdate
{
  sub_29D5EA87C(0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v14 - v10;
  v12 = self;
  sub_29D5E9DC8(v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D5EA900(v11, v8);
  v13 = v12;
  sub_29D65F8E4();
  sub_29D5EA964(v11);
  sub_29D5E9FC0();
}

- (_TtC16HearingAppPlugin17NoiseAvailability)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end