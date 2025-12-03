@interface AKExpiringCache
- (AKExpiringCache)init;
- (id)objectForKey:(id)key;
- (void)flushCacheForced:(BOOL)forced;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key expiresIn:(double)in;
@end

@implementation AKExpiringCache

- (AKExpiringCache)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AKExpiringCache;
  v8 = [(AKExpiringCache *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v2 = +[NSMutableDictionary dictionary];
    internalCache = v8->_internalCache;
    v8->_internalCache = v2;
    _objc_release(internalCache);
    v8->_lock._os_unfair_lock_opaque = 0;
  }

  v5 = _objc_retain(v8);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (id)objectForKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v4 = selfCopy;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100059DC8;
  v10 = &unk_1003205E8;
  v11 = _objc_retain(selfCopy);
  v12 = _objc_retain(location[0]);
  v5 = sub_100059D18(&v4->_lock, &v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)removeObjectForKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10005A00C;
  v8 = &unk_10031F078;
  v9 = _objc_retain(selfCopy);
  v10 = _objc_retain(location[0]);
  sub_100059FA8(&v3->_lock, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)setObject:(id)object forKey:(id)key expiresIn:(double)in
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, object);
  v25 = 0;
  objc_storeStrong(&v25, key);
  inCopy = in;
  v8 = [_AKExpiringCacheValue alloc];
  v7 = location[0];
  v9 = [NSDate dateWithTimeIntervalSinceNow:in];
  v23 = [(_AKExpiringCacheValue *)v8 initWithObject:v7 expiryDate:?];
  _objc_release(v9);
  v10 = selfCopy;
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_10005A31C;
  v19 = &unk_10031F050;
  v20 = _objc_retain(selfCopy);
  v21 = _objc_retain(v23);
  v22 = _objc_retain(v25);
  sub_100059FA8(&v10->_lock, &v15);
  when = dispatch_time(0, (inCopy * 1000000000.0));
  queue = dispatch_get_global_queue(21, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005A360;
  v13[3] = &unk_10031F8B0;
  v14 = _objc_retain(selfCopy);
  dispatch_after(when, queue, v13);
  _objc_release(queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)flushCacheForced:(BOOL)forced
{
  selfCopy = self;
  v29 = a2;
  forcedCopy = forced;
  v21 = _NSConcreteStackBlock;
  v22 = -1073741824;
  v23 = 0;
  v24 = sub_10005A6D8;
  v25 = &unk_100320610;
  v26 = _objc_retain(self);
  v27 = sub_100059D18(&self->_lock, &v21);
  memset(__b, 0, sizeof(__b));
  obj = _objc_retain(v27);
  v10 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
  if (v10)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v10;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v6);
      p_lock = &selfCopy->_lock;
      v11 = _NSConcreteStackBlock;
      v12 = -1073741824;
      v13 = 0;
      v14 = sub_10005A710;
      v15 = &unk_100320638;
      v16 = _objc_retain(selfCopy);
      v17 = _objc_retain(v20);
      location = sub_100059D18(p_lock, &v11);
      if (forcedCopy || ([location isExpired] & 1) != 0)
      {
        [(AKExpiringCache *)selfCopy removeObjectForKey:v20];
      }

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v16, 0);
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  _objc_release(obj);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
}

@end