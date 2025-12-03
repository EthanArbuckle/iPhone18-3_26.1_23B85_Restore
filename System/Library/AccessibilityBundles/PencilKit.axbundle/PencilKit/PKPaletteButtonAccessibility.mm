@interface PKPaletteButtonAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PKPaletteButtonAccessibility

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(PKPaletteButtonAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"Scribble-UCB-Undo-Button"])
  {
    v4 = @"pkpalettebutton.undo";
LABEL_15:
    accessibilityLabel = accessibilityPencilKitLocalizedString(v4);
    goto LABEL_16;
  }

  if ([accessibilityIdentifier isEqualToString:@"Scribble-UCB-Redo-Button"])
  {
    v4 = @"pkpalettebutton.redo";
    goto LABEL_15;
  }

  if ([accessibilityIdentifier isEqualToString:@"Scribble-UCB-More-Button"])
  {
    v4 = @"pkpalettebutton.more";
    goto LABEL_15;
  }

  if ([accessibilityIdentifier isEqualToString:@"Scribble-UCB-Plus-Button"])
  {
    v4 = @"pkpalettebutton.plus";
    goto LABEL_15;
  }

  if ([accessibilityIdentifier isEqualToString:@"Scribble-UCB-Keyboard-Button"])
  {
    v4 = @"pkpalettebutton.keyboard";
    goto LABEL_15;
  }

  if ([accessibilityIdentifier isEqualToString:@"Scribble-UCB-Emoji-Button"])
  {
    v4 = @"pkpalettebutton.emoji";
    goto LABEL_15;
  }

  if ([accessibilityIdentifier isEqualToString:@"Scribble-UCB-Small-Return-Button"])
  {
    v4 = @"pkpalettebutton.return";
    goto LABEL_15;
  }

  v7 = [(PKPaletteButtonAccessibility *)self safeValueForKey:@"button"];
  accessibilityLabel = [v7 accessibilityLabel];

LABEL_16:

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PKPaletteButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PKPaletteButtonAccessibility *)&v3 accessibilityTraits];
}

@end