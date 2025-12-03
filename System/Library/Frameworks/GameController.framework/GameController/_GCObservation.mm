@interface _GCObservation
- (_GCObservation)initWithCleanupHandler:(id)handler;
- (void)dealloc;
@end

@implementation _GCObservation

- (_GCObservation)initWithCleanupHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = _GCObservation;
  v5 = [(_GCObservation *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(handlerCopy);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

- (void)dealloc
{
  handler = self->_handler;
  if (handler)
  {
    handler[2](handler, a2);
  }

  v4.receiver = self;
  v4.super_class = _GCObservation;
  [(_GCObservation *)&v4 dealloc];
}

@end