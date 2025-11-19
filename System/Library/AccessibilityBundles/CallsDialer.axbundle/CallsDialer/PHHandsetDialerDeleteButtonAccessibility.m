@interface PHHandsetDialerDeleteButtonAccessibility
- (unint64_t)accessibilityTraits;
- (void)setAlpha:(double)a3;
@end

@implementation PHHandsetDialerDeleteButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PHHandsetDialerDeleteButtonAccessibility;
  return *MEMORY[0x29EDC7508] | [(PHHandsetDialerDeleteButtonAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7F90];
}

- (void)setAlpha:(double)a3
{
  v9.receiver = self;
  v9.super_class = PHHandsetDialerDeleteButtonAccessibility;
  [(PHHandsetDialerDeleteButtonAccessibility *)&v9 setAlpha:?];
  v5 = [MEMORY[0x29EDBA070] numberWithBool:{-[PHHandsetDialerDeleteButtonAccessibility _axDeleteButtonWasHidden](self, "_axDeleteButtonWasHidden")}];
  v6 = [v5 BOOLValue];

  v7 = [MEMORY[0x29EDBA070] numberWithDouble:a3];
  v8 = [v7 BOOLValue];

  if (v6 != v8)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    [(PHHandsetDialerDeleteButtonAccessibility *)self _axSetDeleteButtonWasHidden:v8];
  }
}

@end