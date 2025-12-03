@interface PHAudioCallControlsViewAccessibility
- (void)assignControlType:(unint64_t)type toButton:(id)button;
@end

@implementation PHAudioCallControlsViewAccessibility

- (void)assignControlType:(unint64_t)type toButton:(id)button
{
  buttonCopy = button;
  v8.receiver = self;
  v8.super_class = PHAudioCallControlsViewAccessibility;
  [(PHAudioCallControlsViewAccessibility *)&v8 assignControlType:type toButton:buttonCopy];
  if (type == 5)
  {
    v7 = accessibilityLocalizedString(@"facetime.upgrade.label");
    [buttonCopy setAccessibilityLabel:v7];
  }
}

@end