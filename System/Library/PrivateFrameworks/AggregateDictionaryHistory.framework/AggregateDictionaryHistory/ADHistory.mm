@interface ADHistory
- (ADHistory)initWithPath:(id)path;
- (BOOL)distributionsForKeyPrefix:(id)prefix minDaysSince1970:(int)since1970 maxDaysSince1970:(int)daysSince1970 rowHandler:(id)handler;
- (BOOL)scalarsForKeyPrefix:(id)prefix minDaysSince1970:(int)since1970 maxDaysSince1970:(int)daysSince1970 rowHandler:(id)handler;
@end

@implementation ADHistory

- (ADHistory)initWithPath:(id)path
{
  v4.receiver = self;
  v4.super_class = ADHistory;
  return [(ADHistory *)&v4 init];
}

- (BOOL)scalarsForKeyPrefix:(id)prefix minDaysSince1970:(int)since1970 maxDaysSince1970:(int)daysSince1970 rowHandler:(id)handler
{
  if (prefix)
  {
    v6 = handler == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (BOOL)distributionsForKeyPrefix:(id)prefix minDaysSince1970:(int)since1970 maxDaysSince1970:(int)daysSince1970 rowHandler:(id)handler
{
  if (prefix)
  {
    v6 = handler == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

@end