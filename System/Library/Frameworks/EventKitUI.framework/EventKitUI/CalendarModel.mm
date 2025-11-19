@interface CalendarModel
- (CalendarModel)initWithDataPath:(id)a3;
- (id)occurrencesForDay:(id)a3 waitForLoad:(BOOL)a4;
- (id)occurrencesForStartDate:(id)a3 endDate:(id)a4 preSorted:(BOOL)a5 waitForLoad:(BOOL)a6;
- (id)occurrencesForStartDay:(id)a3 endDay:(id)a4 preSorted:(BOOL)a5 waitForLoad:(BOOL)a6;
@end

@implementation CalendarModel

- (CalendarModel)initWithDataPath:(id)a3
{
  v4.receiver = self;
  v4.super_class = CalendarModel;
  return [(CUIKCalendarModel *)&v4 initWithDataPath:a3 pasteboardManager:0];
}

- (id)occurrencesForStartDate:(id)a3 endDate:(id)a4 preSorted:(BOOL)a5 waitForLoad:(BOOL)a6
{
  v9.receiver = self;
  v9.super_class = CalendarModel;
  v6 = [(CUIKCalendarModel *)&v9 occurrencesForStartDate:a3 endDate:a4 preSorted:a5 waitForLoad:a6];
  v7 = [v6 asCalendarOccurrencesCollection];

  return v7;
}

- (id)occurrencesForStartDay:(id)a3 endDay:(id)a4 preSorted:(BOOL)a5 waitForLoad:(BOOL)a6
{
  v9.receiver = self;
  v9.super_class = CalendarModel;
  v6 = [(CUIKCalendarModel *)&v9 occurrencesForStartDay:a3 endDay:a4 preSorted:a5 waitForLoad:a6];
  v7 = [v6 asCalendarOccurrencesCollection];

  return v7;
}

- (id)occurrencesForDay:(id)a3 waitForLoad:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = CalendarModel;
  v4 = [(CUIKCalendarModel *)&v7 occurrencesForDay:a3 waitForLoad:a4];
  v5 = [v4 asCalendarOccurrencesCollection];

  return v5;
}

@end