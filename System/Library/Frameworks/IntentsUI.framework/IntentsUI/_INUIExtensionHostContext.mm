@interface _INUIExtensionHostContext
+ (id)_allowedItemPayloadClasses;
- (INUIExtensionHostContextDelegate)extensionHostContextDelegate;
- (id)_errorHandlingExtensionContextProxy;
- (void)requestHandlingOfIntent:(id)intent;
- (void)setExtensionContextState:(id)state completion:(id)completion;
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
  extensionHostContextDelegate = [(_INUIExtensionHostContext *)self extensionHostContextDelegate];
  [extensionHostContextDelegate extensionHostContextWillBeginEditing:self];
}

- (void)requestHandlingOfIntent:(id)intent
{
  intentCopy = intent;
  extensionHostContextDelegate = [(_INUIExtensionHostContext *)self extensionHostContextDelegate];
  [extensionHostContextDelegate extensionHostContext:self wantsToHandleIntent:intentCopy];
}

- (id)_errorHandlingExtensionContextProxy
{
  _auxiliaryConnection = [(_INUIExtensionHostContext *)self _auxiliaryConnection];
  v3 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_357];

  return v3;
}

- (void)setExtensionContextState:(id)state completion:(id)completion
{
  completionCopy = completion;
  stateCopy = state;
  _errorHandlingExtensionContextProxy = [(_INUIExtensionHostContext *)self _errorHandlingExtensionContextProxy];
  [_errorHandlingExtensionContextProxy setExtensionContextState:stateCopy completion:completionCopy];
}

@end