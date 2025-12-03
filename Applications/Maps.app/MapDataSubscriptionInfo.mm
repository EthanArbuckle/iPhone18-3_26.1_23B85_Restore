@interface MapDataSubscriptionInfo
- (BOOL)isEqual:(id)equal;
- (MapDataSubscriptionInfo)initWithSubscription:(id)subscription state:(id)state;
- (unint64_t)hash;
@end

@implementation MapDataSubscriptionInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    subscription = [(MapDataSubscriptionInfo *)v5 subscription];
    subscription2 = [(MapDataSubscriptionInfo *)self subscription];
    if (subscription == subscription2)
    {
      v8 = 1;
    }

    else
    {
      v8 = [subscription isEqual:subscription2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  subscription = [(MapDataSubscriptionInfo *)self subscription];
  v3 = [subscription hash];

  return v3;
}

- (MapDataSubscriptionInfo)initWithSubscription:(id)subscription state:(id)state
{
  subscriptionCopy = subscription;
  stateCopy = state;
  v13.receiver = self;
  v13.super_class = MapDataSubscriptionInfo;
  v9 = [(MapDataSubscriptionInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subscription, subscription);
    objc_storeStrong(&v10->_state, state);
    v11 = v10;
  }

  return v10;
}

@end