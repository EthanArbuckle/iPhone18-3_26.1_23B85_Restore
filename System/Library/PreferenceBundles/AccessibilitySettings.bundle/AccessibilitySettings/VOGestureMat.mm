@interface VOGestureMat
- (id)accessibilityLabel;
- (void)_accessibilitySetCurrentGesture:(id)a3;
@end

@implementation VOGestureMat

- (id)accessibilityLabel
{
  v2 = settingsLocString(@"VOICEOVER_GESTURE_HELP_HINT_PART1", @"VoiceOverSettings");
  v3 = settingsLocString(@"VOICEOVER_GESTURE_HELP_HINT_PART2", @"VoiceOverSettings");
  v4 = [NSString stringWithFormat:@"%@ %@", v2, v3];

  return v4;
}

- (void)_accessibilitySetCurrentGesture:(id)a3
{
  v4 = a3;
  v5 = [(VOGestureMat *)self superview];
  [v5 _accessibilitySetCurrentGesture:v4];
}

@end