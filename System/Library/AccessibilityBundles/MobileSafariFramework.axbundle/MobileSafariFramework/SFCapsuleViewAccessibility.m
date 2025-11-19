@interface SFCapsuleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityElementsHidden;
@end

@implementation SFCapsuleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFCapsuleCollectionView" hasInstanceVariable:@"_items" withType:"NSArray"];
  [v3 validateClass:@"SFCapsuleCollectionView" hasInstanceVariable:@"_selectedItemIndex" withType:"q"];
  [v3 validateClass:@"SFCapsuleCollectionViewItem" hasInstanceMethod:@"capsuleView" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityElementsHidden
{
  v3 = [(SFCapsuleViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2E0540](@"SFCapsuleCollectionView", a2)];
  v4 = [v3 safeArrayForKey:@"_items"];
  v5 = [v3 safeIntegerForKey:@"_selectedItemIndex"];
  v8 = 0;
  if (v5 < [v4 count])
  {
    v6 = [v4 objectAtIndexedSubscript:v5];
    v7 = [v6 safeValueForKey:@"capsuleView"];

    if (v7 != self)
    {
      v8 = 1;
    }
  }

  return v8;
}

@end