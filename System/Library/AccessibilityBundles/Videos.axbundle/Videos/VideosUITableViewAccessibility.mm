@interface VideosUITableViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryHeaderViews;
@end

@implementation VideosUITableViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosDetailViewController"];
  [validationsCopy validateClass:@"VideosDetailViewController" hasInstanceMethod:@"headerContainmentView" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v12[1] = *MEMORY[0x29EDCA608];
  v3 = [(VideosUITableViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_0 startWithSelf:0];
  v4 = v3;
  if (v3)
  {
    _accessibilityViewController = [v3 _accessibilityViewController];
    v6 = [_accessibilityViewController safeValueForKey:@"headerContainmentView"];
    v7 = v6;
    if (v6)
    {
      v12[0] = v6;
      _accessibilitySupplementaryHeaderViews = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:1];
    }

    else
    {
      _accessibilitySupplementaryHeaderViews = 0;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VideosUITableViewAccessibility;
    _accessibilitySupplementaryHeaderViews = [(VideosUITableViewAccessibility *)&v11 _accessibilitySupplementaryHeaderViews];
  }

  v9 = *MEMORY[0x29EDCA608];

  return _accessibilitySupplementaryHeaderViews;
}

uint64_t __72__VideosUITableViewAccessibility__accessibilitySupplementaryHeaderViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29ED3FBC0](@"VideosDetailViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end