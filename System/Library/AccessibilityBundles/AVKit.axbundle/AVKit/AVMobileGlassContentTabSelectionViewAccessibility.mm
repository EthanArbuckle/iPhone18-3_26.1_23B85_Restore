@interface AVMobileGlassContentTabSelectionViewAccessibility
- (void)selectTab:(id)tab withReason:(unint64_t)reason;
@end

@implementation AVMobileGlassContentTabSelectionViewAccessibility

- (void)selectTab:(id)tab withReason:(unint64_t)reason
{
  v6.receiver = self;
  v6.super_class = AVMobileGlassContentTabSelectionViewAccessibility;
  tabCopy = tab;
  [(AVMobileGlassContentTabSelectionViewAccessibility *)&v6 selectTab:tabCopy withReason:reason];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], tabCopy);
}

@end