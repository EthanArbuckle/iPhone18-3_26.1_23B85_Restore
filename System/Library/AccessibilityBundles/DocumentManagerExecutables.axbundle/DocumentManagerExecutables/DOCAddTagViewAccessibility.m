@interface DOCAddTagViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (DOCAddTagViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation DOCAddTagViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DOCAddTagView" hasInstanceVariable:@"_tagNameTextField" withType:"DOCAddTagViewTextField"];
  [v3 validateClass:@"DOCAddTagView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (DOCAddTagViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = DOCAddTagViewAccessibility;
  v3 = [(DOCAddTagViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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