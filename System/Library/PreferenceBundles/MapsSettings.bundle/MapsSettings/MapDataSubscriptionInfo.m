@interface MapDataSubscriptionInfo
- (BOOL)isEqual:(id)a3;
- (MapDataSubscriptionInfo)initWithSubscription:(id)a3 state:(id)a4;
- (unint64_t)hash;
@end

@implementation MapDataSubscriptionInfo

- (unint64_t)hash
{
  v2 = [(MapDataSubscriptionInfo *)self subscription];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(MapDataSubscriptionInfo *)v5 subscription];
    v7 = [(MapDataSubscriptionInfo *)self subscription];
    v8 = MapsEquals(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MapDataSubscriptionInfo)initWithSubscription:(id)a3 state:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MapDataSubscriptionInfo;
  v9 = [(MapDataSubscriptionInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subscription, a3);
    objc_storeStrong(&v10->_state, a4);
    v11 = v10;
  }

  return v10;
}

@end