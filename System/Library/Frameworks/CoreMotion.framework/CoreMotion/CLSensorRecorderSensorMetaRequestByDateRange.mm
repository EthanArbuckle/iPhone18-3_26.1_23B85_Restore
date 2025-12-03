@interface CLSensorRecorderSensorMetaRequestByDateRange
- (CLSensorRecorderSensorMetaRequestByDateRange)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSensorRecorderSensorMetaRequestByDateRange

- (CLSensorRecorderSensorMetaRequestByDateRange)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = CLSensorRecorderSensorMetaRequestByDateRange;
  v5 = [(CLSensorRecorderSensorMetaRequestByDateRange *)&v11 init];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v4, @"startTime");
    v5->_startTime = v6;
    objc_msgSend_decodeDoubleForKey_(coder, v7, @"endTime");
    v5->_endTime = v8;
    v5->_dataType = objc_msgSend_decodeInt32ForKey_(coder, v9, @"dataType");
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeDouble_forKey_(coder, a2, @"startTime", self->_startTime);
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"endTime", self->_endTime);
  dataType = self->_dataType;

  objc_msgSend_encodeInt32_forKey_(coder, v6, dataType, @"dataType");
}

@end