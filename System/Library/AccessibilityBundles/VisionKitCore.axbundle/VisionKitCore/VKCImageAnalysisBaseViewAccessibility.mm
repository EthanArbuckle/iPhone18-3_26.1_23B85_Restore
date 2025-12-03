@interface VKCImageAnalysisBaseViewAccessibility
- (void)copyButtonPressed:(id)pressed;
@end

@implementation VKCImageAnalysisBaseViewAccessibility

- (void)copyButtonPressed:(id)pressed
{
  v4.receiver = self;
  v4.super_class = VKCImageAnalysisBaseViewAccessibility;
  [(VKCImageAnalysisBaseViewAccessibility *)&v4 copyButtonPressed:pressed];
  [(VKCImageAnalysisBaseViewAccessibility *)self _accessibilityPostPasteboardTextForOperation:*MEMORY[0x29EDBDC18]];
}

@end