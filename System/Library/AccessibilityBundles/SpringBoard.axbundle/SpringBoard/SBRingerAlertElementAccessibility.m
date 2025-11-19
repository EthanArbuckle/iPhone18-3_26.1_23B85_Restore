@interface SBRingerAlertElementAccessibility
- (void)_updateStateWithTransitionType:(unint64_t)a3;
@end

@implementation SBRingerAlertElementAccessibility

- (void)_updateStateWithTransitionType:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = SBRingerAlertElementAccessibility;
  [(SBRingerAlertElementAccessibility *)&v7 _updateStateWithTransitionType:?];
  if (a3 <= 3)
  {
    v4 = off_29F2FC650[a3];
    v5 = *MEMORY[0x29EDC7EA8];
    v6 = accessibilityLocalizedString(v4);
    UIAccessibilityPostNotification(v5, v6);
  }
}

@end