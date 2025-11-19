@interface _INUIExtensionHostContext
+ (id)_allowedItemPayloadClasses;
- (INUIExtensionHostContextDelegate)extensionHostContextDelegate;
- (id)_errorHandlingExtensionContextProxy;
- (void)requestHandlingOfIntent:(id)a3;
- (void)setExtensionContextState:(id)a3 completion:(id)a4;
- (void)willBeginEditing;
@end

@implementation _INUIExtensionHostContext

+ (id)_allowedItemPayloadClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (INUIExtensionHostContextDelegate)extensionHostContextDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionHostContextDelegate);

  return WeakRetained;
}

- (void)willBeginEditing
{
  v3 = [(_INUIExtensionHostContext *)self extensionHostContextDelegate];
  [v3 extensionHostContextWillBeginEditing:self];
}

- (void)requestHandlingOfIntent:(id)a3
{
  v4 = a3;
  v5 = [(_INUIExtensionHostContext *)self extensionHostContextDelegate];
  [v5 extensionHostContext:self wantsToHandleIntent:v4];
}

- (id)_errorHandlingExtensionContextProxy
{
  v2 = [(_INUIExtensionHostContext *)self _auxiliaryConnection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_357];

  return v3;
}

- (void)setExtensionContextState:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_INUIExtensionHostContext *)self _errorHandlingExtensionContextProxy];
  [v8 setExtensionContextState:v7 completion:v6];
}

@end