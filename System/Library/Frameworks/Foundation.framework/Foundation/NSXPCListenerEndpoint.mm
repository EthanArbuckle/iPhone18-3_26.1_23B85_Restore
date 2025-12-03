@interface NSXPCListenerEndpoint
- (NSXPCListenerEndpoint)init;
- (NSXPCListenerEndpoint)initWithCoder:(id)coder;
- (id)_endpoint;
- (id)_initWithConnection:(id)connection;
- (void)_setEndpoint:(id)endpoint;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSXPCListenerEndpoint

- (id)_endpoint
{
  os_unfair_lock_lock_with_options();
  endpoint = self->_endpoint;
  if (endpoint)
  {
    xpc_retain(self->_endpoint);
  }

  os_unfair_lock_unlock(&self->_lock);

  return endpoint;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  endpoint = self->_endpoint;
  if (endpoint)
  {
    xpc_release(endpoint);
  }

  v4.receiver = self;
  v4.super_class = NSXPCListenerEndpoint;
  [(NSXPCListenerEndpoint *)&v4 dealloc];
}

- (NSXPCListenerEndpoint)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSXPCListenerEndpoint;
  result = [(NSXPCListenerEndpoint *)&v3 init];
  result->_lock._os_unfair_lock_opaque = 0;
  return result;
}

- (id)_initWithConnection:(id)connection
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSXPCListenerEndpoint;
  v4 = [(NSXPCListenerEndpoint *)&v6 init];
  v4->_endpoint = xpc_endpoint_create(connection);
  v4->_lock._os_unfair_lock_opaque = 0;
  return v4;
}

- (NSXPCListenerEndpoint)initWithCoder:(id)coder
{
  v11 = *MEMORY[0x1E69E9840];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: This class may only be decoded by an NSXPCCoder.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  v10.receiver = self;
  v10.super_class = NSXPCListenerEndpoint;
  v6 = [(NSXPCListenerEndpoint *)&v10 init];
  v7 = [coder decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:@"ep"];
  v6->_endpoint = v7;
  v6->_lock._os_unfair_lock_opaque = 0;
  if (v7)
  {
    xpc_retain(v7);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: This class may only be encoded by an NSXPCCoder.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v6);
  }

  [coder encodeXPCObject:-[NSXPCListenerEndpoint _endpoint](self forKey:{"_endpoint"), @"ep"}];
}

- (void)_setEndpoint:(id)endpoint
{
  os_unfair_lock_lock_with_options();
  endpoint = self->_endpoint;
  self->_endpoint = xpc_retain(endpoint);
  if (endpoint)
  {
    xpc_release(endpoint);
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end