@interface PHRecentsFaceTimeHeaderView
- (id)newSummaryViewForRecentCall:(id)call occurrenceDate:(id)date status:(unsigned int)status duration:(double)duration type:(unsigned int)type dataUsage:(int64_t)usage;
@end

@implementation PHRecentsFaceTimeHeaderView

- (id)newSummaryViewForRecentCall:(id)call occurrenceDate:(id)date status:(unsigned int)status duration:(double)duration type:(unsigned int)type dataUsage:(int64_t)usage
{
  v9 = *&type;
  v11 = *&status;
  dateCopy = date;
  callCopy = call;
  duration = [[PHRecentsPersonFaceTimeHeaderSummaryView alloc] initWithFrame:callCopy recentCall:dateCopy occurrenceDate:v11 status:v9 duration:usage type:CGRectZero.origin.x dataUsage:CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, duration];

  return duration;
}

@end