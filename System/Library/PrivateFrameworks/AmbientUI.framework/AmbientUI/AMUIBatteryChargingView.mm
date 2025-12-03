@interface AMUIBatteryChargingView
+ (id)batteryChargingRingViewWithConfiguration:(id)configuration;
- (AMUIBatteryChargingView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setLegibilitySettings:(id)settings;
@end

@implementation AMUIBatteryChargingView

+ (id)batteryChargingRingViewWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [AMUIBatteryChargingRingView alloc];
  v5 = [(AMUIBatteryChargingRingView *)v4 initWithFrame:configurationCopy configuration:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  return v5;
}

- (AMUIBatteryChargingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AMUIBatteryChargingView;
  v3 = [(AMUIBatteryChargingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(AMUIBatteryChargingView *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = AMUIBatteryChargingView;
  v5 = [(AMUIBatteryChargingView *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end