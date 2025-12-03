@interface ConversationControlsButtonAccessibility
- (id)_axGetLabelSubview;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation ConversationControlsButtonAccessibility

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(ConversationControlsButtonAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"joinButton"])
  {
    v4 = @"join.call";
  }

  else if ([accessibilityIdentifier isEqualToString:@"cancelButton"])
  {
    v4 = @"cancel.join.call";
  }

  else if ([accessibilityIdentifier isEqualToString:@"leaveButton"])
  {
    v4 = @"leave.call";
  }

  else if ([accessibilityIdentifier isEqualToString:@"openMessagesButton"])
  {
    v4 = @"open.messages";
  }

  else if ([accessibilityIdentifier isEqualToString:@"toggleAudioRouteMenuButton"])
  {
    v4 = @"audio.route";
  }

  else if ([accessibilityIdentifier isEqualToString:@"toggleMicMenuButton"])
  {
    v4 = @"mute";
  }

  else if ([accessibilityIdentifier isEqualToString:@"toggleVideoButton"])
  {
    v4 = @"camera";
  }

  else
  {
    if (![accessibilityIdentifier isEqualToString:@"shareMenuButton"])
    {
      v9.receiver = self;
      v9.super_class = ConversationControlsButtonAccessibility;
      accessibilityLabel = [(ConversationControlsButtonAccessibility *)&v9 accessibilityLabel];
      if ([accessibilityLabel length])
      {
        text = accessibilityLabel;
      }

      else
      {
        _axGetLabelSubview = [(ConversationControlsButtonAccessibility *)self _axGetLabelSubview];
        text = [_axGetLabelSubview text];
      }

      goto LABEL_18;
    }

    v4 = @"share.content";
  }

  text = accessibilityLocalizedString(v4);
LABEL_18:

  return text;
}

- (id)accessibilityValue
{
  accessibilityIdentifier = [(ConversationControlsButtonAccessibility *)self accessibilityIdentifier];
  if (([accessibilityIdentifier isEqualToString:@"toggleVideoButton"] & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"toggleMicMenuButton"))
  {
    if ([(ConversationControlsButtonAccessibility *)self safeBoolForKey:@"isSelected"])
    {
      v4 = @"on";
    }

    else
    {
      v4 = @"off";
    }

    v5 = accessibilityLocalizedString(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = ConversationControlsButtonAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(ConversationControlsButtonAccessibility *)&v6 accessibilityTraits];
  accessibilityIdentifier = [(ConversationControlsButtonAccessibility *)self accessibilityIdentifier];
  if (([accessibilityIdentifier isEqualToString:@"toggleVideoButton"] & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"toggleMicMenuButton"))
  {
    v3 &= ~*MEMORY[0x29EDC7FC0];
  }

  return v3;
}

- (id)accessibilityPath
{
  accessibilityIdentifier = [(ConversationControlsButtonAccessibility *)self accessibilityIdentifier];
  v13.receiver = self;
  v13.super_class = ConversationControlsButtonAccessibility;
  accessibilityPath = [(ConversationControlsButtonAccessibility *)&v13 accessibilityPath];
  if (([accessibilityIdentifier isEqualToString:@"joinButton"] & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"leaveButton"))
  {
    [accessibilityPath bounds];
    AX_CGRectGetCenter();
    v6 = v5;
    v8 = v7;
    CGAffineTransformMakeScale(&v12, 1.3, 1.3);
    [accessibilityPath applyTransform:&v12];
    [accessibilityPath bounds];
    AX_CGRectGetCenter();
    CGAffineTransformMakeTranslation(&v12, v6 - v9, v8 - v10);
    [accessibilityPath applyTransform:&v12];
  }

  return accessibilityPath;
}

- (id)_axGetLabelSubview
{
  v3 = objc_opt_class();

  return [(ConversationControlsButtonAccessibility *)self _accessibilityDescendantOfType:v3];
}

@end