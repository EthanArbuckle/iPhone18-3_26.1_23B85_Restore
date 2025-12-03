@interface _OfflineMapsExpiredSubscription
- (BOOL)isEqual:(id)equal;
- (_OfflineMapsExpiredSubscription)initWithSubscription:(id)subscription;
- (unint64_t)hash;
@end

@implementation _OfflineMapsExpiredSubscription

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    subscription = [(_OfflineMapsExpiredSubscription *)v5 subscription];
    identifier = [subscription identifier];
    subscription2 = [(_OfflineMapsExpiredSubscription *)self subscription];
    identifier2 = [subscription2 identifier];
    v10 = [identifier isEqual:identifier2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  identifier = [(GEOMapDataSubscription *)self->_subscription identifier];
  v3 = [identifier hash];

  return v3;
}

- (_OfflineMapsExpiredSubscription)initWithSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v10.receiver = self;
  v10.super_class = _OfflineMapsExpiredSubscription;
  v6 = [(_OfflineMapsExpiredSubscription *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscription, subscription);
    v8 = v7;
  }

  return v7;
}

@end