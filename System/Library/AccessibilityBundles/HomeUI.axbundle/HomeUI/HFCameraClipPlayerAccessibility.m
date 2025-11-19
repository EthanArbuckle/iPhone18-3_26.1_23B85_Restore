@interface HFCameraClipPlayerAccessibility
- (void)seekToOffset:(double)a3 inItem:(id)a4;
@end

@implementation HFCameraClipPlayerAccessibility

- (void)seekToOffset:(double)a3 inItem:(id)a4
{
  v7.receiver = self;
  v7.super_class = HFCameraClipPlayerAccessibility;
  [(HFCameraClipPlayerAccessibility *)&v7 seekToOffset:a4 inItem:a3];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    objc_opt_class();
    v5 = [(HFCameraClipPlayerAccessibility *)self delegate];
    v6 = __UIAccessibilityCastAsClass();
    [v6 pause];
  }
}

@end