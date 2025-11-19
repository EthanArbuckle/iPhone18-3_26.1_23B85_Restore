@interface AENoteFullscreenEditorControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation AENoteFullscreenEditorControllerAccessibility

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AENoteFullscreenEditorControllerAccessibility;
  [(AENoteFullscreenEditorControllerAccessibility *)&v3 viewDidLoad];
  [(AENoteFullscreenEditorControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3 = [(AENoteFullscreenEditorControllerAccessibility *)self imaxValueForKey:@"textView"];
  v2 = AEAXLocString(@"note.text.view.label");
  [v3 setAccessibilityLabel:v2];
}

@end