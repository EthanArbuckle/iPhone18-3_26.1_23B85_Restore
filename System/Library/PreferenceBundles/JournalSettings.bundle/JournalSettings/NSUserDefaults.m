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
  v3 = sub_90550();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  if (v4)
  {
    v5 = sub_90550();
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
  v4 = sub_90550();
  [(NSUserDefaults *)v6 setBool:v3 forKey:v4];

  v5 = sub_90550();
  [(NSUserDefaults *)v6 setBool:v3 forKey:v5];
}

- (void)setIsStreakReminderEnabled:(BOOL)a3
{
  v4 = self;
  sub_82F80(a3, &enum case for SettingsKey.isStreakReminderEnabled(_:), &enum case for SettingsKey.streakReminderHour(_:), &enum case for SettingsKey.streakReminderMinute(_:));
}

- (void)setIsJournalingScheduleEnabled:(BOOL)a3
{
  v4 = self;
  sub_82F80(a3, &enum case for SettingsKey.isJournalingScheduleEnabled(_:), &enum case for SettingsKey.journalingScheduleData(_:), &enum case for SettingsKey.journalingScheduleDataLegacy(_:));
}

- (NSData)journalingScheduleData
{
  v3 = sub_8F550();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for SettingsKey.journalingScheduleData(_:), v3);
  v7 = self;
  sub_8F540();
  (*(v4 + 8))(v6, v3);
  v8 = sub_90550();

  v9 = [(NSUserDefaults *)v7 dataForKey:v8];

  if (v9)
  {
    v10 = sub_8F030();
    v12 = v11;

    v13.super.isa = sub_8F020().super.isa;
    sub_17DA0(v10, v12);
  }

  else
  {

    v13.super.isa = 0;
  }

  return v13.super.isa;
}

- (void)setJournalingScheduleData:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = self;
    v5 = v3;
    v3 = sub_8F030();
    v7 = v6;
  }

  else
  {
    v8 = self;
    v7 = 0xF000000000000000;
  }

  sub_83A2C();
  sub_41B24(v3, v7);
}

@end