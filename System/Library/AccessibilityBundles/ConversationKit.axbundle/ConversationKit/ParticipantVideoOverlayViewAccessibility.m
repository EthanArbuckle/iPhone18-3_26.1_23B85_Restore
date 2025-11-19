@interface ParticipantVideoOverlayViewAccessibility
- (id)_accessibilityImageOverlayView;
- (id)_accessibilityMonogramView;
- (id)accessibilityLabel;
@end

@implementation ParticipantVideoOverlayViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(ParticipantVideoOverlayViewAccessibility *)self _accessibilityMonogramView];
  if (([v3 isHidden] & 1) == 0)
  {
    v9 = [v3 accessibilityLabel];
    goto LABEL_10;
  }

  v4 = [(ParticipantVideoOverlayViewAccessibility *)self _accessibilityImageOverlayView];
  v5 = [v4 image];

  v6 = [v5 accessibilityIdentification];
  v7 = [v6 containsString:@"paused"];

  if (v7)
  {
    v8 = @"roster.paused";
  }

  else
  {
    v10 = [v5 accessibilityIdentification];
    v11 = [v10 containsString:@"bad-connection"];

    if (!v11)
    {
      _AXAssert();
      v9 = 0;
      goto LABEL_9;
    }

    v8 = @"roster.bad.connection";
  }

  v9 = accessibilityLocalizedString(v8);
LABEL_9:

LABEL_10:

  return v9;
}

- (id)_accessibilityMonogramView
{
  objc_opt_class();
  v3 = [(ParticipantVideoOverlayViewAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29C2D28F0](@"ConversationKit.ParticipantMonogramView")];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (id)_accessibilityImageOverlayView
{
  v18 = *MEMORY[0x29EDCA608];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  objc_opt_class();
  v3 = [(ParticipantVideoOverlayViewAccessibility *)self _accessibilityDescendantOfType:objc_opt_class()];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 contentView];
  v6 = [v5 subviews];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x29EDCA608];

  return v7;
}

@end