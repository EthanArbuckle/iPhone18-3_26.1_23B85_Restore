@interface NEFilterDataExtensionProviderHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)applySettings:(id)settings completionHandler:(id)handler;
- (void)fetchCurrentRulesForFlow:(id)flow completionHandler:(id)handler;
- (void)fetchProviderConnectionWithCompletionHandler:(id)handler;
- (void)getSourceAppInfo:(id)info completionHandler:(id)handler;
- (void)handleRulesChanged;
- (void)provideRemediationMap:(id)map;
- (void)provideURLAppendStringMap:(id)map;
- (void)providerControlSocketFileHandle:(id)handle;
- (void)report:(id)report;
- (void)sendBrowserContentFilterServerRequest;
- (void)sendSocketContentFilterRequest;
@end

@implementation NEFilterDataExtensionProviderHostContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_4262 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_4262, &__block_literal_global_75_4263);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_4264;

  return v3;
}

uint64_t __75__NEFilterDataExtensionProviderHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol_protocol_4264 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C2A60];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_4267 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_4267, &__block_literal_global_4268);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_4269;

  return v3;
}

uint64_t __77__NEFilterDataExtensionProviderHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol_protocol_4269 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C2910];

  return MEMORY[0x1EEE66BB8]();
}

- (void)applySettings:(id)settings completionHandler:(id)handler
{
  handlerCopy = handler;
  settingsCopy = settings;
  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [delegate applySettings:settingsCopy completionHandler:handlerCopy];
}

- (void)getSourceAppInfo:(id)info completionHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  v7 = +[NEAppInfoCache sharedAppInfoCache];
  if (infoCopy)
  {
    v8 = *(infoCopy + 2);
    v9 = *(infoCopy + 2);
    v10 = *(infoCopy + 3);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v10 = 0;
  }

  v11 = v10;

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__NEFilterDataExtensionProviderHostContext_getSourceAppInfo_completionHandler___block_invoke;
  v13[3] = &unk_1E7F076F0;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [(NEAppInfoCache *)v7 appInfoForPid:v8 UUID:v9 bundleID:v11 completionHandler:v13];
}

- (void)report:(id)report
{
  reportCopy = report;
  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [delegate report:reportCopy];
}

- (void)fetchCurrentRulesForFlow:(id)flow completionHandler:(id)handler
{
  handlerCopy = handler;
  flowCopy = flow;
  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [delegate fetchCurrentRulesForFlow:flowCopy completionHandler:handlerCopy];
}

- (void)sendSocketContentFilterRequest
{
  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [delegate sendSocketContentFilterRequest];
}

- (void)sendBrowserContentFilterServerRequest
{
  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [delegate sendBrowserContentFilterServerRequest];
}

- (void)provideURLAppendStringMap:(id)map
{
  mapCopy = map;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [vendorContext provideURLAppendStringMap:mapCopy];
}

- (void)provideRemediationMap:(id)map
{
  mapCopy = map;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [vendorContext provideRemediationMap:mapCopy];
}

- (void)handleRulesChanged
{
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [vendorContext handleRulesChanged];
}

- (void)fetchProviderConnectionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [vendorContext fetchProviderConnectionWithCompletionHandler:handlerCopy];
}

- (void)providerControlSocketFileHandle:(id)handle
{
  handleCopy = handle;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [vendorContext providerControlSocketFileHandle:handleCopy];
}

@end