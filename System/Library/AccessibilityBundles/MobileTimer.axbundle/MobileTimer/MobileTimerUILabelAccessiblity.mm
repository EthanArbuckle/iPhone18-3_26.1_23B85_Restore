@interface MobileTimerUILabelAccessiblity
- (id)accessibilityLabel;
@end

@implementation MobileTimerUILabelAccessiblity

- (id)accessibilityLabel
{
  accessibilityIdentification = [(MobileTimerUILabelAccessiblity *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"timeLabel"])
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityLocalizedString(@"elapsed.time.format");
    v12.receiver = self;
    v12.super_class = MobileTimerUILabelAccessiblity;
    [(MobileTimerUILabelAccessiblity *)&v12 accessibilityLabel];
    v6 = LABEL_5:;
    v7 = AXLocalizeDurationTime();
    accessibilityLabel = [v4 stringWithFormat:v5, v7];

    goto LABEL_7;
  }

  if ([accessibilityIdentification isEqualToString:@"currentLapTimeLabel"])
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityLocalizedString(@"lap.time.format");
    v11.receiver = self;
    v11.super_class = MobileTimerUILabelAccessiblity;
    [(MobileTimerUILabelAccessiblity *)&v11 accessibilityLabel];
    goto LABEL_5;
  }

  v10.receiver = self;
  v10.super_class = MobileTimerUILabelAccessiblity;
  accessibilityLabel = [(MobileTimerUILabelAccessiblity *)&v10 accessibilityLabel];
LABEL_7:

  return accessibilityLabel;
}

@end