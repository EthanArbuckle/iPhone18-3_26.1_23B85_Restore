@interface AKFuture
- (AKFuture)init;
- (AKFuture)initWithMaxWait:(double)wait description:(id)description;
- (id)value;
- (void)setValue:(id)value;
@end

@implementation AKFuture

- (AKFuture)init
{
  v4 = 0;
  v4 = [(AKFuture *)self initWithMaxWait:0.0 description:?];
  v3 = _objc_retain(v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKFuture)initWithMaxWait:(double)wait description:(id)description
{
  selfCopy = self;
  v16 = a2;
  waitCopy = wait;
  location = 0;
  objc_storeStrong(&location, description);
  v4 = selfCopy;
  selfCopy = 0;
  v13.receiver = v4;
  v13.super_class = AKFuture;
  selfCopy = [(AKFuture *)&v13 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v5 = objc_alloc_init(NSMutableArray);
    internalWrapper = selfCopy->_internalWrapper;
    selfCopy->_internalWrapper = v5;
    _objc_release(internalWrapper);
    v7 = objc_opt_new();
    valueCondition = selfCopy->_valueCondition;
    selfCopy->_valueCondition = v7;
    _objc_release(valueCondition);
    [(NSCondition *)selfCopy->_valueCondition setName:location];
    if (waitCopy > 0.0)
    {
      v9 = +[NSDate date];
      beginDate = selfCopy->_beginDate;
      selfCopy->_beginDate = v9;
      _objc_release(beginDate);
      selfCopy->_maxWait = waitCopy;
    }
  }

  v12 = _objc_retain(selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v12;
}

- (void)setValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  [(NSCondition *)selfCopy->_valueCondition lock];
  [(NSMutableArray *)selfCopy->_internalWrapper setObject:location[0] atIndexedSubscript:0];
  selfCopy->_resolved = 1;
  [(NSCondition *)selfCopy->_valueCondition signal];
  [(NSCondition *)selfCopy->_valueCondition unlock];
  objc_storeStrong(location, 0);
}

- (id)value
{
  selfCopy = self;
  v10 = a2;
  [(NSCondition *)self->_valueCondition lock];
  if (selfCopy->_resolved)
  {
    [(NSCondition *)selfCopy->_valueCondition unlock];
    firstObject = [(NSMutableArray *)selfCopy->_internalWrapper firstObject];
  }

  else
  {
    while (!selfCopy->_resolved)
    {
      if (selfCopy->_maxWait > 0.0 && selfCopy->_beginDate)
      {
        v5 = +[NSDate date];
        [(NSDate *)v5 timeIntervalSinceDate:selfCopy->_beginDate];
        v6 = v2;
        _objc_release(v5);
        v9 = v6;
        v8 = selfCopy->_maxWait - v6;
        if (v8 <= 0.0)
        {
          break;
        }

        v7 = [NSDate dateWithTimeIntervalSinceNow:v8];
        [(NSCondition *)selfCopy->_valueCondition waitUntilDate:v7];
        objc_storeStrong(&v7, 0);
      }

      else
      {
        [(NSCondition *)selfCopy->_valueCondition wait];
      }
    }

    [(NSCondition *)selfCopy->_valueCondition unlock];
    firstObject = [(NSMutableArray *)selfCopy->_internalWrapper firstObject];
  }

  v3 = firstObject;

  return v3;
}

@end