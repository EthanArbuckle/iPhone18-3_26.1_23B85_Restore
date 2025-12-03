@interface UIGestureRecognizer(WebKitInternal)
- (uint64_t)_wk_isTextInteractionLoupeGesture;
- (uint64_t)_wk_isTextInteractionTapGesture;
@end

@implementation UIGestureRecognizer(WebKitInternal)

- (uint64_t)_wk_isTextInteractionLoupeGesture
{
  name = [self name];

  return [name isEqualToString:@"UITextInteractionNameInteractiveRefinement"];
}

- (uint64_t)_wk_isTextInteractionTapGesture
{
  name = [self name];

  return [name isEqualToString:@"UITextInteractionNameSingleTap"];
}

@end