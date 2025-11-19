@interface PHRecentsFaceTimeHeaderView
- (id)newSummaryViewForRecentCall:(id)a3 occurrenceDate:(id)a4 status:(unsigned int)a5 duration:(double)a6 type:(unsigned int)a7 dataUsage:(int64_t)a8;
@end

@implementation PHRecentsFaceTimeHeaderView

- (id)newSummaryViewForRecentCall:(id)a3 occurrenceDate:(id)a4 status:(unsigned int)a5 duration:(double)a6 type:(unsigned int)a7 dataUsage:(int64_t)a8
{
  v9 = *&a7;
  v11 = *&a5;
  v13 = a4;
  v14 = a3;
  v15 = [[PHRecentsPersonFaceTimeHeaderSummaryView alloc] initWithFrame:v14 recentCall:v13 occurrenceDate:v11 status:v9 duration:a8 type:CGRectZero.origin.x dataUsage:CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, a6];

  return v15;
}

@end