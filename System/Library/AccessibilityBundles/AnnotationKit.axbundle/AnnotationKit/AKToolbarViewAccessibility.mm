@interface AKToolbarViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (AKToolbarViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AKToolbarViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKToolbarView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"AKToolbarView" hasInstanceVariable:@"_toolbar" withType:"UIToolbar"];
  [validationsCopy validateClass:@"AKToolbarView" hasInstanceVariable:@"_undoButton" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"AKToolbarView" hasInstanceVariable:@"_redoButton" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"AKToolbarView" hasInstanceVariable:@"_shapesPickerButton" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"AKToolbarView" hasInstanceVariable:@"_attributesPickerButton" withType:"AKAttributesPickerButton"];
}

- (AKToolbarViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = AKToolbarViewAccessibility;
  v3 = [(AKToolbarViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(AKToolbarViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = AKToolbarViewAccessibility;
  [(AKToolbarViewAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  v3 = [(AKToolbarViewAccessibility *)self safeValueForKey:@"_toolbar"];
  [v3 setShouldGroupAccessibilityChildren:0];

  v4 = [(AKToolbarViewAccessibility *)self safeValueForKey:@"_undoButton"];
  v5 = accessibilityLocalizedString(@"undo.button");
  [v4 setAccessibilityLabel:v5];

  v6 = [(AKToolbarViewAccessibility *)self safeValueForKey:@"_redoButton"];
  v7 = accessibilityLocalizedString(@"redo.button");
  [v6 setAccessibilityLabel:v7];

  v8 = [(AKToolbarViewAccessibility *)self safeValueForKey:@"_shapesPickerButton"];
  v9 = accessibilityLocalizedString(@"add.shape.button");
  [v8 setAccessibilityLabel:v9];

  v10 = [(AKToolbarViewAccessibility *)self safeValueForKey:@"_attributesPickerButton"];
  v11 = accessibilityLocalizedString(@"shape.attributes");
  [v10 setAccessibilityLabel:v11];
}

@end