@interface HFCameraClipPlayerAccessibility
- (void)seekToOffset:(double)offset inItem:(id)item;
@end

@implementation HFCameraClipPlayerAccessibility

- (void)seekToOffset:(double)offset inItem:(id)item
{
  v7.receiver = self;
  v7.super_class = HFCameraClipPlayerAccessibility;
  [(HFCameraClipPlayerAccessibility *)&v7 seekToOffset:item inItem:offset];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    objc_opt_class();
    delegate = [(HFCameraClipPlayerAccessibility *)self delegate];
    v6 = __UIAccessibilityCastAsClass();
    [v6 pause];
  }
}

@end