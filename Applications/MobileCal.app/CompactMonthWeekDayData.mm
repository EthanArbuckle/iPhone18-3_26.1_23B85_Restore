@interface CompactMonthWeekDayData
+ (id)dayDataWithEventCount:(unint64_t)count dayType:(int64_t)type;
@end

@implementation CompactMonthWeekDayData

+ (id)dayDataWithEventCount:(unint64_t)count dayType:(int64_t)type
{
  v6 = objc_alloc_init(CompactMonthWeekDayData);
  [(CompactMonthWeekDayData *)v6 setEventCount:count];
  [(CompactMonthWeekDayData *)v6 setDayType:type];

  return v6;
}

@end