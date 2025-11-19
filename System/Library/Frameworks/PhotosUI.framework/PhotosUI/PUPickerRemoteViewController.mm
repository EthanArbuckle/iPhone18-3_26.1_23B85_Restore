@interface PUPickerRemoteViewController
+ (void)requestViewControllerForExtension:(id)a3 proposedSize:(CGSize)a4 completionHandler:(id)a5;
@end

@implementation PUPickerRemoteViewController

+ (void)requestViewControllerForExtension:(id)a3 proposedSize:(CGSize)a4 completionHandler:(id)a5
{
  v6 = a3;
  v7 = a5;
  if (v6)
  {
    if (v7)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __97__PUPickerRemoteViewController_requestViewControllerForExtension_proposedSize_completionHandler___block_invoke;
      v10[3] = &unk_1E83F7318;
      v11 = v7;
      v8 = v7;
      [v6 instantiateViewControllerWithInputItems:MEMORY[0x1E695E0F0] connectionHandler:v10];

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