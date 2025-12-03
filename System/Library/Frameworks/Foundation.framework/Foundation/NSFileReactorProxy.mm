@interface NSFileReactorProxy
+ (void)_enumerateParentDirectoriesStartingAtURL:(id)l usingBlock:(id)block;
- (NSFileReactorProxy)initWithClient:(id)client reactorID:(id)d;
- (id)client;
- (id)descriptionWithIndenting:(id)indenting;
- (id)itemLocation;
- (id)reactorID;
- (void)collectDebuggingInformationWithCompletionHandler:(id)handler;
- (void)dealloc;
@end

@implementation NSFileReactorProxy

- (id)client
{
  v2 = self->_client;

  return v2;
}

- (id)reactorID
{
  v2 = self->_reactorID;

  return v2;
}

- (NSFileReactorProxy)initWithClient:(id)client reactorID:(id)d
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSFileReactorProxy;
  v6 = [(NSFileReactorProxy *)&v8 init];
  if (v6)
  {
    v6->_client = client;
    v6->_reactorID = d;
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileReactorProxy;
  [(NSFileReactorProxy *)&v3 dealloc];
}

- (id)itemLocation
{
  v2 = self->_itemLocation;

  return v2;
}

- (id)descriptionWithIndenting:(id)indenting
{
  v14 = *MEMORY[0x1E69E9840];
  client = self->_client;
  if (client)
  {
    processIdentifier = [(NSXPCConnection *)client processIdentifier];
    v7 = proc_name(processIdentifier, buffer, 0x100u);
    if (v7 < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = [[NSString alloc] initWithBytes:buffer length:v7 encoding:4];
    }

    v9 = [NSString stringWithFormat:@"%@ (%i)", v8, processIdentifier];
  }

  else
  {
    v9 = @"<?>";
  }

  v10 = [indenting stringByAppendingString:@"    "];
  result = [NSString stringWithFormat:@"%@<%@ %p> client: %@, reactor ID: %@", indenting, objc_opt_class(), self, v9, self->_reactorID];
  itemLocation = self->_itemLocation;
  if (itemLocation)
  {
    return [result stringByAppendingFormat:@"\n%@location: %p", v10, itemLocation];
  }

  return result;
}

+ (void)_enumerateParentDirectoriesStartingAtURL:(id)l usingBlock:(id)block
{
  lCopy = l;
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  (*(block + 2))(block, l, &v6);
  if (lCopy && (v6 & 1) == 0)
  {
    do
    {
      if ([objc_msgSend(lCopy "path")])
      {
        break;
      }

      lCopy = [lCopy URLByDeletingLastPathComponent];
      (*(block + 2))(block, lCopy, &v6);
      if (!lCopy)
      {
        break;
      }
    }

    while ((v6 & 1) == 0);
  }
}

- (void)collectDebuggingInformationWithCompletionHandler:(id)handler
{
  v5[5] = *MEMORY[0x1E69E9840];
  _clientProxy = [(NSFileReactorProxy *)self _clientProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__NSFileReactorProxy_collectDebuggingInformationWithCompletionHandler___block_invoke;
  v5[3] = &unk_1E69F3938;
  v5[4] = handler;
  [objc_msgSend(_clientProxy remoteObjectProxyWithErrorHandler:{v5), "collectDebuggingInformationWithCompletionHandler:", handler}];
}

uint64_t __71__NSFileReactorProxy_collectDebuggingInformationWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = @"collectDebuggingInformation";
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v6, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

@end