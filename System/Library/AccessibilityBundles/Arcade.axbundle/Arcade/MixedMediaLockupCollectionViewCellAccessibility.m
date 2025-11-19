@interface MixedMediaLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilitySupplementaryFooterViews;
- (unint64_t)accessibilityTraits;
@end

@implementation MixedMediaLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Arcade.MixedMediaLockupCollectionViewCell" hasInstanceMethod:@"accessibilityLockupView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Arcade.MixedMediaLockupCollectionViewCell" hasInstanceMethod:@"accessibilityTaglineLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Arcade.MixedMediaLockupCollectionViewCell" hasInstanceMethod:@"accessibilityVideoView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Arcade.MixedMediaLockupCollectionViewCell" hasInstanceMethod:@"accessibilityMediaView" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(MixedMediaLockupCollectionViewCellAccessibility *)self _axLockupView];
  v3 = [v2 isAccessibilityElement];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(MixedMediaLockupCollectionViewCellAccessibility *)self _axLockupView];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(MixedMediaLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityVideoView"];
  if ([v4 _accessibilityViewIsVisible])
  {
    [v3 axSafelyAddObject:v4];
  }

  v5 = [(MixedMediaLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityMediaView"];
  if ([v5 _accessibilityViewIsVisible])
  {
    [v3 axSafelyAddObject:v5];
  }

  v6 = [(MixedMediaLockupCollectionViewCellAccessibility *)self _axLockupView];
  v7 = [v6 _accessibilitySupplementaryFooterViews];
  [v3 axSafelyAddObjectsFromArray:v7];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(MixedMediaLockupCollectionViewCellAccessibility *)self _axLockupView];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end