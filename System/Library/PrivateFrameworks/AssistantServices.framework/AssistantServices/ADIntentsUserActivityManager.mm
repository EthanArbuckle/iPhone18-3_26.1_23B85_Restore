@interface ADIntentsUserActivityManager
- (ADIntentsUserActivityManager)init;
- (id)description;
- (id)userActivityForID:(id)d;
- (void)setUserActivity:(id)activity forID:(id)d;
@end

@implementation ADIntentsUserActivityManager

- (id)description
{
  v7.receiver = self;
  v7.super_class = ADIntentsUserActivityManager;
  v3 = [(ADIntentsUserActivityManager *)&v7 description];
  v4 = [(NSMutableDictionary *)self->_userActivitiesStore description];
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

- (void)setUserActivity:(id)activity forID:(id)d
{
  activityCopy = activity;
  dCopy = d;
  if (dCopy)
  {
    [(ADIntentsUserActivityManager *)self reset];
    userActivitiesStore = self->_userActivitiesStore;
    if (activityCopy)
    {
      [(NSMutableDictionary *)userActivitiesStore setObject:activityCopy forKey:dCopy];
    }

    else
    {
      [(NSMutableDictionary *)userActivitiesStore removeObjectForKey:dCopy];
    }
  }
}

- (id)userActivityForID:(id)d
{
  if (d)
  {
    v5 = [(NSMutableDictionary *)self->_userActivitiesStore objectForKey:?];
    if (!v5)
    {
      [(ADIntentsUserActivityManager *)self reset];
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ADIntentsUserActivityManager)init
{
  v6.receiver = self;
  v6.super_class = ADIntentsUserActivityManager;
  v2 = [(ADIntentsUserActivityManager *)&v6 init];
  if (v2)
  {
    v3 = [[NSMutableDictionary alloc] initWithCapacity:1];
    userActivitiesStore = v2->_userActivitiesStore;
    v2->_userActivitiesStore = v3;
  }

  return v2;
}

@end