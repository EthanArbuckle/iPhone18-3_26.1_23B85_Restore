@interface EKUIViewControllerNullTransitionCoordinator
- (CGAffineTransform)targetTransform;
- (UIView)containerView;
@end

@implementation EKUIViewControllerNullTransitionCoordinator

- (CGAffineTransform)targetTransform
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

- (UIView)containerView
{
  v2 = objc_opt_new();

  return v2;
}

@end