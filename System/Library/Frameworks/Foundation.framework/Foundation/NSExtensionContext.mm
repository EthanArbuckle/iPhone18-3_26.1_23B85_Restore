@interface NSExtensionContext
+ (id)_defaultExtensionContextProtocol;
+ (id)_defaultExtensionContextVendorProtocol;
+ (id)_extensionContextForIdentifier:(id)a3;
+ (id)_extensionContextHostProtocolAllowedClassesForItems;
+ (id)_extensionContextHostProtocolWithAllowedErrorClasses:(id)a3;
+ (id)_extensionContextVendorProtocolWithAllowedErrorClasses:(id)a3;
- ($115C4C562B26FF47E01F9F4EA65B5887)_extensionHostAuditToken;
- (BOOL)_isHost;
- (NSArray)inputItems;
- (NSExtensionContext)initWithCoder:(id)a3;
- (NSExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5;
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
- (void)_loadItemForPayload:(id)a3 completionHandler:(id)a4;
- (void)_loadPreviewImageForPayload:(id)a3 completionHandler:(id)a4;
- (void)_openURL:(id)a3 completion:(id)a4;
- (void)_setAuxiliaryConnection:(id)a3;
- (void)_setAuxiliaryListener:(id)a3;
- (void)_setExtensionHostAuditToken:(id *)a3;
- (void)_setExtensionHostProxy:(id)a3;
- (void)_setExtensionVendorProxy:(id)a3;
- (void)_setPrincipalObject:(id)a3;
- (void)_setProcessAssertion:(id)a3;
- (void)_setRequestCleanUpBlock:(id)a3;
- (void)_setTransaction:(id)a3;
- (void)_willPerformHostCallback:(id)a3;
- (void)cancelRequestWithError:(NSError *)error;
- (void)completeRequestReturningItems:(NSArray *)items completionHandler:(void *)completionHandler;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)openURL:(NSURL *)URL completionHandler:(void *)completionHandler;
- (void)setInputItems:(id)a3;
- (void)set_UUID:(id)a3;
@end

@implementation NSExtensionContext

- (NSUUID)_UUID
{
  v2 = [(NSExtensionContext *)self internalImplementation];

  return [v2 _UUID];
}

- (NSXPCConnection)_auxiliaryConnection
{
  v2 = [(NSExtensionContext *)self internalImplementation];

  return [v2 _auxiliaryConnection];
}

- (NSArray)inputItems
{
  v2 = [(NSExtensionContext *)self internalImplementation];

  return [v2 inputItems];
}

- (id)_principalObject
{
  v2 = [(NSExtensionContext *)self internalImplementation];

  return [v2 _principalObject];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSExtensionContext;
  [(NSExtensionContext *)&v3 dealloc];
}

+ (id)_extensionContextForIdentifier:(id)a3
{
  v4 = +[_NSExtensionContextVendor _sharedExtensionContextVendor];

  return [v4 _extensionContextForUUID:a3];
}

- (void)setInputItems:(id)a3
{
  v4 = [(NSExtensionContext *)self internalImplementation];

  [v4 _setInputItems:a3];
}

- (void)completeRequestReturningItems:(NSArray *)items completionHandler:(void *)completionHandler
{
  v6 = [(NSExtensionContext *)self internalImplementation];

  [v6 completeRequestReturningItems:items completionHandler:completionHandler];
}

- (void)cancelRequestWithError:(NSError *)error
{
  v4 = [(NSExtensionContext *)self internalImplementation];

  [v4 cancelRequestWithError:error];
}

- (void)openURL:(NSURL *)URL completionHandler:(void *)completionHandler
{
  v6 = [(NSExtensionContext *)self internalImplementation];

  [v6 openURL:URL completionHandler:completionHandler];
}

- (NSExtensionContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5
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

    v8->_internalImplementation = [[qword_1ED43F760 alloc] initWithInputItems:a3 listenerEndpoint:a4 contextUUID:a5 extensionContext:v8];
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

+ (id)_extensionContextHostProtocolWithAllowedErrorClasses:(id)a3
{
  if (qword_1ED43F768 != -1)
  {
    dispatch_once(&qword_1ED43F768, &__block_literal_global_2_0);
  }

  v4 = qword_1ED43F760;

  return [v4 _extensionContextHostProtocolWithAllowedErrorClasses:a3];
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

+ (id)_extensionContextVendorProtocolWithAllowedErrorClasses:(id)a3
{
  if (qword_1ED43F768 != -1)
  {
    dispatch_once(&qword_1ED43F768, &__block_literal_global_2_0);
  }

  v4 = qword_1ED43F760;

  return [v4 _extensionContextVendorProtocolWithAllowedErrorClasses:a3];
}

- (NSExtensionContext)initWithCoder:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED43F768 != -1)
  {
    dispatch_once(&qword_1ED43F768, &__block_literal_global_2_0);
  }

  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"self.internalExtensionContext"];
  v8.receiver = self;
  v8.super_class = NSExtensionContext;
  v6 = [(NSExtensionContext *)&v8 init];
  if (v6)
  {
    v6->_internalImplementation = v5;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = [(NSExtensionContext *)self internalImplementation];

  [a3 encodeObject:v4 forKey:@"self.internalExtensionContext"];
}

- (void)set_UUID:(id)a3
{
  v4 = [(NSExtensionContext *)self internalImplementation];

  [v4 set_UUID:a3];
}

- (void)_setAuxiliaryConnection:(id)a3
{
  v4 = [(NSExtensionContext *)self internalImplementation];

  [v4 _setAuxiliaryConnection:a3];
}

- (NSXPCListener)_auxiliaryListener
{
  v2 = [(NSExtensionContext *)self internalImplementation];

  return [v2 _auxiliaryListener];
}

- (void)_setAuxiliaryListener:(id)a3
{
  v4 = [(NSExtensionContext *)self internalImplementation];

  [v4 _setAuxiliaryListener:a3];
}

- (_NSExtensionContextHosting)_extensionHostProxy
{
  v2 = [(NSExtensionContext *)self internalImplementation];

  return [v2 _extensionHostProxy];
}

- (void)_setExtensionHostProxy:(id)a3
{
  v4 = [(NSExtensionContext *)self internalImplementation];

  [v4 _setExtensionHostProxy:a3];
}

- (BOOL)_isHost
{
  v2 = [(NSExtensionContext *)self internalImplementation];

  return [v2 _isHost];
}

- (_NSExtensionContextVending)_extensionVendorProxy
{
  v2 = [(NSExtensionContext *)self internalImplementation];

  return [v2 _extensionVendorProxy];
}

- (void)_setExtensionVendorProxy:(id)a3
{
  v4 = [(NSExtensionContext *)self internalImplementation];

  [v4 _setExtensionVendorProxy:a3];
}

- (id)_processAssertion
{
  v2 = [(NSExtensionContext *)self internalImplementation];

  return [v2 _processAssertion];
}

- (void)_setProcessAssertion:(id)a3
{
  v4 = [(NSExtensionContext *)self internalImplementation];

  [v4 _setProcessAssertion:a3];
}

- (OS_os_transaction)_transaction
{
  v2 = [(NSExtensionContext *)self internalImplementation];

  return [v2 _transaction];
}

- (void)_setTransaction:(id)a3
{
  v4 = [(NSExtensionContext *)self internalImplementation];

  [v4 _setTransaction:a3];
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

- (void)_setExtensionHostAuditToken:(id *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [(NSExtensionContext *)self internalImplementation];
  v5 = *&a3->var0[4];
  v6[0] = *a3->var0;
  v6[1] = v5;
  [v4 _setExtensionHostAuditToken:v6];
}

- (id)_requestCleanUpBlock
{
  v2 = [(NSExtensionContext *)self internalImplementation];

  return [v2 _requestCleanUpBlock];
}

- (void)_setRequestCleanUpBlock:(id)a3
{
  v4 = [(NSExtensionContext *)self internalImplementation];

  [v4 _setRequestCleanUpBlock:a3];
}

- (void)_setPrincipalObject:(id)a3
{
  v4 = [(NSExtensionContext *)self internalImplementation];

  [v4 _setPrincipalObject:a3];
}

- (void)invalidate
{
  v2 = [(NSExtensionContext *)self internalImplementation];

  [v2 invalidate];
}

- (void)_willPerformHostCallback:(id)a3
{
  v4 = [(NSExtensionContext *)self internalImplementation];

  [v4 _willPerformHostCallback:a3];
}

- (void)_loadItemForPayload:(id)a3 completionHandler:(id)a4
{
  v6 = [(NSExtensionContext *)self internalImplementation];

  [v6 _loadItemForPayload:a3 completionHandler:a4];
}

- (void)_loadPreviewImageForPayload:(id)a3 completionHandler:(id)a4
{
  v6 = [(NSExtensionContext *)self internalImplementation];

  [v6 _loadPreviewImageForPayload:a3 completionHandler:a4];
}

- (void)_openURL:(id)a3 completion:(id)a4
{
  v6 = [(NSExtensionContext *)self internalImplementation];

  [v6 _openURL:a3 completion:a4];
}

- (NSString)description
{
  v2 = [(NSExtensionContext *)self internalImplementation];

  return [v2 description];
}

@end