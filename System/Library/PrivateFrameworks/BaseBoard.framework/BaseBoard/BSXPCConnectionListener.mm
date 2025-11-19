@interface BSXPCConnectionListener
- (id)description;
- (void)dealloc;
@end

@implementation BSXPCConnectionListener

- (void)dealloc
{
  if (self)
  {
    connection = self->_connection;
    self->_connection = 0;
  }

  v4.receiver = self;
  v4.super_class = BSXPCConnectionListener;
  [(BSXPCConnectionListener *)&v4 dealloc];
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_service withName:@"service"];
  v5 = [v3 appendQueue:self->_queue withName:@"queue"];
  v6 = [v3 build];

  return v6;
}

@end