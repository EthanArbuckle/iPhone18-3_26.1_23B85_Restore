@interface UIViewController(WebKitInternal)
- (uint64_t)_wk_isInFullscreenPresentation;
@end

@implementation UIViewController(WebKitInternal)

- (uint64_t)_wk_isInFullscreenPresentation
{
  result = [a1 activePresentationController];
  if (result)
  {
    return [a1 modalPresentationStyle] == 0;
  }

  return result;
}

@end