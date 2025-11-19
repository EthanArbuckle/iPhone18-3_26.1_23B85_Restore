@interface AAFFuture
- (AAFFuture)initWithMaxWait:(double)a3 description:(id)a4;
- (id)value;
- (void)setValue:(id)a3;
@end

@implementation AAFFuture

- (AAFFuture)initWithMaxWait:(double)a3 description:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = AAFFuture;
  v7 = [(AAFFuture *)&v13 init];
  if (v7)
  {
    v8 = objc_opt_new();
    valueCondition = v7->_valueCondition;
    v7->_valueCondition = v8;

    [(NSCondition *)v7->_valueCondition setName:v6];
    if (a3 > 0.0)
    {
      v10 = [MEMORY[0x1E695DF00] date];
      beginDate = v7->_beginDate;
      v7->_beginDate = v10;

      v7->_maxWait = a3;
    }
  }

  return v7;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  [(NSCondition *)self->_valueCondition lock];
  valueObj = self->_valueObj;
  self->_valueObj = v4;
  v6 = v4;

  self->_resolved = 1;
  [(NSCondition *)self->_valueCondition signal];
  [(NSCondition *)self->_valueCondition unlock];
}

- (id)value
{
  [(NSCondition *)self->_valueCondition lock];
  while (!self->_resolved)
  {
    if (self->_maxWait > 0.0 && self->_beginDate)
    {
      v3 = [MEMORY[0x1E695DF00] date];
      [v3 timeIntervalSinceDate:self->_beginDate];
      v5 = v4;

      if (self->_maxWait - v5 <= 0.0)
      {
        break;
      }

      v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:?];
      [(NSCondition *)self->_valueCondition waitUntilDate:v6];
    }

    else
    {
      [(NSCondition *)self->_valueCondition wait];
    }
  }

  [(NSCondition *)self->_valueCondition unlock];
  valueObj = self->_valueObj;

  return valueObj;
}

@end