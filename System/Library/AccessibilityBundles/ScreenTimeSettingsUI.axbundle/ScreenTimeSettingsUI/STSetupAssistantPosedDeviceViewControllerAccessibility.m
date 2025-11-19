@interface STSetupAssistantPosedDeviceViewControllerAccessibility
- (void)viewDidLoad;
@end

@implementation STSetupAssistantPosedDeviceViewControllerAccessibility

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = STSetupAssistantPosedDeviceViewControllerAccessibility;
  [(STSetupAssistantPosedDeviceViewControllerAccessibility *)&v6 viewDidLoad];
  v3 = [(STSetupAssistantPosedDeviceViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v4 = AXLocStringKeyForModel();
  v5 = accessibilityLocalizedString(v4);
  [v3 setAccessibilityLabel:v5];

  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityRespondsToUserInteraction:0];
  [v3 _accessibilitySetUserDefinedMediaAnalysisOptions:&unk_2A22CCDA0];
}

@end