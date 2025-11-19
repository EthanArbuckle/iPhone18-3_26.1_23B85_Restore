@interface _NSXPCDistantObject
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (_NSXPCDistantObject)initWithCoder:(id)a3;
- (id)_initWithConnection:(id)a3 exportedObject:(id)a4 interface:(id)a5;
- (id)_initWithConnection:(id)a3 proxyNumber:(unint64_t)a4 generationCount:(unint64_t)a5 interface:(id)a6 options:(unint64_t)a7 error:(id)a8;
- (id)_unboostingRemoteObjectProxy;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)remoteObjectProxyWithTimeout:(double)a3 errorHandler:(id)a4;
- (id)remoteObjectProxyWithUserInfo:(id)a3 errorHandler:(id)a4;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)_forwardStackInvocation:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)forwardInvocation:(id)a3;
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

- (id)_initWithConnection:(id)a3 proxyNumber:(unint64_t)a4 generationCount:(unint64_t)a5 interface:(id)a6 options:(unint64_t)a7 error:(id)a8
{
  v14 = [(_NSXPCDistantObject *)self init];
  if (v14)
  {
    v14->_connection = a3;
    v14->_proxyNumber = a4;
    v14->_generationCount = a5;
    v14->_remoteInterface = a6;
    v14->_flags = a7;
    if (a8)
    {
      v14->_errorBlock = _Block_copy(a8);
    }

    connection = v14->_connection;
    if (connection && v14->_proxyNumber != 1)
    {
      [(_NSXPCConnectionImportInfo *)connection->_importInfo addProxy:v14];
    }
  }

  return v14;
}

- (id)_initWithConnection:(id)a3 exportedObject:(id)a4 interface:(id)a5
{
  v8 = [(_NSXPCDistantObject *)self init];
  if (v8)
  {
    v9 = a3;
    v8->_connection = v9;
    if (v9)
    {
      v9 = v9->_exportInfo;
    }

    v8->_proxyNumber = [(_NSXPCConnectionExportedObjectTable *)v9 proxyNumberForExportedObject:a4 interface:a5];
    v8->_flags = 1;
  }

  return v8;
}

- (_NSXPCDistantObject)initWithCoder:(id)a3
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

  v5->_proxyNumber = [a3 decodeInt64ForKey:@"pn"];
  v6 = [a3 decodeBoolForKey:@"ex"];
  v7 = [a3 connection];
  v5->_connection = v7;
  if (v6)
  {
    if (v7)
    {
      v5->_generationCount = *(*(v7 + 9) + 8);
      if (v5->_proxyNumber != 1)
      {
        [(_NSXPCConnectionImportInfo *)*(v7 + 9) addProxy:v5];
      }
    }

    else
    {
      v5->_generationCount = 0;
    }

    return v5;
  }

  v5->_flags |= 1uLL;
  v8 = [a3 connection];
  if (v8)
  {
    v8 = v8[7];
  }

  v9 = [(_NSXPCConnectionExportedObjectTable *)v8 exportedObjectForProxyNumber:?];
  if (!v9)
  {
    return v5;
  }

  v12 = v9;

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [NSString stringWithFormat:@"%@: This class may only be encoded by an NSXPCCoder.", _NSMethodExceptionProem(self, a2)];
    goto LABEL_8;
  }

  connection = self->_connection;
  if (connection != [a3 connection])
  {
    v8 = [NSString stringWithFormat:@"%@: This proxy object may only be sent over the connection on which it was received.", _NSMethodExceptionProem(self, a2)];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v8 userInfo:0]);
  }

  [a3 encodeInt64:self->_proxyNumber forKey:@"pn"];
  v7 = self->_flags & 1;

  [a3 encodeBool:v7 forKey:@"ex"];
}

- (BOOL)conformsToProtocol:(id)a3
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

  return protocol_conformsToProtocol([Property protocol], a3);
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  result = [(NSXPCInterface *)self->_remoteInterface _methodSignatureForRemoteSelector:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = _NSXPCDistantObject;
    return [(_NSXPCDistantObject *)&v6 methodSignatureForSelector:a3];
  }

  return result;
}

- (BOOL)respondsToSelector:(SEL)a3
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
  return [(_NSXPCDistantObject *)&v7 respondsToSelector:a3];
}

- (void)forwardInvocation:(id)a3
{
  connection = self->_connection;
  if (connection)
  {
    v6 = [a3 methodSignature];
    v7 = [a3 selector];

    [(NSXPCConnection *)connection _sendInvocation:a3 orArguments:0 count:0 methodSignature:v6 selector:v7 withProxy:self];
  }
}

- (void)_forwardStackInvocation:(id)a3
{
  connection = self->_connection;
  if (connection)
  {
    v6 = [a3 methodSignature];
    v7 = [a3 selector];

    [(NSXPCConnection *)connection _sendInvocation:a3 orArguments:0 count:0 methodSignature:v6 selector:v7 withProxy:self];
  }
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v3 = [objc_alloc(-[NSXPCInterface _customSubclass](self->_remoteInterface "_customSubclass"))];

  return v3;
}

- (id)remoteObjectProxyWithUserInfo:(id)a3 errorHandler:(id)a4
{
  v5 = [objc_alloc(-[NSXPCInterface _customSubclass](self->_remoteInterface "_customSubclass"))];
  [v5 set_userInfo:a3];
  return v5;
}

- (id)remoteObjectProxyWithTimeout:(double)a3 errorHandler:(id)a4
{
  result = [objc_alloc(-[NSXPCInterface _customSubclass](self->_remoteInterface "_customSubclass"))];
  if (result)
  {
    *(result + 8) = a3;
  }

  return result;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v3 = [objc_alloc(-[NSXPCInterface _customSubclass](self->_remoteInterface "_customSubclass"))];

  return v3;
}

@end