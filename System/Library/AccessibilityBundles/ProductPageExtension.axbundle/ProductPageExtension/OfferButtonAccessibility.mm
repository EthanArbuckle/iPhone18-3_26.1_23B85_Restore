@interface OfferButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (OfferButtonAccessibility)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
- (void)accessibilityShowLoading;
- (void)accessibilityShowPaused;
- (void)accessibilityShowProgress:(double)progress;
- (void)accessibilityShowRedownload;
- (void)accessibilityShowText:(id)text;
@end

@implementation OfferButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ProductPageExtension.OfferButton" hasInstanceMethod:@"accessibilityShowRedownload" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.OfferButton" hasInstanceMethod:@"accessibilityShowLoading" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.OfferButton" hasInstanceMethod:@"accessibilityShowProgress:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.OfferButton" hasInstanceMethod:@"accessibilityShowText:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.OfferButton" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.OfferButton" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.OfferButton" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"ProductPageExtension.OfferButton" hasInstanceMethod:@"accessibilityShowPaused" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.OfferButton" hasInstanceMethod:@"accessibilityOfferLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.OfferButton" hasSwiftField:@"label" withSwiftType:"DynamicTypeLabel"];
  [validationsCopy validateClass:@"ProductPageExtension.OfferButton" hasSwiftField:@"subtitleLabel" withSwiftType:"DynamicTypeLabel"];
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = OfferButtonAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(OfferButtonAccessibility *)&v5 accessibilityTraits]| *MEMORY[0x29EDC7FF0];
  if ([(OfferButtonAccessibility *)self safeBoolForKey:@"isEnabled"])
  {
    return v3 & ~*MEMORY[0x29EDC7FA8];
  }

  else
  {
    return *MEMORY[0x29EDC7FA8] | v3;
  }
}

- (id)accessibilityLabel
{
  v14.receiver = self;
  v14.super_class = OfferButtonAccessibility;
  accessibilityLabel = [(OfferButtonAccessibility *)&v14 accessibilityLabel];
  v4 = [(OfferButtonAccessibility *)self safeSwiftValueForKey:@"label"];
  v5 = [(OfferButtonAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  accessibilityLabel2 = [v4 accessibilityLabel];
  v7 = accessibilityLabel2;
  if (accessibilityLabel2)
  {
    v8 = accessibilityLabel == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
  }

  else
  {
    accessibilityLabel3 = [v4 accessibilityLabel];
    v10 = [accessibilityLabel containsString:accessibilityLabel3];

    if (v10)
    {
      localizedLowercaseString = __UIAXStringForVariables();
      goto LABEL_10;
    }
  }

  localizedLowercaseString = [accessibilityLabel localizedLowercaseString];
LABEL_10:
  v12 = localizedLowercaseString;

  return v12;
}

- (OfferButtonAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = OfferButtonAccessibility;
  v3 = [(OfferButtonAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(OfferButtonAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)accessibilityShowRedownload
{
  v3.receiver = self;
  v3.super_class = OfferButtonAccessibility;
  [(OfferButtonAccessibility *)&v3 accessibilityShowRedownload];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  [(OfferButtonAccessibility *)self setAccessibilityHint:0];
  [(OfferButtonAccessibility *)self setAccessibilityValue:0];
}

- (void)accessibilityShowLoading
{
  v4.receiver = self;
  v4.super_class = OfferButtonAccessibility;
  [(OfferButtonAccessibility *)&v4 accessibilityShowLoading];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  v3 = accessibilityAppStoreLocalizedString(@"cancel.download.hint");
  [(OfferButtonAccessibility *)self setAccessibilityHint:v3];

  [(OfferButtonAccessibility *)self setAccessibilityValue:0];
}

- (void)accessibilityShowProgress:(double)progress
{
  v6.receiver = self;
  v6.super_class = OfferButtonAccessibility;
  [(OfferButtonAccessibility *)&v6 accessibilityShowProgress:?];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  v4 = accessibilityAppStoreLocalizedString(@"cancel.download.hint");
  [(OfferButtonAccessibility *)self setAccessibilityHint:v4];

  v5 = AXFormatFloatWithPercentage();
  [(OfferButtonAccessibility *)self setAccessibilityValue:v5];
}

- (void)accessibilityShowText:(id)text
{
  v4.receiver = self;
  v4.super_class = OfferButtonAccessibility;
  [(OfferButtonAccessibility *)&v4 accessibilityShowText:text];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  [(OfferButtonAccessibility *)self setAccessibilityValue:0];
  [(OfferButtonAccessibility *)self setAccessibilityHint:0];
}

- (void)accessibilityShowPaused
{
  v3.receiver = self;
  v3.super_class = OfferButtonAccessibility;
  [(OfferButtonAccessibility *)&v3 accessibilityShowPaused];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  [(OfferButtonAccessibility *)self setAccessibilityHint:0];
  [(OfferButtonAccessibility *)self setAccessibilityValue:0];
}

- (id)accessibilityUserInputLabels
{
  objc_opt_class();
  v3 = [(OfferButtonAccessibility *)self safeValueForKey:@"accessibilityOfferLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = __UIAXStringForVariables();
  v6 = MEMORY[0x29C2E9440](v5);

  return v6;
}

@end