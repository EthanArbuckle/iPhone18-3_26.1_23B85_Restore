@interface ADHistory
- (ADHistory)initWithPath:(id)a3;
- (BOOL)distributionsForKeyPrefix:(id)a3 minDaysSince1970:(int)a4 maxDaysSince1970:(int)a5 rowHandler:(id)a6;
- (BOOL)scalarsForKeyPrefix:(id)a3 minDaysSince1970:(int)a4 maxDaysSince1970:(int)a5 rowHandler:(id)a6;
@end

@implementation ADHistory

- (ADHistory)initWithPath:(id)a3
{
  v4.receiver = self;
  v4.super_class = ADHistory;
  return [(ADHistory *)&v4 init];
}

- (BOOL)scalarsForKeyPrefix:(id)a3 minDaysSince1970:(int)a4 maxDaysSince1970:(int)a5 rowHandler:(id)a6
{
  if (a3)
  {
    v6 = a6 == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (BOOL)distributionsForKeyPrefix:(id)a3 minDaysSince1970:(int)a4 maxDaysSince1970:(int)a5 rowHandler:(id)a6
{
  if (a3)
  {
    v6 = a6 == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

@end