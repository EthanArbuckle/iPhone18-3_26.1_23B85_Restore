@interface TKVibrationRecorderTouchSurfaceAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation TKVibrationRecorderTouchSurfaceAccessibility

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = TKVibrationRecorderTouchSurfaceAccessibility;
  accessibilityTraits = [(TKVibrationRecorderTouchSurfaceAccessibility *)&v6 accessibilityTraits];
  if ([(TKVibrationRecorderTouchSurfaceAccessibility *)self safeBoolForKey:@"_isRecordingModeEnabled"])
  {
    v4 = -1;
  }

  else
  {
    v4 = ~*MEMORY[0x29EDC7F68];
  }

  return v4 & accessibilityTraits;
}

@end