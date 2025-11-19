@interface AMUIBatteryChargingUIConfiguration
+ (id)defaultConfiguration;
- (AMUIBatteryChargingUIConfiguration)initWithRingDiameter:(double)a3 lineWidth:(double)a4 boltSize:(CGSize)a5 chargingTextFontSize:(double)a6;
- (CGSize)boltSize;
@end

@implementation AMUIBatteryChargingUIConfiguration

+ (id)defaultConfiguration
{
  if (defaultConfiguration_onceToken != -1)
  {
    +[AMUIBatteryChargingUIConfiguration defaultConfiguration];
  }

  v3 = defaultConfiguration___defaultConfiguration;

  return v3;
}

uint64_t __58__AMUIBatteryChargingUIConfiguration_defaultConfiguration__block_invoke()
{
  v0 = [[AMUIBatteryChargingUIConfiguration alloc] initWithRingDiameter:70.0 lineWidth:7.0 boltSize:42.3333 chargingTextFontSize:63.6666, 26.3333];
  v1 = defaultConfiguration___defaultConfiguration;
  defaultConfiguration___defaultConfiguration = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (AMUIBatteryChargingUIConfiguration)initWithRingDiameter:(double)a3 lineWidth:(double)a4 boltSize:(CGSize)a5 chargingTextFontSize:(double)a6
{
  height = a5.height;
  width = a5.width;
  v12.receiver = self;
  v12.super_class = AMUIBatteryChargingUIConfiguration;
  result = [(AMUIBatteryChargingUIConfiguration *)&v12 init];
  if (result)
  {
    result->_ringDiameter = a3;
    result->_lineWidth = a4;
    result->_boltSize.width = width;
    result->_boltSize.height = height;
    result->_chargingTextFontSize = a6;
  }

  return result;
}

- (CGSize)boltSize
{
  width = self->_boltSize.width;
  height = self->_boltSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end