@interface PUEditingExtensionHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)commitContentEditingOutput:(id)output withCompletionHandler:(id)handler;
@end

@implementation PUEditingExtensionHostContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken_1432 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_onceToken_1432, &__block_literal_global_15_1433);
  }

  v3 = _extensionAuxiliaryHostProtocol___interface_1434;

  return v3;
}

uint64_t __64__PUEditingExtensionHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4DC51D0];
  v1 = _extensionAuxiliaryHostProtocol___interface_1434;
  _extensionAuxiliaryHostProtocol___interface_1434 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken_1437 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_onceToken_1437, &__block_literal_global_1438);
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface_1439;

  return v3;
}

uint64_t __66__PUEditingExtensionHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4DC2E68];
  v1 = _extensionAuxiliaryVendorProtocol___interface_1439;
  _extensionAuxiliaryVendorProtocol___interface_1439 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)commitContentEditingOutput:(id)output withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  outputCopy = output;
  contentEditingOutputCommitHandler = [(PUEditingExtensionHostContext *)self contentEditingOutputCommitHandler];
  contentEditingOutputCommitHandler[2](contentEditingOutputCommitHandler, outputCopy, handlerCopy);
}

@end