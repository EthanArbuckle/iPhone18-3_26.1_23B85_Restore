@interface PHHandsetDialerViewAccessibility
- (void)setDeleteButtonAlpha:(double)a3;
@end

@implementation PHHandsetDialerViewAccessibility

- (void)setDeleteButtonAlpha:(double)a3
{
  v3.receiver = self;
  v3.super_class = PHHandsetDialerViewAccessibility;
  [(PHHandsetDialerViewAccessibility *)&v3 setDeleteButtonAlpha:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end