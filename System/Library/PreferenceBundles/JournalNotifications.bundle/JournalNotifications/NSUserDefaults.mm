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
  v3 = sub_C5444();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  if (v4)
  {
    v5 = sub_C5444();
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
  v4 = sub_C5444();
  [(NSUserDefaults *)selfCopy setBool:csCopy forKey:v4];

  v5 = sub_C5444();
  [(NSUserDefaults *)selfCopy setBool:csCopy forKey:v5];
}

- (void)setIsStreakReminderEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_873E0(enabled, &enum case for SettingsKey.isStreakReminderEnabled(_:), &enum case for SettingsKey.streakReminderHour(_:), &enum case for SettingsKey.streakReminderMinute(_:));
}

- (void)setIsJournalingScheduleEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_873E0(enabled, &enum case for SettingsKey.isJournalingScheduleEnabled(_:), &enum case for SettingsKey.journalingScheduleData(_:), &enum case for SettingsKey.journalingScheduleDataLegacy(_:));
}

- (NSData)journalingScheduleData
{
  v3 = sub_C40B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for SettingsKey.journalingScheduleData(_:), v3);
  selfCopy = self;
  sub_C40A4();
  (*(v4 + 8))(v6, v3);
  v8 = sub_C5444();

  v9 = [(NSUserDefaults *)selfCopy dataForKey:v8];

  if (v9)
  {
    v10 = sub_C3984();
    v12 = v11;

    v13.super.isa = sub_C3974().super.isa;
    sub_BF1C(v10, v12);
  }

  else
  {

    v13.super.isa = 0;
  }

  return v13.super.isa;
}

- (void)setJournalingScheduleData:(id)data
{
  dataCopy = data;
  if (data)
  {
    selfCopy = self;
    v5 = dataCopy;
    dataCopy = sub_C3984();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_87828();
  sub_1D580(dataCopy, v7);
}

@end