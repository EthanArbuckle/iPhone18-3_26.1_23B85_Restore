@interface HolidayCalendarCell
- (HolidayCalendarCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation HolidayCalendarCell

- (HolidayCalendarCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = HolidayCalendarCell;
  return [(HolidayCalendarCell *)&v5 initWithStyle:3 reuseIdentifier:a4];
}

@end