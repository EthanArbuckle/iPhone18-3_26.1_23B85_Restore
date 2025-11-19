@interface OBIconTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (OBIconTextViewAccessibility)initWithIcon:(id)a3 iconSize:(CGSize)a4 text:(id)a5 dataDetectorTypes:(unint64_t)a6;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation OBIconTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"OBIconTextView" hasInstanceVariable:@"_textView" withType:"UITextView"];
  [v3 validateClass:@"OBIconTextView" hasInstanceMethod:@"initWithIcon:iconSize:text:dataDetectorTypes:" withFullSignature:{"@", "{CGSize=dd}", "@", "Q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = OBIconTextViewAccessibility;
  [(OBIconTextViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(OBIconTextViewAccessibility *)self safeValueForKey:@"_textView"];
  [v3 _accessibilitySetTextViewShouldBreakUpParagraphs:1];
}

- (OBIconTextViewAccessibility)initWithIcon:(id)a3 iconSize:(CGSize)a4 text:(id)a5 dataDetectorTypes:(unint64_t)a6
{
  v8.receiver = self;
  v8.super_class = OBIconTextViewAccessibility;
  v6 = [(OBIconTextViewAccessibility *)&v8 initWithIcon:a3 iconSize:a5 text:a6 dataDetectorTypes:a4.width, a4.height];
  [(OBIconTextViewAccessibility *)v6 _accessibilityLoadAccessibilityInformation];

  return v6;
}

@end