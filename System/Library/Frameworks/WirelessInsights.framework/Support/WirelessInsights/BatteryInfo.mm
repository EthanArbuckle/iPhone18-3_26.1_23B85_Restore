@interface BatteryInfo
- (BatteryInfo)initWithManufactureDate:(id)date andFirstUseDate:(id)useDate;
@end

@implementation BatteryInfo

- (BatteryInfo)initWithManufactureDate:(id)date andFirstUseDate:(id)useDate
{
  dateCopy = date;
  useDateCopy = useDate;
  v13.receiver = self;
  v13.super_class = BatteryInfo;
  v8 = [(BatteryInfo *)&v13 init];
  manufactureDate = v8->_manufactureDate;
  v8->_manufactureDate = dateCopy;
  v10 = dateCopy;

  firstUseDate = v8->_firstUseDate;
  v8->_firstUseDate = useDateCopy;

  return v8;
}

@end