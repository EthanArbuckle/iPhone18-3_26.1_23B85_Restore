@interface UIAccessibilityTextLineElement
- (_NSRange)_accessibilitySelectedTextRange;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
@end

@implementation UIAccessibilityTextLineElement

- (id)accessibilityValue
{
  selfCopy = self;
  location[1] = a2;
  accessibilityContainer = [(UIAccessibilityTextLineElement *)self accessibilityContainer];
  location[0] = [accessibilityContainer _accessibilityAXAttributedValue];
  *&v2 = MEMORY[0x29EDC9740](accessibilityContainer).n128_u64[0];
  length = selfCopy->_range.length;
  v10 = selfCopy->_range.location;
  v11 = length;
  if (v10 + length > [location[0] length])
  {
    v9 = 0;
  }

  else
  {
    v9 = [location[0] substringWithRange:{selfCopy->_range.location, selfCopy->_range.length}];
  }

  objc_storeStrong(location, 0);
  v4 = v9;

  return v4;
}

- (unint64_t)accessibilityTraits
{
  accessibilityContainer = [(UIAccessibilityTextLineElement *)self accessibilityContainer];
  accessibilityTraits = [accessibilityContainer accessibilityTraits];
  MEMORY[0x29EDC9740](accessibilityContainer);
  return accessibilityTraits;
}

- (id)accessibilityHint
{
  accessibilityContainer = [(UIAccessibilityTextLineElement *)self accessibilityContainer];
  _accessibilityAXAttributedHint = [accessibilityContainer _accessibilityAXAttributedHint];
  MEMORY[0x29EDC9740](accessibilityContainer);

  return _accessibilityAXAttributedHint;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  accessibilityContainer = [(UIAccessibilityTextLineElement *)self accessibilityContainer];
  _accessibilitySelectedTextRange = [accessibilityContainer _accessibilitySelectedTextRange];
  v7 = v2;
  MEMORY[0x29EDC9740](accessibilityContainer);
  v3 = _accessibilitySelectedTextRange;
  v4 = v7;
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  range = self->_range;
  if (range.location <= range.length)
  {
    range.location += range.location;
  }

  accessibilityContainer = [(UIAccessibilityTextLineElement *)self accessibilityContainer];
  [accessibilityContainer _accessibilitySetSelectedTextRange:range];
  MEMORY[0x29EDC9740](accessibilityContainer);
}

@end