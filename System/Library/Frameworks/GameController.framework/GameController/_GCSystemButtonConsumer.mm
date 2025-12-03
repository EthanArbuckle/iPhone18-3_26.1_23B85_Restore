@interface _GCSystemButtonConsumer
- (NSString)debugDescription;
- (_GCSystemButtonConsumer)init;
- (id)initWithEventConsumer:(void *)consumer reason:(void *)reason priority:;
- (int64_t)compareTo:(id)to;
- (uint64_t)consumeSystemButtonPressEvent;
- (void)invalidate;
@end

@implementation _GCSystemButtonConsumer

- (_GCSystemButtonConsumer)init
{
  [(_GCSystemButtonConsumer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)invalidate
{
  [(_GCSystemButtonConsumer *)self willChangeValueForKey:@"invalid"];
  atomic_store(1u, &self->_invalid);

  [(_GCSystemButtonConsumer *)self didChangeValueForKey:@"invalid"];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p '%@' [%zi] -> %@>", v5, self, self->_reason, self->_priority, self->_eventConsumer];

  return v6;
}

- (id)initWithEventConsumer:(void *)consumer reason:(void *)reason priority:
{
  v8 = a2;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = _GCSystemButtonConsumer;
    consumerCopy = consumer;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    objc_storeStrong(v10 + 2, a2);
    v11 = [consumerCopy copy];

    v12 = v10[3];
    v10[3] = v11;

    v10[4] = reason;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)consumeSystemButtonPressEvent
{
  if (!self)
  {
    return 0;
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v2 = atomic_load((self + 8));
  if (v2)
  {
    return 0;
  }

  v4 = *(self + 16);

  return [v4 consumePressEventForGCSystemButton];
}

- (int64_t)compareTo:(id)to
{
  toCopy = to;
  if (self)
  {
    priority = self->_priority;
    if (toCopy)
    {
LABEL_3:
      v6 = toCopy[4];
      goto LABEL_4;
    }
  }

  else
  {
    priority = 0;
    if (toCopy)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_4:
  if (priority >= v6)
  {
    if (self)
    {
      v8 = self->_priority;
      if (toCopy)
      {
LABEL_8:
        v9 = toCopy[4];
LABEL_9:
        v7 = v8 > v9;
        goto LABEL_10;
      }
    }

    else
    {
      v8 = 0;
      if (toCopy)
      {
        goto LABEL_8;
      }
    }

    v9 = 0;
    goto LABEL_9;
  }

  v7 = -1;
LABEL_10:

  return v7;
}

@end