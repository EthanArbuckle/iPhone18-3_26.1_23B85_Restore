@interface MixedMediaLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilitySupplementaryFooterViews;
- (unint64_t)accessibilityTraits;
@end

@implementation MixedMediaLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Arcade.MixedMediaLockupCollectionViewCell" hasInstanceMethod:@"accessibilityLockupView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Arcade.MixedMediaLockupCollectionViewCell" hasInstanceMethod:@"accessibilityTaglineLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Arcade.MixedMediaLockupCollectionViewCell" hasInstanceMethod:@"accessibilityVideoView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Arcade.MixedMediaLockupCollectionViewCell" hasInstanceMethod:@"accessibilityMediaView" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  _axLockupView = [(MixedMediaLockupCollectionViewCellAccessibility *)self _axLockupView];
  isAccessibilityElement = [_axLockupView isAccessibilityElement];

  return isAccessibilityElement;
}

- (unint64_t)accessibilityTraits
{
  _axLockupView = [(MixedMediaLockupCollectionViewCellAccessibility *)self _axLockupView];
  accessibilityTraits = [_axLockupView accessibilityTraits];

  return accessibilityTraits;
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(MixedMediaLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityVideoView"];
  if ([v4 _accessibilityViewIsVisible])
  {
    [array axSafelyAddObject:v4];
  }

  v5 = [(MixedMediaLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityMediaView"];
  if ([v5 _accessibilityViewIsVisible])
  {
    [array axSafelyAddObject:v5];
  }

  _axLockupView = [(MixedMediaLockupCollectionViewCellAccessibility *)self _axLockupView];
  _accessibilitySupplementaryFooterViews = [_axLockupView _accessibilitySupplementaryFooterViews];
  [array axSafelyAddObjectsFromArray:_accessibilitySupplementaryFooterViews];

  return array;
}

- (CGPoint)accessibilityActivationPoint
{
  _axLockupView = [(MixedMediaLockupCollectionViewCellAccessibility *)self _axLockupView];
  [_axLockupView accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end