@interface CNVisualIdentityEditablePrimaryAvatarTextFieldAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CNVisualIdentityEditablePrimaryAvatarTextFieldAccessibility

- (id)accessibilityLabel
{
  if ([(CNVisualIdentityEditablePrimaryAvatarTextFieldAccessibility *)self _axIsTextEditable])
  {
    _axIsEmoji = [(CNVisualIdentityEditablePrimaryAvatarTextFieldAccessibility *)self _axIsEmoji];
    v4 = MEMORY[0x29EDBA0F8];
    if (_axIsEmoji)
    {
      v5 = @"emoji.description.button";
    }

    else
    {
      v5 = @"monogram.description.button";
    }

    v7 = accessibilityLocalizedString(v5);
    v8 = [(CNVisualIdentityEditablePrimaryAvatarTextFieldAccessibility *)self safeStringForKey:@"text"];
    _axColorName = [(CNVisualIdentityEditablePrimaryAvatarTextFieldAccessibility *)self _axColorName];
    v6 = [v4 stringWithFormat:v7, v8, _axColorName];
  }

  else
  {
    v6 = accessibilityLocalizedString(@"contact.image.type.photo");
  }

  return v6;
}

- (unint64_t)accessibilityTraits
{
  if (![(CNVisualIdentityEditablePrimaryAvatarTextFieldAccessibility *)self _axIsTextEditable])
  {
    return *MEMORY[0x29EDC7F88];
  }

  v4.receiver = self;
  v4.super_class = CNVisualIdentityEditablePrimaryAvatarTextFieldAccessibility;
  return [(CNVisualIdentityEditablePrimaryAvatarTextFieldAccessibility *)&v4 accessibilityTraits];
}

@end