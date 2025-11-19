@interface TVRUITouchpadViewControllerAccessibility
- (int64_t)touchpadMode;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityUpdateTouchpad:(id)a3;
- (void)dealloc;
- (void)setDevice:(id)a3;
@end

@implementation TVRUITouchpadViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = TVRUITouchpadViewControllerAccessibility;
  [(TVRUITouchpadViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 addObserver:self selector:sel__accessibilityUpdateTouchpad_ name:*MEMORY[0x29EDC7F48] object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVRUITouchpadViewControllerAccessibility;
  [(TVRUITouchpadViewControllerAccessibility *)&v4 dealloc];
}

- (int64_t)touchpadMode
{
  if (UIAccessibilityIsSwitchControlRunning())
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = TVRUITouchpadViewControllerAccessibility;
  return [(TVRUITouchpadViewControllerAccessibility *)&v4 touchpadMode];
}

- (void)setDevice:(id)a3
{
  v3.receiver = self;
  v3.super_class = TVRUITouchpadViewControllerAccessibility;
  [(TVRUITouchpadViewControllerAccessibility *)&v3 setDevice:a3];
  if (UIAccessibilityIsSwitchControlRunning())
  {
    AXPerformSafeBlock();
  }
}

- (void)_accessibilityUpdateTouchpad:(id)a3
{
  v4 = [(TVRUITouchpadViewControllerAccessibility *)self safeValueForKey:@"remoteDevice"];
  [(TVRUITouchpadViewControllerAccessibility *)self setDevice:v4];
}

@end