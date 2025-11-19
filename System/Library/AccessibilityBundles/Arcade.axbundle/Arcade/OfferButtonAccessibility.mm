@interface OfferButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (OfferButtonAccessibility)initWithFrame:(CGRect)a3;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
- (void)accessibilityShowLoading;
- (void)accessibilityShowPaused;
- (void)accessibilityShowProgress:(double)a3;
- (void)accessibilityShowRedownload;
- (void)accessibilityShowText:(id)a3;
@end

@implementation OfferButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Arcade.OfferButton" hasInstanceMethod:@"accessibilityShowRedownload" withFullSignature:{"v", 0}];
  [v3 validateClass:@"Arcade.OfferButton" hasInstanceMethod:@"accessibilityShowLoading" withFullSignature:{"v", 0}];
  [v3 validateClass:@"Arcade.OfferButton" hasInstanceMethod:@"accessibilityShowProgress:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"Arcade.OfferButton" hasInstanceMethod:@"accessibilityShowText:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"Arcade.OfferButton" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"Arcade.OfferButton" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"Arcade.OfferButton" hasInstanceMethod:@"accessibilityShowPaused" withFullSignature:{"v", 0}];
  [v3 validateClass:@"Arcade.OfferButton" hasInstanceMethod:@"accessibilityOfferLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Arcade.OfferButton" hasSwiftField:@"label" withSwiftType:"DynamicTypeLabel"];
  [v3 validateClass:@"Arcade.OfferButton" hasSwiftField:@"subtitleLabel" withSwiftType:"DynamicTypeLabel"];
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
  v3 = [(OfferButtonAccessibility *)&v14 accessibilityLabel];
  v4 = [(OfferButtonAccessibility *)self safeSwiftValueForKey:@"label"];
  v5 = [(OfferButtonAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  v6 = [v4 accessibilityLabel];
  v7 = v6;
  if (v6)
  {
    v8 = v3 == 0;
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
    v9 = [v4 accessibilityLabel];
    v10 = [v3 containsString:v9];

    if (v10)
    {
      v11 = __UIAXStringForVariables();
      goto LABEL_10;
    }
  }

  v11 = [v3 localizedLowercaseString];
LABEL_10:
  v12 = v11;

  return v12;
}

- (OfferButtonAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = OfferButtonAccessibility;
  v3 = [(OfferButtonAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)accessibilityShowProgress:(double)a3
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

- (void)accessibilityShowText:(id)a3
{
  v4.receiver = self;
  v4.super_class = OfferButtonAccessibility;
  [(OfferButtonAccessibility *)&v4 accessibilityShowText:a3];
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
  v6 = MEMORY[0x29C2C9580](v5);

  return v6;
}

@end