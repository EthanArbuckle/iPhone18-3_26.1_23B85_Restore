@interface CLSensorRecorderSensorMeta
- (CLSensorRecorderSensorMeta)initWithCoder:(id)coder;
- (CLSensorRecorderSensorMeta)initWithDataType:(int)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSensorRecorderSensorMeta

- (CLSensorRecorderSensorMeta)initWithDataType:(int)type
{
  v5.receiver = self;
  v5.super_class = CLSensorRecorderSensorMeta;
  result = [(CLSensorRecorderSensorMeta *)&v5 init];
  if (result)
  {
    result->_dataType = type;
  }

  return result;
}

- (CLSensorRecorderSensorMeta)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = CLSensorRecorderSensorMeta;
  v5 = [(CLSensorRecorderSensorMeta *)&v15 init];
  if (v5)
  {
    v5->_identifier = objc_msgSend_decodeInt64ForKey_(coder, v4, @"identifier");
    objc_msgSend_decodeDoubleForKey_(coder, v6, @"startTime");
    v5->_startTime = v7;
    v5->_timestamp = objc_msgSend_decodeInt64ForKey_(coder, v8, @"timestamp");
    v5->_dataIdentifier = objc_msgSend_decodeInt64ForKey_(coder, v9, @"dataIdentifier");
    v5->_offset = objc_msgSend_decodeInt32ForKey_(coder, v10, @"offset");
    v5->_dataSize = objc_msgSend_decodeInt32ForKey_(coder, v11, @"dataSize");
    v5->_dataType = objc_msgSend_decodeInt32ForKey_(coder, v12, @"dataType");
    v5->_movement = objc_msgSend_decodeBoolForKey_(coder, v13, @"movement");
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInt64_forKey_(coder, a2, self->_identifier, @"identifier");
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"startTime", self->_startTime);
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_timestamp, @"timestamp");
  objc_msgSend_encodeInt64_forKey_(coder, v7, self->_dataIdentifier, @"dataIdentifier");
  objc_msgSend_encodeInt32_forKey_(coder, v8, self->_offset, @"offset");
  objc_msgSend_encodeInt32_forKey_(coder, v9, self->_dataSize, @"dataSize");
  objc_msgSend_encodeInt32_forKey_(coder, v10, self->_dataType, @"dataType");
  movement = self->_movement;

  objc_msgSend_encodeBool_forKey_(coder, v11, movement, @"movement");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@,<identifier, %llu, startTime, %f, timestamp, %llu, dataIdentifier, %llu, offset, %u, dataSize, %u, dataType, %d, movement, %d>", v5, self->_identifier, *&self->_startTime, self->_timestamp, self->_dataIdentifier, self->_offset, self->_dataSize, self->_dataType, self->_movement);
}

@end