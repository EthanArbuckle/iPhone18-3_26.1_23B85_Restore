@interface PHAudioCallControlsViewAccessibility
- (void)assignControlType:(unint64_t)a3 toButton:(id)a4;
@end

@implementation PHAudioCallControlsViewAccessibility

- (void)assignControlType:(unint64_t)a3 toButton:(id)a4
{
  v6 = a4;
  v8.receiver = self;
  v8.super_class = PHAudioCallControlsViewAccessibility;
  [(PHAudioCallControlsViewAccessibility *)&v8 assignControlType:a3 toButton:v6];
  if (a3 == 5)
  {
    v7 = accessibilityLocalizedString(@"facetime.upgrade.label");
    [v6 setAccessibilityLabel:v7];
  }
}

@end