@interface NSUserDefaults
- (BOOL)hasSeenBothHealthTCCs;
- (NSData)journalingScheduleData;
- (void)setHasSeenBothHealthTCCs:(BOOL)a3;
- (void)setIsJournalingScheduleEnabled:(BOOL)a3;
- (void)setIsStreakReminderEnabled:(BOOL)a3;
- (void)setJournalingScheduleData:(id)a3;
@end

@implementation NSUserDefaults

- (BOOL)hasSeenBothHealthTCCs
{
  v2 = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [(NSUserDefaults *)v2 BOOLForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setHasSeenBothHealthTCCs:(BOOL)a3
{
  v3 = a3;
  v6 = self;
  v4 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)v6 setBool:v3 forKey:v4];

  v5 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)v6 setBool:v3 forKey:v5];
}

- (void)setIsStreakReminderEnabled:(BOOL)a3
{
  v4 = self;
  sub_100554398(a3, &enum case for SettingsKey.isStreakReminderEnabled(_:), &enum case for SettingsKey.streakReminderHour(_:), &enum case for SettingsKey.streakReminderMinute(_:));
}

- (void)setIsJournalingScheduleEnabled:(BOOL)a3
{
  v4 = self;
  sub_100554398(a3, &enum case for SettingsKey.isJournalingScheduleEnabled(_:), &enum case for SettingsKey.journalingScheduleData(_:), &enum case for SettingsKey.journalingScheduleDataLegacy(_:));
}

- (NSData)journalingScheduleData
{
  v3 = type metadata accessor for SettingsKey();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for SettingsKey.journalingScheduleData(_:), v3, v5);
  v8 = self;
  SettingsKey.rawValue.getter();
  (*(v4 + 8))(v7, v3);
  v9 = String._bridgeToObjectiveC()();

  v10 = [(NSUserDefaults *)v8 dataForKey:v9];

  if (v10)
  {
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000340DC(v11, v13);
  }

  else
  {

    v14.super.isa = 0;
  }

  return v14.super.isa;
}

- (void)setJournalingScheduleData:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = self;
    v5 = v3;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v8 = self;
    v7 = 0xF000000000000000;
  }

  sub_100554E20();
  sub_10003A5C8(v3, v7);
}

@end