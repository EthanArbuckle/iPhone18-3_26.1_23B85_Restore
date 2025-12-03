@interface PUPhotoPickerAbstractExtensionContext
+ (id)_allowedItemPayloadClasses;
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)principalObject;
- (id)proxy;
- (void)firstPayloadFromExtensionItems:(id)items completion:(id)completion;
- (void)invalidateContext;
@end

@implementation PUPhotoPickerAbstractExtensionContext

- (void)firstPayloadFromExtensionItems:(id)items completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  completionCopy = completion;
  identifier = [*MEMORY[0x1E6982E48] identifier];
  firstObject = [itemsCopy firstObject];
  [firstObject attachments];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v21 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([v14 hasItemConformingToTypeIdentifier:identifier])
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __83__PUPhotoPickerAbstractExtensionContext_firstPayloadFromExtensionItems_completion___block_invoke;
          v16[3] = &unk_1E83F72D0;
          v17 = completionCopy;
          [v14 loadItemForTypeIdentifier:identifier options:0 completionHandler:v16];

          goto LABEL_12;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_12:

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __83__PUPhotoPickerAbstractExtensionContext_firstPayloadFromExtensionItems_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)principalObject
{
  v4.receiver = self;
  v4.super_class = PUPhotoPickerAbstractExtensionContext;
  _principalObject = [(PUPhotoPickerAbstractExtensionContext *)&v4 _principalObject];

  return _principalObject;
}

- (void)invalidateContext
{
  _auxiliaryConnection = [(PUPhotoPickerAbstractExtensionContext *)self _auxiliaryConnection];
  [_auxiliaryConnection invalidate];
}

- (id)proxy
{
  _auxiliaryConnection = [(PUPhotoPickerAbstractExtensionContext *)self _auxiliaryConnection];
  v3 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_131];

  return v3;
}

void __46__PUPhotoPickerAbstractExtensionContext_proxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  NSLog(&cfstr_PhotopickerExt.isa, v2);
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_onceToken, &__block_literal_global_107);
  }

  v3 = _extensionAuxiliaryHostProtocol_interface;

  return v3;
}

void __72__PUPhotoPickerAbstractExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4DC0F60];
  v1 = _extensionAuxiliaryHostProtocol_interface;
  _extensionAuxiliaryHostProtocol_interface = v0;

  [_extensionAuxiliaryHostProtocol_interface setClass:objc_opt_class() forSelector:sel_dismissCurrentViewControllerFromPhotoPickerAnimated_ argumentIndex:0 ofReply:0];
  [_extensionAuxiliaryHostProtocol_interface setClass:objc_opt_class() forSelector:sel_didDisplayPhotoPickerSourceType_ argumentIndex:0 ofReply:0];
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v12 = [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
  [_extensionAuxiliaryHostProtocol_interface setClasses:v12 forSelector:sel_didSelectMediaWithInfoDictionary_ argumentIndex:0 ofReply:0];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  [_extensionAuxiliaryHostProtocol_interface setClasses:v11 forSelector:sel_didSelectMultipleMediaItemsWithInfoDictionaries_ argumentIndex:0 ofReply:0];
  [_extensionAuxiliaryHostProtocol_interface setClass:objc_opt_class() forSelector:sel_performTraitCollectionUpdateUsingData_completion_ argumentIndex:0 ofReply:0];
  [_extensionAuxiliaryHostProtocol_interface setClass:objc_opt_class() forSelector:sel_performTraitCollectionUpdateUsingData_completion_ argumentIndex:0 ofReply:1];
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_onceToken, &__block_literal_global_53);
  }

  v3 = _extensionAuxiliaryVendorProtocol_interface;

  return v3;
}

uint64_t __74__PUPhotoPickerAbstractExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4DC98D0];
  v1 = _extensionAuxiliaryVendorProtocol_interface;
  _extensionAuxiliaryVendorProtocol_interface = v0;

  [_extensionAuxiliaryVendorProtocol_interface setClass:objc_opt_class() forSelector:sel_performTraitCollectionUpdateUsingData_completion_ argumentIndex:0 ofReply:0];
  v2 = _extensionAuxiliaryVendorProtocol_interface;
  v3 = objc_opt_class();

  return [v2 setClass:v3 forSelector:sel_performTraitCollectionUpdateUsingData_completion_ argumentIndex:0 ofReply:1];
}

+ (id)_allowedItemPayloadClasses
{
  if (_allowedItemPayloadClasses_onceToken != -1)
  {
    dispatch_once(&_allowedItemPayloadClasses_onceToken, &__block_literal_global_206);
  }

  v3 = _allowedItemPayloadClasses_allowedItemPayloadClasses;

  return v3;
}

void __67__PUPhotoPickerAbstractExtensionContext__allowedItemPayloadClasses__block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = _allowedItemPayloadClasses_allowedItemPayloadClasses;
  _allowedItemPayloadClasses_allowedItemPayloadClasses = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end