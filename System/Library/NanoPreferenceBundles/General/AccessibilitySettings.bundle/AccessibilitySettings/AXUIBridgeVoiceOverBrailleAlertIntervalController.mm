@interface AXUIBridgeVoiceOverBrailleAlertIntervalController
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceValueFromUser:(double)a3;
- (void)viewDidLoad;
@end

@implementation AXUIBridgeVoiceOverBrailleAlertIntervalController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AXUIBridgeVoiceOverBrailleAlertIntervalController;
  [(AXUISettingsNumericalPickerViewController *)&v4 viewDidLoad];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_nanoSettingsChanged_ name:@"AXNanoPreferencesSettingsChangedNotification" object:0];
}

- (double)numericalPreferenceValue
{
  v2 = +[AccessibilityBridgeBaseController accessibilityDomainAccessor];
  v3 = [v2 objectForKey:*MEMORY[0x277CE7FD8]];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = *MEMORY[0x277CE69D8];
  }

  return v5;
}

- (void)setNumericalPreferenceValueFromUser:(double)a3
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v4 setGizmoAccessibilityPref:v5 forKey:*MEMORY[0x277CE7FD8]];
}

@end