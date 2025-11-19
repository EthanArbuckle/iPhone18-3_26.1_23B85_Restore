@interface ATXAppIntentDuetDataProvider
- (id)fetchEventsBetweenStartDate:(id)a3 andEndDate:(id)a4 withPredicates:(id)a5;
@end

@implementation ATXAppIntentDuetDataProvider

- (id)fetchEventsBetweenStartDate:(id)a3 andEndDate:(id)a4 withPredicates:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = +[_ATXDataStore sharedInstance];
  v9 = [v8 appIntentDuetEventsForActionsBetweenStartDate:v7 endDate:v6];

  return v9;
}

@end