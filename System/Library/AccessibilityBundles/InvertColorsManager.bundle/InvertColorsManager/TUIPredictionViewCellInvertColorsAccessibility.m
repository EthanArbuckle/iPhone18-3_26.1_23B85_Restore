@interface TUIPredictionViewCellInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
- (void)layoutSubviews;
@end

@implementation TUIPredictionViewCellInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUIPredictionViewCellInvertColorsAccessibility;
  [(TUIPredictionViewCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(TUIPredictionViewCellInvertColorsAccessibility *)self setAccessibilityIgnoresInvertColors:[(TUIPredictionViewCellInvertColorsAccessibility *)self accessibilityIgnoresInvertColors]];
}

- (BOOL)accessibilityIgnoresInvertColors
{
  if (([(TUIPredictionViewCellInvertColorsAccessibility *)self safeBoolForKey:@"highlighted"]& 1) != 0)
  {
    return 0;
  }

  v4 = [(TUIPredictionViewCellInvertColorsAccessibility *)self safeValueForKey:@"candidate"];
  v5 = [v4 safeStringForKey:@"candidate"];
  IsSpeakableEmojiString = AXLanguageIsSpeakableEmojiString();

  return IsSpeakableEmojiString;
}

@end