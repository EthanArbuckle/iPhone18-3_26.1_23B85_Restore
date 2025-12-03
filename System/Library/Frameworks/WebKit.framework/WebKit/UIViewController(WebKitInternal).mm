@interface UIViewController(WebKitInternal)
- (uint64_t)_wk_isInFullscreenPresentation;
@end

@implementation UIViewController(WebKitInternal)

- (uint64_t)_wk_isInFullscreenPresentation
{
  result = [self activePresentationController];
  if (result)
  {
    return [self modalPresentationStyle] == 0;
  }

  return result;
}

@end