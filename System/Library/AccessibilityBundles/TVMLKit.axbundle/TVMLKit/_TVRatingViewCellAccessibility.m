@interface _TVRatingViewCellAccessibility
- (_NSRange)accessibilityRowRange;
- (id)accessibilityLabel;
@end

@implementation _TVRatingViewCellAccessibility

- (id)accessibilityLabel
{
  v9.receiver = self;
  v9.super_class = _TVRatingViewCellAccessibility;
  v3 = [(_TVRatingViewCellAccessibility *)&v9 accessibilityRowRange]+ 1;
  if (v3 > 0x7FFFFFFFFFFFFFFELL)
  {
    v8.receiver = self;
    v8.super_class = _TVRatingViewCellAccessibility;
    v6 = [(_TVRatingViewCellAccessibility *)&v8 accessibilityLabel];
  }

  else
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityLocalizedString(@"star.rating");
    v6 = [v4 stringWithFormat:v5, v3];
  }

  return v6;
}

- (_NSRange)accessibilityRowRange
{
  v2 = 0x7FFFFFFFLL;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

@end