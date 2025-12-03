@interface DOCItemInfoOpenButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation DOCItemInfoOpenButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DOCItemInfoOpenButton" hasInstanceMethod:@"openButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DOCItemInfoOpenButton" hasInstanceMethod:@"downloadButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(DOCItemInfoOpenButtonAccessibility *)self safeValueForKey:@"downloadButton"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 isHidden])
  {
    v5 = @"open.button";
  }

  else
  {
    v5 = @"download.button";
  }

  v6 = accessibilityLocalizedString(v5);

  return v6;
}

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  v3 = [(DOCItemInfoOpenButtonAccessibility *)self safeValueForKey:@"openButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = *MEMORY[0x29EDC7F70];
  if (([v4 isHidden] & 1) == 0 && (objc_msgSend(v4, "isEnabled") & 1) == 0)
  {
    v5 |= *MEMORY[0x29EDC7FA8];
  }

  return v5;
}

@end