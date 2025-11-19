@interface _AKExpiringCacheValue
- (BOOL)isExpired;
- (_AKExpiringCacheValue)initWithObject:(id)a3 expiryDate:(id)a4;
@end

@implementation _AKExpiringCacheValue

- (_AKExpiringCacheValue)initWithObject:(id)a3 expiryDate:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = _AKExpiringCacheValue;
  v8 = [(_AKExpiringCacheValue *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong(&v12->_cacheObject, location[0]);
    objc_storeStrong(&v12->_expiryDate, v10);
  }

  v6 = _objc_retain(v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (BOOL)isExpired
{
  v4 = +[NSDate now];
  v3 = [(_AKExpiringCacheValue *)self expiryDate];
  v5 = [(NSDate *)v4 compare:?]== 1;
  _objc_release(v3);
  _objc_release(v4);
  return v5;
}

@end