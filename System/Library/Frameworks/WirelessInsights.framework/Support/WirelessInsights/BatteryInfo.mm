@interface BatteryInfo
- (BatteryInfo)initWithManufactureDate:(id)a3 andFirstUseDate:(id)a4;
@end

@implementation BatteryInfo

- (BatteryInfo)initWithManufactureDate:(id)a3 andFirstUseDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = BatteryInfo;
  v8 = [(BatteryInfo *)&v13 init];
  manufactureDate = v8->_manufactureDate;
  v8->_manufactureDate = v6;
  v10 = v6;

  firstUseDate = v8->_firstUseDate;
  v8->_firstUseDate = v7;

  return v8;
}

@end