@interface PHRecentsPhoneHeaderView
- (id)newSummaryViewForRecentCall:(id)a3 occurrenceDate:(id)a4 status:(unsigned int)a5 duration:(double)a6 type:(unsigned int)a7 dataUsage:(int64_t)a8;
@end

@implementation PHRecentsPhoneHeaderView

- (id)newSummaryViewForRecentCall:(id)a3 occurrenceDate:(id)a4 status:(unsigned int)a5 duration:(double)a6 type:(unsigned int)a7 dataUsage:(int64_t)a8
{
  v8 = *&a7;
  v10 = *&a5;
  v14 = a3;
  v15 = a4;
  if ((kCHCallTypeTelephony & v8) != 0)
  {
    v16 = [[PHRecentsPhoneHeaderSummaryView alloc] initWithFrame:v14 recentCall:v15 occurrenceDate:v10 status:v8 duration:CGRectZero.origin.x type:CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, a6];
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

    v16 = 0;
  }

  return v16;
}

@end