@interface ATXAppIntentDuetDataProvider
- (id)fetchEventsBetweenStartDate:(id)date andEndDate:(id)endDate withPredicates:(id)predicates;
@end

@implementation ATXAppIntentDuetDataProvider

- (id)fetchEventsBetweenStartDate:(id)date andEndDate:(id)endDate withPredicates:(id)predicates
{
  endDateCopy = endDate;
  dateCopy = date;
  v8 = +[_ATXDataStore sharedInstance];
  v9 = [v8 appIntentDuetEventsForActionsBetweenStartDate:dateCopy endDate:endDateCopy];

  return v9;
}

@end