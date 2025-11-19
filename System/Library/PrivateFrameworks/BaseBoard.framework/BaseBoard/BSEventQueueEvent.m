@interface BSEventQueueEvent
+ (BSEventQueueEvent)eventWithName:(id)a3 handler:(id)a4;
- (id)description;
- (void)execute;
@end

@implementation BSEventQueueEvent

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_name withName:0];
  v5 = [v3 build];

  return v5;
}

- (void)execute
{
  if (self)
  {
    handler = self->_handler;
    if (handler)
    {
      handler[2]();
    }
  }
}

+ (BSEventQueueEvent)eventWithName:(id)a3 handler:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"BSEventQueueEvent.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"BSEventQueueEvent.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

LABEL_3:
  v8 = objc_alloc_init(a1);
  if (v8)
  {
    v9 = [a3 copy];
    v10 = v8[2];
    v8[2] = v9;

    v11 = [a4 copy];
    v12 = v8[1];
    v8[1] = v11;
  }

  return v8;
}

@end