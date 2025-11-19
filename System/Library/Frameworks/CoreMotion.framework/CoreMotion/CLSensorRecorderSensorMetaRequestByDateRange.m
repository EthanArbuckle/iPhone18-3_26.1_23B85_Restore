@interface CLSensorRecorderSensorMetaRequestByDateRange
- (CLSensorRecorderSensorMetaRequestByDateRange)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLSensorRecorderSensorMetaRequestByDateRange

- (CLSensorRecorderSensorMetaRequestByDateRange)initWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = CLSensorRecorderSensorMetaRequestByDateRange;
  v5 = [(CLSensorRecorderSensorMetaRequestByDateRange *)&v11 init];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(a3, v4, @"startTime");
    v5->_startTime = v6;
    objc_msgSend_decodeDoubleForKey_(a3, v7, @"endTime");
    v5->_endTime = v8;
    v5->_dataType = objc_msgSend_decodeInt32ForKey_(a3, v9, @"dataType");
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeDouble_forKey_(a3, a2, @"startTime", self->_startTime);
  objc_msgSend_encodeDouble_forKey_(a3, v5, @"endTime", self->_endTime);
  dataType = self->_dataType;

  objc_msgSend_encodeInt32_forKey_(a3, v6, dataType, @"dataType");
}

@end