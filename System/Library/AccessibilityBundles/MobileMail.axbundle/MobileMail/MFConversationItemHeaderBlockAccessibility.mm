@interface MFConversationItemHeaderBlockAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)createPrimaryViews;
@end

@implementation MFConversationItemHeaderBlockAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFConversationItemHeaderBlock" hasInstanceMethod:@"horizontalStatusIndicatorContentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFConversationItemHeaderBlock" hasInstanceMethod:@"createPrimaryViews" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = MFConversationItemHeaderBlockAccessibility;
  [(MFConversationItemHeaderBlockAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(MFConversationItemHeaderBlockAccessibility *)self safeValueForKey:@"horizontalStatusIndicatorContentView"];
  [v3 accessibilitySetIdentification:@"AXAccessibilityStatusIndicatorView"];
}

- (void)createPrimaryViews
{
  v3.receiver = self;
  v3.super_class = MFConversationItemHeaderBlockAccessibility;
  [(MFConversationItemHeaderBlockAccessibility *)&v3 createPrimaryViews];
  [(MFConversationItemHeaderBlockAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end