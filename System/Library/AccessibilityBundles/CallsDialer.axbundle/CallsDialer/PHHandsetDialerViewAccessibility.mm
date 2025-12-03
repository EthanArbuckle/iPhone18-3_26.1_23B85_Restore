@interface PHHandsetDialerViewAccessibility
- (void)setDeleteButtonAlpha:(double)alpha;
@end

@implementation PHHandsetDialerViewAccessibility

- (void)setDeleteButtonAlpha:(double)alpha
{
  v3.receiver = self;
  v3.super_class = PHHandsetDialerViewAccessibility;
  [(PHHandsetDialerViewAccessibility *)&v3 setDeleteButtonAlpha:alpha];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end