@interface HUCameraMicrophoneControlAccessibility
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation HUCameraMicrophoneControlAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HUCameraMicrophoneControlAccessibility;
  return *MEMORY[0x29EDC7F70] | [(HUCameraMicrophoneControlAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7FF0];
}

- (id)accessibilityLabel
{
  if ([(HUCameraMicrophoneControlAccessibility *)self _axIsTalking])
  {
    v2 = @"camera.done.button";
  }

  else
  {
    v2 = @"camera.talk.button";
  }

  return accessibilityHomeUILocalizedString(v2);
}

- (id)accessibilityHint
{
  if ([(HUCameraMicrophoneControlAccessibility *)self _axIsTalking])
  {
    v2 = @"camera.done.button.hint";
  }

  else
  {
    v2 = @"camera.talk.button.hint";
  }

  return accessibilityHomeUILocalizedString(v2);
}

@end