@interface MPAVRoutingSheetAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (MPAVRoutingSheetAccessibility)initWithAVItemType:(int64_t)type;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MPAVRoutingSheetAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MPAVRoutingSheet" hasInstanceVariable:@"_dismissBackgroundButton" withType:"UIButton"];
  [validationsCopy validateClass:@"MPAVRoutingSheet" hasInstanceVariable:@"_dismissControlsViewButton" withType:"UIButton"];
  [validationsCopy validateClass:@"MPAVRoutingSheet" hasInstanceMethod:@"initWithAVItemType:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"MPAVRoutingSheet" hasInstanceMethod:@"dismiss" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = MPAVRoutingSheetAccessibility;
  [(MPAVRoutingSheetAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(MPAVRoutingSheetAccessibility *)self safeValueForKey:@"_dismissBackgroundButton"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(MPAVRoutingSheetAccessibility *)self safeValueForKey:@"_dismissControlsViewButton"];
  [v4 setIsAccessibilityElement:0];
}

- (MPAVRoutingSheetAccessibility)initWithAVItemType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = MPAVRoutingSheetAccessibility;
  v3 = [(MPAVRoutingSheetAccessibility *)&v5 initWithAVItemType:type];
  [(MPAVRoutingSheetAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

@end