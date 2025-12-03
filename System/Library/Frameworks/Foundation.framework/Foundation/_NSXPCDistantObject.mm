@interface _NSXPCDistantObject
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)respondsToSelector:(SEL)selector;
- (_NSXPCDistantObject)initWithCoder:(id)coder;
- (id)_initWithConnection:(id)connection exportedObject:(id)object interface:(id)interface;
- (id)_initWithConnection:(id)connection proxyNumber:(unint64_t)number generationCount:(unint64_t)count interface:(id)interface options:(unint64_t)options error:(id)error;
- (id)_unboostingRemoteObjectProxy;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)remoteObjectProxyWithTimeout:(double)timeout errorHandler:(id)handler;
- (id)remoteObjectProxyWithUserInfo:(id)info errorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)_forwardStackInvocation:(id)invocation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)forwardInvocation:(id)invocation;
@end

@implementation _NSXPCDistantObject

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  if ((self->_flags & 1) == 0)
  {
    [(NSXPCConnection *)self->_connection _removeImportedProxy:?];
  }

  errorBlock = self->_errorBlock;
  if (errorBlock)
  {
    _Block_release(errorBlock);
  }

  v4.receiver = self;
  v4.super_class = _NSXPCDistantObject;
  [(_NSXPCDistantObject *)&v4 dealloc];
}

- (id)remoteObjectProxy
{
  v2 = [objc_alloc(-[NSXPCInterface _customSubclass](self->_remoteInterface "_customSubclass"))];

  return v2;
}

- (id)_unboostingRemoteObjectProxy
{
  v2 = [objc_alloc(-[NSXPCInterface _customSubclass](self->_remoteInterface "_customSubclass"))];

  return v2;
}

- (id)_initWithConnection:(id)connection proxyNumber:(unint64_t)number generationCount:(unint64_t)count interface:(id)interface options:(unint64_t)options error:(id)error
{
  v14 = [(_NSXPCDistantObject *)self init];
  if (v14)
  {
    v14->_connection = connection;
    v14->_proxyNumber = number;
    v14->_generationCount = count;
    v14->_remoteInterface = interface;
    v14->_flags = options;
    if (error)
    {
      v14->_errorBlock = _Block_copy(error);
    }

    connection = v14->_connection;
    if (connection && v14->_proxyNumber != 1)
    {
      [(_NSXPCConnectionImportInfo *)connection->_importInfo addProxy:v14];
    }
  }

  return v14;
}

- (id)_initWithConnection:(id)connection exportedObject:(id)object interface:(id)interface
{
  v8 = [(_NSXPCDistantObject *)self init];
  if (v8)
  {
    connectionCopy = connection;
    v8->_connection = connectionCopy;
    if (connectionCopy)
    {
      connectionCopy = connectionCopy->_exportInfo;
    }

    v8->_proxyNumber = [(_NSXPCConnectionExportedObjectTable *)connectionCopy proxyNumberForExportedObject:object interface:interface];
    v8->_flags = 1;
  }

  return v8;
}

- (_NSXPCDistantObject)initWithCoder:(id)coder
{
  v5 = [(_NSXPCDistantObject *)self init];
  if (!v5)
  {
    return v5;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: This class may only be decoded by an NSXPCCoder.", _NSMethodExceptionProem(v5, a2)), 0}];
    objc_exception_throw(v11);
  }

  v5->_proxyNumber = [coder decodeInt64ForKey:@"pn"];
  v6 = [coder decodeBoolForKey:@"ex"];
  connection = [coder connection];
  v5->_connection = connection;
  if (v6)
  {
    if (connection)
    {
      v5->_generationCount = *(*(connection + 9) + 8);
      if (v5->_proxyNumber != 1)
      {
        [(_NSXPCConnectionImportInfo *)*(connection + 9) addProxy:v5];
      }
    }

    else
    {
      v5->_generationCount = 0;
    }

    return v5;
  }

  v5->_flags |= 1uLL;
  connection2 = [coder connection];
  if (connection2)
  {
    connection2 = connection2[7];
  }

  v9 = [(_NSXPCConnectionExportedObjectTable *)connection2 exportedObjectForProxyNumber:?];
  if (!v9)
  {
    return v5;
  }

  v12 = v9;

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [NSString stringWithFormat:@"%@: This class may only be encoded by an NSXPCCoder.", _NSMethodExceptionProem(self, a2)];
    goto LABEL_8;
  }

  connection = self->_connection;
  if (connection != [coder connection])
  {
    v8 = [NSString stringWithFormat:@"%@: This proxy object may only be sent over the connection on which it was received.", _NSMethodExceptionProem(self, a2)];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v8 userInfo:0]);
  }

  [coder encodeInt64:self->_proxyNumber forKey:@"pn"];
  v7 = self->_flags & 1;

  [coder encodeBool:v7 forKey:@"ex"];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _NSXPCDistantObject;
  if ([(_NSXPCDistantObject *)&v8 conformsToProtocol:?])
  {
    return 1;
  }

  if (self)
  {
    Property = objc_getProperty(self, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  return protocol_conformsToProtocol([Property protocol], protocol);
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v7 = *MEMORY[0x1E69E9840];
  result = [(NSXPCInterface *)self->_remoteInterface _methodSignatureForRemoteSelector:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = _NSXPCDistantObject;
    return [(_NSXPCDistantObject *)&v6 methodSignatureForSelector:selector];
  }

  return result;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = [(NSXPCInterface *)self->_remoteInterface _respondsToRemoteSelector:?];
  if (v5 == 2)
  {
    return 0;
  }

  if (v5 != 1)
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = _NSXPCDistantObject;
  return [(_NSXPCDistantObject *)&v7 respondsToSelector:selector];
}

- (void)forwardInvocation:(id)invocation
{
  connection = self->_connection;
  if (connection)
  {
    methodSignature = [invocation methodSignature];
    selector = [invocation selector];

    [(NSXPCConnection *)connection _sendInvocation:invocation orArguments:0 count:0 methodSignature:methodSignature selector:selector withProxy:self];
  }
}

- (void)_forwardStackInvocation:(id)invocation
{
  connection = self->_connection;
  if (connection)
  {
    methodSignature = [invocation methodSignature];
    selector = [invocation selector];

    [(NSXPCConnection *)connection _sendInvocation:invocation orArguments:0 count:0 methodSignature:methodSignature selector:selector withProxy:self];
  }
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  v3 = [objc_alloc(-[NSXPCInterface _customSubclass](self->_remoteInterface "_customSubclass"))];

  return v3;
}

- (id)remoteObjectProxyWithUserInfo:(id)info errorHandler:(id)handler
{
  v5 = [objc_alloc(-[NSXPCInterface _customSubclass](self->_remoteInterface "_customSubclass"))];
  [v5 set_userInfo:info];
  return v5;
}

- (id)remoteObjectProxyWithTimeout:(double)timeout errorHandler:(id)handler
{
  result = [objc_alloc(-[NSXPCInterface _customSubclass](self->_remoteInterface "_customSubclass"))];
  if (result)
  {
    *(result + 8) = timeout;
  }

  return result;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  v3 = [objc_alloc(-[NSXPCInterface _customSubclass](self->_remoteInterface "_customSubclass"))];

  return v3;
}

@end