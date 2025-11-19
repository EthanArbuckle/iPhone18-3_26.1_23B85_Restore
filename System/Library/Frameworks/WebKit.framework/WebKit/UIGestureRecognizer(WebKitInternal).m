@interface UIGestureRecognizer(WebKitInternal)
- (uint64_t)_wk_isTextInteractionLoupeGesture;
- (uint64_t)_wk_isTextInteractionTapGesture;
@end

@implementation UIGestureRecognizer(WebKitInternal)

- (uint64_t)_wk_isTextInteractionLoupeGesture
{
  v1 = [a1 name];

  return [v1 isEqualToString:@"UITextInteractionNameInteractiveRefinement"];
}

- (uint64_t)_wk_isTextInteractionTapGesture
{
  v1 = [a1 name];

  return [v1 isEqualToString:@"UITextInteractionNameSingleTap"];
}

@end