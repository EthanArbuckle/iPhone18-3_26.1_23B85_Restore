@interface _GCObservation
- (_GCObservation)initWithCleanupHandler:(id)a3;
- (void)dealloc;
@end

@implementation _GCObservation

- (_GCObservation)initWithCleanupHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _GCObservation;
  v5 = [(_GCObservation *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
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