@interface NEFilterDataExtensionProviderHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)applySettings:(id)a3 completionHandler:(id)a4;
- (void)fetchCurrentRulesForFlow:(id)a3 completionHandler:(id)a4;
- (void)fetchProviderConnectionWithCompletionHandler:(id)a3;
- (void)getSourceAppInfo:(id)a3 completionHandler:(id)a4;
- (void)handleRulesChanged;
- (void)provideRemediationMap:(id)a3;
- (void)provideURLAppendStringMap:(id)a3;
- (void)providerControlSocketFileHandle:(id)a3;
- (void)report:(id)a3;
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

- (void)applySettings:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [v8 applySettings:v7 completionHandler:v6];
}

- (void)getSourceAppInfo:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NEAppInfoCache sharedAppInfoCache];
  if (v6)
  {
    v8 = *(v6 + 2);
    v9 = *(v6 + 2);
    v10 = *(v6 + 3);
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
  v14 = v5;
  v12 = v5;
  [(NEAppInfoCache *)v7 appInfoForPid:v8 UUID:v9 bundleID:v11 completionHandler:v13];
}

- (void)report:(id)a3
{
  v4 = a3;
  v5 = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [v5 report:v4];
}

- (void)fetchCurrentRulesForFlow:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [v8 fetchCurrentRulesForFlow:v7 completionHandler:v6];
}

- (void)sendSocketContentFilterRequest
{
  v2 = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [v2 sendSocketContentFilterRequest];
}

- (void)sendBrowserContentFilterServerRequest
{
  v2 = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  [v2 sendBrowserContentFilterServerRequest];
}

- (void)provideURLAppendStringMap:(id)a3
{
  v4 = a3;
  v5 = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [v5 provideURLAppendStringMap:v4];
}

- (void)provideRemediationMap:(id)a3
{
  v4 = a3;
  v5 = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [v5 provideRemediationMap:v4];
}

- (void)handleRulesChanged
{
  v2 = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [v2 handleRulesChanged];
}

- (void)fetchProviderConnectionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [v5 fetchProviderConnectionWithCompletionHandler:v4];
}

- (void)providerControlSocketFileHandle:(id)a3
{
  v4 = a3;
  v5 = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [v5 providerControlSocketFileHandle:v4];
}

@end