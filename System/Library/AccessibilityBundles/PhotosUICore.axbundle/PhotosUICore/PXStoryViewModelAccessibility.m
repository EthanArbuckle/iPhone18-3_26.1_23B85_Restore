@interface PXStoryViewModelAccessibility
- (void)setWantsRelatedOverlayVisible:(BOOL)a3;
@end

@implementation PXStoryViewModelAccessibility

- (void)setWantsRelatedOverlayVisible:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryViewModelAccessibility;
  [(PXStoryViewModelAccessibility *)&v9 setWantsRelatedOverlayVisible:?];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  if (v3)
  {
    v4 = MEMORY[0x29EDBD7E8];
    v5 = accessibilityPhotosUICoreLocalizedString(@"watch.next.memories");
    v6 = [v4 axAttributedStringWithString:v5];

    [v6 setAttribute:&unk_2A2288EA0 forKey:*MEMORY[0x29EDBD860]];
    v8 = v6;
    v7 = v6;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

@end