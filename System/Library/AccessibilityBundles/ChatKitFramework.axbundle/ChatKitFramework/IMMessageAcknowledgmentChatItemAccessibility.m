@interface IMMessageAcknowledgmentChatItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axLabelForAcknowledgmentFromSomeone;
- (id)_axLabelForAcknowledgmentFromYou;
- (id)accessibilityLabel;
@end

@implementation IMMessageAcknowledgmentChatItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"IMMessageAcknowledgmentChatItem" isKindOfClass:@"IMAssociatedMessageChatItem"];
  [v3 validateClass:@"IMAssociatedMessageChatItem" hasInstanceMethod:@"isFromMe" withFullSignature:{"B", 0}];
  [v3 validateClass:@"IMAssociatedMessageChatItem" hasInstanceMethod:@"sender" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IMAssociatedMessageChatItem" hasInstanceMethod:@"tapback" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IMTapback"];
  [v3 validateClass:@"IMTapback" hasInstanceMethod:@"associatedMessageType" withFullSignature:{"q", 0}];
  [v3 validateClass:@"IMHandle" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  if ([(IMMessageAcknowledgmentChatItemAccessibility *)self safeBoolForKey:@"isFromMe"])
  {
    [(IMMessageAcknowledgmentChatItemAccessibility *)self _axLabelForAcknowledgmentFromYou];
  }

  else
  {
    [(IMMessageAcknowledgmentChatItemAccessibility *)self _axLabelForAcknowledgmentFromSomeone];
  }
  v3 = ;

  return v3;
}

- (id)_axLabelForAcknowledgmentFromYou
{
  v2 = [(IMMessageAcknowledgmentChatItemAccessibility *)self safeValueForKey:@"tapback"];
  v3 = [v2 safeUnsignedIntegerForKey:@"associatedMessageType"];
  v4 = 0;
  if (v3 <= 2003)
  {
    if (v3 > 2001)
    {
      if (v3 == 2002)
      {
        v5 = @"acknowledgment.you.disliked";
      }

      else
      {
        v5 = @"acknowledgment.you.laughed";
      }
    }

    else if (v3 == 2000)
    {
      v5 = @"acknowledgment.you.loved";
    }

    else
    {
      if (v3 != 2001)
      {
        goto LABEL_20;
      }

      v5 = @"acknowledgment.you.liked";
    }

    goto LABEL_17;
  }

  if (v3 <= 2005)
  {
    if (v3 == 2004)
    {
      v5 = @"acknowledgment.you.emphasized";
    }

    else
    {
      v5 = @"acknowledgment.you.questioned";
    }

LABEL_17:
    v4 = accessibilityLocalizedString(v5);
    goto LABEL_20;
  }

  if (v3 == 2006)
  {
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"acknowledgment.you.generic");
    v8 = [v2 safeStringForKey:@"associatedMessageEmoji"];
  }

  else
  {
    if (v3 != 2007)
    {
      goto LABEL_20;
    }

    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"acknowledgment.you.generic");
    v8 = accessibilityLocalizedString(@"default.tapback");
  }

  v9 = v8;
  v4 = [v6 localizedStringWithFormat:v7, v8];

LABEL_20:

  return v4;
}

- (id)_axLabelForAcknowledgmentFromSomeone
{
  v3 = [(IMMessageAcknowledgmentChatItemAccessibility *)self safeValueForKey:@"sender"];
  v4 = [v3 safeValueForKey:@"name"];

  v5 = [(IMMessageAcknowledgmentChatItemAccessibility *)self safeValueForKey:@"tapback"];
  v6 = [v5 safeUnsignedIntegerForKey:@"associatedMessageType"];
  v7 = 0;
  if (v6 <= 2003)
  {
    if (v6 > 2001)
    {
      v8 = MEMORY[0x29EDBA0F8];
      if (v6 == 2002)
      {
        v9 = @"acknowledgment.someone.disliked";
      }

      else
      {
        v9 = @"acknowledgment.someone.laughed";
      }
    }

    else if (v6 == 2000)
    {
      v8 = MEMORY[0x29EDBA0F8];
      v9 = @"acknowledgment.someone.loved";
    }

    else
    {
      if (v6 != 2001)
      {
        goto LABEL_21;
      }

      v8 = MEMORY[0x29EDBA0F8];
      v9 = @"acknowledgment.someone.liked";
    }

    goto LABEL_17;
  }

  if (v6 <= 2005)
  {
    v8 = MEMORY[0x29EDBA0F8];
    if (v6 == 2004)
    {
      v9 = @"acknowledgment.someone.emphasized";
    }

    else
    {
      v9 = @"acknowledgment.someone.questioned";
    }

LABEL_17:
    v11 = accessibilityLocalizedString(v9);
    v7 = [v8 localizedStringWithFormat:v11, v4];
    goto LABEL_20;
  }

  if (v6 == 2006)
  {
    v14 = MEMORY[0x29EDBA0F8];
    v11 = accessibilityLocalizedString(@"acknowledgment.someone.generic");
    v12 = [v5 safeStringForKey:@"associatedMessageEmoji"];
    v13 = [v14 stringWithFormat:v11, v4, v12];
  }

  else
  {
    if (v6 != 2007)
    {
      goto LABEL_21;
    }

    v10 = MEMORY[0x29EDBA0F8];
    v11 = accessibilityLocalizedString(@"acknowledgment.someone.generic");
    v12 = accessibilityLocalizedString(@"default.tapback");
    v13 = [v10 localizedStringWithFormat:v11, v4, v12];
  }

  v7 = v13;

LABEL_20:
LABEL_21:

  return v7;
}

@end