@interface ADIntentsUserActivityManager
- (ADIntentsUserActivityManager)init;
- (id)description;
- (id)userActivityForID:(id)a3;
- (void)setUserActivity:(id)a3 forID:(id)a4;
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

- (void)setUserActivity:(id)a3 forID:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    [(ADIntentsUserActivityManager *)self reset];
    userActivitiesStore = self->_userActivitiesStore;
    if (v8)
    {
      [(NSMutableDictionary *)userActivitiesStore setObject:v8 forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)userActivitiesStore removeObjectForKey:v6];
    }
  }
}

- (id)userActivityForID:(id)a3
{
  if (a3)
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