@interface TodayGroupingService
- (id)bestOfFeedItems:(id)items limit:(int64_t)limit;
@end

@implementation TodayGroupingService

- (id)bestOfFeedItems:(id)items limit:(int64_t)limit
{
  sub_100019558(&qword_10011F600);
  v5 = sub_1000CAED0();

  v6 = TodayGroupingService.bestOf(feedItems:limit:)(v5, limit);

  if (v6)
  {
    v7.super.isa = sub_1000CAEC0().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

@end