@interface CMRecordedPressureData
- (CMRecordedPressureData)initWithCoder:(id)coder;
- (CMRecordedPressureData)initWithData:(CMPressure *)data timestamp:(unint64_t)timestamp walltime:(double)walltime identifier:(unint64_t)identifier;
- (id)pressure;
- (id)temperature;
- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)stream;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)resetWithData:(CMPressure *)data timestamp:(unint64_t)timestamp walltime:(double)walltime identifier:(unint64_t)identifier;
@end

@implementation CMRecordedPressureData

- (CMRecordedPressureData)initWithData:(CMPressure *)data timestamp:(unint64_t)timestamp walltime:(double)walltime identifier:(unint64_t)identifier
{
  v14.receiver = self;
  v14.super_class = CMRecordedPressureData;
  v10 = [(CMRecordedPressureData *)&v14 init];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_resetWithData_timestamp_walltime_identifier_(v10, v11, data, timestamp, identifier, walltime);
  }

  return v12;
}

- (CMRecordedPressureData)initWithCoder:(id)coder
{
  v23.receiver = self;
  v23.super_class = CMRecordedPressureData;
  v5 = [(CMAmbientPressureData *)&v23 initWithCoder:?];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v4, @"startDate");
    v5->_startDateValue = v6;
    objc_msgSend_timestamp(v5, v7, v8);
    v5->_timestampValue = v9;
    v12 = objc_msgSend_pressure(v5, v10, v11);
    objc_msgSend_doubleValue(v12, v13, v14);
    *&v15 = v15;
    v5->_pressureValue = *&v15;
    v18 = objc_msgSend_temperature(v5, v16, v17);
    objc_msgSend_doubleValue(v18, v19, v20);
    *&v21 = v21;
    v5->_temperatureValue = *&v21;
    v5->_pressureMeasurement = 0;
    v5->_temperatureMeasurement = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CMRecordedPressureData;
  [(CMAmbientPressureData *)&v6 encodeWithCoder:?];
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"startDate", self->_startDateValue);
}

- (void)resetWithData:(CMPressure *)data timestamp:(unint64_t)timestamp walltime:(double)walltime identifier:(unint64_t)identifier
{
  self->_pressureMeasurement = 0;
  self->_temperatureMeasurement = 0;
  self->_pressureValue = data->var0;
  self->_temperatureValue = data->var1;
  v6 = *(&data->var2 + 1);
  self->_startDateValue = walltime - (timestamp - v6) / 1000000.0;
  self->_timestampValue = v6 / 1000000.0;
  self->_identifier = identifier;
}

- (void)dealloc
{
  objc_msgSend_dealloc(self->_pressureMeasurement, a2, v2);
  objc_msgSend_dealloc(self->_temperatureMeasurement, v4, v5);
  v6.receiver = self;
  v6.super_class = CMRecordedPressureData;
  [(CMAmbientPressureData *)&v6 dealloc];
}

- (id)pressure
{
  result = self->_pressureMeasurement;
  if (!result)
  {
    v4 = objc_alloc(MEMORY[0x1E696AD28]);
    pressureValue = self->_pressureValue;
    v8 = objc_msgSend_kilopascals(MEMORY[0x1E696B070], v6, v7);
    result = objc_msgSend_initWithDoubleValue_unit_(v4, v9, v8, pressureValue);
    self->_pressureMeasurement = result;
  }

  return result;
}

- (id)temperature
{
  result = self->_temperatureMeasurement;
  if (!result)
  {
    v4 = objc_alloc(MEMORY[0x1E696AD28]);
    temperatureValue = self->_temperatureValue;
    v8 = objc_msgSend_celsius(MEMORY[0x1E696B080], v6, v7);
    result = objc_msgSend_initWithDoubleValue_unit_(v4, v9, v8, temperatureValue);
    self->_temperatureMeasurement = result;
  }

  return result;
}

- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)stream
{
  v5 = objc_msgSend_pressure(self, a2, stream);
  objc_msgSend_doubleValue(v5, v6, v7);
  v9 = v8;
  v12 = objc_msgSend_temperature(self, v10, v11);
  objc_msgSend_doubleValue(v12, v13, v14);
  v16 = v15;
  objc_msgSend_timestamp(self, v17, v18);
  v20 = v19;
  started = objc_msgSend_startDate(self, v21, v22);
  objc_msgSend_timeIntervalSinceReferenceDate(started, v24, v25);
  v27 = v26;
  v30 = objc_msgSend_identifier(self, v28, v29);
  LODWORD(result) = snprintf_l(byte_1EAFE3936, 0xA9uLL, 0, "{pressure: %0.*g, temperature: %0.*g, timestamp: %ld, walltime: %0.*g, identifier: %llu}", 9, v9, 9, v16, v20, 9, v27, v30);
  if (result <= 0)
  {
    return result;
  }

  return MEMORY[0x1EEE66B58](stream, sel_write_maxLength_, byte_1EAFE3936);
}

@end