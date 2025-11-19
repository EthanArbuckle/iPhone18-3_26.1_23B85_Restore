@interface SFLinkWithPreviewActivityItemProvider
@end

@implementation SFLinkWithPreviewActivityItemProvider

id __77___SFLinkWithPreviewActivityItemProvider_activityViewControllerLinkMetadata___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) webView];
  if (([v1 _selectionAttributes] & 2) != 0 && objc_msgSend(v1, "_contentViewIsFirstResponder"))
  {
    v2 = [v1 firstResponder];
    if (objc_opt_respondsToSelector())
    {
      v3 = [v2 selectedText];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end