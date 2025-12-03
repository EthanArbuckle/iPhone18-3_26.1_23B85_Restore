@interface CalendarAppRemoval
- (void)removeAppWithReply:(id)reply;
@end

@implementation CalendarAppRemoval

- (void)removeAppWithReply:(id)reply
{
  replyCopy = reply;
  NSLog(@"CALENDAR APP REMOVAL: removing prefs");
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mobilecal"];
  [v4 removeObjectForKey:@"LastViewType"];
  [v4 removeObjectForKey:@"LastViewedDate"];
  [v4 removeObjectForKey:@"LastSuspendTime"];
  [v4 removeObjectForKey:@"searchString"];
  [v4 removeObjectForKey:@"ShowListView"];
  [v4 removeObjectForKey:@"ShowMonthDividedListView"];
  [v4 synchronize];
  replyCopy[2](replyCopy, 0);
}

@end