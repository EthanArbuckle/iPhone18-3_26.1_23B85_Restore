@interface AMUIBatteryChargingView
+ (id)batteryChargingRingViewWithConfiguration:(id)a3;
- (AMUIBatteryChargingView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setLegibilitySettings:(id)a3;
@end

@implementation AMUIBatteryChargingView

+ (id)batteryChargingRingViewWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = [AMUIBatteryChargingRingView alloc];
  v5 = [(AMUIBatteryChargingRingView *)v4 initWithFrame:v3 configuration:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  return v5;
}

- (AMUIBatteryChargingView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AMUIBatteryChargingView;
  v3 = [(AMUIBatteryChargingView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(AMUIBatteryChargingView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = AMUIBatteryChargingView;
  v5 = [(AMUIBatteryChargingView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
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