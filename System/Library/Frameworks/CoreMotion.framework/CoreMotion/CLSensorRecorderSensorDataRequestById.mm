@interface CLSensorRecorderSensorDataRequestById
- (CLSensorRecorderSensorDataRequestById)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSensorRecorderSensorDataRequestById

- (CLSensorRecorderSensorDataRequestById)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CLSensorRecorderSensorDataRequestById;
  v5 = [(CLSensorRecorderSensorDataRequestById *)&v9 init];
  if (v5)
  {
    v5->_identifier = objc_msgSend_decodeInt64ForKey_(coder, v4, @"identifier");
    v5->_metaIdentifier = objc_msgSend_decodeInt64ForKey_(coder, v6, @"metaIdentifier");
    v5->_dataType = objc_msgSend_decodeInt32ForKey_(coder, v7, @"dataType");
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInt64_forKey_(coder, a2, self->_identifier, @"identifier");
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_metaIdentifier, @"metaIdentifier");
  dataType = self->_dataType;

  objc_msgSend_encodeInt32_forKey_(coder, v6, dataType, @"dataType");
}

@end