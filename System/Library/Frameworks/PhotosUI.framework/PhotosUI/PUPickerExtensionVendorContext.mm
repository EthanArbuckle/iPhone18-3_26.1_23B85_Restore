@interface PUPickerExtensionVendorContext
- (_PUPickerExtensionContextVendorInterface)delegate;
- (void)_deselectItemsWithIdentifiers:(id)identifiers;
- (void)_moveItemWithIdentifier:(id)identifier afterIdentifier:(id)afterIdentifier;
- (void)_overrideSelectedItemsWithIdentifiers:(id)identifiers;
- (void)_popViewControllerWithReply:(id)reply;
- (void)_searchWithString:(id)string;
- (void)_startActivityIndicatorsForAssetsWithIdentifiers:(id)identifiers;
- (void)_stopActivityIndicatorsForAssetsWithIdentifiers:(id)identifiers;
- (void)_updateConfiguration:(id)configuration completionHandler:(id)handler;
- (void)_updatePickerUsingUpdateConfiguration:(id)configuration;
@end

@implementation PUPickerExtensionVendorContext

- (_PUPickerExtensionContextVendorInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __68__PUPickerExtensionVendorContext__hostModalInPresentationDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _hostModalInPresentationDidChange:*(a1 + 40)];
}

void __49__PUPickerExtensionVendorContext__zoomOutContent__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 _zoomOutContent];
}

void __48__PUPickerExtensionVendorContext__zoomInContent__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 _zoomInContent];
}

void __65__PUPickerExtensionVendorContext__scrollContentToInitialPosition__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 _scrollContentToInitialPosition];
}

- (void)_popViewControllerWithReply:(id)reply
{
  replyCopy = reply;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    delegate = [(PUPickerExtensionVendorContext *)self delegate];
    [delegate _popViewControllerWithReply:replyCopy];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__PUPickerExtensionVendorContext__popViewControllerWithReply___block_invoke;
    v6[3] = &unk_1E83F7840;
    v6[4] = self;
    v7 = replyCopy;
    dispatch_sync(MEMORY[0x1E69E96A0], v6);
  }
}

void __62__PUPickerExtensionVendorContext__popViewControllerWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _popViewControllerWithReply:*(a1 + 40)];
}

- (void)_searchWithString:(id)string
{
  stringCopy = string;
  v3 = stringCopy;
  pl_dispatch_on_main_queue();
}

void __52__PUPickerExtensionVendorContext__searchWithString___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _searchWithString:*(a1 + 40)];
}

- (void)_overrideSelectedItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v3 = identifiersCopy;
  pl_dispatch_on_main_queue();
}

void __72__PUPickerExtensionVendorContext__overrideSelectedItemsWithIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _overrideSelectedItemsWithIdentifiers:*(a1 + 40)];
}

- (void)_moveItemWithIdentifier:(id)identifier afterIdentifier:(id)afterIdentifier
{
  identifierCopy = identifier;
  afterIdentifierCopy = afterIdentifier;
  v6 = afterIdentifierCopy;
  v7 = identifierCopy;
  pl_dispatch_on_main_queue();
}

void __74__PUPickerExtensionVendorContext__moveItemWithIdentifier_afterIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _moveItemWithIdentifier:*(a1 + 40) afterIdentifier:*(a1 + 48)];
}

- (void)_deselectItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v3 = identifiersCopy;
  pl_dispatch_on_main_queue();
}

void __64__PUPickerExtensionVendorContext__deselectItemsWithIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _deselectItemsWithIdentifiers:*(a1 + 40)];
}

- (void)_stopActivityIndicatorsForAssetsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v3 = identifiersCopy;
  pl_dispatch_on_main_queue();
}

void __82__PUPickerExtensionVendorContext__stopActivityIndicatorsForAssetsWithIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _stopActivityIndicatorsForAssetsWithIdentifiers:*(a1 + 40)];
}

- (void)_startActivityIndicatorsForAssetsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v3 = identifiersCopy;
  pl_dispatch_on_main_queue();
}

void __83__PUPickerExtensionVendorContext__startActivityIndicatorsForAssetsWithIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _startActivityIndicatorsForAssetsWithIdentifiers:*(a1 + 40)];
}

- (void)_updatePickerUsingUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v3 = configurationCopy;
  pl_dispatch_on_main_queue();
}

void __72__PUPickerExtensionVendorContext__updatePickerUsingUpdateConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _updatePickerUsingUpdateConfiguration:*(a1 + 40)];
}

- (void)_updateConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = configurationCopy;
  pl_dispatch_on_main_queue();
}

void __73__PUPickerExtensionVendorContext__updateConfiguration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _updateConfiguration:*(a1 + 40) completionHandler:*(a1 + 48)];
}

@end