@interface AFMultiUserDataSyncUtils
+ (id)localTime;
+ (id)retrieveAudioAppSignals;
+ (void)storeAudioAppSignals:(id)signals;
@end

@implementation AFMultiUserDataSyncUtils

+ (id)retrieveAudioAppSignals
{
  v3 = objc_alloc(MEMORY[0x1E695E000]);
  suiteName = [self suiteName];
  v5 = [v3 initWithSuiteName:suiteName];

  localTime = [self localTime];
  v7 = [localTime description];
  audioAppSignalsLastSyncTimestampKey = [self audioAppSignalsLastSyncTimestampKey];
  [v5 setObject:v7 forKey:audioAppSignalsLastSyncTimestampKey];

  audioAppSignalsDataKey = [self audioAppSignalsDataKey];
  v10 = [v5 dataForKey:audioAppSignalsDataKey];

  return v10;
}

+ (id)localTime
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v5 = [v3 secondsFromGMTForDate:date];
  v6 = ([localTimeZone secondsFromGMTForDate:date] - v5);
  v7 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:date sinceDate:v6];

  return v7;
}

+ (void)storeAudioAppSignals:(id)signals
{
  if (signals)
  {
    v4 = MEMORY[0x1E695E000];
    signalsCopy = signals;
    v6 = [v4 alloc];
    suiteName = [self suiteName];
    v12 = [v6 initWithSuiteName:suiteName];

    audioAppSignalsDataKey = [self audioAppSignalsDataKey];
    [v12 setObject:signalsCopy forKey:audioAppSignalsDataKey];

    localTime = [self localTime];
    v10 = [localTime description];
    audioAppSignalsTimestampKey = [self audioAppSignalsTimestampKey];
    [v12 setObject:v10 forKey:audioAppSignalsTimestampKey];
  }
}

@end