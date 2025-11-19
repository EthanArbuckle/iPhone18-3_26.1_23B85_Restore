@interface _GCSystemButtonConsumer
- (NSString)debugDescription;
- (_GCSystemButtonConsumer)init;
- (id)initWithEventConsumer:(void *)a3 reason:(void *)a4 priority:;
- (int64_t)compareTo:(id)a3;
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

- (id)initWithEventConsumer:(void *)a3 reason:(void *)a4 priority:
{
  v8 = a2;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = _GCSystemButtonConsumer;
    v9 = a3;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    objc_storeStrong(v10 + 2, a2);
    v11 = [v9 copy];

    v12 = v10[3];
    v10[3] = v11;

    v10[4] = a4;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)consumeSystemButtonPressEvent
{
  if (!a1)
  {
    return 0;
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v2 = atomic_load((a1 + 8));
  if (v2)
  {
    return 0;
  }

  v4 = *(a1 + 16);

  return [v4 consumePressEventForGCSystemButton];
}

- (int64_t)compareTo:(id)a3
{
  v4 = a3;
  if (self)
  {
    priority = self->_priority;
    if (v4)
    {
LABEL_3:
      v6 = v4[4];
      goto LABEL_4;
    }
  }

  else
  {
    priority = 0;
    if (v4)
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
      if (v4)
      {
LABEL_8:
        v9 = v4[4];
LABEL_9:
        v7 = v8 > v9;
        goto LABEL_10;
      }
    }

    else
    {
      v8 = 0;
      if (v4)
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