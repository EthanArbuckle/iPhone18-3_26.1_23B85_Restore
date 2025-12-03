@interface PreferencesUITextFieldAccessibility
- (id)accessibilityValue;
@end

@implementation PreferencesUITextFieldAccessibility

- (id)accessibilityValue
{
  v11.receiver = self;
  v11.super_class = PreferencesUITextFieldAccessibility;
  accessibilityValue = [(PreferencesUITextFieldAccessibility *)&v11 accessibilityValue];
  accessibilityIdentifier = [(PreferencesUITextFieldAccessibility *)self accessibilityIdentifier];
  v5 = [accessibilityIdentifier isEqualToString:@"UIAccessibilityPronunciationEditorDictationCell"];

  if (v5 && (-[PreferencesUITextFieldAccessibility _accessibilityAncestorIsKindOf:](self, "_accessibilityAncestorIsKindOf:", objc_opt_class()), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 safeBoolForKey:@"showsPhonemes"], v6, v7))
  {
    v8 = accessibilityValue;
    objc_opt_class();
    v9 = v8;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v8];
    }

    [v9 setAttribute:v8 forKey:*MEMORY[0x29EDBD7E0]];
  }

  else
  {
    v9 = accessibilityValue;
  }

  return v9;
}

@end