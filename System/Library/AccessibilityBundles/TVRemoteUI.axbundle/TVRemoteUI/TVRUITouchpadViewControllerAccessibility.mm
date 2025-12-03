@interface TVRUITouchpadViewControllerAccessibility
- (int64_t)touchpadMode;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityUpdateTouchpad:(id)touchpad;
- (void)dealloc;
- (void)setDevice:(id)device;
@end

@implementation TVRUITouchpadViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = TVRUITouchpadViewControllerAccessibility;
  [(TVRUITouchpadViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel__accessibilityUpdateTouchpad_ name:*MEMORY[0x29EDC7F48] object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (void)setDevice:(id)device
{
  v3.receiver = self;
  v3.super_class = TVRUITouchpadViewControllerAccessibility;
  [(TVRUITouchpadViewControllerAccessibility *)&v3 setDevice:device];
  if (UIAccessibilityIsSwitchControlRunning())
  {
    AXPerformSafeBlock();
  }
}

- (void)_accessibilityUpdateTouchpad:(id)touchpad
{
  v4 = [(TVRUITouchpadViewControllerAccessibility *)self safeValueForKey:@"remoteDevice"];
  [(TVRUITouchpadViewControllerAccessibility *)self setDevice:v4];
}

@end