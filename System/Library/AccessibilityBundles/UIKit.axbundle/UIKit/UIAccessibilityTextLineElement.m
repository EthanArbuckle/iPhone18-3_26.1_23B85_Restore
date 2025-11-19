@interface UIAccessibilityTextLineElement
- (_NSRange)_accessibilitySelectedTextRange;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
@end

@implementation UIAccessibilityTextLineElement

- (id)accessibilityValue
{
  v8 = self;
  location[1] = a2;
  v6 = [(UIAccessibilityTextLineElement *)self accessibilityContainer];
  location[0] = [v6 _accessibilityAXAttributedValue];
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  length = v8->_range.length;
  v10 = v8->_range.location;
  v11 = length;
  if (v10 + length > [location[0] length])
  {
    v9 = 0;
  }

  else
  {
    v9 = [location[0] substringWithRange:{v8->_range.location, v8->_range.length}];
  }

  objc_storeStrong(location, 0);
  v4 = v9;

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(UIAccessibilityTextLineElement *)self accessibilityContainer];
  v4 = [v3 accessibilityTraits];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)accessibilityHint
{
  v3 = [(UIAccessibilityTextLineElement *)self accessibilityContainer];
  v4 = [v3 _accessibilityAXAttributedHint];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v5 = [(UIAccessibilityTextLineElement *)self accessibilityContainer];
  v6 = [v5 _accessibilitySelectedTextRange];
  v7 = v2;
  MEMORY[0x29EDC9740](v5);
  v3 = v6;
  v4 = v7;
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  range = self->_range;
  if (a3.location <= range.length)
  {
    range.location += a3.location;
  }

  v3 = [(UIAccessibilityTextLineElement *)self accessibilityContainer];
  [v3 _accessibilitySetSelectedTextRange:range];
  MEMORY[0x29EDC9740](v3);
}

@end