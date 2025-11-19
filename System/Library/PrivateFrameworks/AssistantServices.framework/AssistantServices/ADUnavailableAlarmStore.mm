@interface ADUnavailableAlarmStore
- (void)addAlarm:(id)a3 completionHandler:(id)a4;
- (void)deleteAlarmsWithIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)dismissAlarmsWithURLs:(id)a3 completionHandler:(id)a4;
- (void)fetchAlarmsMatchingAnyOfQueries:(id)a3 completionHandler:(id)a4;
- (void)fetchAlarmsMeetingCriteria:(id)a3 searchOptions:(int64_t)a4 completionHandler:(id)a5;
- (void)fetchAlarmsWithIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)updateAlarms:(id)a3 completionHandler:(id)a4;
@end

@implementation ADUnavailableAlarmStore

- (void)dismissAlarmsWithURLs:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = [(ADUnavailableAlarmStore *)self _createUnavailableError];
    (*(a4 + 2))(v6, v7);
  }
}

- (void)fetchAlarmsWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(ADUnavailableAlarmStore *)self _createUnavailableError];
  (*(a4 + 2))(v6, 0, v7);
}

- (void)fetchAlarmsMeetingCriteria:(id)a3 searchOptions:(int64_t)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = [(ADUnavailableAlarmStore *)self _createUnavailableError];
  (*(a5 + 2))(v7, 0, v8);
}

- (void)fetchAlarmsMatchingAnyOfQueries:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(ADUnavailableAlarmStore *)self _createUnavailableError];
  (*(a4 + 2))(v6, 0, v7);
}

- (void)updateAlarms:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = [(ADUnavailableAlarmStore *)self _createUnavailableError];
    (*(a4 + 2))(v6, 0, v7);
  }
}

- (void)deleteAlarmsWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = [(ADUnavailableAlarmStore *)self _createUnavailableError];
    (*(a4 + 2))(v6, v7);
  }
}

- (void)addAlarm:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = [(ADUnavailableAlarmStore *)self _createUnavailableError];
    (*(a4 + 2))(v6, 0, v7);
  }
}

@end