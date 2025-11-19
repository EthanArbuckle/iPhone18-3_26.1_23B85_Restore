@interface ChromeHostViewCellAccessibility
- (BOOL)isAccessibilityElement;
- (void)setAccessibilityIdentifier:(id)a3;
@end

@implementation ChromeHostViewCellAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(ChromeHostViewCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_4];
  v3 = v2 == 0;

  return v3;
}

uint64_t __57__ChromeHostViewCellAccessibility_isAccessibilityElement__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    MEMORY[0x29C2D8570](@"HealthExperienceUI.DismissibleTileHeaderView");
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)setAccessibilityIdentifier:(id)a3
{
  v4 = a3;
  UIAccessibilityPostNotification(0x3E9u, 0);
  v5.receiver = self;
  v5.super_class = ChromeHostViewCellAccessibility;
  [(ChromeHostViewCellAccessibility *)&v5 setAccessibilityIdentifier:v4];
}

@end