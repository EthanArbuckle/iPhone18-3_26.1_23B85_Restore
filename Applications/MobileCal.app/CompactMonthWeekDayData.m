@interface CompactMonthWeekDayData
+ (id)dayDataWithEventCount:(unint64_t)a3 dayType:(int64_t)a4;
@end

@implementation CompactMonthWeekDayData

+ (id)dayDataWithEventCount:(unint64_t)a3 dayType:(int64_t)a4
{
  v6 = objc_alloc_init(CompactMonthWeekDayData);
  [(CompactMonthWeekDayData *)v6 setEventCount:a3];
  [(CompactMonthWeekDayData *)v6 setDayType:a4];

  return v6;
}

@end