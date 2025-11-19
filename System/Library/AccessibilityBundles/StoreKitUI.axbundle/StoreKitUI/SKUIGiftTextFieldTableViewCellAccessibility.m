@interface SKUIGiftTextFieldTableViewCellAccessibility
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SKUIGiftTextFieldTableViewCellAccessibility

- (id)accessibilityValue
{
  v2 = [(SKUIGiftTextFieldTableViewCellAccessibility *)self safeValueForKey:@"textField"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(SKUIGiftTextFieldTableViewCellAccessibility *)self safeValueForKey:@"textField"];
  v4 = [v3 accessibilityTraits];

  v5 = [(SKUIGiftTextFieldTableViewCellAccessibility *)self safeValueForKey:@"isEnabled"];
  LODWORD(v3) = [v5 BOOLValue];

  v6 = *MEMORY[0x29EDC7FA8];
  if (v3)
  {
    v6 = 0;
  }

  return v6 | v4;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(SKUIGiftTextFieldTableViewCellAccessibility *)self safeValueForKey:@"textField"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end