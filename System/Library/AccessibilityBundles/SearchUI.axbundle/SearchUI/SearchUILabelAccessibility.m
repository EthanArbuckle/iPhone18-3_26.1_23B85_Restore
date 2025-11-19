@interface SearchUILabelAccessibility
- (BOOL)isAccessibilityElement;
- (id)_axValidateString:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SearchUILabelAccessibility

- (BOOL)isAccessibilityElement
{
  v9.receiver = self;
  v9.super_class = SearchUILabelAccessibility;
  v3 = [(SearchUILabelAccessibility *)&v9 accessibilityLabel];
  v4 = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];
  v6 = [v5 length];

  if (!v6)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = SearchUILabelAccessibility;
  return [(SearchUILabelAccessibility *)&v8 isAccessibilityElement];
}

- (id)accessibilityLabel
{
  v6.receiver = self;
  v6.super_class = SearchUILabelAccessibility;
  v3 = [(SearchUILabelAccessibility *)&v6 accessibilityLabel];
  v4 = [(SearchUILabelAccessibility *)self _axValidateString:v3];

  return v4;
}

- (id)_axValidateString:(id)a3
{
  v3 = MEMORY[0x29EDB9F50];
  v4 = a3;
  v5 = [v3 whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  v7 = [v4 length];
  if (v7)
  {
    v8 = [MEMORY[0x29EDBA0D0] regularExpressionWithPattern:@"(\\b\\d{4})(-)(\\d{4}\\b)" options:0 error:0];
    v9 = [v6 length];
    v10 = MEMORY[0x29EDBA0F8];
    v11 = accessibilityLocalizedString(@"vibrant.label.time.to");
    v12 = [v10 stringWithFormat:@"$1 %@ $3", v11];
    v13 = [v8 stringByReplacingMatchesInString:v6 options:0 range:0 withTemplate:{v9, v12}];

    v14 = [MEMORY[0x29EDBA0D0] regularExpressionWithPattern:@"^(?:([01]?\\d|2[0-3]):)?([0-5]?\\d):([0-5]?\\d)$" options:0 error:0];
    v15 = [v14 matchesInString:v13 options:0 range:{0, objc_msgSend(v13, "length")}];
    if ([v15 count])
    {
      v16 = [v15 firstObject];
      v17 = [v16 range];
      v19 = v18;
      v20 = [v16 range];
      v22 = [v13 substringWithRange:{v20, v21}];
      v23 = AXLocalizeDurationTime();
      v24 = [v13 stringByReplacingCharactersInRange:v17 withString:{v19, v23}];

      v13 = v24;
    }

    v25 = [MEMORY[0x29EDBA0D0] regularExpressionWithPattern:@"((?:[01]?\\d|2[0-3]):(?:[0-5]?\\d)) (-) ((?:[01]?\\d|2[0-3]):(?:[0-5]?\\d))" options:0 error:0];
    v26 = [v13 length];
    v27 = MEMORY[0x29EDBA0F8];
    v28 = accessibilityLocalizedString(@"vibrant.label.time.to");
    v29 = [v27 stringWithFormat:@"$1 %@ $3", v28];
    v30 = [v25 stringByReplacingMatchesInString:v13 options:0 range:0 withTemplate:{v26, v29}];

    v6 = v30;
    v7 = v6;
  }

  return v7;
}

@end