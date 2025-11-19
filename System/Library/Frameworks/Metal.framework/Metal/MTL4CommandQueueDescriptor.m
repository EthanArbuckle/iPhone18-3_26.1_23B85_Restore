@interface MTL4CommandQueueDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4CommandQueueDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4CommandQueueDescriptor

- (MTL4CommandQueueDescriptor)init
{
  v5.receiver = self;
  v5.super_class = MTL4CommandQueueDescriptor;
  v2 = [(MTL4CommandQueueDescriptor *)&v5 init];
  if (v2)
  {
    v2->_label = 0;
    v2->_feedbackQueue = 0;
    v2->_supportMTLEvent = 1;
  }

  v4.receiver = v2;
  v4.super_class = MTL4CommandQueueDescriptor;
  return [(MTL4CommandQueueDescriptor *)&v4 init];
}

- (void)dealloc
{
  feedbackQueue = self->_feedbackQueue;
  if (feedbackQueue)
  {
    dispatch_release(feedbackQueue);
  }

  v4.receiver = self;
  v4.super_class = MTL4CommandQueueDescriptor;
  [(MTL4CommandQueueDescriptor *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(MTL4CommandQueueDescriptor);
  v5->_label = [(NSString *)self->_label copyWithZone:a3];
  feedbackQueue = self->_feedbackQueue;
  v5->_feedbackQueue = feedbackQueue;
  if (feedbackQueue)
  {
    dispatch_retain(feedbackQueue);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(a3) && (v6 = *(a3 + 2), v6 == self->_label))
    {
      v7 = [(NSString *)v6 isEqualToString:?];
      if (v7)
      {
        LOBYTE(v7) = *(a3 + 3) == self->_feedbackQueue;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  bzero(v6, 0x10uLL);
  v3 = [(NSString *)self->_label hash];
  feedbackQueue = self->_feedbackQueue;
  v6[0] = v3;
  v6[1] = feedbackQueue;
  return _MTLHashState(v6, 0x10uLL);
}

@end