@interface NSXPCStoreMessageContext
- (id)initForMessage:(id)message store:(id)store;
- (void)dealloc;
@end

@implementation NSXPCStoreMessageContext

- (void)dealloc
{
  self->_message = 0;

  self->_result = 0;
  self->_error = 0;
  v3.receiver = self;
  v3.super_class = NSXPCStoreMessageContext;
  [(NSXPCStoreMessageContext *)&v3 dealloc];
}

- (id)initForMessage:(id)message store:(id)store
{
  v9.receiver = self;
  v9.super_class = NSXPCStoreMessageContext;
  v6 = [(NSXPCStoreMessageContext *)&v9 init];
  if (v6)
  {
    messageCopy = message;
    v6->_store = store;
    v6->_message = messageCopy;
    v6->_result = 0;
  }

  return v6;
}

@end