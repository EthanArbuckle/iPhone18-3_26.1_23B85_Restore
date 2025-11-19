@interface AppMetricsEvent
- (AppMetricsEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)engagementData;
@end

@implementation AppMetricsEvent

- (AppMetricsEvent)init
{
  v3.receiver = self;
  v3.super_class = AppMetricsEvent;
  return [(SQLiteMemoryEntity *)&v3 init];
}

- (id)engagementData
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"payload");
    v1 = vars8;
  }

  return a1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = AppMetricsEvent;
  v5 = [(SQLiteMemoryEntity *)&v12 copyWithZone:?];
  v6 = v5;
  if (self)
  {
    v7 = sub_10023E0F8(self, @"bundle_id");
    sub_100209F4C(v6, v7);

    v8 = sub_10023E604(self, @"event_type");
  }

  else
  {
    sub_100209F4C(v5, 0);
    v8 = 0;
  }

  sub_10020A020(v6, v8);
  v9 = [AppMetricsEvent engagementData]_0(self);
  v10 = [v9 copyWithZone:a3];
  sub_10020A100(v6, v10);

  return v6;
}

@end