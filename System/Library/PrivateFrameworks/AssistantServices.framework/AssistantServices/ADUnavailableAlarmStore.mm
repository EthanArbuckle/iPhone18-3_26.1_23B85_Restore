@interface ADUnavailableAlarmStore
- (void)addAlarm:(id)alarm completionHandler:(id)handler;
- (void)deleteAlarmsWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)dismissAlarmsWithURLs:(id)ls completionHandler:(id)handler;
- (void)fetchAlarmsMatchingAnyOfQueries:(id)queries completionHandler:(id)handler;
- (void)fetchAlarmsMeetingCriteria:(id)criteria searchOptions:(int64_t)options completionHandler:(id)handler;
- (void)fetchAlarmsWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)updateAlarms:(id)alarms completionHandler:(id)handler;
@end

@implementation ADUnavailableAlarmStore

- (void)dismissAlarmsWithURLs:(id)ls completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    _createUnavailableError = [(ADUnavailableAlarmStore *)self _createUnavailableError];
    (*(handler + 2))(handlerCopy, _createUnavailableError);
  }
}

- (void)fetchAlarmsWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  _createUnavailableError = [(ADUnavailableAlarmStore *)self _createUnavailableError];
  (*(handler + 2))(handlerCopy, 0, _createUnavailableError);
}

- (void)fetchAlarmsMeetingCriteria:(id)criteria searchOptions:(int64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  _createUnavailableError = [(ADUnavailableAlarmStore *)self _createUnavailableError];
  (*(handler + 2))(handlerCopy, 0, _createUnavailableError);
}

- (void)fetchAlarmsMatchingAnyOfQueries:(id)queries completionHandler:(id)handler
{
  handlerCopy = handler;
  _createUnavailableError = [(ADUnavailableAlarmStore *)self _createUnavailableError];
  (*(handler + 2))(handlerCopy, 0, _createUnavailableError);
}

- (void)updateAlarms:(id)alarms completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    _createUnavailableError = [(ADUnavailableAlarmStore *)self _createUnavailableError];
    (*(handler + 2))(handlerCopy, 0, _createUnavailableError);
  }
}

- (void)deleteAlarmsWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    _createUnavailableError = [(ADUnavailableAlarmStore *)self _createUnavailableError];
    (*(handler + 2))(handlerCopy, _createUnavailableError);
  }
}

- (void)addAlarm:(id)alarm completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    _createUnavailableError = [(ADUnavailableAlarmStore *)self _createUnavailableError];
    (*(handler + 2))(handlerCopy, 0, _createUnavailableError);
  }
}

@end