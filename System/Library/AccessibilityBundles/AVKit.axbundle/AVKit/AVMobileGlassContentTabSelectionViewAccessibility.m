@interface AVMobileGlassContentTabSelectionViewAccessibility
- (void)selectTab:(id)a3 withReason:(unint64_t)a4;
@end

@implementation AVMobileGlassContentTabSelectionViewAccessibility

- (void)selectTab:(id)a3 withReason:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = AVMobileGlassContentTabSelectionViewAccessibility;
  v5 = a3;
  [(AVMobileGlassContentTabSelectionViewAccessibility *)&v6 selectTab:v5 withReason:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v5);
}

@end