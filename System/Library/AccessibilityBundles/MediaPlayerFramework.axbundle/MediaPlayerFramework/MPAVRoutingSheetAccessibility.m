@interface MPAVRoutingSheetAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (MPAVRoutingSheetAccessibility)initWithAVItemType:(int64_t)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MPAVRoutingSheetAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MPAVRoutingSheet" hasInstanceVariable:@"_dismissBackgroundButton" withType:"UIButton"];
  [v3 validateClass:@"MPAVRoutingSheet" hasInstanceVariable:@"_dismissControlsViewButton" withType:"UIButton"];
  [v3 validateClass:@"MPAVRoutingSheet" hasInstanceMethod:@"initWithAVItemType:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"MPAVRoutingSheet" hasInstanceMethod:@"dismiss" withFullSignature:{"v", 0}];
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

- (MPAVRoutingSheetAccessibility)initWithAVItemType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MPAVRoutingSheetAccessibility;
  v3 = [(MPAVRoutingSheetAccessibility *)&v5 initWithAVItemType:a3];
  [(MPAVRoutingSheetAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

@end