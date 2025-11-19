@interface CLSensorRecorderSensorMeta
- (CLSensorRecorderSensorMeta)initWithCoder:(id)a3;
- (CLSensorRecorderSensorMeta)initWithDataType:(int)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLSensorRecorderSensorMeta

- (CLSensorRecorderSensorMeta)initWithDataType:(int)a3
{
  v5.receiver = self;
  v5.super_class = CLSensorRecorderSensorMeta;
  result = [(CLSensorRecorderSensorMeta *)&v5 init];
  if (result)
  {
    result->_dataType = a3;
  }

  return result;
}

- (CLSensorRecorderSensorMeta)initWithCoder:(id)a3
{
  v15.receiver = self;
  v15.super_class = CLSensorRecorderSensorMeta;
  v5 = [(CLSensorRecorderSensorMeta *)&v15 init];
  if (v5)
  {
    v5->_identifier = objc_msgSend_decodeInt64ForKey_(a3, v4, @"identifier");
    objc_msgSend_decodeDoubleForKey_(a3, v6, @"startTime");
    v5->_startTime = v7;
    v5->_timestamp = objc_msgSend_decodeInt64ForKey_(a3, v8, @"timestamp");
    v5->_dataIdentifier = objc_msgSend_decodeInt64ForKey_(a3, v9, @"dataIdentifier");
    v5->_offset = objc_msgSend_decodeInt32ForKey_(a3, v10, @"offset");
    v5->_dataSize = objc_msgSend_decodeInt32ForKey_(a3, v11, @"dataSize");
    v5->_dataType = objc_msgSend_decodeInt32ForKey_(a3, v12, @"dataType");
    v5->_movement = objc_msgSend_decodeBoolForKey_(a3, v13, @"movement");
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInt64_forKey_(a3, a2, self->_identifier, @"identifier");
  objc_msgSend_encodeDouble_forKey_(a3, v5, @"startTime", self->_startTime);
  objc_msgSend_encodeInt64_forKey_(a3, v6, self->_timestamp, @"timestamp");
  objc_msgSend_encodeInt64_forKey_(a3, v7, self->_dataIdentifier, @"dataIdentifier");
  objc_msgSend_encodeInt32_forKey_(a3, v8, self->_offset, @"offset");
  objc_msgSend_encodeInt32_forKey_(a3, v9, self->_dataSize, @"dataSize");
  objc_msgSend_encodeInt32_forKey_(a3, v10, self->_dataType, @"dataType");
  movement = self->_movement;

  objc_msgSend_encodeBool_forKey_(a3, v11, movement, @"movement");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@,<identifier, %llu, startTime, %f, timestamp, %llu, dataIdentifier, %llu, offset, %u, dataSize, %u, dataType, %d, movement, %d>", v5, self->_identifier, *&self->_startTime, self->_timestamp, self->_dataIdentifier, self->_offset, self->_dataSize, self->_dataType, self->_movement);
}

@end