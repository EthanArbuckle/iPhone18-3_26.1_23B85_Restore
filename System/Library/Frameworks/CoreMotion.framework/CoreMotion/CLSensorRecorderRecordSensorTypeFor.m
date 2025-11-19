@interface CLSensorRecorderRecordSensorTypeFor
- (CLSensorRecorderRecordSensorTypeFor)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLSensorRecorderRecordSensorTypeFor

- (CLSensorRecorderRecordSensorTypeFor)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CLSensorRecorderRecordSensorTypeFor;
  v5 = [(CLSensorRecorderRecordSensorTypeFor *)&v8 init];
  if (v5)
  {
    v5->_duration = objc_msgSend_decodeInt64ForKey_(a3, v4, @"duration");
    v5->_dataType = objc_msgSend_decodeInt32ForKey_(a3, v6, @"dataType");
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInt64_forKey_(a3, a2, self->_duration, @"duration");
  dataType = self->_dataType;

  objc_msgSend_encodeInt32_forKey_(a3, v5, dataType, @"dataType");
}

@end