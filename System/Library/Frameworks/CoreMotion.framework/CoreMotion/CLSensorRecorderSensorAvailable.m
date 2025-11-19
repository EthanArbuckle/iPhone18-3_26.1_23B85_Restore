@interface CLSensorRecorderSensorAvailable
- (CLSensorRecorderSensorAvailable)initWithCoder:(id)a3;
@end

@implementation CLSensorRecorderSensorAvailable

- (CLSensorRecorderSensorAvailable)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLSensorRecorderSensorAvailable;
  v5 = [(CLSensorRecorderSensorAvailable *)&v7 init];
  if (v5)
  {
    v5->_dataType = objc_msgSend_decodeInt32ForKey_(a3, v4, @"dataType");
  }

  return v5;
}

@end