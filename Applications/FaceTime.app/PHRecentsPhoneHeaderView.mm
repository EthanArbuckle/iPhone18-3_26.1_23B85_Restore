@interface PHRecentsPhoneHeaderView
- (id)newSummaryViewForRecentCall:(id)call occurrenceDate:(id)date status:(unsigned int)status duration:(double)duration type:(unsigned int)type dataUsage:(int64_t)usage;
@end

@implementation PHRecentsPhoneHeaderView

- (id)newSummaryViewForRecentCall:(id)call occurrenceDate:(id)date status:(unsigned int)status duration:(double)duration type:(unsigned int)type dataUsage:(int64_t)usage
{
  v8 = *&type;
  v10 = *&status;
  callCopy = call;
  dateCopy = date;
  if ((kCHCallTypeTelephony & v8) != 0)
  {
    duration = [[PHRecentsPhoneHeaderSummaryView alloc] initWithFrame:callCopy recentCall:dateCopy occurrenceDate:v10 status:v8 duration:CGRectZero.origin.x type:CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, duration];
  }

  else
  {
    v17 = [NSString stringWithFormat:@"PHRecentsPersonPhoneHeaderView only handles telephony calls"];
    NSLog(@"** TUAssertion failure: %@", v17);

    if (_TUAssertShouldCrashApplication())
    {
      v18 = +[NSAssertionHandler currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"PHRecentsPhoneHeaderView.m" lineNumber:44 description:@"PHRecentsPersonPhoneHeaderView only handles telephony calls"];
    }

    duration = 0;
  }

  return duration;
}

@end