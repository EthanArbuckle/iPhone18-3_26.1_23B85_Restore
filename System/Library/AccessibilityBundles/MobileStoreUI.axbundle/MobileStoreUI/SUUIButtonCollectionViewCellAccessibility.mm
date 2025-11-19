@interface SUUIButtonCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SUUIButtonCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIButtonCollectionViewCell" hasInstanceVariable:@"_button" withType:"UIControl"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"isUserInteractionEnabled" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SUUIButtonCollectionViewCellAccessibility *)self safeValueForKey:@"_button"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  v3 = [(SUUIButtonCollectionViewCellAccessibility *)self safeValueForKey:@"_button"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 safeBoolForKey:@"isUserInteractionEnabled"];
  v6 = [v4 accessibilityTraits];
  if (v5)
  {
    v7 = *MEMORY[0x29EDC7F70];
  }

  else
  {
    v7 = 0;
  }

  return v6 | v7;
}

@end