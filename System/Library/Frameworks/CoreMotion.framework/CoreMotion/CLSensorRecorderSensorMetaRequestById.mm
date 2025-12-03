@interface CLSensorRecorderSensorMetaRequestById
- (CLSensorRecorderSensorMetaRequestById)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSensorRecorderSensorMetaRequestById

- (CLSensorRecorderSensorMetaRequestById)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CLSensorRecorderSensorMetaRequestById;
  v5 = [(CLSensorRecorderSensorMetaRequestById *)&v8 init];
  if (v5)
  {
    v5->_identifier = objc_msgSend_decodeInt64ForKey_(coder, v4, @"identifier");
    v5->_dataType = objc_msgSend_decodeInt32ForKey_(coder, v6, @"dataType");
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInt64_forKey_(coder, a2, self->_identifier, @"identifier");
  dataType = self->_dataType;

  objc_msgSend_encodeInt32_forKey_(coder, v5, dataType, @"dataType");
}

@end