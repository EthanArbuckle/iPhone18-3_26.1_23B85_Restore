@interface PKPassFrontFaceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)createBodyContentViews;
- (void)setBottomRightItem:(int64_t)a3;
@end

@implementation PKPassFrontFaceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPassFrontFaceView" hasInstanceVariable:@"_bottomRightItemView" withType:"UIView"];
  [v3 validateClass:@"PKPassFrontFaceView" hasInstanceMethod:@"bottomRightItem" withFullSignature:{"q", 0}];
  [v3 validateClass:@"PKPassFrontFaceView" hasInstanceMethod:@"setBottomRightItem:" withFullSignature:{"v", "q", 0}];
}

- (void)createBodyContentViews
{
  v3.receiver = self;
  v3.super_class = PKPassFrontFaceViewAccessibility;
  [(PKPassFrontFaceViewAccessibility *)&v3 createBodyContentViews];
  [(PKPassFrontFaceViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)setBottomRightItem:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = PKPassFrontFaceViewAccessibility;
  [(PKPassFrontFaceViewAccessibility *)&v4 setBottomRightItem:a3];
  [(PKPassFrontFaceViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end