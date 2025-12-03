@interface BSDispatchQueueAttributes
+ (id)concurrent;
+ (id)serial;
- (id)autoreleaseFrequency:(unint64_t)frequency;
- (id)copyWithZone:(_NSZone *)zone;
- (id)inactive;
- (id)serviceClass:(unsigned int)class relativePriority:(int)priority;
- (id)targetQueue:(id)queue;
@end

@implementation BSDispatchQueueAttributes

+ (id)serial
{
  v2 = objc_alloc_init(self);
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
  v2 = objc_alloc_init(self);
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = v2[1];
    v2[1] = v3;
  }

  return v2;
}

- (id)serviceClass:(unsigned int)class relativePriority:(int)priority
{
  attrs = self->_attrs;
  if (priority <= -15)
  {
    priorityCopy = -15;
  }

  else
  {
    priorityCopy = priority;
  }

  self->_attrs = dispatch_queue_attr_make_with_qos_class(self->_attrs, class, priorityCopy & (priorityCopy >> 31));

  return self;
}

- (id)autoreleaseFrequency:(unint64_t)frequency
{
  attrs = self->_attrs;
  self->_attrs = dispatch_queue_attr_make_with_autorelease_frequency(attrs, frequency);

  return self;
}

- (id)targetQueue:(id)queue
{
  queueCopy = queue;
  if (self->_targetQueue != queueCopy)
  {
    objc_storeStrong(&self->_targetQueue, queue);
  }

  return self;
}

- (id)inactive
{
  attrs = self->_attrs;
  self->_attrs = dispatch_queue_attr_make_initially_inactive(attrs);

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong(v4 + 1, self->_attrs);
  objc_storeStrong(v4 + 2, self->_targetQueue);
  return v4;
}

@end