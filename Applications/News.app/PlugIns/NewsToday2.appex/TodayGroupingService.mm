@interface TodayGroupingService
- (id)bestOfFeedItems:(id)a3 limit:(int64_t)a4;
@end

@implementation TodayGroupingService

- (id)bestOfFeedItems:(id)a3 limit:(int64_t)a4
{
  sub_100019558(&qword_10011F600);
  v5 = sub_1000CAED0();

  v6 = TodayGroupingService.bestOf(feedItems:limit:)(v5, a4);

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