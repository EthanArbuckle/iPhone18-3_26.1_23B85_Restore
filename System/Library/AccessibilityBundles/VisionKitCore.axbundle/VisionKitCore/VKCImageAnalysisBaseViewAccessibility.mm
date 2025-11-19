@interface VKCImageAnalysisBaseViewAccessibility
- (void)copyButtonPressed:(id)a3;
@end

@implementation VKCImageAnalysisBaseViewAccessibility

- (void)copyButtonPressed:(id)a3
{
  v4.receiver = self;
  v4.super_class = VKCImageAnalysisBaseViewAccessibility;
  [(VKCImageAnalysisBaseViewAccessibility *)&v4 copyButtonPressed:a3];
  [(VKCImageAnalysisBaseViewAccessibility *)self _accessibilityPostPasteboardTextForOperation:*MEMORY[0x29EDBDC18]];
}

@end