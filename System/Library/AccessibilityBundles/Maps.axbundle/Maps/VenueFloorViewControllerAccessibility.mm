@interface VenueFloorViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation VenueFloorViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VenueFloorViewController" hasInstanceMethod:@"closeButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VenueFloorViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"VenueFloorViewController" hasInstanceMethod:@"floorCollectionView" withFullSignature:{"@", 0}];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = VenueFloorViewControllerAccessibility;
  [(VenueFloorViewControllerAccessibility *)&v3 loadView];
  [(VenueFloorViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = VenueFloorViewControllerAccessibility;
  [(VenueFloorViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(VenueFloorViewControllerAccessibility *)self safeValueForKey:@"closeButton"];
  [v3 setIsAccessibilityElement:1];
  v4 = AXMapsLocString(@"CLOSE_BUTTON");
  [v3 setAccessibilityLabel:v4];

  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v5 = [(VenueFloorViewControllerAccessibility *)self safeValueForKey:@"floorCollectionView"];
  [v5 setAccessibilityIdentifier:@"Level Switcher"];
}

@end