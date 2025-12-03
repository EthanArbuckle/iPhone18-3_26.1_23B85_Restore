@interface _AKExpiringCacheValue
- (BOOL)isExpired;
- (_AKExpiringCacheValue)initWithObject:(id)object expiryDate:(id)date;
@end

@implementation _AKExpiringCacheValue

- (_AKExpiringCacheValue)initWithObject:(id)object expiryDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, object);
  v10 = 0;
  objc_storeStrong(&v10, date);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = _AKExpiringCacheValue;
  v8 = [(_AKExpiringCacheValue *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_cacheObject, location[0]);
    objc_storeStrong(&selfCopy->_expiryDate, v10);
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (BOOL)isExpired
{
  v4 = +[NSDate now];
  expiryDate = [(_AKExpiringCacheValue *)self expiryDate];
  v5 = [(NSDate *)v4 compare:?]== 1;
  _objc_release(expiryDate);
  _objc_release(v4);
  return v5;
}

@end