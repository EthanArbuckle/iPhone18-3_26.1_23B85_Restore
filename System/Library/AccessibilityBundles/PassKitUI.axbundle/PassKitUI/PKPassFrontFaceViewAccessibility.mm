@interface PKPassFrontFaceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)createBodyContentViews;
- (void)setBottomRightItem:(int64_t)item;
@end

@implementation PKPassFrontFaceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPassFrontFaceView" hasInstanceVariable:@"_bottomRightItemView" withType:"UIView"];
  [validationsCopy validateClass:@"PKPassFrontFaceView" hasInstanceMethod:@"bottomRightItem" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PKPassFrontFaceView" hasInstanceMethod:@"setBottomRightItem:" withFullSignature:{"v", "q", 0}];
}

- (void)createBodyContentViews
{
  v3.receiver = self;
  v3.super_class = PKPassFrontFaceViewAccessibility;
  [(PKPassFrontFaceViewAccessibility *)&v3 createBodyContentViews];
  [(PKPassFrontFaceViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)setBottomRightItem:(int64_t)item
{
  v4.receiver = self;
  v4.super_class = PKPassFrontFaceViewAccessibility;
  [(PKPassFrontFaceViewAccessibility *)&v4 setBottomRightItem:item];
  [(PKPassFrontFaceViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end