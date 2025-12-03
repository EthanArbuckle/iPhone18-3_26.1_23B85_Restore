@interface PUPickerExtensionHostContext
- (_PUPickerExtensionContextHostInterface)delegate;
- (void)_pickerDidFinishPicking:(id)picking action:(int64_t)action error:(id)error;
@end

@implementation PUPickerExtensionHostContext

- (_PUPickerExtensionContextHostInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_pickerDidFinishPicking:(id)picking action:(int64_t)action error:(id)error
{
  pickingCopy = picking;
  errorCopy = error;
  v7 = errorCopy;
  v8 = pickingCopy;
  pl_dispatch_on_main_queue();
}

void __69__PUPickerExtensionHostContext__pickerDidFinishPicking_action_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _pickerDidFinishPicking:*(a1 + 40) action:*(a1 + 56) error:*(a1 + 48)];
}

void __65__PUPickerExtensionHostContext__pickerDidSetModalInPresentation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _pickerDidSetModalInPresentation:*(a1 + 40)];
}

void __71__PUPickerExtensionHostContext__pickerDidSetOnboardingHeaderDismissed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _pickerDidSetOnboardingHeaderDismissed:*(a1 + 40)];
}

void __72__PUPickerExtensionHostContext__pickerDidSetOnboardingOverlayDismissed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 _pickerDidSetOnboardingOverlayDismissed:*(a1 + 40)];
}

@end