@interface PUPickerRemoteViewController
+ (void)requestViewControllerForExtension:(id)extension proposedSize:(CGSize)size completionHandler:(id)handler;
@end

@implementation PUPickerRemoteViewController

+ (void)requestViewControllerForExtension:(id)extension proposedSize:(CGSize)size completionHandler:(id)handler
{
  extensionCopy = extension;
  handlerCopy = handler;
  if (extensionCopy)
  {
    if (handlerCopy)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __97__PUPickerRemoteViewController_requestViewControllerForExtension_proposedSize_completionHandler___block_invoke;
      v10[3] = &unk_1E83F7318;
      v11 = handlerCopy;
      v8 = handlerCopy;
      [extensionCopy instantiateViewControllerWithInputItems:MEMORY[0x1E695E0F0] connectionHandler:v10];

      return;
    }
  }

  else
  {
    _PFAssertFailHandler();
  }

  v9 = _PFAssertFailHandler();
  __97__PUPickerRemoteViewController_requestViewControllerForExtension_proposedSize_completionHandler___block_invoke(v9);
}

@end