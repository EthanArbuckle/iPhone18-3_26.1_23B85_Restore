@interface OBIconTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (OBIconTextViewAccessibility)initWithIcon:(id)icon iconSize:(CGSize)size text:(id)text dataDetectorTypes:(unint64_t)types;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation OBIconTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"OBIconTextView" hasInstanceVariable:@"_textView" withType:"UITextView"];
  [validationsCopy validateClass:@"OBIconTextView" hasInstanceMethod:@"initWithIcon:iconSize:text:dataDetectorTypes:" withFullSignature:{"@", "{CGSize=dd}", "@", "Q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = OBIconTextViewAccessibility;
  [(OBIconTextViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(OBIconTextViewAccessibility *)self safeValueForKey:@"_textView"];
  [v3 _accessibilitySetTextViewShouldBreakUpParagraphs:1];
}

- (OBIconTextViewAccessibility)initWithIcon:(id)icon iconSize:(CGSize)size text:(id)text dataDetectorTypes:(unint64_t)types
{
  v8.receiver = self;
  v8.super_class = OBIconTextViewAccessibility;
  v6 = [(OBIconTextViewAccessibility *)&v8 initWithIcon:icon iconSize:text text:types dataDetectorTypes:size.width, size.height];
  [(OBIconTextViewAccessibility *)v6 _accessibilityLoadAccessibilityInformation];

  return v6;
}

@end