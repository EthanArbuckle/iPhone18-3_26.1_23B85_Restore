@interface BSDispatchQueueAttributes
+ (id)concurrent;
+ (id)serial;
- (id)autoreleaseFrequency:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)inactive;
- (id)serviceClass:(unsigned int)a3 relativePriority:(int)a4;
- (id)targetQueue:(id)a3;
@end

@implementation BSDispatchQueueAttributes

+ (id)serial
{
  v2 = objc_alloc_init(a1);
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = v2[1];
    v2[1] = v3;
  }

  return v2;
}

+ (id)concurrent
{
  v2 = objc_alloc_init(a1);
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = v2[1];
    v2[1] = v3;
  }

  return v2;
}

- (id)serviceClass:(unsigned int)a3 relativePriority:(int)a4
{
  attrs = self->_attrs;
  if (a4 <= -15)
  {
    v6 = -15;
  }

  else
  {
    v6 = a4;
  }

  self->_attrs = dispatch_queue_attr_make_with_qos_class(self->_attrs, a3, v6 & (v6 >> 31));

  return self;
}

- (id)autoreleaseFrequency:(unint64_t)a3
{
  attrs = self->_attrs;
  self->_attrs = dispatch_queue_attr_make_with_autorelease_frequency(attrs, a3);

  return self;
}

- (id)targetQueue:(id)a3
{
  v5 = a3;
  if (self->_targetQueue != v5)
  {
    objc_storeStrong(&self->_targetQueue, a3);
  }

  return self;
}

- (id)inactive
{
  attrs = self->_attrs;
  self->_attrs = dispatch_queue_attr_make_initially_inactive(attrs);

  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong(v4 + 1, self->_attrs);
  objc_storeStrong(v4 + 2, self->_targetQueue);
  return v4;
}

@end