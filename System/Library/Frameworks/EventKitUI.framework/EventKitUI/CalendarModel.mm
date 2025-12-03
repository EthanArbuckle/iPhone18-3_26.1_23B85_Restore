@interface CalendarModel
- (CalendarModel)initWithDataPath:(id)path;
- (id)occurrencesForDay:(id)day waitForLoad:(BOOL)load;
- (id)occurrencesForStartDate:(id)date endDate:(id)endDate preSorted:(BOOL)sorted waitForLoad:(BOOL)load;
- (id)occurrencesForStartDay:(id)day endDay:(id)endDay preSorted:(BOOL)sorted waitForLoad:(BOOL)load;
@end

@implementation CalendarModel

- (CalendarModel)initWithDataPath:(id)path
{
  v4.receiver = self;
  v4.super_class = CalendarModel;
  return [(CUIKCalendarModel *)&v4 initWithDataPath:path pasteboardManager:0];
}

- (id)occurrencesForStartDate:(id)date endDate:(id)endDate preSorted:(BOOL)sorted waitForLoad:(BOOL)load
{
  v9.receiver = self;
  v9.super_class = CalendarModel;
  v6 = [(CUIKCalendarModel *)&v9 occurrencesForStartDate:date endDate:endDate preSorted:sorted waitForLoad:load];
  asCalendarOccurrencesCollection = [v6 asCalendarOccurrencesCollection];

  return asCalendarOccurrencesCollection;
}

- (id)occurrencesForStartDay:(id)day endDay:(id)endDay preSorted:(BOOL)sorted waitForLoad:(BOOL)load
{
  v9.receiver = self;
  v9.super_class = CalendarModel;
  v6 = [(CUIKCalendarModel *)&v9 occurrencesForStartDay:day endDay:endDay preSorted:sorted waitForLoad:load];
  asCalendarOccurrencesCollection = [v6 asCalendarOccurrencesCollection];

  return asCalendarOccurrencesCollection;
}

- (id)occurrencesForDay:(id)day waitForLoad:(BOOL)load
{
  v7.receiver = self;
  v7.super_class = CalendarModel;
  v4 = [(CUIKCalendarModel *)&v7 occurrencesForDay:day waitForLoad:load];
  asCalendarOccurrencesCollection = [v4 asCalendarOccurrencesCollection];

  return asCalendarOccurrencesCollection;
}

@end