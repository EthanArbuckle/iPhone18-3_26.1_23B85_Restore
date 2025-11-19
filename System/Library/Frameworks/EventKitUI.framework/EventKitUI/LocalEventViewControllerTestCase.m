@interface LocalEventViewControllerTestCase
- (id)controller;
@end

@implementation LocalEventViewControllerTestCase

- (id)controller
{
  v2 = NSTemporaryDirectory();
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Calendar%d.db", rand()];
  v4 = [v2 stringByAppendingPathComponent:v3];

  v5 = [objc_alloc(MEMORY[0x1E6966A18]) initWithOptions:44 path:v4];
  v6 = [MEMORY[0x1E6966A08] eventWithEventStore:v5];
  [v6 setTitle:@"EventTestTitle"];
  v7 = [v5 defaultCalendarForNewEvents];
  [v6 setCalendar:v7];

  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
  [v6 setStartDate:v8];

  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:3600.0];
  [v6 setEndDateUnadjustedForLegacyClients:v9];

  [v5 saveEvent:v6 span:0 commit:1 error:0];
  v10 = objc_opt_new();
  [v10 setEvent:v6];

  return v10;
}

@end