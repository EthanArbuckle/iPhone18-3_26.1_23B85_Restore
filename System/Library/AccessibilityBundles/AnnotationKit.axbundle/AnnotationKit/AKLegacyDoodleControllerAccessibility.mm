@interface AKLegacyDoodleControllerAccessibility
- (void)inputViewWillStartDrawing:(id)drawing;
@end

@implementation AKLegacyDoodleControllerAccessibility

- (void)inputViewWillStartDrawing:(id)drawing
{
  v5.receiver = self;
  v5.super_class = AKLegacyDoodleControllerAccessibility;
  [(AKLegacyDoodleControllerAccessibility *)&v5 inputViewWillStartDrawing:drawing];
  v3 = *MEMORY[0x29EDC7EA8];
  v4 = accessibilityLocalizedString(@"sketch.drawing.began");
  UIAccessibilityPostNotification(v3, v4);
}

@end