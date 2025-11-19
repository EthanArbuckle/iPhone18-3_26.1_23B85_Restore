@interface CMAmbientPressureData
- (CMAmbientPressureData)initWithCoder:(id)a3;
- (CMAmbientPressureData)initWithPressure:(id)a3 andTimestamp:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMAmbientPressureData

- (CMAmbientPressureData)initWithPressure:(id)a3 andTimestamp:(double)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v18.receiver = self;
  v18.super_class = CMAmbientPressureData;
  v6 = [(CMLogItem *)&v18 initWithTimestamp:a4];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E696AD28]);
    v10 = objc_msgSend_kilopascals(MEMORY[0x1E696B070], v8, v9);
    v6->_pressure = objc_msgSend_initWithDoubleValue_unit_(v7, v11, v10, var0);
    v12 = objc_alloc(MEMORY[0x1E696AD28]);
    v15 = objc_msgSend_celsius(MEMORY[0x1E696B080], v13, v14);
    v6->_temperature = objc_msgSend_initWithDoubleValue_unit_(v12, v16, v15, var1);
  }

  return v6;
}

- (CMAmbientPressureData)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CMAmbientPressureData;
  v4 = [(CMLogItem *)&v10 initWithCoder:?];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_pressure = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMAmbientPressureCodingKeyPressure");
    v7 = objc_opt_class();
    v4->_temperature = objc_msgSend_decodeObjectOfClass_forKey_(a3, v8, v7, @"kCMAmbientPressureCodingKeyTemperature");
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = CMAmbientPressureData;
  [(CMLogItem *)&v13 encodeWithCoder:?];
  v7 = objc_msgSend_pressure(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(a3, v8, v7, @"kCMAmbientPressureCodingKeyPressure");
  v11 = objc_msgSend_temperature(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(a3, v12, v11, @"kCMAmbientPressureCodingKeyTemperature");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMAmbientPressureData;
  [(CMLogItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15.receiver = self;
  v15.super_class = CMAmbientPressureData;
  v7 = [(CMLogItem *)&v15 copyWithZone:?];
  if (v7)
  {
    v8 = objc_msgSend_pressure(self, v5, v6);
    v7[2] = objc_msgSend_copyWithZone_(v8, v9, a3);
    v12 = objc_msgSend_temperature(self, v10, v11);
    v7[3] = objc_msgSend_copyWithZone_(v12, v13, a3);
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E696AEC0];
  v7 = objc_msgSend_pressure(self, v5, v6);
  v9 = objc_msgSend_stringFromMeasurement_(v3, v8, v7);
  v12 = objc_msgSend_temperature(self, v10, v11);
  v14 = objc_msgSend_stringFromMeasurement_(v3, v13, v12);
  v18.receiver = self;
  v18.super_class = CMAmbientPressureData;
  [(CMLogItem *)&v18 timestamp];
  return objc_msgSend_stringWithFormat_(v4, v15, @"Pressure %@ Temperature %@ @ %f", v9, v14, v16);
}

- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)a3
{
  v5 = objc_msgSend_pressure(self, a2, a3);
  objc_msgSend_doubleValue(v5, v6, v7);
  v9 = v8;
  v12 = objc_msgSend_temperature(self, v10, v11);
  objc_msgSend_doubleValue(v12, v13, v14);
  v16 = v15;
  objc_msgSend_timestamp(self, v17, v18);
  LODWORD(result) = snprintf_l(byte_1EAFE38D4, 0x62uLL, 0, "{pressure: %0.*g, temperature: %0.*g, timestamp: %ld}", 9, v9, 9, v16, v19);
  if (result <= 0)
  {
    return result;
  }

  return MEMORY[0x1EEE66B58](a3, sel_write_maxLength_, byte_1EAFE38D4);
}

@end