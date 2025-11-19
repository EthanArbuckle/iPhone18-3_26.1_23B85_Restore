@interface UIViewController
@end

@implementation UIViewController

uint64_t __68__UIViewController_AXMapsGlue___accessibilityFirstNonGrabberElement__block_invoke()
{
  v0 = [MEMORY[0x29EDC7328] options];
  v1 = _accessibilityFirstNonGrabberElement_Options;
  _accessibilityFirstNonGrabberElement_Options = v0;

  v2 = _accessibilityFirstNonGrabberElement_Options;

  return [v2 setLeafNodePredicate:&__block_literal_global_448];
}

uint64_t __68__UIViewController_AXMapsGlue___accessibilityFirstNonGrabberElement__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"Card grabber"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v2 isAccessibilityElement];
  }

  return v5;
}

@end