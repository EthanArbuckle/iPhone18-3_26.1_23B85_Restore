@interface DOCAddTagViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (DOCAddTagViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation DOCAddTagViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DOCAddTagView" hasInstanceVariable:@"_tagNameTextField" withType:"DOCAddTagViewTextField"];
  [validationsCopy validateClass:@"DOCAddTagView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (DOCAddTagViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = DOCAddTagViewAccessibility;
  v3 = [(DOCAddTagViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(DOCAddTagViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = DOCAddTagViewAccessibility;
  [(DOCAddTagViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(DOCAddTagViewAccessibility *)self safeValueForKey:@"_tagNameTextField"];
  v4 = accessibilityLocalizedString(@"add.tag.text.field");
  [v3 setAccessibilityLabel:v4];
}

@end