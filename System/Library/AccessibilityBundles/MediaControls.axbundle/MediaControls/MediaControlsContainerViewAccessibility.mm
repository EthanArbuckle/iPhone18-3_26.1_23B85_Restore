@interface MediaControlsContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation MediaControlsContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MediaControlsContainerView" hasInstanceVariable:@"_timeControl" withType:"MediaControlsTimeControl"];
  [validationsCopy validateClass:@"MediaControlsContainerView" hasInstanceVariable:@"_transportStackView" withType:"MediaControlsTransportStackView"];
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(MediaControlsContainerViewAccessibility *)self safeUIViewForKey:@"_timeControl"];
  v5 = [(MediaControlsContainerViewAccessibility *)self safeUIViewForKey:@"_transportStackView"];
  v6 = [v3 axArrayByIgnoringNilElementsWithCount:{2, v4, v5}];

  return v6;
}

@end