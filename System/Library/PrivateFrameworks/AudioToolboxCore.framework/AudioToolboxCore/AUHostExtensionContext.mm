@interface AUHostExtensionContext
+ (id)_allowedItemPayloadClasses;
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (AUHostExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (BOOL)conformsToProtocol:(id)protocol;
- (id)_derivedExtensionAuxiliaryHostProtocol;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)dealloc;
@end

@implementation AUHostExtensionContext

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v4 = [objc_opt_class() conformsToProtocol:protocolCopy];

  return v4;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_delegate;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_derivedExtensionAuxiliaryHostProtocol
{
  v4.receiver = self;
  v4.super_class = AUHostExtensionContext;
  _derivedExtensionAuxiliaryHostProtocol = [(AUHostExtensionContext *)&v4 _derivedExtensionAuxiliaryHostProtocol];
  SetAllowedClassesForAUAudioUnitHostXPCInterface(_derivedExtensionAuxiliaryHostProtocol);

  return _derivedExtensionAuxiliaryHostProtocol;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AUHostExtensionContext;
  [(AUHostExtensionContext *)&v2 dealloc];
}

- (AUHostExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  itemsCopy = items;
  endpointCopy = endpoint;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = AUHostExtensionContext;
  v11 = [(AUHostExtensionContext *)&v15 initWithInputItems:itemsCopy listenerEndpoint:endpointCopy contextUUID:dCopy];
  if (v11)
  {
    v12 = objc_opt_new();
    delegate = v11->_delegate;
    v11->_delegate = v12;
  }

  return v11;
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (+[AUHostExtensionContext _extensionAuxiliaryVendorProtocol]::once != -1)
  {
    dispatch_once(&+[AUHostExtensionContext _extensionAuxiliaryVendorProtocol]::once, &__block_literal_global_151);
  }

  v3 = +[AUHostExtensionContext _extensionAuxiliaryVendorProtocol]::sVendorProtocol;

  return v3;
}

uint64_t __59__AUHostExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  +[AUHostExtensionContext _extensionAuxiliaryVendorProtocol]::sVendorProtocol = CreateAUAudioUnitXPCInterface();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (+[AUHostExtensionContext _extensionAuxiliaryHostProtocol]::once != -1)
  {
    dispatch_once(&+[AUHostExtensionContext _extensionAuxiliaryHostProtocol]::once, &__block_literal_global_5144);
  }

  v3 = +[AUHostExtensionContext _extensionAuxiliaryHostProtocol]::sHostProtocol;

  return v3;
}

void __57__AUHostExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0351D40];
  v1 = +[AUHostExtensionContext _extensionAuxiliaryHostProtocol]::sHostProtocol;
  +[AUHostExtensionContext _extensionAuxiliaryHostProtocol]::sHostProtocol = v0;

  v2 = +[AUHostExtensionContext _extensionAuxiliaryHostProtocol]::sHostProtocol;

  SetAllowedClassesForAUAudioUnitHostXPCInterface(v2);
}

+ (id)_allowedItemPayloadClasses
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:3];
  v4 = [v2 setWithArray:{v3, v7, v8}];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end