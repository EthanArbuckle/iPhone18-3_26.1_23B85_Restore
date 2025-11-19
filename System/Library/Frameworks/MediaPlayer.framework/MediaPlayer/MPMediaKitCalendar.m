@interface MPMediaKitCalendar
@end

@implementation MPMediaKitCalendar

void ___MPMediaKitCalendar_block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v1 = [v0 copy];
  v2 = _MPMediaKitCalendar_sGMTCalendar;
  _MPMediaKitCalendar_sGMTCalendar = v1;

  v3 = _MPMediaKitCalendar_sGMTCalendar;
  v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v4];
}

@end