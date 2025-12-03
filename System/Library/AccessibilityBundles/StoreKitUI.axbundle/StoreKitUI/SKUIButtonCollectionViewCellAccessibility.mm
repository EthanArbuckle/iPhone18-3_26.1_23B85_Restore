@interface SKUIButtonCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SKUIButtonCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIButtonCollectionViewCell" hasInstanceVariable:@"_button" withType:"UIControl"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"isUserInteractionEnabled" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SKUIButtonCollectionViewCellAccessibility *)self safeValueForKey:@"_button"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  v3 = [(SKUIButtonCollectionViewCellAccessibility *)self safeValueForKey:@"_button"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 safeBoolForKey:@"isUserInteractionEnabled"];
  accessibilityTraits = [v4 accessibilityTraits];
  if (v5)
  {
    v7 = *MEMORY[0x29EDC7F70];
  }

  else
  {
    v7 = 0;
  }

  return accessibilityTraits | v7;
}

@end