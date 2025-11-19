@interface ESAHealthSampleAnalyticsStore
- (ESAHealthSampleAnalyticsStore)init;
- (ESAHealthSampleAnalyticsStore)initWithStorage:(id)a3;
- (HealthSampleUpdate)lastUpdate;
- (NSDate)lastHealthCheckTimestamp;
- (id)lastHealthSample;
- (id)performUpdate;
- (id)updateWithHealthSample:(id)a3;
@end

@implementation ESAHealthSampleAnalyticsStore

- (ESAHealthSampleAnalyticsStore)init
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [(ESAHealthSampleAnalyticsStore *)self initWithStorage:v3];

  return v4;
}

- (ESAHealthSampleAnalyticsStore)initWithStorage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ESAHealthSampleAnalyticsStore;
  v6 = [(ESAHealthSampleAnalyticsStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, a3);
  }

  return v7;
}

- (HealthSampleUpdate)lastUpdate
{
  lastUpdate = self->_lastUpdate;
  if (lastUpdate)
  {
    v3 = lastUpdate;
  }

  else
  {
    v4 = [(NSUserDefaults *)self->_storage objectForKey:@"ESAHealthSampleUpdateStorageKey"];
    if (v4)
    {
      v3 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)lastHealthSample
{
  v2 = [(ESAHealthSampleAnalyticsStore *)self lastUpdate];
  v3 = [v2 lastHealthSample];

  return v3;
}

- (NSDate)lastHealthCheckTimestamp
{
  v2 = [(ESAHealthSampleAnalyticsStore *)self lastUpdate];
  v3 = [v2 lastHealthSample];
  v4 = [v3 timestamp];

  return v4;
}

- (id)performUpdate
{
  v3 = +[HealthSample current];
  v4 = [(ESAHealthSampleAnalyticsStore *)self updateWithHealthSample:v3];

  return v4;
}

- (id)updateWithHealthSample:(id)a3
{
  v4 = a3;
  v5 = [(ESAHealthSampleAnalyticsStore *)self lastUpdate];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(HealthSampleUpdate);
  }

  v8 = v7;

  v9 = [(HealthSampleUpdate *)v8 updatedValueWithHealthSample:v4];

  objc_storeStrong(&self->_lastUpdate, v9);
  v14 = 0;
  v10 = [NSKeyedArchiver archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v14];
  v11 = v14;
  [(NSUserDefaults *)self->_storage setObject:v10 forKey:@"ESAHealthSampleUpdateStorageKey"];
  v12 = v9;

  return v9;
}

@end