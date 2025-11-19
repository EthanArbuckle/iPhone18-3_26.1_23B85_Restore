@interface AKFuture
- (AKFuture)init;
- (AKFuture)initWithMaxWait:(double)a3 description:(id)a4;
- (id)value;
- (void)setValue:(id)a3;
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

- (AKFuture)initWithMaxWait:(double)a3 description:(id)a4
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v17;
  v17 = 0;
  v13.receiver = v4;
  v13.super_class = AKFuture;
  v17 = [(AKFuture *)&v13 init];
  objc_storeStrong(&v17, v17);
  if (v17)
  {
    v5 = objc_alloc_init(NSMutableArray);
    internalWrapper = v17->_internalWrapper;
    v17->_internalWrapper = v5;
    _objc_release(internalWrapper);
    v7 = objc_opt_new();
    valueCondition = v17->_valueCondition;
    v17->_valueCondition = v7;
    _objc_release(valueCondition);
    [(NSCondition *)v17->_valueCondition setName:location];
    if (v15 > 0.0)
    {
      v9 = +[NSDate date];
      beginDate = v17->_beginDate;
      v17->_beginDate = v9;
      _objc_release(beginDate);
      v17->_maxWait = v15;
    }
  }

  v12 = _objc_retain(v17);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v17, 0);
  return v12;
}

- (void)setValue:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSCondition *)v4->_valueCondition lock];
  [(NSMutableArray *)v4->_internalWrapper setObject:location[0] atIndexedSubscript:0];
  v4->_resolved = 1;
  [(NSCondition *)v4->_valueCondition signal];
  [(NSCondition *)v4->_valueCondition unlock];
  objc_storeStrong(location, 0);
}

- (id)value
{
  v11 = self;
  v10 = a2;
  [(NSCondition *)self->_valueCondition lock];
  if (v11->_resolved)
  {
    [(NSCondition *)v11->_valueCondition unlock];
    v12 = [(NSMutableArray *)v11->_internalWrapper firstObject];
  }

  else
  {
    while (!v11->_resolved)
    {
      if (v11->_maxWait > 0.0 && v11->_beginDate)
      {
        v5 = +[NSDate date];
        [(NSDate *)v5 timeIntervalSinceDate:v11->_beginDate];
        v6 = v2;
        _objc_release(v5);
        v9 = v6;
        v8 = v11->_maxWait - v6;
        if (v8 <= 0.0)
        {
          break;
        }

        v7 = [NSDate dateWithTimeIntervalSinceNow:v8];
        [(NSCondition *)v11->_valueCondition waitUntilDate:v7];
        objc_storeStrong(&v7, 0);
      }

      else
      {
        [(NSCondition *)v11->_valueCondition wait];
      }
    }

    [(NSCondition *)v11->_valueCondition unlock];
    v12 = [(NSMutableArray *)v11->_internalWrapper firstObject];
  }

  v3 = v12;

  return v3;
}

@end