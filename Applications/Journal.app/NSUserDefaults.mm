@interface NSUserDefaults
- (BOOL)hasSeenBothHealthTCCs;
- (NSData)journalingScheduleData;
- (void)setHasSeenBothHealthTCCs:(BOOL)cs;
- (void)setIsJournalingScheduleEnabled:(BOOL)enabled;
- (void)setIsStreakReminderEnabled:(BOOL)enabled;
- (void)setJournalingScheduleData:(id)data;
@end

@implementation NSUserDefaults

- (BOOL)hasSeenBothHealthTCCs
{
  selfCopy = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [(NSUserDefaults *)selfCopy BOOLForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setHasSeenBothHealthTCCs:(BOOL)cs
{
  csCopy = cs;
  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)selfCopy setBool:csCopy forKey:v4];

  v5 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)selfCopy setBool:csCopy forKey:v5];
}

- (void)setIsStreakReminderEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_100554398(enabled, &enum case for SettingsKey.isStreakReminderEnabled(_:), &enum case for SettingsKey.streakReminderHour(_:), &enum case for SettingsKey.streakReminderMinute(_:));
}

- (void)setIsJournalingScheduleEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_100554398(enabled, &enum case for SettingsKey.isJournalingScheduleEnabled(_:), &enum case for SettingsKey.journalingScheduleData(_:), &enum case for SettingsKey.journalingScheduleDataLegacy(_:));
}

- (NSData)journalingScheduleData
{
  v3 = type metadata accessor for SettingsKey();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for SettingsKey.journalingScheduleData(_:), v3, v5);
  selfCopy = self;
  SettingsKey.rawValue.getter();
  (*(v4 + 8))(v7, v3);
  v9 = String._bridgeToObjectiveC()();

  v10 = [(NSUserDefaults *)selfCopy dataForKey:v9];

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

- (void)setJournalingScheduleData:(id)data
{
  dataCopy = data;
  if (data)
  {
    selfCopy = self;
    v5 = dataCopy;
    dataCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_100554E20();
  sub_10003A5C8(dataCopy, v7);
}

@end