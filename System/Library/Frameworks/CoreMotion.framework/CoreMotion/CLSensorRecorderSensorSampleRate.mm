@interface CLSensorRecorderSensorSampleRate
- (CLSensorRecorderSensorSampleRate)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSensorRecorderSensorSampleRate

- (CLSensorRecorderSensorSampleRate)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CLSensorRecorderSensorSampleRate;
  v5 = [(CLSensorRecorderSensorSampleRate *)&v8 init];
  if (v5)
  {
    v5->_rate = objc_msgSend_decodeInt32ForKey_(coder, v4, @"rate");
    v5->_dataType = objc_msgSend_decodeInt32ForKey_(coder, v6, @"dataType");
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInt32_forKey_(coder, a2, self->_rate, @"rate");
  dataType = self->_dataType;

  objc_msgSend_encodeInt32_forKey_(coder, v5, dataType, @"dataType");
}

@end