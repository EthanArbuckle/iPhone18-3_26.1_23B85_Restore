@interface NUIContainerStackViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)_axArrangedSubviews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation NUIContainerStackViewAccessibility

- (id)_axArrangedSubviews
{
  objc_opt_class();
  v3 = [(NUIContainerStackViewAccessibility *)self safeValueForKey:@"_arrangedSubviews"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (BOOL)isAccessibilityElement
{
  _axArrangedSubviews = [(NUIContainerStackViewAccessibility *)self _axArrangedSubviews];
  v3 = [_axArrangedSubviews count] == 2;

  return v3;
}

- (id)accessibilityLabel
{
  v18 = *MEMORY[0x29EDCA608];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _axArrangedSubviews = [(NUIContainerStackViewAccessibility *)self _axArrangedSubviews];
  v4 = [_axArrangedSubviews countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(_axArrangedSubviews);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        MEMORY[0x29C2E3980](@"UILabel");
        if (objc_opt_isKindOfClass())
        {
          accessibilityLabel = [v8 accessibilityLabel];

          goto LABEL_11;
        }
      }

      v5 = [_axArrangedSubviews countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12.receiver = self;
  v12.super_class = NUIContainerStackViewAccessibility;
  accessibilityLabel = [(NUIContainerStackViewAccessibility *)&v12 accessibilityLabel];
LABEL_11:
  v10 = *MEMORY[0x29EDCA608];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = NUIContainerStackViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(NUIContainerStackViewAccessibility *)&v3 accessibilityTraits];
}

@end