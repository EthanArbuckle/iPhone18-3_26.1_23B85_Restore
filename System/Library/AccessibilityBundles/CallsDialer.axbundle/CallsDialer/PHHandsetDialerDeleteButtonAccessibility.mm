@interface PHHandsetDialerDeleteButtonAccessibility
- (unint64_t)accessibilityTraits;
- (void)setAlpha:(double)alpha;
@end

@implementation PHHandsetDialerDeleteButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PHHandsetDialerDeleteButtonAccessibility;
  return *MEMORY[0x29EDC7508] | [(PHHandsetDialerDeleteButtonAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7F90];
}

- (void)setAlpha:(double)alpha
{
  v9.receiver = self;
  v9.super_class = PHHandsetDialerDeleteButtonAccessibility;
  [(PHHandsetDialerDeleteButtonAccessibility *)&v9 setAlpha:?];
  v5 = [MEMORY[0x29EDBA070] numberWithBool:{-[PHHandsetDialerDeleteButtonAccessibility _axDeleteButtonWasHidden](self, "_axDeleteButtonWasHidden")}];
  bOOLValue = [v5 BOOLValue];

  v7 = [MEMORY[0x29EDBA070] numberWithDouble:alpha];
  bOOLValue2 = [v7 BOOLValue];

  if (bOOLValue != bOOLValue2)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    [(PHHandsetDialerDeleteButtonAccessibility *)self _axSetDeleteButtonWasHidden:bOOLValue2];
  }
}

@end