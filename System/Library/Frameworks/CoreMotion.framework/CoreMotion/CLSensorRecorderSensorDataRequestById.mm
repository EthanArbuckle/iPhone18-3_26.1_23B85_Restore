@interface CLSensorRecorderSensorDataRequestById
- (CLSensorRecorderSensorDataRequestById)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLSensorRecorderSensorDataRequestById

- (CLSensorRecorderSensorDataRequestById)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CLSensorRecorderSensorDataRequestById;
  v5 = [(CLSensorRecorderSensorDataRequestById *)&v9 init];
  if (v5)
  {
    v5->_identifier = objc_msgSend_decodeInt64ForKey_(a3, v4, @"identifier");
    v5->_metaIdentifier = objc_msgSend_decodeInt64ForKey_(a3, v6, @"metaIdentifier");
    v5->_dataType = objc_msgSend_decodeInt32ForKey_(a3, v7, @"dataType");
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInt64_forKey_(a3, a2, self->_identifier, @"identifier");
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_metaIdentifier, @"metaIdentifier");
  dataType = self->_dataType;

  objc_msgSend_encodeInt32_forKey_(a3, v6, dataType, @"dataType");
}

@end