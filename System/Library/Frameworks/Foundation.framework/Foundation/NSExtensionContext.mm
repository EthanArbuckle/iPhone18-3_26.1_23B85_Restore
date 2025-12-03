@interface NSExtensionContext
+ (id)_defaultExtensionContextProtocol;
+ (id)_defaultExtensionContextVendorProtocol;
+ (id)_extensionContextForIdentifier:(id)identifier;
+ (id)_extensionContextHostProtocolAllowedClassesForItems;
+ (id)_extensionContextHostProtocolWithAllowedErrorClasses:(id)classes;
+ (id)_extensionContextVendorProtocolWithAllowedErrorClasses:(id)classes;
- ($115C4C562B26FF47E01F9F4EA65B5887)_extensionHostAuditToken;
- (BOOL)_isHost;
- (NSArray)inputItems;
- (NSExtensionContext)initWithCoder:(id)coder;
- (NSExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (NSString)description;
- (NSUUID)_UUID;
- (NSXPCConnection)_auxiliaryConnection;
- (NSXPCListener)_auxiliaryListener;
- (OS_os_transaction)_transaction;
- (_NSExtensionContextHosting)_extensionHostProxy;
- (_NSExtensionContextVending)_extensionVendorProxy;
- (id)_principalObject;
- (id)_processAssertion;
- (id)_requestCleanUpBlock;
- (void)_loadItemForPayload:(id)payload completionHandler:(id)handler;
- (void)_loadPreviewImageForPayload:(id)payload completionHandler:(id)handler;
- (void)_openURL:(id)l completion:(id)completion;
- (void)_setAuxiliaryConnection:(id)connection;
- (void)_setAuxiliaryListener:(id)listener;
- (void)_setExtensionHostAuditToken:(id *)token;
- (void)_setExtensionHostProxy:(id)proxy;
- (void)_setExtensionVendorProxy:(id)proxy;
- (void)_setPrincipalObject:(id)object;
- (void)_setProcessAssertion:(id)assertion;
- (void)_setRequestCleanUpBlock:(id)block;
- (void)_setTransaction:(id)transaction;
- (void)_willPerformHostCallback:(id)callback;
- (void)cancelRequestWithError:(NSError *)error;
- (void)completeRequestReturningItems:(NSArray *)items completionHandler:(void *)completionHandler;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)openURL:(NSURL *)URL completionHandler:(void *)completionHandler;
- (void)setInputItems:(id)items;
- (void)set_UUID:(id)d;
@end

@implementation NSExtensionContext

- (NSUUID)_UUID
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  return [internalImplementation _UUID];
}

- (NSXPCConnection)_auxiliaryConnection
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  return [internalImplementation _auxiliaryConnection];
}

- (NSArray)inputItems
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  return [internalImplementation inputItems];
}

- (id)_principalObject
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  return [internalImplementation _principalObject];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSExtensionContext;
  [(NSExtensionContext *)&v3 dealloc];
}

+ (id)_extensionContextForIdentifier:(id)identifier
{
  v4 = +[_NSExtensionContextVendor _sharedExtensionContextVendor];

  return [v4 _extensionContextForUUID:identifier];
}

- (void)setInputItems:(id)items
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation _setInputItems:items];
}

- (void)completeRequestReturningItems:(NSArray *)items completionHandler:(void *)completionHandler
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation completeRequestReturningItems:items completionHandler:completionHandler];
}

- (void)cancelRequestWithError:(NSError *)error
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation cancelRequestWithError:error];
}

- (void)openURL:(NSURL *)URL completionHandler:(void *)completionHandler
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation openURL:URL completionHandler:completionHandler];
}

- (NSExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSExtensionContext;
  v8 = [(NSExtensionContext *)&v10 init];
  if (v8)
  {
    if (qword_1ED43F768 != -1)
    {
      dispatch_once(&qword_1ED43F768, &__block_literal_global_2_0);
    }

    v8->_internalImplementation = [[qword_1ED43F760 alloc] initWithInputItems:items listenerEndpoint:endpoint contextUUID:d extensionContext:v8];
  }

  return v8;
}

+ (id)_extensionContextHostProtocolAllowedClassesForItems
{
  if (qword_1ED43F768 != -1)
  {
    dispatch_once(&qword_1ED43F768, &__block_literal_global_2_0);
  }

  v3 = qword_1ED43F760;

  return [v3 _extensionContextHostProtocolAllowedClassesForItems];
}

+ (id)_defaultExtensionContextProtocol
{
  if (qword_1ED43F768 != -1)
  {
    dispatch_once(&qword_1ED43F768, &__block_literal_global_2_0);
  }

  v3 = qword_1ED43F760;

  return [v3 _defaultExtensionContextProtocol];
}

+ (id)_extensionContextHostProtocolWithAllowedErrorClasses:(id)classes
{
  if (qword_1ED43F768 != -1)
  {
    dispatch_once(&qword_1ED43F768, &__block_literal_global_2_0);
  }

  v4 = qword_1ED43F760;

  return [v4 _extensionContextHostProtocolWithAllowedErrorClasses:classes];
}

+ (id)_defaultExtensionContextVendorProtocol
{
  if (qword_1ED43F768 != -1)
  {
    dispatch_once(&qword_1ED43F768, &__block_literal_global_2_0);
  }

  v3 = qword_1ED43F760;

  return [v3 _defaultExtensionContextVendorProtocol];
}

+ (id)_extensionContextVendorProtocolWithAllowedErrorClasses:(id)classes
{
  if (qword_1ED43F768 != -1)
  {
    dispatch_once(&qword_1ED43F768, &__block_literal_global_2_0);
  }

  v4 = qword_1ED43F760;

  return [v4 _extensionContextVendorProtocolWithAllowedErrorClasses:classes];
}

- (NSExtensionContext)initWithCoder:(id)coder
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED43F768 != -1)
  {
    dispatch_once(&qword_1ED43F768, &__block_literal_global_2_0);
  }

  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"self.internalExtensionContext"];
  v8.receiver = self;
  v8.super_class = NSExtensionContext;
  v6 = [(NSExtensionContext *)&v8 init];
  if (v6)
  {
    v6->_internalImplementation = v5;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [coder encodeObject:internalImplementation forKey:@"self.internalExtensionContext"];
}

- (void)set_UUID:(id)d
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation set_UUID:d];
}

- (void)_setAuxiliaryConnection:(id)connection
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation _setAuxiliaryConnection:connection];
}

- (NSXPCListener)_auxiliaryListener
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  return [internalImplementation _auxiliaryListener];
}

- (void)_setAuxiliaryListener:(id)listener
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation _setAuxiliaryListener:listener];
}

- (_NSExtensionContextHosting)_extensionHostProxy
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  return [internalImplementation _extensionHostProxy];
}

- (void)_setExtensionHostProxy:(id)proxy
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation _setExtensionHostProxy:proxy];
}

- (BOOL)_isHost
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  return [internalImplementation _isHost];
}

- (_NSExtensionContextVending)_extensionVendorProxy
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  return [internalImplementation _extensionVendorProxy];
}

- (void)_setExtensionVendorProxy:(id)proxy
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation _setExtensionVendorProxy:proxy];
}

- (id)_processAssertion
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  return [internalImplementation _processAssertion];
}

- (void)_setProcessAssertion:(id)assertion
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation _setProcessAssertion:assertion];
}

- (OS_os_transaction)_transaction
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  return [internalImplementation _transaction];
}

- (void)_setTransaction:(id)transaction
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation _setTransaction:transaction];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)_extensionHostAuditToken
{
  result = [(NSExtensionContext *)self internalImplementation];
  if (result)
  {

    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result _extensionHostAuditToken];
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (void)_setExtensionHostAuditToken:(id *)token
{
  v7 = *MEMORY[0x1E69E9840];
  internalImplementation = [(NSExtensionContext *)self internalImplementation];
  v5 = *&token->var0[4];
  v6[0] = *token->var0;
  v6[1] = v5;
  [internalImplementation _setExtensionHostAuditToken:v6];
}

- (id)_requestCleanUpBlock
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  return [internalImplementation _requestCleanUpBlock];
}

- (void)_setRequestCleanUpBlock:(id)block
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation _setRequestCleanUpBlock:block];
}

- (void)_setPrincipalObject:(id)object
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation _setPrincipalObject:object];
}

- (void)invalidate
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation invalidate];
}

- (void)_willPerformHostCallback:(id)callback
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation _willPerformHostCallback:callback];
}

- (void)_loadItemForPayload:(id)payload completionHandler:(id)handler
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation _loadItemForPayload:payload completionHandler:handler];
}

- (void)_loadPreviewImageForPayload:(id)payload completionHandler:(id)handler
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation _loadPreviewImageForPayload:payload completionHandler:handler];
}

- (void)_openURL:(id)l completion:(id)completion
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  [internalImplementation _openURL:l completion:completion];
}

- (NSString)description
{
  internalImplementation = [(NSExtensionContext *)self internalImplementation];

  return [internalImplementation description];
}

@end