@interface SFUnifiedTabBarItemTitleContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsMinimized;
- (id)_accessibilityNavBarParent;
- (id)accessibilityValue;
- (int64_t)_accessibilityExpandedStatus;
- (unint64_t)accessibilityTraits;
@end

@implementation SFUnifiedTabBarItemTitleContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFCapsuleNavigationBar"];
  [validationsCopy validateClass:@"SFCapsuleNavigationBar" hasInstanceMethod:@"isMinimized" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemTitleContainerView" hasInstanceMethod:@"securityAnnotation" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemTitleContainerView" hasInstanceMethod:@"showsPrivateAnnotation" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemTitleContainerView" hasInstanceMethod:@"_showsPlaceholder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemTitleContainerView" hasInstanceMethod:@"showsSearchIcon" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemTitleContainerView" hasInstanceMethod:@"showsSearchField" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemTitleContainerView" hasInstanceVariable:@"_titleLabel" withType:"SFURLLabel"];
}

- (id)accessibilityValue
{
  if ([(SFUnifiedTabBarItemTitleContainerViewAccessibility *)self safeIntegerForKey:@"securityAnnotation"]== 1)
  {
    v3 = accessibilitySafariServicesLocalizedString(@"not.secure.icon");
  }

  else
  {
    v3 = 0;
  }

  if ([(SFUnifiedTabBarItemTitleContainerViewAccessibility *)self safeBoolForKey:@"showsPrivateAnnotation"])
  {
    v4 = accessibilitySafariServicesLocalizedString(@"private.icon");
  }

  else
  {
    v4 = 0;
  }

  v5 = [(SFUnifiedTabBarItemTitleContainerViewAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  accessibilityLabel = [v5 accessibilityLabel];

  if ([(SFUnifiedTabBarItemTitleContainerViewAccessibility *)self safeBoolForKey:@"_showsPlaceholder"])
  {
    v7 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:accessibilityLabel];
    [v7 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD970]];

    accessibilityLabel = v7;
  }

  v8 = __UIAXStringForVariables();

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = SFUnifiedTabBarItemTitleContainerViewAccessibility;
  accessibilityTraits = [(SFUnifiedTabBarItemTitleContainerViewAccessibility *)&v7 accessibilityTraits];
  _accessibilityIsMinimized = [(SFUnifiedTabBarItemTitleContainerViewAccessibility *)self _accessibilityIsMinimized];
  v5 = *MEMORY[0x29EDC7598];
  if (_accessibilityIsMinimized)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (int64_t)_accessibilityExpandedStatus
{
  if ([(SFUnifiedTabBarItemTitleContainerViewAccessibility *)self _accessibilityIsMinimized])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_accessibilityIsMinimized
{
  _accessibilityNavBarParent = [(SFUnifiedTabBarItemTitleContainerViewAccessibility *)self _accessibilityNavBarParent];
  v3 = [_accessibilityNavBarParent safeBoolForKey:@"isMinimized"];

  return v3;
}

- (id)_accessibilityNavBarParent
{
  v3 = MEMORY[0x29C2E0540](@"SFCapsuleNavigationBar", a2);

  return [(SFUnifiedTabBarItemTitleContainerViewAccessibility *)self _accessibilityAncestorIsKindOf:v3];
}

@end