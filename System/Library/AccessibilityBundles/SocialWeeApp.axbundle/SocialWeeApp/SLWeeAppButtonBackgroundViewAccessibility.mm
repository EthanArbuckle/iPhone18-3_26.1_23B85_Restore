@interface SLWeeAppButtonBackgroundViewAccessibility
- (BOOL)_accessibilityIsFacebookButton;
- (SLWeeAppButtonBackgroundViewAccessibility)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SLWeeAppButtonBackgroundViewAccessibility

- (BOOL)_accessibilityIsFacebookButton
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(SLWeeAppButtonBackgroundViewAccessibility *)self safeValueForKey:@"subviews", 0];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        accessibilityIdentifier = [*(*(&v12 + 1) + 8 * i) accessibilityIdentifier];
        v8 = [accessibilityIdentifier isEqualToString:@"facebookglyph"];

        if (v8)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

- (SLWeeAppButtonBackgroundViewAccessibility)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SLWeeAppButtonBackgroundViewAccessibility;
  v3 = [(SLWeeAppButtonBackgroundViewAccessibility *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = [(SLWeeAppButtonBackgroundViewAccessibility *)v3 safeValueForKey:@"_labelView"];
  [v4 setIsAccessibilityElement:0];

  return v3;
}

- (id)accessibilityLabel
{
  if ([(SLWeeAppButtonBackgroundViewAccessibility *)self _accessibilityIsFacebookButton])
  {
    v2 = @"post.to.facebook";
  }

  else
  {
    v2 = @"post.to.unknown";
  }

  v3 = accessibilityLocalizedString(v2);

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SLWeeAppButtonBackgroundViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SLWeeAppButtonBackgroundViewAccessibility *)&v3 accessibilityTraits];
}

@end