@interface BSEventQueueEvent
+ (BSEventQueueEvent)eventWithName:(id)name handler:(id)handler;
- (id)description;
- (void)execute;
@end

@implementation BSEventQueueEvent

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_name withName:0];
  build = [v3 build];

  return build;
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

+ (BSEventQueueEvent)eventWithName:(id)name handler:(id)handler
{
  if (name)
  {
    if (handler)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSEventQueueEvent.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (handler)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"BSEventQueueEvent.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

LABEL_3:
  v8 = objc_alloc_init(self);
  if (v8)
  {
    v9 = [name copy];
    v10 = v8[2];
    v8[2] = v9;

    v11 = [handler copy];
    v12 = v8[1];
    v8[1] = v11;
  }

  return v8;
}

@end