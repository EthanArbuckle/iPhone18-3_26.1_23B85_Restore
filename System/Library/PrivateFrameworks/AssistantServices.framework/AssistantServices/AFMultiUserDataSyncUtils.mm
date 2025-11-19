@interface AFMultiUserDataSyncUtils
+ (id)localTime;
+ (id)retrieveAudioAppSignals;
+ (void)storeAudioAppSignals:(id)a3;
@end

@implementation AFMultiUserDataSyncUtils

+ (id)retrieveAudioAppSignals
{
  v3 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = [a1 suiteName];
  v5 = [v3 initWithSuiteName:v4];

  v6 = [a1 localTime];
  v7 = [v6 description];
  v8 = [a1 audioAppSignalsLastSyncTimestampKey];
  [v5 setObject:v7 forKey:v8];

  v9 = [a1 audioAppSignalsDataKey];
  v10 = [v5 dataForKey:v9];

  return v10;
}

+ (id)localTime
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  v4 = [MEMORY[0x1E695DFE8] localTimeZone];
  v5 = [v3 secondsFromGMTForDate:v2];
  v6 = ([v4 secondsFromGMTForDate:v2] - v5);
  v7 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v2 sinceDate:v6];

  return v7;
}

+ (void)storeAudioAppSignals:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E695E000];
    v5 = a3;
    v6 = [v4 alloc];
    v7 = [a1 suiteName];
    v12 = [v6 initWithSuiteName:v7];

    v8 = [a1 audioAppSignalsDataKey];
    [v12 setObject:v5 forKey:v8];

    v9 = [a1 localTime];
    v10 = [v9 description];
    v11 = [a1 audioAppSignalsTimestampKey];
    [v12 setObject:v10 forKey:v11];
  }
}

@end