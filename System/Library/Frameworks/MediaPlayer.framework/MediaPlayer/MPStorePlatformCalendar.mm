@interface MPStorePlatformCalendar
@end

@implementation MPStorePlatformCalendar

void ___MPStorePlatformCalendar_block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v1 = [v0 copy];
  v2 = _MPStorePlatformCalendar_sGMTCalendar;
  _MPStorePlatformCalendar_sGMTCalendar = v1;

  v3 = _MPStorePlatformCalendar_sGMTCalendar;
  v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v4];
}

@end