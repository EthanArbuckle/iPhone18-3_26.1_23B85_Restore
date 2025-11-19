@interface PUPickerExtensionVendorContext
- (_PUPickerExtensionContextVendorInterface)delegate;
- (void)_deselectItemsWithIdentifiers:(id)a3;
- (void)_moveItemWithIdentifier:(id)a3 afterIdentifier:(id)a4;
- (void)_overrideSelectedItemsWithIdentifiers:(id)a3;
- (void)_popViewControllerWithReply:(id)a3;
- (void)_searchWithString:(id)a3;
- (void)_startActivityIndicatorsForAssetsWithIdentifiers:(id)a3;
- (void)_stopActivityIndicatorsForAssetsWithIdentifiers:(id)a3;
- (void)_updateConfiguration:(id)a3 completionHandler:(id)a4;
- (void)_updatePickerUsingUpdateConfiguration:(id)a3;
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

- (void)_popViewControllerWithReply:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5 = [(PUPickerExtensionVendorContext *)self delegate];
    [v5 _popViewControllerWithReply:v4];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__PUPickerExtensionVendorContext__popViewControllerWithReply___block_invoke;
    v6[3] = &unk_1E83F7840;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(MEMORY[0x1E69E96A0], v6);
  }
}

void __62__PUPickerExtensionVendorContext__popViewControllerWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _popViewControllerWithReply:*(a1 + 40)];
}

- (void)_searchWithString:(id)a3
{
  v4 = a3;
  v3 = v4;
  pl_dispatch_on_main_queue();
}

void __52__PUPickerExtensionVendorContext__searchWithString___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _searchWithString:*(a1 + 40)];
}

- (void)_overrideSelectedItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  v3 = v4;
  pl_dispatch_on_main_queue();
}

void __72__PUPickerExtensionVendorContext__overrideSelectedItemsWithIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _overrideSelectedItemsWithIdentifiers:*(a1 + 40)];
}

- (void)_moveItemWithIdentifier:(id)a3 afterIdentifier:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  pl_dispatch_on_main_queue();
}

void __74__PUPickerExtensionVendorContext__moveItemWithIdentifier_afterIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _moveItemWithIdentifier:*(a1 + 40) afterIdentifier:*(a1 + 48)];
}

- (void)_deselectItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  v3 = v4;
  pl_dispatch_on_main_queue();
}

void __64__PUPickerExtensionVendorContext__deselectItemsWithIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _deselectItemsWithIdentifiers:*(a1 + 40)];
}

- (void)_stopActivityIndicatorsForAssetsWithIdentifiers:(id)a3
{
  v4 = a3;
  v3 = v4;
  pl_dispatch_on_main_queue();
}

void __82__PUPickerExtensionVendorContext__stopActivityIndicatorsForAssetsWithIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _stopActivityIndicatorsForAssetsWithIdentifiers:*(a1 + 40)];
}

- (void)_startActivityIndicatorsForAssetsWithIdentifiers:(id)a3
{
  v4 = a3;
  v3 = v4;
  pl_dispatch_on_main_queue();
}

void __83__PUPickerExtensionVendorContext__startActivityIndicatorsForAssetsWithIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _startActivityIndicatorsForAssetsWithIdentifiers:*(a1 + 40)];
}

- (void)_updatePickerUsingUpdateConfiguration:(id)a3
{
  v4 = a3;
  v3 = v4;
  pl_dispatch_on_main_queue();
}

void __72__PUPickerExtensionVendorContext__updatePickerUsingUpdateConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _updatePickerUsingUpdateConfiguration:*(a1 + 40)];
}

- (void)_updateConfiguration:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  pl_dispatch_on_main_queue();
}

void __73__PUPickerExtensionVendorContext__updateConfiguration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _updateConfiguration:*(a1 + 40) completionHandler:*(a1 + 48)];
}

@end