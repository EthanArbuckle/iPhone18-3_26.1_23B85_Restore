@interface _OfflineMapsExpiredSubscription
- (BOOL)isEqual:(id)a3;
- (_OfflineMapsExpiredSubscription)initWithSubscription:(id)a3;
- (unint64_t)hash;
@end

@implementation _OfflineMapsExpiredSubscription

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(_OfflineMapsExpiredSubscription *)v5 subscription];
    v7 = [v6 identifier];
    v8 = [(_OfflineMapsExpiredSubscription *)self subscription];
    v9 = [v8 identifier];
    v10 = [v7 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(GEOMapDataSubscription *)self->_subscription identifier];
  v3 = [v2 hash];

  return v3;
}

- (_OfflineMapsExpiredSubscription)initWithSubscription:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _OfflineMapsExpiredSubscription;
  v6 = [(_OfflineMapsExpiredSubscription *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscription, a3);
    v8 = v7;
  }

  return v7;
}

@end