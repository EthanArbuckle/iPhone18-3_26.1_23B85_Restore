@interface ParticipantVideoOverlayViewAccessibility
- (id)_accessibilityImageOverlayView;
- (id)_accessibilityMonogramView;
- (id)accessibilityLabel;
@end

@implementation ParticipantVideoOverlayViewAccessibility

- (id)accessibilityLabel
{
  _accessibilityMonogramView = [(ParticipantVideoOverlayViewAccessibility *)self _accessibilityMonogramView];
  if (([_accessibilityMonogramView isHidden] & 1) == 0)
  {
    accessibilityLabel = [_accessibilityMonogramView accessibilityLabel];
    goto LABEL_10;
  }

  _accessibilityImageOverlayView = [(ParticipantVideoOverlayViewAccessibility *)self _accessibilityImageOverlayView];
  image = [_accessibilityImageOverlayView image];

  accessibilityIdentification = [image accessibilityIdentification];
  v7 = [accessibilityIdentification containsString:@"paused"];

  if (v7)
  {
    v8 = @"roster.paused";
  }

  else
  {
    accessibilityIdentification2 = [image accessibilityIdentification];
    v11 = [accessibilityIdentification2 containsString:@"bad-connection"];

    if (!v11)
    {
      _AXAssert();
      accessibilityLabel = 0;
      goto LABEL_9;
    }

    v8 = @"roster.bad.connection";
  }

  accessibilityLabel = accessibilityLocalizedString(v8);
LABEL_9:

LABEL_10:

  return accessibilityLabel;
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

  contentView = [v4 contentView];
  subviews = [contentView subviews];

  v7 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
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